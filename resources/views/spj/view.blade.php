@extends('layouts.master')

@section('content')
<!-- Content -->

@php
$newDateSpj = strtotime($spj->tanggal_spj);
$tglSpj = date('d/M/Y ', $newDateSpj);

$newDateKontrak = strtotime($spj->tgl_kontrak);
$tglKontrak = date('d/M/Y ', $newDateKontrak);

$newDateBaphp = strtotime($spj->tgl_baphp);
$tglBaphp = date('d/M/Y ', $newDateBaphp);

$newDateBast = strtotime($spj->tgl_bast);
$tglBast = date('d/M/Y ', $newDateBast);
@endphp

<div class="container-xxl flex-grow-1 container-p-y">

  <div class="row">
    <h4 class="py-3 mb-4"><span class="text-muted fw-light">Detail /</span> SPJ</h4>
  </div>
  <!-- Basic Layout & Basic with Icons -->
  <div class="row">
    <!-- Basic Layout -->
    <div>
      <div class="card mb-4">
        <div class="card-header d-flex align-items-center justify-content-between">
          <h5 class="mb-0">Detail</h5>
          <small class="text-muted float-end">Detail DPA</small>
        </div>
        <div class="card-body">
          <div class="row mb-3 mt-n3">
            <label class="col-sm-2 col-form-label text-light" for="basic-default-name">Tanggal SPJ</label>
            <label class="col-sm-10 col-form-label" for="basic-default-name">: {{ $tglSpj
              }}</label>
          </div>
          <div class="row mb-3 mt-n3">
            <label class="col-sm-2 col-form-label text-light" for="basic-default-name">Seksi / Subbag</label>
            <label class="col-sm-10 col-form-label" for="basic-default-name">: {{ $bagians->nama_bagian
              }}</label>
          </div>
          <div class="row mb-3 mt-n3">
            <label class="col-sm-2 col-form-label text-light" for="basic-default-company">Kegiatan</label>
            <label class="col-sm-10 col-form-label" for="basic-default-name">: <span class="text-muted fw-light">{{
                $kegiatans->kode_kegiatan }} |</span> {{ $kegiatans->nama_kegiatan }}</label>
          </div>
          <div class="row mb-3 mt-n3">
            <label class="col-sm-2 col-form-label text-light" for="basic-default-email">Sub Kegiatan</label>
            <label class="col-sm-10 col-form-label" for="basic-default-name">: <span class="text-muted fw-light">{{
                $sub_kegiatans->kode_sub_kegiatan }} | </span>{{ $sub_kegiatans->nama_sub_kegiatan
              }}</label>
          </div>
          <div class="row mb-3 mt-n3">
            <label class="col-sm-2 col-form-label text-light" for="basic-default-email">Jenis SPJ</label>
            @if($spj->jenis_spj === "GU")
            <label class="col-sm-10 col-form-label" for="basic-default-name">: <span class="text-muted fw-light">GU -
              </span>
              Ganti Uang</label>
            @elseif ($spj->jenis_spj === "LS")
            <label class="col-sm-10 col-form-label" for="basic-default-name">: <span class="text-muted fw-light">LS -
              </span>
              Langsung</label>
            @else
            <label class="col-sm-10 col-form-label" for="basic-default-name">: <span class="text-muted fw-light">TU -
              </span>
              Tambah Uang</label>
            @endif
          </div>
          <div class="divider divider-dotted">
            <div class="divider-text">
              <i class="bx bx-cut bx-rotate-180"></i>
            </div>
          </div>
          <div class="row mb-3 mt-n3">
            <label class="col-sm-2 col-form-label text-light" for="basic-default-name">Tanggal Kontrak</label>
            <label class="col-sm-10 col-form-label" for="basic-default-name">: {{ $tglKontrak
              }}</label>
          </div>
          <div class="row mb-3 mt-n3">
            <label class="col-sm-2 col-form-label text-light" for="basic-default-name">Nomor Kontrak</label>
            <label class="col-sm-10 col-form-label" for="basic-default-name">: {{ $spj->no_kontrak
              }}</label>
          </div>
          <div class="row mb-3 mt-n3">
            <label class="col-sm-2 col-form-label text-light" for="basic-default-name">Tanggal BAPHP</label>
            <label class="col-sm-10 col-form-label" for="basic-default-name">: {{ $tglBaphp
              }}</label>
          </div>
          <div class="row mb-3 mt-n3">
            <label class="col-sm-2 col-form-label text-light" for="basic-default-name">Nomor BAPHP</label>
            <label class="col-sm-10 col-form-label" for="basic-default-name">: {{ $spj->no_baphp
              }}</label>
          </div>
          <div class="row mb-3 mt-n3">
            <label class="col-sm-2 col-form-label text-light" for="basic-default-name">Tanggal BAST</label>
            <label class="col-sm-10 col-form-label" for="basic-default-name">: {{ $tglBast
              }}</label>
          </div>
          <div class="row mb-3 mt-n3">
            <label class="col-sm-2 col-form-label text-light" for="basic-default-name">Nomor BAST</label>
            <label class="col-sm-10 col-form-label" for="basic-default-name">: {{ $spj->no_bast
              }}</label>
          </div>
          <div class="divider divider-dotted">
            <div class="divider-text">--</div>
          </div>
          <div class="row mb-3 mt-n3">
            <label class="col-sm-2 col-form-label text-light" for="basic-default-email">Uraian</label>
            <span class="col-sm-10"> {{ $spj->uraian }}</span>
          </div>
        </div>
      </div>
    </div>
    <!-- Basic with Icons -->
  </div>
  <!-- Basic with Icons -->
  <div class="col-xxl">
    <div class="card mb-4">
      <div class="card-header d-flex align-items-center justify-content-between">
        <h5 class="mb-0">Detail</h5>
        <small class="text-muted float-end">Detail SPJ</small>
      </div>
      <div class="card-body">
        <div class="table-responsive text-nowrap">
          <table class="table table-hover">
            <thead>
              <tr>
                <th>Detail</th>
                <th>Spesifikasi</th>
                <th>Qty * Harga</th>
                <th>Jumlah</th>
                <th>Sisa Anggaran</th>
              </tr>
            </thead>
            <tbody class="table-border-bottom-0">
              @foreach($table_spjs as $table_spj)

              @php
              $SisaDpa = $table_spj->totaldpa-$table_spj->totalspj;
              $SisaAnggaran = $SisaDpa-($table_spj->hargaSpj*$table_spj->satuanSpj);
              $jmlSpj = $table_spj->satuanSpj*$table_spj->hargaSpj;
              @endphp

              <tr>
                <td style="width: 25%">
                  <p><small class="text-muted text-wrap">{{ $table_spj->no_rekening }} | {{ $table_spj->nama_rekening
                      }}</small></p>
                  <p><small class="text-muted text-wrap">{{
                      $table_spj->nama_program }}</small></p>
                </td>
                <td style="width: 25%">
                  <p><small class="text-muted text-wrap">{{ $table_spj->nama_barang }}</small></p>
                  <p><small class="text-muted text-wrap">Harga :
                      Rp.&nbsp; {{
                      number_format($table_spj->harga,0) }} | Qty :{{number_format($table_spj->volume,2,",",".")
                      }}</small></p>
                </td>
                <td style="width: 12%">
                  <p><small class="text-muted text-wrap">{{ $table_spj->satuanSpj }} x Rp. {{
                      number_format(round($table_spj->hargaSpj),0) }}</small>
                  </p>
                </td>
                <td style="width: 12%">
                  <p><small class="text-muted text-wrap">Rp. {{
                      number_format(round($jmlSpj),0) }}</small>
                  </p>
                </td>
                <td style="width: 12%">
                  <p><small class="text-muted text-wrap">Rp. {{
                      number_format(round($SisaAnggaran),0) }}</small>
                  </p>
                </td>
              </tr>

              @endforeach
            </tbody>
          </table>
        </div>
      </div>
    </div>
    <div class="mb-3">
      <a href="{{ url()->previous() }}" class="btn btn-warning float-end"><i class="fa fa-angle-left"></i> Kembali</a>
    </div>
  </div>
</div>
<!-- / Content -->
@endsection