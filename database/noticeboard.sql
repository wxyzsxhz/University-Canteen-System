-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 05, 2024 at 04:52 PM
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
-- Table structure for table `noticeboard`
--

CREATE TABLE `noticeboard` (
  `noticeid` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `content` varchar(255) NOT NULL,
  `startID` datetime NOT NULL,
  `endID` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `noticeboard`
--

INSERT INTO `noticeboard` (`noticeid`, `title`, `content`, `startID`, `endID`) VALUES
(19, 'chicken', 'kjds', '2024-09-01 19:19:00', '2024-09-01 19:21:00'),
(20, 'kn,kin', 'mn', '2024-09-01 19:22:00', '2024-09-01 19:25:00'),
(21, 'kn,kin', 'mn', '2024-09-01 19:30:00', '2024-09-01 19:32:00'),
(22, 'pork', 'kadklms', '2024-09-01 19:26:00', '2024-09-01 19:30:00'),
(23, 'n,hiuln', 'kadklms', '2024-09-01 19:28:00', '2024-09-01 19:30:00'),
(24, 'n,hiuln', 'kadklms', '2024-09-01 19:37:00', '2024-09-01 19:39:00'),
(25, 'n,hiuln', 'kadklms', '2024-09-01 19:39:00', '2024-09-01 19:41:00'),
(26, 'n,hiuln', 'kadklms', '2024-09-01 19:44:00', '2024-09-01 19:47:00'),
(27, 'chicken', 'ndk', '2024-09-02 23:15:00', '0000-00-00 00:00:00'),
(28, 'chicken', 'ndk', '2024-09-02 23:19:00', '0000-00-00 00:00:00'),
(29, 'chicken', 'ndk', '2024-09-02 23:15:00', '2024-09-02 23:19:00'),
(30, 'chicken', 'ndk', '2024-09-02 23:15:00', '2024-09-02 23:19:00'),
(31, 'chicken', 'cdndm', '2024-09-02 23:47:00', '2024-09-02 23:50:00'),
(32, 'chicken', 'cdndm', '2024-09-02 23:47:00', '2024-09-02 23:50:00'),
(33, 'chicken', 'cdndm', '2024-09-02 17:17:00', '2024-09-02 17:20:00'),
(35, 'chicken', 'gdsdrrf', '2024-09-02 17:28:00', '2024-09-02 16:32:00'),
(36, 'chicken', 'dss', '2024-09-02 17:28:00', '2024-09-02 16:32:00'),
(37, 'chicken', 'lnlk;m', '2024-09-02 17:38:00', '2024-09-02 17:42:00'),
(38, 'chicken', 'lnlk;m', '2024-09-02 17:38:00', '2024-09-02 17:42:00'),
(39, 'chicken', 'mb.lm', '2024-09-02 17:45:00', '2024-09-02 17:50:00'),
(40, 'chicken', 'mb.lm', '2024-09-02 17:45:00', '2024-09-02 17:50:00'),
(41, 'pork', 'bmvn ', '2024-09-02 17:49:00', '2024-09-02 17:53:00'),
(42, 'pork', 'bmvn ', '2024-09-02 17:49:00', '2024-09-02 17:53:00'),
(43, 'pork', 'md,n', '2024-09-02 18:08:00', '2024-09-02 18:10:00'),
(44, 'mala', 'nbn,', '2024-09-02 18:15:00', '2024-09-02 18:17:00'),
(45, 'Welcome', 'we are blah blahjncsssdfhu fh duiheuiwhfuihfuiehfuiheihfuiebhfiuefhi', '2024-09-02 18:23:00', '2024-09-02 18:24:00'),
(46, 'Welcome', 'we are blah blahjncsssdfhu fh duiheuiwhfuihfuiehfuiheihfuiebhfiuefhi', '2024-09-02 18:25:00', '2024-09-02 17:31:00'),
(47, 'Welcome', 'we are blah blahjncsssdfhu fh duiheuiwhfuihfuiehfuiheihfuiebhfiuefhi', '2024-09-02 18:25:00', '2024-09-02 17:31:00'),
(48, 'Welcome', 'we are blah blahjncsssdfhu fh duiheuiwhfuihfuiehfuiheihfuiebhfiuefhi', '2024-09-02 18:25:00', '2024-09-02 18:29:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `noticeboard`
--
ALTER TABLE `noticeboard`
  ADD PRIMARY KEY (`noticeid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `noticeboard`
--
ALTER TABLE `noticeboard`
  MODIFY `noticeid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
