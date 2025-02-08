-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 08 Feb 2025 pada 06.40
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
-- Database: `warung`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id_admin`, `username`, `password`) VALUES
(1, 'admin', 'admin1234');

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_penjualan`
--

CREATE TABLE `detail_penjualan` (
  `id_detail` int(11) NOT NULL,
  `id_penjualan` int(11) DEFAULT NULL,
  `id_produk` int(11) DEFAULT NULL,
  `jumlah` int(11) DEFAULT NULL,
  `sub_total` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `penjualan`
--

CREATE TABLE `penjualan` (
  `id_penjualan` int(11) NOT NULL,
  `id_produk` int(11) DEFAULT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp(),
  `total_harga` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `penjualan`
--

INSERT INTO `penjualan` (`id_penjualan`, `id_produk`, `tanggal`, `total_harga`) VALUES
(1, 1, '2025-02-07 11:50:02', 0.00),
(2, 1, '2025-02-07 11:50:02', 0.00),
(3, 1, '2025-02-07 11:51:10', 15000.00),
(4, 1, '2025-02-07 11:51:10', 15000.00),
(5, NULL, '2025-02-07 12:16:13', 15000.00),
(6, NULL, '2025-02-07 12:16:13', 15000.00),
(7, 1, '2025-02-07 12:30:42', 15000.00),
(8, 1, '2025-02-07 12:30:42', 15000.00),
(9, 2, '2025-02-07 12:46:30', 10000.00),
(10, 1, '2025-02-07 12:46:30', 15000.00),
(11, 2, '2025-02-07 12:54:37', 10000.00),
(12, 1, '2025-02-07 12:54:37', 15000.00),
(13, 1, '2025-02-07 12:54:37', 15000.00),
(14, 2, '2025-02-07 12:54:37', 10000.00),
(15, 2, '2025-02-07 12:54:37', 10000.00),
(16, 2, '2025-02-07 12:54:37', 10000.00),
(17, 3, '2025-02-07 13:25:51', 5000.00),
(18, 2, '2025-02-07 13:25:51', 10000.00),
(19, 1, '2025-02-07 13:25:51', 15000.00),
(20, 3, '2025-02-07 14:02:39', 5000.00),
(21, 2, '2025-02-07 14:02:39', 10000.00),
(22, 1, '2025-02-07 14:02:39', 15000.00),
(23, 3, '2025-02-07 14:02:39', 5000.00),
(24, 3, '2025-02-07 14:02:39', 5000.00),
(25, 3, '2025-02-07 14:02:39', 5000.00),
(26, 3, '2025-02-07 14:02:39', 5000.00),
(27, 2, '2025-02-07 14:02:39', 10000.00),
(28, 3, '2025-02-07 14:02:57', 5000.00),
(29, 2, '2025-02-07 14:02:57', 10000.00),
(30, 3, '2025-02-07 14:02:57', 5000.00),
(31, 2, '2025-02-07 14:02:57', 10000.00),
(32, 1, '2025-02-07 15:29:55', 15000.00),
(33, 1, '2025-02-07 15:29:55', 15000.00),
(34, 3, '2025-02-07 15:30:59', 5000.00),
(35, 3, '2025-02-07 15:30:59', 5000.00),
(36, 3, '2025-02-07 15:30:59', 5000.00),
(37, 3, '2025-02-07 15:30:59', 5000.00),
(38, 1, '2025-02-07 15:34:54', 15000.00),
(39, 1, '2025-02-07 15:34:54', 15000.00),
(40, 1, '2025-02-07 15:34:54', 15000.00),
(41, 2, '2025-02-07 15:35:15', 10000.00),
(42, 3, '2025-02-07 15:35:15', 5000.00),
(43, 1, '2025-02-07 15:35:15', 15000.00),
(44, 1, '2025-02-07 15:35:15', 15000.00),
(45, 3, '2025-02-07 15:38:28', 5000.00),
(46, 3, '2025-02-07 15:38:28', 5000.00),
(47, 3, '2025-02-07 15:38:28', 5000.00),
(48, 3, '2025-02-07 15:38:28', 5000.00),
(49, 3, '2025-02-07 15:38:28', 5000.00),
(50, 3, '2025-02-07 15:38:28', 5000.00),
(51, 3, '2025-02-07 15:38:28', 5000.00),
(52, 1, '2025-02-07 16:41:30', 15000.00),
(53, 1, '2025-02-07 16:41:30', 15000.00),
(54, 2, '2025-02-07 16:41:30', 10000.00),
(55, 2, '2025-02-07 16:41:30', 10000.00),
(56, 3, '2025-02-07 16:41:30', 5000.00),
(57, 3, '2025-02-07 16:41:30', 5000.00),
(58, 3, '2025-02-07 16:41:30', 5000.00),
(59, 3, '2025-02-08 04:58:33', 5000.00),
(60, 2, '2025-02-08 04:58:33', 10000.00),
(61, 1, '2025-02-08 04:58:33', 15000.00),
(62, 2, '2025-02-08 04:58:41', 10000.00),
(63, 2, '2025-02-08 04:58:41', 10000.00);

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk`
--

CREATE TABLE `produk` (
  `id_produk` int(11) NOT NULL,
  `nama_produk` varchar(100) DEFAULT NULL,
  `kstegori` enum('makanan','minuman','peralatan mandi','perawatan','bahan dapur') NOT NULL,
  `harga` decimal(10,2) DEFAULT NULL,
  `stok` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `produk`
--

INSERT INTO `produk` (`id_produk`, `nama_produk`, `kstegori`, `harga`, `stok`) VALUES
(1, 'Abc', 'makanan', 15000.00, 27),
(2, 'Lol', 'minuman', 10000.00, 34),
(3, 'mie', 'makanan', 5000.00, 26);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indeks untuk tabel `detail_penjualan`
--
ALTER TABLE `detail_penjualan`
  ADD PRIMARY KEY (`id_detail`),
  ADD KEY `id_penjualan` (`id_penjualan`),
  ADD KEY `id_produk` (`id_produk`);

--
-- Indeks untuk tabel `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`id_penjualan`),
  ADD KEY `fk_id_produk` (`id_produk`);

--
-- Indeks untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `detail_penjualan`
--
ALTER TABLE `detail_penjualan`
  MODIFY `id_detail` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `penjualan`
--
ALTER TABLE `penjualan`
  MODIFY `id_penjualan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT untuk tabel `produk`
--
ALTER TABLE `produk`
  MODIFY `id_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `detail_penjualan`
--
ALTER TABLE `detail_penjualan`
  ADD CONSTRAINT `detail_penjualan_ibfk_1` FOREIGN KEY (`id_penjualan`) REFERENCES `penjualan` (`id_penjualan`),
  ADD CONSTRAINT `detail_penjualan_ibfk_2` FOREIGN KEY (`id_produk`) REFERENCES `produk` (`id_produk`);

--
-- Ketidakleluasaan untuk tabel `penjualan`
--
ALTER TABLE `penjualan`
  ADD CONSTRAINT `fk_id_produk` FOREIGN KEY (`id_produk`) REFERENCES `produk` (`id_produk`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
