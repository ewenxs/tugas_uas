<!DOCTYPE html>
<html>

<head>
    <title>DOKUMEN PELAKSANAAN ANGGARAN</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

</head>

<body>
    <style type="text/css">
        table tr td,
        table tr th {
            font-size: 9pt;
            vertical-align: middle;
        }
    </style>
    <center>
        <h6>DOKUMEN PELAKSANAAN ANGGARAN</h6>
        <h6>TAHUN ANGGARAN 2024</h6>
    </center>
    </br>
    </br>

    <table class='table table-bordered'>
        <tbody>
            <tr>
                <td style="width: 20%">NOMOR DPA</td>
                <td style="width: 2%">:</td>
                <td>{{$header_pdf_dpa->nomor_dpa}}</td>
            </tr>
            <tr>
                <td style="width: 20%">KEGIATAN</td>
                <td style="width: 2%">:</td>
                <td>{{$header_pdf_dpa->kode_kegiatan}} | {{$header_pdf_dpa->nama_kegiatan}}</td>
            </tr>
            <tr>
                <td style="width: 20%">SUB KEGIATAN</td>
                <td style="width: 2%">:</td>
                <td>{{$header_pdf_dpa->kode_sub_kegiatan}} | {{$header_pdf_dpa->nama_sub_kegiatan}}</td>
            </tr>
            <tr>
                <td style="width: 20%">JUMLAH ANGGARAN</td>
                <td style="width: 2%">:</td>
                <td>Rp. {{ number_format(round($sum_pdf_dpa->totaldpa),0) }}</td>
            </tr>
            <tr>
                <td style="width: 20%">SUMBER PENDANAAN</td>
                <td style="width: 2%">:</td>
                <td>{{$header_pdf_dpa->sumber_dana}}</td>
            </tr>
        </tbody>
    </table>

    <table class='table table-bordered'>
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
            <tr>
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