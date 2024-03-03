<?php

use App\Http\Controllers\BagianController;
use App\Http\Controllers\DashboardController;
use App\Http\Controllers\Group_rekeningController;
use App\Http\Controllers\KegiatanController;
use App\Http\Controllers\RekeningController;
use App\Http\Controllers\Sub_kegiatanController;
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
    
    Route::get('sub_kegiatan',[Sub_kegiatanController::class,'index'])->name('sub_kegiatan.index');
//  Route::get('/sub_kegiatan',[\App\Http\Controllers\Sub_kegiatanController::class,'index']);
    Route::post('/sub_kegiatan',[Sub_kegiatanController::class,'store']);
    Route::get('/sub_kegiatan/create',[Sub_kegiatanController::class,'create']);
    Route::get('/sub_kegiatan/{id}/edit/',[Sub_kegiatanController::class,'edit']);
    Route::put('/sub_kegiatan/{id}',[Sub_kegiatanController::class,'update']);
    Route::delete('/sub_kegiatan/{id}',[Sub_kegiatanController::class,'destroy']); 
    Route::get('/search', [Sub_kegiatanController::class, 'index']);
    Route::get('/sub_kegiatan/pilih_keg', [Sub_kegiatanController::class, 'pilihKeg']);

    Route::get('group_rekening',[Group_rekeningController::class,'index'])->name('group_rekening.index');
    Route::post('/group_rekening',[Group_rekeningController::class,'store']);
    Route::get('/group_rekening/create',[Group_rekeningController::class,'create']);
    Route::get('/group_rekening/{id}/edit/',[Group_rekeningController::class,'edit']);
    Route::put('/group_rekening/{id}',[Group_rekeningController::class,'update']);
    Route::delete('/group_rekening/{id}',[Group_rekeningController::class,'destroy']);
    Route::get('daftar_rek',[Group_rekeningController::class,'daftarRek']);

    Route::get('pilih_Subkeg/{id}', [Group_rekeningController::class, 'pilihSubkeg']);
    Route::get('show/{id}', [Group_rekeningController::class, 'show'])->name('group_rekening.show');

});


Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
