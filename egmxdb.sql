-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 28-02-2022 a las 19:19:19
-- Versión del servidor: 5.7.31
-- Versión de PHP: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `egmxdb`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `categories`
--

INSERT INTO `categories` (`id`, `name`, `icon`, `created_at`, `updated_at`) VALUES
(1, 'Sistemas CMS', 'home', '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(2, 'Sistemas CRM', 'person', '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(3, 'Sistemas ERP', 'info', '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(4, 'Sistemas Ecommerce', 'person', '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(5, 'Scripts / Modulos', 'home', '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(6, 'Personal', 'help', '2022-02-25 10:02:27', '2022-02-25 10:02:27');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `items`
--

DROP TABLE IF EXISTS `items`;
CREATE TABLE IF NOT EXISTS `items` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `category_id` int(11) UNSIGNED NOT NULL DEFAULT '1',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `linkTo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double(8,2) NOT NULL DEFAULT '0.00',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tags` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `items_category_id_foreign` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `items`
--

INSERT INTO `items` (`id`, `category_id`, `name`, `description`, `linkTo`, `price`, `image`, `tags`, `created_at`, `updated_at`) VALUES
(1, 1, 'Mr. Brent Schultz IV', 'Autem et rerum quo rerum.', 'http://www.satterfield.org/reiciendis-cumque-mollitia-et-incidunt-placeat.html', 147.00, 'https://via.placeholder.com/800x600.png/0011dd?text=et', 'Impedit quia rem dolorem amet ad ipsum.', '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(2, 1, 'Zoila Beier III', 'Deserunt voluptatem saepe modi facilis perspiciatis dolorem laborum maxime.', 'http://weimann.com/occaecati-est-voluptatem-natus-eveniet-cum', 121.00, 'https://via.placeholder.com/800x600.png/0066dd?text=ullam', 'Fuga sunt nostrum est nostrum aut impedit expedita.', '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(3, 5, 'Eleanore Hickle', 'Laboriosam optio ipsa temporibus neque deleniti pariatur.', 'http://www.ziemann.net/rerum-soluta-rerum-esse-a.html', 69.00, 'https://via.placeholder.com/800x600.png/00aabb?text=ut', 'Velit dolorem vitae praesentium voluptatem in aspernatur.', '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(4, 5, 'Jevon Morissette III', 'Ipsam et qui ad necessitatibus veniam eos aut consequatur.', 'http://www.schowalter.com/dolor-quia-illo-dolorum-veritatis', 120.00, 'https://via.placeholder.com/800x600.png/008899?text=ad', 'Omnis deleniti autem vero ut dicta eos quia iste.', '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(5, 5, 'Elena Grimes', 'Delectus eum quasi corporis quae occaecati dolores dolorem.', 'https://grant.com/adipisci-sed-optio-corporis-eum-animi.html', 49.00, 'https://via.placeholder.com/800x600.png/002266?text=consequatur', 'Tempore et aut alias et aspernatur nam.', '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(6, 3, 'Prof. Merritt Buckridge', 'Voluptatum tempora quibusdam quisquam consectetur corporis fugiat.', 'https://www.emmerich.com/dolor-et-ut-magni-et-inventore', 62.00, 'https://via.placeholder.com/800x600.png/00ffff?text=rerum', 'Perspiciatis doloribus earum cumque ut molestiae reiciendis consequatur maiores.', '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(7, 3, 'Ms. Joana Koch V', 'Dolores adipisci doloremque autem non.', 'http://oconnell.info/neque-porro-quidem-alias-doloribus-facilis-distinctio-quasi-tempora', 93.00, 'https://via.placeholder.com/800x600.png/006611?text=nemo', 'Mollitia fuga velit architecto.', '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(8, 2, 'Izaiah Labadie', 'Ullam a id quas est blanditiis tenetur beatae.', 'http://www.haag.com/doloremque-necessitatibus-et-enim-earum-et-vitae-magni', 60.00, 'https://via.placeholder.com/800x600.png/000055?text=pariatur', 'Voluptas temporibus quia quia earum molestias et.', '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(9, 5, 'Mrs. Mathilde Funk I', 'Enim nobis maiores odit aut aliquam eaque illum consequuntur.', 'http://www.von.com/perferendis-sed-eveniet-possimus-eum.html', 163.00, 'https://via.placeholder.com/800x600.png/00ff55?text=vel', 'Qui est deserunt rerum est tempore.', '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(10, 4, 'Abe Williamson', 'Iure sit eligendi ipsam optio laborum cupiditate.', 'http://hessel.org/inventore-est-eum-veniam-maiores-ad-magni', 168.00, 'https://via.placeholder.com/800x600.png/00ee77?text=ullam', 'Qui molestiae suscipit maxime quia voluptates voluptas.', '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(11, 4, 'Dr. Hadley Rath', 'Ducimus distinctio non accusantium ut voluptatem voluptas.', 'http://www.becker.com/incidunt-veniam-error-voluptas-dolore.html', 175.00, 'https://via.placeholder.com/800x600.png/002200?text=omnis', 'Eum labore dolor eveniet ratione.', '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(12, 6, 'Mr. Max Stoltenberg', 'Voluptate a sint inventore et consequatur quia corrupti.', 'http://www.berge.com/in-cum-enim-delectus-omnis-minima-placeat-beatae.html', 141.00, 'https://via.placeholder.com/800x600.png/00ff99?text=omnis', 'Et natus accusantium debitis rerum.', '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(13, 2, 'Drake Kub', 'Velit corporis reprehenderit atque aut est molestiae.', 'https://www.ziemann.com/consequatur-sit-est-libero-quasi-delectus-nam-minus', 189.00, 'https://via.placeholder.com/800x600.png/0000ee?text=soluta', 'Sit labore aliquid libero ducimus.', '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(14, 1, 'Geoffrey Welch', 'Laboriosam voluptatem est quia eum maxime totam.', 'http://rempel.com/temporibus-incidunt-et-tenetur-et-ut', 130.00, 'https://via.placeholder.com/800x600.png/0066ff?text=eum', 'Tempora cupiditate qui dolor velit aliquam et dolores.', '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(15, 4, 'Alessandra Frami', 'Tempora quasi quis enim repellat beatae labore quia.', 'http://schneider.com/voluptas-optio-qui-voluptates-ex-eaque-voluptatem-repudiandae', 80.00, 'https://via.placeholder.com/800x600.png/00dddd?text=eligendi', 'Architecto dignissimos optio eveniet autem et consectetur.', '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(16, 2, 'Barbara Balistreri I', 'Consequatur ad numquam ea minima laboriosam quisquam.', 'http://gorczany.com/debitis-deleniti-dicta-animi-illum', 45.00, 'https://via.placeholder.com/800x600.png/0099ff?text=ut', 'Labore vero dolor doloremque tempora id recusandae eligendi.', '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(17, 5, 'Wade Collins', 'Quidem voluptatibus dolores inventore voluptas.', 'http://www.dach.net/', 111.00, 'https://via.placeholder.com/800x600.png/00ddee?text=aut', 'Ad sunt quas sed quaerat expedita pariatur aut.', '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(18, 4, 'Audrey Jerde', 'Neque magni quo qui beatae reiciendis.', 'http://www.marquardt.info/', 35.00, 'https://via.placeholder.com/800x600.png/0077cc?text=aut', 'Labore quisquam incidunt corrupti doloremque porro debitis.', '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(19, 3, 'Claud Lueilwitz', 'Cumque voluptas est sit dolore culpa sit ducimus.', 'http://miller.com/minima-iure-fuga-et-et-quam-doloribus.html', 26.00, 'https://via.placeholder.com/800x600.png/006677?text=ducimus', 'Alias reprehenderit id eaque qui.', '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(20, 5, 'Dr. Richmond om III', 'Totam modi magni aliquid et.', 'http://kuhlman.com/quo-quis-sed-ut-vel', 168.00, 'https://via.placeholder.com/800x600.png/007755?text=qui', 'Dolorum consequatur beatae dolore.', '2022-02-25 10:02:27', '2022-02-25 10:02:27');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_02_14_165939_create_categories_table', 1),
(6, '2022_02_14_175743_create_items_table', 1),
(7, '2022_02_14_190141_create_screenshots_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `screenshots`
--

DROP TABLE IF EXISTS `screenshots`;
CREATE TABLE IF NOT EXISTS `screenshots` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `item_id` int(11) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `screenshots_item_id_foreign` (`item_id`)
) ENGINE=InnoDB AUTO_INCREMENT=301 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `screenshots`
--

INSERT INTO `screenshots` (`id`, `item_id`, `image`, `order`, `created_at`, `updated_at`) VALUES
(1, 17, 'https://via.placeholder.com/800x600.png/002200?text=alias', 4, '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(2, 1, 'https://via.placeholder.com/800x600.png/0055bb?text=reiciendis', 3, '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(3, 16, 'https://via.placeholder.com/800x600.png/007733?text=dolorem', 3, '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(4, 11, 'https://via.placeholder.com/800x600.png/004488?text=et', 2, '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(5, 18, 'https://via.placeholder.com/800x600.png/005588?text=ex', 3, '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(6, 17, 'https://via.placeholder.com/800x600.png/0044dd?text=sunt', 2, '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(7, 6, 'https://via.placeholder.com/800x600.png/00cc77?text=veritatis', 2, '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(8, 4, 'https://via.placeholder.com/800x600.png/0011ee?text=ad', 3, '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(9, 2, 'https://via.placeholder.com/800x600.png/00cc77?text=ut', 3, '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(10, 19, 'https://via.placeholder.com/800x600.png/004477?text=iste', 5, '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(11, 20, 'https://via.placeholder.com/800x600.png/006633?text=occaecati', 4, '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(12, 19, 'https://via.placeholder.com/800x600.png/003344?text=perspiciatis', 3, '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(13, 1, 'https://via.placeholder.com/800x600.png/004477?text=consectetur', 1, '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(14, 13, 'https://via.placeholder.com/800x600.png/0000cc?text=quo', 4, '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(15, 3, 'https://via.placeholder.com/800x600.png/0033bb?text=voluptatem', 1, '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(16, 11, 'https://via.placeholder.com/800x600.png/002299?text=placeat', 3, '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(17, 18, 'https://via.placeholder.com/800x600.png/004477?text=quia', 5, '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(18, 9, 'https://via.placeholder.com/800x600.png/001133?text=est', 2, '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(19, 5, 'https://via.placeholder.com/800x600.png/00ddaa?text=alias', 5, '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(20, 4, 'https://via.placeholder.com/800x600.png/00cc22?text=sed', 5, '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(21, 4, 'https://via.placeholder.com/800x600.png/00aaee?text=quibusdam', 5, '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(22, 19, 'https://via.placeholder.com/800x600.png/00ee44?text=et', 1, '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(23, 5, 'https://via.placeholder.com/800x600.png/007766?text=tenetur', 1, '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(24, 3, 'https://via.placeholder.com/800x600.png/0055cc?text=quia', 2, '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(25, 17, 'https://via.placeholder.com/800x600.png/0099aa?text=nisi', 2, '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(26, 5, 'https://via.placeholder.com/800x600.png/00ccff?text=sit', 4, '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(27, 20, 'https://via.placeholder.com/800x600.png/00bb88?text=voluptas', 5, '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(28, 9, 'https://via.placeholder.com/800x600.png/0055bb?text=cumque', 2, '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(29, 18, 'https://via.placeholder.com/800x600.png/008855?text=aut', 5, '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(30, 12, 'https://via.placeholder.com/800x600.png/003344?text=vel', 2, '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(31, 7, 'https://via.placeholder.com/800x600.png/008800?text=sunt', 5, '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(32, 9, 'https://via.placeholder.com/800x600.png/007700?text=laborum', 1, '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(33, 3, 'https://via.placeholder.com/800x600.png/000022?text=saepe', 3, '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(34, 3, 'https://via.placeholder.com/800x600.png/003355?text=a', 5, '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(35, 13, 'https://via.placeholder.com/800x600.png/0066aa?text=veniam', 2, '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(36, 14, 'https://via.placeholder.com/800x600.png/0077dd?text=totam', 5, '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(37, 16, 'https://via.placeholder.com/800x600.png/002288?text=veniam', 5, '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(38, 1, 'https://via.placeholder.com/800x600.png/009933?text=officiis', 1, '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(39, 17, 'https://via.placeholder.com/800x600.png/0044cc?text=dolorem', 2, '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(40, 11, 'https://via.placeholder.com/800x600.png/009900?text=deleniti', 5, '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(41, 15, 'https://via.placeholder.com/800x600.png/00cc00?text=at', 2, '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(42, 1, 'https://via.placeholder.com/800x600.png/005588?text=temporibus', 1, '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(43, 1, 'https://via.placeholder.com/800x600.png/00bb11?text=culpa', 3, '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(44, 9, 'https://via.placeholder.com/800x600.png/0033bb?text=est', 4, '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(45, 11, 'https://via.placeholder.com/800x600.png/005566?text=nesciunt', 4, '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(46, 18, 'https://via.placeholder.com/800x600.png/00eedd?text=officia', 4, '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(47, 8, 'https://via.placeholder.com/800x600.png/0022aa?text=unde', 5, '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(48, 15, 'https://via.placeholder.com/800x600.png/00aa11?text=et', 1, '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(49, 19, 'https://via.placeholder.com/800x600.png/0044ee?text=voluptas', 3, '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(50, 6, 'https://via.placeholder.com/800x600.png/001144?text=doloribus', 4, '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(51, 4, 'https://via.placeholder.com/800x600.png/0011dd?text=reprehenderit', 4, '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(52, 20, 'https://via.placeholder.com/800x600.png/00aa22?text=voluptatem', 2, '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(53, 14, 'https://via.placeholder.com/800x600.png/002288?text=minus', 5, '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(54, 19, 'https://via.placeholder.com/800x600.png/006644?text=omnis', 2, '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(55, 4, 'https://via.placeholder.com/800x600.png/007799?text=cum', 1, '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(56, 1, 'https://via.placeholder.com/800x600.png/0077ff?text=adipisci', 4, '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(57, 7, 'https://via.placeholder.com/800x600.png/00ee77?text=reprehenderit', 1, '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(58, 6, 'https://via.placeholder.com/800x600.png/00ff99?text=porro', 1, '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(59, 18, 'https://via.placeholder.com/800x600.png/0000dd?text=autem', 5, '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(60, 8, 'https://via.placeholder.com/800x600.png/006699?text=est', 1, '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(61, 5, 'https://via.placeholder.com/800x600.png/0000ff?text=et', 3, '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(62, 5, 'https://via.placeholder.com/800x600.png/00bb99?text=eligendi', 4, '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(63, 17, 'https://via.placeholder.com/800x600.png/00bb33?text=odit', 4, '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(64, 3, 'https://via.placeholder.com/800x600.png/0022cc?text=rem', 5, '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(65, 16, 'https://via.placeholder.com/800x600.png/00ccdd?text=repellat', 2, '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(66, 15, 'https://via.placeholder.com/800x600.png/0099ee?text=aut', 2, '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(67, 7, 'https://via.placeholder.com/800x600.png/0022cc?text=at', 3, '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(68, 9, 'https://via.placeholder.com/800x600.png/00ccff?text=ratione', 5, '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(69, 20, 'https://via.placeholder.com/800x600.png/0011dd?text=aperiam', 5, '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(70, 16, 'https://via.placeholder.com/800x600.png/0044bb?text=sunt', 5, '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(71, 12, 'https://via.placeholder.com/800x600.png/008877?text=dolor', 5, '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(72, 14, 'https://via.placeholder.com/800x600.png/0066ee?text=et', 4, '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(73, 4, 'https://via.placeholder.com/800x600.png/00cc88?text=id', 2, '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(74, 20, 'https://via.placeholder.com/800x600.png/0000aa?text=nulla', 3, '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(75, 15, 'https://via.placeholder.com/800x600.png/0066bb?text=soluta', 4, '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(76, 10, 'https://via.placeholder.com/800x600.png/009944?text=rerum', 3, '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(77, 19, 'https://via.placeholder.com/800x600.png/007700?text=dolores', 2, '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(78, 18, 'https://via.placeholder.com/800x600.png/00aa44?text=facilis', 4, '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(79, 5, 'https://via.placeholder.com/800x600.png/000077?text=consequatur', 5, '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(80, 5, 'https://via.placeholder.com/800x600.png/0044cc?text=aliquid', 4, '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(81, 3, 'https://via.placeholder.com/800x600.png/0011ee?text=voluptate', 5, '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(82, 17, 'https://via.placeholder.com/800x600.png/007788?text=autem', 1, '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(83, 15, 'https://via.placeholder.com/800x600.png/00ff44?text=aperiam', 2, '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(84, 1, 'https://via.placeholder.com/800x600.png/00ffaa?text=quis', 4, '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(85, 8, 'https://via.placeholder.com/800x600.png/00cc00?text=fugit', 2, '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(86, 11, 'https://via.placeholder.com/800x600.png/000044?text=suscipit', 4, '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(87, 3, 'https://via.placeholder.com/800x600.png/0077bb?text=et', 5, '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(88, 7, 'https://via.placeholder.com/800x600.png/00bb77?text=nisi', 5, '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(89, 4, 'https://via.placeholder.com/800x600.png/0011ff?text=quia', 3, '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(90, 5, 'https://via.placeholder.com/800x600.png/0000aa?text=temporibus', 3, '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(91, 12, 'https://via.placeholder.com/800x600.png/008811?text=sit', 3, '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(92, 7, 'https://via.placeholder.com/800x600.png/004433?text=expedita', 3, '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(93, 11, 'https://via.placeholder.com/800x600.png/00dd88?text=et', 3, '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(94, 11, 'https://via.placeholder.com/800x600.png/0000cc?text=labore', 4, '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(95, 12, 'https://via.placeholder.com/800x600.png/0044aa?text=atque', 1, '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(96, 12, 'https://via.placeholder.com/800x600.png/00ff44?text=ea', 1, '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(97, 18, 'https://via.placeholder.com/800x600.png/003333?text=accusamus', 5, '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(98, 1, 'https://via.placeholder.com/800x600.png/00bbaa?text=officiis', 5, '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(99, 8, 'https://via.placeholder.com/800x600.png/004455?text=rerum', 2, '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(100, 19, 'https://via.placeholder.com/800x600.png/000033?text=rem', 2, '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(101, 16, 'https://via.placeholder.com/800x600.png/00ff77?text=ducimus', 1, '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(102, 4, 'https://via.placeholder.com/800x600.png/0099bb?text=tempora', 4, '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(103, 16, 'https://via.placeholder.com/800x600.png/0033ee?text=a', 2, '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(104, 13, 'https://via.placeholder.com/800x600.png/004433?text=et', 4, '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(105, 1, 'https://via.placeholder.com/800x600.png/0033cc?text=est', 4, '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(106, 11, 'https://via.placeholder.com/800x600.png/003333?text=nihil', 3, '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(107, 3, 'https://via.placeholder.com/800x600.png/00eeaa?text=non', 3, '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(108, 1, 'https://via.placeholder.com/800x600.png/00ee00?text=quaerat', 2, '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(109, 1, 'https://via.placeholder.com/800x600.png/00ee22?text=tempora', 3, '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(110, 12, 'https://via.placeholder.com/800x600.png/00cc99?text=occaecati', 3, '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(111, 10, 'https://via.placeholder.com/800x600.png/000011?text=doloremque', 2, '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(112, 9, 'https://via.placeholder.com/800x600.png/0033aa?text=veniam', 1, '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(113, 14, 'https://via.placeholder.com/800x600.png/00ee22?text=autem', 1, '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(114, 16, 'https://via.placeholder.com/800x600.png/00cc99?text=error', 3, '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(115, 12, 'https://via.placeholder.com/800x600.png/000055?text=ut', 2, '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(116, 1, 'https://via.placeholder.com/800x600.png/0033cc?text=exercitationem', 1, '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(117, 1, 'https://via.placeholder.com/800x600.png/003311?text=porro', 1, '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(118, 15, 'https://via.placeholder.com/800x600.png/008844?text=facilis', 3, '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(119, 18, 'https://via.placeholder.com/800x600.png/001177?text=ut', 4, '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(120, 18, 'https://via.placeholder.com/800x600.png/009933?text=itaque', 3, '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(121, 15, 'https://via.placeholder.com/800x600.png/002299?text=sed', 2, '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(122, 8, 'https://via.placeholder.com/800x600.png/0022aa?text=est', 1, '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(123, 20, 'https://via.placeholder.com/800x600.png/00dd22?text=quod', 3, '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(124, 20, 'https://via.placeholder.com/800x600.png/0044dd?text=officia', 3, '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(125, 16, 'https://via.placeholder.com/800x600.png/009966?text=omnis', 2, '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(126, 4, 'https://via.placeholder.com/800x600.png/002255?text=expedita', 4, '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(127, 20, 'https://via.placeholder.com/800x600.png/001100?text=tenetur', 4, '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(128, 12, 'https://via.placeholder.com/800x600.png/002222?text=ab', 2, '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(129, 18, 'https://via.placeholder.com/800x600.png/00ffbb?text=laudantium', 2, '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(130, 6, 'https://via.placeholder.com/800x600.png/00ff99?text=eos', 3, '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(131, 2, 'https://via.placeholder.com/800x600.png/00dddd?text=sunt', 3, '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(132, 16, 'https://via.placeholder.com/800x600.png/0088dd?text=qui', 4, '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(133, 13, 'https://via.placeholder.com/800x600.png/00ccee?text=sit', 4, '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(134, 3, 'https://via.placeholder.com/800x600.png/000088?text=porro', 4, '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(135, 6, 'https://via.placeholder.com/800x600.png/00ccaa?text=aut', 5, '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(136, 16, 'https://via.placeholder.com/800x600.png/007766?text=repudiandae', 4, '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(137, 18, 'https://via.placeholder.com/800x600.png/005533?text=quis', 4, '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(138, 10, 'https://via.placeholder.com/800x600.png/00dd22?text=vero', 3, '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(139, 19, 'https://via.placeholder.com/800x600.png/001199?text=asperiores', 5, '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(140, 8, 'https://via.placeholder.com/800x600.png/0044aa?text=error', 5, '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(141, 10, 'https://via.placeholder.com/800x600.png/0077dd?text=rerum', 4, '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(142, 13, 'https://via.placeholder.com/800x600.png/0022bb?text=aut', 4, '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(143, 11, 'https://via.placeholder.com/800x600.png/003300?text=reprehenderit', 3, '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(144, 2, 'https://via.placeholder.com/800x600.png/006633?text=aperiam', 1, '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(145, 5, 'https://via.placeholder.com/800x600.png/00bb11?text=quidem', 2, '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(146, 4, 'https://via.placeholder.com/800x600.png/006655?text=corrupti', 3, '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(147, 18, 'https://via.placeholder.com/800x600.png/00bbdd?text=quia', 5, '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(148, 11, 'https://via.placeholder.com/800x600.png/007711?text=dolores', 2, '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(149, 9, 'https://via.placeholder.com/800x600.png/0088dd?text=et', 3, '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(150, 18, 'https://via.placeholder.com/800x600.png/003399?text=ex', 4, '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(151, 1, 'https://via.placeholder.com/800x600.png/009944?text=voluptas', 3, '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(152, 20, 'https://via.placeholder.com/800x600.png/00cc88?text=sint', 5, '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(153, 13, 'https://via.placeholder.com/800x600.png/00ee44?text=vitae', 4, '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(154, 13, 'https://via.placeholder.com/800x600.png/0011aa?text=fugit', 3, '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(155, 20, 'https://via.placeholder.com/800x600.png/001100?text=aut', 5, '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(156, 3, 'https://via.placeholder.com/800x600.png/00ee22?text=voluptatibus', 1, '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(157, 5, 'https://via.placeholder.com/800x600.png/007788?text=sed', 5, '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(158, 11, 'https://via.placeholder.com/800x600.png/006600?text=distinctio', 5, '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(159, 14, 'https://via.placeholder.com/800x600.png/00ee00?text=id', 2, '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(160, 1, 'https://via.placeholder.com/800x600.png/00bb44?text=veniam', 4, '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(161, 7, 'https://via.placeholder.com/800x600.png/000099?text=error', 2, '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(162, 1, 'https://via.placeholder.com/800x600.png/00ccaa?text=vel', 4, '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(163, 18, 'https://via.placeholder.com/800x600.png/004477?text=ipsum', 4, '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(164, 3, 'https://via.placeholder.com/800x600.png/005588?text=quas', 5, '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(165, 5, 'https://via.placeholder.com/800x600.png/00ff00?text=reprehenderit', 5, '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(166, 11, 'https://via.placeholder.com/800x600.png/00bb99?text=nisi', 1, '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(167, 9, 'https://via.placeholder.com/800x600.png/00aadd?text=illum', 5, '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(168, 9, 'https://via.placeholder.com/800x600.png/00bb99?text=facilis', 3, '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(169, 2, 'https://via.placeholder.com/800x600.png/0055dd?text=qui', 1, '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(170, 12, 'https://via.placeholder.com/800x600.png/0088ff?text=ipsam', 1, '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(171, 12, 'https://via.placeholder.com/800x600.png/00ee33?text=rerum', 5, '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(172, 12, 'https://via.placeholder.com/800x600.png/0099dd?text=sequi', 1, '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(173, 15, 'https://via.placeholder.com/800x600.png/0099dd?text=sed', 4, '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(174, 16, 'https://via.placeholder.com/800x600.png/008800?text=qui', 2, '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(175, 6, 'https://via.placeholder.com/800x600.png/0033bb?text=excepturi', 4, '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(176, 7, 'https://via.placeholder.com/800x600.png/0055ff?text=et', 2, '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(177, 9, 'https://via.placeholder.com/800x600.png/001111?text=repellendus', 4, '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(178, 18, 'https://via.placeholder.com/800x600.png/00bb55?text=sed', 5, '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(179, 9, 'https://via.placeholder.com/800x600.png/006699?text=laborum', 1, '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(180, 2, 'https://via.placeholder.com/800x600.png/00bbcc?text=excepturi', 5, '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(181, 16, 'https://via.placeholder.com/800x600.png/0044dd?text=consequatur', 2, '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(182, 19, 'https://via.placeholder.com/800x600.png/0088bb?text=impedit', 4, '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(183, 7, 'https://via.placeholder.com/800x600.png/0022dd?text=nemo', 3, '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(184, 13, 'https://via.placeholder.com/800x600.png/00bb33?text=eaque', 5, '2022-02-25 10:02:28', '2022-02-25 10:02:28'),
(185, 2, 'https://via.placeholder.com/800x600.png/003366?text=sunt', 3, '2022-02-25 10:02:28', '2022-02-25 10:02:28'),
(186, 14, 'https://via.placeholder.com/800x600.png/00bb00?text=expedita', 4, '2022-02-25 10:02:28', '2022-02-25 10:02:28'),
(187, 7, 'https://via.placeholder.com/800x600.png/0055dd?text=dolor', 4, '2022-02-25 10:02:28', '2022-02-25 10:02:28'),
(188, 16, 'https://via.placeholder.com/800x600.png/005544?text=eaque', 2, '2022-02-25 10:02:28', '2022-02-25 10:02:28'),
(189, 11, 'https://via.placeholder.com/800x600.png/0099aa?text=aut', 5, '2022-02-25 10:02:28', '2022-02-25 10:02:28'),
(190, 16, 'https://via.placeholder.com/800x600.png/00ccaa?text=eum', 5, '2022-02-25 10:02:28', '2022-02-25 10:02:28'),
(191, 14, 'https://via.placeholder.com/800x600.png/002299?text=mollitia', 4, '2022-02-25 10:02:28', '2022-02-25 10:02:28'),
(192, 17, 'https://via.placeholder.com/800x600.png/002233?text=earum', 3, '2022-02-25 10:02:28', '2022-02-25 10:02:28'),
(193, 10, 'https://via.placeholder.com/800x600.png/008855?text=quidem', 3, '2022-02-25 10:02:28', '2022-02-25 10:02:28'),
(194, 6, 'https://via.placeholder.com/800x600.png/009944?text=ut', 5, '2022-02-25 10:02:28', '2022-02-25 10:02:28'),
(195, 20, 'https://via.placeholder.com/800x600.png/002299?text=eos', 5, '2022-02-25 10:02:28', '2022-02-25 10:02:28'),
(196, 7, 'https://via.placeholder.com/800x600.png/00aaff?text=deleniti', 4, '2022-02-25 10:02:28', '2022-02-25 10:02:28'),
(197, 6, 'https://via.placeholder.com/800x600.png/009922?text=enim', 5, '2022-02-25 10:02:28', '2022-02-25 10:02:28'),
(198, 20, 'https://via.placeholder.com/800x600.png/00ffcc?text=laborum', 5, '2022-02-25 10:02:28', '2022-02-25 10:02:28'),
(199, 14, 'https://via.placeholder.com/800x600.png/0033aa?text=aliquid', 5, '2022-02-25 10:02:28', '2022-02-25 10:02:28'),
(200, 16, 'https://via.placeholder.com/800x600.png/0033ee?text=voluptas', 3, '2022-02-25 10:02:28', '2022-02-25 10:02:28'),
(201, 14, 'https://via.placeholder.com/800x600.png/00cc22?text=magni', 5, '2022-02-25 10:02:28', '2022-02-25 10:02:28'),
(202, 3, 'https://via.placeholder.com/800x600.png/00bbee?text=in', 2, '2022-02-25 10:02:28', '2022-02-25 10:02:28'),
(203, 3, 'https://via.placeholder.com/800x600.png/004477?text=quas', 5, '2022-02-25 10:02:28', '2022-02-25 10:02:28'),
(204, 11, 'https://via.placeholder.com/800x600.png/0033cc?text=quidem', 5, '2022-02-25 10:02:28', '2022-02-25 10:02:28'),
(205, 4, 'https://via.placeholder.com/800x600.png/00bb88?text=fuga', 2, '2022-02-25 10:02:28', '2022-02-25 10:02:28'),
(206, 6, 'https://via.placeholder.com/800x600.png/004488?text=blanditiis', 4, '2022-02-25 10:02:28', '2022-02-25 10:02:28'),
(207, 10, 'https://via.placeholder.com/800x600.png/00eebb?text=nesciunt', 1, '2022-02-25 10:02:28', '2022-02-25 10:02:28'),
(208, 19, 'https://via.placeholder.com/800x600.png/00bbbb?text=aliquam', 2, '2022-02-25 10:02:28', '2022-02-25 10:02:28'),
(209, 16, 'https://via.placeholder.com/800x600.png/0011aa?text=aperiam', 1, '2022-02-25 10:02:28', '2022-02-25 10:02:28'),
(210, 15, 'https://via.placeholder.com/800x600.png/00ee22?text=provident', 2, '2022-02-25 10:02:28', '2022-02-25 10:02:28'),
(211, 11, 'https://via.placeholder.com/800x600.png/00dd00?text=omnis', 4, '2022-02-25 10:02:28', '2022-02-25 10:02:28'),
(212, 6, 'https://via.placeholder.com/800x600.png/00ddaa?text=ea', 2, '2022-02-25 10:02:28', '2022-02-25 10:02:28'),
(213, 19, 'https://via.placeholder.com/800x600.png/0055ee?text=quasi', 5, '2022-02-25 10:02:28', '2022-02-25 10:02:28'),
(214, 20, 'https://via.placeholder.com/800x600.png/00bb00?text=maxime', 3, '2022-02-25 10:02:28', '2022-02-25 10:02:28'),
(215, 3, 'https://via.placeholder.com/800x600.png/003399?text=aut', 1, '2022-02-25 10:02:28', '2022-02-25 10:02:28'),
(216, 15, 'https://via.placeholder.com/800x600.png/0000cc?text=aut', 2, '2022-02-25 10:02:28', '2022-02-25 10:02:28'),
(217, 18, 'https://via.placeholder.com/800x600.png/0099dd?text=inventore', 2, '2022-02-25 10:02:28', '2022-02-25 10:02:28'),
(218, 20, 'https://via.placeholder.com/800x600.png/001177?text=itaque', 3, '2022-02-25 10:02:28', '2022-02-25 10:02:28'),
(219, 16, 'https://via.placeholder.com/800x600.png/00cc44?text=quidem', 1, '2022-02-25 10:02:28', '2022-02-25 10:02:28'),
(220, 14, 'https://via.placeholder.com/800x600.png/0088aa?text=eligendi', 5, '2022-02-25 10:02:28', '2022-02-25 10:02:28'),
(221, 7, 'https://via.placeholder.com/800x600.png/00bb33?text=porro', 1, '2022-02-25 10:02:28', '2022-02-25 10:02:28'),
(222, 4, 'https://via.placeholder.com/800x600.png/00ff44?text=cumque', 3, '2022-02-25 10:02:28', '2022-02-25 10:02:28'),
(223, 7, 'https://via.placeholder.com/800x600.png/0044ee?text=sint', 4, '2022-02-25 10:02:28', '2022-02-25 10:02:28'),
(224, 3, 'https://via.placeholder.com/800x600.png/00ee88?text=est', 4, '2022-02-25 10:02:28', '2022-02-25 10:02:28'),
(225, 3, 'https://via.placeholder.com/800x600.png/00aabb?text=unde', 3, '2022-02-25 10:02:28', '2022-02-25 10:02:28'),
(226, 13, 'https://via.placeholder.com/800x600.png/0000ff?text=sed', 1, '2022-02-25 10:02:28', '2022-02-25 10:02:28'),
(227, 9, 'https://via.placeholder.com/800x600.png/002266?text=corporis', 2, '2022-02-25 10:02:28', '2022-02-25 10:02:28'),
(228, 6, 'https://via.placeholder.com/800x600.png/009966?text=beatae', 3, '2022-02-25 10:02:28', '2022-02-25 10:02:28'),
(229, 7, 'https://via.placeholder.com/800x600.png/005533?text=consequatur', 2, '2022-02-25 10:02:28', '2022-02-25 10:02:28'),
(230, 15, 'https://via.placeholder.com/800x600.png/0077dd?text=atque', 4, '2022-02-25 10:02:28', '2022-02-25 10:02:28'),
(231, 15, 'https://via.placeholder.com/800x600.png/005511?text=occaecati', 2, '2022-02-25 10:02:28', '2022-02-25 10:02:28'),
(232, 4, 'https://via.placeholder.com/800x600.png/000044?text=architecto', 3, '2022-02-25 10:02:28', '2022-02-25 10:02:28'),
(233, 9, 'https://via.placeholder.com/800x600.png/006666?text=quibusdam', 3, '2022-02-25 10:02:28', '2022-02-25 10:02:28'),
(234, 19, 'https://via.placeholder.com/800x600.png/004455?text=pariatur', 5, '2022-02-25 10:02:28', '2022-02-25 10:02:28'),
(235, 3, 'https://via.placeholder.com/800x600.png/008822?text=ducimus', 5, '2022-02-25 10:02:28', '2022-02-25 10:02:28'),
(236, 18, 'https://via.placeholder.com/800x600.png/009911?text=officia', 2, '2022-02-25 10:02:28', '2022-02-25 10:02:28'),
(237, 20, 'https://via.placeholder.com/800x600.png/0099aa?text=quam', 2, '2022-02-25 10:02:28', '2022-02-25 10:02:28'),
(238, 8, 'https://via.placeholder.com/800x600.png/00dd88?text=maiores', 4, '2022-02-25 10:02:28', '2022-02-25 10:02:28'),
(239, 15, 'https://via.placeholder.com/800x600.png/007788?text=deleniti', 4, '2022-02-25 10:02:28', '2022-02-25 10:02:28'),
(240, 11, 'https://via.placeholder.com/800x600.png/00ffcc?text=ut', 5, '2022-02-25 10:02:28', '2022-02-25 10:02:28'),
(241, 15, 'https://via.placeholder.com/800x600.png/00ee33?text=deserunt', 5, '2022-02-25 10:02:28', '2022-02-25 10:02:28'),
(242, 12, 'https://via.placeholder.com/800x600.png/005533?text=eos', 3, '2022-02-25 10:02:28', '2022-02-25 10:02:28'),
(243, 2, 'https://via.placeholder.com/800x600.png/00ffdd?text=officiis', 2, '2022-02-25 10:02:28', '2022-02-25 10:02:28'),
(244, 17, 'https://via.placeholder.com/800x600.png/00ddee?text=et', 5, '2022-02-25 10:02:28', '2022-02-25 10:02:28'),
(245, 9, 'https://via.placeholder.com/800x600.png/005533?text=quisquam', 4, '2022-02-25 10:02:28', '2022-02-25 10:02:28'),
(246, 5, 'https://via.placeholder.com/800x600.png/007733?text=sit', 4, '2022-02-25 10:02:28', '2022-02-25 10:02:28'),
(247, 1, 'https://via.placeholder.com/800x600.png/0055dd?text=fugiat', 2, '2022-02-25 10:02:28', '2022-02-25 10:02:28'),
(248, 11, 'https://via.placeholder.com/800x600.png/002277?text=inventore', 3, '2022-02-25 10:02:28', '2022-02-25 10:02:28'),
(249, 17, 'https://via.placeholder.com/800x600.png/0000aa?text=non', 1, '2022-02-25 10:02:28', '2022-02-25 10:02:28'),
(250, 17, 'https://via.placeholder.com/800x600.png/0044ff?text=praesentium', 1, '2022-02-25 10:02:28', '2022-02-25 10:02:28'),
(251, 9, 'https://via.placeholder.com/800x600.png/003377?text=ea', 4, '2022-02-25 10:02:28', '2022-02-25 10:02:28'),
(252, 15, 'https://via.placeholder.com/800x600.png/002244?text=beatae', 2, '2022-02-25 10:02:28', '2022-02-25 10:02:28'),
(253, 6, 'https://via.placeholder.com/800x600.png/003355?text=voluptas', 1, '2022-02-25 10:02:28', '2022-02-25 10:02:28'),
(254, 3, 'https://via.placeholder.com/800x600.png/000022?text=aut', 3, '2022-02-25 10:02:28', '2022-02-25 10:02:28'),
(255, 9, 'https://via.placeholder.com/800x600.png/007755?text=nisi', 3, '2022-02-25 10:02:28', '2022-02-25 10:02:28'),
(256, 18, 'https://via.placeholder.com/800x600.png/008811?text=ex', 4, '2022-02-25 10:02:28', '2022-02-25 10:02:28'),
(257, 14, 'https://via.placeholder.com/800x600.png/003366?text=qui', 3, '2022-02-25 10:02:28', '2022-02-25 10:02:28'),
(258, 8, 'https://via.placeholder.com/800x600.png/007755?text=ipsum', 3, '2022-02-25 10:02:28', '2022-02-25 10:02:28'),
(259, 12, 'https://via.placeholder.com/800x600.png/00aa22?text=quam', 5, '2022-02-25 10:02:28', '2022-02-25 10:02:28'),
(260, 5, 'https://via.placeholder.com/800x600.png/0066ff?text=ex', 5, '2022-02-25 10:02:28', '2022-02-25 10:02:28'),
(261, 17, 'https://via.placeholder.com/800x600.png/003399?text=maxime', 2, '2022-02-25 10:02:28', '2022-02-25 10:02:28'),
(262, 7, 'https://via.placeholder.com/800x600.png/00dd00?text=molestiae', 5, '2022-02-25 10:02:28', '2022-02-25 10:02:28'),
(263, 17, 'https://via.placeholder.com/800x600.png/00ddaa?text=sunt', 3, '2022-02-25 10:02:28', '2022-02-25 10:02:28'),
(264, 15, 'https://via.placeholder.com/800x600.png/002266?text=quo', 3, '2022-02-25 10:02:28', '2022-02-25 10:02:28'),
(265, 7, 'https://via.placeholder.com/800x600.png/00aa66?text=atque', 2, '2022-02-25 10:02:28', '2022-02-25 10:02:28'),
(266, 9, 'https://via.placeholder.com/800x600.png/0000aa?text=vero', 1, '2022-02-25 10:02:28', '2022-02-25 10:02:28'),
(267, 10, 'https://via.placeholder.com/800x600.png/00ff00?text=architecto', 4, '2022-02-25 10:02:28', '2022-02-25 10:02:28'),
(268, 9, 'https://via.placeholder.com/800x600.png/0088dd?text=ad', 4, '2022-02-25 10:02:28', '2022-02-25 10:02:28'),
(269, 7, 'https://via.placeholder.com/800x600.png/002222?text=labore', 3, '2022-02-25 10:02:28', '2022-02-25 10:02:28'),
(270, 15, 'https://via.placeholder.com/800x600.png/00dd44?text=odit', 3, '2022-02-25 10:02:28', '2022-02-25 10:02:28'),
(271, 9, 'https://via.placeholder.com/800x600.png/009944?text=eum', 5, '2022-02-25 10:02:28', '2022-02-25 10:02:28'),
(272, 1, 'https://via.placeholder.com/800x600.png/00eeee?text=voluptates', 3, '2022-02-25 10:02:28', '2022-02-25 10:02:28'),
(273, 13, 'https://via.placeholder.com/800x600.png/007711?text=quia', 5, '2022-02-25 10:02:28', '2022-02-25 10:02:28'),
(274, 5, 'https://via.placeholder.com/800x600.png/00ccff?text=facere', 3, '2022-02-25 10:02:28', '2022-02-25 10:02:28'),
(275, 12, 'https://via.placeholder.com/800x600.png/0055bb?text=assumenda', 1, '2022-02-25 10:02:28', '2022-02-25 10:02:28'),
(276, 7, 'https://via.placeholder.com/800x600.png/00bbaa?text=veritatis', 2, '2022-02-25 10:02:28', '2022-02-25 10:02:28'),
(277, 4, 'https://via.placeholder.com/800x600.png/005522?text=blanditiis', 4, '2022-02-25 10:02:28', '2022-02-25 10:02:28'),
(278, 2, 'https://via.placeholder.com/800x600.png/0077ff?text=provident', 2, '2022-02-25 10:02:28', '2022-02-25 10:02:28'),
(279, 19, 'https://via.placeholder.com/800x600.png/005566?text=enim', 5, '2022-02-25 10:02:28', '2022-02-25 10:02:28'),
(280, 11, 'https://via.placeholder.com/800x600.png/0066bb?text=in', 5, '2022-02-25 10:02:28', '2022-02-25 10:02:28'),
(281, 16, 'https://via.placeholder.com/800x600.png/0000aa?text=aut', 5, '2022-02-25 10:02:28', '2022-02-25 10:02:28'),
(282, 14, 'https://via.placeholder.com/800x600.png/00cc99?text=id', 2, '2022-02-25 10:02:28', '2022-02-25 10:02:28'),
(283, 7, 'https://via.placeholder.com/800x600.png/0055cc?text=at', 4, '2022-02-25 10:02:28', '2022-02-25 10:02:28'),
(284, 13, 'https://via.placeholder.com/800x600.png/0099bb?text=ut', 2, '2022-02-25 10:02:28', '2022-02-25 10:02:28'),
(285, 3, 'https://via.placeholder.com/800x600.png/001100?text=temporibus', 4, '2022-02-25 10:02:28', '2022-02-25 10:02:28'),
(286, 16, 'https://via.placeholder.com/800x600.png/002288?text=consequuntur', 3, '2022-02-25 10:02:28', '2022-02-25 10:02:28'),
(287, 10, 'https://via.placeholder.com/800x600.png/00ff55?text=magni', 3, '2022-02-25 10:02:28', '2022-02-25 10:02:28'),
(288, 13, 'https://via.placeholder.com/800x600.png/002211?text=excepturi', 2, '2022-02-25 10:02:28', '2022-02-25 10:02:28'),
(289, 19, 'https://via.placeholder.com/800x600.png/0022dd?text=corporis', 3, '2022-02-25 10:02:28', '2022-02-25 10:02:28'),
(290, 10, 'https://via.placeholder.com/800x600.png/00ddee?text=velit', 4, '2022-02-25 10:02:28', '2022-02-25 10:02:28'),
(291, 20, 'https://via.placeholder.com/800x600.png/00dd88?text=ea', 4, '2022-02-25 10:02:28', '2022-02-25 10:02:28'),
(292, 20, 'https://via.placeholder.com/800x600.png/00ee66?text=debitis', 1, '2022-02-25 10:02:28', '2022-02-25 10:02:28'),
(293, 9, 'https://via.placeholder.com/800x600.png/00aa33?text=sit', 5, '2022-02-25 10:02:28', '2022-02-25 10:02:28'),
(294, 18, 'https://via.placeholder.com/800x600.png/0055ee?text=doloremque', 1, '2022-02-25 10:02:28', '2022-02-25 10:02:28'),
(295, 13, 'https://via.placeholder.com/800x600.png/0055aa?text=minus', 3, '2022-02-25 10:02:28', '2022-02-25 10:02:28'),
(296, 9, 'https://via.placeholder.com/800x600.png/001155?text=dolor', 4, '2022-02-25 10:02:28', '2022-02-25 10:02:28'),
(297, 1, 'https://via.placeholder.com/800x600.png/00ee77?text=officia', 3, '2022-02-25 10:02:28', '2022-02-25 10:02:28'),
(298, 18, 'https://via.placeholder.com/800x600.png/003322?text=iure', 5, '2022-02-25 10:02:28', '2022-02-25 10:02:28'),
(299, 14, 'https://via.placeholder.com/800x600.png/003399?text=itaque', 3, '2022-02-25 10:02:28', '2022-02-25 10:02:28'),
(300, 7, 'https://via.placeholder.com/800x600.png/00ff00?text=blanditiis', 3, '2022-02-25 10:02:28', '2022-02-25 10:02:28');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Adah Bogan', 'mpouros@example.net', '2022-02-25 10:02:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'XtIuKOkcCt', '2022-02-25 10:02:27', '2022-02-25 10:02:27'),
(2, 'Lucious Fahey DVM', 'bartoletti.myriam@example.com', '2022-02-25 10:02:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'E94VnK4uDP', '2022-02-25 10:02:27', '2022-02-25 10:02:27');

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `items`
--
ALTER TABLE `items`
  ADD CONSTRAINT `items_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);

--
-- Filtros para la tabla `screenshots`
--
ALTER TABLE `screenshots`
  ADD CONSTRAINT `screenshots_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
