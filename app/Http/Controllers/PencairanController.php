<?php

namespace App\Http\Controllers;

use App\Models\Pencairan;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\File;
use Yajra\DataTables\Facades\DataTables;

class PencairanController extends Controller
{
    public function index(Request $request)
    {
        if ($request->ajax()) {
            $data = DB::table('spjs')
                        ->join('bagians', 'spjs.bagian_id', '=', 'bagians.id')
                        ->join('kegiatans', 'spjs.kegiatan_id', '=', 'kegiatans.id')
                        ->join('sub_kegiatans', 'spjs.sub_kegiatan_id', '=', 'sub_kegiatans.id')
                        ->join('detail_spjs', 'spjs.id', '=', 'detail_spjs.spj_id')
                        ->join('pencairans', 'spjs.id', '=', 'pencairans.spj_id')
                        ->select('spjs.tanggal_spj',
                                'pencairans.tgl_pencairan',
                                'spjs.uraian',
                                'bagians.nama_bagian',
                                'kegiatans.kode_kegiatan',
                                'sub_kegiatans.kode_sub_kegiatan',
                                'detail_spjs.spj_id',
                                'pencairans.files',
                                'pencairans.id as pencairan_id')
                        ->selectRaw('sum(detail_spjs.satuan*detail_spjs.harga) AS total_spj')        
                        ->groupBy('detail_spjs.spj_id')                                      
                        ->get();
            return DataTables::of($data)
                    ->addIndexColumn()
                    ->addColumn('BagianKodeKeg', function($row){
                        $BagianKodeKeg =  '<small class="text-light">'.$row->kode_sub_kegiatan.'<small>
                                           <br>
                                           <small class="text-light">'.$row->nama_bagian.'<small>';
          
                                return $BagianKodeKeg;
                        })
                    ->addColumn('TglSpj', function ($row) {
                            // Format the created_at column using MySQL date_format
                            $dateSpj = date("d-m-Y", strtotime($row->tanggal_spj));
                                    return $dateSpj;
                            // Change the format as needed
                        })
                    ->addColumn('TglCair', function ($row) {
                                // Format the created_at column using MySQL date_format
                                $dateCair = date("d-m-Y", strtotime($row->tgl_pencairan));
                                        return $dateCair;
                                // Change the format as needed
                            })
                    ->addColumn('Download', function ($row) {
                                                // Format the created_at column using MySQL date_format
                                $status = !empty($row->files) ? 
                                           '<span>
                                           <small>
                                           <a href="'.$row->files.'" target="_blank">
                                           <i class="bx bxs-file-pdf bx-sm text-primary me-3"></i></a>
                                           </small>
                                           </span>' 
                                           : '<span>
                                           <small><i class="bx bxs-x-circle bx-sm text-danger me-3"></i>
                                           </small>
                                           </span>';
                                return $status;
                                                // Change the format as needed
                                })
                    ->addColumn('action', function($row){
                        $btn =  '<div class="btn-group" id="dropdown-icon-demo">
                        <button type="button" class="btn btn-primary dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
                        <i class="bx bx-menu me-1"></i> Action </button>
                        <ul class="dropdown-menu">
                        <li><a class="dropdown-item" href="pencairan/'.$row->pencairan_id.'/edit">Edit</a></li>
                        <li><hr class="dropdown-divider" /></li>
                        <li><form action="/pencairan/'.$row->pencairan_id.'" method="POST">
                                       '.csrf_field().'
                                       '.method_field("DELETE").'
                                       <input type="submit" class="dropdown-item" onclick="return confirm(\'Apakah anda yakin ?\')" value="Delete">
                                     </form>
                        </li>
                        <li><hr class="dropdown-divider" /></li>
                        <li><a class="dropdown-item" href="upload-spj/'.$row->pencairan_id.'/edit">Upload SPJ</a></li>
                        </ul>
                        </div>';
      
                            return $btn;
                    })
                    ->rawColumns(['action','BagianKodeKeg','TglSpj','Download'])
                    ->editColumn('total_spj', function ($command) {
                        return number_format($command->total_spj, 0, ',', '.');
                    })
                    ->make(true);
        }
          
        return view('pencairan.index');
    }
    
    public function create(Request $request)
    {
        if ($request->ajax()) {
            $data = DB::table('spjs')
                        ->join('bagians', 'spjs.bagian_id', '=', 'bagians.id')
                        ->join('sub_kegiatans', 'spjs.sub_kegiatan_id', '=', 'sub_kegiatans.id')
                        ->join('detail_spjs', 'spjs.id', '=', 'detail_spjs.spj_id')
                        ->select('spjs.tanggal_spj',
                                'spjs.uraian',
                                'bagians.nama_bagian',
                                'sub_kegiatans.kode_sub_kegiatan',
                                'sub_kegiatans.nama_sub_kegiatan',
                                'detail_spjs.spj_id')
                        ->selectRaw('sum(detail_spjs.satuan*detail_spjs.harga) AS total_spj')   
                        ->whereNotIn('spjs.id', function($q){
                            $q->select('spj_id')->from('pencairans');
                        })    
                        ->groupBy('detail_spjs.spj_id')                                      
                        ->get();
            return DataTables::of($data)
                    ->addIndexColumn()
                    ->editColumn('total_spj', function ($command) {
                        return number_format($command->total_spj, 0, ',', '.');
                    })
                    ->make(true);
        }

        return view('pencairan.create');
    }

