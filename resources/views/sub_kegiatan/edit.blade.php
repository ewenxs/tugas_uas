@extends('layouts.master')

@section('content')
<div class="card">
  <div class="card-header pb-0">
    <h5>EDIT SUB KEGIATAN</h5>
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
      <form action="/sub_kegiatan/{{ $sub_kegiatan->id }}" method="POST">
        @method('put')
        @csrf
        <div class="mb-3">
          <label class="form-label" for="basic-default-fullname">Kode Sub Kegiatan</label>
          <input name="kode_sub_kegiatan" type="text" class="form-control" id="basic-default-fullname"
            value="{{ $sub_kegiatan->kode_sub_kegiatan }}">
        </div>
        <div class="mb-3">
          <label class="form-label" for="basic-default-fullname">Nama Sub Kegiatan</label>
          <input name="nama_sub_kegiatan" type="text" class="form-control" id="basic-default-fullname"
            value="{{ $sub_kegiatan->nama_sub_kegiatan }}">
        </div>
        <div class="mb-3">
          <label for="exampleFormControlSelect1" class="form-label">Nama kegiatan</label>
          <select class="livesearch_kegiatan form-select  @error('kegiatans') is-invalid @enderror" name="kegiatan_id">
            @foreach($kegiatans as $kegiatan)
            <option value="{{$kegiatan->kegiatan_id}}" @if($kegiatan->kegiatan_id === $sub_kegiatan->kegiatan_id)
              selected="selected" @endif>{{$kegiatan->kode_kegiatan}} | {{$kegiatan->nama_kegiatan}}</option>
            @endforeach
          </select>
        </div>
        <div class="mb-3">
          <label class="form-label" for="basic-default-fullname">Sumber Dana</label>
          <input name="sumber_dana" type="text" class="form-control" id="basic-default-fullname"
            value="{{ $sub_kegiatan->sumber_dana }}">
        </div>
        <button type="submit" class="btn btn-primary">Simpan</button>
        <a href="{{ url()->previous() }}" class="btn btn-warning"><i class="fa fa-angle-left"></i> Kembali</a>
      </form>
    </div>
  </div>
</div>
@endsection