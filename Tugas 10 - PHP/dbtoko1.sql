-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 10, 2023 at 05:15 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbtoko1`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `inputPelanggan` (`kode` VARCHAR(10), `nama_pelanggan` VARCHAR(45), `alamat` VARCHAR(45), `jk` VARCHAR(1), `tmp_lahir` VARCHAR(45), `tgl_lahir` DATE, `email` VARCHAR(45), `kartu_id` INT(10))   BEGIN
INSERT INTO pelanggan (kode, nama_pelanggan, alamat, jk, tmp_lahir, tgl_lahir, email, kartu_id) VALUES (kode, nama_pelanggan, alamat, jk, tmp_lahir, tgl_lahir, email, kartu_id);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `inputProduk` (`kode` VARCHAR(10), `nama` VARCHAR(10), `harga_beli` DOUBLE, `harga_jual` DOUBLE, `stok` INT, `min_stok` INT, `jenis_produk_id` INT)   BEGIN
INSERT INTO produk (kode,nama,harga_beli,harga_jual,stok,min_stok,jenis_produk_id)
VALUES (kode,nama,harga_beli,harga_jual,stok,min_stok,jenis_produk_id);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `showPelanggan` ()   BEGIN
SELECT * FROM pelanggan;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `showProduk` ()   BEGIN
SELECT * FROM produk;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `totalPesanan` (`pelanggan_id` INT)   BEGIN
SELECT total FROM pesanan WHERE id = pelanggan_id;
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Stand-in structure for view `detail_produk_vw`
-- (See below for the actual view)
--
CREATE TABLE `detail_produk_vw` (
`id` int(11)
,`kode` varchar(10)
,`nama` varchar(45)
,`harga_beli` double
,`harga_jual` double
,`stok` int(11)
,`min_stok` int(11)
,`jenis_produk_id` int(11)
,`jenis` varchar(20)
);

-- --------------------------------------------------------

--
-- Table structure for table `jenis_produk`
--

CREATE TABLE `jenis_produk` (
  `id` int(11) NOT NULL,
  `nama` varchar(20) DEFAULT NULL,
  `keterangan` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jenis_produk`
--

INSERT INTO `jenis_produk` (`id`, `nama`, `keterangan`) VALUES
(1, 'ELEktronik', 'Tersedia'),
(2, 'Makanan', 'Tersedia'),
(3, 'Minuman', 'Tersedia'),
(4, 'Funiture', 'Tidak Tersedia');

-- --------------------------------------------------------

--
-- Table structure for table `kartu`
--

