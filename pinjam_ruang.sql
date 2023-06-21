-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 20, 2023 at 12:39 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pinjam_ruang`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_menu`
--

CREATE TABLE `admin_menu` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `order` int(11) NOT NULL DEFAULT 0,
  `title` varchar(50) NOT NULL,
  `icon` varchar(50) NOT NULL,
  `uri` varchar(191) DEFAULT NULL,
  `permission` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_menu`
--

INSERT INTO `admin_menu` (`id`, `parent_id`, `order`, `title`, `icon`, `uri`, `permission`, `created_at`, `updated_at`) VALUES
(1, 0, 1, 'Dasbor', 'fa-dashboard', '/', NULL, NULL, NULL),
(2, 0, 10, 'Admin', 'fa-tasks', '', NULL, NULL, '2021-08-11 18:34:07'),
(3, 2, 11, 'Users', 'fa-users', 'auth/users', NULL, NULL, '2021-08-11 18:34:07'),
(4, 2, 12, 'Roles', 'fa-user', 'auth/roles', NULL, NULL, '2021-08-11 18:34:07'),
(5, 2, 13, 'Permission', 'fa-ban', 'auth/permissions', NULL, NULL, '2021-08-11 18:34:07'),
(6, 2, 14, 'Menu', 'fa-bars', 'auth/menu', NULL, NULL, '2021-08-11 18:34:07'),
(7, 2, 15, 'Operation log', 'fa-history', 'auth/logs', NULL, NULL, '2021-08-11 18:34:07'),
(8, 0, 5, 'Helpers', 'fa-gears', '', NULL, '2021-08-04 15:20:58', '2021-08-11 18:34:07'),
(9, 8, 6, 'Scaffold', 'fa-keyboard-o', 'helpers/scaffold', NULL, '2021-08-04 15:20:58', '2021-08-11 18:34:07'),
(10, 8, 7, 'Database terminal', 'fa-database', 'helpers/terminal/database', NULL, '2021-08-04 15:20:58', '2021-08-11 18:34:07'),
(11, 8, 8, 'Laravel artisan', 'fa-terminal', 'helpers/terminal/artisan', NULL, '2021-08-04 15:20:58', '2021-08-11 18:34:07'),
(12, 8, 9, 'Routes', 'fa-list-alt', 'helpers/routes', NULL, '2021-08-04 15:20:58', '2021-08-11 18:34:07'),
(13, 0, 2, 'Tipe Ruangan', 'fa-cubes', 'room-types', 'list.room_types', '2021-08-04 15:21:35', '2021-08-11 19:18:40'),
(14, 0, 3, 'Ruangan', 'fa-trello', 'rooms', 'list.rooms', '2021-08-04 15:22:06', '2021-08-11 19:18:21'),
(15, 0, 4, 'Pinjam Ruang', 'fa-calendar', 'borrow-rooms', 'list.borrow_rooms', '2021-08-04 15:22:30', '2021-08-11 19:18:08');

-- --------------------------------------------------------

--
-- Table structure for table `admin_operation_log`
--

CREATE TABLE `admin_operation_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `path` varchar(191) NOT NULL,
  `method` varchar(10) NOT NULL,
  `ip` varchar(191) NOT NULL,
  `input` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_operation_log`
--

INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(1, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-05-13 16:43:53', '2023-05-13 16:43:53'),
(2, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-13 16:44:10', '2023-05-13 16:44:10'),
(3, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-13 16:44:14', '2023-05-13 16:44:14'),
(4, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-13 16:44:16', '2023-05-13 16:44:16'),
(5, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-13 16:44:19', '2023-05-13 16:44:19'),
(6, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-13 16:44:20', '2023-05-13 16:44:20'),
(7, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-13 16:44:23', '2023-05-13 16:44:23'),
(8, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-13 16:44:25', '2023-05-13 16:44:25'),
(9, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-13 16:44:28', '2023-05-13 16:44:28'),
(10, 1, 'admin/room-types', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-13 16:44:30', '2023-05-13 16:44:30'),
(11, 1, 'admin/borrow-rooms', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-13 16:44:36', '2023-05-13 16:44:36'),
(12, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-13 16:44:39', '2023-05-13 16:44:39'),
(13, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-13 16:44:47', '2023-05-13 16:44:47'),
(14, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-05-14 02:57:11', '2023-05-14 02:57:11'),
(15, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-14 02:57:19', '2023-05-14 02:57:19'),
(16, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-14 02:57:24', '2023-05-14 02:57:24'),
(17, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-14 02:57:26', '2023-05-14 02:57:26'),
(18, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"page\":\"3\"}', '2023-05-14 02:57:29', '2023-05-14 02:57:29'),
(19, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-14 02:57:43', '2023-05-14 02:57:43'),
(20, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-14 02:57:45', '2023-05-14 02:57:45'),
(21, 1, 'admin/borrow-rooms', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-14 02:57:53', '2023-05-14 02:57:53'),
(22, 1, 'admin/borrow-rooms/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-14 02:57:58', '2023-05-14 02:57:58'),
(23, 1, 'admin/borrow-rooms', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-14 02:58:07', '2023-05-14 02:58:07'),
(24, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-14 02:58:08', '2023-05-14 02:58:08'),
(25, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-14 02:58:09', '2023-05-14 02:58:09'),
(26, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-14 02:58:11', '2023-05-14 02:58:11'),
(27, 1, 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2023-05-14 02:58:26', '2023-05-14 02:58:26'),
(28, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"page\":\"2\"}', '2023-05-14 02:58:38', '2023-05-14 02:58:38'),
(29, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"page\":\"3\"}', '2023-05-14 02:58:40', '2023-05-14 02:58:40'),
(30, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-14 02:58:48', '2023-05-14 02:58:48'),
(31, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-14 02:58:54', '2023-05-14 02:58:54'),
(32, 1, 'admin/borrow-rooms', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-14 02:58:56', '2023-05-14 02:58:56'),
(33, 1, 'admin/borrow-rooms/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-14 02:59:15', '2023-05-14 02:59:15'),
(34, 1, 'admin/borrow-rooms', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-14 02:59:17', '2023-05-14 02:59:17'),
(35, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-14 02:59:28', '2023-05-14 02:59:28'),
(36, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-14 02:59:31', '2023-05-14 02:59:31'),
(37, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-05-14 02:59:37', '2023-05-14 02:59:37'),
(38, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-05-14 02:59:41', '2023-05-14 02:59:41'),
(39, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-14 02:59:48', '2023-05-14 02:59:48'),
(40, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-05-14 03:00:04', '2023-05-14 03:00:04'),
(41, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-14 03:01:20', '2023-05-14 03:01:20'),
(42, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"page\":\"3\"}', '2023-05-14 03:01:29', '2023-05-14 03:01:29'),
(43, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-05-14 03:01:42', '2023-05-14 03:01:42'),
(44, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-14 03:01:46', '2023-05-14 03:01:46'),
(45, 61, 'admin', 'GET', '127.0.0.1', '[]', '2023-05-14 03:01:49', '2023-05-14 03:01:49'),
(46, 61, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-14 03:01:54', '2023-05-14 03:01:54'),
(47, 61, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-14 03:01:56', '2023-05-14 03:01:56'),
(48, 61, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-14 03:01:57', '2023-05-14 03:01:57'),
(49, 61, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-14 03:01:58', '2023-05-14 03:01:58'),
(50, 61, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-14 03:02:00', '2023-05-14 03:02:00'),
(51, 61, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-14 03:02:01', '2023-05-14 03:02:01'),
(52, 61, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-14 03:02:01', '2023-05-14 03:02:01'),
(53, 61, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-14 03:02:02', '2023-05-14 03:02:02'),
(54, 61, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-14 03:02:03', '2023-05-14 03:02:03'),
(55, 61, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-14 03:02:04', '2023-05-14 03:02:04'),
(56, 61, 'admin/borrow-rooms', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-14 03:02:05', '2023-05-14 03:02:05'),
(57, 61, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-14 03:02:10', '2023-05-14 03:02:10'),
(58, 61, 'admin', 'GET', '127.0.0.1', '[]', '2023-05-14 03:02:17', '2023-05-14 03:02:17'),
(59, 61, 'admin/borrow-rooms', 'GET', '127.0.0.1', '[]', '2023-05-14 03:02:20', '2023-05-14 03:02:20'),
(60, 61, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-14 03:02:23', '2023-05-14 03:02:23'),
(61, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-05-14 03:02:36', '2023-05-14 03:02:36'),
(62, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-14 03:02:43', '2023-05-14 03:02:43'),
(63, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-14 03:02:47', '2023-05-14 03:02:47'),
(64, 61, 'admin', 'GET', '127.0.0.1', '[]', '2023-05-14 03:05:05', '2023-05-14 03:05:05'),
(65, 61, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-14 03:05:10', '2023-05-14 03:05:10'),
(66, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-05-14 03:05:18', '2023-05-14 03:05:18'),
(67, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-14 03:05:19', '2023-05-14 03:05:19'),
(68, 1, 'admin/auth/users/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-14 03:05:25', '2023-05-14 03:05:25'),
(69, 1, 'admin/auth/users/3', 'PUT', '127.0.0.1', '{\"username\":\"100017\",\"name\":\"Metta Santiputri, S.T., M.Sc., Ph.D\",\"password\":\"100017\",\"password_confirmation\":\"100017\",\"roles\":[\"3\",null],\"permissions\":[null],\"_token\":\"7foJyuiffqVWSzlvTLpF70bu6qM1nnrZiKZ2830v\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/users\"}', '2023-05-14 03:06:05', '2023-05-14 03:06:05'),
(70, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2023-05-14 03:06:06', '2023-05-14 03:06:06'),
(71, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-14 03:06:12', '2023-05-14 03:06:12'),
(72, 3, 'admin', 'GET', '127.0.0.1', '[]', '2023-05-14 03:06:16', '2023-05-14 03:06:16'),
(73, 3, 'admin/rooms', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-14 03:06:21', '2023-05-14 03:06:21'),
(74, 3, 'admin/borrow-rooms', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-14 03:06:29', '2023-05-14 03:06:29'),
(75, 3, 'admin/borrow-rooms/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-14 03:06:34', '2023-05-14 03:06:34'),
(76, 3, 'admin/borrow-rooms/1', 'PUT', '127.0.0.1', '{\"lecturer_approval_status\":\"1\",\"_token\":\"otxMZBzPbIEWJ7cAUljblxYFKr4cRF0PFUP1R6Bg\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/borrow-rooms\"}', '2023-05-14 03:06:44', '2023-05-14 03:06:44'),
(77, 3, 'admin/borrow-rooms', 'GET', '127.0.0.1', '[]', '2023-05-14 03:06:44', '2023-05-14 03:06:44'),
(78, 3, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-14 03:06:50', '2023-05-14 03:06:50'),
(79, 3, 'admin/room-types', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-14 03:06:52', '2023-05-14 03:06:52'),
(80, 3, 'admin/rooms', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-14 03:06:53', '2023-05-14 03:06:53'),
(81, 3, 'admin/room-types', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-14 03:06:54', '2023-05-14 03:06:54'),
(82, 3, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-14 03:06:58', '2023-05-14 03:06:58'),
(83, 3, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-14 03:07:01', '2023-05-14 03:07:01'),
(84, 3, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-14 03:07:02', '2023-05-14 03:07:02'),
(85, 3, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-14 03:07:04', '2023-05-14 03:07:04'),
(86, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-05-14 03:07:11', '2023-05-14 03:07:11'),
(87, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-14 03:07:16', '2023-05-14 03:07:16'),
(88, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"page\":\"2\"}', '2023-05-14 03:07:19', '2023-05-14 03:07:19'),
(89, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"page\":\"3\"}', '2023-05-14 03:07:22', '2023-05-14 03:07:22'),
(90, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"page\":\"2\"}', '2023-05-14 03:07:25', '2023-05-14 03:07:25'),
(91, 1, 'admin/borrow-rooms', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-14 03:07:27', '2023-05-14 03:07:27'),
(92, 1, 'admin/borrow-rooms/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-14 03:07:29', '2023-05-14 03:07:29'),
(93, 1, 'admin/borrow-rooms/1', 'PUT', '127.0.0.1', '{\"borrower_id\":\"61\",\"room_id\":\"1\",\"borrow_at\":\"2023-05-15 09:56\",\"until_at\":\"2023-05-16 09:56\",\"lecturer_id\":\"3\",\"lecturer_approval_status\":\"1\",\"admin_id\":null,\"admin_approval_status\":\"1\",\"processed_at\":null,\"returned_at\":null,\"notes\":null,\"_token\":\"Vnq1R3KYialWl6KKICbcG95JpYfzTJUXohsgwYWl\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/borrow-rooms\"}', '2023-05-14 03:07:45', '2023-05-14 03:07:45'),
(94, 1, 'admin/borrow-rooms', 'GET', '127.0.0.1', '[]', '2023-05-14 03:07:45', '2023-05-14 03:07:45'),
(95, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-05-19 01:43:35', '2023-05-19 01:43:35'),
(96, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-05-19 01:43:46', '2023-05-19 01:43:46'),
(97, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-19 01:43:51', '2023-05-19 01:43:51'),
(98, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"page\":\"2\"}', '2023-05-19 01:43:57', '2023-05-19 01:43:57'),
(99, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"page\":\"3\"}', '2023-05-19 01:44:00', '2023-05-19 01:44:00'),
(100, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"page\":\"2\",\"_pjax\":\"#pjax-container\"}', '2023-05-19 01:44:38', '2023-05-19 01:44:38'),
(101, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-19 01:44:38', '2023-05-19 01:44:38'),
(102, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-19 01:44:39', '2023-05-19 01:44:39'),
(103, 1, 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2023-05-20 09:17:15', '2023-05-20 09:17:15'),
(104, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-05-20 09:17:17', '2023-05-20 09:17:17'),
(105, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-20 09:17:22', '2023-05-20 09:17:22'),
(106, 62, 'admin', 'GET', '127.0.0.1', '[]', '2023-05-20 09:17:42', '2023-05-20 09:17:42'),
(107, 62, 'admin/borrow-rooms', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-20 09:17:53', '2023-05-20 09:17:53'),
(108, 62, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-20 09:18:02', '2023-05-20 09:18:02'),
(109, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-05-20 09:18:16', '2023-05-20 09:18:16'),
(110, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-20 09:18:18', '2023-05-20 09:18:18'),
(111, 1, 'admin/rooms', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-20 09:18:21', '2023-05-20 09:18:21'),
(112, 1, 'admin/room-types', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-20 09:18:23', '2023-05-20 09:18:23'),
(113, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-20 09:18:26', '2023-05-20 09:18:26'),
(114, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-20 09:18:29', '2023-05-20 09:18:29'),
(115, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-20 09:24:09', '2023-05-20 09:24:09'),
(116, 3, 'admin', 'GET', '127.0.0.1', '[]', '2023-05-20 09:24:15', '2023-05-20 09:24:15'),
(117, 3, 'admin/rooms', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-20 09:24:23', '2023-05-20 09:24:23'),
(118, 3, 'admin/borrow-rooms', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-20 09:24:25', '2023-05-20 09:24:25'),
(119, 3, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-20 09:24:32', '2023-05-20 09:24:32'),
(120, 62, 'admin', 'GET', '127.0.0.1', '[]', '2023-05-20 09:25:02', '2023-05-20 09:25:02'),
(121, 62, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-20 09:25:07', '2023-05-20 09:25:07'),
(122, 62, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-20 09:25:12', '2023-05-20 09:25:12'),
(123, 62, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-20 09:25:14', '2023-05-20 09:25:14'),
(124, 62, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-20 09:25:16', '2023-05-20 09:25:16'),
(125, 62, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-20 09:25:19', '2023-05-20 09:25:19'),
(126, 62, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-20 09:25:20', '2023-05-20 09:25:20'),
(127, 62, 'admin/borrow-rooms', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-20 09:25:22', '2023-05-20 09:25:22'),
(128, 62, 'admin/borrow-rooms/2', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-20 09:25:31', '2023-05-20 09:25:31'),
(129, 62, 'admin/borrow-rooms', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-20 09:25:38', '2023-05-20 09:25:38'),
(130, 62, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-20 09:25:52', '2023-05-20 09:25:52'),
(131, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-05-20 09:26:08', '2023-05-20 09:26:08'),
(132, 1, 'admin/borrow-rooms', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-20 09:26:19', '2023-05-20 09:26:19'),
(133, 1, 'admin/borrow-rooms/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-20 09:26:34', '2023-05-20 09:26:34'),
(134, 1, 'admin/borrow-rooms', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-20 09:26:44', '2023-05-20 09:26:44'),
(135, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-20 09:27:12', '2023-05-20 09:27:12'),
(136, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-20 09:27:15', '2023-05-20 09:27:15'),
(137, 1, 'admin/auth/users/7/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-20 09:27:23', '2023-05-20 09:27:23'),
(138, 1, 'admin/auth/users/7', 'PUT', '127.0.0.1', '{\"username\":\"102020\",\"name\":\"Hilda Widyastuti, S.T., M.T.\",\"password\":\"102020\",\"password_confirmation\":\"102020\",\"roles\":[\"3\",null],\"permissions\":[null],\"_token\":\"DqI0tvrjQiEGOPXUFd7do4yVzzWYmI8iTsIveyiO\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/users\"}', '2023-05-20 09:28:16', '2023-05-20 09:28:16'),
(139, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2023-05-20 09:28:17', '2023-05-20 09:28:17'),
(140, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-20 09:28:22', '2023-05-20 09:28:22'),
(141, 7, 'admin', 'GET', '127.0.0.1', '[]', '2023-05-20 09:28:34', '2023-05-20 09:28:34'),
(142, 7, 'admin/room-types', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-20 09:28:40', '2023-05-20 09:28:40'),
(143, 7, 'admin/rooms', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-20 09:28:49', '2023-05-20 09:28:49'),
(144, 7, 'admin/rooms', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"page\":\"2\"}', '2023-05-20 09:28:56', '2023-05-20 09:28:56'),
(145, 7, 'admin/rooms', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"page\":\"1\"}', '2023-05-20 09:28:58', '2023-05-20 09:28:58'),
(146, 7, 'admin/borrow-rooms', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-20 09:29:00', '2023-05-20 09:29:00'),
(147, 7, 'admin/borrow-rooms/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-20 09:29:11', '2023-05-20 09:29:11'),
(148, 7, 'admin/borrow-rooms/2', 'PUT', '127.0.0.1', '{\"lecturer_approval_status\":\"1\",\"_token\":\"dKp0PtqBDPa43e2p0X4209HlLmATlzhSlIyMZHah\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/borrow-rooms\"}', '2023-05-20 09:29:18', '2023-05-20 09:29:18'),
(149, 7, 'admin/borrow-rooms', 'GET', '127.0.0.1', '[]', '2023-05-20 09:29:18', '2023-05-20 09:29:18'),
(150, 7, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-20 09:29:26', '2023-05-20 09:29:26'),
(151, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-05-20 09:29:42', '2023-05-20 09:29:42'),
(152, 1, 'admin/borrow-rooms', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-20 09:29:46', '2023-05-20 09:29:46'),
(153, 1, 'admin/borrow-rooms/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-20 09:29:50', '2023-05-20 09:29:50'),
(154, 1, 'admin/borrow-rooms/2', 'PUT', '127.0.0.1', '{\"borrower_id\":\"62\",\"room_id\":\"1\",\"borrow_at\":\"2023-05-21 09:56\",\"until_at\":\"2023-05-22 09:56\",\"lecturer_id\":\"7\",\"lecturer_approval_status\":\"1\",\"admin_id\":null,\"admin_approval_status\":\"1\",\"processed_at\":\"2023-05-20 06:00\",\"returned_at\":\"2023-05-21 00:00\",\"notes\":\"Jangan lupa dirapikan kembali\",\"_token\":\"oLbnRJlEkJJjUBjUGAZ0P8EA1nPGpSJtnCYgIUj6\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/borrow-rooms\"}', '2023-05-20 09:30:30', '2023-05-20 09:30:30'),
(155, 1, 'admin/borrow-rooms', 'GET', '127.0.0.1', '[]', '2023-05-20 09:30:30', '2023-05-20 09:30:30'),
(156, 1, 'admin/borrow-rooms/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-20 09:30:37', '2023-05-20 09:30:37'),
(157, 1, 'admin/borrow-rooms/2', 'PUT', '127.0.0.1', '{\"borrower_id\":\"62\",\"room_id\":\"1\",\"borrow_at\":\"2023-05-21 09:56\",\"until_at\":\"2023-05-22 09:56\",\"lecturer_id\":\"7\",\"lecturer_approval_status\":\"1\",\"admin_id\":\"1\",\"admin_approval_status\":\"1\",\"processed_at\":\"2023-05-21 06:00\",\"returned_at\":\"2023-05-22 00:00\",\"notes\":\"Jangan lupa dirapikan kembali\",\"_token\":\"oLbnRJlEkJJjUBjUGAZ0P8EA1nPGpSJtnCYgIUj6\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/borrow-rooms\"}', '2023-05-20 09:31:05', '2023-05-20 09:31:05'),
(158, 1, 'admin/borrow-rooms', 'GET', '127.0.0.1', '[]', '2023-05-20 09:31:06', '2023-05-20 09:31:06'),
(159, 1, 'admin/borrow-rooms/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-20 09:31:10', '2023-05-20 09:31:10'),
(160, 1, 'admin/borrow-rooms/2', 'PUT', '127.0.0.1', '{\"borrower_id\":\"62\",\"room_id\":\"1\",\"borrow_at\":\"2023-05-21 09:56\",\"until_at\":\"2023-05-22 09:56\",\"lecturer_id\":\"7\",\"lecturer_approval_status\":\"1\",\"admin_id\":\"1\",\"admin_approval_status\":\"0\",\"processed_at\":\"2023-05-21 06:00\",\"returned_at\":\"2023-05-22 00:00\",\"notes\":\"Jangan lupa dirapikan kembali\",\"_token\":\"oLbnRJlEkJJjUBjUGAZ0P8EA1nPGpSJtnCYgIUj6\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/borrow-rooms\"}', '2023-05-20 09:31:15', '2023-05-20 09:31:15'),
(161, 1, 'admin/borrow-rooms', 'GET', '127.0.0.1', '[]', '2023-05-20 09:31:16', '2023-05-20 09:31:16'),
(162, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-20 09:31:22', '2023-05-20 09:31:22'),
(163, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-20 09:31:24', '2023-05-20 09:31:24'),
(164, 1, 'admin/auth/users/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-20 09:31:29', '2023-05-20 09:31:29'),
(165, 1, 'admin/auth/users', 'POST', '127.0.0.1', '{\"username\":\"tatausaha\",\"name\":\"tatausaha\",\"password\":\"tatausaha\",\"password_confirmation\":\"tatausaha\",\"roles\":[\"2\",null],\"permissions\":[\"1\",null],\"_token\":\"oLbnRJlEkJJjUBjUGAZ0P8EA1nPGpSJtnCYgIUj6\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/users\"}', '2023-05-20 09:31:56', '2023-05-20 09:31:56'),
(166, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2023-05-20 09:31:56', '2023-05-20 09:31:56'),
(167, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-20 09:32:02', '2023-05-20 09:32:02'),
(168, 63, 'admin', 'GET', '127.0.0.1', '[]', '2023-05-20 09:32:11', '2023-05-20 09:32:11'),
(169, 63, 'admin/borrow-rooms', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-20 09:32:14', '2023-05-20 09:32:14'),
(170, 63, 'admin/borrow-rooms/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-20 09:32:17', '2023-05-20 09:32:17'),
(171, 63, 'admin/borrow-rooms/2', 'PUT', '127.0.0.1', '{\"admin_id\":\"1\",\"admin_approval_status\":\"1\",\"processed_at\":\"2023-05-21 06:00\",\"returned_at\":\"2023-05-22 00:00\",\"notes\":\"Jangan lupa dirapikan kembali\",\"_token\":\"GrnCoZhFU0PGsYo8DXljoc4YHkuKQwn7OdzRt4Nw\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/borrow-rooms\"}', '2023-05-20 09:32:23', '2023-05-20 09:32:23'),
(172, 63, 'admin/borrow-rooms', 'GET', '127.0.0.1', '[]', '2023-05-20 09:32:24', '2023-05-20 09:32:24'),
(173, 63, 'admin/borrow-rooms/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-20 09:32:32', '2023-05-20 09:32:32'),
(174, 63, 'admin/borrow-rooms/1', 'PUT', '127.0.0.1', '{\"admin_id\":\"1\",\"admin_approval_status\":\"1\",\"processed_at\":null,\"returned_at\":null,\"notes\":null,\"_token\":\"GrnCoZhFU0PGsYo8DXljoc4YHkuKQwn7OdzRt4Nw\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/borrow-rooms\"}', '2023-05-20 09:32:36', '2023-05-20 09:32:36'),
(175, 63, 'admin/borrow-rooms', 'GET', '127.0.0.1', '[]', '2023-05-20 09:32:36', '2023-05-20 09:32:36'),
(176, 63, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-20 09:32:44', '2023-05-20 09:32:44'),
(177, 61, 'admin', 'GET', '127.0.0.1', '[]', '2023-05-20 09:32:54', '2023-05-20 09:32:54'),
(178, 61, 'admin/borrow-rooms', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-20 09:32:59', '2023-05-20 09:32:59'),
(179, 61, 'admin/borrow-rooms/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-20 09:33:02', '2023-05-20 09:33:02'),
(180, 61, 'admin/borrow-rooms', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-20 09:33:09', '2023-05-20 09:33:09'),
(181, 61, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-20 09:33:14', '2023-05-20 09:33:14'),
(182, 61, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-20 09:33:15', '2023-05-20 09:33:15'),
(183, 61, 'admin', 'GET', '127.0.0.1', '[]', '2023-05-20 09:33:54', '2023-05-20 09:33:54'),
(184, 61, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-20 09:33:57', '2023-05-20 09:33:57'),
(185, 61, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-20 09:33:59', '2023-05-20 09:33:59'),
(186, 61, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-20 09:34:01', '2023-05-20 09:34:01'),
(187, 61, 'admin', 'GET', '127.0.0.1', '[]', '2023-05-20 09:34:14', '2023-05-20 09:34:14'),
(188, 61, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-20 09:34:22', '2023-05-20 09:34:22'),
(189, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-05-20 09:34:30', '2023-05-20 09:34:30'),
(190, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-20 09:34:33', '2023-05-20 09:34:33'),
(191, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-20 09:34:36', '2023-05-20 09:34:36'),
(192, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2023-05-20 09:36:15', '2023-05-20 09:36:15'),
(193, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"7\",\"_model\":\"Encore_Admin_Auth_Database_Administrator\",\"_token\":\"0YT0p3gv3b86XSGSRiiE8P5FctDdkgMfTyh0TTYw\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2023-05-20 09:36:21', '2023-05-20 09:36:21'),
(194, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"8\",\"_model\":\"Encore_Admin_Auth_Database_Administrator\",\"_token\":\"0YT0p3gv3b86XSGSRiiE8P5FctDdkgMfTyh0TTYw\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2023-05-20 09:36:28', '2023-05-20 09:36:28'),
(195, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-20 09:36:29', '2023-05-20 09:36:29'),
(196, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"9\",\"_model\":\"Encore_Admin_Auth_Database_Administrator\",\"_token\":\"0YT0p3gv3b86XSGSRiiE8P5FctDdkgMfTyh0TTYw\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2023-05-20 09:36:35', '2023-05-20 09:36:35'),
(197, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-20 09:36:36', '2023-05-20 09:36:36'),
(198, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"10\",\"_model\":\"Encore_Admin_Auth_Database_Administrator\",\"_token\":\"0YT0p3gv3b86XSGSRiiE8P5FctDdkgMfTyh0TTYw\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2023-05-20 09:36:45', '2023-05-20 09:36:45'),
(199, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-20 09:36:46', '2023-05-20 09:36:46'),
(200, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"11\",\"_model\":\"Encore_Admin_Auth_Database_Administrator\",\"_token\":\"0YT0p3gv3b86XSGSRiiE8P5FctDdkgMfTyh0TTYw\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2023-05-20 09:36:53', '2023-05-20 09:36:53'),
(201, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-20 09:36:54', '2023-05-20 09:36:54'),
(202, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"12\",\"_model\":\"Encore_Admin_Auth_Database_Administrator\",\"_token\":\"0YT0p3gv3b86XSGSRiiE8P5FctDdkgMfTyh0TTYw\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2023-05-20 09:37:08', '2023-05-20 09:37:08'),
(203, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-20 09:37:09', '2023-05-20 09:37:09'),
(204, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"13\",\"_model\":\"Encore_Admin_Auth_Database_Administrator\",\"_token\":\"0YT0p3gv3b86XSGSRiiE8P5FctDdkgMfTyh0TTYw\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2023-05-20 09:37:15', '2023-05-20 09:37:15'),
(205, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-20 09:37:16', '2023-05-20 09:37:16'),
(206, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"14\",\"_model\":\"Encore_Admin_Auth_Database_Administrator\",\"_token\":\"0YT0p3gv3b86XSGSRiiE8P5FctDdkgMfTyh0TTYw\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2023-05-20 09:37:22', '2023-05-20 09:37:22'),
(207, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-20 09:37:23', '2023-05-20 09:37:23'),
(208, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"15\",\"_model\":\"Encore_Admin_Auth_Database_Administrator\",\"_token\":\"0YT0p3gv3b86XSGSRiiE8P5FctDdkgMfTyh0TTYw\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2023-05-20 09:37:29', '2023-05-20 09:37:29'),
(209, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-20 09:37:30', '2023-05-20 09:37:30'),
(210, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"16\",\"_model\":\"Encore_Admin_Auth_Database_Administrator\",\"_token\":\"0YT0p3gv3b86XSGSRiiE8P5FctDdkgMfTyh0TTYw\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2023-05-20 09:37:35', '2023-05-20 09:37:35'),
(211, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-20 09:37:36', '2023-05-20 09:37:36'),
(212, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"17\",\"_model\":\"Encore_Admin_Auth_Database_Administrator\",\"_token\":\"0YT0p3gv3b86XSGSRiiE8P5FctDdkgMfTyh0TTYw\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2023-05-20 09:37:45', '2023-05-20 09:37:45'),
(213, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-20 09:37:46', '2023-05-20 09:37:46'),
(214, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"18\",\"_model\":\"Encore_Admin_Auth_Database_Administrator\",\"_token\":\"0YT0p3gv3b86XSGSRiiE8P5FctDdkgMfTyh0TTYw\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2023-05-20 09:37:51', '2023-05-20 09:37:51'),
(215, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-20 09:37:52', '2023-05-20 09:37:52'),
(216, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"19\",\"_model\":\"Encore_Admin_Auth_Database_Administrator\",\"_token\":\"0YT0p3gv3b86XSGSRiiE8P5FctDdkgMfTyh0TTYw\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2023-05-20 09:37:58', '2023-05-20 09:37:58'),
(217, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-20 09:37:59', '2023-05-20 09:37:59'),
(218, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"20\",\"_model\":\"Encore_Admin_Auth_Database_Administrator\",\"_token\":\"0YT0p3gv3b86XSGSRiiE8P5FctDdkgMfTyh0TTYw\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2023-05-20 09:38:14', '2023-05-20 09:38:14'),
(219, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-20 09:38:15', '2023-05-20 09:38:15'),
(220, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"37\",\"_model\":\"Encore_Admin_Auth_Database_Administrator\",\"_token\":\"0YT0p3gv3b86XSGSRiiE8P5FctDdkgMfTyh0TTYw\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2023-05-20 09:38:19', '2023-05-20 09:38:19'),
(221, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-20 09:38:20', '2023-05-20 09:38:20'),
(222, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"38\",\"_model\":\"Encore_Admin_Auth_Database_Administrator\",\"_token\":\"0YT0p3gv3b86XSGSRiiE8P5FctDdkgMfTyh0TTYw\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2023-05-20 09:38:24', '2023-05-20 09:38:24'),
(223, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-20 09:38:25', '2023-05-20 09:38:25'),
(224, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"39\",\"_model\":\"Encore_Admin_Auth_Database_Administrator\",\"_token\":\"0YT0p3gv3b86XSGSRiiE8P5FctDdkgMfTyh0TTYw\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2023-05-20 09:38:27', '2023-05-20 09:38:27'),
(225, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-20 09:38:28', '2023-05-20 09:38:28'),
(226, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"40\",\"_model\":\"Encore_Admin_Auth_Database_Administrator\",\"_token\":\"0YT0p3gv3b86XSGSRiiE8P5FctDdkgMfTyh0TTYw\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2023-05-20 09:38:31', '2023-05-20 09:38:31'),
(227, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-20 09:38:32', '2023-05-20 09:38:32'),
(228, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"41\",\"_model\":\"Encore_Admin_Auth_Database_Administrator\",\"_token\":\"0YT0p3gv3b86XSGSRiiE8P5FctDdkgMfTyh0TTYw\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2023-05-20 09:38:35', '2023-05-20 09:38:35'),
(229, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-20 09:38:36', '2023-05-20 09:38:36'),
(230, 1, 'admin/auth/users/42', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-20 09:38:38', '2023-05-20 09:38:38'),
(231, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-20 09:38:39', '2023-05-20 09:38:39'),
(232, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"42\",\"_model\":\"Encore_Admin_Auth_Database_Administrator\",\"_token\":\"0YT0p3gv3b86XSGSRiiE8P5FctDdkgMfTyh0TTYw\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2023-05-20 09:38:45', '2023-05-20 09:38:45'),
(233, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-20 09:38:46', '2023-05-20 09:38:46'),
(234, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"43\",\"_model\":\"Encore_Admin_Auth_Database_Administrator\",\"_token\":\"0YT0p3gv3b86XSGSRiiE8P5FctDdkgMfTyh0TTYw\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2023-05-20 09:38:50', '2023-05-20 09:38:50'),
(235, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-20 09:38:51', '2023-05-20 09:38:51'),
(236, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"44\",\"_model\":\"Encore_Admin_Auth_Database_Administrator\",\"_token\":\"0YT0p3gv3b86XSGSRiiE8P5FctDdkgMfTyh0TTYw\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2023-05-20 09:38:57', '2023-05-20 09:38:57'),
(237, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-20 09:38:58', '2023-05-20 09:38:58'),
(238, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"45\",\"_model\":\"Encore_Admin_Auth_Database_Administrator\",\"_token\":\"0YT0p3gv3b86XSGSRiiE8P5FctDdkgMfTyh0TTYw\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2023-05-20 09:39:01', '2023-05-20 09:39:01'),
(239, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-20 09:39:02', '2023-05-20 09:39:02'),
(240, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"46\",\"_model\":\"Encore_Admin_Auth_Database_Administrator\",\"_token\":\"0YT0p3gv3b86XSGSRiiE8P5FctDdkgMfTyh0TTYw\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2023-05-20 09:39:05', '2023-05-20 09:39:05'),
(241, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-20 09:39:06', '2023-05-20 09:39:06'),
(242, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"7\",\"_model\":\"Encore_Admin_Auth_Database_Administrator\",\"_token\":\"0YT0p3gv3b86XSGSRiiE8P5FctDdkgMfTyh0TTYw\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2023-05-20 09:39:17', '2023-05-20 09:39:17'),
(243, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"21\",\"_model\":\"Encore_Admin_Auth_Database_Administrator\",\"_token\":\"0YT0p3gv3b86XSGSRiiE8P5FctDdkgMfTyh0TTYw\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2023-05-20 09:39:25', '2023-05-20 09:39:25'),
(244, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-20 09:39:26', '2023-05-20 09:39:26'),
(245, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"36\",\"_model\":\"Encore_Admin_Auth_Database_Administrator\",\"_token\":\"0YT0p3gv3b86XSGSRiiE8P5FctDdkgMfTyh0TTYw\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2023-05-20 09:39:34', '2023-05-20 09:39:34'),
(246, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-20 09:39:35', '2023-05-20 09:39:35'),
(247, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"49\",\"_model\":\"Encore_Admin_Auth_Database_Administrator\",\"_token\":\"0YT0p3gv3b86XSGSRiiE8P5FctDdkgMfTyh0TTYw\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2023-05-20 09:39:55', '2023-05-20 09:39:55'),
(248, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-20 09:39:56', '2023-05-20 09:39:56'),
(249, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"50\",\"_model\":\"Encore_Admin_Auth_Database_Administrator\",\"_token\":\"0YT0p3gv3b86XSGSRiiE8P5FctDdkgMfTyh0TTYw\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2023-05-20 09:40:01', '2023-05-20 09:40:01'),
(250, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-20 09:40:02', '2023-05-20 09:40:02'),
(251, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"51\",\"_model\":\"Encore_Admin_Auth_Database_Administrator\",\"_token\":\"0YT0p3gv3b86XSGSRiiE8P5FctDdkgMfTyh0TTYw\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2023-05-20 09:40:05', '2023-05-20 09:40:05'),
(252, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-20 09:40:06', '2023-05-20 09:40:06'),
(253, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"52\",\"_model\":\"Encore_Admin_Auth_Database_Administrator\",\"_token\":\"0YT0p3gv3b86XSGSRiiE8P5FctDdkgMfTyh0TTYw\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2023-05-20 09:40:09', '2023-05-20 09:40:09'),
(254, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-20 09:40:10', '2023-05-20 09:40:10'),
(255, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"53\",\"_model\":\"Encore_Admin_Auth_Database_Administrator\",\"_token\":\"0YT0p3gv3b86XSGSRiiE8P5FctDdkgMfTyh0TTYw\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2023-05-20 09:40:14', '2023-05-20 09:40:14'),
(256, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-20 09:40:15', '2023-05-20 09:40:15'),
(257, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"54\",\"_model\":\"Encore_Admin_Auth_Database_Administrator\",\"_token\":\"0YT0p3gv3b86XSGSRiiE8P5FctDdkgMfTyh0TTYw\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2023-05-20 09:40:18', '2023-05-20 09:40:18'),
(258, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-20 09:40:19', '2023-05-20 09:40:19'),
(259, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"55\",\"_model\":\"Encore_Admin_Auth_Database_Administrator\",\"_token\":\"0YT0p3gv3b86XSGSRiiE8P5FctDdkgMfTyh0TTYw\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2023-05-20 09:40:23', '2023-05-20 09:40:23'),
(260, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-20 09:40:24', '2023-05-20 09:40:24'),
(261, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"56\",\"_model\":\"Encore_Admin_Auth_Database_Administrator\",\"_token\":\"0YT0p3gv3b86XSGSRiiE8P5FctDdkgMfTyh0TTYw\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2023-05-20 09:40:26', '2023-05-20 09:40:26'),
(262, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-20 09:40:27', '2023-05-20 09:40:27'),
(263, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"57\",\"_model\":\"Encore_Admin_Auth_Database_Administrator\",\"_token\":\"0YT0p3gv3b86XSGSRiiE8P5FctDdkgMfTyh0TTYw\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2023-05-20 09:40:31', '2023-05-20 09:40:31'),
(264, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-20 09:40:31', '2023-05-20 09:40:31'),
(265, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"58\",\"_model\":\"Encore_Admin_Auth_Database_Administrator\",\"_token\":\"0YT0p3gv3b86XSGSRiiE8P5FctDdkgMfTyh0TTYw\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2023-05-20 09:40:34', '2023-05-20 09:40:34'),
(266, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-20 09:40:35', '2023-05-20 09:40:35'),
(267, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"59\",\"_model\":\"Encore_Admin_Auth_Database_Administrator\",\"_token\":\"0YT0p3gv3b86XSGSRiiE8P5FctDdkgMfTyh0TTYw\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2023-05-20 09:40:39', '2023-05-20 09:40:39'),
(268, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-20 09:40:40', '2023-05-20 09:40:40'),
(269, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"60\",\"_model\":\"Encore_Admin_Auth_Database_Administrator\",\"_token\":\"0YT0p3gv3b86XSGSRiiE8P5FctDdkgMfTyh0TTYw\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2023-05-20 09:40:43', '2023-05-20 09:40:43'),
(270, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-20 09:40:44', '2023-05-20 09:40:44'),
(271, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"61\",\"_model\":\"Encore_Admin_Auth_Database_Administrator\",\"_token\":\"0YT0p3gv3b86XSGSRiiE8P5FctDdkgMfTyh0TTYw\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2023-05-20 09:40:47', '2023-05-20 09:40:47'),
(272, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"61\",\"_model\":\"Encore_Admin_Auth_Database_Administrator\",\"_token\":\"0YT0p3gv3b86XSGSRiiE8P5FctDdkgMfTyh0TTYw\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2023-05-20 09:40:52', '2023-05-20 09:40:52'),
(273, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"48\",\"_model\":\"Encore_Admin_Auth_Database_Administrator\",\"_token\":\"0YT0p3gv3b86XSGSRiiE8P5FctDdkgMfTyh0TTYw\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2023-05-20 09:40:56', '2023-05-20 09:40:56'),
(274, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-20 09:40:57', '2023-05-20 09:40:57'),
(275, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"61\",\"_model\":\"Encore_Admin_Auth_Database_Administrator\",\"_token\":\"0YT0p3gv3b86XSGSRiiE8P5FctDdkgMfTyh0TTYw\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2023-05-20 09:41:00', '2023-05-20 09:41:00'),
(276, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"47\",\"_model\":\"Encore_Admin_Auth_Database_Administrator\",\"_token\":\"0YT0p3gv3b86XSGSRiiE8P5FctDdkgMfTyh0TTYw\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2023-05-20 09:41:05', '2023-05-20 09:41:05'),
(277, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-20 09:41:06', '2023-05-20 09:41:06'),
(278, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"35\",\"_model\":\"Encore_Admin_Auth_Database_Administrator\",\"_token\":\"0YT0p3gv3b86XSGSRiiE8P5FctDdkgMfTyh0TTYw\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2023-05-20 09:41:12', '2023-05-20 09:41:12'),
(279, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-20 09:41:13', '2023-05-20 09:41:13'),
(280, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"61\",\"_model\":\"Encore_Admin_Auth_Database_Administrator\",\"_token\":\"0YT0p3gv3b86XSGSRiiE8P5FctDdkgMfTyh0TTYw\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2023-05-20 09:41:17', '2023-05-20 09:41:17'),
(281, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"34\",\"_model\":\"Encore_Admin_Auth_Database_Administrator\",\"_token\":\"0YT0p3gv3b86XSGSRiiE8P5FctDdkgMfTyh0TTYw\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2023-05-20 09:41:23', '2023-05-20 09:41:23'),
(282, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-20 09:41:24', '2023-05-20 09:41:24'),
(283, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"22\",\"_model\":\"Encore_Admin_Auth_Database_Administrator\",\"_token\":\"0YT0p3gv3b86XSGSRiiE8P5FctDdkgMfTyh0TTYw\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2023-05-20 09:41:30', '2023-05-20 09:41:30'),
(284, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-20 09:41:31', '2023-05-20 09:41:31'),
(285, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"26\",\"_model\":\"Encore_Admin_Auth_Database_Administrator\",\"_token\":\"0YT0p3gv3b86XSGSRiiE8P5FctDdkgMfTyh0TTYw\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2023-05-20 09:41:35', '2023-05-20 09:41:35'),
(286, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-20 09:41:36', '2023-05-20 09:41:36'),
(287, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"24\",\"_model\":\"Encore_Admin_Auth_Database_Administrator\",\"_token\":\"0YT0p3gv3b86XSGSRiiE8P5FctDdkgMfTyh0TTYw\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2023-05-20 09:41:39', '2023-05-20 09:41:39'),
(288, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-20 09:41:40', '2023-05-20 09:41:40'),
(289, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"23\",\"_model\":\"Encore_Admin_Auth_Database_Administrator\",\"_token\":\"0YT0p3gv3b86XSGSRiiE8P5FctDdkgMfTyh0TTYw\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2023-05-20 09:41:44', '2023-05-20 09:41:44'),
(290, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-20 09:41:44', '2023-05-20 09:41:44'),
(291, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"28\",\"_model\":\"Encore_Admin_Auth_Database_Administrator\",\"_token\":\"0YT0p3gv3b86XSGSRiiE8P5FctDdkgMfTyh0TTYw\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2023-05-20 09:41:48', '2023-05-20 09:41:48'),
(292, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-20 09:41:49', '2023-05-20 09:41:49'),
(293, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"29\",\"_model\":\"Encore_Admin_Auth_Database_Administrator\",\"_token\":\"0YT0p3gv3b86XSGSRiiE8P5FctDdkgMfTyh0TTYw\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2023-05-20 09:41:51', '2023-05-20 09:41:51'),
(294, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-20 09:41:52', '2023-05-20 09:41:52'),
(295, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"30\",\"_model\":\"Encore_Admin_Auth_Database_Administrator\",\"_token\":\"0YT0p3gv3b86XSGSRiiE8P5FctDdkgMfTyh0TTYw\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2023-05-20 09:41:55', '2023-05-20 09:41:55'),
(296, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-20 09:41:56', '2023-05-20 09:41:56'),
(297, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"27\",\"_model\":\"Encore_Admin_Auth_Database_Administrator\",\"_token\":\"0YT0p3gv3b86XSGSRiiE8P5FctDdkgMfTyh0TTYw\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2023-05-20 09:41:59', '2023-05-20 09:41:59'),
(298, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-20 09:42:00', '2023-05-20 09:42:00');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(299, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"31\",\"_model\":\"Encore_Admin_Auth_Database_Administrator\",\"_token\":\"0YT0p3gv3b86XSGSRiiE8P5FctDdkgMfTyh0TTYw\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2023-05-20 09:42:02', '2023-05-20 09:42:02'),
(300, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-20 09:42:03', '2023-05-20 09:42:03'),
(301, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"32\",\"_model\":\"Encore_Admin_Auth_Database_Administrator\",\"_token\":\"0YT0p3gv3b86XSGSRiiE8P5FctDdkgMfTyh0TTYw\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2023-05-20 09:42:07', '2023-05-20 09:42:07'),
(302, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-20 09:42:08', '2023-05-20 09:42:08'),
(303, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"25\",\"_model\":\"Encore_Admin_Auth_Database_Administrator\",\"_token\":\"0YT0p3gv3b86XSGSRiiE8P5FctDdkgMfTyh0TTYw\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2023-05-20 09:42:11', '2023-05-20 09:42:11'),
(304, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-20 09:42:12', '2023-05-20 09:42:12'),
(305, 1, 'admin/auth/users/33', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-20 09:42:16', '2023-05-20 09:42:16'),
(306, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-20 09:42:17', '2023-05-20 09:42:17'),
(307, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"33\",\"_model\":\"Encore_Admin_Auth_Database_Administrator\",\"_token\":\"0YT0p3gv3b86XSGSRiiE8P5FctDdkgMfTyh0TTYw\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2023-05-20 09:42:21', '2023-05-20 09:42:21'),
(308, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-20 09:42:21', '2023-05-20 09:42:21'),
(309, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"63\",\"_model\":\"Encore_Admin_Auth_Database_Administrator\",\"_token\":\"0YT0p3gv3b86XSGSRiiE8P5FctDdkgMfTyh0TTYw\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2023-05-20 09:42:26', '2023-05-20 09:42:26'),
(310, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-05-20 09:46:33', '2023-05-20 09:46:33'),
(311, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-20 09:46:36', '2023-05-20 09:46:36'),
(312, 1, 'admin/auth/users/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-20 10:32:16', '2023-05-20 10:32:16');

-- --------------------------------------------------------

--
-- Table structure for table `admin_permissions`
--

CREATE TABLE `admin_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `http_method` varchar(191) DEFAULT NULL,
  `http_path` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_permissions`
--

INSERT INTO `admin_permissions` (`id`, `name`, `slug`, `http_method`, `http_path`, `created_at`, `updated_at`) VALUES
(1, 'All permission', '*', '', '*', NULL, NULL),
(2, 'Dashboard', 'dashboard', 'GET', '/', NULL, NULL),
(3, 'Login', 'auth.login', '', '/auth/login\r\n                                /auth/logout', NULL, NULL),
(4, 'User setting', 'auth.setting', 'GET,PUT', '/auth/setting', NULL, NULL),
(5, 'Auth management', 'auth.management', '', '/auth/roles\r\n                                /auth/permissions\r\n                                /auth/menu\r\n                                /auth/logs', NULL, NULL),
(6, 'Admin helpers', 'ext.helpers', '', '/helpers/*', '2021-08-04 15:20:58', '2021-08-04 15:20:58'),
(7, 'List Room Types', 'list.room_types', 'GET', '/room-types*', '2021-08-11 18:32:56', '2021-08-11 19:08:23'),
(8, 'Create Room Type', 'create.room_types', 'POST', '/room-types*', '2021-08-11 18:47:16', '2021-08-11 19:09:02'),
(9, 'Edit Room Type', 'edit.room_types', 'PUT', '/room-types/*', '2021-08-11 18:54:49', '2021-08-11 19:09:47'),
(11, 'Delete Room Type', 'delete.room_types', 'DELETE', '/room-types/*', '2021-08-11 19:01:03', '2021-08-11 19:01:03'),
(12, 'List Rooms', 'list.rooms', 'GET', '/rooms*', '2021-08-11 19:11:31', '2021-08-11 19:11:31'),
(13, 'Create Room', 'create.rooms', 'POST', '/rooms*', '2021-08-11 19:11:55', '2021-08-11 19:11:55'),
(14, 'Edit Room', 'edit.rooms', 'PUT', '/rooms/*', '2021-08-11 19:12:23', '2021-08-11 19:12:23'),
(15, 'Delete Room', 'delete.rooms', 'DELETE', '/rooms/*', '2021-08-11 19:12:40', '2021-08-11 19:12:40'),
(16, 'List Borrow Rooms', 'list.borrow_rooms', 'GET', '/borrow-rooms*', '2021-08-11 19:13:24', '2021-08-11 19:13:24'),
(17, 'Create Borrow Room', 'create.borrow_rooms', 'POST', '/borrow-rooms*', '2021-08-11 19:13:49', '2021-08-11 19:13:49'),
(18, 'Edit Borrow Room', 'edit.borrow_rooms', 'PUT', '/borrow-rooms/*', '2021-08-11 19:14:12', '2021-08-11 19:14:12'),
(19, 'Delete Borrow Rooms', 'delete.borrow_rooms', 'DELETE', '/borrow-rooms/*', '2021-08-11 19:14:35', '2021-08-11 19:14:35');

-- --------------------------------------------------------

--
-- Table structure for table `admin_roles`
--

CREATE TABLE `admin_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_roles`
--

INSERT INTO `admin_roles` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'administrator', '2021-08-04 15:19:17', '2021-08-04 15:19:17'),
(2, 'Tata Usaha', 'tata-usaha', '2021-08-04 15:39:30', '2021-08-04 15:39:30'),
(3, 'Dosen', 'dosen', '2021-08-04 15:39:37', '2021-08-04 15:39:37'),
(4, 'Mahasiswa', 'mahasiswa', '2021-08-04 15:42:04', '2021-08-04 15:42:04');

-- --------------------------------------------------------

--
-- Table structure for table `admin_role_menu`
--

CREATE TABLE `admin_role_menu` (
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_role_menu`
--

