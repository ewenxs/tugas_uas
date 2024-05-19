<?php

namespace App\Http\Controllers;

use App\Models\Bagian;
use App\Models\Detail_dpa;
use App\Models\Detail_dpas;
use App\Models\Dpa;
use App\Models\Program;
use App\Models\Rekening;
use App\Models\Sub_kegiatan;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Yajra\DataTables\Facades\DataTables;

class DpaController extends Controller
{
    public function index(Request $request)
    {
        if ($request->ajax()) {
            $data = DB::table('dpas')
                        ->join('penjabarans', 'dpas.penjabaran_id', '=', 'penjabarans.id')
                        ->join('bagians', 'dpas.bagian_id', '=', 'bagians.id')
                        ->join('kegiatans', 'dpas.kegiatan_id', '=', 'kegiatans.id')
                        ->join('sub_kegiatans', 'dpas.sub_kegiatan_id', '=', 'sub_kegiatans.id')
                        ->join('rekenings', 'dpas.rekening_id', '=', 'rekenings.id')
                        ->join('programs', 'dpas.program_id', '=', 'programs.id')
                        ->select('penjabarans.nomor_dpa',
                                 'bagians.nama_bagian',
                                 'kegiatans.kode_kegiatan',
                                 'sub_kegiatans.kode_sub_kegiatan',
                                 'rekenings.no_rekening', 
                                 'programs.nama_program',
                                 'dpas.id as dpa_id')
                        ->get();
            return DataTables::of($data)
                    ->addIndexColumn()
                    ->addColumn('action', function($row){
                            $btn =  '<div class="dropdown">
                                        <button class="btn btn-secondary dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
                                            Action
                                        </button>
                                        <ul class="dropdown-menu">
                                            <li><a class="dropdown-item" href="dpa/'.$row->dpa_id.'/edit">Edit</a></li>
                                            <form action="/dpa/'.$row->dpa_id.'" method="POST">
                                            '.csrf_field().'
                                            '.method_field("DELETE").'
                                            <input type="submit" class="dropdown-item" onclick="return confirm(\'Apakah anda yakin ?\')" value="Delete">
                                          </form></li>
                                        </ul>
                                    </div> ';
      
                            return $btn;
                    })
                    ->rawColumns(['action'])
                    ->make(true);
        }
          
        return view('dpa.index');
    }
    
    public function create()
    {
        $penjabaran = DB::table('penjabarans')->latest('created_at')->first();
        return view('dpa.create',compact(['penjabaran']));
    }

    public function store(Request $request)
    {
        $request->validate([
            'penjabaran_id' => 'required|min:1',
            'bagian_id' => 'required|min:1',
            'kegiatan_id' => 'required|min:1',
            'sub_kegiatan_id' => 'required|min:1',
            'rekening_id' => 'required|min:1',
            'program_id' => 'required|min:1',
        ]);

        $dpa = Dpa::create([
            'penjabaran_id'=>$request->penjabaran_id,
            'bagian_id'=>$request->bagian_id,
            'kegiatan_id'=>$request->kegiatan_id,
            'sub_kegiatan_id'=>$request->sub_kegiatan_id,
            'rekening_id'=>$request->rekening_id,
            'program_id'=>$request->program_id
        ]);
        $data = [];
        for ($x=1; $x < count($request->get('nama_barang')); $x++) {      
            $data[] = [       
                'dpa_id' => $dpa->id,
                'nama_barang' => $request->get('nama_barang')[$x],
                'volume' => $request->get('volume')[$x],
                'satuan' => $request->get('satuan')[$x],
                'harga' => $request->get('harga')[$x]
            ];
        }   

        Detail_dpa::upsert($data, [
            'dpa_id',
            'nama_barang',
            'volume',
            'satuan',
            'harga']);


        return redirect('/dpa')->with('success','Data berhasil ditambahkan.');
    }

