-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 13, 2021 at 03:25 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ptyhondb`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add contact', 7, 'add_contact'),
(26, 'Can change contact', 7, 'change_contact'),
(27, 'Can delete contact', 7, 'delete_contact'),
(28, 'Can view contact', 7, 'view_contact'),
(29, 'Can add State List', 8, 'add_state'),
(30, 'Can change State List', 8, 'change_state'),
(31, 'Can delete State List', 8, 'delete_state'),
(32, 'Can view State List', 8, 'view_state'),
(33, 'Can add customer', 9, 'add_customer'),
(34, 'Can change customer', 9, 'change_customer'),
(35, 'Can delete customer', 9, 'delete_customer'),
(36, 'Can view customer', 9, 'view_customer'),
(37, 'Can add customer', 10, 'add_customer'),
(38, 'Can change customer', 10, 'change_customer'),
(39, 'Can delete customer', 10, 'delete_customer'),
(40, 'Can view customer', 10, 'view_customer'),
(41, 'Can add products', 11, 'add_products'),
(42, 'Can change products', 11, 'change_products'),
(43, 'Can delete products', 11, 'delete_products'),
(44, 'Can view products', 11, 'view_products'),
(45, 'Can add products_ajax', 12, 'add_products_ajax'),
(46, 'Can change products_ajax', 12, 'change_products_ajax'),
(47, 'Can delete products_ajax', 12, 'delete_products_ajax'),
(48, 'Can view products_ajax', 12, 'view_products_ajax'),
(49, 'Can add crud_django', 13, 'add_crud_django'),
(50, 'Can change crud_django', 13, 'change_crud_django'),
(51, 'Can delete crud_django', 13, 'delete_crud_django'),
(52, 'Can view crud_django', 13, 'view_crud_django'),
(53, 'Can add crud_django_ajax', 14, 'add_crud_django_ajax'),
(54, 'Can change crud_django_ajax', 14, 'change_crud_django_ajax'),
(55, 'Can delete crud_django_ajax', 14, 'delete_crud_django_ajax'),
(56, 'Can view crud_django_ajax', 14, 'view_crud_django_ajax');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `first_name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(254) COLLATE utf8_unicode_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(2, 'pbkdf2_sha256$260000$JGyqMtLvkh46FUirIXtco6$jfnD47apEoPV8aZgeB84sUZUTer5+lwWoiy4fvPUJFk=', '2021-08-13 07:25:50.344559', 1, 'admin', '', '', 'admin@gmail.com', 1, 1, '2021-07-19 11:56:47.234749'),
(3, 'pbkdf2_sha256$260000$3rg4zlkYcOV2Y1uG6q8pRn$dQ2i7nm36UPNmKmps9q81+BogZqRWTIQneXhAbCDGks=', NULL, 0, 'Admin123', '', '', '', 0, 1, '2021-08-13 06:35:36.793444'),
(4, 'pbkdf2_sha256$260000$Y9AtiMtTonn4isw9bdRGPP$4niuQDuCOIZkz/l+n9wLuj8dDpvyXXrToZl9Tl1KmFU=', NULL, 0, 'userRegistration', '', '', '', 0, 1, '2021-08-13 06:36:32.185949'),
(5, 'pbkdf2_sha256$260000$9C9sCTK59JSXZH4r97tybO$YsHBVjkQ0YLo+wCji4fQO3ycV9H0MG/OBTWmJobOa0k=', NULL, 0, 'asdadasd', '', '', '', 0, 1, '2021-08-13 06:38:40.972543'),
(6, 'pbkdf2_sha256$260000$FElY7AxsCJEuzh3REH1Exi$8M4ISJYFs2PEe8x290k8iAEnUVOXFFaaJc8bCweTlkQ=', NULL, 0, '@gmail.com', '', '', '', 0, 1, '2021-08-13 10:37:44.262091'),
(7, 'pbkdf2_sha256$260000$dEMAizMzuH7fbsdisFAuG4$VlLE2BEM7HAlpHKtGbmeVKZyXIQos7P3+86IIaPO2D4=', NULL, 0, 'userRegistration123', '', '', '', 0, 1, '2021-08-13 11:39:20.031030');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `crud_django_ajax_crud_django_ajax`
--

