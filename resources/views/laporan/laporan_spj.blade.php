@extends('layouts.master')

@section('content')
<div class="card">
  <div class="card-header pb-0">
    <h5>LAPORAN REALISASI ANGGARAN</h5>
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
      <form action="/laporan/cetak_pdf_spj" method="POST">
        @csrf
        <div class="mb-3">
          <label class="form-label" for="basic-default-fullname">Penjabaran</label>
          <select name="penjabaran_id" class="livesearch_penjabaran form-select" aria-label="Default select example">
          </select>
        </div>
        <button type="submit" class="btn btn-primary">Cetak</button>
        <a href="{{ url()->previous() }}" class="btn btn-warning"><i class="fa fa-angle-left"></i> Kembali</a>
      </form>
    </div>
  </div>
</div>
@endsection