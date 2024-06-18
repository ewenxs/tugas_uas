<!DOCTYPE html>

<html lang="en" class="light-style layout-menu-fixed layout-compact" dir="ltr" data-theme="theme-default"
  data-assets-path="{{ asset('')}}" data-template="vertical-menu-template-free">

<head>
  <meta charset="utf-8" />
  <meta name="viewport"
    content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0" />

  <title>Sistem Informasi Pelaporan Realisasi Anggaran Kecamatan Kademangan</title>
  <meta name="csrf-token" content="{{ csrf_token() }}">

  <!-- Favicon -->
  <link rel="icon" type="image/x-icon" href="{{ asset('img/favicon/favicon.ico')}}" />

  <!-- Fonts -->
  <link rel="preconnect" href="https://fonts.googleapis.com" />
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
  <link
    href="https://fonts.googleapis.com/css2?family=Public+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&display=swap"
    rel="stylesheet" />

  <link rel="stylesheet" href="{{ asset('vendor/fonts/boxicons.css')}}" />

  <!-- Core CSS -->
  <link rel="stylesheet" href="{{ asset('vendor/css/core.css')}}" class="template-customizer-core-css" />
  <link rel="stylesheet" href="{{ asset('vendor/css/theme-default.css')}}" class="template-customizer-theme-css" />
  <link rel="stylesheet" href="{{ asset('css/demo.css')}}" />
  <link href="{{ asset('vendor/libs/datatables/dataTables.bootstrap5.min.css')}}" rel="stylesheet">
  <!-- Vendors CSS -->
  <link rel="stylesheet" href="{{ asset('vendor/libs/perfect-scrollbar/perfect-scrollbar.css')}}" />
  <link rel="stylesheet" href="{{ asset('vendor/libs/apex-charts/apex-charts.css')}}" />
  <link rel="stylesheet" href="{{ asset('vendor/libs/air-datepicker/air-datepicker.css')}}" />

  <!-- Page CSS -->

  <link href="{{ asset('vendor/libs/select2/select2.min.css')}}" rel="stylesheet" />
  <link rel="stylesheet" href="{{ asset('vendor/libs/select2/select2-bootstrap-5-theme.min.css')}}" />

  <!-- Helpers -->
  <script src="{{ asset('vendor/js/helpers.js')}}"></script>
  <!--! Template customizer & Theme config files MUST be included after core stylesheets and helpers.js in the <head> section -->
  <!--? Config:  Mandatory theme config file contain global vars & default theme options, Set your preferred theme option in this file.  -->
  <script src="{{ asset('js/config.js')}}"></script>


</head>
@php
$user = Auth::user();
@endphp

