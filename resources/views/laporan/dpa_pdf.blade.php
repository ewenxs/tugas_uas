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
            width: 100%;
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
            font-size: 0.73em;
        }

        .styled-table tbody tr.spj_detail td {
            font-size: 0.66em;
            padding: 5px;
            margin: 5px;
            font-style: italic;
        }
    </style>
    @php
    $tahunNow = date('Y');
    @endphp

    <center>
        <h6>DOKUMEN PELAKSANAAN ANGGARAN</h6>
        <h6>TAHUN ANGGARAN {{$tahunNow}}</h6>
    </center>
    </br>
    </br>

    <table class='styled-table'>
        <tbody>
            <tr class="dpa_detail">
                <td style="width: 20%">NOMOR DPA</td>
                <td style="width: 2%">:</td>
                <td>{{$header_pdf_dpa->nomor_dpa}}</td>
            </tr>
            <tr class="dpa_detail">
                <td style="width: 20%">KEGIATAN</td>
                <td style="width: 2%">:</td>
                <td>{{$header_pdf_dpa->kode_kegiatan}} | {{$header_pdf_dpa->nama_kegiatan}}</td>
            </tr>
            <tr class="dpa_detail">
                <td style="width: 20%">SUB KEGIATAN</td>
                <td style="width: 2%">:</td>
                <td>{{$header_pdf_dpa->kode_sub_kegiatan}} | {{$header_pdf_dpa->nama_sub_kegiatan}}</td>
            </tr>
            <tr class="dpa_detail">
                <td style="width: 20%">JUMLAH ANGGARAN</td>
                <td style="width: 2%">:</td>
                <td>Rp. {{ number_format(round($sum_pdf_dpa->totaldpa),0) }}</td>
            </tr>
            <tr class="dpa_detail">
                <td style="width: 20%">SUMBER PENDANAAN</td>
                <td style="width: 2%">:</td>
                <td>{{$header_pdf_dpa->sumber_dana}}</td>
            </tr>
        </tbody>
    </table>

    <table class="styled-table">
        <thead>
            <tr style="text-align: center; ">
                <th>Kode Rekening</th>
                <th>Program</th>
                <th>Spesifikasi</th>
                <th>Volume</th>
                <th>Satuan</th>
                <th>Harga</th>
                <th>Jumlah</th>
            </tr>
        </thead>
        <tbody>
            @php $i=1 @endphp
            @foreach($detail_dpa as $dp)
            <tr class="spj_detail">
                <td style="width: 10%">{{$dp->no_rekening}}</td>
                <td style="width: 20%">{{$dp->nama_program}}</td>
                <td style="width: 35%">{{$dp->nama_barang}}</td>
                <td style="width: 5%; text-align: center;">{{ number_format($dp->volume) }}</td>
                <td style="width: 5%; text-align: center;">{{$dp->satuan}}</td>
                <td>Rp. {{ number_format(round($dp->harga),0) }}</td>
                <td>Rp. {{ number_format(round($dp->totaldpa),0) }}</td>
            </tr>
            @endforeach
        </tbody>
    </table>

</body>

</html>