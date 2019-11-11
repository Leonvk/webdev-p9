-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 11 nov 2019 om 10:11
-- Serverversie: 10.4.6-MariaDB
-- PHP-versie: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `coralyachtsp9`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `bookings`
--

CREATE TABLE `bookings` (
  `id` int(10) UNSIGNED NOT NULL,
  `CustomerID` int(11) NOT NULL,
  `YachtID` int(11) NOT NULL,
  `status` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paymentstatus` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paymentPreference` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_start` datetime NOT NULL,
  `date_end` datetime NOT NULL,
  `catering` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `skipper` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `flottieltje` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `groceries` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transfer` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `insurence` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `childLifejackets` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fishinggear` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paddleboard` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aggreedToTerms` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `bookings`
--

INSERT INTO `bookings` (`id`, `CustomerID`, `YachtID`, `status`, `paymentstatus`, `paymentPreference`, `date_start`, `date_end`, `catering`, `skipper`, `flottieltje`, `groceries`, `transfer`, `insurence`, `childLifejackets`, `fishinggear`, `paddleboard`, `aggreedToTerms`, `created_at`, `updated_at`) VALUES
(1, 2, 4, 'reservering', 'moet nog betalen', 'ideal', '2019-10-18 00:00:00', '2019-10-20 00:00:00', 'ja', 'nee', 'ja', 'ja', 'ja', 'ja', 'ja', 'nee', 'ja', 'ja', '2019-10-09 09:13:00', '2019-10-09 09:13:00'),
(3, 1, 1, 'goed', 'moet nog betalen', 'ideal', '2019-10-10 00:00:00', '2019-10-18 00:00:00', 'ja', 'ja', 'nee', 'ja', 'nee', 'ja', 'nee', 'nee', 'ja', 'ja', '2019-10-09 09:17:56', '2019-10-09 09:17:56');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `order`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 'Category 1', 'category-1', '2019-09-11 10:36:32', '2019-09-11 10:36:32'),
(2, NULL, 1, 'Category 2', 'category-2', '2019-09-11 10:36:32', '2019-09-11 10:36:32');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `browse` tinyint(1) NOT NULL DEFAULT 1,
  `read` tinyint(1) NOT NULL DEFAULT 1,
  `edit` tinyint(1) NOT NULL DEFAULT 1,
  `add` tinyint(1) NOT NULL DEFAULT 1,
  `delete` tinyint(1) NOT NULL DEFAULT 1,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 1, 1, 0, 0, 0, '{}', 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, '{}', 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, '{}', 4),
(5, 1, 'remember_token', 'checkbox', 'Remember Token', 0, 0, 0, 0, 0, 0, '{}', 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '{}', 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, '{}', 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":\"0\",\"taggable\":\"0\"}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, '{}', 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'number', 'Role', 0, 1, 1, 1, 1, 1, '{}', 9),
(22, 4, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(23, 4, 'parent_id', 'select_dropdown', 'Parent', 0, 0, 1, 1, 1, 1, '{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', 2),
(24, 4, 'order', 'text', 'Order', 1, 1, 1, 1, 1, 1, '{\"default\":1}', 3),
(25, 4, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 4),
(26, 4, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"}}', 5),
(27, 4, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 0, NULL, 6),
(28, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(29, 5, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(30, 5, 'author_id', 'text', 'Author', 1, 0, 1, 1, 0, 1, NULL, 2),
(31, 5, 'category_id', 'text', 'Category', 1, 0, 1, 1, 1, 0, NULL, 3),
(32, 5, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 4),
(33, 5, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 5),
(34, 5, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 6),
(35, 5, 'image', 'image', 'Post Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 7),
(36, 5, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:posts,slug\"}}', 8),
(37, 5, 'meta_description', 'text_area', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 9),
(38, 5, 'meta_keywords', 'text_area', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 10),
(39, 5, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}', 11),
(40, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 12),
(41, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 13),
(42, 5, 'seo_title', 'text', 'SEO Title', 0, 1, 1, 1, 1, 1, NULL, 14),
(43, 5, 'featured', 'checkbox', 'Featured', 1, 1, 1, 1, 1, 1, NULL, 15),
(44, 6, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(45, 6, 'author_id', 'text', 'Author', 1, 0, 0, 0, 0, 0, NULL, 2),
(46, 6, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 3),
(47, 6, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 4),
(48, 6, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 5),
(49, 6, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}', 6),
(50, 6, 'meta_description', 'text', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 7),
(51, 6, 'meta_keywords', 'text', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 8),
(52, 6, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 9),
(53, 6, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 0, 0, 0, NULL, 10),
(54, 6, 'updated_at', 'timestamp', 'Updated At', 1, 0, 0, 0, 0, 0, NULL, 11),
(55, 6, 'image', 'image', 'Page Image', 0, 1, 1, 1, 1, 1, NULL, 12),
(95, 32, 'id', 'hidden', 'Id', 1, 1, 1, 0, 0, 0, '{}', 1),
(96, 32, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(97, 32, 'yachttype', 'number', 'Yachttype', 1, 1, 1, 1, 1, 1, '{}', 3),
(98, 32, 'port', 'number', 'Port', 1, 1, 1, 1, 1, 1, '{}', 4),
(99, 32, 'status', 'text', 'Status', 0, 1, 1, 1, 1, 1, '{}', 5),
(100, 32, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{}', 6),
(101, 32, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 7),
(102, 32, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(104, 33, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(105, 33, 'code', 'text', 'Code', 1, 1, 1, 1, 1, 1, '{}', 3),
(106, 33, 'type', 'text', 'Type', 1, 1, 1, 1, 1, 1, '{}', 4),
(107, 33, 'length', 'number', 'Length', 1, 1, 1, 1, 1, 1, '{}', 5),
(108, 33, 'depth', 'number', 'Depth', 1, 1, 1, 1, 1, 1, '{}', 6),
(109, 33, 'engine', 'text', 'Engine', 1, 1, 1, 1, 1, 1, '{}', 7),
(110, 33, 'sail', 'number', 'Sail', 1, 1, 1, 1, 1, 1, '{}', 8),
(111, 33, 'onepcabins', 'number', 'Onepcabins', 1, 1, 1, 1, 1, 1, '{}', 9),
(112, 33, 'twopcabins', 'number', 'Twopcabins', 1, 1, 1, 1, 1, 1, '{}', 10),
(113, 33, 'beds', 'number', 'Beds', 1, 1, 1, 1, 1, 1, '{}', 11),
(114, 33, 'tiolets', 'number', 'Tiolets', 1, 1, 1, 1, 1, 1, '{}', 12),
(115, 33, 'showers', 'number', 'Showers', 1, 1, 1, 1, 1, 1, '{}', 13),
(116, 33, 'gear', 'text', 'Gear', 1, 1, 1, 1, 1, 1, '{}', 14),
(117, 33, 'text', 'rich_text_box', 'Text', 0, 1, 1, 1, 1, 1, '{}', 15),
(119, 35, 'CustomerID', 'number', 'CustomerID', 1, 1, 1, 1, 1, 1, '{}', 2),
(120, 35, 'YachtID', 'number', 'YachtID', 1, 1, 1, 1, 1, 1, '{}', 3),
(121, 35, 'status', 'text', 'Status', 0, 1, 1, 1, 1, 1, '{}', 4),
(122, 35, 'paymentstatus', 'text', 'Paymentstatus', 0, 1, 1, 1, 1, 1, '{}', 5),
(123, 35, 'paymentPreference', 'text', 'PaymentPreference', 0, 1, 1, 1, 1, 1, '{}', 6),
(124, 35, 'date_start', 'date', 'Date Start', 1, 1, 1, 1, 1, 1, '{}', 7),
(125, 35, 'date_end', 'date', 'Date End', 1, 1, 1, 1, 1, 1, '{}', 8),
(126, 35, 'catering', 'hidden', 'Catering', 0, 1, 1, 1, 1, 1, '{}', 9),
(127, 35, 'skipper', 'hidden', 'Skipper', 0, 1, 1, 1, 1, 1, '{}', 10),
(128, 35, 'flottieltje', 'hidden', 'Flottieltje', 0, 1, 1, 1, 1, 1, '{}', 11),
(129, 35, 'groceries', 'hidden', 'Groceries', 0, 1, 1, 1, 1, 1, '{}', 12),
(130, 35, 'transfer', 'hidden', 'Transfer', 0, 1, 1, 1, 1, 1, '{}', 13),
(131, 35, 'insurence', 'hidden', 'Insurence', 0, 1, 1, 1, 1, 1, '{}', 14),
(132, 35, 'childLifejackets', 'hidden', 'ChildLifejackets', 0, 1, 1, 1, 1, 1, '{}', 15),
(133, 35, 'fishinggear', 'hidden', 'Fishinggear', 0, 1, 1, 1, 1, 1, '{}', 16),
(134, 35, 'paddleboard', 'hidden', 'Paddleboard', 0, 1, 1, 1, 1, 1, '{}', 17),
(135, 35, 'aggreedToTerms', 'hidden', 'AggreedToTerms', 1, 1, 1, 1, 1, 1, '{}', 18),
(136, 35, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 19),
(137, 35, 'updated_at', 'timestamp', 'Updated At', 0, 1, 1, 1, 0, 0, '{}', 20),
(138, 35, 'id', 'text', 'Id', 1, 1, 1, 0, 0, 0, '{}', 1),
(139, 33, 'id', 'text', 'Id', 1, 1, 1, 0, 0, 0, '{}', 1),
(140, 33, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 16),
(141, 33, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 17),
(142, 1, 'email_verified_at', 'timestamp', 'Email Verified At', 0, 1, 1, 1, 1, 1, '{}', 6);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT 0,
  `server_side` tinyint(4) NOT NULL DEFAULT 0,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2019-09-11 10:36:31', '2019-10-09 10:21:02'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2019-09-11 10:36:31', '2019-09-11 10:36:31'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, '', '', 1, 0, NULL, '2019-09-11 10:36:31', '2019-09-11 10:36:31'),
(4, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', NULL, '', '', 1, 0, NULL, '2019-09-11 10:36:32', '2019-09-11 10:36:32'),
(5, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', '', '', 1, 0, NULL, '2019-09-11 10:36:32', '2019-09-11 10:36:32'),
(6, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, '', '', 1, 0, NULL, '2019-09-11 10:36:32', '2019-09-11 10:36:32'),
(32, 'yachts', 'yachts', 'Yacht', 'Yachts', NULL, 'App\\Yacht', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-10-04 09:39:07', '2019-10-09 10:31:01'),
(33, 'yachttypes', 'yachttypess', 'Yachttypes', 'Yachttypes', NULL, 'App\\yachttypes', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-10-04 09:46:22', '2019-10-09 10:19:43'),
(34, 'booking', 'booking', 'Booking', 'Booking', NULL, 'App\\Booking', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-10-09 08:59:07', '2019-10-09 09:02:28'),
(35, 'bookings', 'bookings', 'Booking', 'Bookings', NULL, 'App\\Booking', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-10-09 09:09:52', '2019-10-18 08:41:56');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2019-09-11 10:36:31', '2019-09-11 10:36:31');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2019-09-11 10:36:31', '2019-09-11 10:36:31', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 5, '2019-09-11 10:36:31', '2019-09-11 10:36:31', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 3, '2019-09-11 10:36:31', '2019-09-11 10:36:31', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 2, '2019-09-11 10:36:31', '2019-09-11 10:36:31', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 9, '2019-09-11 10:36:31', '2019-09-11 10:36:31', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 10, '2019-09-11 10:36:31', '2019-09-11 10:36:31', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 11, '2019-09-11 10:36:31', '2019-09-11 10:36:31', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 12, '2019-09-11 10:36:31', '2019-09-11 10:36:31', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 13, '2019-09-11 10:36:31', '2019-09-11 10:36:31', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 14, '2019-09-11 10:36:31', '2019-09-11 10:36:31', 'voyager.settings.index', NULL),
(11, 1, 'Categories', '', '_self', 'voyager-categories', NULL, NULL, 8, '2019-09-11 10:36:32', '2019-09-11 10:36:32', 'voyager.categories.index', NULL),
(12, 1, 'Posts', '', '_self', 'voyager-news', NULL, NULL, 6, '2019-09-11 10:36:32', '2019-09-11 10:36:32', 'voyager.posts.index', NULL),
(13, 1, 'Pages', '', '_self', 'voyager-file-text', NULL, NULL, 7, '2019-09-11 10:36:32', '2019-09-11 10:36:32', 'voyager.pages.index', NULL),
(14, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 5, 13, '2019-09-11 10:36:33', '2019-09-11 10:36:33', 'voyager.hooks', NULL),
(20, 1, 'Yachts', '', '_self', NULL, NULL, NULL, 15, '2019-10-04 09:39:07', '2019-10-04 09:39:07', 'voyager.yachts.index', NULL),
(21, 1, 'Yachttypes', '', '_self', NULL, NULL, NULL, 16, '2019-10-04 09:46:22', '2019-10-04 09:46:22', 'voyager.yachttypess.index', NULL),
(23, 1, 'Bookings', '', '_self', NULL, NULL, NULL, 18, '2019-10-09 09:09:53', '2019-10-09 09:09:53', 'voyager.bookings.index', NULL);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `migrations`
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
(23, '2019_08_19_000000_create_failed_jobs_table', 1),
(24, '2016_01_01_000000_create_pages_table', 2),
(25, '2016_01_01_000000_create_posts_table', 2),
(26, '2016_02_15_204651_create_categories_table', 2),
(27, '2017_04_11_000000_alter_post_nullable_fields_table', 2);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `pages`
--

INSERT INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, 'Hello World', 'Hang the jib grog grog blossom grapple dance the hempen jig gangway pressgang bilge rat to go on account lugger. Nelsons folly gabion line draught scallywag fire ship gaff fluke fathom case shot. Sea Legs bilge rat sloop matey gabion long clothes run a shot across the bow Gold Road cog league.', '<p>Hello World. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', 'pages/page1.jpg', 'hello-world', 'Yar Meta Description', 'Keyword1, Keyword2', 'ACTIVE', '2019-09-11 10:36:32', '2019-09-11 10:36:32'),
(2, 1, 'Login', 'Login', '<p>Dit is de login pagina hier kan je inloggen en registreren</p>', NULL, 'login', 'Login', 'Log', 'INACTIVE', '2019-09-13 09:18:52', '2019-09-13 09:18:52'),
(3, 1, 'registreer', 'registreer', '<p>registreer</p>', NULL, 'registreer', 'registreer', 'registreer', 'ACTIVE', '2019-09-18 09:31:54', '2019-09-18 09:31:54');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2019-09-11 10:36:31', '2019-09-11 10:36:31'),
(2, 'browse_bread', NULL, '2019-09-11 10:36:31', '2019-09-11 10:36:31'),
(3, 'browse_database', NULL, '2019-09-11 10:36:31', '2019-09-11 10:36:31'),
(4, 'browse_media', NULL, '2019-09-11 10:36:31', '2019-09-11 10:36:31'),
(5, 'browse_compass', NULL, '2019-09-11 10:36:31', '2019-09-11 10:36:31'),
(6, 'browse_menus', 'menus', '2019-09-11 10:36:31', '2019-09-11 10:36:31'),
(7, 'read_menus', 'menus', '2019-09-11 10:36:31', '2019-09-11 10:36:31'),
(8, 'edit_menus', 'menus', '2019-09-11 10:36:31', '2019-09-11 10:36:31'),
(9, 'add_menus', 'menus', '2019-09-11 10:36:31', '2019-09-11 10:36:31'),
(10, 'delete_menus', 'menus', '2019-09-11 10:36:31', '2019-09-11 10:36:31'),
(11, 'browse_roles', 'roles', '2019-09-11 10:36:31', '2019-09-11 10:36:31'),
(12, 'read_roles', 'roles', '2019-09-11 10:36:31', '2019-09-11 10:36:31'),
(13, 'edit_roles', 'roles', '2019-09-11 10:36:31', '2019-09-11 10:36:31'),
(14, 'add_roles', 'roles', '2019-09-11 10:36:31', '2019-09-11 10:36:31'),
(15, 'delete_roles', 'roles', '2019-09-11 10:36:31', '2019-09-11 10:36:31'),
(16, 'browse_users', 'users', '2019-09-11 10:36:31', '2019-09-11 10:36:31'),
(17, 'read_users', 'users', '2019-09-11 10:36:31', '2019-09-11 10:36:31'),
(18, 'edit_users', 'users', '2019-09-11 10:36:31', '2019-09-11 10:36:31'),
(19, 'add_users', 'users', '2019-09-11 10:36:31', '2019-09-11 10:36:31'),
(20, 'delete_users', 'users', '2019-09-11 10:36:31', '2019-09-11 10:36:31'),
(21, 'browse_settings', 'settings', '2019-09-11 10:36:31', '2019-09-11 10:36:31'),
(22, 'read_settings', 'settings', '2019-09-11 10:36:31', '2019-09-11 10:36:31'),
(23, 'edit_settings', 'settings', '2019-09-11 10:36:31', '2019-09-11 10:36:31'),
(24, 'add_settings', 'settings', '2019-09-11 10:36:31', '2019-09-11 10:36:31'),
(25, 'delete_settings', 'settings', '2019-09-11 10:36:31', '2019-09-11 10:36:31'),
(26, 'browse_categories', 'categories', '2019-09-11 10:36:32', '2019-09-11 10:36:32'),
(27, 'read_categories', 'categories', '2019-09-11 10:36:32', '2019-09-11 10:36:32'),
(28, 'edit_categories', 'categories', '2019-09-11 10:36:32', '2019-09-11 10:36:32'),
(29, 'add_categories', 'categories', '2019-09-11 10:36:32', '2019-09-11 10:36:32'),
(30, 'delete_categories', 'categories', '2019-09-11 10:36:32', '2019-09-11 10:36:32'),
(31, 'browse_posts', 'posts', '2019-09-11 10:36:32', '2019-09-11 10:36:32'),
(32, 'read_posts', 'posts', '2019-09-11 10:36:32', '2019-09-11 10:36:32'),
(33, 'edit_posts', 'posts', '2019-09-11 10:36:32', '2019-09-11 10:36:32'),
(34, 'add_posts', 'posts', '2019-09-11 10:36:32', '2019-09-11 10:36:32'),
(35, 'delete_posts', 'posts', '2019-09-11 10:36:32', '2019-09-11 10:36:32'),
(36, 'browse_pages', 'pages', '2019-09-11 10:36:32', '2019-09-11 10:36:32'),
(37, 'read_pages', 'pages', '2019-09-11 10:36:32', '2019-09-11 10:36:32'),
(38, 'edit_pages', 'pages', '2019-09-11 10:36:32', '2019-09-11 10:36:32'),
(39, 'add_pages', 'pages', '2019-09-11 10:36:32', '2019-09-11 10:36:32'),
(40, 'delete_pages', 'pages', '2019-09-11 10:36:32', '2019-09-11 10:36:32'),
(41, 'browse_hooks', NULL, '2019-09-11 10:36:33', '2019-09-11 10:36:33'),
(67, 'browse_yachts', 'yachts', '2019-10-04 09:39:07', '2019-10-04 09:39:07'),
(68, 'read_yachts', 'yachts', '2019-10-04 09:39:07', '2019-10-04 09:39:07'),
(69, 'edit_yachts', 'yachts', '2019-10-04 09:39:07', '2019-10-04 09:39:07'),
(70, 'add_yachts', 'yachts', '2019-10-04 09:39:07', '2019-10-04 09:39:07'),
(71, 'delete_yachts', 'yachts', '2019-10-04 09:39:07', '2019-10-04 09:39:07'),
(72, 'browse_yachttypes', 'yachttypes', '2019-10-04 09:46:22', '2019-10-04 09:46:22'),
(73, 'read_yachttypes', 'yachttypes', '2019-10-04 09:46:22', '2019-10-04 09:46:22'),
(74, 'edit_yachttypes', 'yachttypes', '2019-10-04 09:46:22', '2019-10-04 09:46:22'),
(75, 'add_yachttypes', 'yachttypes', '2019-10-04 09:46:22', '2019-10-04 09:46:22'),
(76, 'delete_yachttypes', 'yachttypes', '2019-10-04 09:46:22', '2019-10-04 09:46:22'),
(77, 'browse_booking', 'booking', '2019-10-09 08:59:07', '2019-10-09 08:59:07'),
(78, 'read_booking', 'booking', '2019-10-09 08:59:07', '2019-10-09 08:59:07'),
(79, 'edit_booking', 'booking', '2019-10-09 08:59:07', '2019-10-09 08:59:07'),
(80, 'add_booking', 'booking', '2019-10-09 08:59:07', '2019-10-09 08:59:07'),
(81, 'delete_booking', 'booking', '2019-10-09 08:59:07', '2019-10-09 08:59:07'),
(82, 'browse_bookings', 'bookings', '2019-10-09 09:09:53', '2019-10-09 09:09:53'),
(83, 'read_bookings', 'bookings', '2019-10-09 09:09:53', '2019-10-09 09:09:53'),
(84, 'edit_bookings', 'bookings', '2019-10-09 09:09:53', '2019-10-09 09:09:53'),
(85, 'add_bookings', 'bookings', '2019-10-09 09:09:53', '2019-10-09 09:09:53'),
(86, 'delete_bookings', 'bookings', '2019-10-09 09:09:53', '2019-10-09 09:09:53');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 3),
(2, 1),
(2, 3),
(3, 1),
(3, 3),
(4, 1),
(4, 3),
(5, 1),
(5, 3),
(6, 1),
(6, 3),
(7, 1),
(7, 3),
(8, 1),
(8, 3),
(9, 1),
(9, 3),
(10, 1),
(10, 3),
(11, 1),
(11, 3),
(12, 1),
(12, 3),
(13, 1),
(13, 3),
(14, 1),
(14, 3),
(15, 1),
(15, 3),
(16, 1),
(16, 3),
(17, 1),
(17, 3),
(18, 1),
(18, 3),
(19, 1),
(19, 3),
(20, 1),
(20, 3),
(21, 1),
(21, 3),
(22, 1),
(22, 3),
(23, 1),
(23, 3),
(24, 1),
(24, 3),
(25, 1),
(25, 3),
(26, 1),
(26, 3),
(27, 1),
(27, 3),
(28, 1),
(28, 3),
(29, 1),
(29, 3),
(30, 1),
(30, 3),
(31, 1),
(31, 3),
(32, 1),
(32, 3),
(33, 1),
(33, 3),
(34, 1),
(34, 3),
(35, 1),
(35, 3),
(36, 1),
(36, 3),
(37, 1),
(37, 3),
(38, 1),
(38, 3),
(39, 1),
(39, 3),
(40, 1),
(40, 3),
(41, 1),
(41, 3),
(67, 1),
(67, 3),
(68, 1),
(68, 3),
(69, 1),
(69, 3),
(70, 1),
(70, 3),
(71, 1),
(71, 3),
(72, 1),
(72, 3),
(73, 1),
(73, 3),
(74, 1),
(74, 3),
(75, 1),
(75, 3),
(76, 1),
(76, 3),
(77, 1),
(77, 3),
(78, 1),
(78, 3),
(79, 1),
(79, 3),
(80, 1),
(80, 3),
(81, 1),
(81, 3),
(82, 1),
(82, 3),
(83, 1),
(83, 3),
(84, 1),
(84, 3),
(85, 1),
(85, 3),
(86, 1),
(86, 3);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `ports`
--

CREATE TABLE `ports` (
  `portID` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` char(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contactperson` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contactphone` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contactemail` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `directions` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parking` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `catering` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `skipper` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `flottielje` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `groceries` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transfer` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Yacht 1', NULL, 'Yachts', '<p>Dit is een mooie yacht.</p>', 'posts/post1.jpg', 'yacht-1', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2019-09-11 10:36:32', '2019-09-18 09:18:21'),
(2, 0, NULL, 'My Sample Post', NULL, 'This is the excerpt for the sample Post', '<p>This is the body for the sample post, which includes the body.</p>\r\n                <h2>We can use all kinds of format!</h2>\r\n                <p>And include a bunch of other stuff.</p>', 'posts/post2.jpg', 'my-sample-post', 'Meta Description for sample post', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2019-09-11 10:36:32', '2019-09-11 10:36:32'),
(3, 0, NULL, 'Latest Post', NULL, 'This is the excerpt for the latest post', '<p>This is the body for the latest post</p>', 'posts/post3.jpg', 'latest-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2019-09-11 10:36:32', '2019-09-11 10:36:32'),
(4, 0, NULL, 'Yarr Post', NULL, 'Reef sails nipperkin bring a spring upon her cable coffer jury mast spike marooned Pieces of Eight poop deck pillage. Clipper driver coxswain galleon hempen halter come about pressgang gangplank boatswain swing the lead. Nipperkin yard skysail swab lanyard Blimey bilge water ho quarter Buccaneer.', '<p>Swab deadlights Buccaneer fire ship square-rigged dance the hempen jig weigh anchor cackle fruit grog furl. Crack Jennys tea cup chase guns pressgang hearties spirits hogshead Gold Road six pounders fathom measured fer yer chains. Main sheet provost come about trysail barkadeer crimp scuttle mizzenmast brig plunder.</p>\r\n<p>Mizzen league keelhaul galleon tender cog chase Barbary Coast doubloon crack Jennys tea cup. Blow the man down lugsail fire ship pinnace cackle fruit line warp Admiral of the Black strike colors doubloon. Tackle Jack Ketch come about crimp rum draft scuppers run a shot across the bow haul wind maroon.</p>\r\n<p>Interloper heave down list driver pressgang holystone scuppers tackle scallywag bilged on her anchor. Jack Tar interloper draught grapple mizzenmast hulk knave cable transom hogshead. Gaff pillage to go on account grog aft chase guns piracy yardarm knave clap of thunder.</p>', 'posts/post4.jpg', 'yarr-post', 'this be a meta descript', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2019-09-11 10:36:32', '2019-09-11 10:36:32');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2019-09-11 10:36:31', '2019-09-11 10:36:31'),
(2, 'user', 'Normal User', '2019-09-11 10:36:31', '2019-09-11 10:36:31'),
(3, 'superadmin', 'superadmin', '2019-10-04 08:36:07', '2019-10-04 08:36:07');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `group` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'CoralYachts', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Luxurious Yachts', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', '', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', NULL, '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Voyager', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Voyager. The Missing Admin for Laravel', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', NULL, '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_types', 'display_name_singular', 5, 'pt', 'Post', '2019-09-11 10:36:32', '2019-09-11 10:36:32'),
(2, 'data_types', 'display_name_singular', 6, 'pt', 'Página', '2019-09-11 10:36:32', '2019-09-11 10:36:32'),
(3, 'data_types', 'display_name_singular', 1, 'pt', 'Utilizador', '2019-09-11 10:36:32', '2019-09-11 10:36:32'),
(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2019-09-11 10:36:32', '2019-09-11 10:36:32'),
(5, 'data_types', 'display_name_singular', 2, 'pt', 'Menu', '2019-09-11 10:36:32', '2019-09-11 10:36:32'),
(6, 'data_types', 'display_name_singular', 3, 'pt', 'Função', '2019-09-11 10:36:32', '2019-09-11 10:36:32'),
(7, 'data_types', 'display_name_plural', 5, 'pt', 'Posts', '2019-09-11 10:36:32', '2019-09-11 10:36:32'),
(8, 'data_types', 'display_name_plural', 6, 'pt', 'Páginas', '2019-09-11 10:36:32', '2019-09-11 10:36:32'),
(9, 'data_types', 'display_name_plural', 1, 'pt', 'Utilizadores', '2019-09-11 10:36:32', '2019-09-11 10:36:32'),
(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2019-09-11 10:36:32', '2019-09-11 10:36:32'),
(11, 'data_types', 'display_name_plural', 2, 'pt', 'Menus', '2019-09-11 10:36:32', '2019-09-11 10:36:32'),
(12, 'data_types', 'display_name_plural', 3, 'pt', 'Funções', '2019-09-11 10:36:32', '2019-09-11 10:36:32'),
(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2019-09-11 10:36:32', '2019-09-11 10:36:32'),
(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2019-09-11 10:36:32', '2019-09-11 10:36:32'),
(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2019-09-11 10:36:32', '2019-09-11 10:36:32'),
(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2019-09-11 10:36:32', '2019-09-11 10:36:32'),
(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2019-09-11 10:36:32', '2019-09-11 10:36:32'),
(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2019-09-11 10:36:32', '2019-09-11 10:36:32'),
(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2019-09-11 10:36:32', '2019-09-11 10:36:32'),
(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2019-09-11 10:36:32', '2019-09-11 10:36:32'),
(21, 'menu_items', 'title', 2, 'pt', 'Media', '2019-09-11 10:36:32', '2019-09-11 10:36:32'),
(22, 'menu_items', 'title', 12, 'pt', 'Publicações', '2019-09-11 10:36:32', '2019-09-11 10:36:32'),
(23, 'menu_items', 'title', 3, 'pt', 'Utilizadores', '2019-09-11 10:36:32', '2019-09-11 10:36:32'),
(24, 'menu_items', 'title', 11, 'pt', 'Categorias', '2019-09-11 10:36:33', '2019-09-11 10:36:33'),
(25, 'menu_items', 'title', 13, 'pt', 'Páginas', '2019-09-11 10:36:33', '2019-09-11 10:36:33'),
(26, 'menu_items', 'title', 4, 'pt', 'Funções', '2019-09-11 10:36:33', '2019-09-11 10:36:33'),
(27, 'menu_items', 'title', 5, 'pt', 'Ferramentas', '2019-09-11 10:36:33', '2019-09-11 10:36:33'),
(28, 'menu_items', 'title', 6, 'pt', 'Menus', '2019-09-11 10:36:33', '2019-09-11 10:36:33'),
(29, 'menu_items', 'title', 7, 'pt', 'Base de dados', '2019-09-11 10:36:33', '2019-09-11 10:36:33'),
(30, 'menu_items', 'title', 10, 'pt', 'Configurações', '2019-09-11 10:36:33', '2019-09-11 10:36:33');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(3, 1, 'admin', 'admin@admin.com', 'users/default.png', NULL, '$2y$10$zVU5.a15KihTN4tM82X0DeygP.squzHPwDHdSDTpCfVeXvAkClbmG', NULL, NULL, NULL, NULL),
(6, 1, 'Leon', 'leon@admin.com', 'users/default.png', '2019-09-26 23:03:00', '$2y$10$zVU5.a15KihTN4tM82X0DeygP.squzHPwDHdSDTpCfVeXvAkClbmG', NULL, NULL, '2019-09-26 22:00:27', '2019-09-26 22:59:00'),
(7, 1, 'Leon Kammen', 'leonvk2000@gmail.com', 'users/default.png', NULL, '$2y$10$zVU5.a15KihTN4tM82X0DeygP.squzHPwDHdSDTpCfVeXvAkClbmG', NULL, NULL, '2019-09-27 09:10:00', '2019-09-27 09:10:00'),
(8, 3, 'superadmin', 'sadmin@gmail.com', 'users/default.png', NULL, '$2y$10$rrX6kxfZ9S2Ac8iuo/WTu.TKp2nFbudOxUIVQuNYhNCfdyZ9llT4a', 'JN1N9k0G4GpVX5na3A4GfVhV97tNSjuPYWRRAxC9j25f4Tt9Y3XLlXQWnXsZ', '{\"locale\":\"en\"}', '2019-10-04 08:37:30', '2019-10-04 08:37:30');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `yachts`
--

CREATE TABLE `yachts` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `yachttype` int(11) NOT NULL,
  `port` int(11) NOT NULL,
  `status` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `yachts`
--

INSERT INTO `yachts` (`id`, `name`, `yachttype`, `port`, `status`, `image`, `created_at`, `updated_at`) VALUES
(1, 'yacht1', 1, 1, 'beschikbaar', NULL, '2019-10-09 10:01:52', '2019-10-09 10:01:52'),
(2, 'delux-x89', 2, 1, 'beschikbaar', 'yachts\\October2019\\7xn6eV7M61CfcfxPLmfN.jpg', '2019-10-09 10:17:24', '2019-10-09 10:17:24');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `yachttypes`
--

CREATE TABLE `yachttypes` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `length` double NOT NULL,
  `depth` double NOT NULL,
  `engine` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sail` double NOT NULL,
  `onepcabins` int(11) NOT NULL,
  `twopcabins` int(11) NOT NULL,
  `beds` int(11) NOT NULL,
  `tiolets` int(11) NOT NULL,
  `showers` int(11) NOT NULL,
  `gear` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `yachttypes`
--

INSERT INTO `yachttypes` (`id`, `name`, `code`, `type`, `length`, `depth`, `engine`, `sail`, `onepcabins`, `twopcabins`, `beds`, `tiolets`, `showers`, `gear`, `text`, `created_at`, `updated_at`) VALUES
(1, 'default yachts', '1', 'default', 2.3, 2, 'xrz engine', 0, 0, 1, 1, 1, 0, 'default', '<p>mooie boot</p>', '2019-10-09 10:04:23', '2019-10-09 10:04:23'),
(2, 'default yachts', '1', 'default', 2.3, 2, 'xrz engine', 1, 0, 1, 1, 1, 0, 'default', '<p>mooie boot</p>', '2019-10-09 10:07:22', '2019-10-09 10:07:22');

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Indexen voor tabel `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indexen voor tabel `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Indexen voor tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indexen voor tabel `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Indexen voor tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Indexen voor tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexen voor tabel `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Indexen voor tabel `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indexen voor tabel `ports`
--
ALTER TABLE `ports`
  ADD PRIMARY KEY (`portID`);

--
-- Indexen voor tabel `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indexen voor tabel `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexen voor tabel `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexen voor tabel `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Indexen voor tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Indexen voor tabel `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- Indexen voor tabel `yachts`
--
ALTER TABLE `yachts`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `yachttypes`
--
ALTER TABLE `yachttypes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT voor een tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT voor een tabel `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=143;

--
-- AUTO_INCREMENT voor een tabel `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT voor een tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT voor een tabel `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT voor een tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT voor een tabel `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT voor een tabel `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT voor een tabel `ports`
--
ALTER TABLE `ports`
  MODIFY `portID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT voor een tabel `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT voor een tabel `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT voor een tabel `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT voor een tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT voor een tabel `yachts`
--
ALTER TABLE `yachts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT voor een tabel `yachttypes`
--
ALTER TABLE `yachttypes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Beperkingen voor geëxporteerde tabellen
--

--
-- Beperkingen voor tabel `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Beperkingen voor tabel `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Beperkingen voor tabel `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Beperkingen voor tabel `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
