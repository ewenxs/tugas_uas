@extends('layouts.master')

@section('content')
<div class="card">
      <div class="card-header pb-0">
          <h5>Edit Grup Rekening</h5>
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
          <form action="/group_rekening/{{ $group_rekening->id }}" method="POST">
            @method('put')
            @csrf
            <input type="hidden" name="id" value="{{ $group_rekening->id }}">
            <div class="mb-3">
              <label for="exampleFormControlSelect1" class="form-label">Nama kegiatan</label>
              <select class="livesearch_kegiatan form-select  @error('kegiatans') is-invalid @enderror"  name="kegiatan_id">
                @foreach($kegiatans as $kegiatan)
                    <option value="{{$kegiatan->keg_id}}" @if($kegiatan->keg_id === $sub_kegiatan->kegiatan_id) selected="selected" @endif>{{$kegiatan->nama_kegiatan}}</option>
                @endforeach                
              </select>
            </div> 
            <div class="mb-3">
              <label for="exampleFormControlSelect1" class="form-label">Nama Sub kegiatan</label>
              <select class="livesearch_sub_kegiatan form-select  @error('kegiatans') is-invalid @enderror"  name="sub_kegiatan_id">
                @foreach($sub_kegiatan_news as $sub_keg_new)
                    <option value="{{$sub_keg_new->id}}" @if($sub_keg_new->id === $sub_kegiatan->id) selected="selected" @endif>{{$sub_keg_new->nama_sub_kegiatan}}</option>
                @endforeach                
              </select>
            </div>
            <div class="mb-3">
              <label for="exampleFormControlSelect1" class="form-label">Nama Rekening</label>
              <select name="rekening_id[]" class="livesearch_daftar_rekening" id="rekening_multiple" multiple="multiple">
                @foreach($list_rekening as $list_rek)
                  <option value="{{$list_rek->id }}" selected> {{$list_rek->nama_rekening}}</option>
                  @endforeach
              </select>
            </div>
            <button type="submit" class="btn btn-primary">Simpan</button>
            <a href="{{ url()->previous() }}" class="btn btn-warning"><i class="fa fa-angle-left"></i> Kembali</a>
          </form>
      </div>
    </div>
</div>
@endsection