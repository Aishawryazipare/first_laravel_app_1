@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <div class="panel panel-default">
                <div class="panel-heading">Create Student</div>

                <div class="panel-body">
                    <form class="form-horizontal" method="POST" action="{{ route('stud.create') }}" enctype="multipart/form-data">
                        {{ csrf_field() }}

                        <div class="form-group{{ $errors->has('name') ? ' has-error' : '' }}">
                            <label for="name" class="col-md-4 control-label">Name</label>

                            <div class="col-md-6">
                                <input id="name" type="text" class="form-control" name="name" value="{{ old('name') }}" required autofocus>

                                @if ($errors->has('name'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('name') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>

                        <div class="form-group{{ $errors->has('addr') ? ' has-error' : '' }}">
                            <label for="email" class="col-md-4 control-label">Address</label>

                            <div class="col-md-6">
                                <!--<input id="email" type="email" class="form-control" name="email" value="{{ old('email') }}" required>-->
                                <textarea class="form-control" name="addr" value="{{ old('addr') }}" required></textarea>
                                @if ($errors->has('addr'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('addr') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>

                        <div class="form-group{{ $errors->has('gender') ? ' has-error' : '' }}">
                            <label for="name" class="col-md-4 control-label">Name</label>

                            <div class="col-md-6">
                                <input type="radio" name="gender" id="gender_M" value="M"  />M
                                <input type="radio" name="gender" id="gender_F" value="F" />F
                                @if ($errors->has('gender'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('gender') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>
                        
                         <div class="form-group{{ $errors->has('country') ? ' has-error' : '' }}">
                            <label for="name" class="col-md-4 control-label">Country</label>
                            
                            <div class="col-md-6">
                                <select id="country" name="country" class='form-control'>
                                    <option value="">--- Select country ---</option>
                                @foreach($country as $country)
                                <option value="{{$country->country}}">{{$country->country_name}}</option>
                                @endforeach
                            </select>
                                @if ($errors->has('country'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('country') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>
                        
                        <div class="form-group{{ $errors->has('hobby') ? ' has-error' : '' }}">
                            <label for="name" class="col-md-4 control-label">Name</label>

                            <div class="col-md-6">
                                <input type="checkbox" name="hobby[]" id="hobby1" value="Reading"  />Reading
                                <input type="checkbox" name="hobby[]" id="hobby2" value="Writing" />Writing
                                 <input type="checkbox" name="hobby[]" id="hobby3" value="Sports" />Sports
                                  <input type="checkbox" name="hobby[]" id="hobby4" value="Drawing" />Drawing
                                @if ($errors->has('gender'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('gender') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>
                        <div class="form-group{{ $errors->has('stud_image') ? ' has-error' : '' }}">
                            <label for="name" class="col-md-4 control-label">Photo</label>

                            <div class="col-md-6">
                                <input type="file" name="stud_image" id="stud_image" value=""  />
                                @if ($errors->has('stud_image'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('stud_image') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-md-6 col-md-offset-4">
                                <button type="submit" class="btn btn-primary">
                                    Create
                                </button>
                                <a class="btn btn-danger"  href='{{ url("stud") }}'>Cancle</a>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