<body>
  <!-- Layout wrapper -->
  <div class="layout-wrapper layout-content-navbar">
    <div class="layout-container">
      <!-- Menu -->

      <aside id="layout-menu" class="layout-menu menu-vertical menu bg-menu-theme">
        <div class="app-brand demo">
          <a href="index.html" class="app-brand-link">
            <span class="app-brand-logo demo">
              <svg width="25" viewBox="0 0 25 42" version="1.1" xmlns="http://www.w3.org/2000/svg"
                xmlns:xlink="http://www.w3.org/1999/xlink">
                <defs>
                  <path
                    d="M13.7918663,0.358365126 L3.39788168,7.44174259 C0.566865006,9.69408886 -0.379795268,12.4788597 0.557900856,15.7960551 C0.68998853,16.2305145 1.09562888,17.7872135 3.12357076,19.2293357 C3.8146334,19.7207684 5.32369333,20.3834223 7.65075054,21.2172976 L7.59773219,21.2525164 L2.63468769,24.5493413 C0.445452254,26.3002124 0.0884951797,28.5083815 1.56381646,31.1738486 C2.83770406,32.8170431 5.20850219,33.2640127 7.09180128,32.5391577 C8.347334,32.0559211 11.4559176,30.0011079 16.4175519,26.3747182 C18.0338572,24.4997857 18.6973423,22.4544883 18.4080071,20.2388261 C17.963753,17.5346866 16.1776345,15.5799961 13.0496516,14.3747546 L10.9194936,13.4715819 L18.6192054,7.984237 L13.7918663,0.358365126 Z"
                    id="path-1"></path>
                  <path
                    d="M5.47320593,6.00457225 C4.05321814,8.216144 4.36334763,10.0722806 6.40359441,11.5729822 C8.61520715,12.571656 10.0999176,13.2171421 10.8577257,13.5094407 L15.5088241,14.433041 L18.6192054,7.984237 C15.5364148,3.11535317 13.9273018,0.573395879 13.7918663,0.358365126 C13.5790555,0.511491653 10.8061687,2.3935607 5.47320593,6.00457225 Z"
                    id="path-3"></path>
                  <path
                    d="M7.50063644,21.2294429 L12.3234468,23.3159332 C14.1688022,24.7579751 14.397098,26.4880487 13.008334,28.506154 C11.6195701,30.5242593 10.3099883,31.790241 9.07958868,32.3040991 C5.78142938,33.4346997 4.13234973,34 4.13234973,34 C4.13234973,34 2.75489982,33.0538207 2.37032616e-14,31.1614621 C-0.55822714,27.8186216 -0.55822714,26.0572515 -4.05231404e-15,25.8773518 C0.83734071,25.6075023 2.77988457,22.8248993 3.3049379,22.52991 C3.65497346,22.3332504 5.05353963,21.8997614 7.50063644,21.2294429 Z"
                    id="path-4"></path>
                  <path
                    d="M20.6,7.13333333 L25.6,13.8 C26.2627417,14.6836556 26.0836556,15.9372583 25.2,16.6 C24.8538077,16.8596443 24.4327404,17 24,17 L14,17 C12.8954305,17 12,16.1045695 12,15 C12,14.5672596 12.1403557,14.1461923 12.4,13.8 L17.4,7.13333333 C18.0627417,6.24967773 19.3163444,6.07059163 20.2,6.73333333 C20.3516113,6.84704183 20.4862915,6.981722 20.6,7.13333333 Z"
                    id="path-5"></path>
                </defs>
                <g id="g-app-brand" stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                  <g id="Brand-Logo" transform="translate(-27.000000, -15.000000)">
                    <g id="Icon" transform="translate(27.000000, 15.000000)">
                      <g id="Mask" transform="translate(0.000000, 8.000000)">
                        <mask id="mask-2" fill="white">
                          <use xlink:href="#path-1"></use>
                        </mask>
                        <use fill="#696cff" xlink:href="#path-1"></use>
                        <g id="Path-3" mask="url(#mask-2)">
                          <use fill="#696cff" xlink:href="#path-3"></use>
                          <use fill-opacity="0.2" fill="#FFFFFF" xlink:href="#path-3"></use>
                        </g>
                        <g id="Path-4" mask="url(#mask-2)">
                          <use fill="#696cff" xlink:href="#path-4"></use>
                          <use fill-opacity="0.2" fill="#FFFFFF" xlink:href="#path-4"></use>
                        </g>
                      </g>
                      <g id="Triangle"
                        transform="translate(19.000000, 11.000000) rotate(-300.000000) translate(-19.000000, -11.000000) ">
                        <use fill="#696cff" xlink:href="#path-5"></use>
                        <use fill-opacity="0.2" fill="#FFFFFF" xlink:href="#path-5"></use>
                      </g>
                    </g>
                  </g>
                </g>
              </svg>
            </span>
            <span class="app-brand-text demo menu-text fw-bold ms-2">SIPRA</span>
          </a>

          <a href="javascript:void(0);" class="layout-menu-toggle menu-link text-large ms-auto d-block d-xl-none">
            <i class="bx bx-chevron-left bx-sm align-middle"></i>
          </a>
        </div>

        <div class="menu-inner-shadow"></div>

        <ul class="menu-inner py-1">
          <?php $role = Auth::user()->role; ?>
          @if($role == 'admin')
          <!-- Dashboards -->
          <li class="menu-item {{ request()->is('dashboard') ? 'active open' : '' }}">
            <a href="javascript:void(0);" class="menu-link menu-toggle">
              <i class="menu-icon tf-icons bx bx-home-circle"></i>
              <div data-i18n="Dashboards">Dashboards</div>
            </a>
            <ul class="menu-sub">
              <li class="menu-item {{ request()->is('dashboard') ? 'active' : '' }}">
                <a href="/dashboard" class="menu-link">
                  <div data-i18n="Analytics">Dashboard</div>
                </a>
              </li>
            </ul>
          </li>
          <!-- Layouts -->
          <li class="menu-item {{ request()->is('bagian') ? 'active open' : '' }}">
            <a href="javascript:void(0);" class="menu-link menu-toggle">
              <i class='menu-icon tf-icons bx bxs-building-house'></i>
              <div data-i18n="Layouts">Seksi/Subbag</div>
            </a>

            <ul class="menu-sub">
              <li class="menu-item {{ request()->is('bagian') ? 'active' : '' }}">
                <a href="/bagian" class="menu-link">
                  <div data-i18n="Without menu">Data Seksi/Subbag</div>
                </a>
              </li>
            </ul>
          </li>

          <li class="menu-item {{ request()->is('rekening') ? 'active open' : '' }}">
            <a href="javascript:void(0);" class="menu-link menu-toggle">
              <i class="menu-icon tf-icons bx bx-dollar"></i>
              <div data-i18n="Layouts">Rekening</div>
            </a>

            <ul class="menu-sub">
              <li class="menu-item {{ request()->is('rekening') ? 'active' : '' }}">
                <a href="/rekening" class="menu-link">
                  <div data-i18n="Without menu">Data Rekening</div>
                </a>
              </li>
              <li class="menu-item {{ request()->is('group_rekening') ? 'active' : '' }}">
                <a href="/group_rekening" class="menu-link">
                  <div data-i18n="Without menu">Data Group Rekening</div>
                </a>
              </li>
            </ul>
          </li>

          <li class="menu-item {{ request()->is('kegiatan') || request()->is('sub_kegiatan') ? 'active open' : '' }}">
            <a href="javascript:void(0);" class="menu-link menu-toggle">
              <i class="menu-icon tf-icons bx bx-grid-alt"></i>
              <div data-i18n="Layouts">Kegiatan</div>
            </a>
            <ul class="menu-sub">
              <li class="menu-item {{ request()->is('kegiatan') ? 'active' : '' }}">
                <a href="/kegiatan" class="menu-link">
                  <div data-i18n="Without menu">Data Kegiatan</div>
                </a>
              </li>
            </ul>
            <ul class="menu-sub">
              <li class="menu-item {{ request()->is('sub_kegiatan') ? 'active' : '' }}">
                <a href="/sub_kegiatan" class="menu-link">
                  <div data-i18n="Without menu">Data Sub Kegiatan</div>
                </a>
              </li>
            </ul>
          </li>

          <li class="menu-item {{ request()->is('program') ? 'active open' : '' }}">
            <a href="javascript:void(0);" class="menu-link menu-toggle">
              <i class="menu-icon tf-icons bx bxs-cube"></i>
              <div data-i18n="Layouts">Program</div>
            </a>

            <ul class="menu-sub">
              <li class="menu-item {{ request()->is('program') ? 'active' : '' }}">
                <a href="/program" class="menu-link">
                  <div data-i18n="Without menu">Data Program</div>
                </a>
              </li>
            </ul>
          </li>

          <li class="menu-item {{ request()->is('penjabaran') || request()->is('dpa') ? 'active open' : '' }}">
            <a href="javascript:void(0);" class="menu-link menu-toggle">
              <i class="menu-icon tf-icons bx bxs-spreadsheet"></i>
              <div data-i18n="Layouts">DPA</div>
            </a>
            <ul class="menu-sub">
              <li class="menu-item {{ request()->is('penjabaran') ? 'active' : '' }}">
                <a href="/penjabaran" class="menu-link">
                  <div data-i18n="Without menu">Data Penjabaran</div>
                </a>
              </li>
            </ul>
            <ul class="menu-sub">
              <li class="menu-item {{ request()->is('dpa') ? 'active' : '' }}">
                <a href="/dpa" class="menu-link">
                  <div data-i18n="Without menu">Data DPA</div>
                </a>
              </li>
            </ul>
          </li>
          <li class="menu-item {{ request()->is('spj') || request()->is('pencairan') ? 'active open' : '' }}">
            <a href="javascript:void(0);" class="menu-link menu-toggle">
              <i class="menu-icon tf-icons bx bxs-folder-open"></i>
              <div data-i18n="Layouts">SPJ</div>
            </a>
            <ul class="menu-sub">
              <li class="menu-item {{ request()->is('spj') ? 'active' : '' }}">
                <a href="/spj" class="menu-link">
                  <div data-i18n="Without menu">Data SPJ</div>
                </a>
              </li>
              <li class="menu-item {{ request()->is('pencairan') ? 'active' : '' }}">
                <a href="/pencairan" class="menu-link">
                  <div data-i18n="Without menu">Data SPJ Cair</div>
                </a>
              </li>
            </ul>
          </li>
          <li
            class="menu-item {{ request()->is('laporan/cetak_dpa') || request()->is('laporan/cetak_lra') ? 'active open' : '' }}">
            <a href="javascript:void(0);" class="menu-link menu-toggle">
              <i class="menu-icon tf-icons bx bxs-printer"></i>
              <div data-i18n="Layouts">Laporan</div>
            </a>
            <ul class="menu-sub">
              <li class="menu-item {{ request()->is('laporan/cetak_dpa') ? 'active' : '' }}">
                <a href="/laporan/cetak_dpa" class="menu-link">
                  <div data-i18n="Without menu">Cetak DPA</div>
                </a>
              </li>
            </ul>
            <ul class="menu-sub">
              <li class="menu-item {{ request()->is('laporan/cetak_lra') ? 'active' : '' }}">
                <a href="/laporan/cetak_spj" class="menu-link">
                  <div data-i18n="Without menu">Cetak LRA</div>
                </a>
              </li>
            </ul>
          </li>
          <li class="menu-item {{ request()->is('user') ? 'active' : '' }}">
            <a href="javascript:void(0);" class="menu-link menu-toggle">
              <i class="menu-icon tf-icons bx bxs-user-account"></i>
              <div data-i18n="Layouts">User</div>
            </a>
            <ul class="menu-sub">
              <li class="menu-item {{ request()->is('user') ? 'active' : '' }}">
                <a href="/user" class="menu-link">
                  <div data-i18n="Without menu">Data User</div>
                </a>
              </li>
            </ul>
          </li>
          @elseif($role == 'bendahara')
          <!-- Dashboards -->
          <li class="menu-item {{ request()->is('dashboard') ? 'active open' : '' }}">
            <a href="javascript:void(0);" class="menu-link menu-toggle">
              <i class="menu-icon tf-icons bx bx-home-circle"></i>
              <div data-i18n="Dashboards">Dashboards</div>
            </a>
            <ul class="menu-sub">
              <li class="menu-item {{ request()->is('dashboard') ? 'active' : '' }}">
                <a href="/dashboard" class="menu-link">
                  <div data-i18n="Analytics">Dashboard</div>
                </a>
              </li>
            </ul>
          </li>
          <li class="menu-item {{ request()->is('spj') || request()->is('pencairan') ? 'active open' : '' }}">
            <a href="javascript:void(0);" class="menu-link menu-toggle">
              <i class="menu-icon tf-icons bx bxs-folder-open"></i>
              <div data-i18n="Layouts">SPJ</div>
            </a>
            <ul class="menu-sub">
              <li class="menu-item {{ request()->is('spj') ? 'active' : '' }}">
                <a href="/spj" class="menu-link">
                  <div data-i18n="Without menu">Data SPJ</div>
                </a>
              </li>
              <li class="menu-item {{ request()->is('pencairan') ? 'active' : '' }}">
                <a href="/pencairan" class="menu-link">
                  <div data-i18n="Without menu">Data SPJ Cair</div>
                </a>
              </li>
            </ul>
          </li>
          <li
            class="menu-item {{ request()->is('laporan/cetak_dpa') || request()->is('laporan/cetak_lra') ? 'active open' : '' }}">
            <a href="javascript:void(0);" class="menu-link menu-toggle">
              <i class="menu-icon tf-icons bx bxs-printer"></i>
              <div data-i18n="Layouts">Laporan</div>
            </a>
            <ul class="menu-sub">
              <li class="menu-item {{ request()->is('laporan/cetak_dpa') ? 'active' : '' }}">
                <a href="/laporan/cetak_dpa" class="menu-link">
                  <div data-i18n="Without menu">Cetak DPA</div>
                </a>
              </li>
            </ul>
            <ul class="menu-sub">
              <li class="menu-item {{ request()->is('laporan/cetak_lra') ? 'active' : '' }}">
                <a href="/laporan/cetak_spj" class="menu-link">
                  <div data-i18n="Without menu">Cetak LRA</div>
                </a>
              </li>
            </ul>
          </li>
          @elseif($role == 'pptk')
          <!-- Dashboards -->
          <li class="menu-item {{ request()->is('dashboard') ? 'active open' : '' }}">
            <a href="javascript:void(0);" class="menu-link menu-toggle">
              <i class="menu-icon tf-icons bx bx-home-circle"></i>
              <div data-i18n="Dashboards">Dashboards</div>
            </a>
            <ul class="menu-sub">
              <li class="menu-item {{ request()->is('dashboard') ? 'active' : '' }}">
                <a href="/dashboard" class="menu-link">
                  <div data-i18n="Analytics">Dashboard</div>
                </a>
              </li>
            </ul>
          </li>

          <li class="menu-item {{ request()->is('penjabaran') || request()->is('dpa') ? 'active open' : '' }}">
            <a href="javascript:void(0);" class="menu-link menu-toggle">
              <i class="menu-icon tf-icons bx bxs-spreadsheet"></i>
              <div data-i18n="Layouts">DPA</div>
            </a>
            <ul class="menu-sub">
              <li class="menu-item {{ request()->is('dpa') ? 'active' : '' }}">
                <a href="/dpa" class="menu-link">
                  <div data-i18n="Without menu">Data DPA</div>
                </a>
              </li>
            </ul>
          </li>
          <li
            class="menu-item {{ request()->is('laporan/cetak_dpa') || request()->is('laporan/cetak_lra') ? 'active open' : '' }}">
            <a href="javascript:void(0);" class="menu-link menu-toggle">
              <i class="menu-icon tf-icons bx bxs-printer"></i>
              <div data-i18n="Layouts">Laporan</div>
            </a>
            <ul class="menu-sub">
              <li class="menu-item {{ request()->is('laporan/cetak_dpa') ? 'active' : '' }}">
                <a href="/laporan/cetak_dpa" class="menu-link">
                  <div data-i18n="Without menu">Cetak DPA</div>
                </a>
              </li>
            </ul>
            <ul class="menu-sub">
              <li class="menu-item {{ request()->is('laporan/cetak_lra') ? 'active' : '' }}">
                <a href="/laporan/cetak_spj" class="menu-link">
                  <div data-i18n="Without menu">Cetak LRA</div>
                </a>
              </li>
            </ul>
          </li>
          @elseif($role == 'supervisor')
          <!-- Dashboards -->
          <li class="menu-item {{ request()->is('dashboard') ? 'active open' : '' }}">
            <a href="javascript:void(0);" class="menu-link menu-toggle">
              <i class="menu-icon tf-icons bx bx-home-circle"></i>
              <div data-i18n="Dashboards">Dashboards</div>
            </a>
            <ul class="menu-sub">
              <li class="menu-item {{ request()->is('dashboard') ? 'active' : '' }}">
                <a href="/dashboard" class="menu-link">
                  <div data-i18n="Analytics">Dashboard</div>
                </a>
              </li>
            </ul>
          </li>
          <li
            class="menu-item {{ request()->is('laporan/cetak_dpa') || request()->is('laporan/cetak_lra') ? 'active open' : '' }}">
            <a href="javascript:void(0);" class="menu-link menu-toggle">
              <i class="menu-icon tf-icons bx bxs-printer"></i>
              <div data-i18n="Layouts">Laporan</div>
            </a>
            <ul class="menu-sub">
              <li class="menu-item {{ request()->is('laporan/cetak_dpa') ? 'active' : '' }}">
                <a href="/laporan/cetak_dpa" class="menu-link">
                  <div data-i18n="Without menu">Cetak DPA</div>
                </a>
              </li>
            </ul>
            <ul class="menu-sub">
              <li class="menu-item {{ request()->is('laporan/cetak_lra') ? 'active' : '' }}">
                <a href="/laporan/cetak_spj" class="menu-link">
                  <div data-i18n="Without menu">Cetak LRA</div>
                </a>
              </li>
            </ul>
          </li>
          @endif



        </ul>
      </aside>
      <!-- / Menu -->

      <!-- Layout container -->
      <div class="layout-page">
        <!-- Navbar -->

        <nav
          class="layout-navbar container-xxl navbar navbar-expand-xl navbar-detached align-items-center bg-navbar-theme"
          id="layout-navbar">
          <div class="layout-menu-toggle navbar-nav align-items-xl-center me-3 me-xl-0 d-xl-none">
            <a class="nav-item nav-link px-0 me-xl-4" href="javascript:void(0)">
              <i class="bx bx-menu bx-sm"></i>
            </a>
          </div>

          <div class="navbar-nav-right d-flex align-items-center" id="navbar-collapse">
            <!-- Search -->
            <div class="navbar-nav align-items-center">
              <div class="nav-item d-flex align-items-center">

              </div>
            </div>
            <!-- /Search -->

            <ul class="navbar-nav flex-row align-items-center ms-auto">

              <!-- User -->
              <li class="nav-item navbar-dropdown dropdown-user dropdown">
                <a class="nav-link dropdown-toggle hide-arrow" href="javascript:void(0);" data-bs-toggle="dropdown">
                  <div class="avatar avatar-online">
                    <img src="{{ asset('img/avatars/8.png')}}" alt class="w-px-40 h-auto rounded-circle" />
                  </div>
                </a>
                <ul class="dropdown-menu dropdown-menu-end">
                  <li>
                    <a class="dropdown-item" href="#">
                      <div class="d-flex">
                        <div class="flex-shrink-0 me-3">
                          <div class="avatar avatar-online">
                            <img src="{{ asset('img/avatars/8.png')}}" alt class="w-px-40 h-auto rounded-circle" />
                          </div>
                        </div>
                        <div class="flex-grow-1">
                          <span class="fw-medium d-block">{{ $user->name }}</span>
                          <small class="text-muted">{{ $user->role }}</small>
                        </div>
                      </div>
                    </a>
                  </li>
                  <li>
                    <div class="dropdown-divider"></div>
                  </li>
                  <li>
                    <a class="dropdown-item" href="{{ route('logout') }}" onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
                      <i class="bx bx-power-off me-2"></i>
                      <span class="align-middle">{{ __('Logout') }}</span>
                    </a>
                    <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
                      @csrf
                    </form>
                  </li>
                </ul>
              </li>
              <!--/ User -->
            </ul>
          </div>
        </nav>

        <!-- / Navbar -->

        <!-- Content wrapper -->
        <div class="content-wrapper">
          <!-- Content -->
          @if(session()->has('success'))
          <div class="alert alert-primary d-flex" role="alert">
            <span class="badge badge-center rounded-pill bg-primary border-label-primary p-3 me-2"><i
                class='bx bx-like bx-flashing'></i></span>
            <div class="d-flex flex-column ps-1">
              <h6 class="alert-heading d-flex align-items-center fw-bold mb-1">Notifikasi </h6>
              <span>{{ session('success') }}</span>
            </div>
          </div>
          @endif
          @yield('content')
        </div>
        <!-- / Content -->


        @yield('dash')


        <!-- Footer -->
        <footer class="content-footer footer bg-footer-theme">
          <div class="container-xxl d-flex flex-wrap justify-content-between py-2 flex-md-row flex-column">
            <div class="mb-2 mb-md-0">
              ©
              <script>
                document.write(new Date().getFullYear());
              </script>
              , made with ❤️ by
              <a href="https://themeselection.com" target="_blank" class="footer-link fw-medium">ThemeSelection</a>
            </div>
            <div class="d-none d-lg-inline-block">
              <a href="https://themeselection.com/license/" class="footer-link me-4" target="_blank">License</a>
              <a href="https://themeselection.com/" target="_blank" class="footer-link me-4">More Themes</a>

              <a href="https://demos.themeselection.com/sneat-bootstrap-html-admin-template/documentation/"
                target="_blank" class="footer-link me-4">Documentation</a>

              <a href="https://github.com/themeselection/sneat-html-admin-template-free/issues" target="_blank"
                class="footer-link">Support</a>
            </div>
          </div>
        </footer>
        <!-- / Footer -->

        <div class="content-backdrop fade"></div>
      </div>
      <!-- Content wrapper -->
    </div>
    <!-- / Layout page -->
  </div>

  <!-- Overlay -->
  <div class="layout-overlay layout-menu-toggle"></div>
  </div>
  <!-- / Layout wrapper -->

  <!-- Core JS -->
  <!-- build:js assets/vendor/js/core.js -->

  <script src="{{ asset('vendor/libs/jquery/jquery.js')}}"></script>
  <script src="{{ asset('vendor/libs/popper/popper.js')}}"></script>
  <script src="{{ asset('vendor/js/bootstrap.js')}}"></script>
  <script src="{{ asset('vendor/libs/perfect-scrollbar/perfect-scrollbar.js')}}"></script>
  <script src="{{ asset('vendor/js/menu.js')}}"></script>
  <script src="{{ asset('vendor/libs/air-datepicker/air-datepicker.js')}}"></script>
  <script src="{{ asset('vendor/libs/air-datepicker/locale/id.js')}}"></script>
  <script src="{{ asset('vendor/libs/select2/select2.min.js')}}"></script>
  <!-- endbuild -->

  <script src="{{ asset('vendor/libs/validate/jquery.validate.js')}}"></script>
  <script src="{{ asset('vendor/libs/datatables/jquery.dataTables.min.js')}}"></script>
  <script src="{{ asset('vendor/libs/datatables/dataTables.bootstrap5.min.js')}}"></script>
  <!-- Vendors JS -->
  <script src="{{ asset('vendor/libs/apex-charts/apexcharts.js')}}"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.13.4/jquery.mask.min.js"></script>

  <!-- Main JS -->
  <script src="{{ asset('js/main.js')}}"></script>
  <script src="https://cdn.jsdelivr.net/gh/plentz/jquery-maskmoney@master/dist/jquery.maskMoney.min.js"></script>


  <!-- Page JS -->
  <script src="{{ asset('js/dashboards-analytics.js')}}"></script>

  <!-- Place this tag in your head or just before your close body tag. -->
  <script async defer src="https://buttons.github.io/buttons.js"></script>



