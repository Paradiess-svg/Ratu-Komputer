-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 15, 2025 at 04:46 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel12_e-commerce_rk`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `kode_admin` varchar(20) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `jk` enum('laki-laki','perempuan') NOT NULL,
  `password` varchar(50) NOT NULL,
  `jabatan` varchar(50) NOT NULL,
  `no_telfon` varchar(50) NOT NULL,
  `status` enum('admin','super_admin','owner') NOT NULL,
  `alamat` varchar(200) NOT NULL,
  `foto` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `kode_admin`, `nama`, `email`, `jk`, `password`, `jabatan`, `no_telfon`, `status`, `alamat`, `foto`) VALUES
(1, 'K001', 'Dean Naufal', 'dnaufal@gmail.com', 'laki-laki', '34209b23f0613fa2ec1cc2b846b38aea', 'Staff', '812-3332-9906', 'admin', 'Jl. Perumahan Bogor Baru No.3 Blok D.V, RT.07/RW.001, Tegallega, Bogor Tengah, Bogor City, West Java 16152', 'K001.png'),
(2, 'K002', 'Beti Putri', 'mrsbest@gmail.com', 'laki-laki', '35be09e5cf5c1f8b9c6d51d37327b597', 'Staff Senior', '821-8640-7595', 'super_admin', 'MVR5+29C, Jl. Sederhana, RT.2/RW.6, Gedong, Kec. Ps. Rebo, Kota Jakarta Timur, Daerah Khusus Ibukota Jakarta 13760', 'K002.png'),
(3, 'RK1', 'Rijaludin', 'ratukomputer@gmail.com', 'laki-laki', '0192023a7bbd73250516f069df18b500', 'CEO', '877-7359-9434', 'owner', 'Jl. Ciwaru Raya No.Rt.04/16, Cipare, Kec. Serang, Kota Serang, Banten 42117', 'RK1.png'),
(4, 'K001', 'Dean Naufal', 'dnaufal@gmail.com', 'laki-laki', '34209b23f0613fa2ec1cc2b846b38aea', 'Staff', '812-3332-9906', 'admin', 'Jl. Perumahan Bogor Baru No.3 Blok D.V, RT.07/RW.001, Tegallega, Bogor Tengah, Bogor City, West Java 16152', 'K001.png'),
(5, 'K002', 'Beti Putri', 'mrsbest@gmail.com', 'laki-laki', '35be09e5cf5c1f8b9c6d51d37327b597', 'Staff Senior', '821-8640-7595', 'super_admin', 'MVR5+29C, Jl. Sederhana, RT.2/RW.6, Gedong, Kec. Ps. Rebo, Kota Jakarta Timur, Daerah Khusus Ibukota Jakarta 13760', 'K002.png'),
(6, 'RK1', 'Rijaludin', 'ratukomputer@gmail.com', 'laki-laki', '0192023a7bbd73250516f069df18b500', 'CEO', '877-7359-9434', 'owner', 'Jl. Ciwaru Raya No.Rt.04/16, Cipare, Kec. Serang, Kota Serang, Banten 42117', 'RK1.png');

-- --------------------------------------------------------

--
-- Table structure for table `cabang`
--

CREATE TABLE `cabang` (
  `id_cabang` int(11) NOT NULL,
  `kode_cabang` varchar(20) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `alamat` varchar(150) NOT NULL,
  `desk` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cabang`
--

INSERT INTO `cabang` (`id_cabang`, `kode_cabang`, `nama`, `alamat`, `desk`) VALUES
(1, 'S01', 'Ratu Komputer Serang', 'Jl. Ciwaru Raya No.Rt.04/16, Cipare, Kec. Serang, Kota Serang, Banten 42117', 'Cabang yang pertama dan pusat'),
(2, 'B01', 'Ratu Komputer Bogor', 'Ruko Villa Indah Pajajaran, Jl. Bangbarung Raya, Bantarjati, Kec. Bogor Utara, Kota Bogor, Jawa Barat 16153', 'Cabang di Bogor');

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `id_gallery` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `foto` varchar(11) NOT NULL,
  `desk` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id_gallery`, `id_produk`, `foto`, `desk`) VALUES
(1, 1, '1.png', 'Foto Depan'),
(2, 1, '2.png', 'Foto samping');

-- --------------------------------------------------------

--
-- Table structure for table `hero`
--

CREATE TABLE `hero` (
  `id_hero` int(11) NOT NULL,
  `kode_hero` varchar(20) NOT NULL,
  `judul` varchar(50) NOT NULL,
  `foto` varchar(50) NOT NULL,
  `desk` varchar(100) NOT NULL,
  `link` varchar(100) NOT NULL,
  `status` enum('aktif','nonaktif','laris','promo') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hero`
--

