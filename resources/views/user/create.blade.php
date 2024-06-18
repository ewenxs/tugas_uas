@extends('layouts.master')

@section('content')
<div class="card">
  <div class="card-header pb-0">
    <h5>TAMBAH USER</h5>
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
      <form action="/user" method="POST">
        @csrf
        <div class="mb-3">
          <label for="exampleFormControlSelect1" class="form-label">Nama Lengkap</label>
          <input name="name" type="text" class="form-control" id="basic-default-fullname" placeholder="Nama Lengkap">
        </div>
        <div class="mb-3">
          <label for="exampleFormControlSelect1" class="form-label">Username</label>
          <input name="username" type="text" class="form-control" id="username" placeholder="Username">
          <span id="error_username"></span>
        </div>
        <div class="mb-3">
          <label class="form-label" for="basic-default-fullname">Email</label>
          <input name="email" type="text" class="form-control" id="basic-default-fullname" placeholder="Email">
        </div>
        <div class="mb-3">
          <label class="form-label" for="basic-default-fullname">Role</label>
          <select class="form-select" id="role" name="role" aria-label="Default select example">
            <option selected>Pilih level user</option>
            <option value="supervisor">Supervisor</option>
            <option value="pptk">PPTK</option>
            <option value="bendahara">Bendahara</option>
          </select>
        </div>
        <div class="mb-3">
          <label class="form-label" for="basic-default-fullname">Password</label>
          <input name="password" type="text" class="form-control" id="basic-default-fullname"
            placeholder="Nama Kegiatan">
          @if ($errors->has('password'))
          <span class="help-block text-danger">
            <strong>{{ $errors->first('password') }}</strong>
          </span>
          @endif
        </div>
        <div class="mb-3">
          <label class="form-label{{ $errors->has('password_confirmation') ? ' has-error' : '' }}"
            for="basic-default-fullname">Ulangi Password</label>
          <input name="password_confirmation" type="text" class="form-control" id="basic-default-fullname"
            placeholder="Nama Kegiatan">
          @if ($errors->has('password_confirmation'))
          <span class="help-block">
            <strong>{{ $errors->first('password_confirmation') }}</strong>
          </span>
          @endif
        </div>
        <button type="submit" id="register" class="btn btn-primary">Simpan</button>
        <a href="{{ url()->previous() }}" class="btn btn-warning"><i class="fa fa-angle-left"></i> Kembali</a>
      </form>
    </div>
  </div>
</div>
@endsection