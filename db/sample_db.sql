-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 21, 2017 at 08:38 AM
-- Server version: 5.6.26
-- PHP Version: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pragna_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('test@test.com', '$2y$10$6i.4LCR.Xqrr5E0Db/.6E.st/9Wjl8eGbBmiyo8EdWKODnaudrafi', '2017-12-19 01:27:04');

-- --------------------------------------------------------

--
-- Table structure for table `stud_reg`
--

CREATE TABLE IF NOT EXISTS `stud_reg` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `addr` varchar(250) NOT NULL,
  `gender` char(1) NOT NULL,
  `country` int(11) NOT NULL,
  `hobby` varchar(100) NOT NULL,
  `stud_image` varchar(250) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stud_reg`
--

INSERT INTO `stud_reg` (`id`, `name`, `addr`, `gender`, `country`, `hobby`, `stud_image`) VALUES
(6, 'cv', 'cvb', 'F', 4, 'Writing', '260_download (2).jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_city`
--

CREATE TABLE IF NOT EXISTS `tbl_city` (
  `city_id` int(11) NOT NULL,
  `state_id` int(11) NOT NULL,
  `city_name` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_city`
--

INSERT INTO `tbl_city` (`city_id`, `state_id`, `city_name`) VALUES
(1, 1, 'mumbai'),
(2, 1, 'solapur'),
(3, 1, 'pune'),
(4, 2, 'Ktchchh'),
(5, 2, 'Ahemdabad'),
(6, 2, 'Vadodra'),
(7, 3, 'jaipur'),
(8, 3, 'Ajmer'),
(9, 3, 'Jaisalmer'),
(10, 4, 'c1'),
(11, 4, 'c2'),
(12, 4, 'c3'),
(13, 5, 'f1'),
(14, 5, 'f2'),
(15, 5, 'f3'),
(16, 6, 'N1'),
(17, 6, 'N2'),
(18, 6, 'N3'),
(19, 7, 'Cardiff1'),
(20, 7, 'Cardiff2'),
(21, 7, 'Cardiff3'),
(22, 8, 'Derby1'),
(23, 8, 'Derby2'),
(24, 8, 'Derby3'),
(25, 9, 'Hereford1'),
(26, 9, 'Hereford2'),
(27, 9, 'Hereford3');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_country`
--

CREATE TABLE IF NOT EXISTS `tbl_country` (
  `country` int(11) NOT NULL,
  `country_name` varchar(50) NOT NULL,
  `updated_at` date NOT NULL,
  `created_at` date NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_country`
--

INSERT INTO `tbl_country` (`country`, `country_name`, `updated_at`, `created_at`) VALUES
(3, 'UK', '2017-01-25', '2017-01-25'),
(4, 'INDIA', '2017-01-25', '2017-01-25'),
(6, 'USA', '2017-01-25', '2017-01-25'),
(7, 'Africa', '2017-01-27', '2017-01-27'),
(8, 'Oman', '2017-01-27', '2017-01-27');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_registration`
--

CREATE TABLE IF NOT EXISTS `tbl_registration` (
  `reg_id` int(11) NOT NULL,
  `reg_name` varchar(50) NOT NULL,
  `reg_geder` varchar(1) NOT NULL,
  `reg_dob` date NOT NULL,
  `reg_country` int(2) NOT NULL,
  `reg_state` int(3) NOT NULL,
  `reg_city` int(3) NOT NULL,
  `reg_hobbies` varchar(200) NOT NULL,
  `reg_photo` text NOT NULL,
  `reg_detail` varchar(250) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=142 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_registration`
--

INSERT INTO `tbl_registration` (`reg_id`, `reg_name`, `reg_geder`, `reg_dob`, `reg_country`, `reg_state`, `reg_city`, `reg_hobbies`, `reg_photo`, `reg_detail`) VALUES
(74, 'lastone', 'M', '2015-02-05', 3, 7, 14, '', '721-Desert.jpg', 'fg'),
(76, 'tushar', 'M', '1998-02-02', 2, 6, 17, 'Reading', '862-Desert.jpg', 'ewewtdfg'),
(79, 'tushar', 'M', '1998-02-02', 3, 9, 25, 'Reading', '807-Chrysanthemum.jpg', 'dfsdf'),
(84, 'dfsf', 'F', '1998-02-02', 1, 2, 5, 'Reading', '606-Koala.jpg', 'fgd'),
(86, 'tushar', 'M', '1998-02-02', 1, 3, 10, 'Reading', '403-Tulips.jpg', 'uyiyui'),
(92, 'tushar', 'M', '1998-02-02', 2, 4, 10, 'Reading', '504-Desert.jpg', 'wsd'),
(93, 'tushar', 'M', '1998-02-02', 3, 8, 24, 'Reading', '620-Penguins.jpg', 'hjgh'),
(94, 'tushar', 'M', '1998-02-02', 2, 4, 10, 'Reading', '222-Desert.jpg', 'bnv'),
(95, 'tushar', 'M', '1998-02-02', 2, 5, 13, 'Reading', '334-Lighthouse.jpg', 'hgf'),
(96, 'deena', 'M', '2015-02-05', 2, 5, 14, 'Reading', '957-Koala.jpg', 'hgfh'),
(101, 'tushar', 'M', '1998-02-02', 2, 6, 16, 'Reading,Writing', '514-Jellyfish.jpg', 'm'),
(102, 'deena', 'F', '1998-02-02', 1, 2, 5, 'Reading,Writing', '692-Lighthouse.jpg', 'nmbnm'),
(103, 'pragna', 'M', '1991-06-21', 1, 1, 2, 'Writing,Drawing', '633-Chrysanthemum.jpg', 'test'),
(138, 'pragna', 'F', '1991-06-21', 2, 6, 17, 'Writing,Swmming', '633_Jellyfish.jpg', 'n'),
(141, 'hgh', 'F', '1991-06-21', 2, 6, 17, 'Writing,Swmming', '514_Chrysanthemum.jpg', 'ji');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_state`
--

CREATE TABLE IF NOT EXISTS `tbl_state` (
  `state_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `state_name` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_state`
--

INSERT INTO `tbl_state` (`state_id`, `country_id`, `state_name`) VALUES
(1, 1, 'Maharastra'),
(2, 1, 'Gujarat'),
(3, 1, 'Rajsthan'),
(4, 2, 'California'),
(5, 2, 'Florida'),
(6, 2, 'New Jersey'),
(7, 3, 'Cardiff'),
(8, 3, 'Derby'),
(9, 3, 'Hereford');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '10',
  `api_token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `status`, `api_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'QrwFW6-_q8_m0TpcgrTSfchqOxKX_f1G', '$2y$13$/DWzT/QvcCNylPbRyS5Po.zvRimbP4OnnR.TpVzqaPwKcdXleGFPG', NULL, 'admin@admin.com', 10, 'QrwFW6-_q8_m0TpcgrTSfchqOxKX_f1G', 1464290881, 1464290881);

-- --------------------------------------------------------

--
-- Table structure for table `user1`
--

CREATE TABLE IF NOT EXISTS `user1` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `age` int(2) NOT NULL,
  `createdAt` date NOT NULL,
  `updatedAt` date NOT NULL,
  `test` bigint(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user1`
--

INSERT INTO `user1` (`id`, `name`, `age`, `createdAt`, `updatedAt`, `test`) VALUES
(1, '', 0, '0000-00-00', '0000-00-00', 127),
(2, 'd', 10, '0000-00-00', '0000-00-00', 127),
(3, '', 0, '0000-00-00', '0000-00-00', 127),
(4, 'g', 10, '0000-00-00', '0000-00-00', 127),
(5, 'd', 10, '0000-00-00', '0000-00-00', 126),
(6, 'f', 12, '0000-00-00', '0000-00-00', 9999999999999);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'test', 'test@test.com', '$2y$10$xDugc8hHq4pj..64bBuqouDn8s9oQBgfepxfJv5IxDWUJQunzVyWG', 'X7Z442B8ODjiMcpcneYSNWv11EOpbKrFo21KoNhg3ezYQMympvLMi8a67fih', '2017-12-19 01:15:06', '2017-12-19 01:15:06');

-- --------------------------------------------------------

--
-- Table structure for table `users_old`
--

CREATE TABLE IF NOT EXISTS `users_old` (
  `id` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `api_token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users_old`
--

INSERT INTO `users_old` (`id`, `email`, `password_hash`, `api_token`, `created_at`, `updated_at`) VALUES
(1, 'admin@admin.com', '$2y$13$/DWzT/QvcCNylPbRyS5Po.zvRimbP4OnnR.TpVzqaPwKcdXleGFPG', 'QrwFW6-_q8_m0TpcgrTSfchqOxKX_f1G', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'test@test.com', '$2y$10$GYRQX0eHnOBEh2UIa2rauu1ZI3Ff14D12MdGudgpp9dpN5ZAO3r5C', 'dBD5YOp7ynhRpou9wrJllCfhQvKiverf', '2017-01-27 08:30:00', '2017-01-27 08:30:00'),
(8, 'test1@test1.com', '$2y$10$6s8lHjcaotAJ0dlcMAA.YeeaJUBwwYVkPRFaFq4Ik3aHvM8QFdmZy', 'mdfy5QxtrGCjCzrHkRtJOnIYMuAxr250', '2017-01-27 09:30:27', '2017-01-27 09:30:27'),
(10, 'devloper@devloper.com', '$2y$10$A1bcI0M8ekby/kvdhgqWg.hZ.tghlGRbqsHuLAXyATeE.3YNcYgeG', 'ufglzk9wlZQdpWFRQpurg6ErKfZNTzQ0', '2017-01-27 11:19:16', '2017-01-27 11:19:16');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stud_reg`
--
ALTER TABLE `stud_reg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_city`
--
ALTER TABLE `tbl_city`
  ADD PRIMARY KEY (`city_id`);

--
-- Indexes for table `tbl_country`
--
ALTER TABLE `tbl_country`
  ADD PRIMARY KEY (`country`);

--
-- Indexes for table `tbl_registration`
--
ALTER TABLE `tbl_registration`
  ADD PRIMARY KEY (`reg_id`);

--
-- Indexes for table `tbl_state`
--
ALTER TABLE `tbl_state`
  ADD PRIMARY KEY (`state_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `password_reset_token` (`password_reset_token`);

--
-- Indexes for table `user1`
--
ALTER TABLE `user1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_old`
--
ALTER TABLE `users_old`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `stud_reg`
--
ALTER TABLE `stud_reg`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tbl_city`
--
ALTER TABLE `tbl_city`
  MODIFY `city_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `tbl_country`
--
ALTER TABLE `tbl_country`
  MODIFY `country` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `tbl_registration`
--
ALTER TABLE `tbl_registration`
  MODIFY `reg_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=142;
--
-- AUTO_INCREMENT for table `tbl_state`
--
ALTER TABLE `tbl_state`
  MODIFY `state_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `user1`
--
ALTER TABLE `user1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `users_old`
--
ALTER TABLE `users_old`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
