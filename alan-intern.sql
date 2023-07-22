-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 22, 2023 at 12:18 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `alan-intern`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jenis_menus`
--

CREATE TABLE `jenis_menus` (
  `id` bigint UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gambar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jenis_menus`
--

INSERT INTO `jenis_menus` (`id`, `nama`, `gambar`, `created_at`, `updated_at`) VALUES
(1, 'Minuman', 'Macey Crooks', '2023-07-21 03:10:01', '2023-07-21 03:10:01'),
(2, 'Makanan', 'Gudrun Klocko', '2023-07-21 03:10:01', '2023-07-21 03:10:01'),
(3, 'Roti', 'Ms. Fay Romaguera Sr.', '2023-07-21 03:10:01', '2023-07-21 03:10:01'),
(4, 'Coklat', 'Pearlie O\'Connell', '2023-07-21 03:10:01', '2023-07-21 03:10:01');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` bigint UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `harga` int NOT NULL,
  `diskon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gambar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_menu_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `nama`, `harga`, `diskon`, `gambar`, `jenis_menu_id`, `created_at`, `updated_at`) VALUES
(43, 'Wilhelmine Jakubowski', 18, NULL, 'c163987ee8fac5ae3e1582bec2563847.png', 3, '2023-07-21 14:10:56', '2023-07-21 14:10:56'),
(45, 'Hermina Greenfelder Jr.', 88, NULL, 'fd87557d6d3121e5aa511bf93da41c79.png', 4, '2023-07-21 14:10:56', '2023-07-21 14:10:56'),
(47, 'Mossie Gerlach', 32, '4', 'c46156b27e29d68ce747fb6df73cc2af.png', 2, '2023-07-21 14:10:56', '2023-07-21 14:10:56'),
(51, 'Dorthy Windler', 10, NULL, '30db046eefbba43d24c04ab4545cbb6d.png', 4, '2023-07-21 14:10:56', '2023-07-21 14:10:56'),
(52, 'Brenna McKenzie', 62, NULL, '99aa3cc2d43d06507d8bfdba3e1d483d.png', 4, '2023-07-21 14:10:56', '2023-07-21 14:10:56'),
(53, 'Jettie Heller', 31, '5', 'dd986ef3dadea6a1aef2f4e53e52e5a0.png', 2, '2023-07-21 14:10:56', '2023-07-21 14:10:56'),
(57, 'Rosalind Gulgowski', 55, '3', '25e1f41366484db8c5e78a40e4611516.png', 3, '2023-07-21 14:10:56', '2023-07-21 14:10:56'),
(58, 'Prof. Ernest Cassin', 28, NULL, 'b2fbd5c8c8f43f0036fad2661444e995.png', 2, '2023-07-21 14:10:56', '2023-07-21 14:10:56'),
(59, 'Rudy Dietrich', 66, NULL, 'b9f017404b28032e12257b487f53e1b2.png', 2, '2023-07-21 14:10:56', '2023-07-21 14:10:56'),
(62, 'Lisette Hoppe', 86, NULL, '76c3299041b4bc6d6a43f581029f8d06.png', 4, '2023-07-21 16:23:25', '2023-07-21 16:23:25'),
(63, 'Gilda Konopelski', 12, NULL, 'dba7602e285f23d33f4f75e577ba0245.png', 4, '2023-07-21 16:23:25', '2023-07-21 16:23:25'),
(64, 'Prof. Jessy Kub Sr.', 97, NULL, '84318dac456eb75aef0deabd678b214e.png', 1, '2023-07-21 16:23:25', '2023-07-21 16:23:25'),
(65, 'Dr. Nathanael Watsica I', 81, NULL, '3a11d36edc71f117b12f6330c0f2f8ee.png', 2, '2023-07-21 16:23:25', '2023-07-21 16:23:25'),
(66, 'Jordan Sauer III', 29, NULL, 'be81ce3fc082fc649a19ef47bfbab9e1.png', 2, '2023-07-21 16:23:25', '2023-07-21 16:23:25'),
(67, 'Myrl Towne V', 78, NULL, 'd5e4adfd203d5019f3a812a5016cfc6d.png', 1, '2023-07-21 16:23:25', '2023-07-21 16:23:25'),
(68, 'Theresia Kemmer', 60, NULL, '2bb7787150362976349a7be65c4eefd7.png', 4, '2023-07-21 16:23:25', '2023-07-21 16:23:25'),
(69, 'Mr. Rory Wiegand DDS', 29, NULL, '965903c20ad5a4c2f5655a5e5e8215ea.png', 4, '2023-07-21 16:23:25', '2023-07-21 16:23:25'),
(70, 'Frieda Mayert', 61, NULL, '47a66f82ec6649984b05258a6c75f4a8.png', 1, '2023-07-21 16:23:25', '2023-07-21 16:23:25'),
(71, 'Prof. Joey Nicolas', 36, NULL, '6e307acecadc084e460b543f4e81427a.png', 4, '2023-07-21 16:23:25', '2023-07-21 16:23:25'),
(72, 'Geovany Bartell', 77, NULL, '47b9f6860c4901885aa2f92535908574.png', 4, '2023-07-21 16:23:25', '2023-07-21 16:23:25'),
(73, 'Annamae Kautzer', 73, NULL, '1c1b11416e79e1b1be76ece7fceae5cf.png', 3, '2023-07-21 16:23:25', '2023-07-21 16:23:25'),
(74, 'Ms. Victoria Bergstrom', 93, NULL, 'f92ea6a99d09a93395af11b4ff754c63.png', 2, '2023-07-21 16:23:25', '2023-07-21 16:23:25'),
(75, 'Cassandra Spencer', 20, NULL, 'b0b1d546a356f61a07546bc0bb01c4e5.png', 1, '2023-07-21 16:23:25', '2023-07-21 16:23:25'),
(76, 'Prof. Macey McKenzie III', 89, NULL, '8f4ceb9726a31a41902b6b48f2d2e951.png', 4, '2023-07-21 16:23:25', '2023-07-21 16:23:25'),
(77, 'Miss Amaya Gerlach II', 11, NULL, '7dccfdbe0798f7f19cf9c75fde869be7.png', 1, '2023-07-21 16:23:25', '2023-07-21 16:23:25'),
(78, 'Porter Kiehn', 46, NULL, '897d51231ab075c13c55551606d37fec.png', 4, '2023-07-21 16:23:25', '2023-07-21 16:23:25'),
(79, 'Alexa Ruecker', 51, NULL, 'ede071dfec327f078f3438dfd9ce6f70.png', 4, '2023-07-21 16:23:25', '2023-07-21 16:23:25'),
(80, 'Mr. Antwon Hansen', 52, NULL, '63946296e1b36591fe71a70dbd4462a8.png', 1, '2023-07-21 16:23:25', '2023-07-21 16:23:25'),
(81, 'Melany Weimann', 52, NULL, 'ac3c6db1d0c54aacf4c3f2c198c9d392.png', 4, '2023-07-21 16:23:25', '2023-07-21 16:23:25');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_07_20_051550_create_jenis_menus_table', 1),
(6, '2023_07_20_051551_create_menus_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
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
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Indexes for table `jenis_menus`
--
ALTER TABLE `jenis_menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menus_jenis_menu_id_foreign` (`jenis_menu_id`);

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
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jenis_menus`
--
ALTER TABLE `jenis_menus`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `menus`
--
ALTER TABLE `menus`
  ADD CONSTRAINT `menus_jenis_menu_id_foreign` FOREIGN KEY (`jenis_menu_id`) REFERENCES `jenis_menus` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
