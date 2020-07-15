<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateBiodataTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('biodata', function (Blueprint $table) {
            $table->increments('id');
            $table->string('nama');
            $table->string('tgl_lahir');
            $table->string('jenis_kalamin');
            $table->string('golongan_darah');
            $table->string('agama');
            $table->string('status');
            $table->string('pekerjaan');
            $table->string('kewarganegaraan');
            $table->string('email');
            $table->string('gambar');
            $table->string('video');
            $table->text('alamat');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('biodata');
    }
}
