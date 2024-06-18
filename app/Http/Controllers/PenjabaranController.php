<?php

namespace App\Http\Controllers;

use App\Models\Penjabaran;
use Illuminate\Http\Request;
use Yajra\DataTables\Facades\DataTables;

class PenjabaranController extends Controller
{
   
    public function index(Request $request)
    {
        if ($request->ajax()) {
            $data = Penjabaran::select('*');
            return DataTables::of($data)
                    ->addIndexColumn()
                    ->addColumn('action', function($row){
                        $btn =  '<div class="btn-group" id="dropdown-icon-demo">
                        <button type="button" class="btn btn-primary dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
                        <i class="bx bx-menu me-1"></i> Action </button>
                        <ul class="dropdown-menu">
                        <li><a class="dropdown-item" href="penjabaran/'.$row->id.'/edit">Edit</a></li>
                        <li><hr class="dropdown-divider" /></li>
                        <li><form action="/penjabaran/'.$row->id.'" method="POST">
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
                    ->make(true);
        }
          
        return view('penjabaran.index');
    }
    
    public function create()
    {
        return view('penjabaran.create');
    }

    public function store(Request $request)
    {
        $request->validate([
            'nomor_dpa' => 'required|min:2'
        ]);

        Penjabaran::create([
            'nomor_dpa'=>$request->nomor_dpa,
        ]);

        return redirect('/penjabaran')->with('success','Data berhasil ditambahkan.');
    }

    public function edit($id){
        $penjabaran = Penjabaran::find($id);
        return view('penjabaran.edit',compact(['penjabaran']));
    }

    public function update(Request $request, $id){
        $request->validate([
            'nomor_dpa' => 'required|min:2'
        ]);
        $penjabaran = Penjabaran::find($id);
        $penjabaran->update([
            'nomor_dpa'=>$request->nomor_dpa,
        ]);

        return redirect('/penjabaran')->with('success','Data berhasil diubah.');

    }

    public function destroy($id) {
        $penjabaran = Penjabaran::find($id);
        $penjabaran->delete();
        return redirect('/penjabaran')->with('success','Data berhasil dihapus.');
    } 

}
