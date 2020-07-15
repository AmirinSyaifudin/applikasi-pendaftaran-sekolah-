-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 02 Apr 2020 pada 01.02
-- Versi server: 10.1.34-MariaDB
-- Versi PHP: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravelsatu`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `biodata`
--

CREATE TABLE `biodata` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama_lengkap` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_lahir` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_kelamin` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `golongan_darah` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `agama` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pekerjaan` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kewarganegaraan` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `biodata`
--

INSERT INTO `biodata` (`id`, `nama_lengkap`, `tgl_lahir`, `jenis_kelamin`, `golongan_darah`, `agama`, `status`, `pekerjaan`, `kewarganegaraan`, `email`, `alamat`, `created_at`, `updated_at`) VALUES
(1, 'Amirin Syaifudin ', '21-09-1993', 'Laki-Laki', 'B', 'Islam', 'Belum Menikah ', 'Programmer', 'WNI', 'amirinsyaifudin6@gmail.com', 'Ds. Sukolilo, Kec.Sukolilo, RT/RW:004/008, Kab. PATI JAWA TENGAH ', NULL, NULL),
(2, 'Arya Wardana ', '23-08-2000', 'Laki-Laki', 'O', 'Islam ', 'Pelajar ', 'Pelajar', 'WNI', 'aryawardana@gmail.com', 'Ds. Sukolilo, Kec.Sukolilo, Kab.PATI', NULL, NULL),
(3, 'Abdullan Azzam ', '12-09-2000', 'Laki-Laki', 'AB', 'Islam ', 'Pelajar', 'Pelajar', 'WNI', 'azzamabdullah@gmail.com', 'Sukolilo pati jawa tengah ', NULL, NULL),
(4, 'uji pratama', '29 - januari - 1993', 'L', 'O', 'Kristen', 'Belum Menikah', 'PNS', 'WNI', 'uji@gmail.com', 'Kudus', '2019-11-21 19:00:43', '2019-11-21 19:00:43'),
(5, 'eka pratama', '17 - juli - 1990', 'L', 'o', 'Hindu', 'Belum Menikah', 'Pedagang', 'WNI', 'eka@gmail.com', 'Brebes', '2019-11-21 19:04:55', '2019-11-21 19:04:55');

-- --------------------------------------------------------

--
-- Struktur dari tabel `guru`
--

