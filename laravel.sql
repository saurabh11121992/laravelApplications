-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 24, 2017 at 08:42 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel`
--

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
(3, '2017_06_10_085955_create_tasks_table', 2),
(4, '2017_06_10_144417_add_user_id_to_tasks', 3),
(5, '2017_06_10_191545_add_image_to_tasks', 4);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `createdby` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`id`, `name`, `createdby`, `created_at`, `updated_at`, `user_id`, `image`) VALUES
(1, 'Relience Jio', 'Mukesh Ambani', '2017-06-10 08:28:14', '2017-06-10 08:28:14', 1, ''),
(2, 'Idea Celluler', 'Aditya Birla', '2017-06-10 08:28:50', '2017-06-10 08:28:50', 2, ''),
(4, 'Airtel', 'Bharti Airtel', '2017-06-10 09:20:57', '2017-06-10 09:20:57', 1, ''),
(5, 'Docomo', 'Nothing', '2017-06-10 12:41:44', '2017-06-10 12:41:44', 2, ''),
(6, 'Sharma Industries', 'Saurabh Sharma', '2017-06-10 12:42:17', '2017-06-10 12:42:17', 2, ''),
(8, 'Image Upload', 'Saurabh Sharma', NULL, NULL, 2, '1497122425.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Saurabh Sharma', 'saurabhsharma@gmail.com', '$2y$10$9XrRPJlH.D7Cku666Zyzk.ze7LWeU0LoidKXEbYtIHUVDqoRxcbCG', 'xat7fo49N5KahXG1OtaQzCmXmvcJIvseVjqEPybAmZQwFPtU3uEFoYXMt5Ys', '2017-06-10 03:57:24', '2017-06-10 03:57:24'),
(2, 'saurabh kumar', 'syon.saurabh@gmail.com', '$2y$10$ripguSV3qjLST/xNxBjOMePQz0dR0LvgmQcyO4hqk3dfWfofxcYBm', '7V360zXZrwNJIMyT7JaidiyBdlTBvjRMcI25VLQHi18WDCZ7GHYU9NSaFbxA', '2017-06-10 08:46:09', '2017-06-10 08:46:09'),
(3, 'saurabh kumar', 'saurabhsyon@gmail.com', '$2y$10$WnqSHvTQXENFduVfxKhfKObkDDtyOdgoNkwpS/BEjlh8ZhHvsuzeC', 'hWOItno1fhrECcioq1ocMwF7jEXlKDjeXEBp7xVAL3j3ELHyOaCld9fERWbk', '2017-06-10 08:48:54', '2017-06-10 08:48:54');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
