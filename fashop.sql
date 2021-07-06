-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Jul 06, 2021 at 01:25 PM
-- Server version: 5.7.32
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `fashop`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `firstName` varchar(30) NOT NULL,
  `lastName` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstName`, `lastName`, `email`) VALUES
(1, 'monir', 'kabiri', 'monir.kabiri@gmail.com'),
(14, 'monir', 'kabiri', 'monir@gmail.com'),
(15, 'monir', 'kabiri', 'moniresh1.kabiri@gmail.com'),
(16, 'asdffasd', 'adf', 'peimanmhd@gmail.com'),
(17, 'add', 'ddf', 'peimanfmhd@gmail.com'),
(20, 'sdfsds', 'sfsdf', 'ffpeimanmhd@gmail.com'),
(22, 'Mohammadie', 'seyedpeiman', 'peimanmhd@gmail.come'),
(23, 'monir', 'kabiri', 'iiimonireh1.kabiri@epitech.eu'),
(24, 'monir', 'kabiri', '1monireh1.kabiri@epitech.eu'),
(25, 'monir', 'kabiri', '000monireh1.kabiri@epitech.eu'),
(26, 'sfsdf', 'sfdf', 'zahra.yazdani623@gmail.com'),
(28, 'sfsd', 'sfsf', 'zahra.yazdani62f3@gmail.com'),
(29, 'monir', 'kabiri', 'jmonireh1.kabiri@epitech.eu'),
(31, 'monir', 'kabiri', 'gmonireh1.kabiri@epitech.eu'),
(32, 'ss', 'ss', 'sssss@gmail.com'),
(34, 'monir', 'kabiri', 'monireh1.kabiri@epitech.eu'),
(42, 'monir', 'kabiriv', 'monireh1v.kabiri@epitech.eu'),
(46, 'monir', 'kabiriv', 'monireh1.kabiri@epitech.euv'),
(47, 'gina', 'alijan', 'jina@yahoo.com'),
(48, 'bjhiuoiu', 'hguou', 'vergegr@yahoo.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
