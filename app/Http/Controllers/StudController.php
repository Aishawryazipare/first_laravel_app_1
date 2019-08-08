<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Notifications\AccountCreated;
use Illuminate\Support\Facades\DB;
use App\Stud;
use Image;
use google\appengine\api\cloud_storage\CloudStorageTools;

class StudController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
     public function __construct()
    {
        $this->middleware('auth');
    }

    public function index()
    {
        $stud=  \App\Stud::get();
         return view('stud.stud',['stud1'=>$stud]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $country = \App\Country::get();
        return view('stud.stud_create',['country'=>$country]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
       $data=$request->all();
//       echo "<pre/>";print_r($data);exit;
        $data['hobby']=  implode(",", $data['hobby']);
        $rnd=rand(0,999);
        
        $image = $data['stud_image'];
        $imageType = $image->getClientOriginalExtension();
        $imageStr = (string) Image::make( $image )->
                                 resize( 150, null, function ( $constraint ) {
                                     $constraint->aspectRatio();
                                 })->encode( $imageType );
        $data['image']= base64_encode( $imageStr );        
        
//        $blob_image=Image::make($data['stud_image'])->resize(100, 100); 
//        $data['image']= base64_encode(file_get_contents($blob_image));
        
        $filename = $rnd."_".$data['stud_image']->getClientOriginalName();
        $destination= '../';
        $data['stud_image']=$filename;
        
        \App\Stud::create($data);
        return redirect('stud');
       
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $country_list = \App\Country::pluck('country_name','country');
        $stud = \App\Stud::find($id);
        $stud->hobby=  explode(",", $stud->hobby);
        return view('stud.stud_edit',['country_list'=>$country_list,'stud'=>$stud,]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
       $data=$request->all();
       // echo "<pre/>";print_r($data);exit;
       $data['hobby']=  implode(",", $data['hobby']);
       $stud = \App\Stud::find($id);
       $old_file=$stud->stud_image;
       if($data['stud_image'] != '')
       {
           
            $rnd=rand(0,999);
            $filename = $rnd."_".$data['stud_image']->getClientOriginalName();
            $destination= 'stud_image';
            $data['stud_image']->move($destination,$filename);
            $data['stud_image']=$filename;
            //unlink('stud_image/'.$old_file);
       }
       else
       {
           $data['stud_image']=$old_file;
       }
       $stud->update($data);
       return redirect('stud');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $stud = \App\Stud::find($id);
        unlink('stud_image/'.$stud->stud_image);
        $stud->destroy($id);
        return redirect('stud');
    }
}
