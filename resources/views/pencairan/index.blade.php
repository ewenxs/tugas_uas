@extends('layouts.master')

@section('content')
<div class="card">
  <div class="card-header pb-0">
    <h5>DATA SPJ CAIR</h5>
    <a href="/pencairan/create" class="btn btn-primary float-end">Tambah Data</a><br /><br /><br />
  </div>
  <div class="container">
    <div class="table-responsive">
      <table class="table" id="data_table_pencairan">
        <thead>
          <tr>
            <th>No</th>
            <th style="width: 14%">Tanggal SPJ</th>
            <th style="width: 14%">Tanggal Cair</th>
            <th style="width: 30%">Uraian</th>
            <th style="width: 16%">Seksi/Subbag</th>
            <th style="width: 20%">Nominal</th>
            <th style="width: 20%">Download SPJ</th>
            <th style="width: 20%">Actions</th>
          </tr>
        </thead>
        <tbody class="table-border-bottom-0">
        </tbody>
      </table><br />
    </div>
  </div>
</div>
@endsection