@extends('layouts.master')

@section('content')
<div class="card">
  <div class="card-header pb-0">
    <h5>EDIT REKENING</h5>
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
      <form action="/rekening/{{ $rekening->id }}" method="POST">
        @method('put')
        @csrf
        <div class="mb-3">
          <label class="form-label" for="basic-default-fullname">Kode Rekening</label>
          <input name="no_rekening" type="text" class="form-control" id="basic-default-fullname"
            value="{{ $rekening->no_rekening }}">
        </div>
        <div class="mb-3">
          <label class="form-label" for="basic-default-fullname">Nama Rekening</label>
          <input name="nama_rekening" type="text" class="form-control" id="basic-default-fullname"
            value="{{ $rekening->nama_rekening }}">
        </div>
        <button type="submit" class="btn btn-primary">Simpan</button>
        <a href="{{ url()->previous() }}" class="btn btn-warning"><i class="fa fa-angle-left"></i> Kembali</a>
      </form>
    </div>
  </div>
</div>
@endsection