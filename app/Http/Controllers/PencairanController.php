<?php

namespace App\Http\Controllers;

use App\Models\Kegiatan;
use App\Models\Pencairan;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Yajra\DataTables\Facades\DataTables;

class PencairanController extends Controller
{
    public function index(Request $request)
    {
        if ($request->ajax()) {
            $data = DB::table('spjs')
                        ->join('bagians', 'spjs.bagian_id', '=', 'bagians.id')
                        ->join('kegiatans', 'spjs.kegiatan_id', '=', 'kegiatans.id')
                        ->join('sub_kegiatans', 'spjs.sub_kegiatan_id', '=', 'sub_kegiatans.id')
                        ->join('detail_spjs', 'spjs.id', '=', 'detail_spjs.spj_id')
                        ->join('pencairans', 'spjs.id', '=', 'pencairans.spj_id')
                        ->select('spjs.tanggal_spj',
                                'spjs.uraian',
                                'bagians.nama_bagian',
                                'kegiatans.kode_kegiatan',
                                'sub_kegiatans.kode_sub_kegiatan',
                                'detail_spjs.spj_id',
                                'pencairans.id as pencairan_id')
                        ->selectRaw('sum(detail_spjs.satuan*detail_spjs.harga) AS total_spj')        
                        ->groupBy('detail_spjs.spj_id')                                      
                        ->get();
            return DataTables::of($data)
                    ->addIndexColumn()
                    ->addColumn('action', function($row){
                        $btn =  '<div class="btn-group" id="dropdown-icon-demo">
                        <button type="button" class="btn btn-primary dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
                        <i class="bx bx-menu me-1"></i> Action </button>
                        <ul class="dropdown-menu">
                        <li><a class="dropdown-item" href="pencairan/'.$row->pencairan_id.'/edit">Edit</a></li>
                        <li><hr class="dropdown-divider" /></li>
                        <li><form action="/pencairan/'.$row->pencairan_id.'" method="POST">
                                       '.csrf_field().'
                                       '.method_field("DELETE").'
                                       <input type="submit" class="dropdown-item" onclick="return confirm(\'Apakah anda yakin ?\')" value="Delete">
                                     </form>
                        </li>
                        </ul>
                        </div>';
      
                            return $btn;
                    })
                    ->rawColumns(['action'])
                    ->editColumn('total_spj', function ($command) {
                        return number_format($command->total_spj, 0, ',', '.');
                    })
                    ->make(true);
        }
          
        return view('pencairan.index');
    }
    
    public function create(Request $request)
    {
        if ($request->ajax()) {
            $data = DB::table('spjs')
                        ->join('bagians', 'spjs.bagian_id', '=', 'bagians.id')
                        ->join('sub_kegiatans', 'spjs.sub_kegiatan_id', '=', 'sub_kegiatans.id')
                        ->join('detail_spjs', 'spjs.id', '=', 'detail_spjs.spj_id')
                        ->select('spjs.tanggal_spj',
                                'spjs.uraian',
                                'bagians.nama_bagian',
                                'sub_kegiatans.kode_sub_kegiatan',
                                'sub_kegiatans.nama_sub_kegiatan',
                                'detail_spjs.spj_id')
                        ->selectRaw('sum(detail_spjs.satuan*detail_spjs.harga) AS total_spj')   
                        ->whereNotIn('spjs.id', function($q){
                            $q->select('spj_id')->from('pencairans');
                        })    
                        ->groupBy('detail_spjs.spj_id')                                      
                        ->get();
            return DataTables::of($data)
                    ->addIndexColumn()
                    ->editColumn('total_spj', function ($command) {
                        return number_format($command->total_spj, 0, ',', '.');
                    })
                    ->make(true);
        }

        return view('pencairan.create');
    }

    public function store(Request $request)
    {
        $request->validate([
            'spj_id' => 'required|min:1',
            'tgl_pencairan' => 'required|min:5',
            'no_spm' => 'required|min:5',
            'no_sp2d' => 'required|min:5'
        ]);

        Pencairan::create([
            'spj_id'=>$request->spj_id,
            'tgl_pencairan'=>$request->tgl_pencairan,
            'no_spm'=>$request->no_spm,
            'no_sp2d'=>$request->no_sp2d
        ]);

        return redirect('/pencairan')->with('success','Data berhasil ditambahkan.');
    }

    public function edit($id){
        $pencairan = Pencairan::find($id);
        $edit_pencairan = DB::table('spjs')
                    ->join('bagians', 'spjs.bagian_id', '=', 'bagians.id')
                    ->join('sub_kegiatans', 'spjs.sub_kegiatan_id', '=', 'sub_kegiatans.id')
                    ->join('detail_spjs', 'spjs.id', '=', 'detail_spjs.spj_id')
                    ->select('spjs.tanggal_spj',
                            'spjs.uraian',
                            'bagians.nama_bagian',
                            'sub_kegiatans.kode_sub_kegiatan',
                            'sub_kegiatans.nama_sub_kegiatan',
                            'detail_spjs.spj_id')
                    ->where('spjs.id','=',$pencairan->spj_id)
                    ->selectRaw('sum(detail_spjs.satuan*detail_spjs.harga) AS total_spj')   
                    ->groupBy('detail_spjs.spj_id')                                      
                    ->first();


        return view('pencairan.edit',compact(['pencairan','edit_pencairan']));
    }

    public function update(Request $request, $id){

        $request->validate([
            'spj_id' => 'required|min:1',
            'tgl_pencairan' => 'required|min:5',
            'no_spm' => 'required|min:5',
            'no_sp2d' => 'required|min:5'
        ]);

        $pencairan = Pencairan::find($id);

        $pencairan->update([
            'spj_id'=>$request->spj_id,
            'tgl_pencairan'=>$request->tgl_pencairan,
            'no_spm'=>$request->no_spm,
            'no_sp2d'=>$request->no_sp2d
        ]);

        return redirect('/pencairan')->with('success','Data berhasil diubah.');

    }

    public function destroy($id) {
        $pencairan = Pencairan::find($id);
        $pencairan->delete();
        return redirect('/pencairan')->with('success','Data berhasil dihapus.');
    }
}