</body>

<script type="text/javascript">
  $(document).ready(function(){
    new AirDatepicker('.datepickerTglSpj1', {
      autoClose: true
    })
    new AirDatepicker('.datepickerTglSpj2', {
      autoClose: true
    })
    new AirDatepicker('.datepickerTglSpj', {
      autoClose: true
    })
    new AirDatepicker('.datepickerTglKontrak', {
      autoClose: true
    })
    new AirDatepicker('.datepickerTglBaphp', {
      autoClose: true
    }) 
    new AirDatepicker('.datepickerTglBast', {
      autoClose: true
    })       
    new AirDatepicker('.datepickerTglCair', {
      autoClose: true
    })       
});
</script>
<!-- Start DataTables. -->
<script type="text/javascript">
  $(function () {  
    var table = $('#data_table_user').DataTable({
        processing: true,
        responsive: true,
        orderable: true,
        serverSide: true,
        order: [[ 1, 'asc' ]],
        ajax: "{{ route('user.index') }}",
        columns: [
          {  
            "data": null,
            "class": "align-top",
            "orderable": false,
            "searchable": false,
            "render": function (data, type, row, meta) {
                return meta.row + meta.settings._iDisplayStart + 1;
            }  
          },  
            {data: 'name', name: 'name'},
            {data: 'username', name: 'username'},
            {data: 'email', name: 'email'},
            {data: 'role', name: 'role'},
            {data: 'action', name: 'action', orderable: false, searchable: false},
        ]
      });

      var table = $('#data_table_bagian').DataTable({
        processing: true,
        responsive: true,
        orderable: true,
        serverSide: true,
        order: [[ 1, 'asc' ]],
        ajax: "{{ route('bagian.index') }}",
        columns: [
          {  
            "data": null,
            "class": "align-top",
            "orderable": false,
            "searchable": false,
            "render": function (data, type, row, meta) {
                return meta.row + meta.settings._iDisplayStart + 1;
            }  
          },  
            {data: 'nama_bagian', name: 'nama_bagian'},
            {data: 'action', name: 'action', orderable: false, searchable: false},
        ]
      });
   
    var table = $('#data_table_rekening').DataTable({
        processing: true,
        responsive: true,
        orderable: true,
        serverSide: true,
        order: [[ 1, 'asc' ]],
        ajax: "{{ route('rekening.index') }}",
        columns: [
          {  
            "data": null,
            "class": "align-top",
            "orderable": false,
            "searchable": false,
            "render": function (data, type, row, meta) {
                return meta.row + meta.settings._iDisplayStart + 1;
            }  
          }, 
            {data: 'no_rekening', name: 'no_rekening'},
            {data: 'nama_rekening', name: 'nama_rekening'},
            {data: 'action', name: 'action', orderable: false, searchable: false},
        ]
    });

    var table = $('#data_table_kegiatan').DataTable({
        processing: true,
        responsive: true,
        orderable: true,
        serverSide: true,
        order: [[ 1, 'asc' ]],
        ajax: "{{ route('kegiatan.index') }}",
        columns: [
          {  
            "data": null,
            "class": "align-top",
            "orderable": false,
            "searchable": false,
            "render": function (data, type, row, meta) {
                return meta.row + meta.settings._iDisplayStart + 1;
            }  
          }, 
            {data: 'kode_kegiatan', name: 'kode_kegiatan'},
            {data: 'nama_kegiatan', name: 'nama_kegiatan'},
            {data: 'nama_bagian', name: 'nama_bagian'},
            {data: 'action', name: 'action', orderable: false, searchable: false},
        ]
    });

    var table = $('#data_table_program').DataTable({
        processing: true,
        responsive: true,
        orderable: true,
        serverSide: true,
        order: [[ 1, 'asc' ]],
        ajax: "{{ route('program.index') }}",
        columns: [
          {  
            "data": null,
            "class": "align-top",
            "orderable": false,
            "searchable": false,
            "render": function (data, type, row, meta) {
                return meta.row + meta.settings._iDisplayStart + 1;
            }  
          }, 
            {data: 'nama_program', name: 'nama_program'},
            {data: 'action', name: 'action', orderable: false, searchable: false},
        ]
    });
       
    var table = $('#data_table_sub_kegiatan').DataTable({
        processing: true,
        responsive: true,
        orderable: true,
        serverSide: true,
        order: [[ 1, 'asc' ]],
        ajax: "{{ route('sub_kegiatan.index') }}",
        columns: [
          {  
            "data": null,
            "class": "align-top",
            "orderable": false,
            "searchable": false,
            "render": function (data, type, row, meta) {
                return meta.row + meta.settings._iDisplayStart + 1;
            }  
          }, 
            {data: 'kode_kegiatan', name: 'kode_kegiatan'},
            {data: 'nama_kegiatan', name: 'nama_kegiatan'},
            {data: 'kode_sub_kegiatan', name: 'kode_sub_kegiatan'},
            {data: 'nama_sub_kegiatan', name: 'nama_sub_kegiatan'},
            {data: 'action', name: 'action', orderable: false, searchable: false},
        ]
    });
    
    var table = $('#data_table_group_rekening').DataTable({
        processing: true,
        responsive: true,
        orderable: true,
        serverSide: true,
        order: [[ 1, 'asc' ]],
        ajax: "{{ route('group_rekening.index') }}",
        columns: [
          {  
            "data": null,
            "class": "align-top",
            "orderable": false,
            "searchable": false,
            "render": function (data, type, row, meta) {
                return meta.row + meta.settings._iDisplayStart + 1;
            }  
          }, 
            {data: 'kode_kegiatan', name: 'kode_kegiatan'},
            {data: 'nama_kegiatan', name: 'nama_kegiatan'},
            {data: 'kode_sub_kegiatan', name: 'kode_sub_kegiatan'},
            {data: 'nama_sub_kegiatan', name: 'nama_sub_kegiatan'},
            {data: 'action', name: 'action', orderable: false, searchable: false},
        ]
    });
    
    var table = $('#data_table_penjabaran').DataTable({
        processing: true,
        responsive: true,
        orderable: true,
        serverSide: true,
        order: [[ 1, 'asc' ]],
        ajax: "{{ route('penjabaran.index') }}",
        columns: [
          {  
            "data": null,
            "class": "align-top",
            "orderable": false,
            "searchable": false,
            "render": function (data, type, row, meta) {
                return meta.row + meta.settings._iDisplayStart + 1;
            }  
          }, 
            {data: 'nomor_dpa', name: 'nomor_dpa'},
            {data: 'action', name: 'action', orderable: false, searchable: false},
        ]
    });   

    var table = $('#data_table_dpa').DataTable({
        processing: true,
        responsive: true,
        orderable: true,
        serverSide: true,
        order: [[ 1, 'asc' ]],
        ajax: "{{ route('dpa.index') }}",
        columns: [
          {  
            "data": null,
            "class": "align-top",
            "orderable": false,
            "searchable": false,
            "render": function (data, type, row, meta) {
                return meta.row + meta.settings._iDisplayStart + 1;
            }  
          }, 
            {data: 'nomor_dpa', name: 'nomor_dpa'},
            {data: 'nama_bagian', name: 'nama_bagian'},
            {data: 'kode_kegiatan', name: 'kode_kegiatan'},
            {data: 'kode_sub_kegiatan', name: 'kode_sub_kegiatan'},
            {data: 'no_rekening', name: 'no_rekening'},
            {data: 'nama_program', name: 'nama_program'},
            {data: 'action', name: 'action', orderable: false, searchable: false},
        ]
    });  


    var table = $('#data_table_spj').DataTable({
        processing: true,
        responsive: true,
        orderable: true,
        serverSide: true,
        order: [[ 1, 'asc' ]],
        ajax: "{{ route('spj.index') }}",
        columns: [
          {  
            "data": null,
            "class": "align-top",
            "orderable": false,
            "searchable": false,
            "render": function (data, type, row, meta) {
                return meta.row + meta.settings._iDisplayStart + 1;
            }  
          }, 
            {data: 'tanggal_spj', name: 'tanggal_spj'},
            {data: 'uraian', name: 'uraian'},
            {data: 'nama_bagian', name: 'nama_bagian'},
            {data: 'kode_kegiatan', name: 'kode_kegiatan'},
            {data: 'kode_sub_kegiatan', name: 'kode_sub_kegiatan'},
            {data: 'total_spj', name: 'total_spj'},
            {data: 'action', name: 'action', orderable: false, searchable: false},
        ]
    }); 
    
    var table = $('#data_table_pencairan').DataTable({
        processing: true,
        responsive: true,
        orderable: true,
        serverSide: true,
        order: [[ 1, 'asc' ]],
        ajax: "{{ route('pencairan.index') }}",
        columns: [
          {  
            "data": null,
            "class": "align-top",
            "orderable": false,
            "searchable": false,
            "render": function (data, type, row, meta) {
                return meta.row + meta.settings._iDisplayStart + 1;
            }  
          }, 
            {data: 'tanggal_spj', name: 'tanggal_spj'},
            {data: 'uraian', name: 'uraian'},
            {data: 'nama_bagian', name: 'nama_bagian'},
            {data: 'kode_sub_kegiatan', name: 'kode_sub_kegiatan'},
            {data: 'total_spj', name: 'total_spj'},
            {data: 'action', name: 'action', orderable: false, searchable: false},
        ]
    }); 

  var table = $('#data_table_pilih_cair').DataTable({
        processing: true,
        responsive: true,
        orderable: true,
        serverSide: true,
        order: [[ 1, 'asc' ]],
        ajax: "{{ route('pencairan.create') }}",
        columns: [
          {  
            "data": null,
            "class": "align-top",
            "orderable": false,
            "searchable": false,
            "render": function (data, type, row, meta) {
                return meta.row + meta.settings._iDisplayStart + 1;
            }  
          }, 
            {data: 'tanggal_spj', name: 'tanggal_spj'},
            {data: 'uraian', name: 'uraian'},
            {data: 'nama_bagian', name: 'nama_bagian'},
            {data: 'kode_sub_kegiatan', name: 'kode_sub_kegiatan'},
            {data: 'nama_sub_kegiatan', name: 'nama_sub_kegiatan'},
            {data: 'total_spj', name: 'total_spj'},
        ]
    });   

    var table = $('#data_table_pilih_cair').DataTable();
    var tableBody = '#data_table_pilih_cair tbody';
    $(tableBody).on('click', 'tr', function () {
        var cursor = table.row($(this));//get the clicked row
        var data=cursor.data();// this will give you the data in the current row.
        $('#exLargeModal').modal('toggle');
        $('.tanggal_spj p').text(data["tanggal_spj"]);
        $('.nama_bagian p').text(data["nama_bagian"]);
        $('.kode_sub_kegiatan p').text(data["kode_sub_kegiatan"]+ ' | ' + data["nama_sub_kegiatan"]);
        $('.total_spj p').text('Rp. ' + data["total_spj"]);
        $('.uraian p').text(data["uraian"]);
        document.getElementById("spj_id").value = data["spj_id"];
    } );    
  });

