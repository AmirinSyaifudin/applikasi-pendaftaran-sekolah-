<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;

use App\Exports\SiswaExport;
use Maatwebsite\Excel\Facades\Excel;
use PDF;

use App\Siswa;

class SiswaController extends Controller

{
    public function index(Request $request)
    {

        if ($request->has('cari')) {

            $data_siswa = \App\Siswa::where('nama_depan', 'LIKE', '%' . $request->cari . '%')->paginate(20);
        } else {

            $data_siswa = \App\Siswa::all();
        }

        return view('siswa.index', ['data_siswa' => $data_siswa]);
    }


    public function create(Request $request)
    {

        $this->validate($request, [
            'nama_depan' => 'required|min:2',
            'nama_belakang' => 'required',
            'email' => 'required|email|unique:users',
            'agama' => 'required',
            'avatar' => 'mimes:jpg,png',
        ]);


        $user = new \App\User;
        $user->role = 'siswa';
        $user->name = $request->nama_depan;
        $user->email = $request->email;
        $user->password = bcrypt('amirganteng21');
        $user->remember_token = str_random(60);
        $user->save();


        $request->request->add(['user_id' => $user->id]);
        $siswa = \App\Siswa::create($request->all());


        if ($request->hasFile('avatar')) {
            $request->file('avatar')->move('images/', $request->file('avatar')->getClientOriginalName());

            $siswa->avatar = $request->file('avatar')->getClientOriginalName();
            $siswa->save();
        }
        return redirect('/siswa')->with('sukses', 'Data berhasil diinput');
    }


    public function edit(Siswa $siswa)
    {

        return view('siswa/edit', ['siswa' => $siswa]);
    }


    public function update(Request $request, Siswa $siswa)
    {

        $siswa->update($request->all());


        if ($request->hasFile('avatar')) {
            $request->file('avatar')->move('images/', $request->file('avatar')->getClientOriginalName());

            $siswa->avatar = $request->file('avatar')->getClientOriginalName();
            $siswa->save();
        }
        return redirect('/siswa')->with('sukses', 'Data berhasil diupdate');
    }


    public function delete(Siswa $siswa)
    {

        $siswa->delete($siswa);
        return redirect('/siswa')->with('sukses', 'Data berhasil dihapus');
    }


    public function profile(Siswa $siswa)
    {

        $matapelajaran = \App\Mapel::all();
        $categories = [];
        $data = [];

        foreach ($matapelajaran as $mp) {


            if ($siswa->mapel()->wherePivot('mapel_id', $mp->id)->first()) {
                $categories[] = $mp->nama;


                $data[] = $siswa->mapel()->wherePivot('mapel_id', $mp->id)->first()->pivot->nilai;
            }
        }


        return view('siswa.profile', ['siswa' => $siswa, 'matapelajaran' => $matapelajaran, 'categories' => $categories, 'data' => $data]);
    }


    public function addnilai(Request $request, $idsiswa)
    {
        $siswa = \App\Siswa::find($idsiswa);

        // validasi query bilder untuk mengatasi biar tidak ada mata pelajarang yang double atau sama
        if ($siswa->mapel()->where('mapel_id', $request->mapel)->exists()) {
            return redirect('siswa/' . $idsiswa . '/profile')->with('error', 'Data Nilai Berhasil di Masukkkan');
        }
        // memasukkan ke pivot, siswa berrelasi dengan mapel
        $siswa->mapel()->attach($request->mapel, ['nilai' => $request->nilai]);  // yang di attack adalah "id" dari matapelajarannnya
        return redirect('siswa/' . $idsiswa . '/profile')->with('sukses', 'Data Nilai Berhasil di Masukkkan');
    }


    public function deletenilai($idsiswa, $idmapel) // dua parameter idsiswa dan id mapel
    {
        $siswa = \App\Siswa::find($idsiswa);
        $siswa->mapel()->detach($idmapel); // detech artinya melepaskan defaultnya

        return redirect()->back()->with('sukses', 'Data nilai berhasil dihapsu');
    }



    public function exportexcel()
    {
        return Excel::download(new SiswaExport, 'Siswa.xlsx');
    }


    public function exportpdf()
    {
        $siswa = \App\Siswa::all();
        $pdf = PDF::loadView('export.siswapdf', ['siswa' => $siswa]);
        return $pdf->download('siswa.pdf');
    }
}