@extends('layouts.master')

@section('content')
<div class="card">
    <div class="card-header pb-0">
    <h5>DATA SEKSI/SUBBAG</h5>
    <a href="/bagian/create" class="btn btn-primary float-end">Tambah Data</a><br/><br/><br/>
    </div>
    <div class="container">
    <div class="table-responsive">
      <table class="table" id="data_table_bagian">
        <thead>
          <tr>
            <th>No</th>
            <th>Nama Seksi / Subbag</th>
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