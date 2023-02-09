-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 09, 2023 at 02:09 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `login_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `id` int(11) NOT NULL,
  `username_or_email` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`id`, `username_or_email`, `password`) VALUES
(1, 'meryamcrawford@gmail.com', '$2y$10$./6d/AGEO5Nqw.EDXFQXlebdVlhSMzzFNUpfmQIg721sXbTeYCwXi'),
(2, 'gojos3137@gmail.com', '$2y$10$MkuiWlxjWznW7eLAsRczRuPeW.PvDHLadqtFQDGBQGAOJj3aSRjEW'),
(3, 'jungkook@hybe.com', '$2y$10$aB6DhmCIWCW55dL3ps2gIenaQiopoCZg0PfxyW8vyerxlj.U4oeDi'),
(4, 'jungkook@hybe.com', '$2y$10$cHLZwYhl9VsvtAYmeGVgHu1HRJFhhfq618DUvRO.snz0urKS6vTdy'),
(5, 'meryamjellid@gmail.com', '$2y$10$8kaei2ToKJCPxB4p5xkLkOdGhOgTSgp.kXxGfs1mUpSoj70Wuvx5W'),
(6, 'meryamjellid5@gmail.com', '$2y$10$P8/X08LPdhvFkxPI5p.FWuMbd63gtHpOQZi1YNYypoSNTHDQf8sCm'),
(7, 'jimin@hybe.com', '$2y$10$rybrWXYBRbPemrxjFTwBbuYSpp00c/lF2SN5vLSIIQ86XmuCujPJ6'),
(8, 'yoongi@home.com', '$2y$10$ZjVXyXnLAFZcP63vGkCDLecwf6qj0.jouLmbfNugUX9yDdraHM6py'),
(9, 'dfe', '$2y$10$i/FmoLplBUqqihWuDMoD3.oUE5I6SNawBcUBgYaQezC63Ls4gUfh6'),
(10, 'jungkook@meryam.com', '$2y$10$v7angvV/4evTGaU39SoNNeDLq8pRmuPCMNhc23JDRgjh7zat8wYFy'),
(11, 'popo@judorange.com', '$2y$10$TlfAfvKlrti/uNYSfwh1guEl5BIvY.68bZeQfE56g0zeN/g6kW9he');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