</script>
<!-- End DataTables. -->

<!-- Start Select2. -->
<script type="text/javascript">
  $('.livesearch_jenis_spj').select2({
        theme: "bootstrap-5",
        allowClear: true,
        width: '100%',
        placeholder: 'Pilih jenis SPJ'
    });

    $('.livesearch_pilih_rekening').select2({
        theme: "bootstrap-5",
        allowClear: true,
        width: '100%',
        placeholder: 'Pilih rekening',
        ajax: {
            url: '/select2/pilih_rek',
            dataType: 'json',
            delay: 250,
            processResults: function (data) {
                return {
                    results: $.map(data, function (item) {
                        return {
                            text: item.no_rekening+' | '+item.nama_rekening,
                            id: item.id
                        }
                    })
                };
            },
            cache: true
        }
    });
    $('.livesearch_kegiatan_all').select2({
        theme: "bootstrap-5",
        allowClear: true,
        width: '100%',
        placeholder: 'Pilih nama kegiatan',
        ajax: {
            url: '/select2/pilih_keg',
            dataType: 'json',
            delay: 250,
            processResults: function (data) {
                return {
                    results: $.map(data, function (item) {
                        return {
                            text: item.kode_kegiatan+' | '+item.nama_kegiatan,
                            id: item.id
                        }
                    })
                };
            },
            cache: true
        }
    });

    $('.livesearch_kegiatan').select2({
        theme: "bootstrap-5",
        allowClear: true,
        width: '100%',
        placeholder: 'Pilih nama kegiatan',
        ajax: {
            url: '/select2/pilih_keg',
            dataType: 'json',
            delay: 250,
            processResults: function (data) {
                return {
                    results: $.map(data, function (item) {
                        return {
                            text: item.kode_kegiatan+' | '+item.nama_kegiatan,
                            id: item.id
                        }
                    })
                };
            },
            cache: true
        }
    });

    $(".livesearch_kegiatan").change(function(){
                let id = $('.livesearch_kegiatan').val();

                $(".livesearch_sub_kegiatan").select2({
                theme: "bootstrap-5",
                allowClear: true,
                width: '100%',
                placeholder:'Pilih Sub Kegiatan',
                ajax: {
                  url: '/select2/pilih_Subkeg/'+ id,
                    processResults: function({data}){
                        return {
                            results: $.map(data, function(item){
                                return {
                                    id: item.id,
                                    text: item.kode_sub_kegiatan+' | '+item.nama_sub_kegiatan,
                                }
                            })
                        }
                    }
                }
            });
   });

        $(".livesearch_daftar_rekening").select2({
        theme: "bootstrap-5",
        allowClear: true,
        width: '100%',
        placeholder: 'Pilih nama rekening',
        ajax: {
            url: "/select2/daftar_rek",
            processResults: function (data) {
                return {
                    results: $.map(data, function (item) {
                        return {
                            id: item.id,
                            text: item.no_rekening+' | '+item.nama_rekening
                        }
                    })
                }
              }
            }
        });

        $('.livesearch_bagian').select2({
        theme: "bootstrap-5",
        allowClear: true,
        width: '100%',
        placeholder: 'Pilih nama bagian',
        ajax: {
            url: '/select2/pilih_bag',
            dataType: 'json',
            delay: 250,
            processResults: function (data) {
                return {
                    results: $.map(data, function (item) {
                        return {
                            text: item.nama_bagian,
                            id: item.id
                        }
                    })
                };
            },
            cache: true
        }
    });

    $('.livesearch_program').select2({
        theme: "bootstrap-5",
        allowClear: true,
        width: '100%',
        placeholder: 'Pilih nama program',
        ajax: {
            url: '/select2/pilih_prog',
            dataType: 'json',
            delay: 250,
            processResults: function (data) {
                return {
                    results: $.map(data, function (item) {
                        return {
                            text: item.nama_program,
                            id: item.id
                        }
                    })
                };
            },
            cache: true
        }
    });

    $('.livesearch_penjabaran').select2({
        theme: "bootstrap-5",
        allowClear: true,
        width: '100%',
        placeholder: 'Pilih penjabaran',
        ajax: {
            url: '/select2/pilih_penjabaran',
            dataType: 'json',
            delay: 250,
            processResults: function (data) {
                return {
                    results: $.map(data, function (item) {
                        return {
                            text: item.nomor_dpa,
                            id: item.id
                        }
                    })
                };
            },
            cache: true
        }
    });
