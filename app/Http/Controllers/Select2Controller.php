<?php

namespace App\Http\Controllers;

use App\Models\Bagian;
use App\Models\Kegiatan;
use App\Models\Rekening;
use App\Models\Sub_kegiatan;
use Illuminate\Http\Request;

class Select2Controller extends Controller
{
    public function pilihKeg(Request $request)
    {
    	$data = [];
        $data = Kegiatan::where('kode_kegiatan', 'LIKE', '%'.request('q').'%')
                          ->orWhere('nama_kegiatan', 'LIKE', '%'.request('q').'%')
                          ->get();
        return response()->json($data);
    } 

    public function pilihSubkeg($id)
    {
                          $data = Sub_kegiatan::where('kegiatan_id', $id)->where(function($query) {
                            $query->where('kode_sub_kegiatan', 'LIKE', '%'.request('q').'%')
                                ->orWhere('nama_sub_kegiatan', 'LIKE', '%'.request('q').'%');
                        })->paginate(15);
    return response()->json($data);
    }

    public function daftarRek()
    {
    	$data = [];
         $data = Rekening::where('no_rekening', 'LIKE', '%'.request('q').'%')
                          ->orWhere('nama_rekening', 'LIKE', '%'.request('q').'%')
                          ->get();
        return response()->json($data);
    }   
    
    public function pilihBag(Request $request)
    {
    	$data = [];
        $data = Bagian::where('nama_bagian', 'LIKE', '%'.request('q').'%')
                          ->get();
        return response()->json($data);
    }    

    public function pilihRek(Request $request)
    {
    	$data = [];
        $data = Rekening::where('no_rekening', 'LIKE', '%'.request('q').'%')
                          ->orWhere('nama_rekening', 'LIKE', '%'.request('q').'%')
                          ->get();
        return response()->json($data);
    }    
}
