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
      <form action="/laporan/cetak_pdf_spj" method="POST" formtarget="_blank" target="_blank">
        @csrf
        <div class="row">
          <div class="col-md-6">
            <div class="mb-3">
              <label class="form-label" for="basic-default-fullname">Tanggal Mulai SPJ</label>
              <input type="text" class="datepickerTglSpj1 form-control" readonly="" name="tanggal_mulai_spj"
                id="basic-default-fullname " autocomplete="off" />
            </div>
          </div>
          <div class="col-md-6">
            <div class="mb-3">
              <label class="form-label" for="basic-default-fullname">Tanggal Akhir SPJ</label>
              <input type="text" class="datepickerTglSpj2 form-control" readonly="" name="tanggal_akhir_spj"
                id="basic-default-fullname " autocomplete="off" />
            </div>
          </div>
        </div>
        <div class="mb-3">
          <label for="exampleFormControlSelect1" class="form-label">Nama Seksi/Subbag</label>
          <select name="bagian_id" class="livesearch_bagian_spj form-select" aria-label="Default select example">
          </select>
        </div>
        <div class="mb-3">
          <label for="exampleFormControlSelect1" class="form-label">Nama kegiatan</label>
          <select name="kegiatan_id" class="livesearch_kegiatan_spj form-select" id="kegiatan_spj_dropdown"
            aria-label="Default select example">
          </select>
        </div>
        <div class="mb-3">
          <label for="exampleFormControlSelect1" class="form-label">Nama Sub kegiatan</label>
          <select name="sub_kegiatan_id" class="livesearch_sub_kegiatan_spj sub_keg_spj_create form-select"
            id="sub_kegiatan_spj_dropdown" aria-label="Default select example">
          </select>
        </div>
        <div class="mb-3">
          <label for="exampleFormControlSelect1" class="form-label">Pencairan</label>
          <select name="pencairan" class="form-select" id="pencairan" aria-label="Default select example">
            <option value="no">belum dicairkan</option>
            <option value="yes">sudah dicairkan</option>
            <option value="all">semua</option>
          </select>
        </div>
        <button type="submit" class="btn btn-primary">Cetak</button>
        <a href="{{ url()->previous() }}" class="btn btn-warning"><i class="fa fa-angle-left"></i> Kembali</a>
      </form>
    </div>
  </div>
</div>
@endsection