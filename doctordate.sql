-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 07, 2023 at 02:54 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `doctordate`
--

-- --------------------------------------------------------

--
-- Table structure for table `accepted_appointments`
--

CREATE TABLE `accepted_appointments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pa_id` bigint(20) UNSIGNED NOT NULL,
  `dr_id` bigint(20) UNSIGNED NOT NULL,
  `day` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `begin_hour` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_hour` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `duration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `done` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `accepted_appointments`
--

INSERT INTO `accepted_appointments` (`id`, `pa_id`, `dr_id`, `day`, `begin_hour`, `end_hour`, `duration`, `status`, `type`, `done`, `created_at`, `updated_at`) VALUES
(64, 65, 1, '2023-02-22', '09:00 AM', '09:30:00', '30 m', 'yet', 'check', 'no', '2023-02-08 11:06:44', '2023-02-08 11:06:44'),
(65, 4, 8, '2023-02-23', '09:00 AM', '09:30:00', '30 m', 'yet', 'check', 'no', '2023-02-08 11:29:43', '2023-02-08 11:29:43');

-- --------------------------------------------------------

--
-- Table structure for table `appointments`
--

CREATE TABLE `appointments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pa_id` bigint(20) UNSIGNED NOT NULL,
  `dr_id` bigint(20) UNSIGNED NOT NULL,
  `day` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `begin_hour` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_hour` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `duration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `done` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `appointments`
--

