@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-12 ">
            <div class="panel panel-default">
                <div class="panel-heading">Students<a href="{{url('add-stud')}}" class="pull-right">Create</a></div>

                <div class="panel-body">
                    <table width="100%">
                        <tr>
                            <td>Image</td>
                            <td>Name</td>
                            <td>Address</td>
                            <td>Gender</td>
                            <td>Country</td>
                            <td>Hobby</td>
                            <td>Action</td>
                        </tr>
                        @foreach($stud_list as $row)
                        <tr>
                            <td>{{$row->stud_image}}</td>
                            <td>{{$row->name}}</td>
                            <td>{{$row->addr}}</td>
                            <td>{{$row->gender}}</td>
                            <td>{{$row->country}}</td>
                            <td>{{$row->hobby}}</td>
                            <td></td>
                        </tr>
                        @endforeach
                        
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
