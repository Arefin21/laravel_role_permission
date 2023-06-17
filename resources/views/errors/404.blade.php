@extends('errors.errors_layouts');

@section('title')
    404 - Page not Found!
@endsection 

@section('error-content')
        <h2>404</h2>
        <p>Sorry! Page not Found...</p>
        <P>{{$exception->getmessage()}}</P>
        <hr>
        <a href="{{route('admin.dashboard')}}">Back to Dashboard</a>
        <a href="{{route('admin.login')}}">Login Again</a>
@endsection