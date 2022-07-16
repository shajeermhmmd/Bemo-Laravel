-- Created at 16.7.2022 18:28 using David Grudl MySQL Dump Utility
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

ALTER TABLE `cards` DISABLE KEYS;

INSERT INTO `cards` (`id`, `column_id`, `name`, `description`, `order`, `created_at`, `updated_at`) VALUES
(1,	24,	'Cart 1',	'card - 1 description',	1,	'2022-07-16 18:26:56',	'2022-07-16 18:26:56'),
(2,	24,	'Card - 2',	'card - 2 description',	1,	'2022-07-16 18:26:56',	'2022-07-16 18:26:56'),
(3,	26,	'Card - 6',	'Card - 6 Description',	1,	'2022-07-16 18:26:56',	'2022-07-16 18:26:56'),
(4,	26,	'Card - 7',	'Card 7 Description',	1,	'2022-07-16 18:26:56',	'2022-07-16 18:28:17'),
(5,	26,	'Card - 8',	'Card 8 description',	1,	'2022-07-16 18:26:56',	'2022-07-16 18:26:56'),
(6,	26,	'Card - 3',	'card - 3 description',	1,	'2022-07-16 18:26:56',	'2022-07-16 18:26:56'),
(7,	27,	'Card - 4',	'Card 4 - Description',	1,	'2022-07-16 18:26:56',	'2022-07-16 18:26:56'),
(8,	28,	'Card - 5',	'Card - 5 Description',	1,	'2022-07-16 18:26:56',	'2022-07-16 18:26:56');
ALTER TABLE `cards` ENABLE KEYS;



-- --------------------------------------------------------

DROP TABLE IF EXISTS `columns`;

CREATE TABLE `columns` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

ALTER TABLE `columns` DISABLE KEYS;

INSERT INTO `columns` (`id`, `title`, `created_at`, `updated_at`) VALUES
(24,	'Column - 1',	'2022-07-16 18:23:41',	'2022-07-16 18:23:41'),
(25,	'Column - 2',	'2022-07-16 18:23:52',	'2022-07-16 18:23:52'),
(26,	'Column - 3',	'2022-07-16 18:23:59',	'2022-07-16 18:23:59'),
(27,	'Column - 4',	'2022-07-16 18:24:07',	'2022-07-16 18:24:07'),
(28,	'Column - 5',	'2022-07-16 18:24:18',	'2022-07-16 18:24:18');
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
