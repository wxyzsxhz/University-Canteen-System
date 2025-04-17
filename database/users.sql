-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 12, 2024 at 08:34 PM
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
-- Database: `unicanteen`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `u_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `phone` bigint(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(32) NOT NULL,
  `code` text NOT NULL,
  `profile` blob DEFAULT 'profile.jpg'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`u_id`, `name`, `phone`, `email`, `password`, `code`, `profile`) VALUES
(42, 'hhhh', 9421717392, 'hninshweyiwint2023@gmail.com', '25f9e794323b453885f5181f1b624d0b', 'eee5506e58b2a1bcbb5515a3ed3e06d1', 0x62626f6b6172692e6a7067),
(43, 'BKK', 9421717392, 'yukistay20220@gmail.com', '25d55ad283aa400af464c76d713c07ad', '50b35adcd3d9653fe0cccd8597256f18', 0x70726f66696c652e6a7067),
(47, 'UIT', 12345678, 'hninshweyiwint811@gmail.com', '25f9e794323b453885f5181f1b624d0b', '', 0x62626f6b6172692e6a7067),
(48, 'Hanami', 123456, 'aibarahanami11@gmail.com', '25d55ad283aa400af464c76d713c07ad', '5cac40ba04d7c1e9f85e67fedaf725fa', 0x70726f66696c652e6a7067),
(49, 'Kyi Sin', 123456, 'kyitharmoe2000@gmail.com', '25d55ad283aa400af464c76d713c07ad', '8b3d222598f7894b50b6c93151d828c0', 0x70726f66696c652e6a7067),
(50, 'Hnin', 9421717392, 'hninshweyiwint2020@gmail.com', '25d55ad283aa400af464c76d713c07ad', 'b7a41b6e5e7af3145a81c98790de097c', 0x70726f66696c652e6a7067);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`u_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `u_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
