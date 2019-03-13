-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 13, 2019 at 10:55 AM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sync_contact_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `sync_data`
--

CREATE TABLE `sync_data` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `contact_json` varchar(10000) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sync_data`
--

INSERT INTO `sync_data` (`id`, `user_id`, `contact_json`, `created_at`, `updated_at`) VALUES
(2579, 1, '[{\"email\":\"imran@w3engineers.com\",\"id\":\"19\",\"name\":\"Imran\",\"phone\":\"01911-833792\"},{\"email\":\"\",\"id\":\"1\",\"name\":\"Invalid Num\",\"phone\":\"65890\"},{\"email\":\"\",\"id\":\"5\",\"name\":\"OnePlusOne\",\"phone\":\"01985-961102\"},{\"email\":\"\",\"id\":\"2\",\"name\":\"Symphony P6\",\"phone\":\"01734-818471\"},{\"email\":\"test@g.c\",\"id\":\"18\",\"name\":\"Test\",\"phone\":\"01234-56789\"}]', '2019-03-13 09:54:33', '2019-03-13 09:54:33');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `sync_data`
--
ALTER TABLE `sync_data`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `sync_data`
--
ALTER TABLE `sync_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2580;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
