@extends('layouts.master')

@section('dash')

@php
$dpapems = $tot_dpa_pems->pems;
$dpakeu = $tot_dpa_keu->keu;
$dpatu = $tot_dpa_tu->tu;
$dpapem = $tot_dpa_pem->pem;
$dpapel = $tot_dpa_pel->pel;
$dpatrtb = $tot_dpa_trtb->trtb;

$totDpa = $dpapem + $dpapel + $dpatrtb + $dpapems + $dpakeu + $dpatu;

$spjpems = $tot_spj_pems->pems;
$spjkeu = $tot_spj_keu->keu;
$spjtu = $tot_spj_tu->tu;
$spjpem = $tot_spj_pem->pem;
$spjpel = $tot_spj_pel->pel;
$spjtrtb = $tot_spj_trtb->trtb;

$spjpemsCair = $tot_spj_pems_cair->pemscair;
$spjkeuCair = $tot_spj_keu_cair->keucair;
$spjtuCair = $tot_spj_tu_cair->tucair;
$spjpemCair = $tot_spj_pem_cair->pemcair;
$spjpelCair = $tot_spj_pel_cair->pelcair;
$spjtrtbCair = $tot_spj_trtb_cair->trtbcair;

$totSpj = $spjpem + $spjpel + $spjtrtb + $spjpems + $spjkeu + $spjtu;
$sisatotSpj = $totDpa - $totSpj;

$totSpjCair = $spjpemCair + $spjpelCair + $spjtrtbCair + $spjpemsCair + $spjkeuCair + $spjtuCair;
$sisatotSpjCair = $totDpa - $totSpjCair;

$persenLra = ($totSpj/$totDpa)*100;
$perseSisaLra = 100 - $persenLra;
$persenLraCair = ($totSpjCair/$totDpa)*100;
$perseSisaLraCair = 100 - $persenLraCair;

$persenPems = ($spjpems/$dpapems)*100;
$perseSisaPems = 100 - $persenPems;
$persenPemsCair = ($spjpemsCair/$dpapems)*100;
$perseSisaPemsCair = 100 - $persenPemsCair;

$persenKeu = ($spjkeu/$dpakeu)*100;
$perseSisaKeu = 100 - $persenKeu;
$persenKeuCair = ($spjkeuCair/$dpakeu)*100;
$perseSisaKeuCair = 100 - $persenKeuCair;

$persenTu = ($spjtu/$dpatu)*100;
$perseSisaTu = 100 - $persenTu;
$persenTuCair = ($spjtuCair/$dpatu)*100;
$perseSisaTuCair = 100 - $persenTuCair;

$persenPem = ($spjpem/$dpapem)*100;
$perseSisaPem = 100 - $persenPem;
$persenPemCair = ($spjpemCair/$dpapem)*100;
$perseSisaPemCair = 100 - $persenPemCair;

$persenPel = ($spjpel/$dpapel)*100;
$perseSisaPel = 100 - $persenPel;
$persenPelCair = ($spjpelCair/$dpapel)*100;
$perseSisaPelCair = 100 - $persenPelCair;

$persenTrtb = ($spjtrtb/$dpatrtb)*100;
$perseSisaTrtb = 100 - $persenTrtb;
$persenTrtbCair = ($spjtrtbCair/$dpatrtb)*100;
$perseSisaTrtbCair = 100 - $persenTrtbCair;

$yearnow = date('Y');
@endphp

