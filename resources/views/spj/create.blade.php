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
        <form action="/spj" method="POST">
          @csrf
          <div class="row">

            <div class="col-md-6">
              <div class="mb-3">
                <label class="form-label" for="basic-default-fullname">Tanggal SPJ</label>
                <input type="text" class="datepickerTglSpj form-control" readonly="" name="tanggal_spj"
                  id="basic-default-fullname " autocomplete="off" />
              </div>
              <div class="mb-3">
                <label for="exampleFormControlSelect1" class="form-label">Jenis SPJ</label>
                <select class="livesearch_jenis_spj form-select" name="jenis_spj" aria-label="Default select example">
                  <option value="">Pilih Jenis SPJ</option>
                  <option value="GU">GU - GANTI UANG</option>
                  <option value="LS">LS - LANGSUNG</option>
                  <option value="TU">TU - TAMBAH UANG</option>
                </select>
              </div>
              <div class="mb-3">
                <label class="form-label" for="basic-default-fullname">Tanggal Kontrak/No Pesanan</label>
                <input type="text" class="datepickerTglKontrak form-control" readonly="" name="tgl_kontrak"
                  id="basic-default-fullname " autocomplete="off" />
              </div>
              <div class="mb-3">
                <label for="exampleFormControlSelect1" class="form-label">Nomor Kontrak</label>
                <input type="text" class="form-control" name="no_kontrak" id="basic-default-fullname "
                  autocomplete="off" />
              </div>
              <div class="mb-3">
                <label class="form-label" for="basic-default-fullname">Tanggal BAPHP</label>
                <input type="text" class="datepickerTglBaphp form-control" name="tgl_baphp" readonly=""
                  id="basic-default-fullname " autocomplete="off" />
              </div>
              <div class="mb-3">
                <label for="exampleFormControlSelect1" class="form-label">Nomor BAPHP</label>
                <input type="text" class="form-control" name="no_baphp" id="basic-default-fullname "
                  autocomplete="off" />
              </div>
            </div>
            <div class="col-md-6">
              <div class="mb-3">
                <label class="form-label" for="basic-default-fullname">Tanggal BAST</label>
                <input type="text" class="datepickerTglBast form-control" name="tgl_bast" readonly=""
                  id="basic-default-fullname " autocomplete="off" />
              </div>
              <div class="mb-3">
                <label for="exampleFormControlSelect1" class="form-label">Nomor BAST</label>
                <input type="text" class="form-control" name="no_bast" id="basic-default-fullname "
                  autocomplete="off" />
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
                <label for="exampleFormControlSelect1" class="form-label">Uraian</label>
                <textarea class="form-control" id="uraian" rows="2" name="uraian"
                  placeholder="Masukkan uraian disini..."></textarea>
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
                      <tbody id="spj" class="spj">

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