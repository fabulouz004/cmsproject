-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 07, 2020 at 09:48 AM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 7.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `widget_corp`
--

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `menu_name` varchar(30) NOT NULL,
  `position` int(3) NOT NULL,
  `visible` tinyint(1) NOT NULL,
  `content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `subject_id`, `menu_name`, `position`, `visible`, `content`) VALUES
(1, 1, 'Our History', 1, 1, 'this is a brief history of the company.....'),
(2, 1, 'Our Mission', 2, 1, 'Our cooperate mission statement is... '),
(3, 2, 'Widget 2000', 1, 1, 'The widget 2000 is a great product'),
(6, 2, 'Widget 3000', 1, 1, 'The widget 3000 is a great product\r\nit is a little bit higher than the Widget 2000'),
(7, 3, 'Office', 1, 0, 'we offer ho services');

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` int(11) NOT NULL,
  `menu_name` varchar(30) NOT NULL,
  `position` int(3) NOT NULL,
  `visible` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `menu_name`, `position`, `visible`) VALUES
(1, '       About Widget Corp', 1, 1),
(2, '               Products', 2, 1),
(3, 'Service', 3, 1),
(4, '', 1, 1),
(5, '', 4, 1),
(6, '', 4, 1),
(7, '', 3, 1),
(8, '', 1, 1),
(9, '', 4, 1),
(11, '', 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `hashed_password` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `hashed_password`) VALUES
(2, 'emma', 'efdb8f7f2fe9c47e34dfe1fb7c491d0638ec2d86'),
(3, 'emma', 'efdb8f7f2fe9c47e34dfe1fb7c491d0638ec2d86'),
(4, 'emma', '6bb65257fcab4e2975cd96b0f7fc4b53d97c10b6'),
(5, 'emma', '6bb65257fcab4e2975cd96b0f7fc4b53d97c10b6'),
(6, 'emma', 'efdb8f7f2fe9c47e34dfe1fb7c491d0638ec2d86');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