<!-- Content -->
<div class="container-xxl flex-grow-1 container-p-y">
    <div class="row">
        <div class="col-lg-6 mb-4">
            <div class="card">
                <div class="card-body">
                    <div class="d-flex justify-content-between flex-sm-row flex-column gap-3">
                        <div class="d-flex flex-sm-column flex-row align-items-start justify-content-between">
                            <div class="card-title">
                                <h5 class="text-nowrap mb-2">SPJ sudah cair</h5>
                                <span class="badge bg-label-warning rounded-pill">Tahun {{ $yearnow }}</span>
                            </div>
                        </div>
                        <div class="d-flex flex-sm-column flex-row align-items-start justify-content-between">
                            <div class="card-title">
                                <small class="text-success text-nowrap fw-medium"><i class="bx bx-chevron-up"></i>
                                    {{ number_format($persenLraCair, 2, '.', ',') }} %</small>
                                <h4 class="mb-0">Rp. {{
                                    number_format(round($totSpjCair),0) }}</h4>
                            </div>
                        </div>
                        <div class="d-flex flex-sm-column flex-row align-items-start justify-content-between">
                            <div class="card-title">
                                <small class="text-success text-nowrap fw-medium"><i class="bx bx-chevron-up"></i>
                                    {{ number_format($perseSisaLraCair, 2, '.', ',') }} %</small>
                                <h4 class="mb-0 text-danger">Rp. {{
                                    number_format(round($sisatotSpjCair),0) }}</h4>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-lg-6 mb-4">
            <div class="card">
                <div class="card-body">
                    <div class="d-flex justify-content-between flex-sm-row flex-column gap-3">
                        <div class="d-flex flex-sm-column flex-row align-items-start justify-content-between">
                            <div class="card-title">
                                <h5 class="text-nowrap mb-2">SPJ belum cair</h5>
                                <span class="badge bg-label-warning rounded-pill">Tahun {{ $yearnow }}</span>
                            </div>
                        </div>
                        <div class="d-flex flex-sm-column flex-row align-items-start justify-content-between">
                            <div class="card-title">
                                <small class="text-success text-nowrap fw-medium"><i class="bx bx-chevron-up"></i>
                                    {{ number_format($persenLra, 2, '.', ',') }} %</small>
                                <h4 class="mb-0">Rp. {{
                                    number_format(round($totSpj),0) }}</h4>
                            </div>
                        </div>
                        <div class="d-flex flex-sm-column flex-row align-items-start justify-content-between">
                            <div class="card-title">
                                <small class="text-success text-nowrap fw-medium"><i class="bx bx-chevron-up"></i>
                                    {{ number_format($perseSisaLra, 2, '.', ',') }} %</small>
                                <h4 class="mb-0 text-danger">Rp. {{
                                    number_format(round($sisatotSpj),0) }}</h4>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--/ LRA tiap seksi -->
        <div class="col-md-6 col-lg-2 mb-4">
            <div class="card">
                <div class="card-body">
                    <div class="card-title d-flex align-items-start justify-content-between">
                        <div class="avatar flex-shrink-0">
                            <span class="avatar-initial rounded bg-label-warning "><i
                                    class='bx bxs-donate-heart'></i></span>
                        </div>
                    </div>
                    <span>Pemberdayaan Masyarakat</span>
                    <div class="divider divider-dashed">
                        <div class="divider-text">--</div>
                    </div>
                    <h3 class="card-title mb-2">{{ number_format($persenPems, 2, '.', ',') }} %</h3>
                    <small class="text-success fw-medium"><i class='bx bxs-up-arrow-alt'></i> Rp. {{
                        number_format(round($spjpems),0) }}</small>
                    <div class="divider divider-dashed">
                        <div class="divider-text">--</div>
                    </div>
                    <h3 class="card-title mb-2 text-danger">{{ number_format($persenPemsCair, 2, '.', ',') }} %</h3>
                    <small class="text-success fw-medium text-info"><i class='bx bxs-down-arrow-alt'></i> Rp. {{
                        number_format(round($spjpemsCair),0) }}</small>
                </div>
            </div>
        </div>

        <div class="col-md-6 col-lg-2 mb-4">
            <div class="card">
                <div class="card-body">
                    <div class="card-title d-flex align-items-start justify-content-between">
                        <div class="avatar flex-shrink-0">
                            <span class="avatar-initial rounded bg-label-success"><i class='bx bx-dollar'></i></span>
                        </div>
                    </div>
                    <span>Program dan Keuangan</span>
                    <div class="divider divider-dashed">
                        <div class="divider-text">--</div>
                    </div>
                    <h3 class="card-title mb-2">{{ number_format($persenKeu, 2, '.', ',') }} %</h3>
                    <small class="text-success fw-medium"><i class='bx bxs-up-arrow-alt'></i> Rp. {{
                        number_format(round($spjkeu),0) }}</small>
                    <div class="divider divider-dashed">
                        <div class="divider-text">--</div>
                    </div>
                    <h3 class="card-title mb-2 text-danger">{{ number_format($persenKeuCair, 2, '.', ',') }} %</h3>
                    <small class="text-success fw-medium text-info"><i class='bx bxs-down-arrow-alt'></i> Rp. {{
                        number_format(round($spjkeuCair),0) }}</small>
                </div>
            </div>
        </div>

        <div class="col-md-6 col-lg-2 mb-4">
            <div class="card">
                <div class="card-body">
                    <div class="card-title d-flex align-items-start justify-content-between">
                        <div class="avatar flex-shrink-0">
                            <span class="avatar-initial rounded bg-label-primary"><i class='bx bxs-cog'></i></span>
                        </div>
                    </div>
                    <span>Tata Usaha</span>
                    <div class="divider divider-dashed">
                        <div class="divider-text">--</div>
                    </div>
                    <h3 class="card-title mb-2">{{ number_format($persenTu, 2, '.', ',') }} %</h3>
                    <small class="text-success fw-medium"><i class='bx bxs-up-arrow-alt'></i> Rp. {{
                        number_format(round($spjtu),0) }}</small>
                    <div class="divider divider-dashed">
                        <div class="divider-text">--</div>
                    </div>
                    <h3 class="card-title mb-2 text-danger">{{ number_format($persenTuCair, 2, '.', ',') }} %</h3>
                    <small class="text-success fw-medium text-info"><i class='bx bxs-down-arrow-alt'></i> Rp. {{
                        number_format(round($spjtuCair),0) }}</small>
                </div>
            </div>
        </div>

        <div class="col-md-6 col-lg-2 mb-4">
            <div class="card">
                <div class="card-body">
                    <div class="card-title d-flex align-items-start justify-content-between">
                        <div class="avatar flex-shrink-0">
                            <span class="avatar-initial rounded bg-label-danger "><i
                                    class='bx bxs-buildings'></i></span>
                        </div>
                    </div>
                    <span>Pemerintahan</span>
                    <div class="divider divider-dashed">
                        <div class="divider-text">--</div>
                    </div>
                    <h3 class="card-title mb-2">{{ number_format($persenPem, 2, '.', ',') }} %</h3>
                    <small class="text-success fw-medium"><i class='bx bxs-up-arrow-alt'></i> Rp. {{
                        number_format(round($spjpem),0) }}</small>
                    <div class="divider divider-dashed">
                        <div class="divider-text">--</div>
                    </div>
                    <h3 class="card-title mb-2 text-danger">{{ number_format($persenPemCair, 2, '.', ',') }} %</h3>
                    <small class="text-success fw-medium text-info"><i class='bx bxs-down-arrow-alt'></i> Rp. {{
                        number_format(round($spjpemCair),0) }}</small>
                </div>
            </div>
        </div>

        <div class="col-md-6 col-lg-2 mb-4">
            <div class="card">
                <div class="card-body">
                    <div class="card-title d-flex align-items-start justify-content-between">
                        <div class="avatar flex-shrink-0">
                            <span class="avatar-initial rounded bg-label-info "><i class='bx bxs-group'></i></span>
                        </div>
                    </div>
                    <span>Pelayanan</span>
                    <div class="divider divider-dashed">
                        <div class="divider-text">--</div>
                    </div>
                    <h3 class="card-title mb-2">{{ number_format($persenPel, 2, '.', ',') }} %</h3>
                    <small class="text-success fw-medium"><i class='bx bxs-up-arrow-alt'></i> Rp. {{
                        number_format(round($spjpel),0) }}</small>
                    <div class="divider divider-dashed">
                        <div class="divider-text">--</div>
                    </div>
                    <h3 class="card-title mb-2 text-danger">{{ number_format($persenPelCair, 2, '.', ',') }} %</h3>
                    <small class="text-success fw-medium text-info"><i class='bx bxs-down-arrow-alt'></i> Rp. {{
                        number_format(round($spjpelCair),0) }}</small>
                </div>
            </div>
        </div>

        <div class="col-md-6 col-lg-2 mb-4">
            <div class="card">
                <div class="card-body">
                    <div class="card-title d-flex align-items-start justify-content-between">
                        <div class="avatar flex-shrink-0">
                            <span class="avatar-initial rounded bg-label-dark "><i class='bx bxs-cctv'></i></span>
                        </div>
                    </div>
                    <span>Ketentraman dan Ketertiban</span>
                    <div class="divider divider-dashed">
                        <div class="divider-text">--</div>
                    </div>
                    <h3 class="card-title mb-2">{{ number_format($persenTrtb, 2, '.', ',') }} %</h3>
                    <small class="text-success fw-medium"><i class='bx bxs-up-arrow-alt'></i> Rp. {{
                        number_format(round($spjtrtb),0) }}</small>
                    <div class="divider divider-dashed">
                        <div class="divider-text">--</div>
                    </div>
                    <h3 class="card-title mb-2 text-danger">{{ number_format($persenTrtbCair, 2, '.', ',') }} %</h3>
                    <small class="text-success fw-medium text-info"><i class='bx bxs-down-arrow-alt'></i> Rp. {{
                        number_format(round($spjtrtbCair),0) }}</small>
                </div>
            </div>
        </div>
        <!--/ LRA tiap seksi -->




        <!-- Total Revenue -->

        <!-- Order Statistics -->
        <div class="col-md-6 col-lg-6 col-xl-6 order-0 mb-4">
            <div class="card h-100">
                <div class="card-header d-flex align-items-center justify-content-between pb-0">
                    <div class="card-title mb-0">
                        <h5 class="m-0 me-2">Total DPA</h5>
                        <small class="text-muted">Kecamatan Kademangan</small>
                    </div>
                </div>
                <div class="card-body">
                    <div class="d-flex justify-content-between align-items-center mb-3">
                        <div class="d-flex flex-column align-items-center gap-1">
                            <h4 class="mb-2"> Rp. {{
                                number_format(round($totDpa),0) }}</h4>
                            <span>Total Keseluruhan</span>
                        </div>
                        @php
                        $pspems = ($dpapem/$totDpa)*100;
                        $pskeu = ($dpakeu/$totDpa)*100;
                        $pstu = ($dpatu/$totDpa)*100;
                        $pspem = ($dpapem/$totDpa)*100;
                        $pspel = ($dpapel/$totDpa)*100;
                        $pstrtb = ($dpatrtb/$totDpa)*100;
                        @endphp
                        <input type="hidden" value={{ $pspems }} id="persenPems">
                        <input type="hidden" value={{ $pskeu }} id="persenKeu">
                        <input type="hidden" value={{ $pstu }} id="persenTu">
                        <input type="hidden" value={{ $pspem }} id="persenPem">
                        <input type="hidden" value={{ $pspel }} id="persenPel">
                        <input type="hidden" value={{ $pstrtb }} id="persenTrtb">
                        <div id="orderStatisticsChart"></div>
                    </div>
                    <ul class="p-0 m-0">
                        <li class="d-flex mb-4 pb-1">
                            <div class="avatar flex-shrink-0 me-3">
                                <span class="avatar-initial rounded bg-label-warning "><i
                                        class='bx bxs-donate-heart'></i></span>
                            </div>
                            <div class="d-flex w-100 flex-wrap align-items-center justify-content-between gap-2">
                                <div class="me-2">
                                    <h6 class="mb-0">Seksi</h6>
                                    <small class="text-muted">Pemberdayaan Masyarakat</small>
                                </div>
                                <div class="user-progress">
                                    <small class="fw-medium">Rp. {{
                                        number_format(round($dpapems),0) }}</small>
                                </div>
                            </div>
                        </li>
                        <li class="d-flex mb-4 pb-1">
                            <div class="avatar flex-shrink-0 me-3">
                                <span class="avatar-initial rounded bg-label-success"><i
                                        class='bx bx-dollar'></i></span>
                            </div>
                            <div class="d-flex w-100 flex-wrap align-items-center justify-content-between gap-2">
                                <div class="me-2">
                                    <h6 class="mb-0">Sub Bagian</h6>
                                    <small class="text-muted">Program dan Keuangan</small>
                                </div>
                                <div class="user-progress">
                                    <small class="fw-medium">Rp. {{
                                        number_format(round($dpakeu),0) }}</small>
                                </div>
                            </div>
                        </li>
                        <li class="d-flex mb-4 pb-1">
                            <div class="avatar flex-shrink-0 me-3">
                                <span class="avatar-initial rounded bg-label-primary"><i class='bx bxs-cog'></i></span>
                            </div>
                            <div class="d-flex w-100 flex-wrap align-items-center justify-content-between gap-2">
                                <div class="me-2">
                                    <h6 class="mb-0">Sub Bagian</h6>
                                    <small class="text-muted">Tata Usaha</small>
                                </div>
                                <div class="user-progress">
                                    <small class="fw-medium">Rp. {{
                                        number_format(round($dpatu),0) }}</small>
                                </div>
                            </div>
                        </li>
                        <li class="d-flex mb-4 pb-1">
                            <div class="avatar flex-shrink-0 me-3">
                                <span class="avatar-initial rounded bg-label-danger "><i
                                        class='bx bxs-buildings'></i></span>
                            </div>
                            <div class="d-flex w-100 flex-wrap align-items-center justify-content-between gap-2">
                                <div class="me-2">
                                    <h6 class="mb-0">Seksi</h6>
                                    <small class="text-muted">Pemerintahan</small>
                                </div>
                                <div class="user-progress">
                                    <small class="fw-medium">Rp. {{
                                        number_format(round($dpapem),0) }}</small>
                                </div>
                            </div>
                        </li>
                        <li class="d-flex mb-4 pb-1">
                            <div class="avatar flex-shrink-0 me-3">
                                <span class="avatar-initial rounded bg-label-info "><i class='bx bxs-group'></i></span>
                            </div>
                            <div class="d-flex w-100 flex-wrap align-items-center justify-content-between gap-2">
                                <div class="me-2">
                                    <h6 class="mb-0">Seksi</h6>
                                    <small class="text-muted">Pelayanan</small>
                                </div>
                                <div class="user-progress">
                                    <h6 class="mb-0">Rp. {{
                                        number_format(round($dpapel),0) }}</small>
                                </div>
                            </div>
                        </li>
                        <li class="d-flex mb-4 pb-1">
                            <div class="avatar flex-shrink-0 me-3">
                                <span class="avatar-initial rounded bg-label-dark "><i class='bx bxs-cctv'></i></span>
                            </div>
                            <div class="d-flex w-100 flex-wrap align-items-center justify-content-between gap-2">
                                <div class="me-2">
                                    <h6 class="mb-0">Seksi</h6>
                                    <small class="text-muted">Ketentraman dan Ketertiban</small>
                                </div>
                                <div class="user-progress">
                                    <h6 class="mb-0">Rp. {{
                                        number_format(round($dpatrtb),0) }}</h6>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <!--/ Order Statistics -->



        <!-- Transactions -->
        <div class="col-md-6 col-lg-6 col-xl-6 order-0 mb-4">
            <div class="card h-100">
                <div class="card-header d-flex align-items-center justify-content-between">
                    <h5 class="card-title m-0 me-2">Sisa Anggaran Belum Di SPJ kan</h5>
                </div>
                <div class="card-body">
                    <ul class="p-0 m-0">
                        <div class="divider divider-dashed">
                            <div class="divider-text">--</div>
                        </div>
                        <li class="d-flex mb-4 pb-1">
                            <div class="avatar flex-shrink-0 me-3">
                                <span class="avatar-initial rounded bg-label-warning "><i
                                        class='bx bxs-donate-heart'></i></span>
                            </div>
                            <div class="d-flex w-100 flex-wrap align-items-center justify-content-between gap-2">
                                <div class="me-2">
                                    <small class="text-muted d-block mb-1">Seksi</small>
                                    <h6 class="mb-0">Pemberdayaan Masyarakat</h6>
                                </div>
                                <div class="user-progress d-flex align-items-center gap-1">
                                    <h6 class="mb-0">{{
                                        number_format(round($dpapems - $spjpems),0) }}</h6>
                                    <span class="text-muted">IDR</span>
                                </div>
                            </div>
                        </li>
                        <li class="d-flex mb-4 pb-1">
                            <div class="avatar flex-shrink-0 me-3">
                                <span class="avatar-initial rounded bg-label-success"><i
                                        class='bx bx-dollar'></i></span>
                            </div>
                            <div class="d-flex w-100 flex-wrap align-items-center justify-content-between gap-2">
                                <div class="me-2">
                                    <small class="text-muted d-block mb-1">Sub Bagian</small>
                                    <h6 class="mb-0">Program dan Keuangan</h6>
                                </div>
                                <div class="user-progress d-flex align-items-center gap-1">
                                    <h6 class="mb-0">{{
                                        number_format(round($dpakeu - $spjkeu),0) }}</h6>
                                    <span class="text-muted">IDR</span>
                                </div>
                            </div>
                        </li>
                        <div class="divider divider-dashed">
                            <div class="divider-text">--</div>
                        </div>
                        <li class="d-flex mb-4 pb-1">
                            <div class="avatar flex-shrink-0 me-3">
                                <span class="avatar-initial rounded bg-label-primary"><i class='bx bxs-cog'></i></span>
                            </div>
                            <div class="d-flex w-100 flex-wrap align-items-center justify-content-between gap-2">
                                <div class="me-2">
                                    <small class="text-muted d-block mb-1">Sub Bagian</small>
                                    <h6 class="mb-0">Tata Usaha</h6>
                                </div>
                                <div class="user-progress d-flex align-items-center gap-1">
                                    <h6 class="mb-0">{{
                                        number_format(round($dpatu - $spjtu),0) }}</h6>
                                    <span class="text-muted">IDR</span>
                                </div>
                            </div>
                        </li>
                        <li class="d-flex mb-4 pb-1">
                            <div class="avatar flex-shrink-0 me-3">
                                <span class="avatar-initial rounded bg-label-danger "><i
                                        class='bx bxs-buildings'></i></span>
                            </div>
                            <div class="d-flex w-100 flex-wrap align-items-center justify-content-between gap-2">
                                <div class="me-2">
                                    <small class="text-muted d-block mb-1">Seksi</small>
                                    <h6 class="mb-0">Pemerintahan</h6>
                                </div>
                                <div class="user-progress d-flex align-items-center gap-1">
                                    <h6 class="mb-0">{{
                                        number_format(round($dpapem - $spjpem),0) }}</h6>
                                    <span class="text-muted">IDR</span>
                                </div>
                            </div>
                        </li>
                        <div class="divider divider-dashed">
                            <div class="divider-text">--</div>
                        </div>
                        <li class="d-flex mb-4 pb-1">
                            <div class="avatar flex-shrink-0 me-3">
                                <span class="avatar-initial rounded bg-label-info "><i class='bx bxs-group'></i></span>
                            </div>
                            <div class="d-flex w-100 flex-wrap align-items-center justify-content-between gap-2">
                                <div class="me-2">
                                    <small class="text-muted d-block mb-1">Seksi</small>
                                    <h6 class="mb-0">Pelayanan</h6>
                                </div>
                                <div class="user-progress d-flex align-items-center gap-1">
                                    <h6 class="mb-0">{{
                                        number_format(round($dpapel - $spjpel),0) }}</h6>
                                    <span class="text-muted">IDR</span>
                                </div>
                            </div>
                        </li>
                        <li class="d-flex mb-4 pb-1">
                            <div class="avatar flex-shrink-0 me-3">
                                <span class="avatar-initial rounded bg-label-dark "><i class='bx bxs-cctv'></i></span>
                            </div>
                            <div class="d-flex w-100 flex-wrap align-items-center justify-content-between gap-2">
                                <div class="me-2">
                                    <small class="text-muted d-block mb-1">Seksi</small>
                                    <h6 class="mb-0">Ketentraman dan Ketertiban</h6>
                                </div>
                                <div class="user-progress d-flex align-items-center gap-1">
                                    <h6 class="mb-0">{{
                                        number_format(round($dpatrtb - $spjtrtb),0) }}</h6>
                                    <span class="text-muted">IDR</span>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <!--/ Transactions -->
    </div>
    @endsection