-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 02, 2025 at 04:40 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `terminal_bus`
--

-- --------------------------------------------------------

--
-- Table structure for table `bus_activity`
--

CREATE TABLE `bus_activity` (
  `id_activity` int(11) NOT NULL,
  `kode_bus` varchar(20) DEFAULT NULL,
  `nama_sopir` varchar(50) DEFAULT NULL,
  `terakhir_dilihat` varchar(50) DEFAULT NULL,
  `warna_bus` varchar(20) DEFAULT NULL,
  `aktivitas_bus` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bus_activity`
--

INSERT INTO `bus_activity` (`id_activity`, `kode_bus`, `nama_sopir`, `terakhir_dilihat`, `warna_bus`, `aktivitas_bus`) VALUES
(1, 'HAS_29', 'Roni', 'Bandung', 'Hitam', 'Berangkat'),
(4, 'JAN_17', 'Budi Prakoso', 'Cikarang', 'Putih', 'On The Way'),
(5, 'YAN_22', 'Heri', 'Cibubur', 'Kuning', 'On The Way'),
(6, 'JAN_17', 'Budi Prakoso', 'Cikarang', 'Putih', 'On The Way'),
(7, 'AII_07', 'Ari', 'Bandung', 'Hitam', 'Berangkat'),
(8, 'AS_30', 'Roni', 'Bogor', 'Merah', 'Sampai'),
(9, 'AS_05', 'Budi Prakoso', 'Cibitung', 'Hitam', 'On The Way'),
(10, 'IL_04', 'Heri', 'Bogor', 'Merah', 'Sampai'),
(11, 'GAL_11', 'Budi Prakoso', 'Bandung', 'Kuning', 'Berangkat'),
(12, 'TWI_98', 'Roni', 'Cikarang', 'Putih', 'On The Way');

-- --------------------------------------------------------

--
-- Table structure for table `bus_travel`
--

CREATE TABLE `bus_travel` (
  `nama_bus` varchar(50) DEFAULT NULL,
  `tujuan` varchar(100) DEFAULT NULL,
  `jadwal` varchar(20) DEFAULT NULL,
  `harga` int(11) DEFAULT NULL,
  `nama_sopir` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bus_travel`
--

INSERT INTO `bus_travel` (`nama_bus`, `tujuan`, `jadwal`, `harga`, `nama_sopir`) VALUES
('Goodwill', 'Semarang-Lasem', '13.00-16.00', 49000, 'Roni'),
('CBI', 'Lebak Bulus-Cileunyi', '14.00-17.00', 45000, 'Ari'),
('Primajasa', 'Bandung-Merak', '10.30-14.00', 85000, 'Heri'),
('MGI', 'Tasik-Bogor', '10.30-14.00', 158000, 'Budi Prakoso'),
('Lorena', 'Jakarta-Bogor', '09.00-11.00', 60000, 'Roni'),
('Harapan Jaya', 'Jakarta-Solo', '07.00-14.00', 180000, 'Ari'),
('Pahala Kencana', 'Bandung-Surabaya', '06.00-18.00', 350000, 'Heri'),
('Medali Mas', 'Malang-Jakarta', '08.00-22.00', 300000, 'Budi Prakoso'),
('Handoyo', 'Jogja-Jakarta', '05.00-15.00', 250000, 'Roni'),
('Sinar Jaya', 'Cirebon-Jakarta', '12.00-15.00', 70000, 'Ari');

-- --------------------------------------------------------

--
-- Table structure for table `tabel_keberangkatan`
--

CREATE TABLE `tabel_keberangkatan` (
  `id_keberangkatan` int(11) NOT NULL,
  `nama_depan` varchar(50) DEFAULT NULL,
  `nama_belakang` varchar(50) DEFAULT NULL,
  `stasiun_keberangkatan` varchar(50) DEFAULT NULL,
  `kedatangan` varchar(50) DEFAULT NULL,
  `boarding` time DEFAULT NULL,
  `sampai` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tabel_keberangkatan`
--

INSERT INTO `tabel_keberangkatan` (`id_keberangkatan`, `nama_depan`, `nama_belakang`, `stasiun_keberangkatan`, `kedatangan`, `boarding`, `sampai`) VALUES
(1, 'Maria', 'Rizma', 'Bandung', 'Jakarta', '18:30:00', '21:20:00'),
(2, 'Defanty', 'Veninda', 'Cimahi', 'Jakarta', '18:30:00', '21:20:00'),
(3, 'Giantinisa', 'Salma', 'Bandung', 'Jakarta', '18:30:00', '21:20:00'),
(4, 'Yunita', 'Priatna', 'Purwakarta', 'Jakarta', '18:30:00', '21:20:00'),
(5, 'Hanifa', 'Supartiwi', 'Bekasi', 'Jakarta', '18:30:00', '21:20:00'),
(6, 'Sri', 'Ayu', 'Bandung', 'Jakarta', '18:30:00', '21:20:00'),
(7, 'Galuh', 'Suparman', 'Cimahi', 'Jakarta', '18:30:00', '21:20:00'),
(8, 'Rizki', 'Fadillah', 'Cianjur', 'Jakarta', '18:30:00', '21:20:00'),
(9, 'Nabilla', 'Rahmawati', 'Karawang', 'Jakarta', '18:30:00', '21:20:00'),
(10, 'Wahyu', 'Firmansyah', 'Subang', 'Jakarta', '18:30:00', '21:20:00');

-- --------------------------------------------------------

--
-- Table structure for table `tabel_penumpang`
--

CREATE TABLE `tabel_penumpang` (
  `no` int(11) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `jenis_kelamin` char(1) DEFAULT NULL,
  `usia` int(11) DEFAULT NULL,
  `riwayat_penyakit` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tabel_penumpang`
--

INSERT INTO `tabel_penumpang` (`no`, `nama`, `jenis_kelamin`, `usia`, `riwayat_penyakit`) VALUES
(1, 'Albila Khairunnisa', 'P', 23, 'Alergi Debu'),
(2, 'Triwijaya Galuh', 'L', 56, 'Tidak ada'),
(3, 'Sri Rahma Ayu', 'P', 12, 'Tidak ada'),
(4, 'Mahesa Narendra', 'L', 34, 'Asma (Sesak Napas)'),
(5, 'Naura Nadhifa', 'P', 21, 'Vertigo'),
(6, 'Rafli Darmawan', 'L', 29, 'Tidak ada'),
(7, 'Siti Aminah', 'P', 44, 'Hipertensi'),
(8, 'Dimas Pratama', 'L', 18, 'Tidak ada'),
(9, 'Wulan Sari', 'P', 33, 'Migrain'),
(10, 'Fajar Hidayat', 'L', 40, 'Diabetes');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bus_activity`
--
ALTER TABLE `bus_activity`
  ADD PRIMARY KEY (`id_activity`);

--
-- Indexes for table `tabel_keberangkatan`
--
ALTER TABLE `tabel_keberangkatan`
  ADD PRIMARY KEY (`id_keberangkatan`);

--
-- Indexes for table `tabel_penumpang`
--
ALTER TABLE `tabel_penumpang`
  ADD PRIMARY KEY (`no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bus_activity`
--
ALTER TABLE `bus_activity`
  MODIFY `id_activity` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tabel_keberangkatan`
--
ALTER TABLE `tabel_keberangkatan`
  MODIFY `id_keberangkatan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tabel_penumpang`
--
ALTER TABLE `tabel_penumpang`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
