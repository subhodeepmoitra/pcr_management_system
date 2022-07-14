-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 14, 2022 at 12:04 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pcrms`
--

-- --------------------------------------------------------

--
-- Table structure for table `accident_reporting`
--

CREATE TABLE `accident_reporting` (
  `accident_id` int(10) NOT NULL,
  `location` varchar(1111) NOT NULL,
  `accident_type` varchar(1111) NOT NULL,
  `division` varchar(1111) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `accident_reporting`
--

INSERT INTO `accident_reporting` (`accident_id`, `location`, `accident_type`, `division`, `time`) VALUES
(1, 'test1', 'CODE BLUE (MINOR ACCIDENT REQUIRES MEDICAL AID)', 'CENTRAL', '2022-07-11 06:03:42'),
(2, 'TEST ADDRESS', 'CODE RED (SEVERE ACCIDENT)', 'DOCK', '2022-07-11 10:41:21');

-- --------------------------------------------------------

--
-- Table structure for table `pcr_login_log`
--

CREATE TABLE `pcr_login_log` (
  `log_id` int(11) NOT NULL,
  `pcr_number` varchar(1000) NOT NULL,
  `login_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `logout_time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pcr_login_log`
--

INSERT INTO `pcr_login_log` (`log_id`, `pcr_number`, `login_time`, `logout_time`) VALUES
(1, '1101', '2022-07-14 10:04:05', '2022-07-14 10:04:05');

-- --------------------------------------------------------

--
-- Table structure for table `pcr_registration`
--

CREATE TABLE `pcr_registration` (
  `id` int(11) NOT NULL,
  `pcr_number` varchar(100) NOT NULL,
  `pcr_type` varchar(100) NOT NULL,
  `station` varchar(100) NOT NULL,
  `password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pcr_registration`
--

INSERT INTO `pcr_registration` (`id`, `pcr_number`, `pcr_type`, `station`, `password`) VALUES
(1, '1101', 'QRT VEHICLE', 'HQ', '123456789'),
(2, '2022', 'QRT VEHICLE', 'hq', '123456789'),
(3, 'WB15A2022', 'QRT VEHICLE', 'HQ', '123456789');

-- --------------------------------------------------------

--
-- Table structure for table `unlawful_gathering_reporting`
--

CREATE TABLE `unlawful_gathering_reporting` (
  `ulg_id` int(11) NOT NULL,
  `location` varchar(1000) NOT NULL,
  `estimate` bigint(100) NOT NULL,
  `armedstatus` varchar(1000) NOT NULL,
  `div` varchar(1000) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `unlawful_gathering_reporting`
--

INSERT INTO `unlawful_gathering_reporting` (`ulg_id`, `location`, `estimate`, `armedstatus`, `div`, `time`) VALUES
(1, 'test1', 11, 'Armed', 'CENTRAL', '2022-07-14 05:18:59'),
(2, 'test2', 21, 'Un-armed', 'DOCK', '2022-07-14 05:59:03'),
(3, 'test3', 43, 'Cannot be verified', 'SOUTH', '2022-07-14 06:05:10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accident_reporting`
--
ALTER TABLE `accident_reporting`
  ADD PRIMARY KEY (`accident_id`);

--
-- Indexes for table `pcr_login_log`
--
ALTER TABLE `pcr_login_log`
  ADD PRIMARY KEY (`log_id`);

--
-- Indexes for table `pcr_registration`
--
ALTER TABLE `pcr_registration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `unlawful_gathering_reporting`
--
ALTER TABLE `unlawful_gathering_reporting`
  ADD PRIMARY KEY (`ulg_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accident_reporting`
--
ALTER TABLE `accident_reporting`
  MODIFY `accident_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pcr_login_log`
--
ALTER TABLE `pcr_login_log`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pcr_registration`
--
ALTER TABLE `pcr_registration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `unlawful_gathering_reporting`
--
ALTER TABLE `unlawful_gathering_reporting`
  MODIFY `ulg_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
