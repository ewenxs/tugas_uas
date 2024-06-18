@extends('layouts.master')

@section('content')
<div class="card">
  <div class="card-header pb-0">
    <h5>TAMBAH DPA</h5>
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
      <form action="/dpa" method="POST">
        @csrf
        <div class="mb-3">
          <label class="form-label" for="basic-default-fullname">Penjabaran</label>
          <input name="nomor_dpa" type="text" class="form-control" id="basic-default-fullname"
            value="{{ $penjabaran->nomor_dpa }}" disabled>
          <input name="penjabaran_id" type="hidden" class="form-control" id="basic-default-fullname"
            value="{{ $penjabaran->id }}">
        </div>
        <div class="mb-3">
          <label for="exampleFormControlSelect1" class="form-label">Nama Bagian</label>
          <select name="bagian_id" class="livesearch_bagian_spj form-select" aria-label="Default select example">
          </select>
        </div>
        <div class="mb-3">
          <label for="exampleFormControlSelect1" class="form-label">Nama kegiatan</label>
          <select name="kegiatan_id" class="livesearch_kegiatan_spj form-select" id="kegiatan_dropdown"
            aria-label="Default select example">
          </select>
        </div>
        <div class="mb-3">
          <label for="exampleFormControlSelect1" class="form-label">Nama Sub kegiatan</label>
          <select name="sub_kegiatan_id" class="livesearch_sub_kegiatan_spj form-select" id="sub_kegiatan_dropdown"
            aria-label="Default select example">
          </select>
        </div>
        <div class="mb-3">
          <label for="exampleFormControlSelect1" class="form-label">Nama Rekening</label>
          <select name="rekening_id" class="livesearch_pilih_rekening form-select" id="rekening_dropdown"
            aria-label="Default select example">
          </select>
        </div>
        <div class="mb-3">
          <label for="exampleFormControlSelect1" class="form-label">Nama Program</label>
          <select name="program_id" class="livesearch_program form-select" id="program_dropdown"
            aria-label="Default select example">
          </select>
        </div>
        <hr class="my-4 mx-n4" />
        <div class="mb-3">
          <table class="table table-bordered">
            <thead class="table-primary">
              <tr>
                <th scope="col">#</th>
                <th scope="col">Uraian</th>
                <th scope="col">Volume</th>
                <th scope="col">Satuan</th>
                <th scope="col">Harga</th>
                <th scope="col">Jumlah</th>
                <th scope="col">
                  <button type="button" class="btn btn-sm btn-primary" onclick="BtnAdd()">+</button>
                </th>
              </tr>
            </thead>
            <tbody id="TBody">
              <tr id="TRow" class="d-none">
                <th scope="row">1</th>
                <td><textarea class="form-control" id="rincian_dpa" rows="2" name="nama_barang[]"
                    placeholder="Masukkan uraian disini..."></textarea></td>
                <td><input type="text" class="form-control text-end" name="volume[]" onchange="Calc(this);"
                    autocomplete="off"></td>
                <td><input type="text" class="form-control text-end" name="satuan[]" onchange="Calc(this);"></td>
                <td><input type="number" class="form-control text-end" name="harga[]" onchange="Calc(this);"></td>
                <td><input type="number" class="form-control text-end" name="total_harga[]" value="0" disabled=""></td>
                <td><button type="button" class="btn btn-sm btn-danger" onclick="BtnDel(this)">X</button></td>
              </tr>
            </tbody>
          </table>
        </div>
        <button type="submit" class="btn btn-primary">Simpan</button>
        <a href="{{ url()->previous() }}" class="btn btn-warning"><i class="fa fa-angle-left"></i> Kembali</a>
      </form>
    </div>
  </div>
</div>
@endsection