<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Yajra\DataTables\Facades\DataTables;

class UserController extends Controller
{

    public function index(Request $request)
    {
        if ($request->ajax()) {
            $data = User::select('*');
            return DataTables::of($data)
                    ->addIndexColumn()
                    ->addColumn('action', function($row){
                        $btn =  '<div class="btn-group" id="dropdown-icon-demo">
                        <button type="button" class="btn btn-primary dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
                        <i class="bx bx-menu me-1"></i> Action </button>
                        <ul class="dropdown-menu">
                        <li><a class="dropdown-item" href="user/'.$row->id.'/edit">Edit</a></li>
                        <li><hr class="dropdown-divider" /></li>
                        <li><form action="/user/'.$row->id.'" method="POST">
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
          
        return view('user.index');
    }

    function check(Request $request)
    {
        if($request->get('username'))
        {
                $username = $request->get('username');
                $data = DB::table("users")
                            ->where('username', $username)
                            ->count();
        if($data > 0)
            {
                echo 'not_unique';
            }
                else
            {
                 echo 'unique';
            }
        }
    }    

    public function create()
    {
        return view('user.create');
    }

    public function store(Request $request)
    {
        $request->validate([
            'name' => 'required|min:5',
            'username' => 'required|min:5',
            'email' => 'required|email',
            'password' => 'required|confirmed|min:8',
            'password_confirmation' => 'required',
            'role' => 'required|min:2',
        ]);

        User::create([
            'name'=>$request->name,
            'username'=>$request->username,
            'email'=>$request->email,
            'password'=>$request->password,
            'role'=>$request->role,
        ]);

        return redirect('/user')->with('success','Data berhasil ditambahkan.');
    }

    public function edit($id){
        $user = User::find($id);
        return view('user.edit',compact(['user']));
    }

    public function update(Request $request, $id){
       
        $request->validate([
            'name' => 'required|min:5',
            'username' => 'required|min:5',
            'email' => 'required|email',
            'password' => 'required|confirmed|min:8',
            'password_confirmation' => 'required',
            'role' => 'required|min:2',
        ]);

        $user = User::find($id);

        if($request->filled('password'))
            {
                $request->validate([
                    'name' => 'required|min:5',
                    'username' => 'required|min:5',
                    'email' => 'required|email',
                    'password' => 'required|confirmed|min:8',
                    'password_confirmation' => 'required',
                    'role' => 'required|min:2',
                ]);

                $user->update([
                    'name'=>$request->name,
                    'username'=>$request->username,
                    'email'=>$request->email,
                    'password'=>$request->password,
                    'role'=>$request->role,
                ]);
            }
                else
            {
                $request->validate([
                    'name' => 'required|min:5',
                    'username' => 'required|min:5',
                    'email' => 'required|email',
                    'role' => 'required|min:2',
                ]);

                $user->update([
                    'name'=>$request->name,
                    'username'=>$request->username,
                    'email'=>$request->email,
                    'role'=>$request->role,
                ]);
            }

        return redirect('/user')->with('success','Data berhasil diubah.');

    }

    public function destroy($id) {
        $user = User::find($id);
        $user->delete();
        return redirect('/user')->with('success','Data berhasil dihapus.');
    }
 
}