</script>
<!-- End Select2. -->

<!-- Start Select2 SPJ. -->
<script type="text/javascript">
  $('.livesearch_bagian_spj').select2({
        theme: "bootstrap-5",
        allowClear: true,
        width: '100%',
        placeholder: 'Pilih nama Seksi/Subbag',
        ajax: {
            url: '/select2/pilih_bag_spj',
            dataType: 'json',
            delay: 250,
            processResults: function (data) {
                return {
                    results: $.map(data, function (item) {
                        return {
                            text: item.nama_bagian,
                            id: item.id
                        }
                    })
                };
            },
            cache: true
        }
    });    

    $(".livesearch_bagian_spj").change(function(){
                let id = $('.livesearch_bagian_spj').val();

                $(".livesearch_kegiatan_spj").select2({
                theme: "bootstrap-5",
                allowClear: true,
                width: '100%',
                placeholder:'Pilih Kegiatan',
                ajax: {
                  url: '/select2/pilih_keg_spj/'+ id,
                    processResults: function({data}){
                        return {
                            results: $.map(data, function(item){
                                return {
                                    id: item.id,
                                    text: item.kode_kegiatan+' | '+item.nama_kegiatan,
                                }
                            })
                        }
                    }
                }
            });
   });    

   $(".livesearch_kegiatan_spj").change(function(){
                let id = $('.livesearch_kegiatan_spj').val();

                $(".livesearch_sub_kegiatan_spj").select2({
                theme: "bootstrap-5",
                allowClear: true,
                width: '100%',
                placeholder:'Pilih Sub Kegiatan',
                ajax: {
                  url: '/select2/pilih_SubkegSpj/'+ id,
                    processResults: function({data}){
                        return {
                            results: $.map(data, function(item){
                                return {
                                    id: item.id,
                                    text: item.kode_sub_kegiatan+' | '+item.nama_sub_kegiatan,
                                }
                            })
                        }
                    }
                }
            });
   }); 

