@extends('layouts.master')

@section('content')
<div class="card">
    <div class="card-header pb-0">
    <h5>DATA DPA</h5>
    <a href="/dpa/create" class="btn btn-primary float-end">Tambah Data</a><br/><br/><br/>
    </div>
    <div class="container">
    <div class="table-responsive">
      <table class="table" id="data_table_dpa">
        <thead>
          <tr>
            <th>No</th>
            <th>Nomor DPA</th>
            <th>Bagian</th>
            <th>Kegiatan</th>
            <th>Sub Kegiatan</th>
            <th>Rekening</th>
            <th>Program</th>
            <th>Actions</th>
          </tr>
        </thead>
        <tbody class="table-border-bottom-0">
        </tbody>
      </table><br/>
    </div>
    </div>
  </div>
@endsection