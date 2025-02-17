-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 09 Feb 2025 pada 15.12
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `warung-ddd`
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


-- --------------------------------------------------------

--
-- Struktur dari tabel `produk`
--

CREATE TABLE `produk` (
  `id_produk` int(11) NOT NULL,
  `nama_produk` varchar(100) DEFAULT NULL,
  `kategori` enum('makanan','minuman','produk perawatan dan kebersihan','bahan dapur','jajanan','obat-obatan') NOT NULL,
  `harga` decimal(10,2) DEFAULT NULL,
  `stok` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `produk`
--

INSERT INTO `produk` (`id_produk`, `nama_produk`, `kategori`, `harga`, `stok`) VALUES
(0, 'Sari Wangi Teh Melati Hijau', 'bahan dapur', 9000.00, 50),
(1, 'Inter Mie', 'makanan', 1500.00, 50),
(2, 'Super Mie', 'makanan', 2000.00, 50),
(3, 'Mie 100', 'makanan', 3000.00, 50),
(4, 'Mie Sukses Isi 2 Rasa Kari Ayam', 'makanan', 4000.00, 50),
(5, 'Mie Sukses Isi 2 Rasa Ayam Kremes', 'makanan', 4000.00, 50),
(6, 'Mie Goreng Instan', 'makanan', 3500.00, 50),
(7, 'Mie Kuah Rasa Soto Medan', 'makanan', 3500.00, 50),
(8, 'Mie Kuah Rasa Kari Ayam', 'makanan', 3500.00, 50),
(9, 'Mie Sedap Instan Rasa Soto', 'makanan', 3000.00, 50),
(10, 'Mie Sedap Goreng', 'makanan', 3000.00, 50),
(11, 'Sirup ABC Squash Delight 400 ml', 'minuman', 15000.00, 50),
(12, 'Sirup Kurnia 600 Ml', 'minuman', 22000.00, 50),
(13, 'Teh Pucuk Harum 330 ML', 'minuman', 4000.00, 49),
(14, 'Teh S-Tea Jumbo 390 Ml', 'minuman', 4000.00, 50),
(15, 'Fruit Tea 350 Ml', 'minuman', 4000.00, 50),
(16, 'Fruit Tea Blackcurrant 350 Ml', 'minuman', 4000.00, 50),
(17, 'Golda Coffee Cappucino 250 ML', 'minuman', 4000.00, 50),
(18, 'Floridina Orange', 'minuman', 4000.00, 50),
(19, 'Teh S-Tea Jumbo 390 Ml', 'minuman', 4000.00, 50),
(20, 'Qtela Singkong 20 gram', 'jajanan', 2000.00, 50),
(21, 'Citato LITE Rasa Rumput Laut', 'jajanan', 3000.00, 50),
(22, 'Malkis Abon 105 gram', 'jajanan', 7000.00, 50),
(23, 'Sari Gandum 240 gram', 'jajanan', 10000.00, 50),
(24, 'Tisu Wajah Larisst', 'produk perawatan dan kebersihan', 8000.00, 50),
(25, 'Tisu Jolly', 'produk perawatan dan kebersihan', 9000.00, 50),
(26, 'Tisu Wajah Nice', 'produk perawatan dan kebersihan', 10000.00, 50),
(27, 'Tisu Cassie', 'produk perawatan dan kebersihan', 7000.00, 50),
(28, 'Tisu Basah Mitu Baby Blue Variant dan Pink Variant', 'produk perawatan dan kebersihan', 7000.00, 50),
(29, 'Kapas Selection', 'produk perawatan dan kebersihan', 6000.00, 50),
(30, 'Pasta Gigi Pepsodent 120 gram', 'produk perawatan dan kebersihan', 10000.00, 50),
(31, 'Pasta Gigi Pepsodent 75 gram', 'produk perawatan dan kebersihan', 6000.00, 50),
(32, 'Dettol Body Wash 800 gram', 'produk perawatan dan kebersihan', 28000.00, 50),
(33, 'Shampo Clear Menthol Segar 850 Ml', 'produk perawatan dan kebersihan', 100000.00, 50),
(34, 'Shampo Clear Menthol Segar 300 Ml', 'produk perawatan dan kebersihan', 45000.00, 50),
(35, ' Shampo Head&Shoulders Itch Care ', 'produk perawatan dan kebersihan', 40000.00, 50),
(36, 'Baby Powder MY BABY Blue Variant 150 gram', 'produk perawatan dan kebersihan', 11000.00, 50),
(37, 'Baby Powder MY BABY Pink Variant 135 gram', 'produk perawatan dan kebersihan', 11000.00, 50),
(38, 'Baby Powder MY BABY Pink Variant 90 gram', 'produk perawatan dan kebersihan', 9000.00, 50),
(39, 'Baby Powder MY BABY Blue Variant 50 gram', 'produk perawatan dan kebersihan', 5000.00, 50),
(40, 'Baby Powder MY BABY orange Variant 50 gram', 'produk perawatan dan kebersihan', 5000.00, 50),
(41, 'Air Mawar', 'produk perawatan dan kebersihan', 7000.00, 50),
(42, 'Citra Pearly Glow UV Pink', 'produk perawatan dan kebersihan', 12500.00, 50),
(43, 'Citra Noursing Glow Up UV Hijau', 'produk perawatan dan kebersihan', 14500.00, 50),
(44, 'Marina UV White Nourish and Bright Putih', 'produk perawatan dan kebersihan', 8500.00, 50),
(45, 'Marina UV White Hand&Body Biru', 'produk perawatan dan kebersihan', 8500.00, 50),
(46, 'Marina Natural Protects and Cares Pink', 'produk perawatan dan kebersihan', 8500.00, 50),
(47, 'Minyak Kita 1 Liter', 'bahan dapur', 17500.00, 50),
(48, 'Minyak Kunci Mas 2 Liter', 'bahan dapur', 40000.00, 50),
(49, 'Minyak Filma 2 Liter', 'bahan dapur', 40000.00, 50),
(50, 'Sardines GAGA 425 gram', 'bahan dapur', 21000.00, 50),
(51, 'Sardines GAGA 155 gram', 'bahan dapur', 10000.00, 50),
(52, 'Sardines ABC 155 gram', 'bahan dapur', 12500.00, 50),
(53, 'Sardines ABC 425 gram', 'bahan dapur', 23000.00, 50),
(54, 'Kopi Bubuk Cap Jembatan 500 gram', 'bahan dapur', 23000.00, 50),
(55, 'Kopi Bubuk Cap Jembatan 90 gram', 'bahan dapur', 5000.00, 50),
(56, 'Susu Kental Manis Tiga Sapi Vanila', 'bahan dapur', 13000.00, 50),
(57, 'Susu Kental Manis Tiga sapi coklat', 'bahan dapur', 13000.00, 50),
(58, 'Sari Wangi Teh Asli Biru', 'bahan dapur', 7000.00, 50),
(59, 'Teh Poci', 'bahan dapur', 7500.00, 50),
(60, 'Royco Rasa sapi 94 gram', 'bahan dapur', 5000.00, 50),
(61, 'Royco Rasa Ayam 94 gram', 'bahan dapur', 5000.00, 50),
(62, 'Aji No Moto 50 gram', 'bahan dapur', 3000.00, 50),
(63, 'Masako 123 gram', 'bahan dapur', 5000.00, 50),
(64, 'Mentega Filma 200 gram', 'bahan dapur', 7500.00, 50),
(65, 'Saos Tiram 23 Ml', 'bahan dapur', 3000.00, 50),
(66, 'Mentega Blue band 200 gram', 'bahan dapur', 10000.00, 50),
(67, 'Minyak kayu Putih 15 Ml', 'obat-obatan', 7000.00, 50),
(68, 'Minyak kayu Putih 30 Ml', 'obat-obatan', 12000.00, 50),
(69, 'Minyak kayu Putih 60 Ml', 'obat-obatan', 22000.00, 50),
(70, 'Minyak kayu Putih 120 Ml', 'obat-obatan', 42000.00, 50),
(71, 'Minyak Telon My Baby', 'obat-obatan', 16000.00, 50);

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
  MODIFY `id_penjualan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `produk`
--
ALTER TABLE `produk`
  MODIFY `id_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

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
