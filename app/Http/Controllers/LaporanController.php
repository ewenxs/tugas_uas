<?php

namespace App\Http\Controllers;

use Barryvdh\DomPDF\Facade\Pdf;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class LaporanController extends Controller
{
    public function laporanDpa()
    {
        return view('laporan.laporan_dpa');
    }    

    public function laporanPdfDpa(Request $request)
    {

    $header_pdf_dpa = DB::table('dpas')
                    ->join('penjabarans', 'dpas.penjabaran_id', '=', 'penjabarans.id')
                    ->join('kegiatans', 'dpas.kegiatan_id', '=', 'kegiatans.id')
                    ->join('sub_kegiatans', 'dpas.sub_kegiatan_id', '=', 'sub_kegiatans.id')
                    ->join('detail_dpas', 'dpas.id', '=', 'detail_dpas.dpa_id')
                    ->select('penjabarans.nomor_dpa',
                             'kegiatans.kode_kegiatan',
                             'kegiatans.nama_kegiatan',
                             'sub_kegiatans.kode_sub_kegiatan',
                             'sub_kegiatans.nama_sub_kegiatan',
                             'sub_kegiatans.sumber_dana', 
                             'detail_dpas.dpa_id as dpa_id', 
                             'detail_dpas.id as detail_dpa_id'
                       )
                          ->where('sub_kegiatans.id', '=', $request->sub_kegiatan_id)      
                          ->first();

        $sum_pdf_dpa = DB::table('dpas')
                          ->join('detail_dpas', 'dpas.id', '=', 'detail_dpas.dpa_id')
                          ->selectRaw('SUM(detail_dpas.volume*detail_dpas.harga) as totaldpa')
                          ->where('dpas.penjabaran_id', '=', $request->penjabaran_id)
                          ->where('dpas.sub_kegiatan_id', '=', $request->sub_kegiatan_id)
                          ->first();                          

                          $detail_dpa = DB::table('dpas')
                          ->join('rekenings', 'rekenings.id', '=', 'dpas.rekening_id')
                          ->join('programs', 'programs.id', '=', 'dpas.program_id')
                          ->join('detail_dpas', 'dpas.id', '=', 'detail_dpas.dpa_id')
                          ->select('rekenings.no_rekening as no_rekening',
                                   'programs.nama_program as nama_program',
                                   'detail_dpas.nama_barang as nama_barang',
                                   'detail_dpas.volume as volume',
                                   'detail_dpas.satuan as satuan', 
                                   'detail_dpas.harga as harga',
                                   'detail_dpas.dpa_id as dpa_id',
                                   'detail_dpas.id as detail_dpa_id'
                             )
                             ->selectSub(
                                 DB::table('detail_dpas')
                                     ->selectRaw('SUM(volume*harga)')
                                     ->whereColumn('detail_dpas.dpa_id', 'dpa_id')
                                     ->whereColumn('detail_dpas.id', 'detail_dpa_id'),
                                 'totaldpa',
                             )
                             ->where('dpas.penjabaran_id', '=', $request->penjabaran_id)
                             ->where('dpas.sub_kegiatan_id', '=', $request->sub_kegiatan_id)
                             ->orderBy('rekenings.no_rekening','ASC')
                             ->orderBy('programs.nama_program','ASC')
                             ->get();

    	$pdf = Pdf::loadview('laporan/dpa_pdf',['header_pdf_dpa' => $header_pdf_dpa, 'sum_pdf_dpa' => $sum_pdf_dpa, 'detail_dpa' => $detail_dpa])->setPaper(array(0,0,609.4488,935.433), 'landscape');
    	
        return $pdf->stream('laporan-dpa-'.$header_pdf_dpa->kode_sub_kegiatan.'.pdf', array("Attachment" => 0));
    }   
    
    public function laporanSpj()
    {
        return view('laporan.laporan_spj');
    }    

    public function laporanPdfSpj(Request $request)
    {
            $tr_spj = DB::table('dpas')
                          ->join('kegiatans', 'dpas.kegiatan_id', '=', 'kegiatans.id')
                          ->join('sub_kegiatans', 'dpas.sub_kegiatan_id', '=', 'sub_kegiatans.id')
                          ->join('detail_dpas', 'dpas.id', '=', 'detail_dpas.dpa_id')
                          ->join('rekenings', 'rekenings.id', '=', 'dpas.rekening_id')
                          ->join('programs', 'programs.id', '=', 'dpas.program_id')
                          ->select('kegiatans.kode_kegiatan as kode_kegiatan',
                                   'sub_kegiatans.kode_sub_kegiatan as kode_sub_kegiatan',
                                   'rekenings.no_rekening as no_rekening',
                                   'programs.nama_program as nama_program',
                                   'detail_dpas.nama_barang as nama_barang',
                                   'detail_dpas.id as detail_dpa_id',
                                   'dpas.rekening_id as rekening_id',
                                   'dpas.program_id as program_id',
                                   'dpas.id as dpa_id'
                                )
                             ->selectSub(
                                 DB::table('detail_spjs')
                                     ->selectRaw('SUM(satuan*harga)')
                                     ->whereColumn('detail_spjs.rekening_id', 'dpas.rekening_id')
                                     ->whereColumn('detail_spjs.program_id', 'dpas.program_id')
                                     ->whereColumn('detail_spjs.detail_dpa_id', 'detail_dpas.id'),
                                 'nominal',
                             )
                             ->selectSub(
                                DB::table('detail_dpas')
                                    ->selectRaw('SUM(volume*harga)')
                                    ->whereColumn('detail_dpas.id', 'detail_dpa_id')
                                    ->whereColumn('detail_dpas.dpa_id', 'dpa_id'),
                                'anggaran',
                            )
                             ->where('dpas.sub_kegiatan_id','=', 21)
                             ->orderBy('rekenings.no_rekening','ASC')
                             ->orderBy('programs.nama_program','ASC')
                             ->get();

    $pdf = Pdf::loadview('laporan/spj_pdf',['tr_spj' => $tr_spj])->setPaper(array(0,0,609.4488,935.433), 'landscape');
    	
    return $pdf->stream('laporan-spj.pdf', array("Attachment" => 0));
                                //return view('laporan.spj_pdf',compact(['tr_spj']));

    }     
}

