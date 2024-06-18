<!DOCTYPE html>
<html>

<head>
    <title>DOKUMEN PELAKSANAAN ANGGARAN</title>

</head>

<body>
    <style type="text/css">
        h6 {
            font-family: Arial, Helvetica, sans-serif;
            font-size: 1em;
            padding: 0px;
            margin: 5px;
        }

        .styled-table {
            border-collapse: collapse;
            margin: 20px 0;
            font-family: sans-serif;
            min-width: 400px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.15);
        }

        .styled-table thead tr {
            background-color: #009879;
            color: #ffffff;
            text-align: left;
            text-transform: uppercase;
        }

        .styled-table thead tr th {
            font-size: 0.7em;
        }

        .styled-table th,
        .styled-table td {
            padding: 12px 15px;
        }

        .styled-table tbody tr {
            border-bottom: 1px solid #dddddd;
        }

        .styled-table tbody tr.dpa_detail td {
            font-size: 0.6em;
        }

        .styled-table tbody tr.total_jml td {
            text-transform: uppercase;
            font-size: 0.7em;
        }

        .styled-table tbody tr.spj_detail td {
            font-size: 0.6em;
            padding: 5px;
            margin: 5px;
            font-style: italic;
        }
    </style>
    @php
    $tahunNow = date('Y');

    $from2 = strtotime($from);
    $to2 = strtotime($to);

    $fromNew = date("d-m-Y", $from2);
    $toNew = date("d-m-Y", $to2);

    if ($pencairan == 'no') {
    $header_lap = "SPJ YANG BELUM DICAIRKAN";
    }elseif ($pencairan == 'yes') {
    $header_lap = "SPJ YANG TELAH DICAIRKAN";
    }else {
    $header_lap = "SEMUA SPJ YANG MASUK";
    }
    @endphp

    <center>
        <h6>LAPORAN REALISASI ANGGARAN</h6>
        <h6>{{$header_lap}}</h6>
        <h6>TANGGAL {{$fromNew}} S/D TANGGAL {{$toNew}}</h6>
        <h6>TAHUN ANGGARAN {{$tahunNow}}</h6>
    </center>
    </br>
    </br>


    <table class="styled-table">
        <thead>
            <tr style="text-align: center; ">
                <th>kode kegiatan</th>
                <th>kode sub kegiatan</th>
                <th>kode rekening</th>
                <th>program</th>
                <th>nominal</th>
                <th>pagu anggaran</th>
                <th>sisa anggaran</th>
                <th>realisasi</th>
            </tr>
        </thead>
        <tbody>
            @php
            $i=1;
            $sumNominal = 0;
            $sumPaguAnggaran = 0;
            $sumSisaAnggaran = 0;
            @endphp
            @foreach($tr_spj as $dp)
            @php
            $sisa_anggaran = $dp->anggaran - $dp->nominal;
            $persentase = ($dp->nominal/$dp->anggaran)*100;
            @endphp
            <tr class="dpa_detail">
                <td>{{$dp->kode_kegiatan}}</td>
                <td>{{$dp->kode_sub_kegiatan}}</td>
                <td>{{$dp->no_rekening}}</td>
                <td><b><i>{{$dp->nama_program}}</i></b><br>{{$dp->nama_barang}}</td>
                <td>Rp. {{ number_format(round($dp->nominal),0) }}</td>
                <td>Rp. {{ number_format(round($dp->anggaran),0) }}</td>
                <td>Rp. {{ number_format(round($sisa_anggaran),0) }}</td>
                <td>{{ number_format($persentase, 2, '.', ',') }} %</td>
            </tr>

            @php

            $sumNominal += $dp->nominal;
            $sumPaguAnggaran += $dp->anggaran;
            $sumSisaAnggaran += $sisa_anggaran;

            if ($pencairan == 'no') {
            $td_spj = DB::table('spjs')
            ->join('detail_spjs', 'spjs.id', '=', 'detail_spjs.spj_id')
            ->join('rekenings', 'rekenings.id', '=', 'detail_spjs.rekening_id')
            ->join('programs', 'programs.id', '=', 'detail_spjs.program_id')
            ->select('spjs.tanggal_spj as tanggal_spj',
            'spjs.jenis_spj as jenis_spj',
            'spjs.uraian as uraian',
            'detail_spjs.satuan as satuan',
            'detail_spjs.harga as harga',
            'rekenings.no_rekening as no_rekening',
            'programs.nama_program as nama_program',
            'detail_spjs.rekening_id as rekening_id',
            'detail_spjs.program_id as program_id',
            )
            ->where('detail_spjs.rekening_id','=', $dp->rekening_id)
            ->where('detail_spjs.program_id','=', $dp->program_id)
            ->where('detail_spjs.detail_dpa_id','=', $dp->detail_dpa_id)
            ->where('detail_spjs.harga','>', 0)
            ->whereNotIn('spjs.id', function($q){
            $q->select('spj_id')->from('pencairans');
            })
            ->whereBetween('spjs.tanggal_spj', [$from, $to])
            ->orderBy('rekenings.no_rekening','ASC')
            ->orderBy('programs.nama_program','ASC')
            ->get();
            }elseif ($pencairan == 'yes') {
            $td_spj = DB::table('spjs')
            ->join('detail_spjs', 'spjs.id', '=', 'detail_spjs.spj_id')
            ->join('rekenings', 'rekenings.id', '=', 'detail_spjs.rekening_id')
            ->join('programs', 'programs.id', '=', 'detail_spjs.program_id')
            ->select('spjs.tanggal_spj as tanggal_spj',
            'spjs.jenis_spj as jenis_spj',
            'spjs.uraian as uraian',
            'detail_spjs.satuan as satuan',
            'detail_spjs.harga as harga',
            'rekenings.no_rekening as no_rekening',
            'programs.nama_program as nama_program',
            'detail_spjs.rekening_id as rekening_id',
            'detail_spjs.program_id as program_id',
            )
            ->where('detail_spjs.rekening_id','=', $dp->rekening_id)
            ->where('detail_spjs.program_id','=', $dp->program_id)
            ->where('detail_spjs.detail_dpa_id','=', $dp->detail_dpa_id)
            ->where('detail_spjs.harga','>', 0)
            ->whereIn('spjs.id', function($q){
            $q->select('spj_id')->from('pencairans');
            })
            ->whereBetween('spjs.tanggal_spj', [$from, $to])
            ->orderBy('rekenings.no_rekening','ASC')
            ->orderBy('programs.nama_program','ASC')
            ->get();
            }else {
            $td_spj = DB::table('spjs')
            ->join('detail_spjs', 'spjs.id', '=', 'detail_spjs.spj_id')
            ->join('rekenings', 'rekenings.id', '=', 'detail_spjs.rekening_id')
            ->join('programs', 'programs.id', '=', 'detail_spjs.program_id')
            ->select('spjs.tanggal_spj as tanggal_spj',
            'spjs.jenis_spj as jenis_spj',
            'spjs.uraian as uraian',
            'detail_spjs.satuan as satuan',
            'detail_spjs.harga as harga',
            'rekenings.no_rekening as no_rekening',
            'programs.nama_program as nama_program',
            'detail_spjs.rekening_id as rekening_id',
            'detail_spjs.program_id as program_id',
            )
            ->where('detail_spjs.rekening_id','=', $dp->rekening_id)
            ->where('detail_spjs.program_id','=', $dp->program_id)
            ->where('detail_spjs.detail_dpa_id','=', $dp->detail_dpa_id)
            ->where('detail_spjs.harga','>', 0)
            ->whereBetween('spjs.tanggal_spj', [$from, $to])
            ->orderBy('rekenings.no_rekening','ASC')
            ->orderBy('programs.nama_program','ASC')
            ->get();
            }



            @endphp
            @foreach($td_spj as $dt)
            <tr class="spj_detail">
                <td></td>
                <td></td>
                <td></td>
                <td>
                    @php
                    $jm=$dt->satuan*$dt->harga
                    @endphp
                    {{ $dt->tanggal_spj }} | {{ $dt->jenis_spj }} <br> {{ $dt->uraian }} <br>
                    Qty / Harga : {{ $dt->satuan }} x Rp. {{ number_format(round($dt->harga),0) }}
                </td>
                <td>Rp. {{ number_format(round($jm),0) }}</td>
                <td></td>
                <td></td>
                <td></td>
            </tr>
            @endforeach
            @endforeach
            @php
            $totalPersentase = ($sumNominal/$sumPaguAnggaran)*100;
            @endphp
            <tr class="total_jml">
                <td></td>
                <td></td>
                <td></td>
                <td><b><i>Total Jumlah</i></b></td>
                <td><b><i>Rp. {{ number_format(round($sumNominal),0) }}</i></b></td>
                <td><b><i>Rp. {{ number_format(round($sumPaguAnggaran),0) }}</i></b></td>
                <td><b><i>Rp. {{ number_format(round($sumSisaAnggaran),0) }}</i></b></td>
                <td><b><i>{{ number_format($totalPersentase, 2, '.', ',') }} %</i></b></td>
            </tr>
        </tbody>
    </table>

</body>

</html>