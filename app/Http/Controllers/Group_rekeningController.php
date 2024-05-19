<?php

namespace App\Http\Controllers;

use App\Models\Bagian;
use App\Models\Group_rekening;
use App\Models\Rekening;
use App\Models\Sub_kegiatan;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Yajra\DataTables\DataTables;

class Group_rekeningController extends Controller
{
    public function index(Request $request)
    {
        if ($request->ajax()) {
            $data = DB::table('group_rekenings')
                        ->join('kegiatans', 'group_rekenings.kegiatan_id', '=', 'kegiatans.id')
                        ->join('sub_kegiatans', 'group_rekenings.sub_kegiatan_id', '=', 'sub_kegiatans.id')
                        ->join('rekenings', 'group_rekenings.rekening_id', '=', 'rekenings.id')
                        ->select('kegiatans.kode_kegiatan','kegiatans.nama_kegiatan','sub_kegiatans.kode_sub_kegiatan','sub_kegiatans.nama_sub_kegiatan', 'group_rekenings.id as rek_id')
                        ->groupBy('group_rekenings.sub_kegiatan_id')
                        ->get();
            return DataTables::of($data)
                    ->addIndexColumn()
                    ->addColumn('action', function($row){
                            $btn =  '<div class="dropdown">
                                        <button class="btn btn-secondary dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
                                            Action
                                        </button>
                                        <ul class="dropdown-menu">
                                            <li><a class="dropdown-item" href="group_rekening/'.$row->rek_id.'/edit">Edit</a></li>
                                            <form action="/group_rekening/'.$row->rek_id.'" method="POST">
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
          
        return view('group_rekening.index');
    }

    public function create()
    {
        $rekenings = Rekening::all();
        return view('group_rekening.create',compact(['rekenings']));
    }

    public function store(Request $request)
    {
        $request->validate([
            'kegiatan_id' => 'required',
            'sub_kegiatan_id' => 'required',
            'rekening_id' => 'required'
        ]);

        $data = [];
        for ($x=0; $x < count($request->get('rekening_id')); $x++) {      
            $data[] = [
                'bagian_id' => $request->get('bagian_id'),
                'kegiatan_id' => $request->get('kegiatan_id'),
                'sub_kegiatan_id' => $request->get('sub_kegiatan_id'),
                'rekening_id' => $request->get('rekening_id')[$x],
            ];
        }   
        group_rekening::upsert($data, ['bagian_id', 'kegiatan_id', 'sub_kegiatan_id', 'rekening_id']);
        return redirect('/group_rekening')->with('success','Data berhasil ditambahkan.');
    }

    public function edit($id){
        $group_rekening = Group_rekening::find($id);  
        $sub_kegiatan = Sub_kegiatan::where('id','=', $group_rekening->sub_kegiatan_id)
                        ->first();     
        $kegiatans = DB::table('sub_kegiatans')        
                    ->leftjoin('kegiatans', 'kegiatans.id', '=', 'sub_kegiatans.kegiatan_id')
                    ->select('kegiatans.id as keg_id','kegiatans.kode_kegiatan','kegiatans.nama_kegiatan','sub_kegiatans.id as subkeg_id','sub_kegiatans.kode_sub_kegiatan','sub_kegiatans.nama_sub_kegiatan')
                    ->groupBy('sub_kegiatans.kegiatan_id')
                    ->get();
        $sub_kegiatan_news = DB::table('sub_kegiatans')
                            ->get();            
        $group_rekenings = DB::table('group_rekenings')
                              ->join('kegiatans', 'group_rekenings.kegiatan_id', '=', 'kegiatans.id')
                              ->join('sub_kegiatans', 'group_rekenings.sub_kegiatan_id', '=', 'sub_kegiatans.id')
                              ->join('rekenings', 'group_rekenings.rekening_id', '=', 'rekenings.id')
                              ->select('kegiatans.kode_kegiatan','kegiatans.nama_kegiatan','sub_kegiatans.kode_sub_kegiatan','sub_kegiatans.nama_sub_kegiatan', 'group_rekenings.id as rek_id')
                              ->get();
        $list_rekening = Rekening::whereIn('id', Group_rekening::select(['rekening_id'])->where([['kegiatan_id','=',$group_rekening->kegiatan_id],['sub_kegiatan_id','=', $group_rekening->sub_kegiatan_id]]))
                             ->get();   
        $bagians = Bagian::where('id','=', $group_rekening->bagian_id)
                           ->get();                              
        return view('group_rekening.edit',compact([
            'group_rekening', 
            'group_rekenings',
            'kegiatans',
            'sub_kegiatan', 
            'list_rekening',
            'sub_kegiatan_news',
            'bagians']));
    }

    public function update(Request $request, $id)
    {
        $group_rekening = Group_rekening::where('kegiatan_id','=',$request->get('kegiatan_id'))
                          ->where('sub_kegiatan_id','=',$request->get('sub_kegiatan_id'))
                          ->delete();

        $request->validate([
            'kegiatan_id' => 'required',
            'sub_kegiatan_id' => 'required',
            'rekening_id' => 'required'
        ]);

        $data = [];
        for ($x=0; $x < count($request->get('rekening_id')); $x++) {      
            $data[] = [
                'bagian_id' => $request->get('bagian_id'),
                'kegiatan_id' => $request->get('kegiatan_id'),
                'sub_kegiatan_id' => $request->get('sub_kegiatan_id'),
                'rekening_id' => $request->get('rekening_id')[$x],
            ];
        }   
        group_rekening::upsert($data, ['bagian_id', 'kegiatan_id', 'sub_kegiatan_id', 'rekening_id']);
        return redirect('/group_rekening')->with('success','Data berhasil diubah.');
    }

    public function destroy($id) {
        $group_rekening = Group_rekening::find($id);
        $group_rekening->delete();
        return redirect('/group_rekening')->with('success','Data berhasil dihapus.');
    }

    public function show($id)
    {
        //$user = User::find($id);
        $data = Rekening::whereIn('id', 'IN', array($id))
        ->get();
        return response()->json($data);
    }
}