INSERT INTO `hero` (`id_hero`, `kode_hero`, `judul`, `foto`, `desk`, `link`, `status`) VALUES
(1, 'ANV01', 'Ulang Tahun Ratu', 'Aniv01.png', 'Selamat hari jadi ratu komputer', '#', 'aktif'),
(2, 'GWY01', 'Giveaway Tahun Baru', 'GWY01.png', 'Perayaan Tahun Baru dengan Giveaway komputer', '#', 'nonaktif'),
(3, 'BTS01', 'Promo Back To School', 'BTS01.png', 'Back To School', '/kategori/laptop/BRG090.blade.php', 'promo'),
(4, 'ANV01', 'Ulang Tahun Ratu', 'Aniv01.png', 'Selamat hari jadi ratu komputer', '#', 'aktif'),
(5, 'GWY02', 'Giveaway Tahun Baru', 'GWY01.png', 'Perayaan Tahun Baru dengan Giveaway komputer', '#', 'nonaktif'),
(6, 'BTS02', 'Promo Back To School lain', 'BTS02.png', 'Back To School 2', '/kategori/laptop/BRG091.blade.php', 'promo');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `icon` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama`, `icon`) VALUES
(1, 'Prosessor', '1.png'),
(2, 'Motherboard', '2.png'),
(3, 'RAM', '3.png'),
(4, 'Casing', '4.png'),
(5, 'SSD', '5.png'),
(6, 'HDD', '6.png'),
(7, 'VGA', '7.png'),
(8, 'PSU', '8.png'),
(9, 'Mouse', '9.png'),
(10, 'Keyboard', '10.png'),
(11, 'Monitor', '11.png'),
(12, 'Cooler Fan', '12.png');

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id_produk` int(11) NOT NULL,
  `kode_produk` varchar(20) NOT NULL,
  `id_cabang` int(11) NOT NULL,
  `nama` varchar(80) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `desk` varchar(150) NOT NULL,
  `harga` int(11) NOT NULL,
  `stok` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id_produk`, `kode_produk`, `id_cabang`, `nama`, `id_kategori`, `desk`, `harga`, `stok`) VALUES
(1, 'BRG002', 1, 'VXE R1 SE+', 9, 'Mouse tri-mode PAW 3395SE', 250000, 5),
(2, 'BRG003', 1, 'Ajazz AK820 MAX HE', 10, 'Keyboard Gaming Hall Effect', 500000, 4),
(3, 'BRG004', 1, 'Sandisk DDR4 8 GB', 3, 'SSD NVMe', 400000, 8),
(4, 'BRG005', 2, 'Kingston NVMe 512 GB', 5, 'SSD NVMe', 1000000, 8),
(5, 'BRG002', 1, 'VXE R1 SE+', 9, 'Mouse tri-mode PAW 3395SE', 250000, 5),
(6, 'BRG003', 1, 'Ajazz AK820 MAX HE', 10, 'Keyboard Gaming Hall Effect', 500000, 4),
(7, 'BRG004', 1, 'Sandisk DDR4 8 GB', 3, 'SSD NVMe', 400000, 8),
(8, 'BRG005', 2, 'Kingston NVMe 512 GB', 5, 'SSD NVMe', 1000000, 8);

-- --------------------------------------------------------

--
-- Table structure for table `rakit_pc`
--

CREATE TABLE `rakit_pc` (
  `id_rakitan` int(11) NOT NULL,
  `kode_rakitan` varchar(20) DEFAULT NULL,
  `prosessor` varchar(50) DEFAULT NULL,
  `motherboard` varchar(50) DEFAULT NULL,
  `ram` varchar(50) DEFAULT NULL,
  `casing` varchar(50) DEFAULT NULL,
  `ssd` varchar(50) DEFAULT NULL,
  `hdd` varchar(50) DEFAULT NULL,
  `vga` varchar(50) DEFAULT NULL,
  `psu` varchar(50) DEFAULT NULL,
  `mouse` varchar(50) DEFAULT NULL,
  `keyboard` varchar(50) DEFAULT NULL,
  `monitor` varchar(50) DEFAULT NULL,
  `coolerfan` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `cabang`
--
ALTER TABLE `cabang`
  ADD PRIMARY KEY (`id_cabang`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id_gallery`),
  ADD KEY `id_produk` (`id_produk`);

--
-- Indexes for table `hero`
--
ALTER TABLE `hero`
  ADD PRIMARY KEY (`id_hero`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`),
  ADD KEY `id_cabang` (`id_cabang`),
  ADD KEY `id_kategori` (`id_kategori`);

--
-- Indexes for table `rakit_pc`
--
ALTER TABLE `rakit_pc`
  ADD PRIMARY KEY (`id_rakitan`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `cabang`
--
ALTER TABLE `cabang`
  MODIFY `id_cabang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id_gallery` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `hero`
--
ALTER TABLE `hero`
  MODIFY `id_hero` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `rakit_pc`
--
ALTER TABLE `rakit_pc`
  MODIFY `id_rakitan` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `gallery`
--
ALTER TABLE `gallery`
  ADD CONSTRAINT `gallery_ibfk_1` FOREIGN KEY (`id_produk`) REFERENCES `produk` (`id_produk`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `produk`
--
ALTER TABLE `produk`
  ADD CONSTRAINT `produk_ibfk_1` FOREIGN KEY (`id_kategori`) REFERENCES `kategori` (`id_kategori`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `produk_ibfk_2` FOREIGN KEY (`id_cabang`) REFERENCES `cabang` (`id_cabang`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
