<?php

namespace App\Http\Controllers;

use App\Models\Kegiatan;
use App\Models\Sub_kegiatan;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Yajra\DataTables\DataTables;

class Sub_kegiatanController extends Controller
{
    /*public function index(){
        $data = DB::table('kegiatans')
                    ->join('sub_kegiatans', 'kegiatans.id', '=', 'sub_kegiatans.kegiatan_id')
                    ->get();
        //$sub_kegiatans = sub_kegiatan::all();
        return view('sub_kegiatan.index', compact(['data']));
    }*/

    public function index(Request $request)
    {
        if ($request->ajax()) {
            $data = DB::table('kegiatans')
                        ->join('sub_kegiatans', 'kegiatans.id', '=', 'sub_kegiatans.kegiatan_id')
                        ->get();
            return DataTables::of($data)
                    ->addIndexColumn()
                    ->addColumn('action', function($row){
                            $btn =  '<div class="dropdown">
                                        <button class="btn btn-secondary dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
                                            Action
                                        </button>
                                        <ul class="dropdown-menu">
                                            <li><a class="dropdown-item" href="sub_kegiatan/'.$row->id.'/edit">Edit</a></li>
                                            <form action="/sub_kegiatan/'.$row->id.'" method="POST">
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
          
        return view('sub_kegiatan.index');
    }

    public function create()
    {
        return view('sub_kegiatan.create');
    }

    public function store(Request $request)
    {
        $request->validate([
            'kegiatan_id' => 'required',
            'kode_sub_kegiatan' => 'required|min:5',
            'nama_sub_kegiatan' => 'required|min:5'
        ]);

        Sub_kegiatan::create([
            'kode_sub_kegiatan'=>$request->kode_sub_kegiatan,
            'nama_sub_kegiatan'=>$request->nama_sub_kegiatan,
            'kegiatan_id'=>$request->kegiatan_id
        ]);

        return redirect('/sub_kegiatan')->with('success','Data berhasil ditambahkan.');
    }

    public function edit($id){
        $sub_kegiatan = Sub_kegiatan::find($id);
        $kegiatans = DB::table('sub_kegiatans')        
                    ->leftjoin('kegiatans', 'kegiatans.id', '=', 'sub_kegiatans.kegiatan_id')
                    ->groupBy('sub_kegiatans.kegiatan_id')
                    ->get();
        return view('sub_kegiatan.edit',compact(['sub_kegiatan', 'kegiatans']));
    }

    public function update(Request $request, $id){
        $request->validate([
            'kegiatan_id' => 'required',
            'kode_sub_kegiatan' => 'required|min:5',
            'nama_sub_kegiatan' => 'required|min:5'
        ]);
        $sub_kegiatan = sub_kegiatan::find($id);
        $sub_kegiatan->update([
            'kode_sub_kegiatan'=>$request->kode_sub_kegiatan,
            'nama_sub_kegiatan'=>$request->nama_sub_kegiatan,
            'kegiatan_id'=>$request->kegiatan_id,
        ]);

        return redirect('/sub_kegiatan')->with('success','Data berhasil diubah.');

    }

    public function destroy($id) {
        $sub_kegiatan = Sub_kegiatan::find($id);
        $sub_kegiatan->delete();
        return redirect('/sub_kegiatan')->with('success','Data berhasil dihapus.');
    }

  
}
