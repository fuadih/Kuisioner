-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 16 Okt 2019 pada 12.36
-- Versi server: 10.1.35-MariaDB
-- Versi PHP: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sisfor_db`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_dosen`
--

CREATE TABLE `tbl_dosen` (
  `id` int(100) NOT NULL,
  `nip` int(128) NOT NULL,
  `dosen` varchar(255) NOT NULL,
  `kd_smt` int(11) NOT NULL,
  `kd_matkul` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_dosen`
--

INSERT INTO `tbl_dosen` (`id`, `nip`, `dosen`, `kd_smt`, `kd_matkul`) VALUES
(103, 10002, 'fifin', 2, 1101);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_kepuasan`
--

CREATE TABLE `tbl_kepuasan` (
  `nim` varchar(128) NOT NULL,
  `nip` int(50) NOT NULL,
  `perwalian` varchar(128) NOT NULL,
  `kp` varchar(128) NOT NULL,
  `skripsi` varchar(128) NOT NULL,
  `penampilan` varchar(128) NOT NULL,
  `kritik` varchar(128) NOT NULL,
  `ruang` varchar(128) NOT NULL,
  `empati` varchar(128) NOT NULL,
  `tahun` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_kuisioner`
--

CREATE TABLE `tbl_kuisioner` (
  `id` int(50) NOT NULL,
  `nim` varchar(128) NOT NULL,
  `kd_smt` int(11) NOT NULL,
  `kd_matkul` int(100) NOT NULL,
  `nip` int(100) NOT NULL,
  `kd_thnajar` int(50) NOT NULL,
  `waktu` int(11) NOT NULL,
  `materi` int(11) NOT NULL,
  `bap` int(11) NOT NULL,
  `tugas` int(11) NOT NULL,
  `alat` int(11) NOT NULL,
  `suasana` int(11) NOT NULL,
  `kritik` int(11) NOT NULL,
  `pertemuan` int(11) NOT NULL,
  `transparansi` int(11) NOT NULL,
  `kesesuaian` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_kuisioner`
--

INSERT INTO `tbl_kuisioner` (`id`, `nim`, `kd_smt`, `kd_matkul`, `nip`, `kd_thnajar`, `waktu`, `materi`, `bap`, `tugas`, `alat`, `suasana`, `kritik`, `pertemuan`, `transparansi`, `kesesuaian`) VALUES
(1, '', 1, 1101, 10002, 1, 3, 2, 2, 3, 1, 3, 3, 2, 1, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_matkul`
--

CREATE TABLE `tbl_matkul` (
  `kd_matkul` int(50) NOT NULL,
  `matkul` varchar(255) NOT NULL,
  `kd_smt` int(11) NOT NULL,
  `id` int(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_matkul`
--

INSERT INTO `tbl_matkul` (`kd_matkul`, `matkul`, `kd_smt`, `id`) VALUES
(1101, 'matdis', 1, 0),
(1102, 'ptik1', 3, 0),
(1103, 'metpend', 7, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_mhs`
--

CREATE TABLE `tbl_mhs` (
  `nim` varchar(128) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_mhs`
--

INSERT INTO `tbl_mhs` (`nim`, `name`) VALUES
('160441100020', 'Neta'),
('160441100021', 'Fitri1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_opsi`
--

CREATE TABLE `tbl_opsi` (
  `kd_opsi` int(11) NOT NULL,
  `opsi` varchar(50) NOT NULL,
  `nilai` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_opsi`
--

INSERT INTO `tbl_opsi` (`kd_opsi`, `opsi`, `nilai`) VALUES
(1, '1', 'kurang'),
(2, '2', 'cukup'),
(3, '3', 'baik'),
(4, '4', 'baik_sekali');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_smt`
--

CREATE TABLE `tbl_smt` (
  `kd_smt` int(11) NOT NULL,
  `semester` enum('1','2','3','4','5','6','7') NOT NULL,
  `kd_thnajar` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_smt`
--

INSERT INTO `tbl_smt` (`kd_smt`, `semester`, `kd_thnajar`) VALUES
(1, '1', 2),
(2, '2', 1),
(3, '3', 2),
(4, '4', 1),
(5, '5', 2),
(6, '6', 0),
(7, '7', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_thnajar`
--

CREATE TABLE `tbl_thnajar` (
  `kd_thnajar` int(50) NOT NULL,
  `thn_ajar` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_thnajar`
--

INSERT INTO `tbl_thnajar` (`kd_thnajar`, `thn_ajar`) VALUES
(1, '2017/2018'),
(2, '2018/2019'),
(3, '2019/2020');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `nim` varchar(128) NOT NULL,
  `image` varchar(128) NOT NULL,
  `password` varchar(128) NOT NULL,
  `role_id` int(11) NOT NULL,
  `is_active` int(1) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `name`, `nim`, `image`, `password`, `role_id`, `is_active`, `date_created`) VALUES
(1, 'Bertha ta', 'admin', 'default.jpg', '$2y$10$pLp29B78N.ZR9.Sg8n.7cO/V3eTX4WUTQ9Ln8yObjuPI0uorZMcjO', 1, 1, 1570777774),
(18, 'Fitri1', '160441100021', 'default.jpg', '$2y$10$5ogoI8ljfB7SlnYMaKAMFOfoiMhgKsJdIfzk9hY20b5HzJYipmnla', 2, 1, 1570785817),
(19, 'Neta', '160441100020', 'default.jpg', '$2y$10$XblgMjTLQ3mU2Wm1Yl14FOq7EFTxuoQW2jw07tTm3ag9zc80X/hWa', 2, 1, 1570786035),
(20, '', '101', 'default.jpg', '$2y$10$i6S5mCj6h28LT7QFEDU1.uaKZErUV.NauVJ7bGajhR.KXRO1wjmKm', 2, 1, 1570793343),
(21, '', '101', 'default.jpg', '$2y$10$Ps47kjIOgRunz9eS1bfoA.ZOXckU0wrAgm1729x/D30l/iG7Q6foO', 2, 1, 1570793376),
(22, '', '101', 'default.jpg', '$2y$10$7RnsJob9i0u.5z5Zp/UueO3q0.Mi9Nzv.BmmSLR2vHS0bOOiIqCr2', 2, 1, 1570793565);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_access_menu`
--

CREATE TABLE `user_access_menu` (
  `id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user_access_menu`
--

INSERT INTO `user_access_menu` (`id`, `role_id`, `menu_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 2, 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_menu`
--

CREATE TABLE `user_menu` (
  `id` int(11) NOT NULL,
  `menu` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user_menu`
--

INSERT INTO `user_menu` (`id`, `menu`) VALUES
(1, 'Data'),
(2, 'Indeks Prestasi Dosen SI'),
(3, 'Kuisioner');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_role`
--

CREATE TABLE `user_role` (
  `id` int(11) NOT NULL,
  `role` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user_role`
--

INSERT INTO `user_role` (`id`, `role`) VALUES
(1, 'Administrator'),
(2, 'Mahasiswa');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_sub_menu`
--

CREATE TABLE `user_sub_menu` (
  `id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `url` varchar(128) NOT NULL,
  `icon` varchar(128) NOT NULL,
  `is_active` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user_sub_menu`
--

INSERT INTO `user_sub_menu` (`id`, `menu_id`, `title`, `url`, `icon`, `is_active`) VALUES
(1, 1, 'Dashboard', 'Admin', 'ni ni-tv-2 text-primary', 0),
(2, 2, 'My Profile', 'user', '	\r\nni ni-badge text-blue', 0),
(3, 1, 'Mahasiswa', 'data/mhs', 'ni ni-bullet-list-67 text-red', 1),
(4, 1, 'Dosen', 'data/dosen', 'ni ni-bullet-list-67 text-red', 1),
(5, 1, 'MataKuliah', 'data/matkul', 'ni ni-bullet-list-67 text-red', 1),
(6, 1, 'Semester', 'data/smt', 'ni ni-bullet-list-67 text-red', 1),
(7, 1, 'Tahun Ajaran', 'data/thnajar', 'ni ni-bullet-list-67 text-red', 1),
(8, 2, 'Pengajaran', 'indeks/ngajar', 'fas fa-chart-bar', 1),
(9, 2, 'Pelayanan', 'indeks/layanan', 'fas fa-chart-bar', 1),
(10, 3, 'Evaluasi Pengajaran', 'kuisioner/ajar', 'ni ni-single-copy-04', 1),
(11, 3, 'Kepuasan Pelayanan Dosen SI', 'kuisioner/kepuasan', 'ni ni-single-copy-04', 1),
(12, 1, 'Form Opsi', 'data/opsi', 'ni ni-bullet-list-67 text-red', 1);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbl_dosen`
--
ALTER TABLE `tbl_dosen`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_kepuasan`
--
ALTER TABLE `tbl_kepuasan`
  ADD PRIMARY KEY (`nim`);

--
-- Indeks untuk tabel `tbl_kuisioner`
--
ALTER TABLE `tbl_kuisioner`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_matkul`
--
ALTER TABLE `tbl_matkul`
  ADD PRIMARY KEY (`kd_matkul`);

--
-- Indeks untuk tabel `tbl_mhs`
--
ALTER TABLE `tbl_mhs`
  ADD PRIMARY KEY (`nim`);

--
-- Indeks untuk tabel `tbl_opsi`
--
ALTER TABLE `tbl_opsi`
  ADD PRIMARY KEY (`kd_opsi`);

--
-- Indeks untuk tabel `tbl_smt`
--
ALTER TABLE `tbl_smt`
  ADD PRIMARY KEY (`kd_smt`);

--
-- Indeks untuk tabel `tbl_thnajar`
--
ALTER TABLE `tbl_thnajar`
  ADD PRIMARY KEY (`kd_thnajar`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_access_menu`
--
ALTER TABLE `user_access_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_menu`
--
ALTER TABLE `user_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tbl_dosen`
--
ALTER TABLE `tbl_dosen`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT untuk tabel `tbl_kuisioner`
--
ALTER TABLE `tbl_kuisioner`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tbl_opsi`
--
ALTER TABLE `tbl_opsi`
  MODIFY `kd_opsi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `tbl_smt`
--
ALTER TABLE `tbl_smt`
  MODIFY `kd_smt` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `tbl_thnajar`
--
ALTER TABLE `tbl_thnajar`
  MODIFY `kd_thnajar` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT untuk tabel `user_access_menu`
--
ALTER TABLE `user_access_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `user_menu`
--
ALTER TABLE `user_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
