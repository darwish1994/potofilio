-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 15, 2020 at 05:38 PM
-- Server version: 5.7.28-0ubuntu0.18.04.4
-- PHP Version: 7.2.24-0ubuntu0.18.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `portfolio_2`
--

-- --------------------------------------------------------

--
-- Table structure for table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9),
(22, 4, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(23, 4, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, '{}', 2),
(24, 4, 'subtitle', 'text', 'Subtitle', 0, 1, 1, 1, 1, 1, '{}', 3),
(25, 4, 'description', 'text', 'Description', 0, 1, 1, 1, 1, 1, '{}', 4),
(26, 4, 'status', 'checkbox', 'Status', 0, 1, 1, 1, 1, 1, '{}', 5),
(27, 4, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(28, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(29, 4, 'deleted_at', 'timestamp', 'Deleted At', 0, 1, 1, 1, 1, 1, '{}', 8),
(30, 5, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(31, 5, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{}', 2),
(32, 5, 'code', 'text', 'Code', 1, 1, 1, 1, 1, 1, '{}', 3),
(33, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 4),
(34, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(35, 5, 'deleted_at', 'timestamp', 'Deleted At', 0, 1, 1, 1, 1, 1, '{}', 6),
(36, 7, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(37, 7, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, '{}', 2),
(38, 7, 'description', 'text', 'Description', 0, 1, 1, 1, 1, 1, '{}', 3),
(39, 7, 'type_id', 'select_dropdown', 'Type Id', 0, 1, 1, 1, 1, 1, '{}', 4),
(40, 7, 'git', 'text', 'Git', 0, 1, 1, 1, 1, 1, '{}', 5),
(41, 7, 'status', 'checkbox', 'Status', 0, 1, 1, 1, 1, 1, '{}', 6),
(42, 7, 'file', 'file', 'File', 0, 1, 1, 1, 1, 1, '{}', 7),
(43, 7, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{}', 8),
(44, 7, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 9),
(45, 7, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 10),
(46, 7, 'deleted_at', 'timestamp', 'Deleted At', 0, 1, 1, 1, 1, 1, '{}', 11),
(48, 7, 'project_belongsto_project_type_relationship', 'relationship', 'project_types', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\ProjectType\",\"table\":\"project_types\",\"type\":\"belongsTo\",\"column\":\"type_id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"data_rows\",\"pivot\":\"0\",\"taggable\":\"0\"}', 12),
(50, 6, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(51, 6, 'url', 'image', 'Url', 1, 1, 1, 1, 1, 1, '{}', 2),
(52, 6, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 3),
(53, 6, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 4),
(54, 6, 'deleted_at', 'timestamp', 'Deleted At', 0, 1, 1, 1, 1, 1, '{}', 5),
(55, 6, 'project_id', 'text', 'Project Id', 0, 1, 1, 1, 1, 1, '{}', 6),
(56, 6, 'project_image_belongsto_project_relationship', 'relationship', 'project', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\ProjectImage\",\"table\":\"project\",\"type\":\"belongsTo\",\"column\":\"project_id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"data_rows\",\"pivot\":\"0\",\"taggable\":\"0\"}', 7),
(57, 8, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(58, 8, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{}', 2),
(59, 8, 'school', 'text', 'School', 1, 1, 1, 1, 1, 1, '{}', 3),
(60, 8, 'from', 'date', 'From', 1, 1, 1, 1, 1, 1, '{}', 4),
(61, 8, 'to', 'date', 'To', 1, 1, 1, 1, 1, 1, '{}', 5),
(62, 8, 'degree', 'text', 'Degree', 1, 1, 1, 1, 1, 1, '{}', 6),
(63, 8, 'grade', 'number', 'Grade', 1, 1, 1, 1, 1, 1, '{}', 7),
(64, 9, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(65, 9, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{}', 2),
(66, 9, 'company', 'text', 'Company', 1, 1, 1, 1, 1, 1, '{}', 3),
(67, 9, 'start', 'date', 'Start', 1, 1, 1, 1, 1, 1, '{}', 4),
(68, 9, 'end', 'date', 'End', 0, 1, 1, 1, 1, 1, '{}', 5),
(69, 9, 'description', 'text', 'Description', 0, 1, 1, 1, 1, 1, '{}', 6),
(70, 9, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 7),
(71, 9, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(72, 9, 'deleted_at', 'timestamp', 'Deleted At', 0, 1, 1, 1, 1, 1, '{}', 9);

-- --------------------------------------------------------

--
-- Table structure for table `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2020-01-15 09:30:15', '2020-01-15 09:30:15'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2020-01-15 09:30:15', '2020-01-15 09:30:15'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, '', '', 1, 0, NULL, '2020-01-15 09:30:15', '2020-01-15 09:30:15'),
(4, 'skills', 'skills', 'Skill', 'Skills', 'voyager-activity', 'App\\Skill', NULL, NULL, NULL, 1, 0, '{\"order_column\":\"id\",\"order_display_column\":\"id\",\"order_direction\":\"asc\",\"default_search_key\":\"id\",\"scope\":null}', '2020-01-15 09:49:53', '2020-01-15 09:51:24'),
(5, 'project_types', 'project-types', 'Project Type', 'Project Types', 'voyager-tag', 'App\\ProjectType', NULL, NULL, NULL, 1, 0, '{\"order_column\":\"id\",\"order_display_column\":\"id\",\"order_direction\":\"asc\",\"default_search_key\":\"id\",\"scope\":null}', '2020-01-15 09:57:28', '2020-01-15 10:16:03'),
(6, 'project_image', 'project-image', 'Project Image', 'Project Images', 'voyager-photo', 'App\\ProjectImage', NULL, NULL, NULL, 1, 0, '{\"order_column\":\"id\",\"order_display_column\":\"id\",\"order_direction\":\"asc\",\"default_search_key\":\"id\",\"scope\":null}', '2020-01-15 09:58:19', '2020-01-15 10:31:40'),
(7, 'project', 'project', 'Project', 'Projects', 'voyager-folder', 'App\\Project', NULL, NULL, NULL, 1, 0, '{\"order_column\":\"id\",\"order_display_column\":\"id\",\"order_direction\":\"asc\",\"default_search_key\":\"id\",\"scope\":null}', '2020-01-15 09:59:17', '2020-01-15 11:57:23'),
(8, 'education', 'education', 'Education', 'Education', 'voyager-logbook', 'App\\Education', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-01-15 10:36:49', '2020-01-15 10:37:27'),
(9, 'experiance', 'experiance', 'Experiance', 'Experiances', NULL, 'App\\Experiance', NULL, NULL, NULL, 1, 0, '{\"order_column\":\"id\",\"order_display_column\":\"id\",\"order_direction\":\"asc\",\"default_search_key\":\"id\",\"scope\":null}', '2020-01-15 12:53:40', '2020-01-15 13:00:45');

-- --------------------------------------------------------

--
-- Table structure for table `education`
--

CREATE TABLE `education` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL,
  `school` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL,
  `from` date NOT NULL,
  `to` date NOT NULL,
  `degree` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL,
  `grade` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `experiance`
--

CREATE TABLE `experiance` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start` date NOT NULL,
  `end` date DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `experiance`
--

INSERT INTO `experiance` (`id`, `title`, `company`, `start`, `end`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Android Developer', 'logapps', '2018-01-01', '2019-02-15', 'Senior Android Developer 2sdfafsdasdafsda', '2020-01-15 13:02:47', '2020-01-15 13:02:47', NULL),
(2, 'Senior Android developer', 'awfarmarket', '2019-12-02', NULL, 'fdvdfsgvfdsgdfgdsfg', '2020-01-15 13:03:47', '2020-01-15 13:03:47', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2020-01-15 09:30:16', '2020-01-15 09:30:16');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2020-01-15 09:30:16', '2020-01-15 09:30:16', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 5, '2020-01-15 09:30:16', '2020-01-15 09:30:16', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 3, '2020-01-15 09:30:16', '2020-01-15 09:30:16', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 2, '2020-01-15 09:30:16', '2020-01-15 09:30:16', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 9, '2020-01-15 09:30:16', '2020-01-15 09:30:16', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 10, '2020-01-15 09:30:16', '2020-01-15 09:30:16', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 11, '2020-01-15 09:30:16', '2020-01-15 09:30:16', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 12, '2020-01-15 09:30:16', '2020-01-15 09:30:16', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 13, '2020-01-15 09:30:16', '2020-01-15 09:30:16', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 14, '2020-01-15 09:30:16', '2020-01-15 09:30:16', 'voyager.settings.index', NULL),
(11, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 5, 13, '2020-01-15 09:30:19', '2020-01-15 09:30:19', 'voyager.hooks', NULL),
(12, 1, 'Skills', '', '_self', 'voyager-activity', '#000000', NULL, 15, '2020-01-15 09:49:53', '2020-01-15 09:52:00', 'voyager.skills.index', 'null'),
(13, 1, 'Project Types', '', '_self', 'voyager-tag', NULL, NULL, 16, '2020-01-15 09:57:29', '2020-01-15 09:57:29', 'voyager.project-types.index', NULL),
(14, 1, 'Project Images', '', '_self', 'voyager-photo', NULL, NULL, 17, '2020-01-15 09:58:19', '2020-01-15 09:58:19', 'voyager.project-image.index', NULL),
(15, 1, 'Projects', '', '_self', 'voyager-folder', NULL, NULL, 18, '2020-01-15 09:59:17', '2020-01-15 09:59:17', 'voyager.project.index', NULL),
(16, 1, 'Education', '', '_self', 'voyager-logbook', '#000000', NULL, 19, '2020-01-15 10:36:49', '2020-01-15 10:37:48', 'voyager.education.index', 'null'),
(17, 1, 'Experiances', '', '_self', NULL, NULL, NULL, 20, '2020-01-15 12:53:40', '2020-01-15 12:53:40', 'voyager.experiance.index', NULL);

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
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_05_19_173453_create_menu_table', 1),
(6, '2016_10_21_190000_create_roles_table', 1),
(7, '2016_10_21_190000_create_settings_table', 1),
(8, '2016_11_30_135954_create_permission_table', 1),
(9, '2016_11_30_141208_create_permission_role_table', 1),
(10, '2016_12_26_201236_data_types__add__server_side', 1),
(11, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(12, '2017_01_14_005015_create_translations_table', 1),
(13, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(14, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(15, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(16, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(17, '2017_08_05_000000_add_group_to_settings_table', 1),
(18, '2017_11_26_013050_add_user_role_relationship', 1),
(19, '2017_11_26_015000_create_user_roles_table', 1),
(20, '2018_03_11_000000_add_user_settings', 1),
(21, '2018_03_14_000000_add_details_to_data_types_table', 1),
(22, '2018_03_16_000000_make_settings_value_nullable', 1),
(23, '2019_08_19_000000_create_failed_jobs_table', 1);

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
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2020-01-15 09:30:17', '2020-01-15 09:30:17'),
(2, 'browse_bread', NULL, '2020-01-15 09:30:17', '2020-01-15 09:30:17'),
(3, 'browse_database', NULL, '2020-01-15 09:30:17', '2020-01-15 09:30:17'),
(4, 'browse_media', NULL, '2020-01-15 09:30:17', '2020-01-15 09:30:17'),
(5, 'browse_compass', NULL, '2020-01-15 09:30:17', '2020-01-15 09:30:17'),
(6, 'browse_menus', 'menus', '2020-01-15 09:30:17', '2020-01-15 09:30:17'),
(7, 'read_menus', 'menus', '2020-01-15 09:30:17', '2020-01-15 09:30:17'),
(8, 'edit_menus', 'menus', '2020-01-15 09:30:17', '2020-01-15 09:30:17'),
(9, 'add_menus', 'menus', '2020-01-15 09:30:17', '2020-01-15 09:30:17'),
(10, 'delete_menus', 'menus', '2020-01-15 09:30:17', '2020-01-15 09:30:17'),
(11, 'browse_roles', 'roles', '2020-01-15 09:30:17', '2020-01-15 09:30:17'),
(12, 'read_roles', 'roles', '2020-01-15 09:30:17', '2020-01-15 09:30:17'),
(13, 'edit_roles', 'roles', '2020-01-15 09:30:17', '2020-01-15 09:30:17'),
(14, 'add_roles', 'roles', '2020-01-15 09:30:17', '2020-01-15 09:30:17'),
(15, 'delete_roles', 'roles', '2020-01-15 09:30:17', '2020-01-15 09:30:17'),
(16, 'browse_users', 'users', '2020-01-15 09:30:17', '2020-01-15 09:30:17'),
(17, 'read_users', 'users', '2020-01-15 09:30:17', '2020-01-15 09:30:17'),
(18, 'edit_users', 'users', '2020-01-15 09:30:17', '2020-01-15 09:30:17'),
(19, 'add_users', 'users', '2020-01-15 09:30:17', '2020-01-15 09:30:17'),
(20, 'delete_users', 'users', '2020-01-15 09:30:17', '2020-01-15 09:30:17'),
(21, 'browse_settings', 'settings', '2020-01-15 09:30:17', '2020-01-15 09:30:17'),
(22, 'read_settings', 'settings', '2020-01-15 09:30:17', '2020-01-15 09:30:17'),
(23, 'edit_settings', 'settings', '2020-01-15 09:30:17', '2020-01-15 09:30:17'),
(24, 'add_settings', 'settings', '2020-01-15 09:30:17', '2020-01-15 09:30:17'),
(25, 'delete_settings', 'settings', '2020-01-15 09:30:17', '2020-01-15 09:30:17'),
(26, 'browse_hooks', NULL, '2020-01-15 09:30:19', '2020-01-15 09:30:19'),
(27, 'browse_skills', 'skills', '2020-01-15 09:49:53', '2020-01-15 09:49:53'),
(28, 'read_skills', 'skills', '2020-01-15 09:49:53', '2020-01-15 09:49:53'),
(29, 'edit_skills', 'skills', '2020-01-15 09:49:53', '2020-01-15 09:49:53'),
(30, 'add_skills', 'skills', '2020-01-15 09:49:53', '2020-01-15 09:49:53'),
(31, 'delete_skills', 'skills', '2020-01-15 09:49:53', '2020-01-15 09:49:53'),
(32, 'browse_project_types', 'project_types', '2020-01-15 09:57:29', '2020-01-15 09:57:29'),
(33, 'read_project_types', 'project_types', '2020-01-15 09:57:29', '2020-01-15 09:57:29'),
(34, 'edit_project_types', 'project_types', '2020-01-15 09:57:29', '2020-01-15 09:57:29'),
(35, 'add_project_types', 'project_types', '2020-01-15 09:57:29', '2020-01-15 09:57:29'),
(36, 'delete_project_types', 'project_types', '2020-01-15 09:57:29', '2020-01-15 09:57:29'),
(37, 'browse_project_image', 'project_image', '2020-01-15 09:58:19', '2020-01-15 09:58:19'),
(38, 'read_project_image', 'project_image', '2020-01-15 09:58:19', '2020-01-15 09:58:19'),
(39, 'edit_project_image', 'project_image', '2020-01-15 09:58:19', '2020-01-15 09:58:19'),
(40, 'add_project_image', 'project_image', '2020-01-15 09:58:19', '2020-01-15 09:58:19'),
(41, 'delete_project_image', 'project_image', '2020-01-15 09:58:19', '2020-01-15 09:58:19'),
(42, 'browse_project', 'project', '2020-01-15 09:59:17', '2020-01-15 09:59:17'),
(43, 'read_project', 'project', '2020-01-15 09:59:17', '2020-01-15 09:59:17'),
(44, 'edit_project', 'project', '2020-01-15 09:59:17', '2020-01-15 09:59:17'),
(45, 'add_project', 'project', '2020-01-15 09:59:17', '2020-01-15 09:59:17'),
(46, 'delete_project', 'project', '2020-01-15 09:59:17', '2020-01-15 09:59:17'),
(47, 'browse_education', 'education', '2020-01-15 10:36:49', '2020-01-15 10:36:49'),
(48, 'read_education', 'education', '2020-01-15 10:36:49', '2020-01-15 10:36:49'),
(49, 'edit_education', 'education', '2020-01-15 10:36:49', '2020-01-15 10:36:49'),
(50, 'add_education', 'education', '2020-01-15 10:36:49', '2020-01-15 10:36:49'),
(51, 'delete_education', 'education', '2020-01-15 10:36:49', '2020-01-15 10:36:49'),
(52, 'browse_experiance', 'experiance', '2020-01-15 12:53:40', '2020-01-15 12:53:40'),
(53, 'read_experiance', 'experiance', '2020-01-15 12:53:40', '2020-01-15 12:53:40'),
(54, 'edit_experiance', 'experiance', '2020-01-15 12:53:40', '2020-01-15 12:53:40'),
(55, 'add_experiance', 'experiance', '2020-01-15 12:53:40', '2020-01-15 12:53:40'),
(56, 'delete_experiance', 'experiance', '2020-01-15 12:53:40', '2020-01-15 12:53:40');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1);

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE `project` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `type_id` int(11) DEFAULT NULL,
  `git` text COLLATE utf8mb4_unicode_ci,
  `status` int(11) DEFAULT NULL,
  `file` text COLLATE utf8mb4_unicode_ci,
  `image` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`id`, `title`, `description`, `type_id`, `git`, `status`, `file`, `image`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Awfar Connect', 'test project', 2, NULL, 1, '[]', 'project/January2020/J6vxuKQNi32DQxGPCssd.jpg', '2020-01-15 11:57:54', '2020-01-15 11:57:54', NULL),
(2, 'Awfar Connect', 'dsaSAasasdsa', 3, NULL, 1, '[]', 'project/January2020/HBm6msvsAVo81u2Vpgd8.jpeg', '2020-01-15 12:07:39', '2020-01-15 12:07:39', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `project_image`
--

CREATE TABLE `project_image` (
  `id` int(10) UNSIGNED NOT NULL,
  `url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `project_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `project_image`
--

INSERT INTO `project_image` (`id`, `url`, `created_at`, `updated_at`, `deleted_at`, `project_id`) VALUES
(2, 'project-image/January2020/M78rdggOX7wtNnHLYVIT.jpeg', '2020-01-15 10:32:07', '2020-01-15 10:32:07', NULL, NULL),
(3, 'project-image/January2020/cPmL28qaqswkRD7BdKUf.png', '2020-01-15 10:32:15', '2020-01-15 10:32:15', NULL, NULL),
(4, 'project-image/January2020/imkfTEDIfWk7oe9MJXkQ.png', '2020-01-15 10:32:21', '2020-01-15 10:32:21', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `project_types`
--

CREATE TABLE `project_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `project_types`
--

INSERT INTO `project_types` (`id`, `title`, `code`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'html', '1', '2020-01-15 10:16:07', '2020-01-15 10:16:07', NULL),
(2, 'java', '2', '2020-01-15 10:16:22', '2020-01-15 10:16:22', NULL),
(3, 'kotlin', '3', '2020-01-15 10:16:36', '2020-01-15 10:16:36', NULL),
(4, 'php', '4', '2020-01-15 10:16:48', '2020-01-15 10:16:48', NULL),
(5, 'ptython', '5', '2020-01-15 10:16:58', '2020-01-15 10:16:58', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2020-01-15 09:30:17', '2020-01-15 09:30:17'),
(2, 'user', 'Normal User', '2020-01-15 09:30:17', '2020-01-15 09:30:17');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Site Title', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', '', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', '', '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Voyager', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Voyager. The Missing Admin for Laravel', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', '', '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `skills`
--

CREATE TABLE `skills` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `skills`
--

INSERT INTO `skills` (`id`, `title`, `subtitle`, `description`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'java', 'java', NULL, 1, '2020-01-15 13:11:14', '2020-01-15 13:11:14', NULL),
(2, 'kotlin', 'kotlin', NULL, 1, '2020-01-15 13:11:26', '2020-01-15 13:11:26', NULL),
(3, 'git', 'git', NULL, 1, '2020-01-15 13:11:38', '2020-01-15 13:11:38', NULL),
(4, 'mvvm', 'mvm', NULL, 1, '2020-01-15 13:11:51', '2020-01-15 13:11:51', NULL),
(5, 'mvp', 'mvp', NULL, 1, '2020-01-15 13:12:03', '2020-01-15 13:12:03', NULL),
(6, 'php', 'php', NULL, 1, '2020-01-15 13:12:17', '2020-01-15 13:12:17', NULL),
(7, 'python', 'python', NULL, 1, '2020-01-15 13:12:32', '2020-01-15 13:12:32', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'ahmed', 'darwish1994@outlook.com', 'users/default.png', NULL, '$2y$10$qrVH2EHbd02IkNCED3jWcOXqG6D.BCOmrnz/pajhN/X.1e9mkGusa', 'fedtsC0dxMOaIIRezzjXiC8TSLiRgnBs7Q1YL26uYakxY3gC1iyPaF5sBXlO', NULL, '2020-01-15 09:31:40', '2020-01-15 09:31:40');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indexes for table `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Indexes for table `education`
--
ALTER TABLE `education`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `experiance`
--
ALTER TABLE `experiance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

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
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_image`
--
ALTER TABLE `project_image`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_types`
--
ALTER TABLE `project_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `project_types_code_unique` (`code`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;
--
-- AUTO_INCREMENT for table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `education`
--
ALTER TABLE `education`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `experiance`
--
ALTER TABLE `experiance`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;
--
-- AUTO_INCREMENT for table `project`
--
ALTER TABLE `project`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `project_image`
--
ALTER TABLE `project_image`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `project_types`
--
ALTER TABLE `project_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `skills`
--
ALTER TABLE `skills`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