CREATE TABLE `crud_django_ajax_crud_django_ajax` (
  `id` bigint(20) NOT NULL,
  `name` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `is_active` int(11) DEFAULT NULL,
  `createdAt` datetime(6) NOT NULL,
  `updated_on` datetime(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `crud_django_ajax_crud_django_ajax`
--

INSERT INTO `crud_django_ajax_crud_django_ajax` (`id`, `name`, `description`, `image`, `is_active`, `createdAt`, `updated_on`) VALUES
(2, 'dddddd', 'dddddd', 'crud_django_ajax/download_1_-_Copy.png', NULL, '2021-08-12 14:32:50.166325', '2021-08-12 14:32:50.158326'),
(3, 'dd', 'ddd', 'crud_django_ajax/contact1_-_Copy.jpg', 1, '2021-08-12 14:32:57.891119', '2021-08-12 14:32:57.883121'),
(4, 'ddddd', 'dddd', 'crud_django_ajax/Carpentor.jpg', NULL, '2021-08-12 14:33:16.450821', '2021-08-12 14:33:16.442804'),
(5, 'ddd', 'ddd', 'crud_django_ajax/D3-Hot-Press-193x300.png', 1, '2021-08-12 14:33:25.441867', '2021-08-12 14:33:25.426238');

-- --------------------------------------------------------

--
-- Table structure for table `crud_django_crud_django`
--

CREATE TABLE `crud_django_crud_django` (
  `id` bigint(20) NOT NULL,
  `name` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `is_active` int(11) DEFAULT NULL,
  `createdAt` datetime(6) NOT NULL,
  `updated_on` datetime(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `crud_django_crud_django`
--

INSERT INTO `crud_django_crud_django` (`id`, `name`, `description`, `image`, `is_active`, `createdAt`, `updated_on`) VALUES
(9, 'd', 'd 1', 'crud_django/contact2_-_Copy_2_-_Copy.jpg', 1, '2021-08-12 13:36:26.685614', '2021-08-12 13:36:26.677607'),
(11, 'ewr', 'wer not', 'crud_django/contact3.jpg', 1, '2021-08-12 13:44:46.519428', '2021-08-12 13:44:46.512412'),
(12, 'sdf', 'sdf 1 None 1', 'crud_django/m1.png', 0, '2021-08-12 13:44:59.690054', '2021-08-12 13:44:59.684050');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `object_repr` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext COLLATE utf8_unicode_ci NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2021-07-19 14:34:13.649905', '1', 'Nashik', 1, '[{\"added\": {}}]', 8, 2),
(2, '2021-07-19 14:34:38.893655', '1', 'Nashik', 2, '[]', 8, 2),
(3, '2021-07-19 14:34:54.523300', '1', 'Nashik', 2, '[{\"changed\": {\"fields\": [\"Is active\"]}}]', 8, 2),
(4, '2021-07-19 14:35:09.093967', '1', 'Nashik', 2, '[{\"changed\": {\"fields\": [\"Is active\"]}}]', 8, 2),
(5, '2021-07-19 14:48:57.442390', '2', 'ABC', 1, '[{\"added\": {}}]', 8, 2),
(6, '2021-08-10 06:43:29.130005', '1', 'Products object (1)', 1, '[{\"added\": {}}]', 11, 2),
(7, '2021-08-10 06:44:36.625435', '1', 'Products object (1)', 2, '[]', 11, 2),
(8, '2021-08-10 06:44:42.885338', '2', 'Products object (2)', 1, '[{\"added\": {}}]', 11, 2),
(9, '2021-08-10 07:34:28.419932', '1', 'Products object (1)', 1, '[{\"added\": {}}]', 11, 2),
(10, '2021-08-10 07:34:34.985860', '2', 'Products object (2)', 1, '[{\"added\": {}}]', 11, 2),
(11, '2021-08-10 10:37:50.862712', '3', 'Products object (3)', 1, '[{\"added\": {}}]', 11, 2),
(12, '2021-08-10 13:09:44.991602', '1', 'Products_ajax object (1)', 1, '[{\"added\": {}}]', 12, 2);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `model` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(13, 'crud_django', 'crud_django'),
(14, 'crud_django_ajax', 'crud_django_ajax'),
(7, 'crudapp', 'contact'),
(9, 'crudapp', 'customer'),
(8, 'crudapp', 'state'),
(10, 'login', 'customer'),
(11, 'products', 'products'),
(12, 'products_ajax', 'products_ajax'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2021-07-19 11:41:12.556339'),
(2, 'auth', '0001_initial', '2021-07-19 11:41:30.204152'),
(3, 'admin', '0001_initial', '2021-07-19 11:41:33.643278'),
(4, 'admin', '0002_logentry_remove_auto_add', '2021-07-19 11:41:33.685217'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2021-07-19 11:41:33.808347'),
(6, 'contenttypes', '0002_remove_content_type_name', '2021-07-19 11:41:36.511931'),
(7, 'auth', '0002_alter_permission_name_max_length', '2021-07-19 11:41:37.781556'),
(8, 'auth', '0003_alter_user_email_max_length', '2021-07-19 11:41:39.473196'),
(9, 'auth', '0004_alter_user_username_opts', '2021-07-19 11:41:39.625682'),
(10, 'auth', '0005_alter_user_last_login_null', '2021-07-19 11:41:40.372348'),
(11, 'auth', '0006_require_contenttypes_0002', '2021-07-19 11:41:40.470043'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2021-07-19 11:41:40.632866'),
(13, 'auth', '0008_alter_user_username_max_length', '2021-07-19 11:41:41.588705'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2021-07-19 11:41:42.200774'),
(15, 'auth', '0010_alter_group_name_max_length', '2021-07-19 11:41:44.094012'),
(16, 'auth', '0011_update_proxy_permissions', '2021-07-19 11:41:44.322061'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2021-07-19 11:41:44.732259'),
(18, 'sessions', '0001_initial', '2021-07-19 11:41:45.731131'),
(19, 'crudapp', '0001_initial', '2021-07-19 12:20:38.258569'),
(20, 'crudapp', '0002_state', '2021-07-19 14:24:40.123515'),
(21, 'crudapp', '0003_customer', '2021-08-09 06:48:15.240286'),
(22, 'login', '0001_initial', '2021-08-09 13:50:58.327035'),
(23, 'products', '0001_initial', '2021-08-09 15:36:45.871679'),
(24, 'products', '0002_delete_products', '2021-08-10 06:42:08.321527'),
(25, 'products', '0003_products', '2021-08-10 06:42:45.501254'),
(26, 'products', '0004_remove_products_image', '2021-08-10 07:27:43.971608'),
(27, 'products', '0005_delete_products', '2021-08-10 07:31:02.510065'),
(28, 'products', '0006_products', '2021-08-10 07:31:30.465787'),
(29, 'products', '0007_delete_products', '2021-08-10 07:31:54.134211'),
(30, 'products', '0008_products', '2021-08-10 07:32:41.076302'),
(31, 'products', '0009_alter_products_image', '2021-08-10 13:04:52.809290'),
(32, 'products_ajax', '0001_initial', '2021-08-10 13:04:53.448255'),
(33, 'products_ajax', '0002_alter_products_ajax_image', '2021-08-12 11:47:45.239440'),
(34, 'crud_django', '0001_initial', '2021-08-12 11:55:01.946825'),
(35, 'crud_django_ajax', '0001_initial', '2021-08-12 14:10:58.408310');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `session_data` longtext COLLATE utf8_unicode_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('5z0g0j6gzdc5t6i0ttcs3ai1ut3wk7fv', 'eyJpc19sb2ciOjEsInVzZXJfaWQiOjEsInVzZXJuYW1lIjoiYWRtaW4ifQ:1mEWSR:2IeaEJ6cNvLUZP0Bg5d5XbouolZZmH69aR47rP4rb5s', '2021-08-27 12:38:43.766862'),
('5z9ebdj1auxaemchor6d8qap5nk3cqbg', '.eJxVjEEOwiAQRe_C2hCG0gFcuvcMZAaoVA0kpV0Z765NutDtf-_9lwi0rSVsPS9hTuIstDj9bkzxkesO0p3qrcnY6rrMLHdFHrTLa0v5eTncv4NCvXxroxDYGRgAmDJhQmZLcfLGUbJRawQCjj5hNh6UwnFkZWiI6CeLTov3B-DjN5A:1m5UCr:E0mzhArc9OfZWXk5UYnlLr1Q_VPyRBKLofubx3l5B0o', '2021-08-02 14:25:17.546312'),
('cs92n4rdufkys74v7kz7k1gev0xy7g8i', 'eyJ1c2VybmFtZSI6ImFkbWluIiwiaXNfbG9nIjoxfQ:1mE3nZ:YXBT69HpdxcDZKpJvuIO-7YYwQmVWfQBxOUs56CAV54', '2021-08-26 06:02:37.470613'),
('g1vfgnt2e1cgv4b1mi3tfsj0sqvhdzzd', '.eJxVjMEOwiAQBf-FsyG4QEt79O43kIWFFq2QlPZk_Hdp0oNeZ96bN7O4b7Pda1htIjYyYJdf5tA_Qz4EPTBPhfuStzU5fkz4aSu_FwrL7dz-BWasc3tLFaXq0XW9CkJRMHLQXiCZ6KQxGpBIG62ljhJ8pMFFLZzpwPUASkDXokcu4yu0GtIr5YZStUuZ2Hj9fAH0i0Eq:1mDiPA:BqbilpKuGJbjJHIkdVerV9E7GWNRomEpPv53jwSmcv4', '2021-08-25 07:12:00.870021'),
('os7lb6w8hwgdakcv59ubtp79ssdxfifg', 'eyJ1c2VybmFtZSI6ImFkbWluIiwiaXNfbG9nIjoxfQ:1mDnzN:xu1KiBRYcP5EaCD48ANUc9fpJ76AMSJEm2TqO2agJ6Q', '2021-08-25 13:09:45.317409');

-- --------------------------------------------------------

--
-- Table structure for table `login_customer`
--

CREATE TABLE `login_customer` (
  `id` bigint(20) NOT NULL,
  `username` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `createdAt` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `login_customer`
--

INSERT INTO `login_customer` (`id`, `username`, `password`, `createdAt`) VALUES
(1, 'admin', 'admin', '2021-08-09 19:29:27.000000');

-- --------------------------------------------------------

--
-- Table structure for table `products_ajax_products_ajax`
--

CREATE TABLE `products_ajax_products_ajax` (
  `id` bigint(20) NOT NULL,
  `product_name` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `is_active` int(11) DEFAULT NULL,
  `createdAt` datetime(6) NOT NULL,
  `updated_on` datetime(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products_ajax_products_ajax`
--

INSERT INTO `products_ajax_products_ajax` (`id`, `product_name`, `description`, `image`, `is_active`, `createdAt`, `updated_on`) VALUES
(10, 'fsdfsfdsf', 'fsdfsfdsdf', 'products_ajax/contact1_-_Copy.jpg', 1, '2021-08-12 11:32:26.909598', '2021-08-12 11:32:26.901594');

-- --------------------------------------------------------

--
-- Table structure for table `products_products`
--

CREATE TABLE `products_products` (
  `id` bigint(20) NOT NULL,
  `product_name` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `is_active` int(11) DEFAULT NULL,
  `createdAt` datetime(6) NOT NULL,
  `updated_on` datetime(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products_products`
--

INSERT INTO `products_products` (`id`, `product_name`, `description`, `image`, `is_active`, `createdAt`, `updated_on`) VALUES
(6, 'sdf', 'sfds', 'products/contact3.jpg', 1, '2021-08-12 11:28:19.973831', '2021-08-12 11:28:19.965831');

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE `state` (
  `id` bigint(20) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `is_active` int(11) DEFAULT NULL,
  `created_on` datetime(6) NOT NULL,
  `updated_on` datetime(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`id`, `name`, `is_active`, `created_on`, `updated_on`) VALUES
(1, 'Nashik', 1, '2021-07-19 14:33:54.000000', '2021-07-19 14:33:54.000000'),
(2, 'ABC', 1, '2021-07-19 14:48:52.000000', '2021-07-19 14:48:52.000000');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `crud_django_ajax_crud_django_ajax`
--
ALTER TABLE `crud_django_ajax_crud_django_ajax`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crud_django_crud_django`
--
ALTER TABLE `crud_django_crud_django`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `login_customer`
--
ALTER TABLE `login_customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products_ajax_products_ajax`
--
ALTER TABLE `products_ajax_products_ajax`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products_products`
--
ALTER TABLE `products_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `state`
--
ALTER TABLE `state`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crud_django_ajax_crud_django_ajax`
--
ALTER TABLE `crud_django_ajax_crud_django_ajax`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `crud_django_crud_django`
--
ALTER TABLE `crud_django_crud_django`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `login_customer`
--
ALTER TABLE `login_customer`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `products_ajax_products_ajax`
--
ALTER TABLE `products_ajax_products_ajax`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `products_products`
--
ALTER TABLE `products_products`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `state`
--
ALTER TABLE `state`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
