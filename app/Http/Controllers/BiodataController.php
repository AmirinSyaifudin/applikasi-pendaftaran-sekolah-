<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class BiodataController extends Controller
{
    //
    public function index(Request $request)
    {
        $data_biodata = \App\Biodata::all();
        return view('biodata.index',['data_biodata' => $data_biodata]);
    }



    public function create(Request $request)
    {
        \App\Biodata::create($request->all());
        
        return redirect('/biodata');
    }


    public function edit($id)
    {
        $biodata = \App\Biodata::find($id);
        return view('biodata/edit');
    }

}
