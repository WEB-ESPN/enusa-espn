-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 03, 2023 at 08:35 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `enusa`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `header_image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `code`, `title`, `image`, `header_image`, `created_at`, `updated_at`) VALUES
(5, 'test', 'Test', 'storage/images/category/1698308896back_new_product.png', 'storage/images/category/1698308727asian-woman-wearing-vietnam-culture-traditional-strawberry-garden-doi-ang-khang-chiang-mai-thailand.jpg', '2023-10-26 08:25:27', '2023-10-26 08:28:16'),
(6, 'spices', 'Spices', 'storage/images/category/1698309463SPICES 2.png', 'storage/images/category/1698309463INDONESIA SPECIALTY.png', '2023-10-26 08:37:43', '2023-10-26 08:37:43');

-- --------------------------------------------------------

--
-- Table structure for table `contact_us_inquiries`
--

CREATE TABLE `contact_us_inquiries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `product` varchar(255) DEFAULT NULL,
  `product_type` varchar(255) DEFAULT NULL,
  `business_name` varchar(255) DEFAULT NULL,
  `brand_name` varchar(255) DEFAULT NULL,
  `contact_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `sub_distric` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `additional_detail` text DEFAULT NULL,
  `type` enum('supplier','customer') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact_us_inquiries`
--

INSERT INTO `contact_us_inquiries` (`id`, `company_name`, `product`, `product_type`, `business_name`, `brand_name`, `contact_name`, `email`, `phone_number`, `country`, `city`, `sub_distric`, `category`, `additional_detail`, `type`, `created_at`, `updated_at`) VALUES
(11, 'test', NULL, NULL, 'test', 'test', 'test', 'test@test.id', '09181781717172', 'test', 'test', 'test', NULL, 'test', 'supplier', '2023-10-30 07:54:40', '2023-10-30 07:54:40'),
(14, 'Test', NULL, NULL, 'Test', 'Test', 'Test', 'Test@test.id', '081231045667', 'Test', 'Test', 'Test', NULL, 'Test', 'supplier', '2023-10-30 08:08:05', '2023-10-30 08:08:05'),
(18, NULL, 'Test', NULL, 'Test', NULL, 'Test', 'Test@gmail.com', '081234567554', 'Test', 'Test', 'Test', 'Test', 'Test', 'customer', '2023-10-31 03:00:28', '2023-10-31 03:00:28'),
(20, NULL, 'test', NULL, 'test', NULL, 'test', 'test@gmail.com', '081234567889', 'test', 'test', 'test', 'test', 'test', 'customer', '2023-10-31 03:39:02', '2023-10-31 03:39:02'),
(21, NULL, 'test', NULL, 'test', NULL, 'test', 'test@test.com', '084563895667', 'test', 'test', 'test', 'test', 'test', 'customer', '2023-10-31 03:46:02', '2023-10-31 03:46:02'),
(23, NULL, 'coba', NULL, 'coba', NULL, 'coba', 'coba@gmail.com', '081342567889', 'coba', 'coba', 'coba', 'coba', 'coba', 'customer', '2023-10-31 04:19:47', '2023-10-31 04:19:47'),
(24, NULL, 'test', NULL, 'test', NULL, 'test', 'test@gmail.com', '082278908765', 'test', 'test', 'test', 'test', 'test', 'customer', '2023-10-31 07:07:10', '2023-10-31 07:07:10');

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
-- Table structure for table `home_settings`
--

