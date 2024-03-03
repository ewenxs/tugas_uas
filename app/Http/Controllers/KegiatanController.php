<?php

namespace App\Http\Controllers;

use App\Models\Kegiatan;
use Illuminate\Http\Request;
use Yajra\DataTables\DataTables;

class KegiatanController extends Controller
{public function index(Request $request)
    {
        if ($request->ajax()) {
            $data = Kegiatan::select('*');
            return DataTables::of($data)
                    ->addIndexColumn()
                    ->addColumn('action', function($row){
                            $btn =  '<div class="dropdown">
                                        <button class="btn btn-secondary dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
                                            Action
                                        </button>
                                        <ul class="dropdown-menu">
                                            <li><a class="dropdown-item" href="kegiatan/'.$row->id.'/edit">Edit</a></li>
                                            <form action="/kegiatan/'.$row->id.'" method="POST">
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
            'nama_kegiatan' => 'required|min:5'
        ]);

        Kegiatan::create([
            'kode_kegiatan'=>$request->kode_kegiatan,
            'nama_kegiatan'=>$request->nama_kegiatan,
        ]);

        return redirect('/kegiatan')->with('success','Data berhasil ditambahkan.');
    }

    public function edit($id){
        $kegiatan = Kegiatan::find($id);
        return view('kegiatan.edit',compact(['kegiatan']));
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
        ]);

        return redirect('/kegiatan')->with('success','Data berhasil diubah.');

    }

    public function destroy($id) {
        $kegiatan = Kegiatan::find($id);
        $kegiatan->delete();
        return redirect('/kegiatan')->with('success','Data berhasil dihapus.');
    }
}
