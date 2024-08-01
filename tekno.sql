-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 01 Feb 2021 pada 05.55
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
-- Database: `tekno`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `cart`
--

CREATE TABLE `cart` (
  `id_cart` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `harga` int(20) NOT NULL,
  `kuantiti` int(11) NOT NULL,
  `gambar` varchar(191) NOT NULL,
  `kategori` varchar(50) NOT NULL,
  `total` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `cart`
--

INSERT INTO `cart` (`id_cart`, `id_user`, `id_produk`, `nama`, `harga`, `kuantiti`, `gambar`, `kategori`, `total`) VALUES
(1, 1, 64, 'CPU Fan Water Cooler Blue', 1760000, 1, '2121010131311612084289fanwatercooler.jfif', 'Komputer', 1760000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kontak`
--

CREATE TABLE `kontak` (
  `id_kontak` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `tentang` varchar(50) NOT NULL,
  `pesan` text NOT NULL,
  `tgl` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kontak`
--

INSERT INTO `kontak` (`id_kontak`, `nama`, `email`, `tentang`, `pesan`, `tgl`) VALUES
(1, 'Bayu Pamungkas Ganteng', 'bayu@gmail.com', 'komputer bagus', 'saya membeli komputer bagus tapi kok murah ya', '2021-02-01 06:00:00'),
(2, 'bayu', 'bayhekasiap@gmail.com', 'Ponsel', 'Ponsel yang anda jual kenapa bagus abgus banget terus kenapa murah banget jadi penasaran ponsel asli apa HDC', '2021-02-01 05:54:09');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembayaran`
--

CREATE TABLE `pembayaran` (
  `id_pembayaran` int(11) NOT NULL,
  `id_pesan` varchar(20) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `nominal` int(20) NOT NULL,
  `gambar` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pembayaran`
--

INSERT INTO `pembayaran` (`id_pembayaran`, `id_pesan`, `nama`, `nominal`, `gambar`) VALUES
(3, '1219061106', 'Bayu Pamungkas', 9000000, '1171632372-2021-01-31-09-25-26-lenovoyoga.jpg'),
(4, '184795202', 'Bayu Pamungkas', 6760000, '1044008663-2021-02-01-04-45-52-Bukti-Transfer-BRI-Terbaru-dan-Terlengkap.jpg'),
(5, '1455538211', 'bayu', 62990000, '1688404207-2021-02-01-04-55-04-Bukti-Transfer-BRI-Terbaru-dan-Terlengkap.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penjualan`
--

CREATE TABLE `penjualan` (
  `id_penjualan` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `jual` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `penjualan`
--

INSERT INTO `penjualan` (`id_penjualan`, `id_produk`, `jual`) VALUES
(7, 63, 2),
(8, 64, 1),
(9, 59, 10),
(10, 58, 5);

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk`
--

CREATE TABLE `produk` (
  `id_produk` int(11) NOT NULL,
  `nama` varchar(191) NOT NULL,
  `harga` int(20) NOT NULL,
  `stok` int(11) NOT NULL,
  `gambar` varchar(191) NOT NULL,
  `kategori` varchar(50) NOT NULL,
  `deskripsi` text NOT NULL,
  `createat` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updateat` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `produk`
--

INSERT INTO `produk` (`id_produk`, `nama`, `harga`, `stok`, `gambar`, `kategori`, `deskripsi`, `createat`, `updateat`) VALUES
(48, 'Xiaomi Redmi Note 7', 1200000, 100, '2121010124241611470863A93-listimage-white-v1.png', 'Ponsel', 'wsdfsfdgdfg', '2021-01-24 13:42:25', '2021-01-24 07:47:43'),
(49, 'Redmi 7A', 1799000, 100, '2121010124241611447418C3M.png', 'Ponsel', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Accusamus officiis harum id voluptas fugit, voluptatem pariatur voluptatum vel culpa magnam, dolorum blanditiis quae ut illo libero non a, obcaecati iusto?', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(57, 'Xiaomi Redmi Note 7', 1909999, 100, '2121010124241611450046A92-white.png', 'Ponsel', '\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Accusamus officiis harum id voluptas fugit, voluptatem pariatur voluptatum vel culpa magnam, dolorum blanditiis quae ut illo libero non a, obcaecati iusto?', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(58, 'Laptop lenovo', 6000000, 5, '2121010124241611450092lenovothinkpade480.jpg', 'Laptop', '\r\n\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Accusamus officiis harum id voluptas fugit, voluptatem pariatur voluptatum vel culpa magnam, dolorum blanditiis quae ut illo libero non a, obcaecati iusto?', '2021-01-31 18:00:33', '0000-00-00 00:00:00'),
(59, 'Oppo FindX', 3299000, 490, '2121010124241611470962Findx2-pro.png', 'Ponsel', 'Hp mahala berkelas suport FF, dan pubg', '2021-01-31 18:00:33', '2021-01-24 07:52:53'),
(60, 'Lenovo Yoga S', 12000000, 10, '2121010124241611487700lenovoyoga.jpg', 'Laptop', 'LAptop murah berkualitas cocok untuk anda yang sering bekerja memanfaatkan laptop, laptop dengan spesifikasi yang cukup bagus mampu bekerja setiap hari.', '2021-01-24 12:28:20', '0000-00-00 00:00:00'),
(61, 'Bayu Pamungkas', 9000000, 100, '2121010127271611717147lenovothinkpade480.jpg', 'Komputer', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Accusamus officiis harum id voluptas fugit, voluptatem pariatur voluptatum vel culpa magnam, dolorum blanditiis quae ut illo libero non a, obcaecati iusto?', '2021-01-27 04:12:27', '2021-01-31 09:11:58'),
(62, 'Mobo MSI Gaming', 2600000, 10, '2121010131311612084164mobomsigaming.jfif', 'Komputer', 'Menampilkan pre-installed I/O shielding, membuat proses instalasi Anda lebih mudah dan lebih aman. Desain patent-pending yang melindungi port I / O Anda dan juga mencegah electrostatic discharge damage, menjadikan motherboard Anda fondasi gaming yang kuat', '2021-01-31 10:09:24', '0000-00-00 00:00:00'),
(63, 'AMD Ryzhen 9 5000X CPU 12 Core', 5000000, 10, '2121010131311612084235amdryzhen95900X.jpg', 'Komputer', 'Teknologi Core Boost menggabungkan premium layout MSI dan optimized power design yang memungkinkan pengiriman arus yang lebih cepat dan tidak terdistorsi ke CPU dengan presisi pin-point. Tidak hanya mendukung multi-core CPU, juga menciptakan kondisi yang sempurna untuk overclocking CPU Anda.Teknologi Core Boost menggabungkan premium layout MSI dan optimized power design yang memungkinkan pengiriman arus yang lebih cepat dan tidak terdistorsi ke CPU dengan presisi pin-point. Tidak hanya mendukung multi-core CPU, juga menciptakan kondisi yang sempurna untuk overclocking CPU Anda.', '2021-01-31 17:57:49', '2021-01-31 10:16:58'),
(64, 'CPU Fan Water Cooler Blue', 1760000, 3, '2121010131311612084289fanwatercooler.jfif', 'Komputer', 'Mendinginkan PC Anda adalah penting untuk kinerja yang andal. Motherboard MSI memiliki power design yang luar biasa dengan heatsink yang solid dan heavy. Kami telah memastikan untuk menyertakan fan headers yang cukup dengan kontrol penuh yang memungkinkan Anda untuk mendinginkan sistem sesuka Anda ', '2021-01-31 17:57:49', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `status`
--

CREATE TABLE `status` (
  `id_status` int(1) NOT NULL,
  `keterangan` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `status`
--

INSERT INTO `status` (`id_status`, `keterangan`) VALUES
(0, ''),
(1, 'Di proses'),
(2, 'Di kirim'),
(3, 'Di terima');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `id` int(11) NOT NULL,
  `id_pesan` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `pengirim` varchar(50) NOT NULL,
  `penerima` varchar(50) NOT NULL,
  `alamat` varchar(150) NOT NULL,
  `telepon` int(15) NOT NULL,
  `email` varchar(50) NOT NULL,
  `kuantiti_total` int(11) NOT NULL,
  `total_akhir` int(20) NOT NULL,
  `pembayaran` int(11) NOT NULL,
  `id_status` int(11) NOT NULL,
  `pesan_at` datetime NOT NULL,
  `kirim_at` datetime NOT NULL,
  `terima_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`id`, `id_pesan`, `id_user`, `pengirim`, `penerima`, `alamat`, `telepon`, `email`, `kuantiti_total`, `total_akhir`, `pembayaran`, `id_status`, `pesan_at`, `kirim_at`, `terima_at`) VALUES
(4, 184795202, 1, 'Bayu Pamungkas', 'Marniyem', 'Jawa Tengah , Wonosari , Jamaica, Rt 11 Rw 2', 2147483647, 'marniyem@gmail.com', 2, 6760000, 1, 2, '2021-01-31 11:41:38', '2021-02-01 04:53:09', '0000-00-00 00:00:00'),
(3, 1098598934, 1, 'Narto Saminto', 'Saskeh ', 'Konoha. rt 02 Rw 03', 2147483647, 'saske@gmail.com', 1, 5000000, 0, 0, '2021-01-31 11:34:03', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 1219061106, 1, 'Bayu Pamungkas', 'bayu pamungkas', 'lopawon, Kebobang, Wonosari', 2147483647, 'bayu@gmail.com', 1, 9000000, 1, 3, '2021-01-31 04:56:21', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 1455538211, 1, 'Bayu Pamungkas', 'bayu pamungkas', 'lopawon, Kebobang, Wonosari', 2147483647, 'bayu@gmail.com', 15, 62990000, 1, 0, '2021-01-31 12:00:33', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi_detail`
--

CREATE TABLE `transaksi_detail` (
  `id_transaksi` int(11) NOT NULL,
  `id_pesan` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `kuantiti` int(11) NOT NULL,
  `total` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `transaksi_detail`
--

INSERT INTO `transaksi_detail` (`id_transaksi`, `id_pesan`, `id_produk`, `kuantiti`, `total`) VALUES
(1, 1219061106, 61, 1, 9000000),
(9, 1098598934, 63, 1, 5000000),
(10, 184795202, 63, 1, 5000000),
(11, 184795202, 64, 1, 1760000),
(12, 1455538211, 59, 10, 32990000),
(13, 1455538211, 58, 5, 30000000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `nama` varchar(191) NOT NULL,
  `email` varchar(50) NOT NULL,
  `sandi` varchar(191) NOT NULL,
  `image` varchar(191) NOT NULL,
  `role` varchar(15) NOT NULL,
  `createat` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updateat` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id_user`, `nama`, `email`, `sandi`, `image`, `role`, `createat`, `updateat`) VALUES
(1, 'Bayu Pamungkas', 'bayhek335@gmail.com', '$2y$10$JACVc4V32Jp/fpJJNWJc7eOT9F2sBQcYhZraZUWDrPz6W8R7/ElM6', 'default.png', '1', '2021-01-31 16:28:35', NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id_cart`);

--
-- Indeks untuk tabel `kontak`
--
ALTER TABLE `kontak`
  ADD PRIMARY KEY (`id_kontak`);

--
-- Indeks untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`id_pembayaran`),
  ADD UNIQUE KEY `id_pesan` (`id_pesan`);

--
-- Indeks untuk tabel `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`id_penjualan`);

--
-- Indeks untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`);

--
-- Indeks untuk tabel `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id_status`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_pesan`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indeks untuk tabel `transaksi_detail`
--
ALTER TABLE `transaksi_detail`
  ADD PRIMARY KEY (`id_transaksi`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `cart`
--
ALTER TABLE `cart`
  MODIFY `id_cart` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `kontak`
--
ALTER TABLE `kontak`
  MODIFY `id_kontak` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `id_pembayaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `penjualan`
--
ALTER TABLE `penjualan`
  MODIFY `id_penjualan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `produk`
--
ALTER TABLE `produk`
  MODIFY `id_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `transaksi_detail`
--
ALTER TABLE `transaksi_detail`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