CREATE TABLE `kartu` (
  `id` int(11) NOT NULL,
  `kode` varchar(10) DEFAULT NULL,
  `nama` varchar(30) NOT NULL,
  `diskon` double DEFAULT 0,
  `iuran` double DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kartu`
--

INSERT INTO `kartu` (`id`, `kode`, `nama`, `diskon`, `iuran`) VALUES
(1, '01101', 'Gold', 20000, 2000),
(2, '01102', 'Silver', 15000, 1500),
(4, '01103', 'Perak', 10000, 1000),
(6, '009', 'Black Card', 999999, 88888);

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id` int(11) NOT NULL,
  `kode` varchar(10) DEFAULT NULL,
  `nama_pelanggan` varchar(50) DEFAULT NULL,
  `alamat` varchar(40) DEFAULT NULL,
  `jk` char(1) DEFAULT NULL,
  `tmp_lahir` varchar(30) DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `kartu_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`id`, `kode`, `nama_pelanggan`, `alamat`, `jk`, `tmp_lahir`, `tgl_lahir`, `email`, `kartu_id`) VALUES
(2, '01102', 'Agung', 'Bogor', 'L', 'Bogor', '2002-02-02', 'agung@gmail.com', 2),
(3, '01103', 'Adam', 'Depok', 'L', 'Depok', '2003-03-03', 'adam@gmail.com', 3),
(4, '01104', 'Asep', 'Tanggerang', 'L', 'Tanggerang', '2004-04-04', 'asep@gmail.com', 4),
(5, '01105', 'Acong', 'Bekasi', 'L', 'Bekasi', '2005-05-05', 'acong@gmail.com', 5),
(6, '01106', 'Siti', 'Bandung', 'P', 'Bandung', '2006-06-06', 'siti@gmail.com', 6),
(7, '01107', 'Sri', 'Bandung', 'P', 'Bandung', '2006-05-04', 'sri@gmail.com', 7),
(8, '01108', 'Odin', 'Valhalla', 'L', 'Valhalla', '1945-01-01', 'odin@gmail.com', 8),
(9, '01109', 'Thor', 'Valhalla', 'L', 'Valhalla', '1955-01-01', 'thor@gmail.com', 9),
(10, '01110', 'Loki', 'Valhalla', 'L', 'Planet Namek', '1960-01-01', 'loki@gmail.com', 10),
(11, '01111', 'Arip', 'Depok', 'L', 'Depok', '1980-01-01', 'arip@gmail.com', 11),
(12, '01112', 'Ucok', 'Medan', 'L', 'Medan', '1999-01-01', 'ucok@gmail.com', 12),
(13, '001', 'Charles', 'Planet Bekasi', 'L', 'Underground', '1945-08-17', 'Charles@gmail.com', 13);

-- --------------------------------------------------------

--
-- Table structure for table `pembayaran`
--

CREATE TABLE `pembayaran` (
  `id` int(11) NOT NULL,
  `no_kuitansi` varchar(10) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `jumlah` double DEFAULT NULL,
  `ke` int(11) DEFAULT NULL,
  `pesanan_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pembelian`
--

CREATE TABLE `pembelian` (
  `id` int(11) NOT NULL,
  `tanggal` varchar(45) DEFAULT NULL,
  `nomor` varchar(10) DEFAULT NULL,
  `produk_id` int(11) NOT NULL,
  `jumlah` int(11) DEFAULT NULL,
  `harga` double DEFAULT NULL,
  `vendor_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pesanan`
--

CREATE TABLE `pesanan` (
  `id` int(11) NOT NULL,
  `tanggal` date DEFAULT NULL,
  `total` double DEFAULT NULL,
  `pelanggan_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pesanan`
--

INSERT INTO `pesanan` (`id`, `tanggal`, `total`, `pelanggan_id`) VALUES
(1, '2023-03-03', 500000, 1),
(2, '2023-02-02', 300000, 2),
(4, '2023-03-03', 88888888, 4);

-- --------------------------------------------------------

--
-- Table structure for table `pesanan_items`
--

CREATE TABLE `pesanan_items` (
  `id` int(11) NOT NULL,
  `produk_id` int(11) NOT NULL,
  `pesanan_id` int(11) NOT NULL,
  `qty` int(11) DEFAULT NULL,
  `harga` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pesanan_items`
--

INSERT INTO `pesanan_items` (`id`, `produk_id`, `pesanan_id`, `qty`, `harga`) VALUES
(1, 6, 2, 2, 5000000);

--
-- Triggers `pesanan_items`
--
DELIMITER $$
CREATE TRIGGER `keranjang_pesanan_items` BEFORE INSERT ON `pesanan_items` FOR EACH ROW BEGIN
SET @stok = (SELECT stok FROM produk WHERE id = NEW.produk_id);
SET @sisa = @stok - NEW.qty;
IF @sisa < 0 THEN
SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Warning:Stok Tidak Cukup'; 
END IF;
UPDATE produk SET stok = @sisa WHERE id = NEW.produk_id;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `transaksi_update_before` BEFORE UPDATE ON `pesanan_items` FOR EACH ROW BEGIN
IF OLD.id = NEW.produk_id THEN
SET @stok = (SELECT stok FROM produk WHERE id = OLD.produk_id);
SET @sisa = (@stok + OLD.qty) - NEW.qty;
IF @sisa < 0 THEN 
SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Warning: Stok Tidak Cukup';
END IF;
UPDATE produk SET stok = @sisa WHERE id = OLD.produk_id;
ELSE
SET @stok_lama = (SELECT stok FROM produk WHERE id = OLD.produk_id);
SET @sisa_lama = (@stok_lama + OLD.qty);
UPDATE produk SET stok = @sisa_lama WHERE id = OLD.produk_id;
SET @stok_baru = (SELECT stok FROM produk WHERE id = NEW.produk_id);
SET @sisa_baru = @stok_baru - NEW.qty;
IF @sisa_baru < 0 THEN
SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Warning: Stok Tidak Tersedia';
END IF;
UPDATE produk SET stok = @sisa_baru WHERE id = NEW.produk_id;
END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Stand-in structure for view `pesanan_produk_vw`
-- (See below for the actual view)
--
CREATE TABLE `pesanan_produk_vw` (
`id` int(11)
,`kode` varchar(10)
,`nama_pelanggan` varchar(50)
,`alamat` varchar(40)
,`jk` char(1)
,`tmp_lahir` varchar(30)
,`tgl_lahir` date
,`email` varchar(45)
,`kartu_id` int(11)
,`tanggal` date
,`total` double
,`pelanggan_id` int(11)
,`produk_id` int(11)
,`qty` int(11)
,`harga` double
);

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id` int(11) NOT NULL,
  `kode` varchar(10) DEFAULT NULL,
  `nama` varchar(45) DEFAULT NULL,
  `harga_beli` double DEFAULT NULL,
  `harga_jual` double DEFAULT NULL,
  `stok` int(11) DEFAULT NULL,
  `min_stok` int(11) DEFAULT NULL,
  `jenis_produk_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id`, `kode`, `nama`, `harga_beli`, `harga_jual`, `stok`, `min_stok`, `jenis_produk_id`) VALUES
(6, 'M001', 'Monitor', 4000000, 5000000, 8, 1, 1),
(7, 'K001', 'Kulkas', 2000000, 3000000, 10, 1, 1),
(8, 'S001', 'Sosis', 50000, 60000, 99, 10, 2),
(11, 'TV003', 'TV 32 Inch', 2000000, 2500000, 5, 1, 1),
(12, 'TV004', 'TV 43 Inch', 3000000, 3500000, 5, 1, 1),
(13, 'TV005', 'TV 55 Inch', 4000000, 4500000, 5, 1, 1),
(14, 'MJ001', 'Meja Belajar', 500000, 600000, 7, 3, 4),
(15, 'MJ002', 'Meja Komputer', 550000, 650000, 7, 3, 4),
(16, 'MJ003', 'Meja Kantor', 570000, 670000, 6, 3, 4),
(17, 'KS001', 'Kursi Ergonomis', 1000000, 1100000, 5, 2, 4),
(18, 'KS002', 'Kursi Gaming', 700000, 750000, 5, 2, 4),
(19, 'K002', 'Kulkas Dua', 2000000, 2500000, 5, 1, 1),
(20, 'TH0013', 'Teh Kotak', 2000, 3000, 10, 0, 0),
(22, 'TH00', 'Teh Kotak', 2000, 3000, 10, 1, 0),
(25, 'TH13', 'Teh Kotak', 2000, 3000, 10, 1, 0),
(29, 'TH0', 'Teh Kotak', 2000, 3000, 10, 1, 0),
(31, '00', 'Teh Kotak', 2000, 3000, 10, 1, 0),
(34, 'TH015', 'Teh Kotak', 2000, 3000, 10, 1, 111),
(37, 'B001', 'Bakso', 1000, 1500, 99, 1, 2);

-- --------------------------------------------------------

--
-- Stand-in structure for view `tampil_produk`
-- (See below for the actual view)
--
CREATE TABLE `tampil_produk` (
`nama` varchar(45)
);

-- --------------------------------------------------------

--
-- Table structure for table `vendor`
--

CREATE TABLE `vendor` (
  `id` int(11) NOT NULL,
  `nomor` varchar(4) DEFAULT NULL,
  `nama` varchar(40) DEFAULT NULL,
  `kota` varchar(30) DEFAULT NULL,
  `kontak` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure for view `detail_produk_vw`
--
DROP TABLE IF EXISTS `detail_produk_vw`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `detail_produk_vw`  AS SELECT `p`.`id` AS `id`, `p`.`kode` AS `kode`, `p`.`nama` AS `nama`, `p`.`harga_beli` AS `harga_beli`, `p`.`harga_jual` AS `harga_jual`, `p`.`stok` AS `stok`, `p`.`min_stok` AS `min_stok`, `p`.`jenis_produk_id` AS `jenis_produk_id`, `j`.`nama` AS `jenis` FROM (`jenis_produk` `j` join `produk` `p` on(`p`.`jenis_produk_id` = `j`.`id`))  ;

-- --------------------------------------------------------

--
-- Structure for view `pesanan_produk_vw`
--
DROP TABLE IF EXISTS `pesanan_produk_vw`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `pesanan_produk_vw`  AS SELECT `pelanggan`.`id` AS `id`, `pelanggan`.`kode` AS `kode`, `pelanggan`.`nama_pelanggan` AS `nama_pelanggan`, `pelanggan`.`alamat` AS `alamat`, `pelanggan`.`jk` AS `jk`, `pelanggan`.`tmp_lahir` AS `tmp_lahir`, `pelanggan`.`tgl_lahir` AS `tgl_lahir`, `pelanggan`.`email` AS `email`, `pelanggan`.`kartu_id` AS `kartu_id`, `pesanan`.`tanggal` AS `tanggal`, `pesanan`.`total` AS `total`, `pesanan`.`pelanggan_id` AS `pelanggan_id`, `pesanan_items`.`produk_id` AS `produk_id`, `pesanan_items`.`qty` AS `qty`, `pesanan_items`.`harga` AS `harga` FROM ((`pesanan` left join `pelanggan` on(`pelanggan`.`id` = `pesanan`.`pelanggan_id`)) left join `pesanan_items` on(`pesanan_items`.`pesanan_id` = `pesanan`.`id`))  ;

-- --------------------------------------------------------

--
-- Structure for view `tampil_produk`
--
DROP TABLE IF EXISTS `tampil_produk`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `tampil_produk`  AS SELECT `produk`.`nama` AS `nama` FROM `produk``produk`  ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `jenis_produk`
--
ALTER TABLE `jenis_produk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kartu`
--
ALTER TABLE `kartu`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kode` (`kode`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kode` (`kode`);

--
-- Indexes for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `no_kuitansi` (`no_kuitansi`);

--
-- Indexes for table `pembelian`
--
ALTER TABLE `pembelian`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pesanan`
--
ALTER TABLE `pesanan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pesanan_items`
--
ALTER TABLE `pesanan_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kode` (`kode`);

--
-- Indexes for table `vendor`
--
ALTER TABLE `vendor`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `jenis_produk`
--
ALTER TABLE `jenis_produk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `kartu`
--
ALTER TABLE `kartu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pembelian`
--
ALTER TABLE `pembelian`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pesanan`
--
ALTER TABLE `pesanan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pesanan_items`
--
ALTER TABLE `pesanan_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `vendor`
--
ALTER TABLE `vendor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
