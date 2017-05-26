-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 24, 2017 at 06:38 AM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aitlaundry`
--

-- --------------------------------------------------------

--
-- Table structure for table `fv5oz_assets`
--

CREATE TABLE `fv5oz_assets` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set parent.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `level` int(10) UNSIGNED NOT NULL COMMENT 'The cached level in the nested tree.',
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The unique name for the asset.\n',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The descriptive title for the asset.',
  `rules` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded access control.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fv5oz_assets`
--

INSERT INTO `fv5oz_assets` (`id`, `parent_id`, `lft`, `rgt`, `level`, `name`, `title`, `rules`) VALUES
(1, 0, 0, 159, 0, 'root.1', 'Root Asset', '{"core.login.site":{"6":1,"2":1},"core.login.admin":{"6":1},"core.login.offline":{"6":1},"core.admin":{"8":1},"core.manage":{"7":1},"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(2, 1, 1, 2, 1, 'com_admin', 'com_admin', '{}'),
(3, 1, 3, 6, 1, 'com_banners', 'com_banners', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(4, 1, 7, 8, 1, 'com_cache', 'com_cache', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(5, 1, 9, 10, 1, 'com_checkin', 'com_checkin', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(6, 1, 11, 12, 1, 'com_config', 'com_config', '{}'),
(7, 1, 13, 16, 1, 'com_contact', 'com_contact', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(8, 1, 17, 28, 1, 'com_content', 'com_content', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(9, 1, 29, 30, 1, 'com_cpanel', 'com_cpanel', '{}'),
(10, 1, 31, 32, 1, 'com_installer', 'com_installer', '{"core.admin":[],"core.manage":{"7":0},"core.delete":{"7":0},"core.edit.state":{"7":0}}'),
(11, 1, 33, 34, 1, 'com_languages', 'com_languages', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(12, 1, 35, 36, 1, 'com_login', 'com_login', '{}'),
(13, 1, 37, 38, 1, 'com_mailto', 'com_mailto', '{}'),
(14, 1, 39, 40, 1, 'com_massmail', 'com_massmail', '{}'),
(15, 1, 41, 42, 1, 'com_media', 'com_media', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":{"5":1}}'),
(16, 1, 43, 48, 1, 'com_menus', 'com_menus', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(17, 1, 49, 50, 1, 'com_messages', 'com_messages', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(18, 1, 51, 112, 1, 'com_modules', 'com_modules', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(19, 1, 113, 116, 1, 'com_newsfeeds', 'com_newsfeeds', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(20, 1, 117, 118, 1, 'com_plugins', 'com_plugins', '{"core.admin":{"7":1},"core.manage":[],"core.edit":[],"core.edit.state":[]}'),
(21, 1, 119, 120, 1, 'com_redirect', 'com_redirect', '{"core.admin":{"7":1},"core.manage":[]}'),
(22, 1, 121, 122, 1, 'com_search', 'com_search', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(23, 1, 123, 124, 1, 'com_templates', 'com_templates', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(24, 1, 125, 128, 1, 'com_users', 'com_users', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(26, 1, 129, 130, 1, 'com_wrapper', 'com_wrapper', '{}'),
(27, 8, 18, 27, 2, 'com_content.category.2', 'other', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(28, 3, 4, 5, 2, 'com_banners.category.3', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(29, 7, 14, 15, 2, 'com_contact.category.4', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(30, 19, 114, 115, 2, 'com_newsfeeds.category.5', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(32, 24, 126, 127, 1, 'com_users.category.7', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(33, 1, 131, 132, 1, 'com_finder', 'com_finder', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(34, 1, 133, 134, 1, 'com_joomlaupdate', 'com_joomlaupdate', '{"core.admin":[],"core.manage":[],"core.delete":[],"core.edit.state":[]}'),
(35, 1, 135, 136, 1, 'com_tags', 'com_tags', '{"core.admin":[],"core.manage":[],"core.manage":[],"core.delete":[],"core.edit.state":[]}'),
(36, 1, 137, 138, 1, 'com_contenthistory', 'com_contenthistory', '{}'),
(37, 1, 139, 140, 1, 'com_ajax', 'com_ajax', '{}'),
(38, 1, 141, 142, 1, 'com_postinstall', 'com_postinstall', '{}'),
(39, 18, 52, 53, 2, 'com_modules.module.1', 'Main Menu', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(40, 18, 54, 55, 2, 'com_modules.module.2', 'Login', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(41, 18, 56, 57, 2, 'com_modules.module.3', 'Popular Articles', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(42, 18, 58, 59, 2, 'com_modules.module.4', 'Recently Added Articles', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(43, 18, 60, 61, 2, 'com_modules.module.8', 'Toolbar', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(44, 18, 62, 63, 2, 'com_modules.module.9', 'Quick Icons', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(45, 18, 64, 65, 2, 'com_modules.module.10', 'Logged-in Users', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(46, 18, 66, 67, 2, 'com_modules.module.12', 'Admin Menu', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(47, 18, 68, 69, 2, 'com_modules.module.13', 'Admin Submenu', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(48, 18, 70, 71, 2, 'com_modules.module.14', 'User Status', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(49, 18, 72, 73, 2, 'com_modules.module.15', 'Title', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(50, 18, 74, 75, 2, 'com_modules.module.16', 'Login Form', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
(51, 18, 76, 77, 2, 'com_modules.module.17', 'Breadcrumbs', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(52, 18, 78, 79, 2, 'com_modules.module.79', 'Multilanguage status', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(53, 18, 80, 81, 2, 'com_modules.module.86', 'Joomla Version', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(54, 16, 44, 45, 2, 'com_menus.menu.1', 'Main Menu', '{}'),
(59, 1, 143, 144, 1, 'com_servicess', 'com_servicess', '{"core.manage":{"1":1}}'),
(61, 1, 145, 146, 1, 'com_combos', 'com_combos', '{"core.manage":{"1":1}}'),
(62, 1, 147, 148, 1, 'com_payment', 'com_payment', '{}'),
(64, 1, 149, 150, 1, 'com_order', 'com_order', '{"core.manage":{"1":1}}'),
(65, 1, 151, 152, 1, 'com_logbook', 'com_logbook', '{"core.manage":{"1":1}}'),
(66, 1, 153, 154, 1, 'com_orderlogbook', 'com_orderlogbook', '{"core.manage":{"1":1}}'),
(69, 1, 155, 156, 1, 'com_location', 'com_location', '{}'),
(70, 16, 46, 47, 2, 'com_menus.menu.2', 'System Menu', '{}'),
(72, 18, 82, 83, 2, 'com_modules.module.88', 'AITLaundry search Location', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
(74, 18, 84, 85, 2, 'com_modules.module.89', 'JCK Manager', '{}'),
(75, 18, 86, 87, 2, 'com_modules.module.90', 'Dashboard', '{}'),
(76, 18, 88, 89, 2, 'com_modules.module.91', 'JCK Manager v6.4.4', '{}'),
(77, 18, 90, 91, 2, 'com_modules.module.92', 'COM_JCKMAN_CPANEL_SLIDER_MANAGER_LABEL', '{}'),
(78, 18, 92, 93, 2, 'com_modules.module.93', 'COM_JCKMAN_CPANEL_SLIDER_PLUGIN_LABEL', '{}'),
(79, 18, 94, 95, 2, 'com_modules.module.94', 'COM_JCKMAN_CPANEL_SLIDER_SYSTEM_CHECK_LABEL', '{}'),
(80, 18, 96, 97, 2, 'com_modules.module.95', 'COM_JCKMAN_CPANEL_SLIDER_SYSTEM_LAYOUT_MANAGER', '{}'),
(81, 18, 98, 99, 2, 'com_modules.module.96', 'COM_JCKMAN_CPANEL_SLIDER_BACKUP_LABEL', '{}'),
(82, 18, 100, 101, 2, 'com_modules.module.97', 'COM_JCKMAN_CPANEL_SLIDER_RESTORE_LABEL', '{}'),
(83, 18, 102, 103, 2, 'com_modules.module.98', 'COM_JCKMAN_CPANEL_SLIDER_SYNC_LABEL', '{}'),
(84, 1, 157, 158, 1, 'com_jckman', 'com_jckman', '{}'),
(85, 18, 104, 105, 2, 'com_modules.module.99', 'Feature Photo', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
(86, 18, 106, 107, 2, 'com_modules.module.100', 'How it works', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
(87, 18, 108, 109, 2, 'com_modules.module.101', 'Combos', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
(88, 18, 110, 111, 2, 'com_modules.module.102', 'Footer', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
(89, 27, 19, 20, 3, 'com_content.article.1', 'TERMS & CONDITIONS', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(90, 27, 21, 22, 3, 'com_content.article.2', 'ABOUT US', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(91, 27, 23, 24, 3, 'com_content.article.3', 'PRIVACY POLICY', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(92, 27, 25, 26, 3, 'com_content.article.4', 'CONTACT US', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}');

-- --------------------------------------------------------

--
-- Table structure for table `fv5oz_associations`
--

CREATE TABLE `fv5oz_associations` (
  `id` int(11) NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fv5oz_banners`
--

CREATE TABLE `fv5oz_banners` (
  `id` int(11) NOT NULL,
  `cid` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT '0',
  `impmade` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `clickurl` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `custombannercode` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sticky` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `own_prefix` tinyint(1) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reset` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fv5oz_banner_clients`
--

CREATE TABLE `fv5oz_banner_clients` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `contact` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `extrainfo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `own_prefix` tinyint(4) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fv5oz_banner_tracks`
--

CREATE TABLE `fv5oz_banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int(10) UNSIGNED NOT NULL,
  `banner_id` int(10) UNSIGNED NOT NULL,
  `count` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fv5oz_categories`
--

CREATE TABLE `fv5oz_categories` (
  `id` int(11) NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `path` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `extension` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fv5oz_categories`
--

INSERT INTO `fv5oz_categories` (`id`, `asset_id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `extension`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `modified_user_id`, `modified_time`, `hits`, `language`, `version`) VALUES
(1, 0, 0, 0, 11, 0, '', 'system', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{}', '', '', '{}', 106, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(2, 27, 1, 1, 2, 1, 'other', 'com_content', 'other', 'other', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":"","image_alt":""}', '', '', '{"author":"","robots":""}', 106, '2011-01-01 00:00:01', 106, '2017-05-22 10:09:51', 0, '*', 1),
(3, 28, 1, 3, 4, 1, 'uncategorised', 'com_banners', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 106, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(4, 29, 1, 5, 6, 1, 'uncategorised', 'com_contact', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 106, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(5, 30, 1, 7, 8, 1, 'uncategorised', 'com_newsfeeds', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 106, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(7, 32, 1, 9, 10, 1, 'uncategorised', 'com_users', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 106, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1);

-- --------------------------------------------------------

--
-- Table structure for table `fv5oz_combos_combo`
--

CREATE TABLE `fv5oz_combos_combo` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ordering` int(11) NOT NULL,
  `state` tinyint(1) NOT NULL,
  `checked_out` int(11) NOT NULL,
  `checked_out_time` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fv5oz_combos_combo`
--

INSERT INTO `fv5oz_combos_combo` (`id`, `name`, `description`, `ordering`, `state`, `checked_out`, `checked_out_time`, `created_by`, `modified_by`) VALUES
(1, 'COUPLE', '<div class="container-fluid" style="box-sizing: border-box; padding: 30px 20px; margin-right: auto; margin-left: auto; color: #333333; font-family: Viga, sans-serif; font-size: 14px; letter-spacing: 2px; text-align: center;"><img class="cke-resize" style="box-sizing: border-box; border: 0px; vertical-align: middle; max-width: 300px;" src="images/couple.png" /></div>\r\n<div class="combodescription" style="box-sizing: border-box; padding: 20px; border-bottom: 1px solid #cccccc; color: #333333; font-family: Viga, sans-serif; font-size: 14px; letter-spacing: 2px; text-align: center;">\r\n<p style="box-sizing: border-box; margin: 0px;"><span style="font-weight: 400; font-size: 14pt;">Special for two people</span></p>\r\n</div>\r\n<div id="ckimgrsz" style="left: 511.6px; top: 38px;">\r\n<div class="preview"> </div>\r\n</div>', 2, 1, 0, '0000-00-00 00:00:00', 106, 106),
(2, 'SINGLE', '<div class="container-fluid" style="box-sizing: border-box; padding: 20px; margin-right: auto; margin-left: auto; color: #333333; font-family: Viga, sans-serif; font-size: 14px; letter-spacing: 2px; text-align: center;"><img class="cke-resize" style="box-sizing: border-box; border: 0px; vertical-align: middle; max-width: 200px;" src="images/single.png" /></div>\r\n<div class="combodescription" style="box-sizing: border-box; padding: 20px; border-bottom: 1px solid #cccccc; color: #333333; font-family: Viga, sans-serif; font-size: 14px; letter-spacing: 2px; text-align: center;">\r\n<p style="box-sizing: border-box; margin: 0px;"><span style="font-weight: 400; font-size: 14pt;">Ideal for one person</span></p>\r\n</div>\r\n<div id="ckimgrsz" style="left: 581.556px; top: 28px;">\r\n<div class="preview"> </div>\r\n</div>', 1, 1, 0, '0000-00-00 00:00:00', 106, 106),
(3, 'FAMILY', '<div class="container-fluid" style="box-sizing: border-box; padding: 30px 20px; margin-right: auto; margin-left: auto; color: #333333; font-family: Viga, sans-serif; font-size: 14px; letter-spacing: 2px; text-align: center;"><img class="cke-resize" style="box-sizing: border-box; border: 0px; vertical-align: middle; max-width: 300px;" src="images/family.png" /></div>\r\n<div class="combodescription" style="box-sizing: border-box; padding: 20px; border-bottom: 1px solid #cccccc; color: #333333; font-family: Viga, sans-serif; font-size: 14px; letter-spacing: 2px; text-align: center;">\r\n<p style="box-sizing: border-box; margin: 0px;"><span style="font-weight: 400; font-size: 14pt;">The best for the family</span></p>\r\n</div>\r\n<div id="ckimgrsz" style="left: 581.556px; top: 38px;">\r\n<div class="preview"> </div>\r\n</div>', 3, 1, 0, '0000-00-00 00:00:00', 106, 106);

-- --------------------------------------------------------

--
-- Table structure for table `fv5oz_contact_details`
--

CREATE TABLE `fv5oz_contact_details` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `con_position` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `suburb` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postcode` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telephone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `misc` mediumtext COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_to` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default_con` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `webpage` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sortname1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sortname2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sortname3` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadata` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Set if contact is featured.',
  `xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fv5oz_content`
--

CREATE TABLE `fv5oz_content` (
  `id` int(10) UNSIGNED NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `introtext` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `fulltext` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `urls` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribs` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `metadata` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The language code for the article.',
  `xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'A reference to enable linkages to external data sets.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fv5oz_content`
--

INSERT INTO `fv5oz_content` (`id`, `asset_id`, `title`, `alias`, `introtext`, `fulltext`, `state`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`) VALUES
(1, 89, 'TERMS & CONDITIONS', 'terms-conditions', '<div id="termstitle" class="container-fluid">\r\n<h1>Terms and Conditions</h1>\r\n</div>\r\n<div id="termscontent" class="container-fluid">\r\n<div id="terms">\r\n<h4>Terms and Conditions</h4>\r\n<p class="text-justify">Impress Laundry, is pleased to provide professional pick-up and delivery laundry services to our customers and offers quality and convenience at an affordable price. Our services are subject to the terms and conditions below. Your use of Impress Laundry indicates your agreement to be bound by the terms and conditions contained herein. Please read the following provisions carefully and let us know if you have any questions. We look forward to doing business with you! This agreement is strictly between Laundry Care LLC, its customers, and services provided by parties subcontracted by Impress Laundry, and does not in any way constitute or imply any relationship with any other parties.</p>\r\n<h4>Pick-up/Delivery</h4>\r\n<p class="text-justify">Schedule. All services will be provided by Impress Laundry. Pick-up/Delivery will take place on a pre-determined day and frequency, except on certain holidays, as determined by you.Impress Laundry or you may change the pre-determined pick-up/delivery times, permanently or temporary, with advance notice by either you or Impress Laundry. Impress Laundry requires at least 1 day notice prior to any change. If you’d like to leave your items in a secure spot, it will be at your own risk. This is also true for delivery. Items left for pick up are not under our care until we have retrieved said items. Items left for delivery at the pre-determined location will not be under our care once they have been left at the agreed upon location.</p>\r\n<h4>Procedure and Terms</h4>\r\n<p class="text-justify">Impress Laundry will provide each customer with a Laundry Care nylon/polyurethane Laundry Bag for a fee. Impress Laundry reserves the right, not to pick-up items that are not in these bags or 13 gallon sized trash bags. Weekly customers will purchase Impress Laundry bag(s) at the beginning of their service plan for a fee stated on the Impress Laundry website. A bag fee will be charged to the customer for replacement bags. Gift Card Recipients: Impress Laundry nylon/polyurethane Laundry Bags are not provided to Gift Card recipients. Items can be placed in 13 gallon sized trash bags or the equivalent thereof. Should you chose to request one of our Laundry Care bags, the fee for said bag will be deducted from your remaining Gift Card balance. If you chose to continue service after the full value of your Gift Card has been redeemed, you will be provided a Laundry Care bag and the fee will be applied to your invoice. Impress Laundry and its Providers/Partners are not responsible for, and shall not pay for, any loss, damage or theft of items left unattended by the customer for pick-up or delivery. Impress Laundry will not leave items in the possession of any other person that is not the owner of those items unless the owner has given consent. The customer is responsible for ensuring that his/her Laundry Bag is delivered safely to the LImpress Laundry.</p>\r\n<h4>Missed/Unattended Pick-up or Delivery</h4>\r\n<p class="text-justify">If the customer misses a scheduled pick-up or delivery, the customer must coordinate with Impress Laundry to reschedule the pick-up or delivery during the next available day and time. Customer may be subject to a missed pick up fee or missed drop off fee for failing to notify their Provider/Partner 24 Hours prior to the scheduled pick-up/delivery. Gift Card Recipients: Fees assessed due to missed/unattended pick-up or delivery will be deducted from the remaining balance of your Gift Card.</p>\r\n<h4>Refunds</h4>\r\n<p class="text-justify">Except as described in this paragraph, all sales are final and all payments are non-refundable. A customer who has signed up for a prepaid package plan or gift card will have the right to cancel his or her contract within fourteen (14) days of signing up for the Impress Laundry service and receive a full refund if no promotional value was received. After such fourteen day period, Impress Laundry shall have no obligation to refund any amounts paid by the customer. If a promotional value was received the sale is final and the payment is non-refundable.</p>\r\n<h4>Garment Care</h4>\r\n<p class="text-justify">The customer agrees not to include any of the following items inside their Laundry Bag (i) non-washable items, (ii) items that are labeled for dry cleaning only, (iii) items that have been exposed to bed bugs or (iv) any other items not meant for laundering. Customer acknowledges that items that have been air-dried (per customer request or Laundry Care’s determination for best garment care) may be damp upon delivery. The customer is responsible for any and all damage caused by any items left in the customer’s clothing or Laundry Bag that causes damage to the clothing of any customer, the cleaning machines, or any other property of the Impress Laundry. Impress Laundry desires to provide high-quality laundering services and will use all reasonable precautions to avoid damage to clothes. Impress Laundry, however, are not liable for any damage due to normal laundering of items, cleaning of items without care instructions, for dry clean items placed inside Laundry Bags, for special processing items (delicate-wash, air-dry, stain-treatment) not placed in a separate bag, damage resulting from items left on the clothing, bleeding of colors, shrinking or any other alteration resulting from normal washing procedures. Impress Laundry will follow any reasonable instructions provided by the customer, including water or drying temperatures. Impress Laundry do not read cleaning instruction labels and is not responsible for special care items, such as dry clean only items, which are included in the Laundry Bag. Although Impress Laundry use their best efforts to remove stains, stain removal is not guaranteed. Impress Laundry may refuse to clean any garment at their sole discretion. Impress Laundry will re-clean items that, in its sole discretion, were not properly cleaned and have not been worn since they were cleaned, at no additional cost. Laundry Care LLC and its subcontractors are not responsible for a loss of or damage to any personal or non-cleanable items left in the clothing or laundry bags such as money, jewelry, or any other item. The customer agrees not to leave such items in their clothing or in their laundry bags. Zippers behave unpredictably while cleaning. Although zippers generally are not an issue, the customer is notified that there is a possibility of zipper issues while following normal wash procedures, and Impress Laundry does not accept any liability for such issues.</p>\r\n<h4>Confidentiality and Disclaimer</h4>\r\n<p class="text-justify">Impress Laundry takes privacy and personal information seriously. Impress Laundry uses customer information to provide services, to process payment, facilitate billing, and for any other purpose reasonably necessary to provide services under this Agreement. Additionally, personal information may be disclosed when required by law necessary to enforce this Agreement or necessary to protect the rights, interests, property of safety of Impress Laundry. From time-to-time, we also may send merchant service announcements, newsletters, and periodic notices about specials and new products.</p>\r\n</div>\r\n</div>', '', 1, 2, '2017-05-22 22:49:55', 106, '', '2017-05-22 04:51:44', 106, 0, '0000-00-00 00:00:00', '2017-05-22 03:00:34', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 6, 3, '', '', 1, 19, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(2, 90, 'ABOUT US', 'about-us', '<div id="abouttitle" class="container-fluid">\r\n<h1>About us</h1>\r\n</div>\r\n<div id="aboutcontent" class="container-fluid"><!-------- PURPOSE ------>\r\n<div id="purpose">\r\n<h4>- Our Purpose -</h4>\r\n<p class="text-justify">The purpose of the company is not only to get the laundry done but also offer excellent customer service along with an extensive range of laundry services. The platform joins the highest technology with the experienced and highly qualified professionals who will deal with the customer\'s laundry when it best suits the customer, paired with great deals and customer satisfaction.</p>\r\n<p class="text-justify"><br />The website will also offer customers different types of laundry combos, which they will be able to choose according to their needs and find a price that suits their budget. Basically, the users will have to access the online system, register and log in, choose their location, select laundry service combo according to their necessity, schedule a day and time for pickup and delivery and the rest will be up to the laundry professionals. Impress door-to-door service, coming to facilitate people\'s life.</p>\r\n</div>\r\n<div id="testimonial"> </div>\r\n<!-------- TESTIMONIALS ------>\r\n<div id="testimonials">\r\n<h4>- Testimonials -</h4>\r\n<div class="col-sm-4 testimonial">\r\n<blockquote>\r\n<p>"The ‘online laundry service’ software that we have been made aware of, appears to be very innovative and will expedite the laundry service used in every commercial laundry."</p>\r\n<h4><small>- Helen Psarakis - Marketing Director</small></h4>\r\n</blockquote>\r\n</div>\r\n<div class="col-sm-4 testimonial">\r\n<blockquote>\r\n<p>"Wow, I\'m excited about this idea, I really do not have enough time to do this type of work and not even to take it to someone else to do it, so the possibility of having service to do all this process for me is the differential of this project."</p>\r\n<h4><small>- Eli Ramos - Architect</small></h4>\r\n</blockquote>\r\n</div>\r\n<div class="col-sm-4 testimonial">\r\n<blockquote>\r\n<p>"I think having an online laundry service is an amazing idea, bieng able to save time and energy by bieng able to schedula a drop off and pick up date suited to my needs, all at touch of a button on my phone. It\'s just so easy"</p>\r\n<h4><small>- Mary Clark - Mother of 4</small></h4>\r\n</blockquote>\r\n</div>\r\n</div>\r\n<!-------- FAQ ------>\r\n<div id="faq">\r\n<h4>- F.A.Q -</h4>\r\n<p class="text-justify"><b><span style="font-size: 30px;">Q. </span>How do I get started?</b></p>\r\n<p class="text-justify"><span style="font-size: 30px;">A. </span>Once you complete our online sign-up form, NEED NEXTSTEPS HERE <a href="getStarted.html">Click here to get started now!</a></p>\r\n<br /><br />\r\n<p class="text-justify"><b><span style="font-size: 30px;">Q. </span>Do I need to prepare my laundry or sort it ahead of time?</b></p>\r\n<p class="text-justify"><span style="font-size: 30px;">A. </span>Nope! Impress Laundry will sort, wash, dry, fold, package. If you have any special processing items (Delicate wash, sanitizing wash, stain treatment, air-dry, etc.) or other requests, notify Impress through a call or when you get your laundry picked up.</p>\r\n<br /><br />\r\n<p class="text-justify"><b><span style="font-size: 30px;">Q. </span>How do I pay?</b></p>\r\n<p class="text-justify"><span style="font-size: 30px;">A. </span>Paypal will be used when checking out, you will be charged according to your purchased combo.</p>\r\n<br /><br />\r\n<p class="text-justify"><b><span style="font-size: 30px;">Q. </span>When will I get my clothes back?</b></p>\r\n<p class="text-justify"><span style="font-size: 30px;">A. </span>you can arrange for your clothes to be picked up, weekly, bi-weekly, monthly, As-needed, One-time service</p>\r\n<br /><br />\r\n<p class="text-justify"><b><span style="font-size: 30px;">Q. </span>What types of laundering requests do you accommodate?</b></p>\r\n<p class="text-justify"><span style="font-size: 30px;">A. </span>We strive to provide you with a laundry service plan that is tailored to your needs. Some of our custom processing options include:<br /> <br />Hypo-allergenic products<br />Delicate Wash/dry<br />Air-Dry<br />Hand-wash<br />Steam Press<br />Iron Press<br />Stain Treatments<br />Sanitization<br />AND MORE!</p>\r\n<br /><br />\r\n<p class="text-justify"><b><span style="font-size: 30px;">Q. </span>What if I can’t be home for my scheduled pick-up or drop off?</b></p>\r\n<p class="text-justify"><span style="font-size: 30px;">A. </span>You can leave your bag in a secure location outside your home (doorstep, porch, patio, reception desk etc.) or reschedule a day/time with Impress.</p>\r\n<br /><br />\r\n<p class="text-justify"><b><span style="font-size: 30px;">Q. </span>I have allergies, do you use allergen-free products?</b></p>\r\n<p class="text-justify"><span style="font-size: 30px;">A. </span>Be sure to inform Impress of any allergies to laundering and cleaning products you have. We always offer a hypo-allergenic option free of charge!</p>\r\n<br /><br />\r\n<p class="text-justify"><b><span style="font-size: 30px;">Q. </span>How do I schedule a laundry pick-up (who?)</b></p>\r\n<p class="text-justify"><span style="font-size: 30px;">A. </span>All scheduling is handled during combo selection and can be changed later on. You can also contact us at<a href="contact.html"> Here</a></p>\r\n<br /><br />\r\n<p class="text-justify"><b><span style="font-size: 30px;">Q. </span>Are my clothes washed with other people’s clothes?</b></p>\r\n<p class="text-justify"><span style="font-size: 30px;">A. </span>Absolutely not! Each bag is processed by itself. We will never clean your clothes with another customer’s clothing.</p>\r\n<br /><br />\r\n<p class="text-justify"><b><span style="font-size: 30px;">Q. </span>What if I am missing an item of clothing from my returned bag?</b></p>\r\n<p class="text-justify"><span style="font-size: 30px;">A. </span>Although not required, you can complete an inventory sheet prior to pick-up that details all items found within your bag. You will keep the original sheet and we will keep a copy. <br />Please notify Impress of any missing items listed on the inventory sheet within 48 hours of drop off. If your item is not located after further investigation, we will reimburse you an amount equal to your proof of purchase amount, limited to a maximum of $100.00USD and a maximum total of $200.00USD per customer.</p>\r\n<br /><br /></div>\r\n<!-------- TEAM (FEATURE) ------>\r\n<div id="team">\r\n<h4>- Team -</h4>\r\n<div class="row">\r\n<div class="col-sm-3"><img class="img-circle" src="images/face1.png" width="120px" height="140px" />\r\n<h4>Pablo Vieira<br /><small>The Owner</small></h4>\r\n</div>\r\n<div class="col-sm-3"><img class="img-circle" src="images/face2.png" width="120px" height="140px" />\r\n<h4>Kaio Labre<br /><small>Proj. Manager</small></h4>\r\n</div>\r\n<div class="col-sm-3"><img class="img-circle" src="images/face3.png" width="120px" height="140px" />\r\n<h4>Shiv<br /><small>Front-end</small></h4>\r\n</div>\r\n<div class="col-sm-3"><img class="img-circle" src="images/face4.png" width="120px" height="140px" />\r\n<h4>Andy<br /><small>Back-end</small></h4>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', '', 1, 2, '2017-05-22 04:50:23', 106, '', '2017-05-24 02:00:25', 106, 0, '0000-00-00 00:00:00', '2017-05-22 04:50:23', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 14, 2, '', '', 1, 114, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(3, 91, 'PRIVACY POLICY', 'privacy-policy', '<div id="termstitle" class="container-fluid">\r\n<h1>Privacy Policy</h1>\r\n</div>\r\n<div id="termscontent" class="container-fluid"><!-------- PURPOSE ------>\r\n<div id="terms">\r\n<h4>Privacy Policy</h4>\r\n<p class="text-justify">This Privacy Policy describes your privacy rights regarding our collection, use, storage, sharing and protection of your personal information. It applies to the Impress website and all related sites, applications, services and tools regardless of how you access or use them.</p>\r\n<p>You accept this Privacy Policy when you sign up for, access, or use our services, content, features, technologies or functions offered on our website and all related sites, applications, and services (collectively “Impress Laundry Care Services”). We may amend this policy at any time by posting a revised version on our website. The revised version will be effective at the time we post it. In addition, if the revised version includes a substantial change, we will provide you with 30 days’ prior notice by emailing you a notice of the change at the email address you provided during service sign up.</p>\r\n<br />\r\n<h3>How we collect information about you</h3>\r\n<br />\r\n<p>When you sign up for service through the Impress website, you voluntarily provide us with your contact information including your address, phone number, and email address as well as your financial information. This information is collected so that we can accurately perform pick up and drop off services and so that we can communicate with you regarding your laundry services.</p>\r\n<br />\r\n<h3>If you open an Impress account, we may collect the following types of information:</h3>\r\n<br />\r\n<p>Contact information, such as your name, address, phone, email and other similar information.<br /><br />Financial information, such as the full bank account numbers and/or credit card numbers that you give us when you use Impress Services.<br /><br />Detailed cleaning preferences that pertain to your garments.<br /><br />You may choose to provide us with access to certain personal information stored by third parties such as social media sites (e.g., Facebook and Twitter). This is done when you voluntarily “like” our Facebook Page or when you voluntarily “follow” of Twitter Page. The information we may receive varies by site and is controlled by that site. By associating an account managed by a third party with your Impress account and authorizing Impress to have access to this information, you agree that Impress may collect, store and use this information in accordance with this Privacy Policy.<br /><br />We may also collect additional information from or about you in other ways, such as through contact with our customer support team, results when you respond to a survey and from interactions with associates/representatives of Impress.</p>\r\n<br />\r\n<h3>How we protect and store personal information</h3>\r\n<br />\r\n<p>Throughout this policy, we use the term “personal information” to describe information that can be associated with a specific person and can be used to identify that person. We do not consider personal information to include information that has been made anonymous so that it does not identify a specific user.<br /><br />We store and process your personal information on our computers in the US. We protect your information using physical, technical, and administrative security measures to reduce the risks of loss, misuse, unauthorized access, disclosure, and alteration. Some of the safeguards we use are physical access controls to your data and information access authorization controls.</p>\r\n<br />\r\n<h3>How we share personal information with other parties</h3>\r\n<br />\r\n<p>We may share your personal information with:<br />Impress Associates and Mentors – individuals who provide laundry service to you or your business.<br /><br />Service providers who help with our business operations such as fraud prevention, accounting, marketing, and technology services. These service providers only use your information in connection with the services they perform for us and not for their own benefit.<br /><br />Credit bureaus and collection agencies to report account information, as permitted by law.<br /><br />Companies that we plan to merge with or are acquired by. (Should such a combination occur, we will require that the new combined entity follows this privacy policy with respect to your personal information. If your personal information could be used contrary to this policy, you will receive prior notice.)<br /><br />Law enforcement, government officials, or other third parties pursuant to a subpoena, court order, or other legal process or requirement applicable to Impress or one of its affiliates; when we need to do so to comply with law or credit card rules; or when we believe, in our sole discretion, that the disclosure of personal information is necessary to prevent physical harm or financial loss, to report suspected illegal activity or to investigate violations of our Terms of Service.<br /><br />Other third parties with your consent or direction to do so.<br /><br />Impress will not sell or rent any of your personal information to third parties for their marketing purposes and only shares your personal information with third parties as described in this policy.</p>\r\n<br />\r\n<h3>How you can access or change your personal information</h3>\r\n<br />\r\n<p>You can edit your personal and payment information at any time by submitting changes through the online, sign up form. You can close your account through written request sent to AITLaundry@gmail.com. If you close your Impress account, we will mark your account in our database as “Closed,” but may retain personal information from your account to collect any fees owed, resolve disputes, troubleshoot problems, assist with any investigations, prevent fraud, enforce our Terms of Service, or take other actions as required or permitted by law.<br /><br />How you can contact us about privacy questions<br /><br />If you have questions or concerns regarding this policy, you should contact us <a href="contact.html"> Here</a></p>\r\n</div>\r\n</div>', '', 1, 2, '2017-05-22 04:53:51', 106, '', '2017-05-22 04:53:51', 0, 0, '0000-00-00 00:00:00', '2017-05-22 04:53:51', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 1, '', '', 1, 6, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(4, 92, 'CONTACT US', 'contact-us', '<div id="contacttitle" class="container-fluid">\r\n<h1>Contact Us</h1>\r\n</div>\r\n<!--Contact form-->\r\n<div id="contactcontent" class="container-fluid"><form action="contactForm.php" method="post"><!--Enter action-->\r\n<div class="form-group"><label for="inputName">Name</label> <input id="inputName" class="form-control" required="" type="text" placeholder="Name" /></div>\r\n<div class="form-group"><label for="inputEmail">Email address</label> <input id="inputEmail" class="form-control" required="" type="email" placeholder="Email" /></div>\r\n<div class="form-group"><label for="inputPhone">Phone number</label> <input id="inputPhone" class="form-control" pattern="^0[0-8]\\d{8}$" required="" type="tel" placeholder="Phone" /></div>\r\n<div class="form-group"><label for="inputFeedback">Feedback</label> <textarea id="inputFeedback" class="form-control" required="" rows="6" placeholder="Enter Feedback"></textarea></div>\r\n<button id="btnStyleContact" class="btn btn-default" type="submit">Submit</button></form></div>', '', 1, 2, '2017-05-22 09:50:35', 106, '', '2017-05-22 10:08:13', 106, 0, '0000-00-00 00:00:00', '2017-05-22 10:08:13', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 4, 0, '', '', 1, 25, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', '');

-- --------------------------------------------------------

--
-- Table structure for table `fv5oz_contentitem_tag_map`
--

CREATE TABLE `fv5oz_contentitem_tag_map` (
  `type_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_content_id` int(10) UNSIGNED NOT NULL COMMENT 'PK from the core content table',
  `content_item_id` int(11) NOT NULL COMMENT 'PK from the content type table',
  `tag_id` int(10) UNSIGNED NOT NULL COMMENT 'PK from the tag table',
  `tag_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Date of most recent save for this tag-item',
  `type_id` mediumint(8) NOT NULL COMMENT 'PK from the content_type table'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Maps items from content tables to tags';

-- --------------------------------------------------------

--
-- Table structure for table `fv5oz_content_frontpage`
--

CREATE TABLE `fv5oz_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fv5oz_content_rating`
--

CREATE TABLE `fv5oz_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `rating_count` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lastip` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fv5oz_content_types`
--

CREATE TABLE `fv5oz_content_types` (
  `type_id` int(10) UNSIGNED NOT NULL,
  `type_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type_alias` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `table` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `rules` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `field_mappings` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `router` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content_history_options` varchar(5120) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'JSON string for com_contenthistory options'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fv5oz_content_types`
--

INSERT INTO `fv5oz_content_types` (`type_id`, `type_title`, `type_alias`, `table`, `rules`, `field_mappings`, `router`, `content_history_options`) VALUES
(1, 'Article', 'com_content.article', '{"special":{"dbtable":"#__content","key":"id","type":"Content","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"state","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"introtext", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"attribs", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"urls", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"asset_id"}, "special":{"fulltext":"fulltext"}}', 'ContentHelperRoute::getArticleRoute', '{"formFile":"administrator\\/components\\/com_content\\/models\\/forms\\/article.xml", "hideFields":["asset_id","checked_out","checked_out_time","version"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
(2, 'Contact', 'com_contact.contact', '{"special":{"dbtable":"#__contact_details","key":"id","type":"Contact","prefix":"ContactTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"address", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"image", "core_urls":"webpage", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"null"}, "special":{"con_position":"con_position","suburb":"suburb","state":"state","country":"country","postcode":"postcode","telephone":"telephone","fax":"fax","misc":"misc","email_to":"email_to","default_con":"default_con","user_id":"user_id","mobile":"mobile","sortname1":"sortname1","sortname2":"sortname2","sortname3":"sortname3"}}', 'ContactHelperRoute::getContactRoute', '{"formFile":"administrator\\/components\\/com_contact\\/models\\/forms\\/contact.xml","hideFields":["default_con","checked_out","checked_out_time","version","xreference"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"], "displayLookup":[ {"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ] }'),
(3, 'Newsfeed', 'com_newsfeeds.newsfeed', '{"special":{"dbtable":"#__newsfeeds","key":"id","type":"Newsfeed","prefix":"NewsfeedsTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"description", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"link", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"null"}, "special":{"numarticles":"numarticles","cache_time":"cache_time","rtl":"rtl"}}', 'NewsfeedsHelperRoute::getNewsfeedRoute', '{"formFile":"administrator\\/components\\/com_newsfeeds\\/models\\/forms\\/newsfeed.xml","hideFields":["asset_id","checked_out","checked_out_time","version"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
(4, 'User', 'com_users.user', '{"special":{"dbtable":"#__users","key":"id","type":"User","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"null","core_alias":"username","core_created_time":"registerdate","core_modified_time":"lastvisitDate","core_body":"null", "core_hits":"null","core_publish_up":"null","core_publish_down":"null","access":"null", "core_params":"params", "core_featured":"null", "core_metadata":"null", "core_language":"null", "core_images":"null", "core_urls":"null", "core_version":"null", "core_ordering":"null", "core_metakey":"null", "core_metadesc":"null", "core_catid":"null", "core_xreference":"null", "asset_id":"null"}, "special":{}}', 'UsersHelperRoute::getUserRoute', ''),
(5, 'Article Category', 'com_content.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'ContentHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(6, 'Contact Category', 'com_contact.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'ContactHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(7, 'Newsfeeds Category', 'com_newsfeeds.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'NewsfeedsHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(8, 'Tag', 'com_tags.tag', '{"special":{"dbtable":"#__tags","key":"tag_id","type":"Tag","prefix":"TagsTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"urls", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"null", "core_xreference":"null", "asset_id":"null"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path"}}', 'TagsHelperRoute::getTagRoute', '{"formFile":"administrator\\/components\\/com_tags\\/models\\/forms\\/tag.xml", "hideFields":["checked_out","checked_out_time","version", "lft", "rgt", "level", "path", "urls", "publish_up", "publish_down"],"ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}]}'),
(9, 'Banner', 'com_banners.banner', '{"special":{"dbtable":"#__banners","key":"id","type":"Banner","prefix":"BannersTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"description", "core_hits":"null","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"link", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"null", "asset_id":"null"}, "special":{"imptotal":"imptotal", "impmade":"impmade", "clicks":"clicks", "clickurl":"clickurl", "custombannercode":"custombannercode", "cid":"cid", "purchase_type":"purchase_type", "track_impressions":"track_impressions", "track_clicks":"track_clicks"}}', '', '{"formFile":"administrator\\/components\\/com_banners\\/models\\/forms\\/banner.xml", "hideFields":["checked_out","checked_out_time","version", "reset"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "imptotal", "impmade", "reset"], "convertToInt":["publish_up", "publish_down", "ordering"], "displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"cid","targetTable":"#__banner_clients","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
(10, 'Banners Category', 'com_banners.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special": {"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', '', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"], "convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(11, 'Banner Client', 'com_banners.client', '{"special":{"dbtable":"#__banner_clients","key":"id","type":"Client","prefix":"BannersTable"}}', '', '', '', '{"formFile":"administrator\\/components\\/com_banners\\/models\\/forms\\/client.xml", "hideFields":["checked_out","checked_out_time"], "ignoreChanges":["checked_out", "checked_out_time"], "convertToInt":[], "displayLookup":[]}'),
(12, 'User Notes', 'com_users.note', '{"special":{"dbtable":"#__user_notes","key":"id","type":"Note","prefix":"UsersTable"}}', '', '', '', '{"formFile":"administrator\\/components\\/com_users\\/models\\/forms\\/note.xml", "hideFields":["checked_out","checked_out_time", "publish_up", "publish_down"],"ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time"], "convertToInt":["publish_up", "publish_down"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}]}'),
(13, 'User Notes Category', 'com_users.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', '', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"], "convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(18, 'Services', 'com_servicess.services', '{"special":{"dbtable":"#__services","key":"id","type":"Services","prefix":"ServicessTable"}}', '', '', '', '{"formFile":"administrator/components/com_servicess/models/forms/services.xml", "hideFields":["checked_out","checked_out_time","params","language" ,"description"], "ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time"], "convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"group_id","targetTable":"#__usergroups","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}]}'),
(20, 'Combo', 'com_combos.combo', '{"special":{"dbtable":"#__combos_combo","key":"id","type":"Combo","prefix":"BosTable"}}', '', '', '', '{"formFile":"administrator/components/com_combos/models/forms/combo.xml", "hideFields":["checked_out","checked_out_time","params","language" ,"description"], "ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time"], "convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"group_id","targetTable":"#__usergroups","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}]}'),
(21, 'Payment', 'com_payment.payment', '{"special":{"dbtable":"#__payment","key":"id","type":"Payment","prefix":"PaymentTable"}}', '', '', '', '{"formFile":"administrator/components/com_payment/models/forms/payment.xml", "hideFields":["checked_out","checked_out_time","params","language" ,"description"], "ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time"], "convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"group_id","targetTable":"#__usergroups","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}]}'),
(23, 'Order', 'com_order.order', '{"special":{"dbtable":"#__order","key":"id","type":"Order","prefix":"RderTable"}}', '', '', '', '{"formFile":"administrator/components/com_order/models/forms/order.xml", "hideFields":["checked_out","checked_out_time","params","language" ,"deliverynote"], "ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time"], "convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"group_id","targetTable":"#__usergroups","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}]}'),
(24, 'Logbook', 'com_logbook.logbook', '{"special":{"dbtable":"#__logbook","key":"id","type":"Logbook","prefix":"LogbookTable"}}', '', '', '', '{"formFile":"administrator/components/com_logbook/models/forms/logbook.xml", "hideFields":["checked_out","checked_out_time","params","language" ,"note"], "ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time"], "convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"group_id","targetTable":"#__usergroups","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}]}'),
(25, 'Order Logbook', 'com_orderlogbook.orderlogbook', '{"special":{"dbtable":"#__orderlogbook","key":"id","type":"Orderlogbook","prefix":"RderlogbookTable"}}', '', '', '', '{"formFile":"administrator/components/com_orderlogbook/models/forms/orderlogbook.xml", "hideFields":["checked_out","checked_out_time","params","language"], "ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time"], "convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"group_id","targetTable":"#__usergroups","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}]}'),
(28, 'Location', 'com_location.location', '{"special":{"dbtable":"#__location","key":"id","type":"Location","prefix":"LocationTable"}}', '', '', '', '{"formFile":"administrator/components/com_location/models/forms/location.xml", "hideFields":["checked_out","checked_out_time","params","language"], "ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time"], "convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"group_id","targetTable":"#__usergroups","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}]}');

-- --------------------------------------------------------

--
-- Table structure for table `fv5oz_core_log_searches`
--

CREATE TABLE `fv5oz_core_log_searches` (
  `search_term` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fv5oz_extensions`
--

CREATE TABLE `fv5oz_extensions` (
  `extension_id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `element` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `folder` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_id` tinyint(3) NOT NULL,
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `protected` tinyint(3) NOT NULL DEFAULT '0',
  `manifest_cache` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `system_data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) DEFAULT '0',
  `state` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fv5oz_extensions`
--

INSERT INTO `fv5oz_extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(1, 'com_mailto', 'component', 'com_mailto', '', 0, 1, 1, 1, '{"name":"com_mailto","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MAILTO_XML_DESCRIPTION","group":"","filename":"mailto"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(2, 'com_wrapper', 'component', 'com_wrapper', '', 0, 1, 1, 1, '{"name":"com_wrapper","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_WRAPPER_XML_DESCRIPTION","group":"","filename":"wrapper"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(3, 'com_admin', 'component', 'com_admin', '', 1, 0, 0, 1, '{"name":"com_admin","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_ADMIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(4, 'com_banners', 'component', 'com_banners', '', 1, 0, 1, 0, '{"name":"com_banners","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_BANNERS_XML_DESCRIPTION","group":"","filename":"banners"}', '{"purchase_type":"3","track_impressions":"0","track_clicks":"0","metakey_prefix":"","save_history":"1","history_limit":10}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(5, 'com_cache', 'component', 'com_cache', '', 1, 1, 1, 1, '{"name":"com_cache","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CACHE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(6, 'com_categories', 'component', 'com_categories', '', 1, 1, 1, 1, '{"name":"com_categories","type":"component","creationDate":"December 2007","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CATEGORIES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(7, 'com_checkin', 'component', 'com_checkin', '', 1, 1, 1, 1, '{"name":"com_checkin","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CHECKIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(8, 'com_contact', 'component', 'com_contact', '', 1, 0, 1, 0, '{"name":"com_contact","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONTACT_XML_DESCRIPTION","group":"","filename":"contact"}', '{"show_contact_category":"hide","save_history":"1","history_limit":10,"show_contact_list":"0","presentation_style":"sliders","show_name":"1","show_position":"1","show_email":"0","show_street_address":"1","show_suburb":"1","show_state":"1","show_postcode":"1","show_country":"1","show_telephone":"1","show_mobile":"1","show_fax":"1","show_webpage":"1","show_misc":"1","show_image":"1","image":"","allow_vcard":"0","show_articles":"0","show_profile":"0","show_links":"0","linka_name":"","linkb_name":"","linkc_name":"","linkd_name":"","linke_name":"","contact_icons":"0","icon_address":"","icon_email":"","icon_telephone":"","icon_mobile":"","icon_fax":"","icon_misc":"","show_headings":"1","show_position_headings":"1","show_email_headings":"0","show_telephone_headings":"1","show_mobile_headings":"0","show_fax_headings":"0","allow_vcard_headings":"0","show_suburb_headings":"1","show_state_headings":"1","show_country_headings":"1","show_email_form":"1","show_email_copy":"1","banned_email":"","banned_subject":"","banned_text":"","validate_session":"1","custom_reply":"0","redirect":"","show_category_crumb":"0","metakey":"","metadesc":"","robots":"","author":"","rights":"","xreference":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(9, 'com_cpanel', 'component', 'com_cpanel', '', 1, 1, 1, 1, '{"name":"com_cpanel","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CPANEL_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10, 'com_installer', 'component', 'com_installer', '', 1, 1, 1, 1, '{"name":"com_installer","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_INSTALLER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(11, 'com_languages', 'component', 'com_languages', '', 1, 1, 1, 1, '{"name":"com_languages","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_LANGUAGES_XML_DESCRIPTION","group":""}', '{"administrator":"en-GB","site":"en-GB"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(12, 'com_login', 'component', 'com_login', '', 1, 1, 1, 1, '{"name":"com_login","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_LOGIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(13, 'com_media', 'component', 'com_media', '', 1, 1, 0, 1, '{"name":"com_media","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MEDIA_XML_DESCRIPTION","group":"","filename":"media"}', '{"upload_extensions":"bmp,csv,doc,gif,ico,jpg,jpeg,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,GIF,ICO,JPG,JPEG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS","upload_maxsize":"10","file_path":"images","image_path":"images","restrict_uploads":"1","allowed_media_usergroup":"3","check_mime":"1","image_extensions":"bmp,gif,jpg,png","ignore_extensions":"","upload_mime":"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,application\\/x-shockwave-flash,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip","upload_mime_illegal":"text\\/html"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(14, 'com_menus', 'component', 'com_menus', '', 1, 1, 1, 1, '{"name":"com_menus","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MENUS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(15, 'com_messages', 'component', 'com_messages', '', 1, 0, 1, 1, '{"name":"com_messages","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MESSAGES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(16, 'com_modules', 'component', 'com_modules', '', 1, 1, 1, 1, '{"name":"com_modules","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MODULES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(17, 'com_newsfeeds', 'component', 'com_newsfeeds', '', 1, 0, 1, 0, '{"name":"com_newsfeeds","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_NEWSFEEDS_XML_DESCRIPTION","group":"","filename":"newsfeeds"}', '{"newsfeed_layout":"_:default","save_history":"1","history_limit":5,"show_feed_image":"1","show_feed_description":"1","show_item_description":"1","feed_character_count":"0","feed_display_order":"des","float_first":"right","float_second":"right","show_tags":"1","category_layout":"_:default","show_category_title":"1","show_description":"1","show_description_image":"1","maxLevel":"-1","show_empty_categories":"0","show_subcat_desc":"1","show_cat_items":"1","show_cat_tags":"1","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"1","show_cat_items_cat":"1","filter_field":"1","show_pagination_limit":"1","show_headings":"1","show_articles":"0","show_link":"1","show_pagination":"1","show_pagination_results":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(18, 'com_plugins', 'component', 'com_plugins', '', 1, 1, 1, 1, '{"name":"com_plugins","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_PLUGINS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(19, 'com_search', 'component', 'com_search', '', 1, 0, 1, 0, '{"name":"com_search","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_SEARCH_XML_DESCRIPTION","group":"","filename":"search"}', '{"enabled":"0","show_date":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(20, 'com_templates', 'component', 'com_templates', '', 1, 1, 1, 1, '{"name":"com_templates","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_TEMPLATES_XML_DESCRIPTION","group":""}', '{"template_positions_display":"0","upload_limit":"10","image_formats":"gif,bmp,jpg,jpeg,png","source_formats":"txt,less,ini,xml,js,php,css","font_formats":"woff,ttf,otf","compressed_formats":"zip"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(22, 'com_content', 'component', 'com_content', '', 1, 1, 0, 1, '{"name":"com_content","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONTENT_XML_DESCRIPTION","group":"","filename":"content"}', '{"article_layout":"_:default","show_title":"1","link_titles":"1","show_intro":"1","show_category":"1","link_category":"1","show_parent_category":"0","link_parent_category":"0","show_author":"1","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"1","show_item_navigation":"1","show_vote":"0","show_readmore":"1","show_readmore_title":"1","readmore_limit":"100","show_icons":"1","show_print_icon":"1","show_email_icon":"1","show_hits":"1","show_noauth":"0","show_publishing_options":"1","show_article_options":"1","save_history":"1","history_limit":10,"show_urls_images_frontend":"0","show_urls_images_backend":"1","targeta":0,"targetb":0,"targetc":0,"float_intro":"left","float_fulltext":"left","category_layout":"_:blog","show_category_title":"0","show_description":"0","show_description_image":"0","maxLevel":"1","show_empty_categories":"0","show_no_articles":"1","show_subcat_desc":"1","show_cat_num_articles":"0","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"1","show_cat_num_articles_cat":"1","num_leading_articles":"1","num_intro_articles":"4","num_columns":"2","num_links":"4","multi_column_order":"0","show_subcategory_content":"0","show_pagination_limit":"1","filter_field":"hide","show_headings":"1","list_show_date":"0","date_format":"","list_show_hits":"1","list_show_author":"1","orderby_pri":"order","orderby_sec":"rdate","order_date":"published","show_pagination":"2","show_pagination_results":"1","show_feed_link":"1","feed_summary":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(23, 'com_config', 'component', 'com_config', '', 1, 1, 0, 1, '{"name":"com_config","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONFIG_XML_DESCRIPTION","group":""}', '{"filters":{"1":{"filter_type":"NH","filter_tags":"","filter_attributes":""},"9":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"6":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"7":{"filter_type":"NONE","filter_tags":"","filter_attributes":""},"2":{"filter_type":"NH","filter_tags":"","filter_attributes":""},"3":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"4":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"5":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"8":{"filter_type":"NONE","filter_tags":"","filter_attributes":""}}}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(24, 'com_redirect', 'component', 'com_redirect', '', 1, 0, 0, 1, '{"name":"com_redirect","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_REDIRECT_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(25, 'com_users', 'component', 'com_users', '', 1, 1, 0, 1, '{"name":"com_users","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_USERS_XML_DESCRIPTION","group":"","filename":"users"}', '{"allowUserRegistration":"1","new_usertype":"2","guest_usergroup":"9","sendpassword":"0","useractivation":"2","mail_to_admin":"1","captcha":"","frontend_userparams":"1","site_language":"0","change_login_name":"0","reset_count":"10","reset_time":"1","minimum_length":"4","minimum_integers":"0","minimum_symbols":"0","minimum_uppercase":"0","save_history":"1","history_limit":5,"mailSubjectPrefix":"","mailBodySuffix":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(27, 'com_finder', 'component', 'com_finder', '', 1, 0, 0, 0, '{"name":"com_finder","type":"component","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_FINDER_XML_DESCRIPTION","group":"","filename":"finder"}', '{"show_description":"1","description_length":255,"allow_empty_query":"0","show_url":"1","show_advanced":"1","expand_advanced":"0","show_date_filters":"0","highlight_terms":"1","opensearch_name":"","opensearch_description":"","batch_size":"50","memory_table_limit":30000,"title_multiplier":"1.7","text_multiplier":"0.7","meta_multiplier":"1.2","path_multiplier":"2.0","misc_multiplier":"0.3","stemmer":"snowball"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(28, 'com_joomlaupdate', 'component', 'com_joomlaupdate', '', 1, 0, 0, 1, '{"name":"com_joomlaupdate","type":"component","creationDate":"February 2012","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.6.2","description":"COM_JOOMLAUPDATE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(29, 'com_tags', 'component', 'com_tags', '', 1, 0, 1, 1, '{"name":"com_tags","type":"component","creationDate":"December 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"COM_TAGS_XML_DESCRIPTION","group":"","filename":"tags"}', '{"tag_layout":"_:default","save_history":"1","history_limit":5,"show_tag_title":"0","tag_list_show_tag_image":"0","tag_list_show_tag_description":"0","tag_list_image":"","show_tag_num_items":"0","tag_list_orderby":"title","tag_list_orderby_direction":"ASC","show_headings":"0","tag_list_show_date":"0","tag_list_show_item_image":"0","tag_list_show_item_description":"0","tag_list_item_maximum_characters":0,"return_any_or_all":"1","include_children":"0","maximum":200,"tag_list_language_filter":"all","tags_layout":"_:default","all_tags_orderby":"title","all_tags_orderby_direction":"ASC","all_tags_show_tag_image":"0","all_tags_show_tag_descripion":"0","all_tags_tag_maximum_characters":20,"all_tags_show_tag_hits":"0","filter_field":"1","show_pagination_limit":"1","show_pagination":"2","show_pagination_results":"1","tag_field_ajax_mode":"1","show_feed_link":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(30, 'com_contenthistory', 'component', 'com_contenthistory', '', 1, 1, 1, 0, '{"name":"com_contenthistory","type":"component","creationDate":"May 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_CONTENTHISTORY_XML_DESCRIPTION","group":"","filename":"contenthistory"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(31, 'com_ajax', 'component', 'com_ajax', '', 1, 1, 1, 1, '{"name":"com_ajax","type":"component","creationDate":"August 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_AJAX_XML_DESCRIPTION","group":"","filename":"ajax"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(32, 'com_postinstall', 'component', 'com_postinstall', '', 1, 0, 1, 1, '{"name":"com_postinstall","type":"component","creationDate":"September 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_POSTINSTALL_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(102, 'LIB_PHPUTF8', 'library', 'phputf8', '', 0, 1, 1, 1, '{"name":"LIB_PHPUTF8","type":"library","creationDate":"2006","author":"Harry Fuecks","copyright":"Copyright various authors","authorEmail":"hfuecks@gmail.com","authorUrl":"http:\\/\\/sourceforge.net\\/projects\\/phputf8","version":"0.5","description":"LIB_PHPUTF8_XML_DESCRIPTION","group":"","filename":"phputf8"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(103, 'LIB_JOOMLA', 'library', 'joomla', '', 0, 1, 1, 1, '{"name":"LIB_JOOMLA","type":"library","creationDate":"2008","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"https:\\/\\/www.joomla.org","version":"13.1","description":"LIB_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '{"mediaversion":"f506958a933d5ab7071ede107c86a415"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(104, 'LIB_IDNA', 'library', 'idna_convert', '', 0, 1, 1, 1, '{"name":"LIB_IDNA","type":"library","creationDate":"2004","author":"phlyLabs","copyright":"2004-2011 phlyLabs Berlin, http:\\/\\/phlylabs.de","authorEmail":"phlymail@phlylabs.de","authorUrl":"http:\\/\\/phlylabs.de","version":"0.8.0","description":"LIB_IDNA_XML_DESCRIPTION","group":"","filename":"idna_convert"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(105, 'FOF', 'library', 'fof', '', 0, 1, 1, 1, '{"name":"FOF","type":"library","creationDate":"2015-04-22 13:15:32","author":"Nicholas K. Dionysopoulos \\/ Akeeba Ltd","copyright":"(C)2011-2015 Nicholas K. Dionysopoulos","authorEmail":"nicholas@akeebabackup.com","authorUrl":"https:\\/\\/www.akeebabackup.com","version":"2.4.3","description":"LIB_FOF_XML_DESCRIPTION","group":"","filename":"fof"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(106, 'LIB_PHPASS', 'library', 'phpass', '', 0, 1, 1, 1, '{"name":"LIB_PHPASS","type":"library","creationDate":"2004-2006","author":"Solar Designer","copyright":"","authorEmail":"solar@openwall.com","authorUrl":"http:\\/\\/www.openwall.com\\/phpass\\/","version":"0.3","description":"LIB_PHPASS_XML_DESCRIPTION","group":"","filename":"phpass"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(200, 'mod_articles_archive', 'module', 'mod_articles_archive', '', 0, 1, 1, 0, '{"name":"mod_articles_archive","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_ARCHIVE_XML_DESCRIPTION","group":"","filename":"mod_articles_archive"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(201, 'mod_articles_latest', 'module', 'mod_articles_latest', '', 0, 1, 1, 0, '{"name":"mod_articles_latest","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LATEST_NEWS_XML_DESCRIPTION","group":"","filename":"mod_articles_latest"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(202, 'mod_articles_popular', 'module', 'mod_articles_popular', '', 0, 1, 1, 0, '{"name":"mod_articles_popular","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_POPULAR_XML_DESCRIPTION","group":"","filename":"mod_articles_popular"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(203, 'mod_banners', 'module', 'mod_banners', '', 0, 1, 1, 0, '{"name":"mod_banners","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_BANNERS_XML_DESCRIPTION","group":"","filename":"mod_banners"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(204, 'mod_breadcrumbs', 'module', 'mod_breadcrumbs', '', 0, 1, 1, 1, '{"name":"mod_breadcrumbs","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_BREADCRUMBS_XML_DESCRIPTION","group":"","filename":"mod_breadcrumbs"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(205, 'mod_custom', 'module', 'mod_custom', '', 0, 1, 1, 1, '{"name":"mod_custom","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_CUSTOM_XML_DESCRIPTION","group":"","filename":"mod_custom"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(206, 'mod_feed', 'module', 'mod_feed', '', 0, 1, 1, 0, '{"name":"mod_feed","type":"module","creationDate":"July 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FEED_XML_DESCRIPTION","group":"","filename":"mod_feed"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(207, 'mod_footer', 'module', 'mod_footer', '', 0, 1, 1, 0, '{"name":"mod_footer","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FOOTER_XML_DESCRIPTION","group":"","filename":"mod_footer"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(208, 'mod_login', 'module', 'mod_login', '', 0, 1, 1, 1, '{"name":"mod_login","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGIN_XML_DESCRIPTION","group":"","filename":"mod_login"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(209, 'mod_menu', 'module', 'mod_menu', '', 0, 1, 1, 1, '{"name":"mod_menu","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MENU_XML_DESCRIPTION","group":"","filename":"mod_menu"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(210, 'mod_articles_news', 'module', 'mod_articles_news', '', 0, 1, 1, 0, '{"name":"mod_articles_news","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_NEWS_XML_DESCRIPTION","group":"","filename":"mod_articles_news"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(211, 'mod_random_image', 'module', 'mod_random_image', '', 0, 1, 1, 0, '{"name":"mod_random_image","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_RANDOM_IMAGE_XML_DESCRIPTION","group":"","filename":"mod_random_image"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(212, 'mod_related_items', 'module', 'mod_related_items', '', 0, 1, 1, 0, '{"name":"mod_related_items","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_RELATED_XML_DESCRIPTION","group":"","filename":"mod_related_items"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(213, 'mod_search', 'module', 'mod_search', '', 0, 1, 1, 0, '{"name":"mod_search","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SEARCH_XML_DESCRIPTION","group":"","filename":"mod_search"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(214, 'mod_stats', 'module', 'mod_stats', '', 0, 1, 1, 0, '{"name":"mod_stats","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATS_XML_DESCRIPTION","group":"","filename":"mod_stats"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(215, 'mod_syndicate', 'module', 'mod_syndicate', '', 0, 1, 1, 1, '{"name":"mod_syndicate","type":"module","creationDate":"May 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SYNDICATE_XML_DESCRIPTION","group":"","filename":"mod_syndicate"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(216, 'mod_users_latest', 'module', 'mod_users_latest', '', 0, 1, 1, 0, '{"name":"mod_users_latest","type":"module","creationDate":"December 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_USERS_LATEST_XML_DESCRIPTION","group":"","filename":"mod_users_latest"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(218, 'mod_whosonline', 'module', 'mod_whosonline', '', 0, 1, 1, 0, '{"name":"mod_whosonline","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_WHOSONLINE_XML_DESCRIPTION","group":"","filename":"mod_whosonline"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(219, 'mod_wrapper', 'module', 'mod_wrapper', '', 0, 1, 1, 0, '{"name":"mod_wrapper","type":"module","creationDate":"October 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_WRAPPER_XML_DESCRIPTION","group":"","filename":"mod_wrapper"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(220, 'mod_articles_category', 'module', 'mod_articles_category', '', 0, 1, 1, 0, '{"name":"mod_articles_category","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_CATEGORY_XML_DESCRIPTION","group":"","filename":"mod_articles_category"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(221, 'mod_articles_categories', 'module', 'mod_articles_categories', '', 0, 1, 1, 0, '{"name":"mod_articles_categories","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_CATEGORIES_XML_DESCRIPTION","group":"","filename":"mod_articles_categories"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(222, 'mod_languages', 'module', 'mod_languages', '', 0, 1, 1, 1, '{"name":"mod_languages","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.5.0","description":"MOD_LANGUAGES_XML_DESCRIPTION","group":"","filename":"mod_languages"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(223, 'mod_finder', 'module', 'mod_finder', '', 0, 1, 0, 0, '{"name":"mod_finder","type":"module","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FINDER_XML_DESCRIPTION","group":"","filename":"mod_finder"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(300, 'mod_custom', 'module', 'mod_custom', '', 1, 1, 1, 1, '{"name":"mod_custom","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_CUSTOM_XML_DESCRIPTION","group":"","filename":"mod_custom"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(301, 'mod_feed', 'module', 'mod_feed', '', 1, 0, 1, 0, '{"name":"mod_feed","type":"module","creationDate":"July 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FEED_XML_DESCRIPTION","group":"","filename":"mod_feed"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(302, 'mod_latest', 'module', 'mod_latest', '', 1, 1, 1, 0, '{"name":"mod_latest","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LATEST_XML_DESCRIPTION","group":"","filename":"mod_latest"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(303, 'mod_logged', 'module', 'mod_logged', '', 1, 1, 1, 0, '{"name":"mod_logged","type":"module","creationDate":"January 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGGED_XML_DESCRIPTION","group":"","filename":"mod_logged"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(304, 'mod_login', 'module', 'mod_login', '', 1, 1, 1, 1, '{"name":"mod_login","type":"module","creationDate":"March 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGIN_XML_DESCRIPTION","group":"","filename":"mod_login"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(305, 'mod_menu', 'module', 'mod_menu', '', 1, 1, 1, 0, '{"name":"mod_menu","type":"module","creationDate":"March 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MENU_XML_DESCRIPTION","group":"","filename":"mod_menu"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(307, 'mod_popular', 'module', 'mod_popular', '', 1, 0, 1, 0, '{"name":"mod_popular","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_POPULAR_XML_DESCRIPTION","group":"","filename":"mod_popular"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(308, 'mod_quickicon', 'module', 'mod_quickicon', '', 1, 1, 1, 1, '{"name":"mod_quickicon","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_QUICKICON_XML_DESCRIPTION","group":"","filename":"mod_quickicon"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(309, 'mod_status', 'module', 'mod_status', '', 1, 1, 1, 0, '{"name":"mod_status","type":"module","creationDate":"Feb 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATUS_XML_DESCRIPTION","group":"","filename":"mod_status"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(310, 'mod_submenu', 'module', 'mod_submenu', '', 1, 1, 1, 0, '{"name":"mod_submenu","type":"module","creationDate":"Feb 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SUBMENU_XML_DESCRIPTION","group":"","filename":"mod_submenu"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(311, 'mod_title', 'module', 'mod_title', '', 1, 1, 1, 0, '{"name":"mod_title","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_TITLE_XML_DESCRIPTION","group":"","filename":"mod_title"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(312, 'mod_toolbar', 'module', 'mod_toolbar', '', 1, 1, 1, 1, '{"name":"mod_toolbar","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_TOOLBAR_XML_DESCRIPTION","group":"","filename":"mod_toolbar"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(313, 'mod_multilangstatus', 'module', 'mod_multilangstatus', '', 1, 0, 1, 0, '{"name":"mod_multilangstatus","type":"module","creationDate":"September 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MULTILANGSTATUS_XML_DESCRIPTION","group":"","filename":"mod_multilangstatus"}', '{"cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(314, 'mod_version', 'module', 'mod_version', '', 1, 0, 1, 0, '{"name":"mod_version","type":"module","creationDate":"January 2012","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_VERSION_XML_DESCRIPTION","group":"","filename":"mod_version"}', '{"format":"short","product":"1","cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(315, 'mod_stats_admin', 'module', 'mod_stats_admin', '', 1, 0, 1, 0, '{"name":"mod_stats_admin","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATS_XML_DESCRIPTION","group":"","filename":"mod_stats_admin"}', '{"serverinfo":"0","siteinfo":"0","counter":"0","increase":"0","cache":"1","cache_time":"900","cachemode":"static"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(316, 'mod_tags_popular', 'module', 'mod_tags_popular', '', 0, 1, 1, 0, '{"name":"mod_tags_popular","type":"module","creationDate":"January 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"MOD_TAGS_POPULAR_XML_DESCRIPTION","group":"","filename":"mod_tags_popular"}', '{"maximum":"5","timeframe":"alltime","owncache":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(317, 'mod_tags_similar', 'module', 'mod_tags_similar', '', 0, 1, 1, 0, '{"name":"mod_tags_similar","type":"module","creationDate":"January 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"MOD_TAGS_SIMILAR_XML_DESCRIPTION","group":"","filename":"mod_tags_similar"}', '{"maximum":"5","matchtype":"any","owncache":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(400, 'plg_authentication_gmail', 'plugin', 'gmail', 'authentication', 0, 0, 1, 0, '{"name":"plg_authentication_gmail","type":"plugin","creationDate":"February 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_GMAIL_XML_DESCRIPTION","group":"","filename":"gmail"}', '{"applysuffix":"0","suffix":"","verifypeer":"1","user_blacklist":""}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(401, 'plg_authentication_joomla', 'plugin', 'joomla', 'authentication', 0, 1, 1, 1, '{"name":"plg_authentication_joomla","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_AUTH_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(402, 'plg_authentication_ldap', 'plugin', 'ldap', 'authentication', 0, 0, 1, 0, '{"name":"plg_authentication_ldap","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LDAP_XML_DESCRIPTION","group":"","filename":"ldap"}', '{"host":"","port":"389","use_ldapV3":"0","negotiate_tls":"0","no_referrals":"0","auth_method":"bind","base_dn":"","search_string":"","users_dn":"","username":"admin","password":"bobby7","ldap_fullname":"fullName","ldap_email":"mail","ldap_uid":"uid"}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(403, 'plg_content_contact', 'plugin', 'contact', 'content', 0, 1, 1, 0, '{"name":"plg_content_contact","type":"plugin","creationDate":"January 2014","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.2","description":"PLG_CONTENT_CONTACT_XML_DESCRIPTION","group":"","filename":"contact"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(404, 'plg_content_emailcloak', 'plugin', 'emailcloak', 'content', 0, 1, 1, 0, '{"name":"plg_content_emailcloak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_EMAILCLOAK_XML_DESCRIPTION","group":"","filename":"emailcloak"}', '{"mode":"1"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(406, 'plg_content_loadmodule', 'plugin', 'loadmodule', 'content', 0, 1, 1, 0, '{"name":"plg_content_loadmodule","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LOADMODULE_XML_DESCRIPTION","group":"","filename":"loadmodule"}', '{"style":"xhtml"}', '', '', 0, '2011-09-18 15:22:50', 0, 0),
(407, 'plg_content_pagebreak', 'plugin', 'pagebreak', 'content', 0, 1, 1, 0, '{"name":"plg_content_pagebreak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_PAGEBREAK_XML_DESCRIPTION","group":"","filename":"pagebreak"}', '{"title":"1","multipage_toc":"1","showall":"1"}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(408, 'plg_content_pagenavigation', 'plugin', 'pagenavigation', 'content', 0, 1, 1, 0, '{"name":"plg_content_pagenavigation","type":"plugin","creationDate":"January 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_PAGENAVIGATION_XML_DESCRIPTION","group":"","filename":"pagenavigation"}', '{"position":"1"}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(409, 'plg_content_vote', 'plugin', 'vote', 'content', 0, 1, 1, 0, '{"name":"plg_content_vote","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_VOTE_XML_DESCRIPTION","group":"","filename":"vote"}', '', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(410, 'plg_editors_codemirror', 'plugin', 'codemirror', 'editors', 0, 1, 1, 1, '{"name":"plg_editors_codemirror","type":"plugin","creationDate":"28 March 2011","author":"Marijn Haverbeke","copyright":"Copyright (C) 2014 by Marijn Haverbeke <marijnh@gmail.com> and others","authorEmail":"marijnh@gmail.com","authorUrl":"http:\\/\\/codemirror.net\\/","version":"5.18.0","description":"PLG_CODEMIRROR_XML_DESCRIPTION","group":"","filename":"codemirror"}', '{"lineNumbers":"1","lineWrapping":"1","matchTags":"1","matchBrackets":"1","marker-gutter":"1","autoCloseTags":"1","autoCloseBrackets":"1","autoFocus":"1","theme":"default","tabmode":"indent"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(411, 'plg_editors_none', 'plugin', 'none', 'editors', 0, 1, 1, 1, '{"name":"plg_editors_none","type":"plugin","creationDate":"September 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_NONE_XML_DESCRIPTION","group":"","filename":"none"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(412, 'plg_editors_tinymce', 'plugin', 'tinymce', 'editors', 0, 1, 1, 0, '{"name":"plg_editors_tinymce","type":"plugin","creationDate":"2005-2016","author":"Ephox Corporation","copyright":"Ephox Corporation","authorEmail":"N\\/A","authorUrl":"http:\\/\\/www.tinymce.com","version":"4.4.3","description":"PLG_TINY_XML_DESCRIPTION","group":"","filename":"tinymce"}', '{"skin":"0","skin_admin":"0","mode":"2","mobile":"1","drag_drop":"1","path":"","entity_encoding":"raw","lang_mode":"1","lang_code":"en","text_direction":"ltr","content_css":"1","content_css_custom":"","relative_urls":"1","newlines":"0","use_config_textfilters":"0","invalid_elements":"script,applet,iframe","valid_elements":"","extended_elements":"","html_height":"550","html_width":"750","resizing":"1","resize_horizontal":"1","element_path":"1","fonts":"1","paste":"1","searchreplace":"1","insertdate":"1","colors":"1","table":"1","smilies":"1","hr":"1","link":"1","media":"1","print":"1","directionality":"1","fullscreen":"1","alignment":"1","visualchars":"1","visualblocks":"1","nonbreaking":"1","template":"1","blockquote":"1","wordcount":"1","image_advtab":"1","code_sample":"1","advlist":"1","autosave":"1","contextmenu":"1","inlinepopups":"1","custom_plugin":"","custom_button":""}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(413, 'plg_editors-xtd_article', 'plugin', 'article', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_article","type":"plugin","creationDate":"October 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_ARTICLE_XML_DESCRIPTION","group":"","filename":"article"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(414, 'plg_editors-xtd_image', 'plugin', 'image', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_image","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_IMAGE_XML_DESCRIPTION","group":"","filename":"image"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(415, 'plg_editors-xtd_pagebreak', 'plugin', 'pagebreak', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_pagebreak","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_EDITORSXTD_PAGEBREAK_XML_DESCRIPTION","group":"","filename":"pagebreak"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(416, 'plg_editors-xtd_readmore', 'plugin', 'readmore', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_readmore","type":"plugin","creationDate":"March 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_READMORE_XML_DESCRIPTION","group":"","filename":"readmore"}', '', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(417, 'plg_search_categories', 'plugin', 'categories', 'search', 0, 1, 1, 0, '{"name":"plg_search_categories","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CATEGORIES_XML_DESCRIPTION","group":"","filename":"categories"}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `fv5oz_extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(418, 'plg_search_contacts', 'plugin', 'contacts', 'search', 0, 1, 1, 0, '{"name":"plg_search_contacts","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CONTACTS_XML_DESCRIPTION","group":"","filename":"contacts"}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(419, 'plg_search_content', 'plugin', 'content', 'search', 0, 1, 1, 0, '{"name":"plg_search_content","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CONTENT_XML_DESCRIPTION","group":"","filename":"content"}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(420, 'plg_search_newsfeeds', 'plugin', 'newsfeeds', 'search', 0, 1, 1, 0, '{"name":"plg_search_newsfeeds","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_NEWSFEEDS_XML_DESCRIPTION","group":"","filename":"newsfeeds"}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(422, 'plg_system_languagefilter', 'plugin', 'languagefilter', 'system', 0, 0, 1, 1, '{"name":"plg_system_languagefilter","type":"plugin","creationDate":"July 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LANGUAGEFILTER_XML_DESCRIPTION","group":"","filename":"languagefilter"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(423, 'plg_system_p3p', 'plugin', 'p3p', 'system', 0, 0, 1, 0, '{"name":"plg_system_p3p","type":"plugin","creationDate":"September 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_P3P_XML_DESCRIPTION","group":"","filename":"p3p"}', '{"headers":"NOI ADM DEV PSAi COM NAV OUR OTRo STP IND DEM"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(424, 'plg_system_cache', 'plugin', 'cache', 'system', 0, 0, 1, 1, '{"name":"plg_system_cache","type":"plugin","creationDate":"February 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CACHE_XML_DESCRIPTION","group":"","filename":"cache"}', '{"browsercache":"0","cachetime":"15"}', '', '', 0, '0000-00-00 00:00:00', 9, 0),
(425, 'plg_system_debug', 'plugin', 'debug', 'system', 0, 1, 1, 0, '{"name":"plg_system_debug","type":"plugin","creationDate":"December 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_DEBUG_XML_DESCRIPTION","group":"","filename":"debug"}', '{"profile":"1","queries":"1","memory":"1","language_files":"1","language_strings":"1","strip-first":"1","strip-prefix":"","strip-suffix":""}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(426, 'plg_system_log', 'plugin', 'log', 'system', 0, 1, 1, 1, '{"name":"plg_system_log","type":"plugin","creationDate":"April 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LOG_XML_DESCRIPTION","group":"","filename":"log"}', '', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(427, 'plg_system_redirect', 'plugin', 'redirect', 'system', 0, 0, 1, 1, '{"name":"plg_system_redirect","type":"plugin","creationDate":"April 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_REDIRECT_XML_DESCRIPTION","group":"","filename":"redirect"}', '', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(428, 'plg_system_remember', 'plugin', 'remember', 'system', 0, 1, 1, 1, '{"name":"plg_system_remember","type":"plugin","creationDate":"April 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_REMEMBER_XML_DESCRIPTION","group":"","filename":"remember"}', '', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(429, 'plg_system_sef', 'plugin', 'sef', 'system', 0, 1, 1, 0, '{"name":"plg_system_sef","type":"plugin","creationDate":"December 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEF_XML_DESCRIPTION","group":"","filename":"sef"}', '', '', '', 0, '0000-00-00 00:00:00', 8, 0),
(430, 'plg_system_logout', 'plugin', 'logout', 'system', 0, 1, 1, 1, '{"name":"plg_system_logout","type":"plugin","creationDate":"April 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LOGOUT_XML_DESCRIPTION","group":"","filename":"logout"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(431, 'plg_user_contactcreator', 'plugin', 'contactcreator', 'user', 0, 0, 1, 0, '{"name":"plg_user_contactcreator","type":"plugin","creationDate":"August 2009","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTACTCREATOR_XML_DESCRIPTION","group":"","filename":"contactcreator"}', '{"autowebpage":"","category":"34","autopublish":"0"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(432, 'plg_user_joomla', 'plugin', 'joomla', 'user', 0, 1, 1, 0, '{"name":"plg_user_joomla","type":"plugin","creationDate":"December 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_USER_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '{"autoregister":"1","mail_to_user":"1","forceLogout":"1"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(433, 'plg_user_profile', 'plugin', 'profile', 'user', 0, 0, 1, 0, '{"name":"plg_user_profile","type":"plugin","creationDate":"January 2008","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_USER_PROFILE_XML_DESCRIPTION","group":"","filename":"profile"}', '{"register-require_address1":"1","register-require_address2":"1","register-require_city":"1","register-require_region":"1","register-require_country":"1","register-require_postal_code":"1","register-require_phone":"1","register-require_website":"1","register-require_favoritebook":"1","register-require_aboutme":"1","register-require_tos":"1","register-require_dob":"1","profile-require_address1":"1","profile-require_address2":"1","profile-require_city":"1","profile-require_region":"1","profile-require_country":"1","profile-require_postal_code":"1","profile-require_phone":"1","profile-require_website":"1","profile-require_favoritebook":"1","profile-require_aboutme":"1","profile-require_tos":"1","profile-require_dob":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(434, 'plg_extension_joomla', 'plugin', 'joomla', 'extension', 0, 1, 1, 1, '{"name":"plg_extension_joomla","type":"plugin","creationDate":"May 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_EXTENSION_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(435, 'plg_content_joomla', 'plugin', 'joomla', 'content', 0, 1, 1, 0, '{"name":"plg_content_joomla","type":"plugin","creationDate":"November 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(436, 'plg_system_languagecode', 'plugin', 'languagecode', 'system', 0, 0, 1, 0, '{"name":"plg_system_languagecode","type":"plugin","creationDate":"November 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LANGUAGECODE_XML_DESCRIPTION","group":"","filename":"languagecode"}', '', '', '', 0, '0000-00-00 00:00:00', 10, 0),
(437, 'plg_quickicon_joomlaupdate', 'plugin', 'joomlaupdate', 'quickicon', 0, 0, 1, 1, '{"name":"plg_quickicon_joomlaupdate","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_QUICKICON_JOOMLAUPDATE_XML_DESCRIPTION","group":"","filename":"joomlaupdate"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(438, 'plg_quickicon_extensionupdate', 'plugin', 'extensionupdate', 'quickicon', 0, 0, 1, 1, '{"name":"plg_quickicon_extensionupdate","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_QUICKICON_EXTENSIONUPDATE_XML_DESCRIPTION","group":"","filename":"extensionupdate"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(439, 'plg_captcha_recaptcha', 'plugin', 'recaptcha', 'captcha', 0, 0, 1, 0, '{"name":"plg_captcha_recaptcha","type":"plugin","creationDate":"December 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.4.0","description":"PLG_CAPTCHA_RECAPTCHA_XML_DESCRIPTION","group":"","filename":"recaptcha"}', '{"public_key":"","private_key":"","theme":"clean"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(440, 'plg_system_highlight', 'plugin', 'highlight', 'system', 0, 1, 1, 0, '{"name":"plg_system_highlight","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_HIGHLIGHT_XML_DESCRIPTION","group":"","filename":"highlight"}', '', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(441, 'plg_content_finder', 'plugin', 'finder', 'content', 0, 0, 1, 0, '{"name":"plg_content_finder","type":"plugin","creationDate":"December 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_FINDER_XML_DESCRIPTION","group":"","filename":"finder"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(442, 'plg_finder_categories', 'plugin', 'categories', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_categories","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CATEGORIES_XML_DESCRIPTION","group":"","filename":"categories"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(443, 'plg_finder_contacts', 'plugin', 'contacts', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_contacts","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CONTACTS_XML_DESCRIPTION","group":"","filename":"contacts"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(444, 'plg_finder_content', 'plugin', 'content', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_content","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CONTENT_XML_DESCRIPTION","group":"","filename":"content"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(445, 'plg_finder_newsfeeds', 'plugin', 'newsfeeds', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_newsfeeds","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_NEWSFEEDS_XML_DESCRIPTION","group":"","filename":"newsfeeds"}', '', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(447, 'plg_finder_tags', 'plugin', 'tags', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_tags","type":"plugin","creationDate":"February 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_TAGS_XML_DESCRIPTION","group":"","filename":"tags"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(448, 'plg_twofactorauth_totp', 'plugin', 'totp', 'twofactorauth', 0, 0, 1, 0, '{"name":"plg_twofactorauth_totp","type":"plugin","creationDate":"August 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"PLG_TWOFACTORAUTH_TOTP_XML_DESCRIPTION","group":"","filename":"totp"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(449, 'plg_authentication_cookie', 'plugin', 'cookie', 'authentication', 0, 1, 1, 0, '{"name":"plg_authentication_cookie","type":"plugin","creationDate":"July 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_AUTH_COOKIE_XML_DESCRIPTION","group":"","filename":"cookie"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(450, 'plg_twofactorauth_yubikey', 'plugin', 'yubikey', 'twofactorauth', 0, 0, 1, 0, '{"name":"plg_twofactorauth_yubikey","type":"plugin","creationDate":"September 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"PLG_TWOFACTORAUTH_YUBIKEY_XML_DESCRIPTION","group":"","filename":"yubikey"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(451, 'plg_search_tags', 'plugin', 'tags', 'search', 0, 1, 1, 0, '{"name":"plg_search_tags","type":"plugin","creationDate":"March 2014","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_TAGS_XML_DESCRIPTION","group":"","filename":"tags"}', '{"search_limit":"50","show_tagged_items":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(452, 'plg_system_updatenotification', 'plugin', 'updatenotification', 'system', 0, 0, 1, 0, '{"name":"plg_system_updatenotification","type":"plugin","creationDate":"May 2015","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.5.0","description":"PLG_SYSTEM_UPDATENOTIFICATION_XML_DESCRIPTION","group":"","filename":"updatenotification"}', '{"lastrun":1493241299}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(453, 'plg_editors-xtd_module', 'plugin', 'module', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_module","type":"plugin","creationDate":"October 2015","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.5.0","description":"PLG_MODULE_XML_DESCRIPTION","group":"","filename":"module"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(454, 'plg_system_stats', 'plugin', 'stats', 'system', 0, 0, 1, 0, '{"name":"plg_system_stats","type":"plugin","creationDate":"November 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.5.0","description":"PLG_SYSTEM_STATS_XML_DESCRIPTION","group":"","filename":"stats"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(455, 'plg_installer_packageinstaller', 'plugin', 'packageinstaller', 'installer', 0, 1, 1, 1, '{"name":"plg_installer_packageinstaller","type":"plugin","creationDate":"May 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.6.0","description":"PLG_INSTALLER_PACKAGEINSTALLER_PLUGIN_XML_DESCRIPTION","group":"","filename":"packageinstaller"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(456, 'PLG_INSTALLER_FOLDERINSTALLER', 'plugin', 'folderinstaller', 'installer', 0, 1, 1, 1, '{"name":"PLG_INSTALLER_FOLDERINSTALLER","type":"plugin","creationDate":"May 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.6.0","description":"PLG_INSTALLER_FOLDERINSTALLER_PLUGIN_XML_DESCRIPTION","group":"","filename":"folderinstaller"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(457, 'PLG_INSTALLER_URLINSTALLER', 'plugin', 'urlinstaller', 'installer', 0, 1, 1, 1, '{"name":"PLG_INSTALLER_URLINSTALLER","type":"plugin","creationDate":"May 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.6.0","description":"PLG_INSTALLER_URLINSTALLER_PLUGIN_XML_DESCRIPTION","group":"","filename":"urlinstaller"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(503, 'beez3', 'template', 'beez3', '', 0, 1, 1, 0, '{"name":"beez3","type":"template","creationDate":"25 November 2009","author":"Angie Radtke","copyright":"Copyright (C) 2005 - 2016 Open Source Matters, Inc. All rights reserved.","authorEmail":"a.radtke@derauftritt.de","authorUrl":"http:\\/\\/www.der-auftritt.de","version":"3.1.0","description":"TPL_BEEZ3_XML_DESCRIPTION","group":"","filename":"templateDetails"}', '{"wrapperSmall":"53","wrapperLarge":"72","sitetitle":"","sitedescription":"","navposition":"center","templatecolor":"nature"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(504, 'hathor', 'template', 'hathor', '', 1, 1, 1, 0, '{"name":"hathor","type":"template","creationDate":"May 2010","author":"Andrea Tarr","copyright":"Copyright (C) 2005 - 2016 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"","version":"3.0.0","description":"TPL_HATHOR_XML_DESCRIPTION","group":"","filename":"templateDetails"}', '{"showSiteName":"0","colourChoice":"0","boldText":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(506, 'protostar', 'template', 'protostar', '', 0, 1, 1, 0, '{"name":"protostar","type":"template","creationDate":"4\\/30\\/2012","author":"Kyle Ledbetter","copyright":"Copyright (C) 2005 - 2016 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"","version":"1.0","description":"TPL_PROTOSTAR_XML_DESCRIPTION","group":"","filename":"templateDetails"}', '{"templateColor":"","logoFile":"","googleFont":"1","googleFontName":"Open+Sans","fluidContainer":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(507, 'isis', 'template', 'isis', '', 1, 1, 1, 0, '{"name":"isis","type":"template","creationDate":"3\\/30\\/2012","author":"Kyle Ledbetter","copyright":"Copyright (C) 2005 - 2016 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"","version":"1.0","description":"TPL_ISIS_XML_DESCRIPTION","group":"","filename":"templateDetails"}', '{"templateColor":"","logoFile":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(600, 'English (en-GB)', 'language', 'en-GB', '', 0, 1, 1, 1, '{"name":"English (en-GB)","type":"language","creationDate":"December 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.6.5","description":"en-GB site language","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(601, 'English (en-GB)', 'language', 'en-GB', '', 1, 1, 1, 1, '{"name":"English (en-GB)","type":"language","creationDate":"December 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.6.5","description":"en-GB administrator language","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(700, 'files_joomla', 'file', 'joomla', '', 0, 1, 1, 1, '{"name":"files_joomla","type":"file","creationDate":"December 2016","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.6.5","description":"FILES_JOOMLA_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(802, 'English (en-GB) Language Pack', 'package', 'pkg_en-GB', '', 0, 1, 1, 1, '{"name":"English (en-GB) Language Pack","type":"package","creationDate":"December 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.6.5.1","description":"en-GB language pack","group":"","filename":"pkg_en-GB"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(807, 'com_servicess', 'component', 'com_servicess', '', 1, 1, 0, 0, '{"name":"com_servicess","type":"component","creationDate":"2017-04-23","author":"AIT Laundry","copyright":"2017 AIT Laundry","authorEmail":"aitlaundry@gmail.com","authorUrl":"http:\\/\\/","version":"CVS: 1.0.0","description":"Provide the services for combos","group":"","filename":"servicess"}', '{"save_history":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(809, 'com_combos', 'component', 'com_combos', '', 1, 1, 0, 0, '{"name":"com_combos","type":"component","creationDate":"2017-04-23","author":"AIT Laundry","copyright":"2017 AIT Laundry","authorEmail":"aitlaundry@gmail.com","authorUrl":"http:\\/\\/","version":"CVS: 1.0.0","description":"Provide the plan for laundry","group":"","filename":"combos"}', '{"save_history":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(810, 'com_payment', 'component', 'com_payment', '', 1, 1, 0, 0, '{"name":"com_payment","type":"component","creationDate":"2017-04-24","author":"AIT Laundry","copyright":"2017 AIT Laundry","authorEmail":"aitlaundry@gmail.com","authorUrl":"http:\\/\\/","version":"CVS: 1.0.0","description":"the place for store the payment","group":"","filename":"payment"}', '{"save_history":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(812, 'com_order', 'component', 'com_order', '', 1, 1, 0, 0, '{"name":"com_order","type":"component","creationDate":"2017-04-24","author":"AIT Laundry","copyright":"2017 AIT Laundry","authorEmail":"aitlaundry@gmail.com","authorUrl":"http:\\/\\/","version":"CVS: 1.0.0","description":"Provide order management for the laundry","group":"","filename":"order"}', '{"save_history":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(813, 'com_logbook', 'component', 'com_logbook', '', 1, 1, 0, 0, '{"name":"com_logbook","type":"component","creationDate":"2017-04-24","author":"AIT Laundry","copyright":"2017 AIT Laundry","authorEmail":"aitlaundry@gmail.com","authorUrl":"http:\\/\\/","version":"CVS: 1.0.0","description":"Provide Logbook for the Laundry","group":"","filename":"logbook"}', '{"save_history":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(814, 'com_orderlogbook', 'component', 'com_orderlogbook', '', 1, 1, 0, 0, '{"name":"com_orderlogbook","type":"component","creationDate":"2017-04-24","author":"AIT Laundry","copyright":"2017 AIT Laundry","authorEmail":"aitlaundry@gmail.com","authorUrl":"http:\\/\\/","version":"CVS: 1.0.0","description":"Provide Logbook for Order","group":"","filename":"orderlogbook"}', '{"save_history":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(817, 'com_location', 'component', 'com_location', '', 1, 1, 0, 0, '{"name":"com_location","type":"component","creationDate":"2017-04-28","author":"AIT Laundry","copyright":"2017 AIT Laundry","authorEmail":"aitlaundry@gmail.com","authorUrl":"http:\\/\\/","version":"CVS: 1.0.0","description":"Provide location management","group":"","filename":"location"}', '{"save_history":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(819, 'AITLaundry searchLocation', 'module', 'mod_searchlocation', '', 0, 1, 0, 0, '{"name":"AITLaundry searchLocation","type":"module","creationDate":"May 2017","author":"AIT","copyright":"Copyright (c) 2017 AITLaundry. All rights reserved.","authorEmail":"","authorUrl":"","version":"1.0.0","description":"\\n\\t\\n\\t\\n\\t\\n\\t","group":"","filename":"mod_searchlocation"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `fv5oz_extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(822, 'Editor - JoomlaCK', 'plugin', 'jckeditor', 'editors', 0, 1, 1, 0, '{"name":"Editor - JoomlaCK","type":"plugin","creationDate":"Jan 2015","author":"WebxSolution Ltd","copyright":"","authorEmail":"","authorUrl":"","version":"6.6.2","description":"PLG_JCK_XML_DESC","group":"","filename":"jckeditor"}', '{"toolbar":"Full","toolbar_ft":"Basic","uicolor":"#D6E6F4","skin":"office2007","content_css":"1","content_css_custom":"","styles_css":"1","styles_css_custom":"","imagePath":"images","flashPath":"images\\/flash","filePath":"files","entermode":"1","shiftentermode":"2","wwidth":"","hheight":"","showerrors":"1","lang_mode":"1","lang_code":"en","bgcolor":"#FFFFFF","ftcolor":"","ftsize":"12","ftfamily":"Arial","textalign":"0","entities":"1","formatsource":"1","returnScript":"1","useUserFolders":"0","userFolderType":"username","forcesimpleAmpersand":"0","startupFocus":"0","EnableImageDragndrop":"1","imageDragndropPath":"images","jcktypography":"1","jcktypographycontent":"\\ufeff\\/*\\r\\n * JCK Editor Typography Style-sheet\\r\\n * @author: Paul Franklin\\r\\n * @website: http:\\/\\/www.joomlackeditor.com\\r\\n * @version: 2.0\\r\\n * @copyright (C) WebxSolution Ltd 2011 - 2014. All rights reserved\\r\\n * @license: GPLv2\\r\\n * @terms: http:\\/\\/www.joomlackeditor.com\\/terms-of-use\\r\\n * @icons: WebxSolution Ltd has the non-exclusive, non-transferable, non-sublicensable right to use the Licensed Material an unlimited number of times in any and all media for the following commercial or personal purposes (together the \\"Permitted Uses\\") subject to the restrictions set forth in the Agreement. Any uses other than the Permitted Uses must be approved by DryIcons in writing. http:\\/\\/dryicons.com\\/terms\\/commercial\\/\\r\\n *\\/ \\r\\n\\r\\n \\/* ADD PARAGRAPH FORMAT STYLES FOR EDITOR\\r\\n-------------------------------------------------------------------------*\\/\\r\\n@font-face {}\\r\\nbody.cke_show_borders {}\\r\\nh1 {}\\r\\nh2 {}\\r\\nh3 {}\\r\\nh4 {}\\r\\nh5 {}\\r\\nh6 {}\\r\\npre {}\\r\\naddress {}\\r\\n\\r\\n \\/* Preformatted text\\r\\n----------------------------------------------------------------------------------------------------*\\/\\r\\nblockquote {\\r\\n    background: none repeat scroll 0 0 #CCCCCC;\\r\\n    border-left: 10px solid #8F8F8F;\\r\\n    color: #544C4A;\\r\\n    font: italic 12pt\\/1.2em Georgia;\\r\\n    margin: 10px !important;\\r\\n    padding: 10px !important;\\r\\n    text-shadow: 1px 1px 1px #ffffff;\\r\\n    width: 60%;\\r\\n    border-radius: 0 10px 0 10px;\\r\\n    -moz-border-radius: 0 10px 0 10px;\\r\\n    -webkit-border: 0 10px 0 10px;\\r\\n}\\r\\n\\r\\nblockquote p { display: inline; }\\r\\nblockquote:after { background: none repeat scroll 0 0 transparent !important; }\\r\\n\\r\\nblockquote:before {\\r\\n    content: url(\\"blockquotes.png\\") !important;\\r\\n\\tbackground: none repeat scroll 0 0 transparent !important;\\r\\n    margin-right: 15px;\\r\\n    vertical-align: super;\\r\\n\\tposition: relative !important;\\r\\n}\\r\\n\\r\\nspan.dropcap  {\\r\\n    color: #333333;\\r\\n    display: block;\\r\\n    float: left;\\r\\n    font: 60px\\/40px Georgia,Times,serif;\\r\\n    padding: 7px 8px 0 0;\\r\\n}\\r\\n\\r\\nspan.box-1heading-jck { font: 50px\\/50px Georgia,Times,serif;}\\r\\nspan.box-2heading-jck { font: 30px\\/40px Georgia,Times,serif;}\\r\\nspan.box-1heading-jck, span.box-2heading-jck { color: #333333; display: block; float: left;}\\r\\n\\r\\n\\/* Tooltips \\r\\n----------------------------------------------------------------------------------------------------*\\/\\r\\n.flashtip-jck, .ziptip-jck, .pdftip-jck, .videotip-jck, .infotip-jck, .warningtip-jck, .filmtip-jck, .pintip-jck , .lightbulbtip-jck , .recycletip-jck , .cameratip-jck, .commenttip-jck, .chattip-jck, .documenttip-jck, .accessibletip-jck, .startip-jck, .hearttip-jck, .previoustip-jck, .carttip-jck, .attachmenttip-jck, .calculatortip-jck, .cuttip-jck, .dollartip-jck, .poundtip-jck , .eurotip-jck, .mailtip-jck, .supporttip-jck, .nexttip-jck, .soundtip-jck { color: #444444 !important; }\\r\\n\\r\\na.flashtip-jck, a.ziptip-jck, a.pdftip-jck, a.videotip-jck, a.infotip-jck, a.warningtip-jck, a.filmtip-jck, a.pintip-jck , a.lightbulbtip-jck , a.recycletip-jck , a.cameratip-jck, a.commenttip-jck, a.chattip-jck, a.documenttip-jck, a.accessibletip-jck, a.startip-jck, a.hearttip-jck, a.previoustip-jck, a.carttip-jck, a.attachmenttip-jck, a.calculatortip-jck, a.cuttip-jck, a.dollartip-jck, a.poundtip-jck , a.eurotip-jck, a.mailtip-jck, a.supporttip-jck , a.nexttip-jck, a.soundtip-jck { color: #095197 !important; }\\r\\n\\r\\n.flashtip-jck, .ziptip-jck, .pdftip-jck, .videotip-jck, .infotip-jck, .warningtip-jck, .filmtip-jck, .pintip-jck , .lightbulbtip-jck , .recycletip-jck , .cameratip-jck, .commenttip-jck, .chattip-jck, .documenttip-jck, .accessibletip-jck, .startip-jck, .hearttip-jck, .previoustip-jck, .carttip-jck, .attachmenttip-jck, .calculatortip-jck, .cuttip-jck, .dollartip-jck, .poundtip-jck , .eurotip-jck, .mailtip-jck, .supporttip-jck, .nexttip-jck, .soundtip-jck, .download-DOC,\\r\\n a.flashtip-jck, a.ziptip-jck, a.pdftip-jck, a.videotip-jck, a.infotip-jck, a.warningtip-jck, a.filmtip-jck, a.pintip-jck , a.lightbulbtip-jck , a.recycletip-jck , a.cameratip-jck, a.commenttip-jck, a.chattip-jck, a.documenttip-jck, a.accessibletip-jck, a.startip-jck, a.hearttip-jck, a.previoustip-jck, a.carttip-jck, a.attachmenttip-jck, a.calculatortip-jck, a.cuttip-jck, a.dollartip-jck, a.poundtip-jck , a.eurotip-jck, a.mailtip-jck, a.supporttip-jck , a.nexttip-jck, a.soundtip-jck {\\r\\n    display: block;\\r\\n\\tmargin-bottom: 20px;\\r\\n\\tbackground-color: #FAFAFA !important;\\r\\n    background-position: left center !important;\\r\\n    background-repeat: no-repeat !important;\\r\\n\\tbackground-size: 28px auto !important;\\r\\n    border-bottom: 1px dotted #C8C8C8;\\r\\n    border-top: 1px dotted #C8C8C8;\\r\\n    display: block;\\r\\n    margin: 10px 0 !important;\\r\\n    padding: 7px 10px 7px 35px !important;\\r\\n\\t-webkit-transition: background-color 800ms ease-in-out;\\r\\n\\t-moz-transition: background-color 800ms ease-in-out;\\r\\n\\t-o-transition: background-color 800ms ease-in-out;\\r\\n\\ttransition: background-color 800ms ease-in-out;\\r\\n\\ttext-shadow: 1px 1px 1px #ffffff;\\r\\n\\tfont-size: 14px;\\r\\n}\\r\\n\\r\\na.flashtip-jck:hover, a.ziptip-jck:hover, a.pdftip-jck:hover, a.videotip-jck:hover, a.infotip-jck:hover, a.warningtip-jck:hover, a.filmtip-jck:hover, a.pintip-jck:hover , a.lightbulbtip-jck:hover , a.recycletip-jck:hover , a.cameratip-jck:hover, a.commenttip-jck:hover, a.chattip-jck:hover, a.documenttip-jck:hover, a.accessibletip-jck:hover, a.startip-jck:hover, a.hearttip-jck:hover, a.previoustip-jck:hover, a.carttip-jck:hover, a.attachmenttip-jck:hover, a.calculatortip-jck:hover, a.cuttip-jck:hover, a.dollartip-jck:hover, a.poundtip-jck:hover, a.eurotip-jck:hover, a.mailtip-jck:hover, a.supporttip-jck:hover, a.nexttip-jck:hover, a.soundtip-jck:hover, a.download-DOC:hover { color: #095197 !important; }\\r\\n\\r\\n.flashtip-jck:hover, .ziptip-jck:hover, .pdftip-jck:hover, .videotip-jck:hover, .infotip-jck:hover, .warningtip-jck:hover, .filmtip-jck:hover, .pintip-jck:hover , .lightbulbtip-jck:hover , .recycletip-jck:hover , .cameratip-jck:hover, .commenttip-jck:hover, .chattip-jck:hover, .documenttip-jck:hover, .accessibletip-jck:hover, .startip-jck:hover, .hearttip-jck:hover, .previoustip-jck:hover, .carttip-jck:hover, .attachmenttip-jck:hover, .calculatortip-jck:hover, .cuttip-jck:hover, .dollartip-jck:hover, .poundtip-jck:hover, .eurotip-jck:hover, .mailtip-jck:hover, .supporttip-jck:hover, .nexttip-jck:hover, .soundtip-jck:hover, .download-DOC:hover, a.flashtip-jck:hover, a.ziptip-jck:hover, a.pdftip-jck:hover, a.videotip-jck:hover, a.infotip-jck:hover, a.warningtip-jck:hover, a.filmtip-jck:hover, a.pintip-jck:hover , a.lightbulbtip-jck:hover, a.recycletip-jck:hover, a.cameratip-jck:hover, a.commenttip-jck:hover, a.chattip-jck:hover, a.documenttip-jck:hover, a.accessibletip-jck:hover, a.startip-jck:hover, a.hearttip-jck:hover, a.previoustip-jck:hover, a.carttip-jck:hover, a.attachmenttip-jck:hover, a.calculatortip-jck:hover, a.cuttip-jck:hover, a.dollartip-jck:hover, a.poundtip-jck:hover, a.eurotip-jck:hover, a.mailtip-jck:hover, a.supporttip-jck, a.nexttip-jck:hover, a.soundtip-jck:hover {\\r\\n    background-color: #F2F2F2 !important;\\r\\n\\t-webkit-transition: background-color 400ms ease-in-out;\\r\\n\\t-moz-transition: background-color 400ms ease-in-out;\\r\\n\\t-o-transition: background-color 400ms ease-in-out;\\r\\n\\ttransition: background-color 400ms ease-in-out;\\r\\n\\tbackground-repeat: no-repeat !important;\\r\\n}\\r\\n\\r\\n.flashtip-jck, .flashtip-jck:hover, a.flashtip-jck:hover { background-image: url(\\"flash.png\\")!important}\\r\\n.ziptip-jck, .ziptip-jck:hover, a.ziptip-jck:hover { background-image: url(\\"zip_download.png\\")!important}\\r\\n.pdftip-jck, .pdftip-jck:hover, a.pdftip-jck:hover { background-image: url(\\"pdf.png\\")!important}\\r\\n.videotip-jck , .videotip-jck:hover, a.videotip-jck:hover { background-image: url(\\"video_clip.png\\")!important}\\r\\n.infotip-jck, .infotip-jck:hover, a.infotip-jck:hover { background-image: url(\\"info.png\\")!important}\\r\\n.warningtip-jck, .warningtip-jck:hover, a.warningtip-jck:hover { background-image: url(\\"warning.png\\")!important}\\r\\n.filmtip-jck, .filmtip-jck:hover, a.filmtip-jck:hover { background-image: url(\\"film.png\\")!important}\\r\\n.pintip-jck, .pintip-jck:hover, a.pintip-jck:hover {background-image: url(\\"pin.png\\")!important}\\r\\n.lightbulbtip-jck, .lightbulbtip-jck:hover, a.lightbulbtip-jck:hover {background-image: url(\\"light_bulb.png\\")!important}\\r\\n.recycletip-jck, .recycletip-jck:hover, a.recycletip-jck:hover { background-image: url(\\"recycle.png\\")!important}\\r\\n.cameratip-jck, .cameratip-jck:hover, a.cameratip-jck:hover{ background-image: url(\\"camera.png\\")!important}\\r\\n.commenttip-jck, .commenttip-jck:hover, a.commenttip-jck:hover { background-image: url(\\"comment.png\\")!important}\\r\\n.chattip-jck, .chattip-jck:hover , a.chattip-jck:hover { background-image: url(\\"chat.png\\")!important}\\r\\n.documenttip-jck, .documenttip-jck:hover, a.documenttip-jck:hover { background-image: url(\\"document.png\\")!important}\\r\\n.accessibletip-jck, .accessibletip-jck:hover, a.accessibletip-jck:hover { background-image: url(\\"accessible.png\\")!important}\\r\\n.startip-jck, .startip-jck:hover , a.startip-jck:hover { background-image: url(\\"star.png\\")!important}\\r\\n.hearttip-jck, .hearttip-jck:hover, a.hearttip-jck:hover { background-image: url(\\"heart.png\\")!important}\\r\\n.previoustip-jck, .previoustip-jck:hover, a.previoustip-jck:hover { background-image: url(\\"previous.png\\")!important}\\r\\n.carttip-jck, .carttip-jck :hover, a.carttip-jck:hover { background-image: url(\\"cart.png\\")!important}\\r\\n.attachmenttip-jck, .attachmenttip-jck:hover, a.attachmenttip-jck:hover { background-image: url(\\"attachment.png\\")!important}\\r\\n.calculatortip-jck, .calculatortip-jck:hover , a.calculatortip-jck:hover { background-image: url(\\"calculator.png\\")!important}\\r\\n.cuttip-jck, .cuttip-jck:hover, a.cuttip-jck:hover { background-image: url(\\"cut.png\\")!important}\\r\\n.dollartip-jck , .dollartip-jck:hover, a.dollartip-jck:hover { background-image: url(\\"dollar_currency_sign.png\\")!important}\\r\\n.poundtip-jck, .poundtip-jck:hover, a.poundtip-jck:hover { background-image: url(\\"sterling_pound_currency_sign.png\\")!important}\\r\\n.eurotip-jck, .eurotip-jck:hover , a.eurotip-jck:hover { background-image: url(\\"euro_currency_sign.png\\")!important}\\r\\n.mailtip-jck, .mailtip-jck:hover , a.mailtip-jck:hover { background-image: url(\\"mail.png\\")!important}\\r\\n.supporttip-jck, .supporttip-jck:hover , a.supporttip-jck:hover { background-image: url(\\"support.png\\")!important}\\r\\n.nexttip-jck, .nexttip-jck:hover, a.nexttip-jck:hover { background-image: url(\\"next.png\\")!important}\\r\\n.soundtip-jck, .soundtip-jck:hover , a.soundtip-jck:hover { background-image: url(\\"sound.png\\")!important}\\r\\n\\r\\n\\r\\n\\r\\n \\/* Text Highlight\\r\\n----------------------------------------------------------------------------------------------------*\\/\\r\\nspan.blue_hlight-jck, span.gree_hlight-jck, span.red_hlight-jck, span.black_hlight-jck , span.yell_hlight-jck {\\r\\n    border-radius: 5px 5px 5px 5px;\\r\\n    color: #FFFFFF;\\r\\n    display: inline;\\r\\n    font-weight: bold;\\r\\n\\ttext-shadow: none;\\r\\n    padding: 2px 4px;\\r\\n\\tfont-size: 13px;\\r\\n}\\r\\n\\r\\nspan.blue_hlight-jck {  background: none repeat scroll 0 0 #3E6A86;}\\r\\nspan.gree_hlight-jck {  background: none repeat scroll 0 0 #b9cd96;}\\r\\nspan.red_hlight-jck {  background: none repeat scroll 0 0 #AA1428;}\\r\\nspan.black_hlight-jck {  background: none repeat scroll 0 0 #000000;}\\r\\nspan.yell_hlight-jck {  background: none repeat scroll 0 0 #F2F096; color: #544C4A;}\\r\\n \\r\\n\\/* Box Styles\\r\\n----------------------------------------------------------------------------------------------------*\\/\\r\\n.blubox-jck, .grebox-jck, .redbox-jck, .blabox-jck, .yelbox-jck   {\\r\\n\\tbackground: none repeat scroll 0 0 #FAFAFA;\\r\\n\\tborder-style: solid;\\r\\n    border-width: 1px 1px 1px 8px;\\r\\n\\tmargin: 10px 0 20px !important;\\r\\n    padding: 8px 8px 8px 20px !important;\\r\\n\\t-webkit-border-top-left-radius: 15px;\\r\\n    -webkit-border-bottom-left-radius: 15px;\\r\\n    -moz-border-radius-topleft: 15px;\\r\\n    -moz-border-radius-bottomleft: 15px;\\r\\n    border-top-left-radius: 15px;\\r\\n    border-bottom-left-radius: 15px;\\r\\n\\tcolor: #444444 !important;\\r\\n\\ttext-shadow: 1px 1px 1px #ffffff;\\r\\n}\\r\\n\\r\\n.blubox-jck  {  border-color: #DDDDDD #DDDDDD #DDDDDD #3E6A86;}\\r\\n.grebox-jck  {  border-color: #DDDDDD #DDDDDD #DDDDDD #b9cd96;}\\r\\n.redbox-jck {  border-color: #DDDDDD #DDDDDD #DDDDDD #AA1428;}\\r\\n.blabox-jck  {  border-color: #DDDDDD #DDDDDD #DDDDDD #000000;}\\r\\n.yelbox-jck  {  border-color: #DDDDDD #DDDDDD #DDDDDD #F2F096; color: #544C4A;}\\r\\n\\r\\n.blubox-jck > br,\\r\\n.grebox-jck  > br,\\r\\n.redbox-jck > br, \\r\\n.blabox-jck  > br, \\r\\n.yelbox-jck > br {\\r\\n    clear: both;\\r\\n}\\r\\n\\r\\n\\/* Icon Library\\r\\n----------------------------------------------------------------------------------------------------*\\/\\r\\n.info-jck, .warning-jck, .film-jck, .pin-jck , .lightbulb-jck , .recycle-jck , .camera-jck, .comment-jck, .chat-jck, .document-jck, .accessible-jck, .star-jck, .heart-jck, .previous-jck, .cart-jck, .attachment-jck, .calculator-jck, .cut-jck, .dollar-jck, .pound-jck , .euro-jck, .mail-jck, .support-jck, .next-jck, .sound-jck, .flash-jck, .zip-jck, .pdf-jck, .video-jck   {\\r\\n    display: block;\\r\\n    padding: 20px 0 20px 60px !important;\\r\\n\\tmargin-bottom: 20px !important;\\r\\n\\tbackground-color: transparent !important;\\r\\n    background-position: left center !important;\\r\\n    background-repeat: no-repeat !important;\\r\\n}\\r\\n\\r\\n.info-jck { background: url(\\"info.png\\")}\\r\\n.warning-jck { background: url(\\"warning.png\\")}\\r\\n.film-jck { background: url(\\"film.png\\")}\\r\\n.pin-jck {background: url(\\"pin.png\\")}\\r\\n.lightbulb-jck {background: url(\\"light_bulb.png\\")}\\r\\n.recycle-jck { background: url(\\"recycle.png\\")}\\r\\n.camera-jck { background: url(\\"camera.png\\")}\\r\\n.comment-jck { background: url(\\"comment.png\\")}\\r\\n.chat-jck  { background: url(\\"chat.png\\")}\\r\\n.document-jck { background: url(\\"document.png\\")}\\r\\n.accessible-jck { background: url(\\"accessible.png\\")}\\r\\n.star-jck { background: url(\\"star.png\\")}\\r\\n.heart-jck { background: url(\\"heart.png\\")}\\r\\n.previous-jck { background: url(\\"previous.png\\")}\\r\\n.cart-jck { background: url(\\"cart.png\\")}\\r\\n.attachment-jck { background: url(\\"attachment.png\\")}\\r\\n.calculator-jck { background: url(\\"calculator.png\\")}\\r\\n.cut-jck { background: url(\\"cut.png\\")}\\r\\n.dollar-jck { background: url(\\"dollar_currency_sign.png\\")}\\r\\n.pound-jck { background: url(\\"sterling_pound_currency_sign.png\\")}\\r\\n.euro-jck { background: url(\\"euro_currency_sign.png\\")}\\r\\n.mail-jck { background: url(\\"mail.png\\")}\\r\\n.support-jck { background: url(\\"support.png\\")}\\r\\n.next-jck  { background: url(\\"next.png\\")}\\r\\n.sound-jck  { background: url(\\"sound.png\\")}\\r\\n.flash-jck  { background: url(\\"flash.png\\")}\\r\\n.zip-jck  { background: url(\\"zip_download.png\\")}\\r\\n.pdf-jck  { background: url(\\"pdf.png\\")}\\r\\n.video-jck  { background: url(\\"video_clip.png\\")}\\r\\n\\r\\n\\/* Images Caption Styles\\r\\n-------------------------------------------------------------------------*\\/\\r\\nimg.caption { background-color:inherit; vertical-align: middle;}\\r\\n.img_caption.none { margin: 0 !important;} \\r\\n.img_caption { text-align: center; }\\r\\n\\r\\nimg.caption.photo, img.caption.photoblack, img.caption.photoblue, img.caption.photogreen, img.caption.photored, img.caption.photoyellow { \\r\\n    background-color: #FFFFFF;\\r\\n    padding: 10px 10px 40px;\\r\\n\\tmargin-right: 5px;\\r\\n\\tbox-shadow: 0 0 3px #000000;\\r\\n\\t-webkit-box-shadow: 0 0 3px #000000;\\r\\n    -moz-box-shadow: 0 0 3px #000000;\\r\\n}\\r\\n\\r\\nimg.caption.photo + p, img.caption.photoblack + p, img.caption.photoblue + p, img.caption.photogreen + p, img.caption.photored + p, img.caption.photoyellow + p {\\r\\n    position: relative; \\r\\n    left: 0px;\\r\\n    bottom: 30px;\\r\\n    overflow: hidden;\\r\\n    text-overflow: ellipsis;\\r\\n    white-space: nowrap;\\r\\n    width: 100%;\\r\\n\\tcolor: #333333;\\r\\n\\tmargin: 0;\\r\\n    font-size: 13px;\\r\\n    line-height: 18px;\\r\\n}\\r\\n\\r\\nimg.caption.photoblack + p , img.caption.photoblue + p, img.caption.photored + p { color: #FFFFFF; }\\r\\nimg.caption.photoblack { background-color: #000000;}\\r\\nimg.caption.photoblue {  background-color: #3E6A86;}\\r\\nimg.caption.photogreen  {  background-color: #b9cd96;}\\r\\nimg.caption.photored {  background-color: #AA1428;}\\r\\nimg.caption.photoyellow {  background-color: #F2F096;}\\r\\n\\r\\n\\/* Images Styles\\r\\n-------------------------------------------------------------------------*\\/\\r\\nimg.jck_img_align_left {\\r\\n    float: left; \\r\\n    margin: 3px 5px 0 0;\\r\\n    padding: 1px;\\r\\n}\\r\\n\\r\\nimg.jck_img_align_right {\\r\\n    float: right; \\r\\n    margin: 3px 0 0 5px;\\r\\n    padding: 1px;\\r\\n}\\r\\n\\r\\nimg.image_holder {\\r\\n    background: none repeat scroll 0 0 #FFFFFF;\\r\\n    border: 5px solid #EFEFEF;\\r\\n    margin: 3px 5px 0 0;\\r\\n    padding: 1px;\\r\\n}\\r\\n\\r\\nimg.fade_in {\\r\\n\\t-webkit-transition: all 500ms ease-in-out;\\r\\n\\t-moz-transition: all 500ms ease-in-out;\\r\\n\\t-o-transition: all 500ms ease-in-out;\\r\\n\\ttransition: all 500ms ease-in-out;\\r\\n\\t-webkit-box-shadow: 0 0 3px #000000;\\r\\n\\t-moz-box-shadow: 0 0 3px #000000;\\r\\n\\tbox-shadow: 0 0 3px #000000;\\r\\n\\tborder: 10px solid #FFFFFF;\\r\\n    opacity: 0.5;\\r\\n    overflow: hidden;\\r\\n    position: relative;\\r\\n\\tmargin: 3px;\\r\\n\\tcursor:url(cursor_zoom.png),auto;\\r\\n}\\r\\n\\r\\nimg.fade_in:hover {\\r\\n\\t-webkit-box-shadow: 0 0 10px #000000;\\r\\n\\t-moz-box-shadow: 0 0 10px #000000;\\r\\n\\tbox-shadow: 0 0 10px #000000;\\r\\n    opacity: 1;\\r\\n}\\r\\n\\r\\nimg.zoom  { \\r\\n\\t-webkit-transition: all 500ms ease-in-out;\\r\\n\\t-moz-transition: all 500ms ease-in-out;\\r\\n\\t-o-transition: all 500ms ease-in-out;\\r\\n\\ttransition: all 500ms ease-in-out;\\r\\n    background: none repeat scroll 0 0 #FFFFFF;\\r\\n\\t-webkit-box-shadow: 0 3px 6px rgba(0, 0, 0, 0.25);\\r\\n\\t-moz-box-shadow: 0 3px 6px rgba(0, 0, 0, 0.25);\\r\\n\\tbox-shadow: 0 3px 6px rgba(0, 0, 0, 0.25);\\r\\n    color: #333333;\\r\\n    display: inline;\\r\\n    float: left;\\r\\n    font-size: 18px;\\r\\n    padding: 10px 10px 15px;\\r\\n    text-align: center;\\r\\n    text-decoration: none;\\r\\n    width: auto;\\r\\n\\tfont-family: serif;\\r\\n\\theight: 100px;\\r\\n\\twidth: auto;\\r\\n\\tmargin: 0 20px 27px 0px;\\r\\n\\tcursor:url(cursor_zoom.png),auto;\\r\\n}\\r\\n\\r\\nimg.zoom:hover {\\r\\n    -moz-transform: scale(1.75);\\r\\n\\t-webkit-transform: scale(1.75);\\r\\n\\t-o-transform: scale(1.75);\\r\\n\\t-webkit-transition: all 500ms ease-in-out;\\r\\n\\t-moz-transition: all 500ms ease-in-out;\\r\\n\\t-o-transition: all 500ms ease-in-out;\\r\\n\\ttransition: all 500ms ease-in-out;\\r\\n\\t-webkit-box-shadow: 0 3px 6px rgba(0, 0, 0, 0.5);\\r\\n\\t-moz-box-shadow: 0 3px 6px rgba(0, 0, 0, 0.5);\\r\\n\\tbox-shadow: 0 3px 6px rgba(0, 0, 0, 0.5); \\r\\n    position: relative;\\r\\n    z-index: 50;\\r\\n\\tmargin: 0 -60px 27px 80px;\\r\\n}\\r\\n\\r\\nimg.polaroids_zoom  {\\r\\n    -moz-transform: rotate(-2deg);\\r\\n\\t-webkit-transform: rotate(2deg); \\r\\n\\t-o-transform: rotate(2deg); \\r\\n\\t-webkit-transition: all 500ms ease-in-out;\\r\\n\\t-moz-transition: all 500ms ease-in-out;\\r\\n\\t-o-transition: all 500ms ease-in-out;\\r\\n\\ttransition: all 500ms ease-in-out;\\r\\n    background: none repeat scroll 0 0 #FFFFFF;\\r\\n\\t-webkit-box-shadow: 0 3px 6px rgba(0, 0, 0, 0.25);\\r\\n\\t-moz-box-shadow: 0 3px 6px rgba(0, 0, 0, 0.25);\\r\\n\\tbox-shadow: 0 3px 6px rgba(0, 0, 0, 0.25);\\r\\n    color: #333333;\\r\\n    display: inline;\\r\\n    float: left;\\r\\n    font-size: 18px;\\r\\n    margin: 10px 20px 25px 14px;\\r\\n    padding: 10px 10px 15px;\\r\\n    text-align: center;\\r\\n    text-decoration: none;\\r\\n    width: auto;\\r\\n\\tfont-family: serif;\\r\\n\\theight: 100px;\\r\\n\\twidth: auto;\\r\\n\\tcursor:url(cursor_zoom.png),auto;\\r\\n}\\r\\n\\r\\nimg.polaroids_zoom:hover {\\r\\n    -moz-transform: scale(1.30);\\r\\n\\t-webkit-transform: scale(1.30);\\r\\n\\t-o-transform: scale(1.30);\\r\\n\\t-webkit-transition: all 500ms ease-in-out;\\r\\n\\t-moz-transition: all 500ms ease-in-out;\\r\\n\\t-o-transition: all 500ms ease-in-out;\\r\\n\\ttransition: all 500ms ease-in-out;\\r\\n\\t-webkit-box-shadow: 0 3px 6px rgba(0, 0, 0, 0.5);\\r\\n\\t-moz-box-shadow: 0 3px 6px rgba(0, 0, 0, 0.5);\\r\\n\\tbox-shadow: 0 3px 6px rgba(0, 0, 0, 0.5); \\r\\n    position: relative;\\r\\n    z-index: 50;\\r\\n}\\r\\n\\r\\nimg.screenshot_blue, img.screenshot_green , img.screenshot_red, img.screenshot_black, img.screenshot_gray, img.screenshot_yellow  {\\r\\n    margin: 5px 0;\\r\\n    padding: 10px;\\r\\n\\tbackground: #ffffff;\\r\\n\\tbackground: -moz-linear-gradient(top, #ffffff 0%, #e5e5e5 100%);\\r\\n\\tbackground: -webkit-gradient(linear, left top, left bottom, color-stop(0%,#ffffff), color-stop(100%,#e5e5e5));\\r\\n\\tbackground: -webkit-linear-gradient(top, #ffffff 0%,#e5e5e5 100%);\\r\\n\\tbackground: -o-linear-gradient(top, #ffffff 0%,#e5e5e5 100%);\\r\\n\\tbackground: -ms-linear-gradient(top, #ffffff 0%,#e5e5e5 100%);\\r\\n\\tbackground: linear-gradient(top, #ffffff 0%,#e5e5e5 100%);\\r\\n\\tfilter: progid:DXImageTransform.Microsoft.gradient( startColorstr=\'#ffffff\', endColorstr=\'#e5e5e5\',GradientType=0 );\\r\\n\\topacity: 1;\\r\\n\\tmax-width: 85%;\\r\\n}\\r\\n\\r\\nimg.screenshot_blue { border: 10px solid #3E6A86;}\\r\\nimg.screenshot_green  { border: 10px solid #b9cd96;}\\r\\nimg.screenshot_red  { border: 10px solid #AA1428;}\\r\\nimg.screenshot_black  { border: 10px solid #000000;}\\r\\nimg.screenshot_gray { border: 10px solid #F0F0F0;}\\r\\nimg.screenshot_yellow { border: 10px solid #EFDE2C;}\\r\\n\\r\\n \\/* Div Styles\\r\\n----------------------------------------------------------------------------------------------------*\\/\\r\\ndiv.scroll_box{\\r\\n    margin: 5px 0;\\r\\n    padding: 10px;\\r\\n\\tbackground: #ffffff;\\r\\n\\tbackground: -moz-linear-gradient(top, #ffffff 0%, #e5e5e5 100%);\\r\\n\\tbackground: -webkit-gradient(linear, left top, left bottom, color-stop(0%,#ffffff), color-stop(100%,#e5e5e5));\\r\\n\\tbackground: -webkit-linear-gradient(top, #ffffff 0%,#e5e5e5 100%);\\r\\n\\tbackground: -o-linear-gradient(top, #ffffff 0%,#e5e5e5 100%);\\r\\n\\tbackground: -ms-linear-gradient(top, #ffffff 0%,#e5e5e5 100%);\\r\\n\\tbackground: linear-gradient(top, #ffffff 0%,#e5e5e5 100%);\\r\\n\\tfilter: progid:DXImageTransform.Microsoft.gradient( startColorstr=\'#ffffff\', endColorstr=\'#e5e5e5\',GradientType=0 );\\r\\n\\topacity: 1;\\r\\n\\tborder-left: 15px solid ##EDEDED;\\r\\n    border-top: 15px solid #EDEDED;\\r\\n    height: 300px;\\r\\n    overflow: scroll;\\r\\n\\t-webkit-box-shadow: 0 0 1px 1px #E3E3E3 inset, 0 0 1px 2px #FFFFFF inset, 0 0 0 1px #E3E3E3;\\r\\n\\tbox-shadow: 0 0 1px 1px #E3E3E3 inset, 0 0 1px 2px #FFFFFF inset, 0 0 0 1px #E3E3E3; \\r\\n}\\r\\n\\r\\ndiv.img_rollover { background-color: transparent; \\/* max-width: 0;  = set the the width of your rollover images*\\/ }\\r\\ndiv.img_rollover img:first-child { display: block; }\\r\\ndiv.img_rollover img:last-child { display: none; }\\r\\ndiv.img_rollover:hover img:first-child { display: none; }\\r\\ndiv.img_rollover:hover img:last-child { display:block; cursor: pointer; }\\r\\n\\r\\n\\/* Tables Styles\\r\\n-------------------------------------------------------------------------*\\/\\r\\ntable.table_style_blue, table.table_style_green, table.table_style_red, table.table_style_black, table.table_style_yellow  {\\r\\n    border: 1px solid #DDDDDD;\\r\\n    border-collapse: collapse;\\r\\n    color: #404040;\\r\\n    width: 100%;\\r\\n}\\r\\n\\r\\ntable.table_style_blue tbody tr, table.table_style_green tbody tr, table.table_style_red tbody tr, table.table_style_black tbody tr, table.table_style_yellow tbody tr  {\\r\\n    background: none repeat scroll 0 0 #F2F2F2;\\r\\n\\tborder: 1px solid #DDDDDD;\\r\\n\\t-webkit-transition: all 800ms ease-in-out;\\r\\n\\t-moz-transition: all 800ms ease-in-out;\\r\\n\\t-o-transition: all 800ms ease-in-out;\\r\\n\\ttransition: all 800ms ease-in-out;\\r\\n}\\r\\n\\r\\ntable.table_style_blue tbody tr:hover , table.table_style_green tbody tr:hover, table.table_style_red tbody tr:hover, table.table_style_black tbody tr:hover, table.table_style_yellow tbody tr:hover  {\\r\\n    background: none repeat scroll 0 0 #E5E5E5;\\r\\n\\t-webkit-transition: all 300ms ease-in-out;\\r\\n\\t-moz-transition: all 300ms ease-in-out;\\r\\n\\t-o-transition: all 300ms ease-in-out;\\r\\n\\ttransition: all 300ms ease-in-out;\\r\\n}\\r\\n\\r\\ntable.table_style_blue tbody tr td, table.table_style_green tbody tr td, table.table_style_red tbody tr td, table.table_style_black tbody tr td, table.table_style_yellow tbody tr td {\\r\\n    line-height: 22px;\\r\\n\\tpadding: 5px;\\r\\n\\tborder: 1px solid #DDDDDD;\\r\\n}\\r\\n\\r\\ntable.table_style_blue caption, table.table_style_green caption, table.table_style_red caption, table.table_style_black caption, table.table_style_yellow caption  {\\r\\n    color: #FFFFFF;\\r\\n    font-weight: 700;\\r\\n    line-height: 22px;\\r\\n    text-align: center;\\r\\n    text-transform: uppercase;\\r\\n}\\r\\n\\r\\ntable.table_style_blue caption { background: none repeat scroll 0 0 #3E6A86;}\\r\\ntable.table_style_green caption { background: none repeat scroll 0 0 #b9cd96;}\\r\\ntable.table_style_red caption { background: none repeat scroll 0 0 #AA1428;}\\r\\ntable.table_style_black caption { background: none repeat scroll 0 0 #000000;}\\r\\ntable.table_style_yellow caption { background: none repeat scroll 0 0 #F2F096; color: #544C4A;}\\r\\n\\r\\n\\/* Templates\\r\\n-------------------------------------------------------------------------*\\/\\r\\n.row-fluid { width: 100%; }\\r\\n.row-fluid:after { clear: both; }\\r\\n.row-fluid [class*=\\"span\\"]:first-child {  margin-left: 0; }\\r\\n.row-fluid .controls-row [class*=\\"span\\"] + [class*=\\"span\\"] { margin-left: 2.12766%; }\\r\\n.row-fluid .span6 { width: 48.9362%; }\\r\\n.row-fluid:before, .row-fluid:after {\\r\\n    content: \\"\\";\\r\\n    display: table;\\r\\n    line-height: 0;\\r\\n}\\r\\n.row-fluid [class*=\\"span\\"] {\\r\\n    -moz-box-sizing: border-box;\\r\\n    display: block;\\r\\n    float: left;\\r\\n    margin-left: 2.12766%;\\r\\n    min-height: 30px;\\r\\n    width: 100%;\\r\\n}\\r\\n\\r\\n\\/* 1 big button template *\\/\\r\\na.button-big {\\r\\n\\t-moz-box-shadow:inset 0px 1px 0px 0px #ffffff;\\r\\n\\t-webkit-box-shadow:inset 0px 1px 0px 0px #ffffff;\\r\\n\\tbox-shadow:inset 0px 1px 0px 0px #ffffff;\\r\\n\\tbackground:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #ededed), color-stop(1, #dfdfdf) );\\r\\n\\tbackground:-moz-linear-gradient( center top, #ededed 5%, #dfdfdf 100% );\\r\\n\\tfilter:progid:DXImageTransform.Microsoft.gradient(startColorstr=\'#ededed\', endColorstr=\'#dfdfdf\');\\r\\n\\tbackground-color:#ededed;\\r\\n\\t-webkit-border-top-left-radius:6px;\\r\\n\\t-moz-border-radius-topleft:6px;\\r\\n\\tborder-top-left-radius:6px;\\r\\n\\t-webkit-border-top-right-radius:6px;\\r\\n\\t-moz-border-radius-topright:6px;\\r\\n\\tborder-top-right-radius:6px;\\r\\n\\t-webkit-border-bottom-right-radius:6px;\\r\\n\\t-moz-border-radius-bottomright:6px;\\r\\n\\tborder-bottom-right-radius:6px;\\r\\n\\t-webkit-border-bottom-left-radius:6px;\\r\\n\\t-moz-border-radius-bottomleft:6px;\\r\\n\\tborder-bottom-left-radius:6px;\\r\\n\\ttext-indent:0;\\r\\n\\tborder:1px solid #dcdcdc;\\r\\n\\tdisplay:inline-block;\\r\\n\\tcolor:#777777;\\r\\n\\tfont-family:sans-serif;\\r\\n\\tfont-size:18px;\\r\\n\\tfont-weight:bold;\\r\\n\\tfont-style:normal;\\r\\n\\tpadding: 10% 15%;\\r\\n\\ttext-decoration:none;\\r\\n\\ttext-align:center;\\r\\n\\ttext-shadow:1px 1px 0px #ffffff;\\r\\n\\ttext-transform: uppercase;\\r\\n\\tmargin: 10px 0;\\r\\n}\\r\\na.button-big:hover {\\r\\n\\tbackground:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #dfdfdf), color-stop(1, #ededed) );\\r\\n\\tbackground:-moz-linear-gradient( center top, #dfdfdf 5%, #ededed 100% );\\r\\n\\tfilter:progid:DXImageTransform.Microsoft.gradient(startColorstr=\'#dfdfdf\', endColorstr=\'#ededed\');\\r\\n\\tbackground-color:#dfdfdf;\\r\\n}\\r\\na.button-big:active {\\r\\n\\tposition:relative;\\r\\n\\ttop:1px;\\r\\n}\\r\\n\\/* 2 big button with desc *\\/\\r\\n.row-fluid .span6 {  width: 48.9362%; }\\r\\n\\/* 3 big button with desc *\\/\\r\\n.row-fluid .span4 { width: 31.9149%; }\\r\\n\\r\\n\\/* User Profiles *\\/\\r\\ndiv.row-fluid img.polaroids_zoom {\\r\\n\\theight: auto !important;\\r\\n\\tmax-width: 120px;\\r\\n}\\r\\n\\/* Other\\r\\n-------------------------------------------------------------------------*\\/\\r\\n\\/*Responsive media embed*\\/\\r\\nbody div.media_embed {\\r\\n\\tposition: relative; \\r\\n\\tpadding-bottom: 56.25%; \\r\\n\\tpadding-top: 30px; \\r\\n\\theight: 0; \\r\\n\\toverflow: hidden; \\r\\n\\tmax-width: 100%; \\r\\n\\theight: auto; \\r\\n\\tmargin-top:15px;\\r\\n} \\r\\nbody div.media_embed iframe, body div.media_embed object, body div.media_embed embed {\\r\\n\\tposition: absolute; top: 0; \\r\\n\\tleft: 0; \\r\\n\\twidth: 100%; \\r\\n\\theight: 100%; \\r\\n}\\r\\n\\r\\n\\/*Fixes*\\/\\r\\nbody.cke_ltr div.cke_panel_block div.scroll_box { height: 25px !important;} \\/* Minimises the height in the style preview list *\\/\\r\\nbody.cke_ltr div.cke_panel_block { color: #000000; } \\/* Stops templates setting the style list text to white *\\/","autolaunchFilebrowser":"1","minify":"1","magicline_enabled":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(823, 'System - JCK Modal', 'plugin', 'jckmodal', 'system', 0, 0, 1, 0, '{"name":"System - JCK Modal","type":"plugin","creationDate":"April 2011","author":"WebxSolution Ltd","copyright":"Copyright 2011 WebxSolution Ltd. All rights reserved.","authorEmail":"studio@webxsolution.com","authorUrl":"www.webxsolution.com","version":"1.1","description":"Forces Joomla to initialise the Modal JS classes required by JTree Link\'s modal option.","group":"","filename":"jckmodal"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(824, 'com_jckman', 'component', 'com_jckman', '', 1, 1, 0, 0, '{"name":"com_jckman","type":"component","creationDate":"Jan 2015","author":"Andrew Williams","copyright":"2013 - 2015 WebxSolutions Ltd","authorEmail":"","authorUrl":"","version":"6.4.4","description":" \\n\\t<p>JoomlaCK Editor Manager v6.4<\\/p> \\n\\t","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(825, 'JCK Suite', 'package', 'pkg_jcksuite', '', 0, 1, 1, 0, '{"name":"JCK Suite","type":"package","creationDate":"Nov 2014","author":"Andrew Williams","copyright":"","authorEmail":"","authorUrl":"","version":"6.6.2","description":"PLG_JCK_SUITE_XML_DESC","group":"","filename":"pkg_jcksuite"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(826, 'System - JCK Typography', 'plugin', 'jcktypography', 'system', 0, 1, 1, 0, 'false', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(827, 'AIT Combos', 'module', 'mod_combos', '', 0, 1, 0, 0, '{"name":"AIT Combos","type":"module","creationDate":"May 2017","author":"TuanAnhTran","copyright":"Copyright (c) 2017 AIT. All rights reserved.","authorEmail":"","authorUrl":"","version":"1.0.0","description":"\\n\\t\\n\\t\\n\\t\\n\\t","group":"","filename":"mod_combos"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `fv5oz_finder_filters`
--

CREATE TABLE `fv5oz_finder_filters` (
  `filter_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL,
  `created_by_alias` varchar(255) NOT NULL,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `map_count` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `params` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `fv5oz_finder_links`
--

CREATE TABLE `fv5oz_finder_links` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `url` varchar(255) NOT NULL,
  `route` varchar(255) NOT NULL,
  `title` varchar(400) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `indexdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `md5sum` varchar(32) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `state` int(5) DEFAULT '1',
  `access` int(5) DEFAULT '0',
  `language` varchar(8) NOT NULL,
  `publish_start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `list_price` double UNSIGNED NOT NULL DEFAULT '0',
  `sale_price` double UNSIGNED NOT NULL DEFAULT '0',
  `type_id` int(11) NOT NULL,
  `object` mediumblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `fv5oz_finder_links_terms0`
--

CREATE TABLE `fv5oz_finder_links_terms0` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `fv5oz_finder_links_terms1`
--

CREATE TABLE `fv5oz_finder_links_terms1` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `fv5oz_finder_links_terms2`
--

CREATE TABLE `fv5oz_finder_links_terms2` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `fv5oz_finder_links_terms3`
--

CREATE TABLE `fv5oz_finder_links_terms3` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `fv5oz_finder_links_terms4`
--

CREATE TABLE `fv5oz_finder_links_terms4` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `fv5oz_finder_links_terms5`
--

CREATE TABLE `fv5oz_finder_links_terms5` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `fv5oz_finder_links_terms6`
--

CREATE TABLE `fv5oz_finder_links_terms6` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `fv5oz_finder_links_terms7`
--

CREATE TABLE `fv5oz_finder_links_terms7` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `fv5oz_finder_links_terms8`
--

CREATE TABLE `fv5oz_finder_links_terms8` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `fv5oz_finder_links_terms9`
--

CREATE TABLE `fv5oz_finder_links_terms9` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `fv5oz_finder_links_termsa`
--

CREATE TABLE `fv5oz_finder_links_termsa` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `fv5oz_finder_links_termsb`
--

CREATE TABLE `fv5oz_finder_links_termsb` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `fv5oz_finder_links_termsc`
--

CREATE TABLE `fv5oz_finder_links_termsc` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `fv5oz_finder_links_termsd`
--

CREATE TABLE `fv5oz_finder_links_termsd` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `fv5oz_finder_links_termse`
--

CREATE TABLE `fv5oz_finder_links_termse` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `fv5oz_finder_links_termsf`
--

CREATE TABLE `fv5oz_finder_links_termsf` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `fv5oz_finder_taxonomy`
--

CREATE TABLE `fv5oz_finder_taxonomy` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `state` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `access` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `ordering` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fv5oz_finder_taxonomy`
--

INSERT INTO `fv5oz_finder_taxonomy` (`id`, `parent_id`, `title`, `state`, `access`, `ordering`) VALUES
(1, 0, 'ROOT', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `fv5oz_finder_taxonomy_map`
--

CREATE TABLE `fv5oz_finder_taxonomy_map` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `node_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `fv5oz_finder_terms`
--

CREATE TABLE `fv5oz_finder_terms` (
  `term_id` int(10) UNSIGNED NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `phrase` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `weight` float UNSIGNED NOT NULL DEFAULT '0',
  `soundex` varchar(75) NOT NULL,
  `links` int(10) NOT NULL DEFAULT '0',
  `language` char(3) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `fv5oz_finder_terms_common`
--

CREATE TABLE `fv5oz_finder_terms_common` (
  `term` varchar(75) NOT NULL,
  `language` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fv5oz_finder_terms_common`
--

INSERT INTO `fv5oz_finder_terms_common` (`term`, `language`) VALUES
('a', 'en'),
('about', 'en'),
('after', 'en'),
('ago', 'en'),
('all', 'en'),
('am', 'en'),
('an', 'en'),
('and', 'en'),
('ani', 'en'),
('any', 'en'),
('are', 'en'),
('aren\'t', 'en'),
('as', 'en'),
('at', 'en'),
('be', 'en'),
('but', 'en'),
('by', 'en'),
('for', 'en'),
('from', 'en'),
('get', 'en'),
('go', 'en'),
('how', 'en'),
('if', 'en'),
('in', 'en'),
('into', 'en'),
('is', 'en'),
('isn\'t', 'en'),
('it', 'en'),
('its', 'en'),
('me', 'en'),
('more', 'en'),
('most', 'en'),
('must', 'en'),
('my', 'en'),
('new', 'en'),
('no', 'en'),
('none', 'en'),
('not', 'en'),
('noth', 'en'),
('nothing', 'en'),
('of', 'en'),
('off', 'en'),
('often', 'en'),
('old', 'en'),
('on', 'en'),
('onc', 'en'),
('once', 'en'),
('onli', 'en'),
('only', 'en'),
('or', 'en'),
('other', 'en'),
('our', 'en'),
('ours', 'en'),
('out', 'en'),
('over', 'en'),
('page', 'en'),
('she', 'en'),
('should', 'en'),
('small', 'en'),
('so', 'en'),
('some', 'en'),
('than', 'en'),
('thank', 'en'),
('that', 'en'),
('the', 'en'),
('their', 'en'),
('theirs', 'en'),
('them', 'en'),
('then', 'en'),
('there', 'en'),
('these', 'en'),
('they', 'en'),
('this', 'en'),
('those', 'en'),
('thus', 'en'),
('time', 'en'),
('times', 'en'),
('to', 'en'),
('too', 'en'),
('true', 'en'),
('under', 'en'),
('until', 'en'),
('up', 'en'),
('upon', 'en'),
('use', 'en'),
('user', 'en'),
('users', 'en'),
('veri', 'en'),
('version', 'en'),
('very', 'en'),
('via', 'en'),
('want', 'en'),
('was', 'en'),
('way', 'en'),
('were', 'en'),
('what', 'en'),
('when', 'en'),
('where', 'en'),
('whi', 'en'),
('which', 'en'),
('who', 'en'),
('whom', 'en'),
('whose', 'en'),
('why', 'en'),
('wide', 'en'),
('will', 'en'),
('with', 'en'),
('within', 'en'),
('without', 'en'),
('would', 'en'),
('yes', 'en'),
('yet', 'en'),
('you', 'en'),
('your', 'en'),
('yours', 'en');

-- --------------------------------------------------------

--
-- Table structure for table `fv5oz_finder_tokens`
--

CREATE TABLE `fv5oz_finder_tokens` (
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `phrase` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `weight` float UNSIGNED NOT NULL DEFAULT '1',
  `context` tinyint(1) UNSIGNED NOT NULL DEFAULT '2',
  `language` char(3) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `fv5oz_finder_tokens_aggregate`
--

CREATE TABLE `fv5oz_finder_tokens_aggregate` (
  `term_id` int(10) UNSIGNED NOT NULL,
  `map_suffix` char(1) NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `phrase` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `term_weight` float UNSIGNED NOT NULL,
  `context` tinyint(1) UNSIGNED NOT NULL DEFAULT '2',
  `context_weight` float UNSIGNED NOT NULL,
  `total_weight` float UNSIGNED NOT NULL,
  `language` char(3) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `fv5oz_finder_types`
--

CREATE TABLE `fv5oz_finder_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `mime` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `fv5oz_jcklanguages`
--

CREATE TABLE `fv5oz_jcklanguages` (
  `id` int(11) NOT NULL,
  `tag` varchar(5) DEFAULT NULL,
  `filename` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `fv5oz_jckplugins`
--

CREATE TABLE `fv5oz_jckplugins` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL DEFAULT '',
  `name` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL DEFAULT 'command',
  `row` tinyint(4) NOT NULL DEFAULT '0',
  `icon` varchar(255) NOT NULL DEFAULT '',
  `published` tinyint(3) NOT NULL DEFAULT '0',
  `editable` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `iscore` tinyint(3) NOT NULL DEFAULT '0',
  `acl` text,
  `params` text NOT NULL,
  `parentid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fv5oz_jckplugins`
--

INSERT INTO `fv5oz_jckplugins` (`id`, `title`, `name`, `type`, `row`, `icon`, `published`, `editable`, `checked_out`, `checked_out_time`, `iscore`, `acl`, `params`, `parentid`) VALUES
(1, 'Scayt', 'scayt', 'plugin', 1, '-192', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', 82),
(2, '', 'sourcearea', 'plugin', 0, '', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', NULL),
(3, 'Source', 'source', 'command', 1, '0', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', 2),
(4, 'Preview', 'preview', 'plugin', 1, '-64', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', NULL),
(5, 'Cut', 'cut', 'command', 1, '-96', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', 60),
(6, 'Copy', 'copy', 'command', 1, '-112', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', 60),
(7, 'Paste', 'paste', 'command', 1, '-128', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', 60),
(8, 'PasteText', 'pastetext', 'plugin', 1, '-144', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', NULL),
(9, 'Find', 'find', 'plugin', 1, '-240', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', NULL),
(10, 'Replace', 'replace', 'command', 1, '-256', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', 9),
(11, 'SelectAll', 'selectall', 'command', 1, '-272', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', 61),
(12, 'RemoveFormat', 'removeformat', 'plugin', 1, '-288', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', NULL),
(13, 'Bold', 'bold', 'command', 2, '-304', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', 58),
(14, 'Italic', 'italic', 'command', 2, '-320', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', 58),
(15, 'Strike', 'strike', 'command', 2, '-352', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', 58),
(16, 'Subscript', 'subscript', 'command', 2, '-368', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', 58),
(17, 'Superscript', 'superscript', 'command', 2, '-384', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', 58),
(18, 'Underline', 'underline', 'command', 2, '-336', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', 58),
(19, 'Smiley', 'smiley', 'plugin', 2, '-640', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', NULL),
(20, 'Link', 'link', 'plugin', 2, '-528', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', NULL),
(21, 'Image', 'image', 'plugin', 2, '-576', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', NULL),
(22, 'Flash', 'flash', 'plugin', 2, '-592', 0, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', NULL),
(23, 'SpecialChar', 'specialchar', 'plugin', 2, '-656', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', NULL),
(24, 'PageBreak', 'pagebreak', 'plugin', 2, '-672', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', NULL),
(25, 'SpellChecker', 'checkspell', 'command', 1, '-192', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', 82),
(26, '', 'tableresize', 'plugin', 2, '', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', 82),
(27, '', 'tabletools', 'plugin', 0, '', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', 82),
(28, 'TextColor', 'textcolor', 'command', 3, '-704', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', 62),
(29, 'BGColor', 'bgcolor', 'command', 3, '-720', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', 62),
(30, 'Form', 'form', 'command', 1, '-752', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', 75),
(31, 'Radio', 'radio', 'command', 1, '-784', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', 75),
(32, 'TextField', 'textfield', 'command', 1, '-800', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', 75),
(33, 'Textarea', 'textarea', 'command', 1, '-816', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', 75),
(34, 'ShowBlocks', 'showblocks', 'plugin', 3, '-1136', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', NULL),
(35, 'Select', 'select', 'command', 1, '-832', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', 75),
(36, 'ImageButton', 'imagebutton', 'command', 1, '-864', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', 75),
(37, 'HiddenField', 'hiddenfield', 'command', 1, '-880', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', 75),
(38, 'Checkbox', 'checkbox', 'command', 1, '-768', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', 75),
(39, 'Button', 'button', 'command', 1, '-848', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', 75),
(40, 'NumberedList', 'numberedlist', 'command', 2, '-400', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', 90),
(41, 'BulletedList', 'bulletedlist', 'command', 2, '-416', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', 90),
(42, 'Indent', 'indent', 'plugin', 2, '-448', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', NULL),
(43, 'Outdent', 'outdent', 'command', 2, '-432', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', 42),
(44, 'JustifyLeft', 'justifyleft', 'command', 2, '-464', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', 55),
(45, 'JustifyCenter', 'justifycenter', 'command', 2, '-480', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', 55),
(46, 'JustifyBlock', 'justifyblock', 'command', 2, '-512', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', 55),
(47, 'JustifyRight', 'justifyright', 'command', 2, '-496', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', 55),
(48, 'Blockquote', 'blockquote', 'plugin', 2, '-1152', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', NULL),
(49, 'About', 'about', 'plugin', 3, '-736', 0, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', NULL),
(50, 'Maximize', 'maximize', 'plugin', 3, '-1040', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', NULL),
(51, '', 'div', 'plugin', 0, '', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', NULL),
(52, 'CreateDiv', 'creatediv', 'command', 2, '-1168', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', 51),
(53, '', 'editdiv', 'command', 0, '-1184', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', 51),
(54, '', 'removediv', 'command', 0, '-1200', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', 51),
(55, '', 'justify', 'plugin', 0, '', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', NULL),
(56, '', 'a11yhelp', 'plugin', 0, '', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', NULL),
(57, '', 'autogrow', 'plugin', 0, '', 0, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', NULL),
(58, '', 'basicstyles', 'plugin', 0, '', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', NULL),
(59, 'Table', 'table', 'plugin', 2, '-608', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', NULL),
(60, '', 'clipboard', 'plugin', 0, '', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', NULL),
(61, '', 'selection', 'plugin', 0, '', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', NULL),
(62, '', 'colorbutton', 'plugin', 0, '', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', NULL),
(63, 'Unlink', 'unlink', 'command', 2, '-544', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', 20),
(64, 'Anchor', 'anchor', 'command', 2, '-560', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', 20),
(65, '', 'contextmenu', 'plugin', 0, '', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', NULL),
(66, '', 'editingblock', 'plugin', 0, '', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', NULL),
(67, '', 'elementspath', 'plugin', 0, '', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', NULL),
(68, '', 'enterkey', 'plugin', 0, '', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', NULL),
(69, '', 'entities', 'plugin', 0, '', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', NULL),
(70, '', 'toolbar', 'plugin', 0, '', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', NULL),
(71, '', 'jfilebrowser', 'filebrowser', 0, '', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', NULL),
(72, 'Styles', 'stylescombo', 'plugin', 3, '', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', NULL),
(73, 'Font', 'font', 'plugin', 3, '', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', NULL),
(74, 'Format', 'format', 'plugin', 3, '', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', NULL),
(75, '', 'forms', 'plugin', 0, '', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', NULL),
(76, 'About', 'jabout', 'plugin', 3, '-736', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', NULL),
(77, 'Flash', 'jflash', 'plugin', 2, '-592', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', NULL),
(78, 'Save', 'jsave', 'plugin', 1, '-32', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', NULL),
(79, 'JTreeLink', 'jtreelink', 'plugin', 2, 'images/jtreelink.png', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', NULL),
(80, 'HorizontalRule', 'horizontalrule', 'plugin', 2, '-624', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', NULL),
(81, 'Print', 'print', 'plugin', 1, '-176', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', NULL),
(82, '', 'wsc', 'plugin', 0, '', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', NULL),
(83, '', 'showborders', 'plugin', 0, '', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', NULL),
(84, '', 'tab', 'plugin', 0, '', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', NULL),
(85, 'Undo', 'undo', 'plugin', 1, '-208', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', NULL),
(86, 'Redo', 'redo', 'command', 1, '-224', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', 86),
(87, '', 'resize', 'plugin', 0, '', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', NULL),
(88, 'Templates', 'templates', 'plugin', 1, '-80', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', NULL),
(89, '', 'wysiwygarea', 'plugin', 0, '', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', NULL),
(90, '', 'list', 'plugin', 0, '', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', NULL),
(92, 'FontSize', 'fontsize', 'command', 3, '', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', 73),
(93, 'PasteFromWord', 'pastefromword', 'plugin', 1, '-160', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', NULL),
(94, 'Mobileimage', 'mobileimage', 'plugin', 1, 'icon.png', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', NULL),
(95, '', 'html5support', 'plugin', 0, '', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', NULL),
(96, 'Video', 'video', 'plugin', 3, 'images/icon.png', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', 95),
(97, 'Audio', 'audio', 'plugin', 3, 'images/icon.png', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', 95),
(98, 'UIColor', 'uicolor', 'plugin', 3, 'uicolor.gif', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', NULL),
(99, '', 'imagedragndrop', 'plugin', 0, '', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', NULL),
(100, '', 'ie9selectionoverride', 'plugin', 0, '', 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `fv5oz_jcktoolbarplugins`
--

CREATE TABLE `fv5oz_jcktoolbarplugins` (
  `toolbarid` int(11) NOT NULL,
  `pluginid` int(11) NOT NULL,
  `row` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `state` tinyint(3) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fv5oz_jcktoolbarplugins`
--

INSERT INTO `fv5oz_jcktoolbarplugins` (`toolbarid`, `pluginid`, `row`, `ordering`, `state`) VALUES
(1, 1, 2, 10, 1),
(1, 3, 1, 1, 1),
(1, 4, 12, 2, 1),
(1, 5, 2, 1, 1),
(1, 6, 2, 2, 1),
(1, 7, 2, 3, 1),
(1, 8, 2, 4, 1),
(1, 9, 3, 5, 1),
(1, 10, 3, 6, 1),
(1, 11, 2, 6, 1),
(1, 12, 3, 3, 1),
(1, 13, 4, 1, 1),
(1, 14, 4, 2, 1),
(1, 15, 4, 4, 1),
(1, 16, 4, 6, 1),
(1, 17, 4, 7, 1),
(1, 18, 4, 3, 1),
(1, 19, 9, 6, 1),
(1, 20, 8, 2, 1),
(1, 21, 9, 1, 1),
(1, 23, 4, 9, 1),
(1, 25, 2, 9, 1),
(1, 28, 11, 3, 1),
(1, 29, 11, 4, 1),
(1, 30, 5, 1, 1),
(1, 31, 5, 3, 1),
(1, 32, 5, 4, 1),
(1, 33, 5, 5, 1),
(1, 34, 10, 4, 1),
(1, 35, 5, 6, 1),
(1, 36, 5, 8, 1),
(1, 37, 5, 9, 1),
(1, 38, 5, 2, 1),
(1, 39, 5, 7, 1),
(1, 40, 6, 1, 1),
(1, 41, 6, 2, 1),
(1, 42, 6, 5, 1),
(1, 43, 6, 4, 1),
(1, 44, 7, 1, 1),
(1, 45, 7, 2, 1),
(1, 46, 7, 4, 1),
(1, 47, 7, 3, 1),
(1, 48, 4, 8, 1),
(1, 50, 12, 1, 1),
(1, 52, 10, 3, 1),
(1, 59, 9, 4, 1),
(1, 63, 8, 3, 1),
(1, 64, 8, 4, 1),
(1, 72, 10, 1, 1),
(1, 73, 11, 1, 1),
(1, 74, 10, 2, 1),
(1, 76, 12, 4, 1),
(1, 77, 9, 2, 1),
(1, 78, 1, 2, 1),
(1, 79, 8, 1, 1),
(1, 80, 9, 5, 1),
(1, 81, 2, 8, 1),
(1, 85, 3, 1, 1),
(1, 86, 3, 2, 1),
(1, 88, 9, 3, 1),
(1, 92, 11, 2, 1),
(1, 93, 2, 5, 1),
(1, 96, 12, 5, 1),
(1, 97, 12, 6, 1),
(1, 98, 12, 7, 1);

-- --------------------------------------------------------

--
-- Table structure for table `fv5oz_jcktoolbars`
--

CREATE TABLE `fv5oz_jcktoolbars` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL DEFAULT '',
  `name` varchar(100) NOT NULL,
  `published` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `iscore` tinyint(3) NOT NULL DEFAULT '0',
  `params` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fv5oz_jcktoolbars`
--

INSERT INTO `fv5oz_jcktoolbars` (`id`, `title`, `name`, `published`, `checked_out`, `checked_out_time`, `iscore`, `params`) VALUES
(1, 'Full', 'full', 1, 0, '0000-00-00 00:00:00', 1, ''),
(2, 'Publisher', 'publisher', 1, 0, '0000-00-00 00:00:00', 1, ''),
(3, 'Basic', 'basic', 1, 0, '0000-00-00 00:00:00', 1, ''),
(4, 'Blog', 'blog', 1, 0, '0000-00-00 00:00:00', 1, ''),
(5, 'Image', 'image', 1, 0, '0000-00-00 00:00:00', 1, ''),
(6, 'Mobile', 'mobile', 1, 0, '0000-00-00 00:00:00', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `fv5oz_languages`
--

CREATE TABLE `fv5oz_languages` (
  `lang_id` int(11) UNSIGNED NOT NULL,
  `asset_id` int(11) NOT NULL,
  `lang_code` char(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_native` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sef` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL,
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sitename` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `published` int(11) NOT NULL DEFAULT '0',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fv5oz_languages`
--

INSERT INTO `fv5oz_languages` (`lang_id`, `asset_id`, `lang_code`, `title`, `title_native`, `sef`, `image`, `description`, `metakey`, `metadesc`, `sitename`, `published`, `access`, `ordering`) VALUES
(1, 0, 'en-GB', 'English (UK)', 'English (UK)', 'en', 'en_gb', '', '', '', '', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `fv5oz_location`
--

CREATE TABLE `fv5oz_location` (
  `id` int(11) UNSIGNED NOT NULL,
  `postcode` int(11) NOT NULL,
  `suburbname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `latitude` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `longitude` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `infobox` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ordering` int(11) NOT NULL,
  `state` tinyint(1) NOT NULL,
  `checked_out` int(11) NOT NULL,
  `checked_out_time` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fv5oz_location`
--

INSERT INTO `fv5oz_location` (`id`, `postcode`, `suburbname`, `latitude`, `longitude`, `infobox`, `ordering`, `state`, `checked_out`, `checked_out_time`, `created_by`, `modified_by`) VALUES
(1, 0, 'London Eye, London', '51.503454', '-0.119562', '', 1, -2, 0, '0000-00-00 00:00:00', 106, 106),
(2, 2009, 'Pyrmont, New South Wales', '-33.870299', '151.195487', '<div class="mod" style="padding-left: 15px; padding-right: 15px; line-height: 1.24; color: #222222; font-family: arial, sans-serif; font-size: 13px; clear: none;" data-md="1002" data-hveid="14" data-ved="0ahUKEwiHgqPNpN_TAhUGtJQKHXAwBgcQkCkIDigCMAM">\r\n<div class="_eFb">\r\n<div class="_mr kno-fb-ctx" style="margin-top: 7px;" data-dtype="d3adr" data-ved="0ahUKEwiHgqPNpN_TAhUGtJQKHXAwBgcQghwIDygAMAM"><span class="_xdb" style="font-weight: bolder;"><span style="color: rgba(0, 0, 0, 0.870588); font-family: arial, sans-serif-light, sans-serif; font-size: 30px; font-weight: normal;">Myvalet Dry Cleaning</span></span></div>\r\n<div class="_mr kno-fb-ctx" style="margin-top: 7px;" data-dtype="d3adr" data-ved="0ahUKEwiHgqPNpN_TAhUGtJQKHXAwBgcQghwIDygAMAM"><span class="_xdb" style="font-weight: bolder;"><a class="fl" style="color: #1a0dab; cursor: pointer;" href="https://www.google.com.au/search?client=opera&amp;site=async/lcl_akp&amp;q=myvalet+dry+cleaning+address&amp;stick=H4sIAAAAAAAAAOPgE-LRT9c3LDQqKysvsrDUks1OttLPyU9OLMnMz4MzrBJTUopSi4sByQJhOS8AAAA&amp;sa=X&amp;ved=0ahUKEwiHgqPNpN_TAhUGtJQKHXAwBgcQ6BMIEDAD" data-ved="0ahUKEwiHgqPNpN_TAhUGtJQKHXAwBgcQ6BMIEDAD">Address</a>: </span><span class="_Xbe">131-133 Murray St, Pyrmont NSW 2009</span></div>\r\n</div>\r\n</div>\r\n<div class="mod" style="padding-left: 15px; padding-right: 15px; line-height: 1.24; color: #222222; font-family: arial, sans-serif; font-size: 13px; clear: none;" data-md="1006" data-hveid="17" data-ved="0ahUKEwiHgqPNpN_TAhUGtJQKHXAwBgcQkCkIESgDMAQ">\r\n<div class="_eFb">\r\n<div class="_mr kno-fb-ctx" style="margin-top: 7px;" data-dtype="d3ph" data-ved="0ahUKEwiHgqPNpN_TAhUGtJQKHXAwBgcQ8I0BCBIoADAE"><span class="_xdb" style="font-weight: bolder;"><a class="fl" style="color: #1a0dab; cursor: pointer;" href="https://www.google.com.au/search?client=opera&amp;site=async/lcl_akp&amp;q=myvalet+dry+cleaning+phone&amp;stick=H4sIAAAAAAAAAOPgE-LRT9c3LDQqKysvsrDU0s9OttJPzs_JSU0uyczP08_Oyy_PSU1JT40vSMxLzSnWz0gsji_IyM9LtQKTAD9_ZPZBAAAA&amp;sa=X&amp;ved=0ahUKEwiHgqPNpN_TAhUGtJQKHXAwBgcQ6BMIEzAE" data-ved="0ahUKEwiHgqPNpN_TAhUGtJQKHXAwBgcQ6BMIEzAE">Phone</a>: </span><span class="_Xbe _ZWk kno-fv"><a class="fl r-igp_CGnrzkpY" style="color: #1a0dab; cursor: pointer;" title="Call via Hangouts" data-number="" data-pstn-out-call-url="" data-rtid="igp_CGnrzkpY" data-ved="0ahUKEwiHgqPNpN_TAhUGtJQKHXAwBgcQkAgIFCgAMAQ">1300 698 253</a></span></div>\r\n</div>\r\n</div>', 2, 1, 0, '0000-00-00 00:00:00', 106, 106),
(3, 3357, 'Harwood St', '-33.8566218', '151.215297', '<div class="_iPk">\r\n<div>\r\n<div class="_iPk">\r\n<div class="_rl">Harbourside Laundry</div>\r\n</div>\r\n</div>\r\n<div>1/5 Harwood St</div>\r\n<div>(02) 9566 2872</div>\r\n<div class="rllt__wrapped">Open until 6:00 pm</div>\r\n</div>\r\n<p> </p>', 3, 1, 0, '0000-00-00 00:00:00', 106, 106),
(4, 0, '72 Kelly St Ultimo NSW 2007', '-33.881304', '151.196859', '', 4, 1, 0, '0000-00-00 00:00:00', 106, 106),
(5, 0, 'Darling Harbour, Sydney, New South Wales', '-33.874639', '151.200868', '<p>Sydney NSW 2000</p>\r\n<p>(02) 9240 8500</p>', 5, 1, 0, '0000-00-00 00:00:00', 106, 106);

-- --------------------------------------------------------

--
-- Table structure for table `fv5oz_logbook`
--

CREATE TABLE `fv5oz_logbook` (
  `id` int(11) UNSIGNED NOT NULL,
  `logid` int(11) NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `datetimemodify` datetime NOT NULL,
  `ordering` int(11) NOT NULL,
  `checked_out` int(11) NOT NULL,
  `checked_out_time` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fv5oz_menu`
--

CREATE TABLE `fv5oz_menu` (
  `id` int(11) NOT NULL,
  `menutype` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The type of menu this item belongs to. FK to #__menu_types.menutype',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'The SEF alias of the menu item.',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `path` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',
  `link` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The published state of the menu link.',
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'The parent menu item in the menu tree.',
  `level` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'The relative level in the tree.',
  `component_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to #__extensions.id',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to #__users.id',
  `checked_out_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'The time the menu item was checked out.',
  `browserNav` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The click behaviour of the link.',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'The access level required to view the menu item.',
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `home` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fv5oz_menu`
--

INSERT INTO `fv5oz_menu` (`id`, `menutype`, `title`, `alias`, `note`, `path`, `link`, `type`, `published`, `parent_id`, `level`, `component_id`, `checked_out`, `checked_out_time`, `browserNav`, `access`, `img`, `template_style_id`, `params`, `lft`, `rgt`, `home`, `language`, `client_id`) VALUES
(1, '', 'Menu_Item_Root', 'root', '', '', '', '', 1, 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, '', 0, '', 0, 99, 0, '*', 0),
(2, 'menu', 'com_banners', 'Banners', '', 'Banners', 'index.php?option=com_banners', 'component', 0, 1, 1, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 1, 10, 0, '*', 1),
(3, 'menu', 'com_banners', 'Banners', '', 'Banners/Banners', 'index.php?option=com_banners', 'component', 0, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 2, 3, 0, '*', 1),
(4, 'menu', 'com_banners_categories', 'Categories', '', 'Banners/Categories', 'index.php?option=com_categories&extension=com_banners', 'component', 0, 2, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-cat', 0, '', 4, 5, 0, '*', 1),
(5, 'menu', 'com_banners_clients', 'Clients', '', 'Banners/Clients', 'index.php?option=com_banners&view=clients', 'component', 0, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-clients', 0, '', 6, 7, 0, '*', 1),
(6, 'menu', 'com_banners_tracks', 'Tracks', '', 'Banners/Tracks', 'index.php?option=com_banners&view=tracks', 'component', 0, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-tracks', 0, '', 8, 9, 0, '*', 1),
(7, 'menu', 'com_contact', 'Contacts', '', 'Contacts', 'index.php?option=com_contact', 'component', 0, 1, 1, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 11, 16, 0, '*', 1),
(8, 'menu', 'com_contact_contacts', 'Contacts', '', 'Contacts/Contacts', 'index.php?option=com_contact', 'component', 0, 7, 2, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 12, 13, 0, '*', 1),
(9, 'menu', 'com_contact_categories', 'Categories', '', 'Contacts/Categories', 'index.php?option=com_categories&extension=com_contact', 'component', 0, 7, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact-cat', 0, '', 14, 15, 0, '*', 1),
(10, 'menu', 'com_messages', 'Messaging', '', 'Messaging', 'index.php?option=com_messages', 'component', 0, 1, 1, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages', 0, '', 17, 20, 0, '*', 1),
(11, 'menu', 'com_messages_add', 'New Private Message', '', 'Messaging/New Private Message', 'index.php?option=com_messages&task=message.add', 'component', 0, 10, 2, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-add', 0, '', 18, 19, 0, '*', 1),
(13, 'menu', 'com_newsfeeds', 'News Feeds', '', 'News Feeds', 'index.php?option=com_newsfeeds', 'component', 0, 1, 1, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 21, 26, 0, '*', 1),
(14, 'menu', 'com_newsfeeds_feeds', 'Feeds', '', 'News Feeds/Feeds', 'index.php?option=com_newsfeeds', 'component', 0, 13, 2, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 22, 23, 0, '*', 1),
(15, 'menu', 'com_newsfeeds_categories', 'Categories', '', 'News Feeds/Categories', 'index.php?option=com_categories&extension=com_newsfeeds', 'component', 0, 13, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds-cat', 0, '', 24, 25, 0, '*', 1),
(16, 'menu', 'com_redirect', 'Redirect', '', 'Redirect', 'index.php?option=com_redirect', 'component', 0, 1, 1, 24, 0, '0000-00-00 00:00:00', 0, 0, 'class:redirect', 0, '', 27, 28, 0, '*', 1),
(17, 'menu', 'com_search', 'Basic Search', '', 'Basic Search', 'index.php?option=com_search', 'component', 0, 1, 1, 19, 0, '0000-00-00 00:00:00', 0, 0, 'class:search', 0, '', 29, 30, 0, '*', 1),
(18, 'menu', 'com_finder', 'Smart Search', '', 'Smart Search', 'index.php?option=com_finder', 'component', 0, 1, 1, 27, 0, '0000-00-00 00:00:00', 0, 0, 'class:finder', 0, '', 31, 32, 0, '*', 1),
(19, 'menu', 'com_joomlaupdate', 'Joomla! Update', '', 'Joomla! Update', 'index.php?option=com_joomlaupdate', 'component', 1, 1, 1, 28, 0, '0000-00-00 00:00:00', 0, 0, 'class:joomlaupdate', 0, '', 33, 34, 0, '*', 1),
(20, 'main', 'com_tags', 'Tags', '', 'Tags', 'index.php?option=com_tags', 'component', 0, 1, 1, 29, 0, '0000-00-00 00:00:00', 0, 1, 'class:tags', 0, '', 35, 36, 0, '', 1),
(21, 'main', 'com_postinstall', 'Post-installation messages', '', 'Post-installation messages', 'index.php?option=com_postinstall', 'component', 0, 1, 1, 32, 0, '0000-00-00 00:00:00', 0, 1, 'class:postinstall', 0, '', 37, 38, 0, '*', 1),
(101, 'mainmenu', 'Home', 'home', '', 'home', 'index.php?option=com_content&view=featured', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"featured_categories":[""],"layout_type":"blog","num_leading_articles":"1","num_intro_articles":"3","num_columns":"3","num_links":"0","multi_column_order":"1","orderby_pri":"","orderby_sec":"front","order_date":"","show_pagination":"2","show_pagination_results":"1","show_title":"","link_titles":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","show_feed_link":"1","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"0","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 39, 40, 1, '*', 0),
(110, 'main', 'COM_SERVICESS', 'com-servicess', '', 'com-servicess', 'index.php?option=com_servicess', 'component', 0, 1, 1, 807, 0, '0000-00-00 00:00:00', 0, 1, 'media/com_servicess/images/s_com_servicess.png', 0, '{}', 41, 44, 0, '', 1),
(111, 'main', 'COM_SERVICESS_TITLE_SERVICESS', 'com-servicess-title-servicess', '', 'com-servicess/com-servicess-title-servicess', 'index.php?option=com_servicess&view=servicess', 'component', 0, 110, 2, 807, 0, '0000-00-00 00:00:00', 0, 1, 'media/com_servicess/images/s_servicess.png', 0, '{}', 42, 43, 0, '', 1),
(114, 'main', 'COM_COMBOS', 'com-combos', '', 'com-combos', 'index.php?option=com_combos', 'component', 0, 1, 1, 809, 0, '0000-00-00 00:00:00', 0, 1, 'media/com_combos/images/s_com_combos.png', 0, '{}', 45, 48, 0, '', 1),
(115, 'main', 'COM_COMBOS_TITLE_COMBOS', 'com-combos-title-combos', '', 'com-combos/com-combos-title-combos', 'index.php?option=com_combos&view=combos', 'component', 0, 114, 2, 809, 0, '0000-00-00 00:00:00', 0, 1, 'media/com_combos/images/s_combos.png', 0, '{}', 46, 47, 0, '', 1),
(116, 'main', 'COM_PAYMENT', 'com-payment', '', 'com-payment', 'index.php?option=com_payment', 'component', 0, 1, 1, 810, 0, '0000-00-00 00:00:00', 0, 1, 'media/com_payment/images/s_com_payment.png', 0, '{}', 49, 52, 0, '', 1),
(117, 'main', 'COM_PAYMENT_TITLE_PAYMENTS', 'com-payment-title-payments', '', 'com-payment/com-payment-title-payments', 'index.php?option=com_payment&view=payments', 'component', 0, 116, 2, 810, 0, '0000-00-00 00:00:00', 0, 1, 'media/com_payment/images/s_payments.png', 0, '{}', 50, 51, 0, '', 1),
(120, 'main', 'COM_ORDER', 'com-order', '', 'com-order', 'index.php?option=com_order', 'component', 0, 1, 1, 812, 0, '0000-00-00 00:00:00', 0, 1, 'media/com_order/images/s_com_order.png', 0, '{}', 53, 56, 0, '', 1),
(121, 'main', 'COM_ORDER_TITLE_ORDERS', 'com-order-title-orders', '', 'com-order/com-order-title-orders', 'index.php?option=com_order&view=orders', 'component', 0, 120, 2, 812, 0, '0000-00-00 00:00:00', 0, 1, 'media/com_order/images/s_orders.png', 0, '{}', 54, 55, 0, '', 1),
(122, 'main', 'COM_LOGBOOK', 'com-logbook', '', 'com-logbook', 'index.php?option=com_logbook', 'component', 0, 1, 1, 813, 0, '0000-00-00 00:00:00', 0, 1, 'media/com_logbook/images/s_com_logbook.png', 0, '{}', 57, 62, 0, '', 1),
(123, 'main', 'COM_LOGBOOK_TITLE_LOGBOOKS', 'com-logbook-title-logbooks', '', 'com-logbook/com-logbook-title-logbooks', 'index.php?option=com_logbook&view=logbooks', 'component', 0, 122, 2, 813, 0, '0000-00-00 00:00:00', 0, 1, 'media/com_logbook/images/s_logbooks.png', 0, '{}', 58, 59, 0, '', 1),
(124, 'main', 'COM_LOGBOOK_TITLE_ORDERLOGBOOKS', 'com-logbook-title-orderlogbooks', '', 'com-logbook/com-logbook-title-orderlogbooks', 'index.php?option=com_orderlogbook', 'component', 0, 122, 2, 813, 0, '0000-00-00 00:00:00', 0, 1, 'media/com_logbook/images/s_orderlogbooks.png', 0, '{}', 60, 61, 0, '', 1),
(125, 'main', 'COM_ORDERLOGBOOK', 'com-orderlogbook', '', 'com-orderlogbook', 'index.php?option=com_orderlogbook', 'component', 0, 1, 1, 814, 0, '0000-00-00 00:00:00', 0, 1, 'media/com_orderlogbook/images/s_com_orderlogbook.png', 0, '{}', 63, 66, 0, '', 1),
(126, 'main', 'COM_ORDERLOGBOOK_TITLE_ORDERLOGBOOKS', 'com-orderlogbook-title-orderlogbooks', '', 'com-orderlogbook/com-orderlogbook-title-orderlogbooks', 'index.php?option=com_orderlogbook&view=orderlogbooks', 'component', 0, 125, 2, 814, 0, '0000-00-00 00:00:00', 0, 1, 'media/com_orderlogbook/images/s_orderlogbooks.png', 0, '{}', 64, 65, 0, '', 1),
(135, 'main', 'COM_LOCATION', 'com-location', '', 'com-location', 'index.php?option=com_location', 'component', 0, 1, 1, 817, 0, '0000-00-00 00:00:00', 0, 1, 'media/com_location/images/s_com_location.png', 0, '{}', 67, 70, 0, '', 1),
(136, 'main', 'COM_LOCATION_TITLE_LOCATIONS', 'com-location-title-locations', '', 'com-location/com-location-title-locations', 'index.php?option=com_location&view=locations', 'component', 0, 135, 2, 817, 0, '0000-00-00 00:00:00', 0, 1, 'media/com_location/images/s_locations.png', 0, '{}', 68, 69, 0, '', 1),
(137, 'mainmenu', 'Get Started', 'get-started', '', 'get-started', 'index.php?option=com_users&view=registration', 'component', 1, 1, 1, 25, 106, '2017-05-23 15:12:36', 0, 1, ' ', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"1","page_heading":"Get Started","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 71, 72, 0, '*', 0),
(139, 'main', 'COM_JCKMAN_MENU_NAME', 'com-jckman-menu-name', '', 'com-jckman-menu-name', 'index.php?option=com_jckman', 'component', 0, 1, 1, 824, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_jckman/icons/jcklogo.png', 0, '{}', 73, 88, 0, '', 1),
(140, 'main', 'COM_JCKMAN_SUBMENU_CPANEL_NAME', 'com-jckman-submenu-cpanel-name', '', 'com-jckman-menu-name/com-jckman-submenu-cpanel-name', 'index.php?option=com_jckman&view=cpanel', 'component', 0, 139, 2, 824, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_jckman/icons/icon-16-cpanel.png', 0, '{}', 74, 75, 0, '', 1),
(141, 'main', 'COM_JCKMAN_SUBMENU_PLUGIN_NAME', 'com-jckman-submenu-plugin-name', '', 'com-jckman-menu-name/com-jckman-submenu-plugin-name', 'index.php?option=com_jckman&view=list', 'component', 0, 139, 2, 824, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_jckman/icons/icon-16-pluginmanager.png', 0, '{}', 76, 77, 0, '', 1),
(142, 'main', 'COM_JCKMAN_SUBMENU_INSTALL_NAME', 'com-jckman-submenu-install-name', '', 'com-jckman-menu-name/com-jckman-submenu-install-name', 'index.php?option=com_jckman&view=install', 'component', 0, 139, 2, 824, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_jckman/icons/icon-16-installer.png', 0, '{}', 78, 79, 0, '', 1),
(143, 'main', 'COM_JCKMAN_SUBMENU_UNINSTALL_NAME', 'com-jckman-submenu-uninstall-name', '', 'com-jckman-menu-name/com-jckman-submenu-uninstall-name', 'index.php?option=com_jckman&view=extension', 'component', 0, 139, 2, 824, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_jckman/icons/icon-16-uninstaller.png', 0, '{}', 80, 81, 0, '', 1),
(144, 'main', 'COM_JCKMAN_SUBMENU_SYSTEMCHECK_NAME', 'com-jckman-submenu-systemcheck-name', '', 'com-jckman-menu-name/com-jckman-submenu-systemcheck-name', 'index.php?option=com_jckman&view=cpanel&taskbtn=system', 'component', 0, 139, 2, 824, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_jckman/icons/icon-16-systemcheck.png', 0, '{}', 82, 83, 0, '', 1),
(145, 'main', 'COM_JCKMAN_SUBMENU_SYNC_NAME', 'com-jckman-submenu-sync-name', '', 'com-jckman-menu-name/com-jckman-submenu-sync-name', 'index.php?option=com_jckman&view=cpanel&taskbtn=sync', 'component', 0, 139, 2, 824, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_jckman/icons/icon-16-sync.png', 0, '{}', 84, 85, 0, '', 1),
(146, 'main', 'COM_JCKMAN_SUBMENU_JCKEDITOR_NAME', 'com-jckman-submenu-jckeditor-name', '', 'com-jckman-menu-name/com-jckman-submenu-jckeditor-name', 'index.php?option=com_jckman&view=cpanel&taskbtn=editor', 'component', 0, 139, 2, 824, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_jckman/icons/icon-16-editor.png', 0, '{}', 86, 87, 0, '', 1),
(147, 'system-menu', 'My Account', 'my-account', '', 'my-account', 'index.php?option=com_users&view=profile', 'component', 1, 1, 1, 25, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 89, 90, 0, '*', 0),
(148, 'mainmenu', 'Contact', 'contact', '', 'contact', 'index.php?option=com_content&view=article&id=4', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 91, 92, 0, '*', 0),
(149, 'mainmenu', 'About Us', 'about-us', '', 'about-us', 'index.php?option=com_content&view=article&id=2', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 93, 94, 0, '*', 0),
(150, 'mainmenu', 'Privacy Policy', 'privacy-policy', '', 'privacy-policy', 'index.php?option=com_content&view=article&id=3', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 95, 96, 0, '*', 0),
(151, 'mainmenu', 'TERMS & CONDITIONS', 'terms-conditions', '', 'terms-conditions', 'index.php?option=com_content&view=article&id=1', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 97, 98, 0, '*', 0);

-- --------------------------------------------------------

--
-- Table structure for table `fv5oz_menu_types`
--

CREATE TABLE `fv5oz_menu_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `asset_id` int(11) NOT NULL,
  `menutype` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fv5oz_menu_types`
--

INSERT INTO `fv5oz_menu_types` (`id`, `asset_id`, `menutype`, `title`, `description`) VALUES
(1, 0, 'mainmenu', 'Main Menu', 'The main menu for the site'),
(2, 70, 'system-menu', 'System Menu', '');

-- --------------------------------------------------------

--
-- Table structure for table `fv5oz_messages`
--

CREATE TABLE `fv5oz_messages` (
  `message_id` int(10) UNSIGNED NOT NULL,
  `user_id_from` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `user_id_to` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `folder_id` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `priority` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fv5oz_messages`
--

INSERT INTO `fv5oz_messages` (`message_id`, `user_id_from`, `user_id_to`, `folder_id`, `date_time`, `state`, `priority`, `subject`, `message`) VALUES
(7, 0, 0, 0, '2017-05-13 02:04:21', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: ddd'),
(8, 0, 0, 0, '2017-05-17 01:14:56', 0, 0, 'Error sending email', 'An error was encountered when sending the user registration email. The error is: Could not instantiate mail function. The user who attempted to register is: dfs');

-- --------------------------------------------------------

--
-- Table structure for table `fv5oz_messages_cfg`
--

CREATE TABLE `fv5oz_messages_cfg` (
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cfg_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fv5oz_modules`
--

CREATE TABLE `fv5oz_modules` (
  `id` int(11) NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `position` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `showtitle` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fv5oz_modules`
--

INSERT INTO `fv5oz_modules` (`id`, `asset_id`, `title`, `note`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `published`, `module`, `access`, `showtitle`, `params`, `client_id`, `language`) VALUES
(1, 39, 'Main Menu', '', '', 1, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{"menutype":"mainmenu","startLevel":"0","endLevel":"0","showAllChildren":"0","tag_id":"","class_sfx":"","window_open":"","layout":"","moduleclass_sfx":"_menu","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(2, 40, 'Login', '', '', 1, 'login', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '', 1, '*'),
(3, 41, 'Popular Articles', '', '', 3, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_popular', 3, 1, '{"count":"5","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(4, 42, 'Recently Added Articles', '', '', 4, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_latest', 3, 1, '{"count":"5","ordering":"c_dsc","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(8, 43, 'Toolbar', '', '', 1, 'toolbar', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_toolbar', 3, 1, '', 1, '*'),
(9, 44, 'Quick Icons', '', '', 1, 'icon', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_quickicon', 3, 1, '', 1, '*'),
(10, 45, 'Logged-in Users', '', '', 2, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_logged', 3, 1, '{"count":"5","name":"1","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(12, 46, 'Admin Menu', '', '', 1, 'menu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 3, 1, '{"layout":"","moduleclass_sfx":"","shownew":"1","showhelp":"1","cache":"0"}', 1, '*'),
(13, 47, 'Admin Submenu', '', '', 1, 'submenu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_submenu', 3, 1, '', 1, '*'),
(14, 48, 'User Status', '', '', 2, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_status', 3, 1, '', 1, '*'),
(15, 49, 'Title', '', '', 1, 'title', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_title', 3, 1, '', 1, '*'),
(16, 50, 'Login Form', '', '', 1, 'moduleLoginPos', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '{"pretext":"","posttext":"","login":"147","logout":"","greeting":"1","name":"0","usesecure":"0","usetext":"0","layout":"_:default","moduleclass_sfx":"","cache":"0","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(17, 51, 'Breadcrumbs', '', '', 1, 'position-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_breadcrumbs', 1, 1, '{"moduleclass_sfx":"","showHome":"1","homeText":"","showComponent":"1","separator":"","cache":"0","cache_time":"0","cachemode":"itemid"}', 0, '*'),
(79, 52, 'Multilanguage status', '', '', 1, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_multilangstatus', 3, 1, '{"layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(86, 53, 'Joomla Version', '', '', 1, 'footer', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_version', 3, 1, '{"format":"short","product":"1","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(88, 72, 'AITLaundry search Location', '', '', -1, 'modMidlePosition', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_searchlocation', 1, 0, '{"layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(89, 74, 'JCK Manager', '', '<img alt="" src="components/com_jckman/icons/jck-manager-logo.png" />', 1, 'jck_icon', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":0}', 1, ''),
(90, 75, 'Dashboard', '', '<img alt="" src="components/com_jckman/icons/jck-manager-logo.png" />', 2, 'jck_icon', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_jckquickicon', 1, 1, '', 1, ''),
(91, 76, 'JCK Manager v6.4.4', '', '<table class="table table-striped" border="0" cellpadding="0" cellspacing="0" style="margin-bottom:0px;">\r\n			<tr>\r\n				<td>Version:</td>\r\n				<td>6.4.4</td>\r\n			</tr>\r\n			<tr>\r\n				<td>Author:</td>\r\n				<td><a href="http://www.joomlackeditor.com" target="_blank">www.joomlackeditor.com</a></td>\r\n			</tr>\r\n			<tr>\r\n				<td>Copyright:</td>\r\n				<td>&copy; WebxSolution Ltd, All rights reserved.</td>\r\n			</tr>\r\n			<tr>\r\n				<td>License:</td>\r\n				<td>GPLv2.0</td>\r\n			</tr>\r\n			<tr>\r\n				<td>More info:</td>\r\n				<td><a href="http://joomlackeditor.com/terms-of-use" target="_blank">http://joomlackeditor.com/terms-of-use</a></td>\r\n			</tr>\r\n		</table>', 3, 'jck_icon', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '', 1, ''),
(92, 77, 'COM_JCKMAN_CPANEL_SLIDER_MANAGER_LABEL', '', 'COM_JCKMAN_CPANEL_SLIDER_MANAGER_HTML', 1, 'jck_cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '', 1, 1, '{}', 1, ''),
(93, 78, 'COM_JCKMAN_CPANEL_SLIDER_PLUGIN_LABEL', '', 'COM_JCKMAN_CPANEL_SLIDER_PLUGIN_HTML', 2, 'jck_cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '', 1, 1, '{}', 1, ''),
(94, 79, 'COM_JCKMAN_CPANEL_SLIDER_SYSTEM_CHECK_LABEL', '', 'COM_JCKMAN_CPANEL_SLIDER_SYSTEM_CHECK_HTML', 3, 'jck_cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '', 1, 1, '{}', 1, ''),
(95, 80, 'COM_JCKMAN_CPANEL_SLIDER_SYSTEM_LAYOUT_MANAGER', '', 'COM_JCKMAN_CPANEL_SLIDER_SYSTEM_LAYOUT_MANAGER_HTML', 4, 'jck_cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '', 1, 1, '{}', 1, ''),
(96, 81, 'COM_JCKMAN_CPANEL_SLIDER_BACKUP_LABEL', '', 'COM_JCKMAN_CPANEL_SLIDER_BACKUP_LABEL_HTML', 5, 'jck_cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '', 1, 1, '{}', 1, ''),
(97, 82, 'COM_JCKMAN_CPANEL_SLIDER_RESTORE_LABEL', '', 'COM_JCKMAN_CPANEL_SLIDER_RESTORE_HTML', 6, 'jck_cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '', 1, 1, '{}', 1, ''),
(98, 83, 'COM_JCKMAN_CPANEL_SLIDER_SYNC_LABEL', '', 'COM_JCKMAN_CPANEL_SLIDER_SYNC_HTML', 7, 'jck_cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '', 1, 1, '{}', 1, ''),
(99, 85, 'Feature Photo', '', '<div id="feature" class="row">\r\n<div id="banner" class="container-fluid col-xs-12">\r\n<h2 id="motto" style="color: black;">Let our services get you <span id="impressed">IMPRESSED</span>!</h2>\r\n<p>We will pick up your laundry at your home, and deliver it ready suiting your needs!</p>\r\n<p>All you need to do is to set up an account, choose your combo and make an order!</p>\r\n<p>What we offer is a loyal laundry service with different prices that will allow you to get it done by our professionals ready at your doorstep.</p>\r\n</div>\r\n</div>', 1, 'modFeaturePhoto', 106, '2017-05-24 01:27:07', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"images\\/feature.png","layout":"_:default","moduleclass_sfx":"Feature","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(100, 86, 'How it works', '', '<div id="how" class="container-fluid">\r\n<h1>How it works</h1>\r\n<div id="how2" class="row">\r\n<div class="col-sm-3 col-xs-12"><img src="images/laundry-icon.png" />\r\n<p>CHOOSE YOUR COMBO</p>\r\n</div>\r\n<div class="col-sm-3 col-xs-12 leftBorder"><img class="cke-resize" src="images/preferences.png" />\r\n<p>SET YOUR PREFERENCES</p>\r\n</div>\r\n<div class="col-md-3 col-xs-12 leftBorder"><img src="images/Delivery-Icon.png" />\r\n<p>WE WILL TAKE CARE OF IT</p>\r\n</div>\r\n<div class="col-md-3 col-xs-12 leftBorder"><button class="btn" style="padding: 0; background-color: rgba(0,0,0,0);" title="Close Modal" type="button"><img id="play" src="images/play.png" /></button>\r\n<p id="playvideo">PLAY VIDEO</p>\r\n</div>\r\n</div>\r\n</div>', 1, 'modHowItWork', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(101, 87, 'Combos', '', '', 1, 'modCombos', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_combos', 1, 0, '{"layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(102, 88, 'Footer', '', '<footer style="background-color: #4d4d4d; margin-top: 2px;">\r\n<div class="container-fluid">\r\n<div class="space1">\r\n<div class="col-sm-4 space2">\r\n<div><a href="index.php/terms-conditions" rel="alternate">TERMS &amp; CONDITIONS</a></div>\r\n<div class="row space2"><a href="index.php/privacy-policy" rel="alternate">PRIVACY POLICY</a></div>\r\n</div>\r\n<div class="col-sm-4 space2">\r\n<div><a href="index.php/about-us" rel="alternate">ABOUT US</a></div>\r\n<div class="row space2"><a href="index.php/contact" rel="alternate">CONTACT US</a></div>\r\n</div>\r\n<div class="col-sm-4 space2">\r\n<div><a href="index.php/about-us#testimonials" rel="alternate">TESTIMONIALS</a></div>\r\n<div class="row space2"><a href="index.php/about-us#faq" rel="alternate">FAQ</a></div>\r\n</div>\r\n</div>\r\n<div class="row">\r\n<div class="col-xs-12" style="margin-top: 20px;">© AIT LAUNDRY - 2017</div>\r\n</div>\r\n</div>\r\n</footer>', 1, 'footer', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*');

-- --------------------------------------------------------

--
-- Table structure for table `fv5oz_modules_menu`
--

CREATE TABLE `fv5oz_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fv5oz_modules_menu`
--

INSERT INTO `fv5oz_modules_menu` (`moduleid`, `menuid`) VALUES
(1, 0),
(2, 0),
(3, 0),
(4, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0),
(12, 0),
(13, 0),
(14, 0),
(15, 0),
(16, 0),
(17, 0),
(79, 0),
(86, 0),
(88, 101),
(99, 101),
(100, 101),
(101, 101),
(102, 0);

-- --------------------------------------------------------

--
-- Table structure for table `fv5oz_newsfeeds`
--

CREATE TABLE `fv5oz_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT '0',
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `link` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `numarticles` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `cache_time` int(10) UNSIGNED NOT NULL DEFAULT '3600',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rtl` tinyint(4) NOT NULL DEFAULT '0',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadata` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `images` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fv5oz_order`
--

CREATE TABLE `fv5oz_order` (
  `id` int(11) UNSIGNED NOT NULL,
  `ordernote` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comboid` int(11) NOT NULL,
  `paymentid` int(11) NOT NULL,
  `datetimecreated` datetime NOT NULL,
  `addresspickup` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_timepickup` datetime NOT NULL,
  `addressdelivery` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_timedelivery` datetime NOT NULL,
  `deliverynote` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `ordering` int(11) NOT NULL,
  `checked_out` int(11) NOT NULL,
  `checked_out_time` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fv5oz_order`
--

INSERT INTO `fv5oz_order` (`id`, `ordernote`, `comboid`, `paymentid`, `datetimecreated`, `addresspickup`, `date_timepickup`, `addressdelivery`, `date_timedelivery`, `deliverynote`, `status`, `ordering`, `checked_out`, `checked_out_time`, `created_by`, `modified_by`) VALUES
(1, '', 1, 1, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', 1, 1, 0, '0000-00-00 00:00:00', 106, 106),
(2, '', 1, 1, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', 1, 2, 0, '0000-00-00 00:00:00', 106, 106),
(3, '', 1, 1, '2017-05-24 06:32:31', 'asddasd', '0000-00-00 00:00:00', 'asdas', '0000-00-00 00:00:00', '	             	asdasd	             ', 0, 0, 0, '0000-00-00 00:00:00', 0, 0),
(4, '', 1, 1, '2017-05-24 06:32:31', 'asddasd', '0000-00-00 00:00:00', 'asdas', '0000-00-00 00:00:00', '	             	asdasd	             ', 0, 0, 0, '0000-00-00 00:00:00', 0, 0),
(5, '', 1, 1, '2017-05-24 06:32:35', 'asddasd', '0000-00-00 00:00:00', 'asdas', '0000-00-00 00:00:00', '	             	asdasd	             ', 0, 0, 0, '0000-00-00 00:00:00', 0, 0),
(6, '', 1, 1, '2017-05-24 06:32:38', 'asddasd', '0000-00-00 00:00:00', 'asdas', '0000-00-00 00:00:00', '	             	asdasd	             ', 0, 0, 0, '0000-00-00 00:00:00', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `fv5oz_orderlogbook`
--

CREATE TABLE `fv5oz_orderlogbook` (
  `id` int(11) UNSIGNED NOT NULL,
  `orderid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `ordering` int(11) NOT NULL,
  `state` tinyint(1) NOT NULL,
  `checked_out` int(11) NOT NULL,
  `checked_out_time` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fv5oz_overrider`
--

CREATE TABLE `fv5oz_overrider` (
  `id` int(10) NOT NULL COMMENT 'Primary Key',
  `constant` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `string` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fv5oz_payment`
--

CREATE TABLE `fv5oz_payment` (
  `id` int(11) UNSIGNED NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ordering` int(11) NOT NULL,
  `state` tinyint(1) NOT NULL,
  `checked_out` int(11) NOT NULL,
  `checked_out_time` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fv5oz_payment`
--

INSERT INTO `fv5oz_payment` (`id`, `type`, `description`, `ordering`, `state`, `checked_out`, `checked_out_time`, `created_by`, `modified_by`) VALUES
(1, 'Credit Card', '', 1, 1, 0, '0000-00-00 00:00:00', 106, 106),
(2, 'Paypal', '', 2, 1, 0, '0000-00-00 00:00:00', 106, 106);

-- --------------------------------------------------------

--
-- Table structure for table `fv5oz_postinstall_messages`
--

CREATE TABLE `fv5oz_postinstall_messages` (
  `postinstall_message_id` bigint(20) UNSIGNED NOT NULL,
  `extension_id` bigint(20) NOT NULL DEFAULT '700' COMMENT 'FK to #__extensions',
  `title_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Lang key for the title',
  `description_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Lang key for description',
  `action_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `language_extension` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'com_postinstall' COMMENT 'Extension holding lang keys',
  `language_client_id` tinyint(3) NOT NULL DEFAULT '1',
  `type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'link' COMMENT 'Message type - message, link, action',
  `action_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'RAD URI to the PHP file containing action method',
  `action` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'Action method name or URL',
  `condition_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'RAD URI to file holding display condition method',
  `condition_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Display condition method, must return boolean',
  `version_introduced` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '3.2.0' COMMENT 'Version when this message was introduced',
  `enabled` tinyint(3) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fv5oz_postinstall_messages`
--

INSERT INTO `fv5oz_postinstall_messages` (`postinstall_message_id`, `extension_id`, `title_key`, `description_key`, `action_key`, `language_extension`, `language_client_id`, `type`, `action_file`, `action`, `condition_file`, `condition_method`, `version_introduced`, `enabled`) VALUES
(1, 700, 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_TITLE', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_BODY', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_ACTION', 'plg_twofactorauth_totp', 1, 'action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_condition', '3.2.0', 0),
(2, 700, 'COM_CPANEL_WELCOME_BEGINNERS_TITLE', 'COM_CPANEL_WELCOME_BEGINNERS_MESSAGE', '', 'com_cpanel', 1, 'message', '', '', '', '', '3.2.0', 0),
(3, 700, 'COM_CPANEL_MSG_STATS_COLLECTION_TITLE', 'COM_CPANEL_MSG_STATS_COLLECTION_BODY', '', 'com_cpanel', 1, 'message', '', '', 'admin://components/com_admin/postinstall/statscollection.php', 'admin_postinstall_statscollection_condition', '3.5.0', 0),
(4, 700, 'PLG_SYSTEM_UPDATENOTIFICATION_POSTINSTALL_UPDATECACHETIME', 'PLG_SYSTEM_UPDATENOTIFICATION_POSTINSTALL_UPDATECACHETIME_BODY', 'PLG_SYSTEM_UPDATENOTIFICATION_POSTINSTALL_UPDATECACHETIME_ACTION', 'plg_system_updatenotification', 1, 'action', 'site://plugins/system/updatenotification/postinstall/updatecachetime.php', 'updatecachetime_postinstall_action', 'site://plugins/system/updatenotification/postinstall/updatecachetime.php', 'updatecachetime_postinstall_condition', '3.6.3', 0);

-- --------------------------------------------------------

--
-- Table structure for table `fv5oz_redirect_links`
--

CREATE TABLE `fv5oz_redirect_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `old_url` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `new_url` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referer` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `published` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `header` smallint(3) NOT NULL DEFAULT '301'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fv5oz_schemas`
--

CREATE TABLE `fv5oz_schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fv5oz_schemas`
--

INSERT INTO `fv5oz_schemas` (`extension_id`, `version_id`) VALUES
(700, '3.6.3-2016-08-16');

-- --------------------------------------------------------

--
-- Table structure for table `fv5oz_services`
--

CREATE TABLE `fv5oz_services` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comboid` int(11) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ordering` int(11) NOT NULL,
  `state` tinyint(1) NOT NULL,
  `checked_out` int(11) NOT NULL,
  `checked_out_time` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fv5oz_services`
--

INSERT INTO `fv5oz_services` (`id`, `name`, `icon`, `price`, `comboid`, `description`, `ordering`, `state`, `checked_out`, `checked_out_time`, `created_by`, `modified_by`) VALUES
(1, 'Washing - 10kg', 'images/wash.png', '20', 2, '<p><span style="color: #333333; font-family: Viga, sans-serif; font-size: 14px; letter-spacing: 2px; text-align: center;">Quantity in kilos</span></p>', 1, 1, 0, '0000-00-00 00:00:00', 106, 106),
(2, 'Dry Cleaning - 5 Items', 'images/dryclean.png', '25', 2, '<p><span style="color: #333333; font-family: Viga, sans-serif; font-size: 14px; letter-spacing: 2px; text-align: center;">Washing with no water</span></p>', 3, 1, 0, '0000-00-00 00:00:00', 106, 106),
(3, 'Delivery - 1 p.w', 'images/delivery_combo.png', '20', 2, '<p><span style="color: #333333; font-family: Viga, sans-serif; font-size: 14px; letter-spacing: 2px; text-align: center;">Scheduling how often</span></p>', 4, 1, 0, '0000-00-00 00:00:00', 106, 106),
(4, 'Washing - 20kg', 'images/wash.png', '30', 3, '<p><span style="color: #333333; font-family: Viga, sans-serif; font-size: 14px; letter-spacing: 2px; text-align: center;">Quantity in kilos</span></p>', 5, 1, 0, '0000-00-00 00:00:00', 106, 106),
(5, 'Dry Cleaning - 15 Items', 'images/dryclean.png', '45', 3, '<p><span style="color: #333333; font-family: Viga, sans-serif; font-size: 14px; letter-spacing: 2px; text-align: center;">Washing with no water</span></p>', 7, 1, 0, '0000-00-00 00:00:00', 106, 106),
(6, 'Delivery - 3 p.w', 'images/delivery_combo.png', '40', 3, '<p>------------------------------</p>\r\n<p><span style="color: #333333; font-family: Viga, sans-serif; font-size: 14px; letter-spacing: 2px; text-align: center;">Scheduling how often</span></p>', 8, 1, 0, '0000-00-00 00:00:00', 106, 106),
(7, 'Washing - 15kg', 'images/wash.png', '25', 1, '<p><span style="color: #333333; font-family: Viga, sans-serif; font-size: 14px; letter-spacing: 2px; text-align: center;">Quantity in kilos</span></p>', 9, 1, 0, '0000-00-00 00:00:00', 106, 106),
(8, 'Dry Cleaning - 10 Itens', 'images/dryclean.png', '35', 1, '<p><span style="color: #333333; font-family: Viga, sans-serif; font-size: 14px; letter-spacing: 2px; text-align: center;">Washing with no water</span></p>', 11, 1, 0, '0000-00-00 00:00:00', 106, 106),
(9, 'Delivery - 2 p.w', 'images/delivery_combo.png', '30', 1, '<p><span style="color: #333333; font-family: Viga, sans-serif; font-size: 14px; letter-spacing: 2px; text-align: center;">Scheduling how often</span></p>', 12, 1, 0, '0000-00-00 00:00:00', 106, 106),
(10, 'Ironing - 5 Items', 'images/ironing.png', '10', 2, '<p><span style="color: #333333; font-family: Viga, sans-serif; font-size: 14px; letter-spacing: 2px; text-align: center;">Smooths out all the wrinkles</span></p>', 2, 1, 0, '0000-00-00 00:00:00', 106, 106),
(11, 'Ironing - 15 Items', 'images/ironing.png', '25', 1, '<p><span style="color: #333333; font-family: Viga, sans-serif; font-size: 14px; letter-spacing: 2px; text-align: center;">Smooths out all the wrinkles</span></p>', 10, 1, 0, '0000-00-00 00:00:00', 106, 106),
(12, 'Ironing - 25 Items', 'images/ironing.png', '35', 3, '<p><span style="color: #333333; font-family: Viga, sans-serif; font-size: 14px; letter-spacing: 2px; text-align: center;">Smooths out all the wrinkles</span></p>', 6, 1, 0, '0000-00-00 00:00:00', 106, 106);

-- --------------------------------------------------------

--
-- Table structure for table `fv5oz_session`
--

CREATE TABLE `fv5oz_session` (
  `session_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `guest` tinyint(4) UNSIGNED DEFAULT '1',
  `time` varchar(14) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `data` mediumtext COLLATE utf8mb4_unicode_ci,
  `userid` int(11) DEFAULT '0',
  `username` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fv5oz_session`
--

INSERT INTO `fv5oz_session` (`session_id`, `client_id`, `guest`, `time`, `data`, `userid`, `username`) VALUES
('qob03ot6im1u68tjc6arh1gnh7', 0, 0, '1495607679', 'joomla|s:1620:"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjo1OntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjM6e3M6NzoiY291bnRlciI7aTo5MDtzOjU6InRpbWVyIjtPOjg6InN0ZENsYXNzIjozOntzOjU6InN0YXJ0IjtpOjE0OTU2MDM1MTA7czo0OiJsYXN0IjtpOjE0OTU2MDc2NzY7czozOiJub3ciO2k6MTQ5NTYwNzY3OTt9czo1OiJ0b2tlbiI7czozMjoiVXVDSnJveDc4Sm9UYnhDcUl4TVRkeHY4eDVyUHN3UEIiO31zOjg6InJlZ2lzdHJ5IjtPOjI0OiJKb29tbGFcUmVnaXN0cnlcUmVnaXN0cnkiOjM6e3M6NzoiACoAZGF0YSI7Tzo4OiJzdGRDbGFzcyI6Mjp7czo1OiJ1c2VycyI7Tzo4OiJzdGRDbGFzcyI6MTp7czo1OiJsb2dpbiI7Tzo4OiJzdGRDbGFzcyI6MTp7czo0OiJmb3JtIjtPOjg6InN0ZENsYXNzIjoyOntzOjQ6ImRhdGEiO2E6MDp7fXM6NjoicmV0dXJuIjtzOjQ1OiJpbmRleC5waHA/b3B0aW9uPWNvbV91c2VycyZ2aWV3PXByb2ZpbGUmdGFiPTIiO319fXM6OToiY29tX29yZGVyIjtPOjg6InN0ZENsYXNzIjoxOntzOjY6Im9yZGVycyI7Tzo4OiJzdGRDbGFzcyI6MTp7czo0OiJsaXN0IjthOjQ6e3M6NToibGltaXQiO2k6MjA7czo1OiJzdGFydCI7aTowO3M6ODoib3JkZXJpbmciO047czo5OiJkaXJlY3Rpb24iO047fX19fXM6MTQ6IgAqAGluaXRpYWxpemVkIjtiOjE7czo5OiJzZXBhcmF0b3IiO3M6MToiLiI7fXM6NDoidXNlciI7Tzo1OiJKVXNlciI6MTp7czoyOiJpZCI7czozOiIxMDYiO31zOjg6InlvdXJjYXJ0IjthOjE6e3M6NjoiZGM5YzM4IjthOjQ6e3M6MjoiaWQiO3M6MToiMSI7czo4OiJxdWFudGl0eSI7aToxO3M6NToicHJpY2UiO3M6MzoiMTE1IjtzOjQ6Im5hbWUiO3M6NjoiQ09VUExFIjt9fXM6NToib3JkZXIiO2E6NTp7czoxMzoiYWRkcmVzc3BpY2t1cCI7czo3OiJhc2RkYXNkIjtzOjE1OiJkYXRlX3RpbWVwaWNrdXAiO3M6NjoiYXNkYXNkIjtzOjE0OiJhZGRyZXNzZGVsaXZlciI7czo1OiJhc2RhcyI7czoxNzoiZGF0ZV90aW1lZGVsaXZlcnkiO3M6NToiYWRhc2QiO3M6MTI6ImRlbGl2ZXJ5bm90ZSI7czozNToiCSAgICAgICAgICAgICAJYXNkYXNkCSAgICAgICAgICAgICAiO319fXM6MTQ6IgAqAGluaXRpYWxpemVkIjtiOjA7czo5OiJzZXBhcmF0b3IiO3M6MToiLiI7fQ==";', 106, 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `fv5oz_tags`
--

CREATE TABLE `fv5oz_tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `path` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `urls` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fv5oz_tags`
--

INSERT INTO `fv5oz_tags` (`id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `created_by_alias`, `modified_user_id`, `modified_time`, `images`, `urls`, `hits`, `language`, `version`, `publish_up`, `publish_down`) VALUES
(1, 0, 0, 1, 0, '', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '', '', '', '', 106, '2011-01-01 00:00:01', '', 0, '0000-00-00 00:00:00', '', '', 0, '*', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `fv5oz_template_styles`
--

CREATE TABLE `fv5oz_template_styles` (
  `id` int(10) UNSIGNED NOT NULL,
  `template` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `home` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fv5oz_template_styles`
--

INSERT INTO `fv5oz_template_styles` (`id`, `template`, `client_id`, `home`, `title`, `params`) VALUES
(4, 'beez3', 0, '0', 'Beez3 - Default', '{"wrapperSmall":"53","wrapperLarge":"72","logo":"images\\/joomla_black.png","sitetitle":"Joomla!","sitedescription":"Open Source Content Management","navposition":"left","templatecolor":"personal","html5":"0"}'),
(5, 'hathor', 1, '0', 'Hathor - Default', '{"showSiteName":"0","colourChoice":"","boldText":"0"}'),
(7, 'protostar', 0, '1', 'aitLuandry', '{"templateColor":"#de9611","templateBackgroundColor":"#f4f6f7","logoFile":"images\\/logo_impress.png","sitetitle":"","sitedescription":"","googleFont":"1","googleFontName":"Open+Sans","fluidContainer":"0"}'),
(8, 'isis', 1, '1', 'AITLaundry - Default', '{"templateColor":"#d49133","headerColor":"#736447","sidebarColor":"#e0c248","linkColor":"#cc8500","loginBackgroundColor":"#8f5717","logoFile":"images\\/logo_impress.png","loginLogoFile":"images\\/logo_impress.png","admin_menus":1,"displayHeader":1,"statusFixed":1,"stickyToolbar":0}');

-- --------------------------------------------------------

--
-- Table structure for table `fv5oz_ucm_base`
--

CREATE TABLE `fv5oz_ucm_base` (
  `ucm_id` int(10) UNSIGNED NOT NULL,
  `ucm_item_id` int(10) NOT NULL,
  `ucm_type_id` int(11) NOT NULL,
  `ucm_language_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fv5oz_ucm_content`
--

CREATE TABLE `fv5oz_ucm_content` (
  `core_content_id` int(10) UNSIGNED NOT NULL,
  `core_type_alias` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'FK to the content types table',
  `core_title` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `core_body` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_state` tinyint(1) NOT NULL DEFAULT '0',
  `core_checked_out_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_checked_out_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `core_access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `core_params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_featured` tinyint(4) UNSIGNED NOT NULL DEFAULT '0',
  `core_metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded metadata properties.',
  `core_created_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `core_created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_modified_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Most recent user that modified',
  `core_modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_publish_up` datetime NOT NULL,
  `core_publish_down` datetime NOT NULL,
  `core_content_item_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'ID from the individual type table',
  `asset_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'FK to the #__assets table.',
  `core_images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_urls` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `core_version` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `core_ordering` int(11) NOT NULL DEFAULT '0',
  `core_metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_catid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `core_xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `core_type_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Contains core content data in name spaced fields';

-- --------------------------------------------------------

--
-- Table structure for table `fv5oz_ucm_history`
--

CREATE TABLE `fv5oz_ucm_history` (
  `version_id` int(10) UNSIGNED NOT NULL,
  `ucm_item_id` int(10) UNSIGNED NOT NULL,
  `ucm_type_id` int(10) UNSIGNED NOT NULL,
  `version_note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Optional version name',
  `save_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `character_count` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Number of characters in this version.',
  `sha1_hash` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'SHA1 hash of the version_data column.',
  `version_data` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'json-encoded string of version data',
  `keep_forever` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0=auto delete; 1=keep'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fv5oz_ucm_history`
--

INSERT INTO `fv5oz_ucm_history` (`version_id`, `ucm_item_id`, `ucm_type_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`) VALUES
(1, 1, 1, '', '2017-05-22 22:49:55', 106, 1736, 'dc6c251b418b58f41eebd66b56d976c29c2b3704', '{"id":1,"asset_id":89,"title":"TERMS & CONDITIONS","alias":"terms-conditions","introtext":"<p>\\r\\n\\tfdjbfsjadbfsa<\\/p>\\r\\n","fulltext":"","state":1,"catid":"2","created":"2017-05-22 22:49:55","created_by":"106","created_by_alias":"","modified":"2017-05-22 22:49:55","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2017-05-22 22:49:55","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(2, 1, 1, '', '2017-05-22 02:57:56', 106, 9678, 'a6f1503191209681a3bf7d53d52ab04565386e72', '{"id":1,"asset_id":"89","title":"TERMS & CONDITIONS","alias":"terms-conditions","introtext":" <div id=\\"termstitle\\" class=\\"container-fluid\\">\\r\\n                <h1>Terms and Conditions<\\/h1>\\r\\n            <\\/div>\\r\\n            <div id=\\"termscontent\\" class=\\"container-fluid\\">\\r\\n                <!-------- PURPOSE ------>\\r\\n                <div id=\\"terms\\">\\r\\n                    <h4>Terms and Conditions<\\/h4>\\r\\n                    <p class=\\"text-justify\\">Impress Laundry, is pleased to provide professional pick-up and delivery laundry services to our customers and offers quality and convenience at an affordable price. Our services are subject to the terms and conditions below. Your use of Impress Laundry, indicates your agreement to be bound by the terms and conditions contained herein. Please read the following provisions carefully and let us know if you have any questions. We look forward to doing business with you! This agreement is strictly between Laundry Care LLC, its customers and services provided by parties subcontracted by Impress Laundry, and does not in any way constitute or imply any relationship with any other parties.<\\/p>\\r\\n                    <h4>Pick-up\\/Delivery<\\/h4>\\r\\n                    <p class=\\"text-justify\\">Schedule. All services will be provided by Impress Laundry. Pick-up\\/Delivery will take place on a pre-determined day and frequency, except on certain holidays, as determined by you.Impress Laundry or you may change the pre-determined pick-up\\/delivery times, permanently or temporary, with advance notice by either you or Impress Laundry. Impress Laundry requires at least 1 day notice prior to any change. If you\\u2019d like to leave your items at a secure spot, it will be at your own risk. This is also true for delivery. Items left for pick up are not under our care until we have retrieved said items. Items left for delivery at the pre-determined location will not be under our care once they have been left at the agreed upon location.<\\/p>\\r\\n                    <h4>Procedure and Terms<\\/h4>\\r\\n                    <p class=\\"text-justify\\">Impress Laundry will provide each customer with a Laundry Care nylon\\/polyurethane Laundry Bag for a fee. Impress Laundry reserves the right not to pick-up items that are not in these bags or 13 gallon sized trash bags. Weekly customers will purchase Impress Laundry bag(s) at the beginning of their service plan for a fee stated on the Impress Laundry website. A bag fee will be charged to the customer for replacement bags. Gift Card Recipients: Impress Laundry nylon\\/polyurethane Laundry Bags are not provided to Gift Card recipients. Items can be placed in 13 gallon sized trash bags or the equivalent thereof. Should you chose to request one of our Laundry Care bags, the fee for said bag will be deducted from your remaining Gift Card balance. If you chose to continue service after the full value of your Gift Card has been redeemed, you will be provided a Laundry Care bag and the fee will be applied to your invoice. Impress Laundry and its Providers\\/Partners are not responsible for, and shall not pay for, any loss, damage or theft of items left unattended by the customer for pick-up or delivery. Impress Laundry will not leave items in the possession of any other person that is not the owner of those items unless the owner has given consent. The customer is responsible for ensuring that his\\/her Laundry Bag is delivered safely to the LImpress Laundry.<\\/p>\\r\\n                    <h4>Missed\\/Unattended Pick-up or Delivery<\\/h4>\\r\\n                    <p class=\\"text-justify\\">If the customer misses a scheduled pick-up or delivery, the customer must coordinate with Impress Laundry to reschedule the pick-up or delivery during the next available day and time. Customer may be subject to a missed pick up fee or missed drop off fee for failing to notify their Provider\\/Partner 24 Hours prior to the scheduled pick up\\/delivery. Gift Card Recipients: Fees assessed due to missed\\/unattended pick-up or delivery will be deducted from the remaining balance of your Gift Card.<\\/p>\\r\\n                    <h4>Refunds<\\/h4>\\r\\n                    <p class=\\"text-justify\\">Except as described in this paragraph, all sales are final and all payments are non-refundable. A customer who has signed up for a prepaid package plan or gift card will have the right to cancel his or her contract within fourteen (14) days of signing up for the Impress Laundry service and receive a full refund if no promotional value was received. After such fourteen day period, Impress Laundry shall have no obligation to refund any amounts paid by the customer. If a promotional value was received the sale is final and the payment is non-refundable.<\\/p>\\r\\n                    <h4>Garment Care<\\/h4>\\r\\n                    <p class=\\"text-justify\\">The customer agrees not to include any of the following items inside their Laundry Bag (i) non-washable items, (ii) items that are labeled for dry cleaning only, (iii) items that have been exposed to bed bugs or (iv) any other items not meant for laundering. Customer acknowledges that items that have been air-dried (per customer request or Laundry Care\\u2019s determination for best garment care) may be damp upon delivery. The customer is responsible for any and all damage caused by any items left in the customer\\u2019s clothing or Laundry Bag that causes damage to the clothing of any customer, the cleaning machines, or any other property of the Impress Laundry. Impress Laundry desires to provide high quality laundering services and will use all reasonable precautions to avoid damage to clothes. Impress Laundry, however, are not liable for any damage due to normal laundering of items, cleaning of items without care instructions, for dry clean items placed inside Laundry Bags, for special-processing items (delicate-wash, air-dry, stain-treatment) not placed in a separate bag, damage resulting from items left in the clothing, bleeding of colors, shrinking or any other alteration resulting from normal washing procedures. Impress Laundry will follow any reasonable instructions provided by the customer, including water or drying temperatures. Impress Laundry do not read cleaning instruction labels and is not responsible for special care items, such as dry clean only items, which are included in the Laundry Bag. Although Impress Laundry use their best efforts to remove stains, stain removal is not guaranteed. Impress Laundry may refuse to clean any garment at their sole discretion. Impress Laundry will re-clean items that, in its sole discretion, were not properly cleaned and have not been worn since they were cleaned, at no additional cost. Laundry Care LLC and its subcontractors are not responsible for loss of or damage to any personal or non-cleanable items left in the clothing or laundry bags such as money, jewelry, or any other item. The customer agrees not to leave such items in their clothing or in their laundry bags. Zippers behave unpredictably while cleaning. Although zippers generally are not an issue, the customer is notified that there is a possibility of zipper issues while following normal wash procedures, and Impress Laundry does not accept any liability for such issues.<\\/p>\\r\\n                    <h4>Confidentiality and Disclaimer<\\/h4>\\r\\n                    <p class=\\"text-justify\\">Impress Laundry takes privacy and personal information seriously. Impress Laundry uses customer information to provide services, to process payment, facilitate billing, and for any other purpose reasonably necessary to provide services under this Agreement. Additionally, personal information may be disclosed when required by law necessary to enforce this Agreement or necessary to protect the rights, interests, property of safety of Impress Laundry. From time-to-time, we also may send merchant service announcements, newsletters, and periodic notices about specials and new products.<\\/p>\\r\\n                <\\/div>\\r\\n            <\\/div>","fulltext":"","state":1,"catid":"2","created":"2017-05-22 22:49:55","created_by":"106","created_by_alias":"","modified":"2017-05-22 02:57:56","modified_by":"106","checked_out":"106","checked_out_time":"2017-05-22 02:57:41","publish_up":"2017-05-22 22:49:55","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":2,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"1","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(3, 1, 1, '', '2017-05-22 02:58:07', 106, 9510, 'afb8c329ccf8fc1c3a902955a33534bf69444f35', '{"id":1,"asset_id":"89","title":"TERMS & CONDITIONS","alias":"terms-conditions","introtext":"<div class=\\"container-fluid\\" id=\\"termstitle\\">\\r\\n\\t<h1>\\r\\n\\t\\tTerms and Conditions<\\/h1>\\r\\n<\\/div>\\r\\n<div class=\\"container-fluid\\" id=\\"termscontent\\">\\r\\n<!-------- PURPOSE ------>\\t<div id=\\"terms\\">\\r\\n\\t\\t<h4>\\r\\n\\t\\t\\tTerms and Conditions<\\/h4>\\r\\n\\t\\t<p class=\\"text-justify\\">\\r\\n\\t\\t\\tImpress Laundry, is pleased to provide professional pick-up and delivery laundry services to our customers and offers quality and convenience at an affordable price. Our services are subject to the terms and conditions below. Your use of Impress Laundry, indicates your agreement to be bound by the terms and conditions contained herein. Please read the following provisions carefully and let us know if you have any questions. We look forward to doing business with you! This agreement is strictly between Laundry Care LLC, its customers and services provided by parties subcontracted by Impress Laundry, and does not in any way constitute or imply any relationship with any other parties.<\\/p>\\r\\n\\t\\t<h4>\\r\\n\\t\\t\\tPick-up\\/Delivery<\\/h4>\\r\\n\\t\\t<p class=\\"text-justify\\">\\r\\n\\t\\t\\tSchedule. All services will be provided by Impress Laundry. Pick-up\\/Delivery will take place on a pre-determined day and frequency, except on certain holidays, as determined by you.Impress Laundry or you may change the pre-determined pick-up\\/delivery times, permanently or temporary, with advance notice by either you or Impress Laundry. Impress Laundry requires at least 1 day notice prior to any change. If you&rsquo;d like to leave your items at a secure spot, it will be at your own risk. This is also true for delivery. Items left for pick up are not under our care until we have retrieved said items. Items left for delivery at the pre-determined location will not be under our care once they have been left at the agreed upon location.<\\/p>\\r\\n\\t\\t<h4>\\r\\n\\t\\t\\tProcedure and Terms<\\/h4>\\r\\n\\t\\t<p class=\\"text-justify\\">\\r\\n\\t\\t\\tImpress Laundry will provide each customer with a Laundry Care nylon\\/polyurethane Laundry Bag for a fee. Impress Laundry reserves the right not to pick-up items that are not in these bags or 13 gallon sized trash bags. Weekly customers will purchase Impress Laundry bag(s) at the beginning of their service plan for a fee stated on the Impress Laundry website. A bag fee will be charged to the customer for replacement bags. Gift Card Recipients: Impress Laundry nylon\\/polyurethane Laundry Bags are not provided to Gift Card recipients. Items can be placed in 13 gallon sized trash bags or the equivalent thereof. Should you chose to request one of our Laundry Care bags, the fee for said bag will be deducted from your remaining Gift Card balance. If you chose to continue service after the full value of your Gift Card has been redeemed, you will be provided a Laundry Care bag and the fee will be applied to your invoice. Impress Laundry and its Providers\\/Partners are not responsible for, and shall not pay for, any loss, damage or theft of items left unattended by the customer for pick-up or delivery. Impress Laundry will not leave items in the possession of any other person that is not the owner of those items unless the owner has given consent. The customer is responsible for ensuring that his\\/her Laundry Bag is delivered safely to the LImpress Laundry.<\\/p>\\r\\n\\t\\t<h4>\\r\\n\\t\\t\\tMissed\\/Unattended Pick-up or Delivery<\\/h4>\\r\\n\\t\\t<p class=\\"text-justify\\">\\r\\n\\t\\t\\tIf the customer misses a scheduled pick-up or delivery, the customer must coordinate with Impress Laundry to reschedule the pick-up or delivery during the next available day and time. Customer may be subject to a missed pick up fee or missed drop off fee for failing to notify their Provider\\/Partner 24 Hours prior to the scheduled pick up\\/delivery. Gift Card Recipients: Fees assessed due to missed\\/unattended pick-up or delivery will be deducted from the remaining balance of your Gift Card.<\\/p>\\r\\n\\t\\t<h4>\\r\\n\\t\\t\\tRefunds<\\/h4>\\r\\n\\t\\t<p class=\\"text-justify\\">\\r\\n\\t\\t\\tExcept as described in this paragraph, all sales are final and all payments are non-refundable. A customer who has signed up for a prepaid package plan or gift card will have the right to cancel his or her contract within fourteen (14) days of signing up for the Impress Laundry service and receive a full refund if no promotional value was received. After such fourteen day period, Impress Laundry shall have no obligation to refund any amounts paid by the customer. If a promotional value was received the sale is final and the payment is non-refundable.<\\/p>\\r\\n\\t\\t<h4>\\r\\n\\t\\t\\tGarment Care<\\/h4>\\r\\n\\t\\t<p class=\\"text-justify\\">\\r\\n\\t\\t\\tThe customer agrees not to include any of the following items inside their Laundry Bag (i) non-washable items, (ii) items that are labeled for dry cleaning only, (iii) items that have been exposed to bed bugs or (iv) any other items not meant for laundering. Customer acknowledges that items that have been air-dried (per customer request or Laundry Care&rsquo;s determination for best garment care) may be damp upon delivery. The customer is responsible for any and all damage caused by any items left in the customer&rsquo;s clothing or Laundry Bag that causes damage to the clothing of any customer, the cleaning machines, or any other property of the Impress Laundry. Impress Laundry desires to provide high quality laundering services and will use all reasonable precautions to avoid damage to clothes. Impress Laundry, however, are not liable for any damage due to normal laundering of items, cleaning of items without care instructions, for dry clean items placed inside Laundry Bags, for special-processing items (delicate-wash, air-dry, stain-treatment) not placed in a separate bag, damage resulting from items left in the clothing, bleeding of colors, shrinking or any other alteration resulting from normal washing procedures. Impress Laundry will follow any reasonable instructions provided by the customer, including water or drying temperatures. Impress Laundry do not read cleaning instruction labels and is not responsible for special care items, such as dry clean only items, which are included in the Laundry Bag. Although Impress Laundry use their best efforts to remove stains, stain removal is not guaranteed. Impress Laundry may refuse to clean any garment at their sole discretion. Impress Laundry will re-clean items that, in its sole discretion, were not properly cleaned and have not been worn since they were cleaned, at no additional cost. Laundry Care LLC and its subcontractors are not responsible for loss of or damage to any personal or non-cleanable items left in the clothing or laundry bags such as money, jewelry, or any other item. The customer agrees not to leave such items in their clothing or in their laundry bags. Zippers behave unpredictably while cleaning. Although zippers generally are not an issue, the customer is notified that there is a possibility of zipper issues while following normal wash procedures, and Impress Laundry does not accept any liability for such issues.<\\/p>\\r\\n\\t\\t<h4>\\r\\n\\t\\t\\tConfidentiality and Disclaimer<\\/h4>\\r\\n\\t\\t<p class=\\"text-justify\\">\\r\\n\\t\\t\\tImpress Laundry takes privacy and personal information seriously. Impress Laundry uses customer information to provide services, to process payment, facilitate billing, and for any other purpose reasonably necessary to provide services under this Agreement. Additionally, personal information may be disclosed when required by law necessary to enforce this Agreement or necessary to protect the rights, interests, property of safety of Impress Laundry. From time-to-time, we also may send merchant service announcements, newsletters, and periodic notices about specials and new products.<\\/p>\\r\\n\\t<\\/div>\\r\\n<\\/div>\\r\\n","fulltext":"","state":1,"catid":"2","created":"2017-05-22 22:49:55","created_by":"106","created_by_alias":"","modified":"2017-05-22 02:58:07","modified_by":"106","checked_out":"106","checked_out_time":"2017-05-22 02:57:56","publish_up":"2017-05-22 22:49:55","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":3,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"1","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(5, 1, 1, '', '2017-05-22 04:51:44', 106, 9271, '466e698e6aec9660b1bba28c73b3678c9e4a2378', '{"id":1,"asset_id":"89","title":"TERMS & CONDITIONS","alias":"terms-conditions","introtext":"<div id=\\"termstitle\\" class=\\"container-fluid\\">\\r\\n<h1>Terms and Conditions<\\/h1>\\r\\n<\\/div>\\r\\n<div id=\\"termscontent\\" class=\\"container-fluid\\">\\r\\n<div id=\\"terms\\">\\r\\n<h4>Terms and Conditions<\\/h4>\\r\\n<p class=\\"text-justify\\">Impress Laundry, is pleased to provide professional pick-up and delivery laundry services to our customers and offers quality and convenience at an affordable price. Our services are subject to the terms and conditions below. Your use of Impress Laundry indicates your agreement to be bound by the terms and conditions contained herein. Please read the following provisions carefully and let us know if you have any questions. We look forward to doing business with you! This agreement is strictly between Laundry Care LLC, its customers, and services provided by parties subcontracted by Impress Laundry, and does not in any way constitute or imply any relationship with any other parties.<\\/p>\\r\\n<h4>Pick-up\\/Delivery<\\/h4>\\r\\n<p class=\\"text-justify\\">Schedule. All services will be provided by Impress Laundry. Pick-up\\/Delivery will take place on a pre-determined day and frequency, except on certain holidays, as determined by you.Impress Laundry or you may change the pre-determined pick-up\\/delivery times, permanently or temporary, with advance notice by either you or Impress Laundry. Impress Laundry requires at least 1 day notice prior to any change. If you\\u2019d like to leave your items in a secure spot, it will be at your own risk. This is also true for delivery. Items left for pick up are not under our care until we have retrieved said items. Items left for delivery at the pre-determined location will not be under our care once they have been left at the agreed upon location.<\\/p>\\r\\n<h4>Procedure and Terms<\\/h4>\\r\\n<p class=\\"text-justify\\">Impress Laundry will provide each customer with a Laundry Care nylon\\/polyurethane Laundry Bag for a fee. Impress Laundry reserves the right, not to pick-up items that are not in these bags or 13 gallon sized trash bags. Weekly customers will purchase Impress Laundry bag(s) at the beginning of their service plan for a fee stated on the Impress Laundry website. A bag fee will be charged to the customer for replacement bags. Gift Card Recipients: Impress Laundry nylon\\/polyurethane Laundry Bags are not provided to Gift Card recipients. Items can be placed in 13 gallon sized trash bags or the equivalent thereof. Should you chose to request one of our Laundry Care bags, the fee for said bag will be deducted from your remaining Gift Card balance. If you chose to continue service after the full value of your Gift Card has been redeemed, you will be provided a Laundry Care bag and the fee will be applied to your invoice. Impress Laundry and its Providers\\/Partners are not responsible for, and shall not pay for, any loss, damage or theft of items left unattended by the customer for pick-up or delivery. Impress Laundry will not leave items in the possession of any other person that is not the owner of those items unless the owner has given consent. The customer is responsible for ensuring that his\\/her Laundry Bag is delivered safely to the LImpress Laundry.<\\/p>\\r\\n<h4>Missed\\/Unattended Pick-up or Delivery<\\/h4>\\r\\n<p class=\\"text-justify\\">If the customer misses a scheduled pick-up or delivery, the customer must coordinate with Impress Laundry to reschedule the pick-up or delivery during the next available day and time. Customer may be subject to a missed pick up fee or missed drop off fee for failing to notify their Provider\\/Partner 24 Hours prior to the scheduled pick-up\\/delivery. Gift Card Recipients: Fees assessed due to missed\\/unattended pick-up or delivery will be deducted from the remaining balance of your Gift Card.<\\/p>\\r\\n<h4>Refunds<\\/h4>\\r\\n<p class=\\"text-justify\\">Except as described in this paragraph, all sales are final and all payments are non-refundable. A customer who has signed up for a prepaid package plan or gift card will have the right to cancel his or her contract within fourteen (14) days of signing up for the Impress Laundry service and receive a full refund if no promotional value was received. After such fourteen day period, Impress Laundry shall have no obligation to refund any amounts paid by the customer. If a promotional value was received the sale is final and the payment is non-refundable.<\\/p>\\r\\n<h4>Garment Care<\\/h4>\\r\\n<p class=\\"text-justify\\">The customer agrees not to include any of the following items inside their Laundry Bag (i) non-washable items, (ii) items that are labeled for dry cleaning only, (iii) items that have been exposed to bed bugs or (iv) any other items not meant for laundering. Customer acknowledges that items that have been air-dried (per customer request or Laundry Care\\u2019s determination for best garment care) may be damp upon delivery. The customer is responsible for any and all damage caused by any items left in the customer\\u2019s clothing or Laundry Bag that causes damage to the clothing of any customer, the cleaning machines, or any other property of the Impress Laundry. Impress Laundry desires to provide high-quality laundering services and will use all reasonable precautions to avoid damage to clothes. Impress Laundry, however, are not liable for any damage due to normal laundering of items, cleaning of items without care instructions, for dry clean items placed inside Laundry Bags, for special processing items (delicate-wash, air-dry, stain-treatment) not placed in a separate bag, damage resulting from items left on the clothing, bleeding of colors, shrinking or any other alteration resulting from normal washing procedures. Impress Laundry will follow any reasonable instructions provided by the customer, including water or drying temperatures. Impress Laundry do not read cleaning instruction labels and is not responsible for special care items, such as dry clean only items, which are included in the Laundry Bag. Although Impress Laundry use their best efforts to remove stains, stain removal is not guaranteed. Impress Laundry may refuse to clean any garment at their sole discretion. Impress Laundry will re-clean items that, in its sole discretion, were not properly cleaned and have not been worn since they were cleaned, at no additional cost. Laundry Care LLC and its subcontractors are not responsible for a loss of or damage to any personal or non-cleanable items left in the clothing or laundry bags such as money, jewelry, or any other item. The customer agrees not to leave such items in their clothing or in their laundry bags. Zippers behave unpredictably while cleaning. Although zippers generally are not an issue, the customer is notified that there is a possibility of zipper issues while following normal wash procedures, and Impress Laundry does not accept any liability for such issues.<\\/p>\\r\\n<h4>Confidentiality and Disclaimer<\\/h4>\\r\\n<p class=\\"text-justify\\">Impress Laundry takes privacy and personal information seriously. Impress Laundry uses customer information to provide services, to process payment, facilitate billing, and for any other purpose reasonably necessary to provide services under this Agreement. Additionally, personal information may be disclosed when required by law necessary to enforce this Agreement or necessary to protect the rights, interests, property of safety of Impress Laundry. From time-to-time, we also may send merchant service announcements, newsletters, and periodic notices about specials and new products.<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>","fulltext":"","state":1,"catid":"2","created":"2017-05-22 22:49:55","created_by":"106","created_by_alias":"","modified":"2017-05-22 04:51:44","modified_by":"106","checked_out":"106","checked_out_time":"2017-05-22 04:50:29","publish_up":"2017-05-22 03:00:34","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":6,"ordering":"1","metakey":"","metadesc":"","access":"1","hits":"11","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(6, 2, 1, '', '2017-05-22 04:51:59', 106, 9277, 'a24074aa570896c0e7501346ff18b8a8cff57af6', '{"id":2,"asset_id":"90","title":"ABOUT US","alias":"about-us","introtext":"<div id=\\"abouttitle\\" class=\\"container-fluid\\">\\r\\n<h1>About us<\\/h1>\\r\\n<\\/div>\\r\\n<div id=\\"aboutcontent\\" class=\\"container-fluid\\"><!-------- PURPOSE ------>\\r\\n<div id=\\"purpose\\">\\r\\n<h4>- Our Purpose -<\\/h4>\\r\\n<p class=\\"text-justify\\">The purpose of the company is not only to get the laundry done but also offer excellent customer service along with an extensive range of laundry services. The platform joins the highest technology with the experienced and highly qualified professionals who will deal with the customer\'s laundry when it best suits the customer, paired with great deals and customer satisfaction. <br \\/><br \\/>The website will also offer customers different types of laundry combos, which they will be able to choose according to their needs and find a price that suits their budget. Basically, the users will have to access the online system, register and log in, choose their location, select laundry service combo according to their necessity, schedule a day and time for pickup and delivery and the rest will be up to the laundry professionals. Impress door-to-door service, coming to facilitate people\'s life.<\\/p>\\r\\n<\\/div>\\r\\n<!-------- TESTIMONIALS ------>\\r\\n<div id=\\"testimonials\\">\\r\\n<h4>- Testimonials -<\\/h4>\\r\\n<div class=\\"col-sm-4 testimonial\\">\\r\\n<blockquote>\\r\\n<p>\\"The \\u2018online laundry service\\u2019 software that we have been made aware of, appears to be very innovative and will expedite the laundry service used in every commercial laundry.\\"<\\/p>\\r\\n<h4><small>- Helen Psarakis - Marketing Director<\\/small><\\/h4>\\r\\n<\\/blockquote>\\r\\n<\\/div>\\r\\n<div class=\\"col-sm-4 testimonial\\">\\r\\n<blockquote>\\r\\n<p>\\"Wow, I\'m excited about this idea, I really do not have enough time to do this type of work and not even to take it to someone else to do it, so the possibility of having service to do all this process for me is the differential of this project.\\"<\\/p>\\r\\n<h4><small>- Eli Ramos - Architect<\\/small><\\/h4>\\r\\n<\\/blockquote>\\r\\n<\\/div>\\r\\n<div class=\\"col-sm-4 testimonial\\">\\r\\n<blockquote>\\r\\n<p>\\"I think having an online laundry service is an amazing idea, bieng able to save time and energy by bieng able to schedula a drop off and pick up date suited to my needs, all at touch of a button on my phone. It\'s just so easy\\"<\\/p>\\r\\n<h4><small>- Mary Clark - Mother of 4<\\/small><\\/h4>\\r\\n<\\/blockquote>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<!-------- FAQ ------>\\r\\n<div id=\\"faq\\">\\r\\n<h4>- F.A.Q -<\\/h4>\\r\\n<p class=\\"text-justify\\"><b><span style=\\"font-size: 30px;\\">Q. <\\/span>How do I get started?<\\/b><\\/p>\\r\\n<p class=\\"text-justify\\"><span style=\\"font-size: 30px;\\">A. <\\/span>Once you complete our online sign-up form, NEED NEXTSTEPS HERE <a href=\\"getStarted.html\\">Click here to get started now!<\\/a><\\/p>\\r\\n<br \\/><br \\/>\\r\\n<p class=\\"text-justify\\"><b><span style=\\"font-size: 30px;\\">Q. <\\/span>Do I need to prepare my laundry or sort it ahead of time?<\\/b><\\/p>\\r\\n<p class=\\"text-justify\\"><span style=\\"font-size: 30px;\\">A. <\\/span>Nope! Impress Laundry will sort, wash, dry, fold, package. If you have any special processing items (Delicate wash, sanitizing wash, stain treatment, air-dry, etc.) or other requests, notify Impress through a call or when you get your laundry picked up.<\\/p>\\r\\n<br \\/><br \\/>\\r\\n<p class=\\"text-justify\\"><b><span style=\\"font-size: 30px;\\">Q. <\\/span>How do I pay?<\\/b><\\/p>\\r\\n<p class=\\"text-justify\\"><span style=\\"font-size: 30px;\\">A. <\\/span>Paypal will be used when checking out, you will be charged according to your purchased combo.<\\/p>\\r\\n<br \\/><br \\/>\\r\\n<p class=\\"text-justify\\"><b><span style=\\"font-size: 30px;\\">Q. <\\/span>When will I get my clothes back?<\\/b><\\/p>\\r\\n<p class=\\"text-justify\\"><span style=\\"font-size: 30px;\\">A. <\\/span>you can arrange for your clothes to be picked up, weekly, bi-weekly, monthly, As-needed, One-time service<\\/p>\\r\\n<br \\/><br \\/>\\r\\n<p class=\\"text-justify\\"><b><span style=\\"font-size: 30px;\\">Q. <\\/span>What types of laundering requests do you accommodate?<\\/b><\\/p>\\r\\n<p class=\\"text-justify\\"><span style=\\"font-size: 30px;\\">A. <\\/span>We strive to provide you with a laundry service plan that is tailored to your needs. Some of our custom processing options include:<br \\/> <br \\/>Hypo-allergenic products<br \\/>Delicate Wash\\/dry<br \\/>Air-Dry<br \\/>Hand-wash<br \\/>Steam Press<br \\/>Iron Press<br \\/>Stain Treatments<br \\/>Sanitization<br \\/>AND MORE!<\\/p>\\r\\n<br \\/><br \\/>\\r\\n<p class=\\"text-justify\\"><b><span style=\\"font-size: 30px;\\">Q. <\\/span>What if I can\\u2019t be home for my scheduled pick-up or drop off?<\\/b><\\/p>\\r\\n<p class=\\"text-justify\\"><span style=\\"font-size: 30px;\\">A. <\\/span>You can leave your bag in a secure location outside your home (doorstep, porch, patio, reception desk etc.) or reschedule a day\\/time with Impress.<\\/p>\\r\\n<br \\/><br \\/>\\r\\n<p class=\\"text-justify\\"><b><span style=\\"font-size: 30px;\\">Q. <\\/span>I have allergies, do you use allergen-free products?<\\/b><\\/p>\\r\\n<p class=\\"text-justify\\"><span style=\\"font-size: 30px;\\">A. <\\/span>Be sure to inform Impress of any allergies to laundering and cleaning products you have. We always offer a hypo-allergenic option free of charge!<\\/p>\\r\\n<br \\/><br \\/>\\r\\n<p class=\\"text-justify\\"><b><span style=\\"font-size: 30px;\\">Q. <\\/span>How do I schedule a laundry pick-up (who?)<\\/b><\\/p>\\r\\n<p class=\\"text-justify\\"><span style=\\"font-size: 30px;\\">A. <\\/span>All scheduling is handled during combo selection and can be changed later on. You can also contact us at<a href=\\"contact.html\\"> Here<\\/a><\\/p>\\r\\n<br \\/><br \\/>\\r\\n<p class=\\"text-justify\\"><b><span style=\\"font-size: 30px;\\">Q. <\\/span>Are my clothes washed with other people\\u2019s clothes?<\\/b><\\/p>\\r\\n<p class=\\"text-justify\\"><span style=\\"font-size: 30px;\\">A. <\\/span>Absolutely not! Each bag is processed by itself. We will never clean your clothes with another customer\\u2019s clothing.<\\/p>\\r\\n<br \\/><br \\/>\\r\\n<p class=\\"text-justify\\"><b><span style=\\"font-size: 30px;\\">Q. <\\/span>What if I am missing an item of clothing from my returned bag?<\\/b><\\/p>\\r\\n<p class=\\"text-justify\\"><span style=\\"font-size: 30px;\\">A. <\\/span>Although not required, you can complete an inventory sheet prior to pick-up that details all items found within your bag. You will keep the original sheet and we will keep a copy. <br \\/>Please notify Impress of any missing items listed on the inventory sheet within 48 hours of drop off. If your item is not located after further investigation, we will reimburse you an amount equal to your proof of purchase amount, limited to a maximum of $100.00USD and a maximum total of $200.00USD per customer.<\\/p>\\r\\n<br \\/><br \\/><\\/div>\\r\\n<!-------- TEAM (FEATURE) ------>\\r\\n<div id=\\"team\\">\\r\\n<h4>- Team -<\\/h4>\\r\\n<div class=\\"row\\">\\r\\n<div class=\\"col-sm-3\\"><img class=\\"img-circle\\" src=\\"images\\/face1.png\\" width=\\"120px\\" height=\\"140px\\" \\/>\\r\\n<h4>Pablo Vieira<br \\/><small>The Owner<\\/small><\\/h4>\\r\\n<\\/div>\\r\\n<div class=\\"col-sm-3\\"><img class=\\"img-circle\\" src=\\"images\\/face2.png\\" width=\\"120px\\" height=\\"140px\\" \\/>\\r\\n<h4>Kaio Labre<br \\/><small>Proj. Manager<\\/small><\\/h4>\\r\\n<\\/div>\\r\\n<div class=\\"col-sm-3\\"><img class=\\"img-circle\\" src=\\"images\\/face3.png\\" width=\\"120px\\" height=\\"140px\\" \\/>\\r\\n<h4>Shiv<br \\/><small>Front-end<\\/small><\\/h4>\\r\\n<\\/div>\\r\\n<div class=\\"col-sm-3\\"><img class=\\"img-circle\\" src=\\"images\\/face4.png\\" width=\\"120px\\" height=\\"140px\\" \\/>\\r\\n<h4>Andy<br \\/><small>Back-end<\\/small><\\/h4>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>","fulltext":"","state":1,"catid":"2","created":"2017-05-22 04:50:23","created_by":"106","created_by_alias":"","modified":"2017-05-22 04:51:59","modified_by":"106","checked_out":"106","checked_out_time":"2017-05-22 04:51:55","publish_up":"2017-05-22 04:50:23","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":3,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0);
INSERT INTO `fv5oz_ucm_history` (`version_id`, `ucm_item_id`, `ucm_type_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`) VALUES
(7, 3, 1, '', '2017-05-22 04:53:51', 106, 8028, 'b63be2586a29cc030f30f80eaeb85fde8f7c71cf', '{"id":3,"asset_id":91,"title":"PRIVACY POLICY","alias":"privacy-policy","introtext":"<div id=\\"termstitle\\" class=\\"container-fluid\\">\\r\\n<h1>Privacy Policy<\\/h1>\\r\\n<\\/div>\\r\\n<div id=\\"termscontent\\" class=\\"container-fluid\\"><!-------- PURPOSE ------>\\r\\n<div id=\\"terms\\">\\r\\n<h4>Privacy Policy<\\/h4>\\r\\n<p class=\\"text-justify\\">This Privacy Policy describes your privacy rights regarding our collection, use, storage, sharing and protection of your personal information. It applies to the Impress website and all related sites, applications, services and tools regardless of how you access or use them.<\\/p>\\r\\n<p>You accept this Privacy Policy when you sign up for, access, or use our services, content, features, technologies or functions offered on our website and all related sites, applications, and services (collectively \\u201cImpress Laundry Care Services\\u201d). We may amend this policy at any time by posting a revised version on our website. The revised version will be effective at the time we post it. In addition, if the revised version includes a substantial change, we will provide you with 30 days\\u2019 prior notice by emailing you a notice of the change at the email address you provided during service sign up.<\\/p>\\r\\n<br \\/>\\r\\n<h3>How we collect information about you<\\/h3>\\r\\n<br \\/>\\r\\n<p>When you sign up for service through the Impress website, you voluntarily provide us with your contact information including your address, phone number, and email address as well as your financial information. This information is collected so that we can accurately perform pick up and drop off services and so that we can communicate with you regarding your laundry services.<\\/p>\\r\\n<br \\/>\\r\\n<h3>If you open an Impress account, we may collect the following types of information:<\\/h3>\\r\\n<br \\/>\\r\\n<p>Contact information, such as your name, address, phone, email and other similar information.<br \\/><br \\/>Financial information, such as the full bank account numbers and\\/or credit card numbers that you give us when you use Impress Services.<br \\/><br \\/>Detailed cleaning preferences that pertain to your garments.<br \\/><br \\/>You may choose to provide us with access to certain personal information stored by third parties such as social media sites (e.g., Facebook and Twitter). This is done when you voluntarily \\u201clike\\u201d our Facebook Page or when you voluntarily \\u201cfollow\\u201d of Twitter Page. The information we may receive varies by site and is controlled by that site. By associating an account managed by a third party with your Impress account and authorizing Impress to have access to this information, you agree that Impress may collect, store and use this information in accordance with this Privacy Policy.<br \\/><br \\/>We may also collect additional information from or about you in other ways, such as through contact with our customer support team, results when you respond to a survey and from interactions with associates\\/representatives of Impress.<\\/p>\\r\\n<br \\/>\\r\\n<h3>How we protect and store personal information<\\/h3>\\r\\n<br \\/>\\r\\n<p>Throughout this policy, we use the term \\u201cpersonal information\\u201d to describe information that can be associated with a specific person and can be used to identify that person. We do not consider personal information to include information that has been made anonymous so that it does not identify a specific user.<br \\/><br \\/>We store and process your personal information on our computers in the US. We protect your information using physical, technical, and administrative security measures to reduce the risks of loss, misuse, unauthorized access, disclosure, and alteration. Some of the safeguards we use are physical access controls to your data and information access authorization controls.<\\/p>\\r\\n<br \\/>\\r\\n<h3>How we share personal information with other parties<\\/h3>\\r\\n<br \\/>\\r\\n<p>We may share your personal information with:<br \\/>Impress Associates and Mentors \\u2013 individuals who provide laundry service to you or your business.<br \\/><br \\/>Service providers who help with our business operations such as fraud prevention, accounting, marketing, and technology services. These service providers only use your information in connection with the services they perform for us and not for their own benefit.<br \\/><br \\/>Credit bureaus and collection agencies to report account information, as permitted by law.<br \\/><br \\/>Companies that we plan to merge with or are acquired by. (Should such a combination occur, we will require that the new combined entity follows this privacy policy with respect to your personal information. If your personal information could be used contrary to this policy, you will receive prior notice.)<br \\/><br \\/>Law enforcement, government officials, or other third parties pursuant to a subpoena, court order, or other legal process or requirement applicable to Impress or one of its affiliates; when we need to do so to comply with law or credit card rules; or when we believe, in our sole discretion, that the disclosure of personal information is necessary to prevent physical harm or financial loss, to report suspected illegal activity or to investigate violations of our Terms of Service.<br \\/><br \\/>Other third parties with your consent or direction to do so.<br \\/><br \\/>Impress will not sell or rent any of your personal information to third parties for their marketing purposes and only shares your personal information with third parties as described in this policy.<\\/p>\\r\\n<br \\/>\\r\\n<h3>How you can access or change your personal information<\\/h3>\\r\\n<br \\/>\\r\\n<p>You can edit your personal and payment information at any time by submitting changes through the online, sign up form. You can close your account through written request sent to AITLaundry@gmail.com. If you close your Impress account, we will mark your account in our database as \\u201cClosed,\\u201d but may retain personal information from your account to collect any fees owed, resolve disputes, troubleshoot problems, assist with any investigations, prevent fraud, enforce our Terms of Service, or take other actions as required or permitted by law.<br \\/><br \\/>How you can contact us about privacy questions<br \\/><br \\/>If you have questions or concerns regarding this policy, you should contact us <a href=\\"contact.html\\"> Here<\\/a><\\/p>\\r\\n<\\/div>\\r\\n<\\/div>","fulltext":"","state":1,"catid":"2","created":"2017-05-22 04:53:51","created_by":"106","created_by_alias":"","modified":"2017-05-22 04:53:51","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2017-05-22 04:53:51","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(8, 4, 1, '', '2017-05-22 09:50:35', 106, 2814, '75b05ad4e6abc6b1305a5e66ea30cbde4ec5b0bb', '{"id":4,"asset_id":92,"title":"CONTACT US","alias":"contact-us","introtext":"<div id=\\"contacttitle\\" class=\\"container-fluid\\">\\r\\n<h1>Contact Us<\\/h1>\\r\\n<\\/div>\\r\\n<!--Contact form-->\\r\\n<div id=\\"contactcontent\\" class=\\"container-fluid\\"><form action=\\"contactForm.php\\" method=\\"post\\"><!--Enter action-->\\r\\n<div class=\\"form-group\\"><label for=\\"inputName\\">Name<\\/label> <input id=\\"inputName\\" class=\\"form-control\\" required=\\"\\" type=\\"text\\" placeholder=\\"Name\\" \\/><\\/div>\\r\\n<div class=\\"form-group\\"><label for=\\"inputEmail\\">Email address<\\/label> <input id=\\"inputEmail\\" class=\\"form-control\\" required=\\"\\" type=\\"email\\" placeholder=\\"Email\\" \\/><\\/div>\\r\\n<div class=\\"form-group\\"><label for=\\"inputPhone\\">Phone number<\\/label> <input id=\\"inputPhone\\" class=\\"form-control\\" pattern=\\"^0[0-8]\\\\d{8}$\\" required=\\"\\" type=\\"tel\\" placeholder=\\"Phone\\" \\/><\\/div>\\r\\n<div class=\\"form-group\\"><label for=\\"inputFeedback\\">Feedback<\\/label> <textarea id=\\"inputFeedback\\" class=\\"form-control\\" required=\\"\\" rows=\\"6\\" placeholder=\\"Enter Feedback\\"><\\/textarea><\\/div>\\r\\n<button id=\\"btnStyleContact\\" class=\\"btn btn-default\\" type=\\"submit\\">Submit<\\/button><\\/form><\\/div>","fulltext":"","state":1,"catid":"2","created":"2017-05-22 09:50:35","created_by":"106","created_by_alias":"","modified":"2017-05-22 09:50:35","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2017-05-22 09:50:35","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(9, 2, 5, '', '2017-05-22 10:09:02', 106, 589, '69808dddda8df48f73a688e28680a644888e6785', '{"id":2,"asset_id":"27","parent_id":"1","lft":"1","rgt":"2","level":"1","path":"uncategorised","extension":"com_content","title":"others","alias":"uncategorised","note":"","description":"","published":"1","checked_out":"106","checked_out_time":"2017-05-22 10:08:38","access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\",\\"image_alt\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"106","created_time":"2011-01-01 00:00:01","modified_user_id":"106","modified_time":"2017-05-22 10:09:02","hits":"0","language":"*","version":"1"}', 0),
(10, 2, 5, '', '2017-05-22 10:09:51', 106, 580, 'c030bb2c94e6840c0f6e4b1632d488d4e128e3c6', '{"id":2,"asset_id":"27","parent_id":"1","lft":"1","rgt":"2","level":"1","path":"uncategorised","extension":"com_content","title":"other","alias":"other","note":"","description":"","published":"1","checked_out":"106","checked_out_time":"2017-05-22 10:09:37","access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\",\\"image_alt\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"106","created_time":"2011-01-01 00:00:01","modified_user_id":"106","modified_time":"2017-05-22 10:09:51","hits":"0","language":"*","version":"1"}', 0),
(11, 2, 1, '', '2017-05-24 01:48:36', 106, 9297, 'a8d7eb253cb1a43899b376cb45c3d3afd1b62be2', '{"id":2,"asset_id":"90","title":"ABOUT US","alias":"about-us","introtext":"<div id=\\"abouttitle\\" class=\\"container-fluid\\">\\r\\n<h1>About us<\\/h1>\\r\\n<\\/div>\\r\\n<div id=\\"aboutcontent\\" class=\\"container-fluid\\"><!-------- PURPOSE ------>\\r\\n<div id=\\"purpose\\">\\r\\n<h4>- Our Purpose -<\\/h4>\\r\\n<p class=\\"text-justify\\">The purpose of the company is not only to get the laundry done but also offer excellent customer service along with an extensive range of laundry services. The platform joins the highest technology with the experienced and highly qualified professionals who will deal with the customer\'s laundry when it best suits the customer, paired with great deals and customer satisfaction. <br \\/><br \\/>The website will also offer customers different types of laundry combos, which they will be able to choose according to their needs and find a price that suits their budget. Basically, the users will have to access the online system, register and log in, choose their location, select laundry service combo according to their necessity, schedule a day and time for pickup and delivery and the rest will be up to the laundry professionals. Impress door-to-door service, coming to facilitate people\'s life.<\\/p>\\r\\n<\\/div>\\r\\n<!-------- TESTIMONIALS ------>\\r\\n<div id=\\"testimonials\\">\\r\\n<h4>- Testimonials -<\\/h4>\\r\\n<div class=\\"col-sm-4 testimonial\\">\\r\\n<blockquote>\\r\\n<p>\\"The \\u2018online laundry service\\u2019 software that we have been made aware of, appears to be very innovative and will expedite the laundry service used in every commercial laundry.\\"<\\/p>\\r\\n<h4><small>- Helen Psarakis - Marketing Director<\\/small><\\/h4>\\r\\n<\\/blockquote>\\r\\n<\\/div>\\r\\n<div class=\\"col-sm-4 testimonial\\">\\r\\n<blockquote>\\r\\n<p>\\"Wow, I\'m excited about this idea, I really do not have enough time to do this type of work and not even to take it to someone else to do it, so the possibility of having service to do all this process for me is the differential of this project.\\"<\\/p>\\r\\n<h4><small>- Eli Ramos - Architect<\\/small><\\/h4>\\r\\n<\\/blockquote>\\r\\n<\\/div>\\r\\n<div class=\\"col-sm-4 testimonial\\">\\r\\n<blockquote>\\r\\n<p id=\\"testimonial\\">\\"I think having an online laundry service is an amazing idea, bieng able to save time and energy by bieng able to schedula a drop off and pick up date suited to my needs, all at touch of a button on my phone. It\'s just so easy\\"<\\/p>\\r\\n<h4><small>- Mary Clark - Mother of 4<\\/small><\\/h4>\\r\\n<\\/blockquote>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<!-------- FAQ ------>\\r\\n<div id=\\"faq\\">\\r\\n<h4>- F.A.Q -<\\/h4>\\r\\n<p class=\\"text-justify\\"><b><span style=\\"font-size: 30px;\\">Q. <\\/span>How do I get started?<\\/b><\\/p>\\r\\n<p class=\\"text-justify\\"><span style=\\"font-size: 30px;\\">A. <\\/span>Once you complete our online sign-up form, NEED NEXTSTEPS HERE <a href=\\"getStarted.html\\">Click here to get started now!<\\/a><\\/p>\\r\\n<br \\/><br \\/>\\r\\n<p class=\\"text-justify\\"><b><span style=\\"font-size: 30px;\\">Q. <\\/span>Do I need to prepare my laundry or sort it ahead of time?<\\/b><\\/p>\\r\\n<p class=\\"text-justify\\"><span style=\\"font-size: 30px;\\">A. <\\/span>Nope! Impress Laundry will sort, wash, dry, fold, package. If you have any special processing items (Delicate wash, sanitizing wash, stain treatment, air-dry, etc.) or other requests, notify Impress through a call or when you get your laundry picked up.<\\/p>\\r\\n<br \\/><br \\/>\\r\\n<p class=\\"text-justify\\"><b><span style=\\"font-size: 30px;\\">Q. <\\/span>How do I pay?<\\/b><\\/p>\\r\\n<p class=\\"text-justify\\"><span style=\\"font-size: 30px;\\">A. <\\/span>Paypal will be used when checking out, you will be charged according to your purchased combo.<\\/p>\\r\\n<br \\/><br \\/>\\r\\n<p class=\\"text-justify\\"><b><span style=\\"font-size: 30px;\\">Q. <\\/span>When will I get my clothes back?<\\/b><\\/p>\\r\\n<p class=\\"text-justify\\"><span style=\\"font-size: 30px;\\">A. <\\/span>you can arrange for your clothes to be picked up, weekly, bi-weekly, monthly, As-needed, One-time service<\\/p>\\r\\n<br \\/><br \\/>\\r\\n<p class=\\"text-justify\\"><b><span style=\\"font-size: 30px;\\">Q. <\\/span>What types of laundering requests do you accommodate?<\\/b><\\/p>\\r\\n<p class=\\"text-justify\\"><span style=\\"font-size: 30px;\\">A. <\\/span>We strive to provide you with a laundry service plan that is tailored to your needs. Some of our custom processing options include:<br \\/> <br \\/>Hypo-allergenic products<br \\/>Delicate Wash\\/dry<br \\/>Air-Dry<br \\/>Hand-wash<br \\/>Steam Press<br \\/>Iron Press<br \\/>Stain Treatments<br \\/>Sanitization<br \\/>AND MORE!<\\/p>\\r\\n<br \\/><br \\/>\\r\\n<p class=\\"text-justify\\"><b><span style=\\"font-size: 30px;\\">Q. <\\/span>What if I can\\u2019t be home for my scheduled pick-up or drop off?<\\/b><\\/p>\\r\\n<p class=\\"text-justify\\"><span style=\\"font-size: 30px;\\">A. <\\/span>You can leave your bag in a secure location outside your home (doorstep, porch, patio, reception desk etc.) or reschedule a day\\/time with Impress.<\\/p>\\r\\n<br \\/><br \\/>\\r\\n<p class=\\"text-justify\\"><b><span style=\\"font-size: 30px;\\">Q. <\\/span>I have allergies, do you use allergen-free products?<\\/b><\\/p>\\r\\n<p class=\\"text-justify\\"><span style=\\"font-size: 30px;\\">A. <\\/span>Be sure to inform Impress of any allergies to laundering and cleaning products you have. We always offer a hypo-allergenic option free of charge!<\\/p>\\r\\n<br \\/><br \\/>\\r\\n<p class=\\"text-justify\\"><b><span style=\\"font-size: 30px;\\">Q. <\\/span>How do I schedule a laundry pick-up (who?)<\\/b><\\/p>\\r\\n<p class=\\"text-justify\\"><span style=\\"font-size: 30px;\\">A. <\\/span>All scheduling is handled during combo selection and can be changed later on. You can also contact us at<a href=\\"contact.html\\"> Here<\\/a><\\/p>\\r\\n<br \\/><br \\/>\\r\\n<p class=\\"text-justify\\"><b><span style=\\"font-size: 30px;\\">Q. <\\/span>Are my clothes washed with other people\\u2019s clothes?<\\/b><\\/p>\\r\\n<p class=\\"text-justify\\"><span style=\\"font-size: 30px;\\">A. <\\/span>Absolutely not! Each bag is processed by itself. We will never clean your clothes with another customer\\u2019s clothing.<\\/p>\\r\\n<br \\/><br \\/>\\r\\n<p class=\\"text-justify\\"><b><span style=\\"font-size: 30px;\\">Q. <\\/span>What if I am missing an item of clothing from my returned bag?<\\/b><\\/p>\\r\\n<p class=\\"text-justify\\"><span style=\\"font-size: 30px;\\">A. <\\/span>Although not required, you can complete an inventory sheet prior to pick-up that details all items found within your bag. You will keep the original sheet and we will keep a copy. <br \\/>Please notify Impress of any missing items listed on the inventory sheet within 48 hours of drop off. If your item is not located after further investigation, we will reimburse you an amount equal to your proof of purchase amount, limited to a maximum of $100.00USD and a maximum total of $200.00USD per customer.<\\/p>\\r\\n<br \\/><br \\/><\\/div>\\r\\n<!-------- TEAM (FEATURE) ------>\\r\\n<div id=\\"team\\">\\r\\n<h4>- Team -<\\/h4>\\r\\n<div class=\\"row\\">\\r\\n<div class=\\"col-sm-3\\"><img class=\\"img-circle\\" src=\\"images\\/face1.png\\" width=\\"120px\\" height=\\"140px\\" \\/>\\r\\n<h4>Pablo Vieira<br \\/><small>The Owner<\\/small><\\/h4>\\r\\n<\\/div>\\r\\n<div class=\\"col-sm-3\\"><img class=\\"img-circle\\" src=\\"images\\/face2.png\\" width=\\"120px\\" height=\\"140px\\" \\/>\\r\\n<h4>Kaio Labre<br \\/><small>Proj. Manager<\\/small><\\/h4>\\r\\n<\\/div>\\r\\n<div class=\\"col-sm-3\\"><img class=\\"img-circle\\" src=\\"images\\/face3.png\\" width=\\"120px\\" height=\\"140px\\" \\/>\\r\\n<h4>Shiv<br \\/><small>Front-end<\\/small><\\/h4>\\r\\n<\\/div>\\r\\n<div class=\\"col-sm-3\\"><img class=\\"img-circle\\" src=\\"images\\/face4.png\\" width=\\"120px\\" height=\\"140px\\" \\/>\\r\\n<h4>Andy<br \\/><small>Back-end<\\/small><\\/h4>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>","fulltext":"","state":1,"catid":"2","created":"2017-05-22 04:50:23","created_by":"106","created_by_alias":"","modified":"2017-05-24 01:48:36","modified_by":"106","checked_out":"106","checked_out_time":"2017-05-24 01:48:08","publish_up":"2017-05-22 04:50:23","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":4,"ordering":"2","metakey":"","metadesc":"","access":"1","hits":"43","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(12, 2, 1, '', '2017-05-24 01:50:31', 106, 9319, 'dc349aff5640cb8cd7638dcb920aab26b2077f19', '{"id":2,"asset_id":"90","title":"ABOUT US","alias":"about-us","introtext":"<div id=\\"abouttitle\\" class=\\"container-fluid\\">\\r\\n<h1>About us<\\/h1>\\r\\n<\\/div>\\r\\n<div id=\\"aboutcontent\\" class=\\"container-fluid\\"><!-------- PURPOSE ------>\\r\\n<div id=\\"purpose\\">\\r\\n<h4>- Our Purpose -<\\/h4>\\r\\n<p class=\\"text-justify\\">The purpose of the company is not only to get the laundry done but also offer excellent customer service along with an extensive range of laundry services. The platform joins the highest technology with the experienced and highly qualified professionals who will deal with the customer\'s laundry when it best suits the customer, paired with great deals and customer satisfaction. <br \\/><br \\/>The website will also offer customers different types of laundry combos, which they will be able to choose according to their needs and find a price that suits their budget. Basically, the users will have to access the online system, register and log in, choose their location, select laundry service combo according to their necessity, schedule a day and time for pickup and delivery and the rest will be up to the laundry professionals. Impress door-to-door service, coming to facilitate people\'s life.<\\/p>\\r\\n<\\/div>\\r\\n<!-------- TESTIMONIALS ------>\\r\\n<div id=\\"testimonials\\">\\r\\n<h4>- Testimonials -<\\/h4>\\r\\n<div class=\\"col-sm-4 testimonial\\">\\r\\n<blockquote>\\r\\n<p>\\"The \\u2018online laundry service\\u2019 software that we have been made aware of, appears to be very innovative and will expedite the laundry service used in every commercial laundry.\\"<\\/p>\\r\\n<h4><small>- Helen Psarakis - Marketing Director<\\/small><\\/h4>\\r\\n<\\/blockquote>\\r\\n<\\/div>\\r\\n<div class=\\"col-sm-4 testimonial\\">\\r\\n<blockquote>\\r\\n<p>\\"Wow, I\'m excited about this idea, I really do not have enough time to do this type of work and not even to take it to someone else to do it, so the possibility of having service to do all this process for me is the differential of this project.\\"<\\/p>\\r\\n<h4><small>- Eli Ramos - Architect<\\/small><\\/h4>\\r\\n<\\/blockquote>\\r\\n<\\/div>\\r\\n<div class=\\"col-sm-4 testimonial\\">\\r\\n<blockquote>\\r\\n<p>\\"I think having an online laundry service is an amazing idea, bieng able to save time and energy by bieng able to schedula a drop off and pick up date suited to my needs, all at touch of a button on my phone. It\'s just so easy\\"<\\/p>\\r\\n<h4><small>- Mary Clark - Mother of 4<\\/small><\\/h4>\\r\\n<\\/blockquote>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<div id=\\"testimonial\\">\\u00a0<\\/div>\\r\\n<!-------- FAQ ------>\\r\\n<div id=\\"faq\\">\\r\\n<h4>- F.A.Q -<\\/h4>\\r\\n<p class=\\"text-justify\\"><b><span style=\\"font-size: 30px;\\">Q. <\\/span>How do I get started?<\\/b><\\/p>\\r\\n<p class=\\"text-justify\\"><span style=\\"font-size: 30px;\\">A. <\\/span>Once you complete our online sign-up form, NEED NEXTSTEPS HERE <a href=\\"getStarted.html\\">Click here to get started now!<\\/a><\\/p>\\r\\n<br \\/><br \\/>\\r\\n<p class=\\"text-justify\\"><b><span style=\\"font-size: 30px;\\">Q. <\\/span>Do I need to prepare my laundry or sort it ahead of time?<\\/b><\\/p>\\r\\n<p class=\\"text-justify\\"><span style=\\"font-size: 30px;\\">A. <\\/span>Nope! Impress Laundry will sort, wash, dry, fold, package. If you have any special processing items (Delicate wash, sanitizing wash, stain treatment, air-dry, etc.) or other requests, notify Impress through a call or when you get your laundry picked up.<\\/p>\\r\\n<br \\/><br \\/>\\r\\n<p class=\\"text-justify\\"><b><span style=\\"font-size: 30px;\\">Q. <\\/span>How do I pay?<\\/b><\\/p>\\r\\n<p class=\\"text-justify\\"><span style=\\"font-size: 30px;\\">A. <\\/span>Paypal will be used when checking out, you will be charged according to your purchased combo.<\\/p>\\r\\n<br \\/><br \\/>\\r\\n<p class=\\"text-justify\\"><b><span style=\\"font-size: 30px;\\">Q. <\\/span>When will I get my clothes back?<\\/b><\\/p>\\r\\n<p class=\\"text-justify\\"><span style=\\"font-size: 30px;\\">A. <\\/span>you can arrange for your clothes to be picked up, weekly, bi-weekly, monthly, As-needed, One-time service<\\/p>\\r\\n<br \\/><br \\/>\\r\\n<p class=\\"text-justify\\"><b><span style=\\"font-size: 30px;\\">Q. <\\/span>What types of laundering requests do you accommodate?<\\/b><\\/p>\\r\\n<p class=\\"text-justify\\"><span style=\\"font-size: 30px;\\">A. <\\/span>We strive to provide you with a laundry service plan that is tailored to your needs. Some of our custom processing options include:<br \\/> <br \\/>Hypo-allergenic products<br \\/>Delicate Wash\\/dry<br \\/>Air-Dry<br \\/>Hand-wash<br \\/>Steam Press<br \\/>Iron Press<br \\/>Stain Treatments<br \\/>Sanitization<br \\/>AND MORE!<\\/p>\\r\\n<br \\/><br \\/>\\r\\n<p class=\\"text-justify\\"><b><span style=\\"font-size: 30px;\\">Q. <\\/span>What if I can\\u2019t be home for my scheduled pick-up or drop off?<\\/b><\\/p>\\r\\n<p class=\\"text-justify\\"><span style=\\"font-size: 30px;\\">A. <\\/span>You can leave your bag in a secure location outside your home (doorstep, porch, patio, reception desk etc.) or reschedule a day\\/time with Impress.<\\/p>\\r\\n<br \\/><br \\/>\\r\\n<p class=\\"text-justify\\"><b><span style=\\"font-size: 30px;\\">Q. <\\/span>I have allergies, do you use allergen-free products?<\\/b><\\/p>\\r\\n<p class=\\"text-justify\\"><span style=\\"font-size: 30px;\\">A. <\\/span>Be sure to inform Impress of any allergies to laundering and cleaning products you have. We always offer a hypo-allergenic option free of charge!<\\/p>\\r\\n<br \\/><br \\/>\\r\\n<p class=\\"text-justify\\"><b><span style=\\"font-size: 30px;\\">Q. <\\/span>How do I schedule a laundry pick-up (who?)<\\/b><\\/p>\\r\\n<p class=\\"text-justify\\"><span style=\\"font-size: 30px;\\">A. <\\/span>All scheduling is handled during combo selection and can be changed later on. You can also contact us at<a href=\\"contact.html\\"> Here<\\/a><\\/p>\\r\\n<br \\/><br \\/>\\r\\n<p class=\\"text-justify\\"><b><span style=\\"font-size: 30px;\\">Q. <\\/span>Are my clothes washed with other people\\u2019s clothes?<\\/b><\\/p>\\r\\n<p class=\\"text-justify\\"><span style=\\"font-size: 30px;\\">A. <\\/span>Absolutely not! Each bag is processed by itself. We will never clean your clothes with another customer\\u2019s clothing.<\\/p>\\r\\n<br \\/><br \\/>\\r\\n<p class=\\"text-justify\\"><b><span style=\\"font-size: 30px;\\">Q. <\\/span>What if I am missing an item of clothing from my returned bag?<\\/b><\\/p>\\r\\n<p class=\\"text-justify\\"><span style=\\"font-size: 30px;\\">A. <\\/span>Although not required, you can complete an inventory sheet prior to pick-up that details all items found within your bag. You will keep the original sheet and we will keep a copy. <br \\/>Please notify Impress of any missing items listed on the inventory sheet within 48 hours of drop off. If your item is not located after further investigation, we will reimburse you an amount equal to your proof of purchase amount, limited to a maximum of $100.00USD and a maximum total of $200.00USD per customer.<\\/p>\\r\\n<br \\/><br \\/><\\/div>\\r\\n<!-------- TEAM (FEATURE) ------>\\r\\n<div id=\\"team\\">\\r\\n<h4>- Team -<\\/h4>\\r\\n<div class=\\"row\\">\\r\\n<div class=\\"col-sm-3\\"><img class=\\"img-circle\\" src=\\"images\\/face1.png\\" width=\\"120px\\" height=\\"140px\\" \\/>\\r\\n<h4>Pablo Vieira<br \\/><small>The Owner<\\/small><\\/h4>\\r\\n<\\/div>\\r\\n<div class=\\"col-sm-3\\"><img class=\\"img-circle\\" src=\\"images\\/face2.png\\" width=\\"120px\\" height=\\"140px\\" \\/>\\r\\n<h4>Kaio Labre<br \\/><small>Proj. Manager<\\/small><\\/h4>\\r\\n<\\/div>\\r\\n<div class=\\"col-sm-3\\"><img class=\\"img-circle\\" src=\\"images\\/face3.png\\" width=\\"120px\\" height=\\"140px\\" \\/>\\r\\n<h4>Shiv<br \\/><small>Front-end<\\/small><\\/h4>\\r\\n<\\/div>\\r\\n<div class=\\"col-sm-3\\"><img class=\\"img-circle\\" src=\\"images\\/face4.png\\" width=\\"120px\\" height=\\"140px\\" \\/>\\r\\n<h4>Andy<br \\/><small>Back-end<\\/small><\\/h4>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>","fulltext":"","state":1,"catid":"2","created":"2017-05-22 04:50:23","created_by":"106","created_by_alias":"","modified":"2017-05-24 01:50:31","modified_by":"106","checked_out":"106","checked_out_time":"2017-05-24 01:50:01","publish_up":"2017-05-22 04:50:23","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":5,"ordering":"2","metakey":"","metadesc":"","access":"1","hits":"46","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(13, 2, 1, '', '2017-05-24 01:51:13', 106, 9319, '1d304736b53e521a90d2bd59afa4f1324dbc1dd0', '{"id":2,"asset_id":"90","title":"ABOUT US","alias":"about-us","introtext":"<div id=\\"abouttitle\\" class=\\"container-fluid\\">\\r\\n<h1>About us<\\/h1>\\r\\n<\\/div>\\r\\n<div id=\\"aboutcontent\\" class=\\"container-fluid\\"><!-------- PURPOSE ------>\\r\\n<div id=\\"purpose\\">\\r\\n<h4>- Our Purpose -<\\/h4>\\r\\n<p class=\\"text-justify\\">The purpose of the company is not only to get the laundry done but also offer excellent customer service along with an extensive range of laundry services. The platform joins the highest technology with the experienced and highly qualified professionals who will deal with the customer\'s laundry when it best suits the customer, paired with great deals and customer satisfaction. <br \\/><br \\/>The website will also offer customers different types of laundry combos, which they will be able to choose according to their needs and find a price that suits their budget. Basically, the users will have to access the online system, register and log in, choose their location, select laundry service combo according to their necessity, schedule a day and time for pickup and delivery and the rest will be up to the laundry professionals. Impress door-to-door service, coming to facilitate people\'s life.<\\/p>\\r\\n<\\/div>\\r\\n<div id=\\"testimonial\\">\\u00a0<\\/div>\\r\\n<!-------- TESTIMONIALS ------>\\r\\n<div id=\\"testimonials\\">\\r\\n<h4>- Testimonials -<\\/h4>\\r\\n<div class=\\"col-sm-4 testimonial\\">\\r\\n<blockquote>\\r\\n<p>\\"The \\u2018online laundry service\\u2019 software that we have been made aware of, appears to be very innovative and will expedite the laundry service used in every commercial laundry.\\"<\\/p>\\r\\n<h4><small>- Helen Psarakis - Marketing Director<\\/small><\\/h4>\\r\\n<\\/blockquote>\\r\\n<\\/div>\\r\\n<div class=\\"col-sm-4 testimonial\\">\\r\\n<blockquote>\\r\\n<p>\\"Wow, I\'m excited about this idea, I really do not have enough time to do this type of work and not even to take it to someone else to do it, so the possibility of having service to do all this process for me is the differential of this project.\\"<\\/p>\\r\\n<h4><small>- Eli Ramos - Architect<\\/small><\\/h4>\\r\\n<\\/blockquote>\\r\\n<\\/div>\\r\\n<div class=\\"col-sm-4 testimonial\\">\\r\\n<blockquote>\\r\\n<p>\\"I think having an online laundry service is an amazing idea, bieng able to save time and energy by bieng able to schedula a drop off and pick up date suited to my needs, all at touch of a button on my phone. It\'s just so easy\\"<\\/p>\\r\\n<h4><small>- Mary Clark - Mother of 4<\\/small><\\/h4>\\r\\n<\\/blockquote>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<!-------- FAQ ------>\\r\\n<div id=\\"faq\\">\\r\\n<h4>- F.A.Q -<\\/h4>\\r\\n<p class=\\"text-justify\\"><b><span style=\\"font-size: 30px;\\">Q. <\\/span>How do I get started?<\\/b><\\/p>\\r\\n<p class=\\"text-justify\\"><span style=\\"font-size: 30px;\\">A. <\\/span>Once you complete our online sign-up form, NEED NEXTSTEPS HERE <a href=\\"getStarted.html\\">Click here to get started now!<\\/a><\\/p>\\r\\n<br \\/><br \\/>\\r\\n<p class=\\"text-justify\\"><b><span style=\\"font-size: 30px;\\">Q. <\\/span>Do I need to prepare my laundry or sort it ahead of time?<\\/b><\\/p>\\r\\n<p class=\\"text-justify\\"><span style=\\"font-size: 30px;\\">A. <\\/span>Nope! Impress Laundry will sort, wash, dry, fold, package. If you have any special processing items (Delicate wash, sanitizing wash, stain treatment, air-dry, etc.) or other requests, notify Impress through a call or when you get your laundry picked up.<\\/p>\\r\\n<br \\/><br \\/>\\r\\n<p class=\\"text-justify\\"><b><span style=\\"font-size: 30px;\\">Q. <\\/span>How do I pay?<\\/b><\\/p>\\r\\n<p class=\\"text-justify\\"><span style=\\"font-size: 30px;\\">A. <\\/span>Paypal will be used when checking out, you will be charged according to your purchased combo.<\\/p>\\r\\n<br \\/><br \\/>\\r\\n<p class=\\"text-justify\\"><b><span style=\\"font-size: 30px;\\">Q. <\\/span>When will I get my clothes back?<\\/b><\\/p>\\r\\n<p class=\\"text-justify\\"><span style=\\"font-size: 30px;\\">A. <\\/span>you can arrange for your clothes to be picked up, weekly, bi-weekly, monthly, As-needed, One-time service<\\/p>\\r\\n<br \\/><br \\/>\\r\\n<p class=\\"text-justify\\"><b><span style=\\"font-size: 30px;\\">Q. <\\/span>What types of laundering requests do you accommodate?<\\/b><\\/p>\\r\\n<p class=\\"text-justify\\"><span style=\\"font-size: 30px;\\">A. <\\/span>We strive to provide you with a laundry service plan that is tailored to your needs. Some of our custom processing options include:<br \\/> <br \\/>Hypo-allergenic products<br \\/>Delicate Wash\\/dry<br \\/>Air-Dry<br \\/>Hand-wash<br \\/>Steam Press<br \\/>Iron Press<br \\/>Stain Treatments<br \\/>Sanitization<br \\/>AND MORE!<\\/p>\\r\\n<br \\/><br \\/>\\r\\n<p class=\\"text-justify\\"><b><span style=\\"font-size: 30px;\\">Q. <\\/span>What if I can\\u2019t be home for my scheduled pick-up or drop off?<\\/b><\\/p>\\r\\n<p class=\\"text-justify\\"><span style=\\"font-size: 30px;\\">A. <\\/span>You can leave your bag in a secure location outside your home (doorstep, porch, patio, reception desk etc.) or reschedule a day\\/time with Impress.<\\/p>\\r\\n<br \\/><br \\/>\\r\\n<p class=\\"text-justify\\"><b><span style=\\"font-size: 30px;\\">Q. <\\/span>I have allergies, do you use allergen-free products?<\\/b><\\/p>\\r\\n<p class=\\"text-justify\\"><span style=\\"font-size: 30px;\\">A. <\\/span>Be sure to inform Impress of any allergies to laundering and cleaning products you have. We always offer a hypo-allergenic option free of charge!<\\/p>\\r\\n<br \\/><br \\/>\\r\\n<p class=\\"text-justify\\"><b><span style=\\"font-size: 30px;\\">Q. <\\/span>How do I schedule a laundry pick-up (who?)<\\/b><\\/p>\\r\\n<p class=\\"text-justify\\"><span style=\\"font-size: 30px;\\">A. <\\/span>All scheduling is handled during combo selection and can be changed later on. You can also contact us at<a href=\\"contact.html\\"> Here<\\/a><\\/p>\\r\\n<br \\/><br \\/>\\r\\n<p class=\\"text-justify\\"><b><span style=\\"font-size: 30px;\\">Q. <\\/span>Are my clothes washed with other people\\u2019s clothes?<\\/b><\\/p>\\r\\n<p class=\\"text-justify\\"><span style=\\"font-size: 30px;\\">A. <\\/span>Absolutely not! Each bag is processed by itself. We will never clean your clothes with another customer\\u2019s clothing.<\\/p>\\r\\n<br \\/><br \\/>\\r\\n<p class=\\"text-justify\\"><b><span style=\\"font-size: 30px;\\">Q. <\\/span>What if I am missing an item of clothing from my returned bag?<\\/b><\\/p>\\r\\n<p class=\\"text-justify\\"><span style=\\"font-size: 30px;\\">A. <\\/span>Although not required, you can complete an inventory sheet prior to pick-up that details all items found within your bag. You will keep the original sheet and we will keep a copy. <br \\/>Please notify Impress of any missing items listed on the inventory sheet within 48 hours of drop off. If your item is not located after further investigation, we will reimburse you an amount equal to your proof of purchase amount, limited to a maximum of $100.00USD and a maximum total of $200.00USD per customer.<\\/p>\\r\\n<br \\/><br \\/><\\/div>\\r\\n<!-------- TEAM (FEATURE) ------>\\r\\n<div id=\\"team\\">\\r\\n<h4>- Team -<\\/h4>\\r\\n<div class=\\"row\\">\\r\\n<div class=\\"col-sm-3\\"><img class=\\"img-circle\\" src=\\"images\\/face1.png\\" width=\\"120px\\" height=\\"140px\\" \\/>\\r\\n<h4>Pablo Vieira<br \\/><small>The Owner<\\/small><\\/h4>\\r\\n<\\/div>\\r\\n<div class=\\"col-sm-3\\"><img class=\\"img-circle\\" src=\\"images\\/face2.png\\" width=\\"120px\\" height=\\"140px\\" \\/>\\r\\n<h4>Kaio Labre<br \\/><small>Proj. Manager<\\/small><\\/h4>\\r\\n<\\/div>\\r\\n<div class=\\"col-sm-3\\"><img class=\\"img-circle\\" src=\\"images\\/face3.png\\" width=\\"120px\\" height=\\"140px\\" \\/>\\r\\n<h4>Shiv<br \\/><small>Front-end<\\/small><\\/h4>\\r\\n<\\/div>\\r\\n<div class=\\"col-sm-3\\"><img class=\\"img-circle\\" src=\\"images\\/face4.png\\" width=\\"120px\\" height=\\"140px\\" \\/>\\r\\n<h4>Andy<br \\/><small>Back-end<\\/small><\\/h4>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>","fulltext":"","state":1,"catid":"2","created":"2017-05-22 04:50:23","created_by":"106","created_by_alias":"","modified":"2017-05-24 01:51:13","modified_by":"106","checked_out":"106","checked_out_time":"2017-05-24 01:50:54","publish_up":"2017-05-22 04:50:23","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":6,"ordering":"2","metakey":"","metadesc":"","access":"1","hits":"48","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0);
INSERT INTO `fv5oz_ucm_history` (`version_id`, `ucm_item_id`, `ucm_type_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`) VALUES
(14, 2, 1, '', '2017-05-24 01:52:22', 106, 9347, 'bf085b58cd5f18837f62eef5d6c72da47934aa6d', '{"id":2,"asset_id":"90","title":"ABOUT US","alias":"about-us","introtext":"<div id=\\"abouttitle\\" class=\\"container-fluid\\">\\r\\n<h1>About us<\\/h1>\\r\\n<\\/div>\\r\\n<div id=\\"aboutcontent\\" class=\\"container-fluid\\"><!-------- PURPOSE ------>\\r\\n<div id=\\"purpose\\">\\r\\n<h4>- Our Purpose -<\\/h4>\\r\\n<p class=\\"text-justify\\">The purpose of the company is not only to get the laundry done but also offer excellent customer service along with an extensive range of laundry services. The platform joins the highest technology with the experienced and highly qualified professionals who will deal with the customer\'s laundry when it best suits the customer, paired with great deals and customer satisfaction. <\\/p>\\r\\n<div id=\\"testimonial\\">\\u00a0<\\/div>\\r\\n<p class=\\"text-justify\\"><br \\/>The website will also offer customers different types of laundry combos, which they will be able to choose according to their needs and find a price that suits their budget. Basically, the users will have to access the online system, register and log in, choose their location, select laundry service combo according to their necessity, schedule a day and time for pickup and delivery and the rest will be up to the laundry professionals. Impress door-to-door service, coming to facilitate people\'s life.<\\/p>\\r\\n<\\/div>\\r\\n<!-------- TESTIMONIALS ------>\\r\\n<div id=\\"testimonials\\">\\r\\n<h4>- Testimonials -<\\/h4>\\r\\n<div class=\\"col-sm-4 testimonial\\">\\r\\n<blockquote>\\r\\n<p>\\"The \\u2018online laundry service\\u2019 software that we have been made aware of, appears to be very innovative and will expedite the laundry service used in every commercial laundry.\\"<\\/p>\\r\\n<h4><small>- Helen Psarakis - Marketing Director<\\/small><\\/h4>\\r\\n<\\/blockquote>\\r\\n<\\/div>\\r\\n<div class=\\"col-sm-4 testimonial\\">\\r\\n<blockquote>\\r\\n<p>\\"Wow, I\'m excited about this idea, I really do not have enough time to do this type of work and not even to take it to someone else to do it, so the possibility of having service to do all this process for me is the differential of this project.\\"<\\/p>\\r\\n<h4><small>- Eli Ramos - Architect<\\/small><\\/h4>\\r\\n<\\/blockquote>\\r\\n<\\/div>\\r\\n<div class=\\"col-sm-4 testimonial\\">\\r\\n<blockquote>\\r\\n<p>\\"I think having an online laundry service is an amazing idea, bieng able to save time and energy by bieng able to schedula a drop off and pick up date suited to my needs, all at touch of a button on my phone. It\'s just so easy\\"<\\/p>\\r\\n<h4><small>- Mary Clark - Mother of 4<\\/small><\\/h4>\\r\\n<\\/blockquote>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<!-------- FAQ ------>\\r\\n<div id=\\"faq\\">\\r\\n<h4>- F.A.Q -<\\/h4>\\r\\n<p class=\\"text-justify\\"><b><span style=\\"font-size: 30px;\\">Q. <\\/span>How do I get started?<\\/b><\\/p>\\r\\n<p class=\\"text-justify\\"><span style=\\"font-size: 30px;\\">A. <\\/span>Once you complete our online sign-up form, NEED NEXTSTEPS HERE <a href=\\"getStarted.html\\">Click here to get started now!<\\/a><\\/p>\\r\\n<br \\/><br \\/>\\r\\n<p class=\\"text-justify\\"><b><span style=\\"font-size: 30px;\\">Q. <\\/span>Do I need to prepare my laundry or sort it ahead of time?<\\/b><\\/p>\\r\\n<p class=\\"text-justify\\"><span style=\\"font-size: 30px;\\">A. <\\/span>Nope! Impress Laundry will sort, wash, dry, fold, package. If you have any special processing items (Delicate wash, sanitizing wash, stain treatment, air-dry, etc.) or other requests, notify Impress through a call or when you get your laundry picked up.<\\/p>\\r\\n<br \\/><br \\/>\\r\\n<p class=\\"text-justify\\"><b><span style=\\"font-size: 30px;\\">Q. <\\/span>How do I pay?<\\/b><\\/p>\\r\\n<p class=\\"text-justify\\"><span style=\\"font-size: 30px;\\">A. <\\/span>Paypal will be used when checking out, you will be charged according to your purchased combo.<\\/p>\\r\\n<br \\/><br \\/>\\r\\n<p class=\\"text-justify\\"><b><span style=\\"font-size: 30px;\\">Q. <\\/span>When will I get my clothes back?<\\/b><\\/p>\\r\\n<p class=\\"text-justify\\"><span style=\\"font-size: 30px;\\">A. <\\/span>you can arrange for your clothes to be picked up, weekly, bi-weekly, monthly, As-needed, One-time service<\\/p>\\r\\n<br \\/><br \\/>\\r\\n<p class=\\"text-justify\\"><b><span style=\\"font-size: 30px;\\">Q. <\\/span>What types of laundering requests do you accommodate?<\\/b><\\/p>\\r\\n<p class=\\"text-justify\\"><span style=\\"font-size: 30px;\\">A. <\\/span>We strive to provide you with a laundry service plan that is tailored to your needs. Some of our custom processing options include:<br \\/> <br \\/>Hypo-allergenic products<br \\/>Delicate Wash\\/dry<br \\/>Air-Dry<br \\/>Hand-wash<br \\/>Steam Press<br \\/>Iron Press<br \\/>Stain Treatments<br \\/>Sanitization<br \\/>AND MORE!<\\/p>\\r\\n<br \\/><br \\/>\\r\\n<p class=\\"text-justify\\"><b><span style=\\"font-size: 30px;\\">Q. <\\/span>What if I can\\u2019t be home for my scheduled pick-up or drop off?<\\/b><\\/p>\\r\\n<p class=\\"text-justify\\"><span style=\\"font-size: 30px;\\">A. <\\/span>You can leave your bag in a secure location outside your home (doorstep, porch, patio, reception desk etc.) or reschedule a day\\/time with Impress.<\\/p>\\r\\n<br \\/><br \\/>\\r\\n<p class=\\"text-justify\\"><b><span style=\\"font-size: 30px;\\">Q. <\\/span>I have allergies, do you use allergen-free products?<\\/b><\\/p>\\r\\n<p class=\\"text-justify\\"><span style=\\"font-size: 30px;\\">A. <\\/span>Be sure to inform Impress of any allergies to laundering and cleaning products you have. We always offer a hypo-allergenic option free of charge!<\\/p>\\r\\n<br \\/><br \\/>\\r\\n<p class=\\"text-justify\\"><b><span style=\\"font-size: 30px;\\">Q. <\\/span>How do I schedule a laundry pick-up (who?)<\\/b><\\/p>\\r\\n<p class=\\"text-justify\\"><span style=\\"font-size: 30px;\\">A. <\\/span>All scheduling is handled during combo selection and can be changed later on. You can also contact us at<a href=\\"contact.html\\"> Here<\\/a><\\/p>\\r\\n<br \\/><br \\/>\\r\\n<p class=\\"text-justify\\"><b><span style=\\"font-size: 30px;\\">Q. <\\/span>Are my clothes washed with other people\\u2019s clothes?<\\/b><\\/p>\\r\\n<p class=\\"text-justify\\"><span style=\\"font-size: 30px;\\">A. <\\/span>Absolutely not! Each bag is processed by itself. We will never clean your clothes with another customer\\u2019s clothing.<\\/p>\\r\\n<br \\/><br \\/>\\r\\n<p class=\\"text-justify\\"><b><span style=\\"font-size: 30px;\\">Q. <\\/span>What if I am missing an item of clothing from my returned bag?<\\/b><\\/p>\\r\\n<p class=\\"text-justify\\"><span style=\\"font-size: 30px;\\">A. <\\/span>Although not required, you can complete an inventory sheet prior to pick-up that details all items found within your bag. You will keep the original sheet and we will keep a copy. <br \\/>Please notify Impress of any missing items listed on the inventory sheet within 48 hours of drop off. If your item is not located after further investigation, we will reimburse you an amount equal to your proof of purchase amount, limited to a maximum of $100.00USD and a maximum total of $200.00USD per customer.<\\/p>\\r\\n<br \\/><br \\/><\\/div>\\r\\n<!-------- TEAM (FEATURE) ------>\\r\\n<div id=\\"team\\">\\r\\n<h4>- Team -<\\/h4>\\r\\n<div class=\\"row\\">\\r\\n<div class=\\"col-sm-3\\"><img class=\\"img-circle\\" src=\\"images\\/face1.png\\" width=\\"120px\\" height=\\"140px\\" \\/>\\r\\n<h4>Pablo Vieira<br \\/><small>The Owner<\\/small><\\/h4>\\r\\n<\\/div>\\r\\n<div class=\\"col-sm-3\\"><img class=\\"img-circle\\" src=\\"images\\/face2.png\\" width=\\"120px\\" height=\\"140px\\" \\/>\\r\\n<h4>Kaio Labre<br \\/><small>Proj. Manager<\\/small><\\/h4>\\r\\n<\\/div>\\r\\n<div class=\\"col-sm-3\\"><img class=\\"img-circle\\" src=\\"images\\/face3.png\\" width=\\"120px\\" height=\\"140px\\" \\/>\\r\\n<h4>Shiv<br \\/><small>Front-end<\\/small><\\/h4>\\r\\n<\\/div>\\r\\n<div class=\\"col-sm-3\\"><img class=\\"img-circle\\" src=\\"images\\/face4.png\\" width=\\"120px\\" height=\\"140px\\" \\/>\\r\\n<h4>Andy<br \\/><small>Back-end<\\/small><\\/h4>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>","fulltext":"","state":1,"catid":"2","created":"2017-05-22 04:50:23","created_by":"106","created_by_alias":"","modified":"2017-05-24 01:52:22","modified_by":"106","checked_out":"106","checked_out_time":"2017-05-24 01:51:58","publish_up":"2017-05-22 04:50:23","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":7,"ordering":"2","metakey":"","metadesc":"","access":"1","hits":"52","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(15, 2, 1, '', '2017-05-24 01:53:23', 106, 9346, '70173fefb0400433619bf87e8056e819040e0157', '{"id":2,"asset_id":"90","title":"ABOUT US","alias":"about-us","introtext":"<div id=\\"abouttitle\\" class=\\"container-fluid\\">\\r\\n<h1>About us<\\/h1>\\r\\n<\\/div>\\r\\n<div id=\\"aboutcontent\\" class=\\"container-fluid\\"><!-------- PURPOSE ------>\\r\\n<div id=\\"purpose\\">\\r\\n<h4>- Our Purpose -<\\/h4>\\r\\n<p class=\\"text-justify\\">The purpose of the company is not only to get the laundry done but also offer excellent customer service along with an extensive range of laundry services. The platform joins the highest technology with the experienced and highly qualified professionals who will deal with the customer\'s laundry when it best suits the customer, paired with great deals and customer satisfaction.<\\/p>\\r\\n<p class=\\"text-justify\\"><br \\/>The website will also offer customers different types of laundry combos, which they will be able to choose according to their needs and find a price that suits their budget. Basically, the users will have to access the online system, register and log in, choose their location, select laundry service combo according to their necessity, schedule a day and time for pickup and delivery and the rest will be up to the laundry professionals. Impress door-to-door service, coming to facilitate people\'s life.<\\/p>\\r\\n<div id=\\"testimonial\\">\\u00a0<\\/div>\\r\\n<\\/div>\\r\\n<!-------- TESTIMONIALS ------>\\r\\n<div id=\\"testimonials\\">\\r\\n<h4>- Testimonials -<\\/h4>\\r\\n<div class=\\"col-sm-4 testimonial\\">\\r\\n<blockquote>\\r\\n<p>\\"The \\u2018online laundry service\\u2019 software that we have been made aware of, appears to be very innovative and will expedite the laundry service used in every commercial laundry.\\"<\\/p>\\r\\n<h4><small>- Helen Psarakis - Marketing Director<\\/small><\\/h4>\\r\\n<\\/blockquote>\\r\\n<\\/div>\\r\\n<div class=\\"col-sm-4 testimonial\\">\\r\\n<blockquote>\\r\\n<p>\\"Wow, I\'m excited about this idea, I really do not have enough time to do this type of work and not even to take it to someone else to do it, so the possibility of having service to do all this process for me is the differential of this project.\\"<\\/p>\\r\\n<h4><small>- Eli Ramos - Architect<\\/small><\\/h4>\\r\\n<\\/blockquote>\\r\\n<\\/div>\\r\\n<div class=\\"col-sm-4 testimonial\\">\\r\\n<blockquote>\\r\\n<p>\\"I think having an online laundry service is an amazing idea, bieng able to save time and energy by bieng able to schedula a drop off and pick up date suited to my needs, all at touch of a button on my phone. It\'s just so easy\\"<\\/p>\\r\\n<h4><small>- Mary Clark - Mother of 4<\\/small><\\/h4>\\r\\n<\\/blockquote>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<!-------- FAQ ------>\\r\\n<div id=\\"faq\\">\\r\\n<h4>- F.A.Q -<\\/h4>\\r\\n<p class=\\"text-justify\\"><b><span style=\\"font-size: 30px;\\">Q. <\\/span>How do I get started?<\\/b><\\/p>\\r\\n<p class=\\"text-justify\\"><span style=\\"font-size: 30px;\\">A. <\\/span>Once you complete our online sign-up form, NEED NEXTSTEPS HERE <a href=\\"getStarted.html\\">Click here to get started now!<\\/a><\\/p>\\r\\n<br \\/><br \\/>\\r\\n<p class=\\"text-justify\\"><b><span style=\\"font-size: 30px;\\">Q. <\\/span>Do I need to prepare my laundry or sort it ahead of time?<\\/b><\\/p>\\r\\n<p class=\\"text-justify\\"><span style=\\"font-size: 30px;\\">A. <\\/span>Nope! Impress Laundry will sort, wash, dry, fold, package. If you have any special processing items (Delicate wash, sanitizing wash, stain treatment, air-dry, etc.) or other requests, notify Impress through a call or when you get your laundry picked up.<\\/p>\\r\\n<br \\/><br \\/>\\r\\n<p class=\\"text-justify\\"><b><span style=\\"font-size: 30px;\\">Q. <\\/span>How do I pay?<\\/b><\\/p>\\r\\n<p class=\\"text-justify\\"><span style=\\"font-size: 30px;\\">A. <\\/span>Paypal will be used when checking out, you will be charged according to your purchased combo.<\\/p>\\r\\n<br \\/><br \\/>\\r\\n<p class=\\"text-justify\\"><b><span style=\\"font-size: 30px;\\">Q. <\\/span>When will I get my clothes back?<\\/b><\\/p>\\r\\n<p class=\\"text-justify\\"><span style=\\"font-size: 30px;\\">A. <\\/span>you can arrange for your clothes to be picked up, weekly, bi-weekly, monthly, As-needed, One-time service<\\/p>\\r\\n<br \\/><br \\/>\\r\\n<p class=\\"text-justify\\"><b><span style=\\"font-size: 30px;\\">Q. <\\/span>What types of laundering requests do you accommodate?<\\/b><\\/p>\\r\\n<p class=\\"text-justify\\"><span style=\\"font-size: 30px;\\">A. <\\/span>We strive to provide you with a laundry service plan that is tailored to your needs. Some of our custom processing options include:<br \\/> <br \\/>Hypo-allergenic products<br \\/>Delicate Wash\\/dry<br \\/>Air-Dry<br \\/>Hand-wash<br \\/>Steam Press<br \\/>Iron Press<br \\/>Stain Treatments<br \\/>Sanitization<br \\/>AND MORE!<\\/p>\\r\\n<br \\/><br \\/>\\r\\n<p class=\\"text-justify\\"><b><span style=\\"font-size: 30px;\\">Q. <\\/span>What if I can\\u2019t be home for my scheduled pick-up or drop off?<\\/b><\\/p>\\r\\n<p class=\\"text-justify\\"><span style=\\"font-size: 30px;\\">A. <\\/span>You can leave your bag in a secure location outside your home (doorstep, porch, patio, reception desk etc.) or reschedule a day\\/time with Impress.<\\/p>\\r\\n<br \\/><br \\/>\\r\\n<p class=\\"text-justify\\"><b><span style=\\"font-size: 30px;\\">Q. <\\/span>I have allergies, do you use allergen-free products?<\\/b><\\/p>\\r\\n<p class=\\"text-justify\\"><span style=\\"font-size: 30px;\\">A. <\\/span>Be sure to inform Impress of any allergies to laundering and cleaning products you have. We always offer a hypo-allergenic option free of charge!<\\/p>\\r\\n<br \\/><br \\/>\\r\\n<p class=\\"text-justify\\"><b><span style=\\"font-size: 30px;\\">Q. <\\/span>How do I schedule a laundry pick-up (who?)<\\/b><\\/p>\\r\\n<p class=\\"text-justify\\"><span style=\\"font-size: 30px;\\">A. <\\/span>All scheduling is handled during combo selection and can be changed later on. You can also contact us at<a href=\\"contact.html\\"> Here<\\/a><\\/p>\\r\\n<br \\/><br \\/>\\r\\n<p class=\\"text-justify\\"><b><span style=\\"font-size: 30px;\\">Q. <\\/span>Are my clothes washed with other people\\u2019s clothes?<\\/b><\\/p>\\r\\n<p class=\\"text-justify\\"><span style=\\"font-size: 30px;\\">A. <\\/span>Absolutely not! Each bag is processed by itself. We will never clean your clothes with another customer\\u2019s clothing.<\\/p>\\r\\n<br \\/><br \\/>\\r\\n<p class=\\"text-justify\\"><b><span style=\\"font-size: 30px;\\">Q. <\\/span>What if I am missing an item of clothing from my returned bag?<\\/b><\\/p>\\r\\n<p class=\\"text-justify\\"><span style=\\"font-size: 30px;\\">A. <\\/span>Although not required, you can complete an inventory sheet prior to pick-up that details all items found within your bag. You will keep the original sheet and we will keep a copy. <br \\/>Please notify Impress of any missing items listed on the inventory sheet within 48 hours of drop off. If your item is not located after further investigation, we will reimburse you an amount equal to your proof of purchase amount, limited to a maximum of $100.00USD and a maximum total of $200.00USD per customer.<\\/p>\\r\\n<br \\/><br \\/><\\/div>\\r\\n<!-------- TEAM (FEATURE) ------>\\r\\n<div id=\\"team\\">\\r\\n<h4>- Team -<\\/h4>\\r\\n<div class=\\"row\\">\\r\\n<div class=\\"col-sm-3\\"><img class=\\"img-circle\\" src=\\"images\\/face1.png\\" width=\\"120px\\" height=\\"140px\\" \\/>\\r\\n<h4>Pablo Vieira<br \\/><small>The Owner<\\/small><\\/h4>\\r\\n<\\/div>\\r\\n<div class=\\"col-sm-3\\"><img class=\\"img-circle\\" src=\\"images\\/face2.png\\" width=\\"120px\\" height=\\"140px\\" \\/>\\r\\n<h4>Kaio Labre<br \\/><small>Proj. Manager<\\/small><\\/h4>\\r\\n<\\/div>\\r\\n<div class=\\"col-sm-3\\"><img class=\\"img-circle\\" src=\\"images\\/face3.png\\" width=\\"120px\\" height=\\"140px\\" \\/>\\r\\n<h4>Shiv<br \\/><small>Front-end<\\/small><\\/h4>\\r\\n<\\/div>\\r\\n<div class=\\"col-sm-3\\"><img class=\\"img-circle\\" src=\\"images\\/face4.png\\" width=\\"120px\\" height=\\"140px\\" \\/>\\r\\n<h4>Andy<br \\/><small>Back-end<\\/small><\\/h4>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>","fulltext":"","state":1,"catid":"2","created":"2017-05-22 04:50:23","created_by":"106","created_by_alias":"","modified":"2017-05-24 01:53:23","modified_by":"106","checked_out":"106","checked_out_time":"2017-05-24 01:53:02","publish_up":"2017-05-22 04:50:23","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":8,"ordering":"2","metakey":"","metadesc":"","access":"1","hits":"55","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(16, 2, 1, '', '2017-05-24 01:53:55', 106, 9346, '92704126c79a4e4d2f4444cbc7a448b1e9d235cf', '{"id":2,"asset_id":"90","title":"ABOUT US","alias":"about-us","introtext":"<div id=\\"abouttitle\\" class=\\"container-fluid\\">\\r\\n<h1>About us<\\/h1>\\r\\n<\\/div>\\r\\n<div id=\\"aboutcontent\\" class=\\"container-fluid\\"><!-------- PURPOSE ------>\\r\\n<div id=\\"purpose\\">\\r\\n<h4>- Our Purpose -<\\/h4>\\r\\n<p class=\\"text-justify\\">The purpose of the company is not only to get the laundry done but also offer excellent customer service along with an extensive range of laundry services. The platform joins the highest technology with the experienced and highly qualified professionals who will deal with the customer\'s laundry when it best suits the customer, paired with great deals and customer satisfaction.<\\/p>\\r\\n<p class=\\"text-justify\\"><br \\/>The website will also offer customers different types of laundry combos, which they will be able to choose according to their needs and find a price that suits their budget. Basically, the users will have to access the online system, register and log in, choose their location, select laundry service combo according to their necessity, schedule a day and time for pickup and delivery and the rest will be up to the laundry professionals. Impress door-to-door service, coming to facilitate people\'s life.<\\/p>\\r\\n<\\/div>\\r\\n<div id=\\"testimonial\\">\\u00a0<\\/div>\\r\\n<!-------- TESTIMONIALS ------>\\r\\n<div id=\\"testimonials\\">\\r\\n<h4>- Testimonials -<\\/h4>\\r\\n<div class=\\"col-sm-4 testimonial\\">\\r\\n<blockquote>\\r\\n<p>\\"The \\u2018online laundry service\\u2019 software that we have been made aware of, appears to be very innovative and will expedite the laundry service used in every commercial laundry.\\"<\\/p>\\r\\n<h4><small>- Helen Psarakis - Marketing Director<\\/small><\\/h4>\\r\\n<\\/blockquote>\\r\\n<\\/div>\\r\\n<div class=\\"col-sm-4 testimonial\\">\\r\\n<blockquote>\\r\\n<p>\\"Wow, I\'m excited about this idea, I really do not have enough time to do this type of work and not even to take it to someone else to do it, so the possibility of having service to do all this process for me is the differential of this project.\\"<\\/p>\\r\\n<h4><small>- Eli Ramos - Architect<\\/small><\\/h4>\\r\\n<\\/blockquote>\\r\\n<\\/div>\\r\\n<div class=\\"col-sm-4 testimonial\\">\\r\\n<blockquote>\\r\\n<p>\\"I think having an online laundry service is an amazing idea, bieng able to save time and energy by bieng able to schedula a drop off and pick up date suited to my needs, all at touch of a button on my phone. It\'s just so easy\\"<\\/p>\\r\\n<h4><small>- Mary Clark - Mother of 4<\\/small><\\/h4>\\r\\n<\\/blockquote>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<!-------- FAQ ------>\\r\\n<div id=\\"faq\\">\\r\\n<h4>- F.A.Q -<\\/h4>\\r\\n<p class=\\"text-justify\\"><b><span style=\\"font-size: 30px;\\">Q. <\\/span>How do I get started?<\\/b><\\/p>\\r\\n<p class=\\"text-justify\\"><span style=\\"font-size: 30px;\\">A. <\\/span>Once you complete our online sign-up form, NEED NEXTSTEPS HERE <a href=\\"getStarted.html\\">Click here to get started now!<\\/a><\\/p>\\r\\n<br \\/><br \\/>\\r\\n<p class=\\"text-justify\\"><b><span style=\\"font-size: 30px;\\">Q. <\\/span>Do I need to prepare my laundry or sort it ahead of time?<\\/b><\\/p>\\r\\n<p class=\\"text-justify\\"><span style=\\"font-size: 30px;\\">A. <\\/span>Nope! Impress Laundry will sort, wash, dry, fold, package. If you have any special processing items (Delicate wash, sanitizing wash, stain treatment, air-dry, etc.) or other requests, notify Impress through a call or when you get your laundry picked up.<\\/p>\\r\\n<br \\/><br \\/>\\r\\n<p class=\\"text-justify\\"><b><span style=\\"font-size: 30px;\\">Q. <\\/span>How do I pay?<\\/b><\\/p>\\r\\n<p class=\\"text-justify\\"><span style=\\"font-size: 30px;\\">A. <\\/span>Paypal will be used when checking out, you will be charged according to your purchased combo.<\\/p>\\r\\n<br \\/><br \\/>\\r\\n<p class=\\"text-justify\\"><b><span style=\\"font-size: 30px;\\">Q. <\\/span>When will I get my clothes back?<\\/b><\\/p>\\r\\n<p class=\\"text-justify\\"><span style=\\"font-size: 30px;\\">A. <\\/span>you can arrange for your clothes to be picked up, weekly, bi-weekly, monthly, As-needed, One-time service<\\/p>\\r\\n<br \\/><br \\/>\\r\\n<p class=\\"text-justify\\"><b><span style=\\"font-size: 30px;\\">Q. <\\/span>What types of laundering requests do you accommodate?<\\/b><\\/p>\\r\\n<p class=\\"text-justify\\"><span style=\\"font-size: 30px;\\">A. <\\/span>We strive to provide you with a laundry service plan that is tailored to your needs. Some of our custom processing options include:<br \\/> <br \\/>Hypo-allergenic products<br \\/>Delicate Wash\\/dry<br \\/>Air-Dry<br \\/>Hand-wash<br \\/>Steam Press<br \\/>Iron Press<br \\/>Stain Treatments<br \\/>Sanitization<br \\/>AND MORE!<\\/p>\\r\\n<br \\/><br \\/>\\r\\n<p class=\\"text-justify\\"><b><span style=\\"font-size: 30px;\\">Q. <\\/span>What if I can\\u2019t be home for my scheduled pick-up or drop off?<\\/b><\\/p>\\r\\n<p class=\\"text-justify\\"><span style=\\"font-size: 30px;\\">A. <\\/span>You can leave your bag in a secure location outside your home (doorstep, porch, patio, reception desk etc.) or reschedule a day\\/time with Impress.<\\/p>\\r\\n<br \\/><br \\/>\\r\\n<p class=\\"text-justify\\"><b><span style=\\"font-size: 30px;\\">Q. <\\/span>I have allergies, do you use allergen-free products?<\\/b><\\/p>\\r\\n<p class=\\"text-justify\\"><span style=\\"font-size: 30px;\\">A. <\\/span>Be sure to inform Impress of any allergies to laundering and cleaning products you have. We always offer a hypo-allergenic option free of charge!<\\/p>\\r\\n<br \\/><br \\/>\\r\\n<p class=\\"text-justify\\"><b><span style=\\"font-size: 30px;\\">Q. <\\/span>How do I schedule a laundry pick-up (who?)<\\/b><\\/p>\\r\\n<p class=\\"text-justify\\"><span style=\\"font-size: 30px;\\">A. <\\/span>All scheduling is handled during combo selection and can be changed later on. You can also contact us at<a href=\\"contact.html\\"> Here<\\/a><\\/p>\\r\\n<br \\/><br \\/>\\r\\n<p class=\\"text-justify\\"><b><span style=\\"font-size: 30px;\\">Q. <\\/span>Are my clothes washed with other people\\u2019s clothes?<\\/b><\\/p>\\r\\n<p class=\\"text-justify\\"><span style=\\"font-size: 30px;\\">A. <\\/span>Absolutely not! Each bag is processed by itself. We will never clean your clothes with another customer\\u2019s clothing.<\\/p>\\r\\n<br \\/><br \\/>\\r\\n<p class=\\"text-justify\\"><b><span style=\\"font-size: 30px;\\">Q. <\\/span>What if I am missing an item of clothing from my returned bag?<\\/b><\\/p>\\r\\n<p class=\\"text-justify\\"><span style=\\"font-size: 30px;\\">A. <\\/span>Although not required, you can complete an inventory sheet prior to pick-up that details all items found within your bag. You will keep the original sheet and we will keep a copy. <br \\/>Please notify Impress of any missing items listed on the inventory sheet within 48 hours of drop off. If your item is not located after further investigation, we will reimburse you an amount equal to your proof of purchase amount, limited to a maximum of $100.00USD and a maximum total of $200.00USD per customer.<\\/p>\\r\\n<br \\/><br \\/><\\/div>\\r\\n<!-------- TEAM (FEATURE) ------>\\r\\n<div id=\\"team\\">\\r\\n<h4>- Team -<\\/h4>\\r\\n<div class=\\"row\\">\\r\\n<div class=\\"col-sm-3\\"><img class=\\"img-circle\\" src=\\"images\\/face1.png\\" width=\\"120px\\" height=\\"140px\\" \\/>\\r\\n<h4>Pablo Vieira<br \\/><small>The Owner<\\/small><\\/h4>\\r\\n<\\/div>\\r\\n<div class=\\"col-sm-3\\"><img class=\\"img-circle\\" src=\\"images\\/face2.png\\" width=\\"120px\\" height=\\"140px\\" \\/>\\r\\n<h4>Kaio Labre<br \\/><small>Proj. Manager<\\/small><\\/h4>\\r\\n<\\/div>\\r\\n<div class=\\"col-sm-3\\"><img class=\\"img-circle\\" src=\\"images\\/face3.png\\" width=\\"120px\\" height=\\"140px\\" \\/>\\r\\n<h4>Shiv<br \\/><small>Front-end<\\/small><\\/h4>\\r\\n<\\/div>\\r\\n<div class=\\"col-sm-3\\"><img class=\\"img-circle\\" src=\\"images\\/face4.png\\" width=\\"120px\\" height=\\"140px\\" \\/>\\r\\n<h4>Andy<br \\/><small>Back-end<\\/small><\\/h4>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>","fulltext":"","state":1,"catid":"2","created":"2017-05-22 04:50:23","created_by":"106","created_by_alias":"","modified":"2017-05-24 01:53:55","modified_by":"106","checked_out":"106","checked_out_time":"2017-05-24 01:53:38","publish_up":"2017-05-22 04:50:23","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":9,"ordering":"2","metakey":"","metadesc":"","access":"1","hits":"56","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(17, 2, 1, '', '2017-05-24 01:55:06', 106, 9347, '9f2d0021e03dc4788d678b534fc0b9021e7205c5', '{"id":2,"asset_id":"90","title":"ABOUT US","alias":"about-us","introtext":"<div id=\\"abouttitle\\" class=\\"container-fluid\\">\\r\\n<h1>About us<\\/h1>\\r\\n<\\/div>\\r\\n<div id=\\"aboutcontent\\" class=\\"container-fluid\\"><!-------- PURPOSE ------>\\r\\n<div id=\\"purpose\\">\\r\\n<h4>- Our Purpose -<\\/h4>\\r\\n<p class=\\"text-justify\\">The purpose of the company is not only to get the laundry done but also offer excellent customer service along with an extensive range of laundry services. The platform joins the highest technology with the experienced and highly qualified professionals who will deal with the customer\'s laundry when it best suits the customer, paired with great deals and customer satisfaction.<\\/p>\\r\\n<p class=\\"text-justify\\"><br \\/>The website will also offer customers different types of laundry combos, which they will be able to choose according to their needs and find a price that suits their budget. Basically, the users will have to access the online system, register and log in, choose their location, select laundry service combo according to their necessity, schedule a day and time for pickup and delivery and the rest will be up to the laundry professionals. Impress door-to-door service, coming to facilitate people\'s life.<\\/p>\\r\\n<\\/div>\\r\\n<!-------- TESTIMONIALS ------>\\r\\n<div id=\\"testimonial\\">\\u00a0<\\/div>\\r\\n<div id=\\"testimonials\\">\\r\\n<h4>- Testimonials -<\\/h4>\\r\\n<div class=\\"col-sm-4 testimonial\\">\\r\\n<blockquote>\\r\\n<p>\\"The \\u2018online laundry service\\u2019 software that we have been made aware of, appears to be very innovative and will expedite the laundry service used in every commercial laundry.\\"<\\/p>\\r\\n<h4><small>- Helen Psarakis - Marketing Director<\\/small><\\/h4>\\r\\n<\\/blockquote>\\r\\n<\\/div>\\r\\n<div class=\\"col-sm-4 testimonial\\">\\r\\n<blockquote>\\r\\n<p>\\"Wow, I\'m excited about this idea, I really do not have enough time to do this type of work and not even to take it to someone else to do it, so the possibility of having service to do all this process for me is the differential of this project.\\"<\\/p>\\r\\n<h4><small>- Eli Ramos - Architect<\\/small><\\/h4>\\r\\n<\\/blockquote>\\r\\n<\\/div>\\r\\n<div class=\\"col-sm-4 testimonial\\">\\r\\n<blockquote>\\r\\n<p>\\"I think having an online laundry service is an amazing idea, bieng able to save time and energy by bieng able to schedula a drop off and pick up date suited to my needs, all at touch of a button on my phone. It\'s just so easy\\"<\\/p>\\r\\n<h4><small>- Mary Clark - Mother of 4<\\/small><\\/h4>\\r\\n<\\/blockquote>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<!-------- FAQ ------>\\r\\n<div id=\\"faq\\">\\r\\n<h4>- F.A.Q -<\\/h4>\\r\\n<p class=\\"text-justify\\"><b><span style=\\"font-size: 30px;\\">Q. <\\/span>How do I get started?<\\/b><\\/p>\\r\\n<p class=\\"text-justify\\"><span style=\\"font-size: 30px;\\">A. <\\/span>Once you complete our online sign-up form, NEED NEXTSTEPS HERE <a href=\\"getStarted.html\\">Click here to get started now!<\\/a><\\/p>\\r\\n<br \\/><br \\/>\\r\\n<p class=\\"text-justify\\"><b><span style=\\"font-size: 30px;\\">Q. <\\/span>Do I need to prepare my laundry or sort it ahead of time?<\\/b><\\/p>\\r\\n<p class=\\"text-justify\\"><span style=\\"font-size: 30px;\\">A. <\\/span>Nope! Impress Laundry will sort, wash, dry, fold, package. If you have any special processing items (Delicate wash, sanitizing wash, stain treatment, air-dry, etc.) or other requests, notify Impress through a call or when you get your laundry picked up.<\\/p>\\r\\n<br \\/><br \\/>\\r\\n<p class=\\"text-justify\\"><b><span style=\\"font-size: 30px;\\">Q. <\\/span>How do I pay?<\\/b><\\/p>\\r\\n<p class=\\"text-justify\\"><span style=\\"font-size: 30px;\\">A. <\\/span>Paypal will be used when checking out, you will be charged according to your purchased combo.<\\/p>\\r\\n<br \\/><br \\/>\\r\\n<p class=\\"text-justify\\"><b><span style=\\"font-size: 30px;\\">Q. <\\/span>When will I get my clothes back?<\\/b><\\/p>\\r\\n<p class=\\"text-justify\\"><span style=\\"font-size: 30px;\\">A. <\\/span>you can arrange for your clothes to be picked up, weekly, bi-weekly, monthly, As-needed, One-time service<\\/p>\\r\\n<br \\/><br \\/>\\r\\n<p class=\\"text-justify\\"><b><span style=\\"font-size: 30px;\\">Q. <\\/span>What types of laundering requests do you accommodate?<\\/b><\\/p>\\r\\n<p class=\\"text-justify\\"><span style=\\"font-size: 30px;\\">A. <\\/span>We strive to provide you with a laundry service plan that is tailored to your needs. Some of our custom processing options include:<br \\/> <br \\/>Hypo-allergenic products<br \\/>Delicate Wash\\/dry<br \\/>Air-Dry<br \\/>Hand-wash<br \\/>Steam Press<br \\/>Iron Press<br \\/>Stain Treatments<br \\/>Sanitization<br \\/>AND MORE!<\\/p>\\r\\n<br \\/><br \\/>\\r\\n<p class=\\"text-justify\\"><b><span style=\\"font-size: 30px;\\">Q. <\\/span>What if I can\\u2019t be home for my scheduled pick-up or drop off?<\\/b><\\/p>\\r\\n<p class=\\"text-justify\\"><span style=\\"font-size: 30px;\\">A. <\\/span>You can leave your bag in a secure location outside your home (doorstep, porch, patio, reception desk etc.) or reschedule a day\\/time with Impress.<\\/p>\\r\\n<br \\/><br \\/>\\r\\n<p class=\\"text-justify\\"><b><span style=\\"font-size: 30px;\\">Q. <\\/span>I have allergies, do you use allergen-free products?<\\/b><\\/p>\\r\\n<p class=\\"text-justify\\"><span style=\\"font-size: 30px;\\">A. <\\/span>Be sure to inform Impress of any allergies to laundering and cleaning products you have. We always offer a hypo-allergenic option free of charge!<\\/p>\\r\\n<br \\/><br \\/>\\r\\n<p class=\\"text-justify\\"><b><span style=\\"font-size: 30px;\\">Q. <\\/span>How do I schedule a laundry pick-up (who?)<\\/b><\\/p>\\r\\n<p class=\\"text-justify\\"><span style=\\"font-size: 30px;\\">A. <\\/span>All scheduling is handled during combo selection and can be changed later on. You can also contact us at<a href=\\"contact.html\\"> Here<\\/a><\\/p>\\r\\n<br \\/><br \\/>\\r\\n<p class=\\"text-justify\\"><b><span style=\\"font-size: 30px;\\">Q. <\\/span>Are my clothes washed with other people\\u2019s clothes?<\\/b><\\/p>\\r\\n<p class=\\"text-justify\\"><span style=\\"font-size: 30px;\\">A. <\\/span>Absolutely not! Each bag is processed by itself. We will never clean your clothes with another customer\\u2019s clothing.<\\/p>\\r\\n<br \\/><br \\/>\\r\\n<p class=\\"text-justify\\"><b><span style=\\"font-size: 30px;\\">Q. <\\/span>What if I am missing an item of clothing from my returned bag?<\\/b><\\/p>\\r\\n<p class=\\"text-justify\\"><span style=\\"font-size: 30px;\\">A. <\\/span>Although not required, you can complete an inventory sheet prior to pick-up that details all items found within your bag. You will keep the original sheet and we will keep a copy. <br \\/>Please notify Impress of any missing items listed on the inventory sheet within 48 hours of drop off. If your item is not located after further investigation, we will reimburse you an amount equal to your proof of purchase amount, limited to a maximum of $100.00USD and a maximum total of $200.00USD per customer.<\\/p>\\r\\n<br \\/><br \\/><\\/div>\\r\\n<!-------- TEAM (FEATURE) ------>\\r\\n<div id=\\"team\\">\\r\\n<h4>- Team -<\\/h4>\\r\\n<div class=\\"row\\">\\r\\n<div class=\\"col-sm-3\\"><img class=\\"img-circle\\" src=\\"images\\/face1.png\\" width=\\"120px\\" height=\\"140px\\" \\/>\\r\\n<h4>Pablo Vieira<br \\/><small>The Owner<\\/small><\\/h4>\\r\\n<\\/div>\\r\\n<div class=\\"col-sm-3\\"><img class=\\"img-circle\\" src=\\"images\\/face2.png\\" width=\\"120px\\" height=\\"140px\\" \\/>\\r\\n<h4>Kaio Labre<br \\/><small>Proj. Manager<\\/small><\\/h4>\\r\\n<\\/div>\\r\\n<div class=\\"col-sm-3\\"><img class=\\"img-circle\\" src=\\"images\\/face3.png\\" width=\\"120px\\" height=\\"140px\\" \\/>\\r\\n<h4>Shiv<br \\/><small>Front-end<\\/small><\\/h4>\\r\\n<\\/div>\\r\\n<div class=\\"col-sm-3\\"><img class=\\"img-circle\\" src=\\"images\\/face4.png\\" width=\\"120px\\" height=\\"140px\\" \\/>\\r\\n<h4>Andy<br \\/><small>Back-end<\\/small><\\/h4>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>","fulltext":"","state":1,"catid":"2","created":"2017-05-22 04:50:23","created_by":"106","created_by_alias":"","modified":"2017-05-24 01:55:06","modified_by":"106","checked_out":"106","checked_out_time":"2017-05-24 01:54:11","publish_up":"2017-05-22 04:50:23","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":10,"ordering":"2","metakey":"","metadesc":"","access":"1","hits":"58","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0);
INSERT INTO `fv5oz_ucm_history` (`version_id`, `ucm_item_id`, `ucm_type_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`) VALUES
(18, 2, 1, '', '2017-05-24 01:55:36', 106, 9347, 'a2b0dac84e8cd70c452a63c45c8b4054661a10ce', '{"id":2,"asset_id":"90","title":"ABOUT US","alias":"about-us","introtext":"<div id=\\"abouttitle\\" class=\\"container-fluid\\">\\r\\n<h1>About us<\\/h1>\\r\\n<\\/div>\\r\\n<div id=\\"aboutcontent\\" class=\\"container-fluid\\"><!-------- PURPOSE ------>\\r\\n<div id=\\"purpose\\">\\r\\n<h4>- Our Purpose -<\\/h4>\\r\\n<p class=\\"text-justify\\">The purpose of the company is not only to get the laundry done but also offer excellent customer service along with an extensive range of laundry services. The platform joins the highest technology with the experienced and highly qualified professionals who will deal with the customer\'s laundry when it best suits the customer, paired with great deals and customer satisfaction.<\\/p>\\r\\n<p class=\\"text-justify\\"><br \\/>The website will also offer customers different types of laundry combos, which they will be able to choose according to their needs and find a price that suits their budget. Basically, the users will have to access the online system, register and log in, choose their location, select laundry service combo according to their necessity, schedule a day and time for pickup and delivery and the rest will be up to the laundry professionals. Impress door-to-door service, coming to facilitate people\'s life.<\\/p>\\r\\n<\\/div>\\r\\n<!-------- TESTIMONIALS ------>\\r\\n<div id=\\"testimonials\\">\\r\\n<div id=\\"testimonial\\">\\u00a0<\\/div>\\r\\n<h4>- Testimonials -<\\/h4>\\r\\n<div class=\\"col-sm-4 testimonial\\">\\r\\n<blockquote>\\r\\n<p>\\"The \\u2018online laundry service\\u2019 software that we have been made aware of, appears to be very innovative and will expedite the laundry service used in every commercial laundry.\\"<\\/p>\\r\\n<h4><small>- Helen Psarakis - Marketing Director<\\/small><\\/h4>\\r\\n<\\/blockquote>\\r\\n<\\/div>\\r\\n<div class=\\"col-sm-4 testimonial\\">\\r\\n<blockquote>\\r\\n<p>\\"Wow, I\'m excited about this idea, I really do not have enough time to do this type of work and not even to take it to someone else to do it, so the possibility of having service to do all this process for me is the differential of this project.\\"<\\/p>\\r\\n<h4><small>- Eli Ramos - Architect<\\/small><\\/h4>\\r\\n<\\/blockquote>\\r\\n<\\/div>\\r\\n<div class=\\"col-sm-4 testimonial\\">\\r\\n<blockquote>\\r\\n<p>\\"I think having an online laundry service is an amazing idea, bieng able to save time and energy by bieng able to schedula a drop off and pick up date suited to my needs, all at touch of a button on my phone. It\'s just so easy\\"<\\/p>\\r\\n<h4><small>- Mary Clark - Mother of 4<\\/small><\\/h4>\\r\\n<\\/blockquote>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<!-------- FAQ ------>\\r\\n<div id=\\"faq\\">\\r\\n<h4>- F.A.Q -<\\/h4>\\r\\n<p class=\\"text-justify\\"><b><span style=\\"font-size: 30px;\\">Q. <\\/span>How do I get started?<\\/b><\\/p>\\r\\n<p class=\\"text-justify\\"><span style=\\"font-size: 30px;\\">A. <\\/span>Once you complete our online sign-up form, NEED NEXTSTEPS HERE <a href=\\"getStarted.html\\">Click here to get started now!<\\/a><\\/p>\\r\\n<br \\/><br \\/>\\r\\n<p class=\\"text-justify\\"><b><span style=\\"font-size: 30px;\\">Q. <\\/span>Do I need to prepare my laundry or sort it ahead of time?<\\/b><\\/p>\\r\\n<p class=\\"text-justify\\"><span style=\\"font-size: 30px;\\">A. <\\/span>Nope! Impress Laundry will sort, wash, dry, fold, package. If you have any special processing items (Delicate wash, sanitizing wash, stain treatment, air-dry, etc.) or other requests, notify Impress through a call or when you get your laundry picked up.<\\/p>\\r\\n<br \\/><br \\/>\\r\\n<p class=\\"text-justify\\"><b><span style=\\"font-size: 30px;\\">Q. <\\/span>How do I pay?<\\/b><\\/p>\\r\\n<p class=\\"text-justify\\"><span style=\\"font-size: 30px;\\">A. <\\/span>Paypal will be used when checking out, you will be charged according to your purchased combo.<\\/p>\\r\\n<br \\/><br \\/>\\r\\n<p class=\\"text-justify\\"><b><span style=\\"font-size: 30px;\\">Q. <\\/span>When will I get my clothes back?<\\/b><\\/p>\\r\\n<p class=\\"text-justify\\"><span style=\\"font-size: 30px;\\">A. <\\/span>you can arrange for your clothes to be picked up, weekly, bi-weekly, monthly, As-needed, One-time service<\\/p>\\r\\n<br \\/><br \\/>\\r\\n<p class=\\"text-justify\\"><b><span style=\\"font-size: 30px;\\">Q. <\\/span>What types of laundering requests do you accommodate?<\\/b><\\/p>\\r\\n<p class=\\"text-justify\\"><span style=\\"font-size: 30px;\\">A. <\\/span>We strive to provide you with a laundry service plan that is tailored to your needs. Some of our custom processing options include:<br \\/> <br \\/>Hypo-allergenic products<br \\/>Delicate Wash\\/dry<br \\/>Air-Dry<br \\/>Hand-wash<br \\/>Steam Press<br \\/>Iron Press<br \\/>Stain Treatments<br \\/>Sanitization<br \\/>AND MORE!<\\/p>\\r\\n<br \\/><br \\/>\\r\\n<p class=\\"text-justify\\"><b><span style=\\"font-size: 30px;\\">Q. <\\/span>What if I can\\u2019t be home for my scheduled pick-up or drop off?<\\/b><\\/p>\\r\\n<p class=\\"text-justify\\"><span style=\\"font-size: 30px;\\">A. <\\/span>You can leave your bag in a secure location outside your home (doorstep, porch, patio, reception desk etc.) or reschedule a day\\/time with Impress.<\\/p>\\r\\n<br \\/><br \\/>\\r\\n<p class=\\"text-justify\\"><b><span style=\\"font-size: 30px;\\">Q. <\\/span>I have allergies, do you use allergen-free products?<\\/b><\\/p>\\r\\n<p class=\\"text-justify\\"><span style=\\"font-size: 30px;\\">A. <\\/span>Be sure to inform Impress of any allergies to laundering and cleaning products you have. We always offer a hypo-allergenic option free of charge!<\\/p>\\r\\n<br \\/><br \\/>\\r\\n<p class=\\"text-justify\\"><b><span style=\\"font-size: 30px;\\">Q. <\\/span>How do I schedule a laundry pick-up (who?)<\\/b><\\/p>\\r\\n<p class=\\"text-justify\\"><span style=\\"font-size: 30px;\\">A. <\\/span>All scheduling is handled during combo selection and can be changed later on. You can also contact us at<a href=\\"contact.html\\"> Here<\\/a><\\/p>\\r\\n<br \\/><br \\/>\\r\\n<p class=\\"text-justify\\"><b><span style=\\"font-size: 30px;\\">Q. <\\/span>Are my clothes washed with other people\\u2019s clothes?<\\/b><\\/p>\\r\\n<p class=\\"text-justify\\"><span style=\\"font-size: 30px;\\">A. <\\/span>Absolutely not! Each bag is processed by itself. We will never clean your clothes with another customer\\u2019s clothing.<\\/p>\\r\\n<br \\/><br \\/>\\r\\n<p class=\\"text-justify\\"><b><span style=\\"font-size: 30px;\\">Q. <\\/span>What if I am missing an item of clothing from my returned bag?<\\/b><\\/p>\\r\\n<p class=\\"text-justify\\"><span style=\\"font-size: 30px;\\">A. <\\/span>Although not required, you can complete an inventory sheet prior to pick-up that details all items found within your bag. You will keep the original sheet and we will keep a copy. <br \\/>Please notify Impress of any missing items listed on the inventory sheet within 48 hours of drop off. If your item is not located after further investigation, we will reimburse you an amount equal to your proof of purchase amount, limited to a maximum of $100.00USD and a maximum total of $200.00USD per customer.<\\/p>\\r\\n<br \\/><br \\/><\\/div>\\r\\n<!-------- TEAM (FEATURE) ------>\\r\\n<div id=\\"team\\">\\r\\n<h4>- Team -<\\/h4>\\r\\n<div class=\\"row\\">\\r\\n<div class=\\"col-sm-3\\"><img class=\\"img-circle\\" src=\\"images\\/face1.png\\" width=\\"120px\\" height=\\"140px\\" \\/>\\r\\n<h4>Pablo Vieira<br \\/><small>The Owner<\\/small><\\/h4>\\r\\n<\\/div>\\r\\n<div class=\\"col-sm-3\\"><img class=\\"img-circle\\" src=\\"images\\/face2.png\\" width=\\"120px\\" height=\\"140px\\" \\/>\\r\\n<h4>Kaio Labre<br \\/><small>Proj. Manager<\\/small><\\/h4>\\r\\n<\\/div>\\r\\n<div class=\\"col-sm-3\\"><img class=\\"img-circle\\" src=\\"images\\/face3.png\\" width=\\"120px\\" height=\\"140px\\" \\/>\\r\\n<h4>Shiv<br \\/><small>Front-end<\\/small><\\/h4>\\r\\n<\\/div>\\r\\n<div class=\\"col-sm-3\\"><img class=\\"img-circle\\" src=\\"images\\/face4.png\\" width=\\"120px\\" height=\\"140px\\" \\/>\\r\\n<h4>Andy<br \\/><small>Back-end<\\/small><\\/h4>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>","fulltext":"","state":1,"catid":"2","created":"2017-05-22 04:50:23","created_by":"106","created_by_alias":"","modified":"2017-05-24 01:55:36","modified_by":"106","checked_out":"106","checked_out_time":"2017-05-24 01:55:21","publish_up":"2017-05-22 04:50:23","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":11,"ordering":"2","metakey":"","metadesc":"","access":"1","hits":"60","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(19, 2, 1, '', '2017-05-24 01:58:06', 106, 9347, '13e47e76b6f2c2ce0fa91bfe0dc59753d1148e17', '{"id":2,"asset_id":"90","title":"ABOUT US","alias":"about-us","introtext":"<div id=\\"abouttitle\\" class=\\"container-fluid\\">\\r\\n<h1>About us<\\/h1>\\r\\n<\\/div>\\r\\n<div id=\\"aboutcontent\\" class=\\"container-fluid\\"><!-------- PURPOSE ------>\\r\\n<div id=\\"purpose\\">\\r\\n<h4>- Our Purpose -<\\/h4>\\r\\n<p class=\\"text-justify\\">The purpose of the company is not only to get the laundry done but also offer excellent customer service along with an extensive range of laundry services. The platform joins the highest technology with the experienced and highly qualified professionals who will deal with the customer\'s laundry when it best suits the customer, paired with great deals and customer satisfaction.<\\/p>\\r\\n<div id=\\"testimonial\\">\\u00a0<\\/div>\\r\\n<p class=\\"text-justify\\"><br \\/>The website will also offer customers different types of laundry combos, which they will be able to choose according to their needs and find a price that suits their budget. Basically, the users will have to access the online system, register and log in, choose their location, select laundry service combo according to their necessity, schedule a day and time for pickup and delivery and the rest will be up to the laundry professionals. Impress door-to-door service, coming to facilitate people\'s life.<\\/p>\\r\\n<\\/div>\\r\\n<!-------- TESTIMONIALS ------>\\r\\n<div id=\\"testimonials\\">\\r\\n<h4>- Testimonials -<\\/h4>\\r\\n<div class=\\"col-sm-4 testimonial\\">\\r\\n<blockquote>\\r\\n<p>\\"The \\u2018online laundry service\\u2019 software that we have been made aware of, appears to be very innovative and will expedite the laundry service used in every commercial laundry.\\"<\\/p>\\r\\n<h4><small>- Helen Psarakis - Marketing Director<\\/small><\\/h4>\\r\\n<\\/blockquote>\\r\\n<\\/div>\\r\\n<div class=\\"col-sm-4 testimonial\\">\\r\\n<blockquote>\\r\\n<p>\\"Wow, I\'m excited about this idea, I really do not have enough time to do this type of work and not even to take it to someone else to do it, so the possibility of having service to do all this process for me is the differential of this project.\\"<\\/p>\\r\\n<h4><small>- Eli Ramos - Architect<\\/small><\\/h4>\\r\\n<\\/blockquote>\\r\\n<\\/div>\\r\\n<div class=\\"col-sm-4 testimonial\\">\\r\\n<blockquote>\\r\\n<p>\\"I think having an online laundry service is an amazing idea, bieng able to save time and energy by bieng able to schedula a drop off and pick up date suited to my needs, all at touch of a button on my phone. It\'s just so easy\\"<\\/p>\\r\\n<h4><small>- Mary Clark - Mother of 4<\\/small><\\/h4>\\r\\n<\\/blockquote>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<!-------- FAQ ------>\\r\\n<div id=\\"faq\\">\\r\\n<h4>- F.A.Q -<\\/h4>\\r\\n<p class=\\"text-justify\\"><b><span style=\\"font-size: 30px;\\">Q. <\\/span>How do I get started?<\\/b><\\/p>\\r\\n<p class=\\"text-justify\\"><span style=\\"font-size: 30px;\\">A. <\\/span>Once you complete our online sign-up form, NEED NEXTSTEPS HERE <a href=\\"getStarted.html\\">Click here to get started now!<\\/a><\\/p>\\r\\n<br \\/><br \\/>\\r\\n<p class=\\"text-justify\\"><b><span style=\\"font-size: 30px;\\">Q. <\\/span>Do I need to prepare my laundry or sort it ahead of time?<\\/b><\\/p>\\r\\n<p class=\\"text-justify\\"><span style=\\"font-size: 30px;\\">A. <\\/span>Nope! Impress Laundry will sort, wash, dry, fold, package. If you have any special processing items (Delicate wash, sanitizing wash, stain treatment, air-dry, etc.) or other requests, notify Impress through a call or when you get your laundry picked up.<\\/p>\\r\\n<br \\/><br \\/>\\r\\n<p class=\\"text-justify\\"><b><span style=\\"font-size: 30px;\\">Q. <\\/span>How do I pay?<\\/b><\\/p>\\r\\n<p class=\\"text-justify\\"><span style=\\"font-size: 30px;\\">A. <\\/span>Paypal will be used when checking out, you will be charged according to your purchased combo.<\\/p>\\r\\n<br \\/><br \\/>\\r\\n<p class=\\"text-justify\\"><b><span style=\\"font-size: 30px;\\">Q. <\\/span>When will I get my clothes back?<\\/b><\\/p>\\r\\n<p class=\\"text-justify\\"><span style=\\"font-size: 30px;\\">A. <\\/span>you can arrange for your clothes to be picked up, weekly, bi-weekly, monthly, As-needed, One-time service<\\/p>\\r\\n<br \\/><br \\/>\\r\\n<p class=\\"text-justify\\"><b><span style=\\"font-size: 30px;\\">Q. <\\/span>What types of laundering requests do you accommodate?<\\/b><\\/p>\\r\\n<p class=\\"text-justify\\"><span style=\\"font-size: 30px;\\">A. <\\/span>We strive to provide you with a laundry service plan that is tailored to your needs. Some of our custom processing options include:<br \\/> <br \\/>Hypo-allergenic products<br \\/>Delicate Wash\\/dry<br \\/>Air-Dry<br \\/>Hand-wash<br \\/>Steam Press<br \\/>Iron Press<br \\/>Stain Treatments<br \\/>Sanitization<br \\/>AND MORE!<\\/p>\\r\\n<br \\/><br \\/>\\r\\n<p class=\\"text-justify\\"><b><span style=\\"font-size: 30px;\\">Q. <\\/span>What if I can\\u2019t be home for my scheduled pick-up or drop off?<\\/b><\\/p>\\r\\n<p class=\\"text-justify\\"><span style=\\"font-size: 30px;\\">A. <\\/span>You can leave your bag in a secure location outside your home (doorstep, porch, patio, reception desk etc.) or reschedule a day\\/time with Impress.<\\/p>\\r\\n<br \\/><br \\/>\\r\\n<p class=\\"text-justify\\"><b><span style=\\"font-size: 30px;\\">Q. <\\/span>I have allergies, do you use allergen-free products?<\\/b><\\/p>\\r\\n<p class=\\"text-justify\\"><span style=\\"font-size: 30px;\\">A. <\\/span>Be sure to inform Impress of any allergies to laundering and cleaning products you have. We always offer a hypo-allergenic option free of charge!<\\/p>\\r\\n<br \\/><br \\/>\\r\\n<p class=\\"text-justify\\"><b><span style=\\"font-size: 30px;\\">Q. <\\/span>How do I schedule a laundry pick-up (who?)<\\/b><\\/p>\\r\\n<p class=\\"text-justify\\"><span style=\\"font-size: 30px;\\">A. <\\/span>All scheduling is handled during combo selection and can be changed later on. You can also contact us at<a href=\\"contact.html\\"> Here<\\/a><\\/p>\\r\\n<br \\/><br \\/>\\r\\n<p class=\\"text-justify\\"><b><span style=\\"font-size: 30px;\\">Q. <\\/span>Are my clothes washed with other people\\u2019s clothes?<\\/b><\\/p>\\r\\n<p class=\\"text-justify\\"><span style=\\"font-size: 30px;\\">A. <\\/span>Absolutely not! Each bag is processed by itself. We will never clean your clothes with another customer\\u2019s clothing.<\\/p>\\r\\n<br \\/><br \\/>\\r\\n<p class=\\"text-justify\\"><b><span style=\\"font-size: 30px;\\">Q. <\\/span>What if I am missing an item of clothing from my returned bag?<\\/b><\\/p>\\r\\n<p class=\\"text-justify\\"><span style=\\"font-size: 30px;\\">A. <\\/span>Although not required, you can complete an inventory sheet prior to pick-up that details all items found within your bag. You will keep the original sheet and we will keep a copy. <br \\/>Please notify Impress of any missing items listed on the inventory sheet within 48 hours of drop off. If your item is not located after further investigation, we will reimburse you an amount equal to your proof of purchase amount, limited to a maximum of $100.00USD and a maximum total of $200.00USD per customer.<\\/p>\\r\\n<br \\/><br \\/><\\/div>\\r\\n<!-------- TEAM (FEATURE) ------>\\r\\n<div id=\\"team\\">\\r\\n<h4>- Team -<\\/h4>\\r\\n<div class=\\"row\\">\\r\\n<div class=\\"col-sm-3\\"><img class=\\"img-circle\\" src=\\"images\\/face1.png\\" width=\\"120px\\" height=\\"140px\\" \\/>\\r\\n<h4>Pablo Vieira<br \\/><small>The Owner<\\/small><\\/h4>\\r\\n<\\/div>\\r\\n<div class=\\"col-sm-3\\"><img class=\\"img-circle\\" src=\\"images\\/face2.png\\" width=\\"120px\\" height=\\"140px\\" \\/>\\r\\n<h4>Kaio Labre<br \\/><small>Proj. Manager<\\/small><\\/h4>\\r\\n<\\/div>\\r\\n<div class=\\"col-sm-3\\"><img class=\\"img-circle\\" src=\\"images\\/face3.png\\" width=\\"120px\\" height=\\"140px\\" \\/>\\r\\n<h4>Shiv<br \\/><small>Front-end<\\/small><\\/h4>\\r\\n<\\/div>\\r\\n<div class=\\"col-sm-3\\"><img class=\\"img-circle\\" src=\\"images\\/face4.png\\" width=\\"120px\\" height=\\"140px\\" \\/>\\r\\n<h4>Andy<br \\/><small>Back-end<\\/small><\\/h4>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>","fulltext":"","state":1,"catid":"2","created":"2017-05-22 04:50:23","created_by":"106","created_by_alias":"","modified":"2017-05-24 01:58:06","modified_by":"106","checked_out":"106","checked_out_time":"2017-05-24 01:57:40","publish_up":"2017-05-22 04:50:23","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":13,"ordering":"2","metakey":"","metadesc":"","access":"1","hits":"67","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0);

-- --------------------------------------------------------

--
-- Table structure for table `fv5oz_updates`
--

CREATE TABLE `fv5oz_updates` (
  `update_id` int(11) NOT NULL,
  `update_site_id` int(11) DEFAULT '0',
  `extension_id` int(11) DEFAULT '0',
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `element` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `folder` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `client_id` tinyint(3) DEFAULT '0',
  `version` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `detailsurl` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `infourl` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `extra_query` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Available Updates';

--
-- Dumping data for table `fv5oz_updates`
--

INSERT INTO `fv5oz_updates` (`update_id`, `update_site_id`, `extension_id`, `name`, `description`, `element`, `type`, `folder`, `client_id`, `version`, `data`, `detailsurl`, `infourl`, `extra_query`) VALUES
(1, 3, 0, 'Chinese Simplified', '', 'pkg_zh-CN', 'package', '', 0, '3.4.1.2', '', 'https://update.joomla.org/language/details3/zh-CN_details.xml', '', ''),
(2, 3, 0, 'Croatian', '', 'pkg_hr-HR', 'package', '', 0, '3.6.5.1', '', 'https://update.joomla.org/language/details3/hr-HR_details.xml', '', ''),
(3, 3, 0, 'Czech', '', 'pkg_cs-CZ', 'package', '', 0, '3.6.5.1', '', 'https://update.joomla.org/language/details3/cs-CZ_details.xml', '', ''),
(4, 3, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '3.7.0.2', '', 'https://update.joomla.org/language/details3/da-DK_details.xml', '', ''),
(5, 3, 0, 'Dutch', '', 'pkg_nl-NL', 'package', '', 0, '3.7.0.1', '', 'https://update.joomla.org/language/details3/nl-NL_details.xml', '', ''),
(6, 3, 0, 'Estonian', '', 'pkg_et-EE', 'package', '', 0, '3.6.0.1', '', 'https://update.joomla.org/language/details3/et-EE_details.xml', '', ''),
(7, 1, 700, 'Joomla', '', 'joomla', 'file', '', 0, '3.7.0', '', 'https://update.joomla.org/core/sts/extension_sts.xml', '', ''),
(8, 3, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '3.7.0.1', '', 'https://update.joomla.org/language/details3/it-IT_details.xml', '', ''),
(9, 3, 0, 'Khmer', '', 'pkg_km-KH', 'package', '', 0, '3.4.5.1', '', 'https://update.joomla.org/language/details3/km-KH_details.xml', '', ''),
(10, 3, 0, 'Korean', '', 'pkg_ko-KR', 'package', '', 0, '3.6.5.2', '', 'https://update.joomla.org/language/details3/ko-KR_details.xml', '', ''),
(11, 3, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '3.6.2.2', '', 'https://update.joomla.org/language/details3/lv-LV_details.xml', '', ''),
(12, 3, 0, 'Macedonian', '', 'pkg_mk-MK', 'package', '', 0, '3.6.5.1', '', 'https://update.joomla.org/language/details3/mk-MK_details.xml', '', ''),
(13, 3, 0, 'Norwegian Bokmal', '', 'pkg_nb-NO', 'package', '', 0, '3.7.0.1', '', 'https://update.joomla.org/language/details3/nb-NO_details.xml', '', ''),
(14, 3, 0, 'Norwegian Nynorsk', '', 'pkg_nn-NO', 'package', '', 0, '3.4.2.1', '', 'https://update.joomla.org/language/details3/nn-NO_details.xml', '', ''),
(15, 3, 0, 'Persian', '', 'pkg_fa-IR', 'package', '', 0, '3.6.5.3', '', 'https://update.joomla.org/language/details3/fa-IR_details.xml', '', ''),
(16, 3, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '3.7.0.1', '', 'https://update.joomla.org/language/details3/pl-PL_details.xml', '', ''),
(17, 3, 0, 'Portuguese', '', 'pkg_pt-PT', 'package', '', 0, '3.6.4.3', '', 'https://update.joomla.org/language/details3/pt-PT_details.xml', '', ''),
(18, 3, 0, 'Russian', '', 'pkg_ru-RU', 'package', '', 0, '3.6.2.2', '', 'https://update.joomla.org/language/details3/ru-RU_details.xml', '', ''),
(19, 3, 0, 'English AU', '', 'pkg_en-AU', 'package', '', 0, '3.6.5.1', '', 'https://update.joomla.org/language/details3/en-AU_details.xml', '', ''),
(20, 3, 0, 'Slovak', '', 'pkg_sk-SK', 'package', '', 0, '3.6.5.1', '', 'https://update.joomla.org/language/details3/sk-SK_details.xml', '', ''),
(21, 3, 0, 'English US', '', 'pkg_en-US', 'package', '', 0, '3.6.5.1', '', 'https://update.joomla.org/language/details3/en-US_details.xml', '', ''),
(22, 3, 0, 'Swedish', '', 'pkg_sv-SE', 'package', '', 0, '3.7.0.1', '', 'https://update.joomla.org/language/details3/sv-SE_details.xml', '', ''),
(23, 3, 0, 'Syriac', '', 'pkg_sy-IQ', 'package', '', 0, '3.4.5.1', '', 'https://update.joomla.org/language/details3/sy-IQ_details.xml', '', ''),
(24, 3, 0, 'Tamil', '', 'pkg_ta-IN', 'package', '', 0, '3.7.0.1', '', 'https://update.joomla.org/language/details3/ta-IN_details.xml', '', ''),
(25, 3, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '3.6.5.1', '', 'https://update.joomla.org/language/details3/th-TH_details.xml', '', ''),
(26, 3, 0, 'Turkish', '', 'pkg_tr-TR', 'package', '', 0, '3.6.2.1', '', 'https://update.joomla.org/language/details3/tr-TR_details.xml', '', ''),
(27, 3, 0, 'Ukrainian', '', 'pkg_uk-UA', 'package', '', 0, '3.6.3.1', '', 'https://update.joomla.org/language/details3/uk-UA_details.xml', '', ''),
(28, 3, 0, 'Uyghur', '', 'pkg_ug-CN', 'package', '', 0, '3.3.0.2', '', 'https://update.joomla.org/language/details3/ug-CN_details.xml', '', ''),
(29, 3, 0, 'Albanian', '', 'pkg_sq-AL', 'package', '', 0, '3.1.1.2', '', 'https://update.joomla.org/language/details3/sq-AL_details.xml', '', ''),
(30, 3, 0, 'Basque', '', 'pkg_eu-ES', 'package', '', 0, '3.6.5.1', '', 'https://update.joomla.org/language/details3/eu-ES_details.xml', '', ''),
(31, 3, 0, 'Hindi', '', 'pkg_hi-IN', 'package', '', 0, '3.3.6.2', '', 'https://update.joomla.org/language/details3/hi-IN_details.xml', '', ''),
(32, 3, 0, 'German DE', '', 'pkg_de-DE', 'package', '', 0, '3.6.5.1', '', 'https://update.joomla.org/language/details3/de-DE_details.xml', '', ''),
(33, 3, 0, 'Portuguese Brazil', '', 'pkg_pt-BR', 'package', '', 0, '3.7.0.1', '', 'https://update.joomla.org/language/details3/pt-BR_details.xml', '', ''),
(34, 3, 0, 'Serbian Latin', '', 'pkg_sr-YU', 'package', '', 0, '3.6.5.1', '', 'https://update.joomla.org/language/details3/sr-YU_details.xml', '', ''),
(35, 3, 0, 'Spanish', '', 'pkg_es-ES', 'package', '', 0, '3.6.3.1', '', 'https://update.joomla.org/language/details3/es-ES_details.xml', '', ''),
(36, 3, 0, 'Bosnian', '', 'pkg_bs-BA', 'package', '', 0, '3.6.5.1', '', 'https://update.joomla.org/language/details3/bs-BA_details.xml', '', ''),
(37, 3, 0, 'Serbian Cyrillic', '', 'pkg_sr-RS', 'package', '', 0, '3.6.5.1', '', 'https://update.joomla.org/language/details3/sr-RS_details.xml', '', ''),
(38, 3, 0, 'Vietnamese', '', 'pkg_vi-VN', 'package', '', 0, '3.2.1.2', '', 'https://update.joomla.org/language/details3/vi-VN_details.xml', '', ''),
(39, 3, 0, 'Bahasa Indonesia', '', 'pkg_id-ID', 'package', '', 0, '3.6.2.1', '', 'https://update.joomla.org/language/details3/id-ID_details.xml', '', ''),
(40, 3, 0, 'Finnish', '', 'pkg_fi-FI', 'package', '', 0, '3.6.2.1', '', 'https://update.joomla.org/language/details3/fi-FI_details.xml', '', ''),
(41, 3, 0, 'Swahili', '', 'pkg_sw-KE', 'package', '', 0, '3.6.5.1', '', 'https://update.joomla.org/language/details3/sw-KE_details.xml', '', ''),
(42, 3, 0, 'Montenegrin', '', 'pkg_srp-ME', 'package', '', 0, '3.3.1.2', '', 'https://update.joomla.org/language/details3/srp-ME_details.xml', '', ''),
(43, 3, 0, 'English CA', '', 'pkg_en-CA', 'package', '', 0, '3.6.5.1', '', 'https://update.joomla.org/language/details3/en-CA_details.xml', '', ''),
(44, 3, 0, 'French CA', '', 'pkg_fr-CA', 'package', '', 0, '3.6.5.1', '', 'https://update.joomla.org/language/details3/fr-CA_details.xml', '', ''),
(45, 3, 0, 'Welsh', '', 'pkg_cy-GB', 'package', '', 0, '3.3.0.2', '', 'https://update.joomla.org/language/details3/cy-GB_details.xml', '', ''),
(46, 3, 0, 'Sinhala', '', 'pkg_si-LK', 'package', '', 0, '3.3.1.2', '', 'https://update.joomla.org/language/details3/si-LK_details.xml', '', ''),
(47, 3, 0, 'Dari Persian', '', 'pkg_prs-AF', 'package', '', 0, '3.4.4.2', '', 'https://update.joomla.org/language/details3/prs-AF_details.xml', '', ''),
(48, 3, 0, 'Turkmen', '', 'pkg_tk-TM', 'package', '', 0, '3.5.0.2', '', 'https://update.joomla.org/language/details3/tk-TM_details.xml', '', ''),
(49, 3, 0, 'Irish', '', 'pkg_ga-IE', 'package', '', 0, '3.6.4.1', '', 'https://update.joomla.org/language/details3/ga-IE_details.xml', '', ''),
(50, 3, 0, 'Dzongkha', '', 'pkg_dz-BT', 'package', '', 0, '3.6.2.1', '', 'https://update.joomla.org/language/details3/dz-BT_details.xml', '', ''),
(51, 3, 0, 'Slovenian', '', 'pkg_sl-SI', 'package', '', 0, '3.6.5.1', '', 'https://update.joomla.org/language/details3/sl-SI_details.xml', '', ''),
(52, 3, 0, 'Spanish CO', '', 'pkg_es-CO', 'package', '', 0, '3.7.0.1', '', 'https://update.joomla.org/language/details3/es-CO_details.xml', '', ''),
(53, 3, 0, 'German CH', '', 'pkg_de-CH', 'package', '', 0, '3.6.5.1', '', 'https://update.joomla.org/language/details3/de-CH_details.xml', '', ''),
(54, 3, 0, 'German AT', '', 'pkg_de-AT', 'package', '', 0, '3.6.5.1', '', 'https://update.joomla.org/language/details3/de-AT_details.xml', '', ''),
(55, 3, 0, 'German LI', '', 'pkg_de-LI', 'package', '', 0, '3.6.5.1', '', 'https://update.joomla.org/language/details3/de-LI_details.xml', '', ''),
(56, 3, 0, 'German LU', '', 'pkg_de-LU', 'package', '', 0, '3.6.5.1', '', 'https://update.joomla.org/language/details3/de-LU_details.xml', '', ''),
(57, 3, 0, 'English NZ', '', 'pkg_en-NZ', 'package', '', 0, '3.6.5.1', '', 'https://update.joomla.org/language/details3/en-NZ_details.xml', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `fv5oz_update_sites`
--

CREATE TABLE `fv5oz_update_sites` (
  `update_site_id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `location` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `enabled` int(11) DEFAULT '0',
  `last_check_timestamp` bigint(20) DEFAULT '0',
  `extra_query` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Update Sites';

--
-- Dumping data for table `fv5oz_update_sites`
--

INSERT INTO `fv5oz_update_sites` (`update_site_id`, `name`, `type`, `location`, `enabled`, `last_check_timestamp`, `extra_query`) VALUES
(1, 'Joomla! Core', 'collection', 'https://update.joomla.org/core/list.xml', 1, 1493247765, ''),
(2, 'Joomla! Extension Directory', 'collection', 'https://update.joomla.org/jed/list.xml', 1, 1493247765, ''),
(3, 'Accredited Joomla! Translations', 'collection', 'https://update.joomla.org/language/translationlist_3.xml', 1, 1493247767, ''),
(4, 'Joomla! Update Component Update Site', 'extension', 'https://update.joomla.org/core/extensions/com_joomlaupdate.xml', 1, 1493247767, ''),
(5, 'JoomlaCK Editor Update Site', 'extension', 'http://www.joomlackeditor.com/upgrade/plg_jckeditor.xml', 1, 0, ''),
(6, 'JoomlaCK Editor Update Site', 'extension', 'http://www.joomlackeditor.com/upgrade/com_jckman.xml', 1, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `fv5oz_update_sites_extensions`
--

CREATE TABLE `fv5oz_update_sites_extensions` (
  `update_site_id` int(11) NOT NULL DEFAULT '0',
  `extension_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Links extensions to update sites';

--
-- Dumping data for table `fv5oz_update_sites_extensions`
--

INSERT INTO `fv5oz_update_sites_extensions` (`update_site_id`, `extension_id`) VALUES
(1, 700),
(2, 700),
(3, 802),
(4, 28),
(5, 822),
(6, 824);

-- --------------------------------------------------------

--
-- Table structure for table `fv5oz_usergroups`
--

CREATE TABLE `fv5oz_usergroups` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Adjacency List Reference Id',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fv5oz_usergroups`
--

INSERT INTO `fv5oz_usergroups` (`id`, `parent_id`, `lft`, `rgt`, `title`) VALUES
(1, 0, 1, 18, 'Public'),
(2, 1, 8, 15, 'Registered'),
(3, 2, 9, 14, 'Author'),
(4, 3, 10, 13, 'Editor'),
(5, 4, 11, 12, 'Publisher'),
(6, 1, 4, 7, 'Manager'),
(7, 6, 5, 6, 'Administrator'),
(8, 1, 16, 17, 'Super Users'),
(9, 1, 2, 3, 'Guest');

-- --------------------------------------------------------

--
-- Table structure for table `fv5oz_users`
--

CREATE TABLE `fv5oz_users` (
  `id` int(11) NOT NULL,
  `firstName` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `lastName` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL,
  `homePhone` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobilePhone` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT '0',
  `sendEmail` tinyint(4) DEFAULT '0',
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastResetTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date of last password reset',
  `resetCount` int(11) NOT NULL DEFAULT '0' COMMENT 'Count of password resets since lastResetTime',
  `otpKey` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Two factor authentication encrypted keys',
  `otep` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'One time emergency passwords',
  `requireReset` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'Require user to reset password on next login'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fv5oz_users`
--

INSERT INTO `fv5oz_users` (`id`, `firstName`, `name`, `lastName`, `homePhone`, `mobilePhone`, `address`, `username`, `email`, `password`, `block`, `sendEmail`, `registerDate`, `lastvisitDate`, `activation`, `params`, `lastResetTime`, `resetCount`, `otpKey`, `otep`, `requireReset`) VALUES
(106, 'fdas', 'admin', 's', '', '324324', '', 'admin', 'fdas@fdas.das', '$2y$10$a/6j6HvIKqcyfPvHlVJd3.jVFMXYHepZuM36p7Kap.kOj0au7ORHa', 0, 1, '2017-04-10 22:44:44', '2017-05-24 06:31:43', '0', '{"admin_style":"","admin_language":"","language":"","editor":"","helpsite":"","timezone":""}', '0000-00-00 00:00:00', 0, '', '', 0),
(107, 'gfdgfds', 'manager', 'fads', 'fdsa', 'fdsa', 'fafdasfdsafdsf', 'manager', '5527@ait.nsw.edu.au', '$2y$10$4Ov8ixQreBzMTijs2HAiZ.6qq5.mflVhDeUtRtAL7cQZ/0VaLehd6', 0, 0, '2017-04-12 02:01:41', '2017-05-04 01:23:56', '', '{"admin_style":"","admin_language":"","language":"","editor":"","helpsite":"","timezone":""}', '0000-00-00 00:00:00', 0, '', '', 0),
(113, '22', '111111111 3', '3', '123456', '123456', 'sdafads', 'sss', 'sd@fda.com', '$2y$10$zn1Q5Jk4E2tQyiEENmRjN.z8EfeP9RGbTssriD0c05XRErqUu1WyC', 0, 0, '2017-05-04 22:25:20', '0000-00-00 00:00:00', '20b5407d26c2cec2e48f28f80451379d', '{}', '0000-00-00 00:00:00', 0, '', '', 0),
(114, '22', '22 3', '3', '123456', '123456', 'sdafads', 'sef', '1sd@fda.com', '$2y$10$h9Minaup1IipzSqZkYZUoO4BE15BkSz8whMAtVBlP7XgzwFhTEch6', 0, 0, '2017-05-04 22:33:53', '0000-00-00 00:00:00', 'd27cdeb2a95d8cb6e8d542583fd50039', '{}', '0000-00-00 00:00:00', 0, '', '', 0),
(115, 'gfsdq', 'gfsdq dfa', 'dfa', '5132132123', '213156156', 'dgdsfgsdfgfd', 'ddd', 'dsf@fdsa.com', '$2y$10$lgqZ093Ep9LxiEp/e53F7.bkH3xwQB/dB6DlZRBPE9gML36RM0KjC', 0, 0, '2017-05-13 02:04:18', '0000-00-00 00:00:00', '0ed78d1624ea56b811e76d3efb261e60', '{}', '0000-00-00 00:00:00', 0, '', '', 0),
(116, 'fdas', 'fads fdsa', 'dsa', '', '', 'dsfdsaf fdasfsda fdafdas f', 'dfs', '1fdas@fdas.das', '$2y$10$QPaPrmR3ivNaDnvsh.ScM.uMfj4JFHCIeXtzZW3zCo/d458qe3eDO', 0, 0, '2017-05-17 01:14:53', '0000-00-00 00:00:00', 'ddc43cace8b49760c4ab83ad1a2e165e', '{}', '0000-00-00 00:00:00', 0, '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `fv5oz_user_keys`
--

CREATE TABLE `fv5oz_user_keys` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `series` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `invalid` tinyint(4) NOT NULL,
  `time` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uastring` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fv5oz_user_notes`
--

CREATE TABLE `fv5oz_user_notes` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `catid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `subject` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) UNSIGNED NOT NULL,
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `review_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fv5oz_user_profiles`
--

CREATE TABLE `fv5oz_user_profiles` (
  `user_id` int(11) NOT NULL,
  `profile_key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Simple user profile storage table';

-- --------------------------------------------------------

--
-- Table structure for table `fv5oz_user_usergroup_map`
--

CREATE TABLE `fv5oz_user_usergroup_map` (
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__users.id',
  `group_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__usergroups.id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fv5oz_user_usergroup_map`
--

INSERT INTO `fv5oz_user_usergroup_map` (`user_id`, `group_id`) VALUES
(106, 8),
(107, 6),
(113, 2),
(114, 2),
(115, 2),
(116, 2);

-- --------------------------------------------------------

--
-- Table structure for table `fv5oz_utf8_conversion`
--

CREATE TABLE `fv5oz_utf8_conversion` (
  `converted` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fv5oz_utf8_conversion`
--

INSERT INTO `fv5oz_utf8_conversion` (`converted`) VALUES
(2);

-- --------------------------------------------------------

--
-- Table structure for table `fv5oz_viewlevels`
--

CREATE TABLE `fv5oz_viewlevels` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rules` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded access control.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fv5oz_viewlevels`
--

INSERT INTO `fv5oz_viewlevels` (`id`, `title`, `ordering`, `rules`) VALUES
(1, 'Public', 0, '[1]'),
(2, 'Registered', 2, '[6,2,8]'),
(3, 'Special', 3, '[6,3,8]'),
(5, 'Guest', 1, '[9]'),
(6, 'Super Users', 4, '[8]');

-- --------------------------------------------------------

--
-- Table structure for table `fv50z_card`
--

CREATE TABLE `fv50z_card` (
  `cardID` int(11) NOT NULL,
  `cardNumber` bigint(30) NOT NULL,
  `cardHolder` varchar(200) NOT NULL,
  `expiryDate` date NOT NULL,
  `secretNumber` int(11) NOT NULL,
  `type` varchar(150) NOT NULL,
  `bank` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `fv50z_combos`
--

CREATE TABLE `fv50z_combos` (
  `comboID` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `published` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `fv50z_comboservice`
--

CREATE TABLE `fv50z_comboservice` (
  `serviceID` int(11) NOT NULL,
  `comboID` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `fv50z_logbook`
--

CREATE TABLE `fv50z_logbook` (
  `logID` int(20) NOT NULL,
  `dateTimeModify` datetime NOT NULL,
  `status` tinyint(4) NOT NULL,
  `note` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `fv50z_orderlogbook`
--

CREATE TABLE `fv50z_orderlogbook` (
  `logID` int(11) NOT NULL,
  `orderID` int(11) NOT NULL,
  `userID` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `fv50z_payment`
--

CREATE TABLE `fv50z_payment` (
  `paymentID` int(20) NOT NULL,
  `type` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `userID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `fv5oz_assets`
--
ALTER TABLE `fv5oz_assets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_asset_name` (`name`),
  ADD KEY `idx_lft_rgt` (`lft`,`rgt`),
  ADD KEY `idx_parent_id` (`parent_id`);

--
-- Indexes for table `fv5oz_associations`
--
ALTER TABLE `fv5oz_associations`
  ADD PRIMARY KEY (`context`,`id`),
  ADD KEY `idx_key` (`key`);

--
-- Indexes for table `fv5oz_banners`
--
ALTER TABLE `fv5oz_banners`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_own_prefix` (`own_prefix`),
  ADD KEY `idx_metakey_prefix` (`metakey_prefix`(100)),
  ADD KEY `idx_banner_catid` (`catid`),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `fv5oz_banner_clients`
--
ALTER TABLE `fv5oz_banner_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_own_prefix` (`own_prefix`),
  ADD KEY `idx_metakey_prefix` (`metakey_prefix`(100));

--
-- Indexes for table `fv5oz_banner_tracks`
--
ALTER TABLE `fv5oz_banner_tracks`
  ADD PRIMARY KEY (`track_date`,`track_type`,`banner_id`),
  ADD KEY `idx_track_date` (`track_date`),
  ADD KEY `idx_track_type` (`track_type`),
  ADD KEY `idx_banner_id` (`banner_id`);

--
-- Indexes for table `fv5oz_categories`
--
ALTER TABLE `fv5oz_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cat_idx` (`extension`,`published`,`access`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_path` (`path`(100)),
  ADD KEY `idx_left_right` (`lft`,`rgt`),
  ADD KEY `idx_alias` (`alias`(100)),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `fv5oz_combos_combo`
--
ALTER TABLE `fv5oz_combos_combo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fv5oz_contact_details`
--
ALTER TABLE `fv5oz_contact_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`published`),
  ADD KEY `idx_catid` (`catid`),
  ADD KEY `idx_createdby` (`created_by`),
  ADD KEY `idx_featured_catid` (`featured`,`catid`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_xreference` (`xreference`);

--
-- Indexes for table `fv5oz_content`
--
ALTER TABLE `fv5oz_content`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_catid` (`catid`),
  ADD KEY `idx_createdby` (`created_by`),
  ADD KEY `idx_featured_catid` (`featured`,`catid`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_xreference` (`xreference`);

--
-- Indexes for table `fv5oz_contentitem_tag_map`
--
ALTER TABLE `fv5oz_contentitem_tag_map`
  ADD UNIQUE KEY `uc_ItemnameTagid` (`type_id`,`content_item_id`,`tag_id`),
  ADD KEY `idx_tag_type` (`tag_id`,`type_id`),
  ADD KEY `idx_date_id` (`tag_date`,`tag_id`),
  ADD KEY `idx_core_content_id` (`core_content_id`);

--
-- Indexes for table `fv5oz_content_frontpage`
--
ALTER TABLE `fv5oz_content_frontpage`
  ADD PRIMARY KEY (`content_id`);

--
-- Indexes for table `fv5oz_content_rating`
--
ALTER TABLE `fv5oz_content_rating`
  ADD PRIMARY KEY (`content_id`);

--
-- Indexes for table `fv5oz_content_types`
--
ALTER TABLE `fv5oz_content_types`
  ADD PRIMARY KEY (`type_id`),
  ADD KEY `idx_alias` (`type_alias`(100));

--
-- Indexes for table `fv5oz_extensions`
--
ALTER TABLE `fv5oz_extensions`
  ADD PRIMARY KEY (`extension_id`),
  ADD KEY `element_clientid` (`element`,`client_id`),
  ADD KEY `element_folder_clientid` (`element`,`folder`,`client_id`),
  ADD KEY `extension` (`type`,`element`,`folder`,`client_id`);

--
-- Indexes for table `fv5oz_finder_filters`
--
ALTER TABLE `fv5oz_finder_filters`
  ADD PRIMARY KEY (`filter_id`);

--
-- Indexes for table `fv5oz_finder_links`
--
ALTER TABLE `fv5oz_finder_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `idx_type` (`type_id`),
  ADD KEY `idx_title` (`title`(100)),
  ADD KEY `idx_md5` (`md5sum`),
  ADD KEY `idx_url` (`url`(75)),
  ADD KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`),
  ADD KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`);

--
-- Indexes for table `fv5oz_finder_links_terms0`
--
ALTER TABLE `fv5oz_finder_links_terms0`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `fv5oz_finder_links_terms1`
--
ALTER TABLE `fv5oz_finder_links_terms1`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `fv5oz_finder_links_terms2`
--
ALTER TABLE `fv5oz_finder_links_terms2`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `fv5oz_finder_links_terms3`
--
ALTER TABLE `fv5oz_finder_links_terms3`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `fv5oz_finder_links_terms4`
--
ALTER TABLE `fv5oz_finder_links_terms4`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `fv5oz_finder_links_terms5`
--
ALTER TABLE `fv5oz_finder_links_terms5`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `fv5oz_finder_links_terms6`
--
ALTER TABLE `fv5oz_finder_links_terms6`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `fv5oz_finder_links_terms7`
--
ALTER TABLE `fv5oz_finder_links_terms7`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `fv5oz_finder_links_terms8`
--
ALTER TABLE `fv5oz_finder_links_terms8`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `fv5oz_finder_links_terms9`
--
ALTER TABLE `fv5oz_finder_links_terms9`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `fv5oz_finder_links_termsa`
--
ALTER TABLE `fv5oz_finder_links_termsa`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `fv5oz_finder_links_termsb`
--
ALTER TABLE `fv5oz_finder_links_termsb`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `fv5oz_finder_links_termsc`
--
ALTER TABLE `fv5oz_finder_links_termsc`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `fv5oz_finder_links_termsd`
--
ALTER TABLE `fv5oz_finder_links_termsd`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `fv5oz_finder_links_termse`
--
ALTER TABLE `fv5oz_finder_links_termse`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `fv5oz_finder_links_termsf`
--
ALTER TABLE `fv5oz_finder_links_termsf`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `fv5oz_finder_taxonomy`
--
ALTER TABLE `fv5oz_finder_taxonomy`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parent_id` (`parent_id`),
  ADD KEY `state` (`state`),
  ADD KEY `ordering` (`ordering`),
  ADD KEY `access` (`access`),
  ADD KEY `idx_parent_published` (`parent_id`,`state`,`access`);

--
-- Indexes for table `fv5oz_finder_taxonomy_map`
--
ALTER TABLE `fv5oz_finder_taxonomy_map`
  ADD PRIMARY KEY (`link_id`,`node_id`),
  ADD KEY `link_id` (`link_id`),
  ADD KEY `node_id` (`node_id`);

--
-- Indexes for table `fv5oz_finder_terms`
--
ALTER TABLE `fv5oz_finder_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD UNIQUE KEY `idx_term` (`term`),
  ADD KEY `idx_term_phrase` (`term`,`phrase`),
  ADD KEY `idx_stem_phrase` (`stem`,`phrase`),
  ADD KEY `idx_soundex_phrase` (`soundex`,`phrase`);

--
-- Indexes for table `fv5oz_finder_terms_common`
--
ALTER TABLE `fv5oz_finder_terms_common`
  ADD KEY `idx_word_lang` (`term`,`language`),
  ADD KEY `idx_lang` (`language`);

--
-- Indexes for table `fv5oz_finder_tokens`
--
ALTER TABLE `fv5oz_finder_tokens`
  ADD KEY `idx_word` (`term`),
  ADD KEY `idx_context` (`context`);

--
-- Indexes for table `fv5oz_finder_tokens_aggregate`
--
ALTER TABLE `fv5oz_finder_tokens_aggregate`
  ADD KEY `token` (`term`),
  ADD KEY `keyword_id` (`term_id`);

--
-- Indexes for table `fv5oz_finder_types`
--
ALTER TABLE `fv5oz_finder_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title` (`title`);

--
-- Indexes for table `fv5oz_jcklanguages`
--
ALTER TABLE `fv5oz_jcklanguages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fv5oz_jckplugins`
--
ALTER TABLE `fv5oz_jckplugins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `plugin` (`name`);

--
-- Indexes for table `fv5oz_jcktoolbarplugins`
--
ALTER TABLE `fv5oz_jcktoolbarplugins`
  ADD PRIMARY KEY (`toolbarid`,`pluginid`);

--
-- Indexes for table `fv5oz_jcktoolbars`
--
ALTER TABLE `fv5oz_jcktoolbars`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `toolbar` (`name`);

--
-- Indexes for table `fv5oz_languages`
--
ALTER TABLE `fv5oz_languages`
  ADD PRIMARY KEY (`lang_id`),
  ADD UNIQUE KEY `idx_sef` (`sef`),
  ADD UNIQUE KEY `idx_image` (`image`),
  ADD UNIQUE KEY `idx_langcode` (`lang_code`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_ordering` (`ordering`);

--
-- Indexes for table `fv5oz_location`
--
ALTER TABLE `fv5oz_location`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fv5oz_logbook`
--
ALTER TABLE `fv5oz_logbook`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fv5oz_menu`
--
ALTER TABLE `fv5oz_menu`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_client_id_parent_id_alias_language` (`client_id`,`parent_id`,`alias`(100),`language`),
  ADD KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`),
  ADD KEY `idx_menutype` (`menutype`),
  ADD KEY `idx_left_right` (`lft`,`rgt`),
  ADD KEY `idx_alias` (`alias`(100)),
  ADD KEY `idx_path` (`path`(100)),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `fv5oz_menu_types`
--
ALTER TABLE `fv5oz_menu_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_menutype` (`menutype`);

--
-- Indexes for table `fv5oz_messages`
--
ALTER TABLE `fv5oz_messages`
  ADD PRIMARY KEY (`message_id`),
  ADD KEY `useridto_state` (`user_id_to`,`state`);

--
-- Indexes for table `fv5oz_messages_cfg`
--
ALTER TABLE `fv5oz_messages_cfg`
  ADD UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`);

--
-- Indexes for table `fv5oz_modules`
--
ALTER TABLE `fv5oz_modules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `published` (`published`,`access`),
  ADD KEY `newsfeeds` (`module`,`published`),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `fv5oz_modules_menu`
--
ALTER TABLE `fv5oz_modules_menu`
  ADD PRIMARY KEY (`moduleid`,`menuid`);

--
-- Indexes for table `fv5oz_newsfeeds`
--
ALTER TABLE `fv5oz_newsfeeds`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`published`),
  ADD KEY `idx_catid` (`catid`),
  ADD KEY `idx_createdby` (`created_by`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_xreference` (`xreference`);

--
-- Indexes for table `fv5oz_order`
--
ALTER TABLE `fv5oz_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fv5oz_orderlogbook`
--
ALTER TABLE `fv5oz_orderlogbook`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fv5oz_overrider`
--
ALTER TABLE `fv5oz_overrider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fv5oz_payment`
--
ALTER TABLE `fv5oz_payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fv5oz_postinstall_messages`
--
ALTER TABLE `fv5oz_postinstall_messages`
  ADD PRIMARY KEY (`postinstall_message_id`);

--
-- Indexes for table `fv5oz_redirect_links`
--
ALTER TABLE `fv5oz_redirect_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_old_url` (`old_url`(100)),
  ADD KEY `idx_link_modifed` (`modified_date`);

--
-- Indexes for table `fv5oz_schemas`
--
ALTER TABLE `fv5oz_schemas`
  ADD PRIMARY KEY (`extension_id`,`version_id`);

--
-- Indexes for table `fv5oz_services`
--
ALTER TABLE `fv5oz_services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fv5oz_session`
--
ALTER TABLE `fv5oz_session`
  ADD PRIMARY KEY (`session_id`),
  ADD KEY `userid` (`userid`),
  ADD KEY `time` (`time`);

--
-- Indexes for table `fv5oz_tags`
--
ALTER TABLE `fv5oz_tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tag_idx` (`published`,`access`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_path` (`path`(100)),
  ADD KEY `idx_left_right` (`lft`,`rgt`),
  ADD KEY `idx_alias` (`alias`(100)),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `fv5oz_template_styles`
--
ALTER TABLE `fv5oz_template_styles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_template` (`template`),
  ADD KEY `idx_home` (`home`);

--
-- Indexes for table `fv5oz_ucm_base`
--
ALTER TABLE `fv5oz_ucm_base`
  ADD PRIMARY KEY (`ucm_id`),
  ADD KEY `idx_ucm_item_id` (`ucm_item_id`),
  ADD KEY `idx_ucm_type_id` (`ucm_type_id`),
  ADD KEY `idx_ucm_language_id` (`ucm_language_id`);

--
-- Indexes for table `fv5oz_ucm_content`
--
ALTER TABLE `fv5oz_ucm_content`
  ADD PRIMARY KEY (`core_content_id`),
  ADD KEY `tag_idx` (`core_state`,`core_access`),
  ADD KEY `idx_access` (`core_access`),
  ADD KEY `idx_alias` (`core_alias`(100)),
  ADD KEY `idx_language` (`core_language`),
  ADD KEY `idx_title` (`core_title`(100)),
  ADD KEY `idx_modified_time` (`core_modified_time`),
  ADD KEY `idx_created_time` (`core_created_time`),
  ADD KEY `idx_content_type` (`core_type_alias`(100)),
  ADD KEY `idx_core_modified_user_id` (`core_modified_user_id`),
  ADD KEY `idx_core_checked_out_user_id` (`core_checked_out_user_id`),
  ADD KEY `idx_core_created_user_id` (`core_created_user_id`),
  ADD KEY `idx_core_type_id` (`core_type_id`);

--
-- Indexes for table `fv5oz_ucm_history`
--
ALTER TABLE `fv5oz_ucm_history`
  ADD PRIMARY KEY (`version_id`),
  ADD KEY `idx_ucm_item_id` (`ucm_type_id`,`ucm_item_id`),
  ADD KEY `idx_save_date` (`save_date`);

--
-- Indexes for table `fv5oz_updates`
--
ALTER TABLE `fv5oz_updates`
  ADD PRIMARY KEY (`update_id`);

--
-- Indexes for table `fv5oz_update_sites`
--
ALTER TABLE `fv5oz_update_sites`
  ADD PRIMARY KEY (`update_site_id`);

--
-- Indexes for table `fv5oz_update_sites_extensions`
--
ALTER TABLE `fv5oz_update_sites_extensions`
  ADD PRIMARY KEY (`update_site_id`,`extension_id`);

--
-- Indexes for table `fv5oz_usergroups`
--
ALTER TABLE `fv5oz_usergroups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`),
  ADD KEY `idx_usergroup_title_lookup` (`title`),
  ADD KEY `idx_usergroup_adjacency_lookup` (`parent_id`),
  ADD KEY `idx_usergroup_nested_set_lookup` (`lft`,`rgt`) USING BTREE;

--
-- Indexes for table `fv5oz_users`
--
ALTER TABLE `fv5oz_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_name` (`firstName`(100)),
  ADD KEY `idx_block` (`block`),
  ADD KEY `username` (`username`),
  ADD KEY `email` (`email`);

--
-- Indexes for table `fv5oz_user_keys`
--
ALTER TABLE `fv5oz_user_keys`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `series` (`series`),
  ADD UNIQUE KEY `series_2` (`series`),
  ADD UNIQUE KEY `series_3` (`series`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `fv5oz_user_notes`
--
ALTER TABLE `fv5oz_user_notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_id` (`user_id`),
  ADD KEY `idx_category_id` (`catid`);

--
-- Indexes for table `fv5oz_user_profiles`
--
ALTER TABLE `fv5oz_user_profiles`
  ADD UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`);

--
-- Indexes for table `fv5oz_user_usergroup_map`
--
ALTER TABLE `fv5oz_user_usergroup_map`
  ADD PRIMARY KEY (`user_id`,`group_id`);

--
-- Indexes for table `fv5oz_viewlevels`
--
ALTER TABLE `fv5oz_viewlevels`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_assetgroup_title_lookup` (`title`);

--
-- Indexes for table `fv50z_card`
--
ALTER TABLE `fv50z_card`
  ADD PRIMARY KEY (`cardID`);

--
-- Indexes for table `fv50z_combos`
--
ALTER TABLE `fv50z_combos`
  ADD PRIMARY KEY (`comboID`);

--
-- Indexes for table `fv50z_comboservice`
--
ALTER TABLE `fv50z_comboservice`
  ADD PRIMARY KEY (`serviceID`,`comboID`);

--
-- Indexes for table `fv50z_logbook`
--
ALTER TABLE `fv50z_logbook`
  ADD PRIMARY KEY (`logID`);

--
-- Indexes for table `fv50z_orderlogbook`
--
ALTER TABLE `fv50z_orderlogbook`
  ADD PRIMARY KEY (`logID`,`orderID`);

--
-- Indexes for table `fv50z_payment`
--
ALTER TABLE `fv50z_payment`
  ADD PRIMARY KEY (`paymentID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `fv5oz_assets`
--
ALTER TABLE `fv5oz_assets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key', AUTO_INCREMENT=93;
--
-- AUTO_INCREMENT for table `fv5oz_banners`
--
ALTER TABLE `fv5oz_banners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `fv5oz_banner_clients`
--
ALTER TABLE `fv5oz_banner_clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `fv5oz_categories`
--
ALTER TABLE `fv5oz_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `fv5oz_combos_combo`
--
ALTER TABLE `fv5oz_combos_combo`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `fv5oz_contact_details`
--
ALTER TABLE `fv5oz_contact_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `fv5oz_content`
--
ALTER TABLE `fv5oz_content`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `fv5oz_content_types`
--
ALTER TABLE `fv5oz_content_types`
  MODIFY `type_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `fv5oz_extensions`
--
ALTER TABLE `fv5oz_extensions`
  MODIFY `extension_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=828;
--
-- AUTO_INCREMENT for table `fv5oz_finder_filters`
--
ALTER TABLE `fv5oz_finder_filters`
  MODIFY `filter_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `fv5oz_finder_links`
--
ALTER TABLE `fv5oz_finder_links`
  MODIFY `link_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `fv5oz_finder_taxonomy`
--
ALTER TABLE `fv5oz_finder_taxonomy`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `fv5oz_finder_terms`
--
ALTER TABLE `fv5oz_finder_terms`
  MODIFY `term_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `fv5oz_finder_types`
--
ALTER TABLE `fv5oz_finder_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `fv5oz_jcklanguages`
--
ALTER TABLE `fv5oz_jcklanguages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `fv5oz_jckplugins`
--
ALTER TABLE `fv5oz_jckplugins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
--
-- AUTO_INCREMENT for table `fv5oz_jcktoolbars`
--
ALTER TABLE `fv5oz_jcktoolbars`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `fv5oz_languages`
--
ALTER TABLE `fv5oz_languages`
  MODIFY `lang_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `fv5oz_location`
--
ALTER TABLE `fv5oz_location`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `fv5oz_logbook`
--
ALTER TABLE `fv5oz_logbook`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `fv5oz_menu`
--
ALTER TABLE `fv5oz_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=152;
--
-- AUTO_INCREMENT for table `fv5oz_menu_types`
--
ALTER TABLE `fv5oz_menu_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `fv5oz_messages`
--
ALTER TABLE `fv5oz_messages`
  MODIFY `message_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `fv5oz_modules`
--
ALTER TABLE `fv5oz_modules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;
--
-- AUTO_INCREMENT for table `fv5oz_newsfeeds`
--
ALTER TABLE `fv5oz_newsfeeds`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `fv5oz_order`
--
ALTER TABLE `fv5oz_order`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `fv5oz_orderlogbook`
--
ALTER TABLE `fv5oz_orderlogbook`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `fv5oz_overrider`
--
ALTER TABLE `fv5oz_overrider`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key';
--
-- AUTO_INCREMENT for table `fv5oz_payment`
--
ALTER TABLE `fv5oz_payment`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `fv5oz_postinstall_messages`
--
ALTER TABLE `fv5oz_postinstall_messages`
  MODIFY `postinstall_message_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `fv5oz_redirect_links`
--
ALTER TABLE `fv5oz_redirect_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `fv5oz_services`
--
ALTER TABLE `fv5oz_services`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `fv5oz_tags`
--
ALTER TABLE `fv5oz_tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `fv5oz_template_styles`
--
ALTER TABLE `fv5oz_template_styles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `fv5oz_ucm_content`
--
ALTER TABLE `fv5oz_ucm_content`
  MODIFY `core_content_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `fv5oz_ucm_history`
--
ALTER TABLE `fv5oz_ucm_history`
  MODIFY `version_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `fv5oz_updates`
--
ALTER TABLE `fv5oz_updates`
  MODIFY `update_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;
--
-- AUTO_INCREMENT for table `fv5oz_update_sites`
--
ALTER TABLE `fv5oz_update_sites`
  MODIFY `update_site_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `fv5oz_usergroups`
--
ALTER TABLE `fv5oz_usergroups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key', AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `fv5oz_users`
--
ALTER TABLE `fv5oz_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;
--
-- AUTO_INCREMENT for table `fv5oz_user_keys`
--
ALTER TABLE `fv5oz_user_keys`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `fv5oz_user_notes`
--
ALTER TABLE `fv5oz_user_notes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `fv5oz_viewlevels`
--
ALTER TABLE `fv5oz_viewlevels`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key', AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `fv50z_card`
--
ALTER TABLE `fv50z_card`
  MODIFY `cardID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `fv50z_combos`
--
ALTER TABLE `fv50z_combos`
  MODIFY `comboID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `fv50z_logbook`
--
ALTER TABLE `fv50z_logbook`
  MODIFY `logID` int(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `fv50z_payment`
--
ALTER TABLE `fv50z_payment`
  MODIFY `paymentID` int(20) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
