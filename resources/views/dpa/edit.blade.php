@extends('layouts.master')

@section('content')
<div class="card">
  <div class="card-header pb-0">
    <h5>EDIT PROGRAM</h5>
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
      <form action="/dpa/{{ $dpa->id }}" method="POST">
        @method('put')
        @csrf
        <input type="hidden" name="id" value="{{ $dpa->id }}">
        <div class="mb-3">
          <label class="form-label" for="basic-default-fullname">Penjabaran</label>
          <input name="nomor_dpa" type="text" class="form-control" id="basic-default-fullname"
            value="{{ $penjabaran->nomor_dpa }}" disabled>
          <input name="penjabaran_id" type="hidden" class="form-control" id="basic-default-fullname"
            value="{{ $penjabaran->id }}">
        </div>
        <div class="mb-3">
          <label for="exampleFormControlSelect1" class="form-label">Nama Bagian</label>
          <select class="livesearch_bagian form-select  @error('bagians') is-invalid @enderror" name="bagian_id">
            @foreach($bagians as $bagian)
            <option value="{{$bagian->id}}" @if($dpa->bagian_id === $bagian->id) selected="selected"
              @endif>{{$bagian->nama_bagian}}</option>
            @endforeach
          </select>
        </div>
        <div class="mb-3">
          <label for="exampleFormControlSelect1" class="form-label">Nama kegiatan</label>
          <select class="livesearch_kegiatan form-select  @error('kegiatans') is-invalid @enderror" name="kegiatan_id">
            @foreach($kegiatans as $kegiatan)
            <option value="{{$kegiatan->keg_id}}" @if($kegiatan->keg_id === $sub_kegiatan->kegiatan_id)
              selected="selected" @endif>{{$kegiatan->kode_kegiatan}} | {{$kegiatan->nama_kegiatan}}</option>
            @endforeach
          </select>
        </div>
        <div class="mb-3">
          <label for="exampleFormControlSelect1" class="form-label">Nama Sub kegiatan</label>
          <select class="livesearch_sub_kegiatan form-select  @error('sub_kegiatans') is-invalid @enderror"
            name="sub_kegiatan_id">
            @foreach($sub_kegiatan_news as $sub_keg_new)
            <option value="{{$sub_keg_new->id}}" @if($sub_keg_new->id === $sub_kegiatan->id) selected="selected"
              @endif>{{$sub_keg_new->kode_sub_kegiatan}} | {{$sub_keg_new->nama_sub_kegiatan}}</option>
            @endforeach
          </select>
        </div>
        <div class="mb-3">
          <label for="exampleFormControlSelect1" class="form-label">Nama Rekening</label>
          <select class="livesearch_pilih_rekening form-select  @error('rekenings') is-invalid @enderror"
            name="rekening_id">
            @foreach($rekenings as $rekening)
            <option value="{{$rekening->id}}" @if($dpa->rekening_id === $rekening->id) selected="selected"
              @endif>{{$rekening->no_rekening}} | {{$rekening->nama_rekening}}</option>
            @endforeach
          </select>
        </div>
        <div class="mb-3">
          <label for="exampleFormControlSelect1" class="form-label">Nama Program</label>
          <select class="livesearch_program form-select  @error('programs') is-invalid @enderror" name="program_id">
            @foreach($programs as $program)
            <option value="{{$program->id}}" @if($dpa->program_id === $program->id) selected="selected"
              @endif>{{$program->nama_program}}</option>
            @endforeach
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
                <td><input type="text" class="form-control text-end" name="volume[]" onchange="Calc(this);"></td>
                <td><input type="text" class="form-control text-end" name="satuan[]" onchange="Calc(this);"></td>
                <td><input type="number" class="form-control text-end" name="harga[]" onchange="Calc(this);"></td>
                <td><input type="number" class="form-control text-end" name="total_harga[]" value="0" disabled=""></td>
                <td><button type="button" class="btn btn-sm btn-danger" onclick="BtnDel(this)">X</button></td>
              </tr>
              @foreach($detail_dpas as $detail_dpa)
              <tr id="TRow">
                <th scope="row">1</th>
                <td><textarea class="form-control" id="rincian_dpa" rows="2"
                    name="nama_barang[]">{{ $detail_dpa->nama_barang }}</textarea></td>
                <td><input type="text" class="form-control text-end" autocomplete="off" name="volume[]"
                    onchange="Calc(this);" value="{{$detail_dpa->volume}}"></td>
                <td><input type="text" class="form-control text-end" name="satuan[]" onchange="Calc(this);"
                    value="{{$detail_dpa->satuan}}"></td>
                <td><input type="number" class="form-control text-end" name="harga[]" onchange="Calc(this);"
                    value="{{$detail_dpa->harga}}"></td>
                <td><input type="number" class="form-control text-end" name="total_harga[]"
                    value="{{round($hasilkali = $detail_dpa->volume * $detail_dpa->harga)}}" disabled=""></td>
                <td><button type="button" class="btn btn-sm btn-danger" onclick="BtnDel(this)">X</button></td>
              </tr>
              @endforeach
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