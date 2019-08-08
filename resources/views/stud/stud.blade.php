
@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-12 ">
            <div class="panel panel-default">
                <div class="panel-heading">Students<a href="{{url('stud/create')}}" class="pull-right">Create</a></div>

                <div class="panel-body">
                    <table width="100%">
                        <tr>
                            <td>Image</td>
                            <td>Blob Image</td>
                            <td>Name</td>
                            <td>Address</td>
                            <td>Gender</td>
                            <td>Country</td>
                            <td>Hobby</td>
                            <td>Action</td>
                        </tr>
                        @foreach($stud1 as $stud)
                        <tr>
                            <td>
                                <!--<img src='stud_image/{{$stud->stud_image}}' width="100px"/>-->
                            </td>
                            <td><img src="data:image/JPG;base64,{{$stud->image}}" /></td>
                            <td>{{$stud->name}}</td>
                            <td>{{$stud->addr}}</td>
                            <td>{{$stud->gender}}</td>
                            <td>{{$stud->countries()->first()->country_name}}</td>
                            <td>{{$stud->hobby}}</td>
                            <td><a href="{{url('stud/edit/'.$stud->id)}}">Edit</a><br/>{!! Form::open([
                                'class' => 'delete',
                                'method' => 'DELETE',
                                'url' => ['/stud/delete', $stud->id],
                                'style' => 'display:inline'
                                ]) !!}
                                {!! Form::submit('Delete') !!}
                                {!! Form::close() !!}</td>
                        </tr>
                        @endforeach
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>

<script type="text/javascript">
    $(document).ready(function() {
        $(".delete").on("submit", function() {
            return confirm("Do you want to delete this record?");
        });
    });
</script>
@endsection
