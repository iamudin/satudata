-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 19, 2023 at 09:00 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `satudata`
--

-- --------------------------------------------------------

--
-- Table structure for table `aksesgrups`
--

CREATE TABLE `aksesgrups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `aksesgrups`
--

INSERT INTO `aksesgrups` (`id`, `nama`, `alias`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Root', 'root', NULL, NULL, NULL),
(2, 'Admin', 'admin', NULL, NULL, NULL),
(3, 'Operator', 'operator', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `aksesmenus`
--

CREATE TABLE `aksesmenus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `menu_id` bigint(20) UNSIGNED DEFAULT NULL,
  `aksesgrup_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `aksesmenus`
--

INSERT INTO `aksesmenus` (`id`, `menu_id`, `aksesgrup_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(15, 1, 1, '2023-01-17 02:25:29', '2023-01-17 02:25:29', NULL),
(16, 2, 1, '2023-01-17 02:25:29', '2023-01-17 02:25:29', NULL),
(17, 6, 1, '2023-01-17 02:25:29', '2023-01-17 02:25:29', NULL),
(18, 3, 1, '2023-01-17 02:25:29', '2023-01-17 02:25:29', NULL),
(19, 4, 1, '2023-01-17 02:25:29', '2023-01-17 02:25:29', NULL),
(20, 10, 1, '2023-01-17 02:25:29', '2023-01-17 02:25:29', NULL),
(21, 5, 1, '2023-01-17 02:25:29', '2023-01-17 02:25:29', NULL),
(22, 34, 1, '2023-01-17 02:25:29', '2023-01-17 02:25:29', NULL),
(23, 35, 1, '2023-01-17 02:25:29', '2023-01-17 02:25:29', NULL),
(24, 36, 1, '2023-01-17 02:25:29', '2023-01-17 02:25:29', NULL),
(25, 37, 1, '2023-01-17 02:25:29', '2023-01-17 02:25:29', NULL),
(26, 38, 1, '2023-01-17 02:25:29', '2023-01-17 02:25:29', NULL),
(27, 39, 1, '2023-01-17 02:25:29', '2023-01-17 02:25:29', NULL),
(28, 37, 3, '2023-01-17 03:03:22', '2023-01-17 03:03:22', NULL),
(29, 38, 3, '2023-01-17 03:03:23', '2023-01-17 03:03:23', NULL),
(30, 39, 3, '2023-01-17 03:03:23', '2023-01-17 03:03:23', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `aplikasis`
--

CREATE TABLE `aplikasis` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `singkatan` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `daerah` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `aplikasis`
--

INSERT INTO `aplikasis` (`id`, `nama`, `singkatan`, `daerah`, `created_at`, `updated_at`, `deleted_at`) VALUES
('81fcfb62-e30e-4eec-8979-3bb22eeaf0c2', 'Aplikasi Satu Data', 'SATU DATA', 'Pemerintah Kabupaten Bengkalis', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `data`
--

CREATE TABLE `data` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jumlah` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tahun` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `elemen_id` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data`
--

INSERT INTO `data` (`id`, `jumlah`, `tahun`, `elemen_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
('983e104a-ba05-4cbe-8470-10af8a4f75fe', '27', '2023', '983e0f64-b51a-4d49-b258-757b937f67ad', '2023-01-17 02:41:27', '2023-01-17 04:08:02', '2023-01-17 04:08:02'),
('983e1067-eae7-48eb-b432-1c9114dbbc9c', '44', '2022', '983e0f64-b51a-4d49-b258-757b937f67ad', '2023-01-17 02:41:46', '2023-01-17 04:07:57', '2023-01-17 04:07:57'),
('983e22a9-0de9-46f6-993b-587e32175d18', '37', '2023', '983e18ef-6d8a-4bb2-a596-25a8fd05ca66', '2023-01-17 03:32:48', '2023-01-17 08:22:34', '2023-01-17 08:22:34'),
('983e2387-238e-4fad-882a-bcd96656f6ac', '45', '2023', '983e1c5e-9143-48d5-9155-c436af155280', '2023-01-17 03:35:14', '2023-01-18 03:13:24', '2023-01-18 03:13:24'),
('983e2446-8800-4e06-94f0-f03a1688baa1', '2,24', '2022', '983e1c70-6810-4d34-bae6-980e507789da', '2023-01-17 03:37:19', '2023-01-18 04:08:31', NULL),
('983e24ec-c444-46a9-a344-a743da5ad8c2', '9,98', '2022', '983e1c83-4749-4529-8394-8b71d1ee0d75', '2023-01-17 03:39:08', '2023-01-18 04:13:03', NULL),
('983e2566-1ac1-4187-87f2-d342ec74c8ea', '8,0', '2023', '983e1d6f-a3a2-4825-9a97-7e578549d7e7', '2023-01-17 03:40:28', '2023-01-18 04:14:29', NULL),
('983e2591-bff6-482b-9167-c53a59d7d0ea', '23', '2023', '983e1d90-776c-41aa-939e-2b337d9d476a', '2023-01-17 03:40:57', '2023-01-17 03:40:57', NULL),
('983e25bc-4f0c-4b56-9576-4c554242e0d1', '23', '2023', '983e1dac-2cde-425b-8708-065a39985063', '2023-01-17 03:41:24', '2023-01-17 03:41:24', NULL),
('983e25ec-9f91-4c62-bc2b-f0ade26b2ebb', '125', '2023', '983e1e43-bfae-4b72-9cea-cf526f8863d5', '2023-01-17 03:41:56', '2023-01-17 03:41:56', NULL),
('983e261f-b38d-43fe-879f-1c7f76f2a766', '32', '2023', '983e1e5e-b57a-427d-aa29-7d38c7ad00ae', '2023-01-17 03:42:30', '2023-01-17 03:42:30', NULL),
('983e2ad3-bc52-4b53-9ddd-0627a5817616', '20', '2022', '983e18ef-6d8a-4bb2-a596-25a8fd05ca66', '2023-01-17 03:55:39', '2023-01-17 08:22:38', '2023-01-17 08:22:38'),
('983e2c8e-ab4c-4f22-9085-1abbde0a091c', '44', '2022', '983e2c65-3bfc-4c12-a262-59580fbe635f', '2023-01-17 04:00:29', '2023-01-17 08:32:12', NULL),
('983e2ca2-d9a6-4382-819c-755e310fe009', '-', '2023', '983e2c65-3bfc-4c12-a262-59580fbe635f', '2023-01-17 04:00:42', '2023-01-17 04:24:21', NULL),
('983e2ee5-8d3d-460c-bd92-a43b59df3cf1', '24', '2022', '983e2e78-c86a-4503-9790-314fb750d1d6', '2023-01-17 04:07:01', '2023-01-17 08:31:34', NULL),
('983e30f6-8f1f-41e5-8f43-bf8810658b6e', '-', '2023', '983e2e78-c86a-4503-9790-314fb750d1d6', '2023-01-17 04:12:48', '2023-01-17 04:25:46', NULL),
('983e3214-927e-4e21-914b-f1596cda3940', '19', '2022', '983e3172-d077-4353-b6e7-51d280c650a6', '2023-01-17 04:15:56', '2023-01-17 04:37:07', NULL),
('983e3670-a8db-4b47-a621-310dc975746c', '-', '2023', '983e3172-d077-4353-b6e7-51d280c650a6', '2023-01-17 04:28:07', '2023-01-17 04:28:07', NULL),
('983e3a0b-fb44-4fd7-9343-7e6e69397ce5', '-', '2023', '983e397f-f0a8-4692-b06e-ffca65e7f8f3', '2023-01-17 04:38:12', '2023-01-17 04:38:12', NULL),
('983e3a2d-307f-48f3-b3ec-99946a5fa35a', '87', '2022', '983e397f-f0a8-4692-b06e-ffca65e7f8f3', '2023-01-17 04:38:34', '2023-01-17 04:38:34', NULL),
('983e3c4f-3c44-47c3-a1e5-eae6dc23c514', '-', '2023', '983e39da-97e3-4590-821f-c38cde17d0a0', '2023-01-17 04:44:32', '2023-01-17 04:44:32', NULL),
('983e3c62-94c1-4a6b-8202-4d271a1c2ccc', '21', '2022', '983e39da-97e3-4590-821f-c38cde17d0a0', '2023-01-17 04:44:44', '2023-01-17 04:44:44', NULL),
('983e83e5-314f-43ff-aa5d-e4d704de3c4d', '-', '2023', '983e83bb-a6a8-41dd-a1ec-7fcb1589f9dd', '2023-01-17 08:04:42', '2023-01-17 08:04:42', NULL),
('983e83fd-f884-496f-8c58-c08c279ce041', '8', '2022', '983e83bb-a6a8-41dd-a1ec-7fcb1589f9dd', '2023-01-17 08:04:58', '2023-01-17 08:04:58', NULL),
('983e8472-58c2-43a4-9d30-96498afa380a', '-', '2023', '983e8435-fd2b-4221-b3ff-b9ba6604712b', '2023-01-17 08:06:14', '2023-01-17 08:06:14', NULL),
('983e8491-1586-4699-9f5b-4e48378aa9a3', '15', '2022', '983e8435-fd2b-4221-b3ff-b9ba6604712b', '2023-01-17 08:06:34', '2023-01-17 08:06:34', NULL),
('983e84ed-f6e2-4ac1-af80-b494db4ab066', '-', '2023', '983e84b8-16c4-4a99-8dab-889523dda3dc', '2023-01-17 08:07:35', '2023-01-17 08:07:35', NULL),
('983e8508-c43c-4897-b1cf-64c57bb87a73', '41', '2022', '983e84b8-16c4-4a99-8dab-889523dda3dc', '2023-01-17 08:07:53', '2023-01-17 08:07:53', NULL),
('983e864f-bee5-4340-990a-3aa0e286b5d6', '-', '2023', '983e85f4-24c1-461b-8e90-63240b693467', '2023-01-17 08:11:27', '2023-01-17 08:11:27', NULL),
('983e865e-363b-4d43-b545-316332a229f4', '9', '2022', '983e85f4-24c1-461b-8e90-63240b693467', '2023-01-17 08:11:37', '2023-01-17 08:11:37', NULL),
('983e872e-42dd-42a7-b256-6ceeef827dd8', '-', '2023', '983e86f9-6faf-4cb0-b401-ed79fc6fe37b', '2023-01-17 08:13:53', '2023-01-17 08:13:53', NULL),
('983e874b-1663-40b1-9eca-87af2fb73963', '11', '2022', '983e86f9-6faf-4cb0-b401-ed79fc6fe37b', '2023-01-17 08:14:12', '2023-01-17 08:14:12', NULL),
('983e8821-3756-4db3-9278-3ac2ecee0f6d', '-', '2023', '983e8775-55e1-4720-a896-1ea8a9655e8d', '2023-01-17 08:16:32', '2023-01-17 08:16:32', NULL),
('983e882f-16d7-43ae-911b-a353a9a224cf', '62', '2022', '983e8775-55e1-4720-a896-1ea8a9655e8d', '2023-01-17 08:16:41', '2023-01-17 08:16:41', NULL),
('983e8be9-74b7-4cc5-9474-19435198e057', '-', '2023', '983e8b63-1317-48cb-bc3c-1ce5647a440a', '2023-01-17 08:27:07', '2023-01-17 08:27:07', NULL),
('983e8c01-7daa-4689-90a9-8e4b4f22f933', '20', '2022', '983e8b63-1317-48cb-bc3c-1ce5647a440a', '2023-01-17 08:27:23', '2023-01-17 08:27:23', NULL),
('983e8f75-5d67-429e-a6bb-01309114ffae', '-', '2023', '983e8f53-84d5-4165-831a-dbcb186cff25', '2023-01-17 08:37:02', '2023-01-17 08:37:02', NULL),
('983e8f8c-56cb-4c3c-8f80-2fc19595986b', '111', '2022', '983e8f53-84d5-4165-831a-dbcb186cff25', '2023-01-17 08:37:17', '2023-01-17 08:37:17', NULL),
('983e9039-b525-4bc3-b175-edbfab169ea3', '-', '2023', '983e901b-9d6e-430a-8420-b10dbff7a487', '2023-01-17 08:39:10', '2023-01-17 08:39:10', NULL),
('983e904c-25f6-4008-84a7-679dceede4b4', '23', '2022', '983e901b-9d6e-430a-8420-b10dbff7a487', '2023-01-17 08:39:23', '2023-01-17 08:39:23', NULL),
('98401a17-4bb5-4b6a-8af9-04df87485545', '-', '2023', '984019db-a5e0-400f-bc51-f957bf75bb6c', '2023-01-18 03:00:30', '2023-01-18 03:00:30', NULL),
('98401a35-1f91-40b5-b991-d069caff0a1b', '36', '2022', '984019db-a5e0-400f-bc51-f957bf75bb6c', '2023-01-18 03:00:50', '2023-01-18 03:00:50', NULL),
('98401a7d-bd22-413d-a03d-11a96bf2015a', '-', '2023', '98401a5b-eb6d-4819-9e38-bbe253ab1d19', '2023-01-18 03:01:37', '2023-01-18 03:01:37', NULL),
('98401a93-2f03-48c5-bdea-6ac4940ff226', '75', '2022', '98401a5b-eb6d-4819-9e38-bbe253ab1d19', '2023-01-18 03:01:51', '2023-01-18 03:01:51', NULL),
('98401b01-a896-49d1-b757-0dcade834812', '-', '2023', '98401adc-71a4-4542-a87f-c5b229f7390b', '2023-01-18 03:03:04', '2023-01-18 03:03:04', NULL),
('98401b13-61ea-4a0f-8d09-baa0de7db360', '85', '2022', '98401adc-71a4-4542-a87f-c5b229f7390b', '2023-01-18 03:03:15', '2023-01-18 03:03:15', NULL),
('98401b86-6665-4e05-8115-31fcd92a3500', '-', '2023', '98401b40-1b55-4bf8-a406-366326d53871', '2023-01-18 03:04:31', '2023-01-18 03:04:31', NULL),
('98401bad-a748-46bd-956d-e8189487e6fd', '16', '2022', '98401b40-1b55-4bf8-a406-366326d53871', '2023-01-18 03:04:56', '2023-01-18 03:04:56', NULL),
('98401bfb-6505-4d2f-b8e7-11325b4b0d8c', '-', '2023', '98401bd8-2496-4200-a921-da34da141faa', '2023-01-18 03:05:47', '2023-01-18 03:05:47', NULL),
('98401c16-bf28-403d-9374-3f6149438f4e', '26', '2022', '98401bd8-2496-4200-a921-da34da141faa', '2023-01-18 03:06:05', '2023-01-18 03:06:05', NULL),
('98401c97-b2f0-403d-9590-bc042f0683d7', '-', '2023', '98401c61-854b-4efe-8104-6620017c535e', '2023-01-18 03:07:30', '2023-01-18 03:07:30', NULL),
('98401ca9-2171-4ea6-ae4b-e736a5a62e24', '73', '2022', '98401c61-854b-4efe-8104-6620017c535e', '2023-01-18 03:07:41', '2023-01-18 03:07:41', NULL),
('98401cfe-c751-45a6-a533-0e78d76b05e6', '-', '2023', '98401cd4-9a2b-4649-a587-3c1fdd1bc4c7', '2023-01-18 03:08:37', '2023-01-18 03:08:37', NULL),
('98401d08-b9cb-4e43-98eb-f70746f1b5d0', '0', '2022', '98401cd4-9a2b-4649-a587-3c1fdd1bc4c7', '2023-01-18 03:08:44', '2023-01-18 03:08:44', NULL),
('98401d5a-75de-4a94-82ba-707001408061', '-', '2023', '98401d33-bc66-401d-927d-ba4319bfb00c', '2023-01-18 03:09:37', '2023-01-18 03:09:37', NULL),
('98401d70-a923-45e7-8c9b-0f0d4daac196', '234', '2022', '98401d33-bc66-401d-927d-ba4319bfb00c', '2023-01-18 03:09:52', '2023-01-18 03:09:52', NULL),
('98401f4d-4194-4491-9d6a-3674be0a2b96', '27', '2019', '983e1c5e-9143-48d5-9155-c436af155280', '2023-01-18 03:15:04', '2023-01-18 03:15:04', NULL),
('98401f5c-314a-4bc1-8ab9-980f86cc23d7', '100', '2020', '983e1c5e-9143-48d5-9155-c436af155280', '2023-01-18 03:15:14', '2023-01-18 03:15:14', NULL),
('98401f6b-b757-4da8-8997-8f00fb6e50f7', '100', '2021', '983e1c5e-9143-48d5-9155-c436af155280', '2023-01-18 03:15:24', '2023-01-18 03:15:24', NULL),
('98403e81-3081-407b-8e47-7de2d57c09eb', '-', '2023', '98403e47-997e-44c1-a392-d4b6340b4c70', '2023-01-18 04:42:19', '2023-01-18 04:42:19', NULL),
('98404109-bf50-4358-a52b-6d3f49fc349d', '-', '2023', '98403da6-86ac-4f80-8a54-44152014db43', '2023-01-18 04:49:24', '2023-01-18 04:49:24', NULL),
('98404131-3513-40a9-b7b4-4958bc86a0c3', '90', '2022', '98403da6-86ac-4f80-8a54-44152014db43', '2023-01-18 04:49:50', '2023-01-18 04:49:59', NULL),
('98404158-7ccd-4f75-970a-38adb66b3b98', '86', '2021', '98403da6-86ac-4f80-8a54-44152014db43', '2023-01-18 04:50:16', '2023-01-18 04:50:16', NULL),
('98404168-3761-495a-a9a1-c3f09ebd7e08', '82', '2020', '98403da6-86ac-4f80-8a54-44152014db43', '2023-01-18 04:50:26', '2023-01-18 04:50:26', NULL),
('984042d9-a0b7-4724-a3e9-77dc590ad9c0', '-', '2023', '9840428b-5403-4ae6-aed6-0e35cc6b5c7e', '2023-01-18 04:54:28', '2023-01-18 04:54:28', NULL),
('98404305-7dcc-4e0a-9796-0446fad63973', '-', '2022', '9840428b-5403-4ae6-aed6-0e35cc6b5c7e', '2023-01-18 04:54:57', '2023-01-18 04:54:57', NULL),
('9840432b-0609-4e4c-abc1-ae01a7c5180f', '14', '2021', '9840428b-5403-4ae6-aed6-0e35cc6b5c7e', '2023-01-18 04:55:22', '2023-01-18 04:55:22', NULL),
('98404341-4dad-4d42-9f30-5662b3f70b74', '13', '2020', '9840428b-5403-4ae6-aed6-0e35cc6b5c7e', '2023-01-18 04:55:36', '2023-01-18 04:55:36', NULL),
('98404357-c3cd-4e87-a399-9687655cb8c6', '8', '2019', '9840428b-5403-4ae6-aed6-0e35cc6b5c7e', '2023-01-18 04:55:51', '2023-01-18 04:55:51', NULL),
('984043ac-9da1-4edd-a5f3-9747db9d2e57', '-', '2023', '984042ac-62a7-4144-9398-e035c59e78f3', '2023-01-18 04:56:47', '2023-01-18 04:56:47', NULL),
('984043b7-89f1-476d-ac33-d05793d1cce9', '-', '2022', '984042ac-62a7-4144-9398-e035c59e78f3', '2023-01-18 04:56:54', '2023-01-18 04:56:54', NULL),
('984043d3-7388-4dee-ab71-1e2b126a2e93', '54,852', '2021', '984042ac-62a7-4144-9398-e035c59e78f3', '2023-01-18 04:57:12', '2023-01-18 04:57:12', NULL),
('984043f5-de0f-4fd3-9164-cddfbc0d7f78', '13,456', '2020', '984042ac-62a7-4144-9398-e035c59e78f3', '2023-01-18 04:57:35', '2023-01-18 04:57:35', NULL),
('9840441b-3fb3-442c-a501-822cfa5e6901', '170,02', '2019', '984042ac-62a7-4144-9398-e035c59e78f3', '2023-01-18 04:57:59', '2023-01-18 04:57:59', NULL),
('98408aa5-2005-488f-a401-3ccc63343388', '-', '2023', '98408a2a-b61a-4145-8ba3-9927d4ca02c3', '2023-01-18 08:15:14', '2023-01-18 08:18:42', '2023-01-18 08:18:42'),
('98408aaf-a570-4c1a-a9b4-85560e4b220d', '-', '2022', '98408a2a-b61a-4145-8ba3-9927d4ca02c3', '2023-01-18 08:15:20', '2023-01-18 08:18:42', '2023-01-18 08:18:42'),
('98408abb-b999-46ee-962d-e4cb8e6e9c3d', '14', '2021', '98408a2a-b61a-4145-8ba3-9927d4ca02c3', '2023-01-18 08:15:28', '2023-01-18 08:18:42', '2023-01-18 08:18:42'),
('98408ac9-4690-4316-bab7-a53c91848752', '13', '2020', '98408a2a-b61a-4145-8ba3-9927d4ca02c3', '2023-01-18 08:15:37', '2023-01-18 08:18:42', '2023-01-18 08:18:42'),
('98408adf-293e-4d78-ac14-7f24b17ce019', '8', '2019', '98408a2a-b61a-4145-8ba3-9927d4ca02c3', '2023-01-18 08:15:52', '2023-01-18 08:18:42', '2023-01-18 08:18:42'),
('98408caa-9d36-46a5-9531-cd3d797242f6', '-', '2023', '98408a2a-b61a-4145-8ba3-9927d4ca02c3', '2023-01-18 08:20:53', '2023-01-18 08:20:53', NULL),
('98408cb4-40db-4622-b5e2-b547d6b1f377', '-', '2022', '98408a2a-b61a-4145-8ba3-9927d4ca02c3', '2023-01-18 08:20:59', '2023-01-18 08:20:59', NULL),
('98408cc1-8797-4aa3-8fdb-a740ce099158', '14', '2021', '98408a2a-b61a-4145-8ba3-9927d4ca02c3', '2023-01-18 08:21:08', '2023-01-18 08:21:08', NULL),
('98408cd2-0c4e-4b53-94fb-cdbc910fe3ab', '13', '2020', '98408a2a-b61a-4145-8ba3-9927d4ca02c3', '2023-01-18 08:21:19', '2023-01-18 08:21:19', NULL),
('98408cdc-1979-458a-ba7b-0e86b882fb76', '8', '2019', '98408a2a-b61a-4145-8ba3-9927d4ca02c3', '2023-01-18 08:21:25', '2023-01-18 08:21:25', NULL),
('98408dc0-1c78-4d23-9f36-308454ee0f15', '-', '2023', '98408a50-6a93-497e-80f3-ade33b694aa8', '2023-01-18 08:23:55', '2023-01-18 08:23:55', NULL),
('98408dcd-0eda-4181-b6d7-6fe7c21a3dd3', '-', '2022', '98408a50-6a93-497e-80f3-ade33b694aa8', '2023-01-18 08:24:03', '2023-01-18 08:24:03', NULL),
('98408def-0e34-4d38-bfe0-7912a61daf70', '54,852', '2021', '98408a50-6a93-497e-80f3-ade33b694aa8', '2023-01-18 08:24:25', '2023-01-18 08:24:25', NULL),
('98408e2e-ab4c-49eb-894d-01660a595705', '13,456', '2020', '98408a50-6a93-497e-80f3-ade33b694aa8', '2023-01-18 08:25:07', '2023-01-18 08:25:07', NULL),
('98408e4c-7011-4060-95aa-fa127c192860', '170,02', '2019', '98408a50-6a93-497e-80f3-ade33b694aa8', '2023-01-18 08:25:27', '2023-01-18 08:25:27', NULL),
('9840923a-bba7-4b74-a817-940bff472e75', '-', '2023', '98403dba-d343-4009-8ac3-34326a6bbaf2', '2023-01-18 08:36:26', '2023-01-18 08:36:26', NULL),
('98409246-862e-4df7-938c-48274c9f64d3', '67', '2022', '98403dba-d343-4009-8ac3-34326a6bbaf2', '2023-01-18 08:36:34', '2023-01-18 08:36:34', NULL),
('98409255-58e2-4d15-b89b-65925a5bda27', '79', '2021', '98403dba-d343-4009-8ac3-34326a6bbaf2', '2023-01-18 08:36:43', '2023-01-18 08:36:43', NULL),
('98409268-f474-4e2e-af27-e245fbe4137f', '86', '2020', '98403dba-d343-4009-8ac3-34326a6bbaf2', '2023-01-18 08:36:56', '2023-01-18 08:36:56', NULL),
('98409276-7712-4eb7-a586-5820c54b397c', '89', '2019', '98403dba-d343-4009-8ac3-34326a6bbaf2', '2023-01-18 08:37:05', '2023-01-18 08:37:05', NULL),
('984092b6-1ffd-4267-905b-3800af859f04', '76', '2019', '98403da6-86ac-4f80-8a54-44152014db43', '2023-01-18 08:37:47', '2023-01-18 08:37:47', NULL),
('984092f7-9501-4f80-ab70-393f8f352920', '-', '2023', '98403de0-bd81-458c-8d5f-30123f9b2780', '2023-01-18 08:38:30', '2023-01-18 08:38:30', NULL),
('9840934f-3f03-4a26-9353-66f2c3a2a119', '88', '2022', '98403de0-bd81-458c-8d5f-30123f9b2780', '2023-01-18 08:39:27', '2023-01-18 08:39:27', NULL),
('984093a1-f35a-43fc-8993-d4864232b63e', '83', '2021', '98403de0-bd81-458c-8d5f-30123f9b2780', '2023-01-18 08:40:21', '2023-01-18 08:40:21', NULL),
('984093b7-2685-453f-bd72-352c63a944ce', '78', '2020', '98403de0-bd81-458c-8d5f-30123f9b2780', '2023-01-18 08:40:35', '2023-01-18 08:40:35', NULL),
('984093de-e224-4ba0-8917-2f34ce43e1e6', '77', '2019', '98403de0-bd81-458c-8d5f-30123f9b2780', '2023-01-18 08:41:01', '2023-01-18 08:41:01', NULL),
('984094be-0497-49bb-afcb-14c079106836', '-', '2023', '98403dfe-5283-4241-83a0-3817eb925ce0', '2023-01-18 08:43:28', '2023-01-18 08:43:28', NULL),
('984094ce-ff07-4a15-b1f1-e8f164fa068f', '98', '2022', '98403dfe-5283-4241-83a0-3817eb925ce0', '2023-01-18 08:43:39', '2023-01-18 08:43:39', NULL),
('984094e3-38d0-4a3e-a855-7118cfc9264a', '87', '2021', '98403dfe-5283-4241-83a0-3817eb925ce0', '2023-01-18 08:43:52', '2023-01-18 08:43:52', NULL),
('984094f5-5e34-4a38-a5a3-9cc81bd58fd2', '81', '2020', '98403dfe-5283-4241-83a0-3817eb925ce0', '2023-01-18 08:44:04', '2023-01-18 08:44:04', NULL),
('98409506-8765-449f-b089-122e95475544', '76', '2019', '98403dfe-5283-4241-83a0-3817eb925ce0', '2023-01-18 08:44:15', '2023-01-18 08:44:15', NULL),
('98409f6e-8faf-4988-a79b-73ac7682effe', '-', '2023', '983e1c83-4749-4529-8394-8b71d1ee0d75', '2023-01-18 09:13:21', '2023-01-18 09:13:21', NULL),
('98409f9e-628f-4c2e-bd81-75c58311a3bb', '-', '2023', '983e1c70-6810-4d34-bae6-980e507789da', '2023-01-18 09:13:52', '2023-01-18 09:13:52', NULL),
('9840a2ac-3136-4826-962c-4cf08e6acaf4', '-', '2023', '9840a256-0c04-4f24-9b7b-e8f0ee66bd59', '2023-01-18 09:22:25', '2023-01-18 09:22:25', NULL),
('9840a2be-048b-449e-b7b6-4fe24129bfdf', '-', '2022', '9840a256-0c04-4f24-9b7b-e8f0ee66bd59', '2023-01-18 09:22:36', '2023-01-18 09:22:36', NULL),
('9840a2d8-8d0b-4ac8-a24a-b9145b3ffc8b', '12', '2021', '9840a256-0c04-4f24-9b7b-e8f0ee66bd59', '2023-01-18 09:22:54', '2023-01-18 09:22:54', NULL),
('9840a2ed-d463-4315-aa69-17e46ab0e071', '5', '2020', '9840a256-0c04-4f24-9b7b-e8f0ee66bd59', '2023-01-18 09:23:08', '2023-01-18 09:23:08', NULL),
('9840a2ff-9fa3-4725-b793-818ae59efa3d', '16', '2019', '9840a256-0c04-4f24-9b7b-e8f0ee66bd59', '2023-01-18 09:23:19', '2023-01-18 09:23:19', NULL),
('9840a345-ea47-4c7f-8447-7b781bdd7d1e', '-', '2023', '9840a270-d48b-4d45-98a9-19a2f8eaf29c', '2023-01-18 09:24:05', '2023-01-18 09:24:05', NULL),
('9840a34f-66d8-4618-80d6-0c85ad1ab6e5', '-', '2022', '9840a270-d48b-4d45-98a9-19a2f8eaf29c', '2023-01-18 09:24:12', '2023-01-18 09:24:12', NULL),
('9840a384-332d-4619-87d3-42040ca7a1b0', '57,3', '2021', '9840a270-d48b-4d45-98a9-19a2f8eaf29c', '2023-01-18 09:24:46', '2023-01-18 09:24:46', NULL),
('9840a3a0-d12f-46fd-bcba-3d9ba896b638', '35,6', '2020', '9840a270-d48b-4d45-98a9-19a2f8eaf29c', '2023-01-18 09:25:05', '2023-01-18 09:25:05', NULL),
('9840a3d6-8557-4515-a54e-6d48d75d2820', '154', '2019', '9840a270-d48b-4d45-98a9-19a2f8eaf29c', '2023-01-18 09:25:40', '2023-01-18 09:25:40', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `elemens`
--

CREATE TABLE `elemens` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `satuan` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keterangan` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `parent_id` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `opd_id` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wilayah_id` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `elemens`
--

INSERT INTO `elemens` (`id`, `nama`, `satuan`, `keterangan`, `status`, `parent_id`, `opd_id`, `wilayah_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
('983e0f64-b51a-4d49-b258-757b937f67ad', 'Jumlah Menara Telekomunikasi / Base Tranceiver Station (BTS) yang Memiliki Izin Per Kecamatan di Kabupaten Bengkalis', 'BTS', '-', 0, NULL, '983e0afa-a42b-49aa-ba83-bc62dccabd1c', NULL, '2023-01-17 02:38:56', '2023-01-17 04:11:51', NULL),
('983e18ef-6d8a-4bb2-a596-25a8fd05ca66', 'Data Kelompok Informasi Masyarakat (KIM) Kabupaten Bengkalis', 'Orang', '-', 0, NULL, '983e0afa-a42b-49aa-ba83-bc62dccabd1c', '983e0c8f-01ba-4858-923d-071c9547c6f2', '2023-01-17 03:05:37', '2023-01-17 08:24:48', NULL),
('983e1c5e-9143-48d5-9155-c436af155280', 'Persentase Perangkat Daerah yang Telah Menggunakan E-mail Sanapati Dari BSSN di Kabupaten Bengkalis', 'Persen', '12 Perangkat Daerah telah menggunakan email sanapati dari BSSN (11 Kecamatan dan Diskominfotik)', 2, NULL, '983e0afa-a42b-49aa-ba83-bc62dccabd1c', '983e0c2b-1cb1-4b5c-813c-0a65cdd1f1dc', '2023-01-17 03:15:13', '2023-01-18 03:14:49', NULL),
('983e1c70-6810-4d34-bae6-980e507789da', 'Indeks sistem pemerintahan berbasis elektronik (SPBE)', 'Angka', '-', 2, NULL, '983e0afa-a42b-49aa-ba83-bc62dccabd1c', '983e0c2b-1cb1-4b5c-813c-0a65cdd1f1dc', '2023-01-17 03:15:25', '2023-01-17 03:37:12', NULL),
('983e1c83-4749-4529-8394-8b71d1ee0d75', 'Indeks keterbukaan informasi publik (KIP)', 'Persen', '-', 2, NULL, '983e0afa-a42b-49aa-ba83-bc62dccabd1c', '983e0c2b-1cb1-4b5c-813c-0a65cdd1f1dc', '2023-01-17 03:15:37', '2023-01-17 03:39:01', NULL),
('983e1d6f-a3a2-4825-9a97-7e578549d7e7', 'Persentase Satu Data Kabupaten Bengkalis', 'Persen', '-', 2, NULL, '983e0afa-a42b-49aa-ba83-bc62dccabd1c', '983e0c2b-1cb1-4b5c-813c-0a65cdd1f1dc', '2023-01-17 03:18:12', '2023-01-17 03:40:17', NULL),
('983e1d90-776c-41aa-939e-2b337d9d476a', 'Persentase Perangkat Daerah yang telah menggunakan sandi dalam aktivitas komunikasi dan informasi', 'Persen', '-', 2, NULL, '983e0afa-a42b-49aa-ba83-bc62dccabd1c', '983e0c2b-1cb1-4b5c-813c-0a65cdd1f1dc', '2023-01-17 03:18:34', '2023-01-17 03:40:51', NULL),
('983e1dac-2cde-425b-8708-065a39985063', 'Persentase Perangkat Daerah yang telah menerapkan Tanda Tangan Elektronik (TTE) pada Naskah Dinasnya', 'Persen', '-', 2, NULL, '983e0afa-a42b-49aa-ba83-bc62dccabd1c', '983e0c2b-1cb1-4b5c-813c-0a65cdd1f1dc', '2023-01-17 03:18:52', '2023-01-17 03:56:37', NULL),
('983e1e43-bfae-4b72-9cea-cf526f8863d5', 'Jumlah Desa yang  blank spot Per Kecamatan di Bengkalis', 'Desa', '-', 2, NULL, '983e0afa-a42b-49aa-ba83-bc62dccabd1c', '983e0c2b-1cb1-4b5c-813c-0a65cdd1f1dc', '2023-01-17 03:20:31', '2023-01-17 03:41:45', NULL),
('983e1e5e-b57a-427d-aa29-7d38c7ad00ae', 'Jumlah Perangkat Daerah yang memiliki Website Aktif dan Non Aktif', 'PD', '-', 2, NULL, '983e0afa-a42b-49aa-ba83-bc62dccabd1c', '983e0c2b-1cb1-4b5c-813c-0a65cdd1f1dc', '2023-01-17 03:20:49', '2023-01-17 03:42:19', NULL),
('983e2c65-3bfc-4c12-a262-59580fbe635f', 'Kecamatan Bengkalis', 'BTS', '-', 1, '983e0f64-b51a-4d49-b258-757b937f67ad', '983e0afa-a42b-49aa-ba83-bc62dccabd1c', '983e0c8f-01ba-4858-923d-071c9547c6f2', '2023-01-17 04:00:02', '2023-01-17 08:32:00', NULL),
('983e2e78-c86a-4503-9790-314fb750d1d6', 'Kecamatan Bantan', 'BTS', '-', 1, '983e0f64-b51a-4d49-b258-757b937f67ad', '983e0afa-a42b-49aa-ba83-bc62dccabd1c', '983e0c2b-1cb1-4b5c-813c-0a65cdd1f1dc', '2023-01-17 04:05:50', '2023-01-17 08:31:14', NULL),
('983e3172-d077-4353-b6e7-51d280c650a6', 'Kecamatan Bukit Batu', 'BTS', '-', 1, '983e0f64-b51a-4d49-b258-757b937f67ad', '983e0afa-a42b-49aa-ba83-bc62dccabd1c', '983e0d0b-1f02-4d22-a070-d1081fb54db3', '2023-01-17 04:14:10', '2023-01-17 04:36:53', NULL),
('983e397f-f0a8-4692-b06e-ffca65e7f8f3', 'Kecamatan Mandau', 'BTS', '-', 1, '983e0f64-b51a-4d49-b258-757b937f67ad', '983e0afa-a42b-49aa-ba83-bc62dccabd1c', '983e3745-f2af-44fd-87e2-a152bf116f51', '2023-01-17 04:36:40', '2023-01-17 08:34:44', NULL),
('983e39da-97e3-4590-821f-c38cde17d0a0', 'Kecamatan Rupat', 'BTS', '-', 1, '983e0f64-b51a-4d49-b258-757b937f67ad', '983e0afa-a42b-49aa-ba83-bc62dccabd1c', '983e3766-0ea9-420f-bbc2-e667ac46b1d5', '2023-01-17 04:37:40', '2023-01-17 08:34:28', NULL),
('983e83bb-a6a8-41dd-a1ec-7fcb1589f9dd', 'Kecamatan Rupat Utara', 'BTS', '-', 1, '983e0f64-b51a-4d49-b258-757b937f67ad', '983e0afa-a42b-49aa-ba83-bc62dccabd1c', '983e3779-1e56-4fb9-9b20-75dd5ebd922e', '2023-01-17 08:04:15', '2023-01-17 08:34:13', NULL),
('983e8435-fd2b-4221-b3ff-b9ba6604712b', 'Kecamatan Siak Kecil', 'BTS', '-', 1, '983e0f64-b51a-4d49-b258-757b937f67ad', '983e0afa-a42b-49aa-ba83-bc62dccabd1c', '983e3792-9968-4d6b-9bc1-add88228e733', '2023-01-17 08:05:35', '2023-01-17 08:34:07', NULL),
('983e84b8-16c4-4a99-8dab-889523dda3dc', 'Kecamatan Pinggir', 'BTS', '-', 1, '983e0f64-b51a-4d49-b258-757b937f67ad', '983e0afa-a42b-49aa-ba83-bc62dccabd1c', '983e37b3-6e91-4b19-ad6f-0f6090792a28', '2023-01-17 08:07:00', '2023-01-17 08:34:00', NULL),
('983e85f4-24c1-461b-8e90-63240b693467', 'Kecamatan Bandar Laksamana', 'BTS', '-', 1, '983e0f64-b51a-4d49-b258-757b937f67ad', '983e0afa-a42b-49aa-ba83-bc62dccabd1c', '983e37cd-6701-4f6f-8356-1c03274ff6f6', '2023-01-17 08:10:27', '2023-01-17 08:33:55', NULL),
('983e86f9-6faf-4cb0-b401-ed79fc6fe37b', 'Kecamatan Talang Muandau', 'BTS', '-', 1, '983e0f64-b51a-4d49-b258-757b937f67ad', '983e0afa-a42b-49aa-ba83-bc62dccabd1c', '983e37fd-f446-46de-8093-37a59ffd5418', '2023-01-17 08:13:18', '2023-01-17 08:33:43', NULL),
('983e8775-55e1-4720-a896-1ea8a9655e8d', 'Kecamatan Bathin Solapan', 'BTS', '-', 1, '983e0f64-b51a-4d49-b258-757b937f67ad', '983e0afa-a42b-49aa-ba83-bc62dccabd1c', '983e37fd-f446-46de-8093-37a59ffd5418', '2023-01-17 08:14:40', '2023-01-17 08:33:35', NULL),
('983e87b2-4942-4f64-95a7-2c875f9613da', 'Kecamatan Bathin Solapan', NULL, NULL, 1, '983e0f64-b51a-4d49-b258-757b937f67ad', '983e0afa-a42b-49aa-ba83-bc62dccabd1c', NULL, '2023-01-17 08:15:20', '2023-01-17 08:15:45', '2023-01-17 08:15:45'),
('983e8b63-1317-48cb-bc3c-1ce5647a440a', 'Kecamatan Bengkalis', 'Orang', '-', 1, '983e18ef-6d8a-4bb2-a596-25a8fd05ca66', '983e0afa-a42b-49aa-ba83-bc62dccabd1c', '983e0c2b-1cb1-4b5c-813c-0a65cdd1f1dc', '2023-01-17 08:25:39', '2023-01-17 08:35:31', NULL),
('983e8f53-84d5-4165-831a-dbcb186cff25', 'Kecamatan Bantan', 'Orang', '-', 2, '983e18ef-6d8a-4bb2-a596-25a8fd05ca66', '983e0afa-a42b-49aa-ba83-bc62dccabd1c', '983e0c8f-01ba-4858-923d-071c9547c6f2', '2023-01-17 08:36:40', '2023-01-17 08:36:55', NULL),
('983e901b-9d6e-430a-8420-b10dbff7a487', 'Kecamatan Bukit Batu', 'Orang', '-', 2, '983e18ef-6d8a-4bb2-a596-25a8fd05ca66', '983e0afa-a42b-49aa-ba83-bc62dccabd1c', '983e0d0b-1f02-4d22-a070-d1081fb54db3', '2023-01-17 08:38:51', '2023-01-17 08:39:04', NULL),
('984019db-a5e0-400f-bc51-f957bf75bb6c', 'Kecamatan Mandau', 'Orang', '-', 2, '983e18ef-6d8a-4bb2-a596-25a8fd05ca66', '983e0afa-a42b-49aa-ba83-bc62dccabd1c', '983e3745-f2af-44fd-87e2-a152bf116f51', '2023-01-18 02:59:51', '2023-01-18 03:00:23', NULL),
('98401a5b-eb6d-4819-9e38-bbe253ab1d19', 'Kecamatan Rupat', 'Orang', '-', 2, '983e18ef-6d8a-4bb2-a596-25a8fd05ca66', '983e0afa-a42b-49aa-ba83-bc62dccabd1c', '983e3766-0ea9-420f-bbc2-e667ac46b1d5', '2023-01-18 03:01:15', '2023-01-18 03:01:33', NULL),
('98401adc-71a4-4542-a87f-c5b229f7390b', 'Kecamatan Rupat Utara', 'Orang', '-', 2, '983e18ef-6d8a-4bb2-a596-25a8fd05ca66', '983e0afa-a42b-49aa-ba83-bc62dccabd1c', '983e3779-1e56-4fb9-9b20-75dd5ebd922e', '2023-01-18 03:02:39', '2023-01-18 03:02:59', NULL),
('98401b40-1b55-4bf8-a406-366326d53871', 'Kecamatan Siak Kecil', 'Orang', '-', 2, '983e18ef-6d8a-4bb2-a596-25a8fd05ca66', '983e0afa-a42b-49aa-ba83-bc62dccabd1c', '983e3792-9968-4d6b-9bc1-add88228e733', '2023-01-18 03:03:45', '2023-01-18 03:04:23', NULL),
('98401bd8-2496-4200-a921-da34da141faa', 'Kecamatan Pinggir', 'Orang', '-', 2, '983e18ef-6d8a-4bb2-a596-25a8fd05ca66', '983e0afa-a42b-49aa-ba83-bc62dccabd1c', '983e37b3-6e91-4b19-ad6f-0f6090792a28', '2023-01-18 03:05:24', '2023-01-18 03:05:41', NULL),
('98401c61-854b-4efe-8104-6620017c535e', 'Kecamatan Bandar Laksamana', 'Orang', '-', 2, '983e18ef-6d8a-4bb2-a596-25a8fd05ca66', '983e0afa-a42b-49aa-ba83-bc62dccabd1c', '983e37cd-6701-4f6f-8356-1c03274ff6f6', '2023-01-18 03:06:54', '2023-01-18 03:07:24', NULL),
('98401cd4-9a2b-4649-a587-3c1fdd1bc4c7', 'Kecamatan Talang Muandau', 'Orang', '-', 2, '983e18ef-6d8a-4bb2-a596-25a8fd05ca66', '983e0afa-a42b-49aa-ba83-bc62dccabd1c', '983e37e2-aaa3-4c8a-90b5-adc064cb5ce7', '2023-01-18 03:08:10', '2023-01-18 03:08:30', NULL),
('98401d33-bc66-401d-927d-ba4319bfb00c', 'Kecamatan Bathin Solapan', 'Orang', '-', 2, '983e18ef-6d8a-4bb2-a596-25a8fd05ca66', '983e0afa-a42b-49aa-ba83-bc62dccabd1c', '983e37fd-f446-46de-8093-37a59ffd5418', '2023-01-18 03:09:12', '2023-01-18 03:09:31', NULL),
('98403d87-c946-4024-9c50-41443970770f', 'Jumlah Kejadian dan Penanganan Kebakaran Pemukiman Se-Kabupaten Bengkalis Periode Januari s/d Desember', NULL, NULL, 0, NULL, '98403c1e-7c47-4e9d-847b-e342403502e8', NULL, '2023-01-18 04:39:36', '2023-01-18 04:39:36', NULL),
('98403da6-86ac-4f80-8a54-44152014db43', 'Persentase Warga Negara yang Memperoleh Layanan Penyelamatan dan Evakuasi Korban Kebakaran', 'Persen', '-', 2, NULL, '98403c1e-7c47-4e9d-847b-e342403502e8', '983e0c2b-1cb1-4b5c-813c-0a65cdd1f1dc', '2023-01-18 04:39:56', '2023-01-18 04:49:17', NULL),
('98403dba-d343-4009-8ac3-34326a6bbaf2', 'Cakupan Pelayanan Bencana Kebakaran Kabupaten/Kota', 'Persen', '-', 1, NULL, '98403c1e-7c47-4e9d-847b-e342403502e8', '983e0c2b-1cb1-4b5c-813c-0a65cdd1f1dc', '2023-01-18 04:40:09', '2023-01-18 08:36:15', NULL),
('98403de0-bd81-458c-8d5f-30123f9b2780', 'Tingkat Waktu Tanggap (respone time rate) Daerah Layanan Wilayah Manajemen Kebakaran (WMK)', 'Persen', '-', 1, NULL, '98403c1e-7c47-4e9d-847b-e342403502e8', '983e0c2b-1cb1-4b5c-813c-0a65cdd1f1dc', '2023-01-18 04:40:34', '2023-01-18 08:38:24', NULL),
('98403dfe-5283-4241-83a0-3817eb925ce0', 'Jumlah Sarana dan Prasarana Pelayanan Kebakaran', 'Jumlah', '-', 1, NULL, '98403c1e-7c47-4e9d-847b-e342403502e8', '983e0c2b-1cb1-4b5c-813c-0a65cdd1f1dc', '2023-01-18 04:40:54', '2023-01-18 08:42:40', NULL),
('98403e47-997e-44c1-a392-d4b6340b4c70', 'Kecamatan Bengkalis', 'Jumlah', '-', 0, '98403d87-c946-4024-9c50-41443970770f', '98403c1e-7c47-4e9d-847b-e342403502e8', '983e0c2b-1cb1-4b5c-813c-0a65cdd1f1dc', '2023-01-18 04:41:42', '2023-01-18 08:08:39', '2023-01-18 08:08:39'),
('9840426c-5445-435c-b6b9-700a52d0328f', 'Hutan dan Lahan', NULL, NULL, 0, '98403e47-997e-44c1-a392-d4b6340b4c70', '98403c1e-7c47-4e9d-847b-e342403502e8', NULL, '2023-01-18 04:53:17', '2023-01-18 08:08:23', '2023-01-18 08:08:23'),
('9840428b-5403-4ae6-aed6-0e35cc6b5c7e', 'Kejadian', 'Jumlah', '-', 2, '9840426c-5445-435c-b6b9-700a52d0328f', '98403c1e-7c47-4e9d-847b-e342403502e8', '983e0c2b-1cb1-4b5c-813c-0a65cdd1f1dc', '2023-01-18 04:53:37', '2023-01-18 08:07:57', '2023-01-18 08:07:57'),
('984042ac-62a7-4144-9398-e035c59e78f3', 'Luas (Ha)', 'Persen', '-', 2, '9840426c-5445-435c-b6b9-700a52d0328f', '98403c1e-7c47-4e9d-847b-e342403502e8', '983e0c2b-1cb1-4b5c-813c-0a65cdd1f1dc', '2023-01-18 04:53:59', '2023-01-18 08:08:01', '2023-01-18 08:08:01'),
('984088eb-71f9-435b-8d56-19c71639d62d', 'Kecamatan Bengkalis', NULL, NULL, 0, '98403d87-c946-4024-9c50-41443970770f', '98403c1e-7c47-4e9d-847b-e342403502e8', NULL, '2023-01-18 08:10:24', '2023-01-18 08:10:24', NULL),
('98408926-071d-4a0c-8e2c-b115c151a030', 'Hutan dan Lahan', NULL, NULL, 0, '984088eb-71f9-435b-8d56-19c71639d62d', '98403c1e-7c47-4e9d-847b-e342403502e8', NULL, '2023-01-18 08:11:03', '2023-01-18 08:11:03', NULL),
('98408a2a-b61a-4145-8ba3-9927d4ca02c3', 'Kejadian', 'Jumlah', '-', 1, '98408926-071d-4a0c-8e2c-b115c151a030', '98403c1e-7c47-4e9d-847b-e342403502e8', '983e0c2b-1cb1-4b5c-813c-0a65cdd1f1dc', '2023-01-18 08:13:53', '2023-01-18 08:20:47', NULL),
('98408a50-6a93-497e-80f3-ade33b694aa8', 'Luas (Ha)', 'Jumlah', '-', 1, '98408926-071d-4a0c-8e2c-b115c151a030', '98403c1e-7c47-4e9d-847b-e342403502e8', '983e0c2b-1cb1-4b5c-813c-0a65cdd1f1dc', '2023-01-18 08:14:18', '2023-01-18 08:23:48', NULL),
('9840a1db-5d2c-4795-9df7-cea0100fa3b1', 'Kecamatan Bantan', NULL, NULL, 0, '98403d87-c946-4024-9c50-41443970770f', '98403c1e-7c47-4e9d-847b-e342403502e8', NULL, '2023-01-18 09:20:08', '2023-01-18 09:20:24', NULL),
('9840a239-5b4b-483f-91c6-fb1cf70b6a09', 'Hutan dan Lahan', NULL, NULL, 0, '9840a1db-5d2c-4795-9df7-cea0100fa3b1', '98403c1e-7c47-4e9d-847b-e342403502e8', NULL, '2023-01-18 09:21:09', '2023-01-18 09:21:09', NULL),
('9840a256-0c04-4f24-9b7b-e8f0ee66bd59', 'Kejadian', 'Jumlah', '-', 1, '9840a239-5b4b-483f-91c6-fb1cf70b6a09', '98403c1e-7c47-4e9d-847b-e342403502e8', '983e0c8f-01ba-4858-923d-071c9547c6f2', '2023-01-18 09:21:28', '2023-01-18 09:22:16', NULL),
('9840a270-d48b-4d45-98a9-19a2f8eaf29c', 'Lahan (Ha)', 'Jumlah', '-', 1, '9840a239-5b4b-483f-91c6-fb1cf70b6a09', '98403c1e-7c47-4e9d-847b-e342403502e8', '983e0c8f-01ba-4858-923d-071c9547c6f2', '2023-01-18 09:21:46', '2023-01-18 09:23:59', NULL);

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
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `morph_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `morph_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`data`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`id`, `morph_type`, `morph_id`, `name`, `data`, `created_at`, `updated_at`, `deleted_at`) VALUES
('983e7e4f-44ab-4ea4-ac53-9e62514503a1', 'App\\Model\\aplikasi', '81fcfb62-e30e-4eec-8979-3bb22eeaf0c2', 'logo', '{\"disk\":\"local\",\"target\":\"aplikasi\\/logo\\/2023\\/01\\/17\\/ciGYyld7ghBInkIMJvcacTk5miiBhrnpVc2OIivy.png\"}', '2023-01-17 07:49:05', '2023-01-17 07:49:05', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `fotos`
--

CREATE TABLE `fotos` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` char(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kontaks`
--

CREATE TABLE `kontaks` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `isi` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alias` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `loginlogs`
--

CREATE TABLE `loginlogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nip` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `berhasil` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `loginlogs`
--

INSERT INTO `loginlogs` (`id`, `nip`, `ip`, `berhasil`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, NULL, '::1', 0, '2023-01-16 09:44:06', '2023-01-16 09:44:06', NULL),
(2, NULL, '::1', 0, '2023-01-17 02:24:46', '2023-01-17 02:24:46', NULL),
(3, NULL, '::1', 0, '2023-01-17 03:02:01', '2023-01-17 03:02:01', NULL),
(4, NULL, '::1', 0, '2023-01-17 03:03:50', '2023-01-17 03:03:50', NULL),
(5, NULL, '::1', 0, '2023-01-17 04:28:35', '2023-01-17 04:28:35', NULL),
(6, NULL, '::1', 0, '2023-01-17 04:35:41', '2023-01-17 04:35:41', NULL),
(7, NULL, '::1', 0, '2023-01-17 07:48:21', '2023-01-17 07:48:21', NULL),
(8, NULL, '::1', 0, '2023-01-17 07:58:58', '2023-01-17 07:58:58', NULL),
(9, NULL, '::1', 0, '2023-01-17 07:59:32', '2023-01-17 07:59:32', NULL),
(10, NULL, '::1', 0, '2023-01-17 08:19:03', '2023-01-17 08:19:03', NULL),
(11, NULL, '::1', 0, '2023-01-17 08:20:04', '2023-01-17 08:20:04', NULL),
(12, NULL, '::1', 0, '2023-01-17 09:16:42', '2023-01-17 09:16:42', NULL),
(13, NULL, '::1', 0, '2023-01-18 01:32:08', '2023-01-18 01:32:08', NULL),
(14, NULL, '::1', 0, '2023-01-18 04:24:43', '2023-01-18 04:24:43', NULL),
(15, NULL, '::1', 0, '2023-01-18 04:38:21', '2023-01-18 04:38:21', NULL),
(16, NULL, '::1', 0, '2023-01-18 08:31:22', '2023-01-18 08:31:22', NULL),
(17, NULL, '::1', 0, '2023-01-18 08:33:13', '2023-01-18 08:33:13', NULL),
(18, NULL, '::1', 0, '2023-01-18 09:12:03', '2023-01-18 09:12:03', NULL),
(19, NULL, '::1', 0, '2023-01-18 09:19:19', '2023-01-18 09:19:19', NULL),
(20, NULL, '::1', 0, '2023-01-19 07:55:06', '2023-01-19 07:55:06', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `tampil` tinyint(1) NOT NULL DEFAULT 1,
  `detail` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`detail`)),
  `perbaikan` tinyint(1) NOT NULL DEFAULT 0,
  `urut` int(11) NOT NULL DEFAULT 0,
  `parent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `kode`, `nama`, `link`, `icon`, `status`, `tampil`, `detail`, `perbaikan`, `urut`, `parent_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'pengaturanroot', 'Pengaturan Root', 'pengaturanroot', 'fab fa-android', 1, 1, '{\"model\":\"\",\"title\":null,\"keterangan\":null}', 0, 2, NULL, '2023-01-17 02:24:26', '2023-01-17 02:24:26', NULL),
(2, 'extra', 'Extra', 'extra', 'fas fa-expand-arrows-alt', 0, 1, '{\"model\":\"\",\"title\":null,\"keterangan\":null}', 0, 1, 1, '2023-01-17 02:24:26', '2023-01-17 02:24:26', NULL),
(3, 'menu', 'Menu', 'menu', 'fas fa-th-list', 1, 1, '{\"model\":\"Menu\",\"title\":null,\"keterangan\":null}', 0, 2, 1, '2023-01-17 02:24:26', '2023-01-17 02:24:26', NULL),
(4, 'aksesgrup', 'Akses Grup', 'aksesgrup', 'fas fa-universal-access', 1, 1, '{\"model\":\"\",\"title\":null,\"keterangan\":null}', 0, 3, 1, '2023-01-17 02:24:26', '2023-01-17 02:24:26', NULL),
(5, 'user', 'User', 'user', 'fas fa-users', 1, 1, '{\"model\":\"\",\"title\":null,\"keterangan\":null}', 0, 1, 10, '2023-01-17 02:24:26', '2023-01-17 02:24:26', NULL),
(6, 'aksesmenu', 'Akses Menu', 'aksesmenu', 'fab fa-accessible-icon', 1, 1, '{\"model\":\"\",\"title\":null,\"keterangan\":null}', 0, 1, 2, '2023-01-17 02:24:26', '2023-01-17 02:24:26', NULL),
(10, 'pengaturan', 'Pengaturan', 'pengaturan', 'fas fa-cogs', 1, 1, '{\"model\":\"\",\"title\":\"\",\"keterangan\":\"\"}', 0, 1, NULL, '2023-01-17 02:24:26', '2023-01-17 02:24:26', NULL),
(24, 'slider', 'Slider', 'slider', 'fas fa-sliders-h', 1, 1, '{\"model\":\"foto\",\"title\":null,\"keterangan\":null}', 0, 4, NULL, '2023-01-17 02:24:26', '2023-01-17 02:24:26', NULL),
(29, 'kontak', 'Kontak', 'kontak', 'far fa-address-book', 1, 1, '{\"model\":\"Kontak\",\"title\":\"\",\"keterangan\":\"\"}', 0, 5, NULL, '2023-01-17 02:24:26', '2023-01-17 02:24:26', NULL),
(34, 'aplikasi', 'Aplikasi', 'aplikasi', 'fas fa-laptop', 1, 1, '{\"model\":\"aplikasi\",\"title\":\"\",\"keterangan\":\"\"}', 0, 3, NULL, '2023-01-17 02:24:26', '2023-01-17 02:24:26', NULL),
(35, 'opd', 'Opd', 'opd', 'fas fa-address-card', 1, 1, '{\"model\":\"Opd\",\"title\":\"\",\"keterangan\":\"\"}', 0, 6, NULL, '2023-01-17 02:24:26', '2023-01-17 02:24:26', NULL),
(36, 'wilayah', 'Wilayah', 'wilayah', 'fas fa-location-arrow', 1, 1, '{\"model\":\"Wilayah\",\"title\":\"\",\"keterangan\":\"\"}', 0, 7, NULL, '2023-01-17 02:24:26', '2023-01-17 02:24:26', NULL),
(37, 'elemen', 'Elemen', 'elemen', 'fas fa-list', 1, 1, '{\"model\":\"Elemen\",\"title\":\"\",\"keterangan\":\"\"}', 0, 8, NULL, '2023-01-17 02:24:26', '2023-01-17 02:24:26', NULL),
(38, 'laporan', 'Laporan', 'laporan', 'far fa-file-alt', 1, 1, '{\"model\":\"\",\"title\":\"\",\"keterangan\":\"\"}', 0, 9, NULL, '2023-01-17 02:24:26', '2023-01-17 02:24:26', NULL),
(39, 'data', 'Data', 'data', 'fas fa-ad', 0, 1, '{\"model\":\"Data\",\"title\":\"\",\"keterangan\":\"\"}', 0, 0, NULL, '2023-01-17 02:24:26', '2023-01-17 02:24:26', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2021_03_11_100644_create_opds_table', 1),
(2, '2021_03_12_100644_create_aksesgrups_table', 1),
(3, '2021_03_12_100645_create_users_table', 1),
(4, '2021_03_12_100646_create_password_resets_table', 1),
(5, '2021_03_12_100647_create_failed_jobs_table', 1),
(6, '2021_03_12_100648_create_menus_table', 1),
(7, '2021_03_12_100650_create_aksesmenus_table', 1),
(8, '2021_03_15_185939_create_loginlogs_table', 1),
(9, '2022_06_24_151218_create_files_table', 1),
(10, '2022_11_09_232209_create_fotos_table', 1),
(11, '2022_11_11_064042_create_kontaks_table', 1),
(12, '2022_11_12_073430_create_aplikasis_table', 1),
(13, '2023_01_11_144313_create_wilayahs_table', 1),
(14, '2023_01_11_144743_create_elemens_table', 1),
(15, '2023_01_11_144935_create_data_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `opds`
--

CREATE TABLE `opds` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `opds`
--

INSERT INTO `opds` (`id`, `nama`, `created_at`, `updated_at`, `deleted_at`) VALUES
('983e0afa-a42b-49aa-ba83-bc62dccabd1c', 'Diskominfotik', '2023-01-17 02:26:35', '2023-01-17 02:26:35', NULL),
('983e1288-050b-4962-98b1-f06532a563bc', 'Dinas Pendidikan', '2023-01-17 02:47:42', '2023-01-18 04:35:20', '2023-01-18 04:35:20'),
('98403c1e-7c47-4e9d-847b-e342403502e8', 'Dinas Damkar', '2023-01-18 04:35:39', '2023-01-18 04:35:39', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nip` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` tinyint(4) NOT NULL DEFAULT 5,
  `opd_id` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aksesgrup_id` bigint(20) UNSIGNED DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `nip`, `nama`, `email`, `password`, `level`, `opd_id`, `aksesgrup_id`, `email_verified_at`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
('a64bd69d-ba3d-4ab6-8798-798c4eed4c8e', 'damkar', 'Dinas Pemadam Kebakaran', 'damkar@bengkaliskab.go.id', '$2y$10$6QrhZ8umNnBwsXM0FoJKOeJvr3c/6Hy0yOPABHIGNnpimiLvMS28W', 2, '98403c1e-7c47-4e9d-847b-e342403502e8', 3, '2023-01-18 04:38:03', 'id9caQBGmDfJ6oWdVn37Q5O0jhm70YIdJ3psE6ZjHIOkurmOqd6NYIHVVMwz', '2023-01-18 04:38:03', '2023-01-18 09:19:19', NULL),
('c01de292-cd7b-48b8-88d9-6e5f067545e2', 'root', 'root', 'bengkalis@bengkaliskab.go.id', '$2y$10$oIRbHHJrixt0UgvVyD76nuE2N8xEd3JNhRPpegj8UscjEGp/XNyx6', 1, '983e0afa-a42b-49aa-ba83-bc62dccabd1c', 1, '2023-01-17 02:24:26', 'fwvg5QS8JUb9WHu5FoGKmmDJzpk1w9U3B6N5Q6xSgMScecJClikTjEyUFCZt', NULL, '2023-01-18 04:24:43', NULL),
('f59c924a-4a2b-47b4-92dc-f33b5f7b2830', 'diskominfotik', 'Dinas Komunikasi Informatika dan Statistik', 'diskominfotik@bengkaliskab.go.id', '$2y$10$EmMU6D5VWI2HfBcFoE.ttedYbVE4qLn09RBbKxKYitTkQq7CNgNNq', 2, '983e0afa-a42b-49aa-ba83-bc62dccabd1c', 3, '2023-01-17 03:01:41', 'TRuzVrVPazYODKzYp5wTR6u6xnnQowbLCd0ynWCz', '2023-01-17 03:01:41', '2023-01-19 07:55:06', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wilayahs`
--

CREATE TABLE `wilayahs` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tingkatan` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wilayahs`
--

INSERT INTO `wilayahs` (`id`, `nama`, `tingkatan`, `created_at`, `updated_at`, `deleted_at`) VALUES
('983e0c2b-1cb1-4b5c-813c-0a65cdd1f1dc', 'Bengkalis', '0', '2023-01-17 02:29:55', '2023-01-17 02:30:28', NULL),
('983e0c8f-01ba-4858-923d-071c9547c6f2', 'Bantan', '0', '2023-01-17 02:31:00', '2023-01-17 02:31:00', NULL),
('983e0d0b-1f02-4d22-a070-d1081fb54db3', 'Bukit Batu', '0', '2023-01-17 02:32:22', '2023-01-17 04:29:57', NULL),
('983e3745-f2af-44fd-87e2-a152bf116f51', 'Mandau', '0', '2023-01-17 04:30:27', '2023-01-17 04:30:27', NULL),
('983e3766-0ea9-420f-bbc2-e667ac46b1d5', 'Rupat', '0', '2023-01-17 04:30:48', '2023-01-17 04:30:48', NULL),
('983e3779-1e56-4fb9-9b20-75dd5ebd922e', 'Rupat Utara', '0', '2023-01-17 04:31:00', '2023-01-17 04:31:00', NULL),
('983e3792-9968-4d6b-9bc1-add88228e733', 'Siak Kecil', '0', '2023-01-17 04:31:17', '2023-01-17 04:31:17', NULL),
('983e37b3-6e91-4b19-ad6f-0f6090792a28', 'Pinggir', '0', '2023-01-17 04:31:39', '2023-01-17 04:31:39', NULL),
('983e37cd-6701-4f6f-8356-1c03274ff6f6', 'Bandar Laksamana', '0', '2023-01-17 04:31:56', '2023-01-17 04:31:56', NULL),
('983e37e2-aaa3-4c8a-90b5-adc064cb5ce7', 'Talang Muandau', '0', '2023-01-17 04:32:09', '2023-01-17 04:32:09', NULL),
('983e37fd-f446-46de-8093-37a59ffd5418', 'Bathin Solapan', '0', '2023-01-17 04:32:27', '2023-01-17 04:32:27', NULL),
('983e3817-dff2-44db-aa82-33b861820d17', 'Bathin Solapan', '0', '2023-01-17 04:32:44', '2023-01-17 08:19:38', '2023-01-17 08:19:38');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aksesgrups`
--
ALTER TABLE `aksesgrups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `aksesgrups_alias_unique` (`alias`);

--
-- Indexes for table `aksesmenus`
--
ALTER TABLE `aksesmenus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aksesmenus_menu_id_foreign` (`menu_id`),
  ADD KEY `aksesmenus_aksesgrup_id_foreign` (`aksesgrup_id`);

--
-- Indexes for table `aplikasis`
--
ALTER TABLE `aplikasis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data`
--
ALTER TABLE `data`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_elemen_id_foreign` (`elemen_id`);

--
-- Indexes for table `elemens`
--
ALTER TABLE `elemens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `elemens_opd_id_foreign` (`opd_id`),
  ADD KEY `elemens_wilayah_id_foreign` (`wilayah_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `files_morph_type_morph_id_index` (`morph_type`,`morph_id`);

--
-- Indexes for table `fotos`
--
ALTER TABLE `fotos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kontaks`
--
ALTER TABLE `kontaks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loginlogs`
--
ALTER TABLE `loginlogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_kode_unique` (`kode`),
  ADD KEY `menus_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `opds`
--
ALTER TABLE `opds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_opd_id_foreign` (`opd_id`),
  ADD KEY `users_aksesgrup_id_foreign` (`aksesgrup_id`);

--
-- Indexes for table `wilayahs`
--
ALTER TABLE `wilayahs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aksesgrups`
--
ALTER TABLE `aksesgrups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `aksesmenus`
--
ALTER TABLE `aksesmenus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `loginlogs`
--
ALTER TABLE `loginlogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `aksesmenus`
--
ALTER TABLE `aksesmenus`
  ADD CONSTRAINT `aksesmenus_aksesgrup_id_foreign` FOREIGN KEY (`aksesgrup_id`) REFERENCES `aksesgrups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `aksesmenus_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `data`
--
ALTER TABLE `data`
  ADD CONSTRAINT `data_elemen_id_foreign` FOREIGN KEY (`elemen_id`) REFERENCES `elemens` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `elemens`
--
ALTER TABLE `elemens`
  ADD CONSTRAINT `elemens_opd_id_foreign` FOREIGN KEY (`opd_id`) REFERENCES `opds` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `elemens_wilayah_id_foreign` FOREIGN KEY (`wilayah_id`) REFERENCES `wilayahs` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `menus`
--
ALTER TABLE `menus`
  ADD CONSTRAINT `menus_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `menus` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_aksesgrup_id_foreign` FOREIGN KEY (`aksesgrup_id`) REFERENCES `aksesgrups` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `users_opd_id_foreign` FOREIGN KEY (`opd_id`) REFERENCES `opds` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
