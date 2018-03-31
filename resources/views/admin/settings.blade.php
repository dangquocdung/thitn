@extends('layouts.admin', [
  'page_header' => 'App Settings',
  'dash' => '',
  'quiz' => '',
  'users' => '',
  'questions' => '',
  'top_re' => '',
  'all_re' => '',
  'sett' => 'active'
])
@section('content')

  @php
    $setting = $settings[0];
  @endphp
  {!! Form::model($setting, ['method' => 'PATCH', 'action' => ['SettingController@update', $setting->id], 'files' => true]) !!}
  <div class="row">
    <div class="col-md-8">
      <div class="box">
        <div class="box-body settings-block">
          <div class="form-group{{ $errors->has('welcome_txt') ? ' has-error' : '' }}">
            {!! Form::label('welcome_txt', 'Welcome Text') !!}
            {!! Form::text('welcome_txt', null, ['class' => 'form-control']) !!}
            <small class="text-danger">{{ $errors->first('welcome_txt') }}</small>
          </div>
          <div class="row">
            <div class="col-md-6">
              <div class="form-group{{ $errors->has('logo') ? ' has-error' : '' }}">
                {!! Form::label('logo', 'Logo Select') !!}
                {!! Form::file('logo') !!}
                <small class="text-danger">{{ $errors->first('logo') }}</small>
              </div>
              <div class="logo-block">
                <img src="{{asset('/images/logo/'. $setting->logo)}}" class="img-responsive"  alt="logo">
              </div>
            </div>
            <div class="col-md-6">
              <div class="form-group{{ $errors->has('favicon') ? ' has-error' : '' }}">
                {!! Form::label('favicon', 'Favicon Select') !!}
                {!! Form::file('favicon') !!}
                <small class="text-danger">{{ $errors->first('favicon') }}</small>
              </div>
            </div>
          </div>
          {!! Form::submit("Save Setting", ['class' => 'btn btn-wave btn-block']) !!}
        </div>
      </div>
    </div>
  </div>
  {!! Form::close() !!}

@endsection
