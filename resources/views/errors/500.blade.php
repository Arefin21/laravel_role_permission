@extends('errors.errors_layouts');

@section('title')
    500 - Internal Server Error !
@endsection 

@section('error-content')
        <h2>500</h2>
        <p>Internal Server Error !</p>
        <P>{{$exception->getmessage()}}</P>
        <hr>
        <a href="{{route('admin.dashboard')}}">Back to Dashboard</a>
        <a href="{{route('admin.login')}}">Login Again</a>
@endsection