$(document).ready(function(){

  fetch_customer_data();
  
  function fetch_customer_data(query = '')
  {
      $.ajax({
          url:'/select2/tampil_list_rek/',
          method:'GET',
          data:{query:query},
          dataType:'json',
          success:function(data)
          {
              $('#spj').html(data.table_data);
              $('#total_records').text(data.total_data);
          }
      })
  }

      $(".sub_keg_spj_create").change(function(){
          var query = $('.sub_keg_spj_create').val();
          fetch_customer_data(query);
      });

      $('#satuan').keyup(calculate);
      $('#harga').keyup(calculate);
          
      function calculate(e)
      {
          $('#jumlah').val($('#satuan').val() * $('#harga').val());
      }




});

</script>
<!-- End Select2 SPJ. -->

<!-- Start Dynamic Button. -->
<script type="text/javascript">
  function BtnAdd()
{
    /*Add Button*/
    var v = $("#TRow").clone().appendTo("#TBody") ;
    $(v).find("input").val('');
    $(v).removeClass("d-none");
    $(v).find("th").first().html($('#TBody tr').length - 1);
}

function BtnDel(v)
{
    /*Delete Button*/
       $(v).parent().parent().remove(); 
       /*GetTotal();*/

        $("#TBody").find("tr").each(
        function(index)
        {
           $(this).find("th").first().html(index);
        }

       );
}

