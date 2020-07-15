<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Materi;

class MateriController extends Controller
{
    //
    public function index(Request $request)
    {

        if ($request->has('cari')) {
            $data_materi = \App\Materi::where('title', 'LIKE', '%' . $request->cari . '%')->pagination(20);
        } else {
            $data_materi = \App\Materi::all();
        }
        return view('materi.index', ['data_materi' => $data_materi]);
    }


    public function add()
    {
        return view('materi.add');
    }

    public function create(Request $request)
    {
        $materi = Materi::create([
            'title' => $request->title,
            'content' => $request->content,
            'thumbnail' => $request->thumbnail
        ]);
        return redirect()->route('materi.index')->with('sukses', 'ADD berhasil di Submit');
    }
}