-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: May 22, 2019 at 05:08 PM
-- Server version: 5.7.25
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `berean`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2019-05-09 11:25:18', '2019-05-09 15:25:18', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost:8888/Berean', 'yes'),
(2, 'home', 'http://localhost:8888/Berean', 'yes'),
(3, 'blogname', 'Berean Baptist Church', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'rick@reddingdesigns.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'd/m/Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:90:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=7&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:2:{i:0;s:34:\"advanced-custom-fields-pro/acf.php\";i:1;s:48:\"advanced-custom-fields-table-field/acf-table.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'berean-baptist-church', 'yes'),
(41, 'stylesheet', 'berean-baptist-church', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '44719', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', 'America/Toronto', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '7', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '1', 'yes'),
(93, 'initial_db_version', '44719', 'yes'),
(94, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'WPLANG', 'en_CA', 'yes'),
(97, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'sidebars_widgets', 'a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(103, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'cron', 'a:4:{i:1558545918;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1558581918;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1558625138;a:3:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(113, 'theme_mods_twentynineteen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1557415551;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(122, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:4:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/en_CA/wordpress-5.2.1.zip\";s:6:\"locale\";s:5:\"en_CA\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/en_CA/wordpress-5.2.1.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.2.1\";s:7:\"version\";s:5:\"5.2.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.2.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.2.1-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.2.1\";s:7:\"version\";s:5:\"5.2.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";}i:2;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/en_CA/wordpress-5.2.1.zip\";s:6:\"locale\";s:5:\"en_CA\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/en_CA/wordpress-5.2.1.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.2.1\";s:7:\"version\";s:5:\"5.2.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:3;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:63:\"https://downloads.wordpress.org/release/en_CA/wordpress-5.2.zip\";s:6:\"locale\";s:5:\"en_CA\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:63:\"https://downloads.wordpress.org/release/en_CA/wordpress-5.2.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:3:\"5.2\";s:7:\"version\";s:3:\"5.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}}s:12:\"last_checked\";i:1558538756;s:15:\"version_checked\";s:5:\"5.1.1\";s:12:\"translations\";a:0:{}}', 'no'),
(123, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1558537909;s:7:\"checked\";a:1:{s:21:\"berean-baptist-church\";s:5:\"1.0.0\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(124, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1558537909;s:7:\"checked\";a:2:{s:48:\"advanced-custom-fields-table-field/acf-table.php\";s:5:\"1.3.5\";s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"5.8.0\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:1:{s:48:\"advanced-custom-fields-table-field/acf-table.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:48:\"w.org/plugins/advanced-custom-fields-table-field\";s:4:\"slug\";s:34:\"advanced-custom-fields-table-field\";s:6:\"plugin\";s:48:\"advanced-custom-fields-table-field/acf-table.php\";s:11:\"new_version\";s:5:\"1.3.5\";s:3:\"url\";s:65:\"https://wordpress.org/plugins/advanced-custom-fields-table-field/\";s:7:\"package\";s:83:\"https://downloads.wordpress.org/plugin/advanced-custom-fields-table-field.1.3.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:87:\"https://ps.w.org/advanced-custom-fields-table-field/assets/icon-256x256.png?rev=1962986\";s:2:\"1x\";s:87:\"https://ps.w.org/advanced-custom-fields-table-field/assets/icon-128x128.png?rev=1962986\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:89:\"https://ps.w.org/advanced-custom-fields-table-field/assets/banner-772x250.png?rev=1962986\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(132, 'can_compress_scripts', '1', 'no'),
(143, 'current_theme', 'Berean Baptist Church', 'yes'),
(144, 'theme_mods_berean-baptist-church', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(145, 'theme_switched', '', 'yes'),
(150, 'category_children', 'a:0:{}', 'yes'),
(159, 'recently_activated', 'a:0:{}', 'yes'),
(160, 'acf_version', '5.8.0', 'yes'),
(189, 'options_icr', '11', 'no'),
(190, '_options_icr', 'field_5cd6a88016afb', 'no'),
(264, 'new_admin_email', 'rick@reddingdesigns.com', 'yes'),
(284, '_site_transient_timeout_browser_039bb799228119917ad8fb325c2d7cc0', '1559050574', 'no'),
(285, '_site_transient_browser_039bb799228119917ad8fb325c2d7cc0', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"74.0.3729.131\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(286, '_site_transient_timeout_php_check_90e738eca301c4d89366b1a4d15fe37f', '1559050574', 'no'),
(287, '_site_transient_php_check_90e738eca301c4d89366b1a4d15fe37f', 'a:5:{s:19:\"recommended_version\";s:3:\"7.3\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(308, '_transient_timeout_plugin_slugs', '1558550813', 'no'),
(309, '_transient_plugin_slugs', 'a:2:{i:0;s:48:\"advanced-custom-fields-table-field/acf-table.php\";i:1;s:34:\"advanced-custom-fields-pro/acf.php\";}', 'no'),
(312, '_transient_timeout_acf_plugin_updates', '1558624309', 'no'),
(313, '_transient_acf_plugin_updates', 'a:4:{s:7:\"plugins\";a:0:{}s:10:\"expiration\";i:86400;s:6:\"status\";i:1;s:7:\"checked\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"5.8.0\";}}', 'no'),
(314, '_site_transient_timeout_theme_roots', '1558539709', 'no'),
(315, '_site_transient_theme_roots', 'a:1:{s:21:\"berean-baptist-church\";s:7:\"/themes\";}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 3, '_wp_trash_meta_status', 'draft'),
(4, 3, '_wp_trash_meta_time', '1557418575'),
(5, 3, '_wp_desired_post_slug', 'privacy-policy'),
(6, 2, '_wp_trash_meta_status', 'publish'),
(7, 2, '_wp_trash_meta_time', '1557418577'),
(8, 2, '_wp_desired_post_slug', 'sample-page'),
(9, 7, '_edit_lock', '1558457284:1'),
(10, 9, '_edit_last', '1'),
(11, 9, '_edit_lock', '1557571658:1'),
(12, 11, '_wp_attached_file', '2019/05/icr-logo.png'),
(13, 11, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:440;s:6:\"height\";i:215;s:4:\"file\";s:20:\"2019/05/icr-logo.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"icr-logo-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"icr-logo-300x147.png\";s:5:\"width\";i:300;s:6:\"height\";i:147;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(14, 11, '_wp_attachment_image_alt', 'icr-logo'),
(15, 7, '_edit_last', '1'),
(16, 7, 'helpful_link_img', '11'),
(17, 7, '_helpful_link_img', 'field_5cd46ddf8e068'),
(18, 12, 'helpful_link_img', '11'),
(19, 12, '_helpful_link_img', 'field_5cd46ddf8e068'),
(20, 13, '_edit_lock', '1558538184:1'),
(21, 15, '_edit_lock', '1558464182:1'),
(22, 17, '_edit_lock', '1557801093:1'),
(23, 19, '_edit_lock', '1557771411:1'),
(24, 21, '_edit_lock', '1557770998:1'),
(25, 23, '_edit_lock', '1557771390:1'),
(26, 25, '_edit_lock', '1557772702:1'),
(27, 27, '_edit_lock', '1557771680:1'),
(28, 30, '_edit_last', '1'),
(29, 30, '_edit_lock', '1557571757:1'),
(30, 9, '_wp_trash_meta_status', 'publish'),
(31, 9, '_wp_trash_meta_time', '1557571802'),
(32, 9, '_wp_desired_post_slug', 'group_5cd46dd455edb'),
(33, 10, '_wp_trash_meta_status', 'publish'),
(34, 10, '_wp_trash_meta_time', '1557571802'),
(35, 10, '_wp_desired_post_slug', 'field_5cd46ddf8e068'),
(36, 32, '_edit_last', '1'),
(37, 32, '_edit_lock', '1558445661:1'),
(38, 34, '_wp_attached_file', '2019/05/home-page.jpg'),
(39, 34, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:768;s:4:\"file\";s:21:\"2019/05/home-page.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"home-page-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"home-page-300x120.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:120;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"home-page-768x307.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:307;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"home-page-1024x410.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:410;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(40, 35, '_wp_attached_file', '2019/05/statement-faith.jpg'),
(41, 35, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:768;s:4:\"file\";s:27:\"2019/05/statement-faith.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"statement-faith-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"statement-faith-300x120.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:120;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:27:\"statement-faith-768x307.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:307;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:28:\"statement-faith-1024x410.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:410;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(42, 36, '_wp_attached_file', '2019/05/missionaries.jpg'),
(43, 36, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:768;s:4:\"file\";s:24:\"2019/05/missionaries.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"missionaries-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"missionaries-300x120.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:120;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:24:\"missionaries-768x307.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:307;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:25:\"missionaries-1024x410.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:410;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(44, 37, '_wp_attached_file', '2019/05/sermons.jpg'),
(45, 37, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:768;s:4:\"file\";s:19:\"2019/05/sermons.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"sermons-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"sermons-300x120.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:120;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"sermons-768x307.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:307;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"sermons-1024x410.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:410;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(46, 38, '_wp_attached_file', '2019/05/27nt60.jpg'),
(47, 38, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:768;s:4:\"file\";s:18:\"2019/05/27nt60.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"27nt60-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"27nt60-300x120.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:120;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"27nt60-768x307.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:307;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"27nt60-1024x410.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:410;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(48, 39, '_wp_attached_file', '2019/05/donations.jpg'),
(49, 39, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:768;s:4:\"file\";s:21:\"2019/05/donations.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"donations-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"donations-300x120.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:120;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"donations-768x307.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:307;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"donations-1024x410.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:410;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(50, 40, '_wp_attached_file', '2019/05/ministries.jpg'),
(51, 40, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:768;s:4:\"file\";s:22:\"2019/05/ministries.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"ministries-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"ministries-300x120.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:120;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"ministries-768x307.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:307;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:23:\"ministries-1024x410.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:410;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(52, 41, '_wp_attached_file', '2019/05/about-2.jpg'),
(53, 41, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:768;s:4:\"file\";s:19:\"2019/05/about-2.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"about-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"about-2-300x120.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:120;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"about-2-768x307.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:307;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"about-2-1024x410.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:410;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(54, 42, '_wp_attached_file', '2019/05/about.jpg'),
(55, 42, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:768;s:4:\"file\";s:17:\"2019/05/about.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"about-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"about-300x120.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:120;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"about-768x307.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:307;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:18:\"about-1024x410.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:410;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(56, 43, '_wp_attached_file', '2019/05/home-missions.jpg'),
(57, 43, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:768;s:4:\"file\";s:25:\"2019/05/home-missions.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"home-missions-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"home-missions-300x120.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:120;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"home-missions-768x307.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:307;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:26:\"home-missions-1024x410.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:410;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(60, 7, 'main_banner', '34'),
(61, 7, '_main_banner', 'field_5cd976c4b28c1'),
(62, 45, 'helpful_link_img', '11'),
(63, 45, '_helpful_link_img', 'field_5cd46ddf8e068'),
(64, 45, 'main_banner', '34'),
(65, 45, '_main_banner', 'field_5cd976c4b28c1'),
(66, 7, 'bottom_banner', '43'),
(67, 7, '_bottom_banner', 'field_5cd9785948b4c'),
(68, 47, 'helpful_link_img', '11'),
(69, 47, '_helpful_link_img', 'field_5cd46ddf8e068'),
(70, 47, 'main_banner', '34'),
(71, 47, '_main_banner', 'field_5cd976c4b28c1'),
(72, 47, 'bottom_banner', '43'),
(73, 47, '_bottom_banner', 'field_5cd9785948b4c'),
(74, 48, '_wp_attached_file', '2019/05/wednesdays.jpg'),
(75, 48, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:532;s:6:\"height\";i:414;s:4:\"file\";s:22:\"2019/05/wednesdays.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"wednesdays-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"wednesdays-300x233.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:233;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(76, 49, '_wp_attached_file', '2019/05/sundays.jpg'),
(77, 49, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:532;s:6:\"height\";i:414;s:4:\"file\";s:19:\"2019/05/sundays.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"sundays-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"sundays-300x233.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:233;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(78, 7, 'service_times_sundays', '<ul>\r\n   <li> 9:30am - Sunday Bible School</li>\r\n   <li>10:30am – Morning Worship</li>\r\n   <li>6:30pm – Evening Fellowship</li>\r\n</ul>'),
(79, 7, '_service_times_sundays', 'field_5cd98448f1d37'),
(80, 7, 'service_times_wednesdays', '<ul>\r\n   <li>10:30am – Prayer Meeting</li>\r\n   <li>7:00pm – Prayer Meeting</li>\r\n</ul>'),
(81, 7, '_service_times_wednesdays', 'field_5cd983b506a9f'),
(82, 52, 'helpful_link_img', '11'),
(83, 52, '_helpful_link_img', 'field_5cd46ddf8e068'),
(84, 52, 'main_banner', '34'),
(85, 52, '_main_banner', 'field_5cd976c4b28c1'),
(86, 52, 'bottom_banner', '43'),
(87, 52, '_bottom_banner', 'field_5cd9785948b4c'),
(88, 52, 'service_times_sundays', '49'),
(89, 52, '_service_times_sundays', 'field_5cd97ed82e7ca'),
(90, 52, 'service_times_wednesdays', '48'),
(91, 52, '_service_times_wednesdays', 'field_5cd97eefe0635'),
(92, 7, 'service_sundays_img', '49'),
(93, 7, '_service_sundays_img', 'field_5cd97ed82e7ca'),
(94, 7, 'service_wednesdays_img', '48'),
(95, 7, '_service_wednesdays_img', 'field_5cd97eefe0635'),
(96, 7, '_', 'field_5cd983b506a9f'),
(97, 54, 'helpful_link_img', '11'),
(98, 54, '_helpful_link_img', 'field_5cd46ddf8e068'),
(99, 54, 'main_banner', '34'),
(100, 54, '_main_banner', 'field_5cd976c4b28c1'),
(101, 54, 'bottom_banner', '43'),
(102, 54, '_bottom_banner', 'field_5cd9785948b4c'),
(103, 54, 'service_times_sundays', '49'),
(104, 54, '_service_times_sundays', 'field_5cd97ed82e7ca'),
(105, 54, 'service_times_wednesdays', '48'),
(106, 54, '_service_times_wednesdays', 'field_5cd97eefe0635'),
(107, 54, 'service_sundays_img', '49'),
(108, 54, '_service_sundays_img', 'field_5cd97ed82e7ca'),
(109, 54, 'service_wednesdays_img', '48'),
(110, 54, '_service_wednesdays_img', 'field_5cd97eefe0635'),
(111, 56, 'helpful_link_img', '11'),
(112, 56, '_helpful_link_img', 'field_5cd46ddf8e068'),
(113, 56, 'main_banner', '34'),
(114, 56, '_main_banner', 'field_5cd976c4b28c1'),
(115, 56, 'bottom_banner', '43'),
(116, 56, '_bottom_banner', 'field_5cd9785948b4c'),
(117, 56, 'service_times_sundays', '49'),
(118, 56, '_service_times_sundays', 'field_5cd98448f1d37'),
(119, 56, 'service_times_wednesdays', '<ul>\r\n   <li> 9:30am - Sunday Bible School</li>\r\n</ul>'),
(120, 56, '_service_times_wednesdays', 'field_5cd983b506a9f'),
(121, 56, 'service_sundays_img', '49'),
(122, 56, '_service_sundays_img', 'field_5cd97ed82e7ca'),
(123, 56, 'service_wednesdays_img', '48'),
(124, 56, '_service_wednesdays_img', 'field_5cd97eefe0635'),
(125, 57, 'helpful_link_img', '11'),
(126, 57, '_helpful_link_img', 'field_5cd46ddf8e068'),
(127, 57, 'main_banner', '34'),
(128, 57, '_main_banner', 'field_5cd976c4b28c1'),
(129, 57, 'bottom_banner', '43'),
(130, 57, '_bottom_banner', 'field_5cd9785948b4c'),
(131, 57, 'service_times_sundays', '49'),
(132, 57, '_service_times_sundays', 'field_5cd98448f1d37'),
(133, 57, 'service_times_wednesdays', '<ul>\r\n   <li> 9:30am - Sunday Bible School</li>\r\n   <li>10:30am – Morning Worship</li>\r\n   <li>6:30pm – Evening Fellowship</li>\r\n</ul>'),
(134, 57, '_service_times_wednesdays', 'field_5cd983b506a9f'),
(135, 57, 'service_sundays_img', '49'),
(136, 57, '_service_sundays_img', 'field_5cd97ed82e7ca'),
(137, 57, 'service_wednesdays_img', '48'),
(138, 57, '_service_wednesdays_img', 'field_5cd97eefe0635'),
(139, 58, 'helpful_link_img', '11'),
(140, 58, '_helpful_link_img', 'field_5cd46ddf8e068'),
(141, 58, 'main_banner', '34'),
(142, 58, '_main_banner', 'field_5cd976c4b28c1'),
(143, 58, 'bottom_banner', '43'),
(144, 58, '_bottom_banner', 'field_5cd9785948b4c'),
(145, 58, 'service_times_sundays', '<ul>\r\n   <li> 9:30am - Sunday Bible School</li>\r\n   <li>10:30am – Morning Worship</li>\r\n   <li>6:30pm – Evening Fellowship</li>\r\n</ul>'),
(146, 58, '_service_times_sundays', 'field_5cd98448f1d37'),
(147, 58, 'service_times_wednesdays', '<ul>\r\n   <li>10:30am – Prayer Meeting</li>\r\n   <li>7:00pm – Prayer Meeting</li>\r\n</ul>'),
(148, 58, '_service_times_wednesdays', 'field_5cd983b506a9f'),
(149, 58, 'service_sundays_img', '49'),
(150, 58, '_service_sundays_img', 'field_5cd97ed82e7ca'),
(151, 58, 'service_wednesdays_img', '48'),
(152, 58, '_service_wednesdays_img', 'field_5cd97eefe0635'),
(153, 59, '_edit_last', '1'),
(154, 59, '_edit_lock', '1558457833:1'),
(155, 15, '_edit_last', '1'),
(156, 15, 'top_banner', '42'),
(157, 15, '_top_banner', 'field_5cd9a3414696b'),
(158, 15, 'bottom_banner', '41'),
(159, 15, '_bottom_banner', 'field_5cd9a35c4696c'),
(160, 62, 'top_banner', '42'),
(161, 62, '_top_banner', 'field_5cd9a3414696b'),
(162, 62, 'bottom_banner', '41'),
(163, 62, '_bottom_banner', 'field_5cd9a35c4696c'),
(164, 63, '_edit_last', '1'),
(165, 63, '_edit_lock', '1557771129:1'),
(166, 21, '_edit_last', '1'),
(167, 21, 'main_banner', '40'),
(168, 21, '_main_banner', 'field_5cd9b2bee17cc'),
(169, 65, 'main_banner', '40'),
(170, 65, '_main_banner', 'field_5cd9b2bee17cc'),
(171, 66, '_edit_last', '1'),
(172, 66, '_edit_lock', '1557802333:1'),
(173, 23, '_edit_last', '1'),
(174, 23, 'main_banner', '36'),
(175, 23, '_main_banner', 'field_5cd9b392aeaed'),
(176, 68, 'main_banner', '36'),
(177, 68, '_main_banner', 'field_5cd9b392aeaed'),
(178, 69, 'main_banner', '36'),
(179, 69, '_main_banner', 'field_5cd9b392aeaed'),
(180, 70, '_edit_last', '1'),
(181, 70, '_edit_lock', '1557771325:1'),
(182, 19, '_edit_last', '1'),
(183, 19, 'main_banner', '39'),
(184, 19, '_main_banner', 'field_5cd9b4c29a3e2'),
(185, 72, 'main_banner', '39'),
(186, 72, '_main_banner', 'field_5cd9b4c29a3e2'),
(187, 73, '_edit_last', '1'),
(188, 73, '_edit_lock', '1558538334:1'),
(189, 13, '_edit_last', '1'),
(190, 13, 'main_banner', '38'),
(191, 13, '_main_banner', 'field_5cd9b5367f8e1'),
(192, 75, 'main_banner', '38'),
(193, 75, '_main_banner', 'field_5cd9b5367f8e1'),
(194, 76, '_edit_last', '1'),
(195, 76, '_edit_lock', '1557771521:1'),
(196, 27, '_edit_last', '1'),
(197, 27, 'main_banner', '35'),
(198, 27, '_main_banner', 'field_5cd9b585c69b6'),
(199, 78, 'main_banner', '35'),
(200, 78, '_main_banner', 'field_5cd9b585c69b6'),
(201, 79, '_edit_last', '1'),
(202, 79, '_edit_lock', '1557855649:1'),
(203, 25, '_edit_last', '1'),
(204, 25, 'main_banner', '37'),
(205, 25, '_main_banner', 'field_5cd9b63dcbc16'),
(206, 81, 'main_banner', '37'),
(207, 81, '_main_banner', 'field_5cd9b63dcbc16'),
(208, 17, '_edit_last', '1'),
(209, 17, 'main_banner', ''),
(210, 17, '_main_banner', 'field_5cd976c4b28c1'),
(211, 17, 'bottom_banner', ''),
(212, 17, '_bottom_banner', 'field_5cd9785948b4c'),
(213, 17, 'service_sundays_img', '49'),
(214, 17, '_service_sundays_img', 'field_5cd97ed82e7ca'),
(215, 17, 'service_wednesdays_img', '48'),
(216, 17, '_service_wednesdays_img', 'field_5cd97eefe0635'),
(217, 17, 'service_times_wednesdays', '<ul>\r\n   <li>10:30am – Prayer Meeting</li>\r\n   <li>7:00pm – Prayer Meeting</li>\r\n</ul>'),
(218, 17, '_service_times_wednesdays', 'field_5cd983b506a9f'),
(219, 17, 'service_times_sundays', '<ul>\r\n   <li> 9:30am - Sunday Bible School</li>\r\n   <li>10:30am – Morning Worship</li>\r\n   <li>6:30pm – Evening Fellowship</li>\r\n</ul>'),
(220, 17, '_service_times_sundays', 'field_5cd98448f1d37'),
(221, 82, 'main_banner', ''),
(222, 82, '_main_banner', 'field_5cd976c4b28c1'),
(223, 82, 'bottom_banner', ''),
(224, 82, '_bottom_banner', 'field_5cd9785948b4c'),
(225, 82, 'service_sundays_img', '49'),
(226, 82, '_service_sundays_img', 'field_5cd97ed82e7ca'),
(227, 82, 'service_wednesdays_img', '48'),
(228, 82, '_service_wednesdays_img', 'field_5cd97eefe0635'),
(229, 82, 'service_times_wednesdays', ''),
(230, 82, '_service_times_wednesdays', 'field_5cd983b506a9f'),
(231, 82, 'service_times_sundays', ''),
(232, 82, '_service_times_sundays', 'field_5cd98448f1d37'),
(233, 83, 'main_banner', ''),
(234, 83, '_main_banner', 'field_5cd976c4b28c1'),
(235, 83, 'bottom_banner', ''),
(236, 83, '_bottom_banner', 'field_5cd9785948b4c'),
(237, 83, 'service_sundays_img', '49'),
(238, 83, '_service_sundays_img', 'field_5cd97ed82e7ca'),
(239, 83, 'service_wednesdays_img', '48'),
(240, 83, '_service_wednesdays_img', 'field_5cd97eefe0635'),
(241, 83, 'service_times_wednesdays', ''),
(242, 83, '_service_times_wednesdays', 'field_5cd983b506a9f'),
(243, 83, 'service_times_sundays', ''),
(244, 83, '_service_times_sundays', 'field_5cd98448f1d37'),
(245, 84, 'main_banner', ''),
(246, 84, '_main_banner', 'field_5cd976c4b28c1'),
(247, 84, 'bottom_banner', ''),
(248, 84, '_bottom_banner', 'field_5cd9785948b4c'),
(249, 84, 'service_sundays_img', '49'),
(250, 84, '_service_sundays_img', 'field_5cd97ed82e7ca'),
(251, 84, 'service_wednesdays_img', '48'),
(252, 84, '_service_wednesdays_img', 'field_5cd97eefe0635'),
(253, 84, 'service_times_wednesdays', '<ul>\r\n   <li>10:30am – Prayer Meeting</li>\r\n   <li>7:00pm – Prayer Meeting</li>\r\n</ul>'),
(254, 84, '_service_times_wednesdays', 'field_5cd983b506a9f'),
(255, 84, 'service_times_sundays', ''),
(256, 84, '_service_times_sundays', 'field_5cd98448f1d37'),
(257, 85, 'main_banner', ''),
(258, 85, '_main_banner', 'field_5cd976c4b28c1'),
(259, 85, 'bottom_banner', ''),
(260, 85, '_bottom_banner', 'field_5cd9785948b4c'),
(261, 85, 'service_sundays_img', '49'),
(262, 85, '_service_sundays_img', 'field_5cd97ed82e7ca'),
(263, 85, 'service_wednesdays_img', '48'),
(264, 85, '_service_wednesdays_img', 'field_5cd97eefe0635'),
(265, 85, 'service_times_wednesdays', '<ul>\r\n   <li>10:30am – Prayer Meeting</li>\r\n   <li>7:00pm – Prayer Meeting</li>\r\n</ul>'),
(266, 85, '_service_times_wednesdays', 'field_5cd983b506a9f'),
(267, 85, 'service_times_sundays', '<ul>\r\n   <li> 9:30am - Sunday Bible School</li>\r\n   <li>10:30am – Morning Worship</li>\r\n   <li>6:30pm – Evening Fellowship</li>\r\n</ul>'),
(268, 85, '_service_times_sundays', 'field_5cd98448f1d37'),
(269, 95, '_edit_last', '1'),
(270, 95, '_edit_lock', '1557840538:1'),
(271, 103, '_wp_attached_file', '2019/05/400x225.png'),
(272, 103, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:400;s:6:\"height\";i:225;s:4:\"file\";s:19:\"2019/05/400x225.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"400x225-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"400x225-300x169.png\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(273, 104, '_edit_last', '1'),
(274, 104, 'photo', '103'),
(275, 104, '_photo', 'field_5cda2a30667f6'),
(276, 104, 'description', 'Manoel & Ellen De Souza & family \r\n~ Jardim Alegre, Brazil'),
(277, 104, '_description', 'field_5cda2aa2b2078'),
(278, 104, '_edit_lock', '1557802291:1'),
(297, 108, '_edit_last', '1'),
(298, 108, '_edit_lock', '1557840547:1'),
(299, 108, 'photo', '103'),
(300, 108, '_photo', 'field_5cda2a30667f6'),
(301, 108, 'description', 'Greg & Amanda Little & family \r\n~ St. Lucia'),
(302, 108, '_description', 'field_5cda2aa2b2078'),
(303, 109, '_edit_last', '1'),
(304, 109, '_edit_lock', '1557841163:1'),
(305, 109, 'photo', '103'),
(306, 109, '_photo', 'field_5cda2a30667f6'),
(307, 109, 'description', 'Audrey Lawrence \r\n~ Komoka, Ontario'),
(308, 109, '_description', 'field_5cda2aa2b2078'),
(309, 110, '_edit_last', '1'),
(310, 110, '_edit_lock', '1557803656:1'),
(311, 110, 'photo', '103'),
(312, 110, '_photo', 'field_5cda2a30667f6'),
(313, 110, 'description', 'Liana Wiebe\r\n~ Regina, Saskatchewan'),
(314, 110, '_description', 'field_5cda2aa2b2078'),
(315, 111, '_edit_last', '1'),
(316, 111, '_edit_lock', '1557803682:1'),
(317, 111, 'photo', '103'),
(318, 111, '_photo', 'field_5cda2a30667f6'),
(319, 111, 'description', 'Jim & Ruth Turpin \r\n~ Stavanger, Norway\r\n'),
(320, 111, '_description', 'field_5cda2aa2b2078'),
(321, 112, '_edit_last', '1'),
(322, 112, '_edit_lock', '1557803708:1'),
(323, 112, 'photo', '103'),
(324, 112, '_photo', 'field_5cda2a30667f6'),
(325, 112, 'description', 'Jing & Arlene Batac & family\r\n~ The Bayanihan Children’s Home, Philippines'),
(326, 112, '_description', 'field_5cda2aa2b2078'),
(327, 113, '_edit_last', '1'),
(328, 113, '_edit_lock', '1557803727:1'),
(329, 113, 'photo', '103'),
(330, 113, '_photo', 'field_5cda2a30667f6'),
(331, 113, 'description', 'Kevin & Stella Stroud\r\n~ Lusk in Manila, Philippines\r\n'),
(332, 113, '_description', 'field_5cda2aa2b2078'),
(333, 114, '_edit_last', '1'),
(334, 114, '_edit_lock', '1557803758:1'),
(335, 114, 'photo', '103'),
(336, 114, '_photo', 'field_5cda2a30667f6'),
(337, 114, 'description', 'Manoel & Ellen De Souza & family \r\n~ Jardim Alegre, Brazil\r\n'),
(338, 114, '_description', 'field_5cda2aa2b2078'),
(339, 116, '_edit_last', '1'),
(340, 116, '_edit_lock', '1557847407:1'),
(341, 120, '_edit_last', '1'),
(342, 120, '_edit_lock', '1557841752:1'),
(343, 120, 'sub_title', ' (The Father, The Son, The Holy Spirit)'),
(344, 120, '_sub_title', 'field_5cdac6225db8e'),
(345, 120, 'content', '<strong>1b.</strong> The Tri-unity of God\r\n<strong>1c..</strong> We believe that there is ONE and only ONE living and true God…a holy, infinite, perfect and eternal Spirit Being, sovereign Creator of the heavens and the earth, the One to whom all creation is accountable.\r\n<strong>2c.</strong> We further believe that this one God is ONE in undivided and indivisible  nature and essence but exists in THREE co-equal yet distinct persons….the Father, the Son,and the Holy Spirit. This is part of the mystery of God that the finite mind of man cannot fully comprehend but which is revealed by God of Himself in the Scriptures.'),
(346, 120, '_content', 'field_5cdac6685db8f'),
(347, 121, '_edit_last', '1'),
(348, 121, '_edit_lock', '1557847806:1'),
(349, 121, 'sub_title', ''),
(350, 121, '_sub_title', 'field_5cdac6225db8e'),
(351, 121, 'content', 'We believe the Scriptures teach separation as a basic, fundamental part of “the faith once delivered to the saints.” We believe biblical separation involves three aspects….\r\n<strong>1b.</strong> Personal separation\r\n<strong>1c</strong>. We believe the Scriptures teach that every believer should be separated unto God from the world, and by the aid of the Holy Spirit should walk in Christian love and holiness, exhibiting qualities of honesty, integrity, forgiveness and lovingkindness.\r\n<strong>2c</strong> We further believe that any achievement in these characteristics will be evidenced by sincere humility and genuine zeal for the advancement of the cause of Christ.\r\n<strong>3c.</strong> We also believe the Scriptures admonish every believer to not love the world neither the things in the world, but rather to flee evil desires, and refrain from questionable practices which feed the old nature, sear the conscience, destroy one’s clear testimony for Christ, offend one’s brother and/or cause a weaker brother to stumble, and fail to glorify God.\r\n[Ps. 1:1-6; Prov. 1:7; 9:10; Rom. 14:13, 19-21; 1 Cor. 6:18-20; 10:23, 33; 2 Cor. 7:1; Gal. 5:16-26; Eph. 4: 22-24; 5:7-11; Phil. 4:8,9; 2 Tim. 2:22; Titus 2:11,12; Jas. 4:4; 1 Jn. 2:15-17; 5:19-21]\r\n<strong>2b</strong> Ecclesiastical separation from apostate, liberal denominations and all false teaching.\r\n<strong>1c.</strong> We believe the Scriptures teach that true churches must not enter into any fellowship or join in any common spiritual endeavour, such as worship, evangelism, prayer, education, relief, etc., with those who have rejected Bible truth and the fundamentals of the faith once delivered to the saints and that to do so constitutes direct disobedience to the Word of God.\r\n<strong>2c</strong>. We further believe the Scriptures command local churches to expose and warn Bible believers about apostasy and false teaching and reprove false teachers and their teaching.\r\n<strong>3c.</strong> We, therefore, will not join in with any “spiritual” work that would require us to compromise our convictions or cause us to walk contrary to the clear teaching of Scripture.\r\n<strong>4c.</strong> We, further stand opposed to any fellowship with the World Council of Churches, the Roman Catholic Church, or any other organization or denomination that cooperates in or in any way endorses the ecumenical and/or charismatic movement.[2 Cor. 6:14-18; Gal. 1:8,9; Eph. 5:11; 1 Tim. 6:3-5; 2 Tim. 2:16-19; 3:5; Titus 3:10; 2 Jn. 9-11]\r\n<strong>3b.</strong> Separation from disobedient brethren and unbiblical conduct.\r\n<strong>1c.</strong> We believe the Scriptures teach that true believers are to separate from others who may profess to know Christ as Saviour, preach the gospel and believe in the Bible but who act contrary to sound doctrine. Those who call themselves “evangelical” but who cooperate with liberal or apostate or charismatic denominations and organizations are to be marked out and avoided.\r\n<strong>2c.</strong> Therefore we will not engage in any cooperative work with those who profess to love the Lord but in action disobey His clear commands. [Amos 3:3; Acts 20:27-31; Rom. 16:17; 1 Cor. 5:7-13; 2 Thess. 3:6, 14, 15; 2 Tim. 2:19-26; 2 Jn. 7-11]\r\n\r\nWe believe the doctrine of Biblical separation is based upon God’s eternal principle of division between truth and error, right and wrong, good and evil and His specific command to be separate from unbelievers and disobedient brethren. We further believe this truth is to be practiced with an attitude of devotion, humility, compassion and grace yet with strong conviction. We believe this doctrine should be upheld not for any sense of self-righteousness, pride or spiritual superiority but for the purity of God’s truth, the glory of God and to impress upon the others the fundamental importance of the truth of God’s word, will and way and to exhort them to repent of their error and return to sound biblical doctrine and conduct.'),
(352, 121, '_content', 'field_5cdac6685db8f'),
(353, 122, '_edit_last', '1'),
(354, 122, '_edit_lock', '1557847914:1'),
(355, 122, 'sub_title', ''),
(356, 122, '_sub_title', 'field_5cdac6225db8e'),
(357, 122, 'content', '<strong>1b. </strong>We believe in the personal, imminent, bodily and glorious return of the Lord Jesus Christ.\r\n<strong>2b. </strong>We believe that when His Bride, the Church, shall have been completed, He will appear in the air to rapture the Church unto Himself, and take them to heaven where the Judgment Seat of Christ and the marriage of the Lamb will take place.\r\n<strong>3b. </strong>We believe that at the time the Church is in heaven with Christ, the Tribulation, of approximately seven years, will take place on earth;\r\n<strong>4b.</strong> We believe that Christ and His Bride will return to earth at the end of the Tribulation to take vengeance on them that know not God and to set up His millennial kingdom on earth;\r\n<strong>5b.</strong> We believe that after these events will come the Great White Throne judgment when all the wicked of all ages shall be resurrected to stand before God and be judged and cast into the Lake of Fire to endure eternal punishment;\r\n<strong>6b.</strong> We believe that the righteous of all ages shall enjoy eternal bliss in the presence of God in the New Heavens and New Earth.\r\n\r\n[Acts 1:9-11; 1 Cor. 15:50-58; 1 Thess. 4:13-18; 2 Thess. 1:7-9; 2:1-12; Rev. 20:1-6; 11:15]'),
(358, 122, '_content', 'field_5cdac6685db8f'),
(359, 123, '_edit_last', '1'),
(360, 123, '_edit_lock', '1557847934:1'),
(361, 123, 'sub_title', ''),
(362, 123, '_sub_title', 'field_5cdac6225db8e'),
(363, 123, 'content', 'We believe that civil government is a divine appointment, for the interests and good order of human society; that magistrates are to be prayed for, conscientiously honored and obeyed, except in things opposed to the will and Word of God. [Mk. 12:17; Rom. 13:1-7; 1 Tim. 2:1-4; Titus 3:1-2; 1 Pt. 2:13-17]'),
(364, 123, '_content', 'field_5cdac6685db8f'),
(365, 124, '_edit_last', '1'),
(366, 124, '_edit_lock', '1557848168:1'),
(367, 124, 'sub_title', ' (The Ordinances)'),
(368, 124, '_sub_title', 'field_5cdac6225db8e'),
(369, 124, 'content', 'We believe the Scriptures teach that the Church of Jesus Christ is distinct from Israel and was inaugurated on the Day of Pentecost. We further believe that the Church must be considered in two aspects, namely the church which is His body and the local church.\r\n<strong>1b. </strong>The “Church which is His Body” We believe that the church which is “the body of Christ” is the entire company of true believers in Christ during the period between Pentecost and the Rapture. We believe that it is a living, growing organism, which was, by the baptism of the Spirit, constituted the Body of Christ and when it has reached its predetermined dimensions, will be caught up (raptured) to be joined with its Head, the Lord Jesus Christ. [Matt. 16:18; 1 Cor. 12:13; Eph. 1:19-23; 4:4; 5:23-27; Col. 1:18; Heb. 12:23]\r\n<strong>2b.</strong> The Local Church\r\n<strong>1c.</strong> We believe the local church is a company of believers in Christ who have been called out of the world and unto God, baptized by immersion, associated by a covenant of faith and fellowship in the gospel, observing the ordinances of Christ, governed by His laws, and exercising the gifts, rights and privileges invested in them by His Word.\r\n<strong>2c.</strong> We further believe that its Scriptural officers are pastors (also called elders or bishops in the Scriptures) and deacons, whose qualifications, claims and duties are clearly defined in the Scriptures. We believe the Word of God teaches that these offices are to be filled by godly, qualified men, not women.\r\n<strong>3c</strong>. We also believe in the priesthood of all believers, and in individual soul liberty.\r\n<strong>4c</strong>. We believe in the complete autonomy of the local church under the headship of Jesus Christ and that it is free from the interference of any hierarchy of individuals or organizations. We believe that the sole authority in the local church is the Word of God.\r\n<strong>5c.</strong> We do recognize the benefit of true local churches of like faith and practice co-operating with each other for the furtherance of the gospel and in contending for the faith, but that every local church is the sole and only judge of the measure and method of its co-operation.\r\n<strong>6c.</strong> We believe in the priority of the local church as God’s instrument for spiritual ministry in the world today and that while certain parachurch groups, Bible colleges and seminaries and mission agencies are a helpful arm for the local church, it is wrong for such groups to usurp the place of the local church in God’s plan.\r\n<strong>7c.</strong> In all matters of membership, polity, government, discipline or benevolence the will of the local church is final.\r\n<strong>8c.</strong> We believe the true mission of the local church is found in our Lord’s commission to his disciples in Matthew 28:18-20…..first, to teach or make disciples of all nations by preaching the gospel in all the world; secondly, to baptize by immersion those who believe; thirdly, to teach and instruct the believers to obey that which He has commanded.\r\n<strong>9c.</strong> We believe the local church exists to glorify God in every way, evangelize the lost, both at home and abroad, with the gospel of Jesus Christ and edify the believer in his or her faith and equip him or her to serve the Lord Jesus with excellence.\r\n\r\n[Acts 2:41-47; Eph. 4:11; 1 Tim. 3:1-16; Titus. 1:5-9]\r\n\r\n<strong>The Ordinances</strong>\r\n<strong>1c.</strong> We believe that Scripture teaches believer’s baptism. We believe that baptism is the immersion in water of the believer in Jesus Christ, in the singular name of the Father, the Son and the Holy Spirit to show forth our union with the crucified, buried and risen Christ, our death to sin and our resurrection to new life. We believe that baptism is a command of the Word of God and a condition of church membership. [Matt. 28:19; Acts 2:41; Rom. 6:3-5]\r\n<strong>2c.</strong> We believe that the Lord’s table was instituted by the Lord Jesus on the night He was betrayed and that it is the privilege of all believers to partake of its elements. We believe the Lord’s Table is a memorial in which the bread symbolizes the body of Christ given for us and the juice symbolizes the blood of Christ shed for us. We believe that this ordinance should be preceded by solemn self-examination and commemorated regularly until Jesus comes again. We do not believe that participating in the Lord’s Table saves any person in any way. [Luke 22:19,20; 1 Cor. 11:23-32]'),
(370, 124, '_content', 'field_5cdac6685db8f'),
(371, 125, '_edit_last', '1'),
(372, 125, '_edit_lock', '1557848152:1'),
(373, 126, '_edit_last', '1'),
(374, 126, '_edit_lock', '1557848223:1'),
(375, 126, 'sub_title', ''),
(376, 126, '_sub_title', 'field_5cdac6225db8e'),
(377, 126, 'content', '<strong>1b.</strong> We believe that Israel is distinct from the church of Jesus Christ as the special people that God called unto Himself. We believe that the promises made to Abraham, Isaac, Jacob (Israel) and their descendants belong exclusively to the nation and that God will, according to His plan, bring all His promises to fulfillment.\r\n<strong>2b.</strong> We further believe that, in this Church Age, Israel has been set aside from God’s use but not out of His care or protection. We believe God will once again restore Israel to His blessing in the millennial kingdom of Christ. We believe that the nation of Israel today, while generally in a state of unbelief, is still the special possession of God.\r\n<strong>3b.</strong> We believe that Jews today who believe in Jesus as their Messiah are saved and brought into the Church.\r\n\r\n[Gen. 12:1-3; Rom. 11:1,2, 25-26; 1 Cor. 10:32]'),
(378, 126, '_content', 'field_5cdac6685db8f'),
(379, 127, '_edit_last', '1'),
(380, 127, '_edit_lock', '1557848275:1'),
(381, 127, 'sub_title', ''),
(382, 127, '_sub_title', 'field_5cdac6225db8e'),
(383, 127, 'content', '<strong>1b. </strong>We believe that salvation is wholly of God’s grace alone through faith alone in Jesus Christ alone. We believe the faith required for salvation is expressed by repentance of sin and personal trust in Christ as Saviour and Lord.\r\n<strong>2b.</strong> We further believe that the salvation God provides is immediate deliverance from the penalty of sin, which is death, (justification), the power of sin (sanctification) and ultimately, the presence of sin (glorification) when we see Jesus face to face in glory.\r\n<strong>3b.</strong> We believe that salvation brings about a change in thinking and conduct, conforming the believer to the mind of Christ and transforming him into Christ likeness. We believe that we are saved to serve the Lord Jesus Christ with all our heart, and with excellence.\r\n<strong>4b.</strong> We also believe that all who are truly born again are eternally secure, kept by God and fully saved.\r\n\r\n[John 1:12; 3:16; 10: 27-29; Rom. 8:33-39; 2 Cor. 5:17, 21; Eph. 1:7; 2:8-10; Phil 1:6; 1 Tim. 1:4-6; Heb. 7:25; Jude 24,25]'),
(384, 127, '_content', 'field_5cdac6685db8f'),
(385, 128, '_edit_last', '1'),
(386, 128, '_edit_lock', '1557848326:1'),
(387, 128, 'sub_title', ''),
(388, 128, '_sub_title', 'field_5cdac6225db8e'),
(389, 128, 'content', '<strong>1b. </strong>We believe that sin is to “fall short of the glory of God” and is to be understood as, first, the principle or nature of depravity inherent in every person; second, acts of transgression of the law of God; and third, personal guilt.\r\n<strong>2b.</strong> We also believe that sin is basically self-centeredness and brings death. We believe that sin is so awful that when the sin of the world was placed on Christ, both the Father and the Spirit turned away from the Son as the wrath of God was poured out on Him!\r\n<strong>3b.</strong> We believe that the only answer to sin in a person’s life is the blood of Jesus Christ, which He shed for the remission of our sins and which washes our sins away.\r\n\r\n[Rom. 3:23; 6:12, 13, 23; Gal. 3:10; Jas. 1:14, 15; 2:8-10; 1 Jn. 1:7-10; 3:4]'),
(390, 128, '_content', 'field_5cdac6685db8f'),
(391, 129, '_edit_last', '1'),
(392, 129, '_edit_lock', '1557848389:1'),
(393, 129, 'sub_title', ''),
(394, 129, '_sub_title', 'field_5cdac6225db8e'),
(395, 129, 'content', '<strong>1b. </strong>We believe the Scriptures teach that man was divinely created in the image and likeness of God by the direct and immediate act of God and not from any previously existing form of life.\r\n<strong>2b.</strong> We believe further that God created the universe and all that is in it with the appearance of age in six literal days and rested on the seventh. We believe that God is vitally interested in and involved in His creation, working out His plan and will every step of the way. We believe the theory of evolution to be false as an explanation for the beginning of mankind.\r\n<strong>3b.</strong> We believe that Adam and Eve were real, historical persons, created in the image and likeness of God and breathed into by the breath of God thus making man a living soul. We also believe that the created order of man first from the dust of the ground and woman second from the man’s rib to be of extreme importance for the proper ordering of society, family and church relationships. We do not believe women to be inferior to men as persons\r\nbut we do believe that women are subordinate to men because of the created order and the curse of God because of sin.\r\n<strong>4b.</strong> We believe that by their transgression of the only command God gave them, Adam and Eve fell from the state of innocence and perfection in which they were created, died spiritually, were separated from fellowship with God, and passed on the depraved, sinful nature to all their descendants in every generation of man.\r\n<strong>5b.</strong> We believe the result of Adam and Eve’s disobedience is that all men are now sinners by nature and by choice, being utterly devoid of that holiness required by the law,\r\npositively inclined to do evil and therefore under just condemnation to eternal ruin without defense or excuse.\r\n<strong>6b.</strong> We believe the need of all mankind is to be saved by God through faith in Christ Jesus and regenerated by the Holy Spirit. We believe that man does not commit acts of evil as much as he could because of the restraining work of the Spirit of God in this age.\r\n\r\n[Gen. 1:26,27; 2:17; 3:1-24; Ps. 100:3; Isa. 53:6; John 1:3; Rom. 3:23; 5:12-19; Eph. 2:1-3; Col. 1:16,17]'),
(396, 129, '_content', 'field_5cdac6685db8f'),
(397, 130, '_edit_last', '1'),
(398, 130, '_edit_lock', '1557855242:1'),
(399, 130, 'sub_title', '(Demons, Good Angels)'),
(400, 130, '_sub_title', 'field_5cdac6225db8e'),
(401, 130, 'content', '<strong>Demons</strong>\r\n<strong>1c.</strong> We believe in the personal existence of demons.\r\n<strong>2c.</strong> We believe the demons were created by God as perfect angelic spirit beings who rebelled with Satan against God. While we do not know the precise number of demons, we believe they are legion.\r\n<strong>3c. </strong>We also believe the demons are powerful, subservient to Satan but limited by the will of God. The Scriptures reveal they can afflict human beings\r\n\r\n<strong> Good Angels</strong>\r\n<strong>1c.</strong> We believe in the personal existence of holy angels.\r\n<strong>2c.</strong> We believe they were created by God as perfect spirit beings who remained faithful and obedient to God and did not follow Satan in his rebellion. We believe they are an innumerable host, with one named Michael as archangel.\r\n3c. We believe the Scriptures teach that angels are messengers of God, “ministering spirits sent forth to minister for them who shall be heirs of salvation” (Heb. 1:14).\r\n\r\n[Gen 28:12; Ps. 91:11; 103:20,21; 104:4; Matt. 4:11; 13:38-41; 18:10; Mk. 8:38; Lk. 1:19,26; 15:10; Heb. 1:4-7; 12:22; 13:2; Jd. 9; Rev. 5:11; 12:7]\r\n\r\n'),
(402, 130, '_content', 'field_5cdac6685db8f'),
(403, 125, '_wp_trash_meta_status', 'draft'),
(404, 125, '_wp_trash_meta_time', '1557848622'),
(405, 125, '_wp_desired_post_slug', ''),
(406, 120, '_wp_trash_meta_status', 'publish'),
(407, 120, '_wp_trash_meta_time', '1557848626'),
(408, 120, '_wp_desired_post_slug', 'the-godhead'),
(409, 131, '_edit_last', '1'),
(410, 131, '_edit_lock', '1557848558:1'),
(411, 131, 'sub_title', ' (The Father, The Son, The Holy Spirit)'),
(412, 131, '_sub_title', 'field_5cdac6225db8e'),
(413, 131, 'content', '<strong>1b. </strong>The Tri-unity of God\r\n<strong>1c. </strong>We believe that there is ONE and only ONE living and true God…a holy, infinite, perfect and eternal Spirit Being, sovereign Creator of the heavens and the earth, the One to whom all creation is accountable.\r\n<strong>2c.</strong> We further believe that this one God is ONE in undivided and indivisible  nature and essence but exists in THREE co-equal yet distinct persons….the Father, the Son,and the Holy Spirit. This is part of the mystery of God that the finite mind of man cannot fully comprehend but which is revealed by God of Himself in the Scriptures.\r\n\r\n[Gen. 1:1; Ex. 15:11; Deut. 4:35; 6:4; Isa. 44:6-8; 45:5,6; 46:9,10; Zech. 4:9; Matt. 28:19; Mk. 12:29-32; John 17:3; 2 Cor. 13:14; 1 Tim. 1:17; 2:5; 1 Jn. 5:7; Rev. 4:8]'),
(414, 131, '_content', 'field_5cdac6685db8f'),
(415, 132, '_wp_attached_file', '2019/05/SampleAudio_0.4mb.mp3'),
(416, 132, '_wp_attachment_metadata', 'a:16:{s:10:\"dataformat\";s:3:\"mp3\";s:8:\"channels\";i:2;s:11:\"sample_rate\";i:44100;s:7:\"bitrate\";i:128000;s:11:\"channelmode\";s:12:\"joint stereo\";s:12:\"bitrate_mode\";s:3:\"cbr\";s:8:\"lossless\";b:0;s:15:\"encoder_options\";s:6:\"CBR128\";s:17:\"compression_ratio\";d:0.09070294784580499;s:10:\"fileformat\";s:3:\"mp3\";s:8:\"filesize\";i:443926;s:9:\"mime_type\";s:10:\"audio/mpeg\";s:6:\"length\";i:28;s:16:\"length_formatted\";s:4:\"0:28\";s:6:\"artist\";s:0:\"\";s:5:\"album\";s:0:\"\";}'),
(417, 133, '_edit_last', '1'),
(418, 133, '_edit_lock', '1557933855:1'),
(419, 136, '_edit_last', '1'),
(420, 136, '_edit_lock', '1557928622:1'),
(421, 136, 'pastors_name', 'R. Bruce Redding'),
(422, 136, '_pastors_name', 'field_5cdafe41a9d64'),
(423, 136, 'audio_file', '132');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(424, 136, '_audio_file', 'field_5cdafe58a9d65'),
(425, 136, 'date', '14/05/2019'),
(426, 136, '_date', 'field_5cdafec376d07'),
(427, 136, 'year', '2019'),
(428, 136, '_year', 'field_5cdb056526722'),
(429, 139, '_edit_last', '1'),
(430, 139, '_edit_lock', '1557928755:1'),
(431, 139, 'pastors_name', 'R. Bruce Redding'),
(432, 139, '_pastors_name', 'field_5cdafe41a9d64'),
(433, 139, 'year', '2018'),
(434, 139, '_year', 'field_5cdb056526722'),
(435, 139, 'date', '14/05/2018'),
(436, 139, '_date', 'field_5cdafec376d07'),
(437, 139, 'audio_file', '132'),
(438, 139, '_audio_file', 'field_5cdafe58a9d65'),
(439, 136, '_wp_old_date', '2019-05-14'),
(440, 136, '_wp_old_date', '2018-05-14'),
(441, 139, '_wp_old_date', '2019-05-14'),
(442, 140, '_edit_last', '1'),
(443, 140, '_edit_lock', '1557933338:1'),
(444, 140, 'pastors_name', 'R. Bruce Redding'),
(445, 140, '_pastors_name', 'field_5cdafe41a9d64'),
(446, 140, 'audio_file', '132'),
(447, 140, '_audio_file', 'field_5cdafe58a9d65'),
(448, 140, '_wp_old_date', '2019-05-15'),
(449, 141, '_edit_last', '1'),
(450, 141, '_edit_lock', '1557932543:1'),
(451, 141, 'pastors_name', 'R. Bruce Redding'),
(452, 141, '_pastors_name', 'field_5cdafe41a9d64'),
(453, 141, 'audio_file', '132'),
(454, 141, '_audio_file', 'field_5cdafe58a9d65'),
(455, 142, '_edit_last', '1'),
(456, 142, '_edit_lock', '1557933876:1'),
(457, 142, 'pastors_name', 'R. Bruce Redding'),
(458, 142, '_pastors_name', 'field_5cdafe41a9d64'),
(459, 142, 'audio_file', '132'),
(460, 142, '_audio_file', 'field_5cdafe58a9d65'),
(461, 143, '_edit_last', '1'),
(462, 143, '_edit_lock', '1557933900:1'),
(463, 143, 'pastors_name', 'R. Bruce Redding'),
(464, 143, '_pastors_name', 'field_5cdafe41a9d64'),
(465, 143, 'audio_file', '132'),
(466, 143, '_audio_file', 'field_5cdafe58a9d65'),
(467, 144, '_edit_last', '1'),
(468, 144, '_edit_lock', '1557933926:1'),
(469, 144, 'pastors_name', 'R. Bruce Redding'),
(470, 144, '_pastors_name', 'field_5cdafe41a9d64'),
(471, 144, 'audio_file', '132'),
(472, 144, '_audio_file', 'field_5cdafe58a9d65'),
(479, 146, '_edit_last', '1'),
(480, 146, '_edit_lock', '1557933955:1'),
(481, 146, 'pastors_name', 'R. Bruce Redding'),
(482, 146, '_pastors_name', 'field_5cdafe41a9d64'),
(483, 146, 'audio_file', '132'),
(484, 146, '_audio_file', 'field_5cdafe58a9d65'),
(491, 148, '_edit_last', '1'),
(492, 148, '_edit_lock', '1557934114:1'),
(493, 148, 'pastors_name', 'R. Bruce Redding'),
(494, 148, '_pastors_name', 'field_5cdafe41a9d64'),
(495, 148, 'audio_file', '132'),
(496, 148, '_audio_file', 'field_5cdafe58a9d65'),
(497, 151, '_wp_attached_file', '2019/05/pastor-bruce.jpg'),
(498, 151, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:3381;s:6:\"height\";i:2646;s:4:\"file\";s:24:\"2019/05/pastor-bruce.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"pastor-bruce-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"pastor-bruce-300x235.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:235;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:24:\"pastor-bruce-768x601.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:601;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:25:\"pastor-bruce-1024x801.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:801;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"1.8\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:13:\"iPhone XS Max\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1558437669\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:4:\"4.25\";s:3:\"iso\";s:3:\"250\";s:13:\"shutter_speed\";s:5:\"0.025\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(499, 151, '_wp_attachment_image_alt', 'Bruce Redding'),
(500, 15, 'pastor_image', '151'),
(501, 15, '_pastor_image', 'field_5ce42c5d5d6d4'),
(502, 152, 'top_banner', '42'),
(503, 152, '_top_banner', 'field_5cd9a3414696b'),
(504, 152, 'bottom_banner', '41'),
(505, 152, '_bottom_banner', 'field_5cd9a35c4696c'),
(506, 152, 'pastor_image', '151'),
(507, 152, '_pastor_image', 'field_5ce42c5d5d6d4'),
(508, 13, 'start_reading_today', 'a:5:{s:5:\"acftf\";a:1:{s:1:\"v\";s:5:\"1.3.5\";}s:1:\"p\";a:2:{s:1:\"o\";a:1:{s:2:\"uh\";i:0;}s:2:\"ca\";s:0:\"\";}s:1:\"c\";a:8:{i:0;a:1:{s:1:\"p\";s:0:\"\";}i:1;a:1:{s:1:\"p\";s:0:\"\";}i:2;a:1:{s:1:\"p\";s:0:\"\";}i:3;a:1:{s:1:\"p\";s:0:\"\";}i:4;a:1:{s:1:\"p\";s:0:\"\";}i:5;a:1:{s:1:\"p\";s:0:\"\";}i:6;a:1:{s:1:\"p\";s:0:\"\";}i:7;a:1:{s:1:\"p\";s:0:\"\";}}s:1:\"h\";a:8:{i:0;a:1:{s:1:\"c\";s:0:\"\";}i:1;a:1:{s:1:\"c\";s:0:\"\";}i:2;a:1:{s:1:\"c\";s:0:\"\";}i:3;a:1:{s:1:\"c\";s:0:\"\";}i:4;a:1:{s:1:\"c\";s:0:\"\";}i:5;a:1:{s:1:\"c\";s:0:\"\";}i:6;a:1:{s:1:\"c\";s:0:\"\";}i:7;a:1:{s:1:\"c\";s:0:\"\";}}s:1:\"b\";a:9:{i:0;a:8:{i:0;a:1:{s:1:\"c\";s:6:\"Week 1\";}i:1;a:1:{s:1:\"c\";s:13:\"Matthew 1 - 5\";}i:2;a:1:{s:1:\"c\";s:14:\"Matthew 6 - 10\";}i:3;a:1:{s:1:\"c\";s:15:\"Matthew 11 - 22\";}i:4;a:1:{s:1:\"c\";s:15:\"Matthew 13 - 15\";}i:5;a:1:{s:1:\"c\";s:15:\"Matthew 16 - 20\";}i:6;a:1:{s:1:\"c\";s:15:\"Matthew 21 - 23\";}i:7;a:1:{s:1:\"c\";s:15:\"Matthew 24 - 26\";}}i:1;a:8:{i:0;a:1:{s:1:\"c\";s:6:\"Week 2\";}i:1;a:1:{s:1:\"c\";s:19:\"Matthew 27 - Mark 1\";}i:2;a:1:{s:1:\"c\";s:10:\"Mark 2 - 5\";}i:3;a:1:{s:1:\"c\";s:10:\"Mark 6 - 8\";}i:4;a:1:{s:1:\"c\";s:11:\"Mark 9 - 11\";}i:5;a:1:{s:1:\"c\";s:12:\"Mark 12 - 14\";}i:6;a:1:{s:1:\"c\";s:16:\"Mark 15 - Luke 1\";}i:7;a:1:{s:1:\"c\";s:10:\"Luke 2 - 4\";}}i:2;a:8:{i:0;a:1:{s:1:\"c\";s:6:\"Week 3\";}i:1;a:1:{s:1:\"c\";s:10:\"Luke 5 - 7\";}i:2;a:1:{s:1:\"c\";s:10:\"Luke 8 - 9\";}i:3;a:1:{s:1:\"c\";s:12:\"Luke 10 - 12\";}i:4;a:1:{s:1:\"c\";s:12:\"Luke 13 - 15\";}i:5;a:1:{s:1:\"c\";s:12:\"Luke 16 - 18\";}i:6;a:1:{s:1:\"c\";s:12:\"Luke 19 - 22\";}i:7;a:1:{s:1:\"c\";s:12:\"Luke 23 - 24\";}}i:3;a:8:{i:0;a:1:{s:1:\"c\";s:6:\"Week 4\";}i:1;a:1:{s:1:\"c\";s:10:\"John 1 - 4\";}i:2;a:1:{s:1:\"c\";s:10:\"John 5 - 6\";}i:3;a:1:{s:1:\"c\";s:11:\"John  7 - 9\";}i:4;a:1:{s:1:\"c\";s:12:\"John 10 - 12\";}i:5;a:1:{s:1:\"c\";s:12:\"John 13 - 16\";}i:6;a:1:{s:1:\"c\";s:12:\"John 17 - 20\";}i:7;a:1:{s:1:\"c\";s:16:\"John 21 - Acts 3\";}}i:4;a:8:{i:0;a:1:{s:1:\"c\";s:6:\"Week 5\";}i:1;a:1:{s:1:\"c\";s:9:\"Acts 4 -7\";}i:2;a:1:{s:1:\"c\";s:10:\"Acts 8 - 9\";}i:3;a:1:{s:1:\"c\";s:12:\"Acts 10 - 13\";}i:4;a:1:{s:1:\"c\";s:12:\"Acts 14 - 16\";}i:5;a:1:{s:1:\"c\";s:12:\"Acts 17 - 20\";}i:6;a:1:{s:1:\"c\";s:12:\"Acts 21 - 23\";}i:7;a:1:{s:1:\"c\";s:12:\"Acts 24 - 27\";}}i:5;a:8:{i:0;a:1:{s:1:\"c\";s:6:\"Week 6\";}i:1;a:1:{s:1:\"c\";s:18:\"Acts 28 - Romans 3\";}i:2;a:1:{s:1:\"c\";s:12:\"Romans 4 - 8\";}i:3;a:1:{s:1:\"c\";s:13:\"Romans 9 - 13\";}i:4;a:1:{s:1:\"c\";s:17:\"Romans 14 - Cor.3\";}i:5;a:1:{s:1:\"c\";s:20:\"1 Corinthians 4 - 10\";}i:6;a:1:{s:1:\"c\";s:21:\"1 Corinthians 11 - 16\";}i:7;a:1:{s:1:\"c\";s:19:\"2 Corinthians 1 - 6\";}}i:6;a:8:{i:0;a:1:{s:1:\"c\";s:6:\"Week 7\";}i:1;a:1:{s:1:\"c\";s:21:\"2 Corinthians 7 -  13\";}i:2;a:1:{s:1:\"c\";s:9:\"Galatians\";}i:3;a:1:{s:1:\"c\";s:9:\"Ephesians\";}i:4;a:1:{s:1:\"c\";s:11:\"Phillipians\";}i:5;a:1:{s:1:\"c\";s:10:\"Colossians\";}i:6;a:1:{s:1:\"c\";s:23:\"1 &amp; 2 Thessalonians\";}i:7;a:1:{s:1:\"c\";s:9:\"1 Timothy\";}}i:7;a:8:{i:0;a:1:{s:1:\"c\";s:6:\"Week 8\";}i:1;a:1:{s:1:\"c\";s:17:\"2 Timothy - Titus\";}i:2;a:1:{s:1:\"c\";s:20:\"Philemon - Hebrews 6\";}i:3;a:1:{s:1:\"c\";s:14:\"Hebrews 7 - 11\";}i:4;a:1:{s:1:\"c\";s:20:\"Hebrews 12 - James 2\";}i:5;a:1:{s:1:\"c\";s:19:\"James 3 - 1 Peter 3\";}i:6;a:1:{s:1:\"c\";s:20:\"1 Peter 4 - 1 John 2\";}i:7;a:1:{s:1:\"c\";s:17:\"1 John 3 - 3 John\";}}i:8;a:8:{i:0;a:1:{s:1:\"c\";s:6:\"Week 9\";}i:1;a:1:{s:1:\"c\";s:16:\"Revelation 1 - 5\";}i:2;a:1:{s:1:\"c\";s:17:\"Revelation 6 - 12\";}i:3;a:1:{s:1:\"c\";s:18:\"Revelation 13 - 18\";}i:4;a:1:{s:1:\"c\";s:18:\"Revelation 19 - 22\";}i:5;a:1:{s:1:\"c\";s:0:\"\";}i:6;a:1:{s:1:\"c\";s:0:\"\";}i:7;a:1:{s:1:\"c\";s:0:\"\";}}}}'),
(509, 13, '_start_reading_today', 'field_5ce447be67b1a'),
(510, 154, 'main_banner', '38'),
(511, 154, '_main_banner', 'field_5cd9b5367f8e1'),
(512, 154, 'start_reading_today', 'a:5:{s:5:\"acftf\";a:1:{s:1:\"v\";s:5:\"1.3.5\";}s:1:\"p\";a:2:{s:1:\"o\";a:1:{s:2:\"uh\";s:1:\"0\";}s:2:\"ca\";s:0:\"\";}s:1:\"c\";a:8:{i:0;a:1:{s:1:\"p\";s:0:\"\";}i:1;a:1:{s:1:\"p\";s:0:\"\";}i:2;a:1:{s:1:\"p\";s:0:\"\";}i:3;a:1:{s:1:\"p\";s:0:\"\";}i:4;a:1:{s:1:\"p\";s:0:\"\";}i:5;a:1:{s:1:\"p\";s:0:\"\";}i:6;a:1:{s:1:\"p\";s:0:\"\";}i:7;a:1:{s:1:\"p\";s:0:\"\";}}s:1:\"h\";a:8:{i:0;a:1:{s:1:\"c\";s:0:\"\";}i:1;a:1:{s:1:\"c\";s:0:\"\";}i:2;a:1:{s:1:\"c\";s:0:\"\";}i:3;a:1:{s:1:\"c\";s:0:\"\";}i:4;a:1:{s:1:\"c\";s:0:\"\";}i:5;a:1:{s:1:\"c\";s:0:\"\";}i:6;a:1:{s:1:\"c\";s:0:\"\";}i:7;a:1:{s:1:\"c\";s:0:\"\";}}s:1:\"b\";a:9:{i:0;a:8:{i:0;a:1:{s:1:\"c\";s:6:\"Week 1\";}i:1;a:1:{s:1:\"c\";s:13:\"Matthew 1 - 5\";}i:2;a:1:{s:1:\"c\";s:14:\"Matthew 6 - 10\";}i:3;a:1:{s:1:\"c\";s:15:\"Matthew 11 - 22\";}i:4;a:1:{s:1:\"c\";s:15:\"Matthew 13 - 15\";}i:5;a:1:{s:1:\"c\";s:15:\"Matthew 16 - 20\";}i:6;a:1:{s:1:\"c\";s:15:\"Matthew 21 - 23\";}i:7;a:1:{s:1:\"c\";s:15:\"Matthew 24 - 26\";}}i:1;a:8:{i:0;a:1:{s:1:\"c\";s:6:\"Week 2\";}i:1;a:1:{s:1:\"c\";s:19:\"Matthew 27 - Mark 1\";}i:2;a:1:{s:1:\"c\";s:10:\"Mark 2 - 5\";}i:3;a:1:{s:1:\"c\";s:10:\"Mark 6 - 8\";}i:4;a:1:{s:1:\"c\";s:11:\"Mark 9 - 11\";}i:5;a:1:{s:1:\"c\";s:12:\"Mark 12 - 14\";}i:6;a:1:{s:1:\"c\";s:16:\"Mark 15 - Luke 1\";}i:7;a:1:{s:1:\"c\";s:10:\"Luke 2 - 4\";}}i:2;a:8:{i:0;a:1:{s:1:\"c\";s:6:\"Week 3\";}i:1;a:1:{s:1:\"c\";s:0:\"\";}i:2;a:1:{s:1:\"c\";s:0:\"\";}i:3;a:1:{s:1:\"c\";s:0:\"\";}i:4;a:1:{s:1:\"c\";s:0:\"\";}i:5;a:1:{s:1:\"c\";s:0:\"\";}i:6;a:1:{s:1:\"c\";s:0:\"\";}i:7;a:1:{s:1:\"c\";s:0:\"\";}}i:3;a:8:{i:0;a:1:{s:1:\"c\";s:6:\"Week 4\";}i:1;a:1:{s:1:\"c\";s:0:\"\";}i:2;a:1:{s:1:\"c\";s:0:\"\";}i:3;a:1:{s:1:\"c\";s:0:\"\";}i:4;a:1:{s:1:\"c\";s:0:\"\";}i:5;a:1:{s:1:\"c\";s:0:\"\";}i:6;a:1:{s:1:\"c\";s:0:\"\";}i:7;a:1:{s:1:\"c\";s:0:\"\";}}i:4;a:8:{i:0;a:1:{s:1:\"c\";s:6:\"Week 5\";}i:1;a:1:{s:1:\"c\";s:0:\"\";}i:2;a:1:{s:1:\"c\";s:0:\"\";}i:3;a:1:{s:1:\"c\";s:0:\"\";}i:4;a:1:{s:1:\"c\";s:0:\"\";}i:5;a:1:{s:1:\"c\";s:0:\"\";}i:6;a:1:{s:1:\"c\";s:0:\"\";}i:7;a:1:{s:1:\"c\";s:0:\"\";}}i:5;a:8:{i:0;a:1:{s:1:\"c\";s:6:\"Week 6\";}i:1;a:1:{s:1:\"c\";s:0:\"\";}i:2;a:1:{s:1:\"c\";s:0:\"\";}i:3;a:1:{s:1:\"c\";s:0:\"\";}i:4;a:1:{s:1:\"c\";s:0:\"\";}i:5;a:1:{s:1:\"c\";s:0:\"\";}i:6;a:1:{s:1:\"c\";s:0:\"\";}i:7;a:1:{s:1:\"c\";s:0:\"\";}}i:6;a:8:{i:0;a:1:{s:1:\"c\";s:6:\"Week 7\";}i:1;a:1:{s:1:\"c\";s:0:\"\";}i:2;a:1:{s:1:\"c\";s:0:\"\";}i:3;a:1:{s:1:\"c\";s:0:\"\";}i:4;a:1:{s:1:\"c\";s:0:\"\";}i:5;a:1:{s:1:\"c\";s:0:\"\";}i:6;a:1:{s:1:\"c\";s:0:\"\";}i:7;a:1:{s:1:\"c\";s:0:\"\";}}i:7;a:8:{i:0;a:1:{s:1:\"c\";s:6:\"Week 8\";}i:1;a:1:{s:1:\"c\";s:0:\"\";}i:2;a:1:{s:1:\"c\";s:0:\"\";}i:3;a:1:{s:1:\"c\";s:0:\"\";}i:4;a:1:{s:1:\"c\";s:0:\"\";}i:5;a:1:{s:1:\"c\";s:0:\"\";}i:6;a:1:{s:1:\"c\";s:0:\"\";}i:7;a:1:{s:1:\"c\";s:0:\"\";}}i:8;a:8:{i:0;a:1:{s:1:\"c\";s:6:\"Week 9\";}i:1;a:1:{s:1:\"c\";s:0:\"\";}i:2;a:1:{s:1:\"c\";s:0:\"\";}i:3;a:1:{s:1:\"c\";s:0:\"\";}i:4;a:1:{s:1:\"c\";s:0:\"\";}i:5;a:1:{s:1:\"c\";s:0:\"\";}i:6;a:1:{s:1:\"c\";s:0:\"\";}i:7;a:1:{s:1:\"c\";s:0:\"\";}}}}'),
(513, 154, '_start_reading_today', 'field_5ce447be67b1a'),
(514, 155, 'main_banner', '38'),
(515, 155, '_main_banner', 'field_5cd9b5367f8e1'),
(516, 155, 'start_reading_today', 'a:5:{s:5:\"acftf\";a:1:{s:1:\"v\";s:5:\"1.3.5\";}s:1:\"p\";a:2:{s:1:\"o\";a:1:{s:2:\"uh\";s:1:\"0\";}s:2:\"ca\";s:0:\"\";}s:1:\"c\";a:8:{i:0;a:1:{s:1:\"p\";s:0:\"\";}i:1;a:1:{s:1:\"p\";s:0:\"\";}i:2;a:1:{s:1:\"p\";s:0:\"\";}i:3;a:1:{s:1:\"p\";s:0:\"\";}i:4;a:1:{s:1:\"p\";s:0:\"\";}i:5;a:1:{s:1:\"p\";s:0:\"\";}i:6;a:1:{s:1:\"p\";s:0:\"\";}i:7;a:1:{s:1:\"p\";s:0:\"\";}}s:1:\"h\";a:8:{i:0;a:1:{s:1:\"c\";s:0:\"\";}i:1;a:1:{s:1:\"c\";s:0:\"\";}i:2;a:1:{s:1:\"c\";s:0:\"\";}i:3;a:1:{s:1:\"c\";s:0:\"\";}i:4;a:1:{s:1:\"c\";s:0:\"\";}i:5;a:1:{s:1:\"c\";s:0:\"\";}i:6;a:1:{s:1:\"c\";s:0:\"\";}i:7;a:1:{s:1:\"c\";s:0:\"\";}}s:1:\"b\";a:9:{i:0;a:8:{i:0;a:1:{s:1:\"c\";s:6:\"Week 1\";}i:1;a:1:{s:1:\"c\";s:13:\"Matthew 1 - 5\";}i:2;a:1:{s:1:\"c\";s:14:\"Matthew 6 - 10\";}i:3;a:1:{s:1:\"c\";s:15:\"Matthew 11 - 22\";}i:4;a:1:{s:1:\"c\";s:15:\"Matthew 13 - 15\";}i:5;a:1:{s:1:\"c\";s:15:\"Matthew 16 - 20\";}i:6;a:1:{s:1:\"c\";s:15:\"Matthew 21 - 23\";}i:7;a:1:{s:1:\"c\";s:15:\"Matthew 24 - 26\";}}i:1;a:8:{i:0;a:1:{s:1:\"c\";s:6:\"Week 2\";}i:1;a:1:{s:1:\"c\";s:19:\"Matthew 27 - Mark 1\";}i:2;a:1:{s:1:\"c\";s:10:\"Mark 2 - 5\";}i:3;a:1:{s:1:\"c\";s:10:\"Mark 6 - 8\";}i:4;a:1:{s:1:\"c\";s:11:\"Mark 9 - 11\";}i:5;a:1:{s:1:\"c\";s:12:\"Mark 12 - 14\";}i:6;a:1:{s:1:\"c\";s:16:\"Mark 15 - Luke 1\";}i:7;a:1:{s:1:\"c\";s:10:\"Luke 2 - 4\";}}i:2;a:8:{i:0;a:1:{s:1:\"c\";s:6:\"Week 3\";}i:1;a:1:{s:1:\"c\";s:10:\"Luke 5 - 7\";}i:2;a:1:{s:1:\"c\";s:10:\"Luke 8 - 9\";}i:3;a:1:{s:1:\"c\";s:12:\"Luke 10 - 12\";}i:4;a:1:{s:1:\"c\";s:12:\"Luke 13 - 15\";}i:5;a:1:{s:1:\"c\";s:12:\"Luke 16 - 18\";}i:6;a:1:{s:1:\"c\";s:12:\"Luke 19 - 22\";}i:7;a:1:{s:1:\"c\";s:12:\"Luke 23 - 24\";}}i:3;a:8:{i:0;a:1:{s:1:\"c\";s:6:\"Week 4\";}i:1;a:1:{s:1:\"c\";s:10:\"John 1 - 4\";}i:2;a:1:{s:1:\"c\";s:10:\"John 5 - 6\";}i:3;a:1:{s:1:\"c\";s:11:\"John  7 - 9\";}i:4;a:1:{s:1:\"c\";s:12:\"John 10 - 12\";}i:5;a:1:{s:1:\"c\";s:12:\"John 13 - 16\";}i:6;a:1:{s:1:\"c\";s:12:\"John 17 - 20\";}i:7;a:1:{s:1:\"c\";s:16:\"John 21 - Acts 3\";}}i:4;a:8:{i:0;a:1:{s:1:\"c\";s:6:\"Week 5\";}i:1;a:1:{s:1:\"c\";s:0:\"\";}i:2;a:1:{s:1:\"c\";s:0:\"\";}i:3;a:1:{s:1:\"c\";s:0:\"\";}i:4;a:1:{s:1:\"c\";s:0:\"\";}i:5;a:1:{s:1:\"c\";s:0:\"\";}i:6;a:1:{s:1:\"c\";s:0:\"\";}i:7;a:1:{s:1:\"c\";s:0:\"\";}}i:5;a:8:{i:0;a:1:{s:1:\"c\";s:6:\"Week 6\";}i:1;a:1:{s:1:\"c\";s:0:\"\";}i:2;a:1:{s:1:\"c\";s:0:\"\";}i:3;a:1:{s:1:\"c\";s:0:\"\";}i:4;a:1:{s:1:\"c\";s:0:\"\";}i:5;a:1:{s:1:\"c\";s:0:\"\";}i:6;a:1:{s:1:\"c\";s:0:\"\";}i:7;a:1:{s:1:\"c\";s:0:\"\";}}i:6;a:8:{i:0;a:1:{s:1:\"c\";s:6:\"Week 7\";}i:1;a:1:{s:1:\"c\";s:0:\"\";}i:2;a:1:{s:1:\"c\";s:0:\"\";}i:3;a:1:{s:1:\"c\";s:0:\"\";}i:4;a:1:{s:1:\"c\";s:0:\"\";}i:5;a:1:{s:1:\"c\";s:0:\"\";}i:6;a:1:{s:1:\"c\";s:0:\"\";}i:7;a:1:{s:1:\"c\";s:0:\"\";}}i:7;a:8:{i:0;a:1:{s:1:\"c\";s:6:\"Week 8\";}i:1;a:1:{s:1:\"c\";s:0:\"\";}i:2;a:1:{s:1:\"c\";s:0:\"\";}i:3;a:1:{s:1:\"c\";s:0:\"\";}i:4;a:1:{s:1:\"c\";s:0:\"\";}i:5;a:1:{s:1:\"c\";s:0:\"\";}i:6;a:1:{s:1:\"c\";s:0:\"\";}i:7;a:1:{s:1:\"c\";s:0:\"\";}}i:8;a:8:{i:0;a:1:{s:1:\"c\";s:6:\"Week 9\";}i:1;a:1:{s:1:\"c\";s:0:\"\";}i:2;a:1:{s:1:\"c\";s:0:\"\";}i:3;a:1:{s:1:\"c\";s:0:\"\";}i:4;a:1:{s:1:\"c\";s:0:\"\";}i:5;a:1:{s:1:\"c\";s:0:\"\";}i:6;a:1:{s:1:\"c\";s:0:\"\";}i:7;a:1:{s:1:\"c\";s:0:\"\";}}}}'),
(517, 155, '_start_reading_today', 'field_5ce447be67b1a'),
(518, 156, 'main_banner', '38'),
(519, 156, '_main_banner', 'field_5cd9b5367f8e1'),
(520, 156, 'start_reading_today', 'a:5:{s:5:\"acftf\";a:1:{s:1:\"v\";s:5:\"1.3.5\";}s:1:\"p\";a:2:{s:1:\"o\";a:1:{s:2:\"uh\";s:1:\"0\";}s:2:\"ca\";s:0:\"\";}s:1:\"c\";a:8:{i:0;a:1:{s:1:\"p\";s:0:\"\";}i:1;a:1:{s:1:\"p\";s:0:\"\";}i:2;a:1:{s:1:\"p\";s:0:\"\";}i:3;a:1:{s:1:\"p\";s:0:\"\";}i:4;a:1:{s:1:\"p\";s:0:\"\";}i:5;a:1:{s:1:\"p\";s:0:\"\";}i:6;a:1:{s:1:\"p\";s:0:\"\";}i:7;a:1:{s:1:\"p\";s:0:\"\";}}s:1:\"h\";a:8:{i:0;a:1:{s:1:\"c\";s:0:\"\";}i:1;a:1:{s:1:\"c\";s:0:\"\";}i:2;a:1:{s:1:\"c\";s:0:\"\";}i:3;a:1:{s:1:\"c\";s:0:\"\";}i:4;a:1:{s:1:\"c\";s:0:\"\";}i:5;a:1:{s:1:\"c\";s:0:\"\";}i:6;a:1:{s:1:\"c\";s:0:\"\";}i:7;a:1:{s:1:\"c\";s:0:\"\";}}s:1:\"b\";a:9:{i:0;a:8:{i:0;a:1:{s:1:\"c\";s:6:\"Week 1\";}i:1;a:1:{s:1:\"c\";s:13:\"Matthew 1 - 5\";}i:2;a:1:{s:1:\"c\";s:14:\"Matthew 6 - 10\";}i:3;a:1:{s:1:\"c\";s:15:\"Matthew 11 - 22\";}i:4;a:1:{s:1:\"c\";s:15:\"Matthew 13 - 15\";}i:5;a:1:{s:1:\"c\";s:15:\"Matthew 16 - 20\";}i:6;a:1:{s:1:\"c\";s:15:\"Matthew 21 - 23\";}i:7;a:1:{s:1:\"c\";s:15:\"Matthew 24 - 26\";}}i:1;a:8:{i:0;a:1:{s:1:\"c\";s:6:\"Week 2\";}i:1;a:1:{s:1:\"c\";s:19:\"Matthew 27 - Mark 1\";}i:2;a:1:{s:1:\"c\";s:10:\"Mark 2 - 5\";}i:3;a:1:{s:1:\"c\";s:10:\"Mark 6 - 8\";}i:4;a:1:{s:1:\"c\";s:11:\"Mark 9 - 11\";}i:5;a:1:{s:1:\"c\";s:12:\"Mark 12 - 14\";}i:6;a:1:{s:1:\"c\";s:16:\"Mark 15 - Luke 1\";}i:7;a:1:{s:1:\"c\";s:10:\"Luke 2 - 4\";}}i:2;a:8:{i:0;a:1:{s:1:\"c\";s:6:\"Week 3\";}i:1;a:1:{s:1:\"c\";s:10:\"Luke 5 - 7\";}i:2;a:1:{s:1:\"c\";s:10:\"Luke 8 - 9\";}i:3;a:1:{s:1:\"c\";s:12:\"Luke 10 - 12\";}i:4;a:1:{s:1:\"c\";s:12:\"Luke 13 - 15\";}i:5;a:1:{s:1:\"c\";s:12:\"Luke 16 - 18\";}i:6;a:1:{s:1:\"c\";s:12:\"Luke 19 - 22\";}i:7;a:1:{s:1:\"c\";s:12:\"Luke 23 - 24\";}}i:3;a:8:{i:0;a:1:{s:1:\"c\";s:6:\"Week 4\";}i:1;a:1:{s:1:\"c\";s:10:\"John 1 - 4\";}i:2;a:1:{s:1:\"c\";s:10:\"John 5 - 6\";}i:3;a:1:{s:1:\"c\";s:11:\"John  7 - 9\";}i:4;a:1:{s:1:\"c\";s:12:\"John 10 - 12\";}i:5;a:1:{s:1:\"c\";s:12:\"John 13 - 16\";}i:6;a:1:{s:1:\"c\";s:12:\"John 17 - 20\";}i:7;a:1:{s:1:\"c\";s:16:\"John 21 - Acts 3\";}}i:4;a:8:{i:0;a:1:{s:1:\"c\";s:6:\"Week 5\";}i:1;a:1:{s:1:\"c\";s:9:\"Acts 4 -7\";}i:2;a:1:{s:1:\"c\";s:10:\"Acts 8 - 9\";}i:3;a:1:{s:1:\"c\";s:12:\"Acts 10 - 13\";}i:4;a:1:{s:1:\"c\";s:12:\"Acts 14 - 16\";}i:5;a:1:{s:1:\"c\";s:12:\"Acts 17 - 20\";}i:6;a:1:{s:1:\"c\";s:12:\"Acts 21 - 23\";}i:7;a:1:{s:1:\"c\";s:12:\"Acts 24 - 27\";}}i:5;a:8:{i:0;a:1:{s:1:\"c\";s:6:\"Week 6\";}i:1;a:1:{s:1:\"c\";s:18:\"Acts 28 - Romans 3\";}i:2;a:1:{s:1:\"c\";s:12:\"Romans 4 - 8\";}i:3;a:1:{s:1:\"c\";s:13:\"Romans 9 - 13\";}i:4;a:1:{s:1:\"c\";s:17:\"Romans 14 - Cor.3\";}i:5;a:1:{s:1:\"c\";s:20:\"1 Corinthians 4 - 10\";}i:6;a:1:{s:1:\"c\";s:21:\"1 Corinthians 11 - 16\";}i:7;a:1:{s:1:\"c\";s:19:\"2 Corinthians 1 - 6\";}}i:6;a:8:{i:0;a:1:{s:1:\"c\";s:6:\"Week 7\";}i:1;a:1:{s:1:\"c\";s:0:\"\";}i:2;a:1:{s:1:\"c\";s:0:\"\";}i:3;a:1:{s:1:\"c\";s:0:\"\";}i:4;a:1:{s:1:\"c\";s:0:\"\";}i:5;a:1:{s:1:\"c\";s:0:\"\";}i:6;a:1:{s:1:\"c\";s:0:\"\";}i:7;a:1:{s:1:\"c\";s:0:\"\";}}i:7;a:8:{i:0;a:1:{s:1:\"c\";s:6:\"Week 8\";}i:1;a:1:{s:1:\"c\";s:0:\"\";}i:2;a:1:{s:1:\"c\";s:0:\"\";}i:3;a:1:{s:1:\"c\";s:0:\"\";}i:4;a:1:{s:1:\"c\";s:0:\"\";}i:5;a:1:{s:1:\"c\";s:0:\"\";}i:6;a:1:{s:1:\"c\";s:0:\"\";}i:7;a:1:{s:1:\"c\";s:0:\"\";}}i:8;a:8:{i:0;a:1:{s:1:\"c\";s:6:\"Week 9\";}i:1;a:1:{s:1:\"c\";s:0:\"\";}i:2;a:1:{s:1:\"c\";s:0:\"\";}i:3;a:1:{s:1:\"c\";s:0:\"\";}i:4;a:1:{s:1:\"c\";s:0:\"\";}i:5;a:1:{s:1:\"c\";s:0:\"\";}i:6;a:1:{s:1:\"c\";s:0:\"\";}i:7;a:1:{s:1:\"c\";s:0:\"\";}}}}'),
(521, 156, '_start_reading_today', 'field_5ce447be67b1a'),
(522, 157, 'main_banner', '38'),
(523, 157, '_main_banner', 'field_5cd9b5367f8e1'),
(524, 157, 'start_reading_today', 'a:5:{s:5:\"acftf\";a:1:{s:1:\"v\";s:5:\"1.3.5\";}s:1:\"p\";a:2:{s:1:\"o\";a:1:{s:2:\"uh\";s:1:\"0\";}s:2:\"ca\";s:0:\"\";}s:1:\"c\";a:8:{i:0;a:1:{s:1:\"p\";s:0:\"\";}i:1;a:1:{s:1:\"p\";s:0:\"\";}i:2;a:1:{s:1:\"p\";s:0:\"\";}i:3;a:1:{s:1:\"p\";s:0:\"\";}i:4;a:1:{s:1:\"p\";s:0:\"\";}i:5;a:1:{s:1:\"p\";s:0:\"\";}i:6;a:1:{s:1:\"p\";s:0:\"\";}i:7;a:1:{s:1:\"p\";s:0:\"\";}}s:1:\"h\";a:8:{i:0;a:1:{s:1:\"c\";s:0:\"\";}i:1;a:1:{s:1:\"c\";s:0:\"\";}i:2;a:1:{s:1:\"c\";s:0:\"\";}i:3;a:1:{s:1:\"c\";s:0:\"\";}i:4;a:1:{s:1:\"c\";s:0:\"\";}i:5;a:1:{s:1:\"c\";s:0:\"\";}i:6;a:1:{s:1:\"c\";s:0:\"\";}i:7;a:1:{s:1:\"c\";s:0:\"\";}}s:1:\"b\";a:9:{i:0;a:8:{i:0;a:1:{s:1:\"c\";s:6:\"Week 1\";}i:1;a:1:{s:1:\"c\";s:13:\"Matthew 1 - 5\";}i:2;a:1:{s:1:\"c\";s:14:\"Matthew 6 - 10\";}i:3;a:1:{s:1:\"c\";s:15:\"Matthew 11 - 22\";}i:4;a:1:{s:1:\"c\";s:15:\"Matthew 13 - 15\";}i:5;a:1:{s:1:\"c\";s:15:\"Matthew 16 - 20\";}i:6;a:1:{s:1:\"c\";s:15:\"Matthew 21 - 23\";}i:7;a:1:{s:1:\"c\";s:15:\"Matthew 24 - 26\";}}i:1;a:8:{i:0;a:1:{s:1:\"c\";s:6:\"Week 2\";}i:1;a:1:{s:1:\"c\";s:19:\"Matthew 27 - Mark 1\";}i:2;a:1:{s:1:\"c\";s:10:\"Mark 2 - 5\";}i:3;a:1:{s:1:\"c\";s:10:\"Mark 6 - 8\";}i:4;a:1:{s:1:\"c\";s:11:\"Mark 9 - 11\";}i:5;a:1:{s:1:\"c\";s:12:\"Mark 12 - 14\";}i:6;a:1:{s:1:\"c\";s:16:\"Mark 15 - Luke 1\";}i:7;a:1:{s:1:\"c\";s:10:\"Luke 2 - 4\";}}i:2;a:8:{i:0;a:1:{s:1:\"c\";s:6:\"Week 3\";}i:1;a:1:{s:1:\"c\";s:10:\"Luke 5 - 7\";}i:2;a:1:{s:1:\"c\";s:10:\"Luke 8 - 9\";}i:3;a:1:{s:1:\"c\";s:12:\"Luke 10 - 12\";}i:4;a:1:{s:1:\"c\";s:12:\"Luke 13 - 15\";}i:5;a:1:{s:1:\"c\";s:12:\"Luke 16 - 18\";}i:6;a:1:{s:1:\"c\";s:12:\"Luke 19 - 22\";}i:7;a:1:{s:1:\"c\";s:12:\"Luke 23 - 24\";}}i:3;a:8:{i:0;a:1:{s:1:\"c\";s:6:\"Week 4\";}i:1;a:1:{s:1:\"c\";s:10:\"John 1 - 4\";}i:2;a:1:{s:1:\"c\";s:10:\"John 5 - 6\";}i:3;a:1:{s:1:\"c\";s:11:\"John  7 - 9\";}i:4;a:1:{s:1:\"c\";s:12:\"John 10 - 12\";}i:5;a:1:{s:1:\"c\";s:12:\"John 13 - 16\";}i:6;a:1:{s:1:\"c\";s:12:\"John 17 - 20\";}i:7;a:1:{s:1:\"c\";s:16:\"John 21 - Acts 3\";}}i:4;a:8:{i:0;a:1:{s:1:\"c\";s:6:\"Week 5\";}i:1;a:1:{s:1:\"c\";s:9:\"Acts 4 -7\";}i:2;a:1:{s:1:\"c\";s:10:\"Acts 8 - 9\";}i:3;a:1:{s:1:\"c\";s:12:\"Acts 10 - 13\";}i:4;a:1:{s:1:\"c\";s:12:\"Acts 14 - 16\";}i:5;a:1:{s:1:\"c\";s:12:\"Acts 17 - 20\";}i:6;a:1:{s:1:\"c\";s:12:\"Acts 21 - 23\";}i:7;a:1:{s:1:\"c\";s:12:\"Acts 24 - 27\";}}i:5;a:8:{i:0;a:1:{s:1:\"c\";s:6:\"Week 6\";}i:1;a:1:{s:1:\"c\";s:18:\"Acts 28 - Romans 3\";}i:2;a:1:{s:1:\"c\";s:12:\"Romans 4 - 8\";}i:3;a:1:{s:1:\"c\";s:13:\"Romans 9 - 13\";}i:4;a:1:{s:1:\"c\";s:17:\"Romans 14 - Cor.3\";}i:5;a:1:{s:1:\"c\";s:20:\"1 Corinthians 4 - 10\";}i:6;a:1:{s:1:\"c\";s:21:\"1 Corinthians 11 - 16\";}i:7;a:1:{s:1:\"c\";s:19:\"2 Corinthians 1 - 6\";}}i:6;a:8:{i:0;a:1:{s:1:\"c\";s:6:\"Week 7\";}i:1;a:1:{s:1:\"c\";s:21:\"2 Corinthians 7 -  13\";}i:2;a:1:{s:1:\"c\";s:9:\"Galatians\";}i:3;a:1:{s:1:\"c\";s:9:\"Ephesians\";}i:4;a:1:{s:1:\"c\";s:11:\"Phillipians\";}i:5;a:1:{s:1:\"c\";s:10:\"Colossians\";}i:6;a:1:{s:1:\"c\";s:23:\"1 &amp; 2 Thessalonians\";}i:7;a:1:{s:1:\"c\";s:9:\"1 Timothy\";}}i:7;a:8:{i:0;a:1:{s:1:\"c\";s:6:\"Week 8\";}i:1;a:1:{s:1:\"c\";s:17:\"2 Timothy - Titus\";}i:2;a:1:{s:1:\"c\";s:20:\"Philemon - Hebrews 6\";}i:3;a:1:{s:1:\"c\";s:14:\"Hebrews 7 - 11\";}i:4;a:1:{s:1:\"c\";s:20:\"Hebrews 12 - James 2\";}i:5;a:1:{s:1:\"c\";s:19:\"James 3 - 1 Peter 3\";}i:6;a:1:{s:1:\"c\";s:20:\"1 Peter 4 - 1 John 2\";}i:7;a:1:{s:1:\"c\";s:17:\"1 John 3 - 3 John\";}}i:8;a:8:{i:0;a:1:{s:1:\"c\";s:6:\"Week 9\";}i:1;a:1:{s:1:\"c\";s:16:\"Revelation 1 - 5\";}i:2;a:1:{s:1:\"c\";s:17:\"Revelation 6 - 12\";}i:3;a:1:{s:1:\"c\";s:18:\"Revelation 13 - 18\";}i:4;a:1:{s:1:\"c\";s:18:\"Revelation 19 - 22\";}i:5;a:1:{s:1:\"c\";s:0:\"\";}i:6;a:1:{s:1:\"c\";s:0:\"\";}i:7;a:1:{s:1:\"c\";s:0:\"\";}}}}'),
(525, 157, '_start_reading_today', 'field_5ce447be67b1a'),
(526, 158, 'main_banner', '38'),
(527, 158, '_main_banner', 'field_5cd9b5367f8e1'),
(528, 158, 'start_reading_today', 'a:5:{s:5:\"acftf\";a:1:{s:1:\"v\";s:5:\"1.3.5\";}s:1:\"p\";a:2:{s:1:\"o\";a:1:{s:2:\"uh\";s:1:\"0\";}s:2:\"ca\";s:0:\"\";}s:1:\"c\";a:8:{i:0;a:1:{s:1:\"p\";s:0:\"\";}i:1;a:1:{s:1:\"p\";s:0:\"\";}i:2;a:1:{s:1:\"p\";s:0:\"\";}i:3;a:1:{s:1:\"p\";s:0:\"\";}i:4;a:1:{s:1:\"p\";s:0:\"\";}i:5;a:1:{s:1:\"p\";s:0:\"\";}i:6;a:1:{s:1:\"p\";s:0:\"\";}i:7;a:1:{s:1:\"p\";s:0:\"\";}}s:1:\"h\";a:8:{i:0;a:1:{s:1:\"c\";s:0:\"\";}i:1;a:1:{s:1:\"c\";s:0:\"\";}i:2;a:1:{s:1:\"c\";s:0:\"\";}i:3;a:1:{s:1:\"c\";s:0:\"\";}i:4;a:1:{s:1:\"c\";s:0:\"\";}i:5;a:1:{s:1:\"c\";s:0:\"\";}i:6;a:1:{s:1:\"c\";s:0:\"\";}i:7;a:1:{s:1:\"c\";s:0:\"\";}}s:1:\"b\";a:9:{i:0;a:8:{i:0;a:1:{s:1:\"c\";s:6:\"Week 1\";}i:1;a:1:{s:1:\"c\";s:13:\"Matthew 1 - 5\";}i:2;a:1:{s:1:\"c\";s:14:\"Matthew 6 - 10\";}i:3;a:1:{s:1:\"c\";s:15:\"Matthew 11 - 22\";}i:4;a:1:{s:1:\"c\";s:15:\"Matthew 13 - 15\";}i:5;a:1:{s:1:\"c\";s:15:\"Matthew 16 - 20\";}i:6;a:1:{s:1:\"c\";s:15:\"Matthew 21 - 23\";}i:7;a:1:{s:1:\"c\";s:15:\"Matthew 24 - 26\";}}i:1;a:8:{i:0;a:1:{s:1:\"c\";s:6:\"Week 2\";}i:1;a:1:{s:1:\"c\";s:19:\"Matthew 27 - Mark 1\";}i:2;a:1:{s:1:\"c\";s:10:\"Mark 2 - 5\";}i:3;a:1:{s:1:\"c\";s:10:\"Mark 6 - 8\";}i:4;a:1:{s:1:\"c\";s:11:\"Mark 9 - 11\";}i:5;a:1:{s:1:\"c\";s:12:\"Mark 12 - 14\";}i:6;a:1:{s:1:\"c\";s:16:\"Mark 15 - Luke 1\";}i:7;a:1:{s:1:\"c\";s:10:\"Luke 2 - 4\";}}i:2;a:8:{i:0;a:1:{s:1:\"c\";s:6:\"Week 3\";}i:1;a:1:{s:1:\"c\";s:10:\"Luke 5 - 7\";}i:2;a:1:{s:1:\"c\";s:10:\"Luke 8 - 9\";}i:3;a:1:{s:1:\"c\";s:12:\"Luke 10 - 12\";}i:4;a:1:{s:1:\"c\";s:12:\"Luke 13 - 15\";}i:5;a:1:{s:1:\"c\";s:12:\"Luke 16 - 18\";}i:6;a:1:{s:1:\"c\";s:12:\"Luke 19 - 22\";}i:7;a:1:{s:1:\"c\";s:12:\"Luke 23 - 24\";}}i:3;a:8:{i:0;a:1:{s:1:\"c\";s:6:\"Week 4\";}i:1;a:1:{s:1:\"c\";s:10:\"John 1 - 4\";}i:2;a:1:{s:1:\"c\";s:10:\"John 5 - 6\";}i:3;a:1:{s:1:\"c\";s:11:\"John  7 - 9\";}i:4;a:1:{s:1:\"c\";s:12:\"John 10 - 12\";}i:5;a:1:{s:1:\"c\";s:12:\"John 13 - 16\";}i:6;a:1:{s:1:\"c\";s:12:\"John 17 - 20\";}i:7;a:1:{s:1:\"c\";s:16:\"John 21 - Acts 3\";}}i:4;a:8:{i:0;a:1:{s:1:\"c\";s:6:\"Week 5\";}i:1;a:1:{s:1:\"c\";s:9:\"Acts 4 -7\";}i:2;a:1:{s:1:\"c\";s:10:\"Acts 8 - 9\";}i:3;a:1:{s:1:\"c\";s:12:\"Acts 10 - 13\";}i:4;a:1:{s:1:\"c\";s:12:\"Acts 14 - 16\";}i:5;a:1:{s:1:\"c\";s:12:\"Acts 17 - 20\";}i:6;a:1:{s:1:\"c\";s:12:\"Acts 21 - 23\";}i:7;a:1:{s:1:\"c\";s:12:\"Acts 24 - 27\";}}i:5;a:8:{i:0;a:1:{s:1:\"c\";s:6:\"Week 6\";}i:1;a:1:{s:1:\"c\";s:18:\"Acts 28 - Romans 3\";}i:2;a:1:{s:1:\"c\";s:12:\"Romans 4 - 8\";}i:3;a:1:{s:1:\"c\";s:13:\"Romans 9 - 13\";}i:4;a:1:{s:1:\"c\";s:17:\"Romans 14 - Cor.3\";}i:5;a:1:{s:1:\"c\";s:20:\"1 Corinthians 4 - 10\";}i:6;a:1:{s:1:\"c\";s:21:\"1 Corinthians 11 - 16\";}i:7;a:1:{s:1:\"c\";s:19:\"2 Corinthians 1 - 6\";}}i:6;a:8:{i:0;a:1:{s:1:\"c\";s:6:\"Week 7\";}i:1;a:1:{s:1:\"c\";s:21:\"2 Corinthians 7 -  13\";}i:2;a:1:{s:1:\"c\";s:9:\"Galatians\";}i:3;a:1:{s:1:\"c\";s:9:\"Ephesians\";}i:4;a:1:{s:1:\"c\";s:11:\"Phillipians\";}i:5;a:1:{s:1:\"c\";s:10:\"Colossians\";}i:6;a:1:{s:1:\"c\";s:23:\"1 &amp; 2 Thessalonians\";}i:7;a:1:{s:1:\"c\";s:9:\"1 Timothy\";}}i:7;a:8:{i:0;a:1:{s:1:\"c\";s:6:\"Week 8\";}i:1;a:1:{s:1:\"c\";s:17:\"2 Timothy - Titus\";}i:2;a:1:{s:1:\"c\";s:20:\"Philemon - Hebrews 6\";}i:3;a:1:{s:1:\"c\";s:14:\"Hebrews 7 - 11\";}i:4;a:1:{s:1:\"c\";s:20:\"Hebrews 12 - James 2\";}i:5;a:1:{s:1:\"c\";s:19:\"James 3 - 1 Peter 3\";}i:6;a:1:{s:1:\"c\";s:20:\"1 Peter 4 - 1 John 2\";}i:7;a:1:{s:1:\"c\";s:17:\"1 John 3 - 3 John\";}}i:8;a:8:{i:0;a:1:{s:1:\"c\";s:6:\"Week 9\";}i:1;a:1:{s:1:\"c\";s:16:\"Revelation 1 - 5\";}i:2;a:1:{s:1:\"c\";s:17:\"Revelation 6 - 12\";}i:3;a:1:{s:1:\"c\";s:18:\"Revelation 13 - 18\";}i:4;a:1:{s:1:\"c\";s:18:\"Revelation 19 - 22\";}i:5;a:1:{s:1:\"c\";s:0:\"\";}i:6;a:1:{s:1:\"c\";s:0:\"\";}i:7;a:1:{s:1:\"c\";s:0:\"\";}}}}'),
(529, 158, '_start_reading_today', 'field_5ce447be67b1a');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2019-05-09 11:25:18', '2019-05-09 15:25:18', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2019-05-09 11:25:18', '2019-05-09 15:25:18', '', 0, 'http://localhost:8888/Berean/?p=1', 0, 'post', '', 1),
(2, 1, '2019-05-09 11:25:18', '2019-05-09 15:25:18', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost:8888/Berean/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'trash', 'closed', 'open', '', 'sample-page__trashed', '', '', '2019-05-09 12:16:17', '2019-05-09 16:16:17', '', 0, 'http://localhost:8888/Berean/?page_id=2', 0, 'page', '', 0),
(3, 1, '2019-05-09 11:25:18', '2019-05-09 15:25:18', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://localhost:8888/Berean.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you have an account and you log in to this site, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->', 'Privacy Policy', '', 'trash', 'closed', 'open', '', 'privacy-policy__trashed', '', '', '2019-05-09 12:16:15', '2019-05-09 16:16:15', '', 0, 'http://localhost:8888/Berean/?page_id=3', 0, 'page', '', 0),
(5, 1, '2019-05-09 12:16:15', '2019-05-09 16:16:15', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://localhost:8888/Berean.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you have an account and you log in to this site, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->', 'Privacy Policy', '', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2019-05-09 12:16:15', '2019-05-09 16:16:15', '', 3, 'http://localhost:8888/Berean/2019/05/09/3-revision-v1/', 0, 'revision', '', 0),
(6, 1, '2019-05-09 12:16:17', '2019-05-09 16:16:17', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost:8888/Berean/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2019-05-09 12:16:17', '2019-05-09 16:16:17', '', 2, 'http://localhost:8888/Berean/2019/05/09/2-revision-v1/', 0, 'revision', '', 0),
(7, 1, '2019-05-09 12:16:26', '2019-05-09 16:16:26', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2019-05-13 10:57:15', '2019-05-13 14:57:15', '', 0, 'http://localhost:8888/Berean/?page_id=7', 0, 'page', '', 0),
(8, 1, '2019-05-09 12:16:26', '2019-05-09 16:16:26', '', 'Home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2019-05-09 12:16:26', '2019-05-09 16:16:26', '', 7, 'http://localhost:8888/Berean/2019/05/09/7-revision-v1/', 0, 'revision', '', 0),
(9, 1, '2019-05-09 14:14:16', '2019-05-09 18:14:16', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:1:\"7\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Footer', 'footer', 'trash', 'closed', 'closed', '', 'group_5cd46dd455edb__trashed', '', '', '2019-05-11 06:50:02', '2019-05-11 10:50:02', '', 0, 'http://localhost:8888/Berean/?post_type=acf-field-group&#038;p=9', 0, 'acf-field-group', '', 0),
(10, 1, '2019-05-09 14:14:16', '2019-05-09 18:14:16', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Helpful Link Img', 'helpful_link_img', 'trash', 'closed', 'closed', '', 'field_5cd46ddf8e068__trashed', '', '', '2019-05-11 06:50:02', '2019-05-11 10:50:02', '', 9, 'http://localhost:8888/Berean/?post_type=acf-field&#038;p=10', 0, 'acf-field', '', 0),
(11, 1, '2019-05-09 14:14:46', '2019-05-09 18:14:46', '', 'icr-logo', '', 'inherit', 'open', 'closed', '', 'icr-logo', '', '', '2019-05-09 14:15:39', '2019-05-09 18:15:39', '', 7, 'http://localhost:8888/Berean/wp-content/uploads/2019/05/icr-logo.png', 0, 'attachment', 'image/png', 0),
(12, 1, '2019-05-09 14:15:39', '2019-05-09 18:15:39', '', 'Home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2019-05-09 14:15:39', '2019-05-09 18:15:39', '', 7, 'http://localhost:8888/Berean/2019/05/09/7-revision-v1/', 0, 'revision', '', 0),
(13, 1, '2019-05-11 06:10:42', '2019-05-11 10:10:42', '', '27nt60', '', 'publish', 'closed', 'closed', '', '27nt60', '', '', '2019-05-21 15:06:25', '2019-05-21 19:06:25', '', 0, 'http://localhost:8888/Berean/?page_id=13', 0, 'page', '', 0),
(14, 1, '2019-05-11 06:10:42', '2019-05-11 10:10:42', '', '27nt60', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2019-05-11 06:10:42', '2019-05-11 10:10:42', '', 13, 'http://localhost:8888/Berean/2019/05/11/13-revision-v1/', 0, 'revision', '', 0),
(15, 1, '2019-05-11 06:12:48', '2019-05-11 10:12:48', '', 'About', '', 'publish', 'closed', 'closed', '', 'about', '', '', '2019-05-21 12:57:24', '2019-05-21 16:57:24', '', 0, 'http://localhost:8888/Berean/?page_id=15', 0, 'page', '', 0),
(16, 1, '2019-05-11 06:12:48', '2019-05-11 10:12:48', '', 'About', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2019-05-11 06:12:48', '2019-05-11 10:12:48', '', 15, 'http://localhost:8888/Berean/2019/05/11/15-revision-v1/', 0, 'revision', '', 0),
(17, 1, '2019-05-11 06:14:26', '2019-05-11 10:14:26', '', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2019-05-13 14:43:13', '2019-05-13 18:43:13', '', 0, 'http://localhost:8888/Berean/?page_id=17', 0, 'page', '', 0),
(18, 1, '2019-05-11 06:14:26', '2019-05-11 10:14:26', '', 'Contact', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2019-05-11 06:14:26', '2019-05-11 10:14:26', '', 17, 'http://localhost:8888/Berean/2019/05/11/17-revision-v1/', 0, 'revision', '', 0),
(19, 1, '2019-05-11 06:16:32', '2019-05-11 10:16:32', '', 'Donations', '', 'publish', 'closed', 'closed', '', 'donations', '', '', '2019-05-13 14:17:59', '2019-05-13 18:17:59', '', 0, 'http://localhost:8888/Berean/?page_id=19', 0, 'page', '', 0),
(20, 1, '2019-05-11 06:16:32', '2019-05-11 10:16:32', '', 'Donations', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2019-05-11 06:16:32', '2019-05-11 10:16:32', '', 19, 'http://localhost:8888/Berean/2019/05/11/19-revision-v1/', 0, 'revision', '', 0),
(21, 1, '2019-05-11 06:18:40', '2019-05-11 10:18:40', '', 'Ministries', '', 'publish', 'closed', 'closed', '', 'ministries', '', '', '2019-05-13 14:09:47', '2019-05-13 18:09:47', '', 0, 'http://localhost:8888/Berean/?page_id=21', 0, 'page', '', 0),
(22, 1, '2019-05-11 06:18:40', '2019-05-11 10:18:40', '', 'Ministries', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2019-05-11 06:18:40', '2019-05-11 10:18:40', '', 21, 'http://localhost:8888/Berean/2019/05/11/21-revision-v1/', 0, 'revision', '', 0),
(23, 1, '2019-05-11 06:21:36', '2019-05-11 10:21:36', '', 'Missionaries', '', 'publish', 'closed', 'closed', '', 'missionaries', '', '', '2019-05-13 14:16:30', '2019-05-13 18:16:30', '', 0, 'http://localhost:8888/Berean/?page_id=23', 0, 'page', '', 0),
(24, 1, '2019-05-11 06:21:36', '2019-05-11 10:21:36', '', 'Missionaries', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2019-05-11 06:21:36', '2019-05-11 10:21:36', '', 23, 'http://localhost:8888/Berean/2019/05/11/23-revision-v1/', 0, 'revision', '', 0),
(25, 1, '2019-05-11 06:22:29', '2019-05-11 10:22:29', '', 'Sermons', '', 'publish', 'closed', 'closed', '', 'sermons', '', '', '2019-05-13 14:24:22', '2019-05-13 18:24:22', '', 0, 'http://localhost:8888/Berean/?page_id=25', 0, 'page', '', 0),
(26, 1, '2019-05-11 06:22:29', '2019-05-11 10:22:29', '', 'Sermons', '', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2019-05-11 06:22:29', '2019-05-11 10:22:29', '', 25, 'http://localhost:8888/Berean/2019/05/11/25-revision-v1/', 0, 'revision', '', 0),
(27, 1, '2019-05-11 06:24:05', '2019-05-11 10:24:05', '', 'Statement Faith', '', 'publish', 'closed', 'closed', '', 'statement-faith', '', '', '2019-05-13 14:21:17', '2019-05-13 18:21:17', '', 0, 'http://localhost:8888/Berean/?page_id=27', 0, 'page', '', 0),
(28, 1, '2019-05-11 06:24:05', '2019-05-11 10:24:05', '', 'statement-faith', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2019-05-11 06:24:05', '2019-05-11 10:24:05', '', 27, 'http://localhost:8888/Berean/2019/05/11/27-revision-v1/', 0, 'revision', '', 0),
(29, 1, '2019-05-11 06:24:26', '2019-05-11 10:24:26', '', 'Statement Faith', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2019-05-11 06:24:26', '2019-05-11 10:24:26', '', 27, 'http://localhost:8888/Berean/2019/05/11/27-revision-v1/', 0, 'revision', '', 0),
(30, 1, '2019-05-11 06:48:25', '2019-05-11 10:48:25', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:12:\"options_page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:20:\"footer-customization\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Helpful Links', 'helpful-links', 'publish', 'closed', 'closed', '', 'group_5cd6a85eea34d', '', '', '2019-05-11 06:51:39', '2019-05-11 10:51:39', '', 0, 'http://localhost:8888/Berean/?post_type=acf-field-group&#038;p=30', 0, 'acf-field-group', '', 0),
(31, 1, '2019-05-11 06:49:16', '2019-05-11 10:49:16', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'ICR', 'icr', 'publish', 'closed', 'closed', '', 'field_5cd6a88016afb', '', '', '2019-05-11 06:49:16', '2019-05-11 10:49:16', '', 30, 'http://localhost:8888/Berean/?post_type=acf-field&p=31', 0, 'acf-field', '', 0),
(32, 1, '2019-05-13 09:55:59', '2019-05-13 13:55:59', 'a:7:{s:8:\"location\";a:2:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:1:\"7\";}}i:1;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"17\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Home Page', 'home-page', 'publish', 'closed', 'closed', '', 'group_5cd976b7e68f8', '', '', '2019-05-13 14:41:30', '2019-05-13 18:41:30', '', 0, 'http://localhost:8888/Berean/?post_type=acf-field-group&#038;p=32', 0, 'acf-field-group', '', 0),
(33, 1, '2019-05-13 09:55:59', '2019-05-13 13:55:59', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Main Banner', 'main_banner', 'publish', 'closed', 'closed', '', 'field_5cd976c4b28c1', '', '', '2019-05-13 09:55:59', '2019-05-13 13:55:59', '', 32, 'http://localhost:8888/Berean/?post_type=acf-field&p=33', 0, 'acf-field', '', 0),
(34, 1, '2019-05-13 09:56:51', '2019-05-13 13:56:51', '', 'home-page', '', 'inherit', 'open', 'closed', '', 'home-page', '', '', '2019-05-13 09:58:30', '2019-05-13 13:58:30', '', 7, 'http://localhost:8888/Berean/wp-content/uploads/2019/05/home-page.jpg', 0, 'attachment', 'image/jpeg', 0),
(35, 1, '2019-05-13 09:57:00', '2019-05-13 13:57:00', '', 'statement-faith', '', 'inherit', 'open', 'closed', '', 'statement-faith-2', '', '', '2019-05-13 14:21:17', '2019-05-13 18:21:17', '', 27, 'http://localhost:8888/Berean/wp-content/uploads/2019/05/statement-faith.jpg', 0, 'attachment', 'image/jpeg', 0),
(36, 1, '2019-05-13 09:57:01', '2019-05-13 13:57:01', '', 'missionaries', '', 'inherit', 'open', 'closed', '', 'missionaries-2', '', '', '2019-05-13 14:13:11', '2019-05-13 18:13:11', '', 23, 'http://localhost:8888/Berean/wp-content/uploads/2019/05/missionaries.jpg', 0, 'attachment', 'image/jpeg', 0),
(37, 1, '2019-05-13 09:57:02', '2019-05-13 13:57:02', '', 'sermons', '', 'inherit', 'open', 'closed', '', 'sermons-2', '', '', '2019-05-13 14:24:22', '2019-05-13 18:24:22', '', 25, 'http://localhost:8888/Berean/wp-content/uploads/2019/05/sermons.jpg', 0, 'attachment', 'image/jpeg', 0),
(38, 1, '2019-05-13 09:57:02', '2019-05-13 13:57:02', '', '27nt60', '', 'inherit', 'open', 'closed', '', '27nt60-2', '', '', '2019-05-13 14:19:57', '2019-05-13 18:19:57', '', 13, 'http://localhost:8888/Berean/wp-content/uploads/2019/05/27nt60.jpg', 0, 'attachment', 'image/jpeg', 0),
(39, 1, '2019-05-13 09:57:03', '2019-05-13 13:57:03', '', 'donations', '', 'inherit', 'open', 'closed', '', 'donations-2', '', '', '2019-05-13 14:17:59', '2019-05-13 18:17:59', '', 19, 'http://localhost:8888/Berean/wp-content/uploads/2019/05/donations.jpg', 0, 'attachment', 'image/jpeg', 0),
(40, 1, '2019-05-13 09:57:04', '2019-05-13 13:57:04', '', 'ministries', '', 'inherit', 'open', 'closed', '', 'ministries-2', '', '', '2019-05-13 14:09:47', '2019-05-13 18:09:47', '', 21, 'http://localhost:8888/Berean/wp-content/uploads/2019/05/ministries.jpg', 0, 'attachment', 'image/jpeg', 0),
(41, 1, '2019-05-13 09:57:05', '2019-05-13 13:57:05', '', 'about-2', '', 'inherit', 'open', 'closed', '', 'about-2', '', '', '2019-05-13 13:04:03', '2019-05-13 17:04:03', '', 15, 'http://localhost:8888/Berean/wp-content/uploads/2019/05/about-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(42, 1, '2019-05-13 09:57:05', '2019-05-13 13:57:05', '', 'about', '', 'inherit', 'open', 'closed', '', 'about-3', '', '', '2019-05-13 13:04:03', '2019-05-13 17:04:03', '', 15, 'http://localhost:8888/Berean/wp-content/uploads/2019/05/about.jpg', 0, 'attachment', 'image/jpeg', 0),
(43, 1, '2019-05-13 09:57:06', '2019-05-13 13:57:06', '', 'home-missions', '', 'inherit', 'open', 'closed', '', 'home-missions', '', '', '2019-05-13 10:00:28', '2019-05-13 14:00:28', '', 7, 'http://localhost:8888/Berean/wp-content/uploads/2019/05/home-missions.jpg', 0, 'attachment', 'image/jpeg', 0),
(45, 1, '2019-05-13 09:58:30', '2019-05-13 13:58:30', '', 'Home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2019-05-13 09:58:30', '2019-05-13 13:58:30', '', 7, 'http://localhost:8888/Berean/2019/05/13/7-revision-v1/', 0, 'revision', '', 0),
(46, 1, '2019-05-13 10:00:06', '2019-05-13 14:00:06', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Bottom Banner', 'bottom_banner', 'publish', 'closed', 'closed', '', 'field_5cd9785948b4c', '', '', '2019-05-13 10:00:06', '2019-05-13 14:00:06', '', 32, 'http://localhost:8888/Berean/?post_type=acf-field&p=46', 1, 'acf-field', '', 0),
(47, 1, '2019-05-13 10:00:28', '2019-05-13 14:00:28', '', 'Home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2019-05-13 10:00:28', '2019-05-13 14:00:28', '', 7, 'http://localhost:8888/Berean/2019/05/13/7-revision-v1/', 0, 'revision', '', 0),
(48, 1, '2019-05-13 10:27:13', '2019-05-13 14:27:13', '', 'wednesdays', '', 'inherit', 'open', 'closed', '', 'wednesdays', '', '', '2019-05-13 10:31:31', '2019-05-13 14:31:31', '', 7, 'http://localhost:8888/Berean/wp-content/uploads/2019/05/wednesdays.jpg', 0, 'attachment', 'image/jpeg', 0),
(49, 1, '2019-05-13 10:27:14', '2019-05-13 14:27:14', '', 'sundays', '', 'inherit', 'open', 'closed', '', 'sundays', '', '', '2019-05-13 10:31:31', '2019-05-13 14:31:31', '', 7, 'http://localhost:8888/Berean/wp-content/uploads/2019/05/sundays.jpg', 0, 'attachment', 'image/jpeg', 0),
(50, 1, '2019-05-13 10:27:57', '2019-05-13 14:27:57', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Service Sundays', 'service_sundays_img', 'publish', 'closed', 'closed', '', 'field_5cd97ed82e7ca', '', '', '2019-05-13 10:49:39', '2019-05-13 14:49:39', '', 32, 'http://localhost:8888/Berean/?post_type=acf-field&#038;p=50', 2, 'acf-field', '', 0),
(51, 1, '2019-05-13 10:28:08', '2019-05-13 14:28:08', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Service Wednesdays', 'service_wednesdays_img', 'publish', 'closed', 'closed', '', 'field_5cd97eefe0635', '', '', '2019-05-13 10:49:39', '2019-05-13 14:49:39', '', 32, 'http://localhost:8888/Berean/?post_type=acf-field&#038;p=51', 3, 'acf-field', '', 0),
(52, 1, '2019-05-13 10:31:31', '2019-05-13 14:31:31', '', 'Home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2019-05-13 10:31:31', '2019-05-13 14:31:31', '', 7, 'http://localhost:8888/Berean/2019/05/13/7-revision-v1/', 0, 'revision', '', 0),
(53, 1, '2019-05-13 10:49:39', '2019-05-13 14:49:39', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Service Times Wednesdays', 'service_times_wednesdays', 'publish', 'closed', 'closed', '', 'field_5cd983b506a9f', '', '', '2019-05-13 10:51:48', '2019-05-13 14:51:48', '', 32, 'http://localhost:8888/Berean/?post_type=acf-field&#038;p=53', 4, 'acf-field', '', 0),
(54, 1, '2019-05-13 10:50:01', '2019-05-13 14:50:01', '', 'Home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2019-05-13 10:50:01', '2019-05-13 14:50:01', '', 7, 'http://localhost:8888/Berean/2019/05/13/7-revision-v1/', 0, 'revision', '', 0),
(55, 1, '2019-05-13 10:51:02', '2019-05-13 14:51:02', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Service Times Sundays', 'service_times_sundays', 'publish', 'closed', 'closed', '', 'field_5cd98448f1d37', '', '', '2019-05-13 10:56:20', '2019-05-13 14:56:20', '', 32, 'http://localhost:8888/Berean/?post_type=acf-field&#038;p=55', 5, 'acf-field', '', 0),
(56, 1, '2019-05-13 10:52:34', '2019-05-13 14:52:34', '', 'Home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2019-05-13 10:52:34', '2019-05-13 14:52:34', '', 7, 'http://localhost:8888/Berean/2019/05/13/7-revision-v1/', 0, 'revision', '', 0),
(57, 1, '2019-05-13 10:53:51', '2019-05-13 14:53:51', '', 'Home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2019-05-13 10:53:51', '2019-05-13 14:53:51', '', 7, 'http://localhost:8888/Berean/2019/05/13/7-revision-v1/', 0, 'revision', '', 0),
(58, 1, '2019-05-13 10:57:15', '2019-05-13 14:57:15', '', 'Home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2019-05-13 10:57:15', '2019-05-13 14:57:15', '', 7, 'http://localhost:8888/Berean/2019/05/13/7-revision-v1/', 0, 'revision', '', 0),
(59, 1, '2019-05-13 13:03:36', '2019-05-13 17:03:36', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"15\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'About', 'about', 'publish', 'closed', 'closed', '', 'group_5cd9a33d176c2', '', '', '2019-05-21 12:57:12', '2019-05-21 16:57:12', '', 0, 'http://localhost:8888/Berean/?post_type=acf-field-group&#038;p=59', 0, 'acf-field-group', '', 0),
(60, 1, '2019-05-13 13:03:36', '2019-05-13 17:03:36', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Top Banner', 'top_banner', 'publish', 'closed', 'closed', '', 'field_5cd9a3414696b', '', '', '2019-05-13 13:03:36', '2019-05-13 17:03:36', '', 59, 'http://localhost:8888/Berean/?post_type=acf-field&p=60', 0, 'acf-field', '', 0),
(61, 1, '2019-05-13 13:03:36', '2019-05-13 17:03:36', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Bottom Banner', 'bottom_banner', 'publish', 'closed', 'closed', '', 'field_5cd9a35c4696c', '', '', '2019-05-13 13:03:36', '2019-05-13 17:03:36', '', 59, 'http://localhost:8888/Berean/?post_type=acf-field&p=61', 1, 'acf-field', '', 0),
(62, 1, '2019-05-13 13:04:03', '2019-05-13 17:04:03', '', 'About', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2019-05-13 13:04:03', '2019-05-13 17:04:03', '', 15, 'http://localhost:8888/Berean/2019/05/13/15-revision-v1/', 0, 'revision', '', 0),
(63, 1, '2019-05-13 14:09:25', '2019-05-13 18:09:25', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"21\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Ministries', 'ministries', 'publish', 'closed', 'closed', '', 'group_5cd9b2b8ef18b', '', '', '2019-05-13 14:09:25', '2019-05-13 18:09:25', '', 0, 'http://localhost:8888/Berean/?post_type=acf-field-group&#038;p=63', 0, 'acf-field-group', '', 0),
(64, 1, '2019-05-13 14:09:25', '2019-05-13 18:09:25', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Main Banner', 'main_banner', 'publish', 'closed', 'closed', '', 'field_5cd9b2bee17cc', '', '', '2019-05-13 14:09:25', '2019-05-13 18:09:25', '', 63, 'http://localhost:8888/Berean/?post_type=acf-field&p=64', 0, 'acf-field', '', 0),
(65, 1, '2019-05-13 14:09:47', '2019-05-13 18:09:47', '', 'Ministries', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2019-05-13 14:09:47', '2019-05-13 18:09:47', '', 21, 'http://localhost:8888/Berean/2019/05/13/21-revision-v1/', 0, 'revision', '', 0),
(66, 1, '2019-05-13 14:12:58', '2019-05-13 18:12:58', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"23\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Missionaries', 'missionaries', 'publish', 'closed', 'closed', '', 'group_5cd9b38b13bf9', '', '', '2019-05-13 14:16:22', '2019-05-13 18:16:22', '', 0, 'http://localhost:8888/Berean/?post_type=acf-field-group&#038;p=66', 0, 'acf-field-group', '', 0),
(67, 1, '2019-05-13 14:12:58', '2019-05-13 18:12:58', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Main Banner', 'main_banner', 'publish', 'closed', 'closed', '', 'field_5cd9b392aeaed', '', '', '2019-05-13 14:16:22', '2019-05-13 18:16:22', '', 66, 'http://localhost:8888/Berean/?post_type=acf-field&#038;p=67', 0, 'acf-field', '', 0),
(68, 1, '2019-05-13 14:13:11', '2019-05-13 18:13:11', '', 'Missionaries', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2019-05-13 14:13:11', '2019-05-13 18:13:11', '', 23, 'http://localhost:8888/Berean/2019/05/13/23-revision-v1/', 0, 'revision', '', 0),
(69, 1, '2019-05-13 14:13:56', '2019-05-13 18:13:56', '', 'Missionaries', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2019-05-13 14:13:56', '2019-05-13 18:13:56', '', 23, 'http://localhost:8888/Berean/2019/05/13/23-revision-v1/', 0, 'revision', '', 0),
(70, 1, '2019-05-13 14:17:48', '2019-05-13 18:17:48', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"19\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Donations', 'donations', 'publish', 'closed', 'closed', '', 'group_5cd9b4b727e25', '', '', '2019-05-13 14:17:48', '2019-05-13 18:17:48', '', 0, 'http://localhost:8888/Berean/?post_type=acf-field-group&#038;p=70', 0, 'acf-field-group', '', 0),
(71, 1, '2019-05-13 14:17:48', '2019-05-13 18:17:48', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Main Banner', 'main_banner', 'publish', 'closed', 'closed', '', 'field_5cd9b4c29a3e2', '', '', '2019-05-13 14:17:48', '2019-05-13 18:17:48', '', 70, 'http://localhost:8888/Berean/?post_type=acf-field&p=71', 0, 'acf-field', '', 0),
(72, 1, '2019-05-13 14:17:59', '2019-05-13 18:17:59', '', 'Donations', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2019-05-13 14:17:59', '2019-05-13 18:17:59', '', 19, 'http://localhost:8888/Berean/2019/05/13/19-revision-v1/', 0, 'revision', '', 0),
(73, 1, '2019-05-13 14:19:45', '2019-05-13 18:19:45', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"13\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', '27nt60', '27nt60', 'publish', 'closed', 'closed', '', 'group_5cd9b52675ac9', '', '', '2019-05-21 14:48:09', '2019-05-21 18:48:09', '', 0, 'http://localhost:8888/Berean/?post_type=acf-field-group&#038;p=73', 0, 'acf-field-group', '', 0),
(74, 1, '2019-05-13 14:19:45', '2019-05-13 18:19:45', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Main Banner', 'main_banner', 'publish', 'closed', 'closed', '', 'field_5cd9b5367f8e1', '', '', '2019-05-13 14:19:45', '2019-05-13 18:19:45', '', 73, 'http://localhost:8888/Berean/?post_type=acf-field&p=74', 0, 'acf-field', '', 0),
(75, 1, '2019-05-13 14:19:57', '2019-05-13 18:19:57', '', '27nt60', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2019-05-13 14:19:57', '2019-05-13 18:19:57', '', 13, 'http://localhost:8888/Berean/2019/05/13/13-revision-v1/', 0, 'revision', '', 0),
(76, 1, '2019-05-13 14:21:03', '2019-05-13 18:21:03', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"27\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Statement of Faith', 'statement-of-faith', 'publish', 'closed', 'closed', '', 'group_5cd9b57602e9b', '', '', '2019-05-13 14:21:03', '2019-05-13 18:21:03', '', 0, 'http://localhost:8888/Berean/?post_type=acf-field-group&#038;p=76', 0, 'acf-field-group', '', 0),
(77, 1, '2019-05-13 14:21:03', '2019-05-13 18:21:03', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Main Banner', 'main_banner', 'publish', 'closed', 'closed', '', 'field_5cd9b585c69b6', '', '', '2019-05-13 14:21:03', '2019-05-13 18:21:03', '', 76, 'http://localhost:8888/Berean/?post_type=acf-field&p=77', 0, 'acf-field', '', 0),
(78, 1, '2019-05-13 14:21:17', '2019-05-13 18:21:17', '', 'Statement Faith', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2019-05-13 14:21:17', '2019-05-13 18:21:17', '', 27, 'http://localhost:8888/Berean/2019/05/13/27-revision-v1/', 0, 'revision', '', 0),
(79, 1, '2019-05-13 14:24:07', '2019-05-13 18:24:07', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"25\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Sermons', 'sermons', 'publish', 'closed', 'closed', '', 'group_5cd9b6345bfe0', '', '', '2019-05-13 14:24:07', '2019-05-13 18:24:07', '', 0, 'http://localhost:8888/Berean/?post_type=acf-field-group&#038;p=79', 0, 'acf-field-group', '', 0),
(80, 1, '2019-05-13 14:24:07', '2019-05-13 18:24:07', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Main Banner', 'main_banner', 'publish', 'closed', 'closed', '', 'field_5cd9b63dcbc16', '', '', '2019-05-13 14:24:07', '2019-05-13 18:24:07', '', 79, 'http://localhost:8888/Berean/?post_type=acf-field&p=80', 0, 'acf-field', '', 0),
(81, 1, '2019-05-13 14:24:22', '2019-05-13 18:24:22', '', 'Sermons', '', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2019-05-13 14:24:22', '2019-05-13 18:24:22', '', 25, 'http://localhost:8888/Berean/2019/05/13/25-revision-v1/', 0, 'revision', '', 0),
(82, 1, '2019-05-13 14:42:17', '2019-05-13 18:42:17', '', 'Contact', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2019-05-13 14:42:17', '2019-05-13 18:42:17', '', 17, 'http://localhost:8888/Berean/2019/05/13/17-revision-v1/', 0, 'revision', '', 0),
(83, 1, '2019-05-13 14:42:21', '2019-05-13 18:42:21', '', 'Contact', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2019-05-13 14:42:21', '2019-05-13 18:42:21', '', 17, 'http://localhost:8888/Berean/2019/05/13/17-revision-v1/', 0, 'revision', '', 0),
(84, 1, '2019-05-13 14:42:48', '2019-05-13 18:42:48', '', 'Contact', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2019-05-13 14:42:48', '2019-05-13 18:42:48', '', 17, 'http://localhost:8888/Berean/2019/05/13/17-revision-v1/', 0, 'revision', '', 0),
(85, 1, '2019-05-13 14:43:13', '2019-05-13 18:43:13', '', 'Contact', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2019-05-13 14:43:13', '2019-05-13 18:43:13', '', 17, 'http://localhost:8888/Berean/2019/05/13/17-revision-v1/', 0, 'revision', '', 0),
(95, 1, '2019-05-13 22:38:53', '2019-05-14 02:38:53', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:12:\"missionaries\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Missionaries Content', 'missionaries-content', 'publish', 'closed', 'closed', '', 'group_5cda2a256e447', '', '', '2019-05-13 23:20:39', '2019-05-14 03:20:39', '', 0, 'http://localhost:8888/Berean/?post_type=acf-field-group&#038;p=95', 0, 'acf-field-group', '', 0),
(96, 1, '2019-05-13 22:38:53', '2019-05-14 02:38:53', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Photo', 'photo', 'publish', 'closed', 'closed', '', 'field_5cda2a30667f6', '', '', '2019-05-13 23:12:21', '2019-05-14 03:12:21', '', 95, 'http://localhost:8888/Berean/?post_type=acf-field&#038;p=96', 0, 'acf-field', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(101, 1, '2019-05-13 22:40:48', '2019-05-14 02:40:48', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:2:\"br\";}', 'Description', 'description', 'publish', 'closed', 'closed', '', 'field_5cda2aa2b2078', '', '', '2019-05-13 23:20:39', '2019-05-14 03:20:39', '', 95, 'http://localhost:8888/Berean/?post_type=acf-field&#038;p=101', 1, 'acf-field', '', 0),
(103, 1, '2019-05-13 22:47:47', '2019-05-14 02:47:47', '', '400x225', '', 'inherit', 'open', 'closed', '', '400x225', '', '', '2019-05-13 22:48:20', '2019-05-14 02:48:20', '', 104, 'http://localhost:8888/Berean/wp-content/uploads/2019/05/400x225.png', 0, 'attachment', 'image/png', 0),
(104, 1, '2019-05-13 22:48:20', '2019-05-14 02:48:20', '', 'Manoel & Ellen De Souza & family', '', 'publish', 'closed', 'closed', '', 'auto-draft', '', '', '2019-05-13 22:49:13', '2019-05-14 02:49:13', '', 0, 'http://localhost:8888/Berean/?post_type=product&#038;p=104', 0, 'product', '', 0),
(108, 1, '2019-05-13 23:15:46', '2019-05-14 03:15:46', '', 'Greg & Amanda Little & family', '', 'publish', 'closed', 'closed', '', 'greg-amanda-little-family', '', '', '2019-05-13 23:15:46', '2019-05-14 03:15:46', '', 0, 'http://localhost:8888/Berean/?post_type=missionaries&#038;p=108', 0, 'missionaries', '', 0),
(109, 1, '2019-05-13 23:16:12', '2019-05-14 03:16:12', '', 'Audrey Lawrence', '', 'publish', 'closed', 'closed', '', 'audrey-lawrence', '', '', '2019-05-14 09:31:42', '2019-05-14 13:31:42', '', 0, 'http://localhost:8888/Berean/?post_type=missionaries&#038;p=109', 0, 'missionaries', '', 0),
(110, 1, '2019-05-13 23:16:38', '2019-05-14 03:16:38', '', 'Liana Wiebe', '', 'publish', 'closed', 'closed', '', 'liana-wiebe', '', '', '2019-05-13 23:16:38', '2019-05-14 03:16:38', '', 0, 'http://localhost:8888/Berean/?post_type=missionaries&#038;p=110', 0, 'missionaries', '', 0),
(111, 1, '2019-05-13 23:17:04', '2019-05-14 03:17:04', '', 'Jim & Ruth Turpin', '', 'publish', 'closed', 'closed', '', 'jim-ruth-turpin', '', '', '2019-05-13 23:17:04', '2019-05-14 03:17:04', '', 0, 'http://localhost:8888/Berean/?post_type=missionaries&#038;p=111', 0, 'missionaries', '', 0),
(112, 1, '2019-05-13 23:17:28', '2019-05-14 03:17:28', '', 'Jing & Arlene Batac & family', '', 'publish', 'closed', 'closed', '', 'jing-arlene-batac-family', '', '', '2019-05-13 23:17:28', '2019-05-14 03:17:28', '', 0, 'http://localhost:8888/Berean/?post_type=missionaries&#038;p=112', 0, 'missionaries', '', 0),
(113, 1, '2019-05-13 23:17:50', '2019-05-14 03:17:50', '', 'Kevin & Stella Stroud', '', 'publish', 'closed', 'closed', '', 'kevin-stella-stroud', '', '', '2019-05-13 23:17:50', '2019-05-14 03:17:50', '', 0, 'http://localhost:8888/Berean/?post_type=missionaries&#038;p=113', 0, 'missionaries', '', 0),
(114, 1, '2019-05-13 23:18:14', '2019-05-14 03:18:14', '', 'Manoel & Ellen De Souza & family', '', 'publish', 'closed', 'closed', '', 'manoel-ellen-de-souza-family', '', '', '2019-05-13 23:18:14', '2019-05-14 03:18:14', '', 0, 'http://localhost:8888/Berean/?post_type=missionaries&#038;p=114', 0, 'missionaries', '', 0),
(116, 1, '2019-05-14 09:45:22', '2019-05-14 13:45:22', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:10:\"scriptures\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Scriptures', 'scriptures', 'publish', 'closed', 'closed', '', 'group_5cdac616653ca', '', '', '2019-05-14 10:50:36', '2019-05-14 14:50:36', '', 0, 'http://localhost:8888/Berean/?post_type=acf-field-group&#038;p=116', 0, 'acf-field-group', '', 0),
(117, 1, '2019-05-14 09:45:22', '2019-05-14 13:45:22', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:35:\"This will show up next to the title\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Sub Title', 'sub_title', 'publish', 'closed', 'closed', '', 'field_5cdac6225db8e', '', '', '2019-05-14 09:45:22', '2019-05-14 13:45:22', '', 116, 'http://localhost:8888/Berean/?post_type=acf-field&p=117', 0, 'acf-field', '', 0),
(118, 1, '2019-05-14 09:45:22', '2019-05-14 13:45:22', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:2:\"br\";}', 'Content', 'content', 'publish', 'closed', 'closed', '', 'field_5cdac6685db8f', '', '', '2019-05-14 10:50:36', '2019-05-14 14:50:36', '', 116, 'http://localhost:8888/Berean/?post_type=acf-field&#038;p=118', 1, 'acf-field', '', 0),
(120, 1, '2019-05-14 09:51:15', '2019-05-14 13:51:15', '', 'The Godhead', '', 'trash', 'closed', 'closed', '', 'the-godhead__trashed', '', '', '2019-05-14 11:43:46', '2019-05-14 15:43:46', '', 0, 'http://localhost:8888/Berean/?post_type=scriptures&#038;p=120', 0, 'scriptures', '', 0),
(121, 1, '2019-05-14 11:28:11', '2019-05-14 15:28:11', '', 'Biblical Separation', '', 'publish', 'closed', 'closed', '', 'biblical-separation', '', '', '2019-05-14 11:28:11', '2019-05-14 15:28:11', '', 0, 'http://localhost:8888/Berean/?post_type=scriptures&#038;p=121', 0, 'scriptures', '', 0),
(122, 1, '2019-05-14 11:33:44', '2019-05-14 15:33:44', '', 'The Future', '', 'publish', 'closed', 'closed', '', 'the-future', '', '', '2019-05-14 11:33:44', '2019-05-14 15:33:44', '', 0, 'http://localhost:8888/Berean/?post_type=scriptures&#038;p=122', 0, 'scriptures', '', 0),
(123, 1, '2019-05-14 11:34:35', '2019-05-14 15:34:35', '', 'Civil Government', '', 'publish', 'closed', 'closed', '', 'civil-government', '', '', '2019-05-14 11:34:35', '2019-05-14 15:34:35', '', 0, 'http://localhost:8888/Berean/?post_type=scriptures&#038;p=123', 0, 'scriptures', '', 0),
(124, 1, '2019-05-14 11:35:37', '2019-05-14 15:35:37', '', 'The Church', '', 'publish', 'closed', 'closed', '', 'the-church', '', '', '2019-05-14 11:37:56', '2019-05-14 15:37:56', '', 0, 'http://localhost:8888/Berean/?post_type=scriptures&#038;p=124', 0, 'scriptures', '', 0),
(125, 1, '2019-05-14 11:43:42', '2019-05-14 15:43:42', '', 'Israel', '', 'trash', 'closed', 'closed', '', '__trashed', '', '', '2019-05-14 11:43:42', '2019-05-14 15:43:42', '', 0, 'http://localhost:8888/Berean/?post_type=scriptures&#038;p=125', 0, 'scriptures', '', 0),
(126, 1, '2019-05-14 11:39:17', '2019-05-14 15:39:17', '', 'Israel', '', 'publish', 'closed', 'closed', '', 'israel', '', '', '2019-05-14 11:39:17', '2019-05-14 15:39:17', '', 0, 'http://localhost:8888/Berean/?post_type=scriptures&#038;p=126', 0, 'scriptures', '', 0),
(127, 1, '2019-05-14 11:40:17', '2019-05-14 15:40:17', '', 'Salvation', '', 'publish', 'closed', 'closed', '', 'salvation', '', '', '2019-05-14 11:40:17', '2019-05-14 15:40:17', '', 0, 'http://localhost:8888/Berean/?post_type=scriptures&#038;p=127', 0, 'scriptures', '', 0),
(128, 1, '2019-05-14 11:40:59', '2019-05-14 15:40:59', '', 'Sin', '', 'publish', 'closed', 'closed', '', 'sin', '', '', '2019-05-14 11:40:59', '2019-05-14 15:40:59', '', 0, 'http://localhost:8888/Berean/?post_type=scriptures&#038;p=128', 0, 'scriptures', '', 0),
(129, 1, '2019-05-14 11:42:01', '2019-05-14 15:42:01', '', 'Mankind & Creation', '', 'publish', 'closed', 'closed', '', 'mankind-creation', '', '', '2019-05-14 11:42:01', '2019-05-14 15:42:01', '', 0, 'http://localhost:8888/Berean/?post_type=scriptures&#038;p=129', 0, 'scriptures', '', 0),
(130, 1, '2019-05-14 11:43:29', '2019-05-14 15:43:29', '', 'Angels', '', 'publish', 'closed', 'closed', '', 'angels', '', '', '2019-05-14 11:48:04', '2019-05-14 15:48:04', '', 0, 'http://localhost:8888/Berean/?post_type=scriptures&#038;p=130', 0, 'scriptures', '', 0),
(131, 1, '2019-05-14 11:44:59', '2019-05-14 15:44:59', '', 'The Godhead', '', 'publish', 'closed', 'closed', '', 'the-godhead', '', '', '2019-05-14 11:44:59', '2019-05-14 15:44:59', '', 0, 'http://localhost:8888/Berean/?post_type=scriptures&#038;p=131', 0, 'scriptures', '', 0),
(132, 1, '2019-05-14 13:36:36', '2019-05-14 17:36:36', '\"SampleAudio_0.4mb\".', 'SampleAudio_0.4mb', '', 'inherit', 'open', 'closed', '', 'sampleaudio_0-4mb', '', '', '2019-05-15 11:28:42', '2019-05-15 15:28:42', '', 136, 'http://localhost:8888/Berean/wp-content/uploads/2019/05/SampleAudio_0.4mb.mp3', 0, 'attachment', 'audio/mpeg', 0),
(133, 1, '2019-05-14 13:44:16', '2019-05-14 17:44:16', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:7:\"sermons\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Sermons Content', 'sermons-content', 'publish', 'closed', 'closed', '', 'group_5cdafe3374fe0', '', '', '2019-05-15 09:58:39', '2019-05-15 13:58:39', '', 0, 'http://localhost:8888/Berean/?post_type=acf-field-group&#038;p=133', 0, 'acf-field-group', '', 0),
(134, 1, '2019-05-14 13:44:16', '2019-05-14 17:44:16', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Pastor\'s Name', 'pastors_name', 'publish', 'closed', 'closed', '', 'field_5cdafe41a9d64', '', '', '2019-05-14 14:14:27', '2019-05-14 18:14:27', '', 133, 'http://localhost:8888/Berean/?post_type=acf-field&#038;p=134', 0, 'acf-field', '', 0),
(135, 1, '2019-05-14 13:44:16', '2019-05-14 17:44:16', 'a:10:{s:4:\"type\";s:4:\"file\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:7:\"library\";s:3:\"all\";s:8:\"min_size\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Audio File', 'audio_file', 'publish', 'closed', 'closed', '', 'field_5cdafe58a9d65', '', '', '2019-05-15 09:58:39', '2019-05-15 13:58:39', '', 133, 'http://localhost:8888/Berean/?post_type=acf-field&#038;p=135', 1, 'acf-field', '', 0),
(136, 1, '2016-05-14 13:45:14', '2016-05-14 17:45:14', '', 'Sermon #1', '', 'publish', 'closed', 'closed', '', 'sermon-title-1', '', '', '2019-05-15 09:59:25', '2019-05-15 13:59:25', '', 0, 'http://localhost:8888/Berean/?post_type=sermons&#038;p=136', 0, 'sermons', '', 0),
(139, 1, '2017-05-14 17:52:09', '2017-05-14 21:52:09', '', 'Sermon #2', '', 'publish', 'closed', 'closed', '', 'sermon-2', '', '', '2019-05-15 09:59:15', '2019-05-15 13:59:15', '', 0, 'http://localhost:8888/Berean/?post_type=sermons&#038;p=139', 0, 'sermons', '', 0),
(140, 1, '2018-05-15 09:59:44', '2018-05-15 13:59:44', '', 'Sermon #3', '', 'publish', 'closed', 'closed', '', 'sermon-3', '', '', '2019-05-15 09:59:53', '2019-05-15 13:59:53', '', 0, 'http://localhost:8888/Berean/?post_type=sermons&#038;p=140', 0, 'sermons', '', 0),
(141, 1, '2019-05-15 10:00:09', '2019-05-15 14:00:09', '', 'Sermon #4', '', 'publish', 'closed', 'closed', '', 'sermon-4', '', '', '2019-05-15 10:00:09', '2019-05-15 14:00:09', '', 0, 'http://localhost:8888/Berean/?post_type=sermons&#038;p=141', 0, 'sermons', '', 0),
(142, 1, '2019-05-15 11:26:57', '2019-05-15 15:26:57', '', 'Sermon #5', '', 'publish', 'closed', 'closed', '', 'sermon-5', '', '', '2019-05-15 11:26:57', '2019-05-15 15:26:57', '', 0, 'http://localhost:8888/Berean/?post_type=sermons&#038;p=142', 0, 'sermons', '', 0),
(143, 1, '2019-05-15 11:27:23', '2019-05-15 15:27:23', '', 'Sermon #6', '', 'publish', 'closed', 'closed', '', 'sermon-6', '', '', '2019-05-15 11:27:23', '2019-05-15 15:27:23', '', 0, 'http://localhost:8888/Berean/?post_type=sermons&#038;p=143', 0, 'sermons', '', 0),
(144, 1, '2019-05-15 11:27:48', '2019-05-15 15:27:48', '', 'Sermon #7', '', 'publish', 'closed', 'closed', '', 'sermon-7', '', '', '2019-05-15 11:27:48', '2019-05-15 15:27:48', '', 0, 'http://localhost:8888/Berean/?post_type=sermons&#038;p=144', 0, 'sermons', '', 0),
(146, 1, '2019-05-15 11:28:16', '2019-05-15 15:28:16', '', 'Sermon #8', '', 'publish', 'closed', 'closed', '', 'sermon-8-2', '', '', '2019-05-15 11:28:16', '2019-05-15 15:28:16', '', 0, 'http://localhost:8888/Berean/?post_type=sermons&#038;p=146', 0, 'sermons', '', 0),
(148, 1, '2019-05-15 11:28:44', '2019-05-15 15:28:44', '', 'Sermon #9', '', 'publish', 'closed', 'closed', '', 'sermon-9-2', '', '', '2019-05-15 11:28:44', '2019-05-15 15:28:44', '', 0, 'http://localhost:8888/Berean/?post_type=sermons&#038;p=148', 0, 'sermons', '', 0),
(149, 1, '2019-05-21 09:36:14', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-05-21 09:36:14', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/Berean/?p=149', 0, 'post', '', 0),
(150, 1, '2019-05-21 12:50:56', '2019-05-21 16:50:56', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Pastor Image', 'pastor_image', 'publish', 'closed', 'closed', '', 'field_5ce42c5d5d6d4', '', '', '2019-05-21 12:50:56', '2019-05-21 16:50:56', '', 59, 'http://localhost:8888/Berean/?post_type=acf-field&p=150', 2, 'acf-field', '', 0),
(151, 1, '2019-05-21 12:53:43', '2019-05-21 16:53:43', '', 'pastor-bruce', '', 'inherit', 'open', 'closed', '', 'pastor-bruce', '', '', '2019-05-21 12:53:54', '2019-05-21 16:53:54', '', 15, 'http://localhost:8888/Berean/wp-content/uploads/2019/05/pastor-bruce.jpg', 0, 'attachment', 'image/jpeg', 0),
(152, 1, '2019-05-21 12:57:24', '2019-05-21 16:57:24', '', 'About', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2019-05-21 12:57:24', '2019-05-21 16:57:24', '', 15, 'http://localhost:8888/Berean/2019/05/21/15-revision-v1/', 0, 'revision', '', 0),
(153, 1, '2019-05-21 14:48:09', '2019-05-21 18:48:09', 'a:7:{s:4:\"type\";s:5:\"table\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:10:\"use_header\";i:0;s:11:\"use_caption\";i:2;}', 'Start Reading Today', 'start_reading_today', 'publish', 'closed', 'closed', '', 'field_5ce447be67b1a', '', '', '2019-05-21 14:48:09', '2019-05-21 18:48:09', '', 73, 'http://localhost:8888/Berean/?post_type=acf-field&p=153', 1, 'acf-field', '', 0),
(154, 1, '2019-05-21 14:54:19', '2019-05-21 18:54:19', '', '27nt60', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2019-05-21 14:54:19', '2019-05-21 18:54:19', '', 13, 'http://localhost:8888/Berean/2019/05/21/13-revision-v1/', 0, 'revision', '', 0),
(155, 1, '2019-05-21 14:57:31', '2019-05-21 18:57:31', '', '27nt60', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2019-05-21 14:57:31', '2019-05-21 18:57:31', '', 13, 'http://localhost:8888/Berean/2019/05/21/13-revision-v1/', 0, 'revision', '', 0),
(156, 1, '2019-05-21 15:01:07', '2019-05-21 19:01:07', '', '27nt60', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2019-05-21 15:01:07', '2019-05-21 19:01:07', '', 13, 'http://localhost:8888/Berean/2019/05/21/13-revision-v1/', 0, 'revision', '', 0),
(157, 1, '2019-05-21 15:06:23', '2019-05-21 19:06:23', '', '27nt60', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2019-05-21 15:06:23', '2019-05-21 19:06:23', '', 13, 'http://localhost:8888/Berean/2019/05/21/13-revision-v1/', 0, 'revision', '', 0),
(158, 1, '2019-05-21 15:06:25', '2019-05-21 19:06:25', '', '27nt60', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2019-05-21 15:06:25', '2019-05-21 19:06:25', '', 13, 'http://localhost:8888/Berean/2019/05/21/13-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorised', 'uncategorized', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'redding-design'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'wp496_privacy'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"02e6715debac0519781b73ca569b648209257f882dfcac054da28508060dad21\";a:4:{s:10:\"expiration\";i:1558618573;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36\";s:5:\"login\";i:1558445773;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '149'),
(18, 1, 'wp_user-settings', 'libraryContent=browse&post_dfw=off'),
(19, 1, 'wp_user-settings-time', '1557841584');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'redding-design', '$P$BEbTED2DVWsXWFmCWjWTSLoem6Gkvc.', 'redding-design', 'rick@reddingdesigns.com', '', '2019-05-09 15:25:18', '', 0, 'redding-design');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=319;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=530;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=159;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
