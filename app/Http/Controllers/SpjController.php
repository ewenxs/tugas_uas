<?php

namespace App\Http\Controllers;

use App\Models\Bagian;
use App\Models\Detail_spj;
use App\Models\Kegiatan;
use App\Models\Spj;
use App\Models\Sub_kegiatan;
use Illuminate\Http\Request;
use Illuminate\Support\Arr;
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
       /* $type = $request->get('jumlahspj');
        $filteredArray = Arr::where($data, function ($value, $key) use($type) {
            return $value['type'] == $type;
        });

        for ($x=0; $x < count($filteredArray); $x++) {      
            $filteredArray[] = [       
                'dpa_id' => $request->get('dpa_id')[$x],
                'detail_dpa_id' => $request->get('detail_dpa_id')[$x],
                'spj_id' => $spj->id,
                'rekening_id' => $request->get('rekening_id')[$x],
                'program_id' => $request->get('program_id')[$x],
                'satuan' => $request->get('satuanspj')[$x],
                'harga' => $request->get('hargaspj')[$x],
                'catatan' => $request->get('catatan')[$x]
            ];*/

        for ($x=0; $x < count($request->get('hargaspj')); $x++) {      
            $data[] = [       
                'dpa_id' => $request->get('dpa_id')[$x],
                'detail_dpa_id' => $request->get('detail_dpa_id')[$x],
                'spj_id' => $spj->id,
                'rekening_id' => $request->get('rekening_id')[$x],
                'program_id' => $request->get('program_id')[$x],
                'satuan' => $request->get('satuanspj')[$x],
                'harga' => $request->get('hargaspj')[$x],
                'catatan' => $request->get('catatan')[$x]
            ];
        }   

        detail_spj::upsert($data, [
            'dpa_id',
            'detail_dpa_id',
            'spj_id',
            'rekening_id',
            'program_id',
            'satuan',
            'harga',
            'catatan']);

        return redirect('/spj')->with('success','Data berhasil ditambahkan.');
    }

    public function edit($id){
        $spj = spj::find($id);
        $bagians = Bagian::where('id','=', $spj->bagian_id)
                           ->get();    
        $kegiatans = Kegiatan::where('id','=',$spj->kegiatan_id) 
                               ->get();     
        $sub_kegiatans = Sub_kegiatan::where('id','=', $spj->sub_kegiatan_id)
                                       ->get();  

         $rek_prog = DB::table('detail_dpas')
                         ->join('detail_spjs', 'detail_dpas.dpa_id', '=', 'detail_spjs.dpa_id')
                         ->where('detail_spjs.spj_id', '=', $id)   
                         ->select('detail_spjs.rekening_id as rekening_id_sum',
                                  'detail_spjs.program_id as program_id_sum')   
                         ->first();

        $data = DB::table('dpas')
        ->join('detail_dpas', 'dpas.id', '=', 'detail_dpas.dpa_id')
        ->join('rekenings', 'rekenings.id', '=', 'dpas.rekening_id')
        ->join('programs', 'programs.id', '=', 'dpas.program_id')   
        ->select('rekenings.no_rekening as no_rekening',
                 'rekenings.id as rekening_id',
                 'programs.nama_program as nama_program',
                 'programs.id as program_id',
                 'detail_dpas.nama_barang as nama_barang',
                 'detail_dpas.volume as volume',
                 'detail_dpas.satuan as satuan', 
                 'detail_dpas.harga as harga',
                 'detail_dpas.dpa_id as dpa_id',
                 'detail_dpas.id as detail_dpa_id')
                 ->orderBy('rekenings.no_rekening')
        ->get();          

$table_spjs = DB::table('detail_spjs')
        ->join('rekenings', 'rekenings.id', '=', 'detail_spjs.rekening_id')
        ->join('programs', 'programs.id', '=', 'detail_spjs.program_id')
        ->join('dpas', 'dpas.id', '=', 'detail_spjs.dpa_id')
        ->join('detail_dpas', 'detail_dpas.id', '=', 'detail_spjs.detail_dpa_id')
        ->join('spjs', 'spjs.id', '=', 'detail_spjs.spj_id')
        ->select('rekenings.no_rekening as no_rekening',
                 'rekenings.id as rekening_id',
                 'programs.nama_program as nama_program',
                 'programs.id as program_id',
                 'detail_dpas.nama_barang as nama_barang',
                 'detail_dpas.volume as volume',
                 'detail_dpas.satuan as satuan',  
                 'detail_dpas.harga as harga',
                 'detail_dpas.dpa_id as dpa_id',
                 'detail_dpas.id as detail_dpa_id',
                 'detail_spjs.satuan as satuanSpj', 
                 'detail_spjs.harga as hargaSpj',
                 'detail_spjs.catatan as catatan',
                 'detail_spjs.id as detail_spj_id',
                 'detail_spjs.rekening_id as rek_id', 
                 'detail_spjs.program_id as prog_id',
                 'detail_dpas.id as detdpaid'
           )
           ->selectSub(
               DB::table('detail_spjs')
                   ->selectRaw('sum(satuan*harga)')
                   ->whereColumn('detail_spjs.rekening_id', 'rek_id')
                   ->whereColumn('detail_spjs.program_id', 'prog_id'),
               'totalspj',
           )
           ->selectSub(
               DB::table('detail_dpas')
                   ->selectRaw('sum(volume*harga)')
                   ->whereColumn('detail_dpas.id', 'detdpaid'),
               'totaldpa',
           )
              ->where('spjs.id', '=', $id)  
              ->get();
                      
        return view('spj.edit',compact([
            'spj', 'bagians', 'sub_kegiatans','kegiatans','table_spjs'
        ]));
    }
   // DB::Raw('detail_spjs.satuan*detail_spjs.harga AS total_spj') DB::Raw('sum(detail_spjs.satuan*detail_spjs.harga) AS total_spj')

    public function update(Request $request, $id){

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
        $spj = Spj::find($id);
        $spj->update([
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
        
        
        
        $detail_spjs = Detail_spj::where('spj_id','=', $spj->id);
        $detail_spjs->delete(); 
        
        $data = [];
        for ($x=0; $x < count($request->get('hargaspj')); $x++) {      
            $data[] = [       
                'dpa_id' => $request->get('dpa_id')[$x],
                'detail_dpa_id' => $request->get('detail_dpa_id')[$x],
                'spj_id' => $spj->id,
                'rekening_id' => $request->get('rekening_id')[$x],
                'program_id' => $request->get('program_id')[$x],
                'satuan' => $request->get('satuanspj')[$x],
                'harga' => $request->get('hargaspj')[$x],
                'catatan' => $request->get('catatan')[$x]
            ];
        } 
    
            detail_spj::upsert($data, [
                'dpa_id',
                'detail_dpa_id',
                'spj_id',
                'rekening_id',
                'program_id',
                'satuan',
                'harga',
                'catatan']);

        return redirect('/spj')->with('success','Data berhasil diubah.');

    }

    public function destroy($id) {
        $spj = Spj::find($id);
        $spj->delete();

        $detail_spjs = Detail_spj::where('spj_id','=', $spj->id);
        $detail_spjs->delete(); 
        return redirect('/spj')->with('success','Data berhasil dihapus.');
    } 

    
    
}
