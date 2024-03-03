@extends('layouts.master')

@section('content')
<div class="card">
    <div class="card-header pb-0">
    <h5>GROUP REKENING</h5>
    <a href="/group_rekening/create" class="btn btn-primary float-end">Tambah Data</a><br/><br/><br/>
    </div>
    <div class="container">
      <div class="table-responsive">
        <table class="table" id="data_table_group_rekening">
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