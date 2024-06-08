<?php

namespace App\Http\Controllers;

use App\Models\Bagian;
use App\Models\Dpa;
use App\Models\Kegiatan;
use App\Models\Penjabaran;
use App\Models\Program;
use App\Models\Rekening;
use App\Models\Sub_kegiatan;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

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

    public function pilihProg(Request $request)
    {
    	$data = [];
        $data = Program::where('nama_program', 'LIKE', '%'.request('q').'%')
                          ->get();
        return response()->json($data);
    }     

    public function pilihBagSpj(Request $request)
    {
    	$data = [];
        $data = Bagian::where('nama_bagian', 'LIKE', '%'.request('q').'%')
                          ->get();
        return response()->json($data);
    } 
    
    public function pilihKegSpj($id)
    {
        $data = Kegiatan::where('bagian_id', $id)->where(function($query) {
                    $query->where('bagian_id', 'LIKE', request('q'));
                    })->paginate(15);

        return response()->json($data);
    } 

    public function pilihSubkegSpj($id)
    {
        $data = Sub_kegiatan::where('kegiatan_id', $id)->where(function($query) {
                    $query->where('kegiatan_id', 'LIKE', request('q'));
                    })->paginate(15);

        return response()->json($data);
    }    
    
    public function tampilListRek(Request $request)
    {
        if($request->ajax())
        {
            $output = '';
            $query = $request->get('query');
            if($query != '') {
                $data = DB::table('dpas')
                    ->join('detail_dpas', 'dpas.id', '=', 'detail_dpas.dpa_id')
                    ->join('rekenings', 'rekenings.id', '=', 'dpas.rekening_id')
                    ->join('programs', 'programs.id', '=', 'dpas.program_id') 
                    ->where('dpas.sub_kegiatan_id', '=', $query)   
                    ->select('rekenings.no_rekening as no_rekening',
                             'rekenings.id as rekening_id',
                             'programs.nama_program as nama_program',
                             'programs.id as program_id',
                             'detail_dpas.nama_barang as nama_barang',
                             'detail_dpas.volume as volume',
                             'detail_dpas.satuan as satuan', 
                             'detail_dpas.harga as harga',
                             'detail_dpas.dpa_id as dpa_id',
                             'detail_dpas.id as detail_dpa_id')
                    ->orderBy('rekenings.no_rekening')
                    ->get();
            } else {
                $data = DB::table('dpas')
                ->join('detail_dpas', 'dpas.id', '=', 'detail_dpas.dpa_id')
                ->join('rekenings', 'rekenings.id', '=', 'dpas.rekening_id')
                ->join('programs', 'programs.id', '=', 'dpas.program_id')   
                ->select('rekenings.no_rekening as no_rekening',
                         'rekenings.id as rekening_id',
                         'programs.nama_program as nama_program',
                         'programs.id as program_id',
                         'detail_dpas.nama_barang as nama_barang',
                         'detail_dpas.volume as volume',
                         'detail_dpas.satuan as satuan', 
                         'detail_dpas.harga as harga',
                         'detail_dpas.dpa_id as dpa_id',
                         'detail_dpas.id as detail_dpa_id')
                         ->orderBy('rekenings.no_rekening')
                ->get();
            }
             
            $total_row = $data->count();
            if($total_row > 0){
                foreach($data as $row)
                {
                    $SisaAnggaran = $row->harga * $row->volume;
                    
                    $output .= '
                    <tr>
                    <td style="width: 5%">
                    <input type="hidden" name="dpa_id[]" id="dpa_id" value="'.$row->dpa_id.'"/>
                    <input type="hidden" name="detail_dpa_id[]" id="detail_dpa_id" value="'.$row->detail_dpa_id.'"/>  
                    <input type="hidden" name="rekening_id[]" id="rekening_id" value="'.$row->rekening_id.'"/>
                    <input type="hidden" name="program_id[]" id="program_id" value="'.$row->program_id.'"/>                    
                    <p><small class="text-muted text-wrap">Kode Rekening : '.$row->no_rekening.' '.$row->nama_program.'</small></p>
                    <p><small class="text-muted text-wrap">Harga Satuan : Rp.&nbsp; '.number_format($row->harga, 0).'</small></p>
                    <p><small class="text-muted text-wrap">Qty : '.number_format($row->volume,2,",",".").'</small></p>
                    </td>
                    <td style="width: 5%">
                    <p><small class="text-muted text-wrap">'.$row->nama_barang.'</small></p>
                    </td>
                    <td style="width: 30%">
                    <textarea class="form-control catatan" id="catatan" rows="2" name="catatan[]" placeholder="Catatan (optional)"></textarea>
                    </td>
                    <td style="width: 10%">
                    <input type="text" name="satuanspj[]" class="form-control satuanspj" onchange="Calculated(this);" id="satuanspj" value="0" />
                    </td>
                    <td style="width: 25%">
                    <input type="text" name="hargaspj[]" class="money form-control hargaspj" onchange="Calculated(this);" value="0" id="hargaspj"/>
                    </td>
                    <td style="width: 25%">
                    <input type="text" name="jumlahspj[]" class="form-control jumlahspj" id="jumlahspj" value="0" onchange="Calculated(this);" placeholder="Jumlah" />
                    </td>
                    <td style="width: 10%">
                    <input type="hidden" name="sisa_anggaran_hidden[]" class="form-control" onchange="Calculated(this);" value="'.round($SisaAnggaran).'" id="sisa_anggaran"/>
                    <input type="text" name="sisa_anggaran[]" class="form-control text-muted text-wrap sisa_anggaran" onchange="Calculated(this);" value="Rp. '.number_format(round($SisaAnggaran),0).'" id="sisa_anggaran" style="font-size:12px;" disabled/>
                    </td>
                    </tr>
                    ';
                }
            } else {
                $output = '
                <tr>
                    <td align="center" colspan="5">No Data Found</td>
                </tr>
                ';
            }
            $data = array(
                'table_data'  => $output
            );
            echo json_encode($data);
        }

    }   
   
    public function pilihPenjabaran(Request $request)
    {
    	$data = [];
        $data = Penjabaran::where('nomor_dpa', 'LIKE', '%'.request('q').'%')
                          ->get();
        return response()->json($data);
    }  
}
