<?php

namespace App\Http\Controllers;

use App\Models\Rekening;
use Illuminate\Http\Request;
use Yajra\DataTables\DataTables;

class RekeningController extends Controller
{
    public function index(Request $request)
    {
        if ($request->ajax()) {
            $data = Rekening::select('*');
            return DataTables::of($data)
                    ->addIndexColumn()
                    ->addColumn('action', function($row){
                            $btn =  '<div class="dropdown">
                                        <button class="btn btn-secondary dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
                                            Action
                                        </button>
                                        <ul class="dropdown-menu">
                                            <li><a class="dropdown-item" href="rekening/'.$row->id.'/edit">Edit</a></li>
                                            <form action="/rekening/'.$row->id.'" method="POST">
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
          
        return view('rekening.index');
    }

    //public function index(){
        //$rekenings = Rekening::all();
        //return view('rekening.index', compact(['rekenings']));
    //}
    
    public function create()
    {
        return view('rekening.create');
    }

    public function store(Request $request)
    {
        $request->validate([
            'no_rekening' => 'required|min:5',
            'nama_rekening' => 'required|min:5'
        ]);

        Rekening::create([
            'no_rekening'=>$request->no_rekening,
            'nama_rekening'=>$request->nama_rekening,
        ]);

        return redirect('/rekening')->with('success','Data berhasil ditambahkan.');
    }

    public function edit($id){
        $rekening = Rekening::find($id);
        return view('rekening.edit',compact(['rekening']));
    }

    public function update(Request $request, $id){
        $request->validate([
            'no_rekening' => 'required|min:5',
            'nama_rekening' => 'required|min:5'
        ]);
        $rekening = Rekening::find($id);
        $rekening->update([
            'no_rekening'=>$request->no_rekening,
            'nama_rekening'=>$request->nama_rekening,
        ]);

        return redirect('/rekening')->with('success','Data berhasil diubah.');

    }

    public function destroy($id) {
        $rekening = Rekening::find($id);
        $rekening->delete();
        return redirect('/rekening')->with('success','Data berhasil dihapus.');
    }
}
