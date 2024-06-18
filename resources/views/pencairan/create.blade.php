@extends('layouts.master')

@section('content')
<!-- Extra Large Modal -->
<div class="modal fade" id="exLargeModal" tabindex="-1" aria-hidden="true">
  <div class="modal-dialog modal-xl" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel4">Daftar SPJ Belum Cair</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <div class="row">
          <div class="col mb-3">
            <div class="container">
              <div class="table-responsive">
                <table class="table table-hover" id="data_table_pilih_cair">
                  <thead>
                    <tr>
                      <th>No</th>
                      <th>Tgl SPJ</th>
                      <th>Uraian</th>
                      <th>Seksi/Subbag</th>
                      <th>Kode Sub Kegiatan</th>
                      <th>Nama Sub Kegiatan</th>
                      <th>Nominal</th>
                    </tr>
                  </thead>
                  <tbody class="table-border-bottom-0">
                  </tbody>
                </table><br />
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-label-secondary" data-bs-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>

<div class="card">
  <div class="card-header pb-0">
    <h5>TAMBAH PENCAIRAN</h5>
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
      <div class="mb-3">
        <button type="button" class="btn btn-dark float-end" data-bs-toggle="modal" data-bs-target="#exLargeModal">
          Pilih SPJ
        </button><br>
      </div>
      <br>
      <!-- Activity Timeline -->
      <div class="row">
        <div class="card card-action mb-4">
          <div class="card-header align-items-center">
            <h5 class="card-action-title mb-0"><i class='bx bx-list-ul me-2'></i>Detail SPJ</h5>
          </div>
          <div class="card-body detail_spj">
            <ul class="timeline ms-2">
              <li class="timeline-item timeline-item-transparent">
                <span class="timeline-point-wrapper"><span class="timeline-point timeline-point-warning"></span></span>
                <div class="timeline-event">
                  <div class="timeline-header mb-1">
                    <h6 class="mb-0">Tanggal SPJ</h6>
                  </div>
                  <div class="tanggal_spj">
                    <p class="mb-2">tanggal saat SPJ disetor</p>
                  </div>

                </div>
              </li>
              <li class="timeline-item timeline-item-transparent">
                <span class="timeline-point-wrapper"><span class="timeline-point timeline-point-warning"></span></span>
                <div class="timeline-event">
                  <div class="timeline-header mb-1">
                    <h6 class="mb-0">Nama Bagian</h6>
                  </div>
                  <div class="nama_bagian">
                    <p class="mb-2">Nama seksi atau sub bagian yang bertanggung jawa terhadap SPJ yang disetor</p>
                  </div>
                </div>
              </li>
              <li class="timeline-item timeline-item-transparent">
                <span class="timeline-point-wrapper"><span class="timeline-point timeline-point-warning"></span></span>
                <div class="timeline-event">
                  <div class="timeline-header mb-1">
                    <h6 class="mb-0">Kode Sub Kegiatan</h6>
                  </div>
                  <div class="kode_sub_kegiatan">
                    <p class="mb-2">Kode sub kegiatan dari SPJ yang disetor</p>
                  </div>
                </div>
              </li>
              <li class="timeline-item timeline-item-transparent">
                <span class="timeline-point-wrapper"><span class="timeline-point timeline-point-warning"></span></span>
                <div class="timeline-event">
                  <div class="timeline-header mb-1">
                    <h6 class="mb-0 total_spj">Nominal SPJ</h6>
                  </div>
                  <div class="total_spj">
                    <p class="mb-2">Total dari belanja dari SPJ</p>
                  </div>
                </div>
              </li>
              <li class="timeline-item timeline-item-transparent">
                <span class="timeline-point-wrapper"><span class="timeline-point timeline-point-warning"></span></span>
                <div class="timeline-event">
                  <div class="timeline-header mb-1">
                    <h6 class="mb-0">Uraian</h6>
                  </div>
                  <div class="uraian text-wrap">
                    <p class="mb-2 text-justify">Keterangan atau uraian dari SPJ</p>
                  </div>
                </div>
              </li>
            </ul>
          </div>
        </div>
      </div>
      <!--/ Activity Timeline -->

      <form action="/pencairan" method="POST" id="fetchDataCair">
        @csrf
        <div id="pilih_spj">
          <div class="mb-3">
            <label class="form-label" for="basic-default-fullname">Tanggal SP2D Dicairkan</label>
            <input type="text" class="datepickerTglCair form-control" name="tgl_pencairan" readonly=""
              id="basic-default-fullname " autocomplete="off" />
            <input name="spj_id" type="text" class="form-control" id="spj_id" placeholder="id">
          </div>
        </div>
        <div class="mb-3">
          <label class="form-label" for="basic-default-fullname">Nomor SPM</label>
          <input name="no_spm" type="text" class="form-control" id="no_spm" placeholder="Nomor SPM">
        </div>
        <div class="mb-3">
          <label class="form-label" for="basic-default-fullname">Nomor SP2D</label>
          <input name="no_sp2d" type="text" class="form-control" id="no_sp2d" placeholder="Nomor SP2D">
        </div>
        <button type="submit" class="btn btn-primary">Simpan</button>
        <a href="{{ url()->previous() }}" class="btn btn-warning"><i class="fa fa-angle-left"></i> Kembali</a>
      </form>
    </div>
  </div>
</div>



@endsection