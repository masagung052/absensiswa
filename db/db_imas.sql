-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 30 Nov 2023 pada 08.26
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_imas`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_admin`
--

CREATE TABLE `tb_admin` (
  `id_admin` int(11) NOT NULL,
  `nama_lengkap` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `aktif` varchar(5) NOT NULL,
  `foto` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tb_admin`
--

INSERT INTO `tb_admin` (`id_admin`, `nama_lengkap`, `username`, `password`, `aktif`, `foto`) VALUES
(1, 'Ahmad Agung Utomo', 'admin@gmail.com', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'Y', 'WhatsApp Image 2021-12-31 at 16.39.32.jpeg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_guru`
--

CREATE TABLE `tb_guru` (
  `id_guru` int(11) NOT NULL,
  `nip` varchar(15) NOT NULL,
  `nama_guru` varchar(120) NOT NULL,
  `email` varchar(65) NOT NULL,
  `password` varchar(100) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `status` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tb_guru`
--

INSERT INTO `tb_guru` (`id_guru`, `nip`, `nama_guru`, `email`, `password`, `foto`, `status`) VALUES
(10, '005', 'Nadia Wulandari S.Kom', 'nadiawulandari911@gmail.com', 'de0086160ebef32eb9ec1ac6d047c61009f6ac9b', 'Nadia.jpg', 'Y'),
(11, '006', 'novi s.kom', 'novi@gmail.com', '20dd129da16a9afb802d8b595485f8d2719aea44', 'Nadia.jpg', 'Y'),
(12, '5402420002', 'Isnia Dewi S.Pd.', 'dewisinia@students.unnes.ac.id', '33eda79016dc928597df54db97b24d7b595e60d2', 'WhatsApp Image 2023-09-13 at 09.27.51.jpg', 'Y');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_kepsek`
--

CREATE TABLE `tb_kepsek` (
  `id_kepsek` int(11) NOT NULL,
  `nip` varchar(15) NOT NULL,
  `nama_kepsek` varchar(120) NOT NULL,
  `email` varchar(65) NOT NULL,
  `password` varchar(100) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `status` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_kepsek`
--

INSERT INTO `tb_kepsek` (`id_kepsek`, `nip`, `nama_kepsek`, `email`, `password`, `foto`, `status`) VALUES
(1, '32602100138', 'Ahmad Agung Utomo S.Kom', 'agoengutomo@gmail.com', 'af61985fab499287e2e0608e71c8a4006a3c4a2c', 'WhatsApp Image 2021-12-08 at 10.27.53.jpeg', 'Y');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_master_mapel`
--

CREATE TABLE `tb_master_mapel` (
  `id_mapel` int(11) NOT NULL,
  `kode_mapel` varchar(40) NOT NULL,
  `mapel` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tb_master_mapel`
--

INSERT INTO `tb_master_mapel` (`id_mapel`, `kode_mapel`, `mapel`) VALUES
(1, 'MP-1561560093', 'Bahasa Indonesia'),
(2, 'MP-1561560129', 'Matematika'),
(3, 'MP-1561871991', 'Biologi'),
(4, 'MP-1561872004', 'Sejarah'),
(5, 'MP-1561872013', 'Teknologi Informasi'),
(6, 'MP-1561872026', 'Seni Budaya'),
(7, 'MP-1561872043', 'Bahasa Inggris'),
(8, 'MP-1615002340', 'Ilmu Pengetahuan Alam'),
(9, 'MP-1694738146', 'PJOK');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_mengajar`
--

CREATE TABLE `tb_mengajar` (
  `id_mengajar` int(11) NOT NULL,
  `kode_pelajaran` varchar(30) NOT NULL,
  `hari` varchar(40) NOT NULL,
  `jam_mengajar` varchar(60) NOT NULL,
  `jamke` varchar(11) NOT NULL,
  `id_guru` int(11) NOT NULL,
  `id_mapel` int(11) NOT NULL,
  `id_mkelas` int(11) NOT NULL,
  `id_semester` int(11) NOT NULL,
  `id_thajaran` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tb_mengajar`
--

INSERT INTO `tb_mengajar` (`id_mengajar`, `kode_pelajaran`, `hari`, `jam_mengajar`, `jamke`, `id_guru`, `id_mapel`, `id_mkelas`, `id_semester`, `id_thajaran`) VALUES
(10, 'MPL-1691918402', 'Senin', '09.10-11.00', '2', 11, 3, 7, 5, 9),
(11, 'MPL-1691918440', 'Senin', '11.10-12.00', '3', 10, 5, 7, 5, 9),
(12, 'MPL-1691918483', 'Senin', '12.10', '4', 11, 1, 7, 5, 9),
(15, 'MPL-1694738403', 'Senin', '07.00-10.00', '1-2', 12, 9, 7, 4, 10),
(16, 'MPL-1694738467', 'Selasa', '07.00-09.00', '1-2', 10, 2, 7, 4, 10),
(17, 'MPL-1694738503', 'Rabu', '07.00-09.00', '1-2', 12, 6, 7, 4, 10),
(18, 'MPL-1694738539', 'Kamis', '07.00-09.00', '1-2', 12, 6, 7, 4, 10),
(25, 'MPL-1701310079', 'Kamis', '09.30-11.00', '3', 10, 2, 7, 4, 11),
(26, 'MPL-1701310817', 'Kamis', '11.00-12.00', '3', 12, 1, 7, 4, 11),
(27, 'MPL-1701319639', 'Kamis', '12.00-13.00', '4', 12, 2, 7, 4, 12);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_mkelas`
--

CREATE TABLE `tb_mkelas` (
  `id_mkelas` int(11) NOT NULL,
  `kd_kelas` varchar(40) NOT NULL,
  `nama_kelas` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tb_mkelas`
--

INSERT INTO `tb_mkelas` (`id_mkelas`, `kd_kelas`, `nama_kelas`) VALUES
(5, 'KL-1616673105', 'X-TO'),
(6, 'KL-1616673114', 'XI-TO'),
(7, 'KL-1616673120', 'XII-TKRO'),
(8, 'KL-1694450520', 'X-TJKT'),
(9, 'KL-1694450542', 'XI-TJKT'),
(10, 'KL-1694450556', 'XII-TJKT');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_semester`
--

CREATE TABLE `tb_semester` (
  `id_semester` int(11) NOT NULL,
  `semester` varchar(45) NOT NULL,
  `status` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tb_semester`
--

INSERT INTO `tb_semester` (`id_semester`, `semester`, `status`) VALUES
(4, 'Ganjil', 1),
(5, 'Genap', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_siswa`
--

CREATE TABLE `tb_siswa` (
  `id_siswa` int(11) NOT NULL,
  `nis` varchar(60) NOT NULL,
  `nama_siswa` varchar(120) NOT NULL,
  `tempat_lahir` varchar(100) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `jk` varchar(30) NOT NULL,
  `alamat` text NOT NULL,
  `password` varchar(255) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `status` varchar(15) NOT NULL,
  `th_angkatan` year(4) NOT NULL,
  `id_mkelas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tb_siswa`
--

INSERT INTO `tb_siswa` (`id_siswa`, `nis`, `nama_siswa`, `tempat_lahir`, `tgl_lahir`, `jk`, `alamat`, `password`, `foto`, `status`, `th_angkatan`, `id_mkelas`) VALUES
(6, '1111', 'Ahmad Agung Utomo', 'pati', '2002-08-08', 'L', 'pati', 'af61985fab499287e2e0608e71c8a4006a3c4a2c', 'WhatsApp Image 2021-12-08 at 10.27.53.jpeg', '1', 2020, 7),
(7, '1112', 'Richard Adreano', 'semarang', '2002-03-16', 'L', 'Bader', '7161a2409087e392cf68559ddac9f1b64b07510c', 'RESMI.png', '1', 2019, 7),
(8, '1113000', 'Rohman', 'pati', '2005-11-11', 'L', 'pati', '2f8701213edbaf07ed747665f1a8d1929651ce73', 'WhatsApp Image 2023-09-13 at 09.27.51.jpg', '1', 2019, 7);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_thajaran`
--

CREATE TABLE `tb_thajaran` (
  `id_thajaran` int(11) NOT NULL,
  `tahun_ajaran` varchar(30) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tb_thajaran`
--

INSERT INTO `tb_thajaran` (`id_thajaran`, `tahun_ajaran`, `status`) VALUES
(12, '2023/2024', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_walikelas`
--

CREATE TABLE `tb_walikelas` (
  `id_walikelas` int(11) NOT NULL,
  `id_guru` int(11) NOT NULL,
  `id_mkelas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tb_walikelas`
--

INSERT INTO `tb_walikelas` (`id_walikelas`, `id_guru`, `id_mkelas`) VALUES
(1, 2, 1),
(2, 1, 2),
(3, 5, 3),
(4, 6, 1),
(5, 8, 2),
(6, 10, 7),
(7, 11, 6);

-- --------------------------------------------------------

--
-- Struktur dari tabel `_logabsensi`
--

CREATE TABLE `_logabsensi` (
  `id_presensi` int(11) NOT NULL,
  `id_mengajar` int(11) NOT NULL,
  `id_siswa` int(11) NOT NULL,
  `tgl_absen` date NOT NULL,
  `ket` enum('H','I','S','T','A','C') NOT NULL,
  `pertemuan_ke` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `_logabsensi`
--

INSERT INTO `_logabsensi` (`id_presensi`, `id_mengajar`, `id_siswa`, `tgl_absen`, `ket`, `pertemuan_ke`) VALUES
(15, 8, 6, '2023-08-11', 'H', '1'),
(16, 9, 6, '2023-08-13', 'S', '1'),
(17, 11, 6, '2023-08-13', 'T', '1'),
(18, 13, 6, '2023-08-13', 'H', '1'),
(19, 9, 6, '2023-09-11', 'H', '2'),
(20, 23, 6, '2023-09-16', 'H', '1'),
(21, 23, 7, '2023-09-16', 'H', '1'),
(22, 23, 8, '2023-09-16', 'A', '1'),
(23, 23, 6, '2023-09-22', 'H', '2'),
(24, 23, 7, '2023-09-22', 'H', '2'),
(25, 23, 8, '2023-09-22', 'I', '2'),
(26, 23, 6, '2023-09-25', 'H', '3'),
(27, 23, 7, '2023-09-25', 'H', '3'),
(28, 23, 8, '2023-09-25', 'H', '3'),
(29, 23, 6, '2023-11-28', 'H', '4'),
(30, 23, 7, '2023-11-28', 'I', '4'),
(31, 23, 8, '2023-11-28', 'H', '4'),
(32, 25, 6, '2023-11-30', 'H', '1'),
(33, 25, 7, '2023-11-30', 'H', '1'),
(34, 25, 8, '2023-11-30', 'I', '1'),
(35, 26, 6, '2023-11-30', 'H', '1'),
(36, 26, 7, '2023-11-30', 'H', '1'),
(37, 26, 8, '2023-11-30', 'H', '1'),
(38, 27, 6, '2023-11-30', 'H', '1'),
(39, 27, 7, '2023-11-30', 'H', '1'),
(40, 27, 8, '2023-11-30', 'I', '1');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indeks untuk tabel `tb_guru`
--
ALTER TABLE `tb_guru`
  ADD PRIMARY KEY (`id_guru`);

--
-- Indeks untuk tabel `tb_kepsek`
--
ALTER TABLE `tb_kepsek`
  ADD PRIMARY KEY (`id_kepsek`);

--
-- Indeks untuk tabel `tb_master_mapel`
--
ALTER TABLE `tb_master_mapel`
  ADD PRIMARY KEY (`id_mapel`);

--
-- Indeks untuk tabel `tb_mengajar`
--
ALTER TABLE `tb_mengajar`
  ADD PRIMARY KEY (`id_mengajar`),
  ADD KEY `id_mapel` (`id_mapel`),
  ADD KEY `id_guru` (`id_guru`);

--
-- Indeks untuk tabel `tb_mkelas`
--
ALTER TABLE `tb_mkelas`
  ADD PRIMARY KEY (`id_mkelas`);

--
-- Indeks untuk tabel `tb_semester`
--
ALTER TABLE `tb_semester`
  ADD PRIMARY KEY (`id_semester`);

--
-- Indeks untuk tabel `tb_siswa`
--
ALTER TABLE `tb_siswa`
  ADD PRIMARY KEY (`id_siswa`);

--
-- Indeks untuk tabel `tb_thajaran`
--
ALTER TABLE `tb_thajaran`
  ADD PRIMARY KEY (`id_thajaran`);

--
-- Indeks untuk tabel `tb_walikelas`
--
ALTER TABLE `tb_walikelas`
  ADD PRIMARY KEY (`id_walikelas`),
  ADD KEY `id_guru` (`id_guru`);

--
-- Indeks untuk tabel `_logabsensi`
--
ALTER TABLE `_logabsensi`
  ADD PRIMARY KEY (`id_presensi`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_admin`
--
ALTER TABLE `tb_admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tb_guru`
--
ALTER TABLE `tb_guru`
  MODIFY `id_guru` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `tb_kepsek`
--
ALTER TABLE `tb_kepsek`
  MODIFY `id_kepsek` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tb_master_mapel`
--
ALTER TABLE `tb_master_mapel`
  MODIFY `id_mapel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `tb_mengajar`
--
ALTER TABLE `tb_mengajar`
  MODIFY `id_mengajar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT untuk tabel `tb_mkelas`
--
ALTER TABLE `tb_mkelas`
  MODIFY `id_mkelas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `tb_semester`
--
ALTER TABLE `tb_semester`
  MODIFY `id_semester` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `tb_siswa`
--
ALTER TABLE `tb_siswa`
  MODIFY `id_siswa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `tb_thajaran`
--
ALTER TABLE `tb_thajaran`
  MODIFY `id_thajaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `tb_walikelas`
--
ALTER TABLE `tb_walikelas`
  MODIFY `id_walikelas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `_logabsensi`
--
ALTER TABLE `_logabsensi`
  MODIFY `id_presensi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
