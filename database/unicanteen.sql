-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 12, 2024 at 05:53 PM
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
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `a_id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(32) NOT NULL,
  `phone` bigint(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`a_id`, `name`, `email`, `password`, `phone`) VALUES
(1, 'Hnin', 'hninshweyiwint2024@gmail.com', 'c949a1495f3e9d57a028f2edd5c5687d', 9876543210),
(2, 'Shwe', 'shwe@gmail.com', '7f94237af072e73a9aee6d3eb7ac52c1', 9123456789);

-- --------------------------------------------------------

--
-- Table structure for table `cancelled_orders`
--

CREATE TABLE `cancelled_orders` (
  `id` int(11) NOT NULL,
  `rs_id` int(20) NOT NULL,
  `u_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `orderNum` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `quantity` int(20) NOT NULL,
  `price` double(10,0) NOT NULL,
  `total_price` double(10,0) NOT NULL,
  `cancelled_time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cancelled_orders`
--

INSERT INTO `cancelled_orders` (`id`, `rs_id`, `u_id`, `username`, `orderNum`, `title`, `quantity`, `price`, `total_price`, `cancelled_time`) VALUES
(10, 1, 8, 'UU', 'ORDER_1725122743', 'Yorkshire Lamb Patties', 1, 14, 14, '2024-09-12 13:35:07'),
(11, 3, 7, 'Kyi', 'ORDER_1725460105', 'TESTER', 16, 8000, 8000, '2024-09-12 14:03:05');

-- --------------------------------------------------------

--
-- Table structure for table `menu_rest1`
--

