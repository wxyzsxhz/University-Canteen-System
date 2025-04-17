-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 12, 2024 at 04:12 PM
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
-- Database: `uit`
--

-- --------------------------------------------------------

--
-- Table structure for table `users_orders`
--

CREATE TABLE `users_orders` (
  `o_id` int(222) NOT NULL,
  `u_id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `quantity` int(222) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `status` varchar(222) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `orderNum` varchar(30) NOT NULL,
  `rs_id` varchar(50) NOT NULL,
  `deliOption` varchar(250) NOT NULL,
  `special_instruction` varchar(255) NOT NULL,
  `DeliTime` varchar(50) NOT NULL,
  `payment` varchar(10) NOT NULL,
  `d_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users_orders`
--

INSERT INTO `users_orders` (`o_id`, `u_id`, `title`, `quantity`, `price`, `status`, `date`, `orderNum`, `rs_id`, `deliOption`, `special_instruction`, `DeliTime`, `payment`, `d_id`) VALUES
(76, 7, 'Lemon Grilled Chicken And Pasta', 1, 11.00, 'Pending', '2024-09-12 09:45:23', 'ORDER_1724083896', '2', 'Pick Up', '', '2024-08-19 16:11:30', 'cash', 0),
(92, 7, 'I changed this one', 1, 1000.00, 'Pending', '2024-09-12 09:45:23', 'ORDER_1724168889', '2', 'Pick Up', '', '2024-08-20 15:48:02', 'KBZ', 0),
(93, 7, 'TESTER', 17, 500.00, 'Pending', '2024-09-12 09:45:23', 'ORDER_1724248362', '3', 'Pick Up', '', '2024-08-21 13:52:02', 'AYA', 0),
(94, 7, 'I changed this one', 1, 1000.00, 'Pending', '2024-09-12 09:45:23', 'ORDER_1724248884', '2', 'Pick Up', '', '2024-08-21 14:01:20', 'WAVE', 0),
(95, 7, 'Stuffed Jacket Potatoes', 1, 8.00, 'Pending', '2024-09-12 09:45:23', 'ORDER_1724249275', '1', 'Pick Up', '', '2024-08-21 14:06:47', '', 0),
(96, 7, 'I changed this one', 1, 1000.00, 'Pending', '2024-09-12 09:45:23', 'ORDER_1724249548', '2', 'Pick Up', '', '2024-08-21 14:12:23', '', 0),
(97, 7, 'Mac N Cheese Bites', 1, 9.00, 'Pending', '2024-09-12 09:45:23', 'ORDER_1724249646', '4', 'Building 1, Floor 4, Room 1', '', '2024-08-21 14:43:49', '', 0),
(98, 7, 'Signature Potato Twisters', 1, 6.00, 'Pending', '2024-09-12 09:45:23', 'ORDER_1724249646', '4', 'Building 1, Floor 4, Room 1', '', '2024-08-21 14:43:49', '', 0),
(99, 7, 'Mac N Cheese Bites', 1, 9.00, 'Pending', '2024-09-12 09:45:23', 'ORDER_1724249823', '4', 'Pick Up', '', '2024-08-21 14:16:44', '', 0),
(102, 7, 'TESTER', 1, 500.00, 'Pending', '2024-09-12 09:45:23', 'ORDER_1724335562', '2', 'Pick Up', '', '2024-08-22 14:05:56', '', 0),
(103, 7, 'TESTER', 23, 500.00, 'Pending', '2024-09-12 09:45:23', 'ORDER_1724508044', '3', 'Pick Up', '', '2024-08-24 14:30:38', '', 0),
(104, 7, ' Buffalo Wings', 1, 11.00, 'Pending', '2024-09-12 09:45:23', 'ORDER_1724508966', '4', 'Pick Up', '', '2024-08-24 14:45:41', '', 0),
(105, 7, 'TESTER', 1, 500.00, 'Pending', '2024-09-12 09:45:23', 'ORDER_1724509571', '3', 'Pick Up', '', '2024-08-24 14:56:04', '', 0),
(106, 7, 'TESTER', 78, 500.00, 'Pending', '2024-09-12 09:45:23', 'ORDER_1724509979', '3', 'Pick Up', '', '2024-08-24 15:02:53', '', 0),
(107, 7, ' Buffalo Wings', 1, 11.00, 'Pending', '2024-09-12 09:45:23', 'ORDER_1724857245', '4', 'Building 1, Floor 1, Room 1', '', '2024-08-28 15:00:17', '', 0),
(108, 7, 'Mac N Cheese Bites', 3, 9.00, 'Pending', '2024-09-12 09:45:23', 'ORDER_1724857300', '4', 'Pick Up', '', '2024-08-28 15:01:36', '', 0),
(109, 7, ' Buffalo Wings', 1, 11.00, 'Pending', '2024-09-12 09:45:23', 'ORDER_1724859811', '4', 'Pick Up', '', '2024-08-28 15:43:24', '', 0),
(110, 7, 'Mac N Cheese Bites', 15, 9.00, 'Pending', '2024-09-12 09:45:23', 'ORDER_1724859811', '4', 'Pick Up', '', '2024-08-28 15:43:24', '', 0),
(111, 7, ' Buffalo Wings', 1, 11.00, 'Pending', '2024-09-12 09:45:23', 'ORDER_1724859811', '4', 'Pick Up', '', '2024-08-28 15:43:24', '', 0),
(112, 7, ' Buffalo Wings', 2, 11.00, 'Pending', '2024-09-12 09:45:23', 'ORDER_1724940929', '4', 'Pick Up', '', '2024-08-29 14:45:22', '', 0),
(113, 7, 'Mac N Cheese Bites', 2, 9.00, 'Pending', '2024-09-12 09:45:23', 'ORDER_1724940929', '4', 'Pick Up', '', '2024-08-29 14:45:22', '', 0),
(114, 8, ' Buffalo Wings', 1, 11.00, 'Pending', '2024-09-12 09:45:23', 'ORDER_1724944544', '4', 'Pick Up', '', '2024-08-29 15:15:40', '', 0),
(115, 8, ' Buffalo Wings', 1, 11.00, 'Pending', '2024-09-12 09:45:23', 'ORDER_1724944744', '4', 'Pick Up', '', '2024-08-29 15:18:55', '', 0),
(116, 8, 'Mac N Cheese Bites', 1, 9.00, 'Pending', '2024-09-12 09:45:23', 'ORDER_1724944744', '4', 'Pick Up', '', '2024-08-29 15:18:55', '', 0),
(117, 8, 'Mac N Cheese Bites', 1, 9.00, 'Pending', '2024-09-12 09:45:23', 'ORDER_1724944744', '4', 'Pick Up', '', '2024-08-29 15:18:55', '', 0),
(118, 8, ' Buffalo Wings', 4, 11.00, 'Pending', '2024-09-12 09:45:23', 'ORDER_1724944861', '4', 'Pick Up', '', '2024-08-29 15:20:57', '', 0),
(119, 8, 'Mac N Cheese Bites', 2, 9.00, 'Pending', '2024-09-12 09:45:23', 'ORDER_1724944861', '4', 'Pick Up', '', '2024-08-29 15:20:57', '', 0),
(120, 8, 'Mac N Cheese Bites', 3, 9.00, 'Pending', '2024-09-12 09:45:23', 'ORDER_1724945365', '4', 'Pick Up', '', '2024-08-29 15:29:20', '', 0),
(121, 8, ' Buffalo Wings', 2, 11.00, 'Pending', '2024-09-12 09:45:23', 'ORDER_1724945365', '4', 'Pick Up', '', '2024-08-29 15:29:20', '', 0),
(122, 8, ' Buffalo Wings', 1, 11.00, 'Pending', '2024-09-12 09:45:23', 'ORDER_1724945585', '4', 'Pick Up', '', '2024-08-29 15:33:02', '', 0),
(123, 8, 'Mac N Cheese Bites', 5, 9.00, 'Pending', '2024-09-12 09:45:23', 'ORDER_1724946157', '4', 'Pick Up', '', '2024-08-29 15:42:33', '', 0),
(124, 8, ' Buffalo Wings', 28, 11.00, 'Pending', '2024-09-12 09:45:23', 'ORDER_1724946157', '4', 'Pick Up', '', '2024-08-29 15:42:33', '', 0),
(125, 8, 'Chicken Madeira', 1, 23.00, 'Pending', '2024-09-12 09:45:23', 'ORDER_1724946867', '4', 'Pick Up', '', '2024-08-29 15:54:22', '', 0),
(126, 8, 'Meatballs Penne Pasta', 1, 10.00, 'Pending', '2024-09-12 09:45:23', 'ORDER_1724946867', '4', 'Pick Up', '', '2024-08-29 15:54:22', '', 0),
(127, 8, ' Buffalo Wings', 1, 11.00, 'Pending', '2024-09-12 09:45:23', 'ORDER_1724946867', '4', 'Pick Up', '', '2024-08-29 15:54:22', '', 0),
(128, 7, 'Mac N Cheese Bites', 1, 9.00, 'Pending', '2024-09-12 09:45:23', 'ORDER_1725027694', '0', 'Pick Up', '', '2024-08-30 14:20:34', '', 0),
(129, 7, ' Buffalo Wings', 1, 11.00, 'Pending', '2024-09-12 09:45:23', 'ORDER_1725028379', '4', 'Pick Up', '', '2024-08-30 14:29:33', '', 0),
(130, 7, 'Manchurian Chicken', 3, 11.00, 'Pending', '2024-09-12 09:45:23', 'ORDER_1725028779', '4', 'Pick Up', '', '2024-08-30 14:39:33', '', 0),
(131, 7, 'Spring Rolls', 1, 6.00, 'Pending', '2024-09-12 09:45:23', 'ORDER_1725028779', '4', 'Pick Up', '', '2024-08-30 14:39:33', '', 0),
(132, 7, 'Meatballs Penne Pasta', 2, 10.00, 'Pending', '2024-09-12 09:45:23', 'ORDER_1725028902', '4', 'Pick Up', '', '2024-08-30 14:41:37', '', 0),
(133, 7, 'Chicken Madeira', 1, 23.00, 'Pending', '2024-09-12 09:45:23', 'ORDER_1725030553', '4', 'Pick Up', '', '2024-08-30 15:09:07', '', 0),
(134, 7, 'Spring Rolls', 1, 6.00, 'Pending', '2024-09-12 09:45:23', 'ORDER_1725031072', '4', 'Pick Up', '', '2024-08-30 15:17:46', '', 0),
(135, 7, 'Cheesy Mashed Potato', 2, 5.00, 'Pending', '2024-09-12 09:45:23', 'ORDER_1725031466', '4', 'Pick Up', '', '2024-08-30 15:24:21', '', 0),
(136, 7, 'Chicken Madeira', 1, 23.00, 'Pending', '2024-09-12 09:45:23', 'ORDER_1725031663', '4', 'Pick Up', '', '2024-08-30 15:27:28', '', 0),
(137, 7, 'Pink Spaghetti Gamberoni', 1, 21.00, 'Pending', '2024-09-12 09:45:23', 'ORDER_1725031851', '4', 'Pick Up', '', '2024-08-30 15:30:44', '', 0),
(138, 7, 'Yorkshire Lamb Patties', 1, 14.00, 'Pending', '2024-09-12 09:45:23', 'ORDER_1725031851', '4', 'Pick Up', '', '2024-08-30 15:30:44', '', 0),
(139, 7, 'Yorkshire Lamb Patties', 1, 14.00, 'Pending', '2024-09-12 09:45:23', 'ORDER_1725031917', '4', 'Pick Up', '', '2024-08-30 15:31:49', '', 0),
(140, 7, 'Yorkshire Lamb Patties', 1, 14.00, 'Pending', '2024-09-12 09:45:23', 'ORDER_1725032226', '0', 'Pick Up', '', '2024-08-30 15:36:41', '', 0),
(141, 9, 'Chicken Madeira', 1, 23.00, 'Pending', '2024-09-12 09:45:23', 'ORDER_1725032482', '0', 'Pick Up', '', '2024-08-30 15:41:06', '', 0),
(142, 9, 'Chicken Madeira', 1, 23.00, 'Pending', '2024-09-12 09:45:23', 'ORDER_1725032905', '4', 'Pick Up', '', '2024-08-30 15:48:18', '', 0),
(143, 9, 'Chicken Madeira', 2, 23.00, 'Pending', '2024-09-12 09:45:23', 'ORDER_1725033315', '4', 'Pick Up', '', '2024-08-30 15:52:10', '', 0),
(144, 9, 'Chicken Madeira', 1, 23.00, 'Pending', '2024-09-12 09:45:23', 'ORDER_1725034130', '4', 'Pick Up', '', '2024-08-30 16:08:44', '', 0),
(145, 9, 'Pink Spaghetti Gamberoni', 2, 21.00, 'Pending', '2024-09-12 09:45:23', 'ORDER_1725034273', '2', 'Pick Up', '', '2024-08-30 16:11:08', '', 0),
(146, 9, 'Yorkshire Lamb Patties', 1, 14.00, 'Pending', '2024-09-12 09:45:23', 'ORDER_1725034343', '1', 'Pick Up', '', '2024-08-30 16:12:19', '', 0),
(147, 9, 'Chicken Madeira', 1, 23.00, 'Pending', '2024-09-12 09:45:23', 'ORDER_1725034343', '4', 'Pick Up', '', '2024-08-30 16:12:19', '', 0),
(148, 9, 'Spring Rolls', 1, 6.00, 'Pending', '2024-09-12 09:45:23', 'ORDER_1725034921', '3', 'Pick Up', '', '2024-08-30 16:21:57', '', 0),
(149, 9, 'Chicken Madeira', 1, 23.00, 'Pending', '2024-09-12 09:45:23', 'ORDER_1725034921', '4', 'Pick Up', '', '2024-08-30 16:21:57', '', 0),
(150, 9, 'Pink Spaghetti Gamberoni', 1, 21.00, 'Pending', '2024-09-12 09:45:23', 'ORDER_1725035049', '2', 'Pick Up', '', '2024-08-30 16:24:04', '', 0),
(151, 9, 'Lemon Grilled Chicken And Pasta', 2, 11.00, 'Pending', '2024-09-12 09:45:23', 'ORDER_1725035049', '2', 'Pick Up', '', '2024-08-30 16:24:04', '', 0),
(152, 9, 'Spring Rolls', 1, 6.00, 'Pending', '2024-09-12 09:45:23', 'ORDER_1725036373', '3', 'Pick Up', '', '2024-08-30 16:45:01', '', 0),
(157, 8, ' Buffalo Wings', 1, 11.00, 'Pending', '2024-09-12 09:45:23', 'ORDER_1725113135', '4', 'Pick Up', '', '2024-08-31 14:05:31', '', 0),
(158, 8, 'Pink Spaghetti Gamberoni', 1, 21.00, 'Pending', '2024-09-12 09:45:23', 'ORDER_1725113503', '2', 'Pick Up', '', '2024-08-31 14:11:40', '', 0),
(159, 8, 'Lemon Grilled Chicken And Pasta', 1, 11.00, 'Pending', '2024-09-12 09:45:23', 'ORDER_1725113503', '2', 'Pick Up', '', '2024-08-31 14:11:40', '', 0),
(160, 8, 'Cheesy Mashed Potato', 2, 5.00, 'Pending', '2024-09-12 09:45:23', 'ORDER_1725113553', '2', 'Pick Up', '', '2024-08-31 14:12:30', '', 0),
(161, 8, 'Cheesy Mashed Potato', 1, 5.00, 'Pending', '2024-09-12 09:45:23', 'ORDER_1725113952', '2', 'Building 1, Floor 1, Room 1', '', '2024-08-31 14:18:40', '', 0),
(162, 8, 'Lemon Grilled Chicken And Pasta', 1, 11.00, 'Pending', '2024-09-12 09:45:23', 'ORDER_1725114643', '2', 'Pick Up', '', '2024-08-31 14:25:23', '', 0),
(163, 8, 'Manchurian Chicken', 1, 11.00, 'Pending', '2024-09-12 09:45:23', 'ORDER_1725116143', '3', 'Pick Up', '', '2024-08-31 14:55:36', '', 0),
(164, 8, 'Chicken Madeira', 1, 23.00, 'Pending', '2024-09-12 09:45:23', 'ORDER_1725116401', '4', 'Pick Up', '', '2024-08-31 14:58:31', '', 0),
(165, 8, 'Yorkshire Lamb Patties', 2, 14.00, 'Pending', '2024-09-12 09:45:23', 'ORDER_1725116713', '1', 'Building 1, Floor 1, Room 1', '', '2024-08-31 15:04:44', '', 0),
(166, 8, 'Manchurian Chicken', 1, 11.00, 'Pending', '2024-09-12 09:45:23', 'ORDER_1725116944', '3', 'Pick Up', '', '2024-08-31 15:09:00', '', 12),
(167, 8, 'Pink Spaghetti Gamberoni', 1, 21.00, 'Pending', '2024-09-12 09:45:23', 'ORDER_1725116990', '2', 'Building 1, Floor 4, Room 1', '', '2024-08-31 15:09:43', '', 5),
(168, 8, 'Chicken Madeira', 1, 23.00, 'Pending', '2024-09-12 09:45:23', 'ORDER_1725116990', '4', 'Building 1, Floor 4, Room 1', '', '2024-08-31 15:09:43', '', 3),
(169, 8, 'Manchurian Chicken', 1, 11.00, 'Pending', '2024-09-12 09:45:23', 'ORDER_1725119000', '3', 'Building 1, Floor 1, Room 1', '', '2024-08-31 15:43:11', '', 12),
(170, 8, 'Pink Spaghetti Gamberoni', 1, 21.00, 'Pending', '2024-09-12 09:45:23', 'ORDER_1725119016', '2', 'Building 1, Floor 1, Room 1', '', '2024-08-31 15:43:29', '', 5),
(171, 8, 'Manchurian Chicken', 1, 11.00, 'Pending', '2024-09-12 09:45:23', 'ORDER_1725119470', '3', 'Pick Up', '', '2024-08-31 15:51:07', '', 12),
(172, 8, 'Lemon Grilled Chicken And Pasta', 1, 11.00, 'Pending', '2024-09-12 09:45:23', 'ORDER_1725119576', '2', 'Pick Up', '', '2024-08-31 15:52:53', '', 8),
(173, 8, 'Lemon Grilled Chicken And Pasta', 1, 11.00, 'Pending', '2024-09-12 09:45:23', 'ORDER_1725119596', '2', 'Pick Up', '', '2024-08-31 15:53:10', '', 8),
(174, 8, 'Pink Spaghetti Gamberoni', 1, 21.00, 'Pending', '2024-09-12 09:45:23', 'ORDER_1725120222', '2', 'Pick Up', '', '2024-08-31 16:03:28', '', 5),
(175, 8, 'Yorkshire Lamb Patties', 1, 14.00, 'Pending', '2024-09-12 09:45:23', 'ORDER_1725121383', '1', 'Pick Up', '', '2024-08-31 16:22:45', 'Digital - ', 1),
(176, 8, 'Yorkshire Lamb Patties', 1, 14.00, 'Pending', '2024-09-12 09:45:23', 'ORDER_1725121989', '1', 'Building 1, Floor 1, Room 1', '', '2024-08-31 16:32:53', 'Digital - ', 1),
(177, 8, 'Yorkshire Lamb Patties', 1, 14.00, 'Pending', '2024-09-12 09:45:23', 'ORDER_1725122358', '1', 'Building 1, Floor 1, Room 1', '', '2024-08-31 16:39:09', 'Digital', 1),
(179, 8, 'Lemon Grilled Chicken And Pasta', 1, 11.00, 'Pending', '2024-09-12 09:45:23', 'ORDER_1725122792', '2', 'Pick Up', '', '2024-08-31 16:46:25', 'Digital-WA', 8),
(181, 8, 'Spring Rolls', 1, 6.00, 'Pending', '2024-09-12 09:45:23', 'ORDER_1725122883', '3', 'Pick Up', '', '2024-08-31 16:47:55', 'WAVE', 11),
(185, 7, 'Lemon Grilled Chicken And Pasta', 1, 11.00, 'Pending', '2024-09-12 09:45:23', 'ORDER_1725201192', '2', 'Pick Up', '', '2024-09-01 21:03:05', 'WAVE', 8),
(186, 7, 'Pink Spaghetti Gamberoni', 1, 21.00, 'Pending', '2024-09-12 09:45:23', 'ORDER_1725201192', '2', 'Pick Up', '', '2024-09-01 21:03:05', 'WAVE', 5),
(187, 7, 'Pink Spaghetti Gamberoni', 1, 21.00, 'Pending', '2024-09-12 09:45:23', 'ORDER_1725202179', '2', 'Building 1, Floor 6, Room 1', '', '2024-09-01 21:19:08', 'AYA', 5),
(189, 7, 'Pink Spaghetti Gamberoni', 15, 315.00, 'Pending', '2024-09-12 09:45:23', 'ORDER_1725202670', '2', 'Pick Up', '', '2024-09-01 21:27:44', 'Cash', 5),
(190, 7, 'Lemon Grilled Chicken And Pasta', 19, 209.00, 'Pending', '2024-09-12 09:45:23', 'ORDER_1725202670', '2', 'Pick Up', '', '2024-09-01 21:27:44', 'Cash', 8),
(191, 7, 'I changed this one', 1, 1000.00, 'Pending', '2024-09-12 09:45:23', 'ORDER_1725284743', '2', 'Building 1, Floor 1, Room 1', '', '2024-09-02 20:15:12', 'AYA', 7),
(192, 7, 'I changed this one', 2, 2000.00, 'Pending', '2024-09-12 09:45:23', 'ORDER_1725290277', '2', 'Pick Up', '', '2024-09-02 21:47:51', 'Cash', 7),
(193, 7, 'Mac N Cheese Bites', 1, 9.00, 'Pending', '2024-09-12 09:45:23', 'ORDER_1725290277', '4', 'Pick Up', '', '2024-09-02 21:47:51', 'Cash', 14),
(194, 7, 'I changed this one', 2, 2000.00, 'Pending', '2024-09-12 09:45:23', 'ORDER_1725371083', '2', 'Pick Up', '', '2024-09-03 20:14:37', 'Cash', 7),
(198, 7, 'I changed this one', 1, 1000.00, 'Pending', '2024-09-12 09:45:23', 'ORDER_1725460256', '2', 'Pick Up', '', '2024-09-04 21:00:29', 'AYA', 7),
(200, 7, 'Chicken Madeira', 1, 23.00, 'Pending', '2024-09-12 09:45:23', 'ORDER_1725460625', '4', 'Building 1, Floor 1, Room 1', '', '2024-09-04 21:06:59', 'Cash', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users_orders`
--
ALTER TABLE `users_orders`
  ADD PRIMARY KEY (`o_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users_orders`
--
ALTER TABLE `users_orders`
  MODIFY `o_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
