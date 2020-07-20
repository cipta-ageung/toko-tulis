-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 20 Jul 2020 pada 14.20
-- Versi server: 10.4.13-MariaDB
-- Versi PHP: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `toko_tulis_db`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `cart`
--

CREATE TABLE `cart` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_color` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `user_email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `cart`
--

INSERT INTO `cart` (`id`, `product_id`, `product_name`, `product_code`, `product_color`, `size`, `price`, `quantity`, `user_email`, `session_id`, `created_at`, `updated_at`) VALUES
(6, 3, 'Elegant Green Formal Shirt', 'EGFS003', 'Green', 'Small', '1250', 1, '', 'CeDYyr6IKmAl4O6g3eFFcCSRcHVtxREOJSAkJzbO', NULL, NULL),
(7, 5, 'Graphite Grey formal Shirt', 'GGFS005', 'Grey', 'Small', '1050', 1, 'cipta_ageung@yahoo.co.id', 'wGvZhs40q0mKbPSxgBAMRgIglqgNXOtAQOMfAfoz', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `Parent_id` int(11) NOT NULL DEFAULT 0,
  `Name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Status` tinyint(4) NOT NULL DEFAULT 1,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `categories`
--

INSERT INTO `categories` (`id`, `Parent_id`, `Name`, `Description`, `url`, `Status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 0, 'Alat Tulis', 'Alat Tulis Category', 'alat-tulis', 1, NULL, '2018-08-25 04:25:45', '2020-07-11 22:47:27'),
(2, 1, 'Pensil', 'Pensil', 'pensil', 1, NULL, '2018-08-25 04:26:13', '2020-07-11 22:50:13'),
(3, 0, 'Seragam', 'Seragam', 'seragam', 1, NULL, '2018-08-25 04:26:34', '2020-07-11 22:48:04'),
(4, 3, 'Baju', 'Baju', 'baju', 1, NULL, '2018-08-25 04:26:51', '2020-07-11 22:51:10'),
(5, 1, 'Pulpen', 'Pulpen', 'pulpen', 1, NULL, '2018-08-25 08:58:58', '2020-07-11 22:51:37'),
(9, 3, 'Celana', 'Celana', 'celana', 1, NULL, '2018-08-25 09:47:04', '2020-07-11 22:52:03'),
(11, 0, 'Aksesoris', 'Aksesoris', 'aksesoris', 1, NULL, '2018-12-11 09:52:59', '2020-07-11 22:48:39'),
(12, 11, 'Dasi', 'Dasi', 'dasi', 1, NULL, '2018-12-11 09:53:41', '2020-07-11 22:53:12'),
(14, 11, 'Topi', 'Topi', 'topi', 1, NULL, '2018-12-11 09:56:31', '2020-07-11 22:53:33'),
(24, 1, 'Buku', 'Buku', 'buku', 1, NULL, '2020-07-11 23:48:32', '2020-07-11 23:48:32'),
(25, 1, 'Tipe-X', 'Tipe=X', 'tipe-x', 1, NULL, '2020-07-11 23:51:33', '2020-07-11 23:51:33'),
(26, 1, 'Crayon', 'Crayon', 'crayon', 1, NULL, '2020-07-11 23:55:19', '2020-07-11 23:55:19'),
(27, 11, 'Ikat Pinggang', 'Ikat Pinggang', 'ikat pinggang', 1, NULL, '2020-07-12 00:41:59', '2020-07-12 00:41:59'),
(28, 11, 'Tas', 'Tas', 'tas', 1, NULL, '2020-07-12 00:44:55', '2020-07-12 00:44:55'),
(29, 11, 'Sepatu', 'Sepatu', 'sepatu', 1, NULL, '2020-07-12 00:45:14', '2020-07-12 00:45:14');

-- --------------------------------------------------------

--
-- Struktur dari tabel `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `country_code` varchar(2) NOT NULL DEFAULT '',
  `country_name` varchar(100) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `countries`
--

INSERT INTO `countries` (`id`, `country_code`, `country_name`) VALUES
(1, 'AF', 'Afghanistan'),
(2, 'AL', 'Albania'),
(3, 'DZ', 'Algeria'),
(4, 'DS', 'American Samoa'),
(5, 'AD', 'Andorra'),
(6, 'AO', 'Angola'),
(7, 'AI', 'Anguilla'),
(8, 'AQ', 'Antarctica'),
(9, 'AG', 'Antigua and Barbuda'),
(10, 'AR', 'Argentina'),
(11, 'AM', 'Armenia'),
(12, 'AW', 'Aruba'),
(13, 'AU', 'Australia'),
(14, 'AT', 'Austria'),
(15, 'AZ', 'Azerbaijan'),
(16, 'BS', 'Bahamas'),
(17, 'BH', 'Bahrain'),
(18, 'BD', 'Bangladesh'),
(19, 'BB', 'Barbados'),
(20, 'BY', 'Belarus'),
(21, 'BE', 'Belgium'),
(22, 'BZ', 'Belize'),
(23, 'BJ', 'Benin'),
(24, 'BM', 'Bermuda'),
(25, 'BT', 'Bhutan'),
(26, 'BO', 'Bolivia'),
(27, 'BA', 'Bosnia and Herzegovina'),
(28, 'BW', 'Botswana'),
(29, 'BV', 'Bouvet Island'),
(30, 'BR', 'Brazil'),
(31, 'IO', 'British Indian Ocean Territory'),
(32, 'BN', 'Brunei Darussalam'),
(33, 'BG', 'Bulgaria'),
(34, 'BF', 'Burkina Faso'),
(35, 'BI', 'Burundi'),
(36, 'KH', 'Cambodia'),
(37, 'CM', 'Cameroon'),
(38, 'CA', 'Canada'),
(39, 'CV', 'Cape Verde'),
(40, 'KY', 'Cayman Islands'),
(41, 'CF', 'Central African Republic'),
(42, 'TD', 'Chad'),
(43, 'CL', 'Chile'),
(44, 'CN', 'China'),
(45, 'CX', 'Christmas Island'),
(46, 'CC', 'Cocos (Keeling) Islands'),
(47, 'CO', 'Colombia'),
(48, 'KM', 'Comoros'),
(49, 'CG', 'Congo'),
(50, 'CK', 'Cook Islands'),
(51, 'CR', 'Costa Rica'),
(52, 'HR', 'Croatia (Hrvatska)'),
(53, 'CU', 'Cuba'),
(54, 'CY', 'Cyprus'),
(55, 'CZ', 'Czech Republic'),
(56, 'DK', 'Denmark'),
(57, 'DJ', 'Djibouti'),
(58, 'DM', 'Dominica'),
(59, 'DO', 'Dominican Republic'),
(60, 'TP', 'East Timor'),
(61, 'EC', 'Ecuador'),
(62, 'EG', 'Egypt'),
(63, 'SV', 'El Salvador'),
(64, 'GQ', 'Equatorial Guinea'),
(65, 'ER', 'Eritrea'),
(66, 'EE', 'Estonia'),
(67, 'ET', 'Ethiopia'),
(68, 'FK', 'Falkland Islands (Malvinas)'),
(69, 'FO', 'Faroe Islands'),
(70, 'FJ', 'Fiji'),
(71, 'FI', 'Finland'),
(72, 'FR', 'France'),
(73, 'FX', 'France, Metropolitan'),
(74, 'GF', 'French Guiana'),
(75, 'PF', 'French Polynesia'),
(76, 'TF', 'French Southern Territories'),
(77, 'GA', 'Gabon'),
(78, 'GM', 'Gambia'),
(79, 'GE', 'Georgia'),
(80, 'DE', 'Germany'),
(81, 'GH', 'Ghana'),
(82, 'GI', 'Gibraltar'),
(83, 'GK', 'Guernsey'),
(84, 'GR', 'Greece'),
(85, 'GL', 'Greenland'),
(86, 'GD', 'Grenada'),
(87, 'GP', 'Guadeloupe'),
(88, 'GU', 'Guam'),
(89, 'GT', 'Guatemala'),
(90, 'GN', 'Guinea'),
(91, 'GW', 'Guinea-Bissau'),
(92, 'GY', 'Guyana'),
(93, 'HT', 'Haiti'),
(94, 'HM', 'Heard and Mc Donald Islands'),
(95, 'HN', 'Honduras'),
(96, 'HK', 'Hong Kong'),
(97, 'HU', 'Hungary'),
(98, 'IS', 'Iceland'),
(99, 'IN', 'India'),
(100, 'IM', 'Isle of Man'),
(101, 'ID', 'Indonesia'),
(102, 'IR', 'Iran (Islamic Republic of)'),
(103, 'IQ', 'Iraq'),
(104, 'IE', 'Ireland'),
(105, 'IL', 'Israel'),
(106, 'IT', 'Italy'),
(107, 'CI', 'Ivory Coast'),
(108, 'JE', 'Jersey'),
(109, 'JM', 'Jamaica'),
(110, 'JP', 'Japan'),
(111, 'JO', 'Jordan'),
(112, 'KZ', 'Kazakhstan'),
(113, 'KE', 'Kenya'),
(114, 'KI', 'Kiribati'),
(115, 'KP', 'Korea, Democratic People\'s Republic of'),
(116, 'KR', 'Korea, Republic of'),
(117, 'XK', 'Kosovo'),
(118, 'KW', 'Kuwait'),
(119, 'KG', 'Kyrgyzstan'),
(120, 'LA', 'Lao People\'s Democratic Republic'),
(121, 'LV', 'Latvia'),
(122, 'LB', 'Lebanon'),
(123, 'LS', 'Lesotho'),
(124, 'LR', 'Liberia'),
(125, 'LY', 'Libyan Arab Jamahiriya'),
(126, 'LI', 'Liechtenstein'),
(127, 'LT', 'Lithuania'),
(128, 'LU', 'Luxembourg'),
(129, 'MO', 'Macau'),
(130, 'MK', 'Macedonia'),
(131, 'MG', 'Madagascar'),
(132, 'MW', 'Malawi'),
(133, 'MY', 'Malaysia'),
(134, 'MV', 'Maldives'),
(135, 'ML', 'Mali'),
(136, 'MT', 'Malta'),
(137, 'MH', 'Marshall Islands'),
(138, 'MQ', 'Martinique'),
(139, 'MR', 'Mauritania'),
(140, 'MU', 'Mauritius'),
(141, 'TY', 'Mayotte'),
(142, 'MX', 'Mexico'),
(143, 'FM', 'Micronesia, Federated States of'),
(144, 'MD', 'Moldova, Republic of'),
(145, 'MC', 'Monaco'),
(146, 'MN', 'Mongolia'),
(147, 'ME', 'Montenegro'),
(148, 'MS', 'Montserrat'),
(149, 'MA', 'Morocco'),
(150, 'MZ', 'Mozambique'),
(151, 'MM', 'Myanmar'),
(152, 'NA', 'Namibia'),
(153, 'NR', 'Nauru'),
(154, 'NP', 'Nepal'),
(155, 'NL', 'Netherlands'),
(156, 'AN', 'Netherlands Antilles'),
(157, 'NC', 'New Caledonia'),
(158, 'NZ', 'New Zealand'),
(159, 'NI', 'Nicaragua'),
(160, 'NE', 'Niger'),
(161, 'NG', 'Nigeria'),
(162, 'NU', 'Niue'),
(163, 'NF', 'Norfolk Island'),
(164, 'MP', 'Northern Mariana Islands'),
(165, 'NO', 'Norway'),
(166, 'OM', 'Oman'),
(167, 'PK', 'Pakistan'),
(168, 'PW', 'Palau'),
(169, 'PS', 'Palestine'),
(170, 'PA', 'Panama'),
(171, 'PG', 'Papua New Guinea'),
(172, 'PY', 'Paraguay'),
(173, 'PE', 'Peru'),
(174, 'PH', 'Philippines'),
(175, 'PN', 'Pitcairn'),
(176, 'PL', 'Poland'),
(177, 'PT', 'Portugal'),
(178, 'PR', 'Puerto Rico'),
(179, 'QA', 'Qatar'),
(180, 'RE', 'Reunion'),
(181, 'RO', 'Romania'),
(182, 'RU', 'Russian Federation'),
(183, 'RW', 'Rwanda'),
(184, 'KN', 'Saint Kitts and Nevis'),
(185, 'LC', 'Saint Lucia'),
(186, 'VC', 'Saint Vincent and the Grenadines'),
(187, 'WS', 'Samoa'),
(188, 'SM', 'San Marino'),
(189, 'ST', 'Sao Tome and Principe'),
(190, 'SA', 'Saudi Arabia'),
(191, 'SN', 'Senegal'),
(192, 'RS', 'Serbia'),
(193, 'SC', 'Seychelles'),
(194, 'SL', 'Sierra Leone'),
(195, 'SG', 'Singapore'),
(196, 'SK', 'Slovakia'),
(197, 'SI', 'Slovenia'),
(198, 'SB', 'Solomon Islands'),
(199, 'SO', 'Somalia'),
(200, 'ZA', 'South Africa'),
(201, 'GS', 'South Georgia South Sandwich Islands'),
(202, 'SS', 'South Sudan'),
(203, 'ES', 'Spain'),
(204, 'LK', 'Sri Lanka'),
(205, 'SH', 'St. Helena'),
(206, 'PM', 'St. Pierre and Miquelon'),
(207, 'SD', 'Sudan'),
(208, 'SR', 'Suriname'),
(209, 'SJ', 'Svalbard and Jan Mayen Islands'),
(210, 'SZ', 'Swaziland'),
(211, 'SE', 'Sweden'),
(212, 'CH', 'Switzerland'),
(213, 'SY', 'Syrian Arab Republic'),
(214, 'TW', 'Taiwan'),
(215, 'TJ', 'Tajikistan'),
(216, 'TZ', 'Tanzania, United Republic of'),
(217, 'TH', 'Thailand'),
(218, 'TG', 'Togo'),
(219, 'TK', 'Tokelau'),
(220, 'TO', 'Tonga'),
(221, 'TT', 'Trinidad and Tobago'),
(222, 'TN', 'Tunisia'),
(223, 'TR', 'Turkey'),
(224, 'TM', 'Turkmenistan'),
(225, 'TC', 'Turks and Caicos Islands'),
(226, 'TV', 'Tuvalu'),
(227, 'UG', 'Uganda'),
(228, 'UA', 'Ukraine'),
(229, 'AE', 'United Arab Emirates'),
(230, 'GB', 'United Kingdom'),
(231, 'US', 'United States'),
(232, 'UM', 'United States minor outlying islands'),
(233, 'UY', 'Uruguay'),
(234, 'UZ', 'Uzbekistan'),
(235, 'VU', 'Vanuatu'),
(236, 'VA', 'Vatican City State'),
(237, 'VE', 'Venezuela'),
(238, 'VN', 'Vietnam'),
(239, 'VG', 'Virgin Islands (British)'),
(240, 'VI', 'Virgin Islands (U.S.)'),
(241, 'WF', 'Wallis and Futuna Islands'),
(242, 'EH', 'Western Sahara'),
(243, 'YE', 'Yemen'),
(244, 'ZR', 'Zaire'),
(245, 'ZM', 'Zambia'),
(246, 'ZW', 'Zimbabwe');

-- --------------------------------------------------------

--
-- Struktur dari tabel `coupons`
--

CREATE TABLE `coupons` (
  `id` int(10) UNSIGNED NOT NULL,
  `coupon_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` int(11) NOT NULL,
  `amount_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiry_date` date NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `delivery_addresses`
--

CREATE TABLE `delivery_addresses` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `pincode` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `delivery_addresses`
--

INSERT INTO `delivery_addresses` (`id`, `user_id`, `user_email`, `name`, `address`, `city`, `state`, `country`, `pincode`, `mobile`, `created_at`, `updated_at`) VALUES
(1, 1, 'amaanchaudhary48@gmail.com', 'Alwaz Azhar', 'walton road', 'lahore', 'punjab', 'Pakistan', '54000', '11323233223', '2018-12-09 19:49:10', '2018-12-09 14:49:10'),
(2, 10, 'alwaz@gmail.com', 'Alwaz', 'test', 'test', 'test', 'Azerbaijan', '6363', '2627633', '2018-11-29 11:15:08', '2018-11-29 06:15:08'),
(3, 9, 'kashif@gmail.com', 'kashif', 'E-417/a peer colony st# 1', 'Lahore', 'Punjab', 'Pakistan', '54000', '03030961254', '2018-12-08 08:34:35', '2018-12-08 03:34:35'),
(4, 7, 'amaanchaudhary@gmail.com', 'Amaan Azhar', 'test123', 'lahore', 'Punjab', 'Pakistan', '54000', '99173971393', '2018-12-11 12:54:32', '2018-12-11 07:54:32'),
(5, 11, 'ali@gmail.com', 'ali', 'kdn', 'kdnwk', 'nsqks', 'Kazakhstan', 'ldn219', '8127', '2018-12-01 18:45:37', '2018-12-01 13:45:37'),
(6, 13, 'teguhdumkom@gmail.com', 'teguh', 'jalan lettunapis', 'tangerang', 'Banten', 'Indonesia', '1515151', '081286115887', '2020-04-12 03:28:30', '2020-04-12 03:28:30'),
(7, 14, 'cipta_ageung@yahoo.co.id', 'cipta ageung mahdiar', 'depok', 'depok', 'jawa barat', 'Indonesia', '123123123', '081806003073', '2020-07-12 04:35:39', '2020-07-11 21:35:39'),
(8, 15, 'Dennymuslimmuhararan@gmail.com', 'Denny Muslim Muhararan', 'depok', 'depok', 'jawa barat', 'Indonesia', '12345566788', '082299217725', '2020-07-12 10:29:38', '2020-07-12 03:29:38'),
(9, 16, 'meidasetyarinidewi@gmail.com', 'Dennymuslimmuhararan@gmail.com', 'depok', 'depok', 'jawa barat', 'Indonesia', '12345566788', '082299217725', '2020-07-12 03:33:19', '2020-07-12 03:33:19');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_08_18_082027_create_category_table', 2),
(4, '2018_08_21_173456_create_products_table', 3),
(5, '2018_08_24_061945_create_products_attributes_table', 4),
(6, '2018_10_10_072850_create_cart_table', 5),
(7, '2018_10_20_120758_create_coupons_table', 6),
(8, '2018_12_01_114714_create_orders_table', 7),
(9, '2018_12_01_120120_create_orders_products_table', 8);

-- --------------------------------------------------------

--
-- Struktur dari tabel `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pincode` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_charges` float NOT NULL,
  `coupon_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `coupon_amount` float NOT NULL,
  `order_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_method` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `grand_total` float NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `user_email`, `name`, `address`, `city`, `state`, `pincode`, `country`, `mobile`, `shipping_charges`, `coupon_code`, `coupon_amount`, `order_status`, `payment_method`, `grand_total`, `created_at`, `updated_at`) VALUES
(1, 13, 'teguhdumkom@gmail.com', 'teguh', 'jalan lettunapis', 'tangerang', 'Banten', '1515151', 'Indonesia', '081286115887', 0, '', 0, 'New', 'paypal', 1450, '2020-04-12 03:28:58', '2020-04-12 03:28:58'),
(2, 13, 'teguhdumkom@gmail.com', 'teguh', 'jalan lettunapis', 'tangerang', 'Banten', '1515151', 'Indonesia', '081286115887', 0, '', 0, 'New', 'COD', 1450, '2020-04-12 03:29:30', '2020-04-12 03:29:30'),
(3, 14, 'cipta_ageung@yahoo.co.id', 'cipta ageung mahdiar', 'depok', 'depok', 'jawa barat', '123123123', 'Indonesia', '081806003073', 0, '', 0, 'New', 'COD', 1100, '2020-07-09 04:43:20', '2020-07-09 04:43:20'),
(4, 14, 'cipta_ageung@yahoo.co.id', 'cipta ageung mahdiar', 'depok', 'depok', 'jawa barat', '123123123', 'Indonesia', '081806003073', 0, '', 0, 'New', 'COD', 6750, '2020-07-09 05:00:05', '2020-07-09 05:00:05'),
(11, 15, 'Dennymuslimmuhararan@gmail.com', 'Denny Muslim Muhararan', 'depok', 'depok', 'jawa barat', '12345566788', 'Indonesia', '082299217725', 0, '', 0, 'New', 'Bank Transfer', 20000, '2020-07-12 03:26:06', '2020-07-12 03:26:06'),
(12, 15, 'Dennymuslimmuhararan@gmail.com', 'Denny Muslim Muhararan', 'depok', 'depok', 'jawa barat', '12345566788', 'Indonesia', '082299217725', 0, '', 0, 'New', 'Bank Transfer', 20000, '2020-07-12 03:29:50', '2020-07-12 03:29:50'),
(13, 16, 'meidasetyarinidewi@gmail.com', 'Dennymuslimmuhararan@gmail.com', 'depok', 'depok', 'jawa barat', '12345566788', 'Indonesia', '082299217725', 0, '', 0, 'New', 'COD', 100000, '2020-07-12 03:33:28', '2020-07-12 03:33:28');

-- --------------------------------------------------------

--
-- Struktur dari tabel `orders_products`
--

CREATE TABLE `orders_products` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` float NOT NULL,
  `product_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_qty` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `orders_products`
--

INSERT INTO `orders_products` (`id`, `order_id`, `user_id`, `product_id`, `product_code`, `product_name`, `product_size`, `product_color`, `product_price`, `product_image`, `product_qty`, `created_at`, `updated_at`) VALUES
(1, 1, 13, 10, 'FBLS004', 'New HandMade Leather Shoes', '8', 'Brown', 1450, '', 1, '2020-04-12 03:28:58', '2020-04-12 03:28:58'),
(2, 3, 14, 5, 'GGFS006', 'Graphite Grey formal Shirt', 'Medium', 'Grey', 1100, '', 1, '2020-07-09 04:43:20', '2020-07-09 04:43:20'),
(3, 4, 14, 2, 'RCTS002', 'Red Casual T-Shirts', 'Small', 'Red', 750, '', 9, '2020-07-09 05:00:05', '2020-07-09 05:00:05'),
(4, 5, 15, 1, 'WPCTS002', 'Pensil Fabercastel', 'Medium', 'Hitam', 750, '', 1, '2020-07-12 01:11:54', '2020-07-12 01:11:54'),
(5, 6, 15, 1, 'WPCTS002', 'Pensil Fabercastel', 'Medium', 'Hitam', 750, '', 1, '2020-07-12 01:15:40', '2020-07-12 01:15:40'),
(6, 8, 15, 1, 'WPCTS004', 'Pensil Fabercastel', 'Extra Large', 'Hitam', 900, '', 1, '2020-07-12 02:22:05', '2020-07-12 02:22:05'),
(7, 10, 15, 1, 'WPCTS001', 'Pensil Fabercastel', 'Satuan', 'Hitam', 10000, '', 2, '2020-07-12 03:19:10', '2020-07-12 03:19:10'),
(8, 11, 15, 1, 'WPCTS001', 'Pensil Fabercastel', 'Satuan', 'Hitam', 10000, '', 2, '2020-07-12 03:26:06', '2020-07-12 03:26:06'),
(9, 12, 15, 1, 'WPCTS001', 'Pensil Fabercastel', 'Satuan', 'Hitam', 10000, '', 2, '2020-07-12 03:29:50', '2020-07-12 03:29:50'),
(10, 13, 16, 1, 'WPCTS001', 'Pensil Fabercastel', 'Satuan', 'Hitam', 10000, '', 10, '2020-07-12 03:33:28', '2020-07-12 03:33:28');

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_color` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `care` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `products`
--

INSERT INTO `products` (`id`, `category_id`, `product_name`, `product_code`, `product_color`, `description`, `care`, `price`, `image`, `created_at`, `updated_at`) VALUES
(1, 2, 'Pensil Fabercastel', 'WPCTS001', 'Hitam', 'Pensil Fabercastel', 'Kayu', 10000.00, '64678.PNG', '2018-12-11 08:14:34', '2020-07-11 23:46:23'),
(3, 5, 'Pulpen Joyco', 'Joyco-01', 'Hitam', 'Pulpen Joyco', 'Plastik', 12500.00, '59943.PNG', '2018-12-11 08:41:57', '2020-07-11 23:42:23'),
(11, 4, 'Seragam Sekolah Dasar', 'SSD-01', 'Putih Merah', 'Seragam Sekolah Dasar', 'Kain Combed 30', 100000.00, '18909.PNG', '2020-07-11 23:10:51', '2020-07-12 03:58:52'),
(12, 4, 'Seragam Sekolah SMP', 'SSS-01', 'Putih Biru', 'Seragam Sekolah SMP', 'Kain Combed 30', 125000.00, '31370.PNG', '2020-07-11 23:40:14', '2020-07-11 23:40:36'),
(13, 4, 'Seragam Sekolah SMA', 'SSA-01', 'Putih Abu', 'Seragam Sekolah SMA', 'Kain combed 30', 150000.00, '48993.PNG', '2020-07-11 23:41:30', '2020-07-11 23:41:30'),
(14, 5, 'Pulpen Queen', 'Queen-01', 'Hitam', 'Pulpen Queen', 'Plastik', 15000.00, '82643.PNG', '2020-07-11 23:44:06', '2020-07-11 23:44:29'),
(15, 5, 'Pulpen Standard', 'Standard-01', 'Hitam', 'Pulpen Standard', 'Plastik', 7000.00, '98122.PNG', '2020-07-11 23:45:52', '2020-07-11 23:45:52'),
(16, 2, 'Pensil Mekanik', 'PM-01', 'Hitam', 'Pensil Mekanik', 'Kayu', 15000.00, '71624.PNG', '2020-07-11 23:47:28', '2020-07-11 23:47:28'),
(17, 24, 'Buku Tulis Sinar Dunia', 'SIDU-01', 'Putih', 'Buku Tulis Sinar Dunia', 'Kertas', 25000.00, '85433.PNG', '2020-07-11 23:49:41', '2020-07-11 23:49:41'),
(18, 24, 'Buku Gambar A4', 'BG-A4', 'Putih', 'Buku Gambar A4', 'Kertas', 8000.00, '94324.PNG', '2020-07-11 23:50:49', '2020-07-11 23:50:49'),
(19, 25, 'Tipe-X Kenko', 'KenkoTPx', 'Putih', 'Tipe-X Kenko', 'Cair', 5000.00, '68626.PNG', '2020-07-11 23:53:14', '2020-07-11 23:53:14'),
(20, 25, 'Tipe-X ZX', 'TZX-01', 'Putih', 'Tipe-X ZX', 'Cair kertas', 10000.00, '84191.PNG', '2020-07-11 23:54:38', '2020-07-11 23:54:38'),
(21, 26, 'Crayon TITI', 'CR01', 'Mejikuhibiniu', 'Crayon TITI', 'Pewarna alami', 35000.00, '89528.PNG', '2020-07-11 23:57:17', '2020-07-11 23:57:17'),
(22, 2, 'Pensil Joyko', 'JoycoPN-01', 'Hitam', 'Pensil Joyko', 'Kayu', 10000.00, '64934.PNG', '2020-07-12 00:00:34', '2020-07-12 00:00:34'),
(23, 2, 'Pensil Warna', 'PW-01', 'Mejikuhibiniu', 'Pensil Warna', 'Kayu Warna alami', 25000.00, '398.PNG', '2020-07-12 00:01:15', '2020-07-12 00:01:15'),
(24, 9, 'Celana Seragam SD Pendek', 'CSD-01', 'Merah', 'Celana Seragam SD Pendek', 'Kain combed 20', 55000.00, '53031.PNG', '2020-07-12 00:02:17', '2020-07-12 00:02:17'),
(25, 9, 'Celana Seragam SD Panjang', 'CSD-02', 'Merah', 'Celana Seragam SD Panjang', 'kain combed 20', 60000.00, '96682.PNG', '2020-07-12 00:03:17', '2020-07-12 00:03:17'),
(26, 9, 'Celana Pramuka Pendek', 'CPD-01', 'Coklat', 'Celana Pramuka Pendek', 'kain combed 20', 55000.00, '76931.PNG', '2020-07-12 00:04:20', '2020-07-12 00:04:20'),
(27, 9, 'Celana Pramuka Panjang', 'CPD-02', 'Coklat', 'Celana Pramuka Panjang', 'kain combed 20', 60000.00, '58204.PNG', '2020-07-12 00:05:08', '2020-07-12 00:05:08'),
(28, 9, 'Celana Seragam SMP', 'CSS-01', 'Biru', 'Celana Seragam SMP', 'kain combed 20', 55000.00, '6922.PNG', '2020-07-12 00:05:53', '2020-07-12 00:05:53'),
(29, 9, 'Celana Seragam SMA', 'CSA-01', 'Abu-Abu', 'Celana Seragam SMA', 'kain combed 20', 60000.00, '97168.PNG', '2020-07-12 00:06:45', '2020-07-12 00:06:45'),
(30, 4, 'Seragam Batik SD', 'SBD=01', 'Batik', 'Seragam Batik SD', 'kain combed 20', 55000.00, '84921.PNG', '2020-07-12 00:07:50', '2020-07-12 00:07:50'),
(31, 4, 'Seragam Pramuka', 'SPR-01', 'Coklat', 'Seragam Pramuka', 'kain combed 20', 50000.00, '82996.PNG', '2020-07-12 00:08:48', '2020-07-12 00:08:48'),
(32, 26, 'Crayon TITI 24', 'CR02', 'Mejikuhibiniu', 'Crayon TITI 24', 'Kayu Pewarna alami', 45000.00, '31930.PNG', '2020-07-12 00:11:36', '2020-07-12 00:11:36'),
(33, 12, 'Dasi Sekolah SD', 'DSD-01', 'MERAH', 'Dasi Sekolah SD', 'Kain', 15000.00, '80345.PNG', '2020-07-12 00:13:07', '2020-07-12 00:13:07'),
(34, 12, 'Dasi Sekolah SMP', 'DSD-02', 'Biru', 'Dasi Sekolah SMP', 'Kain', 20000.00, '78738.PNG', '2020-07-12 00:13:53', '2020-07-12 00:13:53'),
(35, 12, 'Dasi Sekolah SMA', 'DSD-03', 'Abu-Abu', 'Dasi Sekolah SMA', 'Kain', 25000.00, '96316.PNG', '2020-07-12 00:14:30', '2020-07-12 00:14:30'),
(36, 14, 'Topi Sekolah SD', 'TSD-01', 'Putih Merah', 'Topi Sekolah Sd', 'Kain', 15000.00, '34028.PNG', '2020-07-12 00:15:22', '2020-07-12 00:15:22'),
(37, 14, 'Topi Sekolah SMP', 'TSD-02', 'Putih Biru', 'Topi Sekolah SMP', 'Kain', 20000.00, '54011.PNG', '2020-07-12 00:16:10', '2020-07-12 00:16:10'),
(38, 14, 'Topi Sekolah SMA', 'TSD-03', 'Abu-Abu', 'Topi Sekolah SMA', 'Kain', 25000.00, '57078.PNG', '2020-07-12 00:16:54', '2020-07-12 00:16:54'),
(39, 14, 'Topi Pramuka Laki', 'TPP-01', 'Coklat', 'Topi Pramuka', 'Kain', 25000.00, '40320.PNG', '2020-07-12 00:17:38', '2020-07-12 00:26:44'),
(40, 14, 'Topi Pramuka Wanita', 'TPP-01', 'Coklat', 'Topi Pramuka Wanita', 'kain', 25000.00, '38610.PNG', '2020-07-12 00:41:29', '2020-07-12 00:41:29'),
(41, 27, 'Ikat Pinggang SD', 'IPSD-01', 'Hitam', 'Ikat Pinggang SD', 'serabut keras', 25000.00, '36099.PNG', '2020-07-12 00:43:06', '2020-07-12 00:43:06'),
(42, 27, 'Ikat Pinggang SMP', 'IPSM-01', 'Hitam', 'Ikat Pinggang SMP', 'serabut keras', 30000.00, '44720.PNG', '2020-07-12 00:43:54', '2020-07-12 00:43:54'),
(43, 27, 'Ikat Pinggang SMA', 'IPSA-01', 'Hitam', 'Ikat Pinggang SMA', 'serabut keras', 35000.00, '82165.PNG', '2020-07-12 00:44:38', '2020-07-12 00:44:38'),
(44, 28, 'Tas Anak-Anak', 'TAA-01', 'Merah', 'Tas Anak-Anak', 'Polyster', 125000.00, '2141.PNG', '2020-07-12 00:46:34', '2020-07-12 00:46:34'),
(45, 28, 'Tas Remaja', 'TRJ-01', 'Merah Jambu', 'Tas Remaja', 'Polyster', 150000.00, '55386.PNG', '2020-07-12 00:47:20', '2020-07-12 00:47:20'),
(46, 28, 'Tas Kerja Pria', 'TKP-01', 'Hitam', 'Tas Kerja Pria', 'Polyster', 200000.00, '58211.PNG', '2020-07-12 00:48:08', '2020-07-12 00:48:08'),
(47, 28, 'Tas Kerja Wanita', 'TKW-01', 'Abu Metalik', 'Tas Kerja Wanita', 'Polyster', 200000.00, '73575.PNG', '2020-07-12 00:48:55', '2020-07-12 00:48:55'),
(48, 29, 'Sepatu Sekolah', 'SSKL-01', 'Hitam Putih', 'Sepatu Sekolah Anak', 'Semi Kulit', 150000.00, '96076.PNG', '2020-07-12 00:49:46', '2020-07-12 00:52:17'),
(49, 29, 'Sepatu Kerja Pria', 'SKP-01', 'Hitam', 'Sepatu Kerja Pria', 'kulit', 250000.00, '39653.PNG', '2020-07-12 00:50:31', '2020-07-12 00:50:31'),
(50, 29, 'Sepatu Kerja Wanita', 'SKW-01', 'Hitam', 'Sepatu Kerja Wanita', 'kulit', 300000.00, '99240.PNG', '2020-07-12 00:51:13', '2020-07-12 00:51:13');

-- --------------------------------------------------------

--
-- Struktur dari tabel `products_attributes`
--

CREATE TABLE `products_attributes` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `sku` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `stock` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `products_attributes`
--

INSERT INTO `products_attributes` (`id`, `product_id`, `sku`, `size`, `price`, `stock`, `created_at`, `updated_at`) VALUES
(1, 1, 'WPCTS001', 'Satuan', 10000.00, 5, '2018-12-11 08:17:57', '2018-12-11 08:17:57'),
(3, 3, 'Joyco-01', 'Satuan', 12500.00, 100, '2020-07-12 10:54:03', '2020-07-12 10:54:03'),
(11, 11, 'SSD-01', 'Satuan', 100000.00, 100, '2020-07-12 10:56:52', '2020-07-12 10:56:52'),
(12, 12, 'SSS-01', 'Satuan', 125000.00, 100, '2020-07-12 11:01:54', '2020-07-12 11:01:54'),
(13, 13, 'SSA-01', 'Satuan', 150000.00, 100, '2020-07-12 11:04:24', '2020-07-12 11:04:24'),
(14, 14, 'Queen-01', 'Pack', 15000.00, 100, '2020-07-12 11:08:09', '2020-07-12 11:08:09'),
(15, 15, 'Standard-01', 'Pack', 7000.00, 100, '2020-07-12 11:09:25', '2020-07-12 11:09:25'),
(16, 16, 'PM-01', 'Pack', 15000.00, 100, '2020-07-12 11:10:20', '2020-07-12 11:10:20'),
(17, 17, 'SIDU-01', 'pACK', 25000.00, 100, '2020-07-12 11:11:11', '2020-07-12 11:11:11'),
(18, 18, 'BG-44', 'Satuan', 8000.00, 100, '2020-07-12 11:12:14', '2020-07-12 11:12:14'),
(19, 19, 'KenkoTPx', 'Satuan', 5000.00, 100, '2020-07-12 11:13:02', '2020-07-12 11:13:02'),
(20, 20, 'TZX-01', 'Satuan', 10000.00, 100, '2020-07-12 11:13:52', '2020-07-12 11:13:52'),
(21, 21, 'CR01', 'Pack', 35000.00, 100, '2020-07-12 11:14:45', '2020-07-12 11:14:45'),
(22, 22, 'JoycoPN-01', 'Pack', 10000.00, 100, '2020-07-12 11:15:37', '2020-07-12 11:15:37'),
(23, 23, 'PW-01', 'Pack', 25000.00, 100, '2020-07-12 11:17:07', '2020-07-12 11:17:07'),
(24, 24, 'CSD-01', 'Satuan', 55000.00, 100, '2020-07-12 11:17:49', '2020-07-12 11:17:49'),
(25, 25, 'CSD-02', 'Satuan', 60000.00, 100, '2020-07-12 11:18:35', '2020-07-12 11:18:35'),
(26, 26, 'CPD-01', 'Satuan', 55000.00, 100, '2020-07-12 11:19:16', '2020-07-12 11:19:16'),
(27, 27, 'CPD-02', 'Satuan', 60000.00, 100, '2020-07-12 11:19:50', '2020-07-12 11:19:50'),
(28, 28, 'CSS-01', 'Satuan', 55000.00, 100, '2020-07-12 11:20:17', '2020-07-12 11:20:17'),
(29, 29, 'CSA-01', 'Satuan', 60000.00, 100, '2020-07-12 11:20:53', '2020-07-12 11:20:53'),
(30, 30, 'SBD=01', 'Satuan', 55000.00, 100, '2020-07-12 11:21:26', '2020-07-12 11:21:26'),
(31, 31, 'SPR-01', 'Satuan', 50000.00, 100, '2020-07-12 11:21:57', '2020-07-12 11:21:57'),
(32, 32, 'CR02', 'Pack', 45000.00, 100, '2020-07-12 11:24:07', '2020-07-12 11:24:07'),
(33, 33, 'DSD-01', 'Satuan', 15000.00, 100, '2020-07-12 11:25:35', '2020-07-12 11:25:35');

-- --------------------------------------------------------

--
-- Struktur dari tabel `products_images`
--

CREATE TABLE `products_images` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pincode` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin` tinyint(1) DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `address`, `city`, `state`, `country`, `pincode`, `mobile`, `email`, `password`, `admin`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Alwaz Azhar', 'walton road', 'lahore', 'punjab', 'Pakistan', '54000', '11323233223', 'amaanchaudhary48@gmail.com', '$2y$10$YSQqQsx7pvOQ/2m3emdstO/OAE2WuMprbMSU5Aw2wST4IN22/POaS', 1, 'FC13Hd7sxMM9lNdi7pM7YzG37rljxUooJzVnIBGNSUaNfdSd7DmTdrn2kfgN', '2018-06-26 06:38:38', '2018-12-09 14:49:10'),
(7, 'Amaan Azhar', 'test123', 'lahore', 'Punjab', 'Pakistan', '54000', '99173971393', 'amaanchaudhary@gmail.com', '$2y$10$vu8e5k9zTcw0GuXVRiHq2ujGp77u0pA2s5F/FDel9D1enshVBFUna', 0, 'ewB3bbXe8Ll494jGom5CR9jCPQVj8t6sPR3oTPSiShZSzPGB8AOsaLsU7B6Q', '2018-11-10 03:19:10', '2018-12-11 07:54:32'),
(8, 'john', '', '', '', '', '', '', 'john48@gmail.com', '$2y$10$6IsSlEdWR7OLxHuaIk/oRONSLOXHxzsMNBkj7YvVWnA4F667mfBvi', NULL, 'MTdft6kP8VokGaUZHjM9grYkVuuiAE3f8Pavo7XvAOu2fe1cyoS6oNJu9LiG', '2018-11-10 03:23:09', '2018-11-10 03:23:09'),
(9, 'kashif', 'E-417/a peer colony st# 1', 'Lahore', 'Punjab', 'Pakistan', '54000', '03030961254', 'kashif@gmail.com', '$2y$10$mybMn6hVx6SidaWfDi/wde6fhslUiDirpW/qs0yrZouKw0tNZg1mW', NULL, 'TlSPViZuvCLagnAWJS2O2iwkzPwch2Cn3227AuWAQJwcyUef1Mm9qOq0k2PD', '2018-11-29 01:11:05', '2018-12-08 03:34:35'),
(10, 'Alwaz', 'test', 'test', 'test', 'Azerbaijan', '6363', '2627633', 'alwaz@gmail.com', '$2y$10$MuE9hAU9kHfRlOKTHupWcOKjEg876VPWTZSchKQGpMdggvNmFKMDq', NULL, 'pONkjIgfdcAMOqdeUJN9ybAMe7uQq57a8LvuU1l1UAWvv2ajUSbNJp0YWB3E', '2018-11-29 02:18:30', '2018-11-29 06:15:08'),
(11, 'ali', 'kdn', 'kdnwk', 'nsqks', 'Kazakhstan', 'ldn219', '8127', 'ali@gmail.com', '$2y$10$pc/YECg8tZB7Y6.znrtXS.dwoS6zAQ5l88eHTdItLg60VK480PsRC', NULL, 'KxNaCTGHVARXng63bOeA1FG8TDWdCJC5t9IOnE34xEXpGSCyTkzdlFcrhSDY', '2018-12-01 05:19:53', '2018-12-01 13:45:37'),
(13, 'teguh', 'jalan lettunapis', 'tangerang', 'Banten', 'Indonesia', '1515151', '081286115887', 'teguhdumkom@gmail.com', '$2y$10$lkcuerWv2dnvpiIIdneZR.j9nnRS33S6cBGw5ZNCzcchbwQH8IjY2', 1, 'raby4Rp6bf4xKs2kpOrVE48T9Veh78u7oPVLZsPNMNterlBu7b2tkI9y5tLv', '2020-04-12 02:48:12', '2020-04-12 03:28:30'),
(14, 'cipta ageung mahdiar', 'depok', 'depok', 'jawa barat', 'Indonesia', '123123123', '081806003073', 'cipta_ageung@yahoo.co.id', '$2y$10$QaDGBdcfOlTHUPQUbkqCpOLllMtilWW55FdGVg/8SLy8XJDBNswqS', NULL, 'ELWkIFCvAwnRqhCx5RipAxoj5WfdoKez5y8v98398Yg6YG5AFmE3C57IoLBh', '2020-07-09 04:42:28', '2020-07-11 21:35:39'),
(15, 'Denny Muslim Muhararan', 'depok', 'depok', 'jawa barat', 'Indonesia', '12345566788', '082299217725', 'Dennymuslimmuhararan@gmail.com', '$2y$10$o.kGn24xqZPUzuHY6gpOfumDIOjnUDYW1kR/abGwsQhJvbE97lb8W', NULL, 'b7uU3Jmh8llSWGabGzwBmRj0eVKjqvqb3WGl5wvd4mOe3TPvo6Co3N2RLQAJ', '2020-07-12 01:02:27', '2020-07-12 03:29:38'),
(16, 'Dennymuslimmuhararan@gmail.com', 'depok', 'depok', 'jawa barat', 'Indonesia', '12345566788', '082299217725', 'meidasetyarinidewi@gmail.com', '$2y$10$xVdGh3VfEqS5ZWKWn7fnF.KpeV8Yfqy9C/Ni.dPp4nKB4JA4G1jqK', NULL, 'eSMmHIMfjdU71oduUdd7VbgSWU1iWFBbSfUqiKfqex67fT0ES9jf2XbAMjXJ', '2020-07-12 03:31:01', '2020-07-12 03:33:19');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `delivery_addresses`
--
ALTER TABLE `delivery_addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `orders_products`
--
ALTER TABLE `orders_products`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `products_attributes`
--
ALTER TABLE `products_attributes`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `products_images`
--
ALTER TABLE `products_images`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT untuk tabel `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;

--
-- AUTO_INCREMENT untuk tabel `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `delivery_addresses`
--
ALTER TABLE `delivery_addresses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `orders_products`
--
ALTER TABLE `orders_products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT untuk tabel `products_attributes`
--
ALTER TABLE `products_attributes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT untuk tabel `products_images`
--
ALTER TABLE `products_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
