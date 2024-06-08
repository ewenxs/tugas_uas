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

$totSpj = $spjpem + $spjpel + $spjtrtb + $spjpems + $spjkeu + $spjtu;

$persenLra = ($totSpj/$totDpa)*100;
$perseSisaLra = 100 - $persenLra;

$persenPems = ($spjpems/$dpapems)*100;
$perseSisaPems = 100 - $persenPems;

$persenKeu = ($spjkeu/$dpakeu)*100;
$perseSisaKeu = 100 - $persenKeu;

$persenTu = ($spjtu/$dpatu)*100;
$perseSisaTu = 100 - $persenTu;

$persenPem = ($spjpem/$dpapem)*100;
$perseSisaPem = 100 - $persenPem;

$persenPel = ($spjpel/$dpapel)*100;
$perseSisaPel = 100 - $persenPel;

$persenTrtb = ($spjtrtb/$dpatrtb)*100;
$perseSisaTrtb = 100 - $persenTrtb;
@endphp


<!-- Content -->
<div class="container-xxl flex-grow-1 container-p-y">
    <div class="row">

        <!--/ LRA tiap seksi -->
        <div class="col-lg-2 col-md-12 col-2 mb-4">
            <div class="card">
                <div class="card-body">
                    <div class="card-title d-flex align-items-start justify-content-between">
                        <div class="avatar flex-shrink-0">
                            <img src="{{ asset('img/icons/unicons/chart-success.png') }}" alt="chart success"
                                class="rounded" />
                        </div>
                    </div>
                    <span>Pemberdayaan Masyarakat</span>
                    <h3 class="card-title mb-2">{{ number_format($persenPems, 2, '.', ',') }} %</h3>
                    <small class="text-success fw-medium"><i class="bx bx-up-arrow-alt"></i> Rp. {{
                        number_format(round($spjpems),0) }}</small>
                </div>
            </div>
        </div>

        <div class="col-lg-2 col-md-12 col-2 mb-4">
            <div class="card">
                <div class="card-body">
                    <div class="card-title d-flex align-items-start justify-content-between">
                        <div class="avatar flex-shrink-0">
                            <img src="{{ asset('img/icons/unicons/wallet-info.png') }}" alt="Credit Card"
                                class="rounded" />
                        </div>
                    </div>
                    <span>Program dan Keuangan</span>
                    <h3 class="card-title mb-2">{{ number_format($persenKeu, 2, '.', ',') }} %</h3>
                    <small class="text-success fw-medium"><i class="bx bx-up-arrow-alt"></i> Rp. {{
                        number_format(round($spjkeu),0) }}</small>
                </div>
            </div>
        </div>

        <div class="col-lg-2 col-md-12 col-2 mb-4">
            <div class="card">
                <div class="card-body">
                    <div class="card-title d-flex align-items-start justify-content-between">
                        <div class="avatar flex-shrink-0">
                            <img src="{{ asset('img/icons/unicons/paypal.png') }}" alt="Credit Card" class="rounded" />
                        </div>
                    </div>
                    <span>Tata Usaha</span>
                    <h3 class="card-title mb-2">{{ number_format($persenTu, 2, '.', ',') }} %</h3>
                    <small class="text-success fw-medium"><i class="bx bx-down-arrow-alt"></i> Rp. {{
                        number_format(round($spjtu),0) }}</small>
                </div>
            </div>
        </div>

        <div class="col-lg-2 col-md-12 col-2 mb-4">
            <div class="card">
                <div class="card-body">
                    <div class="card-title d-flex align-items-start justify-content-between">
                        <div class="avatar flex-shrink-0">
                            <img src="{{ asset('img/icons/unicons/cc-primary.png') }}" alt="Credit Card"
                                class="rounded" />
                        </div>
                    </div>
                    <span>Pemerintahan</span>
                    <h3 class="card-title mb-2">{{ number_format($persenPem, 2, '.', ',') }} %</h3>
                    <small class="text-success fw-medium"><i class="bx bx-up-arrow-alt"></i> Rp. {{
                        number_format(round($spjpem),0) }}</small>
                </div>
            </div>
        </div>

        <div class="col-lg-2 col-md-12 col-2 mb-4">
            <div class="card">
                <div class="card-body">
                    <div class="card-title d-flex align-items-start justify-content-between">
                        <div class="avatar flex-shrink-0">
                            <img src="{{ asset('img/icons/unicons/paypal.png') }}" alt="Credit Card" class="rounded" />
                        </div>
                    </div>
                    <span>Pelayanan</span>
                    <h3 class="card-title mb-2">{{ number_format($persenPel, 2, '.', ',') }} %</h3>
                    <small class="text-success fw-medium"><i class="bx bx-up-arrow-alt"></i> Rp. {{
                        number_format(round($spjpel),0) }}</small>
                </div>
            </div>
        </div>

        <div class="col-lg-2 col-md-12 col-2 mb-4">
            <div class="card">
                <div class="card-body">
                    <div class="card-title d-flex align-items-start justify-content-between">
                        <div class="avatar flex-shrink-0">
                            <img src="{{ asset('img/icons/unicons/cc-primary.png') }}" alt="Credit Card"
                                class="rounded" />
                        </div>
                    </div>
                    <span>Ketentraman dan Ketertiban</span>
                    <h3 class="card-title mb-2">{{ number_format($persenTrtb, 2, '.', ',') }} %</h3>
                    <small class="text-success fw-medium"><i class="bx bx-up-arrow-alt"></i> Rp. {{
                        number_format(round($spjtrtb),0) }}</small>
                </div>
            </div>
        </div>
        <!--/ LRA tiap seksi -->




        <!-- Total Revenue -->
        <div class="row">

            <!-- Order Statistics -->
            <div class="col-md-6 col-lg-4 col-xl-4 order-0 mb-4">
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
                                    <span class="avatar-initial rounded bg-label-primary"><i
                                            class="bx bx-mobile-alt"></i></span>
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
                                            class="bx bx-closet"></i></span>
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
                                    <span class="avatar-initial rounded bg-label-info"><i
                                            class="bx bx-home-alt"></i></span>
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
                                    <span class="avatar-initial rounded bg-label-secondary"><i
                                            class="bx bx-football"></i></span>
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
                                    <span class="avatar-initial rounded bg-label-secondary"><i
                                            class="bx bx-football"></i></span>
                                </div>
                                <div class="d-flex w-100 flex-wrap align-items-center justify-content-between gap-2">
                                    <div class="me-2">
                                        <h6 class="mb-0">Seksi</h6>
                                        <small class="text-muted">Pelayanan</small>
                                    </div>
                                    <div class="user-progress">
                                        <small class="fw-medium">Rp. {{
                                            number_format(round($dpapel),0) }}</small>
                                    </div>
                                </div>
                            </li>
                            <li class="d-flex mb-4 pb-1">
                                <div class="avatar flex-shrink-0 me-3">
                                    <span class="avatar-initial rounded bg-label-secondary"><i
                                            class="bx bx-football"></i></span>
                                </div>
                                <div class="d-flex w-100 flex-wrap align-items-center justify-content-between gap-2">
                                    <div class="me-2">
                                        <h6 class="mb-0">Seksi</h6>
                                        <small class="text-muted">Ketentraman dan Ketertiban</small>
                                    </div>
                                    <div class="user-progress">
                                        <small class="fw-medium">Rp. {{
                                            number_format(round($dpatrtb),0) }}</small>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <!--/ Order Statistics -->



            <!-- Transactions -->
            <div class="col-md-6 col-lg-4 order-2 mb-4">
                <div class="card h-100">
                    <div class="card-header d-flex align-items-center justify-content-between">
                        <h5 class="card-title m-0 me-2">Transactions</h5>
                        <div class="dropdown">
                            <button class="btn p-0" type="button" id="transactionID" data-bs-toggle="dropdown"
                                aria-haspopup="true" aria-expanded="false">
                                <i class="bx bx-dots-vertical-rounded"></i>
                            </button>
                            <div class="dropdown-menu dropdown-menu-end" aria-labelledby="transactionID">
                                <a class="dropdown-item" href="javascript:void(0);">Last 28 Days</a>
                                <a class="dropdown-item" href="javascript:void(0);">Last Month</a>
                                <a class="dropdown-item" href="javascript:void(0);">Last Year</a>
                            </div>
                        </div>
                    </div>
                    <div class="card-body">
                        <ul class="p-0 m-0">
                            <li class="d-flex mb-4 pb-1">
                                <div class="avatar flex-shrink-0 me-3">
                                    <img src="{{ asset('img/icons/unicons/paypal.png') }}" alt="User" class="rounded" />
                                </div>
                                <div class="d-flex w-100 flex-wrap align-items-center justify-content-between gap-2">
                                    <div class="me-2">
                                        <small class="text-muted d-block mb-1">Paypal</small>
                                        <h6 class="mb-0">Send money</h6>
                                    </div>
                                    <div class="user-progress d-flex align-items-center gap-1">
                                        <h6 class="mb-0">+82.6</h6>
                                        <span class="text-muted">USD</span>
                                    </div>
                                </div>
                            </li>
                            <li class="d-flex mb-4 pb-1">
                                <div class="avatar flex-shrink-0 me-3">
                                    <img src="{{ asset('img/icons/unicons/wallet.png') }}" alt="User" class="rounded" />
                                </div>
                                <div class="d-flex w-100 flex-wrap align-items-center justify-content-between gap-2">
                                    <div class="me-2">
                                        <small class="text-muted d-block mb-1">Wallet</small>
                                        <h6 class="mb-0">Mac'D</h6>
                                    </div>
                                    <div class="user-progress d-flex align-items-center gap-1">
                                        <h6 class="mb-0">+270.69</h6>
                                        <span class="text-muted">USD</span>
                                    </div>
                                </div>
                            </li>
                            <li class="d-flex mb-4 pb-1">
                                <div class="avatar flex-shrink-0 me-3">
                                    <img src="{{ asset('img/icons/unicons/chart.png') }}" alt="User" class="rounded" />
                                </div>
                                <div class="d-flex w-100 flex-wrap align-items-center justify-content-between gap-2">
                                    <div class="me-2">
                                        <small class="text-muted d-block mb-1">Transfer</small>
                                        <h6 class="mb-0">Refund</h6>
                                    </div>
                                    <div class="user-progress d-flex align-items-center gap-1">
                                        <h6 class="mb-0">+637.91</h6>
                                        <span class="text-muted">USD</span>
                                    </div>
                                </div>
                            </li>
                            <li class="d-flex mb-4 pb-1">
                                <div class="avatar flex-shrink-0 me-3">
                                    <img src="{{ asset('img/icons/unicons/cc-success.png') }}" alt="User"
                                        class="rounded" />
                                </div>
                                <div class="d-flex w-100 flex-wrap align-items-center justify-content-between gap-2">
                                    <div class="me-2">
                                        <small class="text-muted d-block mb-1">Credit Card</small>
                                        <h6 class="mb-0">Ordered Food</h6>
                                    </div>
                                    <div class="user-progress d-flex align-items-center gap-1">
                                        <h6 class="mb-0">-838.71</h6>
                                        <span class="text-muted">USD</span>
                                    </div>
                                </div>
                            </li>
                            <li class="d-flex mb-4 pb-1">
                                <div class="avatar flex-shrink-0 me-3">
                                    <img src="{{ asset('img/icons/unicons/wallet.png') }}" alt="User" class="rounded" />
                                </div>
                                <div class="d-flex w-100 flex-wrap align-items-center justify-content-between gap-2">
                                    <div class="me-2">
                                        <small class="text-muted d-block mb-1">Wallet</small>
                                        <h6 class="mb-0">Starbucks</h6>
                                    </div>
                                    <div class="user-progress d-flex align-items-center gap-1">
                                        <h6 class="mb-0">+203.33</h6>
                                        <span class="text-muted">USD</span>
                                    </div>
                                </div>
                            </li>
                            <li class="d-flex">
                                <div class="avatar flex-shrink-0 me-3">
                                    <img src="{{ asset('img/icons/unicons/cc-warning.png') }}" alt="User"
                                        class="rounded" />
                                </div>
                                <div class="d-flex w-100 flex-wrap align-items-center justify-content-between gap-2">
                                    <div class="me-2">
                                        <small class="text-muted d-block mb-1">Mastercard</small>
                                        <h6 class="mb-0">Ordered Food</h6>
                                    </div>
                                    <div class="user-progress d-flex align-items-center gap-1">
                                        <h6 class="mb-0">-92.45</h6>
                                        <span class="text-muted">USD</span>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <!--/ Transactions -->
        </div>
    </div>
</div>
@endsection