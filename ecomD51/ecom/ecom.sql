-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 09, 2022 at 12:48 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecom`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `description`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Sony', 'well', 'brand-images/1640770532.jpg', 1, '2021-12-29 03:35:32', '2021-12-29 03:35:32'),
(2, 'Samsung', 'asdasd', '', 1, '2021-12-30 04:57:21', '2021-12-30 04:57:21');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `image`, `status`, `created_at`, `updated_at`) VALUES
(2, 'Woman Fashion', 'well Woman Fashion', 'category-images/1640686591.jpg', 1, '2021-12-28 02:38:52', '2021-12-28 04:16:31'),
(3, 'Man Fashion', 'well', '', 1, '2021-12-28 05:23:21', '2021-12-28 05:23:21'),
(4, 'Electronics', 'well', 'category-images/1640690612.jpg', 1, '2021-12-28 05:23:32', '2021-12-28 05:23:32');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2021_12_26_092948_create_sessions_table', 1),
(7, '2021_12_27_104906_create_categories_table', 2),
(8, '2021_12_28_104214_create_sub_categories_table', 3),
(9, '2021_12_29_091625_create_brands_table', 4),
(10, '2021_12_29_094828_create_units_table', 5),
(11, '2021_12_29_104147_create_products_table', 6),
(12, '2021_12_29_105416_create_sub_images_table', 6);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `sub_category_id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `unit_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `regular_price` double(10,2) NOT NULL,
  `selling_price` double(10,2) NOT NULL,
  `short_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `long_description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `hit_count` int(11) NOT NULL DEFAULT 0,
  `sales_count` int(11) NOT NULL DEFAULT 0,
  `review_count` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `sub_category_id`, `brand_id`, `unit_id`, `name`, `code`, `regular_price`, `selling_price`, `short_description`, `long_description`, `image`, `hit_count`, `sales_count`, `review_count`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 1, 1, 'External Hard Drive', '1001', 5200.00, 4800.00, 'Short Description', '<p>Long Description&nbsp;&nbsp;&nbsp;&nbsp;</p>', 'product-images/1640857979.jpg', 0, 0, 0, 1, '2021-12-30 03:52:59', '2021-12-30 03:52:59'),
(2, 2, 1, 1, 1, 'Eti Aktar', '10013213', 213412.00, 121312.00, 'asdasd', '<p>asdasdsad</p>', 'product-images/1640861315.jpg', 0, 0, 0, 1, '2021-12-30 04:48:35', '2021-12-30 04:48:35'),
(3, 3, 5, 1, 1, 'Nahid', '1235', 123.00, 120.00, 'jhvkjvhjbv', '<p>dghfdgb hfvhrh fd gthdfzgnzh</p>', 'product-images/1641717273.png', 0, 0, 0, 1, '2022-01-09 02:34:33', '2022-01-09 02:34:33'),
(4, 3, 5, 1, 1, 'Nahid', '1235', 123.00, 120.00, 'jhvkjvhjbv', '<p>dghfdgb hfvhrh fd gthdfzgnzh</p>', 'product-images/1641717297.png', 0, 0, 0, 1, '2022-01-09 02:34:57', '2022-01-09 02:34:57');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('55vI6mRr15V2K60OKH4e8767Hb4bjpQIfkkEZMB5', 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.100.4758.9 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiTExxZGoweng3ankxT0hDVHE4SU93TzFYalhKSHpWR1pMNTlIcUxTdiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODI6Imh0dHA6Ly9sb2NhbGhvc3QvTmFoaWRfTkVXL0VDX0xBUkFWRUxfUFJPSkVDVC9lY29tRDUxL2Vjb20vcHVibGljL3Byb2R1Y3QtZGV0YWlsLzIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToyO3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTAkem0ud2lYRVVyMk9vVzIyLi5EeGo4dVVGRlBtMHBJeC8vOXlhS1VjSWVyVXNpTmhTSWx5L1ciO3M6MjE6InBhc3N3b3JkX2hhc2hfc2FuY3R1bSI7czo2MDoiJDJ5JDEwJHptLndpWEVVcjJPb1cyMi4uRHhqOHVVRkZQbTBwSXgvLzl5YUtVY0llclVzaU5oU0lseS9XIjt9', 1641727561);

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `category_id`, `name`, `description`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, 'Shari', 'well Shari', 'sub-category-images/1640691099.jpg', 1, '2021-12-28 05:31:39', '2021-12-28 05:31:39'),
(2, 2, 'Habibur Rahman', 'safdsdaf', 'sub-category-images/1640764504.jpg', 1, '2021-12-29 01:55:04', '2021-12-29 01:55:04'),
(3, 4, 'BITM', 'asd', 'sub-category-images/1640766817.jpg', 1, '2021-12-29 02:33:37', '2021-12-29 02:33:37'),
(4, 2, 'Shoe', 'asdasd', 'sub-category-images/1640861748.jpg', 1, '2021-12-30 04:55:48', '2021-12-30 04:55:48'),
(5, 3, 'T-Shirt', 'asdas', 'sub-category-images/1640861761.jpg', 1, '2021-12-30 04:56:01', '2021-12-30 04:56:01'),
(6, 3, 'Pant', 'awsdasdas', '', 1, '2021-12-30 04:56:16', '2021-12-30 04:56:16'),
(7, 4, 'Mobile', 'asdasd', '', 1, '2021-12-30 04:56:25', '2021-12-30 04:56:25'),
(8, 4, 'Computer Acceories', 'asdasd', '', 1, '2021-12-30 04:56:37', '2021-12-30 04:56:37');

-- --------------------------------------------------------

--
-- Table structure for table `sub_images`
--

CREATE TABLE `sub_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_images`
--

INSERT INTO `sub_images` (`id`, `product_id`, `image`, `created_at`, `updated_at`) VALUES
(1, 1, 'product-sub-images/1640857979.jpg', '2021-12-30 03:52:59', '2021-12-30 03:52:59'),
(2, 1, 'product-sub-images/1640857979.jpg', '2021-12-30 03:52:59', '2021-12-30 03:52:59'),
(3, 1, 'product-sub-images/1640857979.jpg', '2021-12-30 03:52:59', '2021-12-30 03:52:59'),
(4, 2, 'product-sub-images/481640861315.jpg', '2021-12-30 04:48:35', '2021-12-30 04:48:35'),
(5, 2, 'product-sub-images/1821640861315.jpg', '2021-12-30 04:48:35', '2021-12-30 04:48:35'),
(6, 2, 'product-sub-images/3721640861315.jpg', '2021-12-30 04:48:35', '2021-12-30 04:48:35'),
(7, 2, 'product-sub-images/3531640861315.jpg', '2021-12-30 04:48:35', '2021-12-30 04:48:35'),
(8, 4, 'product-sub-images/3841641717297.png', '2022-01-09 02:34:57', '2022-01-09 02:34:57');

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

CREATE TABLE `units` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `units`
--

INSERT INTO `units` (`id`, `name`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Box', 'Box', 1, '2021-12-29 04:05:30', '2021-12-29 04:05:30');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'Habibur Rahman', 'habib@gmail.com', NULL, '$2y$10$ppflEpii65r2x80BATU0c.6qABxQuqy.fKqbPTeu25pZDWAUdArrS', NULL, NULL, NULL, NULL, NULL, '2021-12-26 05:24:10', '2021-12-26 05:24:10'),
(2, 'Nahid', 'hasannahidnazmul@gmail.com', NULL, '$2y$10$zm.wiXEUr2OoW22..Dxj8uUFFPm0pIx//9yaKUcIerUsiNhSIly/W', NULL, NULL, NULL, NULL, NULL, '2022-01-09 02:20:39', '2022-01-09 02:20:39');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_images`
--
ALTER TABLE `sub_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `units`
--
ALTER TABLE `units`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `sub_images`
--
ALTER TABLE `sub_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `units`
--
ALTER TABLE `units`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
