<?php

use App\Http\Controllers\BagianController;
use App\Http\Controllers\DashboardController;
use App\Http\Controllers\DpaController;
use App\Http\Controllers\PenjabaranController;
use App\Http\Controllers\Group_rekeningController;
use App\Http\Controllers\KegiatanController;
use App\Http\Controllers\LaporanController;
use App\Http\Controllers\ProgramController;
use App\Http\Controllers\RekeningController;
use App\Http\Controllers\Select2Controller;
use App\Http\Controllers\SpjController;
use App\Http\Controllers\Sub_kegiatanController;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Route::middleware(['auth'])->group(function () {
    Route::get('/dashboard',[DashboardController::class,'index']);

    Route::get('bagian',[BagianController::class,'index'])->name('bagian.index');
//  Route::get('/bagian',[\App\Http\Controllers\BagianController::class,'index']);
    Route::post('/bagian',[BagianController::class,'store']);
    Route::get('/bagian/create',[BagianController::class,'create']);
    Route::get('/bagian/{id}/edit/',[BagianController::class,'edit']);
    Route::put('/bagian/{id}',[BagianController::class,'update']);
    Route::delete('/bagian/{id}',[BagianController::class,'destroy']);  

    Route::get('rekening',[RekeningController::class,'index'])->name('rekening.index');
//  Route::get('/rekening',[\App\Http\Controllers\RekeningController::class,'index']);
    Route::post('/rekening',[RekeningController::class,'store']);
    Route::get('/rekening/create',[RekeningController::class,'create']);
    Route::get('/rekening/{id}/edit/',[RekeningController::class,'edit']);
    Route::put('/rekening/{id}',[RekeningController::class,'update']);
    Route::delete('/rekening/{id}',[RekeningController::class,'destroy']);
    
    
    Route::get('kegiatan',[KegiatanController::class,'index'])->name('kegiatan.index');
//  Route::get('/kegiatan',[\App\Http\Controllers\KegiatanController::class,'index']);
    Route::post('/kegiatan',[KegiatanController::class,'store']);
    Route::get('/kegiatan/create',[KegiatanController::class,'create']);
    Route::get('/kegiatan/{id}/edit/',[KegiatanController::class,'edit']);
    Route::put('/kegiatan/{id}',[KegiatanController::class,'update']);
    Route::delete('/kegiatan/{id}',[KegiatanController::class,'destroy']); 
    Route::get('/kegiatan/cetak-pdf',[KegiatanController::class,'cetak_pdf']); 
    
    Route::get('sub_kegiatan',[Sub_kegiatanController::class,'index'])->name('sub_kegiatan.index');
//  Route::get('/sub_kegiatan',[\App\Http\Controllers\Sub_kegiatanController::class,'index']);
    Route::post('/sub_kegiatan',[Sub_kegiatanController::class,'store']);
    Route::get('/sub_kegiatan/create',[Sub_kegiatanController::class,'create']);
    Route::get('/sub_kegiatan/{id}/edit/',[Sub_kegiatanController::class,'edit']);
    Route::put('/sub_kegiatan/{id}',[Sub_kegiatanController::class,'update']);
    Route::delete('/sub_kegiatan/{id}',[Sub_kegiatanController::class,'destroy']); 
    Route::get('/search', [Sub_kegiatanController::class, 'index']);

    Route::get('group_rekening',[Group_rekeningController::class,'index'])->name('group_rekening.index');
    Route::post('/group_rekening',[Group_rekeningController::class,'store']);
    Route::get('/group_rekening/create',[Group_rekeningController::class,'create']);
    Route::get('/group_rekening/{id}/edit/',[Group_rekeningController::class,'edit']);
    Route::put('/group_rekening/{id}',[Group_rekeningController::class,'update']);
    Route::delete('/group_rekening/{id}',[Group_rekeningController::class,'destroy']);
    //Route::get('show/{id}', [Group_rekeningController::class, 'show'])->name('group_rekening.show');

    Route::get('program',[ProgramController::class,'index'])->name('program.index');
    Route::post('/program',[ProgramController::class,'store']);
    Route::get('/program/create',[ProgramController::class,'create']);
    Route::get('/program/{id}/edit/',[ProgramController::class,'edit']);
    Route::put('/program/{id}',[ProgramController::class,'update']);
    Route::delete('/program/{id}',[ProgramController::class,'destroy']);     
    
    Route::get('penjabaran',[PenjabaranController::class,'index'])->name('penjabaran.index');
    Route::post('/penjabaran',[PenjabaranController::class,'store']);
    Route::get('/penjabaran/create',[PenjabaranController::class,'create']);
    Route::get('/penjabaran/{id}/edit/',[PenjabaranController::class,'edit']);
    Route::put('/penjabaran/{id}',[PenjabaranController::class,'update']);
    Route::delete('/penjabaran/{id}',[PenjabaranController::class,'destroy']);     

    Route::get('dpa',[DpaController::class,'index'])->name('dpa.index');
    Route::post('/dpa',[DpaController::class,'store']);
    Route::get('/dpa/create',[DpaController::class,'create']);
    Route::get('/dpa/{id}/edit/',[DpaController::class,'edit']);
    Route::put('/dpa/{id}',[DpaController::class,'update']);
    Route::delete('/dpa/{id}',[DpaController::class,'destroy']);      

    Route::get('spj',[SpjController::class,'index'])->name('spj.index');
    Route::post('/spj',[SpjController::class,'store']);
    Route::get('/spj/create',[SpjController::class,'create']);
    Route::get('/spj/{id}/edit/',[SpjController::class,'edit']);
    Route::put('/spj/{id}',[SpjController::class,'update']);
    Route::delete('/spj/{id}',[SpjController::class,'destroy']); 

    Route::get('/select2/pilih_keg', [Select2Controller::class, 'pilihKeg']);
    Route::get('/select2/pilih_Subkeg/{id}', [Select2Controller::class, 'pilihSubkeg']);
    Route::get('/select2/daftar_rek',[Select2Controller::class,'daftarRek']);
    Route::get('/select2/pilih_bag', [Select2Controller::class, 'pilihBag']);
    Route::get('/select2/pilih_rek', [Select2Controller::class, 'pilihRek']);
    Route::get('/select2/pilih_prog', [Select2Controller::class, 'pilihProg']);
    Route::get('/select2/pilih_penjabaran', [Select2Controller::class, 'pilihPenjabaran']);

    Route::get('/select2/pilih_bag_spj', [Select2Controller::class, 'pilihBagSpj']);
    Route::get('/select2/pilih_keg_spj/{id}', [Select2Controller::class, 'pilihKegSpj']);
    Route::get('/select2/pilih_SubkegSpj/{id}', [Select2Controller::class, 'pilihSubkegSpj']);
    Route::get('/select2/tampil_list_rek', [Select2Controller::class, 'tampilListRek']);
    //Route::get('/select2/tampil_list_rek_edit', [Select2Controller::class, 'tampilListRekEdit']);

    Route::get('/laporan/cetak_dpa',[LaporanController::class,'laporanDpa']);
    Route::get('/laporan/cetak_spj',[LaporanController::class,'laporanSpj']);
    Route::post('/laporan/cetak_pdf_dpa',[LaporanController::class,'laporanPdfDpa']);
    Route::post('/laporan/cetak_pdf_spj',[LaporanController::class,'laporanPdfSpj']);

});


Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
