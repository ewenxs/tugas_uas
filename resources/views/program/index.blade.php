@extends('layouts.master')

@section('content')
<div class="card">
    <div class="card-header pb-0">
    <h5>DATA PROGRAM</h5>
    <a href="/program/create" class="btn btn-primary float-end">Tambah Data</a><br/><br/><br/>
    </div>
    <div class="container">
    <div class="table-responsive">
      <table class="table" id="data_table_program">
        <thead>
          <tr>
            <th>No</th>
            <th>Nama Program</th>
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