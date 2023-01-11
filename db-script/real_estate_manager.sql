-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 11, 2023 at 02:31 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `real_estate_manager`
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
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_01_02_202319_create_real_estates_table', 1),
(6, '2023_01_02_204308_create_type_of_real_estate_table', 1),
(7, '2023_01_03_131454_add_column_user_id_to_real_estates_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 2, 'auth_token', '06e2c1e9396021383b9b4e911801d2e905790d966a3a690da345fd39b2d501c2', '[\"*\"]', NULL, NULL, '2023-01-05 01:10:23', '2023-01-05 01:10:23'),
(2, 'App\\Models\\User', 2, 'auth_token', '086d44732719a10fe605e82bd4b5bbe21d1cd2c401fe28a83b2d449a2c7fccc5', '[\"*\"]', NULL, NULL, '2023-01-05 01:18:36', '2023-01-05 01:18:36'),
(3, 'App\\Models\\User', 2, 'auth_token', 'facbe8d1d163e9dbe760ba9aa5cdbccef8dd34b5c0c637acf92077dd068c7d32', '[\"*\"]', NULL, NULL, '2023-01-05 01:19:45', '2023-01-05 01:19:45'),
(4, 'App\\Models\\User', 2, 'auth_token', '93f9f89096fa2b88b13ba4a06fadc7bf819b7283fd7991439254ec4d0278fe17', '[\"*\"]', NULL, NULL, '2023-01-05 01:21:38', '2023-01-05 01:21:38'),
(5, 'App\\Models\\User', 2, 'auth_token', '0332cd249092bda62a06e8d3190d5fef2f1503aabfe843ba553bfed3447d9d2a', '[\"*\"]', NULL, NULL, '2023-01-05 01:21:44', '2023-01-05 01:21:44'),
(6, 'App\\Models\\User', 2, 'auth_token', 'fe7efea7ec679e6a5feb0d42d257fbed21dc913088ac139e5be520ea0cb29712', '[\"*\"]', NULL, NULL, '2023-01-05 01:36:06', '2023-01-05 01:36:06'),
(7, 'App\\Models\\User', 2, 'auth_token', 'faa6f282a95d210511847ffbdade007099f24c667e632e8c72f8ff97032be8df', '[\"*\"]', '2023-01-05 01:37:43', NULL, '2023-01-05 01:37:21', '2023-01-05 01:37:43'),
(8, 'App\\Models\\User', 2, 'auth_token', 'f81506465139e0aac31936980c4afa49c57ba31576869bf911e311e4e264fd11', '[\"*\"]', '2023-01-05 01:39:57', NULL, '2023-01-05 01:39:40', '2023-01-05 01:39:57'),
(9, 'App\\Models\\User', 2, 'auth_token', '00e432c9374816715d069d7b7cfee549f9960c33782e143d9c5c986de81d6545', '[\"*\"]', NULL, NULL, '2023-01-05 01:40:26', '2023-01-05 01:40:26'),
(10, 'App\\Models\\User', 2, 'auth_token', 'e29897eb3ea3544f77610a09609be9bcd0a49c16ef04585b5f807302c25eb6e2', '[\"*\"]', '2023-01-05 01:42:32', NULL, '2023-01-05 01:41:17', '2023-01-05 01:42:32'),
(11, 'App\\Models\\User', 2, 'auth_token', 'f1031086e6cc3ddf5239cb098db62e7a63b9f5a1f1d57188f053903b8141006d', '[\"*\"]', '2023-01-05 01:52:07', NULL, '2023-01-05 01:44:47', '2023-01-05 01:52:07'),
(12, 'App\\Models\\User', 2, 'auth_token', '7e3266a2815eaf2d31c8dbfd4d142f96e7bfd7d00b6aa978e2c527f845fe8efd', '[\"*\"]', NULL, NULL, '2023-01-05 01:51:25', '2023-01-05 01:51:25'),
(13, 'App\\Models\\User', 3, 'auth_token', 'd0093b822a02285b2a5b63cd2b4ff9fb7ef1c232305d6aa3a26568f6e212e381', '[\"*\"]', NULL, NULL, '2023-01-11 01:50:21', '2023-01-11 01:50:21'),
(14, 'App\\Models\\User', 3, 'auth_token', '2cea2483025b052230c53fa4532425671b9f462cc15bc492a7023207cc0ace49', '[\"*\"]', NULL, NULL, '2023-01-11 01:51:56', '2023-01-11 01:51:56'),
(15, 'App\\Models\\User', 5, 'auth_token', 'd0eef68af88cfd00e3ee3f37fafbabf40702a5e68fb511cb43507f59f6e9f548', '[\"*\"]', NULL, NULL, '2023-01-11 20:56:35', '2023-01-11 20:56:35'),
(16, 'App\\Models\\User', 5, 'auth_token', '4245e9784616b17452af89c5efc77d762186b818382abf18e24431ef84a93f27', '[\"*\"]', NULL, NULL, '2023-01-11 20:57:08', '2023-01-11 20:57:08'),
(17, 'App\\Models\\User', 6, 'auth_token', '3d058bbc4212f78fd744e3f48d4d0b3c4429d92b0d9c64d3e7e3e658888ff4bc', '[\"*\"]', NULL, NULL, '2023-01-11 21:06:12', '2023-01-11 21:06:12'),
(18, 'App\\Models\\User', 6, 'auth_token', '0db6cf8c766015775c13232bcc3978f564613ce8f041128cd4caaa776ef62dd3', '[\"*\"]', '2023-01-11 21:11:01', NULL, '2023-01-11 21:07:07', '2023-01-11 21:11:01');

-- --------------------------------------------------------

--
-- Table structure for table `real_estates`
--

CREATE TABLE `real_estates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `sellingPrice` decimal(8,2) NOT NULL,
  `type_of_real_estate_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `real_estates`
--

INSERT INTO `real_estates` (`id`, `address`, `city`, `sellingPrice`, `type_of_real_estate_id`, `created_at`, `updated_at`, `user_id`) VALUES
(1, 'Krajiska 51', 'Beograd', '120000.00', 1, '2023-01-04 19:04:08', '2023-01-04 19:04:08', 1),
(2, 'Branka Plecasa 18', 'Beograd', '100000.00', 1, '2023-01-04 19:04:08', '2023-01-04 19:04:08', 1),
(3, 'Makedonska 44', 'Kragujevac', '600000.00', 2, '2023-01-04 19:04:08', '2023-01-04 19:04:08', 1),
(4, 'Gavrila Principa', 'Beograd', '45000.00', 3, '2023-01-05 01:45:12', '2023-01-05 01:45:12', 2),
(5, 'Partizanska 18', 'Beograd', '85000.00', 1, '2023-01-11 21:11:02', '2023-01-11 21:11:02', 6);

-- --------------------------------------------------------

--
-- Table structure for table `type_of_real_estates`
--

CREATE TABLE `type_of_real_estates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `type_of_real_estates`
--

INSERT INTO `type_of_real_estates` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Kuca', '2023-01-04 19:04:08', '2023-01-04 19:04:08'),
(2, 'Stan', '2023-01-04 19:04:08', '2023-01-04 19:04:08'),
(3, 'Lokal', '2023-01-04 19:04:08', '2023-01-04 19:04:08');

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
(1, 'Dr. Dortha Mante', 'haley.alexandre@example.org', '2023-01-04 19:04:08', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'TimhoUNh9U', '2023-01-04 19:04:08', '2023-01-04 19:04:08'),
(6, 'Milos', 'miloszarkovic01@gmail.com', NULL, '$2y$10$QVM3N.V21LW0ZabZeXFR8uSNqUkzMTm7Pk810RN.dOotuIv2f8Nci', NULL, '2023-01-11 21:06:12', '2023-01-11 21:06:12');

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
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `real_estates`
--
ALTER TABLE `real_estates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `type_of_real_estates`
--
ALTER TABLE `type_of_real_estates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `type_of_real_estates_name_unique` (`name`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `real_estates`
--
ALTER TABLE `real_estates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `type_of_real_estates`
--
ALTER TABLE `type_of_real_estates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
