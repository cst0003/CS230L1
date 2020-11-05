-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 05, 2020 at 02:10 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cs230`
--

-- --------------------------------------------------------

--
-- Table structure for table `features`
--

CREATE TABLE `features` (
  `pid` int(11) NOT NULL,
  `title` varchar(60) NOT NULL,
  `descript` text NOT NULL,
  `picpath` varchar(80) NOT NULL,
  `upload_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `rating` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `features`
--

INSERT INTO `features` (`pid`, `title`, `descript`, `picpath`, `upload_date`, `rating`) VALUES
(1, 'profile ', 'me and me toys', '5f8719b4e8a258.36704614.jpg', '2020-10-14', NULL),
(2, 'ricky', 'rickyyyy', '5f8858d09c4a15.11024022.png', '2020-10-15', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE `profile` (
  `uname` varchar(30) NOT NULL,
  `picpath` varchar(50) NOT NULL DEFAULT 'uploads/anon.png',
  `bio` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`uname`, `picpath`, `bio`) VALUES
('t1', 'uploads/anon.png', NULL),
('t3', 'uploads/anon.png', NULL),
('t4', '', NULL),
('cody', 'uploads/anon.png', NULL),
('cody1', 'uploads/anon.png', NULL),
('codyt', '../uploads/5f985c216ecf56.67466449.png', '');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `rev_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `uname` varchar(80) CHARACTER SET utf8mb4 NOT NULL,
  `title` varchar(60) CHARACTER SET utf8mb4 NOT NULL,
  `review_text` text CHARACTER SET utf8mb4 NOT NULL,
  `rev_date` datetime NOT NULL,
  `rating_num` int(11) NOT NULL,
  `status` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`rev_id`, `item_id`, `uname`, `title`, `review_text`, `rev_date`, `rating_num`, `status`) VALUES
(1, 0, 'codyt', 'first review ', 'first review ', '2020-10-27 17:56:51', 1, 1),
(2, 0, 'codyt', 'first review ', 'first review ', '2020-10-27 17:58:13', 1, 1),
(3, 0, 'codyt', 'first review ', 'good test ', '2020-10-27 18:22:53', 1, 1),
(4, 0, 'codyt', 'first review ', 'good test ', '2020-10-27 18:22:56', 1, 1),
(5, 0, 'codyt', 'adad', 'adada', '2020-10-27 18:23:28', 1, 1),
(6, 0, 'codyt', 'tyt', 'tytedds', '2020-10-27 18:36:16', 3, 1),
(7, 0, 'codyt', 'error ', 'error1', '2020-10-27 18:54:42', 5, 1),
(8, 0, 'codyt', 'error ', 'error1', '2020-10-27 18:55:22', 5, 1),
(9, 0, 'codyt', 'dfhdh', 'dhdhd', '2020-10-27 18:55:47', 4, 1),
(10, 0, 'codyt', 'good run ', 'yes', '2020-10-28 00:20:20', 2, 1),
(13, 0, 'codyt', 'ricky ', 'rick ', '2020-10-28 00:21:23', 3, 1),
(14, 0, 'codyt', 'good run ', '8989', '2020-11-01 14:49:31', 3, 1),
(15, 0, '', 'aus', 'aus', '2020-11-02 16:03:38', 0, 1),
(16, 0, '', 'error ', '5', '2020-11-03 17:27:27', 0, 1),
(17, 0, '', 'dfhdh', 'gf', '2020-11-03 18:53:55', 0, 1),
(18, 0, '', 'tyt', 'vv', '2020-11-03 18:57:06', 0, 1),
(19, 0, '', 'gg', 'gg', '2020-11-03 19:22:12', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `uid` int(11) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `email` varchar(80) NOT NULL,
  `uname` varchar(80) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`uid`, `lname`, `fname`, `email`, `uname`, `password`) VALUES
(4, 'Thorngate', 'Cody', 'sage72868@gmail.com', 'codysage98', '$2y$10$gZw5EAimPaEK7udjecjCjO8d1mX/.FMgrmA1m5Z25CpS0YWlSqvKq'),
(11, 'codyt', 'codyt', 'ct@ct.com', 'codyt', '$2y$10$J9uGVx0Z6Xun.vmJZqgQROm8zhC7jVDRm.KMWYFLjQKFt259X4Moa');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `features`
--
ALTER TABLE `features`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`rev_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `features`
--
ALTER TABLE `features`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `rev_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
