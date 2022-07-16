-- Created at 16.7.2022 14:18 using David Grudl MySQL Dump Utility
-- Host: api.rbn.qa
-- MySQL Server: 10.3.35-MariaDB-cll-lve
-- Database: dragncli_assessment

SET NAMES utf8;
SET SQL_MODE='NO_AUTO_VALUE_ON_ZERO';
SET FOREIGN_KEY_CHECKS=0;
SET UNIQUE_CHECKS=0;
SET AUTOCOMMIT=0;
-- --------------------------------------------------------

DROP TABLE IF EXISTS `cards`;

CREATE TABLE `cards` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `column_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cards_column_id_foreign` (`column_id`),
  CONSTRAINT `cards_column_id_foreign` FOREIGN KEY (`column_id`) REFERENCES `columns` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

ALTER TABLE `cards` DISABLE KEYS;

INSERT INTO `cards` (`id`, `column_id`, `name`, `description`, `order`, `created_at`, `updated_at`) VALUES
(1,	1,	'gfdg',	'fdgfdggg',	NULL,	'2022-07-16 13:35:20',	'2022-07-16 13:35:20'),
(2,	1,	'sfsdf',	'sdfdsf',	1,	'2022-07-16 13:35:20',	'2022-07-16 13:35:20'),
(3,	1,	'121212',	'fsgsg',	1,	'2022-07-16 13:35:20',	'2022-07-16 13:35:20'),
(8,	6,	'ssdsd',	'hfhghfgh',	NULL,	'2022-07-16 13:35:20',	'2022-07-16 13:35:20'),
(9,	6,	'dfdf',	'dfdf',	NULL,	'2022-07-16 13:35:20',	'2022-07-16 13:35:20'),
(10,	11,	'sadas',	'sad',	NULL,	'2022-07-16 13:35:20',	'2022-07-16 13:35:20'),
(11,	17,	'fgxjfj11',	'sfdsddd2222',	NULL,	'2022-07-16 13:35:20',	'2022-07-16 13:35:20'),
(12,	17,	'sddsd',	'dasd',	NULL,	'2022-07-16 13:35:20',	'2022-07-16 13:35:20'),
(13,	17,	'df',	'df',	NULL,	'2022-07-16 13:35:20',	'2022-07-16 13:35:20'),
(14,	18,	'fdfs',	'dsf',	NULL,	'2022-07-16 13:35:20',	'2022-07-16 13:35:20'),
(15,	18,	'fdg',	'dfgfd',	1,	'2022-07-16 13:35:21',	'2022-07-16 13:35:21'),
(16,	21,	'xvcxfgxf',	'fgfgfgfg',	NULL,	'2022-07-16 13:35:21',	'2022-07-16 13:35:21'),
(17,	22,	'ffgfg',	'fgfg',	NULL,	'2022-07-16 13:35:21',	'2022-07-16 13:35:21');
ALTER TABLE `cards` ENABLE KEYS;



-- --------------------------------------------------------

DROP TABLE IF EXISTS `columns`;

CREATE TABLE `columns` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

ALTER TABLE `columns` DISABLE KEYS;

INSERT INTO `columns` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1,	'Test',	'2022-07-16 06:08:58',	'2022-07-16 06:08:58'),
(6,	'Test 5',	'2022-07-16 06:41:49',	'2022-07-16 06:41:49'),
(11,	'sfdsf',	'2022-07-16 07:28:20',	'2022-07-16 11:51:01'),
(17,	'232cscs',	'2022-07-16 08:03:17',	'2022-07-16 11:55:35'),
(18,	'gsdgf',	'2022-07-16 09:15:10',	'2022-07-16 09:15:10'),
(20,	'dfcds',	'2022-07-16 13:12:29',	'2022-07-16 13:12:29'),
(21,	'223ee',	'2022-07-16 13:28:50',	'2022-07-16 13:28:50'),
(22,	'223',	'2022-07-16 13:31:46',	'2022-07-16 13:31:46'),
(23,	'Shajeer',	'2022-07-16 14:17:10',	'2022-07-16 14:17:10');
ALTER TABLE `columns` ENABLE KEYS;



-- --------------------------------------------------------

DROP TABLE IF EXISTS `failed_jobs`;

CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

ALTER TABLE `failed_jobs` DISABLE KEYS;

ALTER TABLE `failed_jobs` ENABLE KEYS;



-- --------------------------------------------------------

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

ALTER TABLE `migrations` DISABLE KEYS;

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1,	'2014_10_12_000000_create_users_table',	1),
(2,	'2014_10_12_100000_create_password_resets_table',	1),
(3,	'2019_08_19_000000_create_failed_jobs_table',	1),
(4,	'2019_12_14_000001_create_personal_access_tokens_table',	1),
(5,	'2022_07_15_113014_create_columns_table',	1),
(6,	'2022_07_15_113031_create_cards_table',	1);
ALTER TABLE `migrations` ENABLE KEYS;



-- --------------------------------------------------------

DROP TABLE IF EXISTS `password_resets`;

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

ALTER TABLE `password_resets` DISABLE KEYS;

ALTER TABLE `password_resets` ENABLE KEYS;



-- --------------------------------------------------------

DROP TABLE IF EXISTS `personal_access_tokens`;

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

ALTER TABLE `personal_access_tokens` DISABLE KEYS;

ALTER TABLE `personal_access_tokens` ENABLE KEYS;



-- --------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

ALTER TABLE `users` DISABLE KEYS;

ALTER TABLE `users` ENABLE KEYS;



COMMIT;
-- THE END
