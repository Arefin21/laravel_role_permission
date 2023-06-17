-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 17, 2023 at 08:02 PM
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
-- Database: `role_permission_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `username`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'supersdmin', 'superadmin@gmail.com', 'superadmin', NULL, '$2y$10$xG29eHeFHT3779d761vCGehd5zU04zKPq7oJ.o82pqrPoXUXoUnBO', NULL, '2023-05-29 12:58:27', '2023-05-29 12:58:27'),
(2, 'admin1', 'admin1@admin.com', 'admin', NULL, '$2y$10$3EO5x./p.go2ZCrWXXV5t.9IHKSeGuqdvJk8.TBuG89t5eNB/iQmC', NULL, '2023-06-02 07:44:30', '2023-06-02 07:44:30'),
(3, 'Client', 'client@gmail.com', 'client', NULL, '$2y$10$4Gmvohl3rKpOxPP15mLTU.hl6vF9RGGurbx1cTPDKurTFH6ZTjod6', NULL, '2023-06-03 00:10:27', '2023-06-03 00:10:27');

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
(11, '2014_10_12_000000_create_users_table', 1),
(12, '2014_10_12_100000_create_password_resets_table', 1),
(13, '2019_08_19_000000_create_failed_jobs_table', 1),
(14, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(15, '2023_05_15_065002_create_permission_tables', 1),
(16, '2023_05_29_185113_create_admins_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 3),
(2, 'App\\Models\\Admin', 2),
(2, 'App\\Models\\User', 3),
(3, 'App\\Models\\User', 3),
(7, 'App\\Models\\Admin', 3);

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
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `group_name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `group_name`, `created_at`, `updated_at`) VALUES
(1, 'dashboard.view', 'admin', 'dashboard', '2023-05-22 04:19:11', '2023-05-22 04:19:11'),
(2, 'dashboard.edit', 'admin', 'dashboard', '2023-05-22 04:19:11', '2023-05-22 04:19:11'),
(3, 'blog.create', 'admin', 'blog', '2023-05-22 04:19:11', '2023-05-22 04:19:11'),
(4, 'blog.view', 'admin', 'blog', '2023-05-22 04:19:11', '2023-05-22 04:19:11'),
(5, 'blog.edit', 'admin', 'blog', '2023-05-22 04:19:11', '2023-05-22 04:19:11'),
(6, 'blog.delete', 'admin', 'blog', '2023-05-22 04:19:11', '2023-05-22 04:19:11'),
(7, 'blog.approve', 'admin', 'blog', '2023-05-22 04:19:11', '2023-05-22 04:19:11'),
(8, 'admin.create', 'admin', 'admin', '2023-05-22 04:19:11', '2023-05-22 04:19:11'),
(9, 'admin.view', 'admin', 'admin', '2023-05-22 04:19:11', '2023-05-22 04:19:11'),
(10, 'admin.edit', 'admin', 'admin', '2023-05-22 04:19:11', '2023-05-22 04:19:11'),
(11, 'admin.delete', 'admin', 'admin', '2023-05-22 04:19:11', '2023-05-22 04:19:11'),
(12, 'admin.approve', 'admin', 'admin', '2023-05-22 04:19:11', '2023-05-22 04:19:11'),
(13, 'role.create', 'admin', 'role', '2023-05-22 04:19:12', '2023-05-22 04:19:12'),
(14, 'role.view', 'admin', 'role', '2023-05-22 04:19:12', '2023-05-22 04:19:12'),
(15, 'role.edit', 'admin', 'role', '2023-05-22 04:19:12', '2023-05-22 04:19:12'),
(16, 'role.delete', 'admin', 'role', '2023-05-22 04:19:12', '2023-05-22 04:19:12'),
(17, 'role.approve', 'admin', 'role', '2023-05-22 04:19:12', '2023-05-22 04:19:12'),
(18, 'profile.view', 'admin', 'profile', '2023-05-22 04:19:12', '2023-05-22 04:19:12'),
(19, 'profile.edit', 'admin', 'profile', '2023-05-22 04:19:12', '2023-05-22 04:19:12');

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'superadmin', 'admin', '2023-05-22 04:19:11', '2023-05-22 04:19:11'),
(2, 'admin', 'admin', '2023-05-22 04:19:11', '2023-05-22 04:19:11'),
(3, 'editor', 'admin', '2023-05-22 04:19:11', '2023-05-22 04:19:11'),
(7, 'Client', 'admin', '2023-06-03 00:07:49', '2023-06-03 00:07:49'),
(8, 'adminsuper', 'admin', '2023-06-04 01:43:23', '2023-06-04 01:43:23');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 7),
(1, 8),
(2, 1),
(2, 2),
(2, 3),
(2, 8),
(3, 1),
(3, 2),
(3, 3),
(3, 8),
(4, 1),
(4, 2),
(4, 3),
(4, 7),
(4, 8),
(5, 1),
(5, 2),
(5, 3),
(5, 8),
(6, 1),
(6, 2),
(6, 3),
(6, 8),
(7, 1),
(7, 2),
(7, 3),
(7, 8),
(8, 1),
(8, 8),
(9, 1),
(9, 2),
(9, 3),
(9, 8),
(10, 1),
(10, 3),
(10, 8),
(11, 1),
(11, 3),
(11, 8),
(12, 1),
(12, 3),
(12, 8),
(13, 1),
(13, 2),
(13, 3),
(13, 8),
(14, 1),
(14, 2),
(14, 3),
(14, 7),
(14, 8),
(15, 1),
(15, 3),
(15, 8),
(16, 1),
(16, 3),
(16, 8),
(17, 1),
(17, 3),
(17, 8),
(18, 1),
(18, 3),
(18, 8),
(19, 1),
(19, 3),
(19, 8);

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
(1, 'Arefin', 'arefin@gmail.com', NULL, '$2y$10$4tBtNruxMoBRMzopFef23uKBgqkk6PNqB6k5qDgHg29EDrRDqcvvm', NULL, '2023-05-22 04:19:11', '2023-05-22 04:19:11'),
(2, 'Test', 'admin@admin.com', NULL, '$2y$10$hrHGO0iP7u8H5CvWWqmfSeI5I/vYwp1Ih99fg8sDzO7eBvsDrW52e', NULL, '2023-05-27 02:49:44', '2023-05-27 02:49:44'),
(3, 'test2', 'test@gmail.com', NULL, '$2y$10$jYg60C9L3M8j1XIVpO10KOFpGiQpDIIWrwKPu.STlkFj7LvsqMulq', NULL, '2023-05-27 02:55:10', '2023-05-27 02:55:10'),
(5, 'adminsuper', 'adminsuper@gmail.com', NULL, '$2y$10$5Rc2Y8ZeN/c.Sy4rNYaz/uriSOQePAgg05vyUObEHSbhmay/FDL9.', NULL, '2023-06-04 01:37:14', '2023-06-04 01:37:14');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`),
  ADD UNIQUE KEY `admins_username_unique` (`username`);

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
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

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
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
