@extends('layouts.admin', [
  'page_header' => "Thí sinh đạt điểm cao / {$topic->title}",
  'dash' => '',
  'quiz' => '',
  'users' => '',
  'questions' => '',
  'top_re' => 'active',
  'all_re' => '',
  'sett' => ''
])

@section('content')
  <div class="content-block box">
    <div class="box-body table-responsive">
      <table id="topTable" class="table table-striped">
        <thead>
          <tr>
            <th>#</th>
            <th>{{ trans('backLang.StudentName') }}</th>
            <th>{{ trans('backLang.Mobile') }}</th>
            <th>{{ trans('backLang.City') }}</th>
            <th>{{ trans('backLang.Topic') }}</th>
            <th>{{ trans('backLang.Marks') }}</th>
            <th>{{ trans('backLang.TotalMarks') }}</th>
          </tr>
        </thead>
        <tbody>
          @if ($answers)
            @foreach ($filtStudents as $key => $student)
              <tr>
                <td>
                  {{$key+1}}
                </td>
                <td>{{$student->name}}</td>
                <td>{{$student->mobile}}</td>
                <td>{{$student->city}}</td>
                <td>{{$topic->title}}</td>
                <td>
                  @php
                    $mark = 0;
                    $correct = collect();
                  @endphp
                  @foreach ($answers as $answer)
                    @if ($answer->answer === $answer->user_answer)
                      @php
                       $mark++;
                      @endphp
                    @endif
                  @endforeach
                  @php
                    $correct = $mark*$topic->per_q_mark;
                  @endphp
                  {{$correct}}
                </td>
                <td>
                  {{$c_que*$topic->per_q_mark}}
                </td>
              </tr>
            @endforeach
          @endif
        </tbody>
      </table>
    </div>
  </div>
@endsection
