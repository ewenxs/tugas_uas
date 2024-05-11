@extends('layouts.master')

@section('content')
<div class="card">
      <div class="card-header pb-0">
          <h5>Edit Kegiatan</h5>
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
          <form action="/kegiatan/{{ $kegiatan->id }}" method="POST">
            @method('put')
            @csrf
            <div class="mb-3">
              <label for="exampleFormControlSelect1" class="form-label">Nama bagian</label>
              <select class="livesearch_bagian form-select  @error('bagians') is-invalid @enderror"  name="bagian_id">
                @foreach($bagians as $bagian)
                    <option value="{{$bagian->bagian_id}}" @if($bagian->bagian_id === $kegiatan->bagian_id) selected="selected" @endif>{{$bagian->nama_bagian}}</option>
                @endforeach                
              </select>
            </div>
            <div class="mb-3">
              <label class="form-label" for="basic-default-fullname">Kode Kegiatan</label>
              <input name="kode_kegiatan" type="text" class="form-control" id="basic-default-fullname" value="{{ $kegiatan->kode_kegiatan }}">
            </div>
            <div class="mb-3">
              <label class="form-label" for="basic-default-fullname">Nama Kegiatan</label>
              <input name="nama_kegiatan" type="text" class="form-control" id="basic-default-fullname" value="{{ $kegiatan->nama_kegiatan }}">
            </div>
            <button type="submit" class="btn btn-primary">Simpan</button>
            <a href="{{ url()->previous() }}" class="btn btn-warning"><i class="fa fa-angle-left"></i> Kembali</a>
          </form>
      </div>
    </div>
</div>
@endsection