function Calc(v)
{
    /*Detail Calculation Each Row*/
    var index = $(v).parent().parent().index();
    
    var qty = document.getElementsByName("volume[]")[index].value;
    var rate = document.getElementsByName("harga[]")[index].value;

    var amt = qty * rate;
    document.getElementsByName("total_harga[]")[index].value = Math.round(amt);

    /*GetTotal();*/
}

function Calculated(v)
{
    /*Detail Calculation Each Row*/
    var index = $(v).parent().parent().index();
    
    var qty = document.getElementsByName("satuanspj[]")[index].value;
    var rate = document.getElementsByName("hargaspj[]")[index].value;

    var amt = qty * rate;

    document.getElementsByName("jumlahspj[]")[index].value = Math.round(amt);

    var jmlSpjHidden = document.getElementsByName("sisa_anggaran_hidden[]")[index].value;
    var jmlSpj = document.getElementsByName("jumlahspj[]")[index].value;
    

    if(jmlSpj <= 0){      
      var jmlSpjHidden = document.getElementsByName("sisa_anggaran_hidden[]")[index].value;
      document.getElementsByName("sisa_anggaran[]")[index].value = Math.round(jmlSpjHidden);
    }else{
      var sisaAkhir = jmlSpjHidden - jmlSpj;
      document.getElementsByName("sisa_anggaran[]")[index].value = Math.round(sisaAkhir);
    }

    var sum=0;
    $(".jumlahspj").each(function(){
        if($(this).val() !== "")
          sum += parseInt($(this).val());   
    });

    sum = sum.toLocaleString("id-ID");
    $('#myBtn').text('Jumlah: Rp.'+sum);

    /*GetTotal();*/
}


