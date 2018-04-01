@extends('layouts.app')

@section('head')
  <link href="{{ asset('css/app.css') }}" rel="stylesheet">
  <script>
    window.Laravel =  <?php echo json_encode([
        'csrfToken' => csrf_token(),
    ]); ?>
  </script>
@endsection

@section('content')
<div class="bg-cream">
  <div class="container">
    <div class="login-page">
      <div class="logo">
        @if ($setting)
          <a href="{{url('/')}}"><img src="{{asset('/images/logo/'.$setting->logo)}}" class="img-responsive login-logo" alt="logo"></a>
        @endif
      </div>
      <h3 class="user-register-heading text-center">Register</h3>
      <form class="form login-form" method="POST" action="{{ route('register') }}">
        {{ csrf_field() }}
        <div class="form-group{{ $errors->has('name') ? ' has-error' : '' }}">
          {!! Form::label('name', 'Họ và Tên') !!}
          {!! Form::text('name', null, ['class' => 'form-control', 'required' => 'required', 'placeholder' => 'Nhập Họ và tên']) !!}
          <small class="text-danger">{{ $errors->first('name') }}</small>
        </div>
        <div class="form-group{{ $errors->has('email') ? ' has-error' : '' }}">
          {!! Form::label('email', 'Địa chỉ email') !!}
          {!! Form::email('email', null, ['class' => 'form-control', 'placeholder' => 'vd: foo@bar.com']) !!}
          <small class="text-danger">{{ $errors->first('email') }}</small>
        </div>
        <div class="form-group{{ $errors->has('password') ? ' has-error' : '' }}">
          {!! Form::label('password', 'Mật khẩu') !!}
          {!! Form::password('password', ['class' => 'form-control', 'required' => 'required', 'placeholder'=>'Nhập mật khẩu']) !!}
          <small class="text-danger" style="color: red;background-color: #FFF;">{{ $errors->first('password') }}</small>
        </div>
        <div class="form-group{{ $errors->has('password_confirmation') ? ' has-error' : '' }}">
          {!! Form::label('password_confirmation', 'Xác nhận mật khẩu') !!}
          {!! Form::password('password_confirmation', ['class' => 'form-control', 'required' => 'required', 'placeholder'=>'Nhập lại mật khẩu']) !!}
          <small class="text-danger">{{ $errors->first('password_confirmation') }}</small>
        </div>
        <div class="mr-t-20">
          <button type="submit" class="btn btn-wave">{{ trans('frontLang.createdaccount') }}</button>
          <a href="{{url('/login')}}" class="text-center btn-block">{{ trans('frontLang.AlreadyHaveAccount') }}</a>
        </div>
      </form>
    </div>
  </div>
</div>
@endsection
