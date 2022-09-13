-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Sep 13, 2022 at 07:13 PM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mziki`
--

-- --------------------------------------------------------

--
-- Table structure for table `albums`
--

DROP TABLE IF EXISTS `albums`;
CREATE TABLE IF NOT EXISTS `albums` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `artist_id` int(11) NOT NULL,
  `genre_id` int(11) NOT NULL,
  `album_image` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `albums`
--

INSERT INTO `albums` (`id`, `title`, `artist_id`, `genre_id`, `album_image`, `created_at`, `updated_at`) VALUES
(1, 'Must  be Nice', 1, 1, '\\assets\\images\\artwork\\must_be_nice.jpg', '2022-07-24 17:10:26', '2022-07-24 17:10:26'),
(2, 'Gambler', 3, 7, '\\assets\\images\\artwork\\clearday.jpg', '2022-08-21 15:09:34', '2022-08-21 15:09:34'),
(3, 'Joylene', 4, 7, '\\assets\\images\\artwork\\joylene.jpg', '2022-08-21 15:09:34', '2022-08-21 15:09:34'),
(4, 'Just in Love', 2, 2, '\\assets\\images\\artwork\\just_in_love.jpg', '2022-09-13 07:39:23', '2022-09-13 07:39:23'),
(5, 'Uptown Flex', 2, 2, '\\assets\\images\\artwork\\uptown_flex.jpg', '2022-09-13 07:39:23', '2022-09-13 07:39:23');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