CREATE TABLE `guru` (
  `id` int(11) NOT NULL,
  `nama` varchar(191) NOT NULL,
  `telpon` varchar(20) NOT NULL,
  `alamat` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `guru`
--

INSERT INTO `guru` (`id`, `nama`, `telpon`, `alamat`, `created_at`, `updated_at`) VALUES
(1, 'ismi ', '081222333444', 'semarang', '2019-05-22 14:26:11', '0000-00-00 00:00:00'),
(2, 'eko ', '097555666777', 'jakarta', '2019-05-22 14:26:44', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mapel`
--

CREATE TABLE `mapel` (
  `id` int(11) NOT NULL,
  `kode` varchar(191) NOT NULL,
  `nama` varchar(191) NOT NULL,
  `semester` varchar(191) NOT NULL,
  `guru_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `mapel`
--

INSERT INTO `mapel` (`id`, `kode`, `nama`, `semester`, `guru_id`, `created_at`, `updated_at`) VALUES
(1, 'A001', 'Bahasa Indonesia', 'Ganjil', 1, '2019-05-17 13:54:14', '0000-00-00 00:00:00'),
(2, 'B002', 'Matematika', 'Ganjil', 2, '2019-05-17 13:54:14', '0000-00-00 00:00:00'),
(3, 'C003', 'agamaislam', 'ganjil', 1, '2019-05-20 14:52:09', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mapel_siswa`
--

CREATE TABLE `mapel_siswa` (
  `id` int(11) NOT NULL,
  `siswa_id` int(11) NOT NULL,
  `mapel_id` int(11) NOT NULL,
  `nilai` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `mapel_siswa`
--

INSERT INTO `mapel_siswa` (`id`, `siswa_id`, `mapel_id`, `nilai`, `created_at`, `updated_at`) VALUES
(1, 8, 1, 30, '2019-05-17 13:58:30', '2019-05-21 15:36:08'),
(2, 8, 2, 85, '2019-05-17 13:58:30', '0000-00-00 00:00:00'),
(3, 12, 1, 70, '2019-05-17 14:16:04', '0000-00-00 00:00:00'),
(4, 8, 1, 30, '2019-05-18 23:08:08', '2019-05-21 15:36:08'),
(5, 1, 2, 100, '2019-05-18 23:11:04', '2019-05-27 01:34:15'),
(6, 1, 1, 100, '2019-05-18 23:11:11', '2019-05-27 01:34:08'),
(7, 4, 1, 75, '2019-05-19 08:38:48', '2019-05-19 15:38:48'),
(9, 2, 1, 65, '2019-05-19 08:44:56', '2019-06-17 06:24:52'),
(10, 12, 2, 80, '2019-05-19 16:03:27', '2019-05-19 23:03:27'),
(11, 13, 1, 90, '2019-05-19 16:05:06', '2019-05-19 23:05:06'),
(12, 13, 2, 90, '2019-05-19 16:06:40', '2019-05-19 23:06:40'),
(13, 24, 1, 70, '2019-05-19 18:48:59', '2019-05-20 01:48:59'),
(14, 24, 2, 80, '2019-05-19 18:49:07', '2019-05-20 01:49:07'),
(15, 8, 3, 76, '2019-05-20 15:17:32', '0000-00-00 00:00:00'),
(16, 16, 1, 80, '2019-05-20 09:41:34', '2019-05-20 16:41:34'),
(17, 22, 1, 90, '2019-05-21 19:47:37', '2019-05-24 15:29:11'),
(18, 22, 2, 70, '2019-05-21 19:48:07', '2019-05-22 02:48:07'),
(20, 22, 3, 90, '2019-05-21 19:48:59', '2019-05-22 02:48:59'),
(21, 2, 2, 98, '2019-05-23 02:18:24', '2019-05-23 13:59:25'),
(23, 19, 1, 80, '2019-05-24 02:37:38', '2019-05-24 09:37:38'),
(24, 19, 2, 90, '2019-05-24 02:37:46', '2019-05-24 09:37:46'),
(25, 7, 1, 100, '2019-05-24 08:37:41', '2019-05-24 15:37:41'),
(26, 7, 2, 100, '2019-05-24 08:37:51', '2019-05-24 15:37:51'),
(27, 7, 3, 100, '2019-05-24 08:37:58', '2019-05-24 15:37:58'),
(28, 14, 1, 90, '2019-10-02 05:31:11', '2019-10-02 12:31:11'),
(29, 25, 2, 70, '2019-10-02 05:32:19', '2019-10-02 12:32:19'),
(30, 25, 3, 90, '2019-10-02 05:34:48', '2019-10-02 12:34:48'),
(31, 25, 1, 90, '2019-10-02 05:35:22', '2019-10-02 12:35:22'),
(32, 20, 1, 70, '2019-10-02 06:13:18', '2019-10-02 13:13:18'),
(33, 30, 1, 80, '2019-10-02 06:20:30', '2019-10-02 13:20:30'),
(37, 10, 1, 99, '2019-10-02 08:23:00', '2019-11-01 01:12:20'),
(38, 10, 2, 90, '2019-10-02 08:23:13', '2019-10-16 15:13:31'),
(39, 10, 3, 80, '2019-10-02 08:23:22', '2019-10-02 15:23:22'),
(40, 14, 2, 80, '2019-10-02 08:24:02', '2019-10-02 15:24:02'),
(41, 14, 3, 90, '2019-10-02 08:24:35', '2019-10-02 15:24:35'),
(42, 43, 1, 90, '2019-10-16 02:09:46', '2019-10-16 09:09:46'),
(43, 33, 1, 90, '2019-10-16 08:26:43', '2019-10-16 15:26:43'),
(44, 33, 2, 90, '2019-10-16 08:26:52', '2019-10-16 15:26:52'),
(45, 33, 3, 90, '2019-10-16 08:27:01', '2019-10-16 15:27:01'),
(46, 1144, 2, 75, '2019-10-21 06:59:16', '2019-10-21 13:59:16'),
(47, 1144, 1, 75, '2019-10-21 06:59:28', '2019-10-21 13:59:28'),
(48, 1144, 3, 75, '2019-10-21 06:59:37', '2019-10-21 13:59:37'),
(49, 120, 1, 90, '2019-10-30 05:27:04', '2019-10-30 12:27:04'),
(50, 120, 2, 90, '2019-10-30 05:27:14', '2019-10-30 12:27:14'),
(51, 120, 3, 90, '2019-10-30 05:27:26', '2019-10-30 12:27:26'),
(52, 1145, 1, 75, '2019-10-30 20:52:16', '2019-10-31 03:52:16'),
(53, 1145, 2, 75, '2019-10-30 20:52:25', '2019-10-31 03:52:25'),
(54, 1145, 3, 75, '2019-10-30 20:52:33', '2019-10-31 03:52:33'),
(55, 32, 1, 98, '2019-11-06 18:14:54', '2019-11-07 01:14:54'),
(56, 32, 2, 98, '2019-11-06 18:15:10', '2019-11-07 01:15:10'),
(57, 32, 3, 100, '2019-11-06 18:15:19', '2019-11-07 01:15:19'),
(58, 30, 2, 90, '2019-11-29 23:25:50', '2019-11-30 06:25:50'),
(59, 30, 3, 90, '2019-11-29 23:28:11', '2019-11-30 06:28:11'),
(60, 34, 1, 90, '2019-11-29 23:35:14', '2019-11-30 06:35:14'),
(61, 34, 2, 89, '2019-11-29 23:35:25', '2019-11-30 06:35:25'),
(62, 34, 3, 99, '2019-11-29 23:35:34', '2019-11-30 06:35:34'),
(63, 733, 1, 90, '2019-12-15 07:21:24', '2019-12-15 14:21:24'),
(64, 35, 1, 90, '2019-12-15 07:41:56', '2019-12-15 14:41:56'),
(65, 35, 2, 99, '2019-12-15 07:42:08', '2019-12-15 14:42:31'),
(66, 35, 3, 100, '2019-12-15 07:42:49', '2019-12-15 14:42:49'),
(67, 731, 1, 90, '2019-12-15 07:53:38', '2019-12-15 14:53:38'),
(68, 731, 2, 70, '2019-12-15 07:53:48', '2019-12-15 16:41:27'),
(69, 731, 3, 100, '2019-12-15 07:54:06', '2019-12-15 14:54:06'),
(70, 1148, 1, 90, '2019-12-18 18:26:51', '2019-12-19 01:26:51'),
(71, 1150, 1, 90, '2020-02-18 07:32:14', '2020-02-18 14:32:14'),
(72, 1150, 2, 80, '2020-02-18 07:32:26', '2020-02-18 14:32:26'),
(73, 1150, 3, 100, '2020-02-18 07:32:47', '2020-02-18 14:32:47');

-- --------------------------------------------------------

--
-- Struktur dari tabel `materi`
--

CREATE TABLE `materi` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `slug` varchar(255) NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `video` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `materi`
--

INSERT INTO `materi` (`id`, `title`, `content`, `slug`, `thumbnail`, `video`, `created_at`, `updated_at`) VALUES
(1, 'Perbedaan Code OOP dan Prosedular', 'conten 1\r\n', 'slug 1', 'gambar 1', '', '2020-03-04 13:02:06', '0000-00-00 00:00:00'),
(2, 'Pemrogramman PHP ', 'OOP penjelasan ', 'Code Politan ', 'gambar ', '', '2020-03-04 13:04:11', '0000-00-00 00:00:00'),
(3, 'JavaScript', 'Materi JavaScript ', 'JavaScript Pertama ', 'JavaScript Gambar', '', '2020-03-04 13:04:11', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_05_07_222510_create_siswa_table', 1),
(4, '2019_05_11_054803_create_biodata_table', 2),
(5, '2019_05_30_021106_create_dosen_table', 3),
(6, '2019_05_30_035002_create_karyawan_table', 4),
(7, '2019_07_02_131319_create_staff_table', 5),
(8, '2019_07_06_151912_create_materi_table', 6);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(225) NOT NULL,
  `content` text NOT NULL,
  `slug` varchar(225) NOT NULL,
  `thumbnail` varchar(225) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `title`, `content`, `slug`, `thumbnail`, `created_at`, `updated_at`) VALUES
(1, 1, 'Ini berita pertama ', '<p>Isi berita pertama yang di isi secara manual </p> ', 'ini-berita-pertama', '', '2019-09-22 13:10:20', '0000-00-00 00:00:00'),
(2, 1, 'News, Hasil Prestasi Kejuaraan ', 'Content untuk hasil prestasi kejuaraan bahasa arab ', 'News-Hasil-Prestasi-Kejuaraan ', '', '2019-09-22 23:15:03', '0000-00-00 00:00:00'),
(3, 1, 'Apa yang dimaksud dengan tabel korelasi?', '<blockquote><h2>isi dari text <strong>apa yang </strong><i>dimaksu</i>d dengan tabel korelasi&nbsp;</h2></blockquote>', 'apa-yang-dimaksud-dengan-tabel-korelasi', '/photos/1/67646385_939253739749309_4940677395154731008_n.jpg', '2019-09-29 07:19:30', '2019-09-29 14:19:30'),
(4, 1, 'Rental Monil', '<p><strong>Rental Mobil Kijang Inova&nbsp;</strong></p>', 'rental-monil', '/photos/1/1010-10100381_toyota-innova-crysta-colors-innova-png.png', '2019-10-03 15:17:33', '2019-10-03 22:17:33'),
(5, 1, 'Data Siswa Kelas 5 B', '<p>Ini adahal daftar siswa kelas 5 B&nbsp;</p><ol><li>Andi&nbsp;</li></ol><p>2. Jenut&nbsp;</p><p>3. Saipul&nbsp;</p><p>4. Sifa&nbsp;</p><p>5. Unida&nbsp;</p><p>6. Disma&nbsp;</p><p>7. Khairul&nbsp;</p><p>8. Jajang&nbsp;</p><p>9. Aulia</p><p>10. Putri&nbsp;</p>', 'data-siswa-kelas-5-b', '/photos/1/DSC_0118.JPG', '2019-10-30 18:45:24', '2019-10-31 01:45:24'),
(6, 1, 'Cari Jodoh', '<p>Text 12345</p>', 'cari-jodoh', '/photos/1/DSC_0118.JPG', '2019-11-29 23:29:48', '2019-11-30 06:29:48'),
(7, 1, 'Integer Float', '<p>dtrsryse</p>', 'integer-float', '/photos/shares/9.png', '2020-03-04 06:17:09', '2020-03-04 13:17:09'),
(8, 1, 'Float dan Integer', '<p><strong>Integer Float</strong></p><p>Variabel digunakan untuk menampung nilai tertentu. Nilai yang disimpan di dalam variabel selanjutnya dapat dipindahkan ke dalam database, atau ditampilkan kembali ke pengguna. Variabel dapat menyimpan data dari berbagai tipe data.</p><p><strong>Macam-macam Tipe data pada PHP</strong></p><p>Pada PHP tipe data yang didukung antara lain :</p><ul><li>String</li><li>Interger</li><li>Float</li><li>Boolean</li><li>Array</li><li>Object</li><li>Null</li><li>Resource</li></ul><p>Pada pembahasan kali ini, kita akan membahas tipe data integer dan float.</p><p><strong>Integer</strong></p><p>Tipe data numerik yang menunjukkan bilangan bulat.</p><p>Aturan untuk tipe data integer :</p><ol><li>Harus memiliki minimal 1 digit</li><li>Tidak boleh memiliki titik desimal</li><li>Bisa berupa bilangan positif maupun bilangan negatif atau 0</li></ol><p>Contoh bilangan bulat / integer antara lain : 1, 2, -1, -2, atau 0.</p><p>Penulisan integer didalam PHP seperti dibawah ini:</p><p><strong>&lt;?php</strong></p><p>&nbsp; &nbsp; $a =&nbsp;10;</p><p>&nbsp; &nbsp; $b =&nbsp;11;</p><p>&nbsp; &nbsp; $hasil = $a * $b;&nbsp;//contoh perkalian</p><p>&nbsp; &nbsp; echo $hasil;&nbsp;</p><p><strong>?&gt;</strong></p><p><strong>Float</strong></p><p>Tipe data berupa angka yang memiliki titik desimal, contoh : 5.98 atau 7.16 dst</p><p>Penulisan float didalam PHP seperti dibawah ini :</p><p><strong>&lt;?php</strong></p><p>&nbsp; &nbsp; $a =&nbsp;1.5;</p><p>&nbsp; &nbsp; $b =&nbsp;2.5;</p><p>&nbsp; &nbsp; $hasil = $a + $b;&nbsp;//contoh penjumlahan</p><p>&nbsp; &nbsp; echo $hasil;</p><p><strong>?&gt;</strong></p><p>Selain itu kita juga dapat membulatkan angka dibelakang titik desimal / koma pada tipe data float dengan menggunakan fungsi round().</p><ul><li>round(10.3333) = menghasilkan nilai 10</li><li>round(10.5666)=menghasilkan nilai 11</li><li>round(10.333,2)=menghasilkan 2 angka dibelakang koma yaitu 10.33</li><li>round(10.556,1)=menghasilkan 1 angka dibelakang koma yaitu 10.6</li></ul><p>Fungsi round() akan membulatkan keatas jika desimal lebih dari 0,5, tetapi jika kurang dari 0,5 maka tidak akan dibulatkan ke atas.</p><p><strong>Operator Aritmatika</strong></p><p>Berikut operator aritmatika yang dapat kita gunakan untuk melakukan operasi perhitungan.</p><figure class=\"table\"><table><thead><tr><th><strong>Operator</strong></th><th><strong>Nama</strong></th><th><strong>Contoh</strong></th><th><strong>Hasil</strong></th></tr></thead><tbody><tr><td>+</td><td>Penambahan</td><td>$a+$b</td><td>Menjumlahkan $a dengan $b</td></tr><tr><td>-</td><td>Pengurangan</td><td>$a-$b</td><td>Mengurangkan $a dengan $b</td></tr><tr><td>*</td><td>Perkalian</td><td>$a*$b</td><td>Mengalikan $a dengan $b</td></tr><tr><td>/</td><td>Pembagian</td><td>$a/$b</td><td>Membagi $a dengan $b</td></tr><tr><td>%</td><td>Modulus</td><td>$a%$b</td><td>Sisa $a setelah dibagi dengan $b</td></tr></tbody></table></figure><p><strong>Operator Increment dan Decrement</strong></p><p>Selain operator aritmatika, pada PHP juga terdapat operator Increment dan Decrement.</p><figure class=\"table\"><table><thead><tr><th><strong>Operator</strong></th><th><strong>Nama</strong></th><th><strong>Contoh</strong></th><th><strong>Hasil</strong></th></tr></thead><tbody><tr><td>++</td><td>Increment</td><td>$a++</td><td>menambahkan 1 nilai terhadap $a</td></tr><tr><td>--</td><td>Decrement</td><td>$a--</td><td>mengurangi 1 nilai terhadap $a</td></tr></tbody></table></figure><p><strong>&lt;?php</strong></p><p>$a=10;</p><p>$a++;</p><p>echo $a;&nbsp;// menghasilkan nilai 11</p><p>$b =&nbsp;10;</p><p>$b--;</p><p>echo $b;&nbsp;//menghasilkan nilai 9</p><p>$c =&nbsp;10;</p><p>$c++;</p><p>$c++;</p><p>echo $c;//akan menghasilkan nilai 12 karena menggunakan 2x operator increment</p><p><strong>?&gt;</strong></p><p><a href=\"https://www.codepolitan.com/course/lesson/basic-php/01-konsep-dasar/05-quiz-konsep-dasar\">&nbsp;PREV</a></p><p>OKE, SAYA SUDAH PAHAM</p><p><a href=\"https://www.codepolitan.com/course/lesson/basic-php/02-Variabel-dan-Operator/02-string\">NEXT&nbsp;</a></p><p><strong>DISKUSI</strong></p><p>&nbsp;</p>', 'float-dan-integer', '/photos/1/images.jpg', '2020-03-04 06:18:51', '2020-03-04 13:18:51');

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswa`
--

CREATE TABLE `siswa` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `nama_depan` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_belakang` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_kelamin` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `agama` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `siswa`
--

INSERT INTO `siswa` (`id`, `user_id`, `nama_depan`, `nama_belakang`, `jenis_kelamin`, `agama`, `alamat`, `avatar`, `created_at`, `updated_at`) VALUES
(25, 12, 'aulia zahra', 'rasyida', 'P', 'islam', 'jogja', 'manlog.png', '2019-05-18 09:00:29', '2019-12-15 16:19:21'),
(30, 18, 'Yusuf', 'Mansyur', 'L', 'Isalm', 'Jakarta Pusat', '120518_0639_normalisasi2.png', '2019-09-24 15:25:21', '2020-03-15 07:45:03'),
(35, 23, 'Deni', 'Hikmanto', 'L', 'Islam', 'Keningan Jawa Barat', NULL, '2019-09-30 15:11:42', '2019-09-30 15:11:42'),
(135, 100, 'Stacy Sipes', '', 'P', 'Hindu', '846 Emil Road\nSouth Christy, UT 15686', NULL, '2019-09-30 15:36:39', '2019-09-30 15:36:39'),
(733, 100, 'Beau Homenick IV', '', 'L', 'Islam', '6044 Dach Lakes Apt. 264\nSouth Jerel, NH 23564-7665', NULL, '2019-09-30 15:39:07', '2019-09-30 15:39:07'),
(734, 100, 'Mrs. Trisha Crooks', '', 'P', 'Kristen', '6852 Mraz Stravenue\nNew Stephon, VA 11799', NULL, '2019-09-30 15:39:07', '2019-09-30 15:39:07'),
(741, 100, 'Leo Erdman Sr.', '', 'L', 'Budha', '41781 Cathy Fork Suite 755\nSchmittchester, NJ 34154', NULL, '2019-09-30 15:39:07', '2019-09-30 15:39:07'),
(743, 100, 'Van Kshlerin', '', 'L', 'Hindu', '9915 Rodriguez Motorway\nWest Preciousberg, LA 63088-2386', NULL, '2019-09-30 15:39:07', '2019-09-30 15:39:07'),
(745, 100, 'Friedrich Jenkins', '', 'P', 'Budha', '17845 Aurore River Apt. 037\nEast Theahaven, AZ 66539-9607', NULL, '2019-09-30 15:39:07', '2019-09-30 15:39:07'),
(746, 100, 'Conrad Conn Jr.', '', 'L', 'Budha', '38350 Keely Neck\nSmithmouth, WV 56639-0773', NULL, '2019-09-30 15:39:07', '2019-09-30 15:39:07'),
(747, 100, 'Jonathon Bradtke', '', 'P', 'Islam', '8242 Dietrich Plaza Apt. 336\nAbbottville, OH 69203', NULL, '2019-09-30 15:39:07', '2019-09-30 15:39:07'),
(748, 100, 'Arnulfo Beer', '', 'L', 'Islam', '8472 Windler Rapid\nPort Lucileview, NV 30310', NULL, '2019-09-30 15:39:07', '2019-09-30 15:39:07'),
(749, 100, 'Jerad Klocko', '', 'P', 'Budha', '429 Eve Inlet Apt. 548\nGutkowskimouth, NH 34391', NULL, '2019-09-30 15:39:07', '2019-09-30 15:39:07'),
(750, 100, 'Maxine Swaniawski', '', 'L', 'Budha', '3261 Jaunita Squares\nMarjorieville, DE 52014', NULL, '2019-09-30 15:39:07', '2019-09-30 15:39:07'),
(751, 100, 'Jamey Blick', '', 'L', 'Hindu', '235 Franecki Overpass Suite 982\nJessland, NJ 77312-7818', NULL, '2019-09-30 15:39:07', '2019-09-30 15:39:07'),
(752, 100, 'Jaren Pollich', '', 'P', 'Islam', '21238 Schuster Knolls\nReynoldschester, SC 89765', NULL, '2019-09-30 15:39:07', '2019-09-30 15:39:07'),
(753, 100, 'Leonie Gutkowski', '', 'P', 'Hindu', '2031 Helena Radial\nAbigalefort, NE 51544', NULL, '2019-09-30 15:39:07', '2019-09-30 15:39:07'),
(754, 100, 'Miss Faye Sporer Sr.', '', 'L', 'Kristen', '507 Tromp Extensions\nEast Maya, OR 91628-6944', NULL, '2019-09-30 15:39:07', '2019-09-30 15:39:07'),
(755, 100, 'Deangelo Kovacek', '', 'L', 'Hindu', '7399 Albin Common\nNew Tyrese, AL 63736-6266', NULL, '2019-09-30 15:39:07', '2019-09-30 15:39:07'),
(756, 100, 'Eudora Hand Sr.', '', 'L', 'Hindu', '73687 Strosin Forest\nNorth Ciara, NY 89366', NULL, '2019-09-30 15:39:07', '2019-09-30 15:39:07'),
(757, 100, 'Keshaun Kautzer', '', 'P', 'Budha', '39517 Elissa Fords Suite 392\nNew Albertomouth, OK 42046', NULL, '2019-09-30 15:39:07', '2019-09-30 15:39:07'),
(758, 100, 'Prof. Jackson Schamberger IV', '', 'P', 'Katolik', '640 Sporer Summit Suite 026\nAddisonmouth, IA 23271', NULL, '2019-09-30 15:39:07', '2019-09-30 15:39:07'),
(759, 100, 'Alan Gerlach', '', 'L', 'Katolik', '23734 Lamont Junctions\nAbshireville, DC 11478', NULL, '2019-09-30 15:39:07', '2019-09-30 15:39:07'),
(760, 100, 'Maeve Kshlerin IV', '', 'L', 'Islam', '4412 Nienow Forges Apt. 738\nSouth Toreybury, CT 46731-3189', NULL, '2019-09-30 15:39:07', '2019-09-30 15:39:07'),
(761, 100, 'Virgie Barton MD', '', 'P', 'Islam', '67657 Golda Point Suite 155\nIsabellashire, GA 05025-0291', NULL, '2019-09-30 15:39:07', '2019-09-30 15:39:07'),
(762, 100, 'Shanie Boyer', '', 'L', 'Islam', '24634 Garnet Well Suite 452\nRogahnside, CA 00344', NULL, '2019-09-30 15:39:07', '2019-09-30 15:39:07'),
(763, 100, 'Tavares Labadie', '', 'L', 'Budha', '4748 Koch Port\nSouth Mossieberg, DE 88996', NULL, '2019-09-30 15:39:07', '2019-09-30 15:39:07'),
(764, 100, 'Mrs. Elizabeth Deckow DDS', '', 'L', 'Katolik', '918 Dickens Cliff Apt. 872\nSouth Clare, AZ 56395', NULL, '2019-09-30 15:39:07', '2019-09-30 15:39:07'),
(765, 100, 'Shanna McLaughlin', '', 'L', 'Kristen', '231 Klein Forest\nNew Salmaside, IL 35844-2083', NULL, '2019-09-30 15:39:07', '2019-09-30 15:39:07'),
(766, 100, 'Bertrand Klocko', '', 'L', 'Kristen', '895 Ressie Trail Apt. 227\nNorth Scotview, AK 71777-5277', NULL, '2019-09-30 15:39:07', '2019-09-30 15:39:07'),
(767, 100, 'Rosemary Brekke', '', 'P', 'Budha', '4941 Kihn Motorway Apt. 199\nBahringerland, ME 75566-7115', NULL, '2019-09-30 15:39:07', '2019-09-30 15:39:07'),
(768, 100, 'Dr. Gilberto Haag', '', 'L', 'Kristen', '70572 Carter Viaduct Apt. 073\nNew Estellhaven, PA 60843', NULL, '2019-09-30 15:39:08', '2019-09-30 15:39:08'),
(769, 100, 'Dr. Matteo Boyle', '', 'L', 'Hindu', '965 Gaylord Throughway Apt. 324\nEast Tamarafurt, AZ 64787-8758', NULL, '2019-09-30 15:39:08', '2019-09-30 15:39:08'),
(770, 100, 'Prof. Wyman Jast Sr.', '', 'L', 'Kristen', '81769 Austen Loop Apt. 596\nIlianaton, NM 16938-3124', NULL, '2019-09-30 15:39:08', '2019-09-30 15:39:08'),
(771, 100, 'Dr. Lucas Treutel Sr.', '', 'L', 'Islam', '378 Noel Stravenue Apt. 765\nSouth Dereck, IN 71739-8175', NULL, '2019-09-30 15:39:08', '2019-09-30 15:39:08'),
(772, 100, 'Prof. Samantha Wyman PhD', '', 'P', 'Islam', '3933 Rogahn Mountain\nWest Leetown, CO 48088', NULL, '2019-09-30 15:39:08', '2019-09-30 15:39:08'),
(773, 100, 'Ms. Madelyn Farrell DDS', '', 'P', 'Katolik', '85427 Hermann Knolls Apt. 120\nPort Roosevelt, WI 06221-0930', NULL, '2019-09-30 15:39:08', '2019-09-30 15:39:08'),
(774, 100, 'Alyce D\'Amore PhD', '', 'L', 'Hindu', '373 Elias Mountain\nKatharinaport, OR 55864-0547', NULL, '2019-09-30 15:39:08', '2019-09-30 15:39:08'),
(775, 100, 'Jaylin Kuhic', '', 'L', 'Kristen', '359 Carolina Cape Apt. 706\nBoylehaven, NE 38555', NULL, '2019-09-30 15:39:08', '2019-09-30 15:39:08'),
(776, 100, 'Miss Blanche Maggio MD', '', 'L', 'Islam', '60760 Ward Ferry Suite 996\nAltenwerthstad, OR 82606', NULL, '2019-09-30 15:39:08', '2019-09-30 15:39:08'),
(777, 100, 'Aaron Green DVM', '', 'L', 'Islam', '3186 Labadie Parkways\nDestinyberg, MI 13783-2238', NULL, '2019-09-30 15:39:08', '2019-09-30 15:39:08'),
(778, 100, 'Zechariah Jenkins', '', 'P', 'Katolik', '3015 Alan Tunnel Apt. 137\nLake Helga, VT 87203-6300', NULL, '2019-09-30 15:39:08', '2019-09-30 15:39:08'),
(779, 100, 'Santiago Shields', '', 'L', 'Islam', '95177 Kessler Station\nNorth Renee, WY 71992-6169', NULL, '2019-09-30 15:39:08', '2019-09-30 15:39:08'),
(780, 100, 'Aubree Lakin Jr.', '', 'L', 'Katolik', '452 Riley Hill\nRohanmouth, DC 69358-0240', NULL, '2019-09-30 15:39:08', '2019-09-30 15:39:08'),
(781, 100, 'Ms. Icie Barton Sr.', '', 'P', 'Budha', '99232 Wehner Turnpike\nCamronton, PA 56332', NULL, '2019-09-30 15:39:08', '2019-09-30 15:39:08'),
(782, 100, 'Prof. Issac Pollich', '', 'P', 'Hindu', '353 Harmony Pike Apt. 178\nSwiftmouth, WI 69489-0043', NULL, '2019-09-30 15:39:08', '2019-09-30 15:39:08'),
(783, 100, 'Ms. Mariana Schaden', '', 'P', 'Budha', '9704 Dooley Extension Apt. 106\nGeoborough, NC 14793-5222', NULL, '2019-09-30 15:39:08', '2019-09-30 15:39:08'),
(784, 100, 'Pierre Kuvalis', '', 'L', 'Islam', '7729 Candice Shore Apt. 245\nWestberg, NH 74881-3219', NULL, '2019-09-30 15:39:08', '2019-09-30 15:39:08'),
(785, 100, 'Anne Ortiz', '', 'P', 'Katolik', '7358 Maymie Orchard Suite 891\nPort Uriah, HI 51540-4866', NULL, '2019-09-30 15:39:08', '2019-09-30 15:39:08'),
(786, 100, 'Eleazar Greenholt', '', 'P', 'Budha', '75555 Barton Springs\nEberthaven, MD 28061', NULL, '2019-09-30 15:39:08', '2019-09-30 15:39:08'),
(787, 100, 'Dr. Kristofer Harvey IV', '', 'P', 'Kristen', '5082 Xander Circle Apt. 127\nCasperville, NJ 49773', NULL, '2019-09-30 15:39:08', '2019-09-30 15:39:08'),
(788, 100, 'Selina Lakin', '', 'P', 'Budha', '65074 Markus Point Apt. 787\nPredovicchester, OH 03710', NULL, '2019-09-30 15:39:08', '2019-09-30 15:39:08'),
(789, 100, 'Guillermo Stiedemann', '', 'P', 'Islam', '92587 Mills Forge\nBraunfort, HI 18707-2840', NULL, '2019-09-30 15:39:08', '2019-09-30 15:39:08'),
(790, 100, 'Prof. Mikayla Rath', '', 'L', 'Katolik', '393 Odie Village\nPort Alfredamouth, NJ 62666-6107', NULL, '2019-09-30 15:39:08', '2019-09-30 15:39:08'),
(791, 100, 'Elmira Bernier', '', 'P', 'Budha', '153 Dewayne Ford\nHuldaland, MS 49888', NULL, '2019-09-30 15:39:08', '2019-09-30 15:39:08'),
(792, 100, 'Kamille Hilpert', '', 'P', 'Islam', '13444 Olson Stream\nNorth Brock, RI 95644', NULL, '2019-09-30 15:39:08', '2019-09-30 15:39:08'),
(793, 100, 'Jasmin Bogisich', '', 'P', 'Hindu', '96856 Ebony Falls\nQuigleyland, ME 83463-4736', NULL, '2019-09-30 15:39:08', '2019-09-30 15:39:08'),
(794, 100, 'Pinkie Smitham II', '', 'L', 'Hindu', '958 Mante Ports Apt. 210\nOlsonhaven, OK 05934', NULL, '2019-09-30 15:39:08', '2019-09-30 15:39:08'),
(795, 100, 'Josiane Corkery', '', 'L', 'Islam', '147 Pfeffer Coves Apt. 329\nYolandaborough, KY 56513-4390', NULL, '2019-09-30 15:39:08', '2019-09-30 15:39:08'),
(796, 100, 'Mr. Marcellus Buckridge PhD', '', 'L', 'Katolik', '10029 Shanahan Center\nDorianland, NC 33000', NULL, '2019-09-30 15:39:08', '2019-09-30 15:39:08'),
(797, 100, 'Prof. Sherwood Franecki', '', 'P', 'Kristen', '198 Marks Lodge\nNorth Sheila, WY 32695', NULL, '2019-09-30 15:39:08', '2019-09-30 15:39:08'),
(798, 100, 'Kali Friesen', '', 'P', 'Hindu', '774 Carter Trafficway Apt. 900\nTorreyport, VA 99512', NULL, '2019-09-30 15:39:08', '2019-09-30 15:39:08'),
(799, 100, 'Maximillian Kilback', '', 'L', 'Hindu', '35371 Karen Tunnel Suite 767\nMylenetown, AZ 35394', NULL, '2019-09-30 15:39:08', '2019-09-30 15:39:08'),
(800, 100, 'Vada Balistreri', '', 'P', 'Kristen', '7600 Ward Parkways Suite 786\nHudsonside, LA 66251', NULL, '2019-09-30 15:39:08', '2019-09-30 15:39:08'),
(801, 100, 'Rusty Bednar', '', 'L', 'Katolik', '31245 Blanda Loaf Suite 251\nLake Friedaborough, MA 48098', NULL, '2019-09-30 15:39:08', '2019-09-30 15:39:08'),
(802, 100, 'Claudia Rodriguez', '', 'L', 'Hindu', '16324 Diego Overpass Apt. 112\nHettingerton, VT 42983-9240', NULL, '2019-09-30 15:39:08', '2019-09-30 15:39:08'),
(803, 100, 'Kianna Bashirian', '', 'P', 'Islam', '9034 Jodie Islands\nKylaburgh, PA 96238', NULL, '2019-09-30 15:39:08', '2019-09-30 15:39:08'),
(804, 100, 'Gustave Zieme', '', 'P', 'Kristen', '6434 Tito Hollow\nRigobertotown, OH 27986', NULL, '2019-09-30 15:39:08', '2019-09-30 15:39:08'),
(805, 100, 'Dante Braun', '', 'P', 'Islam', '899 Aracely Extensions\nHodkiewicztown, NJ 73670-4735', NULL, '2019-09-30 15:39:08', '2019-09-30 15:39:08'),
(806, 100, 'Prof. Kyra Feeney', '', 'P', 'Hindu', '89887 Christopher Points Suite 590\nKulasland, AZ 00207-3635', NULL, '2019-09-30 15:39:08', '2019-09-30 15:39:08'),
(807, 100, 'Danielle Durgan', '', 'P', 'Islam', '4504 Jaylan Fords\nLake Vernicetown, CO 09180', NULL, '2019-09-30 15:39:09', '2019-09-30 15:39:09'),
(808, 100, 'Yvette Nader DVM', '', 'P', 'Islam', '428 Eleazar Plaza\nSouth Waltonberg, RI 57165', NULL, '2019-09-30 15:39:09', '2019-09-30 15:39:09'),
(809, 100, 'Mrs. Holly Bechtelar', '', 'P', 'Budha', '37103 Kuvalis Rapid\nPort Willisburgh, AZ 39058', NULL, '2019-09-30 15:39:09', '2019-09-30 15:39:09'),
(810, 100, 'Verona Schneider', '', 'L', 'Budha', '8535 Zoey Neck Suite 686\nKulasberg, SC 19722-1238', NULL, '2019-09-30 15:39:09', '2019-09-30 15:39:09'),
(811, 100, 'Devyn Harris MD', '', 'L', 'Kristen', '2355 Clementine Extension\nNew Jamaal, ND 13071', NULL, '2019-09-30 15:39:09', '2019-09-30 15:39:09'),
(812, 100, 'Doug Reilly PhD', '', 'L', 'Islam', '827 Paucek Flats\nEast Deondre, MS 51742-2387', NULL, '2019-09-30 15:39:09', '2019-09-30 15:39:09'),
(813, 100, 'Maggie Kshlerin', '', 'L', 'Kristen', '13124 Crona Fords Apt. 618\nMohammadview, OH 96606', NULL, '2019-09-30 15:39:09', '2019-09-30 15:39:09'),
(814, 100, 'Alfonzo Hill MD', '', 'P', 'Katolik', '42372 Johnson Causeway\nLake Keara, AZ 90143-7698', NULL, '2019-09-30 15:39:09', '2019-09-30 15:39:09'),
(815, 100, 'Dr. Ryan Walker', '', 'P', 'Islam', '48815 Kuhic Ports\nPaucekberg, KS 34441', NULL, '2019-09-30 15:39:09', '2019-09-30 15:39:09'),
(816, 100, 'Prof. Myrl Koss DDS', '', 'P', 'Hindu', '752 Johnson Hills\nLake Lawsontown, MI 01459-2737', NULL, '2019-09-30 15:39:09', '2019-09-30 15:39:09'),
(817, 100, 'Miss Dorris Koelpin MD', '', 'L', 'Hindu', '2608 Mae Lock Suite 572\nSouth Gwendolynchester, GA 23699-1121', NULL, '2019-09-30 15:39:09', '2019-09-30 15:39:09'),
(818, 100, 'Amani Veum', '', 'P', 'Budha', '7204 Hillard Inlet\nSpinkamouth, CA 86914', NULL, '2019-09-30 15:39:09', '2019-09-30 15:39:09'),
(819, 100, 'Reyna Breitenberg', '', 'P', 'Islam', '711 Magali Street\nWymanside, WA 78753', NULL, '2019-09-30 15:39:09', '2019-09-30 15:39:09'),
(820, 100, 'Javon O\'Keefe', '', 'L', 'Islam', '573 Kristy Union Apt. 415\nLavonneside, AR 39312', NULL, '2019-09-30 15:39:09', '2019-09-30 15:39:09'),
(821, 100, 'Trace Gottlieb II', '', 'L', 'Katolik', '899 Corwin Shoal\nSchimmelshire, FL 36471', NULL, '2019-09-30 15:39:09', '2019-09-30 15:39:09'),
(822, 100, 'Mr. Favian Harvey PhD', '', 'L', 'Kristen', '865 Lemuel Valleys Apt. 808\nHageneston, MI 50086', NULL, '2019-09-30 15:39:09', '2019-09-30 15:39:09'),
(823, 100, 'Teresa Stoltenberg', '', 'L', 'Hindu', '607 Hamill Path Suite 427\nLake Reynoldhaven, IL 97413-1700', NULL, '2019-09-30 15:39:09', '2019-09-30 15:39:09'),
(824, 100, 'Dr. Zelda Russel DDS', '', 'P', 'Katolik', '647 Stevie Ridges\nSouth Kaela, CA 99629', NULL, '2019-09-30 15:39:09', '2019-09-30 15:39:09'),
(825, 100, 'Mr. Otho Huel', '', 'L', 'Katolik', '40818 Alysa Locks\nNorth Domingo, IL 20180-3829', NULL, '2019-09-30 15:39:09', '2019-09-30 15:39:09'),
(826, 100, 'Brittany Rutherford', '', 'P', 'Kristen', '200 Noel Forge Suite 499\nEast Noemie, WA 69115-4425', NULL, '2019-09-30 15:39:09', '2019-09-30 15:39:09'),
(827, 100, 'Zena Bosco', '', 'P', 'Islam', '337 Zelda Lodge\nWest Savionport, HI 03682', NULL, '2019-09-30 15:39:09', '2019-09-30 15:39:09'),
(828, 100, 'Ally Hudson MD', '', 'L', 'Kristen', '66130 Brakus Flat Apt. 798\nWardberg, NC 87186', NULL, '2019-09-30 15:39:09', '2019-09-30 15:39:09'),
(829, 100, 'Michale Stracke', '', 'P', 'Kristen', '640 Macie Spurs\nLake Dedric, GA 40105-6215', NULL, '2019-09-30 15:39:09', '2019-09-30 15:39:09'),
(830, 100, 'Dion Schowalter', '', 'L', 'Budha', '2357 Harris Run Apt. 556\nEast Hope, MD 98561', NULL, '2019-09-30 15:39:09', '2019-09-30 15:39:09'),
(831, 100, 'Sabina Casper', '', 'P', 'Katolik', '8054 Runolfsson Squares Suite 051\nNitzscheport, CT 86625-6226', NULL, '2019-09-30 15:39:09', '2019-09-30 15:39:09'),
(832, 100, 'Prof. Dovie Klein', '', 'P', 'Katolik', '44721 Brandon Bypass Suite 473\nWest Zachary, NJ 93434', NULL, '2019-09-30 15:39:09', '2019-09-30 15:39:09'),
(833, 100, 'Irving Trantow', '', 'P', 'Islam', '722 Dexter Parkways Suite 005\nSouth Marcelle, CO 71811-7987', NULL, '2019-09-30 15:39:09', '2019-09-30 15:39:09'),
(834, 100, 'Delphine O\'Reilly', '', 'L', 'Budha', '8650 Nader Wells Suite 935\nWestborough, FL 07204-1489', NULL, '2019-09-30 15:39:09', '2019-09-30 15:39:09'),
(835, 100, 'Prof. Albin Homenick', '', 'P', 'Islam', '19600 Roob Rue Apt. 704\nPriceview, MS 65003', NULL, '2019-09-30 15:39:09', '2019-09-30 15:39:09'),
(836, 100, 'Annamarie Koch', '', 'L', 'Hindu', '705 Schuyler Drive\nCurtisstad, WI 89315-1246', NULL, '2019-09-30 15:39:09', '2019-09-30 15:39:09'),
(837, 100, 'Zakary Murazik Sr.', '', 'P', 'Islam', '381 Dach Knolls Apt. 817\nLake Hertha, PA 48751-5129', NULL, '2019-09-30 15:39:09', '2019-09-30 15:39:09'),
(838, 100, 'Elliot Cormier', '', 'P', 'Islam', '42106 Darien Mountain Apt. 164\nLake Ima, NY 87052-9057', NULL, '2019-09-30 15:39:09', '2019-09-30 15:39:09'),
(839, 100, 'Julio Hand', '', 'L', 'Budha', '93194 Corbin Mountains Suite 339\nJamesonview, DC 96511', NULL, '2019-09-30 15:39:09', '2019-09-30 15:39:09'),
(840, 100, 'Domenica Koepp', '', 'L', 'Kristen', '90853 Wiegand Hollow\nWhiteton, VT 31758', NULL, '2019-09-30 15:39:09', '2019-09-30 15:39:09'),
(841, 100, 'Clemens Krajcik', '', 'L', 'Islam', '6843 Reilly Lake\nCaryport, CO 32293', NULL, '2019-09-30 15:39:09', '2019-09-30 15:39:09'),
(842, 100, 'Lucienne McKenzie', '', 'L', 'Islam', '5532 Sam Road\nNorth Emeliechester, PA 48214', NULL, '2019-09-30 15:39:09', '2019-09-30 15:39:09'),
(843, 100, 'Miss Zita Gerlach', '', 'P', 'Katolik', '745 Hackett Villages Apt. 259\nNew Betsyside, OK 05469', NULL, '2019-09-30 15:39:09', '2019-09-30 15:39:09'),
(844, 100, 'Mr. Solon Treutel MD', '', 'P', 'Katolik', '869 Karlie Station\nEast Lizethchester, MO 21998-1184', NULL, '2019-09-30 15:39:09', '2019-09-30 15:39:09'),
(845, 100, 'Jaleel Kreiger', '', 'L', 'Islam', '94581 Konopelski View\nPort Lucianoshire, ID 42207', NULL, '2019-09-30 15:39:09', '2019-09-30 15:39:09'),
(846, 100, 'Wayne Reichert', '', 'L', 'Katolik', '1923 Kuvalis Lights Apt. 893\nYostport, FL 27395', NULL, '2019-09-30 15:39:10', '2019-09-30 15:39:10'),
(847, 100, 'Lavada Terry PhD', '', 'L', 'Katolik', '2913 Stanton Burgs Suite 178\nRodriguezbury, SC 99511', NULL, '2019-09-30 15:39:10', '2019-09-30 15:39:10'),
(848, 100, 'Eulah McKenzie', '', 'P', 'Islam', '93768 Arianna Fords Suite 239\nPort Jensen, IN 47104-1095', NULL, '2019-09-30 15:39:10', '2019-09-30 15:39:10'),
(849, 100, 'Rahsaan Heidenreich', '', 'L', 'Islam', '493 Lesch Walks\nWest Yesenia, IL 27288', NULL, '2019-09-30 15:39:10', '2019-09-30 15:39:10'),
(850, 100, 'Mr. Elbert Koepp', '', 'P', 'Budha', '16406 Anthony Squares\nKieranview, VT 08954-2205', NULL, '2019-09-30 15:39:10', '2019-09-30 15:39:10'),
(851, 100, 'Dayana Tillman', '', 'P', 'Katolik', '59572 O\'Hara Fort\nNew Easton, SC 80722', NULL, '2019-09-30 15:39:10', '2019-09-30 15:39:10'),
(852, 100, 'Jamel Green', '', 'L', 'Katolik', '931 Crystal Village\nRebeccastad, WV 00285', NULL, '2019-09-30 15:39:10', '2019-09-30 15:39:10'),
(853, 100, 'Prof. Amina Parisian', '', 'P', 'Islam', '212 Hertha Coves Suite 547\nEast Lorafurt, NJ 84113', NULL, '2019-09-30 15:39:10', '2019-09-30 15:39:10'),
(854, 100, 'Shanna Jacobi', '', 'P', 'Islam', '22861 Viola Expressway Suite 817\nBessieburgh, IA 34634-4928', NULL, '2019-09-30 15:39:10', '2019-09-30 15:39:10'),
(855, 100, 'Alta Stiedemann', '', 'L', 'Islam', '47951 Janet Burgs Suite 884\nPort Jesse, AL 39749', NULL, '2019-09-30 15:39:10', '2019-09-30 15:39:10'),
(856, 100, 'Kathryne Jacobs IV', '', 'L', 'Hindu', '224 Monahan Square\nCorinehaven, WA 34328-7579', NULL, '2019-09-30 15:39:10', '2019-09-30 15:39:10'),
(857, 100, 'Mrs. Diana Bartoletti II', '', 'L', 'Budha', '429 Kohler Crossing Suite 457\nSouth Sabinaberg, CA 02078-9455', NULL, '2019-09-30 15:39:10', '2019-09-30 15:39:10'),
(858, 100, 'Ms. Hertha Ratke DDS', '', 'P', 'Hindu', '7363 Herman Expressway\nAbnermouth, CA 31003', NULL, '2019-09-30 15:39:10', '2019-09-30 15:39:10'),
(859, 100, 'Sven Abernathy', '', 'L', 'Kristen', '9998 Lind Island\nPort Josefina, OR 14940-4151', NULL, '2019-09-30 15:39:10', '2019-09-30 15:39:10'),
(860, 100, 'Natalie Thiel', '', 'L', 'Budha', '866 VonRueden Key\nNovatown, SC 71163', NULL, '2019-09-30 15:39:10', '2019-09-30 15:39:10'),
(861, 100, 'Ms. Janis Stehr', '', 'P', 'Kristen', '7384 Paul Expressway\nSouth Violettetown, TX 15250-7861', NULL, '2019-09-30 15:39:10', '2019-09-30 15:39:10'),
(862, 100, 'Werner Kuhic', '', 'P', 'Islam', '5392 Rath Mews\nNeilbury, UT 60335-8556', NULL, '2019-09-30 15:39:10', '2019-09-30 15:39:10'),
(863, 100, 'Wyman Ferry V', '', 'P', 'Hindu', '5366 Maurice Dale Apt. 460\nLambertshire, FL 04931', NULL, '2019-09-30 15:39:10', '2019-09-30 15:39:10'),
(864, 100, 'Maximus Fritsch MD', '', 'L', 'Budha', '1364 Mabel Forges\nKozeyport, NV 59840-8313', NULL, '2019-09-30 15:39:10', '2019-09-30 15:39:10'),
(865, 100, 'Antwon Mueller', '', 'L', 'Kristen', '85153 Gerhold Vista\nGibsonbury, AR 54444-5347', NULL, '2019-09-30 15:39:10', '2019-09-30 15:39:10'),
(866, 100, 'Gregoria Gleichner', '', 'P', 'Budha', '2559 Laisha Roads Apt. 894\nLake Rossville, AR 72738-4358', NULL, '2019-09-30 15:39:10', '2019-09-30 15:39:10'),
(867, 100, 'Tyreek Smith', '', 'L', 'Islam', '3712 Johns Station Apt. 573\nAdanberg, LA 42169-7447', NULL, '2019-09-30 15:39:10', '2019-09-30 15:39:10'),
(868, 100, 'Sidney Gerhold', '', 'L', 'Hindu', '3532 Anderson Junctions Suite 096\nSwiftside, MT 01665-7591', NULL, '2019-09-30 15:39:10', '2019-09-30 15:39:10'),
(869, 100, 'Audra Stokes', '', 'P', 'Katolik', '8209 Gustave Squares Apt. 564\nNorth Yasmeenland, AL 39747', NULL, '2019-09-30 15:39:10', '2019-09-30 15:39:10'),
(870, 100, 'Colt Hane', '', 'P', 'Hindu', '94886 Joany Manor Suite 785\nLake Ivamouth, OR 94408', NULL, '2019-09-30 15:39:10', '2019-09-30 15:39:10'),
(871, 100, 'Samantha Kemmer', '', 'P', 'Budha', '5392 Sister Station Apt. 656\nWilliamland, AR 71129', NULL, '2019-09-30 15:39:10', '2019-09-30 15:39:10'),
(872, 100, 'Prof. Zaria Heidenreich II', '', 'L', 'Hindu', '80908 Domingo Glens Suite 471\nWardtown, SD 28988-1460', NULL, '2019-09-30 15:39:10', '2019-09-30 15:39:10'),
(873, 100, 'Celestine Torphy', '', 'L', 'Kristen', '1289 Ivy Valley\nSouth Maxwell, CA 04290', NULL, '2019-09-30 15:39:10', '2019-09-30 15:39:10'),
(874, 100, 'Paolo Dickens', '', 'L', 'Hindu', '919 Braun Ways\nLarsonfort, AZ 82105', NULL, '2019-09-30 15:39:10', '2019-09-30 15:39:10'),
(875, 100, 'Mittie Langosh', '', 'L', 'Katolik', '5096 Durgan Hills Suite 399\nMurphyfurt, TX 10286', NULL, '2019-09-30 15:39:10', '2019-09-30 15:39:10'),
(876, 100, 'Kianna Dach', '', 'P', 'Katolik', '405 Douglas Hill Suite 201\nArdenburgh, WY 22824', NULL, '2019-09-30 15:39:10', '2019-09-30 15:39:10'),
(877, 100, 'Anne Willms II', '', 'P', 'Kristen', '8018 Janessa Circles Apt. 878\nPort Stacey, NJ 28619', NULL, '2019-09-30 15:39:10', '2019-09-30 15:39:10'),
(878, 100, 'Audreanne Abernathy III', '', 'P', 'Budha', '271 Kassulke Center\nNorth Cyrus, NY 35090', NULL, '2019-09-30 15:39:10', '2019-09-30 15:39:10'),
(879, 100, 'Gerardo Ankunding', '', 'L', 'Katolik', '39836 Keeling Greens Suite 053\nThurmanchester, NJ 94118', NULL, '2019-09-30 15:39:10', '2019-09-30 15:39:10'),
(880, 100, 'Vincenzo Leannon', '', 'L', 'Islam', '7316 Roy Corners\nSouth Lonnie, KS 52789-5895', NULL, '2019-09-30 15:39:10', '2019-09-30 15:39:10'),
(881, 100, 'Dr. Alec Jacobs MD', '', 'L', 'Katolik', '2873 Cody Bypass Suite 256\nCandiceshire, IL 52449-7686', NULL, '2019-09-30 15:39:10', '2019-09-30 15:39:10'),
(882, 100, 'Dolly Gerlach', '', 'P', 'Katolik', '9589 Felipe Spurs Suite 108\nBeahanfurt, MD 53783-5091', NULL, '2019-09-30 15:39:10', '2019-09-30 15:39:10'),
(883, 100, 'Lenny Sipes Sr.', '', 'L', 'Budha', '27108 Purdy Ford Suite 024\nRusselshire, RI 65581', NULL, '2019-09-30 15:39:10', '2019-09-30 15:39:10'),
(884, 100, 'Nat Koch', '', 'L', 'Katolik', '2514 Hahn Loop\nLake Gerhardview, AR 40934-1049', NULL, '2019-09-30 15:39:10', '2019-09-30 15:39:10'),
(885, 100, 'Dr. Barton Windler', '', 'L', 'Hindu', '16795 Watsica Ports Apt. 564\nNorth Brennanbury, ID 95778', NULL, '2019-09-30 15:39:10', '2019-09-30 15:39:10'),
(886, 100, 'Lisa Armstrong MD', '', 'L', 'Kristen', '70298 Jerde Stravenue Suite 863\nGeohaven, VA 70947', NULL, '2019-09-30 15:39:10', '2019-09-30 15:39:10'),
(887, 100, 'Mr. Cameron Durgan IV', '', 'P', 'Kristen', '1761 Dillon Overpass\nLake Nola, GA 46086', NULL, '2019-09-30 15:39:10', '2019-09-30 15:39:10'),
(888, 100, 'Chaya Rolfson', '', 'P', 'Hindu', '763 Obie Path\nMcCulloughtown, CA 08757-2652', NULL, '2019-09-30 15:39:10', '2019-09-30 15:39:10'),
(889, 100, 'Prof. Jessie Gaylord', '', 'P', 'Hindu', '745 Vivien Viaduct Suite 273\nBinsfort, ME 89144', NULL, '2019-09-30 15:39:11', '2019-09-30 15:39:11'),
(891, 100, 'Prof. Raul Gusikowski', '', 'P', 'Islam', '8852 Torphy Extension Suite 592\nEast Eloisa, ID 77262', NULL, '2019-09-30 15:39:11', '2019-09-30 15:39:11'),
(892, 100, 'Eugene Kunde', '', 'P', 'Kristen', '2095 Vandervort Street Apt. 410\nPhoebeburgh, MI 57195-6241', NULL, '2019-09-30 15:39:11', '2019-09-30 15:39:11'),
(893, 100, 'Lenna Goodwin', '', 'P', 'Katolik', '6267 Antoinette Brooks\nEast Gustave, ME 98665-9547', NULL, '2019-09-30 15:39:11', '2019-09-30 15:39:11'),
(894, 100, 'Kianna Kunde DDS', '', 'P', 'Budha', '66040 Kasandra Unions\nNorth Kyla, NY 59902', NULL, '2019-09-30 15:39:11', '2019-09-30 15:39:11'),
(895, 100, 'Jaydon Carter', '', 'P', 'Katolik', '43491 Theodore Track Apt. 772\nEvelineport, LA 17675', NULL, '2019-09-30 15:39:11', '2019-09-30 15:39:11'),
(896, 100, 'Gust Grant V', '', 'P', 'Islam', '8455 Miles Falls Suite 594\nShieldsshire, ND 07245-2249', NULL, '2019-09-30 15:39:11', '2019-09-30 15:39:11'),
(897, 100, 'Dr. Mallie Treutel IV', '', 'L', 'Kristen', '15649 Aaron Alley Suite 208\nTrycialand, IA 29162', NULL, '2019-09-30 15:39:11', '2019-09-30 15:39:11'),
(898, 100, 'Mrs. Amely Kohler', '', 'L', 'Kristen', '252 McCullough Light Apt. 474\nNew Reanna, LA 51200', NULL, '2019-09-30 15:39:11', '2019-09-30 15:39:11'),
(899, 100, 'Prof. Sydney Pollich', '', 'P', 'Kristen', '36683 O\'Conner Trace Apt. 451\nWest Jalen, SD 35697-2662', NULL, '2019-09-30 15:39:11', '2019-09-30 15:39:11'),
(900, 100, 'Wilmer O\'Connell', '', 'L', 'Budha', '1253 Gabe Pike\nPort Alvah, NJ 58855', NULL, '2019-09-30 15:39:11', '2019-09-30 15:39:11'),
(901, 100, 'Ronny Mayert', '', 'L', 'Budha', '377 Zola Squares\nSouth Neva, ND 87237-8498', NULL, '2019-09-30 15:39:11', '2019-09-30 15:39:11'),
(902, 100, 'Branson Homenick III', '', 'P', 'Kristen', '74939 Clarabelle Islands Apt. 071\nWest Scottieside, SD 42410', NULL, '2019-09-30 15:39:11', '2019-09-30 15:39:11'),
(903, 100, 'Sebastian Wolf', '', 'L', 'Hindu', '5694 Pollich Light\nLaurencemouth, FL 77394', NULL, '2019-09-30 15:39:11', '2019-09-30 15:39:11'),
(904, 100, 'Mrs. Emelie Kulas Sr.', '', 'L', 'Budha', '209 Roberts Mountains Suite 516\nPort Kaylatown, VT 97040-2985', NULL, '2019-09-30 15:39:11', '2019-09-30 15:39:11'),
(905, 100, 'Antone Beier', '', 'L', 'Budha', '826 Claudine Meadow\nPricetown, KS 93100', NULL, '2019-09-30 15:39:11', '2019-09-30 15:39:11'),
(906, 100, 'Khalil Wehner', '', 'P', 'Hindu', '60863 Summer Cape\nBaileechester, CA 40976', NULL, '2019-09-30 15:39:11', '2019-09-30 15:39:11'),
(907, 100, 'Mr. Orland Mohr', '', 'L', 'Hindu', '4624 Jones Fords\nSouth Edgardo, ID 91387-8338', NULL, '2019-09-30 15:39:11', '2019-09-30 15:39:11'),
(908, 100, 'Katelynn Sipes DDS', '', 'P', 'Kristen', '89867 Amya Greens Suite 703\nGradystad, GA 17464-9300', NULL, '2019-09-30 15:39:11', '2019-09-30 15:39:11'),
(909, 100, 'Esther Herman', '', 'L', 'Hindu', '33856 Judy Curve\nHillsview, CO 08174', NULL, '2019-09-30 15:39:11', '2019-09-30 15:39:11'),
(910, 100, 'Juston Rosenbaum', '', 'P', 'Kristen', '613 Heller Keys\nSouth Carolyne, UT 70239-8316', NULL, '2019-09-30 15:39:11', '2019-09-30 15:39:11'),
(911, 100, 'Willis Effertz', '', 'L', 'Katolik', '132 Stacey Junctions\nLeannonchester, IL 08905-9073', NULL, '2019-09-30 15:39:11', '2019-09-30 15:39:11'),
(912, 100, 'Florence Kohler', '', 'L', 'Katolik', '2527 Roberts Trail\nNew Corine, ME 80173-2141', NULL, '2019-09-30 15:39:11', '2019-09-30 15:39:11'),
(913, 100, 'Reilly Bergstrom', '', 'L', 'Budha', '2731 Weimann Drives\nWandahaven, AR 74096', NULL, '2019-09-30 15:39:11', '2019-09-30 15:39:11'),
(914, 100, 'Prof. Eliseo Weissnat', '', 'P', 'Katolik', '58072 Kihn Rest\nDamonstad, NY 44364', NULL, '2019-09-30 15:39:11', '2019-09-30 15:39:11'),
(915, 100, 'Callie Wisoky', '', 'L', 'Kristen', '33797 Sheridan Cliffs Suite 683\nWest Merl, DE 28982-7322', NULL, '2019-09-30 15:39:11', '2019-09-30 15:39:11'),
(916, 100, 'Orland Doyle', '', 'P', 'Katolik', '906 Beryl Row Suite 966\nDestinystad, RI 29217', NULL, '2019-09-30 15:39:11', '2019-09-30 15:39:11'),
(917, 100, 'Adeline Langworth III', '', 'P', 'Hindu', '39126 Padberg Passage Suite 991\nPort Bobbiebury, NE 88107', NULL, '2019-09-30 15:39:11', '2019-09-30 15:39:11'),
(918, 100, 'Reyes Satterfield', '', 'P', 'Katolik', '8615 Sandra Plaza Apt. 385\nLake Estelhaven, DE 37092-0205', NULL, '2019-09-30 15:39:11', '2019-09-30 15:39:11'),
(919, 100, 'Prof. Isabella Douglas Jr.', '', 'P', 'Hindu', '623 Herman Fields Apt. 686\nRettatown, DC 33171', NULL, '2019-09-30 15:39:11', '2019-09-30 15:39:11'),
(920, 100, 'Kira Nikolaus V', '', 'L', 'Hindu', '749 Joe Mission Suite 065\nDenesikburgh, PA 47799-8228', NULL, '2019-09-30 15:39:11', '2019-09-30 15:39:11'),
(921, 100, 'Andres Conn', '', 'L', 'Hindu', '281 Nya Squares\nGeorgianaview, DE 45747', NULL, '2019-09-30 15:39:11', '2019-09-30 15:39:11'),
(922, 100, 'Darien Rolfson', '', 'P', 'Budha', '1340 Rosalyn Ranch\nSouth Sandy, NM 03716', NULL, '2019-09-30 15:39:11', '2019-09-30 15:39:11'),
(923, 100, 'Rosemary Rogahn', '', 'L', 'Katolik', '4617 Koch Drives Apt. 563\nNorth Boville, KS 90792-2605', NULL, '2019-09-30 15:39:11', '2019-09-30 15:39:11'),
(924, 100, 'August Goodwin Jr.', '', 'P', 'Islam', '541 Norene Inlet\nNew Michelleberg, WV 85649', NULL, '2019-09-30 15:39:11', '2019-09-30 15:39:11'),
(925, 100, 'Marquis Hackett', '', 'P', 'Hindu', '816 Ebony Hill\nPaucekbury, KS 69075', NULL, '2019-09-30 15:39:11', '2019-09-30 15:39:11'),
(926, 100, 'Prof. May Barrows', '', 'L', 'Kristen', '7118 Dangelo Square Apt. 697\nBednarport, MT 33561', NULL, '2019-09-30 15:39:11', '2019-09-30 15:39:11'),
(927, 100, 'Ms. Deja Marks', '', 'L', 'Katolik', '9076 Leannon Highway\nNicolasland, VA 59925-2876', NULL, '2019-09-30 15:39:11', '2019-09-30 15:39:11'),
(928, 100, 'Oran Cormier', '', 'L', 'Kristen', '272 Myah Views\nPort Geovanyfurt, MT 89228-4558', NULL, '2019-09-30 15:39:11', '2019-09-30 15:39:11'),
(929, 100, 'Brent Koelpin', '', 'L', 'Islam', '416 Shayna Place Apt. 920\nBlickmouth, MO 14621', NULL, '2019-09-30 15:39:11', '2019-09-30 15:39:11'),
(930, 100, 'Maddison Kunde', '', 'L', 'Kristen', '2529 Cruickshank Estate\nEldridgestad, SD 09256-9425', NULL, '2019-09-30 15:39:11', '2019-09-30 15:39:11'),
(931, 100, 'Malinda Mraz Sr.', '', 'L', 'Hindu', '5953 Uriel Forest Suite 106\nMohrfurt, CA 35279-9009', NULL, '2019-09-30 15:39:11', '2019-09-30 15:39:11'),
(932, 100, 'Miss Amelia Bartell PhD', '', 'L', 'Katolik', '57965 Candida Orchard\nFlatleyburgh, AL 78394', NULL, '2019-09-30 15:39:11', '2019-09-30 15:39:11'),
(933, 100, 'Maci Ebert', '', 'P', 'Islam', '46908 Susan Falls Apt. 817\nCroninview, NY 85964', NULL, '2019-09-30 15:39:11', '2019-09-30 15:39:11'),
(934, 100, 'German Wiza', '', 'L', 'Islam', '6540 Stephon Alley\nNorth Alexandrotown, OH 79261-5656', NULL, '2019-09-30 15:39:11', '2019-09-30 15:39:11'),
(935, 100, 'Geoffrey Bernhard', '', 'P', 'Islam', '50776 Jones Causeway Apt. 816\nBogisichburgh, AR 14056-7567', NULL, '2019-09-30 15:39:11', '2019-09-30 15:39:11'),
(936, 100, 'Jade Nader', '', 'P', 'Kristen', '96470 Von Mountains Apt. 524\nCrooksmouth, OR 34152-6401', NULL, '2019-09-30 15:39:11', '2019-09-30 15:39:11'),
(937, 100, 'Kallie Wolff DDS', '', 'L', 'Hindu', '908 Easton Street\nCorwinport, MN 35750-7217', NULL, '2019-09-30 15:39:11', '2019-09-30 15:39:11'),
(938, 100, 'Josephine Gutkowski PhD', '', 'P', 'Katolik', '447 Bahringer Walk\nDietrichfort, MI 38553-2411', NULL, '2019-09-30 15:39:11', '2019-09-30 15:39:11'),
(939, 100, 'Virginie Kautzer', '', 'P', 'Hindu', '3085 Sheldon Isle\nNew Marielle, IN 82335-1413', NULL, '2019-09-30 15:39:12', '2019-09-30 15:39:12'),
(940, 100, 'Crystal Harris', '', 'P', 'Kristen', '49652 Sarina Valley\nLeuschkeborough, IA 63960-9449', NULL, '2019-09-30 15:39:12', '2019-09-30 15:39:12'),
(941, 100, 'Junius Hyatt', '', 'L', 'Hindu', '9226 Mann Drive\nLake Pansy, TX 31861', NULL, '2019-09-30 15:39:12', '2019-09-30 15:39:12'),
(942, 100, 'Prof. Olen Kuhic Jr.', '', 'P', 'Hindu', '781 Hansen Underpass Suite 888\nNorth Emmetburgh, VT 44547', NULL, '2019-09-30 15:39:12', '2019-09-30 15:39:12'),
(943, 100, 'Edyth Anderson IV', '', 'P', 'Budha', '376 Rippin Manor Suite 596\nSouth Tylerton, NV 76286', NULL, '2019-09-30 15:39:12', '2019-09-30 15:39:12'),
(944, 100, 'Melyssa Ortiz', '', 'P', 'Katolik', '634 Michelle Walks\nPenelopeton, OH 95495', NULL, '2019-09-30 15:39:12', '2019-09-30 15:39:12'),
(945, 100, 'Dr. Lavon Predovic', '', 'L', 'Budha', '6222 Stamm Throughway\nHomenickmouth, HI 06051', NULL, '2019-09-30 15:39:12', '2019-09-30 15:39:12'),
(946, 100, 'Miss Dessie O\'Conner I', '', 'L', 'Budha', '1413 Ettie Fields Suite 987\nD\'Amoretown, ID 85830-0429', NULL, '2019-09-30 15:39:12', '2019-09-30 15:39:12'),
(947, 100, 'Billy Dickens', '', 'L', 'Hindu', '2712 Toby Views\nSouth Foster, KY 68173', NULL, '2019-09-30 15:39:12', '2019-09-30 15:39:12'),
(948, 100, 'Noemy Goyette IV', '', 'P', 'Budha', '123 Abernathy Manor\nWest Trey, DC 79895', NULL, '2019-09-30 15:39:12', '2019-09-30 15:39:12'),
(949, 100, 'Cathrine Kuvalis', '', 'P', 'Budha', '956 Daniel Freeway\nDellaside, CO 36608-2176', NULL, '2019-09-30 15:39:12', '2019-09-30 15:39:12'),
(950, 100, 'Mrs. Bonnie Mante I', '', 'L', 'Kristen', '127 Welch Walk Apt. 330\nLake Torrey, IA 66125-1438', NULL, '2019-09-30 15:39:12', '2019-09-30 15:39:12'),
(951, 100, 'Christa Hoeger', '', 'P', 'Katolik', '38429 Malachi Court\nSteubershire, NC 63139', NULL, '2019-09-30 15:39:12', '2019-09-30 15:39:12'),
(952, 100, 'Lilian Corkery', '', 'P', 'Hindu', '7095 Jamil Place\nPearlinetown, ND 16211', NULL, '2019-09-30 15:39:12', '2019-09-30 15:39:12'),
(953, 100, 'Lucinda Weber', '', 'P', 'Budha', '266 Kilback Spring Apt. 868\nSouth Arthur, ME 55234-7059', NULL, '2019-09-30 15:39:12', '2019-09-30 15:39:12'),
(954, 100, 'Timmy Rolfson', '', 'P', 'Katolik', '64313 Schimmel Wells\nSouth Raeganland, WY 96837-3381', NULL, '2019-09-30 15:39:12', '2019-09-30 15:39:12'),
(955, 100, 'Miss Rosella Schmeler', '', 'L', 'Kristen', '14360 Ariane Island Suite 777\nWest Craig, WV 95094', NULL, '2019-09-30 15:39:12', '2019-09-30 15:39:12'),
(957, 100, 'Mrs. Ova Graham DDS', '', 'L', 'Islam', '53634 Rath Unions Apt. 658\nPort Jevonfort, ID 11448-3904', NULL, '2019-09-30 15:39:12', '2019-09-30 15:39:12'),
(958, 100, 'Celestine Cummings', '', 'P', 'Budha', '29225 Lubowitz Inlet\nKozeybury, OR 40956', NULL, '2019-09-30 15:39:12', '2019-09-30 15:39:12'),
(959, 100, 'Alexane Blanda', '', 'L', 'Budha', '2972 Aimee Ridges Suite 370\nNorth Brianne, OK 98736', NULL, '2019-09-30 15:39:12', '2019-09-30 15:39:12'),
(960, 100, 'Chloe Wolff', '', 'P', 'Kristen', '5586 Tanya Dale\nGustville, GA 50292', NULL, '2019-09-30 15:39:12', '2019-09-30 15:39:12'),
(961, 100, 'Dr. Fausto Gleichner', '', 'P', 'Kristen', '1177 Jace Pike\nGideonborough, MO 50927', NULL, '2019-09-30 15:39:12', '2019-09-30 15:39:12'),
(962, 100, 'Lon Stokes DDS', '', 'P', 'Hindu', '121 Elva Viaduct Suite 039\nLaurianeburgh, AR 17278-8067', NULL, '2019-09-30 15:39:12', '2019-09-30 15:39:12'),
(963, 100, 'Jeanie Jaskolski', '', 'P', 'Budha', '5446 Bashirian Unions Apt. 863\nVickyborough, WY 21168-2314', NULL, '2019-09-30 15:39:12', '2019-09-30 15:39:12'),
(964, 100, 'Prof. Cleora Weissnat', '', 'L', 'Kristen', '752 Emard Harbors\nHarveytown, CO 93969', NULL, '2019-09-30 15:39:12', '2019-09-30 15:39:12'),
(965, 100, 'Art Thompson', '', 'L', 'Islam', '846 Okuneva Landing Suite 871\nHumbertotown, VA 47125', NULL, '2019-09-30 15:39:12', '2019-09-30 15:39:12'),
(966, 100, 'Johnny Langworth III', '', 'L', 'Hindu', '38429 Jordy Cape\nGreenshire, TN 31182', NULL, '2019-09-30 15:39:12', '2019-09-30 15:39:12'),
(967, 100, 'Dr. Keaton Pfannerstill IV', '', 'L', 'Hindu', '5922 Alison Lodge\nBahringerberg, VA 89704', NULL, '2019-09-30 15:39:12', '2019-09-30 15:39:12'),
(968, 100, 'Dr. Chelsey Wisoky', '', 'L', 'Hindu', '12552 Golda Shores Suite 861\nNorth Violet, GA 78814-5923', NULL, '2019-09-30 15:39:12', '2019-09-30 15:39:12'),
(969, 100, 'Sallie Walsh', '', 'L', 'Hindu', '360 Morissette Crossroad\nKlockoton, IA 77166', NULL, '2019-09-30 15:39:12', '2019-09-30 15:39:12'),
(970, 100, 'Mrs. Baby Green DVM', '', 'P', 'Kristen', '844 Price Drives Suite 163\nEthelyntown, OK 50757', NULL, '2019-09-30 15:39:12', '2019-09-30 15:39:12'),
(971, 100, 'Gerald Boyle PhD', '', 'L', 'Budha', '2370 Hudson Crossroad Suite 320\nMerleborough, LA 96342-0496', NULL, '2019-09-30 15:39:12', '2019-09-30 15:39:12'),
(972, 100, 'Dr. Glen Jacobson', '', 'P', 'Islam', '2919 Will Ranch Apt. 617\nSouth Aubree, NY 56309-0030', NULL, '2019-09-30 15:39:12', '2019-09-30 15:39:12'),
(973, 100, 'Mrs. Kari Frami IV', '', 'P', 'Budha', '69261 Kris Pine\nLeschville, CO 52928-8655', NULL, '2019-09-30 15:39:12', '2019-09-30 15:39:12'),
(974, 100, 'Kiara Hyatt', '', 'L', 'Hindu', '462 Runte Square Suite 365\nNorth Eino, WA 41550', NULL, '2019-09-30 15:39:12', '2019-09-30 15:39:12'),
(975, 100, 'Ludie Frami', '', 'L', 'Katolik', '18400 Haley Land\nPort Jevonberg, NC 35206-7609', NULL, '2019-09-30 15:39:12', '2019-09-30 15:39:12'),
(976, 100, 'Dr. Miguel Fadel', '', 'L', 'Islam', '76854 Abernathy Club\nReynoldstown, ID 26605', NULL, '2019-09-30 15:39:12', '2019-09-30 15:39:12'),
(977, 100, 'Prof. Delaney Cronin I', '', 'L', 'Kristen', '65662 Cormier Place\nSouth Bransonville, ID 67393', NULL, '2019-09-30 15:39:12', '2019-09-30 15:39:12'),
(978, 100, 'Prof. Carmine Greenholt', '', 'P', 'Hindu', '8318 Tristin Cove\nNew Joemouth, OR 03121-3517', NULL, '2019-09-30 15:39:12', '2019-09-30 15:39:12'),
(979, 100, 'Ms. Aileen Zemlak V', '', 'P', 'Islam', '13571 Ophelia Lock Apt. 796\nBridgetport, AR 13767-6624', NULL, '2019-09-30 15:39:12', '2019-09-30 15:39:12'),
(980, 100, 'Mr. Kennedi Zieme', '', 'L', 'Budha', '235 Blick Pines Apt. 812\nNorth Mattfurt, NH 46133-6622', NULL, '2019-09-30 15:39:12', '2019-09-30 15:39:12'),
(981, 100, 'Virginie Walsh', '', 'P', 'Katolik', '64557 Melisa Shores Apt. 639\nMaggioland, CO 74370', NULL, '2019-09-30 15:39:12', '2019-09-30 15:39:12'),
(982, 100, 'Malvina Thompson PhD', '', 'P', 'Budha', '9020 Salvador Turnpike\nRosemarieside, IA 78130', NULL, '2019-09-30 15:39:13', '2019-09-30 15:39:13'),
(983, 100, 'Prof. Rollin Runolfsson', '', 'L', 'Hindu', '7774 Conn Locks Apt. 179\nNew Darrylview, AR 08874-1420', NULL, '2019-09-30 15:39:13', '2019-09-30 15:39:13'),
(984, 100, 'Santina Vandervort', '', 'L', 'Budha', '2614 Kub Lock Apt. 096\nPort Reed, NC 41700', NULL, '2019-09-30 15:39:13', '2019-09-30 15:39:13'),
(985, 100, 'Citlalli Lynch', '', 'L', 'Katolik', '92460 Willa Vista\nMiamouth, DC 26025-0512', NULL, '2019-09-30 15:39:13', '2019-09-30 15:39:13'),
(986, 100, 'Dr. Arturo Dietrich V', '', 'P', 'Islam', '19134 Lueilwitz Ports Suite 781\nRogeliohaven, AK 09605-1065', NULL, '2019-09-30 15:39:13', '2019-09-30 15:39:13'),
(987, 100, 'Cayla Homenick', '', 'P', 'Katolik', '1072 Arvid Canyon Apt. 119\nAshleeview, WV 23137', NULL, '2019-09-30 15:39:13', '2019-09-30 15:39:13'),
(988, 100, 'Fleta Hahn', '', 'P', 'Katolik', '45919 Gutkowski Ferry\nBuckridgeberg, NH 97148', NULL, '2019-09-30 15:39:13', '2019-09-30 15:39:13'),
(989, 100, 'Gerard Dickens', '', 'L', 'Kristen', '532 Hane Course\nNew Alberthamouth, MN 52331-0592', NULL, '2019-09-30 15:39:13', '2019-09-30 15:39:13'),
(990, 100, 'Barney Murphy', '', 'L', 'Islam', '3442 Myles Roads\nGladyceburgh, RI 43918-7713', NULL, '2019-09-30 15:39:13', '2019-09-30 15:39:13'),
(991, 100, 'Mrs. Maeve Zemlak', '', 'L', 'Budha', '50627 Jeramie Viaduct Apt. 091\nLabadieview, MD 50855', NULL, '2019-09-30 15:39:13', '2019-09-30 15:39:13'),
(992, 100, 'Myrl Farrell', '', 'L', 'Budha', '62086 Beahan Cove Suite 016\nSouth Juliet, UT 12799-8653', NULL, '2019-09-30 15:39:13', '2019-09-30 15:39:13'),
(993, 100, 'Stone Grimes', '', 'P', 'Islam', '61462 Nelle Port Suite 661\nWest Georgiana, AK 39492-6302', NULL, '2019-09-30 15:39:13', '2019-09-30 15:39:13'),
(994, 100, 'Brandt Borer', '', 'P', 'Hindu', '91917 Briana Ports\nWest Cruzfurt, NJ 95242-0720', NULL, '2019-09-30 15:39:13', '2019-09-30 15:39:13'),
(995, 100, 'Dr. Gilda Cole', '', 'P', 'Islam', '2511 Bernhard Village Apt. 927\nNorth Roelfurt, MT 29531', NULL, '2019-09-30 15:39:13', '2019-09-30 15:39:13'),
(996, 100, 'Freda Gulgowski', '', 'L', 'Islam', '198 Wilburn Well\nEast Bryce, DC 02410', NULL, '2019-09-30 15:39:13', '2019-09-30 15:39:13'),
(997, 100, 'Lynn Daugherty', '', 'L', 'Katolik', '85935 Mac Avenue\nBrekkeville, CT 90274', NULL, '2019-09-30 15:39:13', '2019-09-30 15:39:13'),
(998, 100, 'Efren Gerlach', '', 'P', 'Hindu', '29718 Cole Villages Apt. 067\nPagacborough, KY 03011-8320', NULL, '2019-09-30 15:39:13', '2019-09-30 15:39:13'),
(999, 100, 'Bryce Blick', '', 'L', 'Hindu', '287 Smitham Path\nO\'Haramouth, AZ 88842-0844', NULL, '2019-09-30 15:39:13', '2019-09-30 15:39:13'),
(1000, 100, 'Prof. Samantha Pagac IV', '', 'P', 'Kristen', '56655 Tromp Ports Suite 843\nPort Greta, ND 34579-7194', NULL, '2019-09-30 15:39:13', '2019-09-30 15:39:13'),
(1001, 100, 'Melisa Hoppe', '', 'L', 'Islam', '5570 Stewart Manors Apt. 588\nDavisshire, MS 51965', NULL, '2019-09-30 15:39:13', '2019-09-30 15:39:13'),
(1002, 100, 'Lynn Schimmel', '', 'L', 'Hindu', '47008 Kole Forest\nPort Caleighfurt, AR 85250-9936', NULL, '2019-09-30 15:39:13', '2019-09-30 15:39:13'),
(1003, 100, 'Dr. Marian Beatty Sr.', '', 'L', 'Islam', '48088 Ebony Route Apt. 003\nSouth Millerton, NM 67350', NULL, '2019-09-30 15:39:13', '2019-09-30 15:39:13'),
(1004, 100, 'Lori Oberbrunner', '', 'L', 'Katolik', '2828 Eichmann Fort\nBahringerborough, AR 41137', NULL, '2019-09-30 15:39:13', '2019-09-30 15:39:13'),
(1005, 100, 'Micaela Senger', '', 'P', 'Hindu', '21278 Dare Path\nRalphland, DC 55608-5971', NULL, '2019-09-30 15:39:13', '2019-09-30 15:39:13'),
(1006, 100, 'Prof. Cruz Hamill', '', 'L', 'Islam', '81055 Ned Corners Apt. 705\nSouth Melodyport, MN 31351', NULL, '2019-09-30 15:39:13', '2019-09-30 15:39:13'),
(1007, 100, 'Dr. Oswald Roob MD', '', 'L', 'Budha', '9865 Leannon Shoals Suite 848\nLake Natalia, MI 37123-5689', NULL, '2019-09-30 15:39:13', '2019-09-30 15:39:13'),
(1008, 100, 'Prof. Christiana Stanton', '', 'L', 'Kristen', '71167 Roman Point Apt. 206\nEast Sienna, NM 40093-7562', NULL, '2019-09-30 15:39:13', '2019-09-30 15:39:13'),
(1009, 100, 'Benny Schaefer', '', 'P', 'Hindu', '718 Schmeler Isle\nSouth Adanchester, PA 64758-8108', NULL, '2019-09-30 15:39:13', '2019-09-30 15:39:13'),
(1010, 100, 'Justus Wunsch Sr.', '', 'L', 'Islam', '4216 Pascale Highway\nKingmouth, NV 07056-9205', NULL, '2019-09-30 15:39:13', '2019-09-30 15:39:13'),
(1011, 100, 'Quinn Huel MD', '', 'L', 'Kristen', '71249 Wiegand Locks\nNew Abbychester, MO 94806-9348', NULL, '2019-09-30 15:39:13', '2019-09-30 15:39:13'),
(1012, 100, 'Mr. Kiley Kovacek Jr.', '', 'P', 'Islam', '457 Harvey Loop Apt. 010\nConroytown, GA 53777', NULL, '2019-09-30 15:39:13', '2019-09-30 15:39:13'),
(1013, 100, 'Madison Witting', '', 'L', 'Budha', '16636 Rowe Squares Suite 520\nRosenbaummouth, SC 73191', NULL, '2019-09-30 15:39:13', '2019-09-30 15:39:13'),
(1014, 100, 'Kristoffer Larkin', '', 'L', 'Katolik', '85503 Russell Knolls Apt. 172\nSouth Derickview, FL 21642-9025', NULL, '2019-09-30 15:39:13', '2019-09-30 15:39:13'),
(1015, 100, 'Prof. Riley Nolan', '', 'P', 'Islam', '30952 Considine Rapids\nWest Rosalindaville, VT 78790', NULL, '2019-09-30 15:39:13', '2019-09-30 15:39:13'),
(1016, 100, 'Christa Walsh III', '', 'P', 'Kristen', '66380 Heber Mountains\nBraunmouth, MT 87741-3481', NULL, '2019-09-30 15:39:13', '2019-09-30 15:39:13'),
(1017, 100, 'Mrs. Sydni Bechtelar', '', 'P', 'Budha', '21053 Anderson Ranch\nAlfonsoland, VT 82204', NULL, '2019-09-30 15:39:13', '2019-09-30 15:39:13'),
(1018, 100, 'Dustin Klein', '', 'L', 'Budha', '692 Connelly Dale\nMarychester, PA 74818', NULL, '2019-09-30 15:39:13', '2019-09-30 15:39:13'),
(1019, 100, 'Mr. Abdullah Crona', '', 'P', 'Hindu', '7981 Phyllis Pine Suite 018\nWest Alexanderview, AZ 42697', NULL, '2019-09-30 15:39:13', '2019-09-30 15:39:13'),
(1020, 100, 'Chelsea Spencer', '', 'P', 'Hindu', '213 Kozey Garden Apt. 460\nHaleyhaven, WA 45292', NULL, '2019-09-30 15:39:14', '2019-09-30 15:39:14'),
(1021, 100, 'Myrtis Johns', '', 'P', 'Hindu', '11557 Deja Lodge Apt. 728\nJohnsburgh, MA 70039', NULL, '2019-09-30 15:39:14', '2019-09-30 15:39:14'),
(1022, 100, 'Newton Wiegand', '', 'P', 'Hindu', '164 Ida Key Apt. 997\nSouth Joyce, MA 30593', NULL, '2019-09-30 15:39:14', '2019-09-30 15:39:14'),
(1023, 100, 'Kaya Feeney', '', 'L', 'Kristen', '16847 Ledner Row\nDawsonchester, WI 37236-3704', NULL, '2019-09-30 15:39:14', '2019-09-30 15:39:14'),
(1024, 100, 'Holly Will', '', 'L', 'Budha', '13845 Weimann Park Suite 461\nLake Makenzie, NH 42210-1788', NULL, '2019-09-30 15:39:14', '2019-09-30 15:39:14'),
(1025, 100, 'Rogelio Swift', '', 'L', 'Hindu', '57885 Johnston Shoal Suite 492\nBridgetside, WY 19715', NULL, '2019-09-30 15:39:14', '2019-09-30 15:39:14'),
(1026, 100, 'Immanuel Stokes', '', 'P', 'Hindu', '17615 Quinn Common\nKeithfort, MT 06786', NULL, '2019-09-30 15:39:14', '2019-09-30 15:39:14'),
(1027, 100, 'Kevon Swift', '', 'P', 'Budha', '73704 Marlin Cove Apt. 721\nNew Scot, ID 22121-8081', NULL, '2019-09-30 15:39:14', '2019-09-30 15:39:14'),
(1028, 100, 'Mrs. Kaylin Pollich DVM', '', 'P', 'Katolik', '6192 Jast Branch\nPort Muhammad, FL 54372-1259', NULL, '2019-09-30 15:39:14', '2019-09-30 15:39:14'),
(1029, 100, 'Ms. Jewel Miller', '', 'L', 'Islam', '239 DuBuque Stravenue\nWest Trentonmouth, CO 28476-7437', NULL, '2019-09-30 15:39:14', '2019-09-30 15:39:14'),
(1030, 100, 'Jenifer Aufderhar', '', 'P', 'Hindu', '32120 Schulist Route\nEast Adrainstad, WA 72923-2327', NULL, '2019-09-30 15:39:14', '2019-09-30 15:39:14'),
(1031, 100, 'Joesph Borer', '', 'P', 'Budha', '1595 Lemke Field\nMableland, RI 56623', NULL, '2019-09-30 15:39:14', '2019-09-30 15:39:14'),
(1032, 100, 'Maiya Renner', '', 'P', 'Hindu', '1339 Hermann Springs\nTiaraside, UT 78735-7835', NULL, '2019-09-30 15:39:14', '2019-09-30 15:39:14'),
(1033, 100, 'Bonita Cronin', '', 'P', 'Budha', '78636 Monahan Oval\nPort Marisaside, KS 97507', NULL, '2019-09-30 15:39:14', '2019-09-30 15:39:14'),
(1034, 100, 'Uriel Konopelski', '', 'L', 'Katolik', '949 Mateo Ports\nPort Emily, OH 47580', NULL, '2019-09-30 15:39:14', '2019-09-30 15:39:14'),
(1035, 100, 'Jefferey Ruecker', '', 'L', 'Kristen', '5207 Spinka Isle Apt. 704\nJohnsville, DC 05850-4931', NULL, '2019-09-30 15:39:14', '2019-09-30 15:39:14'),
(1036, 100, 'Shane Schamberger', '', 'P', 'Budha', '87993 Isabell Canyon Apt. 280\nNew Gertrudeland, IN 26956', NULL, '2019-09-30 15:39:14', '2019-09-30 15:39:14'),
(1037, 100, 'Prof. Icie Hermann Sr.', '', 'P', 'Islam', '232 Cortez Skyway Suite 775\nEast Deonville, WI 95543', NULL, '2019-09-30 15:39:14', '2019-09-30 15:39:14'),
(1038, 100, 'Sophia Crist', '', 'P', 'Kristen', '6286 Breanne Junctions Suite 916\nIrwinbury, WV 46666-3476', NULL, '2019-09-30 15:39:14', '2019-09-30 15:39:14'),
(1039, 100, 'Mrs. Tanya Rice Jr.', '', 'P', 'Budha', '4931 Jefferey Mountains\nLeonorchester, WV 01747', NULL, '2019-09-30 15:39:14', '2019-09-30 15:39:14'),
(1040, 100, 'Prof. Veda Littel Jr.', '', 'P', 'Budha', '610 Marvin Rest Apt. 917\nCecileview, GA 38947', NULL, '2019-09-30 15:39:14', '2019-09-30 15:39:14'),
(1041, 100, 'Mr. Jayde Reichel I', '', 'P', 'Islam', '6798 Ethyl Cape\nLabadieberg, ID 05657-6356', NULL, '2019-09-30 15:39:15', '2019-09-30 15:39:15'),
(1042, 100, 'Emilia Durgan', '', 'L', 'Kristen', '15689 Violette River Suite 554\nEast Marioside, ND 72764', NULL, '2019-09-30 15:39:15', '2019-09-30 15:39:15'),
(1043, 100, 'Alexanne Bogisich', '', 'L', 'Katolik', '18776 Rowan Freeway\nNorth Malliechester, KY 25543', NULL, '2019-09-30 15:39:15', '2019-09-30 15:39:15'),
(1044, 100, 'Dr. Eleazar Schroeder PhD', '', 'P', 'Katolik', '48263 Morton Mountain\nWest Ozellaview, LA 97084-3532', NULL, '2019-09-30 15:39:15', '2019-09-30 15:39:15'),
(1045, 100, 'Era Nienow', '', 'L', 'Katolik', '444 Oceane Plaza\nMikelview, MN 95215', NULL, '2019-09-30 15:39:15', '2019-09-30 15:39:15'),
(1046, 100, 'Dariana Jaskolski', '', 'P', 'Budha', '95263 Brown Isle Apt. 709\nLake Neva, IN 16511', NULL, '2019-09-30 15:39:15', '2019-09-30 15:39:15'),
(1047, 100, 'Elise Sporer', '', 'P', 'Budha', '592 Candida Brooks Apt. 147\nLake Baby, MS 29550', NULL, '2019-09-30 15:39:15', '2019-09-30 15:39:15'),
(1048, 100, 'Jamil Franecki', '', 'L', 'Kristen', '3750 Scotty Grove Apt. 894\nJohnshaven, KS 71435', NULL, '2019-09-30 15:39:15', '2019-09-30 15:39:15'),
(1049, 100, 'Hildegard Koepp', '', 'P', 'Kristen', '8211 Hansen Haven Suite 838\nWisozkborough, GA 36010', NULL, '2019-09-30 15:39:15', '2019-09-30 15:39:15'),
(1050, 100, 'Rebekah Monahan', '', 'L', 'Hindu', '98192 Aurelie Gardens\nLake Joannystad, NM 13974-0050', NULL, '2019-09-30 15:39:15', '2019-09-30 15:39:15'),
(1051, 100, 'Floyd Spencer', '', 'P', 'Budha', '891 Huel Trafficway Suite 097\nHowellport, ME 12339', NULL, '2019-09-30 15:39:15', '2019-09-30 15:39:15'),
(1052, 100, 'Raleigh Sanford Jr.', '', 'L', 'Katolik', '194 Wallace Way\nNew Jaleelmouth, WA 56803-7767', NULL, '2019-09-30 15:39:15', '2019-09-30 15:39:15'),
(1053, 100, 'Mr. Archibald Murray V', '', 'P', 'Katolik', '7648 Moises Mountains Suite 246\nStehrhaven, AR 40891-2262', NULL, '2019-09-30 15:39:15', '2019-09-30 15:39:15'),
(1054, 100, 'Lavinia Hammes', '', 'P', 'Kristen', '51093 Mraz Forest Suite 762\nCruzport, NH 47549-5517', NULL, '2019-09-30 15:39:15', '2019-09-30 15:39:15'),
(1055, 100, 'Uriah Schaefer', '', 'P', 'Islam', '802 Alice Key Apt. 933\nDomenicmouth, NH 29019-6404', NULL, '2019-09-30 15:39:15', '2019-09-30 15:39:15'),
(1056, 100, 'Skye Mraz', '', 'L', 'Kristen', '10881 Douglas Parkways Apt. 872\nSchaeferburgh, RI 39114-9024', NULL, '2019-09-30 15:39:15', '2019-09-30 15:39:15'),
(1057, 100, 'Miss Elisabeth Cummerata PhD', '', 'L', 'Kristen', '27639 Jasmin Plains Suite 972\nRutherfordfort, CT 87199', NULL, '2019-09-30 15:39:15', '2019-09-30 15:39:15'),
(1058, 100, 'Ramiro Nikolaus DVM', '', 'L', 'Hindu', '87652 Brenda Port\nNew Concepcion, NC 69776', NULL, '2019-09-30 15:39:15', '2019-09-30 15:39:15'),
(1059, 100, 'Reynold Schinner', '', 'P', 'Hindu', '933 Janelle Walk Apt. 301\nNorth Jorgefort, NH 81553', NULL, '2019-09-30 15:39:15', '2019-09-30 15:39:15'),
(1060, 100, 'Aliyah Gleason', '', 'P', 'Budha', '31708 Tromp Greens\nSouth Darrylbury, GA 07626-0993', NULL, '2019-09-30 15:39:15', '2019-09-30 15:39:15'),
(1061, 100, 'Jonathon Zemlak', '', 'P', 'Islam', '99790 Giovanni Squares Suite 811\nWest Gregorio, AZ 02850-7364', NULL, '2019-09-30 15:39:15', '2019-09-30 15:39:15'),
(1062, 100, 'Edwardo Murphy', '', 'P', 'Islam', '74388 Abernathy Tunnel\nLake Isabel, KS 44792', NULL, '2019-09-30 15:39:15', '2019-09-30 15:39:15');
INSERT INTO `siswa` (`id`, `user_id`, `nama_depan`, `nama_belakang`, `jenis_kelamin`, `agama`, `alamat`, `avatar`, `created_at`, `updated_at`) VALUES
(1063, 100, 'Gwendolyn Hyatt', '', 'L', 'Katolik', '22082 Jacobson Square Suite 942\nLulastad, NJ 04607-9711', NULL, '2019-09-30 15:39:15', '2019-09-30 15:39:15'),
(1064, 100, 'Vernie Bins Jr.', '', 'P', 'Hindu', '790 Emmett Mountains Apt. 797\nKoeppfurt, VA 73089-6595', NULL, '2019-09-30 15:39:15', '2019-09-30 15:39:15'),
(1065, 100, 'Maxine Parisian', '', 'P', 'Kristen', '19457 Gwendolyn Locks Suite 902\nMackville, AZ 82921-3932', NULL, '2019-09-30 15:39:15', '2019-09-30 15:39:15'),
(1066, 100, 'Miss Millie Smitham', '', 'P', 'Budha', '133 Pfeffer Islands Apt. 927\nMedhurstview, KS 25412', NULL, '2019-09-30 15:39:15', '2019-09-30 15:39:15'),
(1067, 100, 'Mack Streich', '', 'P', 'Islam', '40897 Luciano Mill\nJeraldfurt, FL 27600', NULL, '2019-09-30 15:39:15', '2019-09-30 15:39:15'),
(1068, 100, 'Dr. Gabrielle Boehm Jr.', '', 'L', 'Hindu', '84042 Jacobs Springs Suite 643\nSouth Lucioview, NY 89502-7641', NULL, '2019-09-30 15:39:16', '2019-09-30 15:39:16'),
(1069, 100, 'Miss Meaghan Keeling IV', '', 'L', 'Hindu', '108 Hilbert Mountain\nSouth Carlos, TN 20162-6324', NULL, '2019-09-30 15:39:16', '2019-09-30 15:39:16'),
(1070, 100, 'Mr. Giovanny Deckow', '', 'P', 'Islam', '568 Moses Centers Apt. 147\nLake Genesis, MI 21971', NULL, '2019-09-30 15:39:16', '2019-09-30 15:39:16'),
(1071, 100, 'Myrtice Christiansen', '', 'P', 'Kristen', '27152 Greenfelder Plains\nStammhaven, MS 20469', NULL, '2019-09-30 15:39:16', '2019-09-30 15:39:16'),
(1072, 100, 'Dr. Annamarie Bartoletti III', '', 'P', 'Katolik', '42399 Joesph Ferry\nNorth Aliciamouth, MA 34234-4158', NULL, '2019-09-30 15:39:16', '2019-09-30 15:39:16'),
(1073, 100, 'Mazie Cummerata', '', 'L', 'Kristen', '41688 Jess Light\nWest Brianchester, ND 02904', NULL, '2019-09-30 15:39:16', '2019-09-30 15:39:16'),
(1074, 100, 'Harold Cassin V', '', 'L', 'Islam', '81849 Tremaine Motorway\nMinaton, LA 53283', NULL, '2019-09-30 15:39:16', '2019-09-30 15:39:16'),
(1075, 100, 'Prof. Ethyl Doyle DVM', '', 'L', 'Budha', '5790 Nienow Stream\nPort Caseyview, ID 60976-6941', NULL, '2019-09-30 15:39:16', '2019-09-30 15:39:16'),
(1076, 100, 'Mrs. Dorothea Zieme', '', 'L', 'Budha', '2596 Cremin Street\nSouth Everardotown, OR 76969-0274', NULL, '2019-09-30 15:39:16', '2019-09-30 15:39:16'),
(1077, 100, 'Jovan Kohler', '', 'L', 'Hindu', '8432 Kautzer Branch Suite 918\nNew Avery, NJ 71878', NULL, '2019-09-30 15:39:16', '2019-09-30 15:39:16'),
(1078, 100, 'Ayana Kris', '', 'L', 'Budha', '18693 Nelson Mills\nCandidomouth, TN 80359-1213', NULL, '2019-09-30 15:39:16', '2019-09-30 15:39:16'),
(1079, 100, 'Shyanne Casper', '', 'P', 'Islam', '64497 Ephraim Vista Apt. 749\nKutchside, UT 36794-6693', NULL, '2019-09-30 15:39:16', '2019-09-30 15:39:16'),
(1080, 100, 'Ms. Anastasia Casper DVM', '', 'L', 'Katolik', '813 Jeanne Plain\nKilbackside, TN 02100', NULL, '2019-09-30 15:39:16', '2019-09-30 15:39:16'),
(1081, 100, 'Alek Gislason', '', 'P', 'Hindu', '4386 Becker River\nAmyaburgh, IN 14328', NULL, '2019-09-30 15:39:16', '2019-09-30 15:39:16'),
(1082, 100, 'Khalil Kuphal', '', 'P', 'Katolik', '4896 Armand Route\nJerdeshire, NC 02101', NULL, '2019-09-30 15:39:16', '2019-09-30 15:39:16'),
(1083, 100, 'Ella Jerde', '', 'P', 'Katolik', '49448 Marcelo Common\nNorth Ovafort, RI 09957-0363', NULL, '2019-09-30 15:39:16', '2019-09-30 15:39:16'),
(1084, 100, 'Berneice Hand DVM', '', 'L', 'Katolik', '49860 McGlynn Isle Apt. 199\nSouth Bertha, DE 55653-1275', NULL, '2019-09-30 15:39:16', '2019-09-30 15:39:16'),
(1085, 100, 'Prof. Loyce Moen IV', '', 'P', 'Katolik', '845 Rohan Meadow\nSouth Vicky, AK 54281-1356', NULL, '2019-09-30 15:39:16', '2019-09-30 15:39:16'),
(1086, 100, 'Miracle Morissette Jr.', '', 'L', 'Islam', '277 Pauline Plains\nDouglasborough, LA 03616-7479', NULL, '2019-09-30 15:39:16', '2019-09-30 15:39:16'),
(1087, 100, 'Yvonne Ullrich', '', 'P', 'Kristen', '830 Turner Shore\nSouth Paulside, SD 85552', NULL, '2019-09-30 15:39:16', '2019-09-30 15:39:16'),
(1088, 100, 'Destini Pacocha', '', 'L', 'Katolik', '987 Joannie View Apt. 488\nMohammedview, MO 98554-9803', NULL, '2019-09-30 15:39:16', '2019-09-30 15:39:16'),
(1089, 100, 'Greta Stamm', '', 'P', 'Hindu', '2353 Hammes Green Suite 471\nJensenview, MN 44741', NULL, '2019-09-30 15:39:16', '2019-09-30 15:39:16'),
(1090, 100, 'Monty Walter', '', 'L', 'Hindu', '95841 Nienow Avenue Suite 354\nNew Reese, IL 86055-2915', NULL, '2019-09-30 15:39:16', '2019-09-30 15:39:16'),
(1091, 100, 'Irma Crooks', '', 'L', 'Hindu', '7012 Rosenbaum Divide\nChristiansenmouth, NV 58815-5926', NULL, '2019-09-30 15:39:16', '2019-09-30 15:39:16'),
(1092, 100, 'Walton Koepp', '', 'L', 'Katolik', '85243 Price Isle Suite 907\nRauburgh, KY 62975-1712', NULL, '2019-09-30 15:39:16', '2019-09-30 15:39:16'),
(1093, 100, 'Raina Rowe', '', 'L', 'Budha', '5814 Runte Rue Suite 020\nCrooksside, ND 02598', NULL, '2019-09-30 15:39:16', '2019-09-30 15:39:16'),
(1094, 100, 'Prof. Jerrell Mohr IV', '', 'L', 'Katolik', '7907 Schultz Ridge Apt. 252\nHuelsberg, NC 16880-7819', NULL, '2019-09-30 15:39:16', '2019-09-30 15:39:16'),
(1095, 100, 'Dr. Wilton Kirlin', '', 'P', 'Hindu', '8321 Keon Passage Suite 134\nLake Carissafort, ND 29339-5975', NULL, '2019-09-30 15:39:16', '2019-09-30 15:39:16'),
(1096, 100, 'Travon Lynch', '', 'L', 'Katolik', '48451 Alvera Cliff\nPort Alyce, CT 67405', NULL, '2019-09-30 15:39:16', '2019-09-30 15:39:16'),
(1097, 100, 'Adolf Schneider', '', 'L', 'Budha', '96792 Osinski Curve Apt. 038\nLexusland, DC 86098', NULL, '2019-09-30 15:39:16', '2019-09-30 15:39:16'),
(1098, 100, 'Melyssa Runte', '', 'P', 'Hindu', '580 Hermann Lakes\nSouth Jadyn, AZ 97090-4095', NULL, '2019-09-30 15:39:16', '2019-09-30 15:39:16'),
(1099, 100, 'Miss Thea Hansen MD', '', 'P', 'Islam', '52196 Orin Creek\nLydaberg, WA 47255-3330', NULL, '2019-09-30 15:39:16', '2019-09-30 15:39:16'),
(1100, 100, 'Prof. Vernice Hoppe II', '', 'P', 'Kristen', '60095 Kohler Turnpike\nEverthaven, WY 93011-0440', NULL, '2019-09-30 15:39:16', '2019-09-30 15:39:16'),
(1101, 100, 'Lennie Fahey', '', 'L', 'Kristen', '4110 Walker Course Apt. 294\nEast Noel, SC 97494-4851', NULL, '2019-09-30 15:39:16', '2019-09-30 15:39:16'),
(1102, 100, 'Zelda Muller', '', 'P', 'Budha', '490 Schaden Roads Apt. 153\nNicolasborough, CA 04681', NULL, '2019-09-30 15:39:16', '2019-09-30 15:39:16'),
(1103, 100, 'Dr. Chanelle Balistreri III', '', 'P', 'Islam', '858 Jakubowski Track Apt. 033\nLake Rayberg, MT 83104', NULL, '2019-09-30 15:39:16', '2019-09-30 15:39:16'),
(1104, 100, 'Prof. Grady Schamberger DDS', '', 'L', 'Katolik', '964 Santina Corners Apt. 252\nBoscomouth, SC 00054-5791', NULL, '2019-09-30 15:39:16', '2019-09-30 15:39:16'),
(1105, 100, 'Kaleb Kerluke', '', 'L', 'Kristen', '2726 Gustave Glen\nWest Brisaville, HI 29154', NULL, '2019-09-30 15:39:16', '2019-09-30 15:39:16'),
(1106, 100, 'Lindsey Crona', '', 'L', 'Islam', '37210 Octavia Plains\nJoneschester, NY 80194-4690', NULL, '2019-09-30 15:39:17', '2019-09-30 15:39:17'),
(1107, 100, 'Prof. Louisa Jacobi', '', 'L', 'Hindu', '77159 Deron Prairie\nOndrickaport, HI 98442-4680', NULL, '2019-09-30 15:39:17', '2019-09-30 15:39:17'),
(1108, 100, 'Leilani Balistreri', '', 'P', 'Kristen', '4013 Gutmann Isle Suite 569\nDorianberg, HI 31942', NULL, '2019-09-30 15:39:17', '2019-09-30 15:39:17'),
(1109, 100, 'Miss Mabelle Balistreri', '', 'L', 'Budha', '669 Mraz Cape\nFriesenfurt, ID 14134', NULL, '2019-09-30 15:39:17', '2019-09-30 15:39:17'),
(1110, 100, 'Dr. Eula Lockman', '', 'L', 'Hindu', '161 Isobel Walk Suite 558\nNew Gilberto, WY 52634-1382', NULL, '2019-09-30 15:39:17', '2019-09-30 15:39:17'),
(1111, 100, 'Pete Hoppe IV', '', 'P', 'Budha', '8514 Ross Prairie\nWest Maximilian, CO 26957', NULL, '2019-09-30 15:39:17', '2019-09-30 15:39:17'),
(1112, 100, 'Ericka Corwin', '', 'L', 'Katolik', '894 Jack Curve Suite 356\nKellenchester, NM 44741', NULL, '2019-09-30 15:39:17', '2019-09-30 15:39:17'),
(1113, 100, 'Marilyne McCullough DVM', '', 'L', 'Kristen', '55943 Kunde Loaf Apt. 197\nNorth Rashad, WA 67072-1545', NULL, '2019-09-30 15:39:17', '2019-09-30 15:39:17'),
(1114, 100, 'Octavia Olson', '', 'L', 'Hindu', '9046 Hintz Stream Suite 225\nEast Watson, IL 07681', NULL, '2019-09-30 15:39:17', '2019-09-30 15:39:17'),
(1115, 100, 'Elbert Brekke', '', 'L', 'Islam', '5228 King Station Apt. 469\nWest Adrain, HI 50411-3336', NULL, '2019-09-30 15:39:17', '2019-09-30 15:39:17'),
(1116, 100, 'Peter Hettinger', '', 'P', 'Katolik', '6130 Sabina Valleys Apt. 378\nPort Burley, LA 59096-8581', NULL, '2019-09-30 15:39:17', '2019-09-30 15:39:17'),
(1117, 100, 'Cristina Bashirian', '', 'P', 'Hindu', '87313 Kuhn Skyway\nBrendenville, GA 32589', NULL, '2019-09-30 15:39:17', '2019-09-30 15:39:17'),
(1118, 100, 'Dora Crist', '', 'P', 'Hindu', '863 Henriette Branch\nBartonchester, HI 01626', NULL, '2019-09-30 15:39:17', '2019-09-30 15:39:17'),
(1119, 100, 'Daron Graham', '', 'L', 'Islam', '2025 Klocko Springs Suite 061\nEast Mitchell, MN 27431', NULL, '2019-09-30 15:39:17', '2019-09-30 15:39:17'),
(1120, 100, 'Nola McGlynn MD', '', 'L', 'Kristen', '4387 Charlotte Ridge Apt. 456\nHoweland, GA 56283-2679', NULL, '2019-09-30 15:39:17', '2019-09-30 15:39:17'),
(1121, 100, 'Ivy Hoeger I', '', 'P', 'Kristen', '905 Elian Green\nSouth Louie, WY 23881', NULL, '2019-09-30 15:39:17', '2019-09-30 15:39:17'),
(1122, 100, 'Sarah Fisher', '', 'P', 'Budha', '446 Spencer Meadow\nSouth Roxanne, MN 77071-1006', NULL, '2019-09-30 15:39:17', '2019-09-30 15:39:17'),
(1123, 100, 'Hortense Feil', '', 'P', 'Islam', '367 Green Cliffs Apt. 519\nEast Stellaville, CO 77263-3086', NULL, '2019-09-30 15:39:17', '2019-09-30 15:39:17'),
(1124, 100, 'Miss Emelie Kulas', '', 'L', 'Kristen', '6532 Abernathy Turnpike\nHegmannfurt, IN 63433', NULL, '2019-09-30 15:39:17', '2019-09-30 15:39:17'),
(1125, 100, 'Valentina Jenkins', '', 'L', 'Katolik', '12964 Mitchel Gateway Apt. 399\nPurdyhaven, ID 19016', NULL, '2019-09-30 15:39:17', '2019-09-30 15:39:17'),
(1126, 100, 'Leanna Willms', '', 'P', 'Katolik', '4588 Emmerich Corner Suite 640\nNorth Adelleburgh, MO 90064-3759', NULL, '2019-09-30 15:39:17', '2019-09-30 15:39:17'),
(1127, 100, 'Ottilie Koepp II', '', 'P', 'Katolik', '710 Goodwin Corners Apt. 116\nDorotheachester, NE 24260-2116', NULL, '2019-09-30 15:39:17', '2019-09-30 15:39:17'),
(1128, 100, 'Viva Shields DDS', '', 'L', 'Katolik', '7494 Janae Forks Suite 047\nKathlynmouth, PA 02308-6485', NULL, '2019-09-30 15:39:17', '2019-09-30 15:39:17'),
(1129, 100, 'Mr. Raymundo Bailey MD', '', 'P', 'Katolik', '204 Erdman Flats\nPort Flo, ND 59187', NULL, '2019-09-30 15:39:17', '2019-09-30 15:39:17'),
(1130, 100, 'Noelia Cruickshank', '', 'P', 'Hindu', '71188 Jacynthe Spurs\nSchusterton, VA 66823', NULL, '2019-09-30 15:39:17', '2019-09-30 15:39:17'),
(1131, 100, 'Keanu Kris', '', 'P', 'Islam', '7670 River Rapid\nTeaganberg, ME 20566', NULL, '2019-09-30 15:39:17', '2019-09-30 15:39:17'),
(1132, 100, 'Emmy Bins DDS', '', 'L', 'Kristen', '227 Emory Radial Apt. 527\nNitzscheland, WV 65064-5041', NULL, '2019-09-30 15:39:17', '2019-09-30 15:39:17'),
(1133, 100, 'Marguerite Johns', '', 'L', 'Budha', '529 Camryn Street\nEmardview, CO 08068-9941', NULL, '2019-09-30 15:39:17', '2019-09-30 15:39:17'),
(1134, 100, 'Adan Schuster', '', 'P', 'Katolik', '193 Hirthe Route\nBradleyburgh, OK 87769', NULL, '2019-09-30 15:39:17', '2019-09-30 15:39:17'),
(1135, 100, 'Delia Brakus', '', 'L', 'Hindu', '54581 Dare Course Suite 452\nWest Stephania, IA 83980-8796', NULL, '2019-09-30 15:39:17', '2019-09-30 15:39:17'),
(1136, 24, 'adi', 'y', 'L', 'Islam', 'Jogja', NULL, '2019-10-07 22:44:20', '2019-10-07 22:44:20'),
(1137, 25, 'adi', 'y', 'L', 'Islam', 'jogja', NULL, '2019-10-07 22:48:36', '2019-10-07 22:48:36'),
(1138, 26, 'amir', 'malik', 'L', 'Islam', 'Sukolilo PATI', NULL, '2019-10-07 22:50:00', '2019-10-07 22:50:00'),
(1139, 27, 'M arya', 'wardana', 'L', 'Islam', 'Sukolilo PATI', NULL, '2019-10-07 22:51:48', '2019-10-07 22:51:48'),
(1140, 29, 'Anton', 'Kalila', 'L', 'Islam', 'Sukolilo', NULL, '2019-10-21 02:23:13', '2019-10-21 02:23:13'),
(1141, 30, 'Nanang', 'Ahmad', 'L', 'Islam', 'Janti Kudus', NULL, '2019-10-21 02:25:52', '2019-10-21 02:25:52'),
(1142, 31, 'Ratna', 'Halimah', 'P', 'Islam', 'Bandung', NULL, '2019-10-21 06:29:43', '2019-10-21 06:29:43'),
(1143, 32, 'nurul', 'adi', 'L', 'Kristen', 'Jakarta', NULL, '2019-10-21 06:44:44', '2019-10-21 06:44:44'),
(1144, 33, 'Firman', 'Anang', 'L', 'Islam', 'Bandung', NULL, '2019-10-21 06:58:19', '2019-10-21 06:58:19'),
(1145, 34, 'Nurul', 'Huda', 'L', 'Hindu', 'Kudus', NULL, '2019-10-30 20:51:44', '2019-10-30 20:51:44'),
(1146, 35, 'Malik', 'Abas', 'L', 'Islam', 'Madinah', NULL, '2019-12-17 06:40:51', '2019-12-17 06:40:51'),
(1147, 36, 'udin', 'peak', 'L', 'khatolik', 'Jakarta', NULL, '2019-12-17 06:50:33', '2019-12-17 06:50:33'),
(1148, 37, 'Bambang', 'Mulyono', 'L', 'islam', 'Tegal', NULL, '2019-12-18 18:25:10', '2019-12-18 18:25:10'),
(1149, 38, 'admin', 'jasamedika', 'L', 'islam', 'bandung', NULL, '2020-01-10 16:08:57', '2020-01-10 16:08:57'),
(1150, 39, 'Azka Sifa', 'unida', 'P', 'Islam', 'Jakarta', NULL, '2020-02-18 07:31:55', '2020-02-18 07:33:07');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `role`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'amirsy', 'amirinsyaifudin6@gmail.com', NULL, '$2y$10$Uj8PirZ5GABBIWH2vul9PuhfDsCDxYTVDKY5jlQZZM2PWDjGJoPeC', '36cjnv2F6CKtqpiC7pGEWo7jBSjwin7nthBhA82vAKtq8NXt9jSj6JYtsG7b', '2019-05-13 09:21:43', '2019-05-13 09:21:43'),
(2, 'siswa', 'nana', 'sifa@gmail.com', NULL, '$2y$10$E7U0dSYGCGP0WrC6WLNaeebfIFOyuS1J/lh8T4CTLmx3xidpdcl.2', 'Dhv4WmivsWxXDBUJMR4rlvHA8GKZbDc5Q4FW1s8T2hpL6kOS7nRURdPxseBU', '2019-05-15 08:32:11', '2019-05-15 08:32:11'),
(36, 'siswa', 'udin', 'udinpeak@gmail.com', NULL, '$2y$10$XdxpJytloSGX7JqWZMmc3eq7GhZ2DiKGLEnNGEWtvoj29lKCxrl1m', 'IZdyhsGAx58MfvpMRhKI9JpllUUu8yLqnC9FNqsForbhLaWlUD7G6PkULMRu', '2019-12-17 06:50:33', '2019-12-17 06:50:33'),
(37, 'admin', 'Bambang', 'bambang@gmail.com', NULL, '$2y$10$2a2FYen6Fh2t1lq3PVBY0O3LxZRHWeo29HdaJyWORhOz7efLq21Gq', 'pF8n8VaTGBxnGjNYfkUQFKbcoWZYqSc1clCHku5gzawzDVEsmbn5sHgnJg8u', '2019-12-18 18:25:10', '2019-12-18 18:25:10'),
(38, 'admin', 'admin', 'admin@gmail.com', NULL, '$2y$10$BBbtS0AcKaQck4U5PCEqeuCEHeXnrHjrB8HZbCappB3lMi3zCMvw6', 'H6PFM5RMh7BGdNhtMX9iHH5rkfbSnTGOLPA0228eRkuMucA97ZUolGRO18FV', '2020-01-10 16:08:57', '2020-01-10 16:08:57'),
(39, 'siswa', 'Sifa', 'unidasifa@gmail.com', NULL, '$2y$10$BDmo8idJlHGouPr4Zr0zAOUOEcumjlOhu791GKoAqseucCXccr7C.', 'ymnXbD3UJmWVWUR8dC5B8HNmIP4VkTp1YIGO2DcPgR6cpGJPLbCtqnes4brz', '2020-02-18 07:31:55', '2020-02-18 07:31:55');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `biodata`
--
ALTER TABLE `biodata`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `mapel`
--
ALTER TABLE `mapel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `guru_id` (`guru_id`);

--
-- Indeks untuk tabel `mapel_siswa`
--
ALTER TABLE `mapel_siswa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `siswa_id` (`siswa_id`),
  ADD KEY `mapel_id` (`mapel_id`);

--
-- Indeks untuk tabel `materi`
--
ALTER TABLE `materi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indeks untuk tabel `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `biodata`
--
ALTER TABLE `biodata`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `guru`
--
ALTER TABLE `guru`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `mapel`
--
ALTER TABLE `mapel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `mapel_siswa`
--
ALTER TABLE `mapel_siswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT untuk tabel `materi`
--
ALTER TABLE `materi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1151;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `mapel`
--
ALTER TABLE `mapel`
  ADD CONSTRAINT `mapel_ibfk_1` FOREIGN KEY (`guru_id`) REFERENCES `guru` (`id`);

--
-- Ketidakleluasaan untuk tabel `mapel_siswa`
--
ALTER TABLE `mapel_siswa`
  ADD CONSTRAINT `mapel_siswa_ibfk_1` FOREIGN KEY (`mapel_id`) REFERENCES `mapel` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
