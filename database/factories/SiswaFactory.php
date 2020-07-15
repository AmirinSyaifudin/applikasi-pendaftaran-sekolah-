<?php

/* @var $factory \Illuminate\Database\Eloquent\Factory */

use App\Model;
use Faker\Generator as Faker;

$factory->define(\App\Siswa::class, function (Faker $faker) {
    return [
        // 
        // pakai array, fiel yang ada di databases siswa 
        'user_id' => 100,
        'nama_depan' => $faker->name,
        'nama_belakang' =>  '',
        'jenis_kelamin' => $faker->randomElement(['L','P']),
        'agama' => $faker->randomElement(['Islam','Kristen','Katolik','Hindu','Budha']),
        'alamat' =>  $faker->address,
        
    ];
});