INSERT INTO `admin_role_menu` (`role_id`, `menu_id`, `created_at`, `updated_at`) VALUES
(1, 2, NULL, NULL),
(1, 8, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_role_permissions`
--

CREATE TABLE `admin_role_permissions` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_role_permissions`
--

INSERT INTO `admin_role_permissions` (`role_id`, `permission_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL),
(3, 2, NULL, NULL),
(3, 3, NULL, NULL),
(3, 4, NULL, NULL),
(3, 7, NULL, NULL),
(3, 12, NULL, NULL),
(3, 16, NULL, NULL),
(3, 18, NULL, NULL),
(2, 2, NULL, NULL),
(2, 3, NULL, NULL),
(2, 4, NULL, NULL),
(2, 7, NULL, NULL),
(2, 8, NULL, NULL),
(2, 9, NULL, NULL),
(2, 11, NULL, NULL),
(2, 12, NULL, NULL),
(2, 13, NULL, NULL),
(2, 14, NULL, NULL),
(2, 15, NULL, NULL),
(2, 16, NULL, NULL),
(2, 17, NULL, NULL),
(2, 18, NULL, NULL),
(2, 19, NULL, NULL),
(4, 2, NULL, NULL),
(4, 3, NULL, NULL),
(4, 4, NULL, NULL),
(4, 16, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_role_users`
--

CREATE TABLE `admin_role_users` (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_role_users`
--

INSERT INTO `admin_role_users` (`role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL),
(3, 3, NULL, NULL),
(3, 4, NULL, NULL),
(3, 5, NULL, NULL),
(3, 6, NULL, NULL),
(3, 7, NULL, NULL),
(4, 61, NULL, NULL),
(4, 62, NULL, NULL),
(2, 63, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(190) NOT NULL,
  `password` varchar(60) NOT NULL,
  `name` varchar(191) NOT NULL,
  `avatar` varchar(191) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`id`, `username`, `password`, `name`, `avatar`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', '$2y$10$k2jNYZ66DQeRnDVVei4kOeceRvvvU70bJkZo4fHhTDFYivPCeLW52', 'Administrator', NULL, 'sJio15F0CtIljUWI0Va6EePrLyXNjdeDFs7m0sKtze8kzPSs1LjS7UjfrS2Z', '2021-08-11 03:21:03', '2021-08-11 03:21:03'),
(3, '100017', '$2y$10$jVO7AyWgXUA8F6ZUKSCh6OEiBBwkMUbYAb5Se2R.XUnsiAU58oVTW', 'Metta Santiputri, S.T., M.Sc., Ph.D', NULL, 'q3fsK1dxnYHfMgW4hnwzicCx9zBxjcsfhbt1CVhA3pNM5a4i89MNsTPrP51q', '2021-08-11 03:21:03', '2023-05-14 03:06:05'),
(7, '102020', '$2y$10$XXwkJCNJWsLs0WofksAriuRqInl.b5UYMDRmvAoA7ViJc49VtOQ4G', 'Hilda Widyastuti, S.T., M.T.', NULL, 'C8mrVEDQloOrtpSM1eaqT5uHKL4f518opzqCuEVRdatg9wmB8rjObapVClTx', '2021-08-11 03:21:03', '2023-05-20 09:28:16'),
(61, '2007412024', '$2y$10$ysb2aHGJsyRCzEOIW3G6leAfw11XV0WcrDO/s/1VrVCYFmBEoCFO6', 'HARIANDA', NULL, 'c5VUhVXxFztpCJNPbLldFIBUpG2hzfBNVc9AkOX2aELcE18VUA6SCuoLRToP', '2023-05-14 02:56:28', '2023-05-14 02:56:28'),
(62, '2007412025', '$2y$10$K/rXxfBGyEdZlWHZZoH2IuEkxhNCFC5/5os78ZcvfkpBiNpvwA0i2', 'BILVAN', NULL, 'f7ApatgTmX5FbT4ZMaDOxFWBwFEoDQzv2NfUVZqbTkND5gRGrSWwMoV28U9k', '2023-05-20 09:17:06', '2023-05-20 09:17:06'),
(63, 'tatausaha', '$2y$10$/dYy2owB/AbHDX4b3zKJROhu.zJYCOSvC2AabB8IKKgMPIq3Zse.C', 'tatausaha', NULL, 'Bf4OI4VmpJn6ZvQXmedjjlBGgIxrxqtid6oXOyUzamWVvReSPEJJ1khlfU6T', '2023-05-20 09:31:56', '2023-05-20 09:31:56');

-- --------------------------------------------------------

--
-- Table structure for table `admin_user_details`
--

CREATE TABLE `admin_user_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `admin_user_id` int(10) UNSIGNED NOT NULL,
  `data` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_user_details`
--

INSERT INTO `admin_user_details` (`id`, `admin_user_id`, `data`, `created_at`, `updated_at`) VALUES
(1, 61, '{\"full_name\":\"HARIANDA\",\"nim\":\"2007412024\",\"study_program\":\"teknik-informatika\"}', '2023-05-14 02:56:28', '2023-05-14 02:56:28'),
(2, 62, '{\"full_name\":\"BILVAN\",\"nim\":\"2007412025\",\"study_program\":\"teknik-informatika\"}', '2023-05-20 09:17:06', '2023-05-20 09:17:06');

-- --------------------------------------------------------

--
-- Table structure for table `admin_user_permissions`
--

CREATE TABLE `admin_user_permissions` (
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_user_permissions`
--

INSERT INTO `admin_user_permissions` (`user_id`, `permission_id`, `created_at`, `updated_at`) VALUES
(63, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `borrow_rooms`
--

CREATE TABLE `borrow_rooms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `borrower_id` int(10) UNSIGNED NOT NULL,
  `room_id` bigint(20) UNSIGNED NOT NULL,
  `borrow_at` datetime NOT NULL,
  `until_at` datetime NOT NULL,
  `lecturer_id` int(10) UNSIGNED NOT NULL,
  `lecturer_approval_status` tinyint(4) NOT NULL DEFAULT 0,
  `admin_id` int(10) UNSIGNED DEFAULT NULL,
  `admin_approval_status` tinyint(4) DEFAULT NULL,
  `processed_at` datetime DEFAULT NULL,
  `returned_at` datetime DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `borrow_rooms`
--

INSERT INTO `borrow_rooms` (`id`, `borrower_id`, `room_id`, `borrow_at`, `until_at`, `lecturer_id`, `lecturer_approval_status`, `admin_id`, `admin_approval_status`, `processed_at`, `returned_at`, `notes`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 61, 1, '2023-05-15 09:56:00', '2023-05-16 09:56:00', 3, 1, 63, 1, NULL, NULL, NULL, '2023-05-14 02:56:28', '2023-05-20 09:32:36', NULL),
(2, 62, 1, '2023-05-21 09:56:00', '2023-05-22 09:56:00', 7, 1, 63, 1, '2023-05-21 06:00:00', '2023-05-22 00:00:00', 'Jangan lupa dirapikan kembali', '2023-05-20 09:17:06', '2023-05-20 09:32:23', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) NOT NULL,
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
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_04_173148_create_admin_tables', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2021_08_03_195726_create_room_types_table', 1),
(6, '2021_08_03_201834_create_rooms_table', 1),
(7, '2021_08_05_200746_create_borrow_rooms_table', 1),
(8, '2021_08_10_204722_create_admin_user_details_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `max_people` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `notes` text DEFAULT NULL,
  `room_type_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `name`, `max_people`, `status`, `notes`, `room_type_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Laboratorium Prepress\r\n', 20, 0, NULL, 3, '2021-08-05 12:08:55', '2021-08-05 12:11:17', NULL),
(2, 'Laboratorium Cetak SM74\r\n', 20, 0, NULL, 3, '2021-08-05 12:19:45', '2021-08-05 12:19:45', NULL),
(3, 'Laboratorium Cetak SM52\r\n', 20, 0, NULL, 4, '2021-08-05 12:32:33', '2021-08-05 12:32:33', NULL),
(4, 'Laboratorium Cetak GTO 52 \r\n', 20, 0, NULL, 4, '2021-08-05 12:32:45', '2021-08-05 12:32:45', NULL),
(5, 'Laboratorium Post Press', 20, 0, NULL, 5, '2021-08-05 12:32:57', '2021-08-05 12:32:57', NULL),
(6, 'Laboratorium Sablon\r\n', 20, 0, NULL, 5, '2021-08-05 12:33:09', '2021-08-05 12:33:09', NULL),
(7, 'Laboratorium Digital Print\r\n', 20, 0, NULL, 6, '2021-08-05 12:33:30', '2021-08-05 12:33:30', NULL),
(8, 'Laboratorium Komputer\r\n', 20, 0, NULL, 6, '2021-08-05 12:33:45', '2021-08-05 12:33:45', NULL),
(9, 'Laboratorium Fotografi\r\n', 20, 0, NULL, 7, '2021-08-05 12:34:02', '2021-08-05 12:34:02', NULL),
(10, 'Laboratorium Studio Desain Grafis\r\n', 20, 0, NULL, 8, '2021-08-05 12:34:25', '2021-08-05 12:34:25', NULL),
(11, 'Laboratorium Penerbitan\r\n', 20, 0, NULL, 9, '2021-08-05 12:34:49', '2021-08-05 12:34:49', NULL),
(12, 'Laboratorium Jurnalistik\r\n', 20, 0, NULL, 10, '2021-08-05 12:35:12', '2021-08-05 12:35:12', NULL),
(13, 'Laboratorium Ilmu Bahan', 20, 0, NULL, 11, '2021-08-05 12:35:34', '2021-08-05 12:35:34', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `room_types`
--

CREATE TABLE `room_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `is_active` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `room_types`
--

INSERT INTO `room_types` (`id`, `name`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Lab', 1, '2021-08-04 15:52:24', '2021-08-04 15:52:24'),
(2, 'Kelas', 1, '2021-08-04 15:52:24', '2021-08-04 15:52:24'),
(3, 'Workspace Multimedia', 1, '2021-08-05 12:09:56', '2021-08-05 12:09:56'),
(4, 'Workspace Rendering', 1, '2021-08-05 12:20:58', '2021-08-05 12:20:58'),
(5, 'Workspace Software Development', 1, '2021-08-05 12:21:08', '2021-08-05 12:21:08'),
(6, 'Workspace Data Science', 1, '2021-08-05 12:21:22', '2021-08-05 12:21:22'),
(7, 'Workspace Animation', 1, '2021-08-05 12:21:29', '2021-08-05 12:21:29'),
(8, 'Workspace Geography Information System', 1, '2021-08-05 12:21:43', '2021-08-05 12:21:43'),
(9, 'Workspace Photogrammetry', 1, '2021-08-05 12:23:16', '2021-08-05 12:23:16'),
(10, 'Workspace Remote Sensing', 1, '2021-08-05 12:23:25', '2021-08-05 12:23:25'),
(11, 'Workspace Attack and Defense', 1, '2021-08-05 12:23:32', '2021-08-05 12:23:32'),
(12, 'Workspace Data Security and Privacy', 1, '2021-08-05 12:23:39', '2021-08-05 12:23:39'),
(13, 'Workspace Cyber Forensic', 1, '2021-08-05 12:23:46', '2021-08-05 12:23:46'),
(14, 'Workspace Virtual Reality', 1, '2021-08-05 12:23:54', '2021-08-05 12:23:54'),
(15, 'Workspace Motion Capture', 1, '2021-08-05 12:24:02', '2021-08-05 12:24:02'),
(16, 'Workspace Animation Production', 1, '2021-08-05 12:24:09', '2021-08-05 12:24:09'),
(17, 'Workspace Creative Art Studio', 1, '2021-08-05 12:24:15', '2021-08-05 12:24:15'),
(18, 'Studio Fotografi', 1, '2021-08-05 12:24:22', '2021-08-05 12:24:22'),
(19, 'Studio Broadcasting', 1, '2021-08-05 12:24:34', '2021-08-05 12:24:34'),
(20, 'Studio Audio', 1, '2021-08-05 12:24:43', '2021-08-05 12:24:43'),
(21, 'Workspace Clay Modelling', 1, '2021-08-05 12:24:50', '2021-08-05 12:24:50'),
(22, 'Workspace Terrestrial Survey', 1, '2021-08-05 12:25:01', '2021-08-05 12:25:01'),
(23, 'Workspace Hydrographic Survey', 1, '2021-08-05 12:25:10', '2021-08-05 12:25:10');

-- --------------------------------------------------------

--
-- Table structure for table `tb_peminjaman`
--

CREATE TABLE `tb_peminjaman` (
  `id_peminjaman` varchar(10) NOT NULL,
  `peminjam` varchar(25) NOT NULL,
  `ruangan_dipinjam` varchar(15) NOT NULL,
  `keterangan` varchar(50) NOT NULL,
  `waktu_pengajuan` datetime NOT NULL,
  `waktu_penyetujuan` datetime NOT NULL,
  `waktu_pembatalan` datetime NOT NULL,
  `waktu_pengembalian` datetime NOT NULL,
  `verifikasi_bp` varchar(5) NOT NULL,
  `verifikasi_kabag` varchar(5) NOT NULL,
  `status_pinjam` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tb_peminjaman`
--

INSERT INTO `tb_peminjaman` (`id_peminjaman`, `peminjam`, `ruangan_dipinjam`, `keterangan`, `waktu_pengajuan`, `waktu_penyetujuan`, `waktu_pembatalan`, `waktu_pengembalian`, `verifikasi_bp`, `verifikasi_kabag`, `status_pinjam`) VALUES
('DPK-00001', 'Bagian Umum', 'Kelas-01', 'Diskusi desain interior rumah', '2019-02-10 23:53:50', '2019-02-11 00:07:37', '0000-00-00 00:00:00', '2019-02-11 00:09:17', 'OK', 'OK', 'Selesai'),
('DPK-00002', 'Bagian Umum', 'Kelas-01', 'Rapat rutin', '2019-02-25 16:10:10', '2019-02-25 16:10:59', '0000-00-00 00:00:00', '2019-02-25 16:11:14', 'OK', 'OK', 'Selesai'),
('DPK-00003', 'Ahmad Rivaldy S', 'Kelas-02', 'Diskusi tentang web design', '2019-02-25 16:45:42', '2019-02-25 16:51:37', '0000-00-00 00:00:00', '2019-02-25 16:56:37', 'OK', 'OK', 'Selesai'),
('DPK-00004', 'Ahmad Rivaldy S', 'Kelas-01', 'Kegiatan UKM', '2019-03-15 21:34:54', '2019-03-15 21:36:58', '0000-00-00 00:00:00', '2019-03-15 21:39:00', 'OK', 'OK', 'Selesai'),
('DPK-00005', 'Ahmad Rivaldy S', 'Kelas-01', 'Mengerjakan tugas', '2019-03-22 08:50:09', '2019-03-22 08:52:07', '0000-00-00 00:00:00', '2019-03-22 10:21:20', 'OK', 'OK', 'Selesai'),
('DPK-00006', 'Ahmad Rivaldy S', 'Kelas-02', 'Untuk bimbingan', '2019-03-22 10:15:44', '2019-03-22 10:16:53', '0000-00-00 00:00:00', '2019-03-22 10:21:16', 'OK', 'OK', 'Selesai'),
('DPK-00007', 'Ahmad Rivaldy S', 'Kelas-02', 'meeting HIMA', '2019-03-22 10:21:39', '2019-03-22 10:23:02', '0000-00-00 00:00:00', '2019-04-13 16:13:24', 'OK', 'OK', 'Selesai'),
('DPK-00008', 'Bagian Umum', 'Kelas-01', 'Latihan gambar', '2019-04-13 17:54:46', '2019-04-13 17:55:37', '0000-00-00 00:00:00', '2019-04-13 17:59:29', 'OK', 'OK', 'Selesai'),
('DPK-00009', 'Ahmad Rivaldy S', 'Kelas-01', 'Mengulas film', '2019-05-08 20:16:21', '2019-05-08 21:34:22', '0000-00-00 00:00:00', '2019-05-08 21:55:56', 'OK', 'OK', 'Selesai'),
('DPK-00010', 'Ahmad Rivaldy S', 'Kelas-01', 'Bimbingan TA', '2019-05-08 21:57:47', '2019-05-08 22:21:35', '0000-00-00 00:00:00', '2019-05-08 22:29:29', 'OK', 'OK', 'Selesai'),
('DPK-00011', 'Ahmad Rivaldy S', 'Kelas-01', 'Mengerjakan laporan TA', '2019-06-17 15:03:16', '2019-06-17 15:05:35', '0000-00-00 00:00:00', '2019-06-17 15:07:10', 'OK', 'OK', 'Selesai'),
('DPK-00012', 'Ahmad Rivaldy S', 'Kelas-01', 'Mengulas teori web', '2019-06-19 13:12:58', '2019-06-19 13:15:25', '0000-00-00 00:00:00', '2019-06-19 13:18:18', 'OK', 'OK', 'Selesai'),
('DPK-00013', 'User', 'Kelas-01', 'Tes pengajuan peminjaman', '2019-06-27 16:05:41', '2019-06-27 16:18:56', '0000-00-00 00:00:00', '2019-06-27 16:20:07', 'OK', 'OK', 'Selesai'),
('DPK-00014', 'User', 'Kelas-02', 'Belajar pembuatan web', '2019-06-27 16:20:43', '2019-06-27 16:22:56', '0000-00-00 00:00:00', '2019-06-27 16:23:15', 'OK', 'OK', 'Selesai');

-- --------------------------------------------------------

--
-- Table structure for table `tb_ruangan`
--

CREATE TABLE `tb_ruangan` (
  `id_ruangan` varchar(10) NOT NULL,
  `nama_ruangan` varchar(15) NOT NULL,
  `status` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tb_ruangan`
--

INSERT INTO `tb_ruangan` (`id_ruangan`, `nama_ruangan`, `status`) VALUES
('R001', 'Kelas-01', 'Tersedia'),
('R002', 'Kelas-02', 'Tersedia');

-- --------------------------------------------------------

--
-- Table structure for table `tb_tap`
--

CREATE TABLE `tb_tap` (
  `id` int(5) NOT NULL,
  `id_kartu` varchar(20) NOT NULL,
  `nama_ruangan` varchar(15) NOT NULL,
  `waktu_akses` datetime NOT NULL,
  `waktu_tutup` datetime NOT NULL,
  `status_akses` varchar(10) NOT NULL DEFAULT 'Dibuka'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tb_tap`
--

INSERT INTO `tb_tap` (`id`, `id_kartu`, `nama_ruangan`, `waktu_akses`, `waktu_tutup`, `status_akses`) VALUES
(9, 'RFID-16950119', 'Ruang Kelas-01', '2019-02-27 01:26:01', '2019-02-27 01:26:14', 'Ditutup'),
(10, 'RFID-16950119', 'Ruang Kelas-01', '2019-02-27 01:26:32', '2019-02-27 01:26:48', 'Ditutup'),
(11, 'RFID-16950119', 'Ruang Kelas-01', '2019-02-27 01:27:51', '2019-02-27 01:28:03', 'Ditutup'),
(12, 'RFID-16950119', 'Ruang Kelas-01', '2019-02-27 09:52:05', '2019-02-27 09:52:34', 'Ditutup'),
(13, 'RFID-16950119', 'Ruang Kelas-01', '2019-02-27 10:12:08', '2019-02-27 10:12:16', 'Ditutup'),
(14, 'RFID-16950119', 'Ruang Kelas-01', '2019-02-27 10:14:15', '2019-02-27 10:14:31', 'Ditutup'),
(15, 'RFID-16950119', 'Ruang Kelas-01', '2019-02-27 10:17:39', '2019-02-27 10:18:10', 'Ditutup'),
(19, 'RFID-16950119', 'Ruang Kelas-01', '2019-02-28 08:58:39', '2019-02-28 08:59:02', 'Ditutup'),
(20, 'RFID-16950119', 'Ruang Kelas-01', '2019-03-01 07:39:50', '2019-03-01 07:40:43', 'Ditutup'),
(21, 'RFID-16950119', 'Ruang Kelas-01', '2019-03-01 07:52:38', '2019-03-01 07:57:25', 'Ditutup'),
(22, 'RFID-16950119', 'Ruang Kelas-01', '2019-03-01 07:56:03', '2019-03-01 07:57:25', 'Ditutup'),
(23, 'RFID-16950119', 'Ruang Kelas-01', '2019-03-01 07:57:17', '2019-03-01 07:57:25', 'Ditutup'),
(24, 'RFID-16950119', 'Ruang Kelas-01', '2019-03-01 08:02:52', '2019-03-01 08:03:07', 'Ditutup'),
(25, 'RFID-16950119', 'Ruang Kelas-01', '2019-03-01 08:06:27', '2019-03-01 08:07:25', 'Ditutup'),
(26, 'RFID-16950119', 'Ruang Kelas-01', '2019-03-11 20:07:01', '2019-03-11 20:07:29', 'Ditutup'),
(27, 'RFID-16950119', 'Ruang Kelas-01', '2019-03-11 20:16:23', '2019-03-11 20:17:04', 'Ditutup'),
(30, 'RFID-16950119', 'Ruang Kelas-01', '2019-03-12 06:25:45', '2019-03-12 06:33:22', 'Ditutup'),
(31, 'RFID-16950119', 'Ruang Kelas-01', '2019-03-12 06:32:18', '2019-03-12 06:33:22', 'Ditutup'),
(32, 'RFID-16950119', 'Ruang Kelas-01', '2019-03-12 06:36:38', '2019-03-12 06:37:15', 'Ditutup'),
(33, 'RFID-16950119', 'Ruang Kelas-01', '2019-03-12 06:38:54', '2019-03-12 06:40:12', 'Ditutup'),
(34, 'RFID-16950119', 'Ruang Kelas-01', '2019-03-12 06:45:47', '2019-03-12 06:46:33', 'Ditutup'),
(35, 'RFID-16950119', 'Ruang Kelas-01', '2019-03-15 21:37:16', '2019-03-15 21:42:09', 'Ditutup'),
(36, 'RFID-16950119', 'Ruang Kelas-01', '2019-03-22 08:53:51', '2019-03-22 08:54:30', 'Ditutup'),
(37, 'RFID-16950119', 'Ruang Kelas-01', '2019-03-22 09:04:10', '2019-03-22 09:04:34', 'Ditutup'),
(38, 'RFID-16950119', 'Ruang Kelas-01', '2019-03-22 10:17:49', '2019-03-22 10:24:22', 'Ditutup'),
(39, 'RFID-16950119', 'Ruang Kelas-01', '2019-03-22 10:24:13', '2019-03-22 10:24:22', 'Ditutup'),
(40, 'RFID-16950119', 'Ruang Kelas-01', '2019-06-17 11:28:36', '2019-06-17 11:31:42', 'Ditutup'),
(41, 'RFID-16950119', 'Ruang Kelas-01', '2019-06-17 11:31:34', '2019-06-17 11:31:42', 'Ditutup'),
(42, 'RFID-16950119', 'Ruang Kelas-01', '2019-06-17 15:06:27', '2019-06-17 15:06:58', 'Ditutup'),
(43, 'RFID-16950119', 'Ruang Kelas-01', '2019-06-19 09:55:46', '2019-06-19 09:55:53', 'Ditutup'),
(44, 'RFID-16950119', 'Ruang Kelas-01', '2019-06-19 13:17:33', '2019-06-19 13:17:56', 'Ditutup');

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `username` varchar(10) NOT NULL,
  `fullname` varchar(25) NOT NULL,
  `password` varchar(35) NOT NULL,
  `level` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`username`, `fullname`, `password`, `level`) VALUES
('aldy', 'Ahmad Rivaldy S', 'ae671ecd4ebee177c57dfbfbbf28cd83', 'Pengguna Ruangan'),
('biropend', 'Biro Pendidikan', '215e95f88936b204603dfcff01e9f614', 'Biro Pendidikan'),
('kabag', 'Kabag/Kaprodi', '215e95f88936b204603dfcff01e9f614', 'Kabag/Kaprodi'),
('umum', 'Bagian Umum', '215e95f88936b204603dfcff01e9f614', 'Bagian Umum'),
('user', 'User', 'ae671ecd4ebee177c57dfbfbbf28cd83', 'Pengguna Ruangan');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_menu`
--
ALTER TABLE `admin_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_operation_log`
--
ALTER TABLE `admin_operation_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_operation_log_user_id_index` (`user_id`);

--
-- Indexes for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_permissions_name_unique` (`name`),
  ADD UNIQUE KEY `admin_permissions_slug_unique` (`slug`);

--
-- Indexes for table `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_roles_name_unique` (`name`),
  ADD UNIQUE KEY `admin_roles_slug_unique` (`slug`);

--
-- Indexes for table `admin_role_menu`
--
ALTER TABLE `admin_role_menu`
  ADD KEY `admin_role_menu_role_id_menu_id_index` (`role_id`,`menu_id`);

--
-- Indexes for table `admin_role_permissions`
--
ALTER TABLE `admin_role_permissions`
  ADD KEY `admin_role_permissions_role_id_permission_id_index` (`role_id`,`permission_id`);

--
-- Indexes for table `admin_role_users`
--
ALTER TABLE `admin_role_users`
  ADD KEY `admin_role_users_role_id_user_id_index` (`role_id`,`user_id`);

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_users_username_unique` (`username`);

--
-- Indexes for table `admin_user_details`
--
ALTER TABLE `admin_user_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_user_permissions`
--
ALTER TABLE `admin_user_permissions`
  ADD KEY `admin_user_permissions_user_id_permission_id_index` (`user_id`,`permission_id`);

--
-- Indexes for table `borrow_rooms`
--
ALTER TABLE `borrow_rooms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `borrow_rooms_room_id_foreign` (`room_id`),
  ADD KEY `borrow_rooms_borrower_id_foreign` (`borrower_id`),
  ADD KEY `borrow_rooms_lecturer_id_foreign` (`lecturer_id`),
  ADD KEY `borrow_rooms_admin_id_foreign` (`admin_id`);

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
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rooms_room_type_id_foreign` (`room_type_id`);

--
-- Indexes for table `room_types`
--
ALTER TABLE `room_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_peminjaman`
--
ALTER TABLE `tb_peminjaman`
  ADD PRIMARY KEY (`id_peminjaman`);

--
-- Indexes for table `tb_ruangan`
--
ALTER TABLE `tb_ruangan`
  ADD PRIMARY KEY (`id_ruangan`);

--
-- Indexes for table `tb_tap`
--
ALTER TABLE `tb_tap`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`username`);

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
-- AUTO_INCREMENT for table `admin_menu`
--
ALTER TABLE `admin_menu`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `admin_operation_log`
--
ALTER TABLE `admin_operation_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=313;

--
-- AUTO_INCREMENT for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `admin_roles`
--
ALTER TABLE `admin_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `admin_user_details`
--
ALTER TABLE `admin_user_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `borrow_rooms`
--
ALTER TABLE `borrow_rooms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `room_types`
--
ALTER TABLE `room_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `tb_tap`
--
ALTER TABLE `tb_tap`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `borrow_rooms`
--
ALTER TABLE `borrow_rooms`
  ADD CONSTRAINT `borrow_rooms_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admin_users` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `borrow_rooms_borrower_id_foreign` FOREIGN KEY (`borrower_id`) REFERENCES `admin_users` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `borrow_rooms_lecturer_id_foreign` FOREIGN KEY (`lecturer_id`) REFERENCES `admin_users` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `borrow_rooms_room_id_foreign` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`);

--
-- Constraints for table `rooms`
--
ALTER TABLE `rooms`
  ADD CONSTRAINT `rooms_room_type_id_foreign` FOREIGN KEY (`room_type_id`) REFERENCES `room_types` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
