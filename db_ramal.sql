-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 24, 2017 at 09:36 AM
-- Server version: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db_ramal`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb penjualan_manual`
--

CREATE TABLE IF NOT EXISTS `tb penjualan_manual` (
  `id_penjualan` char(9) NOT NULL,
  `id_barang` int(5) NOT NULL,
  `tanggal` varchar(5) NOT NULL,
  `keluar` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_barang`
--

CREATE TABLE IF NOT EXISTS `tb_barang` (
  `id_barang` char(5) NOT NULL,
  `nama_barang` varchar(20) NOT NULL,
  PRIMARY KEY (`id_barang`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_barang`
--

INSERT INTO `tb_barang` (`id_barang`, `nama_barang`) VALUES
('B0001', 'ObatNyamuk'),
('B0002', 'MIE Sedap Goreng');

-- --------------------------------------------------------

--
-- Table structure for table `tb_penjualan`
--

CREATE TABLE IF NOT EXISTS `tb_penjualan` (
  `id_penjualan` char(9) NOT NULL,
  `id_barang` char(5) NOT NULL,
  `tanggal` date NOT NULL,
  `masuk` int(3) NOT NULL,
  `keluar` int(3) NOT NULL,
  `sisa` int(3) NOT NULL,
  `keterangan` varchar(36) NOT NULL,
  PRIMARY KEY (`id_penjualan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_peramalan`
--

CREATE TABLE IF NOT EXISTS `tb_peramalan` (
  `id_peramalan` char(9) NOT NULL,
  `id_barang` char(9) NOT NULL,
  `tanggal` date NOT NULL,
  `bulan_peralaman` int(2) NOT NULL,
  `hasil_peramalan` int(5) NOT NULL,
  `alpha` int(2) NOT NULL,
  `hasil_kesalahan` int(5) NOT NULL,
  PRIMARY KEY (`id_peramalan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
