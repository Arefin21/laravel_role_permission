@extends('errors.errors_layouts');

@section('title')
    403 - Access Denied!
@endsection 
   
@section('error-content')
        <h2>403</h2>
        <p>Access to this resource on the server is denied</p>
        <P>{{$exception->getmessage()}}</P>
        <hr>
        <a href="{{route('admin.dashboard')}}">Back to Dashboard</a>
        <a href="{{route('admin.login')}}">Login Again</a>
@endsection