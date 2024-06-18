<?php

namespace App\Http\Controllers;

use App\Models\Bagian;
use Illuminate\Http\Request;
use Yajra\DataTables\DataTables;

class BagianController extends Controller
{
    public function index(Request $request)
    {
        if ($request->ajax()) {
            $data = Bagian::select('*');
            return DataTables::of($data)
                    ->addIndexColumn()
                    ->addColumn('action', function($row){
               $btn =  '<div class="btn-group" id="dropdown-icon-demo">
                        <button type="button" class="btn btn-primary dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
                        <i class="bx bx-menu me-1"></i> Action </button>
                        <ul class="dropdown-menu">
                        <li><a class="dropdown-item" href="bagian/'.$row->id.'/edit">Edit</a></li>
                        <li><hr class="dropdown-divider" /></li>
                        <li><form action="/bagian/'.$row->id.'" method="POST">
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
          
        return view('bagian.index');
    }
/*   public function index()
    {
        $bagians = Bagian::all();
        return view('bagian.index',compact(['bagians']));
    } */

    public function create()
    {
        return view('bagian.create');
    }

    public function store(Request $request)
    {
        $request->validate([
            'nama_bagian' => 'required|min:5'
        ]);

        Bagian::create([
            'nama_bagian'=>$request->nama_bagian,
        ]);

        return redirect('/bagian')->with('success','Data berhasil ditambahkan.');
    }

    public function edit($id){
        $bagian = bagian::find($id);
        return view('bagian.edit',compact(['bagian']));
    }

    public function update(Request $request, $id){
        $request->validate([
            'nama_bagian' => 'required|min:5'
        ]);
        $bagian = Bagian::find($id);
        $bagian->update([
            'nama_bagian'=>$request->nama_bagian,
        ]);

        return redirect('/bagian')->with('success','Data berhasil diubah.');

    }

    public function destroy($id) {
        $bagian = Bagian::find($id);
        $bagian->delete();
        return redirect('/bagian')->with('success','Data berhasil dihapus.');
    }

}