INSERT INTO `appointments` (`id`, `pa_id`, `dr_id`, `day`, `begin_hour`, `end_hour`, `duration`, `status`, `type`, `done`, `created_at`, `updated_at`) VALUES
(12, 6, 1, '2023-02-24', '09:00 AM', '09:30:00', '30 m', 'nooo', 'check', 'no', '2023-02-21 16:42:09', '2023-03-01 12:11:49'),
(13, 4, 1, '2023-02-25', '09:00 AM', '09:30:00', '30 m', 'yet', 'check', 'no', '2023-02-21 16:48:56', '2023-02-21 16:48:56');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `name`, `url`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Digestive Department', 'department/Digestive Department_Digestive Department.jpg', NULL, '2023-01-31 11:38:49', '2023-02-07 09:42:46'),
(2, 'Children Department', 'department/Children Department_Childreen Department.jpg', NULL, '2023-01-31 11:39:19', '2023-01-31 11:39:19'),
(3, 'Dermatology Department', 'department/Dermatology Department_Dermatology Department.png', NULL, '2023-01-31 11:39:46', '2023-01-31 11:39:46'),
(4, 'Cosmetology Department', 'department/Cosmetology Department_Cosmetology Department.jpg', NULL, '2023-01-31 11:40:08', '2023-01-31 11:40:08'),
(5, 'Orthopedic Department', 'department/Orthopedic Department_Orthopedic Department.jpg', NULL, '2023-01-31 11:40:30', '2023-01-31 11:40:30'),
(6, 'Otorhinolaryngology Treatments', 'department/Otorhinolaryngology Treatments_Otorhinolaryngology Treatments.png', NULL, '2023-01-31 11:40:52', '2023-01-31 11:40:52'),
(7, 'Department of Ophthalmology', 'department/Department of Ophthalmology_Department of Ophthalmology.jpg', NULL, '2023-01-31 11:41:11', '2023-01-31 11:41:11'),
(8, 'Department of Radiology', 'department/Department of Radiology_Department of Radiology.webp', NULL, '2023-01-31 11:41:31', '2023-01-31 11:41:31'),
(9, 'Psychiatry', 'department/Psychiatry_Psychiatry.jpg', NULL, '2023-01-31 11:41:51', '2023-01-31 11:41:51'),
(10, 'Neurosurgery Department', 'department/Neurosurgery Department_Neurosurgery Department.jpg', NULL, '2023-01-31 11:42:10', '2023-01-31 11:42:10'),
(11, 'MRI', 'department/MRI_MRI.jpg', NULL, '2023-01-31 11:42:25', '2023-01-31 11:42:25'),
(12, 'Medical Analysis Laboratory', 'department/Medical Analysis Laboratory_Medical Analysis Laboratory.jpg', NULL, '2023-01-31 11:42:42', '2023-01-31 11:42:42'),
(13, 'hhh55hhhhvfttttjj', 'jjjjjhhh', '2023-02-16 08:36:34', '2023-02-16 08:09:21', '2023-02-16 08:36:34'),
(32, 'hhh55h88888888888888', 'jjjjjhhhgggggggggg', '2023-02-16 09:55:04', '2023-02-16 09:53:46', '2023-02-16 09:55:04');

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `department` bigint(20) UNSIGNED NOT NULL,
  `phone2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `working_days_from` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `working_days_to` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `working_hours_from` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `working_hours_to` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`id`, `name`, `user_id`, `photo`, `department`, `phone2`, `details`, `working_days_from`, `working_days_to`, `working_hours_from`, `working_hours_to`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Ahmad Assaf', 4, 'doctors/Ahmad Assaf_Ahmad Assaf.webp', 1, '6917472', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s', 'Saturday', 'Thursday', '9 AM', '4 PM', NULL, '2023-01-31 12:13:30', '2023-03-01 12:57:29'),
(2, 'Alaa Qaseem', 5, 'doctors/Alaa Qaseem_Alaa Qaseem.jpg', 2, '6910643', 'type specimen book. It has mmany survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s', 'Saturday', 'Wednesday', '11 AM', '5 PM', NULL, '2023-01-31 12:17:06', '2023-01-31 12:17:06'),
(3, 'Huda Kataan', 6, 'doctors/Huda Kataan_Huda Kataan.jpg', 3, '6914444', 'ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'Sunday', 'Friday', '4 PM', '6 PM', NULL, '2023-01-31 12:18:54', '2023-01-31 12:18:54'),
(4, 'Kaleed Wassof', 7, 'doctors/Kaleed Wassof_Kaleed wassof.jpg', 4, '6910022', 'set sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry.', 'Friday', 'Thursday', '9 AM', '1 PM', NULL, '2023-01-31 12:20:41', '2023-01-31 12:20:41'),
(5, 'Kinan Melhem', 8, 'doctors/Kinan Melhem_Kinan Melhem.jpg', 5, '6914141', 'set sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry.', 'Saturday', 'Thursday', '9 AM', '5 PM', NULL, '2023-01-31 12:22:13', '2023-01-31 12:22:13'),
(6, 'Maher Alia', 9, 'doctors/Maher Alia_Maher Alia.webp', 1, '6951254', 'when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries', 'Saturday', 'Wednesday', '10 AM', '4 PM', NULL, '2023-01-31 12:24:09', '2023-02-01 08:00:24'),
(7, 'Nisreen Sayad', 10, 'doctors/Nisreen Sayad_Nisreen Sayad.jpg', 2, '6958855', 'when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries', 'Monday', 'Saturday', '9 AM', '5 PM', NULL, '2023-01-31 12:26:39', '2023-01-31 12:26:39'),
(8, 'Noor Hawasli', 11, 'doctors/Noor Hawasli_Noor Hawasli.jpg', 1, '0669511254', 'when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries', 'Saturday', 'Friday', '9 AM', '6 PM', NULL, '2023-01-31 12:26:46', '2023-01-31 12:26:46'),
(9, 'Rouaa Hattab', 12, 'doctors/Rouaa Hattab_Rouaa Hattab.webp', 4, '6959596', 't was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages', 'Saturday', 'Friday', '9 AM', '6 PM', NULL, '2023-01-31 12:29:15', '2023-01-31 12:29:15'),
(10, 'Sameer Zahnan', 13, 'doctors/Sameer Zahnan_Sameer Zahnan.jpg', 3, '692225588', 't was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages', 'Saturday', 'Thursday', '11 AM', '6 PM', NULL, '2023-01-31 12:29:56', '2023-01-31 12:29:56'),
(11, 'Sarah Merie', 14, 'doctors/Sarah Merie_Sarah Merie.jpg', 1, '0966558877', 't was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages', 'Saturday', 'Thursday', '9 AM', '1 PM', NULL, '2023-01-31 12:30:35', '2023-01-31 12:30:35'),
(12, 'Wael Sayad', 15, 'doctors/Wael Sayad_Wael Sayad.jpg', 2, '6955588', 'industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'Saturday', 'Thursday', '9 AM', '2 PM', NULL, '2023-01-31 17:04:12', '2023-01-31 17:04:12'),
(13, 'Yara Halaq', 16, 'doctors/Yara Halaq_Yara Halaq.jpg', 1, '691002233', 'industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'Saturday', 'Thursday', '9 AM', '1 PM', NULL, '2023-01-31 17:04:42', '2023-02-01 07:57:43'),
(14, 'Toqa Alawie', 17, 'doctors/Toqa Alawie_Toqa Alawie.jpg', 7, '6932255', 'industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'Saturday', 'Thursday', '9 AM', '5 PM', NULL, '2023-01-31 17:06:16', '2023-01-31 17:06:16'),
(15, 'Tareq Sayad', 18, 'doctors/Tareq Sayad_Tareq Sayad4.jpg', 1, '69112255', 'industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'Saturday', 'Wednesday', '11 AM', '6 PM', NULL, '2023-01-31 17:07:19', '2023-01-31 17:07:19'),
(16, 'Tala Alia', 19, 'doctors/Tala Alia_Tala Alia.jpg', 5, '55889944', 'industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'Saturday', 'Thursday', '9 AM', '5 PM', NULL, '2023-01-31 17:08:46', '2023-01-31 17:08:46'),
(17, 'Shaza Rabaa', 20, 'doctors/Shaza Rabaa_Shaza Rabaa.jpg', 4, '25555544', 'industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'Sunday', 'Wednesday', '9 AM', '4 PM', '2023-02-22 17:11:38', '2023-01-31 17:09:29', '2023-02-22 17:11:38');

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_01_13_134532_create_departments_table', 1),
(6, '2023_01_13_144532_create_doctors_table', 1),
(7, '2023_01_13_145742_create_appointments_table', 1),
(8, '2023_01_25_121534_create_accepted_appointments_table', 1),
(9, '2023_02_04_160512_create_notifications_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('02b15383-2a3c-404f-8dfb-9532b06a4978', 'App\\Notifications\\CreateAppointment', 'App\\Models\\User', 4, '{\"appointment_id\":64}', '2023-02-08 11:07:45', '2023-02-08 11:06:45', '2023-02-08 11:07:45'),
('4d4c3e00-6820-4a7c-be5d-20713b76e21f', 'App\\Notifications\\CreateAppointment', 'App\\Models\\User', 4, '{\"appointment_id\":66}', '2023-02-21 16:41:35', '2023-02-21 16:41:03', '2023-02-21 16:41:36'),
('5c050886-bcbf-465d-9c70-453912fd8550', 'App\\Notifications\\CreateAppointment', 'App\\Models\\User', 9, '{\"appointment_id\":52}', '2023-02-04 18:53:19', '2023-02-04 18:38:18', '2023-02-04 18:53:19'),
('5f4d8417-1092-4ed8-abef-36b932ae7217', 'App\\Notifications\\CreateAppointment', 'App\\Models\\User', 4, '{\"appointment_id\":62}', '2023-02-08 09:39:35', '2023-02-08 09:39:28', '2023-02-08 09:39:35'),
('6bb2e877-2120-40a5-8ac2-148af738afc7', 'App\\Notifications\\CreateAppointment', 'App\\Models\\User', 4, '{\"appointment_id\":56}', '2023-02-07 18:10:44', '2023-02-07 18:10:01', '2023-02-07 18:10:45'),
('6d0f1ace-1c7b-4ab2-b75f-8f4fcb5f8106', 'App\\Notifications\\CreateAppointment', 'App\\Models\\User', 11, '{\"appointment_id\":65}', '2023-02-08 11:30:54', '2023-02-08 11:29:43', '2023-02-08 11:30:54'),
('7080ed21-e97d-4d83-a372-b7857715911a', 'App\\Notifications\\CreateAppointment', 'App\\Models\\User', 4, '{\"appointment_id\":63}', '2023-02-08 09:44:16', '2023-02-08 09:44:13', '2023-02-08 09:44:16'),
('71973b1a-45e7-4b71-9e6b-3919e9f30d37', 'App\\Notifications\\CreateAppointment', 'App\\Models\\User', 4, '{\"appointment_id\":57}', '2023-02-07 18:14:51', '2023-02-07 18:14:45', '2023-02-07 18:14:51'),
('7466ac60-a860-4e68-9573-d5cc90988246', 'App\\Notifications\\CreateAppointment', 'App\\Models\\User', 9, '{\"appointment_id\":53}', '2023-02-04 18:53:19', '2023-02-04 18:39:27', '2023-02-04 18:53:19'),
('a90221bb-668a-4aac-95a2-9222a9b3a461', 'App\\Notifications\\CreateAppointment', 'App\\Models\\User', 9, '{\"appointment_id\":54}', '2023-02-04 18:53:19', '2023-02-04 18:50:09', '2023-02-04 18:53:19'),
('a92a13ca-dc72-4c8e-9606-816a5532d564', 'App\\Notifications\\CreateAppointment', 'App\\Models\\User', 4, '{\"appointment_id\":60}', '2023-02-08 09:31:27', '2023-02-08 09:31:21', '2023-02-08 09:31:27'),
('b39a1f50-72f0-409f-939c-a914777b85c3', 'App\\Notifications\\CreateAppointment', 'App\\Models\\User', 9, '{\"appointment_id\":51}', '2023-02-04 18:53:20', '2023-02-04 18:27:58', '2023-02-04 18:53:20'),
('c124fe02-d6c8-4a76-aace-e9d5118a1ad4', 'App\\Notifications\\CreateAppointment', 'App\\Models\\User', 4, '{\"appointment_id\":59}', '2023-02-08 09:29:43', '2023-02-08 09:29:26', '2023-02-08 09:29:43'),
('d63b1e4a-ad7d-4ad0-be6d-14a6a8a1a780', 'App\\Notifications\\CreateAppointment', 'App\\Models\\User', 6, '{\"appointment_id\":\"3\"}', '2023-02-04 18:53:51', '2023-02-04 18:15:12', '2023-02-04 18:53:51'),
('d770d620-42b3-4bd2-8e89-0f65c041bf34', 'App\\Notifications\\CreateAppointment', 'App\\Models\\User', 4, '{\"appointment_id\":58}', '2023-02-07 18:17:11', '2023-02-07 18:17:04', '2023-02-07 18:17:11'),
('e820fe57-73b4-4133-9322-2c1b5221aa4e', 'App\\Notifications\\CreateAppointment', 'App\\Models\\User', 6, '{\"appointment_id\":48}', '2023-02-04 18:53:50', '2023-02-04 18:17:58', '2023-02-04 18:53:50'),
('e86ac215-99ea-4f9d-9a5f-92ead22c8df4', 'App\\Notifications\\CreateAppointment', 'App\\Models\\User', 4, '{\"appointment_id\":61}', '2023-02-08 09:34:38', '2023-02-08 09:34:33', '2023-02-08 09:34:38'),
('f1296755-dcdb-43ac-84dd-963ba21223a9', 'App\\Notifications\\CreateAppointment', 'App\\Models\\User', 4, '{\"appointment_id\":67}', '2023-02-21 16:48:51', '2023-02-21 16:45:38', '2023-02-21 16:48:51'),
('f3c46275-de8c-4c24-a761-ca020e648de0', 'App\\Notifications\\CreateAppointment', 'App\\Models\\User', 9, '{\"appointment_id\":55}', '2023-02-04 18:53:19', '2023-02-04 18:50:26', '2023-02-04 18:53:19');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('s.sseba96@gmail.com', '$2y$10$5DwEuMOp.AjY56zbd0Qc.OAbGP5uD1sL.DSUJkamsrXudzwlTNeQ6', '2023-02-07 12:23:01');

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
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `phone`, `city`, `address`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'seba', 'seba@gmail.com', NULL, '$2y$10$NY7aIwb6JK5OrTfhafpNC.gjhywy8pqcAeSVriA5j/fx197jkng6.', '0932531446', 'Ref-Dimashq', 'Kisswa', 'admin', 'yynLym55oVsmlK0TFqAcpTnt1jEoh2q1XlYW51aSRmmnigEzphbdnwxeFrXV', '2023-01-31 11:37:59', '2023-01-31 11:37:59'),
(4, 'Ahmad Assaf', 'ahmadAssaf@gmail.com', NULL, '$2y$10$bV/mi1ZnVldiQhVguB2CMu6X7Iht/XSJyvytmGuBZ49ypwsAlTHVS', '0932123456789', 'Damascus', 'Middan', 'manager', NULL, '2023-01-31 12:13:30', '2023-03-01 12:57:29'),
(5, 'Alaa Qaseem', 'Alaa_Qaseem@gmail.com', NULL, '$2y$10$7H/m1kTJQz8UHqcmSxRsHudeG3kjh.hLcH5V.0ko5k5FvzUWkzw2K', '09123456789', 'Damascus', 'Mohajreen', 'manager', NULL, '2023-01-31 12:17:06', '2023-01-31 12:17:06'),
(6, 'Huda Kataan', 'Huda_Kataan@gmail.com', NULL, '$2y$10$wmVWsnjtVTvziHEqLCt3oe986LxqekXxHBD9KBNVc8pkFnKKhR59q', '09123456789', 'Ref-Dimashq', 'Sahnaia', 'manager', NULL, '2023-01-31 12:18:54', '2023-01-31 12:18:54'),
(7, 'Kaleed Wassof', 'Kaleed_Wassof@hotmail.com', NULL, '$2y$10$9tNQ.QdAkQKpzVE0jIpCxet.5aox3Jx69kryXi2rYSZvOINZy8PJq', '0123456789', 'Ref-Dimashq', 'Kisswa', 'manager', NULL, '2023-01-31 12:20:41', '2023-01-31 12:20:41'),
(8, 'Kinan Melhem', 'Kinan_Melhem@gmail.com', NULL, '$2y$10$3r1WERwuwZSqVUtrqigUmuf4hjmmOZEeHGCzHXYtz6CIhwE1Xsebu', '0932323232', 'Ref-Dimashq', 'Kisswa', 'manager', NULL, '2023-01-31 12:22:13', '2023-01-31 12:22:13'),
(9, 'Maher Alia', 'Maher_Alia@gmail.com', NULL, '$2y$10$YjLlcBfbycqors7H9HsOI.hnIuEjT5ISSaL2Wrcdo6zULzV9aTdDa', '012342515', 'Damascus', 'salhia', 'manager', NULL, '2023-01-31 12:24:09', '2023-02-01 08:00:24'),
(10, 'Nisreen Sayad', 'Nisreen_Sayad@gmail.com', NULL, '$2y$10$9MGwu1ZdAoL6tJrlXT7gv.u5nnLHfV12pLnFy77ow19qmdF94wdbe', '093253253253', 'Ref-Dimashq', 'Kisswa', 'manager', NULL, '2023-01-31 12:26:39', '2023-01-31 12:26:39'),
(11, 'Noor Hawasli', 'Noor_Hawasli@hotmail.com', NULL, '$2y$10$h6VyWCYccmRszVdm3H9vmOLVrK39AnkILtxZBK9PYiozNa3cu1cw.', '09363256541', 'Damascus', 'Baramka', 'manager', NULL, '2023-01-31 12:26:45', '2023-01-31 12:26:45'),
(12, 'Rouaa Hattab', 'Rouaa_Hattab@gmail.com', NULL, '$2y$10$AvhkalCtce8/dh5NpBE9zu1HKpQ.jMQfhjSmROiy9qWZD8W2ErZr.', '021325458', 'Ref-Dimashq', 'Sahnaia', 'manager', NULL, '2023-01-31 12:29:15', '2023-01-31 12:29:15'),
(13, 'Sameer Zahnan', 'Sameer_Zahnan@gmail.com', NULL, '$2y$10$RGhH5ww8mSXrkN51YvtWpuhSg67iWB7eicX6FQsH853cZ1L3HuI7m', '6915588', 'Damascus', 'salhia', 'manager', NULL, '2023-01-31 12:29:56', '2023-01-31 12:29:56'),
(14, 'Sarah Merie', 'Sarah_Merie@gmail.com', NULL, '$2y$10$tmgD5RViQdWPXcNMlDeUPubuWy1SXsFunZ7NfaUDaicalPrmKH1QK', '0933552255', 'Damascus', 'Baramka', 'manager', NULL, '2023-01-31 12:30:35', '2023-01-31 12:30:35'),
(15, 'Wael Sayad', 'Wael_Sayad@gmail.com', NULL, '$2y$10$7WhhypoC6GD6ZyBUTON20e6l9FeD1zB97aU7nfDxYW4.WiTflTMkO', '0232322332', 'Ref-Dimashq', 'Kisswa', 'manager', NULL, '2023-01-31 17:04:11', '2023-01-31 17:04:11'),
(16, 'Yara Halaq', 'Yara_Halaq@gmail.com', NULL, '$2y$10$DGcy0.c8L9Ip7lGb9TV9futVZV3iO0o10zP0poCwjuMcjjWFbRtxi', '09988774455', 'Ref-Dimashq', 'Kisswa', 'manager', NULL, '2023-01-31 17:04:42', '2023-02-01 07:57:43'),
(17, 'Toqa Alawie', 'Toqa_Alawie@gmail.com', NULL, '$2y$10$odUvPvRdL3IPVGVBAsXE5unmT1NPKHuKDrndksrmHM9Wi3vhcfgT2', '02255887744', 'Damascus', 'Hamra', 'manager', NULL, '2023-01-31 17:06:16', '2023-01-31 17:06:16'),
(18, 'Tareq Sayad', 'Tareq_Sayad@gmail.com', NULL, '$2y$10$G/B5cGhZS8VbEolq2c38WOlPyIyo0WlH8hU0NRpINmGPt1Y9qBcIW', '026778899', 'Damascus', 'Shaalan', 'manager', NULL, '2023-01-31 17:07:19', '2023-01-31 17:07:19'),
(19, 'Tala Alia', 'Tala_Alia@gmail.com', NULL, '$2y$10$hWMp.av6ZR5RBHhbITAOZesGLTQgDqkksbDDN7BbdW6x8hUr4EBKu', '0332145877', 'ref', 'Kisswa', 'manager', NULL, '2023-01-31 17:08:46', '2023-01-31 17:08:46'),
(20, 'Shaza Rabaa', 'Shaza_Rabaa@gmail.com', NULL, '$2y$10$2kps897jszvwjCXfIuOSP.AIi5bWSZeBjKecXmxglIyjS6yDPPYvC', '887744552211', 'Damascus', 'Shaalan', 'manager', NULL, '2023-01-31 17:09:29', '2023-01-31 17:09:29'),
(37, 'seba', 's.s222seba96@gmail.com', NULL, '$2y$10$O8K6XPBV7IZ9A/LV7mSVSujeqwCMqAauUn8apfsghRQGaWS1OGYEi', '0932531446', 'Ref-Dimashq', 'Kisswa', 'user', NULL, '2023-02-08 09:55:55', '2023-02-08 09:55:55'),
(39, 'Admin', 'admin@gmail.com', NULL, '$2y$10$ifK4lBij14aR6S7KUNEic.tAkWhddTXFz2.zZFS2uT0LAAkln7kcS', '', '', '', 'admin', NULL, NULL, NULL),
(60, 'Melyna Marquardt', 'stefanie.carroll@example.org', '2023-02-08 11:03:47', '$2y$10$i/lYJaO77IdC4HN6FuMGieXuEErdWT8rsTlkycTAvi0dgtS2g5iGO', '+19522739534', 'East', '59795 Perry Shore\nNienowtown, OR 29748', 'user', 'NNOO69BAGv', '2023-02-08 11:03:49', '2023-02-08 11:03:49'),
(61, 'Prof. Wilford Eichmann', 'wratke@example.net', '2023-02-08 11:03:47', '$2y$10$YSWNI58OQgcJjkskMbjfJevoagUgoupuBHsVp8UQyMwLYYN2Lps/S', '+13018514487', 'Lake', '218 Fadel Trail\nAddisonshire, MA 43078', 'user', '7hFwclPFBI', '2023-02-08 11:03:49', '2023-02-08 11:03:49'),
(62, 'Stuart Pfannerstill', 'bradtke.kamron@example.net', '2023-02-08 11:03:47', '$2y$10$x.zZmxi0gWdWhMJ/4Vv6neZVpwQFZbV9XeqdRqI4gyW4ByeqWsD5G', '+13516701944', 'North', '80378 Orland Wells Suite 969\nKayleighmouth, NV 93163-3332', 'user', 'hsK0S9KxbJ', '2023-02-08 11:03:49', '2023-02-08 11:03:49'),
(63, 'Miss Britney Kulas', 'fdicki@example.org', '2023-02-08 11:03:48', '$2y$10$C33UH5Foq1/TMIRUcB3Uiu5TMWzcbCbhoINdne/1mPvqpeD.JcT/2', '+14584061017', 'West', '41663 Guido Glens Apt. 489\nBradtkebury, WA 89290', 'user', 'S4Zi6AC2XB', '2023-02-08 11:03:49', '2023-02-08 11:03:49'),
(64, 'Flavie Lemke', 'justice14@example.net', '2023-02-08 11:03:48', '$2y$10$jEWaYBevmzx1sd74yffJ9OpDXXohuQQrrtwqCzY2on773zWB0VGNW', '+17265743957', 'East', '10645 Greg Trafficway Suite 907\nWest Geovanytown, CT 17453-3811', 'user', 'ble7egFLNq', '2023-02-08 11:03:49', '2023-02-08 11:03:49'),
(65, 'Era Kutch', 'brielle.simonis@example.com', '2023-02-08 11:03:48', '$2y$10$IZvuqrQ1tPiQZtfscA5cIOw6uykTtyGEiEXlj8OZ0GWiO8IB7R9Ni', '+19348212716', 'East', '64951 Fadel Street Apt. 267\nWizabury, AL 77237', 'user', 'fZNeDnccyCs4zTAmrheiLr3DkQBgBw0kzyLxSkXh08C2u9ShH4qMe9FGGiRg', '2023-02-08 11:03:49', '2023-02-08 11:03:49'),
(66, 'Mrs. Brenna Funk', 'milford47@example.com', '2023-02-08 11:03:48', '$2y$10$kUH.I0Ml0pIJyu5kvu5Su.yZEgwk/VxNFGuPehkbY6XqK4r.Hmn4O', '+14587008255', 'North', '970 Audra Gardens Suite 254\nNew Charles, FL 50200-5553', 'user', 'qnV8iW6yTH', '2023-02-08 11:03:49', '2023-02-08 11:03:49'),
(67, 'Katharina Waelchi', 'wiza.deja@example.net', '2023-02-08 11:03:48', '$2y$10$4tBRKcXQ83IHI69tgXPUlehDzJL/g6MqlO6EKMHPYcoAIpHEBi1gq', '+13314831906', 'New', '45559 Murray Village Suite 788\nSimonisfurt, TX 96601-6066', 'user', '4yIQg6cOpe', '2023-02-08 11:03:49', '2023-02-08 11:03:49'),
(68, 'Juana Kihn Jr.', 'stanton.desiree@example.net', '2023-02-08 11:03:48', '$2y$10$EjjX195OGio6kYlbbNMC5.yDnA41QLZ51LiNXsrjXnDj4bht89yVy', '+14699567943', 'Port', '36027 Litzy Court Apt. 035\nZacharystad, NH 11085-2555', 'user', 'KYihT0bxFl', '2023-02-08 11:03:49', '2023-02-08 11:03:49'),
(69, 'Kathlyn Borer', 'troy71@example.com', '2023-02-08 11:03:49', '$2y$10$2w7L5V.L6zWdAUEHiTzZFOZ36O.KuUXZTnmgHqXm8v1G92r9Zd4pe', '+16783028038', 'West', '715 Reginald Junction\nAmyview, VT 56363-8858', 'user', 'Zj9hLNGbsq', '2023-02-08 11:03:50', '2023-02-08 11:03:50'),
(71, 'heba', 'heba-na@gmail.com', NULL, '$2y$10$t3ZZDkn2MYmP8.Uq5bNRP.5xquPpLpr66/Krucpvl2u5PiDYhWRC6', '0932531446', 'Ref-Dimashq', 'Kisswa', 'user', NULL, '2023-02-21 16:15:02', '2023-02-21 16:15:02'),
(72, 'heba', 'heba-nan@gmail.com', NULL, '$2y$10$Iuo9FKNA/J8bEhaGFPNUUOfAXxOpx5UHGsSwYhUukiXXrqTKwZXaG', '0933551318', 'Ref-Dimashq', 'Kisswa', 'user', NULL, '2023-02-21 16:16:48', '2023-02-21 16:16:48'),
(73, 'hebaa', 'hebba@gmail.com', NULL, '$2y$10$3c/E78EsYBa1keslp/np0OnaFcTfg2jqNcAmTIYVeHSIvSPXpduii', '0932531446', 'Ref-Dimashq', 'kisswa', 'user', NULL, '2023-02-21 16:22:59', '2023-02-21 16:22:59'),
(74, 'seeeba', 's.sse22ba96@gmail.com', NULL, '$2y$10$daq1V5WYL7otMU7xfEvH1uMsDZiAnOODhWhkNC9W647JB7sQ74HOm', '093311225544', 'Ref-Dimashq', 'Kisswa', 'user', NULL, '2023-02-21 16:40:12', '2023-02-21 16:40:12'),
(75, 'sssssssssssssss', 's.sslleba96@gmail.com', NULL, '$2y$10$0T7nidgl2CskIo8RUnbodOYjtMFlfz7VYlv47k0vm51qMV/mRxBxS', '093355445544', 'Ref-Dimashq', 'kisswa', 'user', NULL, '2023-02-21 16:52:24', '2023-02-21 16:52:24'),
(80, 'ssssss', 'sebaa-gh@gmail.com', NULL, '$2y$10$EEsYnl0/zP3q5iK973Su4eE4j6sz1m1PRsMxd.G4ebWdltB76vZQm', '6910643', 'damas', 'kisswa', 'admin', NULL, '2023-02-22 10:57:29', '2023-02-22 10:57:29'),
(81, 'ssssss', 'sebahh@gmail.com', NULL, '$2y$10$duN9kAyCaYd9NysCub/94.Rtfz9qWOUaK2TLKzkgbv6kFmUwl4IaO', '6910643', 'damas', 'kisswa', 'user', NULL, '2023-02-22 10:59:11', '2023-02-22 10:59:11'),
(82, 'seba', 's.sseba96@gmail.com', NULL, '$2y$10$sbbuJbm9CrY3X7TcQitkhO17gTzE7vX3UXCw68YJ2Djb75vAsM2gu', '093355113118', 'Ref-Dimashq', 'salhia', 'user', NULL, '2023-02-22 11:46:23', '2023-02-22 11:46:23'),
(83, 'ssssss', 'sejjbahh@gmail.com', NULL, '$2y$10$Kn5Tug/2dpDHmjaT5Nn04u6iXnrpqf.oB/EzmyBYzrxo5L3cW2RNK', '6910643', 'damas', 'kisswa', 'user', NULL, '2023-02-22 11:47:28', '2023-02-22 11:47:28');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accepted_appointments`
--
ALTER TABLE `accepted_appointments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `accepted_appointments_pa_id_foreign` (`pa_id`),
  ADD KEY `accepted_appointments_dr_id_foreign` (`dr_id`);

--
-- Indexes for table `appointments`
--
ALTER TABLE `appointments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `appointments_pa_id_foreign` (`pa_id`),
  ADD KEY `appointments_dr_id_foreign` (`dr_id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `doctors_user_id_foreign` (`user_id`),
  ADD KEY `doctors_department_foreign` (`department`);

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
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accepted_appointments`
--
ALTER TABLE `accepted_appointments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `appointments`
--
ALTER TABLE `appointments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `accepted_appointments`
--
ALTER TABLE `accepted_appointments`
  ADD CONSTRAINT `accepted_appointments_dr_id_foreign` FOREIGN KEY (`dr_id`) REFERENCES `doctors` (`id`),
  ADD CONSTRAINT `accepted_appointments_pa_id_foreign` FOREIGN KEY (`pa_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `appointments`
--
ALTER TABLE `appointments`
  ADD CONSTRAINT `appointments_dr_id_foreign` FOREIGN KEY (`dr_id`) REFERENCES `doctors` (`id`),
  ADD CONSTRAINT `appointments_pa_id_foreign` FOREIGN KEY (`pa_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `doctors`
--
ALTER TABLE `doctors`
  ADD CONSTRAINT `doctors_department_foreign` FOREIGN KEY (`department`) REFERENCES `departments` (`id`),
  ADD CONSTRAINT `doctors_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
