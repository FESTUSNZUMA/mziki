-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Sep 13, 2022 at 07:17 PM
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

-- --------------------------------------------------------

--
-- Table structure for table `artists`
--

DROP TABLE IF EXISTS `artists`;
CREATE TABLE IF NOT EXISTS `artists` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `artists`
--

INSERT INTO `artists` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'G-eazy', '2022-07-24 17:09:35', '2022-07-24 17:09:35'),
(2, 'Otile Brown', '2022-07-24 17:09:35', '2022-07-24 17:09:35'),
(3, 'Kenny Rogers', '2022-08-21 15:03:01', '2022-08-21 15:03:01'),
(4, 'Dolly Patron', '2022-08-21 15:03:01', '2022-08-21 15:03:01'),
(5, 'Kaligraph Jones', '2022-08-21 15:04:13', '2022-08-21 15:04:13');

-- --------------------------------------------------------

--
-- Table structure for table `genres`
--

DROP TABLE IF EXISTS `genres`;
CREATE TABLE IF NOT EXISTS `genres` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `genres`
--

INSERT INTO `genres` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Hip Hop', '2022-07-24 17:06:25', '2022-07-24 17:06:25'),
(2, 'Bongo', '2022-07-24 17:06:25', '2022-07-24 17:06:25'),
(6, 'Riddim', '2022-07-31 06:56:13', '2022-07-31 06:56:13'),
(5, 'Reggea', '2022-07-31 06:56:13', '2022-07-31 06:56:13'),
(7, 'Country Music', '2022-07-31 07:38:14', '2022-07-31 07:38:14'),
(8, 'Christian And Goslpel', '2022-07-31 07:38:14', '2022-07-31 07:38:14'),
(9, 'R&B /Soul', '2022-07-31 07:39:18', '2022-07-31 07:39:18'),
(10, 'Afropop & AfroFusion', '2022-07-31 07:39:18', '2022-07-31 07:39:18'),
(11, 'Pop', '2022-07-31 07:39:18', '2022-07-31 07:39:18'),
(12, 'Electonic Dance', '2022-07-31 07:43:06', '2022-07-31 07:43:06'),
(13, 'Jazz', '2022-07-31 07:43:06', '2022-07-31 07:43:06'),
(14, 'World Music', '2022-07-31 07:43:06', '2022-07-31 07:43:06'),
(15, 'Newage', '2022-07-31 07:43:06', '2022-07-31 07:43:06'),
(16, 'Children Music', '2022-07-31 07:43:06', '2022-07-31 07:43:06'),
(17, 'Reggea', '2022-07-31 06:56:13', '2022-07-31 06:56:13'),
(18, 'Riddim', '2022-07-31 06:56:13', '2022-07-31 06:56:13'),
(19, 'Country Music', '2022-07-31 07:38:14', '2022-07-31 07:38:14'),
(20, 'Christian And Goslpel', '2022-07-31 07:38:14', '2022-07-31 07:38:14'),
(21, 'R&B /Soul', '2022-07-31 07:39:18', '2022-07-31 07:39:18'),
(22, 'Afropop & AfroFusion', '2022-07-31 07:39:18', '2022-07-31 07:39:18'),
(23, 'Pop', '2022-07-31 07:39:18', '2022-07-31 07:39:18'),
(24, 'Electonic Dance', '2022-07-31 07:43:06', '2022-07-31 07:43:06'),
(25, 'Jazz', '2022-07-31 07:43:06', '2022-07-31 07:43:06'),
(26, 'World Music', '2022-07-31 07:43:06', '2022-07-31 07:43:06'),
(27, 'Newage', '2022-07-31 07:43:06', '2022-07-31 07:43:06'),
(28, 'Children Music', '2022-07-31 07:43:06', '2022-07-31 07:43:06'),
(29, 'Tradition', '2022-07-31 07:43:06', '2022-07-31 07:43:06'),
(30, 'Comed', '2022-07-31 07:43:06', '2022-07-31 07:43:06');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(16, '2014_10_12_000000_create_users_table', 1),
(17, '2014_10_12_100000_create_password_resets_table', 1),
(18, '2022_07_24_093900_create_songs_table', 1),
(19, '2022_07_24_094231_create_artists_table', 1),
(20, '2022_07_24_094305_create_genres_table', 1),
(21, '2022_07_24_094316_create_albums_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `songs`
--

DROP TABLE IF EXISTS `songs`;
CREATE TABLE IF NOT EXISTS `songs` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `artist_id` int(11) NOT NULL,
  `album_id` int(11) NOT NULL,
  `genre_id` int(11) NOT NULL,
  `path` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `plays` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `songs`
--

INSERT INTO `songs` (`id`, `title`, `artist_id`, `album_id`, `genre_id`, `path`, `plays`, `created_at`, `updated_at`) VALUES
(1, 'Getbackup Ft Eminem', 1, 1, 1, '\\assets\\music\\Getbackup Ft Eminem.mp3', 0, '2022-07-24 16:18:06', '2022-07-24 16:18:06'),
(4, 'Kenny rodgers- the_vows_go_unbroken', 3, 2, 7, '\\assets\\music\\Kenny rodgers- the_vows_go_unbroken.mp3', 0, '2022-08-21 15:16:58', '2022-08-21 15:16:58'),
(3, 'I mean it.mp3', 1, 1, 1, '\\assets\\music\\I mean it.mp3', 0, '2022-07-24 16:18:06', '2022-07-24 16:18:06'),
(5, 'Kenny rodgers- the_vows_go_unbroken', 3, 2, 7, '\\assets\\music\\Kenny rodgers- the_vows_go_unbroken.mp3', 0, '2022-08-21 15:16:58', '2022-08-21 15:16:58'),
(6, 'Kenny rogers- Reuben James', 3, 2, 7, '\\assets\\music\\Kenny rogers- Reuben James.mp3', 0, '2022-08-21 15:16:58', '2022-08-21 15:16:58'),
(7, 'Family', 4, 3, 7, '\\assets\\music\\282dolly_parton-family_mp3_17181.mp3', 0, '2022-09-13 07:19:36', '2022-09-13 07:19:36'),
(8, 'South Carolina', 4, 3, 7, '\\assets\\music\\283dolly_parton_in_the_sweet_by_and_by_scenic_south_carolina_mp3_17399.mp3', 0, '2022-09-13 07:19:36', '2022-09-13 07:19:36'),
(9, 'Jolene', 4, 3, 7, '\\assets\\music\\285dolly_parton_jolene_mp3_55295000.mp3', 0, '2022-09-13 07:24:42', '2022-09-13 07:24:42'),
(10, 'Mama say a Prayer', 4, 3, 7, '\\assets\\music\\287dolly_parton_mama_say_a_prayer_mp3_17922000.mp3\r\n', 0, '2022-09-13 07:24:42', '2022-09-13 07:24:42'),
(11, 'Woman', 2, 4, 2, '\\assets\\music\\woman.mp3', 0, '2022-09-13 07:41:28', '2022-09-13 07:41:28'),
(12, 'Regina', 2, 4, 2, '\\assets\\music\\regina.mp3', 0, '2022-09-13 07:41:28', '2022-09-13 07:41:28'),
(13, 'Watoto na pombe', 2, 4, 2, '\\assets\\music\\Watoto Na Pombe.mp3', 0, '2022-09-13 07:47:19', '2022-09-13 07:47:19'),
(14, 'I need you', 2, 5, 2, '\\assets\\music\\I need you.mp3', 0, '2022-09-13 07:51:54', '2022-09-13 07:51:54'),
(15, 'Aisha', 2, 5, 2, '\\assets\\music\\Aisha.mp3', 0, '2022-09-13 07:51:54', '2022-09-13 07:51:54');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'i2021642016', 'festusfarah@gmail.com', '12345', NULL, '2022-09-10 11:57:52', '2022-09-10 11:57:52'),
(2, 'farhat', 'bartsimpson@gmail.com', '$2y$10$iS9O29canPfeP6hhX1hXKuBdHiIxHO0rPjM5OxlvDiIMl1j1Z6.g2', NULL, '2022-09-10 14:05:07', '2022-09-10 14:05:07'),
(3, 'isaac', 'isaacmwangi@gmail.com', '$2y$10$IQnrTqWJrb./zMiBf0o5E.ZGVsp8ZsxfcSo5MrJrYSstONs4F46SC', NULL, '2022-09-10 14:05:51', '2022-09-10 14:05:51'),
(4, 'kamau', 'kmau@gmail.com', '$2y$10$U9LWQKn9lVGwIlu91CC1T.upxGL.mAfQYGEI6tNvpWgncGujS.yNi', NULL, '2022-09-13 06:30:53', '2022-09-13 06:30:53'),
(5, 'bart', 'homersimpson@gmail.com', '$2y$10$hrrwE7OWNfcRCBk/gUQpm.05vPJkHoWiX5bGoeC24zGo3YnysDG.W', NULL, '2022-09-13 06:46:13', '2022-09-13 06:46:13'),
(6, 'farhat', 'fes@gmail.com', '$2y$10$bCRGULezR2DC1TT0LdWmp.T3JjJty1k9yxQs69clf3hpE3mdWtLxy', NULL, '2022-09-13 06:55:00', '2022-09-13 06:55:00');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
