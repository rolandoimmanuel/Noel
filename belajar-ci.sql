-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 30, 2020 at 02:15 PM
-- Server version: 5.7.24
-- PHP Version: 7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `belajar-ci`
--

-- --------------------------------------------------------

--
-- Table structure for table `halaman`
--

CREATE TABLE `halaman` (
  `idhalaman` int(50) NOT NULL,
  `judulhalaman` varchar(50) DEFAULT NULL,
  `author` varchar(50) DEFAULT NULL,
  `isihalaman` varchar(50) DEFAULT NULL,
  `tglposting` int(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `halaman`
--

INSERT INTO `halaman` (`idhalaman`, `judulhalaman`, `author`, `isihalaman`, `tglposting`) VALUES
(2, 'Tes Judul', 'Tes Author', 'Ini isi halaman', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `master_berita`
--

CREATE TABLE `master_berita` (
  `idberita` int(11) NOT NULL,
  `judulberita` varchar(100) DEFAULT NULL,
  `author` varchar(70) DEFAULT NULL,
  `tglposting` int(11) DEFAULT NULL,
  `foto` varchar(70) DEFAULT NULL,
  `isiberita` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `master_berita`
--

INSERT INTO `master_berita` (`idberita`, `judulberita`, `author`, `tglposting`, `foto`, `isiberita`) VALUES
(1, 'Microsoft Vs Apple', 'MJ', NULL, 'Untitled-1.png', 'microsoft dan apple merupakan dua raksasa yang sudah merajai teknologi di abad 21');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL COMMENT 'Primary Key',
  `name` varchar(100) NOT NULL COMMENT 'Name',
  `email` varchar(255) NOT NULL COMMENT 'Email Address',
  `contact_no` varchar(50) NOT NULL COMMENT 'Contact No',
  `password` varchar(100) NOT NULL,
  `created_at` varchar(20) NOT NULL COMMENT 'Created date'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='datatable demo table';

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `contact_no`, `password`, `created_at`) VALUES
(1, 'Team', 'info@test.com', '9000000001', '', '2019-01-01'),
(2, 'Admin', 'admin@test.com', '9000000002', '', '2019-01-02'),
(3, 'User', 'user@test.com', '9000000003', '', '2019-01-03'),
(4, 'Editor', 'editor@test.com', '9000000004', '', '2019-01-04'),
(5, 'Writer', 'writer@test.com', '9000000005', '', '2019-01-05'),
(6, 'Contact', 'contact@test.com', '9000000006', '', '2019-01-06'),
(7, 'Manager', 'manager@test.com', '9000000007', '', '2019-01-07'),
(8, 'John', 'john@test.com', '9000000055', '', '2019-01-08'),
(9, 'Merry', 'merry@test.com', '9000000088', '', '2019-01-09'),
(10, 'Keliv', 'kelvin@test.com', '9000550088', '', '2019-01-10'),
(11, 'Herry', 'herry@test.com', '9050550088', '', '2019-01-11'),
(12, 'Mark', 'mark@test.com', '9050550998', '', '2019-01-12'),
(14, 'MJ', 'juliansyah65@yahoo.com', '', '', ''),
(16, 'juliansyah', 'juliansyah@gmail.com', '', '$2y$10$kAhDY8gIRPx9j.flXDRVE.3pPIxrrHYoT8wRFHaEtLr9r5478M8w.', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `halaman`
--
ALTER TABLE `halaman`
  ADD PRIMARY KEY (`idhalaman`);

--
-- Indexes for table `master_berita`
--
ALTER TABLE `master_berita`
  ADD PRIMARY KEY (`idberita`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `halaman`
--
ALTER TABLE `halaman`
  MODIFY `idhalaman` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `master_berita`
--
ALTER TABLE `master_berita`
  MODIFY `idberita` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key', AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
