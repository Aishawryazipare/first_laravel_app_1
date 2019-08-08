<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Country extends Model
{
    protected $table="tbl_country";
    public $timestamp =false;
    protected $primaryKey ='country';
    protected $fillable = [
        'name', 'addr', 'gender','country','hobby'
    ];
//    public function StudName()
//    {
//        return $this->belongsTo('App\Stud');
//    }
    public function users()
{
  return $this->belongsTo('App\Stud','country','country');
}
}
