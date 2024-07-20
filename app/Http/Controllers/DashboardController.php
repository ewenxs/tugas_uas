<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Yajra\DataTables\Facades\DataTables;

class DashboardController extends Controller
{
    public function index (Request $request){
        if ($request->ajax()) {
                $data = DB::table('spjs')
                            ->join('bagians', 'spjs.bagian_id', '=', 'bagians.id')
                            ->join('kegiatans', 'spjs.kegiatan_id', '=', 'kegiatans.id')
                            ->join('sub_kegiatans', 'spjs.sub_kegiatan_id', '=', 'sub_kegiatans.id')
                            ->join('detail_spjs', 'spjs.id', '=', 'detail_spjs.spj_id')
                            ->leftjoin('pencairans', 'spjs.id', '=', 'pencairans.spj_id')
                            ->select('spjs.tanggal_spj',
                                    'spjs.uraian',
                                    'bagians.nama_bagian',
                                    'kegiatans.kode_kegiatan',
                                    'sub_kegiatans.kode_sub_kegiatan',
                                    'detail_spjs.spj_id',
                                    'pencairans.files',
                                    'pencairans.tgl_pencairan',
                                    'pencairans.no_sp2d',)
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
                                $date = date("d-m-Y", strtotime($row->tanggal_spj));
                                        return $date;
                                // Change the format as needed
                            })
                        ->addColumn('Status', function ($row) {
                                $datepencairan = date("d-m-Y", strtotime($row->tgl_pencairan));
                                    // Format the created_at column using MySQL date_format
                                $status = !empty($row->no_sp2d) ? 
                                              '<small><i class="bx bxs-check-circle bx-sm text-primary me-3"></i>sudah dicairkan</small>
                                              <br>
                                              <small><i class="bx bxs-calendar bx-sm text-primary me-3"></i>'.$datepencairan.'</small>' 
                                              : '<small><i class="bx bxs-info-circle bx-sm text-danger me-3"></i>belum dicairkan</small>';
                                            return $status;
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
                        ->rawColumns(['BagianKodeKeg','Status','Download'])
                        ->editColumn('total_spj', function ($command) {
                            return number_format($command->total_spj, 0, ',', '.');
                        })
                        ->make(true);
            }
                  

// total DPA tiap seksi    
$tot_dpa_pem = DB::table('detail_dpas')
        ->join('dpas', 'dpas.id', '=', 'detail_dpas.dpa_id')
        ->selectRaw('sum(volume*harga) as pem')
        ->where('dpas.bagian_id', '=', 4)
        ->first();

$tot_dpa_pel = DB::table('detail_dpas')
        ->join('dpas', 'dpas.id', '=', 'detail_dpas.dpa_id')
        ->selectRaw('sum(volume*harga) as pel')
        ->where('dpas.bagian_id', '=', 5)
        ->first();
        
$tot_dpa_trtb = DB::table('detail_dpas')
        ->join('dpas', 'dpas.id', '=', 'detail_dpas.dpa_id')
        ->selectRaw('sum(volume*harga) as trtb')
        ->where('dpas.bagian_id', '=', 6)
        ->first();
        
$tot_dpa_pems = DB::table('detail_dpas')
        ->join('dpas', 'dpas.id', '=', 'detail_dpas.dpa_id')
        ->selectRaw('sum(volume*harga) as pems')
        ->where('dpas.bagian_id', '=', 8)
        ->first();
        
$tot_dpa_keu = DB::table('detail_dpas')
        ->join('dpas', 'dpas.id', '=', 'detail_dpas.dpa_id')
        ->selectRaw('sum(volume*harga) as keu')
        ->where('dpas.bagian_id', '=', 9)
        ->first();
        
$tot_dpa_tu = DB::table('detail_dpas')
        ->join('dpas', 'dpas.id', '=', 'detail_dpas.dpa_id')
        ->selectRaw('sum(volume*harga) as tu')
        ->where('dpas.bagian_id', '=', 10)
        ->first();

//total SPJ total
$tot_spj_pem = DB::table('detail_spjs')
        ->join('spjs', 'spjs.id', '=', 'detail_spjs.spj_id')
        ->selectRaw('sum(satuan*harga) as pem')
        ->where('spjs.bagian_id', '=', 4)
        ->first();

$tot_spj_pem_cair = DB::table('detail_spjs')
                ->join('spjs', 'spjs.id', '=', 'detail_spjs.spj_id')
                ->selectRaw('sum(satuan*harga) as pemcair')
                ->where('spjs.bagian_id', '=', 4)
                ->whereIn('spjs.id', function($q){
                        $q->select('spj_id')->from('pencairans');
                        })
                ->first();

$tot_spj_pel = DB::table('detail_spjs')
        ->join('spjs', 'spjs.id', '=', 'detail_spjs.spj_id')
        ->selectRaw('sum(satuan*harga) as pel')
        ->where('spjs.bagian_id', '=', 5)
        ->first();

$tot_spj_pel_cair = DB::table('detail_spjs')
                ->join('spjs', 'spjs.id', '=', 'detail_spjs.spj_id')
                ->selectRaw('sum(satuan*harga) as pelcair')
                ->where('spjs.bagian_id', '=', 5)
                ->whereIn('spjs.id', function($q){
                        $q->select('spj_id')->from('pencairans');
                        })
                ->first();
        
$tot_spj_trtb = DB::table('detail_spjs')
        ->join('spjs', 'spjs.id', '=', 'detail_spjs.spj_id')
        ->selectRaw('sum(satuan*harga) as trtb')
        ->where('spjs.bagian_id', '=', 6)
        ->first();

$tot_spj_trtb_cair = DB::table('detail_spjs')
                ->join('spjs', 'spjs.id', '=', 'detail_spjs.spj_id')
                ->selectRaw('sum(satuan*harga) as trtbcair')
                ->where('spjs.bagian_id', '=', 6)
                ->whereIn('spjs.id', function($q){
                        $q->select('spj_id')->from('pencairans');
                        })
                ->first();
        
$tot_spj_pems = DB::table('detail_spjs')
        ->join('spjs', 'spjs.id', '=', 'detail_spjs.spj_id')
        ->selectRaw('sum(satuan*harga) as pems')
        ->where('spjs.bagian_id', '=', 8)
        ->first();
        
$tot_spj_pems_cair = DB::table('detail_spjs')
                ->join('spjs', 'spjs.id', '=', 'detail_spjs.spj_id')
                ->selectRaw('sum(satuan*harga) as pemscair')
                ->where('spjs.bagian_id', '=', 8)
                ->whereIn('spjs.id', function($q){
                        $q->select('spj_id')->from('pencairans');
                        })
                ->first();
        
$tot_spj_keu = DB::table('detail_spjs')
        ->join('spjs', 'spjs.id', '=', 'detail_spjs.spj_id')
        ->selectRaw('sum(satuan*harga) as keu')
        ->where('spjs.bagian_id', '=', 9)
        ->first();
        
$tot_spj_keu_cair = DB::table('detail_spjs')
                ->join('spjs', 'spjs.id', '=', 'detail_spjs.spj_id')
                ->selectRaw('sum(satuan*harga) as keucair')
                ->where('spjs.bagian_id', '=', 9)
                ->whereIn('spjs.id', function($q){
                        $q->select('spj_id')->from('pencairans');
                        })
                ->first();
        
$tot_spj_tu = DB::table('detail_spjs')
        ->join('spjs', 'spjs.id', '=', 'detail_spjs.spj_id')
        ->selectRaw('sum(satuan*harga) as tu')
        ->where('spjs.bagian_id', '=', 10)
        ->first();    
        
$tot_spj_tu_cair = DB::table('detail_spjs')
                ->join('spjs', 'spjs.id', '=', 'detail_spjs.spj_id')
                ->selectRaw('sum(satuan*harga) as tucair')
                ->where('spjs.bagian_id', '=', 10)
                ->whereIn('spjs.id', function($q){
                        $q->select('spj_id')->from('pencairans');
                        })
                ->first();    

$user = Auth::user();

return view('dashboard.index',compact([
        'tot_dpa_pem', 
        'tot_dpa_pel',  
        'tot_dpa_trtb',  
        'tot_dpa_pems',  
        'tot_dpa_keu',  
        'tot_dpa_tu',                             
        'tot_spj_pem',
        'tot_spj_pem_cair', 
        'tot_spj_pel',  
        'tot_spj_pel_cair',  
        'tot_spj_trtb',  
        'tot_spj_trtb_cair',  
        'tot_spj_pems',  
        'tot_spj_pems_cair',  
        'tot_spj_keu',  
        'tot_spj_keu_cair',  
        'tot_spj_tu',    
        'tot_spj_tu_cair']));      
    }
}
