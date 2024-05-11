@extends('layouts.master')

@section('content')
<div class="card">
      <div class="card-header pb-0">
          <h5>Tambah DPA</h5>
      </div>
    <div class="table-responsive text-nowrap">
      <div class="card-body">
          @if($errors->any())
          <div class="alert alert-danger">
            <ul>
              @foreach($errors->all() as $error)
              <li>{{ $error }}</li>
              @endforeach
            </ul>    
          </div>
          @endif
          <form action="/dpa" method="POST">
            @csrf
            <div class="mb-3">
                <label class="form-label" for="basic-default-fullname">Penjabaran</label>
                <input name="nomor_dpa" type="text" class="form-control" id="basic-default-fullname" value="{{ $penjabaran->nomor_dpa }}" disabled>
            </div>            
            <div class="mb-3">
              <label for="exampleFormControlSelect1" class="form-label">Nama Bagian</label>
              <select name ="bagian_id" class="livesearch_bagian form-select" aria-label="Default select example">  
              </select>
            </div>
            <div class="mb-3">
              <label for="exampleFormControlSelect1" class="form-label">Nama kegiatan</label>
              <select name ="kegiatan_id" class="livesearch_kegiatan form-select" id="kegiatan_dropdown" aria-label="Default select example">  
              </select>
            </div> 
            <div class="mb-3">
              <label for="exampleFormControlSelect1" class="form-label">Nama Sub kegiatan</label>
              <select name ="sub_kegiatan_id" class="livesearch_sub_kegiatan form-select" id="sub_kegiatan_dropdown" aria-label="Default select example">  
              </select>
            </div> 
            <div class="mb-3">
              <label for="exampleFormControlSelect1" class="form-label">Nama Rekening</label>
              <select name ="rekening_id" class="livesearch_pilih_rekening form-select" id="rekening_dropdown" aria-label="Default select example">  
              </select>
            </div> 
            <button type="submit" class="btn btn-primary">Simpan</button>
            <a href="{{ url()->previous() }}" class="btn btn-warning"><i class="fa fa-angle-left"></i> Kembali</a>
          </form>
      </div>
    </div>
</div>
@endsection