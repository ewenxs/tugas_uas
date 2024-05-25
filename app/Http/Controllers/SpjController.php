<?php

namespace App\Http\Controllers;

use App\Models\Bagian;
use App\Models\Detail_spj;
use App\Models\Program;
use App\Models\Rekening;
use App\Models\Spj;
use App\Models\Sub_kegiatan;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Yajra\DataTables\DataTables;

class SpjController extends Controller
{
    public function index(Request $request)
    {
        if ($request->ajax()) {
            $data = DB::table('spjs')
                        ->join('bagians', 'spjs.bagian_id', '=', 'bagians.id')
                        ->join('kegiatans', 'spjs.kegiatan_id', '=', 'kegiatans.id')
                        ->join('sub_kegiatans', 'spjs.sub_kegiatan_id', '=', 'sub_kegiatans.id')
                        ->join('detail_spjs', 'spjs.id', '=', 'detail_spjs.spj_id')
                        ->select('spjs.tanggal_spj',
                                'spjs.uraian',
                                'bagians.nama_bagian',
                                'kegiatans.kode_kegiatan',
                                'sub_kegiatans.kode_sub_kegiatan',
                                'detail_spjs.spj_id')
                        ->selectRaw('sum(detail_spjs.satuan*detail_spjs.harga) AS total_spj')        
                        ->groupBy('detail_spjs.spj_id')                                      
                        ->get();
            return DataTables::of($data)
                    ->addIndexColumn()
                    ->addColumn('action', function($row){
                            $btn =  '<div class="dropdown">
                                        <button class="btn btn-secondary dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
                                            Action
                                        </button>
                                        <ul class="dropdown-menu">
                                            <li><a class="dropdown-item" href="spj/'.$row->spj_id.'/edit">Edit</a></li>
                                            <form action="/spj/'.$row->spj_id.'" method="POST">
                                            '.csrf_field().'
                                            '.method_field("DELETE").'
                                            <input type="submit" class="dropdown-item" onclick="return confirm(\'Apakah anda yakin ?\')" value="Delete">
                                          </form></li>
                                        </ul>
                                    </div> ';
      
                            return $btn;
                    })
                    ->rawColumns(['action'])
                    ->editColumn('total_spj', function ($command) {
                        return number_format($command->total_spj, 0, ',', '.');
                    })
                    ->make(true);
        }
          
        return view('spj.index');
    }
    
    public function create()
    {
        $penjabaran = DB::table('penjabarans')->latest('created_at')->first();
        return view('spj.create',compact(['penjabaran']));
    }

    public function store(Request $request)
    {
        $request->validate([
            'tanggal_spj' => 'required|min:1',
            'jenis_spj' => 'required|min:1',
            'tgl_kontrak' => 'required|min:1',
            'no_kontrak' => 'required|min:1',
            'tgl_baphp' => 'required|min:1',
            'no_baphp' => 'required|min:1',
            'tgl_bast' => 'required|min:1',
            'no_bast' => 'required|min:1',
            'bagian_id' => 'required|min:1',
            'kegiatan_id' => 'required|min:1',
            'sub_kegiatan_id' => 'required|min:1',
            'uraian' => 'required|min:1',
        ]);

        $spj = spj::create([
            'tanggal_spj'=>$request->tanggal_spj,
            'jenis_spj'=>$request->jenis_spj,
            'tgl_kontrak'=>$request->tgl_kontrak,
            'no_kontrak'=>$request->no_kontrak,
            'tgl_baphp'=>$request->tgl_baphp,
            'no_baphp'=>$request->no_baphp,
            'tgl_bast'=>$request->tgl_bast,
            'no_bast'=>$request->no_bast,
            'bagian_id'=>$request->bagian_id,
            'kegiatan_id'=>$request->kegiatan_id,
            'sub_kegiatan_id'=>$request->sub_kegiatan_id,
            'uraian'=>$request->uraian
        ]);

        $data = [];
        for ($x=0; $x < count($request->get('hargaspj')); $x++) {      
            $data[] = [       
                'dpa_id' => $request->get('dpa_id')[$x],
                'detail_dpa_id' => $request->get('detail_dpa_id')[$x],
                'spj_id' => $spj->id,
                'rekening_id' => $request->get('rekening_id')[$x],
                'program_id' => $request->get('program_id')[$x],
                'satuan' => $request->get('satuanspj')[$x],
                'harga' => $request->get('hargaspj')[$x]
            ];
        }   

        detail_spj::upsert($data, [
            'dpa_id',
            'detail_dpa_id',
            'spj_id',
            'rekening_id',
            'program_id',
            'satuan',
            'harga']);

        return redirect('/spj')->with('success','Data berhasil ditambahkan.');
    }

    public function edit($id){
        $dpa = spj::find($id);
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
        $detail_dpas = Detail_spj::where('dpa_id','=', $dpa->id)
                           ->get();                                              
        return view('spj.edit',compact([
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
        $dpa = Spj::find($id);
        $dpa->update([
            'penjabaran_id'=>$request->penjabaran_id,
            'bagian_id'=>$request->bagian_id,
            'kegiatan_id'=>$request->kegiatan_id,
            'sub_kegiatan_id'=>$request->sub_kegiatan_id,
            'rekening_id'=>$request->rekening_id,
            'program_id'=>$request->program_id
        ]);
        
        $detail_dpas = Detail_spj::where('dpa_id','=', $dpa->id);
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
        
        Detail_spj::upsert($data, [
            'dpa_id',
            'nama_barang',
            'volume',
            'satuan',
            'harga']);

        return redirect('/spj')->with('success','Data berhasil diubah.');

    }

    public function destroy($id) {
        $dpa = Spj::find($id);
        $dpa->delete();

        $detail_dpas = Detail_spj::where('dpa_id','=', $dpa->id);
        $detail_dpas->delete(); 
        return redirect('/spj')->with('success','Data berhasil dihapus.');
    } 

    
    
}
