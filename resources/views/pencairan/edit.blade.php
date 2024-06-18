@extends('layouts.master')

@section('content')
<div class="card">
  <div class="card-header pb-0">
    <h5>EDIT PENCAIRAN</h5>
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
                    <p class="mb-2">{{ $edit_pencairan->tanggal_spj }}</p>
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
                    <p class="mb-2">{{ $edit_pencairan->nama_bagian }}</p>
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
                    <p class="mb-2">{{ $edit_pencairan->kode_sub_kegiatan }} | {{ $edit_pencairan->nama_sub_kegiatan }}
                    </p>
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
                    <p class="mb-2">Rp. {{ number_format($edit_pencairan->total_spj, 0, ',', '.') }}</p>
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
                    <p class="mb-2 text-justify">{{ $edit_pencairan->uraian }}</p>
                  </div>
                </div>
              </li>
            </ul>
          </div>
        </div>
      </div>
      <form action="/pencairan/{{ $pencairan->id }}" method="POST">
        @method('put')
        @csrf
        <div class="mb-3">
          <label class="form-label" for="basic-default-fullname">Tanggal SP2D Dicairkan</label>
          <input type="text" class="datepickerTglCair form-control" name="tgl_pencairan" readonly=""
            id="basic-default-fullname " autocomplete="off" value="{{ $pencairan->tgl_pencairan }}" />
          <input name="spj_id" type="text" class="form-control" id="spj_id" value="{{ $pencairan->spj_id }}">
        </div>
        <div class="mb-3">
          <label class="form-label" for="basic-default-fullname">Nomor SPM</label>
          <input name="no_spm" type="text" class="form-control" id="no_spm" value="{{ $pencairan->no_spm }}">
        </div>
        <div class="mb-3">
          <label class="form-label" for="basic-default-fullname">Nomor SP2D</label>
          <input name="no_sp2d" type="text" class="form-control" id="no_sp2d" value="{{ $pencairan->no_sp2d }}">
        </div>
        <button type="submit" class="btn btn-primary">Simpan</button>
        <a href="{{ url()->previous() }}" class="btn btn-warning"><i class="fa fa-angle-left"></i> Kembali</a>
      </form>
    </div>
  </div>
</div>


@endsection