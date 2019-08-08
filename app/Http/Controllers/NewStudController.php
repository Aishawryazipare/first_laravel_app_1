<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Stud;

class NewStudController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }
    
    public function index()
    {
        $stud_list = Stud::get();
//        echo "<pre>";print_r($stud_list);exit;
        return view('new_stud/stud',['stud_list' => $stud_list]);
        
    }
    
    public function add()
    {
        $country = \App\Country::get();
        return view('new_stud.add_stud',['country'=>$country]);
    }
    
    public function create(Request $request)
    {
        $requestData = $request->all();
        $requestData['hobby'] = implode(',', $requestData['hobby']);
        $rnd = rand(0,999);
        
       $filename = $rnd."_".$requestData['stud_image']->getClientOriginalName();
       $destination= 'studimages';
       $requestData['stud_image']->move($destination,$filename);
       $requestData['stud_image']=$filename;
       Stud::create($requestData);
        
       return redirect('stud_list');
        
//        echo "<pre>";print_r($requestData);exit;
    }
}
