-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 12 Des 2021 pada 07.52
-- Versi server: 10.4.14-MariaDB
-- Versi PHP: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pengaduan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `datapenduduk`
--

CREATE TABLE `datapenduduk` (
  `id` int(11) NOT NULL,
  `desa` varchar(255) NOT NULL,
  `jumlah` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `datapenduduk`
--

INSERT INTO `datapenduduk` (`id`, `desa`, `jumlah`) VALUES
(1, 'Bulutengger', 200),
(2, 'Manyar', 325),
(3, 'Siman', 295),
(4, 'Ngarum', 165),
(5, 'Kendal', 125),
(6, 'Porodeso', 85);

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_desa`
--

CREATE TABLE `data_desa` (
  `id_desa` int(11) NOT NULL,
  `nama_desa` varchar(255) NOT NULL,
  `Jumlah_kk` int(11) NOT NULL,
  `email_desa` varchar(255) NOT NULL,
  `kepala_desa` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `data_desa`
--

INSERT INTO `data_desa` (`id_desa`, `nama_desa`, `Jumlah_kk`, `email_desa`, `kepala_desa`) VALUES
(1, 'Desa Bulutengger', 200, 'infobulutengger@gmail.com', 'Muhammad Zainudin'),
(2, 'Desa Manyar', 325, 'infomanyar@gmail.com', 'Dini Widyaningsih'),
(3, 'Desa Siman', 295, 'infosiman@gmail.com', 'Ahmad Mukhlisin'),
(4, 'Desa Ngarum', 165, 'infongarum@gmail.com', 'Jamaludin Mubarok'),
(5, 'Desa Kendal', 125, 'infokendal@gmail.com', 'Anisa Anggarini'),
(6, 'Desa Porodeso', 85, 'infoporodeso@gmail.com', 'Umar Jalaludin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengaduan`
--

CREATE TABLE `pengaduan` (
  `id` int(11) NOT NULL,
  `instansi_id` int(11) NOT NULL,
  `tgl_pengaduan` date NOT NULL,
  `judul_pengaduan` varchar(255) NOT NULL,
  `isi_pengaduan` text NOT NULL,
  `status_pengaduan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pengaduan`
--

INSERT INTO `pengaduan` (`id`, `instansi_id`, `tgl_pengaduan`, `judul_pengaduan`, `isi_pengaduan`, `status_pengaduan`) VALUES
(12, 2, '2021-11-28', 'Pemadaman Listrik', 'Sudah lima hari listrik desa sering bemasalah di malam hari, itu membuat masyarakat resah. Terima Kasih.', 2),
(13, 6, '2021-11-28', 'Sembako', 'Sudah dua bulan sembako di desa belum turun juga, saya makan apa Pak?', 0),
(14, 7, '2021-11-28', 'Sarana Prasarana', 'Jalan raya desa berlubang, kemarin saya hampir terjungkal jungkal. Semoga cepat diperbaiki, terima kasih.', 1),
(15, 8, '2021-11-28', 'Posyandu', 'Posyandu desa sudah tiga bulan belum diadakan, anak saya waktunya vaksin tetanus. Terima kasih.', 1),
(16, 2, '2021-12-03', 'Pembuatan KTP', 'Sudah dua bulan saya mengajukan pembuatan KTP tetapi belum kelar juga. Tolong dipercepat karena saya sangat membutuhkan. Terima Kasih.', 1),
(17, 2, '2021-12-08', 'Pembuatan Akta Kelahiran', 'Sudah tiga bulan saya mengajukan pembuatan Akta Kelahiran anak saya tetapi sampai saat ini masih belum jadi. Tolong dipercepat ya Pak, terima kasih.', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_rss`
--

CREATE TABLE `tb_rss` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_rss`
--

INSERT INTO `tb_rss` (`id`, `title`, `link`) VALUES
(1, 'Desa Besur Dongkrak Perekonomian Masyarakat di Segala Aspek', 'https://radarbojonegoro.jawapos.com/tag/219264/desa-besur-kecamatan-sekaran'),
(2, 'HUT TNI Ke-76, Forkopimcam Sekaran Salurkan Ribuan Vaksin', 'https://asatunet.com/asatunet-HUT-TNI-Ke-76--Forkopimcam-Sekaran-Salurkan-Ribuan-Vaksin'),
(3, 'Pokja Relawan Desa Bulutengger Jadi yang Pertama Rampungkan Pendataan SDGs Desa di Kabupaten Lamongan', 'https://beritajatim.com/politik-pemerintahan/pokja-relawan-desa-bulutengger-jadi-yang-pertama-rampungkan-pendataan-sdgs-desa-di-kabupaten-lamongan/');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `nama_instansi` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `alamat` text NOT NULL,
  `username` varchar(128) NOT NULL,
  `password` varchar(128) NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `nama_instansi`, `email`, `alamat`, `username`, `password`, `role_id`) VALUES
(1, '', '', '', 'admin', '$2y$10$i4HD610v2o5HOxZXEC4G5eO.E.D0oVy/eKAohNku2EXZOOW4Y75pC', 1),
(2, '3120521019', 'ramadhanitaputri08@gmail.com', 'Desa Bulutengger', 'Ramadhanita Putri', '$2y$10$khcOXj7YU8lN1DROOeFYPegEvmXviafGjH6inuxnYZmxLm9EmP2.2', 2),
(6, '3120521029', 'nikenanggun@gmail.com', 'Desa Manyar', 'Niken Anggun', '$2y$10$IsHmE1EGl3oD20c32ix8p.pO5mSYNQ2PX2xZX.vTAkQtSzN195LrW', 2),
(7, '3120521039', 'royazwan@gmail.com', 'Desa Siman', 'Roy Azwan Saputra', '$2y$10$IkdCndZhlELUKcjNZNjYfelTniT9i58af91uGOVTK4pUkEI/wC8Z6', 2),
(8, '3120521049', 'alfinameiyanti@gmail.com', 'Desa Ngarum', 'Alfina Meiyanti', '$2y$10$hMAohki6.N2fvRSASNQ.Uuab1667AJjAo35QBGgSnrJ3d51auiwhS', 2);

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
(1, 'Admin'),
(2, 'User');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `datapenduduk`
--
ALTER TABLE `datapenduduk`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `data_desa`
--
ALTER TABLE `data_desa`
  ADD PRIMARY KEY (`id_desa`);

--
-- Indeks untuk tabel `pengaduan`
--
ALTER TABLE `pengaduan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_rss`
--
ALTER TABLE `tb_rss`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_id` (`role_id`);

--
-- Indeks untuk tabel `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `datapenduduk`
--
ALTER TABLE `datapenduduk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `data_desa`
--
ALTER TABLE `data_desa`
  MODIFY `id_desa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `pengaduan`
--
ALTER TABLE `pengaduan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `tb_rss`
--
ALTER TABLE `tb_rss`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
