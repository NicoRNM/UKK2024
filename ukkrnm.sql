-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 23 Apr 2024 pada 08.09
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ukkrnm`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `album`
--

CREATE TABLE `album` (
  `id` int(10) NOT NULL,
  `nama_album` varchar(255) NOT NULL,
  `deskripsi` varchar(255) NOT NULL,
  `tdl_dibuat` datetime NOT NULL,
  `user_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `album`
--

INSERT INTO `album` (`id`, `nama_album`, `deskripsi`, `tdl_dibuat`, `user_id`) VALUES
(3, 'ME TIME', 'My Holiday after being tired from school', '2024-04-23 08:23:10', 2),
(4, 'LEARNING', 'Aku akan selalu belajar apa pun dan kapan pun, aku tidak akan berhenti belajar', '2024-04-23 08:28:35', 4),
(5, 'GIRL\'S POWER', 'Yang cewe kumpul sini..', '2024-04-23 09:06:59', 5),
(6, 'Holiday', 'yang liburan-liburan azaaa', '2024-04-23 09:16:58', 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `foto`
--

CREATE TABLE `foto` (
  `id` int(11) NOT NULL,
  `judul_foto` varchar(255) NOT NULL,
  `deskripsi` varchar(255) NOT NULL,
  `tgl_unggahan` datetime NOT NULL,
  `lokasi_foto` varchar(255) NOT NULL,
  `album_id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `foto`
--

INSERT INTO `foto` (`id`, `judul_foto`, `deskripsi`, `tgl_unggahan`, `lokasi_foto`, `album_id`, `user_id`) VALUES
(6, 'Nothing Special', 'I don\'t know what has happened to me', '2024-04-23 08:56:55', 'Screenshot 2024-04-23 083308.png', 3, 2),
(7, 'Fkme', 'Eid Mubarak IS NOTHING SPECIAL', '2024-04-23 08:57:22', 'Screenshot 2024-04-23 083414.png', 3, 2),
(8, 'Huftt', 'i do', '2024-04-23 08:57:50', 'Screenshot 2024-04-23 083437.png', 3, 2),
(9, 'Meratapi Nasib di temani GARPIT', 'Everything is gonna be Ok.', '2024-04-23 08:58:25', 'Screenshot 2024-04-23 083517.png', 3, 2),
(10, 'Pantai adalah ketenangan tersendiri', 'Beach...', '2024-04-23 08:59:22', 'Screenshot 2024-04-23 083853.png', 3, 2),
(11, 'Air Terjun Si Single', 'ini part ke dua dari FILM Horror air terjun pengantin', '2024-04-23 09:00:16', 'Screenshot 2024-04-23 083933.png', 3, 2),
(12, 'How Are You?', 'Hiii Guys jangan lupa mampir ke ig aku ya @si_tembem', '2024-04-23 09:07:56', 'Screenshot 2023-05-15 133336.png', 5, 5),
(13, 'Baca Buku', 'Aku suka Cowo yg suka membaca btw hahaha', '2024-04-23 09:10:01', 'Screenshot 2023-05-23 191640.png', 5, 5),
(14, 'Look a Sexxi??', 'pengen jadi idaman mas mas yang foto nya paling atas hahaha', '2024-04-23 09:11:00', 'Screenshot 2023-07-25 090915.png', 5, 5),
(15, 'Kale Rencang-Rencang', 'Eid Mubarak all, maklum kalo ga pernah salah', '2024-04-23 09:15:27', 'Screenshot 2024-04-23 083749.png', 4, 4),
(16, 'santai seperti di pantai', 'ya emang pantai ****L', '2024-04-23 09:17:57', 'Screenshot 2024-04-23 083912.png', 6, 4),
(17, 'Bersama kita KUAT', 'Beli obat kuatnya bangg di apotekk', '2024-04-23 09:18:58', 'Screenshot 2024-04-23 083957.png', 6, 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `komentarfoto`
--

CREATE TABLE `komentarfoto` (
  `id` int(11) NOT NULL,
  `foto_id` int(11) NOT NULL,
  `user_id` int(10) NOT NULL,
  `isi_komentar` varchar(255) NOT NULL,
  `tgl_komentar` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `komentarfoto`
--

INSERT INTO `komentarfoto` (`id`, `foto_id`, `user_id`, `isi_komentar`, `tgl_komentar`) VALUES
(3, 6, 4, 'Ganteng Boss', '2024-04-23 09:41:11'),
(4, 13, 2, 'cantik banget kaaa....><', '2024-04-23 09:46:24'),
(5, 16, 2, 'baju kuning jelek banget sii', '2024-04-23 09:57:22'),
(6, 15, 2, 'No 2 dari kiri bau taikk', '2024-04-23 10:00:02');

-- --------------------------------------------------------

--
-- Struktur dari tabel `likefoto`
--

CREATE TABLE `likefoto` (
  `id` int(11) NOT NULL,
  `foto_id` int(11) NOT NULL,
  `user_id` int(10) NOT NULL,
  `tgl_like` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `likefoto`
--

INSERT INTO `likefoto` (`id`, `foto_id`, `user_id`, `tgl_like`) VALUES
(5, 6, 4, '2024-04-23 09:40:45'),
(7, 13, 2, '2024-04-23 09:46:51'),
(10, 16, 2, '2024-04-23 09:57:43'),
(11, 15, 2, '2024-04-23 10:00:23'),
(13, 8, 6, '2024-04-23 10:25:56'),
(16, 10, 6, '2024-04-23 10:55:25'),
(17, 10, 6, '2024-04-23 10:55:25'),
(18, 10, 6, '2024-04-23 10:55:25');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(10) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `nama_lengkap` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `email`, `nama_lengkap`, `alamat`) VALUES
(2, 'nico', '$2y$10$zKFycxLymOye3jMsUX.Sv.vcTaX1.BOgD4PZFAiqEQ6v5mhkzouLq', 'nicomuzacky99@gmail.com', 'Reagan Nico Muzacky', 'Jl.Berlin'),
(4, 'fatir', '$2y$10$W..1.2yWhaEECuZrxkMVwumW5H3xuT/cUTOZuZluCRVkWgU2oCjBq', 'fatirsatir70@gmail.com', 'Ryfathir Rahman', 'Jl. Jejere kauman'),
(5, 'felicia', '$2y$10$iiVrykaIhPl29i9P2zalgOfhGYxdecglmdJXlqGw8aEOmXZFPUXhO', 'feliciarnm99@gmail.com', 'Felicia Gray', 'Jl.Madaniah'),
(6, 'Agos', '$2y$10$BSxbAgx782LjnIFUyMFP5ubot3GIoZp7iKuG3QxfQg9ptJyiEGD02', 'Agosbengkel67@gmail.com', 'Agus Habis Sunat', 'Jl. Blok M');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKalbum633422` (`user_id`);

--
-- Indeks untuk tabel `foto`
--
ALTER TABLE `foto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `judul_foto` (`judul_foto`),
  ADD KEY `FKfoto129237` (`album_id`),
  ADD KEY `FKfoto381331` (`user_id`);

--
-- Indeks untuk tabel `komentarfoto`
--
ALTER TABLE `komentarfoto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKkomentarfo819838` (`user_id`),
  ADD KEY `FKkomentarfo294487` (`foto_id`);

--
-- Indeks untuk tabel `likefoto`
--
ALTER TABLE `likefoto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKlikefoto775695` (`user_id`),
  ADD KEY `FKlikefoto918430` (`foto_id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `nama_lengkap` (`nama_lengkap`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `album`
--
ALTER TABLE `album`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `foto`
--
ALTER TABLE `foto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `komentarfoto`
--
ALTER TABLE `komentarfoto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `likefoto`
--
ALTER TABLE `likefoto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `album`
--
ALTER TABLE `album`
  ADD CONSTRAINT `FKalbum633422` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Ketidakleluasaan untuk tabel `foto`
--
ALTER TABLE `foto`
  ADD CONSTRAINT `FKfoto129237` FOREIGN KEY (`album_id`) REFERENCES `album` (`id`),
  ADD CONSTRAINT `FKfoto381331` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Ketidakleluasaan untuk tabel `komentarfoto`
--
ALTER TABLE `komentarfoto`
  ADD CONSTRAINT `FKkomentarfo294487` FOREIGN KEY (`foto_id`) REFERENCES `foto` (`id`),
  ADD CONSTRAINT `FKkomentarfo819838` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Ketidakleluasaan untuk tabel `likefoto`
--
ALTER TABLE `likefoto`
  ADD CONSTRAINT `FKlikefoto775695` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FKlikefoto918430` FOREIGN KEY (`foto_id`) REFERENCES `foto` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
