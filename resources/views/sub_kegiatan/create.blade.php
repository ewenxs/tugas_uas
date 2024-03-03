@extends('layouts.master')

@section('content')
<div class="card">
      <div class="card-header pb-0">
          <h5>Tambah Sub Kegiatan</h5>
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
          <form action="/sub_kegiatan" method="POST">
            @csrf
            <div class="mb-3">
              <label class="form-label" for="basic-default-fullname">Kode Sub Kegiatan</label>
              <input name="kode_sub_kegiatan" type="text" class="form-control" id="basic-default-fullname" placeholder="Kode Kegiatan">
            </div>
            <div class="mb-3">
                <label class="form-label" for="basic-default-fullname">Nama Sub Kegiatan</label>
                <input name="nama_sub_kegiatan" type="text" class="form-control" id="basic-default-fullname" placeholder="Nama Kegiatan">
            </div>
            <div class="mb-3">
              <label for="exampleFormControlSelect1" class="form-label">Nama kegiatan</label>
              <select name ="kegiatan_id" class="livesearch_kegiatan form-select" aria-label="Default select example">  
              </select>
            </div> 
            <button type="submit" class="btn btn-primary">Simpan</button>
            <a href="{{ url()->previous() }}" class="btn btn-warning"><i class="fa fa-angle-left"></i> Kembali</a>
          </form>
      </div>
    </div>
</div>


@endsection