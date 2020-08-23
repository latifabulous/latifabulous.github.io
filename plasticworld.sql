-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 04, 2020 at 03:24 AM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `plasticworld`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `nama_admin` varchar(128) NOT NULL,
  `username_admin` varchar(128) NOT NULL,
  `email_admin` varchar(128) NOT NULL,
  `password_admin` varchar(128) NOT NULL,
  `is_active_admin` int(1) NOT NULL,
  `id_role` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `nama_admin`, `username_admin`, `email_admin`, `password_admin`, `is_active_admin`, `id_role`) VALUES
(1, 'admin', 'admin', 'admin@gmail.com', '21232f297a57a5a743894a0e4a801fc3', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `id_event` int(11) NOT NULL,
  `nama_event` varchar(128) NOT NULL,
  `gambar_event` varchar(128) NOT NULL,
  `tanggal_event` varchar(128) NOT NULL,
  `waktu_event` varchar(128) NOT NULL,
  `desc_event` text NOT NULL,
  `id_komunitas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `komunitas`
--

CREATE TABLE `komunitas` (
  `id_komunitas` int(11) NOT NULL,
  `nama_komunitas` varchar(128) NOT NULL,
  `username_komunitas` varchar(128) NOT NULL,
  `email_komunitas` varchar(128) NOT NULL,
  `gambar_komunitas` varchar(128) NOT NULL,
  `alamat_komunitas` varchar(256) NOT NULL,
  `pj_komunitas` varchar(128) NOT NULL,
  `desc_komunitas` text NOT NULL,
  `nohp_komunitas` varchar(12) NOT NULL,
  `password_komunitas` varchar(256) NOT NULL,
  `is_active_komunitas` int(1) NOT NULL,
  `date_created_komunitas` varchar(128) NOT NULL,
  `id_role` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `komunitas`
--

INSERT INTO `komunitas` (`id_komunitas`, `nama_komunitas`, `username_komunitas`, `email_komunitas`, `gambar_komunitas`, `alamat_komunitas`, `pj_komunitas`, `desc_komunitas`, `nohp_komunitas`, `password_komunitas`, `is_active_komunitas`, `date_created_komunitas`, `id_role`) VALUES
(1, 'Exo-l Peduli', 'exol.peduli', 'exo.peduli@gmail.com', 'default.jpg', '', 'Nur Izza Latifah', 'Komunitas ini berfokus pada kebersihan lingkungan.', '087704620821', '180bf89b5c0df35557ee2c19a96a4188', 1, '0', 3),
(2, 'Exo-l Peduli', 'exol.peduli', 'exo.peduli@gmail.com', 'default.jpg', '', 'Nur Izza Latifah', 'Komunitas ini berfokus pada kebersihan lingkungan.', '087704620821', '180bf89b5c0df35557ee2c19a96a4188', 1, '2', 3);

-- --------------------------------------------------------

--
-- Table structure for table `masyarakat`
--

CREATE TABLE `masyarakat` (
  `id_masyarakat` int(11) NOT NULL,
  `nama_masyarakat` varchar(128) NOT NULL,
  `username_masyarakat` varchar(128) NOT NULL,
  `email_masyarakat` varchar(128) NOT NULL,
  `gambar_masyarakat` varchar(128) NOT NULL,
  `alamat_masyarakat` varchar(256) NOT NULL,
  `nohp_masyarakat` varchar(12) NOT NULL,
  `password_masyarakat` varchar(256) NOT NULL,
  `is_active_masyarakat` int(1) NOT NULL,
  `date_created_masyarakat` int(1) NOT NULL,
  `id_role` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `masyarakat`
--

INSERT INTO `masyarakat` (`id_masyarakat`, `nama_masyarakat`, `username_masyarakat`, `email_masyarakat`, `gambar_masyarakat`, `alamat_masyarakat`, `nohp_masyarakat`, `password_masyarakat`, `is_active_masyarakat`, `date_created_masyarakat`, `id_role`) VALUES
(2, 'Desyra Ardiani', 'desyra', 'desyra@gmail.com', 'default.jpg', '', '087704620821', '594f803b380a41396ed63dca39503542', 1, 1591203542, 2),
(3, 'Tami Oktavia Ariani', 'tamioktaviaa', 'tam@gmail.com', 'default.jpg', '', '087704620821', '437599f1ea3514f8969f161a6606ce18', 1, 1591203830, 2);

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id_role` int(11) NOT NULL,
  `nama_role` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id_role`, `nama_role`) VALUES
(1, 'admin'),
(2, 'masyarakat'),
(3, 'komunitas'),
(4, 'umkm');

-- --------------------------------------------------------

--
-- Table structure for table `umkm`
--

CREATE TABLE `umkm` (
  `id_umkm` int(11) NOT NULL,
  `nama_umkm` varchar(128) NOT NULL,
  `username_umkm` varchar(128) NOT NULL,
  `email_umkm` varchar(128) NOT NULL,
  `gambar_umkm` varchar(128) NOT NULL,
  `alamat_umkm` varchar(256) NOT NULL,
  `pj_umkm` varchar(128) NOT NULL,
  `desc_umkm` text NOT NULL,
  `nohp_umkm` varchar(12) NOT NULL,
  `password_umkm` varchar(256) NOT NULL,
  `is_active_umkm` int(1) NOT NULL,
  `date_created_umkm` int(1) NOT NULL,
  `id_role` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `umkm`
--

INSERT INTO `umkm` (`id_umkm`, `nama_umkm`, `username_umkm`, `email_umkm`, `gambar_umkm`, `alamat_umkm`, `pj_umkm`, `desc_umkm`, `nohp_umkm`, `password_umkm`, `is_active_umkm`, `date_created_umkm`, `id_role`) VALUES
(1, 'Tastura', 'tastura', 'tastura@gmail.com', 'default.jpg', '', 'Tazkiya Aulia Rachman', 'UMKM pemerhati lingkungan.', '087704620821', '8d3d08eaea0e6d0ab34b2e89b00939cd', 1, 1, 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`id_event`);

--
-- Indexes for table `komunitas`
--
ALTER TABLE `komunitas`
  ADD PRIMARY KEY (`id_komunitas`);

--
-- Indexes for table `masyarakat`
--
ALTER TABLE `masyarakat`
  ADD PRIMARY KEY (`id_masyarakat`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id_role`);

--
-- Indexes for table `umkm`
--
ALTER TABLE `umkm`
  ADD PRIMARY KEY (`id_umkm`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `id_event` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `komunitas`
--
ALTER TABLE `komunitas`
  MODIFY `id_komunitas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `masyarakat`
--
ALTER TABLE `masyarakat`
  MODIFY `id_masyarakat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id_role` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `umkm`
--
ALTER TABLE `umkm`
  MODIFY `id_umkm` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
