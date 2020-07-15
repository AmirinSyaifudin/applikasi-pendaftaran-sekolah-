<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Materi extends Model
{
    //
    protected $table = 'materi';
    protected $fillable = ['title','content','slug','thumbnail','video'];

}