CREATE TABLE `home_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `content` text DEFAULT NULL,
  `file_name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_settings`
--

INSERT INTO `home_settings` (`id`, `key`, `title`, `description`, `content`, `file_name`, `created_at`, `updated_at`) VALUES
(3, 'payment_method', 'Cash', NULL, 'Cash', NULL, '2023-10-13 23:15:45', '2023-10-13 23:15:45'),
(4, 'payment_method', 'Credit', NULL, 'Credit', NULL, '2023-10-13 23:16:08', '2023-10-13 23:16:08'),
(5, 'contact_us', 'address', NULL, 'Wisma 46-Kota BNI, Lantai 39, Jl. Jendral Sudirman Kav. 1', NULL, '2023-10-15 21:16:53', '2023-10-15 21:16:53'),
(6, 'contact_us', 'email', NULL, 'nusantara@elevenia.co.id', NULL, '2023-10-15 21:17:18', '2023-10-15 21:17:33'),
(7, 'home_slider', 'data 1', NULL, 'bibib', 'storage/images/home_setting/1697431250slider-home-01.png', '2023-10-15 21:40:50', '2023-10-15 21:40:50'),
(8, 'home_slider', 'efew', NULL, 'ewfewf', 'storage/images/home_setting/1697431458slider-home-3.png', '2023-10-15 21:44:18', '2023-10-15 21:44:18'),
(9, 'email_inquiry', 'Nama', NULL, 'email@email.id', NULL, '2023-10-15 23:49:10', '2023-10-30 07:18:42'),
(12, 'header_title', 'title', NULL, 'Welcome', NULL, '2023-10-17 07:11:35', '2023-10-17 07:54:05'),
(13, 'header_description', 'description', NULL, 'We Focus to help local businesses that specify the products on raw materials local comodities and ingredient platforms to empower and expand sales through domestic and global markets', NULL, '2023-10-17 07:11:52', '2023-10-17 07:11:52'),
(15, 'header_image', 'image', NULL, NULL, 'storage/images/home_setting/1698117375header-home.png', '2023-10-23 06:19:23', '2023-10-24 03:16:15'),
(17, 'pdf', 'pdf', NULL, NULL, 'storage/images/home_setting/1698310474ESPN_TANTANGAN BISNIS EKSPOR HASIL USAHA PEDESAAN 2.pdf', '2023-10-23 09:53:12', '2023-10-26 08:54:34'),
(22, 'email_inquiry', 'inquiry@elevenia.co.id', NULL, 'inquiry@elevenia.co.id', 'storage/images/home_setting/1698308869back 1.png', '2023-10-26 08:27:50', '2023-10-31 03:45:14');

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
(23, '2014_10_12_000000_create_users_table', 1),
(24, '2014_10_12_100000_create_password_resets_table', 1),
(25, '2019_08_19_000000_create_failed_jobs_table', 1),
(26, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(27, '2023_10_06_035707_create_categories_table', 1),
(28, '2023_10_06_035720_create_products_table', 1),
(29, '2023_10_06_040316_create_home_settings_table', 1),
(30, '2023_10_13_042144_create_product_inquiries_table', 1),
(31, '2023_10_13_070524_create_contact_us_inquiries_table', 1);

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
(8, 'App\\Models\\User', 3, 'auth-token', '4eca752ded5f65bdc62506e37e5b5c42967dc0c62d5842b7e244ae2ea4942c8c', '[\"*\"]', '2023-10-18 09:22:06', NULL, '2023-10-18 09:21:38', '2023-10-18 09:22:06'),
(21, 'App\\Models\\User', 4, 'auth-token', '2b8c08f281f66a35aa028e13338f86f2706be8db0e39d0bf55449da95b344ce5', '[\"*\"]', '2023-10-26 08:54:34', NULL, '2023-10-26 08:21:55', '2023-10-26 08:54:34'),
(22, 'App\\Models\\User', 4, 'auth-token', 'a5a6a5d0f768d6ca4bc35c97ec674d2277ba2b5d44a3b27ae1591bc69b7dc261', '[\"*\"]', '2023-10-30 08:06:59', NULL, '2023-10-30 07:16:38', '2023-10-30 08:06:59'),
(23, 'App\\Models\\User', 4, 'auth-token', '1f03f65074570e6916753e328437ec454391ea9890f4ae083013b71f13bc0698', '[\"*\"]', '2023-10-31 04:19:19', NULL, '2023-10-31 03:44:43', '2023-10-31 04:19:19'),
(24, 'App\\Models\\User', 4, 'auth-token', '6c3e1de89fda2316ebc1883f881ce9ac094e02fd24b9412b0be5549ce53e3e8a', '[\"*\"]', '2023-10-31 07:01:43', NULL, '2023-10-31 07:01:34', '2023-10-31 07:01:43');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `code` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `code`, `title`, `description`, `image`, `created_at`, `updated_at`) VALUES
(4, 6, 'black-paper', 'Black paper', 'black paper', 'storage/images/product/1698309638Black Pepper.jpg', '2023-10-26 08:40:38', '2023-10-26 08:40:38');

-- --------------------------------------------------------

--
-- Table structure for table `product_inquiries`
--

CREATE TABLE `product_inquiries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_number` varchar(255) NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `sub_distric` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `payment_method` varchar(255) DEFAULT NULL,
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
(4, 'admin', 'admin@admin.com', NULL, '$2y$10$drinyIFw3g/5leELDynneeHTeDPbHo1zm3tAN6etSHTHJXn3SM35q', NULL, '2023-10-18 09:28:14', '2023-10-18 09:28:42');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_us_inquiries`
--
ALTER TABLE `contact_us_inquiries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `home_settings`
--
ALTER TABLE `home_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

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
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Indexes for table `product_inquiries`
--
ALTER TABLE `product_inquiries`
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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `contact_us_inquiries`
--
ALTER TABLE `contact_us_inquiries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `home_settings`
--
ALTER TABLE `home_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `product_inquiries`
--
ALTER TABLE `product_inquiries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
