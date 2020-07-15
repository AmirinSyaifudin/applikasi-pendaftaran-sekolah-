<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Biodata extends Model
{
    //
    protected $table = 'biodata';
    protected $fillable = ['nama_lengkap','tgl_lahir','jenis_kelamin','golongan_darah','agama','status','pekerjaan','kewarganegaraan','email','alamat'];
    
}
