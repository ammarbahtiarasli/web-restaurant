-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 03, 2021 at 04:31 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ujikom_restoran_ammar`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_activation_attempts`
--

CREATE TABLE `auth_activation_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_groups`
--

CREATE TABLE `auth_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_groups`
--

INSERT INTO `auth_groups` (`id`, `name`, `description`) VALUES
(1, 'admin', 'site administrator'),
(2, 'user', 'site user'),
(3, 'owner', 'site owner'),
(4, 'kasir', 'manage site kasir'),
(5, 'waiter', 'manage site waiter');

-- --------------------------------------------------------

--
-- Table structure for table `auth_groups_permissions`
--

CREATE TABLE `auth_groups_permissions` (
  `group_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `permission_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_groups_permissions`
--

INSERT INTO `auth_groups_permissions` (`group_id`, `permission_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(3, 4);

-- --------------------------------------------------------

--
-- Table structure for table `auth_groups_users`
--

CREATE TABLE `auth_groups_users` (
  `group_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_groups_users`
--

INSERT INTO `auth_groups_users` (`group_id`, `user_id`) VALUES
(1, 1),
(2, 5),
(2, 5),
(2, 6),
(2, 12),
(2, 13),
(2, 14),
(2, 15),
(3, 3),
(4, 4),
(5, 7);

-- --------------------------------------------------------

--
-- Table structure for table `auth_logins`
--

CREATE TABLE `auth_logins` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `user_id` int(11) UNSIGNED DEFAULT NULL,
  `date` datetime NOT NULL,
  `success` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_logins`
--

INSERT INTO `auth_logins` (`id`, `ip_address`, `email`, `user_id`, `date`, `success`) VALUES
(1, '::1', 'ammarbahtiarasli@gmail.com', NULL, '2021-01-16 08:48:42', 0),
(2, '::1', 'ammarbahtiarasli@gmail.com', NULL, '2021-01-16 08:48:47', 0),
(3, '::1', 'ammarbahtiarasli@gmail.com', NULL, '2021-01-16 08:48:52', 0),
(4, '::1', 'user@gmail.com', 2, '2021-01-16 09:01:58', 1),
(5, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-01-16 09:09:08', 1),
(6, '::1', 'user@gmail.com', 2, '2021-01-16 09:09:48', 1),
(7, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-01-16 09:10:56', 1),
(8, '::1', 'user@gmail.com', 2, '2021-01-16 09:13:33', 1),
(9, '::1', 'owner@gmail.com', 3, '2021-01-16 09:19:21', 1),
(10, '::1', 'owner@gmail.com', 3, '2021-01-16 09:19:30', 1),
(11, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-01-16 09:22:31', 1),
(12, '::1', 'user@gmail.com', 2, '2021-01-16 09:23:03', 1),
(13, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-01-16 09:23:19', 1),
(14, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-01-16 21:16:19', 1),
(15, '::1', 'kasir@gmail.com', 4, '2021-01-16 21:22:52', 1),
(16, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-01-16 21:25:32', 1),
(17, '::1', 'user@gmail.com', 2, '2021-01-16 21:25:54', 1),
(18, '::1', 'owner@gmail.com', 3, '2021-01-16 21:26:12', 1),
(19, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-01-16 21:30:37', 1),
(20, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-01-17 02:42:04', 1),
(21, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-01-17 02:53:19', 1),
(22, '::1', 'owner@gmail.com', 3, '2021-01-17 02:54:44', 1),
(23, '::1', 'kasir@gmail.com', 4, '2021-01-17 02:54:59', 1),
(24, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-01-17 02:55:14', 1),
(25, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-01-17 03:08:03', 1),
(26, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-01-17 03:10:12', 1),
(27, '::1', 'user@gmail.com', 2, '2021-01-17 03:11:10', 1),
(28, '::1', 'user@gmail.com', 2, '2021-01-17 03:11:34', 1),
(29, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-01-17 03:20:09', 1),
(30, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-01-17 06:17:02', 1),
(31, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-01-17 06:25:33', 1),
(32, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-01-17 06:39:53', 1),
(33, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-01-17 06:50:10', 1),
(34, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-01-17 06:55:17', 1),
(35, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-01-17 07:08:37', 1),
(36, '::1', 'user@gmail.com', 2, '2021-01-17 07:12:27', 1),
(37, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-01-17 07:17:43', 1),
(38, '::1', 'user@gmail.com', 2, '2021-01-17 08:13:11', 1),
(39, '::1', 'kasir@gmail.com', 4, '2021-01-17 08:13:22', 1),
(40, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-01-17 08:13:46', 1),
(41, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-01-17 22:28:49', 1),
(42, '::1', 'user@gmail.com', 2, '2021-01-17 22:43:33', 1),
(43, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-01-17 22:56:18', 1),
(44, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-01-17 23:45:20', 1),
(45, '::1', 'ammarbahtiarasli@gmail.com', NULL, '2021-01-18 11:10:37', 0),
(46, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-01-18 11:10:43', 1),
(47, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-01-19 06:20:50', 1),
(48, '::1', 'user@gmail.com', 2, '2021-01-19 20:56:34', 1),
(49, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-01-19 20:57:11', 1),
(50, '::1', 'owner@gmail.com', 3, '2021-01-19 21:06:29', 1),
(51, '::1', 'kasir@gmail.com', 4, '2021-01-19 21:07:22', 1),
(52, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-01-19 22:22:46', 1),
(53, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-01-20 02:40:18', 1),
(54, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-01-20 02:43:48', 1),
(55, '::1', 'owner@gmail.com', 3, '2021-01-20 02:44:07', 1),
(56, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-01-20 08:58:38', 1),
(57, '::1', 'owner@gmail.com', 3, '2021-01-20 08:59:02', 1),
(58, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-01-20 21:07:47', 1),
(59, '::1', 'owner@gmail.com', 3, '2021-01-20 21:10:11', 1),
(60, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-01-21 02:16:20', 1),
(61, '::1', 'kasir@gmail.com', 4, '2021-01-21 02:26:38', 1),
(62, '::1', 'ammarbahtiarasli@gmail.com', NULL, '2021-01-21 02:29:38', 0),
(63, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-01-21 02:29:43', 1),
(64, '::1', 'owner@gmail.com', 3, '2021-01-21 06:50:52', 1),
(65, '::1', 'ammarbahtiarasli@gmail.com', NULL, '2021-01-21 06:52:57', 0),
(66, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-01-21 06:53:02', 1),
(67, '::1', 'user@gmail.com', 2, '2021-01-21 06:55:17', 1),
(68, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-01-21 07:06:17', 1),
(69, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-01-21 08:11:23', 1),
(70, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-01-21 08:14:16', 1),
(71, '::1', 'kasir@gmail.com', 4, '2021-01-21 08:51:11', 1),
(72, '::1', 'user@gmail.com', 2, '2021-01-21 08:51:28', 1),
(73, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-01-22 06:01:51', 1),
(74, '::1', 'ammarbahtiarasli@gmail.com', NULL, '2021-01-24 21:07:24', 0),
(75, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-01-24 21:07:28', 1),
(76, '::1', 'user2@gmail.com', 5, '2021-01-25 05:58:17', 1),
(77, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-01-25 05:58:54', 1),
(78, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-01-25 19:25:58', 1),
(79, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-01-25 22:09:45', 1),
(80, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-01-26 06:40:37', 1),
(81, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-01-26 06:43:55', 1),
(82, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-01-27 07:27:09', 1),
(83, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-01-27 21:30:57', 1),
(84, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-01-28 05:48:55', 1),
(85, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-01-29 01:42:24', 1),
(86, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-01-29 03:51:42', 1),
(87, '::1', 'user@gmail.com', 2, '2021-01-29 03:52:44', 1),
(88, '::1', 'owner@gmail.com', 3, '2021-01-29 03:53:04', 1),
(89, '::1', 'ammarbahtiarasli@gmail.com', NULL, '2021-01-29 04:09:12', 0),
(90, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-01-29 04:09:22', 1),
(91, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-01-29 07:39:57', 1),
(92, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-01-29 21:38:29', 1),
(93, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-01-30 01:04:23', 1),
(94, '::1', 'user@gmail.com', 2, '2021-01-30 06:54:11', 1),
(95, '::1', 'kasir@gmail.com', 4, '2021-01-30 06:54:33', 1),
(96, '::1', 'owner@gmail.com', 3, '2021-01-30 06:55:05', 1),
(97, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-01-30 06:55:58', 1),
(98, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-01-31 00:48:24', 1),
(99, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-01-31 07:44:38', 1),
(100, '::1', 'uigiug', NULL, '2021-01-31 21:11:56', 0),
(101, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-01-31 21:13:04', 1),
(102, '::1', 'admin', NULL, '2021-02-01 07:30:39', 0),
(103, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-02-01 07:30:44', 1),
(104, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-02-02 05:15:54', 1),
(105, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-02-02 21:02:51', 1),
(106, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-02-02 21:03:31', 1),
(107, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-02-03 18:54:20', 1),
(108, '::1', 'user@gmail.com', 2, '2021-02-03 18:58:20', 1),
(109, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-02-03 19:28:23', 1),
(110, '::1', 'admin', NULL, '2021-02-04 21:22:58', 0),
(111, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-02-04 21:23:03', 1),
(112, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-02-05 02:17:18', 1),
(113, '::1', 'admin', NULL, '2021-02-05 06:25:41', 0),
(114, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-02-05 06:25:45', 1),
(115, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-02-05 21:08:26', 1),
(116, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-02-06 07:27:12', 1),
(117, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-02-06 20:15:16', 1),
(118, '::1', 'admin', NULL, '2021-02-07 01:00:12', 0),
(119, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-02-07 01:00:21', 1),
(120, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-02-07 04:37:25', 1),
(121, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-02-07 07:36:11', 1),
(122, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-02-07 07:38:16', 1),
(123, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-02-07 20:46:15', 1),
(124, '::1', 'user@gmail.com', 2, '2021-02-07 21:05:16', 1),
(125, '::1', 'user@gmail.com', 2, '2021-02-07 21:05:53', 1),
(126, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-02-07 21:46:33', 1),
(127, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-02-08 01:12:46', 1),
(128, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-02-08 05:51:29', 1),
(129, '::1', 'user@gmail.com', 2, '2021-02-08 09:26:56', 1),
(130, '::1', 'user@gmail.com', 2, '2021-02-08 17:00:19', 1),
(131, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-02-08 17:03:14', 1),
(132, '::1', 'admin', NULL, '2021-02-08 21:00:03', 0),
(133, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-02-08 21:00:08', 1),
(134, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-02-09 05:25:59', 1),
(135, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-02-09 05:37:17', 1),
(136, '::1', 'user@gmail.com', 2, '2021-02-09 06:07:14', 1),
(137, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-02-09 07:28:40', 1),
(138, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-02-09 21:17:22', 1),
(139, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-02-10 00:48:49', 1),
(140, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-02-10 02:08:48', 1),
(141, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-02-10 02:14:51', 1),
(142, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-02-10 04:34:13', 1),
(143, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-02-10 21:34:00', 1),
(144, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-02-11 01:32:15', 1),
(145, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-02-11 02:31:46', 1),
(146, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-02-11 04:58:12', 1),
(147, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-02-11 05:20:25', 1),
(148, '::1', 'kasir@gmail.com', 4, '2021-02-11 07:18:21', 1),
(149, '::1', 'owner@gmail.com', 3, '2021-02-11 07:21:05', 1),
(150, '::1', 'user@gmail.com', 2, '2021-02-11 07:22:06', 1),
(151, '::1', 'admin', NULL, '2021-02-11 07:22:36', 0),
(152, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-02-11 07:22:40', 1),
(153, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-02-11 20:45:37', 1),
(154, '::1', 'kasir@gmail.com', 4, '2021-02-11 21:03:54', 1),
(155, '::1', 'owner@gmail.com', 3, '2021-02-11 21:04:45', 1),
(156, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-02-11 21:29:26', 1),
(157, '::1', 'admin', NULL, '2021-02-11 21:45:34', 0),
(158, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-02-11 21:45:39', 1),
(159, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-02-11 21:58:36', 1),
(160, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-02-12 00:33:10', 1),
(161, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-02-12 01:50:27', 1),
(162, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-02-12 20:07:29', 1),
(163, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-02-13 05:22:41', 1),
(164, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-02-13 05:23:30', 1),
(165, '::1', 'user@gmail.com', 2, '2021-02-13 07:28:13', 1),
(166, '::1', 'user2@gmail.com', 5, '2021-02-13 07:28:28', 1),
(167, '::1', 'user3@gmail.com', 6, '2021-02-13 07:28:41', 1),
(168, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-02-13 07:41:08', 1),
(169, '::1', 'admin', NULL, '2021-02-13 22:06:02', 0),
(170, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-02-13 22:06:10', 1),
(171, '::1', 'admin', NULL, '2021-02-13 23:41:28', 0),
(172, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-02-13 23:41:34', 1),
(173, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-02-14 05:07:37', 1),
(174, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-02-14 06:57:38', 1),
(175, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-02-14 07:04:55', 1),
(176, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-02-14 07:10:55', 1),
(177, '::1', 'user@gmail.com', 2, '2021-02-14 08:57:21', 1),
(178, '::1', 'user4@gmail.com', 8, '2021-02-14 08:58:21', 1),
(179, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-02-14 08:58:35', 1),
(180, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-02-14 09:00:19', 1),
(181, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-02-14 09:27:41', 1),
(182, '::1', 'kasir@gmail.com', 4, '2021-02-14 09:29:07', 1),
(183, '::1', 'owner@gmail.com', 3, '2021-02-14 09:29:29', 1),
(184, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-02-14 09:30:44', 1),
(185, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-02-14 09:37:25', 1),
(186, '::1', 'user@gmail.com', 2, '2021-02-14 09:40:34', 1),
(187, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-02-15 01:08:57', 1),
(188, '::1', 'admin', NULL, '2021-02-15 01:21:39', 0),
(189, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-02-15 01:21:51', 1),
(190, '::1', 'user4@gmail.com', 8, '2021-02-15 02:09:51', 1),
(191, '::1', 'user@gmail.com', 2, '2021-02-15 03:11:23', 1),
(192, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-02-15 03:41:59', 1),
(193, '::1', 'kasir@gmail.com', 4, '2021-02-15 05:49:58', 1),
(194, '::1', 'owner@gmail.com', 3, '2021-02-15 05:50:14', 1),
(195, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-02-15 05:50:44', 1),
(196, '::1', 'user@gmail.com', 2, '2021-02-15 07:43:04', 1),
(197, '::1', 'user', NULL, '2021-02-15 07:43:13', 0),
(198, '::1', 'user', NULL, '2021-02-15 07:43:16', 0),
(199, '::1', 'user', NULL, '2021-02-15 07:43:20', 0),
(200, '::1', 'user', NULL, '2021-02-15 07:43:23', 0),
(201, '::1', 'user', NULL, '2021-02-15 07:43:31', 0),
(202, '::1', 'user', NULL, '2021-02-15 07:43:36', 0),
(203, '::1', 'user@gmail.com', 2, '2021-02-15 07:43:48', 1),
(204, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-02-15 07:52:01', 1),
(205, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-02-15 21:33:52', 1),
(206, '::1', 'user@gmail.com', 2, '2021-02-15 21:45:21', 1),
(207, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-02-15 21:54:20', 1),
(208, '::1', 'admin', NULL, '2021-02-16 07:57:06', 0),
(209, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-02-16 07:57:12', 1),
(210, '::1', 'kasir@gmail.com', 4, '2021-02-16 08:24:18', 1),
(211, '::1', 'owner@gmail.com', 3, '2021-02-16 08:24:40', 1),
(212, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-02-16 08:24:56', 1),
(213, '::1', 'user@gmail.com', 2, '2021-02-16 08:52:38', 1),
(214, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-02-16 09:58:26', 1),
(215, '::1', 'user@gmail.com', 2, '2021-02-16 10:30:17', 1),
(216, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-02-16 10:33:50', 1),
(217, '::1', 'user@gmail.com', 2, '2021-02-16 10:36:42', 1),
(218, '::1', 'kasir@gmail.com', 4, '2021-02-16 10:40:35', 1),
(219, '::1', 'owner@gmail.com', 3, '2021-02-16 10:42:30', 1),
(220, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-02-16 10:43:34', 1),
(221, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-02-16 10:46:21', 1),
(222, '::1', 'user@gmail.com', 2, '2021-02-16 10:56:41', 1),
(223, '::1', 'kasir@gmail.com', 4, '2021-02-16 11:00:38', 1),
(224, '::1', 'owner@gmail.com', 3, '2021-02-16 11:02:54', 1),
(225, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-02-16 11:03:10', 1),
(226, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-02-16 11:25:22', 1),
(227, '::1', 'user@gmail.com', 2, '2021-02-16 11:34:55', 1),
(228, '::1', 'user@gmail.com', 2, '2021-02-16 18:07:42', 1),
(229, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-02-16 18:11:19', 1),
(230, '::1', 'user@gmail.com', 2, '2021-02-16 18:13:22', 1),
(231, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-02-16 18:20:21', 1),
(232, '::1', 'user@gmail.com', 2, '2021-02-16 18:20:56', 1),
(233, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-02-16 18:24:31', 1),
(234, '::1', 'user@gmail.com', 2, '2021-02-16 18:28:08', 1),
(235, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-02-16 18:44:27', 1),
(236, '::1', 'user@gmail.com', 2, '2021-02-16 19:08:08', 1),
(237, '::1', 'user@gmail.com', 2, '2021-02-17 10:00:27', 1),
(238, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-02-17 10:05:53', 1),
(239, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-02-17 10:08:18', 1),
(240, '::1', 'kasir@gmail.com', 4, '2021-02-17 10:09:03', 1),
(241, '::1', 'admin', NULL, '2021-02-17 19:19:30', 0),
(242, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-02-17 19:19:35', 1),
(243, '::1', 'user@gmail.com', 2, '2021-02-17 19:44:20', 1),
(244, '::1', 'kasir@gmail.com', 4, '2021-02-18 09:43:33', 1),
(245, '::1', 'user@gmail.com', 2, '2021-02-18 09:43:48', 1),
(246, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-02-18 13:59:06', 1),
(247, '::1', 'user@gmail.com', 2, '2021-02-18 13:59:24', 1),
(248, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-02-18 14:05:14', 1),
(249, '::1', 'user@gmail.com', 2, '2021-02-18 15:34:26', 1),
(250, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-02-18 18:48:57', 1),
(251, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-02-18 19:58:38', 1),
(252, '::1', 'waiter@gmail.com', 7, '2021-02-18 20:11:30', 1),
(253, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-02-18 20:13:00', 1),
(254, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-02-19 09:47:27', 1),
(255, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-02-19 14:08:31', 1),
(256, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-02-19 18:36:09', 1),
(257, '::1', 'user@gmail.com', 2, '2021-02-19 18:40:04', 1),
(258, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-02-20 08:19:58', 1),
(259, '::1', 'kasir@gmail.com', 4, '2021-02-20 08:31:17', 1),
(260, '::1', 'owner@gmail.com', 3, '2021-02-20 08:31:39', 1),
(261, '::1', 'waiter@gmail.com', 7, '2021-02-20 08:31:53', 1),
(262, '::1', 'user@gmail.com', 2, '2021-02-20 08:32:08', 1),
(263, '::1', 'user@gmail.com', 2, '2021-02-20 08:38:50', 1),
(264, '::1', 'user@gmail.com', 2, '2021-02-20 08:45:49', 1),
(265, '::1', 'user@gmail.com', 2, '2021-02-20 08:47:01', 1),
(266, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-02-20 08:47:42', 1),
(267, '::1', 'user@gmail.com', 2, '2021-02-20 08:49:40', 1),
(268, '::1', 'user@gmail.com', 2, '2021-02-20 08:52:27', 1),
(269, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-02-20 08:54:08', 1),
(270, '::1', 'user@gmail.com', 2, '2021-02-20 08:54:40', 1),
(271, '::1', 'kasir@gmail.com', 4, '2021-02-20 08:54:49', 1),
(272, '::1', 'user@gmail.com', 2, '2021-02-20 08:56:55', 1),
(273, '::1', 'user@gmail.com', 2, '2021-02-20 11:05:09', 1),
(274, '::1', 'user@gmail.com', 2, '2021-02-20 20:57:48', 1),
(275, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-02-20 20:58:41', 1),
(276, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-02-20 20:59:11', 1),
(277, '::1', 'user@gmail.com', 2, '2021-02-20 21:10:34', 1),
(278, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-02-20 21:12:19', 1),
(279, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-02-20 21:15:29', 1),
(280, '::1', 'user@gmail.com', 2, '2021-02-20 21:26:48', 1),
(281, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-02-20 21:27:16', 1),
(282, '::1', 'user@gmail.com', 2, '2021-02-20 21:39:59', 1),
(283, '::1', 'user@gmail.com', 2, '2021-02-21 09:46:58', 1),
(284, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-02-21 16:23:32', 1),
(285, '::1', 'user@gmail.com', 2, '2021-02-21 18:39:05', 1),
(286, '::1', 'user', NULL, '2021-02-21 18:43:47', 0),
(287, '::1', 'user@gmail.com', 2, '2021-02-21 18:44:01', 1),
(288, '::1', 'user@gmail.com', 2, '2021-02-21 19:28:19', 1),
(289, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-02-21 19:34:59', 1),
(290, '::1', 'user@gmail.com', 2, '2021-02-21 20:25:00', 1),
(291, '::1', 'user@gmail.com', 2, '2021-02-22 09:43:53', 1),
(292, '::1', 'waiter@gmail.com', 7, '2021-02-22 09:44:32', 1),
(293, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-02-22 15:31:34', 1),
(294, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-02-22 15:44:03', 1),
(295, '::1', 'user@gmail.com', 2, '2021-02-22 16:03:09', 1),
(296, '::1', 'user@gmail.com', 2, '2021-02-22 16:06:22', 1),
(297, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-02-22 16:11:33', 1),
(298, '::1', 'user@gmail.com', 2, '2021-02-22 16:20:17', 1),
(299, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-02-22 16:22:44', 1),
(300, '::1', 'user@gmail.com', 2, '2021-02-22 16:24:11', 1),
(301, '::1', 'user@gmail.com', 2, '2021-02-22 16:27:13', 1),
(302, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-02-22 18:39:37', 1),
(303, '::1', 'user@gmail.com', 2, '2021-02-22 18:41:29', 1),
(304, '::1', 'user@gmail.com', 2, '2021-02-22 18:55:50', 1),
(305, '::1', 'fdf', NULL, '2021-02-22 19:15:56', 0),
(306, '::1', 'user@gmail.com', 2, '2021-02-22 19:17:44', 1),
(307, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-02-22 19:24:58', 1),
(308, '::1', 'user@gmail.com', 2, '2021-02-22 19:46:33', 1),
(309, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-02-22 19:47:41', 1),
(310, '::1', 'kasir@gmail.com', 4, '2021-02-22 19:48:28', 1),
(311, '::1', 'owner@gmail.com', 3, '2021-02-22 19:48:51', 1),
(312, '::1', 'waiter@gmail.com', 7, '2021-02-22 19:49:07', 1),
(313, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-02-22 21:04:56', 1),
(314, '::1', 'kasir@gmail.com', 4, '2021-02-22 21:06:39', 1),
(315, '::1', 'waiter@gmail.com', 7, '2021-02-22 21:06:58', 1),
(316, '::1', 'owner@gmail.com', 3, '2021-02-22 21:07:14', 1),
(317, '::1', 'user@gmail.com', 2, '2021-02-22 21:07:29', 1),
(318, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-02-22 21:19:59', 1),
(319, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-02-23 08:25:53', 1),
(320, '::1', 'user@gmail.com', 2, '2021-02-23 08:38:34', 1),
(321, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-02-23 08:44:32', 1),
(322, '::1', 'user@gmail.com', 2, '2021-02-23 09:08:32', 1),
(323, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-02-23 09:50:26', 1),
(324, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-02-23 10:20:55', 1),
(325, '::1', 'user@gmail.com', 2, '2021-02-23 10:22:08', 1),
(326, '::1', 'user', NULL, '2021-02-23 10:23:28', 0),
(327, '::1', 'user', NULL, '2021-02-23 10:23:39', 0),
(328, '::1', 'user@gmail.com', 2, '2021-02-23 10:23:52', 1),
(329, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-02-23 10:25:29', 1),
(330, '::1', 'user@gmail.com', 2, '2021-02-23 10:26:38', 1),
(331, '::1', 'admin', NULL, '2021-02-23 10:28:11', 0),
(332, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-02-23 10:28:16', 1),
(333, '::1', 'user@gmail.com', 2, '2021-02-23 10:33:53', 1),
(334, '::1', 'user@gmail.com', 2, '2021-02-23 10:41:23', 1),
(335, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-02-23 11:24:02', 1),
(336, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-02-23 13:44:15', 1),
(337, '::1', 'user@gmail.com', 2, '2021-02-23 13:46:46', 1),
(338, '::1', 'waiter@gmail.com', 7, '2021-02-23 14:31:57', 1),
(339, '::1', 'user@gmail.com', 2, '2021-02-23 18:57:25', 1),
(340, '::1', 'waiter@gmail.com', 7, '2021-02-23 18:58:09', 1),
(341, '::1', 'user@gmail.com', 2, '2021-02-23 19:04:40', 1),
(342, '::1', 'user@gmail.com', 2, '2021-02-24 11:39:55', 1),
(343, '::1', 'waiter@gmail.com', 7, '2021-02-24 11:45:35', 1),
(344, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-02-24 11:45:50', 1),
(345, '::1', 'user@gmail.com', 2, '2021-02-24 21:12:49', 1),
(346, '::1', 'user@gmail.com', 2, '2021-02-25 10:21:47', 1),
(347, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-02-25 11:59:53', 1),
(348, '::1', 'user@gmail.com', 2, '2021-02-25 12:08:22', 1),
(349, '::1', 'user@gmail.com', 2, '2021-02-25 18:36:32', 1),
(350, '::1', 'user@gmail.com', 2, '2021-02-26 09:25:43', 1),
(351, '::1', 'user@gmail.com', 2, '2021-02-27 10:40:04', 1),
(352, '::1', 'user@gmail.com', 2, '2021-02-27 21:05:14', 1),
(353, '::1', 'user@gmail.com', 2, '2021-02-27 21:22:15', 1),
(354, '::1', 'user@gmail.com', 2, '2021-02-28 17:12:37', 1),
(355, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-02-28 18:09:26', 1),
(356, '::1', 'user@gmail.com', 2, '2021-02-28 18:23:27', 1),
(357, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-02-28 18:24:41', 1),
(358, '::1', 'user@gmail.com', 2, '2021-02-28 18:26:43', 1),
(359, '::1', 'user@gmail.com', 2, '2021-02-28 19:40:49', 1),
(360, '::1', 'user@gmail.com', 2, '2021-03-01 09:26:24', 1),
(361, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-03-01 13:12:06', 1),
(362, '::1', 'user@gmail.com', 2, '2021-03-01 13:14:52', 1),
(363, '::1', 'user@gmail.com', 2, '2021-03-01 16:30:29', 1),
(364, '::1', 'user@gmail.com', 2, '2021-03-01 18:45:51', 1),
(365, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-03-01 19:00:15', 1),
(366, '::1', 'user@gmail.com', 2, '2021-03-01 19:05:08', 1),
(367, '::1', 'user@gmail.com', 2, '2021-03-01 19:05:36', 1),
(368, '::1', 'user@gmail.com', 2, '2021-03-02 08:09:01', 1),
(369, '::1', 'waiter@gmail.com', 7, '2021-03-02 08:31:34', 1),
(370, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-03-02 08:35:34', 1),
(371, '::1', 'user@gmail.com', 2, '2021-03-02 08:43:10', 1),
(372, '::1', 'user@gmail.com', 2, '2021-03-02 14:13:45', 1),
(373, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-03-02 14:15:13', 1),
(374, '::1', 'user@gmail.com', 2, '2021-03-02 14:27:09', 1),
(375, '::1', 'user@gmail.com', 2, '2021-03-02 18:41:28', 1),
(376, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-03-02 19:05:00', 1),
(377, '::1', 'user@gmail.com', 2, '2021-03-02 19:21:52', 1),
(378, '::1', 'admin', NULL, '2021-03-02 20:49:56', 0),
(379, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-03-02 20:50:01', 1),
(380, '::1', 'user@gmail.com', 2, '2021-03-03 11:08:27', 1),
(381, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-03-03 11:57:20', 1),
(382, '::1', 'user@gmail.com', 2, '2021-03-03 13:57:49', 1),
(383, '::1', 'user@gmail.com', 2, '2021-03-03 20:57:08', 1),
(384, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-03-03 21:09:52', 1),
(385, '::1', 'user@gmail.com', 2, '2021-03-04 07:15:25', 1),
(386, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-03-04 07:19:36', 1),
(387, '::1', 'user@gmail.com', 2, '2021-03-04 07:46:23', 1),
(388, '::1', 'user3@gmail.com', 6, '2021-03-04 18:56:08', 1),
(389, '::1', 'user@gmail.com', 2, '2021-03-04 18:56:28', 1),
(390, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-03-04 19:04:34', 1),
(391, '::1', 'user@gmail.com', 2, '2021-03-05 10:54:09', 1),
(392, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-03-05 10:59:42', 1),
(393, '::1', 'user@gmail.com', 2, '2021-03-05 20:27:47', 1),
(394, '::1', 'user@gmail.com', 2, '2021-03-06 17:34:48', 1),
(395, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-03-06 17:37:47', 1),
(396, '::1', 'owner@gmail.com', 3, '2021-03-06 17:41:41', 1),
(397, '::1', 'user@gmail.com', 2, '2021-03-06 17:53:48', 1),
(398, '::1', 'user@gmail.com', 2, '2021-03-07 12:33:57', 1),
(399, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-03-07 12:38:55', 1),
(400, '::1', 'user@gmail.com', 2, '2021-03-07 20:04:54', 1),
(401, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-03-07 20:24:06', 1),
(402, '::1', 'user@gmail.com', 2, '2021-03-07 20:34:37', 1),
(403, '::1', 'user@gmail.com', 2, '2021-03-08 09:55:10', 1),
(404, '::1', 'user@gmail.com', 2, '2021-03-08 18:47:38', 1),
(405, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-03-08 18:53:59', 1),
(406, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-03-08 19:00:49', 1),
(407, '::1', 'user@gmail.com', 2, '2021-03-08 19:17:02', 1),
(408, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-03-08 20:16:09', 1),
(409, '::1', 'user@gmail.com', 2, '2021-03-09 08:03:43', 1),
(410, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-03-09 08:22:03', 1),
(411, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-03-09 18:04:43', 1),
(412, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-03-10 09:37:03', 1),
(413, '::1', 'user3@gmail.com', 6, '2021-03-10 10:27:55', 1),
(414, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-03-11 18:21:12', 1),
(415, '::1', 'user@gmail.com', 2, '2021-03-11 18:41:38', 1),
(416, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-03-11 18:43:18', 1),
(417, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-03-12 10:05:29', 1),
(418, '::1', 'user3@gmail.com', 6, '2021-03-12 12:47:49', 1),
(419, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-03-12 12:50:03', 1),
(420, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-03-12 13:49:35', 1),
(421, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-03-12 18:39:38', 1),
(422, '::1', 'waiter@gmail.com', 7, '2021-03-12 19:19:10', 1),
(423, '::1', 'kasir', NULL, '2021-03-12 19:22:25', 0),
(424, '::1', 'kasir ', NULL, '2021-03-12 19:22:32', 0),
(425, '::1', 'kasir@gmail.com', 4, '2021-03-12 19:22:38', 1),
(426, '::1', 'owner@gmail.com', 3, '2021-03-12 19:22:57', 1),
(427, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-03-12 19:23:08', 1),
(428, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-03-13 08:47:08', 1),
(429, '::1', 'waiter@gmail.com', 7, '2021-03-13 08:51:23', 1),
(430, '::1', 'kasir@gmail.com', 4, '2021-03-13 08:51:51', 1),
(431, '::1', 'waiter', NULL, '2021-03-13 10:27:26', 0),
(432, '::1', 'waiter@gmail.com', 7, '2021-03-13 10:27:34', 1),
(433, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-03-13 11:13:10', 1),
(434, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-03-13 19:08:48', 1),
(435, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-03-14 11:38:16', 1),
(436, '::1', 'kasir@gmail.com', 4, '2021-03-14 15:14:15', 1),
(437, '::1', 'user', NULL, '2021-03-14 15:15:16', 0),
(438, '::1', 'user@gmail.com', 2, '2021-03-14 15:15:22', 1),
(439, '::1', 'user@gmail.com', 2, '2021-03-15 10:33:20', 1),
(440, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-03-15 11:05:54', 1),
(441, '::1', 'user@gmail.com', 2, '2021-03-15 11:06:20', 1),
(442, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-03-15 11:07:52', 1),
(443, '::1', 'user', NULL, '2021-03-15 20:51:03', 0),
(444, '::1', 'admin', NULL, '2021-03-15 20:51:09', 0),
(445, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-03-15 20:51:14', 1),
(446, '::1', 'kasir@gmail.com', 4, '2021-03-15 20:57:59', 1),
(447, '::1', 'waiter@gmail.com', 7, '2021-03-15 20:59:55', 1),
(448, '::1', 'owner@gmail.com', 3, '2021-03-15 21:00:18', 1),
(449, '::1', 'user', NULL, '2021-03-15 21:00:38', 0),
(450, '::1', 'user@gmail.com', 2, '2021-03-15 21:00:44', 1),
(451, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-03-15 21:00:56', 1),
(452, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-03-16 07:47:23', 1),
(453, '::1', 'user@gmail.com', 2, '2021-03-16 09:38:23', 1),
(454, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-03-16 09:40:08', 1),
(455, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-03-16 11:44:50', 1),
(456, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-03-16 17:35:39', 1),
(457, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-03-16 18:57:03', 1),
(458, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-03-17 09:37:36', 1),
(459, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-03-17 12:15:33', 1),
(460, '::1', 'user@gmail.com', 2, '2021-03-17 12:23:45', 1),
(461, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-03-17 13:16:56', 1),
(462, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-03-17 19:18:11', 1),
(463, '::1', 'user', NULL, '2021-03-17 19:19:26', 0),
(464, '::1', 'user@gmail.com', 2, '2021-03-17 19:19:31', 1),
(465, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-03-17 19:21:16', 1),
(466, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-03-17 20:25:32', 1),
(467, '::1', 'waiter@gmail.com', 7, '2021-03-17 20:25:50', 1),
(468, '::1', 'owner@gmail.com', 3, '2021-03-17 20:26:24', 1),
(469, '::1', 'user@gmail.com', 2, '2021-03-17 20:31:39', 1),
(470, '::1', 'user@gmail.com', 2, '2021-03-18 10:13:26', 1),
(471, '::1', 'admin', NULL, '2021-03-18 10:14:29', 0),
(472, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-03-18 10:14:40', 1),
(473, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-03-18 21:03:24', 1),
(474, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-03-19 10:20:26', 1),
(475, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-03-19 18:42:06', 1),
(476, '::1', 'user@gmail.com', 2, '2021-03-20 08:34:22', 1),
(477, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-03-20 08:35:10', 1),
(478, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-03-20 11:06:06', 1),
(479, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-03-20 18:23:04', 1),
(480, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-03-21 10:43:32', 1),
(481, '::1', 'user@gmail.com', 2, '2021-03-21 11:21:20', 1),
(482, '::1', 'waiter@gmail.com', 7, '2021-03-21 11:22:33', 1),
(483, '::1', 'owner@gmail.com', 3, '2021-03-21 11:23:15', 1),
(484, '::1', 'kasir@gmail.com', 4, '2021-03-21 11:23:49', 1),
(485, '::1', 'admin', NULL, '2021-03-21 11:38:40', 0),
(486, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-03-21 11:38:44', 1),
(487, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-03-21 18:41:04', 1),
(488, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-03-22 09:14:22', 1),
(489, '::1', 'user@gmail.com', 2, '2021-03-22 10:39:30', 1),
(490, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-03-22 10:52:15', 1),
(491, '::1', 'waiter@gmail.com', 7, '2021-03-22 10:56:47', 1),
(492, '::1', 'waiter', NULL, '2021-03-22 11:19:12', 0),
(493, '::1', 'waiter@gmail.com', 7, '2021-03-22 11:19:17', 1),
(494, '::1', 'ammarwe@gmail.com', 11, '2021-03-22 11:37:27', 1),
(495, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-03-22 12:17:16', 1),
(496, '::1', 'waiter@gmail.com', 7, '2021-03-22 12:18:42', 1),
(497, '::1', 'user@gmail.com', 2, '2021-03-22 18:43:23', 1),
(498, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-03-22 18:44:35', 1),
(499, '::1', 'ammarwe@gmail.com', 11, '2021-03-22 18:55:51', 1),
(500, '::1', 'admin', NULL, '2021-03-22 18:56:40', 0),
(501, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-03-22 18:56:45', 1),
(502, '::1', 'user@gmail.com', 2, '2021-03-22 19:42:04', 1),
(503, '::1', 'ammarbahtiarasli', NULL, '2021-03-22 19:42:21', 0),
(504, '::1', 'ammarwe@gmail.com', 11, '2021-03-22 19:42:32', 1),
(505, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-03-22 20:01:05', 1),
(506, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-03-23 09:31:58', 1),
(507, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-03-23 19:05:55', 1),
(508, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-03-24 08:42:31', 1),
(509, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-03-24 10:02:28', 1),
(510, '::1', 'user@gmail.com', 2, '2021-03-24 10:05:49', 1),
(511, '::1', 'kasir@gmail.com', 4, '2021-03-24 10:08:37', 1),
(512, '::1', 'user@gmail.com', 2, '2021-03-24 10:10:12', 1),
(513, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-03-24 10:10:35', 1),
(514, '::1', 'usereuy', NULL, '2021-03-24 11:02:31', 0),
(515, '::1', 'usereuy', NULL, '2021-03-24 11:03:02', 0),
(516, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-03-24 11:03:52', 1),
(517, '::1', 'user_asli@gmail.com', 8, '2021-03-24 11:04:28', 1),
(518, '::1', 'user_asli@gmail.com', 8, '2021-03-24 11:07:36', 1),
(519, '::1', 'waiter@gmail.com', 7, '2021-03-24 11:12:10', 1),
(520, '::1', 'asep09@gmail.com', 12, '2021-03-24 11:13:07', 1),
(521, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-03-24 11:14:47', 1),
(522, '::1', 'user3', NULL, '2021-03-24 13:05:49', 0),
(523, '::1', 'user3', NULL, '2021-03-24 13:05:54', 0),
(524, '::1', 'user3', NULL, '2021-03-24 13:06:10', 0),
(525, '::1', 'user5@gmail.com', 9, '2021-03-24 13:06:23', 1),
(526, '::1', 'waiter@gmail.com', 7, '2021-03-24 13:06:41', 1),
(527, '::1', 'waiter@gmail.com', 7, '2021-03-24 13:08:03', 1),
(528, '::1', 'user', NULL, '2021-03-24 13:08:43', 0),
(529, '::1', 'user01@gmail.com', 13, '2021-03-24 13:08:48', 1),
(530, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-03-24 19:52:41', 1),
(531, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-03-24 20:09:04', 1),
(532, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-03-25 10:14:07', 1),
(533, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-03-25 10:16:30', 1),
(534, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-03-25 11:02:58', 1),
(535, '::1', 'user01@gmail.com', 13, '2021-03-25 14:08:26', 1),
(536, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-03-25 14:11:01', 1),
(537, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-03-25 17:19:21', 1),
(538, '::1', 'waiter@gmail.com', 7, '2021-03-25 17:27:48', 1),
(539, '::1', 'kasir@gmail.com', 4, '2021-03-25 17:28:40', 1),
(540, '::1', 'user01@gmail.com', 13, '2021-03-25 17:28:58', 1),
(541, '::1', 'owner@gmail.com', 3, '2021-03-25 17:29:11', 1),
(542, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-03-25 20:41:57', 1),
(543, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-03-25 20:50:26', 1),
(544, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-03-26 10:17:18', 1),
(545, '::1', 'user01@gmail.com', 13, '2021-03-26 10:42:10', 1),
(546, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-03-26 10:42:43', 1),
(547, '::1', 'waiter@gmail.com', 7, '2021-03-26 11:43:42', 1),
(548, '::1', 'userbaru26@gmail.com', 14, '2021-03-26 11:44:25', 1),
(549, '::1', 'kasir@gmail.com', 4, '2021-03-26 11:45:41', 1),
(550, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-03-26 11:47:41', 1),
(551, '::1', 'kasir@gmail.com', 4, '2021-03-26 11:48:12', 1),
(552, '::1', 'userbaru26@gmail.com', 14, '2021-03-26 11:49:43', 1),
(553, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-03-26 11:49:58', 1),
(554, '::1', 'user01@gmail.com', 13, '2021-03-26 11:50:12', 1),
(555, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-03-27 09:56:13', 1),
(556, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-03-27 18:44:10', 1),
(557, '::1', 'waiter@gmail.com', 7, '2021-03-27 19:00:57', 1),
(558, '::1', 'admin', NULL, '2021-03-27 19:01:40', 0),
(559, '::1', 'admin', NULL, '2021-03-27 19:01:45', 0),
(560, '::1', 'admin', NULL, '2021-03-27 19:01:51', 0),
(561, '::1', 'admin', NULL, '2021-03-27 19:01:56', 0),
(562, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-03-27 19:02:14', 1),
(563, '::1', 'user01@gmail.com', 13, '2021-03-27 19:14:48', 1),
(564, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-03-27 19:22:32', 1),
(565, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-03-28 01:17:29', 1),
(566, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-03-28 18:54:55', 1),
(567, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-03-29 09:34:37', 1),
(568, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-03-29 20:07:25', 1),
(569, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-03-29 20:10:35', 1),
(570, '::1', 'admin@gmail.com', NULL, '2021-03-29 20:52:42', 0),
(571, '::1', 'user01@gmail.com', 13, '2021-03-29 20:52:59', 1),
(572, '::1', 'admin', NULL, '2021-03-29 20:55:01', 0),
(573, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-03-29 20:55:11', 1),
(574, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-03-30 08:11:23', 1),
(575, '::1', 'user01@gmail.com', 13, '2021-03-30 08:22:02', 1),
(576, '::1', 'kasir@gmail.com', 4, '2021-03-30 08:22:55', 1),
(577, '::1', 'user01@gmail.com', 13, '2021-03-30 08:23:50', 1),
(578, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-03-30 08:24:16', 1),
(579, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-03-30 14:54:42', 1),
(580, '::1', 'admin', NULL, '2021-03-30 18:03:31', 0),
(581, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-03-30 18:03:36', 1),
(582, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-03-31 09:54:25', 1),
(583, '::1', 'user01@gmail.com', 13, '2021-03-31 13:46:03', 1),
(584, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-03-31 13:47:25', 1),
(585, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-03-31 18:55:20', 1),
(586, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-03-31 19:41:41', 1),
(587, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-03-31 21:10:28', 1),
(588, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-04-01 11:32:28', 1),
(589, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-04-01 13:38:17', 1),
(590, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-04-01 19:17:28', 1),
(591, '::1', 'user01@gmail.com', 13, '2021-04-01 19:18:52', 1),
(592, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-04-01 19:19:08', 1),
(593, '::1', 'owner@gmail.com', 3, '2021-04-01 19:19:24', 1),
(594, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-04-01 19:20:06', 1),
(595, '::1', 'udin123@gmail.com', 15, '2021-04-01 19:26:28', 1),
(596, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-04-01 19:26:45', 1),
(597, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-04-02 15:29:32', 1),
(598, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-04-02 19:59:47', 1),
(599, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-04-03 11:12:37', 1),
(600, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-04-03 21:13:08', 1),
(601, '::1', 'user01@gmail.com', 13, '2021-04-03 21:31:26', 1),
(602, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-04-05 11:36:34', 1),
(603, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-04-05 14:44:59', 1),
(604, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-04-05 20:59:15', 1),
(605, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-04-06 08:04:37', 1),
(606, '::1', 'user01@gmail.com', 13, '2021-04-06 08:11:42', 1),
(607, '::1', 'waiter@gmail.com', 7, '2021-04-06 08:12:13', 1),
(608, '::1', 'owner@gmail.com', 3, '2021-04-06 08:13:12', 1),
(609, '::1', 'kasir@gmail.com', 4, '2021-04-06 08:13:50', 1),
(610, '::1', 'user01@gmail.com', 13, '2021-04-06 08:14:38', 1),
(611, '::1', 'kasir@gmail.com', 4, '2021-04-06 08:15:35', 1),
(612, '::1', 'user01@gmail.com', 13, '2021-04-06 08:21:13', 1),
(613, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-04-06 08:21:30', 1),
(614, '::1', 'user01@gmail.com', 13, '2021-04-06 08:35:01', 1),
(615, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-04-06 08:35:29', 1),
(616, '::1', 'waiter@gmail.com', 7, '2021-04-06 10:06:20', 1),
(617, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-04-06 10:09:36', 1),
(618, '::1', 'user01@gmail.com', 13, '2021-04-06 10:18:53', 1),
(619, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-04-06 10:19:32', 1),
(620, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-04-06 10:30:13', 1),
(621, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-04-06 16:05:33', 1),
(622, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-04-06 20:26:57', 1),
(623, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-04-08 16:55:40', 1),
(624, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-04-12 20:03:40', 1),
(625, '::1', 'ammarbahtiarasli@gmail.com', 1, '2021-04-14 19:28:42', 1);

-- --------------------------------------------------------

--
-- Table structure for table `auth_permissions`
--

CREATE TABLE `auth_permissions` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_permissions`
--

INSERT INTO `auth_permissions` (`id`, `name`, `description`) VALUES
(1, 'manage-menu', 'manage all menu'),
(2, 'manage-pesanan', 'manage all pesanan'),
(3, 'manage-transaksi', 'manage all transaksi'),
(4, 'manage-laporan', 'manage all laporan'),
(5, 'manage-pengguna', 'manage all pengguna'),
(6, 'manage-tambah_user', 'manage all user');

-- --------------------------------------------------------

--
-- Table structure for table `auth_reset_attempts`
--

CREATE TABLE `auth_reset_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_tokens`
--

CREATE TABLE `auth_tokens` (
  `id` int(11) UNSIGNED NOT NULL,
  `selector` varchar(255) NOT NULL,
  `hashedValidator` varchar(255) NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `expires` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_users_permissions`
--

CREATE TABLE `auth_users_permissions` (
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `permission_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `detail_pesanan`
--

CREATE TABLE `detail_pesanan` (
  `id_detail_pesanan` int(5) NOT NULL,
  `id_pesanan` int(5) NOT NULL,
  `nama_menu` varchar(255) NOT NULL,
  `qty` int(5) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `detail_pesanan`
--

INSERT INTO `detail_pesanan` (`id_detail_pesanan`, `id_pesanan`, `nama_menu`, `qty`, `keterangan`) VALUES
(158, 80, 'Baso Beranak', 1, ''),
(159, 81, 'Kwetiwaw', 1, ''),
(160, 82, 'Es Jeruk', 1, ''),
(161, 83, 'Ayam Goyeng', 1, 'pake sambal'),
(162, 83, 'Air Mineral', 1, 'pake sambal'),
(163, 84, 'Jus Jambu', 1, ''),
(164, 85, 'Es Boba mantap', 2, '');

-- --------------------------------------------------------

--
-- Table structure for table `histori`
--

CREATE TABLE `histori` (
  `id_histori` int(10) NOT NULL,
  `id_pesanan` int(10) DEFAULT NULL,
  `id_user` int(10) DEFAULT NULL,
  `total_bayar` int(10) DEFAULT NULL,
  `status_pesanan` varchar(25) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `histori`
--

INSERT INTO `histori` (`id_histori`, `id_pesanan`, `id_user`, `total_bayar`, `status_pesanan`, `created_at`, `updated_at`) VALUES
(18, 80, 1, 15000, 'selesai', '2021-04-03 21:15:57', '2021-04-03 21:15:57'),
(19, 81, 1, 12000, 'selesai', '2021-04-03 21:16:07', '2021-04-03 21:16:07'),
(20, 82, 1, 5000, 'selesai', '2021-04-03 21:16:18', '2021-04-03 21:16:18'),
(21, 83, 13, 15000, 'selesai', '2021-04-06 08:17:13', '2021-04-06 08:17:13'),
(22, 85, 1, 16000, 'selesai', '2021-04-12 20:05:45', '2021-04-12 20:05:45');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(5) NOT NULL,
  `nama_kategori` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`) VALUES
(2, 'Minuman'),
(8, 'Makanan'),
(12, 'Snack'),
(14, 'Lainnya');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id_menu` int(5) NOT NULL,
  `nama_menu` varchar(25) NOT NULL,
  `nama_kategori` varchar(25) NOT NULL,
  `gambar` varchar(25) NOT NULL,
  `harga` int(10) NOT NULL,
  `deskripsi` text DEFAULT NULL,
  `status_menu` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id_menu`, `nama_menu`, `nama_kategori`, `gambar`, `harga`, `deskripsi`, `status_menu`) VALUES
(83, 'Baso Beranak', 'Makanan', 'baso.jpg', 15000, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas laoreet lectus a risus hendrerit, sed gravida dolor elementum.', 'Ready'),
(84, 'Kwetiwaw', 'Makanan', 'kwetiwaw.jpg', 12000, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas laoreet lectus a risus hendrerit, sed gravida dolor elementum.', 'Ready'),
(85, 'Es Jeruk', 'Minuman', 'es jeruk.jpg', 5000, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas laoreet lectus a risus hendrerit, sed gravida dolor elementum.', 'Ready'),
(86, 'Jus Apel', 'Minuman', 'jus apel.jpg', 10000, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas laoreet lectus a risus hendrerit, sed gravida dolor elementum.', 'Ready'),
(87, 'Lalap Segerr', 'Makanan', 'lalab.jpg', 10000, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas laoreet lectus a risus hendrerit, sed gravida dolor elementum.', 'Ready'),
(88, 'Tumis Kangkung', 'Makanan', 'oseng-kangkung.jpg', 6000, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas laoreet lectus a risus hendrerit, sed gravida dolor elementum.', 'Ready'),
(89, 'Jus Jambu', 'Minuman', 'jus jambu.jpg', 10000, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas laoreet lectus a risus hendrerit, sed gravida dolor elementum.', 'Ready'),
(90, 'Jus Kiwi', 'Minuman', 'jus kiwi.jpg', 10000, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas laoreet lectus a risus hendrerit, sed gravida dolor elementum.', 'Ready'),
(91, 'Nasi Padang', 'Makanan', 'padang.jpg', 10000, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas laoreet lectus a risus hendrerit, sed gravida dolor elementum.', 'Ready'),
(92, 'Pizza Hot', 'Makanan', 'pizza.jpg', 25000, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas laoreet lectus a risus hendrerit, sed gravida dolor elementum.', 'Ready'),
(93, 'Sate Maranggi', 'Makanan', 'sate.jpg', 20000, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas laoreet lectus a risus hendrerit, sed gravida dolor elementum.', 'Ready'),
(94, 'Usus Krispy', 'Makanan', 'usus.jpg', 10000, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas laoreet lectus a risus hendrerit, sed gravida dolor elementum.', 'Ready'),
(95, 'Ayam Goyeng', 'Makanan', 'ayam-goyeng.jpg', 12000, 'lorem ipsum dolor sit amet consectur hasjkas hueedk asjakslji hjas kase epowewe ', 'Ready'),
(96, 'Ayam Gepyek', 'Makanan', 'ayam-geprek.jpg', 10000, 'lorem ipsum dolor sit amet consectur hasjkas hueedk asjakslji hjas kase epowewe sdsdhsd dsjkds', 'Ready'),
(98, 'Air Mineral', 'Minuman', 'air.jpg', 3000, 'Lorem ipsum dolor sit amet consectur jamet', 'Ready'),
(99, 'Coca Cola', 'Minuman', 'cocacola.jpg', 5000, 'Lorem ipsum dolor sit amet consectur jamet', 'Ready'),
(100, 'Fanta', 'Minuman', 'fanta.jpg', 4000, 'Lorem ipsum dolor sit amet consectur jamet', 'Ready'),
(101, 'Kopi Indonesia', 'Minuman', 'kopi-jawa.jpg', 5000, 'Lorem ipsum dolor sit amet consectur jamet', 'Ready'),
(102, 'Kopi Robusa', 'Minuman', 'kopi-robusa.jpg', 5000, 'Lorem ipsum dolor sit amet consectur jamet', 'Ready'),
(103, 'Semur Jengkol', 'Makanan', 'jengkol.jpg', 6000, 'lorem ipsum dolor sit amet consectur jamet', 'Habis'),
(104, 'Es Boba mantap', 'Minuman', 'boba.jpg', 8000, 'lorem ipsum dolor sit amet consectur jamet', 'Ready'),
(105, 'Es Cendol', 'Minuman', 'cendol.jpg', 3000, 'lorem ipsum dolor sit amet consectur jamet', 'Ready'),
(106, 'Nasi Kuning', 'Makanan', 'nasikuning.jpg', 30000, 'Lorem ipsum dolor sit amet consectur jamet', 'Ready'),
(107, 'Opor Ayam', 'Makanan', 'oporayam.jpg', 20000, 'Lorem ipsum dolor sit amet consectur jamet', 'Ready'),
(108, 'Orek Tempe', 'Makanan', 'tempe.jpg', 3000, 'Lorem ipsum dolor sit amet consectur jamet', 'Ready'),
(123, 'dhsahdjs', 'Makanan', 'default.jpg', 232738, 'shdhsjkdas', ''),
(125, 'shdjkahsjdka', 'Snack', 'default.jpg', 50000, 'dhdjkkfhjkdsf', ''),
(126, 'naon we', 'Snack', 'default.jpg', 17000, 'asgdjguwbasdgjdk sgdjsa dgsj dga', 'Ready');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` text NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2017-11-20-223112', 'Myth\\Auth\\Database\\Migrations\\CreateAuthTables', 'default', 'Myth\\Auth', 1610804702, 1);

-- --------------------------------------------------------

--
-- Table structure for table `pesanan`
--

CREATE TABLE `pesanan` (
  `id_pesanan` int(5) NOT NULL,
  `no_meja` int(5) NOT NULL,
  `id_user` int(10) NOT NULL,
  `total_bayar` int(11) NOT NULL,
  `status_pesanan` varchar(25) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` int(5) NOT NULL,
  `id_user` int(10) NOT NULL,
  `id_pesanan` int(5) NOT NULL,
  `total_bayar` int(25) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `user_image` varchar(255) NOT NULL DEFAULT 'default.png',
  `password_hash` varchar(255) NOT NULL,
  `reset_hash` varchar(255) DEFAULT NULL,
  `reset_at` datetime DEFAULT NULL,
  `reset_expires` datetime DEFAULT NULL,
  `activate_hash` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `status_message` varchar(255) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `force_pass_reset` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `username`, `fullname`, `user_image`, `password_hash`, `reset_hash`, `reset_at`, `reset_expires`, `activate_hash`, `status`, `status_message`, `active`, `force_pass_reset`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'ammarbahtiarasli@gmail.com', 'admin', NULL, 'default.png', '$2y$10$Ai.H6XN6G11I5XNixXbX7.y3WuJDxtM4uuPj6Pp63NscXbWKp1pM2', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2021-01-16 08:49:30', '2021-01-16 08:49:30', NULL),
(3, 'owner@gmail.com', 'owner', NULL, 'default.png', '$2y$10$PdvSc6BB4dEWavqgr/TKT.NnWCgtgUGs0rBPFfxdlhytfxF5gvM0O', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2021-01-16 09:17:01', '2021-01-16 09:17:01', NULL),
(4, 'kasir@gmail.com', 'kasir', NULL, 'default.png', '$2y$10$9sogNnsGR6DB5jPRdMQ8ouIBo61y3knHokCAkpgtmay8H01kDqYZ2', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2021-01-16 21:20:03', '2021-01-16 21:20:03', NULL),
(5, 'user2@gmail.com', 'user2', NULL, 'default.png', '$2y$10$vJ.CnuYz1yp5fFI576.Dx.6yqT/WmAJEdhCHgBzCCZ6FW78wodIaW', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2021-01-25 05:58:10', '2021-03-12 14:56:21', '2021-03-12 14:56:21'),
(6, 'user3@gmail.com', 'user3', NULL, 'default.png', '$2y$10$8JD6osuxVTG8zlieRFyqIux7NPQjKHlKqO5aiNUfFIyahVJKYOdQm', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2021-02-12 01:06:29', '2021-03-12 14:57:14', '2021-03-12 14:57:14'),
(7, 'waiter@gmail.com', 'waiter', NULL, 'default.png', '$2y$10$WVKFDLsHqqBOjxABTd0QcefBPIUCTeF//0NL462Nb.CX6DIxSbbLq', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2021-02-14 07:10:41', '2021-02-14 07:10:41', NULL),
(9, 'user5@gmail.com', 'user5', NULL, 'default.png', '$2y$10$/7YKFgcQYtNV7iC1GMC7yOt59y78pNveQ1mmHWcNCYwp/yjEYB1PW', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2021-02-14 08:59:09', '2021-02-14 08:59:09', NULL),
(12, 'asep09@gmail.com', 'asepasli', NULL, 'default.png', '$2y$10$aeGyfvBdAN753dZTii.97uYXO5djUDWDr2xW5Uq0xyWxV4O1v3PK.', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2021-03-24 11:12:50', '2021-03-24 20:10:51', '2021-03-24 20:10:51'),
(13, 'user01@gmail.com', 'user', NULL, 'default.png', '$2y$10$aUNkx2oEUNBtL5Ukt/dfzuu/lKF8j5JmETAyjnvq5kH5PHjI0fkDa', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2021-03-24 13:08:26', '2021-03-24 13:08:26', NULL),
(14, 'userbaru26@gmail.com', 'user new', NULL, 'default.png', '$2y$10$kfME/tgYX.ow3XkLTG/zB.XpqMQRBftp6LuNCipBRdoNbnWb9dRHC', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2021-03-26 11:44:13', '2021-03-26 11:44:13', NULL),
(15, 'udin123@gmail.com', 'udineuy', NULL, 'default.png', '$2y$10$.jWNi4Kp9463nPkizMwsVewstVH901or6NygGrcLhwza.ZyfaGJVm', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2021-04-01 19:26:04', '2021-04-01 19:26:52', '2021-04-01 19:26:52');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_activation_attempts`
--
ALTER TABLE `auth_activation_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_groups`
--
ALTER TABLE `auth_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_groups_permissions`
--
ALTER TABLE `auth_groups_permissions`
  ADD KEY `auth_groups_permissions_permission_id_foreign` (`permission_id`),
  ADD KEY `group_id_permission_id` (`group_id`,`permission_id`);

--
-- Indexes for table `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  ADD KEY `auth_groups_users_user_id_foreign` (`user_id`),
  ADD KEY `group_id_user_id` (`group_id`,`user_id`);

--
-- Indexes for table `auth_logins`
--
ALTER TABLE `auth_logins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `auth_permissions`
--
ALTER TABLE `auth_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_reset_attempts`
--
ALTER TABLE `auth_reset_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_tokens`
--
ALTER TABLE `auth_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `auth_tokens_user_id_foreign` (`user_id`),
  ADD KEY `selector` (`selector`);

--
-- Indexes for table `auth_users_permissions`
--
ALTER TABLE `auth_users_permissions`
  ADD KEY `auth_users_permissions_permission_id_foreign` (`permission_id`),
  ADD KEY `user_id_permission_id` (`user_id`,`permission_id`);

--
-- Indexes for table `detail_pesanan`
--
ALTER TABLE `detail_pesanan`
  ADD PRIMARY KEY (`id_detail_pesanan`);

--
-- Indexes for table `histori`
--
ALTER TABLE `histori`
  ADD PRIMARY KEY (`id_histori`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id_menu`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pesanan`
--
ALTER TABLE `pesanan`
  ADD PRIMARY KEY (`id_pesanan`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_activation_attempts`
--
ALTER TABLE `auth_activation_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_groups`
--
ALTER TABLE `auth_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `auth_logins`
--
ALTER TABLE `auth_logins`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=626;

--
-- AUTO_INCREMENT for table `auth_permissions`
--
ALTER TABLE `auth_permissions`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `auth_reset_attempts`
--
ALTER TABLE `auth_reset_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_tokens`
--
ALTER TABLE `auth_tokens`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `detail_pesanan`
--
ALTER TABLE `detail_pesanan`
  MODIFY `id_detail_pesanan` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=165;

--
-- AUTO_INCREMENT for table `histori`
--
ALTER TABLE `histori`
  MODIFY `id_histori` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id_menu` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pesanan`
--
ALTER TABLE `pesanan`
  MODIFY `id_pesanan` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_transaksi` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_groups_permissions`
--
ALTER TABLE `auth_groups_permissions`
  ADD CONSTRAINT `auth_groups_permissions_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `auth_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_groups_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `auth_permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  ADD CONSTRAINT `auth_groups_users_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `auth_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_groups_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `auth_tokens`
--
ALTER TABLE `auth_tokens`
  ADD CONSTRAINT `auth_tokens_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `auth_users_permissions`
--
ALTER TABLE `auth_users_permissions`
  ADD CONSTRAINT `auth_users_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `auth_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_users_permissions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
