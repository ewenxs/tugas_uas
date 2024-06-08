@extends('layouts.master')

@section('content')

<div class="card">
  <div class="card-header pb-0">
    <h5>TAMBAH SPJ</h5>
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
      <div class="container">
        <form action="/spj/{{ $spj->id }}" method="POST">
          @method('put')
          @csrf
          <div class="row">
            <input type="hidden" name="id" class="spjIdEdit" value="{{ $spj->id }}">
            <div class="col-md-6">
              <div class="mb-3">
                <label class="form-label" for="basic-default-fullname">Tanggal SPJ</label>
                <input type="text" class="datepickerTglSpj form-control" name="tanggal_spj" id="basic-default-fullname "
                  autocomplete="off" value="{{ $spj->tanggal_spj }}" />
              </div>
              <div class="mb-3">
                <label for="exampleFormControlSelect1" class="form-label">Jenis SPJ</label>
                <select class="livesearch_jenis_spj form-select" name="jenis_spj" aria-label="Default select example">
                  <option value="">Pilih Jenis SPJ</option>
                  <option value="GU" {{ $spj->jenis_spj === "GU" ? 'selected' : '' }}>GU - GANTI UANG</option>
                  <option value="LS" {{ $spj->jenis_spj === "LS" ? 'selected' : '' }} >LS - LANGSUNG</option>
                  <option value="TU" {{ $spj->jenis_spj === "TU" ? 'selected' : '' }}>TU - TAMBAH UANG</option>
                </select>
              </div>
              <div class="mb-3">
                <label class="form-label" for="basic-default-fullname">Tanggal Kontrak/No Pesanan</label>
                <input type="text" class="datepickerTglKontrak form-control" name="tgl_kontrak"
                  id="basic-default-fullname " autocomplete="off" value="{{ $spj->tgl_kontrak }}" />
              </div>
              <div class="mb-3">
                <label for="exampleFormControlSelect1" class="form-label">Nomor Kontrak</label>
                <input type="text" class="form-control" name="no_kontrak" id="basic-default-fullname "
                  autocomplete="off" value="{{ $spj->no_kontrak }}" />
              </div>
              <div class="mb-3">
                <label class="form-label" for="basic-default-fullname">Tanggal BAPHP</label>
                <input type="text" class="datepickerTglBaphp form-control" name="tgl_baphp" id="basic-default-fullname "
                  autocomplete="off" value="{{ $spj->tgl_baphp }}" />
              </div>
              <div class="mb-3">
                <label for="exampleFormControlSelect1" class="form-label">Nomor BAPHP</label>
                <input type="text" class="form-control" name="no_baphp" id="basic-default-fullname " autocomplete="off"
                  value="{{ $spj->no_baphp }}" />
              </div>
            </div>
            <div class="col-md-6">
              <div class="mb-3">
                <label class="form-label" for="basic-default-fullname">Tanggal BAST</label>
                <input type="text" class="datepickerTglBast form-control" name="tgl_bast" id="basic-default-fullname "
                  autocomplete="off" value="{{ $spj->tgl_bast }}" />
              </div>
              <div class="mb-3">
                <label for="exampleFormControlSelect1" class="form-label">Nomor BAST</label>
                <input type="text" class="form-control" name="no_bast" id="basic-default-fullname " autocomplete="off"
                  value="{{ $spj->no_bast }}" />
              </div>
              <div class="mb-3">
                <label for="exampleFormControlSelect1" class="form-label">Nama Bagian</label>
                @foreach($bagians as $bagian)
                <input type="hidden" class="form-control" name="bagian_id" id="basic-default-fullname "
                  autocomplete="off" value="{{ $bagian->id }}" />
                <input type="text" class="form-control" name="bagian_nama" id="basic-default-fullname "
                  autocomplete="off" value="{{ $bagian->nama_bagian }}" readonly />
                @endforeach
              </div>
              <div class="mb-3">
                <label for="exampleFormControlSelect1" class="form-label">Nama kegiatan</label>
                @foreach($kegiatans as $kegiatan)
                <input type="hidden" class="form-control" name="kegiatan_id" id="basic-default-fullname "
                  autocomplete="off" value="{{ $kegiatan->id }}" />
                <input type="text" class="form-control" name="kegiatan_nama" id="basic-default-fullname "
                  autocomplete="off" value="{{$kegiatan->kode_kegiatan}} | {{$kegiatan->nama_kegiatan}}" readonly />
                @endforeach
              </div>
              <div class="mb-3">
                <label for="exampleFormControlSelect1" class="form-label">Nama Sub kegiatan</label>
                @foreach($sub_kegiatans as $sub_kegiatan)
                <input type="hidden" class="form-control" name="sub_kegiatan_id" id="basic-default-fullname "
                  autocomplete="off" value="{{ $sub_kegiatan->id }}" />
                <input type="text" class="form-control" name="sub_kegiatan_nama" id="basic-default-fullname "
                  autocomplete="off" value="{{$sub_kegiatan->kode_sub_kegiatan}} | {{$sub_kegiatan->nama_sub_kegiatan}}"
                  readonly />
                @endforeach
              </div>
              <div class="mb-3">
                <label for="exampleFormControlSelect1" class="form-label">Uraian</label>
                <textarea class="form-control" id="uraian" rows="2" name="uraian"
                  placeholder="Masukkan uraian disini...">{{ $spj->uraian }}</textarea>
              </div>
            </div>
            <hr class="my-4 mx-n4" />
            <div class="mb-3">

              <div class="d-grid gap-2">
                <button class="btn btn-primary me-1 float-right" type="button" data-bs-toggle="collapse"
                  data-bs-target="#collapseExample" aria-expanded="false" aria-controls="collapseExample">
                  <i class='bx bx-collapse-vertical bx-tada'></i> &nbsp;&nbsp;Daftar Kode Rekening
                </button>
              </div><br>
              <div class="collapse" id="collapseExample">
                <div class="d-flex p-3 border">
                  <div class="table-responsive">
                    <input type="text" class="form-control" id="myInput" placeholder="Filter... ">
                    <div onclick="topFunction()" id="myBtn" class="totalSpj" title="Go to top">
                    </div>
                    <hr class="my-4 mx-n4" />
                    <table class="table">
                      <thead>
                        <tr>
                          <th scope="col" class="text-wrap">Detail</th>
                          <th scope="col">Spesifikasi</th>
                          <th scope="col">Catatan</th>
                          <th scope="col">Qty</th>
                          <th scope="col">Harga</th>
                          <th scope="col">Jumlah</th>
                          <th scope="col">Sisa Anggaran</th>
                        </tr>
                      </thead>
                      <tbody id="spjEdit" class="spj">
                        @foreach($table_spjs as $table_spj)

                        @php
                        $SisaDpa = $table_spj->totaldpa-$table_spj->totalspj;
                        $SisaAnggaran = $SisaDpa-($table_spj->hargaSpj*$table_spj->satuanSpj);
                        $jmlSpj = $table_spj->satuanSpj*$table_spj->hargaSpj;
                        @endphp

                        <tr>
                          <td style="width: 5%">
                            <input type="hidden" name="dpa_id[]" id="dpa_id" value="{{ $table_spj->dpa_id }}" />
                            <input type="hidden" name="detail_dpa_id[]" id="detail_dpa_id"
                              value="{{ $table_spj->detail_dpa_id }}" />
                            <input type="hidden" name="rekening_id[]" id="rekening_id"
                              value="{{ $table_spj->rekening_id }}" />
                            <input type="hidden" name="program_id[]" id="program_id"
                              value="{{ $table_spj->program_id }}" />
                            <p><small class="text-muted text-wrap">Kode Rekening : {{ $table_spj->no_rekening }} {{
                                $table_spj->nama_program }}</small></p>
                            <p><small class="text-muted text-wrap">Harga Satuan : Rp.&nbsp; {{
                                number_format($table_spj->harga,0) }}</small></p>
                            <p><small class="text-muted text-wrap">Qty :{{number_format($table_spj->volume,2,",",".")
                                }}</small></p>
                          </td>
                          <td style="width: 5%">
                            <p><small class="text-muted text-wrap">{{ $table_spj->nama_barang }}</small></p>
                          </td>
                          <td style="width: 30%">
                            <textarea class="form-control catatan" id="catatan" rows="2" name="catatan[]"
                              placeholder="Catatan (optional)">{{ $table_spj->detail_spj_id }} | {{ $table_spj->catatan }}</textarea>
                          </td>
                          <td style="width: 10%">
                            <input type="text" name="satuanspj[]" class="form-control satuanspj"
                              onchange="Calculated(this);" id="satuanspj" value="{{ $table_spj->satuanSpj }}" />
                          </td>
                          <td style="width: 25%">
                            <input type="text" name="hargaspj[]" class="money form-control hargaspj"
                              onchange="Calculated(this);" value="{{ $table_spj->hargaSpj }}" id="hargaspj" />
                          </td>
                          <td style="width: 25%">
                            <input type="text" name="jumlahspj[]" class="form-control jumlahspj" id="jumlahspj"
                              onchange="Calculated(this);" value="{{ $jmlSpj }}" placeholder="Jumlah" />
                          </td>
                          <td style="width: 10%">
                            <input type="hidden" name="sisa_anggaran_hidden[]" class="form-control"
                              onchange="Calculated(this);" value="{{round($SisaDpa)}}" id="sisa_anggaran" />
                            <input type="text" name="sisa_anggaran[]"
                              class="form-control text-muted text-wrap sisa_anggaran" onblur="Calculated(this);"
                              value="Rp. {{ number_format(round($SisaAnggaran),0) }}" id="sisa_anggaran"
                              style="font-size:12px;" disabled />
                          </td>
                        </tr>
                        @endforeach
                      </tbody>
                    </table>
                  </div>
                </div>
              </div>
            </div>
            <div class="mb-3">
              <button type="submit" class="btn btn-primary">Simpan</button>
              <a href="{{ url()->previous() }}" class="btn btn-warning"><i class="fa fa-angle-left"></i> Kembali</a>
            </div>
          </div>
        </form>
      </div>
    </div>
  </div>
  @endsection