$(document).ready(function(){
  $("#myInput").on("keyup", function() {
    var value = $(this).val().toLowerCase();
    $(".spj tr").filter(function() {
      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
    });
  });
});


$(document).ready(function(){
    $('#hargaspj').maskMoney();
  });

// Get the button
let mybutton = document.getElementById("myBtn");

// When the user scrolls down 20px from the top of the document, show the button
window.onscroll = function() {scrollFunction()};

function scrollFunction() {
  if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
    mybutton.style.display = "block";
  } else {
    mybutton.style.display = "none";
  }
}

// When the user clicks on the button, scroll to the top of the document
function topFunction() {
  document.body.scrollTop = 0;
  document.documentElement.scrollTop = 0;
}  

$(document).ready(function(){

$('#username').blur(function(){
 var error_uname = '';
 var username = $('#username').val();
 var _token = $('input[name="_token"]').val();

 
  $.ajax({
   url:"{{ route('uname_available.check') }}",
   method:"POST",
   data:{username:username, _token:_token},
   success:function(result)
   {
    if(result == 'unique')
    {
     $('#error_username').html('<label class="text-success">Username Tersedia</label>');
     $('#username').removeClass('has-error');
     $('#register').attr('disabled', false);
    }
    else
    {
     $('#error_username').html('<label class="text-danger">Username Tidak Tersedia</label>');
     $('#username').addClass('has-error');
     $('#register').attr('disabled', 'disabled');
    }
   }
  })
  
});

});


</script>

<!-- End Dynamic Button. -->

</html>