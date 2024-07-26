-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 16, 2024 at 02:36 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `slide_pdf`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pdf_slides`
--

CREATE TABLE `pdf_slides` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `desc` varchar(200) NOT NULL,
  `attachment` varchar(255) NOT NULL,
  `mode` varchar(200) NOT NULL,
  `view_mode` varchar(200) NOT NULL,
  `initial_zoom` varchar(255) NOT NULL,
  `zoom_step` varchar(100) DEFAULT NULL,
  `double_click_zoom` bigint(20) NOT NULL,
  `single_page` bigint(20) NOT NULL,
  `autoplay_start` bigint(20) NOT NULL,
  `logo_image` varchar(200) NOT NULL,
  `pdf_start` bigint(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pdf_slides`
--

INSERT INTO `pdf_slides` (`id`, `title`, `slug`, `desc`, `attachment`, `mode`, `view_mode`, `initial_zoom`, `zoom_step`, `double_click_zoom`, `single_page`, `autoplay_start`, `logo_image`, `pdf_start`, `created_at`, `updated_at`) VALUES
(1, 'Real 3D', 'real-3d', 'test', 'uploads/logo-image/1720699627.jpg', 'fullscreen', 'swipe', '1', '1.1', 1, 0, 1, 'uploads/logo-image/1720699627.jpg', 1, '2024-07-11 12:07:26', '2024-07-11 06:37:26'),
(2, 'Webglsh', 'webglsh', 'test3', 'uploads/pdf/1720771375.pdf', 'fullscreen', 'simple', '1', '1.1', 1, 0, 0, 'uploads/logo-image/1720771375.jpg', 0, '2024-07-12 09:03:10', '2024-07-12 03:33:10');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Jaden Wests', 'admin@gmail.com', NULL, '$2y$10$8y3XHmtu4z2p7mXIgF3v7.EDCQAXIvzNxLHil.PDBmb2vFx2Lttn2', NULL, '2024-07-11 03:29:57', '2024-07-11 03:29:57'),
(3, 'Neil Buchanan', 'resan@mailinator.com', NULL, '$2y$10$9TTA56iPBi7uBEZIoJeHw.2yr50pwERHsf8ssCIej0KlxCIguV/ea', NULL, '2024-07-16 06:56:17', '2024-07-16 06:56:17'),
(4, 'Berk Haynes', 'setibapot@mailinator.com', NULL, '$2y$10$JOLBxlBX45V0Juf57Hmwe.iSRneGx57Fm1bvewPfbKarbtnJeK9XK', NULL, '2024-07-16 06:57:14', '2024-07-16 06:57:14'),
(5, 'Ariel Horton', 'xeduzep@mailinator.com', NULL, '$2y$10$HJ.dDjbuCQYV64yiS6vho.JM8quBGcAhHO6MCCKuwQJHaI2jtfNf.', NULL, '2024-07-16 07:04:24', '2024-07-16 07:04:24'),
(6, 'Shellie Daniels', 'kiruhalig@mailinator.com', NULL, '$2y$10$e97jGLCYzx1F64By9NC0/.m.CR5yirIWb2ypC3m68oi9Ynr/sQ2oK', NULL, '2024-07-16 07:04:43', '2024-07-16 07:04:43'),
(7, 'Sydney Walker', 'nerumam@mailinator.com', NULL, '$2y$10$5VLmPE4EznrTsIgYCte3hetLCppWSyI1kFMS/Ohy2mGtX8hZoehRa', NULL, '2024-07-16 07:05:44', '2024-07-16 07:05:44');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `pdf_slides`
--
ALTER TABLE `pdf_slides`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pdf_slides`
--
ALTER TABLE `pdf_slides`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
