<?php

namespace App\Exports;

use App\Siswa;
use Maatwebsite\Excel\Concerns\FromCollection;

// mapping untuk memodifikasi excel 
use Maatwebsite\Excel\Concerns\WithMapping;

use Maatwebsite\Excel\Concerns\WithHeadings; // export untuk heading 

class SiswaExport implements FromCollection, WithMapping,  WithHeadings // penambahan WithMapping
{
    /**
    * @return \Illuminate\Support\Collection
    */
    public function collection()
    {
        return Siswa::all();
    }


    // copi dari situs mapping 
    public function map($siswa): array // untuk memodifikasi kolom kolom excel yang akan di tampilkan 
    {
        return [
            $siswa->nama_lengkap(),
            $siswa->jenis_kelamin,
            $siswa->agama,
            $siswa->rataRataNilai()
        ];
    }



    public function headings(): array // penambahakn function untuk heading 
    {
        return [
            'NAMA LENGKAP',
            'JENIS KELAMIN',
            'AGAMA',
            'RATA-RATA NILAI'
        ];
    }




    
}
