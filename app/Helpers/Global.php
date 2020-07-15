 <?php 


use App\Siswa; // import Siswa
use App\Guru; // import Guru


function ranking5Besar() // gak boleh pakai public karna pasti error , rangking 5 besar bisa kita panggil langsung di Dashboard
{
     $siswa = Siswa::all();
     $siswa->map(function($s){
          $s->rataRataNilai = $s->rataRataNilai();
          return $s;
     });
     $siswa = $siswa->sortByDesc('rataRataNilai')->take(5);
     return $siswa;
}


function totalSiswa()
{
     return Siswa::count(); 
}


function totalGuru()
{
     return Guru::count(); 
}

