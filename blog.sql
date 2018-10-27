-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 22, 2018 at 03:56 PM
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
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(10) NOT NULL,
  `comment` longtext NOT NULL,
  `postId` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `comment`, `postId`) VALUES
(1, 'bonbin mana?', 1),
(2, 'serius?', 1),
(3, 'ah masa', 1);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(8) NOT NULL,
  `title` varchar(75) NOT NULL,
  `content` longtext NOT NULL,
  `createdBy` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `content`, `createdBy`) VALUES
(1, 'wanita itu diserang kadal saat mengunjungi kebun binatang', 'Seorang perempuan bernyali menantang seekor komodo untuk mengejarnya. Ia mengikatkan sebongkah daging ke tubuhnya, menggoda naga komodo yang langsung mengikuti dirinya.\r\n\r\nAksi nekat itu adalah bagian dari acara televisi.\r\n\r\nAyako Imoto, nama perempuan itu, adalah seorang petualang sekaligus selebritis Jepang. Ia beraksi dengan mengenakan Kimono, pakaian khas Negeri Sakura.\r\n\r\nSaat komodo mulai mengejarnya, Ayako segera membungkuk dan lari. Makin cepat, menghindar dari kejaran hewan buas.\r\n\r\nAyako lari ke arah kerumunan kru yang langsung bubar. Pertolongan lantas datang saat para pawang menenangkan komodo lapar itu dengan tongkat. Berhasil, meski efektifitas cara tersebut dipertanyakan.\r\n\r\nIni adalah aksi kedua Ayako menggoda Komodo. Beberapa tahun lalu ia beraksi mengenakan pakaian sekolah -- yang lebih gampang untuk bergerak dibanding kimono.\r\n\r\nKomodo adalah kadal terbesar di dunia, ia bisa bergerak dengan kecepatan 15 mil per jam, dan mengendus mangsa yang jauhnya beberapa kilometer.\r\n \r\nJangan remehkan Komodo. Gigitan kadal raksasa itu sanggup menelan utuh-utuh mangsanya -- kerbau atau manusia sekalipun -- dan memuntahkan sisa-sisa yang tak dapat ia cerna: rambut dan sebagian tulang. Hewan itu juga bisa bergerak dengan cepat. (Ein/Tnt)', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(5) NOT NULL,
  `username` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`) VALUES
(1, 'Hesa Suryana');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `postId` (`postId`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `createdBy` (`createdBy`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`postId`) REFERENCES `users` (`id`);

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`createdBy`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `posts_ibfk_2` FOREIGN KEY (`createdBy`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
