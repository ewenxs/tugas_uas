@extends('layouts.master')

@section('content')
<div class="card">
  <div class="card-header pb-0">
    <h5>DATA SUB KEGIATAN</h5>
    <a href="/sub_kegiatan/create" class="btn btn-primary float-end">Tambah Data</a><br /><br /><br />
  </div>
  <div class="container">
    <div class="table-responsive">
      <table class="table" id="data_table_sub_kegiatan">
        <thead>
          <tr>
            <th>No</th>
            <th>Kode Kegiatan</th>
            <th>Nama Kegiatan</th>
            <th>Kode Sub Kegiatan</th>
            <th>Nama Sub Kegiatan</th>
            <th>Actions</th>
          </tr>
        </thead>
        <tbody class="table-border-bottom-0">
        </tbody>
      </table>
    </div>
  </div>
</div>
@endsection