    public function store(Request $request)
    {
        $request->validate([
            'spj_id' => 'required|min:1',
            'tgl_pencairan' => 'required|min:5',
            'no_spm' => 'required|min:5',
            'no_sp2d' => 'required|min:5'
        ]);

        Pencairan::create([
            'spj_id'=>$request->spj_id,
            'tgl_pencairan'=>$request->tgl_pencairan,
            'no_spm'=>$request->no_spm,
            'no_sp2d'=>$request->no_sp2d
        ]);

        return redirect('/pencairan')->with('success','Data berhasil ditambahkan.');
    }

    public function edit($id){
        $pencairan = Pencairan::find($id);
        $edit_pencairan = DB::table('spjs')
                    ->join('bagians', 'spjs.bagian_id', '=', 'bagians.id')
                    ->join('sub_kegiatans', 'spjs.sub_kegiatan_id', '=', 'sub_kegiatans.id')
                    ->join('detail_spjs', 'spjs.id', '=', 'detail_spjs.spj_id')
                    ->select('spjs.tanggal_spj',
                            'spjs.uraian',
                            'bagians.nama_bagian',
                            'sub_kegiatans.kode_sub_kegiatan',
                            'sub_kegiatans.nama_sub_kegiatan',
                            'detail_spjs.spj_id')
                    ->where('spjs.id','=',$pencairan->spj_id)
                    ->selectRaw('sum(detail_spjs.satuan*detail_spjs.harga) AS total_spj')   
                    ->groupBy('detail_spjs.spj_id')                                      
                    ->first();


        return view('pencairan.edit',compact(['pencairan','edit_pencairan']));
    }

    public function update(Request $request, $id){

        $request->validate([
            'spj_id' => 'required|min:1',
            'tgl_pencairan' => 'required|min:5',
            'no_spm' => 'required|min:5',
            'no_sp2d' => 'required|min:5'
        ]);

        $pencairan = Pencairan::find($id);

        $pencairan->update([
            'spj_id'=>$request->spj_id,
            'tgl_pencairan'=>$request->tgl_pencairan,
            'no_spm'=>$request->no_spm,
            'no_sp2d'=>$request->no_sp2d
        ]);

        return redirect('/pencairan')->with('success','Data berhasil diubah.');

    }

    public function editUploadSpj($id){
        $pencairan = Pencairan::find($id);
        $edit_pencairan = DB::table('spjs')
                    ->join('bagians', 'spjs.bagian_id', '=', 'bagians.id')
                    ->join('sub_kegiatans', 'spjs.sub_kegiatan_id', '=', 'sub_kegiatans.id')
                    ->join('detail_spjs', 'spjs.id', '=', 'detail_spjs.spj_id')
                    ->select('spjs.tanggal_spj',
                            'spjs.uraian',
                            'bagians.nama_bagian',
                            'sub_kegiatans.kode_sub_kegiatan',
                            'sub_kegiatans.nama_sub_kegiatan',
                            'detail_spjs.spj_id')
                    ->where('spjs.id','=',$pencairan->spj_id)
                    ->selectRaw('sum(detail_spjs.satuan*detail_spjs.harga) AS total_spj')   
                    ->groupBy('detail_spjs.spj_id')                                      
                    ->first();


        return view('pencairan.upload_spj',compact(['pencairan','edit_pencairan']));
    }

    public function updateUploadSpj(Request $request, $id){

        if($request->hasFile('file')){
            
            $uploadPath = "uploads/spj/";
    
            $file = $request->file('file');
    
            $extention = $file->getClientOriginalExtension();
            $filename = time().'-'.rand(0,99).'.'.$extention;
            $file->move($uploadPath, $filename);
    
            $finalImageName = $uploadPath.$filename;

            $pencairan = Pencairan::find($id);

            $file =public_path($pencairan->files);
            File::delete($file);    

            $pencairan->update([
                'files'=>$finalImageName
            ]);
    
            return response()->json(['success' => 'Spj Uploaded Successfully']);
        }
        else
        {
            return response()->json(['error' => 'File upload failed.']);
        }        
        return redirect('/pencairan')->with('success','Data berhasil dihapus.');
    }

    public function destroy($id) {
        $pencairan = Pencairan::find($id);
        $file =public_path($pencairan->files);
        File::delete($file);    
        $pencairan->delete();
        return redirect('/pencairan')->with('success','Data berhasil dihapus.');
    }
}
