@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <div class="panel panel-default">
                <div class="panel-heading">Edit Student</div>

                <div class="panel-body">
                    {!! Form::model($stud, [
               'method' => 'PUT',
               'url' => ['stud/edit', $stud->id],
               'class' => 'form-horizontal row-fluid',
               ' enctype'=>'multipart/form-data',
           ]) !!}
                        {{ csrf_field() }}

                        <div class="form-group{{ $errors->has('name') ? ' has-error' : '' }}">
                            <label for="name" class="col-md-4 control-label">Name</label>

                            <div class="col-md-6">
                                <!--<input id="name" type="text" class="" name="name" value="{{ old('name') }}" required autofocus>-->
                                {{ Form::text('name', null, array('class' => 'form-control','required'=>'required','id'=>'name')) }}
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
                                <!--<textarea class="form-control" name="addr" value="{{ old('addr') }}" required></textarea>-->
                                {{ Form::textarea('addr', null, array('rows'=>'5','class' => 'form-control','required'=>'required','id'=>'addr')) }}
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
                                {{ Form::label('gender', 'M') }}
                                {{ Form::radio('gender', 'M', array('class' => 'form-control','required'=>'required','id'=>'gender_M')) }}
                                {{ Form::label('gender', 'F') }}
                                {{ Form::radio('gender', 'F', array('class' => 'form-control','required'=>'required','id'=>'gender_F')) }}
<!--                                <input type="radio" name="gender" id="gender_M" value="M"  />M
                                <input type="radio" name="gender" id="gender_F" value="F" />F-->
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
                                {{ Form::select('country', $country_list, null, ['placeholder' => '-- Select country --', 'class' => 'form-control']) }}

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
                                {{ Form::label('hobby[]', 'Reading') }}
                                {{ Form::checkbox('hobby[]', 'Reading',in_array('Reading', $stud->hobby), array('id'=>'hobby1')) }}
                                {{ Form::label('hobby[]', 'Writing') }}
                                {{ Form::checkbox('hobby[]', 'Writing', in_array('Writing', $stud->hobby),array('id'=>'hobby2')) }}
                                {{ Form::label('hobby[]', 'Sports') }}
                                {{ Form::checkbox('hobby[]', 'Sports', in_array('Sports', $stud->hobby),array('id'=>'hobby3')) }}
                                {{ Form::label('hobby[]', 'Drawing') }}
                                {{ Form::checkbox('hobby[]', 'Drawing', in_array('Drawing', $stud->hobby),array('id'=>'hobby4')) }}

                                @if ($errors->has('gender'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('gender') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>
                         <div class="form-group{{ $errors->has('hobby') ? ' has-error' : '' }}">
                            <label for="name" class="col-md-4 control-label">Photo</label>

                            <div class="col-md-6">
                                {{ Form::file('stud_image', null, array('id'=>'stud_image')) }}
                               
                                @if ($errors->has('gender'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('gender') }}</strong>
                                    </span>
                                @endif
                                <br/>
                                <img src='../../stud_image/{{$stud->stud_image}}' width="100"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-md-6 col-md-offset-4">
<!--                                <button type="submit" class="btn btn-primary">
                                    Edit
                                </button>-->
                                {{Form::submit('Edit',array('class' => 'btn btn-primary'))}}
                                <a class="btn btn-danger"  href='{{ url("stud") }}'>Cancle</a>
                            </div>
                        </div>
                    {!! Form::close() !!}
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
