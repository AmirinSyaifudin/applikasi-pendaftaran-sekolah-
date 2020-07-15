<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class ApiController extends Controller
{

    public function editnilai(Request $request, $id)
    {
        $siswa = \App\Siswa::find($id); // mengembil data siswa

        // mau update tabel pivotnya , sambungkan relasinay siswa dan mapel
        $siswa->mapel()->updateExistingPivot($request->pk, ['nilai' => $request->value]);
    }
}