CREATE TABLE `menu_rest1` (
  `d_id` int(222) NOT NULL,
  `rs_id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `slogan` varchar(222) NOT NULL,
  `price` decimal(10,0) NOT NULL,
  `img` varchar(222) NOT NULL,
  `stock` int(10) NOT NULL,
  `time_category` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `menu_rest1`
--

INSERT INTO `menu_rest1` (`d_id`, `rs_id`, `title`, `slogan`, `price`, `img`, `stock`, `time_category`) VALUES
(1, 1, 'Yorkshire Lamb Patties', 'Lamb patties which melt in your mouth, and are quick and easy to make. Served hot with a crisp salad.', 140, '62908867a48e4.jpg', 63, 'breakfast'),
(4, 1, 'Stuffed Jacket Potatoes', 'Deep fry whole potatoes in oil for 8-10 minutes or coat each potato with little oil. Mix the onions, garlic, tomatoes and mushrooms. Add yoghurt, ginger, garlic, chillies, coriander', 8, '62908d393465b.jpg', 26, 'postNoon'),
(5, 1, 'Pink Spaghetti Gamberoni', 'Spaghetti with prawns in a fresh tomato sauce. This dish originates from Southern Italy and with the combination of prawns, garlic, chilli and pasta. Garnish each with remaining tablespoon parsley.', 21, '606d7491a9d13.jpg', 79, 'breakfast'),
(6, 1, 'Cheesy Mashed Potato', 'Deliciously Cheesy Mashed Potato. The ultimate mash for your Thanksgiving table or the perfect accompaniment to vegan sausage casserole. Everyone will love it\'s fluffy, cheesy.', 5, '606d74c416da5.jpg', 19, 'lunch'),
(16, 1, 'Meatballs Penne Pasta', 'Garlic-herb beef meatballs tossed in our house-made marinara sauce and penne pasta topped with fresh parsley.', 10, '606d76eedbb99.jpg', 99, 'lunch');

-- --------------------------------------------------------

--
-- Table structure for table `menu_rest2`
--

CREATE TABLE `menu_rest2` (
  `d_id` int(222) NOT NULL,
  `rs_id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `slogan` varchar(222) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `img` varchar(222) NOT NULL,
  `stock` int(10) NOT NULL,
  `time_category` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `menu_rest2`
--

INSERT INTO `menu_rest2` (`d_id`, `rs_id`, `title`, `slogan`, `price`, `img`, `stock`, `time_category`) VALUES
(5, 2, 'Pink Spaghetti Gamberoni', 'Spaghetti with prawns in a fresh tomato sauce. This dish originates from Southern Italy and with the combination of prawns, garlic, chilli and pasta. Garnish each with remaining tablespoon parsley.', 21.00, '606d7491a9d13.jpg', 75, 'breakfast'),
(6, 2, 'Cheesy Mashed Potato', 'Deliciously Cheesy Mashed Potato. The ultimate mash for your Thanksgiving table or the perfect accompaniment to vegan sausage casserole. Everyone will love it\'s fluffy, cheesy.', 5.00, '606d74c416da5.jpg', 17, 'lunch'),
(7, 2, 'I changed this one', 'Fried chicken strips, served with special honey mustard sauce.', 1000.00, '606d74f6ecbbb.jpg', 34, 'postNoon'),
(8, 2, 'Lemon Grilled Chicken And Pasta', 'Marinated rosemary grilled chicken breast served with mashed potatoes and your choice of pasta.', 11.00, '606d752a209c3.jpg', 53, 'breakfast');

-- --------------------------------------------------------

--
-- Table structure for table `menu_rest3`
--

CREATE TABLE `menu_rest3` (
  `d_id` int(222) NOT NULL,
  `rs_id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `slogan` varchar(222) NOT NULL,
  `price` decimal(10,0) NOT NULL,
  `img` varchar(222) NOT NULL,
  `stock` int(10) NOT NULL,
  `time_category` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `menu_rest3`
--

INSERT INTO `menu_rest3` (`d_id`, `rs_id`, `title`, `slogan`, `price`, `img`, `stock`, `time_category`) VALUES
(10, 3, 'TESTER', '12 pieces deep-fried prawn crackers', 500, '606d75a7e21ec.jpg', 1, 'postNoon'),
(11, 3, 'Spring Rolls', 'Lightly seasoned shredded cabbage, onion and carrots, wrapped in house made spring roll wrappers, deep fried to golden brown.', 6, '606d75ce105d0.jpg', 87, 'breakfast'),
(12, 3, 'Manchurian Chicken', 'Chicken pieces slow cooked with spring onions in our house made manchurian style sauce.', 11, '606d7600dc54c.jpg', 61, 'lunch');

-- --------------------------------------------------------

--
-- Table structure for table `menu_rest4`
--

CREATE TABLE `menu_rest4` (
  `d_id` int(222) NOT NULL,
  `rs_id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `slogan` varchar(222) NOT NULL,
  `price` decimal(10,0) NOT NULL,
  `img` varchar(222) NOT NULL,
  `stock` int(10) NOT NULL,
  `time_category` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `menu_rest4`
--

INSERT INTO `menu_rest4` (`d_id`, `rs_id`, `title`, `slogan`, `price`, `img`, `stock`, `time_category`) VALUES
(3, 4, 'Chicken Madeira', 'Chicken Madeira, like Chicken Marsala, is made with chicken, mushrooms, and a special fortified wine. But, the wines are different;', 23, '62908bdf2f581.jpg', 88, 'breakfast'),
(13, 4, ' Buffalo Wings', 'Fried chicken wings tossed in spicy Buffalo sauce served with crisp celery sticks and Blue cheese dip.', 11, '606d765f69a19.jpg', 66, 'postNoon'),
(14, 4, 'Mac N Cheese Bites', 'Served with our traditional spicy queso and marinara sauce.', 9, '606d768a1b2a1.jpg', 3, 'postNoon'),
(15, 4, 'Signature Potato Twisters', 'Spiral sliced potatoes, topped with our traditional spicy queso, Monterey Jack cheese, pico de gallo, sour cream and fresh cilantro.', 6, '606d76ad0c0cb.jpg', 0, 'postNoon'),
(16, 4, 'Meatballs Penne Pasta', 'Garlic-herb beef meatballs tossed in our house-made marinara sauce and penne pasta topped with fresh parsley.', 10, '606d76eedbb99.jpg', 96, 'lunch');

-- --------------------------------------------------------

--
-- Table structure for table `menu_rest20`
--

CREATE TABLE `menu_rest20` (
  `d_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slogan` text NOT NULL,
  `price` decimal(10,0) NOT NULL,
  `stock` int(11) NOT NULL,
  `time_category` varchar(50) NOT NULL,
  `rs_id` int(11) NOT NULL,
  `img` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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

-- --------------------------------------------------------

--
-- Table structure for table `remark`
--

CREATE TABLE `remark` (
  `id` int(11) NOT NULL,
  `frm_id` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `remark` mediumtext NOT NULL,
  `remarkDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `remark`
--

INSERT INTO `remark` (`id`, `frm_id`, `status`, `remark`, `remarkDate`) VALUES
(1, 2, 'in process', 'none', '2022-05-01 05:17:49'),
(2, 3, 'in process', 'none', '2022-05-27 11:01:30'),
(3, 2, 'closed', 'thank you for your order!', '2022-05-27 11:11:41'),
(4, 3, 'closed', 'none', '2022-05-27 11:42:35'),
(5, 4, 'in process', 'none', '2022-05-27 11:42:55'),
(6, 1, 'rejected', 'none', '2022-05-27 11:43:26'),
(7, 7, 'in process', 'none', '2022-05-27 13:03:24'),
(8, 8, 'in process', 'none', '2022-05-27 13:03:38'),
(9, 9, 'rejected', 'thank you', '2022-05-27 13:03:53'),
(10, 7, 'closed', 'thank you for your ordering with us', '2022-05-27 13:04:33'),
(11, 8, 'closed', 'thanks ', '2022-05-27 13:05:24'),
(12, 5, 'closed', 'none', '2022-05-27 13:18:03');

-- --------------------------------------------------------

--
-- Table structure for table `restaurant`
--

CREATE TABLE `restaurant` (
  `rs_id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `phone` varchar(222) NOT NULL,
  `image` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `restname` varchar(30) NOT NULL,
  `Password` varchar(32) NOT NULL,
  `description` varchar(250) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `restaurant`
--

INSERT INTO `restaurant` (`rs_id`, `title`, `phone`, `image`, `date`, `restname`, `Password`, `description`, `email`) VALUES
(1, 'North Street Tavern', '3547854700', '6290877b473ce.jpg', '2024-09-01 15:06:17', 'store1', '900150983cd24fb0d6963f7d28e17f72', 'store one', 'store1@email.com'),
(2, 'Eataly', '0557426406', '606d720b5fc71.jpg', '2024-09-01 15:06:36', 'store2', '900150983cd24fb0d6963f7d28e17f72', 'store 2', 'store2@email.com'),
(3, 'Nan Xiang Xiao Long Bao', '1458745855', '6290860e72d1e.jpg', '2024-09-01 15:06:53', 'store3', '900150983cd24fb0d6963f7d28e17f72', '3eeeeeeee', 'store3@email.com'),
(4, 'Highlands Bar & Grill', '6545687458', '6290af6f81887.jpg', '2024-09-01 15:07:12', 'store4', '900150983cd24fb0d6963f7d28e17f72', 'rrrrrrrrrrr4', 'store4@email.com'),
(19, 'KoKOes', '09333333244', '66c34c04c799c.jpg', '2024-09-01 15:07:39', 'admin', '900150983cd24fb0d6963f7d28e17f72', 'Tu su z restuarant', 'store4@email.com');

-- --------------------------------------------------------

--
-- Table structure for table `success_orders`
--

CREATE TABLE `success_orders` (
  `id` int(10) NOT NULL,
  `rs_id` int(20) NOT NULL,
  `u_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `orderNum` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `quantity` int(10) NOT NULL,
  `price` double(10,0) NOT NULL,
  `total_price` double(10,0) NOT NULL,
  `soldout_time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `success_orders`
--

INSERT INTO `success_orders` (`id`, `rs_id`, `u_id`, `username`, `orderNum`, `title`, `quantity`, `price`, `total_price`, `soldout_time`) VALUES
(15, 1, 8, 'UU', 'ORDER_1725122844', 'Yorkshire Lamb Patties', 1, 14, 14, '2024-09-12 13:35:02'),
(16, 3, 7, 'Kyi', 'ORDER_1724252751', 'I changed this one', 2, 1000, 1500, '2024-09-12 13:45:09'),
(17, 3, 7, 'Kyi', 'ORDER_1724252751', 'TESTER', 1, 500, 1500, '2024-09-12 13:45:09'),
(18, 3, 7, 'Kyi', 'ORDER_1725460015', 'TESTER', 1, 500, 500, '2024-09-12 14:03:12');

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

-- --------------------------------------------------------

--
-- Table structure for table `users_orders`
--

CREATE TABLE `users_orders` (
  `o_id` int(222) NOT NULL,
  `u_id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `quantity` int(222) NOT NULL,
  `price` decimal(10,0) NOT NULL,
  `status` varchar(222) DEFAULT 'Pending',
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `orderNum` varchar(30) NOT NULL,
  `rs_id` varchar(50) NOT NULL,
  `deliOption` varchar(250) NOT NULL,
  `DeliTime` varchar(50) NOT NULL,
  `payment` varchar(10) NOT NULL,
  `d_id` int(10) NOT NULL,
  `special` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users_orders`
--

INSERT INTO `users_orders` (`o_id`, `u_id`, `title`, `quantity`, `price`, `status`, `date`, `orderNum`, `rs_id`, `deliOption`, `DeliTime`, `payment`, `d_id`, `special`) VALUES
(76, 7, 'Lemon Grilled Chicken And Pasta', 1, 11, 'pending\r\n', '2024-09-02 15:02:17', 'ORDER_1724083896', '2', 'Pick Up', '2024-08-19 16:11:30', 'cash', 0, ''),
(92, 7, 'I changed this one', 1, 1000, NULL, '2024-08-30 14:09:27', 'ORDER_1724168889', '2', 'Pick Up', '2024-08-20 15:48:02', 'KBZ', 0, ''),
(93, 7, 'TESTER', 17, 500, NULL, '2024-08-30 14:09:36', 'ORDER_1724248362', '3', 'Pick Up', '2024-08-21 13:52:02', 'AYA', 0, ''),
(94, 7, 'I changed this one', 1, 1000, NULL, '2024-08-30 14:09:48', 'ORDER_1724248884', '2', 'Pick Up', '2024-08-21 14:01:20', 'WAVE', 0, ''),
(95, 50, 'Stuffed Jacket Potatoes', 1, 8, NULL, '2024-09-11 07:44:27', 'ORDER_1724249275', '1', 'Pick Up', '2024-08-21 14:06:47', '', 0, ''),
(103, 7, 'TESTER', 23, 500, NULL, '2024-08-24 14:00:44', 'ORDER_1724508044', '3', 'Pick Up', '2024-08-24 14:30:38', '', 0, ''),
(128, 7, 'Mac N Cheese Bites', 1, 9, NULL, '2024-08-30 14:21:34', 'ORDER_1725027694', '0', 'Pick Up', '2024-08-30 14:20:34', '', 0, ''),
(129, 7, ' Buffalo Wings', 1, 11, NULL, '2024-08-30 14:32:59', 'ORDER_1725028379', '4', 'Pick Up', '2024-08-30 14:29:33', '', 0, ''),
(130, 7, 'Manchurian Chicken', 3, 11, NULL, '2024-08-30 14:39:39', 'ORDER_1725028779', '4', 'Pick Up', '2024-08-30 14:39:33', '', 0, ''),
(131, 7, 'Spring Rolls', 1, 6, NULL, '2024-08-30 14:39:39', 'ORDER_1725028779', '4', 'Pick Up', '2024-08-30 14:39:33', '', 0, ''),
(132, 7, 'Meatballs Penne Pasta', 2, 10, NULL, '2024-08-30 14:41:42', 'ORDER_1725028902', '4', 'Pick Up', '2024-08-30 14:41:37', '', 0, ''),
(133, 7, 'Chicken Madeira', 1, 23, NULL, '2024-08-30 15:09:13', 'ORDER_1725030553', '4', 'Pick Up', '2024-08-30 15:09:07', '', 0, ''),
(134, 7, 'Spring Rolls', 1, 6, NULL, '2024-08-30 15:17:52', 'ORDER_1725031072', '4', 'Pick Up', '2024-08-30 15:17:46', '', 0, ''),
(135, 7, 'Cheesy Mashed Potato', 2, 5, NULL, '2024-08-30 15:24:26', 'ORDER_1725031466', '4', 'Pick Up', '2024-08-30 15:24:21', '', 0, ''),
(136, 7, 'Chicken Madeira', 1, 23, NULL, '2024-08-30 15:27:43', 'ORDER_1725031663', '4', 'Pick Up', '2024-08-30 15:27:28', '', 0, ''),
(137, 7, 'Pink Spaghetti Gamberoni', 1, 21, NULL, '2024-08-30 15:30:51', 'ORDER_1725031851', '4', 'Pick Up', '2024-08-30 15:30:44', '', 0, ''),
(138, 7, 'Yorkshire Lamb Patties', 1, 14, NULL, '2024-08-30 15:30:51', 'ORDER_1725031851', '4', 'Pick Up', '2024-08-30 15:30:44', '', 0, ''),
(139, 7, 'Yorkshire Lamb Patties', 1, 14, NULL, '2024-08-30 15:31:57', 'ORDER_1725031917', '4', 'Pick Up', '2024-08-30 15:31:49', '', 0, ''),
(140, 7, 'Yorkshire Lamb Patties', 1, 14, NULL, '2024-08-30 15:37:06', 'ORDER_1725032226', '0', 'Pick Up', '2024-08-30 15:36:41', '', 0, ''),
(141, 9, 'Chicken Madeira', 1, 23, NULL, '2024-08-30 15:41:22', 'ORDER_1725032482', '0', 'Pick Up', '2024-08-30 15:41:06', '', 0, ''),
(142, 9, 'Chicken Madeira', 1, 23, NULL, '2024-08-30 15:48:25', 'ORDER_1725032905', '4', 'Pick Up', '2024-08-30 15:48:18', '', 0, ''),
(143, 9, 'Chicken Madeira', 2, 23, NULL, '2024-08-30 15:55:15', 'ORDER_1725033315', '4', 'Pick Up', '2024-08-30 15:52:10', '', 0, ''),
(144, 9, 'Chicken Madeira', 1, 23, NULL, '2024-08-30 16:08:50', 'ORDER_1725034130', '4', 'Pick Up', '2024-08-30 16:08:44', '', 0, ''),
(145, 9, 'Pink Spaghetti Gamberoni', 2, 21, NULL, '2024-08-30 16:11:13', 'ORDER_1725034273', '2', 'Pick Up', '2024-08-30 16:11:08', '', 0, ''),
(146, 9, 'Yorkshire Lamb Patties', 1, 14, NULL, '2024-08-30 16:12:23', 'ORDER_1725034343', '1', 'Pick Up', '2024-08-30 16:12:19', '', 0, ''),
(147, 9, 'Chicken Madeira', 1, 23, NULL, '2024-08-30 16:12:23', 'ORDER_1725034343', '4', 'Pick Up', '2024-08-30 16:12:19', '', 0, ''),
(162, 8, 'Lemon Grilled Chicken And Pasta', 1, 11, NULL, '2024-08-31 14:30:43', 'ORDER_1725114643', '2', 'Pick Up', '2024-08-31 14:25:23', '', 0, ''),
(163, 8, 'Manchurian Chicken', 1, 11, NULL, '2024-08-31 14:55:43', 'ORDER_1725116143', '3', 'Pick Up', '2024-08-31 14:55:36', '', 0, ''),
(164, 8, 'Chicken Madeira', 1, 23, NULL, '2024-08-31 15:00:01', 'ORDER_1725116401', '4', 'Pick Up', '2024-08-31 14:58:31', '', 0, ''),
(165, 8, 'Yorkshire Lamb Patties', 2, 14, NULL, '2024-08-31 15:05:13', 'ORDER_1725116713', '1', 'Building 1, Floor 1, Room 1', '2024-08-31 15:04:44', '', 0, ''),
(166, 8, 'Manchurian Chicken', 1, 11, NULL, '2024-08-31 15:09:04', 'ORDER_1725116944', '3', 'Pick Up', '2024-08-31 15:09:00', '', 12, ''),
(167, 8, 'Pink Spaghetti Gamberoni', 1, 21, NULL, '2024-08-31 15:09:50', 'ORDER_1725116990', '2', 'Building 1, Floor 4, Room 1', '2024-08-31 15:09:43', '', 5, ''),
(168, 8, 'Chicken Madeira', 1, 23, NULL, '2024-08-31 15:09:50', 'ORDER_1725116990', '4', 'Building 1, Floor 4, Room 1', '2024-08-31 15:09:43', '', 3, ''),
(189, 7, 'Pink Spaghetti Gamberoni', 15, 315, NULL, '2024-09-01 14:57:50', 'ORDER_1725202670', '2', 'Pick Up', '2024-09-01 21:27:44', 'Cash', 5, ''),
(190, 7, 'Lemon Grilled Chicken And Pasta', 19, 209, NULL, '2024-09-01 14:57:50', 'ORDER_1725202670', '2', 'Pick Up', '2024-09-01 21:27:44', 'Cash', 8, ''),
(191, 7, 'I changed this one', 1, 1000, NULL, '2024-09-02 13:45:43', 'ORDER_1725284743', '2', 'Building 1, Floor 1, Room 1', '2024-09-02 20:15:12', 'AYA', 7, ''),
(192, 7, 'I changed this one', 2, 2000, NULL, '2024-09-02 15:17:57', 'ORDER_1725290277', '2', 'Pick Up', '2024-09-02 21:47:51', 'Cash', 7, ''),
(193, 7, 'Mac N Cheese Bites', 1, 9, NULL, '2024-09-02 15:17:57', 'ORDER_1725290277', '4', 'Pick Up', '2024-09-02 21:47:51', 'Cash', 14, ''),
(194, 7, 'I changed this one', 2, 2000, NULL, '2024-09-03 13:44:43', 'ORDER_1725371083', '2', 'Pick Up', '2024-09-03 20:14:37', 'Cash', 7, ''),
(195, 7, 'TESTER', 1, 500, NULL, '2024-09-04 14:26:55', 'ORDER_1725460015', '3', 'Pick Up', '2024-09-04 20:56:50', 'Cash', 10, ''),
(196, 7, 'TESTER', 16, 8000, NULL, '2024-09-04 14:28:25', 'ORDER_1725460105', '3', 'Building 1, Floor 1, Room 1', '2024-09-04 21:28:09', 'Cash', 10, ''),
(197, 7, 'Stuffed Jacket Potatoes', 1, 8, NULL, '2024-09-04 14:29:15', 'ORDER_1725460155', '1', 'Building 1, Floor 1, Room 1', '2024-09-04 20:59:08', 'Cash', 4, ''),
(198, 7, 'I changed this one', 1, 1000, NULL, '2024-09-04 14:30:56', 'ORDER_1725460256', '2', 'Pick Up', '2024-09-04 21:00:29', 'AYA', 7, ''),
(199, 7, 'Yorkshire Lamb Patties', 1, 14, NULL, '2024-09-04 14:37:05', 'ORDER_1725460625', '1', 'Building 1, Floor 1, Room 1', '2024-09-04 21:06:59', 'Cash', 1, ''),
(200, 7, 'Chicken Madeira', 1, 23, NULL, '2024-09-04 14:37:05', 'ORDER_1725460625', '4', 'Building 1, Floor 1, Room 1', '2024-09-04 21:06:59', 'Cash', 3, ''),
(201, 7, 'Meatballs Penne Pasta', 1, 10, NULL, '2024-09-07 05:40:03', 'ORDER_1725687603', '1', 'Building 1, Floor 1, Room 1', '2024-09-07 12:09:33', 'Cash', 16, ''),
(202, 7, 'I changed this one', 3, 3000, NULL, '2024-09-07 11:17:06', 'ORDER_1725707826', '2', 'Pick Up', '2024-09-07 17:40:54', 'Cash', 7, ''),
(203, 7, 'I changed this one', 1, 1000, NULL, '2024-09-08 08:00:13', 'ORDER_1725782413', '2', 'Pick Up', '2024-09-08 14:30:06', 'Cash', 7, ''),
(204, 7, 'TESTER', 1, 500, NULL, '2024-09-08 08:00:13', 'ORDER_1725782413', '3', 'Pick Up', '2024-09-08 14:30:06', 'Cash', 10, ''),
(205, 7, 'Stuffed Jacket Potatoes', 1, 8, NULL, '2024-09-08 08:00:13', 'ORDER_1725782413', '1', 'Pick Up', '2024-09-08 14:30:06', 'Cash', 4, ''),
(206, 7, 'TESTER', 1, 500, NULL, '2024-09-10 14:08:31', 'ORDER_1725977311', '3', 'Pick Up', '2024-09-10 20:38:25', 'Cash', 10, ''),
(207, 7, 'Stuffed Jacket Potatoes', 1, 8, NULL, '2024-09-10 15:44:48', 'ORDER_1725983088', '1', 'Pick Up', '2024-09-10 22:20:00', 'Cash', 4, ''),
(208, 7, 'Spring Rolls', 1, 6, NULL, '2024-09-11 02:20:42', 'ORDER_1726021242', '3', 'Pick Up', '2024-09-11 09:20:34', 'Cash', 11, ''),
(209, 50, 'Lemon Grilled Chicken And Pasta', 1, 11, NULL, '2024-09-11 07:44:14', 'ORDER_1726022457', '2', 'Pick Up', '2024-09-11 10:40:50', 'Cash', 8, ''),
(210, 47, 'Yorkshire Lamb Patties', 1, 14, NULL, '2024-09-11 09:05:18', 'ORDER_1726045518', '1', 'Pick Up', '2024-09-11 15:35:14', 'Cash', 1, ''),
(211, 47, 'Yorkshire Lamb Patties', 1, 14, NULL, '2024-09-11 09:06:29', 'ORDER_1726045589', '1', 'Pick Up', '2024-09-11 15:36:23', 'Cash', 1, ''),
(212, 47, 'Pink Spaghetti Gamberoni', 1, 21, NULL, '2024-09-11 09:06:29', 'ORDER_1726045589', '1', 'Pick Up', '2024-09-11 15:36:23', 'Cash', 5, ''),
(213, 47, 'Yorkshire Lamb Patties', 1, 14, NULL, '2024-09-11 13:36:42', 'ORDER_1726061802', '1', 'Building 1, Floor 1, Room 1', '2024-09-11 20:06:34', 'Cash', 1, ''),
(214, 47, 'Yorkshire Lamb Patties', 1, 14, NULL, '2024-09-11 14:10:56', 'ORDER_1726063856', '1', 'Pick Up', '2024-09-11 20:40:45', 'Cash', 1, ''),
(215, 47, 'Pink Spaghetti Gamberoni', 1, 21, NULL, '2024-09-11 14:10:56', 'ORDER_1726063856', '1', 'Pick Up', '2024-09-11 20:40:45', 'Cash', 5, ''),
(216, 47, 'Pink Spaghetti Gamberoni', 1, 21, NULL, '2024-09-11 14:16:07', 'ORDER_1726064167', '1', 'Pick Up', '2024-09-11 20:46:03', 'Cash', 5, ''),
(217, 47, 'Yorkshire Lamb Patties', 1, 14, NULL, '2024-09-11 14:38:06', 'ORDER_1726065486', '1', 'Pick Up', '2024-09-11 21:08:01', 'Cash', 1, ''),
(218, 47, 'Yorkshire Lamb Patties', 1, 14, NULL, '2024-09-11 16:20:07', 'ORDER_1726071607', '1', 'Building 1, Floor 5, Room 1', '2024-09-11 22:49:52', 'Cash', 1, 'myymmmymmy'),
(219, 47, 'Yorkshire Lamb Patties', 1, 14, NULL, '2024-09-11 16:22:42', 'ORDER_1726071762', '1', 'Building 3, Floor 1, Room 1', '2024-09-11 22:20:00', 'Cash', 1, 'this is special instruction.'),
(220, 47, 'Yorkshire Lamb Patties', 15, 210, NULL, '2024-09-11 16:57:32', 'ORDER_1726073852', '1', 'Building 1, Floor 4, Room 1', '2024-09-11 23:27:22', 'Cash', 1, 'iiiiiiiiiiii'),
(221, 47, 'Pink Spaghetti Gamberoni', 1, 21, NULL, '2024-09-11 17:06:27', 'ORDER_1726074387', '1', 'Pick Up', '2024-09-11 23:36:21', 'Cash', 5, ''),
(222, 47, 'Yorkshire Lamb Patties', 2, 28, NULL, '2024-09-11 17:07:34', 'ORDER_1726074454', '1', 'Pick Up', '2024-09-11 23:37:27', 'Cash', 1, ''),
(223, 47, 'Pink Spaghetti Gamberoni', 1, 21, NULL, '2024-09-11 17:10:35', 'ORDER_1726074635', '2', 'Pick Up', '2024-09-11 23:40:26', 'Cash', 5, ''),
(224, 47, 'Yorkshire Lamb Patties', 1, 14, 'Pending', '2024-09-12 02:16:14', 'ORDER_1726107374', '1', 'Building 3, Floor 3, Room 5', '2024-09-12 08:45:57', 'Cash', 1, 'iiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiii'),
(225, 47, 'Stuffed Jacket Potatoes', 1, 8, 'Pending', '2024-09-12 02:45:50', 'ORDER_1726109150', '1', 'Building 1, Floor 4, Room 1', '2024-09-12 09:45:37', 'AYA', 4, 'fddfedfeasdfdsfd'),
(226, 47, 'Yorkshire Lamb Patties', 1, 14, 'Pending', '2024-09-12 03:35:28', 'ORDER_1726112128', '1', 'Pick Up', '2024-09-12 10:05:15', 'KBZ', 1, '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`a_id`);

--
-- Indexes for table `cancelled_orders`
--
ALTER TABLE `cancelled_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu_rest1`
--
ALTER TABLE `menu_rest1`
  ADD PRIMARY KEY (`d_id`);

--
-- Indexes for table `menu_rest2`
--
ALTER TABLE `menu_rest2`
  ADD PRIMARY KEY (`d_id`);

--
-- Indexes for table `menu_rest3`
--
ALTER TABLE `menu_rest3`
  ADD PRIMARY KEY (`d_id`);

--
-- Indexes for table `menu_rest4`
--
ALTER TABLE `menu_rest4`
  ADD PRIMARY KEY (`d_id`);

--
-- Indexes for table `menu_rest20`
--
ALTER TABLE `menu_rest20`
  ADD PRIMARY KEY (`d_id`);

--
-- Indexes for table `noticeboard`
--
ALTER TABLE `noticeboard`
  ADD PRIMARY KEY (`noticeid`);

--
-- Indexes for table `restaurant`
--
ALTER TABLE `restaurant`
  ADD PRIMARY KEY (`rs_id`);

--
-- Indexes for table `success_orders`
--
ALTER TABLE `success_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`u_id`);

--
-- Indexes for table `users_orders`
--
ALTER TABLE `users_orders`
  ADD PRIMARY KEY (`o_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `a_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cancelled_orders`
--
ALTER TABLE `cancelled_orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `menu_rest1`
--
ALTER TABLE `menu_rest1`
  MODIFY `d_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `menu_rest2`
--
ALTER TABLE `menu_rest2`
  MODIFY `d_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `menu_rest3`
--
ALTER TABLE `menu_rest3`
  MODIFY `d_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `menu_rest4`
--
ALTER TABLE `menu_rest4`
  MODIFY `d_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `menu_rest20`
--
ALTER TABLE `menu_rest20`
  MODIFY `d_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `noticeboard`
--
ALTER TABLE `noticeboard`
  MODIFY `noticeid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `restaurant`
--
ALTER TABLE `restaurant`
  MODIFY `rs_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `success_orders`
--
ALTER TABLE `success_orders`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `u_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `users_orders`
--
ALTER TABLE `users_orders`
  MODIFY `o_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=227;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