    public function edit($id){
        $dpa = Dpa::find($id);
        $penjabaran = DB::table('penjabarans')->latest('created_at')->first();   
        $sub_kegiatan = Sub_kegiatan::where('id','=', $dpa->sub_kegiatan_id)
                        ->first();     
        $kegiatans = DB::table('sub_kegiatans')        
                    ->leftjoin('kegiatans', 'kegiatans.id', '=', 'sub_kegiatans.kegiatan_id')
                    ->select('kegiatans.id as keg_id','kegiatans.kode_kegiatan','kegiatans.nama_kegiatan','sub_kegiatans.id as subkeg_id','sub_kegiatans.kode_sub_kegiatan','sub_kegiatans.nama_sub_kegiatan')
                    ->groupBy('sub_kegiatans.kegiatan_id')
                    ->get();
        $sub_kegiatan_news = DB::table('sub_kegiatans')
                            ->get();            
        $dpas = DB::table('dpas')
                    ->join('kegiatans', 'dpas.kegiatan_id', '=', 'kegiatans.id')
                    ->join('sub_kegiatans', 'dpas.sub_kegiatan_id', '=', 'sub_kegiatans.id')
                    ->select('kegiatans.kode_kegiatan',
                             'kegiatans.nama_kegiatan',
                             'sub_kegiatans.kode_sub_kegiatan',
                             'sub_kegiatans.nama_sub_kegiatan', 
                             'dpas.id as dpa_id')
                    ->get(); 
        $bagians = Bagian::where('id','=', $dpa->bagian_id)
                           ->get();  
        $rekenings = Rekening::where('id','=', $dpa->rekening_id)
                           ->get();  
        $programs = Program::where('id','=', $dpa->program_id)
                           ->get(); 
        $detail_dpas = Detail_dpa::where('dpa_id','=', $dpa->id)
                           ->get();                                              
        return view('dpa.edit',compact([
            'dpa', 
            'dpas',
            'kegiatans',
            'sub_kegiatan', 
            'sub_kegiatan_news',
            'bagians',
            'rekenings',
            'programs',
            'penjabaran',
            'detail_dpas'
        ]));
    }

    public function update(Request $request, $id){
        $request->validate([
            'penjabaran_id' => 'required|min:1',
            'bagian_id' => 'required|min:1',
            'kegiatan_id' => 'required|min:1',
            'sub_kegiatan_id' => 'required|min:1',
            'rekening_id' => 'required|min:1',
            'program_id' => 'required|min:1',
        ]);
        $dpa = Dpa::find($id);
        $dpa->update([
            'penjabaran_id'=>$request->penjabaran_id,
            'bagian_id'=>$request->bagian_id,
            'kegiatan_id'=>$request->kegiatan_id,
            'sub_kegiatan_id'=>$request->sub_kegiatan_id,
            'rekening_id'=>$request->rekening_id,
            'program_id'=>$request->program_id
        ]);
        
        $detail_dpas = Detail_dpa::where('dpa_id','=', $dpa->id);
        $detail_dpas->delete(); 
        

        $data = [];
        for ($x=1; $x < count($request->get('nama_barang')); $x++) {      
            $data[] = [       
                'dpa_id' => $dpa->id,
                'nama_barang' => $request->get('nama_barang')[$x],
                'volume' => $request->get('volume')[$x],
                'satuan' => $request->get('satuan')[$x],
                'harga' => $request->get('harga')[$x]
            ];
        }  
        
        Detail_dpa::upsert($data, [
            'dpa_id',
            'nama_barang',
            'volume',
            'satuan',
            'harga']);

        return redirect('/dpa')->with('success','Data berhasil diubah.');

    }

    public function destroy($id) {
        $dpa = Dpa::find($id);
        $dpa->delete();

        $detail_dpas = Detail_dpa::where('dpa_id','=', $dpa->id);
        $detail_dpas->delete(); 
        return redirect('/dpa')->with('success','Data berhasil dihapus.');
    } 

    
     
}
