<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Stud extends Model {

    protected $table = "stud_reg";
    public $timestamps = false;
    protected $fillable = [
        'name', 'addr', 'gender', 'country', 'hobby','stud_image','image'
    ];

//     public function countryName()
//    {
//        return $this->hasMany('App\Country');
//    }
    public function countries() {
        return $this->hasOne('App\Country','country','country');
    }

}
