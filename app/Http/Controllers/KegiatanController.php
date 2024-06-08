<?php

namespace App\Http\Controllers;

use App\Models\Kegiatan;
use Barryvdh\DomPDF\Facade\Pdf;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Yajra\DataTables\DataTables;

class KegiatanController extends Controller
{
    public function index(Request $request)
    {
        if ($request->ajax()) {
            $sql = "select kegiatans.id as keg_id, kegiatans.kode_kegiatan, kegiatans.nama_kegiatan, bagians.nama_bagian";
            $sql .= " from kegiatans left join bagians on kegiatans.bagian_id=bagians.id";
            $data = DB::select($sql);
            return DataTables::of($data)
                    ->addIndexColumn()
                    ->addColumn('action', function($row){
                            $btn =  '<div class="dropdown">
                                        <button class="btn btn-secondary dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
                                            Action
                                        </button>
                                        <ul class="dropdown-menu">
                                            <li><a class="dropdown-item" href="kegiatan/'.$row->keg_id.'/edit">Edit</a></li>
                                            <form action="/kegiatan/'.$row->keg_id.'" method="POST">
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
          
        return view('kegiatan.index');
    }
    /*public function index(){
        $kegiatans = Kegiatan::all();
        return view('kegiatan.index', compact(['kegiatans']));
    }*/
    
    public function create()
    {
        return view('kegiatan.create');
    }

    public function store(Request $request)
    {
        $request->validate([
            'kode_kegiatan' => 'required|min:5',
            'nama_kegiatan' => 'required|min:5',
            'bagian_id' => 'required|min:1'
        ]);

        Kegiatan::create([
            'kode_kegiatan'=>$request->kode_kegiatan,
            'nama_kegiatan'=>$request->nama_kegiatan,
            'bagian_id'=>$request->bagian_id,
        ]);

        return redirect('/kegiatan')->with('success','Data berhasil ditambahkan.');
    }

    public function edit($id){
        $kegiatan = Kegiatan::find($id);
        $bagians = DB::table('kegiatans')        
                    ->leftjoin('bagians', 'bagians.id', '=', 'kegiatans.bagian_id')
                    ->get();
        return view('kegiatan.edit',compact(['kegiatan', 'bagians']));
    }

    public function update(Request $request, $id){
        $request->validate([
            'kode_kegiatan' => 'required|min:5',
            'nama_kegiatan' => 'required|min:5'
        ]);
        $kegiatan = Kegiatan::find($id);
        $kegiatan->update([
            'kode_kegiatan'=>$request->kode_kegiatan,
            'nama_kegiatan'=>$request->nama_kegiatan,
            'bagian_id'=>$request->bagian_id,
        ]);

        return redirect('/kegiatan')->with('success','Data berhasil diubah.');

    }

    public function destroy($id) {
        $kegiatan = Kegiatan::find($id);
        $kegiatan->delete();
        return redirect('/kegiatan')->with('success','Data berhasil dihapus.');
    }
 
}
