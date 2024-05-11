<?php

namespace App\Http\Controllers;

use App\Models\Bagian;
use App\Models\Dpa;
use App\Models\Rekening;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Yajra\DataTables\Facades\DataTables;

class DpaController extends Controller
{
    public function index(Request $request)
    {
        if ($request->ajax()) {
            $data = Dpa::select('*');
            return DataTables::of($data)
                    ->addIndexColumn()
                    ->addColumn('action', function($row){
                            $btn =  '<div class="dropdown">
                                        <button class="btn btn-secondary dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
                                            Action
                                        </button>
                                        <ul class="dropdown-menu">
                                            <li><a class="dropdown-item" href="dpa/'.$row->id.'/edit">Edit</a></li>
                                            <form action="/dpa/'.$row->id.'" method="POST">
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
            'nomor_dpa' => 'required|min:2'
        ]);

        Dpa::create([
            'nomor_dpa'=>$request->nomor_dpa,
        ]);

        return redirect('/dpa')->with('success','Data berhasil ditambahkan.');
    }

    public function edit($id){
        $dpa = Dpa::find($id);
        return view('dpa.edit',compact(['dpa']));
    }

    public function update(Request $request, $id){
        $request->validate([
            'nomor_dpa' => 'required|min:2'
        ]);
        $dpa = Dpa::find($id);
        $dpa->update([
            'nomor_dpa'=>$request->nomor_dpa,
        ]);

        return redirect('/dpa')->with('success','Data berhasil diubah.');

    }

    public function destroy($id) {
        $dpa = Dpa::find($id);
        $dpa->delete();
        return redirect('/dpa')->with('success','Data berhasil dihapus.');
    } 

    
     
}
