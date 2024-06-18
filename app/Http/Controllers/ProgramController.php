<?php

namespace App\Http\Controllers;

use App\Models\Program;
use Illuminate\Http\Request;
use Yajra\DataTables\DataTables;

class ProgramController extends Controller
{

    public function index(Request $request)
    {
        if ($request->ajax()) {
            $data = Program::select('*');
            return DataTables::of($data)
                    ->addIndexColumn()
                    ->addColumn('action', function($row){
                        $btn =  '<div class="btn-group" id="dropdown-icon-demo">
                        <button type="button" class="btn btn-primary dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
                        <i class="bx bx-menu me-1"></i> Action </button>
                        <ul class="dropdown-menu">
                        <li><a class="dropdown-item" href="program/'.$row->id.'/edit">Edit</a></li>
                        <li><hr class="dropdown-divider" /></li>
                        <li><form action="/program/'.$row->id.'" method="POST">
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
          
        return view('program.index');
    }
    
    public function create()
    {
        return view('program.create');
    }

    public function store(Request $request)
    {
        $request->validate([
            'nama_program' => 'required|min:2'
        ]);

        Program::create([
            'nama_program'=>$request->nama_program,
        ]);

        return redirect('/program')->with('success','Data berhasil ditambahkan.');
    }

    public function edit($id){
        $program = Program::find($id);
        return view('program.edit',compact(['program']));
    }

    public function update(Request $request, $id){
        $request->validate([
            'nama_program' => 'required|min:2'
        ]);
        $program = Program::find($id);
        $program->update([
            'nama_program'=>$request->nama_program,
        ]);

        return redirect('/program')->with('success','Data berhasil diubah.');

    }

    public function destroy($id) {
        $program = Program::find($id);
        $program->delete();
        return redirect('/program')->with('success','Data berhasil dihapus.');
    } 
}
