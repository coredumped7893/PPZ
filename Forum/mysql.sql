-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 04, 2020 at 11:52 AM
-- Server version: 5.7.24
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mysql`
--


--
-- Table structure for table `phpbbacl_groups`
--

CREATE TABLE `phpbbacl_groups` (
  `group_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `forum_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `auth_option_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `auth_role_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `auth_setting` tinyint(2) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbbacl_groups`
--

INSERT INTO `phpbbacl_groups` (`group_id`, `forum_id`, `auth_option_id`, `auth_role_id`, `auth_setting`) VALUES
(1, 0, 91, 0, 1),
(1, 0, 100, 0, 1),
(1, 0, 119, 0, 1),
(5, 0, 0, 5, 0),
(5, 0, 0, 1, 0),
(2, 0, 0, 6, 0),
(3, 0, 0, 6, 0),
(4, 0, 0, 5, 0),
(4, 0, 0, 10, 0),
(1, 1, 0, 17, 0),
(2, 1, 0, 17, 0),
(3, 1, 0, 17, 0),
(6, 1, 0, 17, 0),
(1, 2, 0, 17, 0),
(2, 2, 0, 15, 0),
(3, 2, 0, 15, 0),
(4, 2, 0, 21, 0),
(5, 2, 0, 14, 0),
(5, 2, 0, 10, 0),
(6, 2, 0, 19, 0),
(7, 0, 0, 23, 0),
(7, 2, 0, 24, 0);

-- --------------------------------------------------------

--
-- Table structure for table `phpbbacl_options`
--

CREATE TABLE `phpbbacl_options` (
  `auth_option_id` mediumint(8) UNSIGNED NOT NULL,
  `auth_option` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT '',
  `is_global` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `is_local` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `founder_only` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbbacl_options`
--

INSERT INTO `phpbbacl_options` (`auth_option_id`, `auth_option`, `is_global`, `is_local`, `founder_only`) VALUES
(1, 'f_', 0, 1, 0),
(2, 'f_announce', 0, 1, 0),
(3, 'f_announce_global', 0, 1, 0),
(4, 'f_attach', 0, 1, 0),
(5, 'f_bbcode', 0, 1, 0),
(6, 'f_bump', 0, 1, 0),
(7, 'f_delete', 0, 1, 0),
(8, 'f_download', 0, 1, 0),
(9, 'f_edit', 0, 1, 0),
(10, 'f_email', 0, 1, 0),
(11, 'f_flash', 0, 1, 0),
(12, 'f_icons', 0, 1, 0),
(13, 'f_ignoreflood', 0, 1, 0),
(14, 'f_img', 0, 1, 0),
(15, 'f_list', 0, 1, 0),
(16, 'f_list_topics', 0, 1, 0),
(17, 'f_noapprove', 0, 1, 0),
(18, 'f_poll', 0, 1, 0),
(19, 'f_post', 0, 1, 0),
(20, 'f_postcount', 0, 1, 0),
(21, 'f_print', 0, 1, 0),
(22, 'f_read', 0, 1, 0),
(23, 'f_reply', 0, 1, 0),
(24, 'f_report', 0, 1, 0),
(25, 'f_search', 0, 1, 0),
(26, 'f_sigs', 0, 1, 0),
(27, 'f_smilies', 0, 1, 0),
(28, 'f_sticky', 0, 1, 0),
(29, 'f_subscribe', 0, 1, 0),
(30, 'f_user_lock', 0, 1, 0),
(31, 'f_vote', 0, 1, 0),
(32, 'f_votechg', 0, 1, 0),
(33, 'f_softdelete', 0, 1, 0),
(34, 'm_', 1, 1, 0),
(35, 'm_approve', 1, 1, 0),
(36, 'm_chgposter', 1, 1, 0),
(37, 'm_delete', 1, 1, 0),
(38, 'm_edit', 1, 1, 0),
(39, 'm_info', 1, 1, 0),
(40, 'm_lock', 1, 1, 0),
(41, 'm_merge', 1, 1, 0),
(42, 'm_move', 1, 1, 0),
(43, 'm_report', 1, 1, 0),
(44, 'm_split', 1, 1, 0),
(45, 'm_softdelete', 1, 1, 0),
(46, 'm_ban', 1, 0, 0),
(47, 'm_pm_report', 1, 0, 0),
(48, 'm_warn', 1, 0, 0),
(49, 'a_', 1, 0, 0),
(50, 'a_aauth', 1, 0, 0),
(51, 'a_attach', 1, 0, 0),
(52, 'a_authgroups', 1, 0, 0),
(53, 'a_authusers', 1, 0, 0),
(54, 'a_backup', 1, 0, 0),
(55, 'a_ban', 1, 0, 0),
(56, 'a_bbcode', 1, 0, 0),
(57, 'a_board', 1, 0, 0),
(58, 'a_bots', 1, 0, 0),
(59, 'a_clearlogs', 1, 0, 0),
(60, 'a_email', 1, 0, 0),
(61, 'a_extensions', 1, 0, 0),
(62, 'a_fauth', 1, 0, 0),
(63, 'a_forum', 1, 0, 0),
(64, 'a_forumadd', 1, 0, 0),
(65, 'a_forumdel', 1, 0, 0),
(66, 'a_group', 1, 0, 0),
(67, 'a_groupadd', 1, 0, 0),
(68, 'a_groupdel', 1, 0, 0),
(69, 'a_icons', 1, 0, 0),
(70, 'a_jabber', 1, 0, 0),
(71, 'a_language', 1, 0, 0),
(72, 'a_mauth', 1, 0, 0),
(73, 'a_modules', 1, 0, 0),
(74, 'a_names', 1, 0, 0),
(75, 'a_phpinfo', 1, 0, 0),
(76, 'a_profile', 1, 0, 0),
(77, 'a_prune', 1, 0, 0),
(78, 'a_ranks', 1, 0, 0),
(79, 'a_reasons', 1, 0, 0),
(80, 'a_roles', 1, 0, 0),
(81, 'a_search', 1, 0, 0),
(82, 'a_server', 1, 0, 0),
(83, 'a_styles', 1, 0, 0),
(84, 'a_switchperm', 1, 0, 0),
(85, 'a_uauth', 1, 0, 0),
(86, 'a_user', 1, 0, 0),
(87, 'a_userdel', 1, 0, 0),
(88, 'a_viewauth', 1, 0, 0),
(89, 'a_viewlogs', 1, 0, 0),
(90, 'a_words', 1, 0, 0),
(91, 'u_', 1, 0, 0),
(92, 'u_attach', 1, 0, 0),
(93, 'u_chgavatar', 1, 0, 0),
(94, 'u_chgcensors', 1, 0, 0),
(95, 'u_chgemail', 1, 0, 0),
(96, 'u_chggrp', 1, 0, 0),
(97, 'u_chgname', 1, 0, 0),
(98, 'u_chgpasswd', 1, 0, 0),
(99, 'u_chgprofileinfo', 1, 0, 0),
(100, 'u_download', 1, 0, 0),
(101, 'u_emoji', 1, 0, 0),
(102, 'u_hideonline', 1, 0, 0),
(103, 'u_ignoreflood', 1, 0, 0),
(104, 'u_masspm', 1, 0, 0),
(105, 'u_masspm_group', 1, 0, 0),
(106, 'u_pm_attach', 1, 0, 0),
(107, 'u_pm_bbcode', 1, 0, 0),
(108, 'u_pm_delete', 1, 0, 0),
(109, 'u_pm_download', 1, 0, 0),
(110, 'u_pm_edit', 1, 0, 0),
(111, 'u_pm_emailpm', 1, 0, 0),
(112, 'u_pm_flash', 1, 0, 0),
(113, 'u_pm_forward', 1, 0, 0),
(114, 'u_pm_img', 1, 0, 0),
(115, 'u_pm_printpm', 1, 0, 0),
(116, 'u_pm_smilies', 1, 0, 0),
(117, 'u_readpm', 1, 0, 0),
(118, 'u_savedrafts', 1, 0, 0),
(119, 'u_search', 1, 0, 0),
(120, 'u_sendemail', 1, 0, 0),
(121, 'u_sendim', 1, 0, 0),
(122, 'u_sendpm', 1, 0, 0),
(123, 'u_sig', 1, 0, 0),
(124, 'u_viewonline', 1, 0, 0),
(125, 'u_viewprofile', 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `phpbbacl_roles`
--

CREATE TABLE `phpbbacl_roles` (
  `role_id` mediumint(8) UNSIGNED NOT NULL,
  `role_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `role_description` text COLLATE utf8_bin NOT NULL,
  `role_type` varchar(10) COLLATE utf8_bin NOT NULL DEFAULT '',
  `role_order` smallint(4) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbbacl_roles`
--

INSERT INTO `phpbbacl_roles` (`role_id`, `role_name`, `role_description`, `role_type`, `role_order`) VALUES
(1, 'ROLE_ADMIN_STANDARD', 'ROLE_DESCRIPTION_ADMIN_STANDARD', 'a_', 1),
(2, 'ROLE_ADMIN_FORUM', 'ROLE_DESCRIPTION_ADMIN_FORUM', 'a_', 3),
(3, 'ROLE_ADMIN_USERGROUP', 'ROLE_DESCRIPTION_ADMIN_USERGROUP', 'a_', 4),
(4, 'ROLE_ADMIN_FULL', 'ROLE_DESCRIPTION_ADMIN_FULL', 'a_', 2),
(5, 'ROLE_USER_FULL', 'ROLE_DESCRIPTION_USER_FULL', 'u_', 3),
(6, 'ROLE_USER_STANDARD', 'ROLE_DESCRIPTION_USER_STANDARD', 'u_', 1),
(7, 'ROLE_USER_LIMITED', 'ROLE_DESCRIPTION_USER_LIMITED', 'u_', 2),
(8, 'ROLE_USER_NOPM', 'ROLE_DESCRIPTION_USER_NOPM', 'u_', 4),
(9, 'ROLE_USER_NOAVATAR', 'ROLE_DESCRIPTION_USER_NOAVATAR', 'u_', 5),
(10, 'ROLE_MOD_FULL', 'ROLE_DESCRIPTION_MOD_FULL', 'm_', 3),
(11, 'ROLE_MOD_STANDARD', 'ROLE_DESCRIPTION_MOD_STANDARD', 'm_', 1),
(12, 'ROLE_MOD_SIMPLE', 'ROLE_DESCRIPTION_MOD_SIMPLE', 'm_', 2),
(13, 'ROLE_MOD_QUEUE', 'ROLE_DESCRIPTION_MOD_QUEUE', 'm_', 4),
(14, 'ROLE_FORUM_FULL', 'ROLE_DESCRIPTION_FORUM_FULL', 'f_', 7),
(15, 'ROLE_FORUM_STANDARD', 'ROLE_DESCRIPTION_FORUM_STANDARD', 'f_', 5),
(16, 'ROLE_FORUM_NOACCESS', 'ROLE_DESCRIPTION_FORUM_NOACCESS', 'f_', 1),
(17, 'ROLE_FORUM_READONLY', 'ROLE_DESCRIPTION_FORUM_READONLY', 'f_', 2),
(18, 'ROLE_FORUM_LIMITED', 'ROLE_DESCRIPTION_FORUM_LIMITED', 'f_', 3),
(19, 'ROLE_FORUM_BOT', 'ROLE_DESCRIPTION_FORUM_BOT', 'f_', 9),
(20, 'ROLE_FORUM_ONQUEUE', 'ROLE_DESCRIPTION_FORUM_ONQUEUE', 'f_', 8),
(21, 'ROLE_FORUM_POLLS', 'ROLE_DESCRIPTION_FORUM_POLLS', 'f_', 6),
(22, 'ROLE_FORUM_LIMITED_POLLS', 'ROLE_DESCRIPTION_FORUM_LIMITED_POLLS', 'f_', 4),
(23, 'ROLE_USER_NEW_MEMBER', 'ROLE_DESCRIPTION_USER_NEW_MEMBER', 'u_', 6),
(24, 'ROLE_FORUM_NEW_MEMBER', 'ROLE_DESCRIPTION_FORUM_NEW_MEMBER', 'f_', 10);

-- --------------------------------------------------------

--
-- Table structure for table `phpbbacl_roles_data`
--

CREATE TABLE `phpbbacl_roles_data` (
  `role_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `auth_option_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `auth_setting` tinyint(2) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbbacl_roles_data`
--

INSERT INTO `phpbbacl_roles_data` (`role_id`, `auth_option_id`, `auth_setting`) VALUES
(1, 49, 1),
(1, 51, 1),
(1, 52, 1),
(1, 53, 1),
(1, 55, 1),
(1, 56, 1),
(1, 57, 1),
(1, 61, 1),
(1, 62, 1),
(1, 63, 1),
(1, 64, 1),
(1, 65, 1),
(1, 66, 1),
(1, 67, 1),
(1, 68, 1),
(1, 69, 1),
(1, 72, 1),
(1, 74, 1),
(1, 76, 1),
(1, 77, 1),
(1, 78, 1),
(1, 79, 1),
(1, 85, 1),
(1, 86, 1),
(1, 87, 1),
(1, 88, 1),
(1, 89, 1),
(1, 90, 1),
(2, 49, 1),
(2, 52, 1),
(2, 53, 1),
(2, 62, 1),
(2, 63, 1),
(2, 64, 1),
(2, 65, 1),
(2, 72, 1),
(2, 77, 1),
(2, 85, 1),
(2, 88, 1),
(2, 89, 1),
(3, 49, 1),
(3, 52, 1),
(3, 53, 1),
(3, 55, 1),
(3, 66, 1),
(3, 67, 1),
(3, 68, 1),
(3, 78, 1),
(3, 85, 1),
(3, 86, 1),
(3, 88, 1),
(3, 89, 1),
(4, 49, 1),
(4, 50, 1),
(4, 51, 1),
(4, 52, 1),
(4, 53, 1),
(4, 54, 1),
(4, 55, 1),
(4, 56, 1),
(4, 57, 1),
(4, 58, 1),
(4, 59, 1),
(4, 60, 1),
(4, 61, 1),
(4, 62, 1),
(4, 63, 1),
(4, 64, 1),
(4, 65, 1),
(4, 66, 1),
(4, 67, 1),
(4, 68, 1),
(4, 69, 1),
(4, 70, 1),
(4, 71, 1),
(4, 72, 1),
(4, 73, 1),
(4, 74, 1),
(4, 75, 1),
(4, 76, 1),
(4, 77, 1),
(4, 78, 1),
(4, 79, 1),
(4, 80, 1),
(4, 81, 1),
(4, 82, 1),
(4, 83, 1),
(4, 84, 1),
(4, 85, 1),
(4, 86, 1),
(4, 87, 1),
(4, 88, 1),
(4, 89, 1),
(4, 90, 1),
(5, 91, 1),
(5, 92, 1),
(5, 93, 1),
(5, 94, 1),
(5, 95, 1),
(5, 96, 1),
(5, 97, 1),
(5, 98, 1),
(5, 99, 1),
(5, 100, 1),
(5, 101, 1),
(5, 102, 1),
(5, 103, 1),
(5, 104, 1),
(5, 105, 1),
(5, 106, 1),
(5, 107, 1),
(5, 108, 1),
(5, 109, 1),
(5, 110, 1),
(5, 111, 1),
(5, 112, 1),
(5, 113, 1),
(5, 114, 1),
(5, 115, 1),
(5, 116, 1),
(5, 117, 1),
(5, 118, 1),
(5, 119, 1),
(5, 120, 1),
(5, 121, 1),
(5, 122, 1),
(5, 123, 1),
(5, 124, 1),
(5, 125, 1),
(6, 91, 1),
(6, 92, 1),
(6, 93, 1),
(6, 94, 1),
(6, 95, 1),
(6, 98, 1),
(6, 99, 1),
(6, 100, 1),
(6, 101, 1),
(6, 102, 1),
(6, 104, 1),
(6, 105, 1),
(6, 106, 1),
(6, 107, 1),
(6, 108, 1),
(6, 109, 1),
(6, 110, 1),
(6, 111, 1),
(6, 114, 1),
(6, 115, 1),
(6, 116, 1),
(6, 117, 1),
(6, 118, 1),
(6, 119, 1),
(6, 120, 1),
(6, 121, 1),
(6, 122, 1),
(6, 123, 1),
(6, 125, 1),
(7, 91, 1),
(7, 93, 1),
(7, 94, 1),
(7, 95, 1),
(7, 98, 1),
(7, 99, 1),
(7, 100, 1),
(7, 101, 1),
(7, 102, 1),
(7, 107, 1),
(7, 108, 1),
(7, 109, 1),
(7, 110, 1),
(7, 113, 1),
(7, 114, 1),
(7, 115, 1),
(7, 116, 1),
(7, 117, 1),
(7, 122, 1),
(7, 123, 1),
(7, 125, 1),
(8, 91, 1),
(8, 93, 1),
(8, 94, 1),
(8, 95, 1),
(8, 98, 1),
(8, 100, 1),
(8, 102, 1),
(8, 104, 0),
(8, 105, 0),
(8, 117, 0),
(8, 122, 0),
(8, 123, 1),
(8, 125, 1),
(9, 91, 1),
(9, 93, 0),
(9, 94, 1),
(9, 95, 1),
(9, 98, 1),
(9, 99, 1),
(9, 100, 1),
(9, 101, 1),
(9, 102, 1),
(9, 107, 1),
(9, 108, 1),
(9, 109, 1),
(9, 110, 1),
(9, 113, 1),
(9, 114, 1),
(9, 115, 1),
(9, 116, 1),
(9, 117, 1),
(9, 122, 1),
(9, 123, 1),
(9, 125, 1),
(10, 34, 1),
(10, 35, 1),
(10, 36, 1),
(10, 37, 1),
(10, 38, 1),
(10, 39, 1),
(10, 40, 1),
(10, 41, 1),
(10, 42, 1),
(10, 43, 1),
(10, 44, 1),
(10, 45, 1),
(10, 46, 1),
(10, 47, 1),
(10, 48, 1),
(11, 34, 1),
(11, 35, 1),
(11, 37, 1),
(11, 38, 1),
(11, 39, 1),
(11, 40, 1),
(11, 41, 1),
(11, 42, 1),
(11, 43, 1),
(11, 44, 1),
(11, 45, 1),
(11, 47, 1),
(11, 48, 1),
(12, 34, 1),
(12, 37, 1),
(12, 38, 1),
(12, 39, 1),
(12, 43, 1),
(12, 45, 1),
(12, 47, 1),
(13, 34, 1),
(13, 35, 1),
(13, 38, 1),
(14, 1, 1),
(14, 2, 1),
(14, 3, 1),
(14, 4, 1),
(14, 5, 1),
(14, 6, 1),
(14, 7, 1),
(14, 8, 1),
(14, 9, 1),
(14, 10, 1),
(14, 11, 1),
(14, 12, 1),
(14, 13, 1),
(14, 14, 1),
(14, 15, 1),
(14, 16, 1),
(14, 17, 1),
(14, 18, 1),
(14, 19, 1),
(14, 20, 1),
(14, 21, 1),
(14, 22, 1),
(14, 23, 1),
(14, 24, 1),
(14, 25, 1),
(14, 26, 1),
(14, 27, 1),
(14, 28, 1),
(14, 29, 1),
(14, 30, 1),
(14, 31, 1),
(14, 32, 1),
(14, 33, 1),
(15, 1, 1),
(15, 4, 1),
(15, 5, 1),
(15, 6, 1),
(15, 7, 1),
(15, 8, 1),
(15, 9, 1),
(15, 10, 1),
(15, 12, 1),
(15, 14, 1),
(15, 15, 1),
(15, 16, 1),
(15, 17, 1),
(15, 19, 1),
(15, 20, 1),
(15, 21, 1),
(15, 22, 1),
(15, 23, 1),
(15, 24, 1),
(15, 25, 1),
(15, 26, 1),
(15, 27, 1),
(15, 29, 1),
(15, 31, 1),
(15, 32, 1),
(15, 33, 1),
(16, 1, 0),
(17, 1, 1),
(17, 8, 1),
(17, 15, 1),
(17, 16, 1),
(17, 21, 1),
(17, 22, 1),
(17, 25, 1),
(17, 29, 1),
(18, 1, 1),
(18, 5, 1),
(18, 8, 1),
(18, 9, 1),
(18, 10, 1),
(18, 14, 1),
(18, 15, 1),
(18, 16, 1),
(18, 17, 1),
(18, 19, 1),
(18, 20, 1),
(18, 21, 1),
(18, 22, 1),
(18, 23, 1),
(18, 24, 1),
(18, 25, 1),
(18, 26, 1),
(18, 27, 1),
(18, 29, 1),
(18, 31, 1),
(18, 33, 1),
(19, 1, 1),
(19, 8, 1),
(19, 15, 1),
(19, 16, 1),
(19, 21, 1),
(19, 22, 1),
(20, 1, 1),
(20, 4, 1),
(20, 5, 1),
(20, 8, 1),
(20, 9, 1),
(20, 10, 1),
(20, 14, 1),
(20, 15, 1),
(20, 16, 1),
(20, 17, 0),
(20, 19, 1),
(20, 20, 1),
(20, 21, 1),
(20, 22, 1),
(20, 23, 1),
(20, 24, 1),
(20, 25, 1),
(20, 26, 1),
(20, 27, 1),
(20, 29, 1),
(20, 31, 1),
(20, 33, 1),
(21, 1, 1),
(21, 4, 1),
(21, 5, 1),
(21, 6, 1),
(21, 7, 1),
(21, 8, 1),
(21, 9, 1),
(21, 10, 1),
(21, 12, 1),
(21, 14, 1),
(21, 15, 1),
(21, 16, 1),
(21, 17, 1),
(21, 18, 1),
(21, 19, 1),
(21, 20, 1),
(21, 21, 1),
(21, 22, 1),
(21, 23, 1),
(21, 24, 1),
(21, 25, 1),
(21, 26, 1),
(21, 27, 1),
(21, 29, 1),
(21, 31, 1),
(21, 32, 1),
(21, 33, 1),
(22, 1, 1),
(22, 5, 1),
(22, 8, 1),
(22, 9, 1),
(22, 10, 1),
(22, 14, 1),
(22, 15, 1),
(22, 16, 1),
(22, 17, 1),
(22, 18, 1),
(22, 19, 1),
(22, 20, 1),
(22, 21, 1),
(22, 22, 1),
(22, 23, 1),
(22, 24, 1),
(22, 25, 1),
(22, 26, 1),
(22, 27, 1),
(22, 29, 1),
(22, 31, 1),
(22, 33, 1),
(23, 99, 0),
(23, 104, 0),
(23, 105, 0),
(23, 122, 0),
(24, 17, 0);

-- --------------------------------------------------------

--
-- Table structure for table `phpbbacl_users`
--

CREATE TABLE `phpbbacl_users` (
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `forum_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `auth_option_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `auth_role_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `auth_setting` tinyint(2) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbbacl_users`
--

INSERT INTO `phpbbacl_users` (`user_id`, `forum_id`, `auth_option_id`, `auth_role_id`, `auth_setting`) VALUES
(2, 0, 0, 5, 0);

-- --------------------------------------------------------

--
-- Table structure for table `phpbbattachments`
--

CREATE TABLE `phpbbattachments` (
  `attach_id` int(10) UNSIGNED NOT NULL,
  `post_msg_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `topic_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `in_message` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `poster_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `is_orphan` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `physical_filename` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `real_filename` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `download_count` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `attach_comment` text COLLATE utf8_bin NOT NULL,
  `extension` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `mimetype` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `filesize` int(20) UNSIGNED NOT NULL DEFAULT '0',
  `filetime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `thumbnail` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `phpbbbanlist`
--

CREATE TABLE `phpbbbanlist` (
  `ban_id` int(10) UNSIGNED NOT NULL,
  `ban_userid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `ban_ip` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `ban_email` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `ban_start` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `ban_end` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `ban_exclude` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `ban_reason` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `ban_give_reason` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `phpbbbbcodes`
--

CREATE TABLE `phpbbbbcodes` (
  `bbcode_id` smallint(4) UNSIGNED NOT NULL DEFAULT '0',
  `bbcode_tag` varchar(16) COLLATE utf8_bin NOT NULL DEFAULT '',
  `bbcode_helpline` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_on_posting` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `bbcode_match` text COLLATE utf8_bin NOT NULL,
  `bbcode_tpl` mediumtext COLLATE utf8_bin NOT NULL,
  `first_pass_match` mediumtext COLLATE utf8_bin NOT NULL,
  `first_pass_replace` mediumtext COLLATE utf8_bin NOT NULL,
  `second_pass_match` mediumtext COLLATE utf8_bin NOT NULL,
  `second_pass_replace` mediumtext COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `phpbbbookmarks`
--

CREATE TABLE `phpbbbookmarks` (
  `topic_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `phpbbbots`
--

CREATE TABLE `phpbbbots` (
  `bot_id` int(10) UNSIGNED NOT NULL,
  `bot_active` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `bot_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `bot_agent` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `bot_ip` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbbbots`
--

INSERT INTO `phpbbbots` (`bot_id`, `bot_active`, `bot_name`, `user_id`, `bot_agent`, `bot_ip`) VALUES
(1, 1, 'AdsBot [Google]', 3, 'AdsBot-Google', ''),
(2, 1, 'Alexa [Bot]', 4, 'ia_archiver', ''),
(3, 1, 'Alta Vista [Bot]', 5, 'Scooter/', ''),
(4, 1, 'Ask Jeeves [Bot]', 6, 'Ask Jeeves', ''),
(5, 1, 'Baidu [Spider]', 7, 'Baiduspider', ''),
(6, 1, 'Bing [Bot]', 8, 'bingbot/', ''),
(7, 1, 'Exabot [Bot]', 9, 'Exabot', ''),
(8, 1, 'FAST Enterprise [Crawler]', 10, 'FAST Enterprise Crawler', ''),
(9, 1, 'FAST WebCrawler [Crawler]', 11, 'FAST-WebCrawler/', ''),
(10, 1, 'Francis [Bot]', 12, 'http://www.neomo.de/', ''),
(11, 1, 'Gigabot [Bot]', 13, 'Gigabot/', ''),
(12, 1, 'Google Adsense [Bot]', 14, 'Mediapartners-Google', ''),
(13, 1, 'Google Desktop', 15, 'Google Desktop', ''),
(14, 1, 'Google Feedfetcher', 16, 'Feedfetcher-Google', ''),
(15, 1, 'Google [Bot]', 17, 'Googlebot', ''),
(16, 1, 'Heise IT-Markt [Crawler]', 18, 'heise-IT-Markt-Crawler', ''),
(17, 1, 'Heritrix [Crawler]', 19, 'heritrix/1.', ''),
(18, 1, 'IBM Research [Bot]', 20, 'ibm.com/cs/crawler', ''),
(19, 1, 'ICCrawler - ICjobs', 21, 'ICCrawler - ICjobs', ''),
(20, 1, 'ichiro [Crawler]', 22, 'ichiro/', ''),
(21, 1, 'Majestic-12 [Bot]', 23, 'MJ12bot/', ''),
(22, 1, 'Metager [Bot]', 24, 'MetagerBot/', ''),
(23, 1, 'MSN NewsBlogs', 25, 'msnbot-NewsBlogs/', ''),
(24, 1, 'MSN [Bot]', 26, 'msnbot/', ''),
(25, 1, 'MSNbot Media', 27, 'msnbot-media/', ''),
(26, 1, 'Nutch [Bot]', 28, 'http://lucene.apache.org/nutch/', ''),
(27, 1, 'Online link [Validator]', 29, 'online link validator', ''),
(28, 1, 'psbot [Picsearch]', 30, 'psbot/0', ''),
(29, 1, 'Sensis [Crawler]', 31, 'Sensis Web Crawler', ''),
(30, 1, 'SEO Crawler', 32, 'SEO search Crawler/', ''),
(31, 1, 'Seoma [Crawler]', 33, 'Seoma [SEO Crawler]', ''),
(32, 1, 'SEOSearch [Crawler]', 34, 'SEOsearch/', ''),
(33, 1, 'Snappy [Bot]', 35, 'Snappy/1.1 ( http://www.urltrends.com/ )', ''),
(34, 1, 'Steeler [Crawler]', 36, 'http://www.tkl.iis.u-tokyo.ac.jp/~crawler/', ''),
(35, 1, 'Telekom [Bot]', 37, 'crawleradmin.t-info@telekom.de', ''),
(36, 1, 'TurnitinBot [Bot]', 38, 'TurnitinBot/', ''),
(37, 1, 'Voyager [Bot]', 39, 'voyager/', ''),
(38, 1, 'W3 [Sitesearch]', 40, 'W3 SiteSearch Crawler', ''),
(39, 1, 'W3C [Linkcheck]', 41, 'W3C-checklink/', ''),
(40, 1, 'W3C [Validator]', 42, 'W3C_Validator', ''),
(41, 1, 'YaCy [Bot]', 43, 'yacybot', ''),
(42, 1, 'Yahoo MMCrawler [Bot]', 44, 'Yahoo-MMCrawler/', ''),
(43, 1, 'Yahoo Slurp [Bot]', 45, 'Yahoo! DE Slurp', ''),
(44, 1, 'Yahoo [Bot]', 46, 'Yahoo! Slurp', ''),
(45, 1, 'YahooSeeker [Bot]', 47, 'YahooSeeker/', '');

-- --------------------------------------------------------

--
-- Table structure for table `phpbbconfig`
--

CREATE TABLE `phpbbconfig` (
  `config_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `config_value` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `is_dynamic` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbbconfig`
--

INSERT INTO `phpbbconfig` (`config_name`, `config_value`, `is_dynamic`) VALUES
('active_sessions', '0', 0),
('allow_attachments', '1', 0),
('allow_autologin', '1', 0),
('allow_avatar', '1', 0),
('allow_avatar_gravatar', '0', 0),
('allow_avatar_local', '0', 0),
('allow_avatar_remote', '0', 0),
('allow_avatar_remote_upload', '0', 0),
('allow_avatar_upload', '1', 0),
('allow_bbcode', '1', 0),
('allow_birthdays', '1', 0),
('allow_board_notifications', '1', 0),
('allow_bookmarks', '1', 0),
('allow_cdn', '0', 0),
('allow_emailreuse', '0', 0),
('allow_forum_notify', '1', 0),
('allow_live_searches', '1', 0),
('allow_mass_pm', '1', 0),
('allow_name_chars', 'USERNAME_CHARS_ANY', 0),
('allow_namechange', '0', 0),
('allow_nocensors', '0', 0),
('allow_password_reset', '1', 0),
('allow_pm_attach', '0', 0),
('allow_pm_report', '1', 0),
('allow_post_flash', '1', 0),
('allow_post_links', '1', 0),
('allow_privmsg', '1', 0),
('allow_quick_reply', '1', 0),
('allow_sig', '1', 0),
('allow_sig_bbcode', '1', 0),
('allow_sig_flash', '0', 0),
('allow_sig_img', '1', 0),
('allow_sig_links', '1', 0),
('allow_sig_pm', '1', 0),
('allow_sig_smilies', '1', 0),
('allow_smilies', '1', 0),
('allow_topic_notify', '1', 0),
('allow_viglink_phpbb', '1', 0),
('allowed_schemes_links', 'http,https,ftp', 0),
('assets_version', '2', 0),
('attachment_quota', '52428800', 0),
('auth_bbcode_pm', '1', 0),
('auth_flash_pm', '0', 0),
('auth_img_pm', '1', 0),
('auth_method', 'db', 0),
('auth_smilies_pm', '1', 0),
('avatar_filesize', '6144', 0),
('avatar_gallery_path', 'images/avatars/gallery', 0),
('avatar_max_height', '90', 0),
('avatar_max_width', '90', 0),
('avatar_min_height', '20', 0),
('avatar_min_width', '20', 0),
('avatar_path', 'images/avatars/upload', 0),
('avatar_salt', 'aa9c51a46a86a06367825884c3fcf315', 0),
('board_contact', 'antonbaliuk78@gmail.com', 0),
('board_contact_name', '', 0),
('board_disable', '0', 0),
('board_disable_msg', '', 0),
('board_email', 'antonbaliuk78@gmail.com', 0),
('board_email_form', '0', 0),
('board_email_sig', 'Thanks, The Management', 0),
('board_hide_emails', '1', 0),
('board_index_text', '', 0),
('board_startdate', '1591178503', 0),
('board_timezone', 'UTC', 0),
('browser_check', '1', 0),
('bump_interval', '10', 0),
('bump_type', 'd', 0),
('cache_gc', '7200', 0),
('cache_last_gc', '1591213697', 1),
('captcha_gd', '1', 0),
('captcha_gd_3d_noise', '1', 0),
('captcha_gd_fonts', '1', 0),
('captcha_gd_foreground_noise', '0', 0),
('captcha_gd_wave', '0', 0),
('captcha_gd_x_grid', '25', 0),
('captcha_gd_y_grid', '25', 0),
('captcha_plugin', 'core.captcha.plugins.gd', 0),
('check_attachment_content', '1', 0),
('check_dnsbl', '0', 0),
('chg_passforce', '0', 0),
('confirm_refresh', '1', 0),
('contact_admin_form_enable', '1', 0),
('cookie_domain', 'localhost', 0),
('cookie_name', 'phpbb3_939v7', 0),
('cookie_path', '/', 0),
('cookie_secure', '', 0),
('coppa_enable', '0', 0),
('coppa_fax', '', 0),
('coppa_mail', '', 0),
('cron_lock', '0', 1),
('database_gc', '604800', 0),
('database_last_gc', '1591213692', 1),
('dbms_version', '5.7.24', 0),
('default_dateformat', 'D M d, Y g:i a', 0),
('default_lang', 'en', 0),
('default_style', '2', 0),
('delete_time', '0', 0),
('display_last_edited', '1', 0),
('display_last_subject', '1', 0),
('display_order', '0', 0),
('edit_time', '0', 0),
('email_check_mx', '1', 0),
('email_enable', '1', 0),
('email_force_sender', '0', 0),
('email_max_chunk_size', '50', 0),
('email_package_size', '20', 0),
('enable_accurate_pm_button', '1', 0),
('enable_confirm', '1', 0),
('enable_mod_rewrite', '0', 0),
('enable_pm_icons', '1', 0),
('enable_post_confirm', '1', 0),
('extension_force_unstable', '0', 0),
('feed_enable', '1', 0),
('feed_forum', '1', 0),
('feed_http_auth', '0', 0),
('feed_item_statistics', '1', 0),
('feed_limit_post', '15', 0),
('feed_limit_topic', '10', 0),
('feed_overall', '1', 0),
('feed_overall_forums', '0', 0),
('feed_topic', '1', 0),
('feed_topics_active', '0', 0),
('feed_topics_new', '1', 0),
('flood_interval', '15', 0),
('force_server_vars', '0', 0),
('form_token_lifetime', '7200', 0),
('form_token_mintime', '0', 0),
('form_token_sid_guests', '1', 0),
('forward_pm', '1', 0),
('forwarded_for_check', '0', 0),
('full_folder_action', '2', 0),
('fulltext_mysql_max_word_len', '254', 0),
('fulltext_mysql_min_word_len', '4', 0),
('fulltext_native_common_thres', '5', 0),
('fulltext_native_load_upd', '1', 0),
('fulltext_native_max_chars', '14', 0),
('fulltext_native_min_chars', '3', 0),
('fulltext_postgres_max_word_len', '254', 0),
('fulltext_postgres_min_word_len', '4', 0),
('fulltext_postgres_ts_name', 'simple', 0),
('fulltext_sphinx_indexer_mem_limit', '512', 0),
('fulltext_sphinx_stopwords', '0', 0),
('gzip_compress', '0', 0),
('help_send_statistics', '1', 0),
('help_send_statistics_time', '0', 0),
('hot_threshold', '25', 0),
('icons_path', 'images/icons', 0),
('img_create_thumbnail', '0', 0),
('img_display_inlined', '1', 0),
('img_link_height', '0', 0),
('img_link_width', '0', 0),
('img_max_height', '0', 0),
('img_max_thumb_width', '400', 0),
('img_max_width', '0', 0),
('img_min_thumb_filesize', '12000', 0),
('ip_check', '3', 0),
('ip_login_limit_max', '50', 0),
('ip_login_limit_time', '21600', 0),
('ip_login_limit_use_forwarded', '0', 0),
('jab_enable', '0', 0),
('jab_host', '', 0),
('jab_package_size', '20', 0),
('jab_password', '', 0),
('jab_port', '5222', 0),
('jab_use_ssl', '0', 0),
('jab_username', '', 0),
('last_queue_run', '0', 1),
('ldap_base_dn', '', 0),
('ldap_email', '', 0),
('ldap_password', '', 0),
('ldap_port', '', 0),
('ldap_server', '', 0),
('ldap_uid', '', 0),
('ldap_user', '', 0),
('ldap_user_filter', '', 0),
('legend_sort_groupname', '0', 0),
('limit_load', '0', 0),
('limit_search_load', '0', 0),
('load_anon_lastread', '0', 0),
('load_birthdays', '1', 0),
('load_cpf_memberlist', '1', 0),
('load_cpf_pm', '1', 0),
('load_cpf_viewprofile', '1', 0),
('load_cpf_viewtopic', '1', 0),
('load_db_lastread', '1', 0),
('load_db_track', '1', 0),
('load_jquery_url', '//ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js', 0),
('load_jumpbox', '1', 0),
('load_moderators', '1', 0),
('load_notifications', '1', 0),
('load_online', '1', 0),
('load_online_guests', '1', 0),
('load_online_time', '5', 0),
('load_onlinetrack', '1', 0),
('load_search', '1', 0),
('load_tplcompile', '0', 0),
('load_unreads_search', '1', 0),
('load_user_activity', '1', 0),
('load_user_activity_limit', '5000', 0),
('max_attachments', '3', 0),
('max_attachments_pm', '1', 0),
('max_autologin_time', '0', 0),
('max_filesize', '262144', 0),
('max_filesize_pm', '262144', 0),
('max_login_attempts', '3', 0),
('max_name_chars', '20', 0),
('max_num_search_keywords', '10', 0),
('max_poll_options', '10', 0),
('max_post_chars', '60000', 0),
('max_post_font_size', '200', 0),
('max_post_img_height', '0', 0),
('max_post_img_width', '0', 0),
('max_post_smilies', '0', 0),
('max_post_urls', '0', 0),
('max_quote_depth', '3', 0),
('max_reg_attempts', '5', 0),
('max_sig_chars', '255', 0),
('max_sig_font_size', '200', 0),
('max_sig_img_height', '0', 0),
('max_sig_img_width', '0', 0),
('max_sig_smilies', '0', 0),
('max_sig_urls', '5', 0),
('mime_triggers', 'body|head|html|img|plaintext|a href|pre|script|table|title', 0),
('min_name_chars', '3', 0),
('min_pass_chars', '6', 0),
('min_post_chars', '1', 0),
('min_search_author_chars', '3', 0),
('new_member_group_default', '0', 0),
('new_member_post_limit', '3', 0),
('newest_user_colour', 'AA0000', 1),
('newest_user_id', '2', 1),
('newest_username', 'admin', 1),
('num_files', '0', 1),
('num_posts', '1', 1),
('num_topics', '1', 1),
('num_users', '1', 1),
('override_user_style', '0', 0),
('pass_complex', 'PASS_TYPE_ANY', 0),
('phpbb_viglink_api_key', 'e4fd14f5d7f2bb6d80b8f8da1354718c', 0),
('plupload_last_gc', '0', 1),
('plupload_salt', 'd82d016bcca2221b2490190a9d306ec8', 0),
('pm_edit_time', '0', 0),
('pm_max_boxes', '4', 0),
('pm_max_msgs', '50', 0),
('pm_max_recipients', '0', 0),
('posts_per_page', '10', 0),
('print_pm', '1', 0),
('questionnaire_unique_id', 'v1mrgcsci69z1bnm', 0),
('queue_interval', '60', 0),
('rand_seed', 'a9fb9f5c098442782fd49c2c2cc8a135', 1),
('rand_seed_last_update', '1591178503', 1),
('ranks_path', 'images/ranks', 0),
('read_notification_expire_days', '30', 0),
('read_notification_gc', '86400', 0),
('read_notification_last_gc', '1591178808', 1),
('record_online_date', '1591178552', 1),
('record_online_users', '2', 1),
('referer_validation', '0', 0),
('remote_upload_verify', '0', 0),
('require_activation', '0', 0),
('script_path', '/\\', 0),
('search_anonymous_interval', '0', 0),
('search_block_size', '250', 0),
('search_gc', '7200', 0),
('search_indexing_state', '', 1),
('search_interval', '0', 0),
('search_last_gc', '1591213707', 1),
('search_store_results', '1800', 0),
('search_type', '\\phpbb\\search\\fulltext_native', 0),
('secure_allow_deny', '1', 0),
('secure_allow_empty_referer', '1', 0),
('secure_downloads', '0', 0),
('server_name', 'localhost', 0),
('server_port', '80', 0),
('server_protocol', 'http://', 0),
('session_gc', '3600', 0),
('session_last_gc', '1591213695', 1),
('session_length', '3600', 0),
('site_desc', 'A short text to describe your forum', 0),
('site_home_text', '', 0),
('site_home_url', '', 0),
('sitename', 'golebnik.com', 0),
('smilies_path', 'images/smilies', 0),
('smilies_per_page', '50', 0),
('smtp_auth_method', 'PLAIN', 0),
('smtp_delivery', '0', 0),
('smtp_host', '', 0),
('smtp_password', 'root', 1),
('smtp_port', '', 0),
('smtp_username', 'root', 1),
('teampage_forums', '1', 0),
('teampage_memberships', '1', 0),
('topics_per_page', '25', 0),
('tpl_allow_php', '0', 0),
('upload_dir_size', '0', 1),
('upload_icons_path', 'images/upload_icons', 0),
('upload_path', 'files', 0),
('use_system_cron', '0', 0),
('version', '3.3.0', 0),
('viglink_api_siteid', 'd41d8cd98f00b204e9800998ecf8427e', 0),
('viglink_ask_admin', '', 0),
('viglink_ask_admin_last', '1591178526', 0),
('viglink_convert_account_url', '', 0),
('viglink_enabled', '0', 0),
('viglink_last_gc', '1591178526', 1),
('warnings_expire_days', '90', 0),
('warnings_gc', '14400', 0),
('warnings_last_gc', '1591213724', 1);

-- --------------------------------------------------------

--
-- Table structure for table `phpbbconfig_text`
--

CREATE TABLE `phpbbconfig_text` (
  `config_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `config_value` mediumtext COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbbconfig_text`
--

INSERT INTO `phpbbconfig_text` (`config_name`, `config_value`) VALUES
('contact_admin_info', ''),
('contact_admin_info_bitfield', ''),
('contact_admin_info_flags', '7'),
('contact_admin_info_uid', '');

-- --------------------------------------------------------

--
-- Table structure for table `phpbbconfirm`
--

CREATE TABLE `phpbbconfirm` (
  `confirm_id` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `session_id` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `confirm_type` tinyint(3) NOT NULL DEFAULT '0',
  `code` varchar(8) COLLATE utf8_bin NOT NULL DEFAULT '',
  `seed` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `attempts` mediumint(8) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `phpbbdisallow`
--

CREATE TABLE `phpbbdisallow` (
  `disallow_id` mediumint(8) UNSIGNED NOT NULL,
  `disallow_username` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `phpbbdrafts`
--

CREATE TABLE `phpbbdrafts` (
  `draft_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `topic_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `forum_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `save_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `draft_subject` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `draft_message` mediumtext COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `phpbbext`
--

CREATE TABLE `phpbbext` (
  `ext_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `ext_active` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `ext_state` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbbext`
--

INSERT INTO `phpbbext` (`ext_name`, `ext_active`, `ext_state`) VALUES
('phpbb/viglink', 1, 'b:0;');

-- --------------------------------------------------------

--
-- Table structure for table `phpbbextensions`
--

CREATE TABLE `phpbbextensions` (
  `extension_id` mediumint(8) UNSIGNED NOT NULL,
  `group_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `extension` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbbextensions`
--

INSERT INTO `phpbbextensions` (`extension_id`, `group_id`, `extension`) VALUES
(1, 1, 'gif'),
(2, 1, 'png'),
(3, 1, 'jpeg'),
(4, 1, 'jpg'),
(5, 1, 'tif'),
(6, 1, 'tiff'),
(7, 1, 'tga'),
(8, 2, 'gtar'),
(9, 2, 'gz'),
(10, 2, 'tar'),
(11, 2, 'zip'),
(12, 2, 'rar'),
(13, 2, 'ace'),
(14, 2, 'torrent'),
(15, 2, 'tgz'),
(16, 2, 'bz2'),
(17, 2, '7z'),
(18, 3, 'txt'),
(19, 3, 'c'),
(20, 3, 'h'),
(21, 3, 'cpp'),
(22, 3, 'hpp'),
(23, 3, 'diz'),
(24, 3, 'csv'),
(25, 3, 'ini'),
(26, 3, 'log'),
(27, 3, 'js'),
(28, 3, 'xml'),
(29, 4, 'xls'),
(30, 4, 'xlsx'),
(31, 4, 'xlsm'),
(32, 4, 'xlsb'),
(33, 4, 'doc'),
(34, 4, 'docx'),
(35, 4, 'docm'),
(36, 4, 'dot'),
(37, 4, 'dotx'),
(38, 4, 'dotm'),
(39, 4, 'pdf'),
(40, 4, 'ai'),
(41, 4, 'ps'),
(42, 4, 'ppt'),
(43, 4, 'pptx'),
(44, 4, 'pptm'),
(45, 4, 'odg'),
(46, 4, 'odp'),
(47, 4, 'ods'),
(48, 4, 'odt'),
(49, 4, 'rtf'),
(50, 5, 'mp3'),
(51, 5, 'mpeg'),
(52, 5, 'mpg'),
(53, 5, 'ogg'),
(54, 5, 'ogm');

-- --------------------------------------------------------

--
-- Table structure for table `phpbbextension_groups`
--

CREATE TABLE `phpbbextension_groups` (
  `group_id` mediumint(8) UNSIGNED NOT NULL,
  `group_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `cat_id` tinyint(2) NOT NULL DEFAULT '0',
  `allow_group` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `download_mode` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `upload_icon` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `max_filesize` int(20) UNSIGNED NOT NULL DEFAULT '0',
  `allowed_forums` text COLLATE utf8_bin NOT NULL,
  `allow_in_pm` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbbextension_groups`
--

INSERT INTO `phpbbextension_groups` (`group_id`, `group_name`, `cat_id`, `allow_group`, `download_mode`, `upload_icon`, `max_filesize`, `allowed_forums`, `allow_in_pm`) VALUES
(1, 'IMAGES', 1, 1, 1, '', 0, '', 0),
(2, 'ARCHIVES', 0, 1, 1, '', 0, '', 0),
(3, 'PLAIN_TEXT', 0, 0, 1, '', 0, '', 0),
(4, 'DOCUMENTS', 0, 0, 1, '', 0, '', 0),
(5, 'DOWNLOADABLE_FILES', 0, 0, 1, '', 0, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `phpbbforums`
--

CREATE TABLE `phpbbforums` (
  `forum_id` mediumint(8) UNSIGNED NOT NULL,
  `parent_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `left_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `right_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `forum_parents` mediumtext COLLATE utf8_bin NOT NULL,
  `forum_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_desc` text COLLATE utf8_bin NOT NULL,
  `forum_desc_bitfield` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_desc_options` int(11) UNSIGNED NOT NULL DEFAULT '7',
  `forum_desc_uid` varchar(8) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_link` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_password` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_style` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `forum_image` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_rules` text COLLATE utf8_bin NOT NULL,
  `forum_rules_link` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_rules_bitfield` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_rules_options` int(11) UNSIGNED NOT NULL DEFAULT '7',
  `forum_rules_uid` varchar(8) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_topics_per_page` smallint(4) UNSIGNED NOT NULL DEFAULT '0',
  `forum_type` tinyint(4) NOT NULL DEFAULT '0',
  `forum_status` tinyint(4) NOT NULL DEFAULT '0',
  `forum_last_post_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `forum_last_poster_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `forum_last_post_subject` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_last_post_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `forum_last_poster_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_last_poster_colour` varchar(6) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_flags` tinyint(4) NOT NULL DEFAULT '32',
  `display_on_index` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `enable_indexing` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `enable_icons` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `enable_prune` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `prune_next` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `prune_days` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `prune_viewed` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `prune_freq` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `display_subforum_list` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `display_subforum_limit` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `forum_options` int(20) UNSIGNED NOT NULL DEFAULT '0',
  `forum_posts_approved` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `forum_posts_unapproved` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `forum_posts_softdeleted` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `forum_topics_approved` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `forum_topics_unapproved` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `forum_topics_softdeleted` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `enable_shadow_prune` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `prune_shadow_days` mediumint(8) UNSIGNED NOT NULL DEFAULT '7',
  `prune_shadow_freq` mediumint(8) UNSIGNED NOT NULL DEFAULT '1',
  `prune_shadow_next` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbbforums`
--

INSERT INTO `phpbbforums` (`forum_id`, `parent_id`, `left_id`, `right_id`, `forum_parents`, `forum_name`, `forum_desc`, `forum_desc_bitfield`, `forum_desc_options`, `forum_desc_uid`, `forum_link`, `forum_password`, `forum_style`, `forum_image`, `forum_rules`, `forum_rules_link`, `forum_rules_bitfield`, `forum_rules_options`, `forum_rules_uid`, `forum_topics_per_page`, `forum_type`, `forum_status`, `forum_last_post_id`, `forum_last_poster_id`, `forum_last_post_subject`, `forum_last_post_time`, `forum_last_poster_name`, `forum_last_poster_colour`, `forum_flags`, `display_on_index`, `enable_indexing`, `enable_icons`, `enable_prune`, `prune_next`, `prune_days`, `prune_viewed`, `prune_freq`, `display_subforum_list`, `display_subforum_limit`, `forum_options`, `forum_posts_approved`, `forum_posts_unapproved`, `forum_posts_softdeleted`, `forum_topics_approved`, `forum_topics_unapproved`, `forum_topics_softdeleted`, `enable_shadow_prune`, `prune_shadow_days`, `prune_shadow_freq`, `prune_shadow_next`) VALUES
(1, 0, 1, 4, '', 'Your first category', '', '', 7, '', '', '', 0, '', '', '', '', 7, '', 0, 0, 0, 1, 2, '', 1591178503, 'admin', 'AA0000', 32, 1, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 1, 0),
(2, 1, 2, 3, '', 'Your first forum', 'Description of your first forum.', '', 7, '', '', '', 0, '', '', '', '', 7, '', 0, 1, 0, 1, 2, 'Welcome to phpBB3', 1591178503, 'admin', 'AA0000', 48, 1, 1, 1, 0, 0, 7, 7, 1, 1, 0, 0, 1, 0, 0, 1, 0, 0, 0, 7, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `phpbbforums_access`
--

CREATE TABLE `phpbbforums_access` (
  `forum_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `session_id` char(32) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `phpbbforums_track`
--

CREATE TABLE `phpbbforums_track` (
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `forum_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `mark_time` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `phpbbforums_watch`
--

CREATE TABLE `phpbbforums_watch` (
  `forum_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `notify_status` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `phpbbgroups`
--

CREATE TABLE `phpbbgroups` (
  `group_id` mediumint(8) UNSIGNED NOT NULL,
  `group_type` tinyint(4) NOT NULL DEFAULT '1',
  `group_founder_manage` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `group_skip_auth` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `group_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `group_desc` text COLLATE utf8_bin NOT NULL,
  `group_desc_bitfield` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `group_desc_options` int(11) UNSIGNED NOT NULL DEFAULT '7',
  `group_desc_uid` varchar(8) COLLATE utf8_bin NOT NULL DEFAULT '',
  `group_display` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `group_avatar` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `group_avatar_type` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `group_avatar_width` smallint(4) UNSIGNED NOT NULL DEFAULT '0',
  `group_avatar_height` smallint(4) UNSIGNED NOT NULL DEFAULT '0',
  `group_rank` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `group_colour` varchar(6) COLLATE utf8_bin NOT NULL DEFAULT '',
  `group_sig_chars` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `group_receive_pm` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `group_message_limit` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `group_legend` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `group_max_recipients` mediumint(8) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbbgroups`
--

INSERT INTO `phpbbgroups` (`group_id`, `group_type`, `group_founder_manage`, `group_skip_auth`, `group_name`, `group_desc`, `group_desc_bitfield`, `group_desc_options`, `group_desc_uid`, `group_display`, `group_avatar`, `group_avatar_type`, `group_avatar_width`, `group_avatar_height`, `group_rank`, `group_colour`, `group_sig_chars`, `group_receive_pm`, `group_message_limit`, `group_legend`, `group_max_recipients`) VALUES
(1, 3, 0, 0, 'GUESTS', '', '', 7, '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 5),
(2, 3, 0, 0, 'REGISTERED', '', '', 7, '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 5),
(3, 3, 0, 0, 'REGISTERED_COPPA', '', '', 7, '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 5),
(4, 3, 0, 0, 'GLOBAL_MODERATORS', '', '', 7, '', 0, '', '', 0, 0, 0, '00AA00', 0, 0, 0, 2, 0),
(5, 3, 1, 0, 'ADMINISTRATORS', '', '', 7, '', 0, '', '', 0, 0, 0, 'AA0000', 0, 0, 0, 1, 0),
(6, 3, 0, 0, 'BOTS', '', '', 7, '', 0, '', '', 0, 0, 0, '9E8DA7', 0, 0, 0, 0, 5),
(7, 3, 0, 0, 'NEWLY_REGISTERED', '', '', 7, '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 5);

-- --------------------------------------------------------

--
-- Table structure for table `phpbbicons`
--

CREATE TABLE `phpbbicons` (
  `icons_id` mediumint(8) UNSIGNED NOT NULL,
  `icons_url` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `icons_width` tinyint(4) NOT NULL DEFAULT '0',
  `icons_height` tinyint(4) NOT NULL DEFAULT '0',
  `icons_alt` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `icons_order` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `display_on_posting` tinyint(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbbicons`
--

INSERT INTO `phpbbicons` (`icons_id`, `icons_url`, `icons_width`, `icons_height`, `icons_alt`, `icons_order`, `display_on_posting`) VALUES
(1, 'misc/fire.gif', 16, 16, '', 1, 1),
(2, 'smile/redface.gif', 16, 16, '', 9, 1),
(3, 'smile/mrgreen.gif', 16, 16, '', 10, 1),
(4, 'misc/heart.gif', 16, 16, '', 4, 1),
(5, 'misc/star.gif', 16, 16, '', 2, 1),
(6, 'misc/radioactive.gif', 16, 16, '', 3, 1),
(7, 'misc/thinking.gif', 16, 16, '', 5, 1),
(8, 'smile/info.gif', 16, 16, '', 8, 1),
(9, 'smile/question.gif', 16, 16, '', 6, 1),
(10, 'smile/alert.gif', 16, 16, '', 7, 1);

-- --------------------------------------------------------

--
-- Table structure for table `phpbblang`
--

CREATE TABLE `phpbblang` (
  `lang_id` tinyint(4) NOT NULL,
  `lang_iso` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT '',
  `lang_dir` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT '',
  `lang_english_name` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `lang_local_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `lang_author` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbblang`
--

INSERT INTO `phpbblang` (`lang_id`, `lang_iso`, `lang_dir`, `lang_english_name`, `lang_local_name`, `lang_author`) VALUES
(1, 'en', 'en', 'British English', 'British English', 'phpBB Limited');

-- --------------------------------------------------------

--
-- Table structure for table `phpbblog`
--

CREATE TABLE `phpbblog` (
  `log_id` int(10) UNSIGNED NOT NULL,
  `log_type` tinyint(4) NOT NULL DEFAULT '0',
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `forum_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `topic_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `post_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `reportee_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `log_ip` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `log_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `log_operation` text COLLATE utf8_bin NOT NULL,
  `log_data` mediumtext COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbblog`
--

INSERT INTO `phpbblog` (`log_id`, `log_type`, `user_id`, `forum_id`, `topic_id`, `post_id`, `reportee_id`, `log_ip`, `log_time`, `log_operation`, `log_data`) VALUES
(1, 0, 1, 0, 0, 0, 0, '127.0.0.1', 1591178508, 'LOG_MODULE_ADD', 'a:1:{i:0;s:20:\"ACP_VIGLINK_SETTINGS\";}'),
(2, 0, 1, 0, 0, 0, 0, '', 1591178508, 'LOG_EXT_ENABLE', 'a:1:{i:0;s:13:\"phpbb/viglink\";}'),
(3, 2, 1, 0, 0, 0, 0, '127.0.0.1', 1591178510, 'LOG_ERROR_EMAIL', 'a:1:{i:0;s:316:\"<strong>EMAIL/PHP/mail()</strong><br /><em>/install/app.php/install</em><br /><br />Errno 2: mail(): Failed to connect to mailserver at &quot;localhost&quot; port 25, verify your &quot;SMTP&quot; and &quot;smtp_port&quot; setting in php.ini or use ini_set() at [ROOT]/includes/functions_messenger.php line 1929<br />\";}'),
(4, 0, 2, 0, 0, 0, 0, '127.0.0.1', 1591178511, 'LOG_INSTALL_INSTALLED', 'a:1:{i:0;s:5:\"3.3.0\";}'),
(5, 0, 2, 0, 0, 0, 0, '127.0.0.1', 1591178681, 'LOG_STYLE_ADD', 'a:1:{i:0;s:10:\"Simplicity\";}'),
(6, 0, 2, 0, 0, 0, 0, '127.0.0.1', 1591178741, 'LOG_CONFIG_SETTINGS', '');

-- --------------------------------------------------------

--
-- Table structure for table `phpbblogin_attempts`
--

CREATE TABLE `phpbblogin_attempts` (
  `attempt_ip` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `attempt_browser` varchar(150) COLLATE utf8_bin NOT NULL DEFAULT '',
  `attempt_forwarded_for` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `attempt_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `username` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '0',
  `username_clean` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbblogin_attempts`
--

INSERT INTO `phpbblogin_attempts` (`attempt_ip`, `attempt_browser`, `attempt_forwarded_for`, `attempt_time`, `user_id`, `username`, `username_clean`) VALUES
('127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36', '', 1591213694, 0, 'root', 'root'),
('127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36', '', 1591213697, 0, 'root', 'root');

-- --------------------------------------------------------

--
-- Table structure for table `phpbbmigrations`
--

CREATE TABLE `phpbbmigrations` (
  `migration_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `migration_depends_on` text COLLATE utf8_bin NOT NULL,
  `migration_schema_done` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `migration_data_done` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `migration_data_state` text COLLATE utf8_bin NOT NULL,
  `migration_start_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `migration_end_time` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbbmigrations`
--

INSERT INTO `phpbbmigrations` (`migration_name`, `migration_depends_on`, `migration_schema_done`, `migration_data_done`, `migration_data_state`, `migration_start_time`, `migration_end_time`) VALUES
('\\phpbb\\db\\migration\\data\\v30x\\local_url_bbcode', 'a:1:{i:0;s:48:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_12_rc1\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_0', 'a:0:{}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_1', 'a:1:{i:0;s:47:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_1_rc1\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_10', 'a:1:{i:0;s:48:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_10_rc3\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_10_rc1', 'a:1:{i:0;s:43:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_9\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_10_rc2', 'a:1:{i:0;s:48:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_10_rc1\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_10_rc3', 'a:1:{i:0;s:48:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_10_rc2\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_11', 'a:1:{i:0;s:48:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_11_rc2\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_11_rc1', 'a:1:{i:0;s:44:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_10\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_11_rc2', 'a:1:{i:0;s:48:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_11_rc1\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_12', 'a:1:{i:0;s:48:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_12_rc3\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_12_rc1', 'a:1:{i:0;s:44:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_11\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_12_rc2', 'a:1:{i:0;s:48:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_12_rc1\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_12_rc3', 'a:1:{i:0;s:48:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_12_rc2\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_13', 'a:1:{i:0;s:48:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_13_rc1\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_13_pl1', 'a:1:{i:0;s:44:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_13\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_13_rc1', 'a:1:{i:0;s:44:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_12\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_14', 'a:1:{i:0;s:48:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_14_rc1\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_14_rc1', 'a:1:{i:0;s:44:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_13\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_1_rc1', 'a:1:{i:0;s:43:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_0\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_2', 'a:1:{i:0;s:47:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_2_rc2\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_2_rc1', 'a:1:{i:0;s:43:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_1\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_2_rc2', 'a:1:{i:0;s:47:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_2_rc1\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_3', 'a:1:{i:0;s:47:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_3_rc1\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_3_rc1', 'a:1:{i:0;s:43:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_2\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_4', 'a:1:{i:0;s:47:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_4_rc1\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_4_rc1', 'a:1:{i:0;s:43:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_3\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_5', 'a:1:{i:0;s:52:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_5_rc1part2\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_5_rc1', 'a:1:{i:0;s:43:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_4\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_5_rc1part2', 'a:1:{i:0;s:47:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_5_rc1\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_6', 'a:1:{i:0;s:47:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_6_rc4\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_6_rc1', 'a:1:{i:0;s:43:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_5\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_6_rc2', 'a:1:{i:0;s:47:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_6_rc1\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_6_rc3', 'a:1:{i:0;s:47:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_6_rc2\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_6_rc4', 'a:1:{i:0;s:47:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_6_rc3\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_7', 'a:1:{i:0;s:47:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_7_rc2\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_7_pl1', 'a:1:{i:0;s:43:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_7\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_7_rc1', 'a:1:{i:0;s:43:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_6\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_7_rc2', 'a:1:{i:0;s:47:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_7_rc1\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_8', 'a:1:{i:0;s:47:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_8_rc1\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_8_rc1', 'a:1:{i:0;s:47:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_7_pl1\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_9', 'a:1:{i:0;s:47:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_9_rc4\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_9_rc1', 'a:1:{i:0;s:43:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_8\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_9_rc2', 'a:1:{i:0;s:47:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_9_rc1\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_9_rc3', 'a:1:{i:0;s:47:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_9_rc2\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_9_rc4', 'a:1:{i:0;s:47:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_9_rc3\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v310\\acp_prune_users_module', 'a:1:{i:0;s:35:\"\\phpbb\\db\\migration\\data\\v310\\beta1\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v310\\acp_style_components_module', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\dev\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v310\\allow_cdn', 'a:1:{i:0;s:43:\"\\phpbb\\db\\migration\\data\\v310\\jquery_update\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v310\\alpha1', 'a:18:{i:0;s:46:\"\\phpbb\\db\\migration\\data\\v30x\\local_url_bbcode\";i:1;s:44:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_12\";i:2;s:57:\"\\phpbb\\db\\migration\\data\\v310\\acp_style_components_module\";i:3;s:39:\"\\phpbb\\db\\migration\\data\\v310\\allow_cdn\";i:4;s:49:\"\\phpbb\\db\\migration\\data\\v310\\auth_provider_oauth\";i:5;s:37:\"\\phpbb\\db\\migration\\data\\v310\\avatars\";i:6;s:40:\"\\phpbb\\db\\migration\\data\\v310\\boardindex\";i:7;s:44:\"\\phpbb\\db\\migration\\data\\v310\\config_db_text\";i:8;s:45:\"\\phpbb\\db\\migration\\data\\v310\\forgot_password\";i:9;s:41:\"\\phpbb\\db\\migration\\data\\v310\\mod_rewrite\";i:10;s:49:\"\\phpbb\\db\\migration\\data\\v310\\mysql_fulltext_drop\";i:11;s:40:\"\\phpbb\\db\\migration\\data\\v310\\namespaces\";i:12;s:48:\"\\phpbb\\db\\migration\\data\\v310\\notifications_cron\";i:13;s:60:\"\\phpbb\\db\\migration\\data\\v310\\notification_options_reconvert\";i:14;s:38:\"\\phpbb\\db\\migration\\data\\v310\\plupload\";i:15;s:51:\"\\phpbb\\db\\migration\\data\\v310\\signature_module_auth\";i:16;s:52:\"\\phpbb\\db\\migration\\data\\v310\\softdelete_mcp_modules\";i:17;s:38:\"\\phpbb\\db\\migration\\data\\v310\\teampage\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v310\\alpha2', 'a:2:{i:0;s:36:\"\\phpbb\\db\\migration\\data\\v310\\alpha1\";i:1;s:51:\"\\phpbb\\db\\migration\\data\\v310\\notifications_cron_p2\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v310\\alpha3', 'a:4:{i:0;s:36:\"\\phpbb\\db\\migration\\data\\v310\\alpha2\";i:1;s:42:\"\\phpbb\\db\\migration\\data\\v310\\avatar_types\";i:2;s:39:\"\\phpbb\\db\\migration\\data\\v310\\passwords\";i:3;s:48:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_types\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v310\\auth_provider_oauth', 'a:1:{i:0;s:43:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_0\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v310\\auth_provider_oauth2', 'a:1:{i:0;s:49:\"\\phpbb\\db\\migration\\data\\v310\\auth_provider_oauth\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v310\\avatar_types', 'a:2:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\dev\";i:1;s:37:\"\\phpbb\\db\\migration\\data\\v310\\avatars\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v310\\avatars', 'a:1:{i:0;s:44:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_11\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v310\\beta1', 'a:7:{i:0;s:36:\"\\phpbb\\db\\migration\\data\\v310\\alpha3\";i:1;s:42:\"\\phpbb\\db\\migration\\data\\v310\\passwords_p2\";i:2;s:52:\"\\phpbb\\db\\migration\\data\\v310\\postgres_fulltext_drop\";i:3;s:63:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_change_load_settings\";i:4;s:51:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_location\";i:5;s:54:\"\\phpbb\\db\\migration\\data\\v310\\soft_delete_mod_convert2\";i:6;s:48:\"\\phpbb\\db\\migration\\data\\v310\\ucp_popuppm_module\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v310\\beta2', 'a:3:{i:0;s:35:\"\\phpbb\\db\\migration\\data\\v310\\beta1\";i:1;s:52:\"\\phpbb\\db\\migration\\data\\v310\\acp_prune_users_module\";i:2;s:59:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_location_cleanup\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v310\\beta3', 'a:6:{i:0;s:35:\"\\phpbb\\db\\migration\\data\\v310\\beta2\";i:1;s:50:\"\\phpbb\\db\\migration\\data\\v310\\auth_provider_oauth2\";i:2;s:48:\"\\phpbb\\db\\migration\\data\\v310\\board_contact_name\";i:3;s:44:\"\\phpbb\\db\\migration\\data\\v310\\jquery_update2\";i:4;s:50:\"\\phpbb\\db\\migration\\data\\v310\\live_searches_config\";i:5;s:49:\"\\phpbb\\db\\migration\\data\\v310\\prune_shadow_topics\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v310\\beta4', 'a:3:{i:0;s:35:\"\\phpbb\\db\\migration\\data\\v310\\beta3\";i:1;s:69:\"\\phpbb\\db\\migration\\data\\v310\\extensions_version_check_force_unstable\";i:2;s:58:\"\\phpbb\\db\\migration\\data\\v310\\reset_missing_captcha_plugin\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v310\\board_contact_name', 'a:1:{i:0;s:35:\"\\phpbb\\db\\migration\\data\\v310\\beta2\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v310\\boardindex', 'a:0:{}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v310\\bot_update', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\rc6\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v310\\captcha_plugins', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\rc2\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v310\\config_db_text', 'a:1:{i:0;s:44:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_11\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v310\\contact_admin_acp_module', 'a:0:{}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v310\\contact_admin_form', 'a:1:{i:0;s:44:\"\\phpbb\\db\\migration\\data\\v310\\config_db_text\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v310\\dev', 'a:5:{i:0;s:40:\"\\phpbb\\db\\migration\\data\\v310\\extensions\";i:1;s:45:\"\\phpbb\\db\\migration\\data\\v310\\style_update_p2\";i:2;s:41:\"\\phpbb\\db\\migration\\data\\v310\\timezone_p2\";i:3;s:52:\"\\phpbb\\db\\migration\\data\\v310\\reported_posts_display\";i:4;s:46:\"\\phpbb\\db\\migration\\data\\v310\\migrations_table\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v310\\extensions', 'a:1:{i:0;s:44:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_11\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v310\\extensions_version_check_force_unstable', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\dev\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v310\\forgot_password', 'a:1:{i:0;s:44:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_11\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v310\\gold', 'a:2:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\rc6\";i:1;s:40:\"\\phpbb\\db\\migration\\data\\v310\\bot_update\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v310\\jquery_update', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\dev\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v310\\jquery_update2', 'a:1:{i:0;s:43:\"\\phpbb\\db\\migration\\data\\v310\\jquery_update\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v310\\live_searches_config', 'a:0:{}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v310\\migrations_table', 'a:0:{}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v310\\mod_rewrite', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\dev\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v310\\mysql_fulltext_drop', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\dev\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v310\\namespaces', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\dev\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v310\\notification_options_reconvert', 'a:1:{i:0;s:54:\"\\phpbb\\db\\migration\\data\\v310\\notifications_schema_fix\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v310\\notifications', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\dev\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v310\\notifications_cron', 'a:1:{i:0;s:43:\"\\phpbb\\db\\migration\\data\\v310\\notifications\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v310\\notifications_cron_p2', 'a:1:{i:0;s:48:\"\\phpbb\\db\\migration\\data\\v310\\notifications_cron\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v310\\notifications_schema_fix', 'a:1:{i:0;s:43:\"\\phpbb\\db\\migration\\data\\v310\\notifications\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v310\\notifications_use_full_name', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\rc3\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v310\\passwords', 'a:1:{i:0;s:44:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_11\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v310\\passwords_convert_p1', 'a:1:{i:0;s:42:\"\\phpbb\\db\\migration\\data\\v310\\passwords_p2\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v310\\passwords_convert_p2', 'a:1:{i:0;s:50:\"\\phpbb\\db\\migration\\data\\v310\\passwords_convert_p1\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v310\\passwords_p2', 'a:1:{i:0;s:39:\"\\phpbb\\db\\migration\\data\\v310\\passwords\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v310\\plupload', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\dev\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v310\\postgres_fulltext_drop', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\dev\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v310\\profilefield_aol', 'a:1:{i:0;s:56:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_yahoo_cleanup\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v310\\profilefield_aol_cleanup', 'a:1:{i:0;s:46:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_aol\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v310\\profilefield_change_load_settings', 'a:1:{i:0;s:54:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_aol_cleanup\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v310\\profilefield_cleanup', 'a:2:{i:0;s:52:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_interests\";i:1;s:53:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_occupation\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v310\\profilefield_contact_field', 'a:1:{i:0;s:56:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_on_memberlist\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v310\\profilefield_facebook', 'a:3:{i:0;s:56:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_contact_field\";i:1;s:55:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_show_novalue\";i:2;s:48:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_types\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v310\\profilefield_field_validation_length', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\rc3\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v310\\profilefield_googleplus', 'a:3:{i:0;s:56:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_contact_field\";i:1;s:55:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_show_novalue\";i:2;s:48:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_types\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v310\\profilefield_icq', 'a:1:{i:0;s:56:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_contact_field\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v310\\profilefield_icq_cleanup', 'a:1:{i:0;s:46:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_icq\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v310\\profilefield_interests', 'a:2:{i:0;s:48:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_types\";i:1;s:55:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_show_novalue\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v310\\profilefield_location', 'a:2:{i:0;s:48:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_types\";i:1;s:56:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_on_memberlist\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v310\\profilefield_location_cleanup', 'a:1:{i:0;s:51:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_location\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v310\\profilefield_occupation', 'a:1:{i:0;s:52:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_interests\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v310\\profilefield_on_memberlist', 'a:1:{i:0;s:50:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_cleanup\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v310\\profilefield_show_novalue', 'a:1:{i:0;s:48:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_types\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v310\\profilefield_skype', 'a:3:{i:0;s:56:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_contact_field\";i:1;s:55:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_show_novalue\";i:2;s:48:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_types\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v310\\profilefield_twitter', 'a:3:{i:0;s:56:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_contact_field\";i:1;s:55:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_show_novalue\";i:2;s:48:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_types\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v310\\profilefield_types', 'a:1:{i:0;s:36:\"\\phpbb\\db\\migration\\data\\v310\\alpha2\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v310\\profilefield_website', 'a:2:{i:0;s:56:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_on_memberlist\";i:1;s:54:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_icq_cleanup\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v310\\profilefield_website_cleanup', 'a:1:{i:0;s:50:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_website\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v310\\profilefield_wlm', 'a:1:{i:0;s:58:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_website_cleanup\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v310\\profilefield_wlm_cleanup', 'a:1:{i:0;s:46:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_wlm\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v310\\profilefield_yahoo', 'a:1:{i:0;s:54:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_wlm_cleanup\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v310\\profilefield_yahoo_cleanup', 'a:1:{i:0;s:48:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_yahoo\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v310\\profilefield_youtube', 'a:3:{i:0;s:56:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_contact_field\";i:1;s:55:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_show_novalue\";i:2;s:48:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_types\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v310\\prune_shadow_topics', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\dev\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v310\\rc1', 'a:9:{i:0;s:35:\"\\phpbb\\db\\migration\\data\\v310\\beta4\";i:1;s:54:\"\\phpbb\\db\\migration\\data\\v310\\contact_admin_acp_module\";i:2;s:48:\"\\phpbb\\db\\migration\\data\\v310\\contact_admin_form\";i:3;s:50:\"\\phpbb\\db\\migration\\data\\v310\\passwords_convert_p2\";i:4;s:51:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_facebook\";i:5;s:53:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_googleplus\";i:6;s:48:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_skype\";i:7;s:50:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_twitter\";i:8;s:50:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_youtube\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v310\\rc2', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\rc1\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v310\\rc3', 'a:5:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\rc2\";i:1;s:45:\"\\phpbb\\db\\migration\\data\\v310\\captcha_plugins\";i:2;s:53:\"\\phpbb\\db\\migration\\data\\v310\\rename_too_long_indexes\";i:3;s:41:\"\\phpbb\\db\\migration\\data\\v310\\search_type\";i:4;s:49:\"\\phpbb\\db\\migration\\data\\v310\\topic_sort_username\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v310\\rc4', 'a:2:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\rc3\";i:1;s:57:\"\\phpbb\\db\\migration\\data\\v310\\notifications_use_full_name\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v310\\rc5', 'a:3:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\rc4\";i:1;s:66:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_field_validation_length\";i:2;s:53:\"\\phpbb\\db\\migration\\data\\v310\\remove_acp_styles_cache\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v310\\rc6', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\rc5\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v310\\remove_acp_styles_cache', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\rc4\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v310\\rename_too_long_indexes', 'a:1:{i:0;s:43:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_0\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v310\\reported_posts_display', 'a:1:{i:0;s:44:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_11\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v310\\reset_missing_captcha_plugin', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\dev\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v310\\search_type', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\dev\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v310\\signature_module_auth', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\dev\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v310\\soft_delete_mod_convert', 'a:1:{i:0;s:36:\"\\phpbb\\db\\migration\\data\\v310\\alpha3\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v310\\soft_delete_mod_convert2', 'a:1:{i:0;s:53:\"\\phpbb\\db\\migration\\data\\v310\\soft_delete_mod_convert\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v310\\softdelete_mcp_modules', 'a:2:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\dev\";i:1;s:43:\"\\phpbb\\db\\migration\\data\\v310\\softdelete_p2\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v310\\softdelete_p1', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\dev\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v310\\softdelete_p2', 'a:2:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\dev\";i:1;s:43:\"\\phpbb\\db\\migration\\data\\v310\\softdelete_p1\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v310\\style_update_p1', 'a:1:{i:0;s:44:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_11\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v310\\style_update_p2', 'a:1:{i:0;s:45:\"\\phpbb\\db\\migration\\data\\v310\\style_update_p1\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v310\\teampage', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\dev\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v310\\timezone', 'a:1:{i:0;s:44:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_11\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v310\\timezone_p2', 'a:1:{i:0;s:38:\"\\phpbb\\db\\migration\\data\\v310\\timezone\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v310\\topic_sort_username', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\dev\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v310\\ucp_popuppm_module', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\dev\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v31x\\add_jabber_ssl_context_config_options', 'a:1:{i:0;s:35:\"\\phpbb\\db\\migration\\data\\v31x\\v3110\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v31x\\add_latest_topics_index', 'a:1:{i:0;s:35:\"\\phpbb\\db\\migration\\data\\v31x\\v3110\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v31x\\add_log_time_index', 'a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v31x\\v319\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v31x\\add_smtp_ssl_context_config_options', 'a:1:{i:0;s:35:\"\\phpbb\\db\\migration\\data\\v31x\\v3110\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v31x\\increase_size_of_dateformat', 'a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v31x\\v317\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v31x\\increase_size_of_emotion', 'a:1:{i:0;s:35:\"\\phpbb\\db\\migration\\data\\v31x\\v3110\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v31x\\m_pm_report', 'a:1:{i:0;s:37:\"\\phpbb\\db\\migration\\data\\v31x\\v316rc1\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v31x\\m_softdelete_global', 'a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v31x\\v311\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v31x\\plupload_last_gc_dynamic', 'a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v31x\\v312\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v31x\\profilefield_remove_underscore_from_alpha', 'a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v31x\\v311\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v31x\\profilefield_yahoo_update_url', 'a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v31x\\v312\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v31x\\remove_duplicate_migrations', 'a:1:{i:0;s:35:\"\\phpbb\\db\\migration\\data\\v31x\\v3110\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v31x\\style_update', 'a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v310\\gold\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v31x\\update_custom_bbcodes_with_idn', 'a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v31x\\v312\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v31x\\update_hashes', 'a:1:{i:0;s:35:\"\\phpbb\\db\\migration\\data\\v31x\\v3110\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v31x\\v311', 'a:2:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v310\\gold\";i:1;s:42:\"\\phpbb\\db\\migration\\data\\v31x\\style_update\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v31x\\v3110', 'a:1:{i:0;s:38:\"\\phpbb\\db\\migration\\data\\v31x\\v3110rc1\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v31x\\v3110rc1', 'a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v31x\\v319\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v31x\\v3111', 'a:1:{i:0;s:38:\"\\phpbb\\db\\migration\\data\\v31x\\v3111rc1\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v31x\\v3111rc1', 'a:8:{i:0;s:35:\"\\phpbb\\db\\migration\\data\\v31x\\v3110\";i:1;s:48:\"\\phpbb\\db\\migration\\data\\v31x\\add_log_time_index\";i:2;s:54:\"\\phpbb\\db\\migration\\data\\v31x\\increase_size_of_emotion\";i:3;s:67:\"\\phpbb\\db\\migration\\data\\v31x\\add_jabber_ssl_context_config_options\";i:4;s:65:\"\\phpbb\\db\\migration\\data\\v31x\\add_smtp_ssl_context_config_options\";i:5;s:43:\"\\phpbb\\db\\migration\\data\\v31x\\update_hashes\";i:6;s:57:\"\\phpbb\\db\\migration\\data\\v31x\\remove_duplicate_migrations\";i:7;s:53:\"\\phpbb\\db\\migration\\data\\v31x\\add_latest_topics_index\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v31x\\v3112', 'a:1:{i:0;s:35:\"\\phpbb\\db\\migration\\data\\v31x\\v3111\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v31x\\v312', 'a:1:{i:0;s:37:\"\\phpbb\\db\\migration\\data\\v31x\\v312rc1\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v31x\\v312rc1', 'a:2:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v31x\\v311\";i:1;s:49:\"\\phpbb\\db\\migration\\data\\v31x\\m_softdelete_global\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v31x\\v313', 'a:1:{i:0;s:37:\"\\phpbb\\db\\migration\\data\\v31x\\v313rc2\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v31x\\v313rc1', 'a:5:{i:0;s:48:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_13_rc1\";i:1;s:54:\"\\phpbb\\db\\migration\\data\\v31x\\plupload_last_gc_dynamic\";i:2;s:71:\"\\phpbb\\db\\migration\\data\\v31x\\profilefield_remove_underscore_from_alpha\";i:3;s:59:\"\\phpbb\\db\\migration\\data\\v31x\\profilefield_yahoo_update_url\";i:4;s:60:\"\\phpbb\\db\\migration\\data\\v31x\\update_custom_bbcodes_with_idn\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v31x\\v313rc2', 'a:2:{i:0;s:48:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_13_pl1\";i:1;s:37:\"\\phpbb\\db\\migration\\data\\v31x\\v313rc1\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v31x\\v314', 'a:2:{i:0;s:44:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_14\";i:1;s:37:\"\\phpbb\\db\\migration\\data\\v31x\\v314rc2\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v31x\\v314rc1', 'a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v31x\\v313\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v31x\\v314rc2', 'a:2:{i:0;s:48:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_14_rc1\";i:1;s:37:\"\\phpbb\\db\\migration\\data\\v31x\\v314rc1\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v31x\\v315', 'a:1:{i:0;s:37:\"\\phpbb\\db\\migration\\data\\v31x\\v315rc1\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v31x\\v315rc1', 'a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v31x\\v314\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v31x\\v316', 'a:1:{i:0;s:37:\"\\phpbb\\db\\migration\\data\\v31x\\v316rc1\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v31x\\v316rc1', 'a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v31x\\v315\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v31x\\v317', 'a:1:{i:0;s:37:\"\\phpbb\\db\\migration\\data\\v31x\\v317rc1\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v31x\\v317pl1', 'a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v31x\\v317\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v31x\\v317rc1', 'a:2:{i:0;s:41:\"\\phpbb\\db\\migration\\data\\v31x\\m_pm_report\";i:1;s:34:\"\\phpbb\\db\\migration\\data\\v31x\\v316\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v31x\\v318', 'a:1:{i:0;s:37:\"\\phpbb\\db\\migration\\data\\v31x\\v318rc1\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v31x\\v318rc1', 'a:2:{i:0;s:57:\"\\phpbb\\db\\migration\\data\\v31x\\increase_size_of_dateformat\";i:1;s:37:\"\\phpbb\\db\\migration\\data\\v31x\\v317pl1\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v31x\\v319', 'a:1:{i:0;s:37:\"\\phpbb\\db\\migration\\data\\v31x\\v319rc1\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v31x\\v319rc1', 'a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v31x\\v318\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v320\\add_help_phpbb', 'a:1:{i:0;s:37:\"\\phpbb\\db\\migration\\data\\v320\\v320rc1\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v320\\allowed_schemes_links', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v320\\dev\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v320\\announce_global_permission', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v320\\dev\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v320\\cookie_notice', 'a:1:{i:0;s:37:\"\\phpbb\\db\\migration\\data\\v320\\v320rc2\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v320\\default_data_type_ids', 'a:2:{i:0;s:36:\"\\phpbb\\db\\migration\\data\\v320\\v320a2\";i:1;s:42:\"\\phpbb\\db\\migration\\data\\v320\\oauth_states\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v320\\dev', 'a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v31x\\v316\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v320\\font_awesome_update', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v320\\dev\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v320\\icons_alt', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v320\\dev\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v320\\log_post_id', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v320\\dev\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v320\\notifications_board', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v320\\dev\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v320\\oauth_states', 'a:1:{i:0;s:49:\"\\phpbb\\db\\migration\\data\\v310\\auth_provider_oauth\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v320\\remote_upload_validation', 'a:1:{i:0;s:36:\"\\phpbb\\db\\migration\\data\\v320\\v320a2\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v320\\remove_outdated_media', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v320\\dev\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v320\\remove_profilefield_wlm', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v320\\dev\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v320\\report_id_auto_increment', 'a:1:{i:0;s:51:\"\\phpbb\\db\\migration\\data\\v320\\default_data_type_ids\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v320\\text_reparser', 'a:2:{i:0;s:48:\"\\phpbb\\db\\migration\\data\\v310\\contact_admin_form\";i:1;s:51:\"\\phpbb\\db\\migration\\data\\v320\\allowed_schemes_links\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v320\\v320', 'a:2:{i:0;s:54:\"\\phpbb\\db\\migration\\data\\v31x\\increase_size_of_emotion\";i:1;s:43:\"\\phpbb\\db\\migration\\data\\v320\\cookie_notice\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v320\\v320a1', 'a:9:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v320\\dev\";i:1;s:51:\"\\phpbb\\db\\migration\\data\\v320\\allowed_schemes_links\";i:2;s:56:\"\\phpbb\\db\\migration\\data\\v320\\announce_global_permission\";i:3;s:53:\"\\phpbb\\db\\migration\\data\\v320\\remove_profilefield_wlm\";i:4;s:49:\"\\phpbb\\db\\migration\\data\\v320\\font_awesome_update\";i:5;s:39:\"\\phpbb\\db\\migration\\data\\v320\\icons_alt\";i:6;s:41:\"\\phpbb\\db\\migration\\data\\v320\\log_post_id\";i:7;s:51:\"\\phpbb\\db\\migration\\data\\v320\\remove_outdated_media\";i:8;s:49:\"\\phpbb\\db\\migration\\data\\v320\\notifications_board\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v320\\v320a2', 'a:3:{i:0;s:37:\"\\phpbb\\db\\migration\\data\\v31x\\v317rc1\";i:1;s:43:\"\\phpbb\\db\\migration\\data\\v320\\text_reparser\";i:2;s:36:\"\\phpbb\\db\\migration\\data\\v320\\v320a1\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v320\\v320b1', 'a:4:{i:0;s:37:\"\\phpbb\\db\\migration\\data\\v31x\\v317pl1\";i:1;s:36:\"\\phpbb\\db\\migration\\data\\v320\\v320a2\";i:2;s:57:\"\\phpbb\\db\\migration\\data\\v31x\\increase_size_of_dateformat\";i:3;s:51:\"\\phpbb\\db\\migration\\data\\v320\\default_data_type_ids\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v320\\v320b2', 'a:3:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v31x\\v318\";i:1;s:36:\"\\phpbb\\db\\migration\\data\\v320\\v320b1\";i:2;s:54:\"\\phpbb\\db\\migration\\data\\v320\\remote_upload_validation\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v320\\v320rc1', 'a:3:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v31x\\v319\";i:1;s:54:\"\\phpbb\\db\\migration\\data\\v320\\report_id_auto_increment\";i:2;s:36:\"\\phpbb\\db\\migration\\data\\v320\\v320b2\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v320\\v320rc2', 'a:3:{i:0;s:57:\"\\phpbb\\db\\migration\\data\\v31x\\remove_duplicate_migrations\";i:1;s:48:\"\\phpbb\\db\\migration\\data\\v31x\\add_log_time_index\";i:2;s:44:\"\\phpbb\\db\\migration\\data\\v320\\add_help_phpbb\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v32x\\cookie_notice_p2', 'a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v320\\v320\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v32x\\disable_remote_avatar', 'a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v32x\\v325\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v32x\\email_force_sender', 'a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v32x\\v321\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v32x\\enable_accurate_pm_button', 'a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v32x\\v322\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v32x\\f_list_topics_permission_add', 'a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v32x\\v321\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v32x\\fix_user_styles', 'a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v320\\v320\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v32x\\forum_topics_per_page_type', 'a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v32x\\v323\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v32x\\jquery_update', 'a:1:{i:0;s:37:\"\\phpbb\\db\\migration\\data\\v32x\\v325rc1\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v32x\\load_user_activity_limit', 'a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v320\\v320\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v32x\\merge_duplicate_bbcodes', 'a:0:{}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v32x\\remove_imagick', 'a:1:{i:0;s:37:\"\\phpbb\\db\\migration\\data\\v32x\\v324rc1\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v32x\\smtp_dynamic_data', 'a:1:{i:0;s:37:\"\\phpbb\\db\\migration\\data\\v32x\\v326rc1\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v32x\\timezone_p3', 'a:1:{i:0;s:38:\"\\phpbb\\db\\migration\\data\\v310\\timezone\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v32x\\update_prosilver_bitfield', 'a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v32x\\v321\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v32x\\user_emoji_permission', 'a:1:{i:0;s:37:\"\\phpbb\\db\\migration\\data\\v32x\\v329rc1\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v32x\\user_notifications_table_index_p1', 'a:1:{i:0;s:46:\"\\phpbb\\db\\migration\\data\\v32x\\cookie_notice_p2\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v32x\\user_notifications_table_index_p2', 'a:1:{i:0;s:63:\"\\phpbb\\db\\migration\\data\\v32x\\user_notifications_table_index_p1\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v32x\\user_notifications_table_index_p3', 'a:1:{i:0;s:63:\"\\phpbb\\db\\migration\\data\\v32x\\user_notifications_table_index_p2\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v32x\\user_notifications_table_reduce_column_sizes', 'a:1:{i:0;s:63:\"\\phpbb\\db\\migration\\data\\v32x\\user_notifications_table_index_p3\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v32x\\user_notifications_table_remove_duplicates', 'a:1:{i:0;s:65:\"\\phpbb\\db\\migration\\data\\v32x\\user_notifications_table_temp_index\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v32x\\user_notifications_table_temp_index', 'a:1:{i:0;s:74:\"\\phpbb\\db\\migration\\data\\v32x\\user_notifications_table_reduce_column_sizes\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v32x\\user_notifications_table_unique_index', 'a:1:{i:0;s:72:\"\\phpbb\\db\\migration\\data\\v32x\\user_notifications_table_remove_duplicates\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v32x\\v321', 'a:2:{i:0;s:35:\"\\phpbb\\db\\migration\\data\\v31x\\v3111\";i:1;s:37:\"\\phpbb\\db\\migration\\data\\v32x\\v321rc1\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v32x\\v321rc1', 'a:4:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v320\\v320\";i:1;s:38:\"\\phpbb\\db\\migration\\data\\v31x\\v3111rc1\";i:2;s:54:\"\\phpbb\\db\\migration\\data\\v32x\\load_user_activity_limit\";i:3;s:67:\"\\phpbb\\db\\migration\\data\\v32x\\user_notifications_table_unique_index\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v32x\\v322', 'a:2:{i:0;s:35:\"\\phpbb\\db\\migration\\data\\v31x\\v3112\";i:1;s:37:\"\\phpbb\\db\\migration\\data\\v32x\\v322rc1\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v32x\\v322rc1', 'a:6:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v32x\\v321\";i:1;s:45:\"\\phpbb\\db\\migration\\data\\v32x\\fix_user_styles\";i:2;s:55:\"\\phpbb\\db\\migration\\data\\v32x\\update_prosilver_bitfield\";i:3;s:48:\"\\phpbb\\db\\migration\\data\\v32x\\email_force_sender\";i:4;s:58:\"\\phpbb\\db\\migration\\data\\v32x\\f_list_topics_permission_add\";i:5;s:53:\"\\phpbb\\db\\migration\\data\\v32x\\merge_duplicate_bbcodes\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v32x\\v323', 'a:1:{i:0;s:37:\"\\phpbb\\db\\migration\\data\\v32x\\v323rc2\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v32x\\v323rc1', 'a:2:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v32x\\v322\";i:1;s:55:\"\\phpbb\\db\\migration\\data\\v32x\\enable_accurate_pm_button\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v32x\\v323rc2', 'a:1:{i:0;s:37:\"\\phpbb\\db\\migration\\data\\v32x\\v323rc1\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v32x\\v324', 'a:2:{i:0;s:37:\"\\phpbb\\db\\migration\\data\\v32x\\v324rc1\";i:1;s:44:\"\\phpbb\\db\\migration\\data\\v32x\\remove_imagick\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v32x\\v324rc1', 'a:2:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v32x\\v323\";i:1;s:56:\"\\phpbb\\db\\migration\\data\\v32x\\forum_topics_per_page_type\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v32x\\v325', 'a:2:{i:0;s:37:\"\\phpbb\\db\\migration\\data\\v32x\\v325rc1\";i:1;s:43:\"\\phpbb\\db\\migration\\data\\v32x\\jquery_update\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v32x\\v325rc1', 'a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v32x\\v324\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v32x\\v326', 'a:3:{i:0;s:37:\"\\phpbb\\db\\migration\\data\\v32x\\v326rc1\";i:1;s:51:\"\\phpbb\\db\\migration\\data\\v32x\\disable_remote_avatar\";i:2;s:47:\"\\phpbb\\db\\migration\\data\\v32x\\smtp_dynamic_data\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v32x\\v326rc1', 'a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v32x\\v325\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v32x\\v327', 'a:1:{i:0;s:37:\"\\phpbb\\db\\migration\\data\\v32x\\v327rc1\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v32x\\v327rc1', 'a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v32x\\v326\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v32x\\v328', 'a:1:{i:0;s:37:\"\\phpbb\\db\\migration\\data\\v32x\\v328rc1\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v32x\\v328rc1', 'a:2:{i:0;s:41:\"\\phpbb\\db\\migration\\data\\v32x\\timezone_p3\";i:1;s:34:\"\\phpbb\\db\\migration\\data\\v32x\\v327\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v32x\\v329', 'a:2:{i:0;s:37:\"\\phpbb\\db\\migration\\data\\v32x\\v329rc1\";i:1;s:51:\"\\phpbb\\db\\migration\\data\\v32x\\user_emoji_permission\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v32x\\v329rc1', 'a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v32x\\v328\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v330\\add_display_unapproved_posts_config', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v330\\dev\";}', 1, 1, '', 1591178506, 1591178506),
('\\phpbb\\db\\migration\\data\\v330\\dev', 'a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v32x\\v327\";}', 1, 1, '', 1591178507, 1591178507),
('\\phpbb\\db\\migration\\data\\v330\\forums_legend_limit', 'a:1:{i:0;s:36:\"\\phpbb\\db\\migration\\data\\v330\\v330b1\";}', 1, 1, '', 1591178507, 1591178507),
('\\phpbb\\db\\migration\\data\\v330\\jquery_update', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v330\\dev\";}', 1, 1, '', 1591178507, 1591178507),
('\\phpbb\\db\\migration\\data\\v330\\remove_attachment_flash', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v330\\dev\";}', 1, 1, '', 1591178507, 1591178507),
('\\phpbb\\db\\migration\\data\\v330\\remove_email_hash', 'a:1:{i:0;s:43:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_0\";}', 1, 1, '', 1591178507, 1591178507),
('\\phpbb\\db\\migration\\data\\v330\\remove_max_pass_chars', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v330\\dev\";}', 1, 1, '', 1591178507, 1591178507),
('\\phpbb\\db\\migration\\data\\v330\\reset_password', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v330\\dev\";}', 1, 1, '', 1591178507, 1591178507),
('\\phpbb\\db\\migration\\data\\v330\\v330', 'a:2:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v32x\\v329\";i:1;s:37:\"\\phpbb\\db\\migration\\data\\v330\\v330rc1\";}', 1, 1, '', 1591178507, 1591178507);
INSERT INTO `phpbbmigrations` (`migration_name`, `migration_depends_on`, `migration_schema_done`, `migration_data_done`, `migration_data_state`, `migration_start_time`, `migration_end_time`) VALUES
('\\phpbb\\db\\migration\\data\\v330\\v330b1', 'a:6:{i:0;s:43:\"\\phpbb\\db\\migration\\data\\v330\\jquery_update\";i:1;s:44:\"\\phpbb\\db\\migration\\data\\v330\\reset_password\";i:2;s:53:\"\\phpbb\\db\\migration\\data\\v330\\remove_attachment_flash\";i:3;s:51:\"\\phpbb\\db\\migration\\data\\v330\\remove_max_pass_chars\";i:4;s:34:\"\\phpbb\\db\\migration\\data\\v32x\\v328\";i:5;s:33:\"\\phpbb\\db\\migration\\data\\v330\\dev\";}', 1, 1, '', 1591178507, 1591178507),
('\\phpbb\\db\\migration\\data\\v330\\v330b2', 'a:4:{i:0;s:65:\"\\phpbb\\db\\migration\\data\\v330\\add_display_unapproved_posts_config\";i:1;s:49:\"\\phpbb\\db\\migration\\data\\v330\\forums_legend_limit\";i:2;s:47:\"\\phpbb\\db\\migration\\data\\v330\\remove_email_hash\";i:3;s:36:\"\\phpbb\\db\\migration\\data\\v330\\v330b1\";}', 1, 1, '', 1591178507, 1591178507),
('\\phpbb\\db\\migration\\data\\v330\\v330rc1', 'a:1:{i:0;s:36:\"\\phpbb\\db\\migration\\data\\v330\\v330b2\";}', 1, 1, '', 1591178507, 1591178507),
('\\phpbb\\viglink\\migrations\\viglink_ask_admin', 'a:1:{i:0;s:41:\"\\phpbb\\viglink\\migrations\\viglink_data_v2\";}', 1, 1, '', 1591178508, 1591178508),
('\\phpbb\\viglink\\migrations\\viglink_ask_admin_wait', 'a:1:{i:0;s:43:\"\\phpbb\\viglink\\migrations\\viglink_ask_admin\";}', 1, 1, '', 1591178508, 1591178508),
('\\phpbb\\viglink\\migrations\\viglink_cron', 'a:1:{i:0;s:38:\"\\phpbb\\viglink\\migrations\\viglink_data\";}', 1, 1, '', 0, 0),
('\\phpbb\\viglink\\migrations\\viglink_data', 'a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v31x\\v312\";}', 1, 1, '', 1591178508, 1591178508),
('\\phpbb\\viglink\\migrations\\viglink_data_v2', 'a:1:{i:0;s:38:\"\\phpbb\\viglink\\migrations\\viglink_data\";}', 1, 1, '', 1591178508, 1591178508);

-- --------------------------------------------------------

--
-- Table structure for table `phpbbmoderator_cache`
--

CREATE TABLE `phpbbmoderator_cache` (
  `forum_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `username` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `group_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `group_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_on_index` tinyint(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `phpbbmodules`
--

CREATE TABLE `phpbbmodules` (
  `module_id` mediumint(8) UNSIGNED NOT NULL,
  `module_enabled` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `module_display` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `module_basename` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `module_class` varchar(10) COLLATE utf8_bin NOT NULL DEFAULT '',
  `parent_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `left_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `right_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `module_langname` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `module_mode` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `module_auth` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbbmodules`
--

INSERT INTO `phpbbmodules` (`module_id`, `module_enabled`, `module_display`, `module_basename`, `module_class`, `parent_id`, `left_id`, `right_id`, `module_langname`, `module_mode`, `module_auth`) VALUES
(1, 1, 1, '', 'acp', 0, 1, 68, 'ACP_CAT_GENERAL', '', ''),
(2, 1, 1, '', 'acp', 1, 4, 17, 'ACP_QUICK_ACCESS', '', ''),
(3, 1, 1, '', 'acp', 1, 18, 45, 'ACP_BOARD_CONFIGURATION', '', ''),
(4, 1, 1, '', 'acp', 1, 46, 53, 'ACP_CLIENT_COMMUNICATION', '', ''),
(5, 1, 1, '', 'acp', 1, 54, 67, 'ACP_SERVER_CONFIGURATION', '', ''),
(6, 1, 1, '', 'acp', 0, 69, 88, 'ACP_CAT_FORUMS', '', ''),
(7, 1, 1, '', 'acp', 6, 70, 75, 'ACP_MANAGE_FORUMS', '', ''),
(8, 1, 1, '', 'acp', 6, 76, 87, 'ACP_FORUM_BASED_PERMISSIONS', '', ''),
(9, 1, 1, '', 'acp', 0, 89, 116, 'ACP_CAT_POSTING', '', ''),
(10, 1, 1, '', 'acp', 9, 90, 103, 'ACP_MESSAGES', '', ''),
(11, 1, 1, '', 'acp', 9, 104, 115, 'ACP_ATTACHMENTS', '', ''),
(12, 1, 1, '', 'acp', 0, 117, 174, 'ACP_CAT_USERGROUP', '', ''),
(13, 1, 1, '', 'acp', 12, 118, 153, 'ACP_CAT_USERS', '', ''),
(14, 1, 1, '', 'acp', 12, 154, 163, 'ACP_GROUPS', '', ''),
(15, 1, 1, '', 'acp', 12, 164, 173, 'ACP_USER_SECURITY', '', ''),
(16, 1, 1, '', 'acp', 0, 175, 224, 'ACP_CAT_PERMISSIONS', '', ''),
(17, 1, 1, '', 'acp', 16, 178, 187, 'ACP_GLOBAL_PERMISSIONS', '', ''),
(18, 1, 1, '', 'acp', 16, 188, 199, 'ACP_FORUM_BASED_PERMISSIONS', '', ''),
(19, 1, 1, '', 'acp', 16, 200, 209, 'ACP_PERMISSION_ROLES', '', ''),
(20, 1, 1, '', 'acp', 16, 210, 223, 'ACP_PERMISSION_MASKS', '', ''),
(21, 1, 1, '', 'acp', 0, 225, 240, 'ACP_CAT_CUSTOMISE', '', ''),
(22, 1, 1, '', 'acp', 21, 230, 235, 'ACP_STYLE_MANAGEMENT', '', ''),
(23, 1, 1, '', 'acp', 21, 226, 229, 'ACP_EXTENSION_MANAGEMENT', '', ''),
(24, 1, 1, '', 'acp', 21, 236, 239, 'ACP_LANGUAGE', '', ''),
(25, 1, 1, '', 'acp', 0, 241, 260, 'ACP_CAT_MAINTENANCE', '', ''),
(26, 1, 1, '', 'acp', 25, 242, 251, 'ACP_FORUM_LOGS', '', ''),
(27, 1, 1, '', 'acp', 25, 252, 259, 'ACP_CAT_DATABASE', '', ''),
(28, 1, 1, '', 'acp', 0, 261, 284, 'ACP_CAT_SYSTEM', '', ''),
(29, 1, 1, '', 'acp', 28, 262, 265, 'ACP_AUTOMATION', '', ''),
(30, 1, 1, '', 'acp', 28, 266, 275, 'ACP_GENERAL_TASKS', '', ''),
(31, 1, 1, '', 'acp', 28, 276, 283, 'ACP_MODULE_MANAGEMENT', '', ''),
(32, 1, 1, '', 'acp', 0, 285, 286, 'ACP_CAT_DOT_MODS', '', ''),
(33, 1, 1, 'acp_attachments', 'acp', 3, 19, 20, 'ACP_ATTACHMENT_SETTINGS', 'attach', 'acl_a_attach'),
(34, 1, 1, 'acp_attachments', 'acp', 11, 105, 106, 'ACP_ATTACHMENT_SETTINGS', 'attach', 'acl_a_attach'),
(35, 1, 1, 'acp_attachments', 'acp', 11, 107, 108, 'ACP_MANAGE_EXTENSIONS', 'extensions', 'acl_a_attach'),
(36, 1, 1, 'acp_attachments', 'acp', 11, 109, 110, 'ACP_EXTENSION_GROUPS', 'ext_groups', 'acl_a_attach'),
(37, 1, 1, 'acp_attachments', 'acp', 11, 111, 112, 'ACP_ORPHAN_ATTACHMENTS', 'orphan', 'acl_a_attach'),
(38, 1, 1, 'acp_attachments', 'acp', 11, 113, 114, 'ACP_MANAGE_ATTACHMENTS', 'manage', 'acl_a_attach'),
(39, 1, 1, 'acp_ban', 'acp', 15, 165, 166, 'ACP_BAN_EMAILS', 'email', 'acl_a_ban'),
(40, 1, 1, 'acp_ban', 'acp', 15, 167, 168, 'ACP_BAN_IPS', 'ip', 'acl_a_ban'),
(41, 1, 1, 'acp_ban', 'acp', 15, 169, 170, 'ACP_BAN_USERNAMES', 'user', 'acl_a_ban'),
(42, 1, 1, 'acp_bbcodes', 'acp', 10, 91, 92, 'ACP_BBCODES', 'bbcodes', 'acl_a_bbcode'),
(43, 1, 1, 'acp_board', 'acp', 3, 21, 22, 'ACP_BOARD_SETTINGS', 'settings', 'acl_a_board'),
(44, 1, 1, 'acp_board', 'acp', 3, 23, 24, 'ACP_BOARD_FEATURES', 'features', 'acl_a_board'),
(45, 1, 1, 'acp_board', 'acp', 3, 25, 26, 'ACP_AVATAR_SETTINGS', 'avatar', 'acl_a_board'),
(46, 1, 1, 'acp_board', 'acp', 3, 27, 28, 'ACP_MESSAGE_SETTINGS', 'message', 'acl_a_board'),
(47, 1, 1, 'acp_board', 'acp', 10, 93, 94, 'ACP_MESSAGE_SETTINGS', 'message', 'acl_a_board'),
(48, 1, 1, 'acp_board', 'acp', 3, 29, 30, 'ACP_POST_SETTINGS', 'post', 'acl_a_board'),
(49, 1, 1, 'acp_board', 'acp', 10, 95, 96, 'ACP_POST_SETTINGS', 'post', 'acl_a_board'),
(50, 1, 1, 'acp_board', 'acp', 3, 31, 32, 'ACP_SIGNATURE_SETTINGS', 'signature', 'acl_a_board'),
(51, 1, 1, 'acp_board', 'acp', 3, 33, 34, 'ACP_FEED_SETTINGS', 'feed', 'acl_a_board'),
(52, 1, 1, 'acp_board', 'acp', 3, 35, 36, 'ACP_REGISTER_SETTINGS', 'registration', 'acl_a_board'),
(53, 1, 1, 'acp_board', 'acp', 4, 47, 48, 'ACP_AUTH_SETTINGS', 'auth', 'acl_a_server'),
(54, 1, 1, 'acp_board', 'acp', 4, 49, 50, 'ACP_EMAIL_SETTINGS', 'email', 'acl_a_server'),
(55, 1, 1, 'acp_board', 'acp', 5, 55, 56, 'ACP_COOKIE_SETTINGS', 'cookie', 'acl_a_server'),
(56, 1, 1, 'acp_board', 'acp', 5, 57, 58, 'ACP_SERVER_SETTINGS', 'server', 'acl_a_server'),
(57, 1, 1, 'acp_board', 'acp', 5, 59, 60, 'ACP_SECURITY_SETTINGS', 'security', 'acl_a_server'),
(58, 1, 1, 'acp_board', 'acp', 5, 61, 62, 'ACP_LOAD_SETTINGS', 'load', 'acl_a_server'),
(59, 1, 1, 'acp_bots', 'acp', 30, 267, 268, 'ACP_BOTS', 'bots', 'acl_a_bots'),
(60, 1, 1, 'acp_captcha', 'acp', 3, 37, 38, 'ACP_VC_SETTINGS', 'visual', 'acl_a_board'),
(61, 1, 0, 'acp_captcha', 'acp', 3, 39, 40, 'ACP_VC_CAPTCHA_DISPLAY', 'img', 'acl_a_board'),
(62, 1, 1, 'acp_contact', 'acp', 3, 41, 42, 'ACP_CONTACT_SETTINGS', 'contact', 'acl_a_board'),
(63, 1, 1, 'acp_database', 'acp', 27, 253, 254, 'ACP_BACKUP', 'backup', 'acl_a_backup'),
(64, 1, 1, 'acp_database', 'acp', 27, 255, 256, 'ACP_RESTORE', 'restore', 'acl_a_backup'),
(65, 1, 1, 'acp_disallow', 'acp', 15, 171, 172, 'ACP_DISALLOW_USERNAMES', 'usernames', 'acl_a_names'),
(66, 1, 1, 'acp_email', 'acp', 30, 269, 270, 'ACP_MASS_EMAIL', 'email', 'acl_a_email && cfg_email_enable'),
(67, 1, 1, 'acp_extensions', 'acp', 23, 227, 228, 'ACP_EXTENSIONS', 'main', 'acl_a_extensions'),
(68, 1, 1, 'acp_forums', 'acp', 7, 71, 72, 'ACP_MANAGE_FORUMS', 'manage', 'acl_a_forum'),
(69, 1, 1, 'acp_groups', 'acp', 14, 155, 156, 'ACP_GROUPS_MANAGE', 'manage', 'acl_a_group'),
(70, 1, 1, 'acp_groups', 'acp', 14, 157, 158, 'ACP_GROUPS_POSITION', 'position', 'acl_a_group'),
(71, 1, 1, 'acp_help_phpbb', 'acp', 5, 63, 64, 'ACP_HELP_PHPBB', 'help_phpbb', 'acl_a_server'),
(72, 1, 1, 'acp_icons', 'acp', 10, 97, 98, 'ACP_ICONS', 'icons', 'acl_a_icons'),
(73, 1, 1, 'acp_icons', 'acp', 10, 99, 100, 'ACP_SMILIES', 'smilies', 'acl_a_icons'),
(74, 1, 1, 'acp_inactive', 'acp', 13, 119, 120, 'ACP_INACTIVE_USERS', 'list', 'acl_a_user'),
(75, 1, 1, 'acp_jabber', 'acp', 4, 51, 52, 'ACP_JABBER_SETTINGS', 'settings', 'acl_a_jabber'),
(76, 1, 1, 'acp_language', 'acp', 24, 237, 238, 'ACP_LANGUAGE_PACKS', 'lang_packs', 'acl_a_language'),
(77, 1, 1, 'acp_logs', 'acp', 26, 243, 244, 'ACP_ADMIN_LOGS', 'admin', 'acl_a_viewlogs'),
(78, 1, 1, 'acp_logs', 'acp', 26, 245, 246, 'ACP_MOD_LOGS', 'mod', 'acl_a_viewlogs'),
(79, 1, 1, 'acp_logs', 'acp', 26, 247, 248, 'ACP_USERS_LOGS', 'users', 'acl_a_viewlogs'),
(80, 1, 1, 'acp_logs', 'acp', 26, 249, 250, 'ACP_CRITICAL_LOGS', 'critical', 'acl_a_viewlogs'),
(81, 1, 1, 'acp_main', 'acp', 1, 2, 3, 'ACP_INDEX', 'main', ''),
(82, 1, 1, 'acp_modules', 'acp', 31, 277, 278, 'ACP', 'acp', 'acl_a_modules'),
(83, 1, 1, 'acp_modules', 'acp', 31, 279, 280, 'UCP', 'ucp', 'acl_a_modules'),
(84, 1, 1, 'acp_modules', 'acp', 31, 281, 282, 'MCP', 'mcp', 'acl_a_modules'),
(85, 1, 1, 'acp_permission_roles', 'acp', 19, 201, 202, 'ACP_ADMIN_ROLES', 'admin_roles', 'acl_a_roles && acl_a_aauth'),
(86, 1, 1, 'acp_permission_roles', 'acp', 19, 203, 204, 'ACP_USER_ROLES', 'user_roles', 'acl_a_roles && acl_a_uauth'),
(87, 1, 1, 'acp_permission_roles', 'acp', 19, 205, 206, 'ACP_MOD_ROLES', 'mod_roles', 'acl_a_roles && acl_a_mauth'),
(88, 1, 1, 'acp_permission_roles', 'acp', 19, 207, 208, 'ACP_FORUM_ROLES', 'forum_roles', 'acl_a_roles && acl_a_fauth'),
(89, 1, 1, 'acp_permissions', 'acp', 16, 176, 177, 'ACP_PERMISSIONS', 'intro', 'acl_a_authusers || acl_a_authgroups || acl_a_viewauth'),
(90, 1, 0, 'acp_permissions', 'acp', 20, 211, 212, 'ACP_PERMISSION_TRACE', 'trace', 'acl_a_viewauth'),
(91, 1, 1, 'acp_permissions', 'acp', 18, 189, 190, 'ACP_FORUM_PERMISSIONS', 'setting_forum_local', 'acl_a_fauth && (acl_a_authusers || acl_a_authgroups)'),
(92, 1, 1, 'acp_permissions', 'acp', 18, 191, 192, 'ACP_FORUM_PERMISSIONS_COPY', 'setting_forum_copy', 'acl_a_fauth && acl_a_authusers && acl_a_authgroups && acl_a_mauth'),
(93, 1, 1, 'acp_permissions', 'acp', 18, 193, 194, 'ACP_FORUM_MODERATORS', 'setting_mod_local', 'acl_a_mauth && (acl_a_authusers || acl_a_authgroups)'),
(94, 1, 1, 'acp_permissions', 'acp', 17, 179, 180, 'ACP_USERS_PERMISSIONS', 'setting_user_global', 'acl_a_authusers && (acl_a_aauth || acl_a_mauth || acl_a_uauth)'),
(95, 1, 1, 'acp_permissions', 'acp', 13, 123, 124, 'ACP_USERS_PERMISSIONS', 'setting_user_global', 'acl_a_authusers && (acl_a_aauth || acl_a_mauth || acl_a_uauth)'),
(96, 1, 1, 'acp_permissions', 'acp', 18, 195, 196, 'ACP_USERS_FORUM_PERMISSIONS', 'setting_user_local', 'acl_a_authusers && (acl_a_mauth || acl_a_fauth)'),
(97, 1, 1, 'acp_permissions', 'acp', 13, 125, 126, 'ACP_USERS_FORUM_PERMISSIONS', 'setting_user_local', 'acl_a_authusers && (acl_a_mauth || acl_a_fauth)'),
(98, 1, 1, 'acp_permissions', 'acp', 17, 181, 182, 'ACP_GROUPS_PERMISSIONS', 'setting_group_global', 'acl_a_authgroups && (acl_a_aauth || acl_a_mauth || acl_a_uauth)'),
(99, 1, 1, 'acp_permissions', 'acp', 14, 159, 160, 'ACP_GROUPS_PERMISSIONS', 'setting_group_global', 'acl_a_authgroups && (acl_a_aauth || acl_a_mauth || acl_a_uauth)'),
(100, 1, 1, 'acp_permissions', 'acp', 18, 197, 198, 'ACP_GROUPS_FORUM_PERMISSIONS', 'setting_group_local', 'acl_a_authgroups && (acl_a_mauth || acl_a_fauth)'),
(101, 1, 1, 'acp_permissions', 'acp', 14, 161, 162, 'ACP_GROUPS_FORUM_PERMISSIONS', 'setting_group_local', 'acl_a_authgroups && (acl_a_mauth || acl_a_fauth)'),
(102, 1, 1, 'acp_permissions', 'acp', 17, 183, 184, 'ACP_ADMINISTRATORS', 'setting_admin_global', 'acl_a_aauth && (acl_a_authusers || acl_a_authgroups)'),
(103, 1, 1, 'acp_permissions', 'acp', 17, 185, 186, 'ACP_GLOBAL_MODERATORS', 'setting_mod_global', 'acl_a_mauth && (acl_a_authusers || acl_a_authgroups)'),
(104, 1, 1, 'acp_permissions', 'acp', 20, 213, 214, 'ACP_VIEW_ADMIN_PERMISSIONS', 'view_admin_global', 'acl_a_viewauth'),
(105, 1, 1, 'acp_permissions', 'acp', 20, 215, 216, 'ACP_VIEW_USER_PERMISSIONS', 'view_user_global', 'acl_a_viewauth'),
(106, 1, 1, 'acp_permissions', 'acp', 20, 217, 218, 'ACP_VIEW_GLOBAL_MOD_PERMISSIONS', 'view_mod_global', 'acl_a_viewauth'),
(107, 1, 1, 'acp_permissions', 'acp', 20, 219, 220, 'ACP_VIEW_FORUM_MOD_PERMISSIONS', 'view_mod_local', 'acl_a_viewauth'),
(108, 1, 1, 'acp_permissions', 'acp', 20, 221, 222, 'ACP_VIEW_FORUM_PERMISSIONS', 'view_forum_local', 'acl_a_viewauth'),
(109, 1, 1, 'acp_php_info', 'acp', 30, 271, 272, 'ACP_PHP_INFO', 'info', 'acl_a_phpinfo'),
(110, 1, 1, 'acp_profile', 'acp', 13, 127, 128, 'ACP_CUSTOM_PROFILE_FIELDS', 'profile', 'acl_a_profile'),
(111, 1, 1, 'acp_prune', 'acp', 7, 73, 74, 'ACP_PRUNE_FORUMS', 'forums', 'acl_a_prune'),
(112, 1, 1, 'acp_prune', 'acp', 13, 129, 130, 'ACP_PRUNE_USERS', 'users', 'acl_a_userdel'),
(113, 1, 1, 'acp_ranks', 'acp', 13, 131, 132, 'ACP_MANAGE_RANKS', 'ranks', 'acl_a_ranks'),
(114, 1, 1, 'acp_reasons', 'acp', 30, 273, 274, 'ACP_MANAGE_REASONS', 'main', 'acl_a_reasons'),
(115, 1, 1, 'acp_search', 'acp', 5, 65, 66, 'ACP_SEARCH_SETTINGS', 'settings', 'acl_a_search'),
(116, 1, 1, 'acp_search', 'acp', 27, 257, 258, 'ACP_SEARCH_INDEX', 'index', 'acl_a_search'),
(117, 1, 1, 'acp_styles', 'acp', 22, 231, 232, 'ACP_STYLES', 'style', 'acl_a_styles'),
(118, 1, 1, 'acp_styles', 'acp', 22, 233, 234, 'ACP_STYLES_INSTALL', 'install', 'acl_a_styles'),
(119, 1, 1, 'acp_update', 'acp', 29, 263, 264, 'ACP_VERSION_CHECK', 'version_check', 'acl_a_board'),
(120, 1, 1, 'acp_users', 'acp', 13, 121, 122, 'ACP_MANAGE_USERS', 'overview', 'acl_a_user'),
(121, 1, 0, 'acp_users', 'acp', 13, 133, 134, 'ACP_USER_FEEDBACK', 'feedback', 'acl_a_user'),
(122, 1, 0, 'acp_users', 'acp', 13, 135, 136, 'ACP_USER_WARNINGS', 'warnings', 'acl_a_user'),
(123, 1, 0, 'acp_users', 'acp', 13, 137, 138, 'ACP_USER_PROFILE', 'profile', 'acl_a_user'),
(124, 1, 0, 'acp_users', 'acp', 13, 139, 140, 'ACP_USER_PREFS', 'prefs', 'acl_a_user'),
(125, 1, 0, 'acp_users', 'acp', 13, 141, 142, 'ACP_USER_AVATAR', 'avatar', 'acl_a_user'),
(126, 1, 0, 'acp_users', 'acp', 13, 143, 144, 'ACP_USER_RANK', 'rank', 'acl_a_user'),
(127, 1, 0, 'acp_users', 'acp', 13, 145, 146, 'ACP_USER_SIG', 'sig', 'acl_a_user'),
(128, 1, 0, 'acp_users', 'acp', 13, 147, 148, 'ACP_USER_GROUPS', 'groups', 'acl_a_user && acl_a_group'),
(129, 1, 0, 'acp_users', 'acp', 13, 149, 150, 'ACP_USER_PERM', 'perm', 'acl_a_user && acl_a_viewauth'),
(130, 1, 0, 'acp_users', 'acp', 13, 151, 152, 'ACP_USER_ATTACH', 'attach', 'acl_a_user'),
(131, 1, 1, 'acp_words', 'acp', 10, 101, 102, 'ACP_WORDS', 'words', 'acl_a_words'),
(132, 1, 1, 'acp_users', 'acp', 2, 5, 6, 'ACP_MANAGE_USERS', 'overview', 'acl_a_user'),
(133, 1, 1, 'acp_groups', 'acp', 2, 7, 8, 'ACP_GROUPS_MANAGE', 'manage', 'acl_a_group'),
(134, 1, 1, 'acp_forums', 'acp', 2, 9, 10, 'ACP_MANAGE_FORUMS', 'manage', 'acl_a_forum'),
(135, 1, 1, 'acp_logs', 'acp', 2, 11, 12, 'ACP_MOD_LOGS', 'mod', 'acl_a_viewlogs'),
(136, 1, 1, 'acp_bots', 'acp', 2, 13, 14, 'ACP_BOTS', 'bots', 'acl_a_bots'),
(137, 1, 1, 'acp_php_info', 'acp', 2, 15, 16, 'ACP_PHP_INFO', 'info', 'acl_a_phpinfo'),
(138, 1, 1, 'acp_permissions', 'acp', 8, 77, 78, 'ACP_FORUM_PERMISSIONS', 'setting_forum_local', 'acl_a_fauth && (acl_a_authusers || acl_a_authgroups)'),
(139, 1, 1, 'acp_permissions', 'acp', 8, 79, 80, 'ACP_FORUM_PERMISSIONS_COPY', 'setting_forum_copy', 'acl_a_fauth && acl_a_authusers && acl_a_authgroups && acl_a_mauth'),
(140, 1, 1, 'acp_permissions', 'acp', 8, 81, 82, 'ACP_FORUM_MODERATORS', 'setting_mod_local', 'acl_a_mauth && (acl_a_authusers || acl_a_authgroups)'),
(141, 1, 1, 'acp_permissions', 'acp', 8, 83, 84, 'ACP_USERS_FORUM_PERMISSIONS', 'setting_user_local', 'acl_a_authusers && (acl_a_mauth || acl_a_fauth)'),
(142, 1, 1, 'acp_permissions', 'acp', 8, 85, 86, 'ACP_GROUPS_FORUM_PERMISSIONS', 'setting_group_local', 'acl_a_authgroups && (acl_a_mauth || acl_a_fauth)'),
(143, 1, 1, '', 'mcp', 0, 1, 10, 'MCP_MAIN', '', ''),
(144, 1, 1, '', 'mcp', 0, 11, 22, 'MCP_QUEUE', '', ''),
(145, 1, 1, '', 'mcp', 0, 23, 36, 'MCP_REPORTS', '', ''),
(146, 1, 1, '', 'mcp', 0, 37, 42, 'MCP_NOTES', '', ''),
(147, 1, 1, '', 'mcp', 0, 43, 52, 'MCP_WARN', '', ''),
(148, 1, 1, '', 'mcp', 0, 53, 60, 'MCP_LOGS', '', ''),
(149, 1, 1, '', 'mcp', 0, 61, 68, 'MCP_BAN', '', ''),
(150, 1, 1, 'mcp_ban', 'mcp', 149, 62, 63, 'MCP_BAN_USERNAMES', 'user', 'acl_m_ban'),
(151, 1, 1, 'mcp_ban', 'mcp', 149, 64, 65, 'MCP_BAN_IPS', 'ip', 'acl_m_ban'),
(152, 1, 1, 'mcp_ban', 'mcp', 149, 66, 67, 'MCP_BAN_EMAILS', 'email', 'acl_m_ban'),
(153, 1, 1, 'mcp_logs', 'mcp', 148, 54, 55, 'MCP_LOGS_FRONT', 'front', 'acl_m_ || aclf_m_'),
(154, 1, 1, 'mcp_logs', 'mcp', 148, 56, 57, 'MCP_LOGS_FORUM_VIEW', 'forum_logs', 'acl_m_,$id'),
(155, 1, 1, 'mcp_logs', 'mcp', 148, 58, 59, 'MCP_LOGS_TOPIC_VIEW', 'topic_logs', 'acl_m_,$id'),
(156, 1, 1, 'mcp_main', 'mcp', 143, 2, 3, 'MCP_MAIN_FRONT', 'front', ''),
(157, 1, 1, 'mcp_main', 'mcp', 143, 4, 5, 'MCP_MAIN_FORUM_VIEW', 'forum_view', 'acl_m_,$id'),
(158, 1, 1, 'mcp_main', 'mcp', 143, 6, 7, 'MCP_MAIN_TOPIC_VIEW', 'topic_view', 'acl_m_,$id'),
(159, 1, 1, 'mcp_main', 'mcp', 143, 8, 9, 'MCP_MAIN_POST_DETAILS', 'post_details', 'acl_m_,$id || (!$id && aclf_m_)'),
(160, 1, 1, 'mcp_notes', 'mcp', 146, 38, 39, 'MCP_NOTES_FRONT', 'front', ''),
(161, 1, 1, 'mcp_notes', 'mcp', 146, 40, 41, 'MCP_NOTES_USER', 'user_notes', ''),
(162, 1, 1, 'mcp_pm_reports', 'mcp', 145, 30, 31, 'MCP_PM_REPORTS_OPEN', 'pm_reports', 'acl_m_pm_report'),
(163, 1, 1, 'mcp_pm_reports', 'mcp', 145, 32, 33, 'MCP_PM_REPORTS_CLOSED', 'pm_reports_closed', 'acl_m_pm_report'),
(164, 1, 1, 'mcp_pm_reports', 'mcp', 145, 34, 35, 'MCP_PM_REPORT_DETAILS', 'pm_report_details', 'acl_m_pm_report'),
(165, 1, 1, 'mcp_queue', 'mcp', 144, 12, 13, 'MCP_QUEUE_UNAPPROVED_TOPICS', 'unapproved_topics', 'aclf_m_approve'),
(166, 1, 1, 'mcp_queue', 'mcp', 144, 14, 15, 'MCP_QUEUE_UNAPPROVED_POSTS', 'unapproved_posts', 'aclf_m_approve'),
(167, 1, 1, 'mcp_queue', 'mcp', 144, 16, 17, 'MCP_QUEUE_DELETED_TOPICS', 'deleted_topics', 'aclf_m_approve'),
(168, 1, 1, 'mcp_queue', 'mcp', 144, 18, 19, 'MCP_QUEUE_DELETED_POSTS', 'deleted_posts', 'aclf_m_approve'),
(169, 1, 1, 'mcp_queue', 'mcp', 144, 20, 21, 'MCP_QUEUE_APPROVE_DETAILS', 'approve_details', 'acl_m_approve,$id || (!$id && aclf_m_approve)'),
(170, 1, 1, 'mcp_reports', 'mcp', 145, 24, 25, 'MCP_REPORTS_OPEN', 'reports', 'aclf_m_report'),
(171, 1, 1, 'mcp_reports', 'mcp', 145, 26, 27, 'MCP_REPORTS_CLOSED', 'reports_closed', 'aclf_m_report'),
(172, 1, 1, 'mcp_reports', 'mcp', 145, 28, 29, 'MCP_REPORT_DETAILS', 'report_details', 'acl_m_report,$id || (!$id && aclf_m_report)'),
(173, 1, 1, 'mcp_warn', 'mcp', 147, 44, 45, 'MCP_WARN_FRONT', 'front', 'aclf_m_warn'),
(174, 1, 1, 'mcp_warn', 'mcp', 147, 46, 47, 'MCP_WARN_LIST', 'list', 'aclf_m_warn'),
(175, 1, 1, 'mcp_warn', 'mcp', 147, 48, 49, 'MCP_WARN_USER', 'warn_user', 'aclf_m_warn'),
(176, 1, 1, 'mcp_warn', 'mcp', 147, 50, 51, 'MCP_WARN_POST', 'warn_post', 'acl_m_warn && acl_f_read,$id'),
(177, 1, 1, '', 'ucp', 0, 1, 14, 'UCP_MAIN', '', ''),
(178, 1, 1, '', 'ucp', 0, 15, 28, 'UCP_PROFILE', '', ''),
(179, 1, 1, '', 'ucp', 0, 29, 38, 'UCP_PREFS', '', ''),
(180, 1, 1, 'ucp_pm', 'ucp', 0, 39, 48, 'UCP_PM', '', ''),
(181, 1, 1, '', 'ucp', 0, 49, 54, 'UCP_USERGROUPS', '', ''),
(182, 1, 1, '', 'ucp', 0, 55, 60, 'UCP_ZEBRA', '', ''),
(183, 1, 1, 'ucp_attachments', 'ucp', 177, 10, 11, 'UCP_MAIN_ATTACHMENTS', 'attachments', 'acl_u_attach'),
(184, 1, 1, 'ucp_auth_link', 'ucp', 178, 26, 27, 'UCP_AUTH_LINK_MANAGE', 'auth_link', 'authmethod_oauth'),
(185, 1, 1, 'ucp_groups', 'ucp', 181, 50, 51, 'UCP_USERGROUPS_MEMBER', 'membership', ''),
(186, 1, 1, 'ucp_groups', 'ucp', 181, 52, 53, 'UCP_USERGROUPS_MANAGE', 'manage', ''),
(187, 1, 1, 'ucp_main', 'ucp', 177, 2, 3, 'UCP_MAIN_FRONT', 'front', ''),
(188, 1, 1, 'ucp_main', 'ucp', 177, 4, 5, 'UCP_MAIN_SUBSCRIBED', 'subscribed', ''),
(189, 1, 1, 'ucp_main', 'ucp', 177, 6, 7, 'UCP_MAIN_BOOKMARKS', 'bookmarks', 'cfg_allow_bookmarks'),
(190, 1, 1, 'ucp_main', 'ucp', 177, 8, 9, 'UCP_MAIN_DRAFTS', 'drafts', ''),
(191, 1, 1, 'ucp_notifications', 'ucp', 179, 36, 37, 'UCP_NOTIFICATION_OPTIONS', 'notification_options', ''),
(192, 1, 1, 'ucp_notifications', 'ucp', 177, 12, 13, 'UCP_NOTIFICATION_LIST', 'notification_list', 'cfg_allow_board_notifications'),
(193, 1, 0, 'ucp_pm', 'ucp', 180, 40, 41, 'UCP_PM_VIEW', 'view', 'cfg_allow_privmsg'),
(194, 1, 1, 'ucp_pm', 'ucp', 180, 42, 43, 'UCP_PM_COMPOSE', 'compose', 'cfg_allow_privmsg'),
(195, 1, 1, 'ucp_pm', 'ucp', 180, 44, 45, 'UCP_PM_DRAFTS', 'drafts', 'cfg_allow_privmsg'),
(196, 1, 1, 'ucp_pm', 'ucp', 180, 46, 47, 'UCP_PM_OPTIONS', 'options', 'cfg_allow_privmsg'),
(197, 1, 1, 'ucp_prefs', 'ucp', 179, 30, 31, 'UCP_PREFS_PERSONAL', 'personal', ''),
(198, 1, 1, 'ucp_prefs', 'ucp', 179, 32, 33, 'UCP_PREFS_POST', 'post', ''),
(199, 1, 1, 'ucp_prefs', 'ucp', 179, 34, 35, 'UCP_PREFS_VIEW', 'view', ''),
(200, 1, 1, 'ucp_profile', 'ucp', 178, 16, 17, 'UCP_PROFILE_PROFILE_INFO', 'profile_info', 'acl_u_chgprofileinfo'),
(201, 1, 1, 'ucp_profile', 'ucp', 178, 18, 19, 'UCP_PROFILE_SIGNATURE', 'signature', 'acl_u_sig'),
(202, 1, 1, 'ucp_profile', 'ucp', 178, 20, 21, 'UCP_PROFILE_AVATAR', 'avatar', 'cfg_allow_avatar'),
(203, 1, 1, 'ucp_profile', 'ucp', 178, 22, 23, 'UCP_PROFILE_REG_DETAILS', 'reg_details', ''),
(204, 1, 1, 'ucp_profile', 'ucp', 178, 24, 25, 'UCP_PROFILE_AUTOLOGIN_KEYS', 'autologin_keys', ''),
(205, 1, 1, 'ucp_zebra', 'ucp', 182, 56, 57, 'UCP_ZEBRA_FRIENDS', 'friends', ''),
(206, 1, 1, 'ucp_zebra', 'ucp', 182, 58, 59, 'UCP_ZEBRA_FOES', 'foes', ''),
(207, 1, 1, '\\phpbb\\viglink\\acp\\viglink_module', 'acp', 3, 43, 44, 'ACP_VIGLINK_SETTINGS', 'settings', 'ext_phpbb/viglink && acl_a_board');

-- --------------------------------------------------------

--
-- Table structure for table `phpbbnotifications`
--

CREATE TABLE `phpbbnotifications` (
  `notification_id` int(10) UNSIGNED NOT NULL,
  `notification_type_id` smallint(4) UNSIGNED NOT NULL DEFAULT '0',
  `item_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `item_parent_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `notification_read` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `notification_time` int(11) UNSIGNED NOT NULL DEFAULT '1',
  `notification_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `phpbbnotification_types`
--

CREATE TABLE `phpbbnotification_types` (
  `notification_type_id` smallint(4) UNSIGNED NOT NULL,
  `notification_type_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `notification_type_enabled` tinyint(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `phpbboauth_accounts`
--

CREATE TABLE `phpbboauth_accounts` (
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `provider` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `oauth_provider_id` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `phpbboauth_states`
--

CREATE TABLE `phpbboauth_states` (
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `session_id` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `provider` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `oauth_state` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `phpbboauth_tokens`
--

CREATE TABLE `phpbboauth_tokens` (
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `session_id` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `provider` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `oauth_token` mediumtext COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `phpbbpoll_options`
--

CREATE TABLE `phpbbpoll_options` (
  `poll_option_id` tinyint(4) NOT NULL DEFAULT '0',
  `topic_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `poll_option_text` text COLLATE utf8_bin NOT NULL,
  `poll_option_total` mediumint(8) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `phpbbpoll_votes`
--

CREATE TABLE `phpbbpoll_votes` (
  `topic_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `poll_option_id` tinyint(4) NOT NULL DEFAULT '0',
  `vote_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `vote_user_ip` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `phpbbposts`
--

CREATE TABLE `phpbbposts` (
  `post_id` int(10) UNSIGNED NOT NULL,
  `topic_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `forum_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `poster_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `icon_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `poster_ip` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `post_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `post_reported` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `enable_bbcode` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `enable_smilies` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `enable_magic_url` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `enable_sig` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `post_username` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `post_subject` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `post_text` mediumtext COLLATE utf8_bin NOT NULL,
  `post_checksum` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `post_attachment` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `bbcode_bitfield` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `bbcode_uid` varchar(8) COLLATE utf8_bin NOT NULL DEFAULT '',
  `post_postcount` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `post_edit_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `post_edit_reason` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `post_edit_user` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `post_edit_count` smallint(4) UNSIGNED NOT NULL DEFAULT '0',
  `post_edit_locked` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `post_visibility` tinyint(3) NOT NULL DEFAULT '0',
  `post_delete_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `post_delete_reason` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `post_delete_user` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbbposts`
--

INSERT INTO `phpbbposts` (`post_id`, `topic_id`, `forum_id`, `poster_id`, `icon_id`, `poster_ip`, `post_time`, `post_reported`, `enable_bbcode`, `enable_smilies`, `enable_magic_url`, `enable_sig`, `post_username`, `post_subject`, `post_text`, `post_checksum`, `post_attachment`, `bbcode_bitfield`, `bbcode_uid`, `post_postcount`, `post_edit_time`, `post_edit_reason`, `post_edit_user`, `post_edit_count`, `post_edit_locked`, `post_visibility`, `post_delete_time`, `post_delete_reason`, `post_delete_user`) VALUES
(1, 1, 2, 2, 0, '127.0.0.1', 1591178503, 0, 1, 1, 1, 1, '', 'Welcome to phpBB3', 'This is an example post in your phpBB3 installation. Everything seems to be working. You may delete this post if you like and continue to set up your board. During the installation process your first category and your first forum are assigned an appropriate set of permissions for the predefined usergroups administrators, bots, global moderators, guests, registered users and registered COPPA users. If you also choose to delete your first category and your first forum, do not forget to assign permissions for all these usergroups for all new categories and forums you create. It is recommended to rename your first category and your first forum and copy permissions from these while creating new categories and forums. Have fun!', '5dd683b17f641daf84c040bfefc58ce9', 0, '', '', 1, 0, '', 0, 0, 0, 1, 0, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `phpbbprivmsgs`
--

CREATE TABLE `phpbbprivmsgs` (
  `msg_id` int(10) UNSIGNED NOT NULL,
  `root_level` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `author_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `icon_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `author_ip` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `message_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `enable_bbcode` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `enable_smilies` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `enable_magic_url` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `enable_sig` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `message_subject` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `message_text` mediumtext COLLATE utf8_bin NOT NULL,
  `message_edit_reason` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `message_edit_user` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `message_attachment` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `bbcode_bitfield` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `bbcode_uid` varchar(8) COLLATE utf8_bin NOT NULL DEFAULT '',
  `message_edit_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `message_edit_count` smallint(4) UNSIGNED NOT NULL DEFAULT '0',
  `to_address` text COLLATE utf8_bin NOT NULL,
  `bcc_address` text COLLATE utf8_bin NOT NULL,
  `message_reported` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `phpbbprivmsgs_folder`
--

CREATE TABLE `phpbbprivmsgs_folder` (
  `folder_id` mediumint(8) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `folder_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pm_count` mediumint(8) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `phpbbprivmsgs_rules`
--

CREATE TABLE `phpbbprivmsgs_rules` (
  `rule_id` mediumint(8) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `rule_check` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `rule_connection` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `rule_string` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `rule_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `rule_group_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `rule_action` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `rule_folder_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `phpbbprivmsgs_to`
--

CREATE TABLE `phpbbprivmsgs_to` (
  `msg_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `author_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `pm_deleted` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `pm_new` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `pm_unread` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `pm_replied` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `pm_marked` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `pm_forwarded` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `folder_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `phpbbprofile_fields`
--

CREATE TABLE `phpbbprofile_fields` (
  `field_id` mediumint(8) UNSIGNED NOT NULL,
  `field_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `field_type` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `field_ident` varchar(20) COLLATE utf8_bin NOT NULL DEFAULT '',
  `field_length` varchar(20) COLLATE utf8_bin NOT NULL DEFAULT '',
  `field_minlen` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `field_maxlen` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `field_novalue` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `field_default_value` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `field_validation` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `field_required` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `field_show_on_reg` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `field_hide` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `field_no_view` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `field_active` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `field_order` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `field_show_profile` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `field_show_on_vt` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `field_show_novalue` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `field_show_on_pm` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `field_show_on_ml` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `field_is_contact` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `field_contact_desc` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `field_contact_url` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbbprofile_fields`
--

INSERT INTO `phpbbprofile_fields` (`field_id`, `field_name`, `field_type`, `field_ident`, `field_length`, `field_minlen`, `field_maxlen`, `field_novalue`, `field_default_value`, `field_validation`, `field_required`, `field_show_on_reg`, `field_hide`, `field_no_view`, `field_active`, `field_order`, `field_show_profile`, `field_show_on_vt`, `field_show_novalue`, `field_show_on_pm`, `field_show_on_ml`, `field_is_contact`, `field_contact_desc`, `field_contact_url`) VALUES
(1, 'phpbb_location', 'profilefields.type.string', 'phpbb_location', '20', '2', '100', '', '', '.*', 0, 0, 0, 0, 1, 1, 1, 1, 0, 1, 1, 0, '', ''),
(2, 'phpbb_website', 'profilefields.type.url', 'phpbb_website', '40', '12', '255', '', '', '', 0, 0, 0, 0, 1, 2, 1, 1, 0, 1, 1, 1, 'VISIT_WEBSITE', '%s'),
(3, 'phpbb_interests', 'profilefields.type.text', 'phpbb_interests', '3|30', '2', '500', '', '', '.*', 0, 0, 0, 0, 0, 3, 1, 0, 0, 0, 0, 0, '', ''),
(4, 'phpbb_occupation', 'profilefields.type.text', 'phpbb_occupation', '3|30', '2', '500', '', '', '.*', 0, 0, 0, 0, 0, 4, 1, 0, 0, 0, 0, 0, '', ''),
(5, 'phpbb_aol', 'profilefields.type.string', 'phpbb_aol', '40', '5', '255', '', '', '.*', 0, 0, 0, 0, 0, 5, 1, 1, 0, 1, 1, 1, '', ''),
(6, 'phpbb_icq', 'profilefields.type.string', 'phpbb_icq', '20', '3', '15', '', '', '[0-9]+', 0, 0, 0, 0, 0, 6, 1, 1, 0, 1, 1, 1, 'SEND_ICQ_MESSAGE', 'https://www.icq.com/people/%s/'),
(7, 'phpbb_yahoo', 'profilefields.type.string', 'phpbb_yahoo', '40', '5', '255', '', '', '.*', 0, 0, 0, 0, 0, 8, 1, 1, 0, 1, 1, 1, 'SEND_YIM_MESSAGE', 'ymsgr:sendim?%s'),
(8, 'phpbb_facebook', 'profilefields.type.string', 'phpbb_facebook', '20', '5', '50', '', '', '[\\w.]+', 0, 0, 0, 0, 1, 9, 1, 1, 0, 1, 1, 1, 'VIEW_FACEBOOK_PROFILE', 'http://facebook.com/%s/'),
(9, 'phpbb_twitter', 'profilefields.type.string', 'phpbb_twitter', '20', '1', '15', '', '', '[\\w_]+', 0, 0, 0, 0, 1, 10, 1, 1, 0, 1, 1, 1, 'VIEW_TWITTER_PROFILE', 'http://twitter.com/%s'),
(10, 'phpbb_skype', 'profilefields.type.string', 'phpbb_skype', '20', '6', '32', '', '', '[a-zA-Z][\\w\\.,\\-_]+', 0, 0, 0, 0, 1, 11, 1, 1, 0, 1, 1, 1, 'VIEW_SKYPE_PROFILE', 'skype:%s?userinfo'),
(11, 'phpbb_youtube', 'profilefields.type.string', 'phpbb_youtube', '20', '3', '60', '', '', '[a-zA-Z][\\w\\.,\\-_]+', 0, 0, 0, 0, 1, 12, 1, 1, 0, 1, 1, 1, 'VIEW_YOUTUBE_CHANNEL', 'http://youtube.com/user/%s'),
(12, 'phpbb_googleplus', 'profilefields.type.googleplus', 'phpbb_googleplus', '20', '3', '255', '', '', '[\\w]+', 0, 0, 0, 0, 1, 13, 1, 1, 0, 1, 1, 1, 'VIEW_GOOGLEPLUS_PROFILE', 'http://plus.google.com/%s');

-- --------------------------------------------------------

--
-- Table structure for table `phpbbprofile_fields_data`
--

CREATE TABLE `phpbbprofile_fields_data` (
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `pf_phpbb_interests` mediumtext COLLATE utf8_bin NOT NULL,
  `pf_phpbb_occupation` mediumtext COLLATE utf8_bin NOT NULL,
  `pf_phpbb_location` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pf_phpbb_youtube` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pf_phpbb_facebook` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pf_phpbb_icq` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pf_phpbb_skype` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pf_phpbb_twitter` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pf_phpbb_googleplus` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pf_phpbb_website` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pf_phpbb_yahoo` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pf_phpbb_aol` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `phpbbprofile_fields_lang`
--

CREATE TABLE `phpbbprofile_fields_lang` (
  `field_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `lang_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `option_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `field_type` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `lang_value` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `phpbbprofile_lang`
--

CREATE TABLE `phpbbprofile_lang` (
  `field_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `lang_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `lang_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `lang_explain` text COLLATE utf8_bin NOT NULL,
  `lang_default_value` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbbprofile_lang`
--

INSERT INTO `phpbbprofile_lang` (`field_id`, `lang_id`, `lang_name`, `lang_explain`, `lang_default_value`) VALUES
(1, 1, 'LOCATION', '', ''),
(2, 1, 'WEBSITE', '', ''),
(3, 1, 'INTERESTS', '', ''),
(4, 1, 'OCCUPATION', '', ''),
(5, 1, 'AOL', '', ''),
(6, 1, 'ICQ', '', ''),
(7, 1, 'YAHOO', '', ''),
(8, 1, 'FACEBOOK', '', ''),
(9, 1, 'TWITTER', '', ''),
(10, 1, 'SKYPE', '', ''),
(11, 1, 'YOUTUBE', '', ''),
(12, 1, 'GOOGLEPLUS', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `phpbbranks`
--

CREATE TABLE `phpbbranks` (
  `rank_id` mediumint(8) UNSIGNED NOT NULL,
  `rank_title` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `rank_min` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `rank_special` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `rank_image` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbbranks`
--

INSERT INTO `phpbbranks` (`rank_id`, `rank_title`, `rank_min`, `rank_special`, `rank_image`) VALUES
(1, 'Site Admin', 0, 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `phpbbreports`
--

CREATE TABLE `phpbbreports` (
  `report_id` int(10) UNSIGNED NOT NULL,
  `reason_id` smallint(4) UNSIGNED NOT NULL DEFAULT '0',
  `post_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `user_notify` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `report_closed` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `report_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `report_text` mediumtext COLLATE utf8_bin NOT NULL,
  `pm_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `reported_post_enable_bbcode` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `reported_post_enable_smilies` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `reported_post_enable_magic_url` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `reported_post_text` mediumtext COLLATE utf8_bin NOT NULL,
  `reported_post_uid` varchar(8) COLLATE utf8_bin NOT NULL DEFAULT '',
  `reported_post_bitfield` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `phpbbreports_reasons`
--

CREATE TABLE `phpbbreports_reasons` (
  `reason_id` smallint(4) UNSIGNED NOT NULL,
  `reason_title` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `reason_description` mediumtext COLLATE utf8_bin NOT NULL,
  `reason_order` smallint(4) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbbreports_reasons`
--

INSERT INTO `phpbbreports_reasons` (`reason_id`, `reason_title`, `reason_description`, `reason_order`) VALUES
(1, 'warez', 'The post contains links to illegal or pirated software.', 1),
(2, 'spam', 'The reported post has the only purpose to advertise for a website or another product.', 2),
(3, 'off_topic', 'The reported post is off topic.', 3),
(4, 'other', 'The reported post does not fit into any other category, please use the further information field.', 4);

-- --------------------------------------------------------

--
-- Table structure for table `phpbbsearch_results`
--

CREATE TABLE `phpbbsearch_results` (
  `search_key` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `search_keywords` mediumtext COLLATE utf8_bin NOT NULL,
  `search_authors` mediumtext COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `phpbbsearch_wordlist`
--

CREATE TABLE `phpbbsearch_wordlist` (
  `word_id` int(10) UNSIGNED NOT NULL,
  `word_text` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `word_common` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `word_count` mediumint(8) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbbsearch_wordlist`
--

INSERT INTO `phpbbsearch_wordlist` (`word_id`, `word_text`, `word_common`, `word_count`) VALUES
(1, 'this', 0, 1),
(2, 'is', 0, 1),
(3, 'an', 0, 1),
(4, 'example', 0, 1),
(5, 'post', 0, 1),
(6, 'in', 0, 1),
(7, 'your', 0, 1),
(8, 'phpbb3', 0, 2),
(9, 'installation', 0, 1),
(10, 'everything', 0, 1),
(11, 'seems', 0, 1),
(12, 'to', 0, 2),
(13, 'be', 0, 1),
(14, 'working', 0, 1),
(15, 'you', 0, 1),
(16, 'may', 0, 1),
(17, 'delete', 0, 1),
(18, 'if', 0, 1),
(19, 'like', 0, 1),
(20, 'and', 0, 1),
(21, 'continue', 0, 1),
(22, 'set', 0, 1),
(23, 'up', 0, 1),
(24, 'board', 0, 1),
(25, 'during', 0, 1),
(26, 'the', 0, 1),
(27, 'process', 0, 1),
(28, 'first', 0, 1),
(29, 'category', 0, 1),
(30, 'forum', 0, 1),
(31, 'are', 0, 1),
(32, 'assigned', 0, 1),
(33, 'appropriate', 0, 1),
(34, 'of', 0, 1),
(35, 'permissions', 0, 1),
(36, 'for', 0, 1),
(37, 'predefined', 0, 1),
(38, 'usergroups', 0, 1),
(39, 'administrators', 0, 1),
(40, 'bots', 0, 1),
(41, 'global', 0, 1),
(42, 'moderators', 0, 1),
(43, 'guests', 0, 1),
(44, 'registered', 0, 1),
(45, 'users', 0, 1),
(46, 'coppa', 0, 1),
(47, 'also', 0, 1),
(48, 'choose', 0, 1),
(49, 'do', 0, 1),
(50, 'not', 0, 1),
(51, 'forget', 0, 1),
(52, 'assign', 0, 1),
(53, 'all', 0, 1),
(54, 'these', 0, 1),
(55, 'new', 0, 1),
(56, 'categories', 0, 1),
(57, 'forums', 0, 1),
(58, 'create', 0, 1),
(59, 'it', 0, 1),
(60, 'recommended', 0, 1),
(61, 'rename', 0, 1),
(62, 'copy', 0, 1),
(63, 'from', 0, 1),
(64, 'while', 0, 1),
(65, 'creating', 0, 1),
(66, 'have', 0, 1),
(67, 'fun', 0, 1),
(68, 'welcome', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `phpbbsearch_wordmatch`
--

CREATE TABLE `phpbbsearch_wordmatch` (
  `post_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `word_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `title_match` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbbsearch_wordmatch`
--

INSERT INTO `phpbbsearch_wordmatch` (`post_id`, `word_id`, `title_match`) VALUES
(1, 1, 0),
(1, 2, 0),
(1, 3, 0),
(1, 4, 0),
(1, 5, 0),
(1, 6, 0),
(1, 7, 0),
(1, 8, 0),
(1, 8, 1),
(1, 9, 0),
(1, 10, 0),
(1, 11, 0),
(1, 12, 0),
(1, 12, 1),
(1, 13, 0),
(1, 14, 0),
(1, 15, 0),
(1, 16, 0),
(1, 17, 0),
(1, 18, 0),
(1, 19, 0),
(1, 20, 0),
(1, 21, 0),
(1, 22, 0),
(1, 23, 0),
(1, 24, 0),
(1, 25, 0),
(1, 26, 0),
(1, 27, 0),
(1, 28, 0),
(1, 29, 0),
(1, 30, 0),
(1, 31, 0),
(1, 32, 0),
(1, 33, 0),
(1, 34, 0),
(1, 35, 0),
(1, 36, 0),
(1, 37, 0),
(1, 38, 0),
(1, 39, 0),
(1, 40, 0),
(1, 41, 0),
(1, 42, 0),
(1, 43, 0),
(1, 44, 0),
(1, 45, 0),
(1, 46, 0),
(1, 47, 0),
(1, 48, 0),
(1, 49, 0),
(1, 50, 0),
(1, 51, 0),
(1, 52, 0),
(1, 53, 0),
(1, 54, 0),
(1, 55, 0),
(1, 56, 0),
(1, 57, 0),
(1, 58, 0),
(1, 59, 0),
(1, 60, 0),
(1, 61, 0),
(1, 62, 0),
(1, 63, 0),
(1, 64, 0),
(1, 65, 0),
(1, 66, 0),
(1, 67, 0),
(1, 68, 1);

-- --------------------------------------------------------

--
-- Table structure for table `phpbbsessions`
--

CREATE TABLE `phpbbsessions` (
  `session_id` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `session_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `session_last_visit` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `session_start` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `session_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `session_ip` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `session_browser` varchar(150) COLLATE utf8_bin NOT NULL DEFAULT '',
  `session_forwarded_for` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `session_page` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `session_viewonline` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `session_autologin` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `session_admin` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `session_forum_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbbsessions`
--

INSERT INTO `phpbbsessions` (`session_id`, `session_user_id`, `session_last_visit`, `session_start`, `session_time`, `session_ip`, `session_browser`, `session_forwarded_for`, `session_page`, `session_viewonline`, `session_autologin`, `session_admin`, `session_forum_id`) VALUES
('460561abb5a2c6ae75a53890ba46dfb5', 1, 1591264225, 1591264225, 1591264225, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36', '', 'app.php/docs-assets/ico/favicon.png', 1, 0, 0, 0),
('661529668c8c439703616f260036bdf3', 1, 1591214181, 1591214181, 1591214182, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36 Edge/18.18362', '', 'app.php/styles/simplicity/theme/fontawesome-all.min.css', 1, 0, 0, 0),
('7b8c0c7764290b684e9bca85b7331442', 1, 1591264224, 1591264224, 1591264224, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36', '', 'app.php/docs-assets/ico/favicon.png', 1, 0, 0, 0),
('f2bb3bc660e5bb906e784c7583de314c', 2, 1591178807, 1591213707, 1591214058, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36', '', 'index.php', 1, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `phpbbsessions_keys`
--

CREATE TABLE `phpbbsessions_keys` (
  `key_id` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `last_ip` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `last_login` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `phpbbsitelist`
--

CREATE TABLE `phpbbsitelist` (
  `site_id` mediumint(8) UNSIGNED NOT NULL,
  `site_ip` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `site_hostname` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `ip_exclude` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `phpbbsmilies`
--

CREATE TABLE `phpbbsmilies` (
  `smiley_id` mediumint(8) UNSIGNED NOT NULL,
  `code` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT '',
  `emotion` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `smiley_url` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT '',
  `smiley_width` smallint(4) UNSIGNED NOT NULL DEFAULT '0',
  `smiley_height` smallint(4) UNSIGNED NOT NULL DEFAULT '0',
  `smiley_order` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `display_on_posting` tinyint(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbbsmilies`
--

INSERT INTO `phpbbsmilies` (`smiley_id`, `code`, `emotion`, `smiley_url`, `smiley_width`, `smiley_height`, `smiley_order`, `display_on_posting`) VALUES
(1, ':D', 'Very Happy', 'icon_e_biggrin.gif', 15, 17, 1, 1),
(2, ':-D', 'Very Happy', 'icon_e_biggrin.gif', 15, 17, 2, 1),
(3, ':grin:', 'Very Happy', 'icon_e_biggrin.gif', 15, 17, 3, 1),
(4, ':)', 'Smile', 'icon_e_smile.gif', 15, 17, 4, 1),
(5, ':-)', 'Smile', 'icon_e_smile.gif', 15, 17, 5, 1),
(6, ':smile:', 'Smile', 'icon_e_smile.gif', 15, 17, 6, 1),
(7, ';)', 'Wink', 'icon_e_wink.gif', 15, 17, 7, 1),
(8, ';-)', 'Wink', 'icon_e_wink.gif', 15, 17, 8, 1),
(9, ':wink:', 'Wink', 'icon_e_wink.gif', 15, 17, 9, 1),
(10, ':(', 'Sad', 'icon_e_sad.gif', 15, 17, 10, 1),
(11, ':-(', 'Sad', 'icon_e_sad.gif', 15, 17, 11, 1),
(12, ':sad:', 'Sad', 'icon_e_sad.gif', 15, 17, 12, 1),
(13, ':o', 'Surprised', 'icon_e_surprised.gif', 15, 17, 13, 1),
(14, ':-o', 'Surprised', 'icon_e_surprised.gif', 15, 17, 14, 1),
(15, ':eek:', 'Surprised', 'icon_e_surprised.gif', 15, 17, 15, 1),
(16, ':shock:', 'Shocked', 'icon_eek.gif', 15, 17, 16, 1),
(17, ':?', 'Confused', 'icon_e_confused.gif', 15, 17, 17, 1),
(18, ':-?', 'Confused', 'icon_e_confused.gif', 15, 17, 18, 1),
(19, ':???:', 'Confused', 'icon_e_confused.gif', 15, 17, 19, 1),
(20, '8-)', 'Cool', 'icon_cool.gif', 15, 17, 20, 1),
(21, ':cool:', 'Cool', 'icon_cool.gif', 15, 17, 21, 1),
(22, ':lol:', 'Laughing', 'icon_lol.gif', 15, 17, 22, 1),
(23, ':x', 'Mad', 'icon_mad.gif', 15, 17, 23, 1),
(24, ':-x', 'Mad', 'icon_mad.gif', 15, 17, 24, 1),
(25, ':mad:', 'Mad', 'icon_mad.gif', 15, 17, 25, 1),
(26, ':P', 'Razz', 'icon_razz.gif', 15, 17, 26, 1),
(27, ':-P', 'Razz', 'icon_razz.gif', 15, 17, 27, 1),
(28, ':razz:', 'Razz', 'icon_razz.gif', 15, 17, 28, 1),
(29, ':oops:', 'Embarrassed', 'icon_redface.gif', 15, 17, 29, 1),
(30, ':cry:', 'Crying or Very Sad', 'icon_cry.gif', 15, 17, 30, 1),
(31, ':evil:', 'Evil or Very Mad', 'icon_evil.gif', 15, 17, 31, 1),
(32, ':twisted:', 'Twisted Evil', 'icon_twisted.gif', 15, 17, 32, 1),
(33, ':roll:', 'Rolling Eyes', 'icon_rolleyes.gif', 15, 17, 33, 1),
(34, ':!:', 'Exclamation', 'icon_exclaim.gif', 15, 17, 34, 1),
(35, ':?:', 'Question', 'icon_question.gif', 15, 17, 35, 1),
(36, ':idea:', 'Idea', 'icon_idea.gif', 15, 17, 36, 1),
(37, ':arrow:', 'Arrow', 'icon_arrow.gif', 15, 17, 37, 1),
(38, ':|', 'Neutral', 'icon_neutral.gif', 15, 17, 38, 1),
(39, ':-|', 'Neutral', 'icon_neutral.gif', 15, 17, 39, 1),
(40, ':mrgreen:', 'Mr. Green', 'icon_mrgreen.gif', 15, 17, 40, 1),
(41, ':geek:', 'Geek', 'icon_e_geek.gif', 17, 17, 41, 1),
(42, ':ugeek:', 'Uber Geek', 'icon_e_ugeek.gif', 17, 18, 42, 1);

-- --------------------------------------------------------

--
-- Table structure for table `phpbbstyles`
--

CREATE TABLE `phpbbstyles` (
  `style_id` mediumint(8) UNSIGNED NOT NULL,
  `style_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `style_copyright` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `style_active` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `style_path` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `bbcode_bitfield` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT 'kNg=',
  `style_parent_id` int(4) UNSIGNED NOT NULL DEFAULT '0',
  `style_parent_tree` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbbstyles`
--

INSERT INTO `phpbbstyles` (`style_id`, `style_name`, `style_copyright`, `style_active`, `style_path`, `bbcode_bitfield`, `style_parent_id`, `style_parent_tree`) VALUES
(1, 'prosilver', '&copy; phpBB Limited', 1, 'prosilver', '//g=', 0, ''),
(2, 'Simplicity', 'Created by Arty (Vjacheslav Trushkin), http://www.artodia.com/, Modified by Gabriel Fischer', 1, 'simplicity', '//g=', 1, 'prosilver');

-- --------------------------------------------------------

--
-- Table structure for table `phpbbteampage`
--

CREATE TABLE `phpbbteampage` (
  `teampage_id` mediumint(8) UNSIGNED NOT NULL,
  `group_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `teampage_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `teampage_position` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `teampage_parent` mediumint(8) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbbteampage`
--

INSERT INTO `phpbbteampage` (`teampage_id`, `group_id`, `teampage_name`, `teampage_position`, `teampage_parent`) VALUES
(1, 5, '', 1, 0),
(2, 4, '', 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `phpbbtopics`
--

CREATE TABLE `phpbbtopics` (
  `topic_id` int(10) UNSIGNED NOT NULL,
  `forum_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `icon_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `topic_attachment` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `topic_reported` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `topic_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `topic_poster` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `topic_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `topic_time_limit` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `topic_views` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `topic_status` tinyint(3) NOT NULL DEFAULT '0',
  `topic_type` tinyint(3) NOT NULL DEFAULT '0',
  `topic_first_post_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `topic_first_poster_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `topic_first_poster_colour` varchar(6) COLLATE utf8_bin NOT NULL DEFAULT '',
  `topic_last_post_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `topic_last_poster_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `topic_last_poster_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `topic_last_poster_colour` varchar(6) COLLATE utf8_bin NOT NULL DEFAULT '',
  `topic_last_post_subject` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `topic_last_post_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `topic_last_view_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `topic_moved_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `topic_bumped` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `topic_bumper` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `poll_title` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `poll_start` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `poll_length` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `poll_max_options` tinyint(4) NOT NULL DEFAULT '1',
  `poll_last_vote` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `poll_vote_change` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `topic_visibility` tinyint(3) NOT NULL DEFAULT '0',
  `topic_delete_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `topic_delete_reason` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `topic_delete_user` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `topic_posts_approved` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `topic_posts_unapproved` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `topic_posts_softdeleted` mediumint(8) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbbtopics`
--

INSERT INTO `phpbbtopics` (`topic_id`, `forum_id`, `icon_id`, `topic_attachment`, `topic_reported`, `topic_title`, `topic_poster`, `topic_time`, `topic_time_limit`, `topic_views`, `topic_status`, `topic_type`, `topic_first_post_id`, `topic_first_poster_name`, `topic_first_poster_colour`, `topic_last_post_id`, `topic_last_poster_id`, `topic_last_poster_name`, `topic_last_poster_colour`, `topic_last_post_subject`, `topic_last_post_time`, `topic_last_view_time`, `topic_moved_id`, `topic_bumped`, `topic_bumper`, `poll_title`, `poll_start`, `poll_length`, `poll_max_options`, `poll_last_vote`, `poll_vote_change`, `topic_visibility`, `topic_delete_time`, `topic_delete_reason`, `topic_delete_user`, `topic_posts_approved`, `topic_posts_unapproved`, `topic_posts_softdeleted`) VALUES
(1, 2, 0, 0, 0, 'Welcome to phpBB3', 2, 1591178503, 0, 0, 0, 0, 1, 'admin', 'AA0000', 1, 2, 'admin', 'AA0000', 'Welcome to phpBB3', 1591178503, 972086460, 0, 0, 0, '', 0, 0, 1, 0, 0, 1, 0, '', 0, 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `phpbbtopics_posted`
--

CREATE TABLE `phpbbtopics_posted` (
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `topic_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `topic_posted` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbbtopics_posted`
--

INSERT INTO `phpbbtopics_posted` (`user_id`, `topic_id`, `topic_posted`) VALUES
(2, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `phpbbtopics_track`
--

CREATE TABLE `phpbbtopics_track` (
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `topic_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `forum_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `mark_time` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `phpbbtopics_watch`
--

CREATE TABLE `phpbbtopics_watch` (
  `topic_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `notify_status` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `phpbbusers`
--

CREATE TABLE `phpbbusers` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `user_type` tinyint(2) NOT NULL DEFAULT '0',
  `group_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '3',
  `user_permissions` mediumtext COLLATE utf8_bin NOT NULL,
  `user_perm_from` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `user_ip` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_regdate` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `username` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `username_clean` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_password` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_passchg` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `user_email` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_birthday` varchar(10) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_lastvisit` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `user_lastmark` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `user_lastpost_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `user_lastpage` varchar(200) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_last_confirm_key` varchar(10) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_last_search` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `user_warnings` tinyint(4) NOT NULL DEFAULT '0',
  `user_last_warning` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `user_login_attempts` tinyint(4) NOT NULL DEFAULT '0',
  `user_inactive_reason` tinyint(2) NOT NULL DEFAULT '0',
  `user_inactive_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `user_posts` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `user_lang` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_timezone` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_dateformat` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT 'd M Y H:i',
  `user_style` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `user_rank` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `user_colour` varchar(6) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_new_privmsg` int(4) NOT NULL DEFAULT '0',
  `user_unread_privmsg` int(4) NOT NULL DEFAULT '0',
  `user_last_privmsg` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `user_message_rules` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `user_full_folder` int(11) NOT NULL DEFAULT '-3',
  `user_emailtime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `user_topic_show_days` smallint(4) UNSIGNED NOT NULL DEFAULT '0',
  `user_topic_sortby_type` varchar(1) COLLATE utf8_bin NOT NULL DEFAULT 't',
  `user_topic_sortby_dir` varchar(1) COLLATE utf8_bin NOT NULL DEFAULT 'd',
  `user_post_show_days` smallint(4) UNSIGNED NOT NULL DEFAULT '0',
  `user_post_sortby_type` varchar(1) COLLATE utf8_bin NOT NULL DEFAULT 't',
  `user_post_sortby_dir` varchar(1) COLLATE utf8_bin NOT NULL DEFAULT 'a',
  `user_notify` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `user_notify_pm` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `user_notify_type` tinyint(4) NOT NULL DEFAULT '0',
  `user_allow_pm` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `user_allow_viewonline` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `user_allow_viewemail` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `user_allow_massemail` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `user_options` int(11) UNSIGNED NOT NULL DEFAULT '230271',
  `user_avatar` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_avatar_type` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_avatar_width` smallint(4) UNSIGNED NOT NULL DEFAULT '0',
  `user_avatar_height` smallint(4) UNSIGNED NOT NULL DEFAULT '0',
  `user_sig` mediumtext COLLATE utf8_bin NOT NULL,
  `user_sig_bbcode_uid` varchar(8) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_sig_bbcode_bitfield` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_jabber` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_actkey` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `reset_token` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `reset_token_expiration` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `user_newpasswd` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_form_salt` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_new` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `user_reminded` tinyint(4) NOT NULL DEFAULT '0',
  `user_reminded_time` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbbusers`
--

INSERT INTO `phpbbusers` (`user_id`, `user_type`, `group_id`, `user_permissions`, `user_perm_from`, `user_ip`, `user_regdate`, `username`, `username_clean`, `user_password`, `user_passchg`, `user_email`, `user_birthday`, `user_lastvisit`, `user_lastmark`, `user_lastpost_time`, `user_lastpage`, `user_last_confirm_key`, `user_last_search`, `user_warnings`, `user_last_warning`, `user_login_attempts`, `user_inactive_reason`, `user_inactive_time`, `user_posts`, `user_lang`, `user_timezone`, `user_dateformat`, `user_style`, `user_rank`, `user_colour`, `user_new_privmsg`, `user_unread_privmsg`, `user_last_privmsg`, `user_message_rules`, `user_full_folder`, `user_emailtime`, `user_topic_show_days`, `user_topic_sortby_type`, `user_topic_sortby_dir`, `user_post_show_days`, `user_post_sortby_type`, `user_post_sortby_dir`, `user_notify`, `user_notify_pm`, `user_notify_type`, `user_allow_pm`, `user_allow_viewonline`, `user_allow_viewemail`, `user_allow_massemail`, `user_options`, `user_avatar`, `user_avatar_type`, `user_avatar_width`, `user_avatar_height`, `user_sig`, `user_sig_bbcode_uid`, `user_sig_bbcode_bitfield`, `user_jabber`, `user_actkey`, `reset_token`, `reset_token_expiration`, `user_newpasswd`, `user_form_salt`, `user_new`, `user_reminded`, `user_reminded_time`) VALUES
(1, 2, 1, '00000000000g13ydmo\nhwby9w000000\nhwby9w000000', 0, '', 1591178503, 'Anonymous', 'anonymous', '', 0, '', '', 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', '', 'd M Y H:i', 2, 0, '', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 0, '', '3zsdozg9aorgttnj', 1, 0, 0),
(2, 3, 5, 'zik0zjzik0zjzik0zi\nhwby9w000000\nzik0zjzih7uo', 0, '127.0.0.1', 1591178503, 'admin', 'admin', '$2y$10$o0fACqNWnOzysPE5.gOMZeetCAt3yJQcF.YsCKnmfbjYpsmMxSRhy', 0, 'antonbaliuk78@gmail.com', '', 1591178807, 0, 0, 'index.php', '', 0, 0, 0, 0, 0, 0, 1, 'en', 'Europe/Warsaw', 'D M d, Y g:i a', 2, 1, 'AA0000', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 1, 230271, '', '', 0, 0, '', '', '', '', '', '', 0, '', 'vb4jxi4aze1v4jq9', 1, 0, 0),
(3, 2, 6, '', 0, '', 1591178503, 'AdsBot [Google]', 'adsbot [google]', '', 1591178503, '', '', 0, 1591178503, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 0, '', 'jzej823fjxlfj4it', 0, 0, 0),
(4, 2, 6, '', 0, '', 1591178503, 'Alexa [Bot]', 'alexa [bot]', '', 1591178503, '', '', 0, 1591178503, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 0, '', 'h79vxm405bowi48z', 0, 0, 0),
(5, 2, 6, '', 0, '', 1591178503, 'Alta Vista [Bot]', 'alta vista [bot]', '', 1591178503, '', '', 0, 1591178503, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 0, '', '6fr91gyvq6v0ngah', 0, 0, 0),
(6, 2, 6, '', 0, '', 1591178504, 'Ask Jeeves [Bot]', 'ask jeeves [bot]', '', 1591178504, '', '', 0, 1591178504, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 0, '', 'xipo7z4dyd973fs6', 0, 0, 0),
(7, 2, 6, '', 0, '', 1591178504, 'Baidu [Spider]', 'baidu [spider]', '', 1591178504, '', '', 0, 1591178504, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 0, '', 'q2115v0mugz2up9b', 0, 0, 0),
(8, 2, 6, '', 0, '', 1591178504, 'Bing [Bot]', 'bing [bot]', '', 1591178504, '', '', 0, 1591178504, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 0, '', 'n6yqaw69qjvntl5y', 0, 0, 0),
(9, 2, 6, '', 0, '', 1591178504, 'Exabot [Bot]', 'exabot [bot]', '', 1591178504, '', '', 0, 1591178504, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 0, '', '460vw3cgeg7nh92y', 0, 0, 0),
(10, 2, 6, '', 0, '', 1591178504, 'FAST Enterprise [Crawler]', 'fast enterprise [crawler]', '', 1591178504, '', '', 0, 1591178504, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 0, '', 'ew9sj3r05c2gck7i', 0, 0, 0),
(11, 2, 6, '', 0, '', 1591178504, 'FAST WebCrawler [Crawler]', 'fast webcrawler [crawler]', '', 1591178504, '', '', 0, 1591178504, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 0, '', '7e1zvkokomab4dvj', 0, 0, 0),
(12, 2, 6, '', 0, '', 1591178504, 'Francis [Bot]', 'francis [bot]', '', 1591178504, '', '', 0, 1591178504, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 0, '', '7gc8vqmm1io6a1cx', 0, 0, 0),
(13, 2, 6, '', 0, '', 1591178504, 'Gigabot [Bot]', 'gigabot [bot]', '', 1591178504, '', '', 0, 1591178504, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 0, '', 'ly2d06u5t6rk39qp', 0, 0, 0),
(14, 2, 6, '', 0, '', 1591178504, 'Google Adsense [Bot]', 'google adsense [bot]', '', 1591178504, '', '', 0, 1591178504, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 0, '', '5j4mfv9fy7h3jbrl', 0, 0, 0),
(15, 2, 6, '', 0, '', 1591178504, 'Google Desktop', 'google desktop', '', 1591178504, '', '', 0, 1591178504, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 0, '', 'dgpmx8uh1e4z5mpo', 0, 0, 0),
(16, 2, 6, '', 0, '', 1591178504, 'Google Feedfetcher', 'google feedfetcher', '', 1591178504, '', '', 0, 1591178504, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 0, '', 'drnyr7dtd59qbudc', 0, 0, 0),
(17, 2, 6, '', 0, '', 1591178504, 'Google [Bot]', 'google [bot]', '', 1591178504, '', '', 0, 1591178504, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 0, '', 'q3em7zxmt3rftnnc', 0, 0, 0),
(18, 2, 6, '', 0, '', 1591178504, 'Heise IT-Markt [Crawler]', 'heise it-markt [crawler]', '', 1591178504, '', '', 0, 1591178504, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 0, '', 'h0bg9h6sow00w9fp', 0, 0, 0),
(19, 2, 6, '', 0, '', 1591178504, 'Heritrix [Crawler]', 'heritrix [crawler]', '', 1591178504, '', '', 0, 1591178504, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 0, '', '42y2luwa1m8w3n4n', 0, 0, 0),
(20, 2, 6, '', 0, '', 1591178504, 'IBM Research [Bot]', 'ibm research [bot]', '', 1591178504, '', '', 0, 1591178504, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 0, '', 'nxdqqrujr1dfkhbo', 0, 0, 0),
(21, 2, 6, '', 0, '', 1591178504, 'ICCrawler - ICjobs', 'iccrawler - icjobs', '', 1591178504, '', '', 0, 1591178504, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 0, '', 'elwt47dmfpau8k4a', 0, 0, 0),
(22, 2, 6, '', 0, '', 1591178504, 'ichiro [Crawler]', 'ichiro [crawler]', '', 1591178504, '', '', 0, 1591178504, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 0, '', 'o7hdf6eqwac3i7rw', 0, 0, 0),
(23, 2, 6, '', 0, '', 1591178504, 'Majestic-12 [Bot]', 'majestic-12 [bot]', '', 1591178504, '', '', 0, 1591178504, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 0, '', '76ny1p3e54hel2kx', 0, 0, 0),
(24, 2, 6, '', 0, '', 1591178504, 'Metager [Bot]', 'metager [bot]', '', 1591178504, '', '', 0, 1591178504, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 0, '', '8bbicvcynq565dbg', 0, 0, 0),
(25, 2, 6, '', 0, '', 1591178504, 'MSN NewsBlogs', 'msn newsblogs', '', 1591178504, '', '', 0, 1591178504, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 0, '', '6bv9r4s1e4uqf77f', 0, 0, 0),
(26, 2, 6, '', 0, '', 1591178504, 'MSN [Bot]', 'msn [bot]', '', 1591178504, '', '', 0, 1591178504, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 0, '', 'a40167y7o4bpqpoq', 0, 0, 0),
(27, 2, 6, '', 0, '', 1591178504, 'MSNbot Media', 'msnbot media', '', 1591178504, '', '', 0, 1591178504, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 0, '', 'rsvuq6ep7roslo77', 0, 0, 0),
(28, 2, 6, '', 0, '', 1591178504, 'Nutch [Bot]', 'nutch [bot]', '', 1591178504, '', '', 0, 1591178504, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 0, '', 'uzsx2vdnljy9ar36', 0, 0, 0),
(29, 2, 6, '', 0, '', 1591178504, 'Online link [Validator]', 'online link [validator]', '', 1591178504, '', '', 0, 1591178504, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 0, '', 'p91eum8titzrrw6b', 0, 0, 0),
(30, 2, 6, '', 0, '', 1591178504, 'psbot [Picsearch]', 'psbot [picsearch]', '', 1591178504, '', '', 0, 1591178504, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 0, '', '1n1jbrlx2w2t3kba', 0, 0, 0),
(31, 2, 6, '', 0, '', 1591178504, 'Sensis [Crawler]', 'sensis [crawler]', '', 1591178504, '', '', 0, 1591178504, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 0, '', 'zzxr9n7ga13kvo5u', 0, 0, 0),
(32, 2, 6, '', 0, '', 1591178504, 'SEO Crawler', 'seo crawler', '', 1591178504, '', '', 0, 1591178504, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 0, '', 'kmrygq7h1zgbpcfg', 0, 0, 0),
(33, 2, 6, '', 0, '', 1591178504, 'Seoma [Crawler]', 'seoma [crawler]', '', 1591178504, '', '', 0, 1591178504, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 0, '', 'ern93cqhcm4g1pvj', 0, 0, 0),
(34, 2, 6, '', 0, '', 1591178504, 'SEOSearch [Crawler]', 'seosearch [crawler]', '', 1591178504, '', '', 0, 1591178504, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 0, '', 'zags246kaogxztdl', 0, 0, 0),
(35, 2, 6, '', 0, '', 1591178504, 'Snappy [Bot]', 'snappy [bot]', '', 1591178504, '', '', 0, 1591178504, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 0, '', 'pi79o814g4kllqkl', 0, 0, 0),
(36, 2, 6, '', 0, '', 1591178504, 'Steeler [Crawler]', 'steeler [crawler]', '', 1591178504, '', '', 0, 1591178504, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 0, '', 'wq56jq42fg7i1dof', 0, 0, 0),
(37, 2, 6, '', 0, '', 1591178504, 'Telekom [Bot]', 'telekom [bot]', '', 1591178504, '', '', 0, 1591178504, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 0, '', '3p10gi8sablzu5wd', 0, 0, 0),
(38, 2, 6, '', 0, '', 1591178504, 'TurnitinBot [Bot]', 'turnitinbot [bot]', '', 1591178504, '', '', 0, 1591178504, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 0, '', 'dtfwkdr2sosrptol', 0, 0, 0),
(39, 2, 6, '', 0, '', 1591178504, 'Voyager [Bot]', 'voyager [bot]', '', 1591178504, '', '', 0, 1591178504, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 0, '', 'q81t54gfr9esqg5j', 0, 0, 0),
(40, 2, 6, '', 0, '', 1591178505, 'W3 [Sitesearch]', 'w3 [sitesearch]', '', 1591178505, '', '', 0, 1591178505, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 0, '', 'khpcz6n55igk52i6', 0, 0, 0),
(41, 2, 6, '', 0, '', 1591178505, 'W3C [Linkcheck]', 'w3c [linkcheck]', '', 1591178505, '', '', 0, 1591178505, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 0, '', 'tqqqi6d5luh1oq9k', 0, 0, 0),
(42, 2, 6, '', 0, '', 1591178505, 'W3C [Validator]', 'w3c [validator]', '', 1591178505, '', '', 0, 1591178505, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 0, '', 't1un2qknhca2jhsz', 0, 0, 0),
(43, 2, 6, '', 0, '', 1591178505, 'YaCy [Bot]', 'yacy [bot]', '', 1591178505, '', '', 0, 1591178505, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 0, '', 'zb6o6434efzwioi7', 0, 0, 0),
(44, 2, 6, '', 0, '', 1591178505, 'Yahoo MMCrawler [Bot]', 'yahoo mmcrawler [bot]', '', 1591178505, '', '', 0, 1591178505, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 0, '', 'mofx0w5rid4bszxb', 0, 0, 0),
(45, 2, 6, '', 0, '', 1591178505, 'Yahoo Slurp [Bot]', 'yahoo slurp [bot]', '', 1591178505, '', '', 0, 1591178505, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 0, '', '2h02m4tcq01cxkwh', 0, 0, 0),
(46, 2, 6, '', 0, '', 1591178505, 'Yahoo [Bot]', 'yahoo [bot]', '', 1591178505, '', '', 0, 1591178505, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 0, '', 'p7s5015lw1pmm7su', 0, 0, 0),
(47, 2, 6, '', 0, '', 1591178505, 'YahooSeeker [Bot]', 'yahooseeker [bot]', '', 1591178505, '', '', 0, 1591178505, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 0, '', '6octrdrmuneybytr', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `phpbbuser_group`
--

CREATE TABLE `phpbbuser_group` (
  `group_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `group_leader` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `user_pending` tinyint(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbbuser_group`
--

INSERT INTO `phpbbuser_group` (`group_id`, `user_id`, `group_leader`, `user_pending`) VALUES
(1, 1, 0, 0),
(2, 2, 0, 0),
(4, 2, 0, 0),
(5, 2, 1, 0),
(6, 3, 0, 0),
(6, 4, 0, 0),
(6, 5, 0, 0),
(6, 6, 0, 0),
(6, 7, 0, 0),
(6, 8, 0, 0),
(6, 9, 0, 0),
(6, 10, 0, 0),
(6, 11, 0, 0),
(6, 12, 0, 0),
(6, 13, 0, 0),
(6, 14, 0, 0),
(6, 15, 0, 0),
(6, 16, 0, 0),
(6, 17, 0, 0),
(6, 18, 0, 0),
(6, 19, 0, 0),
(6, 20, 0, 0),
(6, 21, 0, 0),
(6, 22, 0, 0),
(6, 23, 0, 0),
(6, 24, 0, 0),
(6, 25, 0, 0),
(6, 26, 0, 0),
(6, 27, 0, 0),
(6, 28, 0, 0),
(6, 29, 0, 0),
(6, 30, 0, 0),
(6, 31, 0, 0),
(6, 32, 0, 0),
(6, 33, 0, 0),
(6, 34, 0, 0),
(6, 35, 0, 0),
(6, 36, 0, 0),
(6, 37, 0, 0),
(6, 38, 0, 0),
(6, 39, 0, 0),
(6, 40, 0, 0),
(6, 41, 0, 0),
(6, 42, 0, 0),
(6, 43, 0, 0),
(6, 44, 0, 0),
(6, 45, 0, 0),
(6, 46, 0, 0),
(6, 47, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `phpbbuser_notifications`
--

CREATE TABLE `phpbbuser_notifications` (
  `item_type` varchar(165) COLLATE utf8_bin NOT NULL DEFAULT '',
  `item_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `method` varchar(165) COLLATE utf8_bin NOT NULL DEFAULT '',
  `notify` tinyint(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbbuser_notifications`
--

INSERT INTO `phpbbuser_notifications` (`item_type`, `item_id`, `user_id`, `method`, `notify`) VALUES
('notification.type.post', 0, 2, 'notification.method.board', 1),
('notification.type.post', 0, 2, 'notification.method.email', 1),
('notification.type.post', 0, 3, 'notification.method.email', 1),
('notification.type.post', 0, 4, 'notification.method.email', 1),
('notification.type.post', 0, 5, 'notification.method.email', 1),
('notification.type.post', 0, 6, 'notification.method.email', 1),
('notification.type.post', 0, 7, 'notification.method.email', 1),
('notification.type.post', 0, 8, 'notification.method.email', 1),
('notification.type.post', 0, 9, 'notification.method.email', 1),
('notification.type.post', 0, 10, 'notification.method.email', 1),
('notification.type.post', 0, 11, 'notification.method.email', 1),
('notification.type.post', 0, 12, 'notification.method.email', 1),
('notification.type.post', 0, 13, 'notification.method.email', 1),
('notification.type.post', 0, 14, 'notification.method.email', 1),
('notification.type.post', 0, 15, 'notification.method.email', 1),
('notification.type.post', 0, 16, 'notification.method.email', 1),
('notification.type.post', 0, 17, 'notification.method.email', 1),
('notification.type.post', 0, 18, 'notification.method.email', 1),
('notification.type.post', 0, 19, 'notification.method.email', 1),
('notification.type.post', 0, 20, 'notification.method.email', 1),
('notification.type.post', 0, 21, 'notification.method.email', 1),
('notification.type.post', 0, 22, 'notification.method.email', 1),
('notification.type.post', 0, 23, 'notification.method.email', 1),
('notification.type.post', 0, 24, 'notification.method.email', 1),
('notification.type.post', 0, 25, 'notification.method.email', 1),
('notification.type.post', 0, 26, 'notification.method.email', 1),
('notification.type.post', 0, 27, 'notification.method.email', 1),
('notification.type.post', 0, 28, 'notification.method.email', 1),
('notification.type.post', 0, 29, 'notification.method.email', 1),
('notification.type.post', 0, 30, 'notification.method.email', 1),
('notification.type.post', 0, 31, 'notification.method.email', 1),
('notification.type.post', 0, 32, 'notification.method.email', 1),
('notification.type.post', 0, 33, 'notification.method.email', 1),
('notification.type.post', 0, 34, 'notification.method.email', 1),
('notification.type.post', 0, 35, 'notification.method.email', 1),
('notification.type.post', 0, 36, 'notification.method.email', 1),
('notification.type.post', 0, 37, 'notification.method.email', 1),
('notification.type.post', 0, 38, 'notification.method.email', 1),
('notification.type.post', 0, 39, 'notification.method.email', 1),
('notification.type.post', 0, 40, 'notification.method.email', 1),
('notification.type.post', 0, 41, 'notification.method.email', 1),
('notification.type.post', 0, 42, 'notification.method.email', 1),
('notification.type.post', 0, 43, 'notification.method.email', 1),
('notification.type.post', 0, 44, 'notification.method.email', 1),
('notification.type.post', 0, 45, 'notification.method.email', 1),
('notification.type.post', 0, 46, 'notification.method.email', 1),
('notification.type.post', 0, 47, 'notification.method.email', 1),
('notification.type.topic', 0, 2, 'notification.method.board', 1),
('notification.type.topic', 0, 2, 'notification.method.email', 1),
('notification.type.topic', 0, 3, 'notification.method.email', 1),
('notification.type.topic', 0, 4, 'notification.method.email', 1),
('notification.type.topic', 0, 5, 'notification.method.email', 1),
('notification.type.topic', 0, 6, 'notification.method.email', 1),
('notification.type.topic', 0, 7, 'notification.method.email', 1),
('notification.type.topic', 0, 8, 'notification.method.email', 1),
('notification.type.topic', 0, 9, 'notification.method.email', 1),
('notification.type.topic', 0, 10, 'notification.method.email', 1),
('notification.type.topic', 0, 11, 'notification.method.email', 1),
('notification.type.topic', 0, 12, 'notification.method.email', 1),
('notification.type.topic', 0, 13, 'notification.method.email', 1),
('notification.type.topic', 0, 14, 'notification.method.email', 1),
('notification.type.topic', 0, 15, 'notification.method.email', 1),
('notification.type.topic', 0, 16, 'notification.method.email', 1),
('notification.type.topic', 0, 17, 'notification.method.email', 1),
('notification.type.topic', 0, 18, 'notification.method.email', 1),
('notification.type.topic', 0, 19, 'notification.method.email', 1),
('notification.type.topic', 0, 20, 'notification.method.email', 1),
('notification.type.topic', 0, 21, 'notification.method.email', 1),
('notification.type.topic', 0, 22, 'notification.method.email', 1),
('notification.type.topic', 0, 23, 'notification.method.email', 1),
('notification.type.topic', 0, 24, 'notification.method.email', 1),
('notification.type.topic', 0, 25, 'notification.method.email', 1),
('notification.type.topic', 0, 26, 'notification.method.email', 1),
('notification.type.topic', 0, 27, 'notification.method.email', 1),
('notification.type.topic', 0, 28, 'notification.method.email', 1),
('notification.type.topic', 0, 29, 'notification.method.email', 1),
('notification.type.topic', 0, 30, 'notification.method.email', 1),
('notification.type.topic', 0, 31, 'notification.method.email', 1),
('notification.type.topic', 0, 32, 'notification.method.email', 1),
('notification.type.topic', 0, 33, 'notification.method.email', 1),
('notification.type.topic', 0, 34, 'notification.method.email', 1),
('notification.type.topic', 0, 35, 'notification.method.email', 1),
('notification.type.topic', 0, 36, 'notification.method.email', 1),
('notification.type.topic', 0, 37, 'notification.method.email', 1),
('notification.type.topic', 0, 38, 'notification.method.email', 1),
('notification.type.topic', 0, 39, 'notification.method.email', 1),
('notification.type.topic', 0, 40, 'notification.method.email', 1),
('notification.type.topic', 0, 41, 'notification.method.email', 1),
('notification.type.topic', 0, 42, 'notification.method.email', 1),
('notification.type.topic', 0, 43, 'notification.method.email', 1),
('notification.type.topic', 0, 44, 'notification.method.email', 1),
('notification.type.topic', 0, 45, 'notification.method.email', 1),
('notification.type.topic', 0, 46, 'notification.method.email', 1),
('notification.type.topic', 0, 47, 'notification.method.email', 1);

-- --------------------------------------------------------

--
-- Table structure for table `phpbbwarnings`
--

CREATE TABLE `phpbbwarnings` (
  `warning_id` mediumint(8) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `post_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `log_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `warning_time` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `phpbbwords`
--

CREATE TABLE `phpbbwords` (
  `word_id` int(10) UNSIGNED NOT NULL,
  `word` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `replacement` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `phpbbzebra`
--

CREATE TABLE `phpbbzebra` (
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `zebra_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `friend` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `foe` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_acl_groups`
--

CREATE TABLE `phpbb_acl_groups` (
  `group_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `forum_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `auth_option_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `auth_role_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `auth_setting` tinyint(2) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbb_acl_groups`
--

INSERT INTO `phpbb_acl_groups` (`group_id`, `forum_id`, `auth_option_id`, `auth_role_id`, `auth_setting`) VALUES
(1, 0, 91, 0, 1),
(1, 0, 100, 0, 1),
(1, 0, 119, 0, 1),
(5, 0, 0, 5, 0),
(5, 0, 0, 1, 0),
(2, 0, 0, 6, 0),
(3, 0, 0, 6, 0),
(4, 0, 0, 5, 0),
(4, 0, 0, 10, 0),
(1, 1, 0, 17, 0),
(2, 1, 0, 17, 0),
(3, 1, 0, 17, 0),
(6, 1, 0, 17, 0),
(7, 0, 0, 23, 0),
(1, 2, 0, 17, 0),
(2, 2, 0, 17, 0),
(3, 2, 0, 17, 0),
(6, 2, 0, 17, 0);

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_acl_options`
--

CREATE TABLE `phpbb_acl_options` (
  `auth_option_id` mediumint(8) UNSIGNED NOT NULL,
  `auth_option` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT '',
  `is_global` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `is_local` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `founder_only` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbb_acl_options`
--

INSERT INTO `phpbb_acl_options` (`auth_option_id`, `auth_option`, `is_global`, `is_local`, `founder_only`) VALUES
(1, 'f_', 0, 1, 0),
(2, 'f_announce', 0, 1, 0),
(3, 'f_announce_global', 0, 1, 0),
(4, 'f_attach', 0, 1, 0),
(5, 'f_bbcode', 0, 1, 0),
(6, 'f_bump', 0, 1, 0),
(7, 'f_delete', 0, 1, 0),
(8, 'f_download', 0, 1, 0),
(9, 'f_edit', 0, 1, 0),
(10, 'f_email', 0, 1, 0),
(11, 'f_flash', 0, 1, 0),
(12, 'f_icons', 0, 1, 0),
(13, 'f_ignoreflood', 0, 1, 0),
(14, 'f_img', 0, 1, 0),
(15, 'f_list', 0, 1, 0),
(16, 'f_list_topics', 0, 1, 0),
(17, 'f_noapprove', 0, 1, 0),
(18, 'f_poll', 0, 1, 0),
(19, 'f_post', 0, 1, 0),
(20, 'f_postcount', 0, 1, 0),
(21, 'f_print', 0, 1, 0),
(22, 'f_read', 0, 1, 0),
(23, 'f_reply', 0, 1, 0),
(24, 'f_report', 0, 1, 0),
(25, 'f_search', 0, 1, 0),
(26, 'f_sigs', 0, 1, 0),
(27, 'f_smilies', 0, 1, 0),
(28, 'f_sticky', 0, 1, 0),
(29, 'f_subscribe', 0, 1, 0),
(30, 'f_user_lock', 0, 1, 0),
(31, 'f_vote', 0, 1, 0),
(32, 'f_votechg', 0, 1, 0),
(33, 'f_softdelete', 0, 1, 0),
(34, 'm_', 1, 1, 0),
(35, 'm_approve', 1, 1, 0),
(36, 'm_chgposter', 1, 1, 0),
(37, 'm_delete', 1, 1, 0),
(38, 'm_edit', 1, 1, 0),
(39, 'm_info', 1, 1, 0),
(40, 'm_lock', 1, 1, 0),
(41, 'm_merge', 1, 1, 0),
(42, 'm_move', 1, 1, 0),
(43, 'm_report', 1, 1, 0),
(44, 'm_split', 1, 1, 0),
(45, 'm_softdelete', 1, 1, 0),
(46, 'm_ban', 1, 0, 0),
(47, 'm_pm_report', 1, 0, 0),
(48, 'm_warn', 1, 0, 0),
(49, 'a_', 1, 0, 0),
(50, 'a_aauth', 1, 0, 0),
(51, 'a_attach', 1, 0, 0),
(52, 'a_authgroups', 1, 0, 0),
(53, 'a_authusers', 1, 0, 0),
(54, 'a_backup', 1, 0, 0),
(55, 'a_ban', 1, 0, 0),
(56, 'a_bbcode', 1, 0, 0),
(57, 'a_board', 1, 0, 0),
(58, 'a_bots', 1, 0, 0),
(59, 'a_clearlogs', 1, 0, 0),
(60, 'a_email', 1, 0, 0),
(61, 'a_extensions', 1, 0, 0),
(62, 'a_fauth', 1, 0, 0),
(63, 'a_forum', 1, 0, 0),
(64, 'a_forumadd', 1, 0, 0),
(65, 'a_forumdel', 1, 0, 0),
(66, 'a_group', 1, 0, 0),
(67, 'a_groupadd', 1, 0, 0),
(68, 'a_groupdel', 1, 0, 0),
(69, 'a_icons', 1, 0, 0),
(70, 'a_jabber', 1, 0, 0),
(71, 'a_language', 1, 0, 0),
(72, 'a_mauth', 1, 0, 0),
(73, 'a_modules', 1, 0, 0),
(74, 'a_names', 1, 0, 0),
(75, 'a_phpinfo', 1, 0, 0),
(76, 'a_profile', 1, 0, 0),
(77, 'a_prune', 1, 0, 0),
(78, 'a_ranks', 1, 0, 0),
(79, 'a_reasons', 1, 0, 0),
(80, 'a_roles', 1, 0, 0),
(81, 'a_search', 1, 0, 0),
(82, 'a_server', 1, 0, 0),
(83, 'a_styles', 1, 0, 0),
(84, 'a_switchperm', 1, 0, 0),
(85, 'a_uauth', 1, 0, 0),
(86, 'a_user', 1, 0, 0),
(87, 'a_userdel', 1, 0, 0),
(88, 'a_viewauth', 1, 0, 0),
(89, 'a_viewlogs', 1, 0, 0),
(90, 'a_words', 1, 0, 0),
(91, 'u_', 1, 0, 0),
(92, 'u_attach', 1, 0, 0),
(93, 'u_chgavatar', 1, 0, 0),
(94, 'u_chgcensors', 1, 0, 0),
(95, 'u_chgemail', 1, 0, 0),
(96, 'u_chggrp', 1, 0, 0),
(97, 'u_chgname', 1, 0, 0),
(98, 'u_chgpasswd', 1, 0, 0),
(99, 'u_chgprofileinfo', 1, 0, 0),
(100, 'u_download', 1, 0, 0),
(101, 'u_emoji', 1, 0, 0),
(102, 'u_hideonline', 1, 0, 0),
(103, 'u_ignoreflood', 1, 0, 0),
(104, 'u_masspm', 1, 0, 0),
(105, 'u_masspm_group', 1, 0, 0),
(106, 'u_pm_attach', 1, 0, 0),
(107, 'u_pm_bbcode', 1, 0, 0),
(108, 'u_pm_delete', 1, 0, 0),
(109, 'u_pm_download', 1, 0, 0),
(110, 'u_pm_edit', 1, 0, 0),
(111, 'u_pm_emailpm', 1, 0, 0),
(112, 'u_pm_flash', 1, 0, 0),
(113, 'u_pm_forward', 1, 0, 0),
(114, 'u_pm_img', 1, 0, 0),
(115, 'u_pm_printpm', 1, 0, 0),
(116, 'u_pm_smilies', 1, 0, 0),
(117, 'u_readpm', 1, 0, 0),
(118, 'u_savedrafts', 1, 0, 0),
(119, 'u_search', 1, 0, 0),
(120, 'u_sendemail', 1, 0, 0),
(121, 'u_sendim', 1, 0, 0),
(122, 'u_sendpm', 1, 0, 0),
(123, 'u_sig', 1, 0, 0),
(124, 'u_viewonline', 1, 0, 0),
(125, 'u_viewprofile', 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_acl_roles`
--

CREATE TABLE `phpbb_acl_roles` (
  `role_id` mediumint(8) UNSIGNED NOT NULL,
  `role_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `role_description` text COLLATE utf8_bin NOT NULL,
  `role_type` varchar(10) COLLATE utf8_bin NOT NULL DEFAULT '',
  `role_order` smallint(4) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbb_acl_roles`
--

INSERT INTO `phpbb_acl_roles` (`role_id`, `role_name`, `role_description`, `role_type`, `role_order`) VALUES
(1, 'ROLE_ADMIN_STANDARD', 'ROLE_DESCRIPTION_ADMIN_STANDARD', 'a_', 1),
(2, 'ROLE_ADMIN_FORUM', 'ROLE_DESCRIPTION_ADMIN_FORUM', 'a_', 3),
(3, 'ROLE_ADMIN_USERGROUP', 'ROLE_DESCRIPTION_ADMIN_USERGROUP', 'a_', 4),
(4, 'ROLE_ADMIN_FULL', 'ROLE_DESCRIPTION_ADMIN_FULL', 'a_', 2),
(5, 'ROLE_USER_FULL', 'ROLE_DESCRIPTION_USER_FULL', 'u_', 3),
(6, 'ROLE_USER_STANDARD', 'ROLE_DESCRIPTION_USER_STANDARD', 'u_', 1),
(7, 'ROLE_USER_LIMITED', 'ROLE_DESCRIPTION_USER_LIMITED', 'u_', 2),
(8, 'ROLE_USER_NOPM', 'ROLE_DESCRIPTION_USER_NOPM', 'u_', 4),
(9, 'ROLE_USER_NOAVATAR', 'ROLE_DESCRIPTION_USER_NOAVATAR', 'u_', 5),
(10, 'ROLE_MOD_FULL', 'ROLE_DESCRIPTION_MOD_FULL', 'm_', 3),
(11, 'ROLE_MOD_STANDARD', 'ROLE_DESCRIPTION_MOD_STANDARD', 'm_', 1),
(12, 'ROLE_MOD_SIMPLE', 'ROLE_DESCRIPTION_MOD_SIMPLE', 'm_', 2),
(13, 'ROLE_MOD_QUEUE', 'ROLE_DESCRIPTION_MOD_QUEUE', 'm_', 4),
(14, 'ROLE_FORUM_FULL', 'ROLE_DESCRIPTION_FORUM_FULL', 'f_', 7),
(15, 'ROLE_FORUM_STANDARD', 'ROLE_DESCRIPTION_FORUM_STANDARD', 'f_', 5),
(16, 'ROLE_FORUM_NOACCESS', 'ROLE_DESCRIPTION_FORUM_NOACCESS', 'f_', 1),
(17, 'ROLE_FORUM_READONLY', 'ROLE_DESCRIPTION_FORUM_READONLY', 'f_', 2),
(18, 'ROLE_FORUM_LIMITED', 'ROLE_DESCRIPTION_FORUM_LIMITED', 'f_', 3),
(19, 'ROLE_FORUM_BOT', 'ROLE_DESCRIPTION_FORUM_BOT', 'f_', 9),
(20, 'ROLE_FORUM_ONQUEUE', 'ROLE_DESCRIPTION_FORUM_ONQUEUE', 'f_', 8),
(21, 'ROLE_FORUM_POLLS', 'ROLE_DESCRIPTION_FORUM_POLLS', 'f_', 6),
(22, 'ROLE_FORUM_LIMITED_POLLS', 'ROLE_DESCRIPTION_FORUM_LIMITED_POLLS', 'f_', 4),
(23, 'ROLE_USER_NEW_MEMBER', 'ROLE_DESCRIPTION_USER_NEW_MEMBER', 'u_', 6),
(24, 'ROLE_FORUM_NEW_MEMBER', 'ROLE_DESCRIPTION_FORUM_NEW_MEMBER', 'f_', 10);

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_acl_roles_data`
--

CREATE TABLE `phpbb_acl_roles_data` (
  `role_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `auth_option_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `auth_setting` tinyint(2) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbb_acl_roles_data`
--

INSERT INTO `phpbb_acl_roles_data` (`role_id`, `auth_option_id`, `auth_setting`) VALUES
(1, 49, 1),
(1, 51, 1),
(1, 52, 1),
(1, 53, 1),
(1, 55, 1),
(1, 56, 1),
(1, 57, 1),
(1, 61, 1),
(1, 62, 1),
(1, 63, 1),
(1, 64, 1),
(1, 65, 1),
(1, 66, 1),
(1, 67, 1),
(1, 68, 1),
(1, 69, 1),
(1, 72, 1),
(1, 74, 1),
(1, 76, 1),
(1, 77, 1),
(1, 78, 1),
(1, 79, 1),
(1, 85, 1),
(1, 86, 1),
(1, 87, 1),
(1, 88, 1),
(1, 89, 1),
(1, 90, 1),
(2, 49, 1),
(2, 52, 1),
(2, 53, 1),
(2, 62, 1),
(2, 63, 1),
(2, 64, 1),
(2, 65, 1),
(2, 72, 1),
(2, 77, 1),
(2, 85, 1),
(2, 88, 1),
(2, 89, 1),
(3, 49, 1),
(3, 52, 1),
(3, 53, 1),
(3, 55, 1),
(3, 66, 1),
(3, 67, 1),
(3, 68, 1),
(3, 78, 1),
(3, 85, 1),
(3, 86, 1),
(3, 88, 1),
(3, 89, 1),
(4, 49, 1),
(4, 50, 1),
(4, 51, 1),
(4, 52, 1),
(4, 53, 1),
(4, 54, 1),
(4, 55, 1),
(4, 56, 1),
(4, 57, 1),
(4, 58, 1),
(4, 59, 1),
(4, 60, 1),
(4, 61, 1),
(4, 62, 1),
(4, 63, 1),
(4, 64, 1),
(4, 65, 1),
(4, 66, 1),
(4, 67, 1),
(4, 68, 1),
(4, 69, 1),
(4, 70, 1),
(4, 71, 1),
(4, 72, 1),
(4, 73, 1),
(4, 74, 1),
(4, 75, 1),
(4, 76, 1),
(4, 77, 1),
(4, 78, 1),
(4, 79, 1),
(4, 80, 1),
(4, 81, 1),
(4, 82, 1),
(4, 83, 1),
(4, 84, 1),
(4, 85, 1),
(4, 86, 1),
(4, 87, 1),
(4, 88, 1),
(4, 89, 1),
(4, 90, 1),
(5, 91, 1),
(5, 92, 1),
(5, 93, 1),
(5, 94, 1),
(5, 95, 1),
(5, 96, 1),
(5, 97, 1),
(5, 98, 1),
(5, 99, 1),
(5, 100, 1),
(5, 101, 1),
(5, 102, 1),
(5, 103, 1),
(5, 104, 1),
(5, 105, 1),
(5, 106, 1),
(5, 107, 1),
(5, 108, 1),
(5, 109, 1),
(5, 110, 1),
(5, 111, 1),
(5, 112, 1),
(5, 113, 1),
(5, 114, 1),
(5, 115, 1),
(5, 116, 1),
(5, 117, 1),
(5, 118, 1),
(5, 119, 1),
(5, 120, 1),
(5, 121, 1),
(5, 122, 1),
(5, 123, 1),
(5, 124, 1),
(5, 125, 1),
(6, 91, 1),
(6, 92, 1),
(6, 93, 1),
(6, 94, 1),
(6, 95, 1),
(6, 98, 1),
(6, 99, 1),
(6, 100, 1),
(6, 101, 1),
(6, 102, 1),
(6, 104, 1),
(6, 105, 1),
(6, 106, 1),
(6, 107, 1),
(6, 108, 1),
(6, 109, 1),
(6, 110, 1),
(6, 111, 1),
(6, 114, 1),
(6, 115, 1),
(6, 116, 1),
(6, 117, 1),
(6, 118, 1),
(6, 119, 1),
(6, 120, 1),
(6, 121, 1),
(6, 122, 1),
(6, 123, 1),
(6, 125, 1),
(7, 91, 1),
(7, 93, 1),
(7, 94, 1),
(7, 95, 1),
(7, 98, 1),
(7, 99, 1),
(7, 100, 1),
(7, 101, 1),
(7, 102, 1),
(7, 107, 1),
(7, 108, 1),
(7, 109, 1),
(7, 110, 1),
(7, 113, 1),
(7, 114, 1),
(7, 115, 1),
(7, 116, 1),
(7, 117, 1),
(7, 122, 1),
(7, 123, 1),
(7, 125, 1),
(8, 91, 1),
(8, 93, 1),
(8, 94, 1),
(8, 95, 1),
(8, 98, 1),
(8, 100, 1),
(8, 102, 1),
(8, 104, 0),
(8, 105, 0),
(8, 117, 0),
(8, 122, 0),
(8, 123, 1),
(8, 125, 1),
(9, 91, 1),
(9, 93, 0),
(9, 94, 1),
(9, 95, 1),
(9, 98, 1),
(9, 99, 1),
(9, 100, 1),
(9, 101, 1),
(9, 102, 1),
(9, 107, 1),
(9, 108, 1),
(9, 109, 1),
(9, 110, 1),
(9, 113, 1),
(9, 114, 1),
(9, 115, 1),
(9, 116, 1),
(9, 117, 1),
(9, 122, 1),
(9, 123, 1),
(9, 125, 1),
(10, 34, 1),
(10, 35, 1),
(10, 36, 1),
(10, 37, 1),
(10, 38, 1),
(10, 39, 1),
(10, 40, 1),
(10, 41, 1),
(10, 42, 1),
(10, 43, 1),
(10, 44, 1),
(10, 45, 1),
(10, 46, 1),
(10, 47, 1),
(10, 48, 1),
(11, 34, 1),
(11, 35, 1),
(11, 37, 1),
(11, 38, 1),
(11, 39, 1),
(11, 40, 1),
(11, 41, 1),
(11, 42, 1),
(11, 43, 1),
(11, 44, 1),
(11, 45, 1),
(11, 47, 1),
(11, 48, 1),
(12, 34, 1),
(12, 37, 1),
(12, 38, 1),
(12, 39, 1),
(12, 43, 1),
(12, 45, 1),
(12, 47, 1),
(13, 34, 1),
(13, 35, 1),
(13, 38, 1),
(14, 1, 1),
(14, 2, 1),
(14, 3, 1),
(14, 4, 1),
(14, 5, 1),
(14, 6, 1),
(14, 7, 1),
(14, 8, 1),
(14, 9, 1),
(14, 10, 1),
(14, 11, 1),
(14, 12, 1),
(14, 13, 1),
(14, 14, 1),
(14, 15, 1),
(14, 16, 1),
(14, 17, 1),
(14, 18, 1),
(14, 19, 1),
(14, 20, 1),
(14, 21, 1),
(14, 22, 1),
(14, 23, 1),
(14, 24, 1),
(14, 25, 1),
(14, 26, 1),
(14, 27, 1),
(14, 28, 1),
(14, 29, 1),
(14, 30, 1),
(14, 31, 1),
(14, 32, 1),
(14, 33, 1),
(15, 1, 1),
(15, 4, 1),
(15, 5, 1),
(15, 6, 1),
(15, 7, 1),
(15, 8, 1),
(15, 9, 1),
(15, 10, 1),
(15, 12, 1),
(15, 14, 1),
(15, 15, 1),
(15, 16, 1),
(15, 17, 1),
(15, 19, 1),
(15, 20, 1),
(15, 21, 1),
(15, 22, 1),
(15, 23, 1),
(15, 24, 1),
(15, 25, 1),
(15, 26, 1),
(15, 27, 1),
(15, 29, 1),
(15, 31, 1),
(15, 32, 1),
(15, 33, 1),
(16, 1, 0),
(17, 1, 1),
(17, 8, 1),
(17, 15, 1),
(17, 16, 1),
(17, 21, 1),
(17, 22, 1),
(17, 25, 1),
(17, 29, 1),
(18, 1, 1),
(18, 5, 1),
(18, 8, 1),
(18, 9, 1),
(18, 10, 1),
(18, 14, 1),
(18, 15, 1),
(18, 16, 1),
(18, 17, 1),
(18, 19, 1),
(18, 20, 1),
(18, 21, 1),
(18, 22, 1),
(18, 23, 1),
(18, 24, 1),
(18, 25, 1),
(18, 26, 1),
(18, 27, 1),
(18, 29, 1),
(18, 31, 1),
(18, 33, 1),
(19, 1, 1),
(19, 8, 1),
(19, 15, 1),
(19, 16, 1),
(19, 21, 1),
(19, 22, 1),
(20, 1, 1),
(20, 4, 1),
(20, 5, 1),
(20, 8, 1),
(20, 9, 1),
(20, 10, 1),
(20, 14, 1),
(20, 15, 1),
(20, 16, 1),
(20, 17, 0),
(20, 19, 1),
(20, 20, 1),
(20, 21, 1),
(20, 22, 1),
(20, 23, 1),
(20, 24, 1),
(20, 25, 1),
(20, 26, 1),
(20, 27, 1),
(20, 29, 1),
(20, 31, 1),
(20, 33, 1),
(21, 1, 1),
(21, 4, 1),
(21, 5, 1),
(21, 6, 1),
(21, 7, 1),
(21, 8, 1),
(21, 9, 1),
(21, 10, 1),
(21, 12, 1),
(21, 14, 1),
(21, 15, 1),
(21, 16, 1),
(21, 17, 1),
(21, 18, 1),
(21, 19, 1),
(21, 20, 1),
(21, 21, 1),
(21, 22, 1),
(21, 23, 1),
(21, 24, 1),
(21, 25, 1),
(21, 26, 1),
(21, 27, 1),
(21, 29, 1),
(21, 31, 1),
(21, 32, 1),
(21, 33, 1),
(22, 1, 1),
(22, 5, 1),
(22, 8, 1),
(22, 9, 1),
(22, 10, 1),
(22, 14, 1),
(22, 15, 1),
(22, 16, 1),
(22, 17, 1),
(22, 18, 1),
(22, 19, 1),
(22, 20, 1),
(22, 21, 1),
(22, 22, 1),
(22, 23, 1),
(22, 24, 1),
(22, 25, 1),
(22, 26, 1),
(22, 27, 1),
(22, 29, 1),
(22, 31, 1),
(22, 33, 1),
(23, 99, 0),
(23, 104, 0),
(23, 105, 0),
(23, 122, 0),
(24, 17, 0);

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_acl_users`
--

CREATE TABLE `phpbb_acl_users` (
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `forum_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `auth_option_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `auth_role_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `auth_setting` tinyint(2) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbb_acl_users`
--

INSERT INTO `phpbb_acl_users` (`user_id`, `forum_id`, `auth_option_id`, `auth_role_id`, `auth_setting`) VALUES
(2, 0, 0, 5, 0);

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_attachments`
--

CREATE TABLE `phpbb_attachments` (
  `attach_id` int(10) UNSIGNED NOT NULL,
  `post_msg_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `topic_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `in_message` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `poster_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `is_orphan` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `physical_filename` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `real_filename` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `download_count` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `attach_comment` text COLLATE utf8_bin NOT NULL,
  `extension` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `mimetype` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `filesize` int(20) UNSIGNED NOT NULL DEFAULT '0',
  `filetime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `thumbnail` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_banlist`
--

CREATE TABLE `phpbb_banlist` (
  `ban_id` int(10) UNSIGNED NOT NULL,
  `ban_userid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `ban_ip` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `ban_email` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `ban_start` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `ban_end` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `ban_exclude` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `ban_reason` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `ban_give_reason` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_bbcodes`
--

CREATE TABLE `phpbb_bbcodes` (
  `bbcode_id` smallint(4) UNSIGNED NOT NULL DEFAULT '0',
  `bbcode_tag` varchar(16) COLLATE utf8_bin NOT NULL DEFAULT '',
  `bbcode_helpline` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_on_posting` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `bbcode_match` text COLLATE utf8_bin NOT NULL,
  `bbcode_tpl` mediumtext COLLATE utf8_bin NOT NULL,
  `first_pass_match` mediumtext COLLATE utf8_bin NOT NULL,
  `first_pass_replace` mediumtext COLLATE utf8_bin NOT NULL,
  `second_pass_match` mediumtext COLLATE utf8_bin NOT NULL,
  `second_pass_replace` mediumtext COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_bookmarks`
--

CREATE TABLE `phpbb_bookmarks` (
  `topic_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_bots`
--

CREATE TABLE `phpbb_bots` (
  `bot_id` int(10) UNSIGNED NOT NULL,
  `bot_active` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `bot_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `bot_agent` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `bot_ip` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbb_bots`
--

INSERT INTO `phpbb_bots` (`bot_id`, `bot_active`, `bot_name`, `user_id`, `bot_agent`, `bot_ip`) VALUES
(1, 1, 'AdsBot [Google]', 3, 'AdsBot-Google', ''),
(2, 1, 'Alexa [Bot]', 4, 'ia_archiver', ''),
(3, 1, 'Alta Vista [Bot]', 5, 'Scooter/', ''),
(4, 1, 'Ask Jeeves [Bot]', 6, 'Ask Jeeves', ''),
(5, 1, 'Baidu [Spider]', 7, 'Baiduspider', ''),
(6, 1, 'Bing [Bot]', 8, 'bingbot/', ''),
(7, 1, 'Exabot [Bot]', 9, 'Exabot', ''),
(8, 1, 'FAST Enterprise [Crawler]', 10, 'FAST Enterprise Crawler', ''),
(9, 1, 'FAST WebCrawler [Crawler]', 11, 'FAST-WebCrawler/', ''),
(10, 1, 'Francis [Bot]', 12, 'http://www.neomo.de/', ''),
(11, 1, 'Gigabot [Bot]', 13, 'Gigabot/', ''),
(12, 1, 'Google Adsense [Bot]', 14, 'Mediapartners-Google', ''),
(13, 1, 'Google Desktop', 15, 'Google Desktop', ''),
(14, 1, 'Google Feedfetcher', 16, 'Feedfetcher-Google', ''),
(15, 1, 'Google [Bot]', 17, 'Googlebot', ''),
(16, 1, 'Heise IT-Markt [Crawler]', 18, 'heise-IT-Markt-Crawler', ''),
(17, 1, 'Heritrix [Crawler]', 19, 'heritrix/1.', ''),
(18, 1, 'IBM Research [Bot]', 20, 'ibm.com/cs/crawler', ''),
(19, 1, 'ICCrawler - ICjobs', 21, 'ICCrawler - ICjobs', ''),
(20, 1, 'ichiro [Crawler]', 22, 'ichiro/', ''),
(21, 1, 'Majestic-12 [Bot]', 23, 'MJ12bot/', ''),
(22, 1, 'Metager [Bot]', 24, 'MetagerBot/', ''),
(23, 1, 'MSN NewsBlogs', 25, 'msnbot-NewsBlogs/', ''),
(24, 1, 'MSN [Bot]', 26, 'msnbot/', ''),
(25, 1, 'MSNbot Media', 27, 'msnbot-media/', ''),
(26, 1, 'Nutch [Bot]', 28, 'http://lucene.apache.org/nutch/', ''),
(27, 1, 'Online link [Validator]', 29, 'online link validator', ''),
(28, 1, 'psbot [Picsearch]', 30, 'psbot/0', ''),
(29, 1, 'Sensis [Crawler]', 31, 'Sensis Web Crawler', ''),
(30, 1, 'SEO Crawler', 32, 'SEO search Crawler/', ''),
(31, 1, 'Seoma [Crawler]', 33, 'Seoma [SEO Crawler]', ''),
(32, 1, 'SEOSearch [Crawler]', 34, 'SEOsearch/', ''),
(33, 1, 'Snappy [Bot]', 35, 'Snappy/1.1 ( http://www.urltrends.com/ )', ''),
(34, 1, 'Steeler [Crawler]', 36, 'http://www.tkl.iis.u-tokyo.ac.jp/~crawler/', ''),
(35, 1, 'Telekom [Bot]', 37, 'crawleradmin.t-info@telekom.de', ''),
(36, 1, 'TurnitinBot [Bot]', 38, 'TurnitinBot/', ''),
(37, 1, 'Voyager [Bot]', 39, 'voyager/', ''),
(38, 1, 'W3 [Sitesearch]', 40, 'W3 SiteSearch Crawler', ''),
(39, 1, 'W3C [Linkcheck]', 41, 'W3C-checklink/', ''),
(40, 1, 'W3C [Validator]', 42, 'W3C_Validator', ''),
(41, 1, 'YaCy [Bot]', 43, 'yacybot', ''),
(42, 1, 'Yahoo MMCrawler [Bot]', 44, 'Yahoo-MMCrawler/', ''),
(43, 1, 'Yahoo Slurp [Bot]', 45, 'Yahoo! DE Slurp', ''),
(44, 1, 'Yahoo [Bot]', 46, 'Yahoo! Slurp', ''),
(45, 1, 'YahooSeeker [Bot]', 47, 'YahooSeeker/', '');

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_config`
--

CREATE TABLE `phpbb_config` (
  `config_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `config_value` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `is_dynamic` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbb_config`
--

INSERT INTO `phpbb_config` (`config_name`, `config_value`, `is_dynamic`) VALUES
('active_sessions', '0', 0),
('allow_attachments', '1', 0),
('allow_autologin', '1', 0),
('allow_avatar', '1', 0),
('allow_avatar_gravatar', '0', 0),
('allow_avatar_local', '0', 0),
('allow_avatar_remote', '0', 0),
('allow_avatar_remote_upload', '0', 0),
('allow_avatar_upload', '1', 0),
('allow_bbcode', '1', 0),
('allow_birthdays', '1', 0),
('allow_board_notifications', '1', 0),
('allow_bookmarks', '1', 0),
('allow_cdn', '0', 0),
('allow_emailreuse', '0', 0),
('allow_forum_notify', '1', 0),
('allow_live_searches', '1', 0),
('allow_mass_pm', '1', 0),
('allow_name_chars', 'USERNAME_CHARS_ANY', 0),
('allow_namechange', '0', 0),
('allow_nocensors', '0', 0),
('allow_password_reset', '1', 0),
('allow_pm_attach', '0', 0),
('allow_pm_report', '1', 0),
('allow_post_flash', '1', 0),
('allow_post_links', '1', 0),
('allow_privmsg', '1', 0),
('allow_quick_reply', '1', 0),
('allow_sig', '1', 0),
('allow_sig_bbcode', '1', 0),
('allow_sig_flash', '0', 0),
('allow_sig_img', '1', 0),
('allow_sig_links', '1', 0),
('allow_sig_pm', '1', 0),
('allow_sig_smilies', '1', 0),
('allow_smilies', '1', 0),
('allow_topic_notify', '1', 0),
('allow_viglink_phpbb', '1', 0),
('allowed_schemes_links', 'http,https,ftp', 0),
('assets_version', '2', 0),
('attachment_quota', '52428800', 0),
('auth_bbcode_pm', '1', 0),
('auth_flash_pm', '0', 0),
('auth_img_pm', '1', 0),
('auth_method', 'db', 0),
('auth_smilies_pm', '1', 0),
('avatar_filesize', '6144', 0),
('avatar_gallery_path', 'images/avatars/gallery', 0),
('avatar_max_height', '90', 0),
('avatar_max_width', '90', 0),
('avatar_min_height', '20', 0),
('avatar_min_width', '20', 0),
('avatar_path', 'images/avatars/upload', 0),
('avatar_salt', '44cf7b4d2a04b202ba2e68c1bdccb0d3', 0),
('board_contact', 'antonbaliuk78@gmail.com', 0),
('board_contact_name', '', 0),
('board_disable', '0', 0),
('board_disable_msg', '', 0),
('board_email', 'antonbaliuk78@gmail.com', 0),
('board_email_form', '0', 0),
('board_email_sig', 'Thanks, The Management', 0),
('board_hide_emails', '1', 0),
('board_index_text', '', 0),
('board_startdate', '1591025465', 0),
('board_timezone', 'Europe/Warsaw', 0),
('browser_check', '1', 0),
('bump_interval', '10', 0),
('bump_type', 'd', 0),
('cache_gc', '7200', 0),
('cache_last_gc', '1591177460', 1),
('captcha_gd', '1', 0),
('captcha_gd_3d_noise', '1', 0),
('captcha_gd_fonts', '1', 0),
('captcha_gd_foreground_noise', '0', 0),
('captcha_gd_wave', '0', 0),
('captcha_gd_x_grid', '25', 0),
('captcha_gd_y_grid', '25', 0),
('captcha_plugin', 'core.captcha.plugins.gd', 0),
('check_attachment_content', '1', 0),
('check_dnsbl', '0', 0),
('chg_passforce', '0', 0),
('confirm_refresh', '1', 0),
('contact_admin_form_enable', '1', 0),
('cookie_domain', 'localhost', 0),
('cookie_name', 'phpbb3_1f26d', 0),
('cookie_path', '/', 0),
('cookie_secure', '', 0),
('coppa_enable', '0', 0),
('coppa_fax', '', 0),
('coppa_mail', '', 0),
('cron_lock', '0', 1),
('database_gc', '604800', 0),
('database_last_gc', '1591129953', 1),
('dbms_version', '5.7.24', 0),
('default_dateformat', 'D M d, Y g:i a', 0),
('default_lang', 'en', 0),
('default_style', '2', 0),
('delete_time', '0', 0),
('display_last_edited', '1', 0),
('display_last_subject', '1', 0),
('display_order', '0', 0),
('edit_time', '0', 0),
('email_check_mx', '1', 0),
('email_enable', '1', 0),
('email_force_sender', '0', 0),
('email_max_chunk_size', '50', 0),
('email_package_size', '20', 0),
('enable_accurate_pm_button', '1', 0),
('enable_confirm', '1', 0),
('enable_mod_rewrite', '0', 0),
('enable_pm_icons', '1', 0),
('enable_post_confirm', '1', 0),
('extension_force_unstable', '0', 0),
('feed_enable', '1', 0),
('feed_forum', '1', 0),
('feed_http_auth', '0', 0),
('feed_item_statistics', '1', 0),
('feed_limit_post', '15', 0),
('feed_limit_topic', '10', 0),
('feed_overall', '1', 0),
('feed_overall_forums', '0', 0),
('feed_topic', '1', 0),
('feed_topics_active', '0', 0),
('feed_topics_new', '1', 0),
('flood_interval', '15', 0),
('force_server_vars', '0', 0),
('form_token_lifetime', '7200', 0),
('form_token_mintime', '0', 0),
('form_token_sid_guests', '1', 0),
('forward_pm', '1', 0),
('forwarded_for_check', '0', 0),
('full_folder_action', '2', 0),
('fulltext_mysql_max_word_len', '254', 0),
('fulltext_mysql_min_word_len', '4', 0),
('fulltext_native_common_thres', '5', 0),
('fulltext_native_load_upd', '1', 0),
('fulltext_native_max_chars', '14', 0),
('fulltext_native_min_chars', '3', 0),
('fulltext_postgres_max_word_len', '254', 0),
('fulltext_postgres_min_word_len', '4', 0),
('fulltext_postgres_ts_name', 'simple', 0),
('fulltext_sphinx_indexer_mem_limit', '512', 0),
('fulltext_sphinx_stopwords', '0', 0),
('gzip_compress', '0', 0),
('help_send_statistics', '1', 0),
('help_send_statistics_time', '0', 0),
('hot_threshold', '25', 0),
('icons_path', 'images/icons', 0),
('img_create_thumbnail', '0', 0),
('img_display_inlined', '1', 0),
('img_link_height', '0', 0),
('img_link_width', '0', 0),
('img_max_height', '0', 0),
('img_max_thumb_width', '400', 0),
('img_max_width', '0', 0),
('img_min_thumb_filesize', '12000', 0),
('ip_check', '3', 0),
('ip_login_limit_max', '50', 0),
('ip_login_limit_time', '21600', 0),
('ip_login_limit_use_forwarded', '0', 0),
('jab_enable', '0', 0),
('jab_host', '', 0),
('jab_package_size', '20', 0),
('jab_password', '', 0),
('jab_port', '5222', 0),
('jab_use_ssl', '0', 0),
('jab_username', '', 0),
('last_queue_run', '0', 1),
('ldap_base_dn', '', 0),
('ldap_email', '', 0),
('ldap_password', '', 0),
('ldap_port', '', 0),
('ldap_server', '', 0),
('ldap_uid', '', 0),
('ldap_user', '', 0),
('ldap_user_filter', '', 0),
('legend_sort_groupname', '0', 0),
('limit_load', '0', 0),
('limit_search_load', '0', 0),
('load_anon_lastread', '0', 0),
('load_birthdays', '1', 0),
('load_cpf_memberlist', '1', 0),
('load_cpf_pm', '1', 0),
('load_cpf_viewprofile', '1', 0),
('load_cpf_viewtopic', '1', 0),
('load_db_lastread', '1', 0),
('load_db_track', '1', 0),
('load_jquery_url', '//ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js', 0),
('load_jumpbox', '1', 0),
('load_moderators', '1', 0),
('load_notifications', '1', 0),
('load_online', '1', 0),
('load_online_guests', '1', 0),
('load_online_time', '5', 0),
('load_onlinetrack', '1', 0),
('load_search', '1', 0),
('load_tplcompile', '0', 0),
('load_unreads_search', '1', 0),
('load_user_activity', '1', 0),
('load_user_activity_limit', '5000', 0),
('max_attachments', '3', 0),
('max_attachments_pm', '1', 0),
('max_autologin_time', '0', 0),
('max_filesize', '262144', 0),
('max_filesize_pm', '262144', 0),
('max_login_attempts', '3', 0),
('max_name_chars', '20', 0),
('max_num_search_keywords', '10', 0),
('max_poll_options', '10', 0),
('max_post_chars', '60000', 0),
('max_post_font_size', '200', 0),
('max_post_img_height', '0', 0),
('max_post_img_width', '0', 0),
('max_post_smilies', '0', 0),
('max_post_urls', '0', 0),
('max_quote_depth', '3', 0),
('max_reg_attempts', '5', 0),
('max_sig_chars', '255', 0),
('max_sig_font_size', '200', 0),
('max_sig_img_height', '0', 0),
('max_sig_img_width', '0', 0),
('max_sig_smilies', '0', 0),
('max_sig_urls', '5', 0),
('mime_triggers', 'body|head|html|img|plaintext|a href|pre|script|table|title', 0),
('min_name_chars', '3', 0),
('min_pass_chars', '6', 0),
('min_post_chars', '1', 0),
('min_search_author_chars', '3', 0),
('new_member_group_default', '0', 0),
('new_member_post_limit', '3', 0),
('newest_user_colour', 'AA0000', 1),
('newest_user_id', '2', 1),
('newest_username', 'admin', 1),
('num_files', '0', 1),
('num_posts', '0', 1),
('num_topics', '0', 1),
('num_users', '1', 1),
('override_user_style', '0', 0),
('pass_complex', 'PASS_TYPE_ANY', 0),
('phpbb_viglink_api_key', 'e4fd14f5d7f2bb6d80b8f8da1354718c', 0),
('plupload_last_gc', '0', 1),
('plupload_salt', 'ad2e70f4b348dafa4cdec1c4ed0c1001', 0),
('pm_edit_time', '0', 0),
('pm_max_boxes', '4', 0),
('pm_max_msgs', '50', 0),
('pm_max_recipients', '0', 0),
('posts_per_page', '10', 0),
('print_pm', '1', 0),
('questionnaire_unique_id', '0gznxykmqfzv7moi', 0),
('queue_interval', '60', 0),
('rand_seed', '81a287d2465deaecb33a264455ec9940', 1),
('rand_seed_last_update', '1591025465', 1),
('ranks_path', 'images/ranks', 0),
('read_notification_expire_days', '30', 0),
('read_notification_gc', '86400', 0),
('read_notification_last_gc', '1591129880', 1),
('record_online_date', '1591177465', 1),
('record_online_users', '2', 1),
('referer_validation', '0', 0),
('remote_upload_verify', '0', 0),
('require_activation', '0', 0),
('script_path', '/\\', 0),
('search_anonymous_interval', '0', 0),
('search_block_size', '250', 0),
('search_gc', '7200', 0),
('search_indexing_state', '', 1),
('search_interval', '0', 0),
('search_last_gc', '1591177463', 1),
('search_store_results', '1800', 0),
('search_type', '\\phpbb\\search\\fulltext_native', 0),
('secure_allow_deny', '1', 0),
('secure_allow_empty_referer', '1', 0),
('secure_downloads', '0', 0),
('server_name', 'localhost', 0),
('server_port', '80', 0),
('server_protocol', 'http://', 0),
('session_gc', '3600', 0),
('session_last_gc', '1591177475', 1),
('session_length', '3600', 0),
('site_desc', 'A short text to describe your forum', 0),
('site_home_text', '', 0),
('site_home_url', '', 0),
('sitename', 'yourdomain.com', 0),
('smilies_path', 'images/smilies', 0),
('smilies_per_page', '50', 0),
('smtp_auth_method', 'PLAIN', 0),
('smtp_delivery', '0', 0),
('smtp_host', '', 0),
('smtp_password', 'root', 1),
('smtp_port', '', 0),
('smtp_username', 'root', 1),
('teampage_forums', '1', 0),
('teampage_memberships', '1', 0),
('topics_per_page', '25', 0),
('tpl_allow_php', '0', 0),
('upload_dir_size', '0', 1),
('upload_icons_path', 'images/upload_icons', 0),
('upload_path', 'files', 0),
('use_system_cron', '0', 0),
('version', '3.3.0', 0),
('viglink_api_siteid', 'd41d8cd98f00b204e9800998ecf8427e', 0),
('viglink_ask_admin', '', 0),
('viglink_ask_admin_last', '1591114572', 0),
('viglink_convert_account_url', '', 0),
('viglink_enabled', '0', 0),
('viglink_last_gc', '1591130710', 1),
('warnings_expire_days', '90', 0),
('warnings_gc', '14400', 0),
('warnings_last_gc', '1591177465', 1);

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_config_text`
--

CREATE TABLE `phpbb_config_text` (
  `config_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `config_value` mediumtext COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbb_config_text`
--

INSERT INTO `phpbb_config_text` (`config_name`, `config_value`) VALUES
('contact_admin_info', ''),
('contact_admin_info_bitfield', ''),
('contact_admin_info_flags', '7'),
('contact_admin_info_uid', '');

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_confirm`
--

CREATE TABLE `phpbb_confirm` (
  `confirm_id` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `session_id` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `confirm_type` tinyint(3) NOT NULL DEFAULT '0',
  `code` varchar(8) COLLATE utf8_bin NOT NULL DEFAULT '',
  `seed` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `attempts` mediumint(8) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_disallow`
--

CREATE TABLE `phpbb_disallow` (
  `disallow_id` mediumint(8) UNSIGNED NOT NULL,
  `disallow_username` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_drafts`
--

CREATE TABLE `phpbb_drafts` (
  `draft_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `topic_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `forum_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `save_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `draft_subject` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `draft_message` mediumtext COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_ext`
--

CREATE TABLE `phpbb_ext` (
  `ext_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `ext_active` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `ext_state` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbb_ext`
--

INSERT INTO `phpbb_ext` (`ext_name`, `ext_active`, `ext_state`) VALUES
('phpbb/viglink', 1, 'b:0;');

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_extensions`
--

CREATE TABLE `phpbb_extensions` (
  `extension_id` mediumint(8) UNSIGNED NOT NULL,
  `group_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `extension` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbb_extensions`
--

INSERT INTO `phpbb_extensions` (`extension_id`, `group_id`, `extension`) VALUES
(1, 1, 'gif'),
(2, 1, 'png'),
(3, 1, 'jpeg'),
(4, 1, 'jpg'),
(5, 1, 'tif'),
(6, 1, 'tiff'),
(7, 1, 'tga'),
(8, 2, 'gtar'),
(9, 2, 'gz'),
(10, 2, 'tar'),
(11, 2, 'zip'),
(12, 2, 'rar'),
(13, 2, 'ace'),
(14, 2, 'torrent'),
(15, 2, 'tgz'),
(16, 2, 'bz2'),
(17, 2, '7z'),
(18, 3, 'txt'),
(19, 3, 'c'),
(20, 3, 'h'),
(21, 3, 'cpp'),
(22, 3, 'hpp'),
(23, 3, 'diz'),
(24, 3, 'csv'),
(25, 3, 'ini'),
(26, 3, 'log'),
(27, 3, 'js'),
(28, 3, 'xml'),
(29, 4, 'xls'),
(30, 4, 'xlsx'),
(31, 4, 'xlsm'),
(32, 4, 'xlsb'),
(33, 4, 'doc'),
(34, 4, 'docx'),
(35, 4, 'docm'),
(36, 4, 'dot'),
(37, 4, 'dotx'),
(38, 4, 'dotm'),
(39, 4, 'pdf'),
(40, 4, 'ai'),
(41, 4, 'ps'),
(42, 4, 'ppt'),
(43, 4, 'pptx'),
(44, 4, 'pptm'),
(45, 4, 'odg'),
(46, 4, 'odp'),
(47, 4, 'ods'),
(48, 4, 'odt'),
(49, 4, 'rtf'),
(50, 5, 'mp3'),
(51, 5, 'mpeg'),
(52, 5, 'mpg'),
(53, 5, 'ogg'),
(54, 5, 'ogm');

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_extension_groups`
--

CREATE TABLE `phpbb_extension_groups` (
  `group_id` mediumint(8) UNSIGNED NOT NULL,
  `group_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `cat_id` tinyint(2) NOT NULL DEFAULT '0',
  `allow_group` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `download_mode` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `upload_icon` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `max_filesize` int(20) UNSIGNED NOT NULL DEFAULT '0',
  `allowed_forums` text COLLATE utf8_bin NOT NULL,
  `allow_in_pm` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbb_extension_groups`
--

INSERT INTO `phpbb_extension_groups` (`group_id`, `group_name`, `cat_id`, `allow_group`, `download_mode`, `upload_icon`, `max_filesize`, `allowed_forums`, `allow_in_pm`) VALUES
(1, 'IMAGES', 1, 1, 1, '', 0, '', 0),
(2, 'ARCHIVES', 0, 1, 1, '', 0, '', 0),
(3, 'PLAIN_TEXT', 0, 0, 1, '', 0, '', 0),
(4, 'DOCUMENTS', 0, 0, 1, '', 0, '', 0),
(5, 'DOWNLOADABLE_FILES', 0, 0, 1, '', 0, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_forums`
--

CREATE TABLE `phpbb_forums` (
  `forum_id` mediumint(8) UNSIGNED NOT NULL,
  `parent_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `left_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `right_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `forum_parents` mediumtext COLLATE utf8_bin NOT NULL,
  `forum_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_desc` text COLLATE utf8_bin NOT NULL,
  `forum_desc_bitfield` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_desc_options` int(11) UNSIGNED NOT NULL DEFAULT '7',
  `forum_desc_uid` varchar(8) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_link` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_password` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_style` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `forum_image` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_rules` text COLLATE utf8_bin NOT NULL,
  `forum_rules_link` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_rules_bitfield` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_rules_options` int(11) UNSIGNED NOT NULL DEFAULT '7',
  `forum_rules_uid` varchar(8) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_topics_per_page` smallint(4) UNSIGNED NOT NULL DEFAULT '0',
  `forum_type` tinyint(4) NOT NULL DEFAULT '0',
  `forum_status` tinyint(4) NOT NULL DEFAULT '0',
  `forum_last_post_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `forum_last_poster_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `forum_last_post_subject` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_last_post_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `forum_last_poster_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_last_poster_colour` varchar(6) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_flags` tinyint(4) NOT NULL DEFAULT '32',
  `display_on_index` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `enable_indexing` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `enable_icons` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `enable_prune` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `prune_next` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `prune_days` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `prune_viewed` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `prune_freq` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `display_subforum_list` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `display_subforum_limit` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `forum_options` int(20) UNSIGNED NOT NULL DEFAULT '0',
  `forum_posts_approved` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `forum_posts_unapproved` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `forum_posts_softdeleted` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `forum_topics_approved` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `forum_topics_unapproved` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `forum_topics_softdeleted` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `enable_shadow_prune` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `prune_shadow_days` mediumint(8) UNSIGNED NOT NULL DEFAULT '7',
  `prune_shadow_freq` mediumint(8) UNSIGNED NOT NULL DEFAULT '1',
  `prune_shadow_next` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbb_forums`
--

INSERT INTO `phpbb_forums` (`forum_id`, `parent_id`, `left_id`, `right_id`, `forum_parents`, `forum_name`, `forum_desc`, `forum_desc_bitfield`, `forum_desc_options`, `forum_desc_uid`, `forum_link`, `forum_password`, `forum_style`, `forum_image`, `forum_rules`, `forum_rules_link`, `forum_rules_bitfield`, `forum_rules_options`, `forum_rules_uid`, `forum_topics_per_page`, `forum_type`, `forum_status`, `forum_last_post_id`, `forum_last_poster_id`, `forum_last_post_subject`, `forum_last_post_time`, `forum_last_poster_name`, `forum_last_poster_colour`, `forum_flags`, `display_on_index`, `enable_indexing`, `enable_icons`, `enable_prune`, `prune_next`, `prune_days`, `prune_viewed`, `prune_freq`, `display_subforum_list`, `display_subforum_limit`, `forum_options`, `forum_posts_approved`, `forum_posts_unapproved`, `forum_posts_softdeleted`, `forum_topics_approved`, `forum_topics_unapproved`, `forum_topics_softdeleted`, `enable_shadow_prune`, `prune_shadow_days`, `prune_shadow_freq`, `prune_shadow_next`) VALUES
(1, 0, 1, 4, '', 'Your first category', '', '', 7, '', '', '', 2, '', '', '', '', 7, '', 0, 0, 0, 1, 2, '', 1591025465, 'admin', 'AA0000', 32, 1, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 1, 0),
(2, 1, 2, 3, 'a:1:{i:1;a:2:{i:0;s:19:\"Your first category\";i:1;i:0;}}', 'ssfgvb', '', '', 7, '', '', '', 2, '', '', '', '', 7, '', 0, 1, 0, 0, 0, '', 0, '', '', 48, 1, 1, 1, 0, 0, 7, 7, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_forums_access`
--

CREATE TABLE `phpbb_forums_access` (
  `forum_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `session_id` char(32) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_forums_track`
--

CREATE TABLE `phpbb_forums_track` (
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `forum_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `mark_time` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_forums_watch`
--

CREATE TABLE `phpbb_forums_watch` (
  `forum_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `notify_status` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_groups`
--

CREATE TABLE `phpbb_groups` (
  `group_id` mediumint(8) UNSIGNED NOT NULL,
  `group_type` tinyint(4) NOT NULL DEFAULT '1',
  `group_founder_manage` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `group_skip_auth` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `group_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `group_desc` text COLLATE utf8_bin NOT NULL,
  `group_desc_bitfield` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `group_desc_options` int(11) UNSIGNED NOT NULL DEFAULT '7',
  `group_desc_uid` varchar(8) COLLATE utf8_bin NOT NULL DEFAULT '',
  `group_display` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `group_avatar` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `group_avatar_type` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `group_avatar_width` smallint(4) UNSIGNED NOT NULL DEFAULT '0',
  `group_avatar_height` smallint(4) UNSIGNED NOT NULL DEFAULT '0',
  `group_rank` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `group_colour` varchar(6) COLLATE utf8_bin NOT NULL DEFAULT '',
  `group_sig_chars` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `group_receive_pm` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `group_message_limit` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `group_legend` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `group_max_recipients` mediumint(8) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbb_groups`
--

INSERT INTO `phpbb_groups` (`group_id`, `group_type`, `group_founder_manage`, `group_skip_auth`, `group_name`, `group_desc`, `group_desc_bitfield`, `group_desc_options`, `group_desc_uid`, `group_display`, `group_avatar`, `group_avatar_type`, `group_avatar_width`, `group_avatar_height`, `group_rank`, `group_colour`, `group_sig_chars`, `group_receive_pm`, `group_message_limit`, `group_legend`, `group_max_recipients`) VALUES
(1, 3, 0, 0, 'GUESTS', '', '', 7, '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 5),
(2, 3, 0, 0, 'REGISTERED', '', '', 7, '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 5),
(3, 3, 0, 0, 'REGISTERED_COPPA', '', '', 7, '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 5),
(4, 3, 0, 0, 'GLOBAL_MODERATORS', '', '', 7, '', 0, '', '', 0, 0, 0, '00AA00', 0, 0, 0, 2, 0),
(5, 3, 1, 0, 'ADMINISTRATORS', '', '', 7, '', 0, '', '', 0, 0, 0, 'AA0000', 0, 0, 0, 1, 0),
(6, 3, 0, 0, 'BOTS', '', '', 7, '', 0, '', '', 0, 0, 0, '9E8DA7', 0, 0, 0, 0, 5),
(7, 3, 0, 0, 'NEWLY_REGISTERED', '', '', 7, '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 5);

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_icons`
--

CREATE TABLE `phpbb_icons` (
  `icons_id` mediumint(8) UNSIGNED NOT NULL,
  `icons_url` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `icons_width` tinyint(4) NOT NULL DEFAULT '0',
  `icons_height` tinyint(4) NOT NULL DEFAULT '0',
  `icons_alt` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `icons_order` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `display_on_posting` tinyint(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbb_icons`
--

INSERT INTO `phpbb_icons` (`icons_id`, `icons_url`, `icons_width`, `icons_height`, `icons_alt`, `icons_order`, `display_on_posting`) VALUES
(1, 'misc/fire.gif', 16, 16, '', 1, 1),
(2, 'smile/redface.gif', 16, 16, '', 9, 1),
(3, 'smile/mrgreen.gif', 16, 16, '', 10, 1),
(4, 'misc/heart.gif', 16, 16, '', 4, 1),
(5, 'misc/star.gif', 16, 16, '', 2, 1),
(6, 'misc/radioactive.gif', 16, 16, '', 3, 1),
(7, 'misc/thinking.gif', 16, 16, '', 5, 1),
(8, 'smile/info.gif', 16, 16, '', 8, 1),
(9, 'smile/question.gif', 16, 16, '', 6, 1),
(10, 'smile/alert.gif', 16, 16, '', 7, 1);

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_lang`
--

CREATE TABLE `phpbb_lang` (
  `lang_id` tinyint(4) NOT NULL,
  `lang_iso` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT '',
  `lang_dir` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT '',
  `lang_english_name` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `lang_local_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `lang_author` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbb_lang`
--

INSERT INTO `phpbb_lang` (`lang_id`, `lang_iso`, `lang_dir`, `lang_english_name`, `lang_local_name`, `lang_author`) VALUES
(1, 'en', 'en', 'British English', 'British English', 'phpBB Limited');

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_log`
--

CREATE TABLE `phpbb_log` (
  `log_id` int(10) UNSIGNED NOT NULL,
  `log_type` tinyint(4) NOT NULL DEFAULT '0',
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `forum_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `topic_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `post_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `reportee_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `log_ip` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `log_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `log_operation` text COLLATE utf8_bin NOT NULL,
  `log_data` mediumtext COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbb_log`
--

INSERT INTO `phpbb_log` (`log_id`, `log_type`, `user_id`, `forum_id`, `topic_id`, `post_id`, `reportee_id`, `log_ip`, `log_time`, `log_operation`, `log_data`) VALUES
(1, 0, 1, 0, 0, 0, 0, '127.0.0.1', 1591025470, 'LOG_MODULE_ADD', 'a:1:{i:0;s:20:\"ACP_VIGLINK_SETTINGS\";}'),
(2, 0, 1, 0, 0, 0, 0, '', 1591025471, 'LOG_EXT_ENABLE', 'a:1:{i:0;s:13:\"phpbb/viglink\";}'),
(3, 2, 1, 0, 0, 0, 0, '127.0.0.1', 1591025473, 'LOG_ERROR_EMAIL', 'a:1:{i:0;s:316:\"<strong>EMAIL/PHP/mail()</strong><br /><em>/install/app.php/install</em><br /><br />Errno 2: mail(): Failed to connect to mailserver at &quot;localhost&quot; port 25, verify your &quot;SMTP&quot; and &quot;smtp_port&quot; setting in php.ini or use ini_set() at [ROOT]/includes/functions_messenger.php line 1929<br />\";}'),
(4, 0, 2, 0, 0, 0, 0, '127.0.0.1', 1591025473, 'LOG_INSTALL_INSTALLED', 'a:1:{i:0;s:5:\"3.3.0\";}'),
(5, 0, 2, 0, 0, 0, 0, '127.0.0.1', 1591027886, 'LOG_FORUM_DEL_POSTS', 'a:1:{i:0;s:16:\"Your first forum\";}'),
(6, 0, 2, 0, 0, 0, 0, '127.0.0.1', 1591029787, 'LOG_CONFIG_SETTINGS', ''),
(7, 0, 2, 0, 0, 0, 0, '127.0.0.1', 1591114555, 'LOG_ADMIN_AUTH_FAIL', ''),
(8, 0, 2, 0, 0, 0, 0, '127.0.0.1', 1591114571, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(9, 0, 2, 0, 0, 0, 0, '127.0.0.1', 1591119743, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(10, 0, 2, 0, 0, 0, 0, '127.0.0.1', 1591127815, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(11, 0, 2, 0, 0, 0, 0, '127.0.0.1', 1591128653, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(12, 0, 2, 0, 0, 0, 0, '127.0.0.1', 1591129318, 'LOG_STYLE_ADD', 'a:1:{i:0;s:10:\"Simplicity\";}'),
(13, 0, 2, 0, 0, 0, 0, '127.0.0.1', 1591129371, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(14, 0, 2, 0, 0, 0, 0, '127.0.0.1', 1591129398, 'LOG_FORUM_ADD', 'a:1:{i:0;s:6:\"ssfgvb\";}'),
(15, 0, 2, 0, 0, 0, 0, '127.0.0.1', 1591129398, 'LOG_FORUM_COPIED_PERMISSIONS', 'a:2:{i:0;s:19:\"Your first category\";i:1;s:6:\"ssfgvb\";}'),
(16, 0, 2, 0, 0, 0, 0, '127.0.0.1', 1591129478, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(17, 0, 2, 0, 0, 0, 0, '127.0.0.1', 1591129526, 'LOG_STYLE_ADD', 'a:1:{i:0;s:15:\"Simplicity Aqua\";}'),
(18, 0, 2, 0, 0, 0, 0, '127.0.0.1', 1591129526, 'LOG_STYLE_ADD', 'a:1:{i:0;s:15:\"Simplicity Blue\";}'),
(19, 0, 2, 0, 0, 0, 0, '127.0.0.1', 1591129526, 'LOG_STYLE_ADD', 'a:1:{i:0;s:20:\"Simplicity Dark Blue\";}'),
(20, 0, 2, 0, 0, 0, 0, '127.0.0.1', 1591129526, 'LOG_STYLE_ADD', 'a:1:{i:0;s:15:\"Simplicity Gray\";}'),
(21, 0, 2, 0, 0, 0, 0, '127.0.0.1', 1591129526, 'LOG_STYLE_ADD', 'a:1:{i:0;s:21:\"Simplicity Light Blue\";}'),
(22, 0, 2, 0, 0, 0, 0, '127.0.0.1', 1591129526, 'LOG_STYLE_ADD', 'a:1:{i:0;s:21:\"Simplicity Steel Blue\";}'),
(23, 0, 2, 0, 0, 0, 0, '127.0.0.1', 1591129957, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(24, 0, 2, 0, 0, 0, 0, '127.0.0.1', 1591130315, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(25, 0, 2, 0, 0, 0, 0, '127.0.0.1', 1591130653, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(26, 0, 2, 0, 0, 0, 0, '127.0.0.1', 1591130690, 'LOG_STYLE_EDIT_DETAILS', 'a:1:{i:0;s:10:\"Simplicity\";}'),
(27, 0, 2, 0, 0, 0, 0, '127.0.0.1', 1591130708, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(28, 0, 2, 0, 0, 0, 0, '127.0.0.1', 1591130735, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(29, 0, 2, 0, 0, 0, 0, '127.0.0.1', 1591130916, 'LOG_FORUM_EDIT', 'a:1:{i:0;s:6:\"ssfgvb\";}'),
(30, 0, 2, 0, 0, 0, 0, '127.0.0.1', 1591130934, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(31, 0, 2, 0, 0, 0, 0, '127.0.0.1', 1591130951, 'LOG_FORUM_EDIT', 'a:1:{i:0;s:6:\"ssfgvb\";}'),
(32, 0, 2, 0, 0, 0, 0, '127.0.0.1', 1591130963, 'LOG_FORUM_EDIT', 'a:1:{i:0;s:19:\"Your first category\";}'),
(33, 0, 2, 0, 0, 0, 0, '127.0.0.1', 1591130979, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(34, 0, 2, 0, 0, 0, 0, '127.0.0.1', 1591131356, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(35, 0, 2, 0, 0, 0, 0, '127.0.0.1', 1591177476, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(36, 0, 2, 0, 0, 0, 0, '127.0.0.1', 1591177521, 'LOG_CONFIG_SETTINGS', '');

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_login_attempts`
--

CREATE TABLE `phpbb_login_attempts` (
  `attempt_ip` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `attempt_browser` varchar(150) COLLATE utf8_bin NOT NULL DEFAULT '',
  `attempt_forwarded_for` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `attempt_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `username` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '0',
  `username_clean` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_migrations`
--

CREATE TABLE `phpbb_migrations` (
  `migration_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `migration_depends_on` text COLLATE utf8_bin NOT NULL,
  `migration_schema_done` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `migration_data_done` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `migration_data_state` text COLLATE utf8_bin NOT NULL,
  `migration_start_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `migration_end_time` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbb_migrations`
--

INSERT INTO `phpbb_migrations` (`migration_name`, `migration_depends_on`, `migration_schema_done`, `migration_data_done`, `migration_data_state`, `migration_start_time`, `migration_end_time`) VALUES
('\\phpbb\\db\\migration\\data\\v30x\\local_url_bbcode', 'a:1:{i:0;s:48:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_12_rc1\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_0', 'a:0:{}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_1', 'a:1:{i:0;s:47:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_1_rc1\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_10', 'a:1:{i:0;s:48:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_10_rc3\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_10_rc1', 'a:1:{i:0;s:43:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_9\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_10_rc2', 'a:1:{i:0;s:48:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_10_rc1\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_10_rc3', 'a:1:{i:0;s:48:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_10_rc2\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_11', 'a:1:{i:0;s:48:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_11_rc2\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_11_rc1', 'a:1:{i:0;s:44:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_10\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_11_rc2', 'a:1:{i:0;s:48:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_11_rc1\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_12', 'a:1:{i:0;s:48:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_12_rc3\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_12_rc1', 'a:1:{i:0;s:44:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_11\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_12_rc2', 'a:1:{i:0;s:48:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_12_rc1\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_12_rc3', 'a:1:{i:0;s:48:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_12_rc2\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_13', 'a:1:{i:0;s:48:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_13_rc1\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_13_pl1', 'a:1:{i:0;s:44:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_13\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_13_rc1', 'a:1:{i:0;s:44:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_12\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_14', 'a:1:{i:0;s:48:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_14_rc1\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_14_rc1', 'a:1:{i:0;s:44:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_13\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_1_rc1', 'a:1:{i:0;s:43:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_0\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_2', 'a:1:{i:0;s:47:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_2_rc2\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_2_rc1', 'a:1:{i:0;s:43:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_1\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_2_rc2', 'a:1:{i:0;s:47:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_2_rc1\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_3', 'a:1:{i:0;s:47:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_3_rc1\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_3_rc1', 'a:1:{i:0;s:43:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_2\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_4', 'a:1:{i:0;s:47:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_4_rc1\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_4_rc1', 'a:1:{i:0;s:43:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_3\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_5', 'a:1:{i:0;s:52:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_5_rc1part2\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_5_rc1', 'a:1:{i:0;s:43:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_4\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_5_rc1part2', 'a:1:{i:0;s:47:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_5_rc1\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_6', 'a:1:{i:0;s:47:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_6_rc4\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_6_rc1', 'a:1:{i:0;s:43:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_5\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_6_rc2', 'a:1:{i:0;s:47:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_6_rc1\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_6_rc3', 'a:1:{i:0;s:47:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_6_rc2\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_6_rc4', 'a:1:{i:0;s:47:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_6_rc3\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_7', 'a:1:{i:0;s:47:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_7_rc2\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_7_pl1', 'a:1:{i:0;s:43:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_7\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_7_rc1', 'a:1:{i:0;s:43:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_6\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_7_rc2', 'a:1:{i:0;s:47:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_7_rc1\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_8', 'a:1:{i:0;s:47:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_8_rc1\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_8_rc1', 'a:1:{i:0;s:47:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_7_pl1\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_9', 'a:1:{i:0;s:47:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_9_rc4\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_9_rc1', 'a:1:{i:0;s:43:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_8\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_9_rc2', 'a:1:{i:0;s:47:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_9_rc1\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_9_rc3', 'a:1:{i:0;s:47:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_9_rc2\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_9_rc4', 'a:1:{i:0;s:47:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_9_rc3\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v310\\acp_prune_users_module', 'a:1:{i:0;s:35:\"\\phpbb\\db\\migration\\data\\v310\\beta1\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v310\\acp_style_components_module', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\dev\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v310\\allow_cdn', 'a:1:{i:0;s:43:\"\\phpbb\\db\\migration\\data\\v310\\jquery_update\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v310\\alpha1', 'a:18:{i:0;s:46:\"\\phpbb\\db\\migration\\data\\v30x\\local_url_bbcode\";i:1;s:44:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_12\";i:2;s:57:\"\\phpbb\\db\\migration\\data\\v310\\acp_style_components_module\";i:3;s:39:\"\\phpbb\\db\\migration\\data\\v310\\allow_cdn\";i:4;s:49:\"\\phpbb\\db\\migration\\data\\v310\\auth_provider_oauth\";i:5;s:37:\"\\phpbb\\db\\migration\\data\\v310\\avatars\";i:6;s:40:\"\\phpbb\\db\\migration\\data\\v310\\boardindex\";i:7;s:44:\"\\phpbb\\db\\migration\\data\\v310\\config_db_text\";i:8;s:45:\"\\phpbb\\db\\migration\\data\\v310\\forgot_password\";i:9;s:41:\"\\phpbb\\db\\migration\\data\\v310\\mod_rewrite\";i:10;s:49:\"\\phpbb\\db\\migration\\data\\v310\\mysql_fulltext_drop\";i:11;s:40:\"\\phpbb\\db\\migration\\data\\v310\\namespaces\";i:12;s:48:\"\\phpbb\\db\\migration\\data\\v310\\notifications_cron\";i:13;s:60:\"\\phpbb\\db\\migration\\data\\v310\\notification_options_reconvert\";i:14;s:38:\"\\phpbb\\db\\migration\\data\\v310\\plupload\";i:15;s:51:\"\\phpbb\\db\\migration\\data\\v310\\signature_module_auth\";i:16;s:52:\"\\phpbb\\db\\migration\\data\\v310\\softdelete_mcp_modules\";i:17;s:38:\"\\phpbb\\db\\migration\\data\\v310\\teampage\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v310\\alpha2', 'a:2:{i:0;s:36:\"\\phpbb\\db\\migration\\data\\v310\\alpha1\";i:1;s:51:\"\\phpbb\\db\\migration\\data\\v310\\notifications_cron_p2\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v310\\alpha3', 'a:4:{i:0;s:36:\"\\phpbb\\db\\migration\\data\\v310\\alpha2\";i:1;s:42:\"\\phpbb\\db\\migration\\data\\v310\\avatar_types\";i:2;s:39:\"\\phpbb\\db\\migration\\data\\v310\\passwords\";i:3;s:48:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_types\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v310\\auth_provider_oauth', 'a:1:{i:0;s:43:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_0\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v310\\auth_provider_oauth2', 'a:1:{i:0;s:49:\"\\phpbb\\db\\migration\\data\\v310\\auth_provider_oauth\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v310\\avatar_types', 'a:2:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\dev\";i:1;s:37:\"\\phpbb\\db\\migration\\data\\v310\\avatars\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v310\\avatars', 'a:1:{i:0;s:44:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_11\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v310\\beta1', 'a:7:{i:0;s:36:\"\\phpbb\\db\\migration\\data\\v310\\alpha3\";i:1;s:42:\"\\phpbb\\db\\migration\\data\\v310\\passwords_p2\";i:2;s:52:\"\\phpbb\\db\\migration\\data\\v310\\postgres_fulltext_drop\";i:3;s:63:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_change_load_settings\";i:4;s:51:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_location\";i:5;s:54:\"\\phpbb\\db\\migration\\data\\v310\\soft_delete_mod_convert2\";i:6;s:48:\"\\phpbb\\db\\migration\\data\\v310\\ucp_popuppm_module\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v310\\beta2', 'a:3:{i:0;s:35:\"\\phpbb\\db\\migration\\data\\v310\\beta1\";i:1;s:52:\"\\phpbb\\db\\migration\\data\\v310\\acp_prune_users_module\";i:2;s:59:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_location_cleanup\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v310\\beta3', 'a:6:{i:0;s:35:\"\\phpbb\\db\\migration\\data\\v310\\beta2\";i:1;s:50:\"\\phpbb\\db\\migration\\data\\v310\\auth_provider_oauth2\";i:2;s:48:\"\\phpbb\\db\\migration\\data\\v310\\board_contact_name\";i:3;s:44:\"\\phpbb\\db\\migration\\data\\v310\\jquery_update2\";i:4;s:50:\"\\phpbb\\db\\migration\\data\\v310\\live_searches_config\";i:5;s:49:\"\\phpbb\\db\\migration\\data\\v310\\prune_shadow_topics\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v310\\beta4', 'a:3:{i:0;s:35:\"\\phpbb\\db\\migration\\data\\v310\\beta3\";i:1;s:69:\"\\phpbb\\db\\migration\\data\\v310\\extensions_version_check_force_unstable\";i:2;s:58:\"\\phpbb\\db\\migration\\data\\v310\\reset_missing_captcha_plugin\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v310\\board_contact_name', 'a:1:{i:0;s:35:\"\\phpbb\\db\\migration\\data\\v310\\beta2\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v310\\boardindex', 'a:0:{}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v310\\bot_update', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\rc6\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v310\\captcha_plugins', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\rc2\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v310\\config_db_text', 'a:1:{i:0;s:44:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_11\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v310\\contact_admin_acp_module', 'a:0:{}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v310\\contact_admin_form', 'a:1:{i:0;s:44:\"\\phpbb\\db\\migration\\data\\v310\\config_db_text\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v310\\dev', 'a:5:{i:0;s:40:\"\\phpbb\\db\\migration\\data\\v310\\extensions\";i:1;s:45:\"\\phpbb\\db\\migration\\data\\v310\\style_update_p2\";i:2;s:41:\"\\phpbb\\db\\migration\\data\\v310\\timezone_p2\";i:3;s:52:\"\\phpbb\\db\\migration\\data\\v310\\reported_posts_display\";i:4;s:46:\"\\phpbb\\db\\migration\\data\\v310\\migrations_table\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v310\\extensions', 'a:1:{i:0;s:44:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_11\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v310\\extensions_version_check_force_unstable', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\dev\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v310\\forgot_password', 'a:1:{i:0;s:44:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_11\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v310\\gold', 'a:2:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\rc6\";i:1;s:40:\"\\phpbb\\db\\migration\\data\\v310\\bot_update\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v310\\jquery_update', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\dev\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v310\\jquery_update2', 'a:1:{i:0;s:43:\"\\phpbb\\db\\migration\\data\\v310\\jquery_update\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v310\\live_searches_config', 'a:0:{}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v310\\migrations_table', 'a:0:{}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v310\\mod_rewrite', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\dev\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v310\\mysql_fulltext_drop', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\dev\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v310\\namespaces', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\dev\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v310\\notification_options_reconvert', 'a:1:{i:0;s:54:\"\\phpbb\\db\\migration\\data\\v310\\notifications_schema_fix\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v310\\notifications', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\dev\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v310\\notifications_cron', 'a:1:{i:0;s:43:\"\\phpbb\\db\\migration\\data\\v310\\notifications\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v310\\notifications_cron_p2', 'a:1:{i:0;s:48:\"\\phpbb\\db\\migration\\data\\v310\\notifications_cron\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v310\\notifications_schema_fix', 'a:1:{i:0;s:43:\"\\phpbb\\db\\migration\\data\\v310\\notifications\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v310\\notifications_use_full_name', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\rc3\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v310\\passwords', 'a:1:{i:0;s:44:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_11\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v310\\passwords_convert_p1', 'a:1:{i:0;s:42:\"\\phpbb\\db\\migration\\data\\v310\\passwords_p2\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v310\\passwords_convert_p2', 'a:1:{i:0;s:50:\"\\phpbb\\db\\migration\\data\\v310\\passwords_convert_p1\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v310\\passwords_p2', 'a:1:{i:0;s:39:\"\\phpbb\\db\\migration\\data\\v310\\passwords\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v310\\plupload', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\dev\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v310\\postgres_fulltext_drop', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\dev\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v310\\profilefield_aol', 'a:1:{i:0;s:56:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_yahoo_cleanup\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v310\\profilefield_aol_cleanup', 'a:1:{i:0;s:46:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_aol\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v310\\profilefield_change_load_settings', 'a:1:{i:0;s:54:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_aol_cleanup\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v310\\profilefield_cleanup', 'a:2:{i:0;s:52:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_interests\";i:1;s:53:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_occupation\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v310\\profilefield_contact_field', 'a:1:{i:0;s:56:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_on_memberlist\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v310\\profilefield_facebook', 'a:3:{i:0;s:56:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_contact_field\";i:1;s:55:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_show_novalue\";i:2;s:48:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_types\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v310\\profilefield_field_validation_length', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\rc3\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v310\\profilefield_googleplus', 'a:3:{i:0;s:56:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_contact_field\";i:1;s:55:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_show_novalue\";i:2;s:48:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_types\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v310\\profilefield_icq', 'a:1:{i:0;s:56:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_contact_field\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v310\\profilefield_icq_cleanup', 'a:1:{i:0;s:46:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_icq\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v310\\profilefield_interests', 'a:2:{i:0;s:48:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_types\";i:1;s:55:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_show_novalue\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v310\\profilefield_location', 'a:2:{i:0;s:48:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_types\";i:1;s:56:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_on_memberlist\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v310\\profilefield_location_cleanup', 'a:1:{i:0;s:51:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_location\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v310\\profilefield_occupation', 'a:1:{i:0;s:52:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_interests\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v310\\profilefield_on_memberlist', 'a:1:{i:0;s:50:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_cleanup\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v310\\profilefield_show_novalue', 'a:1:{i:0;s:48:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_types\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v310\\profilefield_skype', 'a:3:{i:0;s:56:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_contact_field\";i:1;s:55:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_show_novalue\";i:2;s:48:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_types\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v310\\profilefield_twitter', 'a:3:{i:0;s:56:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_contact_field\";i:1;s:55:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_show_novalue\";i:2;s:48:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_types\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v310\\profilefield_types', 'a:1:{i:0;s:36:\"\\phpbb\\db\\migration\\data\\v310\\alpha2\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v310\\profilefield_website', 'a:2:{i:0;s:56:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_on_memberlist\";i:1;s:54:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_icq_cleanup\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v310\\profilefield_website_cleanup', 'a:1:{i:0;s:50:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_website\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v310\\profilefield_wlm', 'a:1:{i:0;s:58:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_website_cleanup\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v310\\profilefield_wlm_cleanup', 'a:1:{i:0;s:46:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_wlm\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v310\\profilefield_yahoo', 'a:1:{i:0;s:54:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_wlm_cleanup\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v310\\profilefield_yahoo_cleanup', 'a:1:{i:0;s:48:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_yahoo\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v310\\profilefield_youtube', 'a:3:{i:0;s:56:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_contact_field\";i:1;s:55:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_show_novalue\";i:2;s:48:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_types\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v310\\prune_shadow_topics', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\dev\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v310\\rc1', 'a:9:{i:0;s:35:\"\\phpbb\\db\\migration\\data\\v310\\beta4\";i:1;s:54:\"\\phpbb\\db\\migration\\data\\v310\\contact_admin_acp_module\";i:2;s:48:\"\\phpbb\\db\\migration\\data\\v310\\contact_admin_form\";i:3;s:50:\"\\phpbb\\db\\migration\\data\\v310\\passwords_convert_p2\";i:4;s:51:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_facebook\";i:5;s:53:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_googleplus\";i:6;s:48:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_skype\";i:7;s:50:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_twitter\";i:8;s:50:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_youtube\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v310\\rc2', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\rc1\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v310\\rc3', 'a:5:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\rc2\";i:1;s:45:\"\\phpbb\\db\\migration\\data\\v310\\captcha_plugins\";i:2;s:53:\"\\phpbb\\db\\migration\\data\\v310\\rename_too_long_indexes\";i:3;s:41:\"\\phpbb\\db\\migration\\data\\v310\\search_type\";i:4;s:49:\"\\phpbb\\db\\migration\\data\\v310\\topic_sort_username\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v310\\rc4', 'a:2:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\rc3\";i:1;s:57:\"\\phpbb\\db\\migration\\data\\v310\\notifications_use_full_name\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v310\\rc5', 'a:3:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\rc4\";i:1;s:66:\"\\phpbb\\db\\migration\\data\\v310\\profilefield_field_validation_length\";i:2;s:53:\"\\phpbb\\db\\migration\\data\\v310\\remove_acp_styles_cache\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v310\\rc6', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\rc5\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v310\\remove_acp_styles_cache', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\rc4\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v310\\rename_too_long_indexes', 'a:1:{i:0;s:43:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_0\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v310\\reported_posts_display', 'a:1:{i:0;s:44:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_11\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v310\\reset_missing_captcha_plugin', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\dev\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v310\\search_type', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\dev\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v310\\signature_module_auth', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\dev\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v310\\soft_delete_mod_convert', 'a:1:{i:0;s:36:\"\\phpbb\\db\\migration\\data\\v310\\alpha3\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v310\\soft_delete_mod_convert2', 'a:1:{i:0;s:53:\"\\phpbb\\db\\migration\\data\\v310\\soft_delete_mod_convert\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v310\\softdelete_mcp_modules', 'a:2:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\dev\";i:1;s:43:\"\\phpbb\\db\\migration\\data\\v310\\softdelete_p2\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v310\\softdelete_p1', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\dev\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v310\\softdelete_p2', 'a:2:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\dev\";i:1;s:43:\"\\phpbb\\db\\migration\\data\\v310\\softdelete_p1\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v310\\style_update_p1', 'a:1:{i:0;s:44:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_11\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v310\\style_update_p2', 'a:1:{i:0;s:45:\"\\phpbb\\db\\migration\\data\\v310\\style_update_p1\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v310\\teampage', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\dev\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v310\\timezone', 'a:1:{i:0;s:44:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_11\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v310\\timezone_p2', 'a:1:{i:0;s:38:\"\\phpbb\\db\\migration\\data\\v310\\timezone\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v310\\topic_sort_username', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\dev\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v310\\ucp_popuppm_module', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v310\\dev\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v31x\\add_jabber_ssl_context_config_options', 'a:1:{i:0;s:35:\"\\phpbb\\db\\migration\\data\\v31x\\v3110\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v31x\\add_latest_topics_index', 'a:1:{i:0;s:35:\"\\phpbb\\db\\migration\\data\\v31x\\v3110\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v31x\\add_log_time_index', 'a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v31x\\v319\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v31x\\add_smtp_ssl_context_config_options', 'a:1:{i:0;s:35:\"\\phpbb\\db\\migration\\data\\v31x\\v3110\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v31x\\increase_size_of_dateformat', 'a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v31x\\v317\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v31x\\increase_size_of_emotion', 'a:1:{i:0;s:35:\"\\phpbb\\db\\migration\\data\\v31x\\v3110\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v31x\\m_pm_report', 'a:1:{i:0;s:37:\"\\phpbb\\db\\migration\\data\\v31x\\v316rc1\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v31x\\m_softdelete_global', 'a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v31x\\v311\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v31x\\plupload_last_gc_dynamic', 'a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v31x\\v312\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v31x\\profilefield_remove_underscore_from_alpha', 'a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v31x\\v311\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v31x\\profilefield_yahoo_update_url', 'a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v31x\\v312\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v31x\\remove_duplicate_migrations', 'a:1:{i:0;s:35:\"\\phpbb\\db\\migration\\data\\v31x\\v3110\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v31x\\style_update', 'a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v310\\gold\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v31x\\update_custom_bbcodes_with_idn', 'a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v31x\\v312\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v31x\\update_hashes', 'a:1:{i:0;s:35:\"\\phpbb\\db\\migration\\data\\v31x\\v3110\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v31x\\v311', 'a:2:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v310\\gold\";i:1;s:42:\"\\phpbb\\db\\migration\\data\\v31x\\style_update\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v31x\\v3110', 'a:1:{i:0;s:38:\"\\phpbb\\db\\migration\\data\\v31x\\v3110rc1\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v31x\\v3110rc1', 'a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v31x\\v319\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v31x\\v3111', 'a:1:{i:0;s:38:\"\\phpbb\\db\\migration\\data\\v31x\\v3111rc1\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v31x\\v3111rc1', 'a:8:{i:0;s:35:\"\\phpbb\\db\\migration\\data\\v31x\\v3110\";i:1;s:48:\"\\phpbb\\db\\migration\\data\\v31x\\add_log_time_index\";i:2;s:54:\"\\phpbb\\db\\migration\\data\\v31x\\increase_size_of_emotion\";i:3;s:67:\"\\phpbb\\db\\migration\\data\\v31x\\add_jabber_ssl_context_config_options\";i:4;s:65:\"\\phpbb\\db\\migration\\data\\v31x\\add_smtp_ssl_context_config_options\";i:5;s:43:\"\\phpbb\\db\\migration\\data\\v31x\\update_hashes\";i:6;s:57:\"\\phpbb\\db\\migration\\data\\v31x\\remove_duplicate_migrations\";i:7;s:53:\"\\phpbb\\db\\migration\\data\\v31x\\add_latest_topics_index\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v31x\\v3112', 'a:1:{i:0;s:35:\"\\phpbb\\db\\migration\\data\\v31x\\v3111\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v31x\\v312', 'a:1:{i:0;s:37:\"\\phpbb\\db\\migration\\data\\v31x\\v312rc1\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v31x\\v312rc1', 'a:2:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v31x\\v311\";i:1;s:49:\"\\phpbb\\db\\migration\\data\\v31x\\m_softdelete_global\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v31x\\v313', 'a:1:{i:0;s:37:\"\\phpbb\\db\\migration\\data\\v31x\\v313rc2\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v31x\\v313rc1', 'a:5:{i:0;s:48:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_13_rc1\";i:1;s:54:\"\\phpbb\\db\\migration\\data\\v31x\\plupload_last_gc_dynamic\";i:2;s:71:\"\\phpbb\\db\\migration\\data\\v31x\\profilefield_remove_underscore_from_alpha\";i:3;s:59:\"\\phpbb\\db\\migration\\data\\v31x\\profilefield_yahoo_update_url\";i:4;s:60:\"\\phpbb\\db\\migration\\data\\v31x\\update_custom_bbcodes_with_idn\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v31x\\v313rc2', 'a:2:{i:0;s:48:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_13_pl1\";i:1;s:37:\"\\phpbb\\db\\migration\\data\\v31x\\v313rc1\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v31x\\v314', 'a:2:{i:0;s:44:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_14\";i:1;s:37:\"\\phpbb\\db\\migration\\data\\v31x\\v314rc2\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v31x\\v314rc1', 'a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v31x\\v313\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v31x\\v314rc2', 'a:2:{i:0;s:48:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_14_rc1\";i:1;s:37:\"\\phpbb\\db\\migration\\data\\v31x\\v314rc1\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v31x\\v315', 'a:1:{i:0;s:37:\"\\phpbb\\db\\migration\\data\\v31x\\v315rc1\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v31x\\v315rc1', 'a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v31x\\v314\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v31x\\v316', 'a:1:{i:0;s:37:\"\\phpbb\\db\\migration\\data\\v31x\\v316rc1\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v31x\\v316rc1', 'a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v31x\\v315\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v31x\\v317', 'a:1:{i:0;s:37:\"\\phpbb\\db\\migration\\data\\v31x\\v317rc1\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v31x\\v317pl1', 'a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v31x\\v317\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v31x\\v317rc1', 'a:2:{i:0;s:41:\"\\phpbb\\db\\migration\\data\\v31x\\m_pm_report\";i:1;s:34:\"\\phpbb\\db\\migration\\data\\v31x\\v316\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v31x\\v318', 'a:1:{i:0;s:37:\"\\phpbb\\db\\migration\\data\\v31x\\v318rc1\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v31x\\v318rc1', 'a:2:{i:0;s:57:\"\\phpbb\\db\\migration\\data\\v31x\\increase_size_of_dateformat\";i:1;s:37:\"\\phpbb\\db\\migration\\data\\v31x\\v317pl1\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v31x\\v319', 'a:1:{i:0;s:37:\"\\phpbb\\db\\migration\\data\\v31x\\v319rc1\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v31x\\v319rc1', 'a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v31x\\v318\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v320\\add_help_phpbb', 'a:1:{i:0;s:37:\"\\phpbb\\db\\migration\\data\\v320\\v320rc1\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v320\\allowed_schemes_links', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v320\\dev\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v320\\announce_global_permission', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v320\\dev\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v320\\cookie_notice', 'a:1:{i:0;s:37:\"\\phpbb\\db\\migration\\data\\v320\\v320rc2\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v320\\default_data_type_ids', 'a:2:{i:0;s:36:\"\\phpbb\\db\\migration\\data\\v320\\v320a2\";i:1;s:42:\"\\phpbb\\db\\migration\\data\\v320\\oauth_states\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v320\\dev', 'a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v31x\\v316\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v320\\font_awesome_update', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v320\\dev\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v320\\icons_alt', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v320\\dev\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v320\\log_post_id', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v320\\dev\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v320\\notifications_board', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v320\\dev\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v320\\oauth_states', 'a:1:{i:0;s:49:\"\\phpbb\\db\\migration\\data\\v310\\auth_provider_oauth\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v320\\remote_upload_validation', 'a:1:{i:0;s:36:\"\\phpbb\\db\\migration\\data\\v320\\v320a2\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v320\\remove_outdated_media', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v320\\dev\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v320\\remove_profilefield_wlm', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v320\\dev\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v320\\report_id_auto_increment', 'a:1:{i:0;s:51:\"\\phpbb\\db\\migration\\data\\v320\\default_data_type_ids\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v320\\text_reparser', 'a:2:{i:0;s:48:\"\\phpbb\\db\\migration\\data\\v310\\contact_admin_form\";i:1;s:51:\"\\phpbb\\db\\migration\\data\\v320\\allowed_schemes_links\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v320\\v320', 'a:2:{i:0;s:54:\"\\phpbb\\db\\migration\\data\\v31x\\increase_size_of_emotion\";i:1;s:43:\"\\phpbb\\db\\migration\\data\\v320\\cookie_notice\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v320\\v320a1', 'a:9:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v320\\dev\";i:1;s:51:\"\\phpbb\\db\\migration\\data\\v320\\allowed_schemes_links\";i:2;s:56:\"\\phpbb\\db\\migration\\data\\v320\\announce_global_permission\";i:3;s:53:\"\\phpbb\\db\\migration\\data\\v320\\remove_profilefield_wlm\";i:4;s:49:\"\\phpbb\\db\\migration\\data\\v320\\font_awesome_update\";i:5;s:39:\"\\phpbb\\db\\migration\\data\\v320\\icons_alt\";i:6;s:41:\"\\phpbb\\db\\migration\\data\\v320\\log_post_id\";i:7;s:51:\"\\phpbb\\db\\migration\\data\\v320\\remove_outdated_media\";i:8;s:49:\"\\phpbb\\db\\migration\\data\\v320\\notifications_board\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v320\\v320a2', 'a:3:{i:0;s:37:\"\\phpbb\\db\\migration\\data\\v31x\\v317rc1\";i:1;s:43:\"\\phpbb\\db\\migration\\data\\v320\\text_reparser\";i:2;s:36:\"\\phpbb\\db\\migration\\data\\v320\\v320a1\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v320\\v320b1', 'a:4:{i:0;s:37:\"\\phpbb\\db\\migration\\data\\v31x\\v317pl1\";i:1;s:36:\"\\phpbb\\db\\migration\\data\\v320\\v320a2\";i:2;s:57:\"\\phpbb\\db\\migration\\data\\v31x\\increase_size_of_dateformat\";i:3;s:51:\"\\phpbb\\db\\migration\\data\\v320\\default_data_type_ids\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v320\\v320b2', 'a:3:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v31x\\v318\";i:1;s:36:\"\\phpbb\\db\\migration\\data\\v320\\v320b1\";i:2;s:54:\"\\phpbb\\db\\migration\\data\\v320\\remote_upload_validation\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v320\\v320rc1', 'a:3:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v31x\\v319\";i:1;s:54:\"\\phpbb\\db\\migration\\data\\v320\\report_id_auto_increment\";i:2;s:36:\"\\phpbb\\db\\migration\\data\\v320\\v320b2\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v320\\v320rc2', 'a:3:{i:0;s:57:\"\\phpbb\\db\\migration\\data\\v31x\\remove_duplicate_migrations\";i:1;s:48:\"\\phpbb\\db\\migration\\data\\v31x\\add_log_time_index\";i:2;s:44:\"\\phpbb\\db\\migration\\data\\v320\\add_help_phpbb\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v32x\\cookie_notice_p2', 'a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v320\\v320\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v32x\\disable_remote_avatar', 'a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v32x\\v325\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v32x\\email_force_sender', 'a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v32x\\v321\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v32x\\enable_accurate_pm_button', 'a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v32x\\v322\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v32x\\f_list_topics_permission_add', 'a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v32x\\v321\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v32x\\fix_user_styles', 'a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v320\\v320\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v32x\\forum_topics_per_page_type', 'a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v32x\\v323\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v32x\\jquery_update', 'a:1:{i:0;s:37:\"\\phpbb\\db\\migration\\data\\v32x\\v325rc1\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v32x\\load_user_activity_limit', 'a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v320\\v320\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v32x\\merge_duplicate_bbcodes', 'a:0:{}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v32x\\remove_imagick', 'a:1:{i:0;s:37:\"\\phpbb\\db\\migration\\data\\v32x\\v324rc1\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v32x\\smtp_dynamic_data', 'a:1:{i:0;s:37:\"\\phpbb\\db\\migration\\data\\v32x\\v326rc1\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v32x\\timezone_p3', 'a:1:{i:0;s:38:\"\\phpbb\\db\\migration\\data\\v310\\timezone\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v32x\\update_prosilver_bitfield', 'a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v32x\\v321\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v32x\\user_emoji_permission', 'a:1:{i:0;s:37:\"\\phpbb\\db\\migration\\data\\v32x\\v329rc1\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v32x\\user_notifications_table_index_p1', 'a:1:{i:0;s:46:\"\\phpbb\\db\\migration\\data\\v32x\\cookie_notice_p2\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v32x\\user_notifications_table_index_p2', 'a:1:{i:0;s:63:\"\\phpbb\\db\\migration\\data\\v32x\\user_notifications_table_index_p1\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v32x\\user_notifications_table_index_p3', 'a:1:{i:0;s:63:\"\\phpbb\\db\\migration\\data\\v32x\\user_notifications_table_index_p2\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v32x\\user_notifications_table_reduce_column_sizes', 'a:1:{i:0;s:63:\"\\phpbb\\db\\migration\\data\\v32x\\user_notifications_table_index_p3\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v32x\\user_notifications_table_remove_duplicates', 'a:1:{i:0;s:65:\"\\phpbb\\db\\migration\\data\\v32x\\user_notifications_table_temp_index\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v32x\\user_notifications_table_temp_index', 'a:1:{i:0;s:74:\"\\phpbb\\db\\migration\\data\\v32x\\user_notifications_table_reduce_column_sizes\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v32x\\user_notifications_table_unique_index', 'a:1:{i:0;s:72:\"\\phpbb\\db\\migration\\data\\v32x\\user_notifications_table_remove_duplicates\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v32x\\v321', 'a:2:{i:0;s:35:\"\\phpbb\\db\\migration\\data\\v31x\\v3111\";i:1;s:37:\"\\phpbb\\db\\migration\\data\\v32x\\v321rc1\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v32x\\v321rc1', 'a:4:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v320\\v320\";i:1;s:38:\"\\phpbb\\db\\migration\\data\\v31x\\v3111rc1\";i:2;s:54:\"\\phpbb\\db\\migration\\data\\v32x\\load_user_activity_limit\";i:3;s:67:\"\\phpbb\\db\\migration\\data\\v32x\\user_notifications_table_unique_index\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v32x\\v322', 'a:2:{i:0;s:35:\"\\phpbb\\db\\migration\\data\\v31x\\v3112\";i:1;s:37:\"\\phpbb\\db\\migration\\data\\v32x\\v322rc1\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v32x\\v322rc1', 'a:6:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v32x\\v321\";i:1;s:45:\"\\phpbb\\db\\migration\\data\\v32x\\fix_user_styles\";i:2;s:55:\"\\phpbb\\db\\migration\\data\\v32x\\update_prosilver_bitfield\";i:3;s:48:\"\\phpbb\\db\\migration\\data\\v32x\\email_force_sender\";i:4;s:58:\"\\phpbb\\db\\migration\\data\\v32x\\f_list_topics_permission_add\";i:5;s:53:\"\\phpbb\\db\\migration\\data\\v32x\\merge_duplicate_bbcodes\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v32x\\v323', 'a:1:{i:0;s:37:\"\\phpbb\\db\\migration\\data\\v32x\\v323rc2\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v32x\\v323rc1', 'a:2:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v32x\\v322\";i:1;s:55:\"\\phpbb\\db\\migration\\data\\v32x\\enable_accurate_pm_button\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v32x\\v323rc2', 'a:1:{i:0;s:37:\"\\phpbb\\db\\migration\\data\\v32x\\v323rc1\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v32x\\v324', 'a:2:{i:0;s:37:\"\\phpbb\\db\\migration\\data\\v32x\\v324rc1\";i:1;s:44:\"\\phpbb\\db\\migration\\data\\v32x\\remove_imagick\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v32x\\v324rc1', 'a:2:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v32x\\v323\";i:1;s:56:\"\\phpbb\\db\\migration\\data\\v32x\\forum_topics_per_page_type\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v32x\\v325', 'a:2:{i:0;s:37:\"\\phpbb\\db\\migration\\data\\v32x\\v325rc1\";i:1;s:43:\"\\phpbb\\db\\migration\\data\\v32x\\jquery_update\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v32x\\v325rc1', 'a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v32x\\v324\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v32x\\v326', 'a:3:{i:0;s:37:\"\\phpbb\\db\\migration\\data\\v32x\\v326rc1\";i:1;s:51:\"\\phpbb\\db\\migration\\data\\v32x\\disable_remote_avatar\";i:2;s:47:\"\\phpbb\\db\\migration\\data\\v32x\\smtp_dynamic_data\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v32x\\v326rc1', 'a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v32x\\v325\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v32x\\v327', 'a:1:{i:0;s:37:\"\\phpbb\\db\\migration\\data\\v32x\\v327rc1\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v32x\\v327rc1', 'a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v32x\\v326\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v32x\\v328', 'a:1:{i:0;s:37:\"\\phpbb\\db\\migration\\data\\v32x\\v328rc1\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v32x\\v328rc1', 'a:2:{i:0;s:41:\"\\phpbb\\db\\migration\\data\\v32x\\timezone_p3\";i:1;s:34:\"\\phpbb\\db\\migration\\data\\v32x\\v327\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v32x\\v329', 'a:2:{i:0;s:37:\"\\phpbb\\db\\migration\\data\\v32x\\v329rc1\";i:1;s:51:\"\\phpbb\\db\\migration\\data\\v32x\\user_emoji_permission\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v32x\\v329rc1', 'a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v32x\\v328\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v330\\add_display_unapproved_posts_config', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v330\\dev\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v330\\dev', 'a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v32x\\v327\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v330\\forums_legend_limit', 'a:1:{i:0;s:36:\"\\phpbb\\db\\migration\\data\\v330\\v330b1\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v330\\jquery_update', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v330\\dev\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v330\\remove_attachment_flash', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v330\\dev\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v330\\remove_email_hash', 'a:1:{i:0;s:43:\"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_0\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v330\\remove_max_pass_chars', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v330\\dev\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v330\\reset_password', 'a:1:{i:0;s:33:\"\\phpbb\\db\\migration\\data\\v330\\dev\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v330\\v330', 'a:2:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v32x\\v329\";i:1;s:37:\"\\phpbb\\db\\migration\\data\\v330\\v330rc1\";}', 1, 1, '', 1591025468, 1591025468);
INSERT INTO `phpbb_migrations` (`migration_name`, `migration_depends_on`, `migration_schema_done`, `migration_data_done`, `migration_data_state`, `migration_start_time`, `migration_end_time`) VALUES
('\\phpbb\\db\\migration\\data\\v330\\v330b1', 'a:6:{i:0;s:43:\"\\phpbb\\db\\migration\\data\\v330\\jquery_update\";i:1;s:44:\"\\phpbb\\db\\migration\\data\\v330\\reset_password\";i:2;s:53:\"\\phpbb\\db\\migration\\data\\v330\\remove_attachment_flash\";i:3;s:51:\"\\phpbb\\db\\migration\\data\\v330\\remove_max_pass_chars\";i:4;s:34:\"\\phpbb\\db\\migration\\data\\v32x\\v328\";i:5;s:33:\"\\phpbb\\db\\migration\\data\\v330\\dev\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v330\\v330b2', 'a:4:{i:0;s:65:\"\\phpbb\\db\\migration\\data\\v330\\add_display_unapproved_posts_config\";i:1;s:49:\"\\phpbb\\db\\migration\\data\\v330\\forums_legend_limit\";i:2;s:47:\"\\phpbb\\db\\migration\\data\\v330\\remove_email_hash\";i:3;s:36:\"\\phpbb\\db\\migration\\data\\v330\\v330b1\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\db\\migration\\data\\v330\\v330rc1', 'a:1:{i:0;s:36:\"\\phpbb\\db\\migration\\data\\v330\\v330b2\";}', 1, 1, '', 1591025468, 1591025468),
('\\phpbb\\viglink\\migrations\\viglink_ask_admin', 'a:1:{i:0;s:41:\"\\phpbb\\viglink\\migrations\\viglink_data_v2\";}', 1, 1, '', 1591025471, 1591025471),
('\\phpbb\\viglink\\migrations\\viglink_ask_admin_wait', 'a:1:{i:0;s:43:\"\\phpbb\\viglink\\migrations\\viglink_ask_admin\";}', 1, 1, '', 1591025471, 1591025471),
('\\phpbb\\viglink\\migrations\\viglink_cron', 'a:1:{i:0;s:38:\"\\phpbb\\viglink\\migrations\\viglink_data\";}', 1, 1, '', 0, 0),
('\\phpbb\\viglink\\migrations\\viglink_data', 'a:1:{i:0;s:34:\"\\phpbb\\db\\migration\\data\\v31x\\v312\";}', 1, 1, '', 1591025470, 1591025470),
('\\phpbb\\viglink\\migrations\\viglink_data_v2', 'a:1:{i:0;s:38:\"\\phpbb\\viglink\\migrations\\viglink_data\";}', 1, 1, '', 1591025471, 1591025471);

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_moderator_cache`
--

CREATE TABLE `phpbb_moderator_cache` (
  `forum_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `username` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `group_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `group_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_on_index` tinyint(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_modules`
--

CREATE TABLE `phpbb_modules` (
  `module_id` mediumint(8) UNSIGNED NOT NULL,
  `module_enabled` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `module_display` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `module_basename` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `module_class` varchar(10) COLLATE utf8_bin NOT NULL DEFAULT '',
  `parent_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `left_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `right_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `module_langname` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `module_mode` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `module_auth` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbb_modules`
--

INSERT INTO `phpbb_modules` (`module_id`, `module_enabled`, `module_display`, `module_basename`, `module_class`, `parent_id`, `left_id`, `right_id`, `module_langname`, `module_mode`, `module_auth`) VALUES
(1, 1, 1, '', 'acp', 0, 1, 68, 'ACP_CAT_GENERAL', '', ''),
(2, 1, 1, '', 'acp', 1, 4, 17, 'ACP_QUICK_ACCESS', '', ''),
(3, 1, 1, '', 'acp', 1, 18, 45, 'ACP_BOARD_CONFIGURATION', '', ''),
(4, 1, 1, '', 'acp', 1, 46, 53, 'ACP_CLIENT_COMMUNICATION', '', ''),
(5, 1, 1, '', 'acp', 1, 54, 67, 'ACP_SERVER_CONFIGURATION', '', ''),
(6, 1, 1, '', 'acp', 0, 69, 88, 'ACP_CAT_FORUMS', '', ''),
(7, 1, 1, '', 'acp', 6, 70, 75, 'ACP_MANAGE_FORUMS', '', ''),
(8, 1, 1, '', 'acp', 6, 76, 87, 'ACP_FORUM_BASED_PERMISSIONS', '', ''),
(9, 1, 1, '', 'acp', 0, 89, 116, 'ACP_CAT_POSTING', '', ''),
(10, 1, 1, '', 'acp', 9, 90, 103, 'ACP_MESSAGES', '', ''),
(11, 1, 1, '', 'acp', 9, 104, 115, 'ACP_ATTACHMENTS', '', ''),
(12, 1, 1, '', 'acp', 0, 117, 174, 'ACP_CAT_USERGROUP', '', ''),
(13, 1, 1, '', 'acp', 12, 118, 153, 'ACP_CAT_USERS', '', ''),
(14, 1, 1, '', 'acp', 12, 154, 163, 'ACP_GROUPS', '', ''),
(15, 1, 1, '', 'acp', 12, 164, 173, 'ACP_USER_SECURITY', '', ''),
(16, 1, 1, '', 'acp', 0, 175, 224, 'ACP_CAT_PERMISSIONS', '', ''),
(17, 1, 1, '', 'acp', 16, 178, 187, 'ACP_GLOBAL_PERMISSIONS', '', ''),
(18, 1, 1, '', 'acp', 16, 188, 199, 'ACP_FORUM_BASED_PERMISSIONS', '', ''),
(19, 1, 1, '', 'acp', 16, 200, 209, 'ACP_PERMISSION_ROLES', '', ''),
(20, 1, 1, '', 'acp', 16, 210, 223, 'ACP_PERMISSION_MASKS', '', ''),
(21, 1, 1, '', 'acp', 0, 225, 240, 'ACP_CAT_CUSTOMISE', '', ''),
(22, 1, 1, '', 'acp', 21, 230, 235, 'ACP_STYLE_MANAGEMENT', '', ''),
(23, 1, 1, '', 'acp', 21, 226, 229, 'ACP_EXTENSION_MANAGEMENT', '', ''),
(24, 1, 1, '', 'acp', 21, 236, 239, 'ACP_LANGUAGE', '', ''),
(25, 1, 1, '', 'acp', 0, 241, 260, 'ACP_CAT_MAINTENANCE', '', ''),
(26, 1, 1, '', 'acp', 25, 242, 251, 'ACP_FORUM_LOGS', '', ''),
(27, 1, 1, '', 'acp', 25, 252, 259, 'ACP_CAT_DATABASE', '', ''),
(28, 1, 1, '', 'acp', 0, 261, 284, 'ACP_CAT_SYSTEM', '', ''),
(29, 1, 1, '', 'acp', 28, 262, 265, 'ACP_AUTOMATION', '', ''),
(30, 1, 1, '', 'acp', 28, 266, 275, 'ACP_GENERAL_TASKS', '', ''),
(31, 1, 1, '', 'acp', 28, 276, 283, 'ACP_MODULE_MANAGEMENT', '', ''),
(32, 1, 1, '', 'acp', 0, 285, 286, 'ACP_CAT_DOT_MODS', '', ''),
(33, 1, 1, 'acp_attachments', 'acp', 3, 19, 20, 'ACP_ATTACHMENT_SETTINGS', 'attach', 'acl_a_attach'),
(34, 1, 1, 'acp_attachments', 'acp', 11, 105, 106, 'ACP_ATTACHMENT_SETTINGS', 'attach', 'acl_a_attach'),
(35, 1, 1, 'acp_attachments', 'acp', 11, 107, 108, 'ACP_MANAGE_EXTENSIONS', 'extensions', 'acl_a_attach'),
(36, 1, 1, 'acp_attachments', 'acp', 11, 109, 110, 'ACP_EXTENSION_GROUPS', 'ext_groups', 'acl_a_attach'),
(37, 1, 1, 'acp_attachments', 'acp', 11, 111, 112, 'ACP_ORPHAN_ATTACHMENTS', 'orphan', 'acl_a_attach'),
(38, 1, 1, 'acp_attachments', 'acp', 11, 113, 114, 'ACP_MANAGE_ATTACHMENTS', 'manage', 'acl_a_attach'),
(39, 1, 1, 'acp_ban', 'acp', 15, 165, 166, 'ACP_BAN_EMAILS', 'email', 'acl_a_ban'),
(40, 1, 1, 'acp_ban', 'acp', 15, 167, 168, 'ACP_BAN_IPS', 'ip', 'acl_a_ban'),
(41, 1, 1, 'acp_ban', 'acp', 15, 169, 170, 'ACP_BAN_USERNAMES', 'user', 'acl_a_ban'),
(42, 1, 1, 'acp_bbcodes', 'acp', 10, 91, 92, 'ACP_BBCODES', 'bbcodes', 'acl_a_bbcode'),
(43, 1, 1, 'acp_board', 'acp', 3, 21, 22, 'ACP_BOARD_SETTINGS', 'settings', 'acl_a_board'),
(44, 1, 1, 'acp_board', 'acp', 3, 23, 24, 'ACP_BOARD_FEATURES', 'features', 'acl_a_board'),
(45, 1, 1, 'acp_board', 'acp', 3, 25, 26, 'ACP_AVATAR_SETTINGS', 'avatar', 'acl_a_board'),
(46, 1, 1, 'acp_board', 'acp', 3, 27, 28, 'ACP_MESSAGE_SETTINGS', 'message', 'acl_a_board'),
(47, 1, 1, 'acp_board', 'acp', 10, 93, 94, 'ACP_MESSAGE_SETTINGS', 'message', 'acl_a_board'),
(48, 1, 1, 'acp_board', 'acp', 3, 29, 30, 'ACP_POST_SETTINGS', 'post', 'acl_a_board'),
(49, 1, 1, 'acp_board', 'acp', 10, 95, 96, 'ACP_POST_SETTINGS', 'post', 'acl_a_board'),
(50, 1, 1, 'acp_board', 'acp', 3, 31, 32, 'ACP_SIGNATURE_SETTINGS', 'signature', 'acl_a_board'),
(51, 1, 1, 'acp_board', 'acp', 3, 33, 34, 'ACP_FEED_SETTINGS', 'feed', 'acl_a_board'),
(52, 1, 1, 'acp_board', 'acp', 3, 35, 36, 'ACP_REGISTER_SETTINGS', 'registration', 'acl_a_board'),
(53, 1, 1, 'acp_board', 'acp', 4, 47, 48, 'ACP_AUTH_SETTINGS', 'auth', 'acl_a_server'),
(54, 1, 1, 'acp_board', 'acp', 4, 49, 50, 'ACP_EMAIL_SETTINGS', 'email', 'acl_a_server'),
(55, 1, 1, 'acp_board', 'acp', 5, 55, 56, 'ACP_COOKIE_SETTINGS', 'cookie', 'acl_a_server'),
(56, 1, 1, 'acp_board', 'acp', 5, 57, 58, 'ACP_SERVER_SETTINGS', 'server', 'acl_a_server'),
(57, 1, 1, 'acp_board', 'acp', 5, 59, 60, 'ACP_SECURITY_SETTINGS', 'security', 'acl_a_server'),
(58, 1, 1, 'acp_board', 'acp', 5, 61, 62, 'ACP_LOAD_SETTINGS', 'load', 'acl_a_server'),
(59, 1, 1, 'acp_bots', 'acp', 30, 267, 268, 'ACP_BOTS', 'bots', 'acl_a_bots'),
(60, 1, 1, 'acp_captcha', 'acp', 3, 37, 38, 'ACP_VC_SETTINGS', 'visual', 'acl_a_board'),
(61, 1, 0, 'acp_captcha', 'acp', 3, 39, 40, 'ACP_VC_CAPTCHA_DISPLAY', 'img', 'acl_a_board'),
(62, 1, 1, 'acp_contact', 'acp', 3, 41, 42, 'ACP_CONTACT_SETTINGS', 'contact', 'acl_a_board'),
(63, 1, 1, 'acp_database', 'acp', 27, 253, 254, 'ACP_BACKUP', 'backup', 'acl_a_backup'),
(64, 1, 1, 'acp_database', 'acp', 27, 255, 256, 'ACP_RESTORE', 'restore', 'acl_a_backup'),
(65, 1, 1, 'acp_disallow', 'acp', 15, 171, 172, 'ACP_DISALLOW_USERNAMES', 'usernames', 'acl_a_names'),
(66, 1, 1, 'acp_email', 'acp', 30, 269, 270, 'ACP_MASS_EMAIL', 'email', 'acl_a_email && cfg_email_enable'),
(67, 1, 1, 'acp_extensions', 'acp', 23, 227, 228, 'ACP_EXTENSIONS', 'main', 'acl_a_extensions'),
(68, 1, 1, 'acp_forums', 'acp', 7, 71, 72, 'ACP_MANAGE_FORUMS', 'manage', 'acl_a_forum'),
(69, 1, 1, 'acp_groups', 'acp', 14, 155, 156, 'ACP_GROUPS_MANAGE', 'manage', 'acl_a_group'),
(70, 1, 1, 'acp_groups', 'acp', 14, 157, 158, 'ACP_GROUPS_POSITION', 'position', 'acl_a_group'),
(71, 1, 1, 'acp_help_phpbb', 'acp', 5, 63, 64, 'ACP_HELP_PHPBB', 'help_phpbb', 'acl_a_server'),
(72, 1, 1, 'acp_icons', 'acp', 10, 97, 98, 'ACP_ICONS', 'icons', 'acl_a_icons'),
(73, 1, 1, 'acp_icons', 'acp', 10, 99, 100, 'ACP_SMILIES', 'smilies', 'acl_a_icons'),
(74, 1, 1, 'acp_inactive', 'acp', 13, 119, 120, 'ACP_INACTIVE_USERS', 'list', 'acl_a_user'),
(75, 1, 1, 'acp_jabber', 'acp', 4, 51, 52, 'ACP_JABBER_SETTINGS', 'settings', 'acl_a_jabber'),
(76, 1, 1, 'acp_language', 'acp', 24, 237, 238, 'ACP_LANGUAGE_PACKS', 'lang_packs', 'acl_a_language'),
(77, 1, 1, 'acp_logs', 'acp', 26, 243, 244, 'ACP_ADMIN_LOGS', 'admin', 'acl_a_viewlogs'),
(78, 1, 1, 'acp_logs', 'acp', 26, 245, 246, 'ACP_MOD_LOGS', 'mod', 'acl_a_viewlogs'),
(79, 1, 1, 'acp_logs', 'acp', 26, 247, 248, 'ACP_USERS_LOGS', 'users', 'acl_a_viewlogs'),
(80, 1, 1, 'acp_logs', 'acp', 26, 249, 250, 'ACP_CRITICAL_LOGS', 'critical', 'acl_a_viewlogs'),
(81, 1, 1, 'acp_main', 'acp', 1, 2, 3, 'ACP_INDEX', 'main', ''),
(82, 1, 1, 'acp_modules', 'acp', 31, 277, 278, 'ACP', 'acp', 'acl_a_modules'),
(83, 1, 1, 'acp_modules', 'acp', 31, 279, 280, 'UCP', 'ucp', 'acl_a_modules'),
(84, 1, 1, 'acp_modules', 'acp', 31, 281, 282, 'MCP', 'mcp', 'acl_a_modules'),
(85, 1, 1, 'acp_permission_roles', 'acp', 19, 201, 202, 'ACP_ADMIN_ROLES', 'admin_roles', 'acl_a_roles && acl_a_aauth'),
(86, 1, 1, 'acp_permission_roles', 'acp', 19, 203, 204, 'ACP_USER_ROLES', 'user_roles', 'acl_a_roles && acl_a_uauth'),
(87, 1, 1, 'acp_permission_roles', 'acp', 19, 205, 206, 'ACP_MOD_ROLES', 'mod_roles', 'acl_a_roles && acl_a_mauth'),
(88, 1, 1, 'acp_permission_roles', 'acp', 19, 207, 208, 'ACP_FORUM_ROLES', 'forum_roles', 'acl_a_roles && acl_a_fauth'),
(89, 1, 1, 'acp_permissions', 'acp', 16, 176, 177, 'ACP_PERMISSIONS', 'intro', 'acl_a_authusers || acl_a_authgroups || acl_a_viewauth'),
(90, 1, 0, 'acp_permissions', 'acp', 20, 211, 212, 'ACP_PERMISSION_TRACE', 'trace', 'acl_a_viewauth'),
(91, 1, 1, 'acp_permissions', 'acp', 18, 189, 190, 'ACP_FORUM_PERMISSIONS', 'setting_forum_local', 'acl_a_fauth && (acl_a_authusers || acl_a_authgroups)'),
(92, 1, 1, 'acp_permissions', 'acp', 18, 191, 192, 'ACP_FORUM_PERMISSIONS_COPY', 'setting_forum_copy', 'acl_a_fauth && acl_a_authusers && acl_a_authgroups && acl_a_mauth'),
(93, 1, 1, 'acp_permissions', 'acp', 18, 193, 194, 'ACP_FORUM_MODERATORS', 'setting_mod_local', 'acl_a_mauth && (acl_a_authusers || acl_a_authgroups)'),
(94, 1, 1, 'acp_permissions', 'acp', 17, 179, 180, 'ACP_USERS_PERMISSIONS', 'setting_user_global', 'acl_a_authusers && (acl_a_aauth || acl_a_mauth || acl_a_uauth)'),
(95, 1, 1, 'acp_permissions', 'acp', 13, 123, 124, 'ACP_USERS_PERMISSIONS', 'setting_user_global', 'acl_a_authusers && (acl_a_aauth || acl_a_mauth || acl_a_uauth)'),
(96, 1, 1, 'acp_permissions', 'acp', 18, 195, 196, 'ACP_USERS_FORUM_PERMISSIONS', 'setting_user_local', 'acl_a_authusers && (acl_a_mauth || acl_a_fauth)'),
(97, 1, 1, 'acp_permissions', 'acp', 13, 125, 126, 'ACP_USERS_FORUM_PERMISSIONS', 'setting_user_local', 'acl_a_authusers && (acl_a_mauth || acl_a_fauth)'),
(98, 1, 1, 'acp_permissions', 'acp', 17, 181, 182, 'ACP_GROUPS_PERMISSIONS', 'setting_group_global', 'acl_a_authgroups && (acl_a_aauth || acl_a_mauth || acl_a_uauth)'),
(99, 1, 1, 'acp_permissions', 'acp', 14, 159, 160, 'ACP_GROUPS_PERMISSIONS', 'setting_group_global', 'acl_a_authgroups && (acl_a_aauth || acl_a_mauth || acl_a_uauth)'),
(100, 1, 1, 'acp_permissions', 'acp', 18, 197, 198, 'ACP_GROUPS_FORUM_PERMISSIONS', 'setting_group_local', 'acl_a_authgroups && (acl_a_mauth || acl_a_fauth)'),
(101, 1, 1, 'acp_permissions', 'acp', 14, 161, 162, 'ACP_GROUPS_FORUM_PERMISSIONS', 'setting_group_local', 'acl_a_authgroups && (acl_a_mauth || acl_a_fauth)'),
(102, 1, 1, 'acp_permissions', 'acp', 17, 183, 184, 'ACP_ADMINISTRATORS', 'setting_admin_global', 'acl_a_aauth && (acl_a_authusers || acl_a_authgroups)'),
(103, 1, 1, 'acp_permissions', 'acp', 17, 185, 186, 'ACP_GLOBAL_MODERATORS', 'setting_mod_global', 'acl_a_mauth && (acl_a_authusers || acl_a_authgroups)'),
(104, 1, 1, 'acp_permissions', 'acp', 20, 213, 214, 'ACP_VIEW_ADMIN_PERMISSIONS', 'view_admin_global', 'acl_a_viewauth'),
(105, 1, 1, 'acp_permissions', 'acp', 20, 215, 216, 'ACP_VIEW_USER_PERMISSIONS', 'view_user_global', 'acl_a_viewauth'),
(106, 1, 1, 'acp_permissions', 'acp', 20, 217, 218, 'ACP_VIEW_GLOBAL_MOD_PERMISSIONS', 'view_mod_global', 'acl_a_viewauth'),
(107, 1, 1, 'acp_permissions', 'acp', 20, 219, 220, 'ACP_VIEW_FORUM_MOD_PERMISSIONS', 'view_mod_local', 'acl_a_viewauth'),
(108, 1, 1, 'acp_permissions', 'acp', 20, 221, 222, 'ACP_VIEW_FORUM_PERMISSIONS', 'view_forum_local', 'acl_a_viewauth'),
(109, 1, 1, 'acp_php_info', 'acp', 30, 271, 272, 'ACP_PHP_INFO', 'info', 'acl_a_phpinfo'),
(110, 1, 1, 'acp_profile', 'acp', 13, 127, 128, 'ACP_CUSTOM_PROFILE_FIELDS', 'profile', 'acl_a_profile'),
(111, 1, 1, 'acp_prune', 'acp', 7, 73, 74, 'ACP_PRUNE_FORUMS', 'forums', 'acl_a_prune'),
(112, 1, 1, 'acp_prune', 'acp', 13, 129, 130, 'ACP_PRUNE_USERS', 'users', 'acl_a_userdel'),
(113, 1, 1, 'acp_ranks', 'acp', 13, 131, 132, 'ACP_MANAGE_RANKS', 'ranks', 'acl_a_ranks'),
(114, 1, 1, 'acp_reasons', 'acp', 30, 273, 274, 'ACP_MANAGE_REASONS', 'main', 'acl_a_reasons'),
(115, 1, 1, 'acp_search', 'acp', 5, 65, 66, 'ACP_SEARCH_SETTINGS', 'settings', 'acl_a_search'),
(116, 1, 1, 'acp_search', 'acp', 27, 257, 258, 'ACP_SEARCH_INDEX', 'index', 'acl_a_search'),
(117, 1, 1, 'acp_styles', 'acp', 22, 231, 232, 'ACP_STYLES', 'style', 'acl_a_styles'),
(118, 1, 1, 'acp_styles', 'acp', 22, 233, 234, 'ACP_STYLES_INSTALL', 'install', 'acl_a_styles'),
(119, 1, 1, 'acp_update', 'acp', 29, 263, 264, 'ACP_VERSION_CHECK', 'version_check', 'acl_a_board'),
(120, 1, 1, 'acp_users', 'acp', 13, 121, 122, 'ACP_MANAGE_USERS', 'overview', 'acl_a_user'),
(121, 1, 0, 'acp_users', 'acp', 13, 133, 134, 'ACP_USER_FEEDBACK', 'feedback', 'acl_a_user'),
(122, 1, 0, 'acp_users', 'acp', 13, 135, 136, 'ACP_USER_WARNINGS', 'warnings', 'acl_a_user'),
(123, 1, 0, 'acp_users', 'acp', 13, 137, 138, 'ACP_USER_PROFILE', 'profile', 'acl_a_user'),
(124, 1, 0, 'acp_users', 'acp', 13, 139, 140, 'ACP_USER_PREFS', 'prefs', 'acl_a_user'),
(125, 1, 0, 'acp_users', 'acp', 13, 141, 142, 'ACP_USER_AVATAR', 'avatar', 'acl_a_user'),
(126, 1, 0, 'acp_users', 'acp', 13, 143, 144, 'ACP_USER_RANK', 'rank', 'acl_a_user'),
(127, 1, 0, 'acp_users', 'acp', 13, 145, 146, 'ACP_USER_SIG', 'sig', 'acl_a_user'),
(128, 1, 0, 'acp_users', 'acp', 13, 147, 148, 'ACP_USER_GROUPS', 'groups', 'acl_a_user && acl_a_group'),
(129, 1, 0, 'acp_users', 'acp', 13, 149, 150, 'ACP_USER_PERM', 'perm', 'acl_a_user && acl_a_viewauth'),
(130, 1, 0, 'acp_users', 'acp', 13, 151, 152, 'ACP_USER_ATTACH', 'attach', 'acl_a_user'),
(131, 1, 1, 'acp_words', 'acp', 10, 101, 102, 'ACP_WORDS', 'words', 'acl_a_words'),
(132, 1, 1, 'acp_users', 'acp', 2, 5, 6, 'ACP_MANAGE_USERS', 'overview', 'acl_a_user'),
(133, 1, 1, 'acp_groups', 'acp', 2, 7, 8, 'ACP_GROUPS_MANAGE', 'manage', 'acl_a_group'),
(134, 1, 1, 'acp_forums', 'acp', 2, 9, 10, 'ACP_MANAGE_FORUMS', 'manage', 'acl_a_forum'),
(135, 1, 1, 'acp_logs', 'acp', 2, 11, 12, 'ACP_MOD_LOGS', 'mod', 'acl_a_viewlogs'),
(136, 1, 1, 'acp_bots', 'acp', 2, 13, 14, 'ACP_BOTS', 'bots', 'acl_a_bots'),
(137, 1, 1, 'acp_php_info', 'acp', 2, 15, 16, 'ACP_PHP_INFO', 'info', 'acl_a_phpinfo'),
(138, 1, 1, 'acp_permissions', 'acp', 8, 77, 78, 'ACP_FORUM_PERMISSIONS', 'setting_forum_local', 'acl_a_fauth && (acl_a_authusers || acl_a_authgroups)'),
(139, 1, 1, 'acp_permissions', 'acp', 8, 79, 80, 'ACP_FORUM_PERMISSIONS_COPY', 'setting_forum_copy', 'acl_a_fauth && acl_a_authusers && acl_a_authgroups && acl_a_mauth'),
(140, 1, 1, 'acp_permissions', 'acp', 8, 81, 82, 'ACP_FORUM_MODERATORS', 'setting_mod_local', 'acl_a_mauth && (acl_a_authusers || acl_a_authgroups)'),
(141, 1, 1, 'acp_permissions', 'acp', 8, 83, 84, 'ACP_USERS_FORUM_PERMISSIONS', 'setting_user_local', 'acl_a_authusers && (acl_a_mauth || acl_a_fauth)'),
(142, 1, 1, 'acp_permissions', 'acp', 8, 85, 86, 'ACP_GROUPS_FORUM_PERMISSIONS', 'setting_group_local', 'acl_a_authgroups && (acl_a_mauth || acl_a_fauth)'),
(143, 1, 1, '', 'mcp', 0, 1, 10, 'MCP_MAIN', '', ''),
(144, 1, 1, '', 'mcp', 0, 11, 22, 'MCP_QUEUE', '', ''),
(145, 1, 1, '', 'mcp', 0, 23, 36, 'MCP_REPORTS', '', ''),
(146, 1, 1, '', 'mcp', 0, 37, 42, 'MCP_NOTES', '', ''),
(147, 1, 1, '', 'mcp', 0, 43, 52, 'MCP_WARN', '', ''),
(148, 1, 1, '', 'mcp', 0, 53, 60, 'MCP_LOGS', '', ''),
(149, 1, 1, '', 'mcp', 0, 61, 68, 'MCP_BAN', '', ''),
(150, 1, 1, 'mcp_ban', 'mcp', 149, 62, 63, 'MCP_BAN_USERNAMES', 'user', 'acl_m_ban'),
(151, 1, 1, 'mcp_ban', 'mcp', 149, 64, 65, 'MCP_BAN_IPS', 'ip', 'acl_m_ban'),
(152, 1, 1, 'mcp_ban', 'mcp', 149, 66, 67, 'MCP_BAN_EMAILS', 'email', 'acl_m_ban'),
(153, 1, 1, 'mcp_logs', 'mcp', 148, 54, 55, 'MCP_LOGS_FRONT', 'front', 'acl_m_ || aclf_m_'),
(154, 1, 1, 'mcp_logs', 'mcp', 148, 56, 57, 'MCP_LOGS_FORUM_VIEW', 'forum_logs', 'acl_m_,$id'),
(155, 1, 1, 'mcp_logs', 'mcp', 148, 58, 59, 'MCP_LOGS_TOPIC_VIEW', 'topic_logs', 'acl_m_,$id'),
(156, 1, 1, 'mcp_main', 'mcp', 143, 2, 3, 'MCP_MAIN_FRONT', 'front', ''),
(157, 1, 1, 'mcp_main', 'mcp', 143, 4, 5, 'MCP_MAIN_FORUM_VIEW', 'forum_view', 'acl_m_,$id'),
(158, 1, 1, 'mcp_main', 'mcp', 143, 6, 7, 'MCP_MAIN_TOPIC_VIEW', 'topic_view', 'acl_m_,$id'),
(159, 1, 1, 'mcp_main', 'mcp', 143, 8, 9, 'MCP_MAIN_POST_DETAILS', 'post_details', 'acl_m_,$id || (!$id && aclf_m_)'),
(160, 1, 1, 'mcp_notes', 'mcp', 146, 38, 39, 'MCP_NOTES_FRONT', 'front', ''),
(161, 1, 1, 'mcp_notes', 'mcp', 146, 40, 41, 'MCP_NOTES_USER', 'user_notes', ''),
(162, 1, 1, 'mcp_pm_reports', 'mcp', 145, 30, 31, 'MCP_PM_REPORTS_OPEN', 'pm_reports', 'acl_m_pm_report'),
(163, 1, 1, 'mcp_pm_reports', 'mcp', 145, 32, 33, 'MCP_PM_REPORTS_CLOSED', 'pm_reports_closed', 'acl_m_pm_report'),
(164, 1, 1, 'mcp_pm_reports', 'mcp', 145, 34, 35, 'MCP_PM_REPORT_DETAILS', 'pm_report_details', 'acl_m_pm_report'),
(165, 1, 1, 'mcp_queue', 'mcp', 144, 12, 13, 'MCP_QUEUE_UNAPPROVED_TOPICS', 'unapproved_topics', 'aclf_m_approve'),
(166, 1, 1, 'mcp_queue', 'mcp', 144, 14, 15, 'MCP_QUEUE_UNAPPROVED_POSTS', 'unapproved_posts', 'aclf_m_approve'),
(167, 1, 1, 'mcp_queue', 'mcp', 144, 16, 17, 'MCP_QUEUE_DELETED_TOPICS', 'deleted_topics', 'aclf_m_approve'),
(168, 1, 1, 'mcp_queue', 'mcp', 144, 18, 19, 'MCP_QUEUE_DELETED_POSTS', 'deleted_posts', 'aclf_m_approve'),
(169, 1, 1, 'mcp_queue', 'mcp', 144, 20, 21, 'MCP_QUEUE_APPROVE_DETAILS', 'approve_details', 'acl_m_approve,$id || (!$id && aclf_m_approve)'),
(170, 1, 1, 'mcp_reports', 'mcp', 145, 24, 25, 'MCP_REPORTS_OPEN', 'reports', 'aclf_m_report'),
(171, 1, 1, 'mcp_reports', 'mcp', 145, 26, 27, 'MCP_REPORTS_CLOSED', 'reports_closed', 'aclf_m_report'),
(172, 1, 1, 'mcp_reports', 'mcp', 145, 28, 29, 'MCP_REPORT_DETAILS', 'report_details', 'acl_m_report,$id || (!$id && aclf_m_report)'),
(173, 1, 1, 'mcp_warn', 'mcp', 147, 44, 45, 'MCP_WARN_FRONT', 'front', 'aclf_m_warn'),
(174, 1, 1, 'mcp_warn', 'mcp', 147, 46, 47, 'MCP_WARN_LIST', 'list', 'aclf_m_warn'),
(175, 1, 1, 'mcp_warn', 'mcp', 147, 48, 49, 'MCP_WARN_USER', 'warn_user', 'aclf_m_warn'),
(176, 1, 1, 'mcp_warn', 'mcp', 147, 50, 51, 'MCP_WARN_POST', 'warn_post', 'acl_m_warn && acl_f_read,$id'),
(177, 1, 1, '', 'ucp', 0, 1, 14, 'UCP_MAIN', '', ''),
(178, 1, 1, '', 'ucp', 0, 15, 28, 'UCP_PROFILE', '', ''),
(179, 1, 1, '', 'ucp', 0, 29, 38, 'UCP_PREFS', '', ''),
(180, 1, 1, 'ucp_pm', 'ucp', 0, 39, 48, 'UCP_PM', '', ''),
(181, 1, 1, '', 'ucp', 0, 49, 54, 'UCP_USERGROUPS', '', ''),
(182, 1, 1, '', 'ucp', 0, 55, 60, 'UCP_ZEBRA', '', ''),
(183, 1, 1, 'ucp_attachments', 'ucp', 177, 10, 11, 'UCP_MAIN_ATTACHMENTS', 'attachments', 'acl_u_attach'),
(184, 1, 1, 'ucp_auth_link', 'ucp', 178, 26, 27, 'UCP_AUTH_LINK_MANAGE', 'auth_link', 'authmethod_oauth'),
(185, 1, 1, 'ucp_groups', 'ucp', 181, 50, 51, 'UCP_USERGROUPS_MEMBER', 'membership', ''),
(186, 1, 1, 'ucp_groups', 'ucp', 181, 52, 53, 'UCP_USERGROUPS_MANAGE', 'manage', ''),
(187, 1, 1, 'ucp_main', 'ucp', 177, 2, 3, 'UCP_MAIN_FRONT', 'front', ''),
(188, 1, 1, 'ucp_main', 'ucp', 177, 4, 5, 'UCP_MAIN_SUBSCRIBED', 'subscribed', ''),
(189, 1, 1, 'ucp_main', 'ucp', 177, 6, 7, 'UCP_MAIN_BOOKMARKS', 'bookmarks', 'cfg_allow_bookmarks'),
(190, 1, 1, 'ucp_main', 'ucp', 177, 8, 9, 'UCP_MAIN_DRAFTS', 'drafts', ''),
(191, 1, 1, 'ucp_notifications', 'ucp', 179, 36, 37, 'UCP_NOTIFICATION_OPTIONS', 'notification_options', ''),
(192, 1, 1, 'ucp_notifications', 'ucp', 177, 12, 13, 'UCP_NOTIFICATION_LIST', 'notification_list', 'cfg_allow_board_notifications'),
(193, 1, 0, 'ucp_pm', 'ucp', 180, 40, 41, 'UCP_PM_VIEW', 'view', 'cfg_allow_privmsg'),
(194, 1, 1, 'ucp_pm', 'ucp', 180, 42, 43, 'UCP_PM_COMPOSE', 'compose', 'cfg_allow_privmsg'),
(195, 1, 1, 'ucp_pm', 'ucp', 180, 44, 45, 'UCP_PM_DRAFTS', 'drafts', 'cfg_allow_privmsg'),
(196, 1, 1, 'ucp_pm', 'ucp', 180, 46, 47, 'UCP_PM_OPTIONS', 'options', 'cfg_allow_privmsg'),
(197, 1, 1, 'ucp_prefs', 'ucp', 179, 30, 31, 'UCP_PREFS_PERSONAL', 'personal', ''),
(198, 1, 1, 'ucp_prefs', 'ucp', 179, 32, 33, 'UCP_PREFS_POST', 'post', ''),
(199, 1, 1, 'ucp_prefs', 'ucp', 179, 34, 35, 'UCP_PREFS_VIEW', 'view', ''),
(200, 1, 1, 'ucp_profile', 'ucp', 178, 16, 17, 'UCP_PROFILE_PROFILE_INFO', 'profile_info', 'acl_u_chgprofileinfo'),
(201, 1, 1, 'ucp_profile', 'ucp', 178, 18, 19, 'UCP_PROFILE_SIGNATURE', 'signature', 'acl_u_sig'),
(202, 1, 1, 'ucp_profile', 'ucp', 178, 20, 21, 'UCP_PROFILE_AVATAR', 'avatar', 'cfg_allow_avatar'),
(203, 1, 1, 'ucp_profile', 'ucp', 178, 22, 23, 'UCP_PROFILE_REG_DETAILS', 'reg_details', ''),
(204, 1, 1, 'ucp_profile', 'ucp', 178, 24, 25, 'UCP_PROFILE_AUTOLOGIN_KEYS', 'autologin_keys', ''),
(205, 1, 1, 'ucp_zebra', 'ucp', 182, 56, 57, 'UCP_ZEBRA_FRIENDS', 'friends', ''),
(206, 1, 1, 'ucp_zebra', 'ucp', 182, 58, 59, 'UCP_ZEBRA_FOES', 'foes', ''),
(207, 1, 1, '\\phpbb\\viglink\\acp\\viglink_module', 'acp', 3, 43, 44, 'ACP_VIGLINK_SETTINGS', 'settings', 'ext_phpbb/viglink && acl_a_board');

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_notifications`
--

CREATE TABLE `phpbb_notifications` (
  `notification_id` int(10) UNSIGNED NOT NULL,
  `notification_type_id` smallint(4) UNSIGNED NOT NULL DEFAULT '0',
  `item_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `item_parent_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `notification_read` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `notification_time` int(11) UNSIGNED NOT NULL DEFAULT '1',
  `notification_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_notification_types`
--

CREATE TABLE `phpbb_notification_types` (
  `notification_type_id` smallint(4) UNSIGNED NOT NULL,
  `notification_type_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `notification_type_enabled` tinyint(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_oauth_accounts`
--

CREATE TABLE `phpbb_oauth_accounts` (
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `provider` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `oauth_provider_id` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_oauth_states`
--

CREATE TABLE `phpbb_oauth_states` (
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `session_id` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `provider` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `oauth_state` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_oauth_tokens`
--

CREATE TABLE `phpbb_oauth_tokens` (
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `session_id` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `provider` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `oauth_token` mediumtext COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_poll_options`
--

CREATE TABLE `phpbb_poll_options` (
  `poll_option_id` tinyint(4) NOT NULL DEFAULT '0',
  `topic_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `poll_option_text` text COLLATE utf8_bin NOT NULL,
  `poll_option_total` mediumint(8) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_poll_votes`
--

CREATE TABLE `phpbb_poll_votes` (
  `topic_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `poll_option_id` tinyint(4) NOT NULL DEFAULT '0',
  `vote_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `vote_user_ip` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_posts`
--

CREATE TABLE `phpbb_posts` (
  `post_id` int(10) UNSIGNED NOT NULL,
  `topic_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `forum_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `poster_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `icon_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `poster_ip` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `post_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `post_reported` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `enable_bbcode` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `enable_smilies` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `enable_magic_url` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `enable_sig` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `post_username` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `post_subject` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `post_text` mediumtext COLLATE utf8_bin NOT NULL,
  `post_checksum` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `post_attachment` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `bbcode_bitfield` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `bbcode_uid` varchar(8) COLLATE utf8_bin NOT NULL DEFAULT '',
  `post_postcount` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `post_edit_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `post_edit_reason` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `post_edit_user` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `post_edit_count` smallint(4) UNSIGNED NOT NULL DEFAULT '0',
  `post_edit_locked` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `post_visibility` tinyint(3) NOT NULL DEFAULT '0',
  `post_delete_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `post_delete_reason` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `post_delete_user` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_privmsgs`
--

CREATE TABLE `phpbb_privmsgs` (
  `msg_id` int(10) UNSIGNED NOT NULL,
  `root_level` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `author_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `icon_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `author_ip` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `message_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `enable_bbcode` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `enable_smilies` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `enable_magic_url` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `enable_sig` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `message_subject` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `message_text` mediumtext COLLATE utf8_bin NOT NULL,
  `message_edit_reason` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `message_edit_user` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `message_attachment` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `bbcode_bitfield` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `bbcode_uid` varchar(8) COLLATE utf8_bin NOT NULL DEFAULT '',
  `message_edit_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `message_edit_count` smallint(4) UNSIGNED NOT NULL DEFAULT '0',
  `to_address` text COLLATE utf8_bin NOT NULL,
  `bcc_address` text COLLATE utf8_bin NOT NULL,
  `message_reported` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_privmsgs_folder`
--

CREATE TABLE `phpbb_privmsgs_folder` (
  `folder_id` mediumint(8) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `folder_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pm_count` mediumint(8) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_privmsgs_rules`
--

CREATE TABLE `phpbb_privmsgs_rules` (
  `rule_id` mediumint(8) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `rule_check` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `rule_connection` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `rule_string` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `rule_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `rule_group_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `rule_action` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `rule_folder_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_privmsgs_to`
--

CREATE TABLE `phpbb_privmsgs_to` (
  `msg_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `author_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `pm_deleted` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `pm_new` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `pm_unread` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `pm_replied` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `pm_marked` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `pm_forwarded` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `folder_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_profile_fields`
--

CREATE TABLE `phpbb_profile_fields` (
  `field_id` mediumint(8) UNSIGNED NOT NULL,
  `field_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `field_type` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `field_ident` varchar(20) COLLATE utf8_bin NOT NULL DEFAULT '',
  `field_length` varchar(20) COLLATE utf8_bin NOT NULL DEFAULT '',
  `field_minlen` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `field_maxlen` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `field_novalue` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `field_default_value` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `field_validation` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `field_required` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `field_show_on_reg` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `field_hide` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `field_no_view` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `field_active` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `field_order` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `field_show_profile` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `field_show_on_vt` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `field_show_novalue` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `field_show_on_pm` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `field_show_on_ml` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `field_is_contact` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `field_contact_desc` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `field_contact_url` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbb_profile_fields`
--

INSERT INTO `phpbb_profile_fields` (`field_id`, `field_name`, `field_type`, `field_ident`, `field_length`, `field_minlen`, `field_maxlen`, `field_novalue`, `field_default_value`, `field_validation`, `field_required`, `field_show_on_reg`, `field_hide`, `field_no_view`, `field_active`, `field_order`, `field_show_profile`, `field_show_on_vt`, `field_show_novalue`, `field_show_on_pm`, `field_show_on_ml`, `field_is_contact`, `field_contact_desc`, `field_contact_url`) VALUES
(1, 'phpbb_location', 'profilefields.type.string', 'phpbb_location', '20', '2', '100', '', '', '.*', 0, 0, 0, 0, 1, 1, 1, 1, 0, 1, 1, 0, '', ''),
(2, 'phpbb_website', 'profilefields.type.url', 'phpbb_website', '40', '12', '255', '', '', '', 0, 0, 0, 0, 1, 2, 1, 1, 0, 1, 1, 1, 'VISIT_WEBSITE', '%s'),
(3, 'phpbb_interests', 'profilefields.type.text', 'phpbb_interests', '3|30', '2', '500', '', '', '.*', 0, 0, 0, 0, 0, 3, 1, 0, 0, 0, 0, 0, '', ''),
(4, 'phpbb_occupation', 'profilefields.type.text', 'phpbb_occupation', '3|30', '2', '500', '', '', '.*', 0, 0, 0, 0, 0, 4, 1, 0, 0, 0, 0, 0, '', ''),
(5, 'phpbb_aol', 'profilefields.type.string', 'phpbb_aol', '40', '5', '255', '', '', '.*', 0, 0, 0, 0, 0, 5, 1, 1, 0, 1, 1, 1, '', ''),
(6, 'phpbb_icq', 'profilefields.type.string', 'phpbb_icq', '20', '3', '15', '', '', '[0-9]+', 0, 0, 0, 0, 0, 6, 1, 1, 0, 1, 1, 1, 'SEND_ICQ_MESSAGE', 'https://www.icq.com/people/%s/'),
(7, 'phpbb_yahoo', 'profilefields.type.string', 'phpbb_yahoo', '40', '5', '255', '', '', '.*', 0, 0, 0, 0, 0, 8, 1, 1, 0, 1, 1, 1, 'SEND_YIM_MESSAGE', 'ymsgr:sendim?%s'),
(8, 'phpbb_facebook', 'profilefields.type.string', 'phpbb_facebook', '20', '5', '50', '', '', '[\\w.]+', 0, 0, 0, 0, 1, 9, 1, 1, 0, 1, 1, 1, 'VIEW_FACEBOOK_PROFILE', 'http://facebook.com/%s/'),
(9, 'phpbb_twitter', 'profilefields.type.string', 'phpbb_twitter', '20', '1', '15', '', '', '[\\w_]+', 0, 0, 0, 0, 1, 10, 1, 1, 0, 1, 1, 1, 'VIEW_TWITTER_PROFILE', 'http://twitter.com/%s'),
(10, 'phpbb_skype', 'profilefields.type.string', 'phpbb_skype', '20', '6', '32', '', '', '[a-zA-Z][\\w\\.,\\-_]+', 0, 0, 0, 0, 1, 11, 1, 1, 0, 1, 1, 1, 'VIEW_SKYPE_PROFILE', 'skype:%s?userinfo'),
(11, 'phpbb_youtube', 'profilefields.type.string', 'phpbb_youtube', '20', '3', '60', '', '', '[a-zA-Z][\\w\\.,\\-_]+', 0, 0, 0, 0, 1, 12, 1, 1, 0, 1, 1, 1, 'VIEW_YOUTUBE_CHANNEL', 'http://youtube.com/user/%s'),
(12, 'phpbb_googleplus', 'profilefields.type.googleplus', 'phpbb_googleplus', '20', '3', '255', '', '', '[\\w]+', 0, 0, 0, 0, 1, 13, 1, 1, 0, 1, 1, 1, 'VIEW_GOOGLEPLUS_PROFILE', 'http://plus.google.com/%s');

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_profile_fields_data`
--

CREATE TABLE `phpbb_profile_fields_data` (
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `pf_phpbb_interests` mediumtext COLLATE utf8_bin NOT NULL,
  `pf_phpbb_occupation` mediumtext COLLATE utf8_bin NOT NULL,
  `pf_phpbb_location` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pf_phpbb_youtube` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pf_phpbb_facebook` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pf_phpbb_icq` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pf_phpbb_skype` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pf_phpbb_twitter` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pf_phpbb_googleplus` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pf_phpbb_website` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pf_phpbb_yahoo` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pf_phpbb_aol` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_profile_fields_lang`
--

CREATE TABLE `phpbb_profile_fields_lang` (
  `field_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `lang_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `option_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `field_type` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `lang_value` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_profile_lang`
--

CREATE TABLE `phpbb_profile_lang` (
  `field_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `lang_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `lang_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `lang_explain` text COLLATE utf8_bin NOT NULL,
  `lang_default_value` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbb_profile_lang`
--

INSERT INTO `phpbb_profile_lang` (`field_id`, `lang_id`, `lang_name`, `lang_explain`, `lang_default_value`) VALUES
(1, 1, 'LOCATION', '', ''),
(2, 1, 'WEBSITE', '', ''),
(3, 1, 'INTERESTS', '', ''),
(4, 1, 'OCCUPATION', '', ''),
(5, 1, 'AOL', '', ''),
(6, 1, 'ICQ', '', ''),
(7, 1, 'YAHOO', '', ''),
(8, 1, 'FACEBOOK', '', ''),
(9, 1, 'TWITTER', '', ''),
(10, 1, 'SKYPE', '', ''),
(11, 1, 'YOUTUBE', '', ''),
(12, 1, 'GOOGLEPLUS', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_ranks`
--

CREATE TABLE `phpbb_ranks` (
  `rank_id` mediumint(8) UNSIGNED NOT NULL,
  `rank_title` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `rank_min` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `rank_special` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `rank_image` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbb_ranks`
--

INSERT INTO `phpbb_ranks` (`rank_id`, `rank_title`, `rank_min`, `rank_special`, `rank_image`) VALUES
(1, 'Site Admin', 0, 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_reports`
--

CREATE TABLE `phpbb_reports` (
  `report_id` int(10) UNSIGNED NOT NULL,
  `reason_id` smallint(4) UNSIGNED NOT NULL DEFAULT '0',
  `post_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `user_notify` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `report_closed` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `report_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `report_text` mediumtext COLLATE utf8_bin NOT NULL,
  `pm_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `reported_post_enable_bbcode` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `reported_post_enable_smilies` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `reported_post_enable_magic_url` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `reported_post_text` mediumtext COLLATE utf8_bin NOT NULL,
  `reported_post_uid` varchar(8) COLLATE utf8_bin NOT NULL DEFAULT '',
  `reported_post_bitfield` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_reports_reasons`
--

CREATE TABLE `phpbb_reports_reasons` (
  `reason_id` smallint(4) UNSIGNED NOT NULL,
  `reason_title` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `reason_description` mediumtext COLLATE utf8_bin NOT NULL,
  `reason_order` smallint(4) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbb_reports_reasons`
--

INSERT INTO `phpbb_reports_reasons` (`reason_id`, `reason_title`, `reason_description`, `reason_order`) VALUES
(1, 'warez', 'The post contains links to illegal or pirated software.', 1),
(2, 'spam', 'The reported post has the only purpose to advertise for a website or another product.', 2),
(3, 'off_topic', 'The reported post is off topic.', 3),
(4, 'other', 'The reported post does not fit into any other category, please use the further information field.', 4);

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_search_results`
--

CREATE TABLE `phpbb_search_results` (
  `search_key` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `search_keywords` mediumtext COLLATE utf8_bin NOT NULL,
  `search_authors` mediumtext COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_search_wordlist`
--

CREATE TABLE `phpbb_search_wordlist` (
  `word_id` int(10) UNSIGNED NOT NULL,
  `word_text` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `word_common` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `word_count` mediumint(8) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbb_search_wordlist`
--

INSERT INTO `phpbb_search_wordlist` (`word_id`, `word_text`, `word_common`, `word_count`) VALUES
(1, 'this', 0, 1),
(2, 'is', 0, 1),
(3, 'an', 0, 1),
(4, 'example', 0, 1),
(5, 'post', 0, 1),
(6, 'in', 0, 1),
(7, 'your', 0, 1),
(8, 'phpbb3', 0, 2),
(9, 'installation', 0, 1),
(10, 'everything', 0, 1),
(11, 'seems', 0, 1),
(12, 'to', 0, 2),
(13, 'be', 0, 1),
(14, 'working', 0, 1),
(15, 'you', 0, 1),
(16, 'may', 0, 1),
(17, 'delete', 0, 1),
(18, 'if', 0, 1),
(19, 'like', 0, 1),
(20, 'and', 0, 1),
(21, 'continue', 0, 1),
(22, 'set', 0, 1),
(23, 'up', 0, 1),
(24, 'board', 0, 1),
(25, 'during', 0, 1),
(26, 'the', 0, 1),
(27, 'process', 0, 1),
(28, 'first', 0, 1),
(29, 'category', 0, 1),
(30, 'forum', 0, 1),
(31, 'are', 0, 1),
(32, 'assigned', 0, 1),
(33, 'appropriate', 0, 1),
(34, 'of', 0, 1),
(35, 'permissions', 0, 1),
(36, 'for', 0, 1),
(37, 'predefined', 0, 1),
(38, 'usergroups', 0, 1),
(39, 'administrators', 0, 1),
(40, 'bots', 0, 1),
(41, 'global', 0, 1),
(42, 'moderators', 0, 1),
(43, 'guests', 0, 1),
(44, 'registered', 0, 1),
(45, 'users', 0, 1),
(46, 'coppa', 0, 1),
(47, 'also', 0, 1),
(48, 'choose', 0, 1),
(49, 'do', 0, 1),
(50, 'not', 0, 1),
(51, 'forget', 0, 1),
(52, 'assign', 0, 1),
(53, 'all', 0, 1),
(54, 'these', 0, 1),
(55, 'new', 0, 1),
(56, 'categories', 0, 1),
(57, 'forums', 0, 1),
(58, 'create', 0, 1),
(59, 'it', 0, 1),
(60, 'recommended', 0, 1),
(61, 'rename', 0, 1),
(62, 'copy', 0, 1),
(63, 'from', 0, 1),
(64, 'while', 0, 1),
(65, 'creating', 0, 1),
(66, 'have', 0, 1),
(67, 'fun', 0, 1),
(68, 'welcome', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_search_wordmatch`
--

CREATE TABLE `phpbb_search_wordmatch` (
  `post_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `word_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `title_match` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbb_search_wordmatch`
--

INSERT INTO `phpbb_search_wordmatch` (`post_id`, `word_id`, `title_match`) VALUES
(1, 1, 0),
(1, 2, 0),
(1, 3, 0),
(1, 4, 0),
(1, 5, 0),
(1, 6, 0),
(1, 7, 0),
(1, 8, 0),
(1, 8, 1),
(1, 9, 0),
(1, 10, 0),
(1, 11, 0),
(1, 12, 0),
(1, 12, 1),
(1, 13, 0),
(1, 14, 0),
(1, 15, 0),
(1, 16, 0),
(1, 17, 0),
(1, 18, 0),
(1, 19, 0),
(1, 20, 0),
(1, 21, 0),
(1, 22, 0),
(1, 23, 0),
(1, 24, 0),
(1, 25, 0),
(1, 26, 0),
(1, 27, 0),
(1, 28, 0),
(1, 29, 0),
(1, 30, 0),
(1, 31, 0),
(1, 32, 0),
(1, 33, 0),
(1, 34, 0),
(1, 35, 0),
(1, 36, 0),
(1, 37, 0),
(1, 38, 0),
(1, 39, 0),
(1, 40, 0),
(1, 41, 0),
(1, 42, 0),
(1, 43, 0),
(1, 44, 0),
(1, 45, 0),
(1, 46, 0),
(1, 47, 0),
(1, 48, 0),
(1, 49, 0),
(1, 50, 0),
(1, 51, 0),
(1, 52, 0),
(1, 53, 0),
(1, 54, 0),
(1, 55, 0),
(1, 56, 0),
(1, 57, 0),
(1, 58, 0),
(1, 59, 0),
(1, 60, 0),
(1, 61, 0),
(1, 62, 0),
(1, 63, 0),
(1, 64, 0),
(1, 65, 0),
(1, 66, 0),
(1, 67, 0),
(1, 68, 1);

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_sessions`
--

CREATE TABLE `phpbb_sessions` (
  `session_id` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `session_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `session_last_visit` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `session_start` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `session_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `session_ip` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `session_browser` varchar(150) COLLATE utf8_bin NOT NULL DEFAULT '',
  `session_forwarded_for` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `session_page` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `session_viewonline` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `session_autologin` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `session_admin` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `session_forum_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbb_sessions`
--

INSERT INTO `phpbb_sessions` (`session_id`, `session_user_id`, `session_last_visit`, `session_start`, `session_time`, `session_ip`, `session_browser`, `session_forwarded_for`, `session_page`, `session_viewonline`, `session_autologin`, `session_admin`, `session_forum_id`) VALUES
('255599d5c0034cac2f4cb98e468fbc3f', 1, 1591177459, 1591177459, 1591177459, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36', '', 'index.php', 1, 0, 0, 0),
('d14ad256c7797d9e6fa1c96888215b9d', 2, 1591131356, 1591177476, 1591178200, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36', '', 'index.php', 1, 0, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_sessions_keys`
--

CREATE TABLE `phpbb_sessions_keys` (
  `key_id` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `last_ip` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `last_login` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_sitelist`
--

CREATE TABLE `phpbb_sitelist` (
  `site_id` mediumint(8) UNSIGNED NOT NULL,
  `site_ip` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `site_hostname` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `ip_exclude` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_smilies`
--

CREATE TABLE `phpbb_smilies` (
  `smiley_id` mediumint(8) UNSIGNED NOT NULL,
  `code` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT '',
  `emotion` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `smiley_url` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT '',
  `smiley_width` smallint(4) UNSIGNED NOT NULL DEFAULT '0',
  `smiley_height` smallint(4) UNSIGNED NOT NULL DEFAULT '0',
  `smiley_order` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `display_on_posting` tinyint(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbb_smilies`
--

INSERT INTO `phpbb_smilies` (`smiley_id`, `code`, `emotion`, `smiley_url`, `smiley_width`, `smiley_height`, `smiley_order`, `display_on_posting`) VALUES
(1, ':D', 'Very Happy', 'icon_e_biggrin.gif', 15, 17, 1, 1),
(2, ':-D', 'Very Happy', 'icon_e_biggrin.gif', 15, 17, 2, 1),
(3, ':grin:', 'Very Happy', 'icon_e_biggrin.gif', 15, 17, 3, 1),
(4, ':)', 'Smile', 'icon_e_smile.gif', 15, 17, 4, 1),
(5, ':-)', 'Smile', 'icon_e_smile.gif', 15, 17, 5, 1),
(6, ':smile:', 'Smile', 'icon_e_smile.gif', 15, 17, 6, 1),
(7, ';)', 'Wink', 'icon_e_wink.gif', 15, 17, 7, 1),
(8, ';-)', 'Wink', 'icon_e_wink.gif', 15, 17, 8, 1),
(9, ':wink:', 'Wink', 'icon_e_wink.gif', 15, 17, 9, 1),
(10, ':(', 'Sad', 'icon_e_sad.gif', 15, 17, 10, 1),
(11, ':-(', 'Sad', 'icon_e_sad.gif', 15, 17, 11, 1),
(12, ':sad:', 'Sad', 'icon_e_sad.gif', 15, 17, 12, 1),
(13, ':o', 'Surprised', 'icon_e_surprised.gif', 15, 17, 13, 1),
(14, ':-o', 'Surprised', 'icon_e_surprised.gif', 15, 17, 14, 1),
(15, ':eek:', 'Surprised', 'icon_e_surprised.gif', 15, 17, 15, 1),
(16, ':shock:', 'Shocked', 'icon_eek.gif', 15, 17, 16, 1),
(17, ':?', 'Confused', 'icon_e_confused.gif', 15, 17, 17, 1),
(18, ':-?', 'Confused', 'icon_e_confused.gif', 15, 17, 18, 1),
(19, ':???:', 'Confused', 'icon_e_confused.gif', 15, 17, 19, 1),
(20, '8-)', 'Cool', 'icon_cool.gif', 15, 17, 20, 1),
(21, ':cool:', 'Cool', 'icon_cool.gif', 15, 17, 21, 1),
(22, ':lol:', 'Laughing', 'icon_lol.gif', 15, 17, 22, 1),
(23, ':x', 'Mad', 'icon_mad.gif', 15, 17, 23, 1),
(24, ':-x', 'Mad', 'icon_mad.gif', 15, 17, 24, 1),
(25, ':mad:', 'Mad', 'icon_mad.gif', 15, 17, 25, 1),
(26, ':P', 'Razz', 'icon_razz.gif', 15, 17, 26, 1),
(27, ':-P', 'Razz', 'icon_razz.gif', 15, 17, 27, 1),
(28, ':razz:', 'Razz', 'icon_razz.gif', 15, 17, 28, 1),
(29, ':oops:', 'Embarrassed', 'icon_redface.gif', 15, 17, 29, 1),
(30, ':cry:', 'Crying or Very Sad', 'icon_cry.gif', 15, 17, 30, 1),
(31, ':evil:', 'Evil or Very Mad', 'icon_evil.gif', 15, 17, 31, 1),
(32, ':twisted:', 'Twisted Evil', 'icon_twisted.gif', 15, 17, 32, 1),
(33, ':roll:', 'Rolling Eyes', 'icon_rolleyes.gif', 15, 17, 33, 1),
(34, ':!:', 'Exclamation', 'icon_exclaim.gif', 15, 17, 34, 1),
(35, ':?:', 'Question', 'icon_question.gif', 15, 17, 35, 1),
(36, ':idea:', 'Idea', 'icon_idea.gif', 15, 17, 36, 1),
(37, ':arrow:', 'Arrow', 'icon_arrow.gif', 15, 17, 37, 1),
(38, ':|', 'Neutral', 'icon_neutral.gif', 15, 17, 38, 1),
(39, ':-|', 'Neutral', 'icon_neutral.gif', 15, 17, 39, 1),
(40, ':mrgreen:', 'Mr. Green', 'icon_mrgreen.gif', 15, 17, 40, 1),
(41, ':geek:', 'Geek', 'icon_e_geek.gif', 17, 17, 41, 1),
(42, ':ugeek:', 'Uber Geek', 'icon_e_ugeek.gif', 17, 18, 42, 1);

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_styles`
--

CREATE TABLE `phpbb_styles` (
  `style_id` mediumint(8) UNSIGNED NOT NULL,
  `style_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `style_copyright` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `style_active` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `style_path` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `bbcode_bitfield` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT 'kNg=',
  `style_parent_id` int(4) UNSIGNED NOT NULL DEFAULT '0',
  `style_parent_tree` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbb_styles`
--

INSERT INTO `phpbb_styles` (`style_id`, `style_name`, `style_copyright`, `style_active`, `style_path`, `bbcode_bitfield`, `style_parent_id`, `style_parent_tree`) VALUES
(1, 'prosilver', '&copy; phpBB Limited', 1, 'prosilver', '//g=', 0, ''),
(2, 'Simplicity', 'Created by Arty (Vjacheslav Trushkin), http://www.artodia.com/, Modified by Gabriel Fischer', 1, 'simplicity', '//g=', 0, ''),
(3, 'Simplicity Aqua', 'Created by Arty (Vjacheslav Trushkin), http://www.artodia.com/, Modified by Gabriel Fischer', 1, 'simplicity_aqua', '//g=', 2, 'simplicity'),
(4, 'Simplicity Blue', 'Created by Arty (Vjacheslav Trushkin), http://www.artodia.com/, Modified by Gabriel Fischer', 0, 'simplicity_blue', '//g=', 2, 'simplicity'),
(5, 'Simplicity Dark Blue', 'Created by Arty (Vjacheslav Trushkin), http://www.artodia.com/, Modified by Gabriel Fischer', 0, 'simplicity_darkblue', '//g=', 2, 'simplicity'),
(6, 'Simplicity Gray', 'Created by Arty (Vjacheslav Trushkin), http://www.artodia.com/, Modified by Gabriel Fischer', 0, 'simplicity_gray', '//g=', 2, 'simplicity'),
(7, 'Simplicity Light Blue', 'Created by Arty (Vjacheslav Trushkin), http://www.artodia.com/, Modified by Gabriel Fischer', 0, 'simplicity_lightblue', '//g=', 2, 'simplicity'),
(8, 'Simplicity Steel Blue', 'Created by Arty (Vjacheslav Trushkin), http://www.artodia.com/, Modified by Gabriel Fischer', 0, 'simplicity_steelblue', '//g=', 2, 'simplicity');

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_teampage`
--

CREATE TABLE `phpbb_teampage` (
  `teampage_id` mediumint(8) UNSIGNED NOT NULL,
  `group_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `teampage_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `teampage_position` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `teampage_parent` mediumint(8) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbb_teampage`
--

INSERT INTO `phpbb_teampage` (`teampage_id`, `group_id`, `teampage_name`, `teampage_position`, `teampage_parent`) VALUES
(1, 5, '', 1, 0),
(2, 4, '', 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_topics`
--

CREATE TABLE `phpbb_topics` (
  `topic_id` int(10) UNSIGNED NOT NULL,
  `forum_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `icon_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `topic_attachment` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `topic_reported` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `topic_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `topic_poster` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `topic_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `topic_time_limit` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `topic_views` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `topic_status` tinyint(3) NOT NULL DEFAULT '0',
  `topic_type` tinyint(3) NOT NULL DEFAULT '0',
  `topic_first_post_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `topic_first_poster_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `topic_first_poster_colour` varchar(6) COLLATE utf8_bin NOT NULL DEFAULT '',
  `topic_last_post_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `topic_last_poster_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `topic_last_poster_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `topic_last_poster_colour` varchar(6) COLLATE utf8_bin NOT NULL DEFAULT '',
  `topic_last_post_subject` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `topic_last_post_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `topic_last_view_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `topic_moved_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `topic_bumped` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `topic_bumper` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `poll_title` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `poll_start` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `poll_length` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `poll_max_options` tinyint(4) NOT NULL DEFAULT '1',
  `poll_last_vote` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `poll_vote_change` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `topic_visibility` tinyint(3) NOT NULL DEFAULT '0',
  `topic_delete_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `topic_delete_reason` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `topic_delete_user` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `topic_posts_approved` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `topic_posts_unapproved` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `topic_posts_softdeleted` mediumint(8) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_topics_posted`
--

CREATE TABLE `phpbb_topics_posted` (
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `topic_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `topic_posted` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbb_topics_posted`
--

INSERT INTO `phpbb_topics_posted` (`user_id`, `topic_id`, `topic_posted`) VALUES
(2, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_topics_track`
--

CREATE TABLE `phpbb_topics_track` (
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `topic_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `forum_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `mark_time` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_topics_watch`
--

CREATE TABLE `phpbb_topics_watch` (
  `topic_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `notify_status` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_users`
--

CREATE TABLE `phpbb_users` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `user_type` tinyint(2) NOT NULL DEFAULT '0',
  `group_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '3',
  `user_permissions` mediumtext COLLATE utf8_bin NOT NULL,
  `user_perm_from` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `user_ip` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_regdate` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `username` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `username_clean` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_password` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_passchg` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `user_email` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_birthday` varchar(10) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_lastvisit` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `user_lastmark` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `user_lastpost_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `user_lastpage` varchar(200) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_last_confirm_key` varchar(10) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_last_search` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `user_warnings` tinyint(4) NOT NULL DEFAULT '0',
  `user_last_warning` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `user_login_attempts` tinyint(4) NOT NULL DEFAULT '0',
  `user_inactive_reason` tinyint(2) NOT NULL DEFAULT '0',
  `user_inactive_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `user_posts` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `user_lang` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_timezone` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_dateformat` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT 'd M Y H:i',
  `user_style` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `user_rank` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `user_colour` varchar(6) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_new_privmsg` int(4) NOT NULL DEFAULT '0',
  `user_unread_privmsg` int(4) NOT NULL DEFAULT '0',
  `user_last_privmsg` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `user_message_rules` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `user_full_folder` int(11) NOT NULL DEFAULT '-3',
  `user_emailtime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `user_topic_show_days` smallint(4) UNSIGNED NOT NULL DEFAULT '0',
  `user_topic_sortby_type` varchar(1) COLLATE utf8_bin NOT NULL DEFAULT 't',
  `user_topic_sortby_dir` varchar(1) COLLATE utf8_bin NOT NULL DEFAULT 'd',
  `user_post_show_days` smallint(4) UNSIGNED NOT NULL DEFAULT '0',
  `user_post_sortby_type` varchar(1) COLLATE utf8_bin NOT NULL DEFAULT 't',
  `user_post_sortby_dir` varchar(1) COLLATE utf8_bin NOT NULL DEFAULT 'a',
  `user_notify` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `user_notify_pm` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `user_notify_type` tinyint(4) NOT NULL DEFAULT '0',
  `user_allow_pm` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `user_allow_viewonline` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `user_allow_viewemail` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `user_allow_massemail` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `user_options` int(11) UNSIGNED NOT NULL DEFAULT '230271',
  `user_avatar` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_avatar_type` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_avatar_width` smallint(4) UNSIGNED NOT NULL DEFAULT '0',
  `user_avatar_height` smallint(4) UNSIGNED NOT NULL DEFAULT '0',
  `user_sig` mediumtext COLLATE utf8_bin NOT NULL,
  `user_sig_bbcode_uid` varchar(8) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_sig_bbcode_bitfield` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_jabber` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_actkey` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `reset_token` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `reset_token_expiration` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `user_newpasswd` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_form_salt` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_new` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `user_reminded` tinyint(4) NOT NULL DEFAULT '0',
  `user_reminded_time` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbb_users`
--

INSERT INTO `phpbb_users` (`user_id`, `user_type`, `group_id`, `user_permissions`, `user_perm_from`, `user_ip`, `user_regdate`, `username`, `username_clean`, `user_password`, `user_passchg`, `user_email`, `user_birthday`, `user_lastvisit`, `user_lastmark`, `user_lastpost_time`, `user_lastpage`, `user_last_confirm_key`, `user_last_search`, `user_warnings`, `user_last_warning`, `user_login_attempts`, `user_inactive_reason`, `user_inactive_time`, `user_posts`, `user_lang`, `user_timezone`, `user_dateformat`, `user_style`, `user_rank`, `user_colour`, `user_new_privmsg`, `user_unread_privmsg`, `user_last_privmsg`, `user_message_rules`, `user_full_folder`, `user_emailtime`, `user_topic_show_days`, `user_topic_sortby_type`, `user_topic_sortby_dir`, `user_post_show_days`, `user_post_sortby_type`, `user_post_sortby_dir`, `user_notify`, `user_notify_pm`, `user_notify_type`, `user_allow_pm`, `user_allow_viewonline`, `user_allow_viewemail`, `user_allow_massemail`, `user_options`, `user_avatar`, `user_avatar_type`, `user_avatar_width`, `user_avatar_height`, `user_sig`, `user_sig_bbcode_uid`, `user_sig_bbcode_bitfield`, `user_jabber`, `user_actkey`, `reset_token`, `reset_token_expiration`, `user_newpasswd`, `user_form_salt`, `user_new`, `user_reminded`, `user_reminded_time`) VALUES
(1, 2, 1, '00000000000g13ydmo\nhwby9w000000\nhwby9w000000', 0, '', 1591025465, 'Anonymous', 'anonymous', '', 0, '', '', 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', '', 'd M Y H:i', 2, 0, '', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 0, '', '2z5wp4gebqxlt4dp', 1, 0, 0),
(2, 3, 5, 'zik0zjzik0zjzik0zi\nhwby9w000000\nhwby9w000000', 0, '127.0.0.1', 1591025465, 'admin', 'admin', '$2y$10$XHrm./tsrdKb4mePiXcYhuxM7hFaHTp2c7WWw/HJ066psFZJUM2R.', 0, 'antonbaliuk78@gmail.com', '', 1591131356, 0, 0, 'adm/index.php', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'Europe/Warsaw', 'D M d, Y g:i a', 2, 1, 'AA0000', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 1, 230271, '', '', 0, 0, '', '', '', '', '', '', 0, '', '16tj89jp8b0t1gpr', 1, 0, 0),
(3, 2, 6, '', 0, '', 1591025465, 'AdsBot [Google]', 'adsbot [google]', '', 1591025465, '', '', 0, 1591025465, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 0, '', 'dbvvjiervct1a6d4', 0, 0, 0),
(4, 2, 6, '', 0, '', 1591025465, 'Alexa [Bot]', 'alexa [bot]', '', 1591025465, '', '', 0, 1591025465, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 0, '', '2xu303isdp14hlyu', 0, 0, 0),
(5, 2, 6, '', 0, '', 1591025465, 'Alta Vista [Bot]', 'alta vista [bot]', '', 1591025465, '', '', 0, 1591025465, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 0, '', 'gsymeshrb9u2pnsf', 0, 0, 0),
(6, 2, 6, '', 0, '', 1591025465, 'Ask Jeeves [Bot]', 'ask jeeves [bot]', '', 1591025465, '', '', 0, 1591025465, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 0, '', '3ltbu0pok17lrhsd', 0, 0, 0),
(7, 2, 6, '', 0, '', 1591025465, 'Baidu [Spider]', 'baidu [spider]', '', 1591025465, '', '', 0, 1591025465, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 0, '', '0xs3q9dc7v5s16hd', 0, 0, 0),
(8, 2, 6, '', 0, '', 1591025465, 'Bing [Bot]', 'bing [bot]', '', 1591025465, '', '', 0, 1591025465, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 0, '', 'hfe7ukthfj15wer5', 0, 0, 0),
(9, 2, 6, '', 0, '', 1591025465, 'Exabot [Bot]', 'exabot [bot]', '', 1591025465, '', '', 0, 1591025465, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 0, '', '07782fd06bs5a106', 0, 0, 0),
(10, 2, 6, '', 0, '', 1591025465, 'FAST Enterprise [Crawler]', 'fast enterprise [crawler]', '', 1591025465, '', '', 0, 1591025465, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 0, '', '7qq0f7ey0nhxr5kt', 0, 0, 0),
(11, 2, 6, '', 0, '', 1591025465, 'FAST WebCrawler [Crawler]', 'fast webcrawler [crawler]', '', 1591025465, '', '', 0, 1591025465, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 0, '', '8m33gxz1d7w45kdj', 0, 0, 0),
(12, 2, 6, '', 0, '', 1591025465, 'Francis [Bot]', 'francis [bot]', '', 1591025465, '', '', 0, 1591025465, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 0, '', 'r3co0e7h2o0abnfh', 0, 0, 0),
(13, 2, 6, '', 0, '', 1591025465, 'Gigabot [Bot]', 'gigabot [bot]', '', 1591025465, '', '', 0, 1591025465, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 0, '', '953s7ypxgff4wj3u', 0, 0, 0),
(14, 2, 6, '', 0, '', 1591025465, 'Google Adsense [Bot]', 'google adsense [bot]', '', 1591025465, '', '', 0, 1591025465, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 0, '', 'gqmipfz9rtrl6vjb', 0, 0, 0),
(15, 2, 6, '', 0, '', 1591025465, 'Google Desktop', 'google desktop', '', 1591025465, '', '', 0, 1591025465, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 0, '', 'm9h14a17rv15cn4u', 0, 0, 0),
(16, 2, 6, '', 0, '', 1591025465, 'Google Feedfetcher', 'google feedfetcher', '', 1591025465, '', '', 0, 1591025465, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 0, '', 'o8bfcamzd331tv6z', 0, 0, 0),
(17, 2, 6, '', 0, '', 1591025465, 'Google [Bot]', 'google [bot]', '', 1591025465, '', '', 0, 1591025465, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 0, '', '6chyik075w8ozxzx', 0, 0, 0),
(18, 2, 6, '', 0, '', 1591025465, 'Heise IT-Markt [Crawler]', 'heise it-markt [crawler]', '', 1591025465, '', '', 0, 1591025465, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 0, '', 'xfkio5dn3zw5g4b3', 0, 0, 0),
(19, 2, 6, '', 0, '', 1591025465, 'Heritrix [Crawler]', 'heritrix [crawler]', '', 1591025465, '', '', 0, 1591025465, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 0, '', '5jdcbgdebe2pvcks', 0, 0, 0),
(20, 2, 6, '', 0, '', 1591025465, 'IBM Research [Bot]', 'ibm research [bot]', '', 1591025465, '', '', 0, 1591025465, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 0, '', 'lxfmp2c520ox0nq4', 0, 0, 0),
(21, 2, 6, '', 0, '', 1591025465, 'ICCrawler - ICjobs', 'iccrawler - icjobs', '', 1591025465, '', '', 0, 1591025465, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 0, '', 'uuh0fo8l1zy6r6kj', 0, 0, 0),
(22, 2, 6, '', 0, '', 1591025466, 'ichiro [Crawler]', 'ichiro [crawler]', '', 1591025466, '', '', 0, 1591025466, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 0, '', 'qi9ewd99c1aye3h7', 0, 0, 0),
(23, 2, 6, '', 0, '', 1591025466, 'Majestic-12 [Bot]', 'majestic-12 [bot]', '', 1591025466, '', '', 0, 1591025466, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 0, '', 'atcrxlg4t4bs4pdr', 0, 0, 0),
(24, 2, 6, '', 0, '', 1591025466, 'Metager [Bot]', 'metager [bot]', '', 1591025466, '', '', 0, 1591025466, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 0, '', 'd0zzaph3bs0e0way', 0, 0, 0),
(25, 2, 6, '', 0, '', 1591025466, 'MSN NewsBlogs', 'msn newsblogs', '', 1591025466, '', '', 0, 1591025466, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 0, '', 'o2e8yn9pbdbuc35d', 0, 0, 0),
(26, 2, 6, '', 0, '', 1591025466, 'MSN [Bot]', 'msn [bot]', '', 1591025466, '', '', 0, 1591025466, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 0, '', 'sodhyzrxjwo4h5n6', 0, 0, 0),
(27, 2, 6, '', 0, '', 1591025466, 'MSNbot Media', 'msnbot media', '', 1591025466, '', '', 0, 1591025466, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 0, '', '5lv113gt6vdro7ob', 0, 0, 0),
(28, 2, 6, '', 0, '', 1591025466, 'Nutch [Bot]', 'nutch [bot]', '', 1591025466, '', '', 0, 1591025466, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 0, '', '37l7ae922du8i4h3', 0, 0, 0),
(29, 2, 6, '', 0, '', 1591025466, 'Online link [Validator]', 'online link [validator]', '', 1591025466, '', '', 0, 1591025466, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 0, '', 'worp5utrk3ao1d4q', 0, 0, 0),
(30, 2, 6, '', 0, '', 1591025466, 'psbot [Picsearch]', 'psbot [picsearch]', '', 1591025466, '', '', 0, 1591025466, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 0, '', 'uln2udn6a6er5d6v', 0, 0, 0),
(31, 2, 6, '', 0, '', 1591025466, 'Sensis [Crawler]', 'sensis [crawler]', '', 1591025466, '', '', 0, 1591025466, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 0, '', '9l1qjn7u53r0m71k', 0, 0, 0),
(32, 2, 6, '', 0, '', 1591025466, 'SEO Crawler', 'seo crawler', '', 1591025466, '', '', 0, 1591025466, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 0, '', 'h2pdcenkyao6ccly', 0, 0, 0),
(33, 2, 6, '', 0, '', 1591025466, 'Seoma [Crawler]', 'seoma [crawler]', '', 1591025466, '', '', 0, 1591025466, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 0, '', 'w0dmrzcj0vw0na9p', 0, 0, 0),
(34, 2, 6, '', 0, '', 1591025466, 'SEOSearch [Crawler]', 'seosearch [crawler]', '', 1591025466, '', '', 0, 1591025466, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 0, '', 'du0l6s24nltu4nag', 0, 0, 0),
(35, 2, 6, '', 0, '', 1591025466, 'Snappy [Bot]', 'snappy [bot]', '', 1591025466, '', '', 0, 1591025466, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 0, '', '62pqyvtuu2zkys8i', 0, 0, 0),
(36, 2, 6, '', 0, '', 1591025466, 'Steeler [Crawler]', 'steeler [crawler]', '', 1591025466, '', '', 0, 1591025466, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 0, '', 't7ofcf43g7ce18ly', 0, 0, 0),
(37, 2, 6, '', 0, '', 1591025466, 'Telekom [Bot]', 'telekom [bot]', '', 1591025466, '', '', 0, 1591025466, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 0, '', 'ftnphwr6r2fk2u7r', 0, 0, 0),
(38, 2, 6, '', 0, '', 1591025466, 'TurnitinBot [Bot]', 'turnitinbot [bot]', '', 1591025466, '', '', 0, 1591025466, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 0, '', 'yj2hcaaw2opkp081', 0, 0, 0),
(39, 2, 6, '', 0, '', 1591025466, 'Voyager [Bot]', 'voyager [bot]', '', 1591025466, '', '', 0, 1591025466, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 0, '', 'pye5v0txl9gqkeol', 0, 0, 0),
(40, 2, 6, '', 0, '', 1591025466, 'W3 [Sitesearch]', 'w3 [sitesearch]', '', 1591025466, '', '', 0, 1591025466, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 0, '', 'fjlsxpdbeaxjqt0i', 0, 0, 0),
(41, 2, 6, '', 0, '', 1591025466, 'W3C [Linkcheck]', 'w3c [linkcheck]', '', 1591025466, '', '', 0, 1591025466, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 0, '', 'ywixyq18t35jtf1p', 0, 0, 0),
(42, 2, 6, '', 0, '', 1591025466, 'W3C [Validator]', 'w3c [validator]', '', 1591025466, '', '', 0, 1591025466, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 0, '', 'zsccvzpc5xqcqy7y', 0, 0, 0),
(43, 2, 6, '', 0, '', 1591025466, 'YaCy [Bot]', 'yacy [bot]', '', 1591025466, '', '', 0, 1591025466, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 0, '', '4x7vjyien6maz0g2', 0, 0, 0),
(44, 2, 6, '', 0, '', 1591025466, 'Yahoo MMCrawler [Bot]', 'yahoo mmcrawler [bot]', '', 1591025466, '', '', 0, 1591025466, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 0, '', 'go2291ljiyursrla', 0, 0, 0),
(45, 2, 6, '', 0, '', 1591025466, 'Yahoo Slurp [Bot]', 'yahoo slurp [bot]', '', 1591025466, '', '', 0, 1591025466, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 0, '', 'jccq7ctsokho9njy', 0, 0, 0),
(46, 2, 6, '', 0, '', 1591025466, 'Yahoo [Bot]', 'yahoo [bot]', '', 1591025466, '', '', 0, 1591025466, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 0, '', 'sp70ounf2urff1fn', 0, 0, 0),
(47, 2, 6, '', 0, '', 1591025466, 'YahooSeeker [Bot]', 'yahooseeker [bot]', '', 1591025466, '', '', 0, 1591025466, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 0, '', 'g5f8wlhr5ws6rk2u', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_user_group`
--

CREATE TABLE `phpbb_user_group` (
  `group_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `group_leader` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `user_pending` tinyint(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbb_user_group`
--

INSERT INTO `phpbb_user_group` (`group_id`, `user_id`, `group_leader`, `user_pending`) VALUES
(1, 1, 0, 0),
(2, 2, 0, 0),
(4, 2, 0, 0),
(5, 2, 1, 0),
(6, 3, 0, 0),
(6, 4, 0, 0),
(6, 5, 0, 0),
(6, 6, 0, 0),
(6, 7, 0, 0),
(6, 8, 0, 0),
(6, 9, 0, 0),
(6, 10, 0, 0),
(6, 11, 0, 0),
(6, 12, 0, 0),
(6, 13, 0, 0),
(6, 14, 0, 0),
(6, 15, 0, 0),
(6, 16, 0, 0),
(6, 17, 0, 0),
(6, 18, 0, 0),
(6, 19, 0, 0),
(6, 20, 0, 0),
(6, 21, 0, 0),
(6, 22, 0, 0),
(6, 23, 0, 0),
(6, 24, 0, 0),
(6, 25, 0, 0),
(6, 26, 0, 0),
(6, 27, 0, 0),
(6, 28, 0, 0),
(6, 29, 0, 0),
(6, 30, 0, 0),
(6, 31, 0, 0),
(6, 32, 0, 0),
(6, 33, 0, 0),
(6, 34, 0, 0),
(6, 35, 0, 0),
(6, 36, 0, 0),
(6, 37, 0, 0),
(6, 38, 0, 0),
(6, 39, 0, 0),
(6, 40, 0, 0),
(6, 41, 0, 0),
(6, 42, 0, 0),
(6, 43, 0, 0),
(6, 44, 0, 0),
(6, 45, 0, 0),
(6, 46, 0, 0),
(6, 47, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_user_notifications`
--

CREATE TABLE `phpbb_user_notifications` (
  `item_type` varchar(165) COLLATE utf8_bin NOT NULL DEFAULT '',
  `item_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `method` varchar(165) COLLATE utf8_bin NOT NULL DEFAULT '',
  `notify` tinyint(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbb_user_notifications`
--

INSERT INTO `phpbb_user_notifications` (`item_type`, `item_id`, `user_id`, `method`, `notify`) VALUES
('notification.type.post', 0, 2, 'notification.method.board', 1),
('notification.type.post', 0, 2, 'notification.method.email', 1),
('notification.type.post', 0, 3, 'notification.method.email', 1),
('notification.type.post', 0, 4, 'notification.method.email', 1),
('notification.type.post', 0, 5, 'notification.method.email', 1),
('notification.type.post', 0, 6, 'notification.method.email', 1),
('notification.type.post', 0, 7, 'notification.method.email', 1),
('notification.type.post', 0, 8, 'notification.method.email', 1),
('notification.type.post', 0, 9, 'notification.method.email', 1),
('notification.type.post', 0, 10, 'notification.method.email', 1),
('notification.type.post', 0, 11, 'notification.method.email', 1),
('notification.type.post', 0, 12, 'notification.method.email', 1),
('notification.type.post', 0, 13, 'notification.method.email', 1),
('notification.type.post', 0, 14, 'notification.method.email', 1),
('notification.type.post', 0, 15, 'notification.method.email', 1),
('notification.type.post', 0, 16, 'notification.method.email', 1),
('notification.type.post', 0, 17, 'notification.method.email', 1),
('notification.type.post', 0, 18, 'notification.method.email', 1),
('notification.type.post', 0, 19, 'notification.method.email', 1),
('notification.type.post', 0, 20, 'notification.method.email', 1),
('notification.type.post', 0, 21, 'notification.method.email', 1),
('notification.type.post', 0, 22, 'notification.method.email', 1),
('notification.type.post', 0, 23, 'notification.method.email', 1),
('notification.type.post', 0, 24, 'notification.method.email', 1),
('notification.type.post', 0, 25, 'notification.method.email', 1),
('notification.type.post', 0, 26, 'notification.method.email', 1),
('notification.type.post', 0, 27, 'notification.method.email', 1),
('notification.type.post', 0, 28, 'notification.method.email', 1),
('notification.type.post', 0, 29, 'notification.method.email', 1),
('notification.type.post', 0, 30, 'notification.method.email', 1),
('notification.type.post', 0, 31, 'notification.method.email', 1),
('notification.type.post', 0, 32, 'notification.method.email', 1),
('notification.type.post', 0, 33, 'notification.method.email', 1),
('notification.type.post', 0, 34, 'notification.method.email', 1),
('notification.type.post', 0, 35, 'notification.method.email', 1),
('notification.type.post', 0, 36, 'notification.method.email', 1),
('notification.type.post', 0, 37, 'notification.method.email', 1),
('notification.type.post', 0, 38, 'notification.method.email', 1),
('notification.type.post', 0, 39, 'notification.method.email', 1),
('notification.type.post', 0, 40, 'notification.method.email', 1),
('notification.type.post', 0, 41, 'notification.method.email', 1),
('notification.type.post', 0, 42, 'notification.method.email', 1),
('notification.type.post', 0, 43, 'notification.method.email', 1),
('notification.type.post', 0, 44, 'notification.method.email', 1),
('notification.type.post', 0, 45, 'notification.method.email', 1),
('notification.type.post', 0, 46, 'notification.method.email', 1),
('notification.type.post', 0, 47, 'notification.method.email', 1),
('notification.type.topic', 0, 2, 'notification.method.board', 1),
('notification.type.topic', 0, 2, 'notification.method.email', 1),
('notification.type.topic', 0, 3, 'notification.method.email', 1),
('notification.type.topic', 0, 4, 'notification.method.email', 1),
('notification.type.topic', 0, 5, 'notification.method.email', 1),
('notification.type.topic', 0, 6, 'notification.method.email', 1),
('notification.type.topic', 0, 7, 'notification.method.email', 1),
('notification.type.topic', 0, 8, 'notification.method.email', 1),
('notification.type.topic', 0, 9, 'notification.method.email', 1),
('notification.type.topic', 0, 10, 'notification.method.email', 1),
('notification.type.topic', 0, 11, 'notification.method.email', 1),
('notification.type.topic', 0, 12, 'notification.method.email', 1),
('notification.type.topic', 0, 13, 'notification.method.email', 1),
('notification.type.topic', 0, 14, 'notification.method.email', 1),
('notification.type.topic', 0, 15, 'notification.method.email', 1),
('notification.type.topic', 0, 16, 'notification.method.email', 1),
('notification.type.topic', 0, 17, 'notification.method.email', 1),
('notification.type.topic', 0, 18, 'notification.method.email', 1),
('notification.type.topic', 0, 19, 'notification.method.email', 1),
('notification.type.topic', 0, 20, 'notification.method.email', 1),
('notification.type.topic', 0, 21, 'notification.method.email', 1),
('notification.type.topic', 0, 22, 'notification.method.email', 1),
('notification.type.topic', 0, 23, 'notification.method.email', 1),
('notification.type.topic', 0, 24, 'notification.method.email', 1),
('notification.type.topic', 0, 25, 'notification.method.email', 1),
('notification.type.topic', 0, 26, 'notification.method.email', 1),
('notification.type.topic', 0, 27, 'notification.method.email', 1),
('notification.type.topic', 0, 28, 'notification.method.email', 1),
('notification.type.topic', 0, 29, 'notification.method.email', 1),
('notification.type.topic', 0, 30, 'notification.method.email', 1),
('notification.type.topic', 0, 31, 'notification.method.email', 1),
('notification.type.topic', 0, 32, 'notification.method.email', 1),
('notification.type.topic', 0, 33, 'notification.method.email', 1),
('notification.type.topic', 0, 34, 'notification.method.email', 1),
('notification.type.topic', 0, 35, 'notification.method.email', 1),
('notification.type.topic', 0, 36, 'notification.method.email', 1),
('notification.type.topic', 0, 37, 'notification.method.email', 1),
('notification.type.topic', 0, 38, 'notification.method.email', 1),
('notification.type.topic', 0, 39, 'notification.method.email', 1),
('notification.type.topic', 0, 40, 'notification.method.email', 1),
('notification.type.topic', 0, 41, 'notification.method.email', 1),
('notification.type.topic', 0, 42, 'notification.method.email', 1),
('notification.type.topic', 0, 43, 'notification.method.email', 1),
('notification.type.topic', 0, 44, 'notification.method.email', 1),
('notification.type.topic', 0, 45, 'notification.method.email', 1),
('notification.type.topic', 0, 46, 'notification.method.email', 1),
('notification.type.topic', 0, 47, 'notification.method.email', 1);

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_warnings`
--

CREATE TABLE `phpbb_warnings` (
  `warning_id` mediumint(8) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `post_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `log_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `warning_time` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_words`
--

CREATE TABLE `phpbb_words` (
  `word_id` int(10) UNSIGNED NOT NULL,
  `word` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `replacement` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_zebra`
--

CREATE TABLE `phpbb_zebra` (
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `zebra_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `friend` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `foe` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `plugin`
--

CREATE TABLE `plugin` (
  `name` varchar(64) NOT NULL DEFAULT '',
  `dl` varchar(128) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `proc`
--

CREATE TABLE `proc` (
  `db` char(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `name` char(64) NOT NULL DEFAULT '',
  `type` enum('FUNCTION','PROCEDURE') NOT NULL,
  `specific_name` char(64) NOT NULL DEFAULT '',
  `language` enum('SQL') NOT NULL DEFAULT 'SQL',
  `sql_data_access` enum('CONTAINS_SQL','NO_SQL','READS_SQL_DATA','MODIFIES_SQL_DATA') NOT NULL DEFAULT 'CONTAINS_SQL',
  `is_deterministic` enum('YES','NO') NOT NULL DEFAULT 'NO',
  `security_type` enum('INVOKER','DEFINER') NOT NULL DEFAULT 'DEFINER',
  `param_list` blob NOT NULL,
  `returns` longblob NOT NULL,
  `body` longblob NOT NULL,
  `definer` char(93) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `sql_mode` set('REAL_AS_FLOAT','PIPES_AS_CONCAT','ANSI_QUOTES','IGNORE_SPACE','NOT_USED','ONLY_FULL_GROUP_BY','NO_UNSIGNED_SUBTRACTION','NO_DIR_IN_CREATE','POSTGRESQL','ORACLE','MSSQL','DB2','MAXDB','NO_KEY_OPTIONS','NO_TABLE_OPTIONS','NO_FIELD_OPTIONS','MYSQL323','MYSQL40','ANSI','NO_AUTO_VALUE_ON_ZERO','NO_BACKSLASH_ESCAPES','STRICT_TRANS_TABLES','STRICT_ALL_TABLES','NO_ZERO_IN_DATE','NO_ZERO_DATE','INVALID_DATES','ERROR_FOR_DIVISION_BY_ZERO','TRADITIONAL','NO_AUTO_CREATE_USER','HIGH_NOT_PRECEDENCE','NO_ENGINE_SUBSTITUTION','PAD_CHAR_TO_FULL_LENGTH') NOT NULL DEFAULT '',
  `comment` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `character_set_client` char(32) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `collation_connection` char(32) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `db_collation` char(32) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `body_utf8` longblob
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Stored Procedures';

--
-- Dumping data for table `proc`
--

INSERT INTO `proc` (`db`, `name`, `type`, `specific_name`, `language`, `sql_data_access`, `is_deterministic`, `security_type`, `param_list`, `returns`, `body`, `definer`, `created`, `modified`, `sql_mode`, `comment`, `character_set_client`, `collation_connection`, `db_collation`, `body_utf8`) VALUES
('sys', 'extract_schema_from_file_name', 'FUNCTION', 'extract_schema_from_file_name', 'SQL', 'NO_SQL', 'YES', 'INVOKER', 0x20706174682056415243484152283531322920, 0x766172636861722836342920434841525345542075746638, 0x424547494e2052455455524e204c45465428535542535452494e475f494e44455828535542535452494e475f494e444558285245504c41434528706174682c20275c5c272c20272f27292c20272f272c202d32292c20272f272c2031292c203634293b20454e44, 'mysql.sys@localhost', '2018-07-09 10:50:30', '2018-07-09 10:50:30', '', '\n Description\n \n Takes a raw file path, and attempts to extract the schema name from it.\n \n Useful for when interacting with Performance Schema data \n concerning IO statistics, for example.\n \n Currently relies on the fact that a table data file will be within a \n specified database directory (will not work with partitions or tables\n that specify an individual DATA_DIRECTORY).\n \n Parameters\n \n path (VARCHAR(512)):\n The full file path to a data file to extract the schema name from.\n \n Returns\n \n VARCHAR(64)\n \n Example\n \n mysql> SELECT sys.extract_schema_from_file_name(\'/var/lib/mysql/employees/employee.ibd\');\n +----------------------------------------------------------------------------+\n | sys.extract_schema_from_file_name(\'/var/lib/mysql/employees/employee.ibd\') |\n +----------------------------------------------------------------------------+\n | employees                                                                  |\n +----------------------------------------------------------------------------+\n 1 row in set (0.00 sec)\n ', 'utf8', 'utf8_general_ci', 'utf8_general_ci', 0x424547494e2052455455524e204c45465428535542535452494e475f494e44455828535542535452494e475f494e444558285245504c41434528706174682c20275c272c20272f27292c20272f272c202d32292c20272f272c2031292c203634293b20454e44),
('sys', 'extract_table_from_file_name', 'FUNCTION', 'extract_table_from_file_name', 'SQL', 'NO_SQL', 'YES', 'INVOKER', 0x20706174682056415243484152283531322920, 0x766172636861722836342920434841525345542075746638, 0x424547494e2052455455524e204c45465428535542535452494e475f494e444558285245504c41434528535542535452494e475f494e444558285245504c41434528706174682c20275c5c272c20272f27292c20272f272c202d31292c20274030303234272c20272427292c20272e272c2031292c203634293b20454e44, 'mysql.sys@localhost', '2018-07-09 10:50:30', '2018-07-09 10:50:30', '', '\n Description\n \n Takes a raw file path, and extracts the table name from it.\n \n Useful for when interacting with Performance Schema data \n concerning IO statistics, for example.\n \n Parameters\n \n path (VARCHAR(512)):\n The full file path to a data file to extract the table name from.\n \n Returns\n \n VARCHAR(64)\n \n Example\n \n mysql> SELECT sys.extract_table_from_file_name(\'/var/lib/mysql/employees/employee.ibd\');\n +---------------------------------------------------------------------------+\n | sys.extract_table_from_file_name(\'/var/lib/mysql/employees/employee.ibd\') |\n +---------------------------------------------------------------------------+\n | employee                                                                  |\n +---------------------------------------------------------------------------+\n 1 row in set (0.02 sec)\n ', 'utf8', 'utf8_general_ci', 'utf8_general_ci', 0x424547494e2052455455524e204c45465428535542535452494e475f494e444558285245504c41434528535542535452494e475f494e444558285245504c41434528706174682c20275c272c20272f27292c20272f272c202d31292c20274030303234272c20272427292c20272e272c2031292c203634293b20454e44),
('sys', 'format_bytes', 'FUNCTION', 'format_bytes', 'SQL', 'NO_SQL', 'YES', 'INVOKER', 0x206279746573205445585420, 0x7465787420434841525345542075746638, 0x424547494e204946206279746573204953204e554c4c205448454e2052455455524e204e554c4c3b20454c53454946206279746573203e3d2031313235383939393036383432363234205448454e2052455455524e20434f4e43415428524f554e44286279746573202f20313132353839393930363834323632342c2032292c20272050694227293b20454c53454946206279746573203e3d2031303939353131363237373736205448454e2052455455524e20434f4e43415428524f554e44286279746573202f20313039393531313632373737362c2032292c20272054694227293b20454c53454946206279746573203e3d2031303733373431383234205448454e2052455455524e20434f4e43415428524f554e44286279746573202f20313037333734313832342c2032292c20272047694227293b20454c53454946206279746573203e3d2031303438353736205448454e2052455455524e20434f4e43415428524f554e44286279746573202f20313034383537362c2032292c2027204d694227293b20454c53454946206279746573203e3d2031303234205448454e2052455455524e20434f4e43415428524f554e44286279746573202f20313032342c2032292c2027204b694227293b20454c53452052455455524e20434f4e43415428524f554e442862797465732c2030292c202720627974657327293b20454e442049463b20454e44, 'mysql.sys@localhost', '2018-07-09 10:50:30', '2018-07-09 10:50:30', '', '\n Description\n \n Takes a raw bytes value, and converts it to a human readable format.\n \n Parameters\n \n bytes (TEXT):\n A raw bytes value.\n \n Returns\n \n TEXT\n \n Example\n \n mysql> SELECT sys.format_bytes(2348723492723746) AS size;\n +----------+\n | size     |\n +----------+\n | 2.09 PiB |\n +----------+\n 1 row in set (0.00 sec)\n \n mysql> SELECT sys.format_bytes(2348723492723) AS size;\n +----------+\n | size     |\n +----------+\n | 2.14 TiB |\n +----------+\n 1 row in set (0.00 sec)\n \n mysql> SELECT sys.format_bytes(23487234) AS size;\n +-----------+\n | size      |\n +-----------+\n | 22.40 MiB |\n +-----------+\n 1 row in set (0.00 sec)\n ', 'utf8', 'utf8_general_ci', 'utf8_general_ci', 0x424547494e204946206279746573204953204e554c4c205448454e2052455455524e204e554c4c3b20454c53454946206279746573203e3d2031313235383939393036383432363234205448454e2052455455524e20434f4e43415428524f554e44286279746573202f20313132353839393930363834323632342c2032292c20272050694227293b20454c53454946206279746573203e3d2031303939353131363237373736205448454e2052455455524e20434f4e43415428524f554e44286279746573202f20313039393531313632373737362c2032292c20272054694227293b20454c53454946206279746573203e3d2031303733373431383234205448454e2052455455524e20434f4e43415428524f554e44286279746573202f20313037333734313832342c2032292c20272047694227293b20454c53454946206279746573203e3d2031303438353736205448454e2052455455524e20434f4e43415428524f554e44286279746573202f20313034383537362c2032292c2027204d694227293b20454c53454946206279746573203e3d2031303234205448454e2052455455524e20434f4e43415428524f554e44286279746573202f20313032342c2032292c2027204b694227293b20454c53452052455455524e20434f4e43415428524f554e442862797465732c2030292c202720627974657327293b20454e442049463b20454e44),
('sys', 'format_path', 'FUNCTION', 'format_path', 'SQL', 'NO_SQL', 'YES', 'INVOKER', 0x20696e5f706174682056415243484152283531322920, 0x76617263686172283531322920434841525345542075746638, 0x424547494e204445434c41524520765f70617468205641524348415228353132293b204445434c41524520765f756e646f5f64697220564152434841522831303234293b20204445434c41524520706174685f736570617261746f7220434841522831292044454641554c5420272f273b20204946204040676c6f62616c2e76657273696f6e5f636f6d70696c655f6f73204c494b45202777696e2527205448454e2053455420706174685f736570617261746f72203d20275c5c273b20454e442049463b2020494620696e5f70617468204c494b4520272f707269766174652f2527205448454e2053455420765f70617468203d205245504c41434528696e5f706174682c20272f70726976617465272c202727293b20454c53452053455420765f70617468203d20696e5f706174683b20454e442049463b202053455420765f756e646f5f646972203d2049464e554c4c282853454c454354205641524941424c455f56414c55452046524f4d20706572666f726d616e63655f736368656d612e676c6f62616c5f7661726961626c6573205748455245205641524941424c455f4e414d45203d2027696e6e6f64625f756e646f5f6469726563746f727927292c202727293b2020494620765f70617468204953204e554c4c205448454e2052455455524e204e554c4c3b20454c5345494620765f70617468204c494b4520434f4e434154284040676c6f62616c2e646174616469722c20494628535542535452494e47284040676c6f62616c2e646174616469722c202d3129203d20706174685f736570617261746f722c202725272c20434f4e43415428706174685f736570617261746f722c202725272929292045534341504520277c27205448454e2053455420765f70617468203d205245504c41434528765f706174682c204040676c6f62616c2e646174616469722c20434f4e4341542827404064617461646972272c20494628535542535452494e47284040676c6f62616c2e646174616469722c202d3129203d20706174685f736570617261746f722c20706174685f736570617261746f722c2027272929293b20454c5345494620765f70617468204c494b4520434f4e434154284040676c6f62616c2e746d706469722c20494628535542535452494e47284040676c6f62616c2e746d706469722c202d3129203d20706174685f736570617261746f722c202725272c20434f4e43415428706174685f736570617261746f722c202725272929292045534341504520277c27205448454e2053455420765f70617468203d205245504c41434528765f706174682c204040676c6f62616c2e746d706469722c20434f4e43415428274040746d70646972272c20494628535542535452494e47284040676c6f62616c2e746d706469722c202d3129203d20706174685f736570617261746f722c20706174685f736570617261746f722c2027272929293b20454c5345494620765f70617468204c494b4520434f4e434154284040676c6f62616c2e736c6176655f6c6f61645f746d706469722c20494628535542535452494e47284040676c6f62616c2e736c6176655f6c6f61645f746d706469722c202d3129203d20706174685f736570617261746f722c202725272c20434f4e43415428706174685f736570617261746f722c202725272929292045534341504520277c27205448454e2053455420765f70617468203d205245504c41434528765f706174682c204040676c6f62616c2e736c6176655f6c6f61645f746d706469722c20434f4e43415428274040736c6176655f6c6f61645f746d70646972272c20494628535542535452494e47284040676c6f62616c2e736c6176655f6c6f61645f746d706469722c202d3129203d20706174685f736570617261746f722c20706174685f736570617261746f722c2027272929293b20454c5345494620765f70617468204c494b4520434f4e434154284040676c6f62616c2e696e6e6f64625f646174615f686f6d655f6469722c20494628535542535452494e47284040676c6f62616c2e696e6e6f64625f646174615f686f6d655f6469722c202d3129203d20706174685f736570617261746f722c202725272c20434f4e43415428706174685f736570617261746f722c202725272929292045534341504520277c27205448454e2053455420765f70617468203d205245504c41434528765f706174682c204040676c6f62616c2e696e6e6f64625f646174615f686f6d655f6469722c20434f4e43415428274040696e6e6f64625f646174615f686f6d655f646972272c20494628535542535452494e47284040676c6f62616c2e696e6e6f64625f646174615f686f6d655f6469722c202d3129203d20706174685f736570617261746f722c20706174685f736570617261746f722c2027272929293b20454c5345494620765f70617468204c494b4520434f4e434154284040676c6f62616c2e696e6e6f64625f6c6f675f67726f75705f686f6d655f6469722c20494628535542535452494e47284040676c6f62616c2e696e6e6f64625f6c6f675f67726f75705f686f6d655f6469722c202d3129203d20706174685f736570617261746f722c202725272c20434f4e43415428706174685f736570617261746f722c202725272929292045534341504520277c27205448454e2053455420765f70617468203d205245504c41434528765f706174682c204040676c6f62616c2e696e6e6f64625f6c6f675f67726f75705f686f6d655f6469722c20434f4e43415428274040696e6e6f64625f6c6f675f67726f75705f686f6d655f646972272c20494628535542535452494e47284040676c6f62616c2e696e6e6f64625f6c6f675f67726f75705f686f6d655f6469722c202d3129203d20706174685f736570617261746f722c20706174685f736570617261746f722c2027272929293b20454c5345494620765f70617468204c494b4520434f4e43415428765f756e646f5f6469722c20494628535542535452494e4728765f756e646f5f6469722c202d3129203d20706174685f736570617261746f722c202725272c20434f4e43415428706174685f736570617261746f722c202725272929292045534341504520277c27205448454e2053455420765f70617468203d205245504c41434528765f706174682c20765f756e646f5f6469722c20434f4e43415428274040696e6e6f64625f756e646f5f6469726563746f7279272c20494628535542535452494e4728765f756e646f5f6469722c202d3129203d20706174685f736570617261746f722c20706174685f736570617261746f722c2027272929293b20454c5345494620765f70617468204c494b4520434f4e434154284040676c6f62616c2e626173656469722c20494628535542535452494e47284040676c6f62616c2e626173656469722c202d3129203d20706174685f736570617261746f722c202725272c20434f4e43415428706174685f736570617261746f722c202725272929292045534341504520277c27205448454e2053455420765f70617468203d205245504c41434528765f706174682c204040676c6f62616c2e626173656469722c20434f4e4341542827404062617365646972272c20494628535542535452494e47284040676c6f62616c2e626173656469722c202d3129203d20706174685f736570617261746f722c20706174685f736570617261746f722c2027272929293b20454e442049463b202052455455524e20765f706174683b20454e44, 'mysql.sys@localhost', '2018-07-09 10:50:30', '2018-07-09 10:50:30', '', '\n Description\n \n Takes a raw path value, and strips out the datadir or tmpdir\n replacing with @@datadir and @@tmpdir respectively. \n \n Also normalizes the paths across operating systems, so backslashes\n on Windows are converted to forward slashes\n \n Parameters\n \n path (VARCHAR(512)):\n The raw file path value to format.\n \n Returns\n \n VARCHAR(512) CHARSET UTF8\n \n Example\n \n mysql> select @@datadir;\n +-----------------------------------------------+\n | @@datadir                                     |\n +-----------------------------------------------+\n | /Users/mark/sandboxes/SmallTree/AMaster/data/ |\n +-----------------------------------------------+\n 1 row in set (0.06 sec)\n \n mysql> select format_path(\'/Users/mark/sandboxes/SmallTree/AMaster/data/mysql/proc.MYD\') AS path;\n +--------------------------+\n | path                     |\n +--------------------------+\n | @@datadir/mysql/proc.MYD |\n +--------------------------+\n 1 row in set (0.03 sec)\n ', 'utf8', 'utf8_general_ci', 'utf8_general_ci', 0x424547494e204445434c41524520765f70617468205641524348415228353132293b204445434c41524520765f756e646f5f64697220564152434841522831303234293b20204445434c41524520706174685f736570617261746f7220434841522831292044454641554c5420272f273b20204946204040676c6f62616c2e76657273696f6e5f636f6d70696c655f6f73204c494b45202777696e2527205448454e2053455420706174685f736570617261746f72203d20275c273b20454e442049463b2020494620696e5f70617468204c494b4520272f707269766174652f2527205448454e2053455420765f70617468203d205245504c41434528696e5f706174682c20272f70726976617465272c202727293b20454c53452053455420765f70617468203d20696e5f706174683b20454e442049463b202053455420765f756e646f5f646972203d2049464e554c4c282853454c454354205641524941424c455f56414c55452046524f4d20706572666f726d616e63655f736368656d612e676c6f62616c5f7661726961626c6573205748455245205641524941424c455f4e414d45203d2027696e6e6f64625f756e646f5f6469726563746f727927292c202727293b2020494620765f70617468204953204e554c4c205448454e2052455455524e204e554c4c3b20454c5345494620765f70617468204c494b4520434f4e434154284040676c6f62616c2e646174616469722c20494628535542535452494e47284040676c6f62616c2e646174616469722c202d3129203d20706174685f736570617261746f722c202725272c20434f4e43415428706174685f736570617261746f722c202725272929292045534341504520277c27205448454e2053455420765f70617468203d205245504c41434528765f706174682c204040676c6f62616c2e646174616469722c20434f4e4341542827404064617461646972272c20494628535542535452494e47284040676c6f62616c2e646174616469722c202d3129203d20706174685f736570617261746f722c20706174685f736570617261746f722c2027272929293b20454c5345494620765f70617468204c494b4520434f4e434154284040676c6f62616c2e746d706469722c20494628535542535452494e47284040676c6f62616c2e746d706469722c202d3129203d20706174685f736570617261746f722c202725272c20434f4e43415428706174685f736570617261746f722c202725272929292045534341504520277c27205448454e2053455420765f70617468203d205245504c41434528765f706174682c204040676c6f62616c2e746d706469722c20434f4e43415428274040746d70646972272c20494628535542535452494e47284040676c6f62616c2e746d706469722c202d3129203d20706174685f736570617261746f722c20706174685f736570617261746f722c2027272929293b20454c5345494620765f70617468204c494b4520434f4e434154284040676c6f62616c2e736c6176655f6c6f61645f746d706469722c20494628535542535452494e47284040676c6f62616c2e736c6176655f6c6f61645f746d706469722c202d3129203d20706174685f736570617261746f722c202725272c20434f4e43415428706174685f736570617261746f722c202725272929292045534341504520277c27205448454e2053455420765f70617468203d205245504c41434528765f706174682c204040676c6f62616c2e736c6176655f6c6f61645f746d706469722c20434f4e43415428274040736c6176655f6c6f61645f746d70646972272c20494628535542535452494e47284040676c6f62616c2e736c6176655f6c6f61645f746d706469722c202d3129203d20706174685f736570617261746f722c20706174685f736570617261746f722c2027272929293b20454c5345494620765f70617468204c494b4520434f4e434154284040676c6f62616c2e696e6e6f64625f646174615f686f6d655f6469722c20494628535542535452494e47284040676c6f62616c2e696e6e6f64625f646174615f686f6d655f6469722c202d3129203d20706174685f736570617261746f722c202725272c20434f4e43415428706174685f736570617261746f722c202725272929292045534341504520277c27205448454e2053455420765f70617468203d205245504c41434528765f706174682c204040676c6f62616c2e696e6e6f64625f646174615f686f6d655f6469722c20434f4e43415428274040696e6e6f64625f646174615f686f6d655f646972272c20494628535542535452494e47284040676c6f62616c2e696e6e6f64625f646174615f686f6d655f6469722c202d3129203d20706174685f736570617261746f722c20706174685f736570617261746f722c2027272929293b20454c5345494620765f70617468204c494b4520434f4e434154284040676c6f62616c2e696e6e6f64625f6c6f675f67726f75705f686f6d655f6469722c20494628535542535452494e47284040676c6f62616c2e696e6e6f64625f6c6f675f67726f75705f686f6d655f6469722c202d3129203d20706174685f736570617261746f722c202725272c20434f4e43415428706174685f736570617261746f722c202725272929292045534341504520277c27205448454e2053455420765f70617468203d205245504c41434528765f706174682c204040676c6f62616c2e696e6e6f64625f6c6f675f67726f75705f686f6d655f6469722c20434f4e43415428274040696e6e6f64625f6c6f675f67726f75705f686f6d655f646972272c20494628535542535452494e47284040676c6f62616c2e696e6e6f64625f6c6f675f67726f75705f686f6d655f6469722c202d3129203d20706174685f736570617261746f722c20706174685f736570617261746f722c2027272929293b20454c5345494620765f70617468204c494b4520434f4e43415428765f756e646f5f6469722c20494628535542535452494e4728765f756e646f5f6469722c202d3129203d20706174685f736570617261746f722c202725272c20434f4e43415428706174685f736570617261746f722c202725272929292045534341504520277c27205448454e2053455420765f70617468203d205245504c41434528765f706174682c20765f756e646f5f6469722c20434f4e43415428274040696e6e6f64625f756e646f5f6469726563746f7279272c20494628535542535452494e4728765f756e646f5f6469722c202d3129203d20706174685f736570617261746f722c20706174685f736570617261746f722c2027272929293b20454c5345494620765f70617468204c494b4520434f4e434154284040676c6f62616c2e626173656469722c20494628535542535452494e47284040676c6f62616c2e626173656469722c202d3129203d20706174685f736570617261746f722c202725272c20434f4e43415428706174685f736570617261746f722c202725272929292045534341504520277c27205448454e2053455420765f70617468203d205245504c41434528765f706174682c204040676c6f62616c2e626173656469722c20434f4e4341542827404062617365646972272c20494628535542535452494e47284040676c6f62616c2e626173656469722c202d3129203d20706174685f736570617261746f722c20706174685f736570617261746f722c2027272929293b20454e442049463b202052455455524e20765f706174683b20454e44),
('sys', 'format_statement', 'FUNCTION', 'format_statement', 'SQL', 'NO_SQL', 'YES', 'INVOKER', 0x2073746174656d656e74204c4f4e475445585420, 0x6c6f6e677465787420434841525345542075746638, 0x424547494e20494620407379732e73746174656d656e745f7472756e636174655f6c656e204953204e554c4c205448454e2053455420407379732e73746174656d656e745f7472756e636174655f6c656e203d207379735f6765745f636f6e666967282773746174656d656e745f7472756e636174655f6c656e272c203634293b20454e442049463b2020494620434841525f4c454e4754482873746174656d656e7429203e20407379732e73746174656d656e745f7472756e636174655f6c656e205448454e2052455455524e205245504c41434528434f4e434154284c4546542873746174656d656e742c2028407379732e73746174656d656e745f7472756e636174655f6c656e2f32292d32292c2027202e2e2e20272c2052494748542873746174656d656e742c2028407379732e73746174656d656e745f7472756e636174655f6c656e2f32292d3229292c20275c6e272c20272027293b20454c5345202052455455524e205245504c4143452873746174656d656e742c20275c6e272c20272027293b20454e442049463b20454e44, 'mysql.sys@localhost', '2018-07-09 10:50:30', '2018-07-09 10:50:30', '', '\n Description\n \n Formats a normalized statement, truncating it if it is > 64 characters long by default.\n \n To configure the length to truncate the statement to by default, update the `statement_truncate_len`\n variable with `sys_config` table to a different value. Alternatively, to change it just for just \n your particular session, use `SET @sys.statement_truncate_len := <some new value>`.\n \n Useful for printing statement related data from Performance Schema from \n the command line.\n \n Parameters\n \n statement (LONGTEXT): \n The statement to format.\n \n Returns\n \n LONGTEXT\n \n Example\n \n mysql> SELECT sys.format_statement(digest_text)\n ->   FROM performance_schema.events_statements_summary_by_digest\n ->  ORDER by sum_timer_wait DESC limit 5;\n +-------------------------------------------------------------------+\n | sys.format_statement(digest_text)                                 |\n +-------------------------------------------------------------------+\n | CREATE SQL SECURITY INVOKER VI ... KE ? AND `variable_value` > ?  |\n | CREATE SQL SECURITY INVOKER VI ... ait` IS NOT NULL , `esc` . ... |\n | CREATE SQL SECURITY INVOKER VI ... ait` IS NOT NULL , `sys` . ... |\n | CREATE SQL SECURITY INVOKER VI ...  , `compressed_size` ) ) DESC  |\n | CREATE SQL SECURITY INVOKER VI ... LIKE ? ORDER BY `timer_start`  |\n +-------------------------------------------------------------------+\n 5 rows in set (0.00 sec)\n ', 'utf8', 'utf8_general_ci', 'utf8_general_ci', 0x424547494e20494620407379732e73746174656d656e745f7472756e636174655f6c656e204953204e554c4c205448454e2053455420407379732e73746174656d656e745f7472756e636174655f6c656e203d207379735f6765745f636f6e666967282773746174656d656e745f7472756e636174655f6c656e272c203634293b20454e442049463b2020494620434841525f4c454e4754482873746174656d656e7429203e20407379732e73746174656d656e745f7472756e636174655f6c656e205448454e2052455455524e205245504c41434528434f4e434154284c4546542873746174656d656e742c2028407379732e73746174656d656e745f7472756e636174655f6c656e2f32292d32292c2027202e2e2e20272c2052494748542873746174656d656e742c2028407379732e73746174656d656e745f7472756e636174655f6c656e2f32292d3229292c20270a272c20272027293b20454c5345202052455455524e205245504c4143452873746174656d656e742c20270a272c20272027293b20454e442049463b20454e44),
('sys', 'format_time', 'FUNCTION', 'format_time', 'SQL', 'NO_SQL', 'YES', 'INVOKER', 0x207069636f7365636f6e6473205445585420, 0x7465787420434841525345542075746638, 0x424547494e204946207069636f7365636f6e6473204953204e554c4c205448454e2052455455524e204e554c4c3b20454c53454946207069636f7365636f6e6473203e3d20363034383030303030303030303030303030205448454e2052455455524e20434f4e43415428524f554e44287069636f7365636f6e6473202f203630343830303030303030303030303030302c2032292c2027207727293b20454c53454946207069636f7365636f6e6473203e3d203836343030303030303030303030303030205448454e2052455455524e20434f4e43415428524f554e44287069636f7365636f6e6473202f2038363430303030303030303030303030302c2032292c2027206427293b20454c53454946207069636f7365636f6e6473203e3d2033363030303030303030303030303030205448454e2052455455524e20434f4e43415428524f554e44287069636f7365636f6e6473202f20333630303030303030303030303030302c2032292c2027206827293b20454c53454946207069636f7365636f6e6473203e3d203630303030303030303030303030205448454e2052455455524e20434f4e43415428524f554e44287069636f7365636f6e6473202f2036303030303030303030303030302c2032292c2027206d27293b20454c53454946207069636f7365636f6e6473203e3d2031303030303030303030303030205448454e2052455455524e20434f4e43415428524f554e44287069636f7365636f6e6473202f20313030303030303030303030302c2032292c2027207327293b20454c53454946207069636f7365636f6e6473203e3d2031303030303030303030205448454e2052455455524e20434f4e43415428524f554e44287069636f7365636f6e6473202f20313030303030303030302c2032292c2027206d7327293b20454c53454946207069636f7365636f6e6473203e3d2031303030303030205448454e2052455455524e20434f4e43415428524f554e44287069636f7365636f6e6473202f20313030303030302c2032292c202720757327293b20454c53454946207069636f7365636f6e6473203e3d2031303030205448454e2052455455524e20434f4e43415428524f554e44287069636f7365636f6e6473202f20313030302c2032292c2027206e7327293b20454c53452052455455524e20434f4e434154287069636f7365636f6e64732c202720707327293b20454e442049463b20454e44, 'mysql.sys@localhost', '2018-07-09 10:50:30', '2018-07-09 10:50:30', '', '\n Description\n \n Takes a raw picoseconds value, and converts it to a human readable form.\n \n Picoseconds are the precision that all latency values are printed in \n within Performance Schema, however are not user friendly when wanting\n to scan output from the command line.\n \n Parameters\n \n picoseconds (TEXT): \n The raw picoseconds value to convert.\n \n Returns\n \n TEXT\n \n Example\n \n mysql> select format_time(342342342342345);\n +------------------------------+\n | format_time(342342342342345) |\n +------------------------------+\n | 00:05:42                     |\n +------------------------------+\n 1 row in set (0.00 sec)\n \n mysql> select format_time(342342342);\n +------------------------+\n | format_time(342342342) |\n +------------------------+\n | 342.34 us              |\n +------------------------+\n 1 row in set (0.00 sec)\n \n mysql> select format_time(34234);\n +--------------------+\n | format_time(34234) |\n +--------------------+\n | 34.23 ns           |\n +--------------------+\n 1 row in set (0.00 sec)\n ', 'utf8', 'utf8_general_ci', 'utf8_general_ci', 0x424547494e204946207069636f7365636f6e6473204953204e554c4c205448454e2052455455524e204e554c4c3b20454c53454946207069636f7365636f6e6473203e3d20363034383030303030303030303030303030205448454e2052455455524e20434f4e43415428524f554e44287069636f7365636f6e6473202f203630343830303030303030303030303030302c2032292c2027207727293b20454c53454946207069636f7365636f6e6473203e3d203836343030303030303030303030303030205448454e2052455455524e20434f4e43415428524f554e44287069636f7365636f6e6473202f2038363430303030303030303030303030302c2032292c2027206427293b20454c53454946207069636f7365636f6e6473203e3d2033363030303030303030303030303030205448454e2052455455524e20434f4e43415428524f554e44287069636f7365636f6e6473202f20333630303030303030303030303030302c2032292c2027206827293b20454c53454946207069636f7365636f6e6473203e3d203630303030303030303030303030205448454e2052455455524e20434f4e43415428524f554e44287069636f7365636f6e6473202f2036303030303030303030303030302c2032292c2027206d27293b20454c53454946207069636f7365636f6e6473203e3d2031303030303030303030303030205448454e2052455455524e20434f4e43415428524f554e44287069636f7365636f6e6473202f20313030303030303030303030302c2032292c2027207327293b20454c53454946207069636f7365636f6e6473203e3d2031303030303030303030205448454e2052455455524e20434f4e43415428524f554e44287069636f7365636f6e6473202f20313030303030303030302c2032292c2027206d7327293b20454c53454946207069636f7365636f6e6473203e3d2031303030303030205448454e2052455455524e20434f4e43415428524f554e44287069636f7365636f6e6473202f20313030303030302c2032292c202720757327293b20454c53454946207069636f7365636f6e6473203e3d2031303030205448454e2052455455524e20434f4e43415428524f554e44287069636f7365636f6e6473202f20313030302c2032292c2027206e7327293b20454c53452052455455524e20434f4e434154287069636f7365636f6e64732c202720707327293b20454e442049463b20454e44),
('sys', 'list_add', 'FUNCTION', 'list_add', 'SQL', 'CONTAINS_SQL', 'YES', 'INVOKER', 0x20696e5f6c69737420544558542c20696e5f6164645f76616c7565205445585420, 0x7465787420434841525345542075746638, 0x424547494e202049462028696e5f6164645f76616c7565204953204e554c4c29205448454e205349474e414c2053514c5354415445202730323230302720534554204d4553534147455f54455854203d202746756e6374696f6e207379732e6c6973745f6164643a20696e5f6164645f76616c756520696e707574207661726961626c652073686f756c64206e6f74206265204e554c4c272c204d5953514c5f4552524e4f203d20313133383b20454e442049463b202049462028696e5f6c697374204953204e554c4c204f52204c454e47544828696e5f6c69737429203d203029205448454e2052455455524e20696e5f6164645f76616c75653b20454e442049463b202052455455524e202853454c45435420434f4e434154285452494d28424f544820272c272046524f4d205452494d28696e5f6c69737429292c20272c272c20696e5f6164645f76616c756529293b2020454e44, 'mysql.sys@localhost', '2018-07-09 10:50:30', '2018-07-09 10:50:30', '', '\n Description\n \n Takes a list, and a value to add to the list, and returns the resulting list.\n \n Useful for altering certain session variables, like sql_mode or optimizer_switch for instance.\n \n Parameters\n \n in_list (TEXT):\n The comma separated list to add a value to\n \n in_add_value (TEXT):\n The value to add to the input list\n \n Returns\n \n TEXT\n \n Example\n \n mysql> select @@sql_mode;\n +-----------------------------------------------------------------------------------+\n | @@sql_mode                                                                        |\n +-----------------------------------------------------------------------------------+\n | ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION |\n +-----------------------------------------------------------------------------------+\n 1 row in set (0.00 sec)\n \n mysql> set sql_mode = sys.list_add(@@sql_mode, \'ANSI_QUOTES\');\n Query OK, 0 rows affected (0.06 sec)\n \n mysql> select @@sql_mode;\n +-----------------------------------------------------------------------------------------------+\n | @@sql_mode                                                                                    |\n +-----------------------------------------------------------------------------------------------+\n | ANSI_QUOTES,ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION |\n +-----------------------------------------------------------------------------------------------+\n 1 row in set (0.00 sec)\n \n ', 'utf8', 'utf8_general_ci', 'utf8_general_ci', 0x424547494e202049462028696e5f6164645f76616c7565204953204e554c4c29205448454e205349474e414c2053514c5354415445202730323230302720534554204d4553534147455f54455854203d202746756e6374696f6e207379732e6c6973745f6164643a20696e5f6164645f76616c756520696e707574207661726961626c652073686f756c64206e6f74206265204e554c4c272c204d5953514c5f4552524e4f203d20313133383b20454e442049463b202049462028696e5f6c697374204953204e554c4c204f52204c454e47544828696e5f6c69737429203d203029205448454e2052455455524e20696e5f6164645f76616c75653b20454e442049463b202052455455524e202853454c45435420434f4e434154285452494d28424f544820272c272046524f4d205452494d28696e5f6c69737429292c20272c272c20696e5f6164645f76616c756529293b2020454e44),
('sys', 'list_drop', 'FUNCTION', 'list_drop', 'SQL', 'CONTAINS_SQL', 'YES', 'INVOKER', 0x20696e5f6c69737420544558542c20696e5f64726f705f76616c7565205445585420, 0x7465787420434841525345542075746638, 0x424547494e202049462028696e5f64726f705f76616c7565204953204e554c4c29205448454e205349474e414c2053514c5354415445202730323230302720534554204d4553534147455f54455854203d202746756e6374696f6e207379732e6c6973745f64726f703a20696e5f64726f705f76616c756520696e707574207661726961626c652073686f756c64206e6f74206265204e554c4c272c204d5953514c5f4552524e4f203d20313133383b20454e442049463b202049462028696e5f6c697374204953204e554c4c204f52204c454e47544828696e5f6c69737429203d203029205448454e2052455455524e20696e5f6c6973743b20454e442049463b202052455455524e202853454c454354205452494d28424f544820272c272046524f4d205245504c414345285245504c41434528434f4e43415428272c272c20696e5f6c697374292c20434f4e43415428272c272c20696e5f64726f705f76616c7565292c202727292c20434f4e43415428272c20272c20696e5f64726f705f76616c7565292c2027272929293b2020454e44, 'mysql.sys@localhost', '2018-07-09 10:50:30', '2018-07-09 10:50:30', '', '\n Description\n \n Takes a list, and a value to attempt to remove from the list, and returns the resulting list.\n \n Useful for altering certain session variables, like sql_mode or optimizer_switch for instance.\n \n Parameters\n \n in_list (TEXT):\n The comma separated list to drop a value from\n \n in_drop_value (TEXT):\n The value to drop from the input list\n \n Returns\n \n TEXT\n \n Example\n \n mysql> select @@sql_mode;\n +-----------------------------------------------------------------------------------------------+\n | @@sql_mode                                                                                    |\n +-----------------------------------------------------------------------------------------------+\n | ANSI_QUOTES,ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION |\n +-----------------------------------------------------------------------------------------------+\n 1 row in set (0.00 sec)\n \n mysql> set sql_mode = sys.list_drop(@@sql_mode, \'ONLY_FULL_GROUP_BY\');\n Query OK, 0 rows affected (0.03 sec)\n \n mysql> select @@sql_mode;\n +----------------------------------------------------------------------------+\n | @@sql_mode                                                                 |\n +----------------------------------------------------------------------------+\n | ANSI_QUOTES,STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION |\n +----------------------------------------------------------------------------+\n 1 row in set (0.00 sec)\n \n ', 'utf8', 'utf8_general_ci', 'utf8_general_ci', 0x424547494e202049462028696e5f64726f705f76616c7565204953204e554c4c29205448454e205349474e414c2053514c5354415445202730323230302720534554204d4553534147455f54455854203d202746756e6374696f6e207379732e6c6973745f64726f703a20696e5f64726f705f76616c756520696e707574207661726961626c652073686f756c64206e6f74206265204e554c4c272c204d5953514c5f4552524e4f203d20313133383b20454e442049463b202049462028696e5f6c697374204953204e554c4c204f52204c454e47544828696e5f6c69737429203d203029205448454e2052455455524e20696e5f6c6973743b20454e442049463b202052455455524e202853454c454354205452494d28424f544820272c272046524f4d205245504c414345285245504c41434528434f4e43415428272c272c20696e5f6c697374292c20434f4e43415428272c272c20696e5f64726f705f76616c7565292c202727292c20434f4e43415428272c20272c20696e5f64726f705f76616c7565292c2027272929293b2020454e44),
('sys', 'ps_is_account_enabled', 'FUNCTION', 'ps_is_account_enabled', 'SQL', 'READS_SQL_DATA', 'YES', 'INVOKER', 0x20696e5f686f73742056415243484152283630292c2020696e5f7573657220564152434841522833322920, 0x656e756d2827594553272c274e4f272920434841525345542075746638, 0x424547494e2052455455524e204946284558495354532853454c45435420312046524f4d20706572666f726d616e63655f736368656d612e73657475705f6163746f7273205748455245202860484f535460203d20272527204f5220696e5f686f7374204c494b452060484f5354602920414e442028605553455260203d20272527204f5220605553455260203d20696e5f757365722920414e44202860454e41424c454460203d2027594553272920292c2027594553272c20274e4f2720293b20454e44, 'mysql.sys@localhost', '2018-07-09 10:50:30', '2018-07-09 10:50:30', '', '\n Description\n \n Determines whether instrumentation of an account is enabled \n within Performance Schema.\n \n Parameters\n \n in_host VARCHAR(60): \n The hostname of the account to check.\n in_user VARCHAR(32):\n The username of the account to check.\n \n Returns\n \n ENUM(\'YES\', \'NO\', \'PARTIAL\')\n \n Example\n \n mysql> SELECT sys.ps_is_account_enabled(\'localhost\', \'root\');\n +------------------------------------------------+\n | sys.ps_is_account_enabled(\'localhost\', \'root\') |\n +------------------------------------------------+\n | YES                                            |\n +------------------------------------------------+\n 1 row in set (0.01 sec)\n ', 'utf8', 'utf8_general_ci', 'utf8_general_ci', 0x424547494e2052455455524e204946284558495354532853454c45435420312046524f4d20706572666f726d616e63655f736368656d612e73657475705f6163746f7273205748455245202860484f535460203d20272527204f5220696e5f686f7374204c494b452060484f5354602920414e442028605553455260203d20272527204f5220605553455260203d20696e5f757365722920414e44202860454e41424c454460203d2027594553272920292c2027594553272c20274e4f2720293b20454e44),
('sys', 'ps_is_consumer_enabled', 'FUNCTION', 'ps_is_consumer_enabled', 'SQL', 'READS_SQL_DATA', 'YES', 'INVOKER', 0x20696e5f636f6e73756d657220766172636861722836342920, 0x656e756d2827594553272c274e4f272920434841525345542075746638, 0x424547494e2052455455524e20282053454c454354202843415345205748454e20632e4e414d45203d2027676c6f62616c5f696e737472756d656e746174696f6e27205448454e20632e454e41424c4544205748454e20632e4e414d45203d20277468726561645f696e737472756d656e746174696f6e27205448454e2049462863672e454e41424c4544203d20275945532720414e4420632e454e41424c4544203d2027594553272c2027594553272c20274e4f2729205748454e20632e4e414d45204c494b452027255c5f6469676573742720202020202020202020205448454e2049462863672e454e41424c4544203d20275945532720414e4420632e454e41424c4544203d2027594553272c2027594553272c20274e4f2729205748454e20632e4e414d45204c494b452027255c5f63757272656e7427202020202020202020205448454e2049462863672e454e41424c4544203d20275945532720414e442063742e454e41424c4544203d20275945532720414e4420632e454e41424c4544203d2027594553272c2027594553272c20274e4f272920454c53452049462863672e454e41424c4544203d20275945532720414e442063742e454e41424c4544203d20275945532720414e4420632e454e41424c4544203d20275945532720414e4420282053454c4543542063632e454e41424c45442046524f4d20706572666f726d616e63655f736368656d612e73657475705f636f6e73756d657273206363205748455245204e414d45203d20434f4e43415428535542535452494e475f494e44455828632e4e414d452c20275f272c2032292c20275f63757272656e7427292029203d2027594553272c2027594553272c20274e4f272920454e4429204153204973456e61626c65642046524f4d20706572666f726d616e63655f736368656d612e73657475705f636f6e73756d657273206320494e4e4552204a4f494e20706572666f726d616e63655f736368656d612e73657475705f636f6e73756d65727320636720494e4e4552204a4f494e20706572666f726d616e63655f736368656d612e73657475705f636f6e73756d6572732063742057484552452063672e4e414d45202020202020203d2027676c6f62616c5f696e737472756d656e746174696f6e2720414e442063742e4e414d452020203d20277468726561645f696e737472756d656e746174696f6e2720414e4420632e4e414d45202020203d20696e5f636f6e73756d657220293b20454e44, 'mysql.sys@localhost', '2018-07-09 10:50:30', '2018-07-09 10:50:30', '', '\n Description\n \n Determines whether a consumer is enabled (taking the consumer hierarchy into consideration)\n within the Performance Schema.\n \n Parameters\n \n in_consumer VARCHAR(64): \n The name of the consumer to check.\n \n Returns\n \n ENUM(\'YES\', \'NO\')\n \n Example\n \n mysql> SELECT sys.ps_is_consumer_enabled(\'events_stages_history\');\n +-----------------------------------------------------+\n | sys.ps_is_consumer_enabled(\'events_stages_history\') |\n +-----------------------------------------------------+\n | NO                                                  |\n +-----------------------------------------------------+\n 1 row in set (0.00 sec)\n ', 'utf8', 'utf8_general_ci', 'utf8_general_ci', 0x424547494e2052455455524e20282053454c454354202843415345205748454e20632e4e414d45203d2027676c6f62616c5f696e737472756d656e746174696f6e27205448454e20632e454e41424c4544205748454e20632e4e414d45203d20277468726561645f696e737472756d656e746174696f6e27205448454e2049462863672e454e41424c4544203d20275945532720414e4420632e454e41424c4544203d2027594553272c2027594553272c20274e4f2729205748454e20632e4e414d45204c494b452027255c5f6469676573742720202020202020202020205448454e2049462863672e454e41424c4544203d20275945532720414e4420632e454e41424c4544203d2027594553272c2027594553272c20274e4f2729205748454e20632e4e414d45204c494b452027255c5f63757272656e7427202020202020202020205448454e2049462863672e454e41424c4544203d20275945532720414e442063742e454e41424c4544203d20275945532720414e4420632e454e41424c4544203d2027594553272c2027594553272c20274e4f272920454c53452049462863672e454e41424c4544203d20275945532720414e442063742e454e41424c4544203d20275945532720414e4420632e454e41424c4544203d20275945532720414e4420282053454c4543542063632e454e41424c45442046524f4d20706572666f726d616e63655f736368656d612e73657475705f636f6e73756d657273206363205748455245204e414d45203d20434f4e43415428535542535452494e475f494e44455828632e4e414d452c20275f272c2032292c20275f63757272656e7427292029203d2027594553272c2027594553272c20274e4f272920454e4429204153204973456e61626c65642046524f4d20706572666f726d616e63655f736368656d612e73657475705f636f6e73756d657273206320494e4e4552204a4f494e20706572666f726d616e63655f736368656d612e73657475705f636f6e73756d65727320636720494e4e4552204a4f494e20706572666f726d616e63655f736368656d612e73657475705f636f6e73756d6572732063742057484552452063672e4e414d45202020202020203d2027676c6f62616c5f696e737472756d656e746174696f6e2720414e442063742e4e414d452020203d20277468726561645f696e737472756d656e746174696f6e2720414e4420632e4e414d45202020203d20696e5f636f6e73756d657220293b20454e44),
('sys', 'ps_is_instrument_default_enabled', 'FUNCTION', 'ps_is_instrument_default_enabled', 'SQL', 'READS_SQL_DATA', 'YES', 'INVOKER', 0x20696e5f696e737472756d656e742056415243484152283132382920, 0x656e756d2827594553272c274e4f272920434841525345542075746638, 0x424547494e204445434c41524520765f656e61626c656420454e554d2827594553272c20274e4f27293b202053455420765f656e61626c6564203d20494628696e5f696e737472756d656e74204c494b452027776169742f696f2f66696c652f2527204f5220696e5f696e737472756d656e74204c494b452027776169742f696f2f7461626c652f2527204f5220696e5f696e737472756d656e74204c494b45202773746174656d656e742f2527204f5220696e5f696e737472756d656e74204c494b4520276d656d6f72792f706572666f726d616e63655f736368656d612f2527204f5220696e5f696e737472756d656e7420494e202827776169742f6c6f636b2f7461626c652f73716c2f68616e646c6572272c202769646c65272920204f5220696e5f696e737472756d656e74204c494b45202773746167652f696e6e6f64622f2527204f5220696e5f696e737472756d656e74203d202773746167652f73716c2f636f707920746f20746d70207461626c652720202c2027594553272c20274e4f2720293b202052455455524e20765f656e61626c65643b20454e44, 'mysql.sys@localhost', '2018-07-09 10:50:30', '2018-07-09 10:50:30', '', '\n Description\n \n Returns whether an instrument is enabled by default in this version of MySQL.\n \n Parameters\n \n in_instrument VARCHAR(128): \n The instrument to check.\n \n Returns\n \n ENUM(\'YES\', \'NO\')\n \n Example\n \n mysql> SELECT sys.ps_is_instrument_default_enabled(\'statement/sql/select\');\n +--------------------------------------------------------------+\n | sys.ps_is_instrument_default_enabled(\'statement/sql/select\') |\n +--------------------------------------------------------------+\n | YES                                                          |\n +--------------------------------------------------------------+\n 1 row in set (0.00 sec)\n ', 'utf8', 'utf8_general_ci', 'utf8_general_ci', 0x424547494e204445434c41524520765f656e61626c656420454e554d2827594553272c20274e4f27293b202053455420765f656e61626c6564203d20494628696e5f696e737472756d656e74204c494b452027776169742f696f2f66696c652f2527204f5220696e5f696e737472756d656e74204c494b452027776169742f696f2f7461626c652f2527204f5220696e5f696e737472756d656e74204c494b45202773746174656d656e742f2527204f5220696e5f696e737472756d656e74204c494b4520276d656d6f72792f706572666f726d616e63655f736368656d612f2527204f5220696e5f696e737472756d656e7420494e202827776169742f6c6f636b2f7461626c652f73716c2f68616e646c6572272c202769646c65272920204f5220696e5f696e737472756d656e74204c494b45202773746167652f696e6e6f64622f2527204f5220696e5f696e737472756d656e74203d202773746167652f73716c2f636f707920746f20746d70207461626c652720202c2027594553272c20274e4f2720293b202052455455524e20765f656e61626c65643b20454e44),
('sys', 'ps_is_instrument_default_timed', 'FUNCTION', 'ps_is_instrument_default_timed', 'SQL', 'READS_SQL_DATA', 'YES', 'INVOKER', 0x20696e5f696e737472756d656e742056415243484152283132382920, 0x656e756d2827594553272c274e4f272920434841525345542075746638, 0x424547494e204445434c41524520765f74696d656420454e554d2827594553272c20274e4f27293b202053455420765f74696d6564203d20494628696e5f696e737472756d656e74204c494b452027776169742f696f2f66696c652f2527204f5220696e5f696e737472756d656e74204c494b452027776169742f696f2f7461626c652f2527204f5220696e5f696e737472756d656e74204c494b45202773746174656d656e742f2527204f5220696e5f696e737472756d656e7420494e202827776169742f6c6f636b2f7461626c652f73716c2f68616e646c6572272c202769646c65272920204f5220696e5f696e737472756d656e74204c494b45202773746167652f696e6e6f64622f2527204f5220696e5f696e737472756d656e74203d202773746167652f73716c2f636f707920746f20746d70207461626c652720202c2027594553272c20274e4f2720293b202052455455524e20765f74696d65643b20454e44, 'mysql.sys@localhost', '2018-07-09 10:50:30', '2018-07-09 10:50:30', '', '\n Description\n \n Returns whether an instrument is timed by default in this version of MySQL.\n \n Parameters\n \n in_instrument VARCHAR(128): \n The instrument to check.\n \n Returns\n \n ENUM(\'YES\', \'NO\')\n \n Example\n \n mysql> SELECT sys.ps_is_instrument_default_timed(\'statement/sql/select\');\n +------------------------------------------------------------+\n | sys.ps_is_instrument_default_timed(\'statement/sql/select\') |\n +------------------------------------------------------------+\n | YES                                                        |\n +------------------------------------------------------------+\n 1 row in set (0.00 sec)\n ', 'utf8', 'utf8_general_ci', 'utf8_general_ci', 0x424547494e204445434c41524520765f74696d656420454e554d2827594553272c20274e4f27293b202053455420765f74696d6564203d20494628696e5f696e737472756d656e74204c494b452027776169742f696f2f66696c652f2527204f5220696e5f696e737472756d656e74204c494b452027776169742f696f2f7461626c652f2527204f5220696e5f696e737472756d656e74204c494b45202773746174656d656e742f2527204f5220696e5f696e737472756d656e7420494e202827776169742f6c6f636b2f7461626c652f73716c2f68616e646c6572272c202769646c65272920204f5220696e5f696e737472756d656e74204c494b45202773746167652f696e6e6f64622f2527204f5220696e5f696e737472756d656e74203d202773746167652f73716c2f636f707920746f20746d70207461626c652720202c2027594553272c20274e4f2720293b202052455455524e20765f74696d65643b20454e44),
('sys', 'ps_is_thread_instrumented', 'FUNCTION', 'ps_is_thread_instrumented', 'SQL', 'READS_SQL_DATA', 'NO', 'INVOKER', 0x20696e5f636f6e6e656374696f6e5f696420424947494e5420554e5349474e454420, 0x656e756d2827594553272c274e4f272c27554e4b4e4f574e272920434841525345542075746638, 0x424547494e204445434c41524520765f656e61626c656420454e554d2827594553272c20274e4f272c2027554e4b4e4f574e27293b202049462028696e5f636f6e6e656374696f6e5f6964204953204e554c4c29205448454e2052455455524e204e554c4c3b20454e442049463b202053454c45435420494e535452554d454e54454420494e544f20765f656e61626c65642046524f4d20706572666f726d616e63655f736368656d612e74687265616473202057484552452050524f434553534c4953545f4944203d20696e5f636f6e6e656374696f6e5f69643b202049462028765f656e61626c6564204953204e554c4c29205448454e2052455455524e2027554e4b4e4f574e273b20454c53452052455455524e20765f656e61626c65643b20454e442049463b20454e44, 'mysql.sys@localhost', '2018-07-09 10:50:30', '2018-07-09 10:50:30', '', '\n Description\n \n Checks whether the provided connection id is instrumented within Performance Schema.\n \n Parameters\n \n in_connection_id (BIGINT UNSIGNED):\n The id of the connection to check.\n \n Returns\n \n ENUM(\'YES\', \'NO\', \'UNKNOWN\')\n \n Example\n \n mysql> SELECT sys.ps_is_thread_instrumented(CONNECTION_ID());\n +------------------------------------------------+\n | sys.ps_is_thread_instrumented(CONNECTION_ID()) |\n +------------------------------------------------+\n | YES                                            |\n +------------------------------------------------+\n ', 'utf8', 'utf8_general_ci', 'utf8_general_ci', 0x424547494e204445434c41524520765f656e61626c656420454e554d2827594553272c20274e4f272c2027554e4b4e4f574e27293b202049462028696e5f636f6e6e656374696f6e5f6964204953204e554c4c29205448454e2052455455524e204e554c4c3b20454e442049463b202053454c45435420494e535452554d454e54454420494e544f20765f656e61626c65642046524f4d20706572666f726d616e63655f736368656d612e74687265616473202057484552452050524f434553534c4953545f4944203d20696e5f636f6e6e656374696f6e5f69643b202049462028765f656e61626c6564204953204e554c4c29205448454e2052455455524e2027554e4b4e4f574e273b20454c53452052455455524e20765f656e61626c65643b20454e442049463b20454e44),
('sys', 'ps_thread_id', 'FUNCTION', 'ps_thread_id', 'SQL', 'READS_SQL_DATA', 'NO', 'INVOKER', 0x20696e5f636f6e6e656374696f6e5f696420424947494e5420554e5349474e454420, 0x626967696e742832302920756e7369676e6564, 0x424547494e2052455455524e202853454c454354205448524541445f49442046524f4d2060706572666f726d616e63655f736368656d61602e6074687265616473602057484552452050524f434553534c4953545f4944203d2049464e554c4c28696e5f636f6e6e656374696f6e5f69642c20434f4e4e454354494f4e5f494428292920293b20454e44, 'mysql.sys@localhost', '2018-07-09 10:50:30', '2018-07-09 10:50:30', '', '\n Description\n \n Return the Performance Schema THREAD_ID for the specified connection ID.\n \n Parameters\n \n in_connection_id (BIGINT UNSIGNED):\n The id of the connection to return the thread id for. If NULL, the current\n connection thread id is returned.\n \n Example\n \n mysql> SELECT sys.ps_thread_id(79);\n +----------------------+\n | sys.ps_thread_id(79) |\n +----------------------+\n |                   98 |\n +----------------------+\n 1 row in set (0.00 sec)\n \n mysql> SELECT sys.ps_thread_id(CONNECTION_ID());\n +-----------------------------------+\n | sys.ps_thread_id(CONNECTION_ID()) |\n +-----------------------------------+\n |                                98 |\n +-----------------------------------+\n 1 row in set (0.00 sec)\n ', 'utf8', 'utf8_general_ci', 'utf8_general_ci', 0x424547494e2052455455524e202853454c454354205448524541445f49442046524f4d2060706572666f726d616e63655f736368656d61602e6074687265616473602057484552452050524f434553534c4953545f4944203d2049464e554c4c28696e5f636f6e6e656374696f6e5f69642c20434f4e4e454354494f4e5f494428292920293b20454e44);
INSERT INTO `proc` (`db`, `name`, `type`, `specific_name`, `language`, `sql_data_access`, `is_deterministic`, `security_type`, `param_list`, `returns`, `body`, `definer`, `created`, `modified`, `sql_mode`, `comment`, `character_set_client`, `collation_connection`, `db_collation`, `body_utf8`) VALUES
('sys', 'ps_thread_account', 'FUNCTION', 'ps_thread_account', 'SQL', 'READS_SQL_DATA', 'NO', 'INVOKER', 0x20696e5f7468726561645f696420424947494e5420554e5349474e454420, 0x7465787420434841525345542075746638, 0x424547494e2052455455524e202853454c454354204946282074797065203d2027464f524547524f554e44272c20434f4e4341542870726f636573736c6973745f757365722c202740272c2070726f636573736c6973745f686f7374292c20747970652029204153206163636f756e742046524f4d2060706572666f726d616e63655f736368656d61602e607468726561647360205748455245207468726561645f6964203d20696e5f7468726561645f6964293b20454e44, 'mysql.sys@localhost', '2018-07-09 10:50:30', '2018-07-09 10:50:30', '', '\n Description\n \n Return the user@host account for the given Performance Schema thread id.\n \n Parameters\n \n in_thread_id (BIGINT UNSIGNED):\n The id of the thread to return the account for.\n \n Example\n \n mysql> select thread_id, processlist_user, processlist_host from performance_schema.threads where type = \'foreground\';\n +-----------+------------------+------------------+\n | thread_id | processlist_user | processlist_host |\n +-----------+------------------+------------------+\n |        23 | NULL             | NULL             |\n |        30 | root             | localhost        |\n |        31 | msandbox         | localhost        |\n |        32 | msandbox         | localhost        |\n +-----------+------------------+------------------+\n 4 rows in set (0.00 sec)\n \n mysql> select sys.ps_thread_account(31);\n +---------------------------+\n | sys.ps_thread_account(31) |\n +---------------------------+\n | msandbox@localhost        |\n +---------------------------+\n 1 row in set (0.00 sec)\n ', 'utf8', 'utf8_general_ci', 'utf8_general_ci', 0x424547494e2052455455524e202853454c454354204946282074797065203d2027464f524547524f554e44272c20434f4e4341542870726f636573736c6973745f757365722c202740272c2070726f636573736c6973745f686f7374292c20747970652029204153206163636f756e742046524f4d2060706572666f726d616e63655f736368656d61602e607468726561647360205748455245207468726561645f6964203d20696e5f7468726561645f6964293b20454e44),
('sys', 'ps_thread_stack', 'FUNCTION', 'ps_thread_stack', 'SQL', 'READS_SQL_DATA', 'NO', 'INVOKER', 0x207468645f696420424947494e5420554e5349474e45442c20646562756720424f4f4c45414e20, 0x6c6f6e67746578742043484152534554206c6174696e31, 0x424547494e20204445434c415245206a736f6e5f6f626a65637473204c4f4e47544558543b20202055504441544520706572666f726d616e63655f736368656d612e746872656164732053455420696e737472756d656e746564203d20274e4f272057484552452070726f636573736c6973745f6964203d20434f4e4e454354494f4e5f494428293b2020205345542053455353494f4e2067726f75705f636f6e6361745f6d61785f6c656e3d4040676c6f62616c2e6d61785f616c6c6f7765645f7061636b65743b202053454c4543542047524f55505f434f4e43415428434f4e4341542820277b27202c20434f4e4341545f57532820272c2027202c20434f4e4341542827226e657374696e675f6576656e745f6964223a2022272c204946286e657374696e675f6576656e745f6964204953204e554c4c2c202730272c206e657374696e675f6576656e745f6964292c2027222729202c20434f4e4341542827226576656e745f6964223a2022272c206576656e745f69642c2027222729202c20434f4e4341542820272274696d65725f77616974223a20272c20524f554e442874696d65725f776169742f313030303030302c203229292020202c20434f4e434154282027226576656e745f696e666f223a202227202c2043415345205748454e206576656e745f6e616d65204e4f54204c494b452027776169742f696f2527205448454e205245504c41434528535542535452494e475f494e444558286576656e745f6e616d652c20272f272c202d32292c20275c5c272c20275c5c5c5c2729205748454e206576656e745f6e616d65204e4f54204c494b452027776169742f696f2f66696c652527204f52206576656e745f6e616d65204e4f54204c494b452027776169742f696f2f736f636b65742527205448454e205245504c41434528535542535452494e475f494e444558286576656e745f6e616d652c20272f272c202d34292c20275c5c272c20275c5c5c5c272920454c5345206576656e745f6e616d6520454e44202c202722272029202c20434f4e43415428202722776169745f696e666f223a2022272c2049464e554c4c28776169745f696e666f2c202727292c2027222729202c20434f4e43415428202722736f75726365223a2022272c204946287472756520414e44206576656e745f6e616d65204c494b4520277761697425272c2049464e554c4c28776169745f696e666f2c202727292c202727292c2027222729202c204341534520205748454e206576656e745f6e616d65204c494b452027776169742f696f2f66696c6525272020202020205448454e2027226576656e745f74797065223a2022696f2f66696c652227205748454e206576656e745f6e616d65204c494b452027776169742f696f2f7461626c65252720202020205448454e2027226576656e745f74797065223a2022696f2f7461626c652227205748454e206576656e745f6e616d65204c494b452027776169742f696f2f736f636b65742527202020205448454e2027226576656e745f74797065223a2022696f2f736f636b65742227205748454e206576656e745f6e616d65204c494b452027776169742f73796e63682f6d75746578252720205448454e2027226576656e745f74797065223a202273796e63682f6d757465782227205748454e206576656e745f6e616d65204c494b452027776169742f73796e63682f636f6e6425272020205448454e2027226576656e745f74797065223a202273796e63682f636f6e642227205748454e206576656e745f6e616d65204c494b452027776169742f73796e63682f72776c6f636b2527205448454e2027226576656e745f74797065223a202273796e63682f72776c6f636b2227205748454e206576656e745f6e616d65204c494b452027776169742f6c6f636b25272020202020202020205448454e2027226576656e745f74797065223a20226c6f636b2227205748454e206576656e745f6e616d65204c494b45202773746174656d656e742f252720202020202020205448454e2027226576656e745f74797065223a202273746d742227205748454e206576656e745f6e616d65204c494b45202773746167652f25272020202020202020202020205448454e2027226576656e745f74797065223a202273746167652227205748454e206576656e745f6e616d65204c494b4520272569646c652527202020202020202020202020205448454e2027226576656e745f74797065223a202269646c65222720454c53452027272020454e44202020202020202020202020202020202020202029202c20277d272029204f52444552204259206576656e745f69642041534320534550415241544f5220272c2729206576656e7420494e544f206a736f6e5f6f626a656374732046524f4d202820202853454c454354207468726561645f69642c206576656e745f69642c206576656e745f6e616d652c2074696d65725f776169742c2074696d65725f73746172742c206e657374696e675f6576656e745f69642c2020434f4e4341542873716c5f746578742c20275c5c6e272c20276572726f72733a20272c206572726f72732c20275c5c6e272c20277761726e696e67733a20272c207761726e696e67732c20275c5c6e272c20276c6f636b2074696d653a20272c20524f554e44286c6f636b5f74696d652f313030303030302c2032292c2775735c5c6e272c2027726f77732061666665637465643a20272c20726f77735f61666665637465642c20275c5c6e272c2027726f77732073656e743a20272c20726f77735f73656e742c20275c5c6e272c2027726f7773206578616d696e65643a20272c20726f77735f6578616d696e65642c20275c5c6e272c2027746d70207461626c65733a20272c20637265617465645f746d705f7461626c65732c20275c5c6e272c2027746d70206469736b207461626c65733a20272c20637265617465645f746d705f6469736b5f7461626c65732c20275c5c6e272c202773656c656374207363616e3a20272c2073656c6563745f7363616e2c20275c5c6e272c202773656c6563742066756c6c206a6f696e3a20272c2073656c6563745f66756c6c5f6a6f696e2c20275c5c6e272c202773656c6563742066756c6c2072616e6765206a6f696e3a20272c2073656c6563745f66756c6c5f72616e67655f6a6f696e2c20275c5c6e272c202773656c6563742072616e67653a20272c2073656c6563745f72616e67652c20275c5c6e272c202773656c6563742072616e676520636865636b3a20272c2073656c6563745f72616e67655f636865636b2c20275c5c6e272c202027736f7274206d65726765207061737365733a20272c20736f72745f6d657267655f7061737365732c20275c5c6e272c2027736f727420726f77733a20272c20736f72745f726f77732c20275c5c6e272c2027736f72742072616e67653a20272c20736f72745f72616e67652c20275c5c6e272c2027736f7274207363616e3a20272c20736f72745f7363616e2c20275c5c6e272c20276e6f20696e64657820757365643a20272c204946286e6f5f696e6465785f757365642c202754525545272c202746414c534527292c20275c5c6e272c20276e6f20676f6f6420696e64657820757365643a20272c204946286e6f5f676f6f645f696e6465785f757365642c202754525545272c202746414c534527292c20275c5c6e27202920415320776169745f696e666f2046524f4d20706572666f726d616e63655f736368656d612e6576656e74735f73746174656d656e74735f686973746f72795f6c6f6e67205748455245207468726561645f6964203d207468645f69642920554e494f4e20202853454c454354207468726561645f69642c206576656e745f69642c206576656e745f6e616d652c2074696d65725f776169742c2074696d65725f73746172742c206e657374696e675f6576656e745f69642c206e756c6c20415320776169745f696e666f2046524f4d20706572666f726d616e63655f736368656d612e6576656e74735f7374616765735f686973746f72795f6c6f6e67205748455245207468726561645f6964203d207468645f6964292020554e494f4e20202853454c454354207468726561645f69642c206576656e745f69642c2020434f4e434154286576656e745f6e616d65202c20204946286576656e745f6e616d65204e4f54204c494b452027776169742f73796e63682f6d7574657825272c2049464e554c4c28434f4e4341542827202d20272c206f7065726174696f6e292c202727292c202727292c20204946286e756d6265725f6f665f6279746573204953204e4f54204e554c4c2c20434f4e434154282720272c206e756d6265725f6f665f62797465732c202720627974657327292c202727292c204946286576656e745f6e616d65204c494b452027776169742f696f2f66696c6525272c20275c5c6e272c202727292c204946286f626a6563745f736368656d61204953204e4f54204e554c4c2c20434f4e43415428275c5c6e4f626a6563743a20272c206f626a6563745f736368656d612c20272e27292c202727292c20204946286f626a6563745f6e616d65204953204e4f54204e554c4c2c2020494620286576656e745f6e616d65204c494b452027776169742f696f2f736f636b657425272c20434f4e43415428494620286f626a6563745f6e616d65204c494b4520273a3025272c204040736f636b65742c206f626a6563745f6e616d6529292c206f626a6563745f6e616d65292c202727292c2020494628696e6465785f6e616d65204953204e4f54204e554c4c2c20434f4e434154282720496e6465783a20272c20696e6465785f6e616d65292c202727292c20275c5c6e272029204153206576656e745f6e616d652c2074696d65725f776169742c2074696d65725f73746172742c206e657374696e675f6576656e745f69642c20736f7572636520415320776169745f696e666f2046524f4d20706572666f726d616e63655f736368656d612e6576656e74735f77616974735f686973746f72795f6c6f6e67205748455245207468726561645f6964203d207468645f69642929206576656e747320204f52444552204259206576656e745f69643b202052455455524e20434f4e43415428277b272c2020434f4e4341545f575328272c272c2020272272616e6b646972223a20224c5222272c2027226e6f6465736570223a2022302e313022272c20434f4e434154282722737461636b5f63726561746564223a2022272c204e4f5728292c20272227292c20434f4e4341542827226d7973716c5f76657273696f6e223a2022272c2056455253494f4e28292c20272227292c20434f4e4341542827226d7973716c5f75736572223a2022272c2043555252454e545f5553455228292c20272227292c20434f4e4341542827226576656e7473223a205b272c2049464e554c4c286a736f6e5f6f626a656374732c2727292c20275d272920292c20277d27293b2020454e44, 'mysql.sys@localhost', '2018-07-09 10:50:30', '2018-07-09 10:50:30', '', '\n Description\n \n Outputs a JSON formatted stack of all statements, stages and events\n within Performance Schema for the specified thread.\n \n Parameters\n \n thd_id (BIGINT UNSIGNED):\n The id of the thread to trace. This should match the thread_id\n column from the performance_schema.threads table.\n in_verbose (BOOLEAN):\n Include file:lineno information in the events.\n \n Example\n \n (line separation added for output)\n \n mysql> SELECT sys.ps_thread_stack(37, FALSE) AS thread_stack\\G\n *************************** 1. row ***************************\n thread_stack: {\"rankdir\": \"LR\",\"nodesep\": \"0.10\",\"stack_created\": \"2014-02-19 13:39:03\",\n \"mysql_version\": \"5.7.3-m13\",\"mysql_user\": \"root@localhost\",\"events\": \n [{\"nesting_event_id\": \"0\", \"event_id\": \"10\", \"timer_wait\": 256.35, \"event_info\": \n \"sql/select\", \"wait_info\": \"select @@version_comment limit 1\\nerrors: 0\\nwarnings: 0\\nlock time:\n ...\n ', 'utf8', 'utf8_general_ci', 'utf8_general_ci', 0x424547494e20204445434c415245206a736f6e5f6f626a65637473204c4f4e47544558543b20202055504441544520706572666f726d616e63655f736368656d612e746872656164732053455420696e737472756d656e746564203d20274e4f272057484552452070726f636573736c6973745f6964203d20434f4e4e454354494f4e5f494428293b2020205345542053455353494f4e2067726f75705f636f6e6361745f6d61785f6c656e3d4040676c6f62616c2e6d61785f616c6c6f7765645f7061636b65743b202053454c4543542047524f55505f434f4e43415428434f4e4341542820277b27202c20434f4e4341545f57532820272c2027202c20434f4e4341542827226e657374696e675f6576656e745f6964223a2022272c204946286e657374696e675f6576656e745f6964204953204e554c4c2c202730272c206e657374696e675f6576656e745f6964292c2027222729202c20434f4e4341542827226576656e745f6964223a2022272c206576656e745f69642c2027222729202c20434f4e4341542820272274696d65725f77616974223a20272c20524f554e442874696d65725f776169742f313030303030302c203229292020202c20434f4e434154282027226576656e745f696e666f223a202227202c2043415345205748454e206576656e745f6e616d65204e4f54204c494b452027776169742f696f2527205448454e205245504c41434528535542535452494e475f494e444558286576656e745f6e616d652c20272f272c202d32292c20275c272c20275c5c2729205748454e206576656e745f6e616d65204e4f54204c494b452027776169742f696f2f66696c652527204f52206576656e745f6e616d65204e4f54204c494b452027776169742f696f2f736f636b65742527205448454e205245504c41434528535542535452494e475f494e444558286576656e745f6e616d652c20272f272c202d34292c20275c272c20275c5c272920454c5345206576656e745f6e616d6520454e44202c202722272029202c20434f4e43415428202722776169745f696e666f223a2022272c2049464e554c4c28776169745f696e666f2c202727292c2027222729202c20434f4e43415428202722736f75726365223a2022272c204946287472756520414e44206576656e745f6e616d65204c494b4520277761697425272c2049464e554c4c28776169745f696e666f2c202727292c202727292c2027222729202c204341534520205748454e206576656e745f6e616d65204c494b452027776169742f696f2f66696c6525272020202020205448454e2027226576656e745f74797065223a2022696f2f66696c652227205748454e206576656e745f6e616d65204c494b452027776169742f696f2f7461626c65252720202020205448454e2027226576656e745f74797065223a2022696f2f7461626c652227205748454e206576656e745f6e616d65204c494b452027776169742f696f2f736f636b65742527202020205448454e2027226576656e745f74797065223a2022696f2f736f636b65742227205748454e206576656e745f6e616d65204c494b452027776169742f73796e63682f6d75746578252720205448454e2027226576656e745f74797065223a202273796e63682f6d757465782227205748454e206576656e745f6e616d65204c494b452027776169742f73796e63682f636f6e6425272020205448454e2027226576656e745f74797065223a202273796e63682f636f6e642227205748454e206576656e745f6e616d65204c494b452027776169742f73796e63682f72776c6f636b2527205448454e2027226576656e745f74797065223a202273796e63682f72776c6f636b2227205748454e206576656e745f6e616d65204c494b452027776169742f6c6f636b25272020202020202020205448454e2027226576656e745f74797065223a20226c6f636b2227205748454e206576656e745f6e616d65204c494b45202773746174656d656e742f252720202020202020205448454e2027226576656e745f74797065223a202273746d742227205748454e206576656e745f6e616d65204c494b45202773746167652f25272020202020202020202020205448454e2027226576656e745f74797065223a202273746167652227205748454e206576656e745f6e616d65204c494b4520272569646c652527202020202020202020202020205448454e2027226576656e745f74797065223a202269646c65222720454c53452027272020454e44202020202020202020202020202020202020202029202c20277d272029204f52444552204259206576656e745f69642041534320534550415241544f5220272c2729206576656e7420494e544f206a736f6e5f6f626a656374732046524f4d202820202853454c454354207468726561645f69642c206576656e745f69642c206576656e745f6e616d652c2074696d65725f776169742c2074696d65725f73746172742c206e657374696e675f6576656e745f69642c2020434f4e4341542873716c5f746578742c20275c6e272c20276572726f72733a20272c206572726f72732c20275c6e272c20277761726e696e67733a20272c207761726e696e67732c20275c6e272c20276c6f636b2074696d653a20272c20524f554e44286c6f636b5f74696d652f313030303030302c2032292c2775735c6e272c2027726f77732061666665637465643a20272c20726f77735f61666665637465642c20275c6e272c2027726f77732073656e743a20272c20726f77735f73656e742c20275c6e272c2027726f7773206578616d696e65643a20272c20726f77735f6578616d696e65642c20275c6e272c2027746d70207461626c65733a20272c20637265617465645f746d705f7461626c65732c20275c6e272c2027746d70206469736b207461626c65733a20272c20637265617465645f746d705f6469736b5f7461626c65732c20275c6e272c202773656c656374207363616e3a20272c2073656c6563745f7363616e2c20275c6e272c202773656c6563742066756c6c206a6f696e3a20272c2073656c6563745f66756c6c5f6a6f696e2c20275c6e272c202773656c6563742066756c6c2072616e6765206a6f696e3a20272c2073656c6563745f66756c6c5f72616e67655f6a6f696e2c20275c6e272c202773656c6563742072616e67653a20272c2073656c6563745f72616e67652c20275c6e272c202773656c6563742072616e676520636865636b3a20272c2073656c6563745f72616e67655f636865636b2c20275c6e272c202027736f7274206d65726765207061737365733a20272c20736f72745f6d657267655f7061737365732c20275c6e272c2027736f727420726f77733a20272c20736f72745f726f77732c20275c6e272c2027736f72742072616e67653a20272c20736f72745f72616e67652c20275c6e272c2027736f7274207363616e3a20272c20736f72745f7363616e2c20275c6e272c20276e6f20696e64657820757365643a20272c204946286e6f5f696e6465785f757365642c202754525545272c202746414c534527292c20275c6e272c20276e6f20676f6f6420696e64657820757365643a20272c204946286e6f5f676f6f645f696e6465785f757365642c202754525545272c202746414c534527292c20275c6e27202920415320776169745f696e666f2046524f4d20706572666f726d616e63655f736368656d612e6576656e74735f73746174656d656e74735f686973746f72795f6c6f6e67205748455245207468726561645f6964203d207468645f69642920554e494f4e20202853454c454354207468726561645f69642c206576656e745f69642c206576656e745f6e616d652c2074696d65725f776169742c2074696d65725f73746172742c206e657374696e675f6576656e745f69642c206e756c6c20415320776169745f696e666f2046524f4d20706572666f726d616e63655f736368656d612e6576656e74735f7374616765735f686973746f72795f6c6f6e67205748455245207468726561645f6964203d207468645f6964292020554e494f4e20202853454c454354207468726561645f69642c206576656e745f69642c2020434f4e434154286576656e745f6e616d65202c20204946286576656e745f6e616d65204e4f54204c494b452027776169742f73796e63682f6d7574657825272c2049464e554c4c28434f4e4341542827202d20272c206f7065726174696f6e292c202727292c202727292c20204946286e756d6265725f6f665f6279746573204953204e4f54204e554c4c2c20434f4e434154282720272c206e756d6265725f6f665f62797465732c202720627974657327292c202727292c204946286576656e745f6e616d65204c494b452027776169742f696f2f66696c6525272c20275c6e272c202727292c204946286f626a6563745f736368656d61204953204e4f54204e554c4c2c20434f4e43415428275c6e4f626a6563743a20272c206f626a6563745f736368656d612c20272e27292c202727292c20204946286f626a6563745f6e616d65204953204e4f54204e554c4c2c2020494620286576656e745f6e616d65204c494b452027776169742f696f2f736f636b657425272c20434f4e43415428494620286f626a6563745f6e616d65204c494b4520273a3025272c204040736f636b65742c206f626a6563745f6e616d6529292c206f626a6563745f6e616d65292c202727292c2020494628696e6465785f6e616d65204953204e4f54204e554c4c2c20434f4e434154282720496e6465783a20272c20696e6465785f6e616d65292c202727292c20275c6e272029204153206576656e745f6e616d652c2074696d65725f776169742c2074696d65725f73746172742c206e657374696e675f6576656e745f69642c20736f7572636520415320776169745f696e666f2046524f4d20706572666f726d616e63655f736368656d612e6576656e74735f77616974735f686973746f72795f6c6f6e67205748455245207468726561645f6964203d207468645f69642929206576656e747320204f52444552204259206576656e745f69643b202052455455524e20434f4e43415428277b272c2020434f4e4341545f575328272c272c2020272272616e6b646972223a20224c5222272c2027226e6f6465736570223a2022302e313022272c20434f4e434154282722737461636b5f63726561746564223a2022272c204e4f5728292c20272227292c20434f4e4341542827226d7973716c5f76657273696f6e223a2022272c2056455253494f4e28292c20272227292c20434f4e4341542827226d7973716c5f75736572223a2022272c2043555252454e545f5553455228292c20272227292c20434f4e4341542827226576656e7473223a205b272c2049464e554c4c286a736f6e5f6f626a656374732c2727292c20275d272920292c20277d27293b2020454e44),
('sys', 'ps_thread_trx_info', 'FUNCTION', 'ps_thread_trx_info', 'SQL', 'READS_SQL_DATA', 'NO', 'INVOKER', 0x20696e5f7468726561645f696420424947494e5420554e5349474e454420, 0x6c6f6e677465787420434841525345542075746638, 0x424547494e204445434c41524520765f6f7574707574204c4f4e47544558542044454641554c5420277b7d273b204445434c41524520765f6d73675f7465787420544558542044454641554c542027273b204445434c41524520765f7369676e616c5f6d736720544558542044454641554c542027273b204445434c41524520765f6d7973716c5f6572726e6f20494e543b204445434c41524520765f6d61785f6f75747075745f6c656e20424947494e543b204445434c41524520455849542048414e444c455220464f522053514c5741524e494e472c2053514c455843455054494f4e20424547494e2047455420444941474e4f535449435320434f4e444954494f4e203120765f6d73675f74657874203d204d4553534147455f544558542c20765f6d7973716c5f6572726e6f203d204d5953514c5f4552524e4f3b2020494620765f6d7973716c5f6572726e6f203d2031323630205448454e2053455420765f7369676e616c5f6d7367203d20434f4e43415428277b20226572726f72223a202254727820696e666f207472756e63617465643a20272c20765f6d73675f746578742c202722207d27293b20454c53452053455420765f7369676e616c5f6d7367203d20434f4e43415428277b20226572726f72223a2022272c20765f6d73675f746578742c202722207d27293b20454e442049463b202052455455524e20765f7369676e616c5f6d73673b20454e443b202049462028407379732e70735f7468726561645f7472785f696e666f2e6d61785f6c656e677468204953204e554c4c29205448454e2053455420407379732e70735f7468726561645f7472785f696e666f2e6d61785f6c656e677468203d207379732e7379735f6765745f636f6e666967282770735f7468726561645f7472785f696e666f2e6d61785f6c656e677468272c203635353335293b20454e442049463b202049462028407379732e70735f7468726561645f7472785f696e666f2e6d61785f6c656e67746820213d20404073657373696f6e2e67726f75705f636f6e6361745f6d61785f6c656e29205448454e2053455420406f6c645f67726f75705f636f6e6361745f6d61785f6c656e203d20404073657373696f6e2e67726f75705f636f6e6361745f6d61785f6c656e3b2053455420765f6d61785f6f75747075745f6c656e203d2028407379732e70735f7468726561645f7472785f696e666f2e6d61785f6c656e677468202d2035293b205345542053455353494f4e2067726f75705f636f6e6361745f6d61785f6c656e203d20765f6d61785f6f75747075745f6c656e3b20454e442049463b202053455420765f6f7574707574203d20282053454c45435420434f4e43415428275b272c2049464e554c4c2847524f55505f434f4e434154287472785f696e666f204f52444552204259206576656e745f6964292c202727292c20275c6e5d2729204153207472785f696e666f2046524f4d202853454c45435420747278692e7468726561645f69642c2020747278692e6576656e745f69642c2047524f55505f434f4e434154282049464e554c4c2820434f4e43415428275c6e20207b5c6e272c2027202020202274696d65223a2022272c2049464e554c4c287379732e666f726d61745f74696d6528747278692e74696d65725f77616974292c202727292c2027222c5c6e272c202720202020227374617465223a2022272c2049464e554c4c28747278692e73746174652c202727292c2027222c5c6e272c202720202020226d6f6465223a2022272c2049464e554c4c28747278692e6163636573735f6d6f64652c202727292c2027222c5c6e272c202720202020226175746f636f6d6d6974746564223a2022272c2049464e554c4c28747278692e6175746f636f6d6d69742c202727292c2027222c5c6e272c2027202020202267746964223a2022272c2049464e554c4c28747278692e677469642c202727292c2027222c5c6e272c2027202020202269736f6c6174696f6e223a2022272c2049464e554c4c28747278692e69736f6c6174696f6e5f6c6576656c2c202727292c2027222c5c6e272c2027202020202273746174656d656e74735f6578656375746564223a205b272c2049464e554c4c28732e73746d74732c202727292c20494628732e73746d7473204953204e554c4c2c2027205d5c6e272c20275c6e202020205d5c6e27292c202720207d2720292c202027272920204f52444552204259206576656e745f696429204153207472785f696e666f202046524f4d2028202853454c454354207468726561645f69642c206576656e745f69642c2074696d65725f776169742c2073746174652c6163636573735f6d6f64652c206175746f636f6d6d69742c20677469642c2069736f6c6174696f6e5f6c6576656c2046524f4d20706572666f726d616e63655f736368656d612e6576656e74735f7472616e73616374696f6e735f63757272656e74205748455245207468726561645f6964203d20696e5f7468726561645f696420414e4420656e645f6576656e745f6964204953204e554c4c2920554e494f4e202853454c454354207468726561645f69642c206576656e745f69642c2074696d65725f776169742c2073746174652c6163636573735f6d6f64652c206175746f636f6d6d69742c20677469642c2069736f6c6174696f6e5f6c6576656c2046524f4d20706572666f726d616e63655f736368656d612e6576656e74735f7472616e73616374696f6e735f686973746f7279205748455245207468726561645f6964203d20696e5f7468726561645f69642920292041532074727869204c454654204a4f494e202853454c454354207468726561645f69642c206e657374696e675f6576656e745f69642c2047524f55505f434f4e434154282049464e554c4c2820434f4e43415428275c6e2020202020207b5c6e272c202720202020202020202273716c5f74657874223a2022272c2049464e554c4c287379732e666f726d61745f73746174656d656e74285245504c4143452873716c5f746578742c20275c5c272c20275c5c5c5c2729292c202727292c2027222c5c6e272c202720202020202020202274696d65223a2022272c2049464e554c4c287379732e666f726d61745f74696d652874696d65725f77616974292c202727292c2027222c5c6e272c2027202020202020202022736368656d61223a2022272c2049464e554c4c2863757272656e745f736368656d612c202727292c2027222c5c6e272c2027202020202020202022726f77735f6578616d696e6564223a20272c2049464e554c4c28726f77735f6578616d696e65642c202727292c20272c5c6e272c2027202020202020202022726f77735f6166666563746564223a20272c2049464e554c4c28726f77735f61666665637465642c202727292c20272c5c6e272c2027202020202020202022726f77735f73656e74223a20272c2049464e554c4c28726f77735f73656e742c202727292c20272c5c6e272c2027202020202020202022746d705f7461626c6573223a20272c2049464e554c4c28637265617465645f746d705f7461626c65732c202727292c20272c5c6e272c2027202020202020202022746d705f6469736b5f7461626c6573223a20272c2049464e554c4c28637265617465645f746d705f6469736b5f7461626c65732c202727292c20272c5c6e272c2027202020202020202022736f72745f726f7773223a20272c2049464e554c4c28736f72745f726f77732c202727292c20272c5c6e272c2027202020202020202022736f72745f6d657267655f706173736573223a20272c2049464e554c4c28736f72745f6d657267655f7061737365732c202727292c20275c6e272c20272020202020207d27292c20272729204f52444552204259206576656e745f6964292041532073746d74732046524f4d20706572666f726d616e63655f736368656d612e6576656e74735f73746174656d656e74735f686973746f72792057484552452073716c5f74657874204953204e4f54204e554c4c20414e44207468726561645f6964203d20696e5f7468726561645f69642047524f5550204259207468726561645f69642c206e657374696e675f6576656e745f69642029204153207320204f4e20747278692e7468726561645f6964203d20732e7468726561645f69642020414e4420747278692e6576656e745f6964203d20732e6e657374696e675f6576656e745f696420574845524520747278692e7468726561645f6964203d20696e5f7468726561645f69642047524f555020425920747278692e7468726561645f69642c20747278692e6576656e745f6964202920747278732047524f5550204259207468726561645f696420293b202049462028406f6c645f67726f75705f636f6e6361745f6d61785f6c656e204953204e4f54204e554c4c29205448454e205345542053455353494f4e2067726f75705f636f6e6361745f6d61785f6c656e203d20406f6c645f67726f75705f636f6e6361745f6d61785f6c656e3b20454e442049463b202052455455524e20765f6f75747075743b20454e44, 'mysql.sys@localhost', '2018-07-09 10:50:30', '2018-07-09 10:50:30', '', '\n Description\n \n Returns a JSON object with info on the given threads current transaction, \n and the statements it has already executed, derived from the\n performance_schema.events_transactions_current and\n performance_schema.events_statements_history tables (so the consumers \n for these also have to be enabled within Performance Schema to get full\n data in the object).\n \n When the output exceeds the default truncation length (65535), a JSON error\n object is returned, such as:\n \n { \"error\": \"Trx info truncated: Row 6 was cut by GROUP_CONCAT()\" }\n \n Similar error objects are returned for other warnings/and exceptions raised\n when calling the function.\n \n The max length of the output of this function can be controlled with the\n ps_thread_trx_info.max_length variable set via sys_config, or the\n @sys.ps_thread_trx_info.max_length user variable, as appropriate.\n \n Parameters\n \n in_thread_id (BIGINT UNSIGNED):\n The id of the thread to return the transaction info for.\n \n Example\n \n SELECT sys.ps_thread_trx_info(48)\\G\n *************************** 1. row ***************************\n sys.ps_thread_trx_info(48): [\n {\n \"time\": \"790.70 us\",\n \"state\": \"COMMITTED\",\n \"mode\": \"READ WRITE\",\n \"autocommitted\": \"NO\",\n \"gtid\": \"AUTOMATIC\",\n \"isolation\": \"REPEATABLE READ\",\n \"statements_executed\": [\n {\n \"sql_text\": \"INSERT INTO info VALUES (1, \'foo\')\",\n \"time\": \"471.02 us\",\n \"schema\": \"trx\",\n \"rows_examined\": 0,\n \"rows_affected\": 1,\n \"rows_sent\": 0,\n \"tmp_tables\": 0,\n \"tmp_disk_tables\": 0,\n \"sort_rows\": 0,\n \"sort_merge_passes\": 0\n },\n {\n \"sql_text\": \"COMMIT\",\n \"time\": \"254.42 us\",\n \"schema\": \"trx\",\n \"rows_examined\": 0,\n \"rows_affected\": 0,\n \"rows_sent\": 0,\n \"tmp_tables\": 0,\n \"tmp_disk_tables\": 0,\n \"sort_rows\": 0,\n \"sort_merge_passes\": 0\n }\n ]\n },\n {\n \"time\": \"426.20 us\",\n \"state\": \"COMMITTED\",\n \"mode\": \"READ WRITE\",\n \"autocommitted\": \"NO\",\n \"gtid\": \"AUTOMATIC\",\n \"isolation\": \"REPEATABLE READ\",\n \"statements_executed\": [\n {\n \"sql_text\": \"INSERT INTO info VALUES (2, \'bar\')\",\n \"time\": \"107.33 us\",\n \"schema\": \"trx\",\n \"rows_examined\": 0,\n \"rows_affected\": 1,\n \"rows_sent\": 0,\n \"tmp_tables\": 0,\n \"tmp_disk_tables\": 0,\n \"sort_rows\": 0,\n \"sort_merge_passes\": 0\n },\n {\n \"sql_text\": \"COMMIT\",\n \"time\": \"213.23 us\",\n \"schema\": \"trx\",\n \"rows_examined\": 0,\n \"rows_affected\": 0,\n \"rows_sent\": 0,\n \"tmp_tables\": 0,\n \"tmp_disk_tables\": 0,\n \"sort_rows\": 0,\n \"sort_merge_passes\": 0\n }\n ]\n }\n ]\n 1 row in set (0.03 sec)\n ', 'utf8', 'utf8_general_ci', 'utf8_general_ci', 0x424547494e204445434c41524520765f6f7574707574204c4f4e47544558542044454641554c5420277b7d273b204445434c41524520765f6d73675f7465787420544558542044454641554c542027273b204445434c41524520765f7369676e616c5f6d736720544558542044454641554c542027273b204445434c41524520765f6d7973716c5f6572726e6f20494e543b204445434c41524520765f6d61785f6f75747075745f6c656e20424947494e543b204445434c41524520455849542048414e444c455220464f522053514c5741524e494e472c2053514c455843455054494f4e20424547494e2047455420444941474e4f535449435320434f4e444954494f4e203120765f6d73675f74657874203d204d4553534147455f544558542c20765f6d7973716c5f6572726e6f203d204d5953514c5f4552524e4f3b2020494620765f6d7973716c5f6572726e6f203d2031323630205448454e2053455420765f7369676e616c5f6d7367203d20434f4e43415428277b20226572726f72223a202254727820696e666f207472756e63617465643a20272c20765f6d73675f746578742c202722207d27293b20454c53452053455420765f7369676e616c5f6d7367203d20434f4e43415428277b20226572726f72223a2022272c20765f6d73675f746578742c202722207d27293b20454e442049463b202052455455524e20765f7369676e616c5f6d73673b20454e443b202049462028407379732e70735f7468726561645f7472785f696e666f2e6d61785f6c656e677468204953204e554c4c29205448454e2053455420407379732e70735f7468726561645f7472785f696e666f2e6d61785f6c656e677468203d207379732e7379735f6765745f636f6e666967282770735f7468726561645f7472785f696e666f2e6d61785f6c656e677468272c203635353335293b20454e442049463b202049462028407379732e70735f7468726561645f7472785f696e666f2e6d61785f6c656e67746820213d20404073657373696f6e2e67726f75705f636f6e6361745f6d61785f6c656e29205448454e2053455420406f6c645f67726f75705f636f6e6361745f6d61785f6c656e203d20404073657373696f6e2e67726f75705f636f6e6361745f6d61785f6c656e3b2053455420765f6d61785f6f75747075745f6c656e203d2028407379732e70735f7468726561645f7472785f696e666f2e6d61785f6c656e677468202d2035293b205345542053455353494f4e2067726f75705f636f6e6361745f6d61785f6c656e203d20765f6d61785f6f75747075745f6c656e3b20454e442049463b202053455420765f6f7574707574203d20282053454c45435420434f4e43415428275b272c2049464e554c4c2847524f55505f434f4e434154287472785f696e666f204f52444552204259206576656e745f6964292c202727292c20270a5d2729204153207472785f696e666f2046524f4d202853454c45435420747278692e7468726561645f69642c2020747278692e6576656e745f69642c2047524f55505f434f4e434154282049464e554c4c2820434f4e43415428270a20207b0a272c2027202020202274696d65223a2022272c2049464e554c4c287379732e666f726d61745f74696d6528747278692e74696d65725f77616974292c202727292c2027222c0a272c202720202020227374617465223a2022272c2049464e554c4c28747278692e73746174652c202727292c2027222c0a272c202720202020226d6f6465223a2022272c2049464e554c4c28747278692e6163636573735f6d6f64652c202727292c2027222c0a272c202720202020226175746f636f6d6d6974746564223a2022272c2049464e554c4c28747278692e6175746f636f6d6d69742c202727292c2027222c0a272c2027202020202267746964223a2022272c2049464e554c4c28747278692e677469642c202727292c2027222c0a272c2027202020202269736f6c6174696f6e223a2022272c2049464e554c4c28747278692e69736f6c6174696f6e5f6c6576656c2c202727292c2027222c0a272c2027202020202273746174656d656e74735f6578656375746564223a205b272c2049464e554c4c28732e73746d74732c202727292c20494628732e73746d7473204953204e554c4c2c2027205d0a272c20270a202020205d0a27292c202720207d2720292c202027272920204f52444552204259206576656e745f696429204153207472785f696e666f202046524f4d2028202853454c454354207468726561645f69642c206576656e745f69642c2074696d65725f776169742c2073746174652c6163636573735f6d6f64652c206175746f636f6d6d69742c20677469642c2069736f6c6174696f6e5f6c6576656c2046524f4d20706572666f726d616e63655f736368656d612e6576656e74735f7472616e73616374696f6e735f63757272656e74205748455245207468726561645f6964203d20696e5f7468726561645f696420414e4420656e645f6576656e745f6964204953204e554c4c2920554e494f4e202853454c454354207468726561645f69642c206576656e745f69642c2074696d65725f776169742c2073746174652c6163636573735f6d6f64652c206175746f636f6d6d69742c20677469642c2069736f6c6174696f6e5f6c6576656c2046524f4d20706572666f726d616e63655f736368656d612e6576656e74735f7472616e73616374696f6e735f686973746f7279205748455245207468726561645f6964203d20696e5f7468726561645f69642920292041532074727869204c454654204a4f494e202853454c454354207468726561645f69642c206e657374696e675f6576656e745f69642c2047524f55505f434f4e434154282049464e554c4c2820434f4e43415428270a2020202020207b0a272c202720202020202020202273716c5f74657874223a2022272c2049464e554c4c287379732e666f726d61745f73746174656d656e74285245504c4143452873716c5f746578742c20275c272c20275c5c2729292c202727292c2027222c0a272c202720202020202020202274696d65223a2022272c2049464e554c4c287379732e666f726d61745f74696d652874696d65725f77616974292c202727292c2027222c0a272c2027202020202020202022736368656d61223a2022272c2049464e554c4c2863757272656e745f736368656d612c202727292c2027222c0a272c2027202020202020202022726f77735f6578616d696e6564223a20272c2049464e554c4c28726f77735f6578616d696e65642c202727292c20272c0a272c2027202020202020202022726f77735f6166666563746564223a20272c2049464e554c4c28726f77735f61666665637465642c202727292c20272c0a272c2027202020202020202022726f77735f73656e74223a20272c2049464e554c4c28726f77735f73656e742c202727292c20272c0a272c2027202020202020202022746d705f7461626c6573223a20272c2049464e554c4c28637265617465645f746d705f7461626c65732c202727292c20272c0a272c2027202020202020202022746d705f6469736b5f7461626c6573223a20272c2049464e554c4c28637265617465645f746d705f6469736b5f7461626c65732c202727292c20272c0a272c2027202020202020202022736f72745f726f7773223a20272c2049464e554c4c28736f72745f726f77732c202727292c20272c0a272c2027202020202020202022736f72745f6d657267655f706173736573223a20272c2049464e554c4c28736f72745f6d657267655f7061737365732c202727292c20270a272c20272020202020207d27292c20272729204f52444552204259206576656e745f6964292041532073746d74732046524f4d20706572666f726d616e63655f736368656d612e6576656e74735f73746174656d656e74735f686973746f72792057484552452073716c5f74657874204953204e4f54204e554c4c20414e44207468726561645f6964203d20696e5f7468726561645f69642047524f5550204259207468726561645f69642c206e657374696e675f6576656e745f69642029204153207320204f4e20747278692e7468726561645f6964203d20732e7468726561645f69642020414e4420747278692e6576656e745f6964203d20732e6e657374696e675f6576656e745f696420574845524520747278692e7468726561645f6964203d20696e5f7468726561645f69642047524f555020425920747278692e7468726561645f69642c20747278692e6576656e745f6964202920747278732047524f5550204259207468726561645f696420293b202049462028406f6c645f67726f75705f636f6e6361745f6d61785f6c656e204953204e4f54204e554c4c29205448454e205345542053455353494f4e2067726f75705f636f6e6361745f6d61785f6c656e203d20406f6c645f67726f75705f636f6e6361745f6d61785f6c656e3b20454e442049463b202052455455524e20765f6f75747075743b20454e44),
('sys', 'quote_identifier', 'FUNCTION', 'quote_identifier', 'SQL', 'NO_SQL', 'YES', 'INVOKER', 0x696e5f6964656e7469666965722054455854, 0x7465787420434841525345542075746638, 0x424547494e2052455455524e20434f4e434154282760272c205245504c41434528696e5f6964656e7469666965722c202760272c2027606027292c20276027293b20454e44, 'mysql.sys@localhost', '2018-07-09 10:50:30', '2018-07-09 10:50:30', '', '\n Description\n \n Takes an unquoted identifier (schema name, table name, etc.) and\n returns the identifier quoted with backticks.\n \n Parameters\n \n in_identifier (TEXT):\n The identifier to quote.\n \n Returns\n \n TEXT\n \n Example\n \n mysql> SELECT sys.quote_identifier(\'my_identifier\') AS Identifier;\n +-----------------+\n | Identifier      |\n +-----------------+\n | `my_identifier` |\n +-----------------+\n 1 row in set (0.00 sec)\n \n mysql> SELECT sys.quote_identifier(\'my`idenfier\') AS Identifier;\n +----------------+\n | Identifier     |\n +----------------+\n | `my``idenfier` |\n +----------------+\n 1 row in set (0.00 sec)\n ', 'utf8', 'utf8_general_ci', 'utf8_general_ci', 0x424547494e2052455455524e20434f4e434154282760272c205245504c41434528696e5f6964656e7469666965722c202760272c2027606027292c20276027293b20454e44),
('sys', 'sys_get_config', 'FUNCTION', 'sys_get_config', 'SQL', 'READS_SQL_DATA', 'YES', 'INVOKER', 0x20696e5f7661726961626c655f6e616d65205641524348415228313238292c20696e5f64656661756c745f76616c75652056415243484152283132382920, 0x76617263686172283132382920434841525345542075746638, 0x424547494e204445434c41524520765f76616c7565205641524348415228313238292044454641554c54204e554c4c3b202053455420765f76616c7565203d202853454c4543542076616c75652046524f4d207379732e7379735f636f6e666967205748455245207661726961626c65203d20696e5f7661726961626c655f6e616d65293b202049462028765f76616c7565204953204e554c4c29205448454e2053455420765f76616c7565203d20696e5f64656661756c745f76616c75653b20454e442049463b202052455455524e20765f76616c75653b20454e44, 'mysql.sys@localhost', '2018-07-09 10:50:30', '2018-07-09 10:50:30', '', '\n Description\n \n Returns the value for the requested variable using the following logic:\n \n 1. If the option exists in sys.sys_config return the value from there.\n 2. Else fall back on the provided default value.\n \n Notes for using sys_get_config():\n \n * If the default value argument to sys_get_config() is NULL and case 2. is reached, NULL is returned.\n It is then expected that the caller is able to handle NULL for the given configuration option.\n * The convention is to name the user variables @sys.<name of variable>. It is <name of variable> that\n is stored in the sys_config table and is what is expected as the argument to sys_get_config().\n * If you want to check whether the configuration option has already been set and if not assign with\n the return value of sys_get_config() you can use IFNULL(...) (see example below). However this should\n not be done inside a loop (e.g. for each row in a result set) as for repeated calls where assignment\n is only needed in the first iteration using IFNULL(...) is expected to be significantly slower than\n using an IF (...) THEN ... END IF; block (see example below).\n \n Parameters\n \n in_variable_name (VARCHAR(128)):\n The name of the config option to return the value for.\n \n in_default_value (VARCHAR(128)):\n The default value to return if the variable does not exist in sys.sys_config.\n \n Returns\n \n VARCHAR(128)\n \n Example\n \n mysql> SELECT sys.sys_get_config(\'statement_truncate_len\', 128) AS Value;\n +-------+\n | Value |\n +-------+\n | 64    |\n +-------+\n 1 row in set (0.00 sec)\n \n mysql> SET @sys.statement_truncate_len = IFNULL(@sys.statement_truncate_len, sys.sys_get_config(\'statement_truncate_len\', 64));\n Query OK, 0 rows affected (0.00 sec)\n \n IF (@sys.statement_truncate_len IS NULL) THEN\n SET @sys.statement_truncate_len = sys.sys_get_config(\'statement_truncate_len\', 64);\n END IF;\n ', 'utf8', 'utf8_general_ci', 'utf8_general_ci', 0x424547494e204445434c41524520765f76616c7565205641524348415228313238292044454641554c54204e554c4c3b202053455420765f76616c7565203d202853454c4543542076616c75652046524f4d207379732e7379735f636f6e666967205748455245207661726961626c65203d20696e5f7661726961626c655f6e616d65293b202049462028765f76616c7565204953204e554c4c29205448454e2053455420765f76616c7565203d20696e5f64656661756c745f76616c75653b20454e442049463b202052455455524e20765f76616c75653b20454e44),
('sys', 'version_major', 'FUNCTION', 'version_major', 'SQL', 'NO_SQL', 'NO', 'INVOKER', '', 0x74696e79696e7428332920756e7369676e6564, 0x424547494e2052455455524e20535542535452494e475f494e44455828535542535452494e475f494e4445582856455253494f4e28292c20272d272c2031292c20272e272c2031293b20454e44, 'mysql.sys@localhost', '2018-07-09 10:50:30', '2018-07-09 10:50:30', '', '\n Description\n \n Returns the major version of MySQL Server.\n \n Returns\n \n TINYINT UNSIGNED\n \n Example\n \n mysql> SELECT VERSION(), sys.version_major();\n +--------------------------------------+---------------------+\n | VERSION()                            | sys.version_major() |\n +--------------------------------------+---------------------+\n | 5.7.9-enterprise-commercial-advanced | 5                   |\n +--------------------------------------+---------------------+\n 1 row in set (0.00 sec)\n ', 'utf8', 'utf8_general_ci', 'utf8_general_ci', 0x424547494e2052455455524e20535542535452494e475f494e44455828535542535452494e475f494e4445582856455253494f4e28292c20272d272c2031292c20272e272c2031293b20454e44),
('sys', 'version_minor', 'FUNCTION', 'version_minor', 'SQL', 'NO_SQL', 'NO', 'INVOKER', '', 0x74696e79696e7428332920756e7369676e6564, 0x424547494e2052455455524e20535542535452494e475f494e44455828535542535452494e475f494e44455828535542535452494e475f494e4445582856455253494f4e28292c20272d272c2031292c20272e272c2032292c20272e272c202d31293b20454e44, 'mysql.sys@localhost', '2018-07-09 10:50:30', '2018-07-09 10:50:30', '', '\n Description\n \n Returns the minor (release series) version of MySQL Server.\n \n Returns\n \n TINYINT UNSIGNED\n \n Example\n \n mysql> SELECT VERSION(), sys.server_minor();\n +--------------------------------------+---------------------+\n | VERSION()                            | sys.version_minor() |\n +--------------------------------------+---------------------+\n | 5.7.9-enterprise-commercial-advanced | 7                   |\n +--------------------------------------+---------------------+\n 1 row in set (0.00 sec)\n ', 'utf8', 'utf8_general_ci', 'utf8_general_ci', 0x424547494e2052455455524e20535542535452494e475f494e44455828535542535452494e475f494e44455828535542535452494e475f494e4445582856455253494f4e28292c20272d272c2031292c20272e272c2032292c20272e272c202d31293b20454e44),
('sys', 'version_patch', 'FUNCTION', 'version_patch', 'SQL', 'NO_SQL', 'NO', 'INVOKER', '', 0x74696e79696e7428332920756e7369676e6564, 0x424547494e2052455455524e20535542535452494e475f494e44455828535542535452494e475f494e4445582856455253494f4e28292c20272d272c2031292c20272e272c202d31293b20454e44, 'mysql.sys@localhost', '2018-07-09 10:50:30', '2018-07-09 10:50:30', '', '\n Description\n \n Returns the patch release version of MySQL Server.\n \n Returns\n \n TINYINT UNSIGNED\n \n Example\n \n mysql> SELECT VERSION(), sys.version_patch();\n +--------------------------------------+---------------------+\n | VERSION()                            | sys.version_patch() |\n +--------------------------------------+---------------------+\n | 5.7.9-enterprise-commercial-advanced | 9                   |\n +--------------------------------------+---------------------+\n 1 row in set (0.00 sec)\n ', 'utf8', 'utf8_general_ci', 'utf8_general_ci', 0x424547494e2052455455524e20535542535452494e475f494e44455828535542535452494e475f494e4445582856455253494f4e28292c20272d272c2031292c20272e272c202d31293b20454e44);
INSERT INTO `proc` (`db`, `name`, `type`, `specific_name`, `language`, `sql_data_access`, `is_deterministic`, `security_type`, `param_list`, `returns`, `body`, `definer`, `created`, `modified`, `sql_mode`, `comment`, `character_set_client`, `collation_connection`, `db_collation`, `body_utf8`) VALUES
('sys', 'create_synonym_db', 'PROCEDURE', 'create_synonym_db', 'SQL', 'MODIFIES_SQL_DATA', 'NO', 'INVOKER', 0x20494e20696e5f64625f6e616d652056415243484152283634292c2020494e20696e5f73796e6f6e796d20564152434841522836342920, '', 0x424547494e204445434c41524520765f646f6e6520626f6f6c2044454641554c542046414c53453b204445434c41524520765f64625f6e616d655f636865636b2056415243484152283634293b204445434c41524520765f64625f6572725f6d736720544558543b204445434c41524520765f7461626c652056415243484152283634293b204445434c41524520765f76696577735f6372656174656420494e542044454641554c5420303b20204445434c4152452064625f646f65736e745f657869737420434f4e444954494f4e20464f522053514c535441544520273432303030273b204445434c4152452064625f6e616d655f65786973747320434f4e444954494f4e20464f522053514c535441544520274859303030273b20204445434c41524520635f7461626c655f6e616d657320435552534f5220464f52202053454c454354205441424c455f4e414d45202046524f4d20494e464f524d4154494f4e5f534348454d412e5441424c455320205748455245205441424c455f534348454d41203d20696e5f64625f6e616d653b20204445434c41524520434f4e54494e55452048414e444c455220464f52204e4f5420464f554e442053455420765f646f6e65203d20545255453b202053454c45435420534348454d415f4e414d4520494e544f20765f64625f6e616d655f636865636b2046524f4d20494e464f524d4154494f4e5f534348454d412e534348454d41544120574845524520534348454d415f4e414d45203d20696e5f64625f6e616d653b2020494620765f64625f6e616d655f636865636b204953204e554c4c205448454e2053455420765f64625f6572725f6d7367203d20434f4e4341542827556e6b6e6f776e20646174616261736520272c20696e5f64625f6e616d65293b205349474e414c2053514c5354415445202748593030302720534554204d4553534147455f54455854203d20765f64625f6572725f6d73673b20454e442049463b202053454c45435420534348454d415f4e414d4520494e544f20765f64625f6e616d655f636865636b2046524f4d20494e464f524d4154494f4e5f534348454d412e534348454d41544120574845524520534348454d415f4e414d45203d20696e5f73796e6f6e796d3b2020494620765f64625f6e616d655f636865636b203d20696e5f73796e6f6e796d205448454e2053455420765f64625f6572725f6d7367203d20434f4e434154282743616e5c27742063726561746520646174616261736520272c20696e5f73796e6f6e796d2c20273b2064617461626173652065786973747327293b205349474e414c2053514c5354415445202748593030302720534554204d4553534147455f54455854203d20765f64625f6572725f6d73673b20454e442049463b202053455420406372656174655f64625f73746d74203a3d20434f4e434154282743524541544520444154414241534520272c207379732e71756f74655f6964656e74696669657228696e5f73796e6f6e796d29293b2050524550415245206372656174655f64625f73746d742046524f4d20406372656174655f64625f73746d743b2045584543555445206372656174655f64625f73746d743b204445414c4c4f434154452050524550415245206372656174655f64625f73746d743b202053455420765f646f6e65203d2046414c53453b204f50454e20635f7461626c655f6e616d65733b20635f7461626c655f6e616d65733a204c4f4f5020464554434820635f7461626c655f6e616d657320494e544f20765f7461626c653b20494620765f646f6e65205448454e204c4541564520635f7461626c655f6e616d65733b20454e442049463b202053455420406372656174655f766965775f73746d74203d20434f4e4341542820274352454154452053514c20534543555249545920494e564f4b4552205649455720272c207379732e71756f74655f6964656e74696669657228696e5f73796e6f6e796d292c20272e272c207379732e71756f74655f6964656e74696669657228765f7461626c65292c20272041532053454c454354202a2046524f4d20272c207379732e71756f74655f6964656e74696669657228696e5f64625f6e616d65292c20272e272c207379732e71756f74655f6964656e74696669657228765f7461626c652920293b2050524550415245206372656174655f766965775f73746d742046524f4d20406372656174655f766965775f73746d743b2045584543555445206372656174655f766965775f73746d743b204445414c4c4f434154452050524550415245206372656174655f766965775f73746d743b202053455420765f76696577735f63726561746564203d20765f76696577735f63726561746564202b20313b20454e44204c4f4f503b20434c4f534520635f7461626c655f6e616d65733b202053454c45435420434f4e4341542820274372656174656420272c20765f76696577735f637265617465642c20272076696577272c20494628765f76696577735f6372656174656420213d20312c202773272c202727292c202720696e2074686520272c207379732e71756f74655f6964656e74696669657228696e5f73796e6f6e796d292c20272064617461626173652720292041532073756d6d6172793b2020454e44, 'mysql.sys@localhost', '2018-07-09 10:50:31', '2018-07-09 10:50:31', '', '\n Description\n \n Takes a source database name and synonym name, and then creates the \n synonym database with views that point to all of the tables within\n the source database.\n \n Useful for creating a \"ps\" synonym for \"performance_schema\",\n or \"is\" instead of \"information_schema\", for example.\n \n Parameters\n \n in_db_name (VARCHAR(64)):\n The database name that you would like to create a synonym for.\n in_synonym (VARCHAR(64)):\n The database synonym name.\n \n Example\n \n mysql> SHOW DATABASES;\n +--------------------+\n | Database           |\n +--------------------+\n | information_schema |\n | mysql              |\n | performance_schema |\n | sys                |\n | test               |\n +--------------------+\n 5 rows in set (0.00 sec)\n \n mysql> CALL sys.create_synonym_db(\'performance_schema\', \'ps\');\n +---------------------------------------+\n | summary                               |\n +---------------------------------------+\n | Created 74 views in the `ps` database |\n +---------------------------------------+\n 1 row in set (8.57 sec)\n \n Query OK, 0 rows affected (8.57 sec)\n \n mysql> SHOW DATABASES;\n +--------------------+\n | Database           |\n +--------------------+\n | information_schema |\n | mysql              |\n | performance_schema |\n | ps                 |\n | sys                |\n | test               |\n +--------------------+\n 6 rows in set (0.00 sec)\n \n mysql> SHOW FULL TABLES FROM ps;\n +------------------------------------------------------+------------+\n | Tables_in_ps                                         | Table_type |\n +------------------------------------------------------+------------+\n | accounts                                             | VIEW       |\n | cond_instances                                       | VIEW       |\n | events_stages_current                                | VIEW       |\n | events_stages_history                                | VIEW       |\n ...\n ', 'utf8', 'utf8_general_ci', 'utf8_general_ci', 0x424547494e204445434c41524520765f646f6e6520626f6f6c2044454641554c542046414c53453b204445434c41524520765f64625f6e616d655f636865636b2056415243484152283634293b204445434c41524520765f64625f6572725f6d736720544558543b204445434c41524520765f7461626c652056415243484152283634293b204445434c41524520765f76696577735f6372656174656420494e542044454641554c5420303b20204445434c4152452064625f646f65736e745f657869737420434f4e444954494f4e20464f522053514c535441544520273432303030273b204445434c4152452064625f6e616d655f65786973747320434f4e444954494f4e20464f522053514c535441544520274859303030273b20204445434c41524520635f7461626c655f6e616d657320435552534f5220464f52202053454c454354205441424c455f4e414d45202046524f4d20494e464f524d4154494f4e5f534348454d412e5441424c455320205748455245205441424c455f534348454d41203d20696e5f64625f6e616d653b20204445434c41524520434f4e54494e55452048414e444c455220464f52204e4f5420464f554e442053455420765f646f6e65203d20545255453b202053454c45435420534348454d415f4e414d4520494e544f20765f64625f6e616d655f636865636b2046524f4d20494e464f524d4154494f4e5f534348454d412e534348454d41544120574845524520534348454d415f4e414d45203d20696e5f64625f6e616d653b2020494620765f64625f6e616d655f636865636b204953204e554c4c205448454e2053455420765f64625f6572725f6d7367203d20434f4e4341542827556e6b6e6f776e20646174616261736520272c20696e5f64625f6e616d65293b205349474e414c2053514c5354415445202748593030302720534554204d4553534147455f54455854203d20765f64625f6572725f6d73673b20454e442049463b202053454c45435420534348454d415f4e414d4520494e544f20765f64625f6e616d655f636865636b2046524f4d20494e464f524d4154494f4e5f534348454d412e534348454d41544120574845524520534348454d415f4e414d45203d20696e5f73796e6f6e796d3b2020494620765f64625f6e616d655f636865636b203d20696e5f73796e6f6e796d205448454e2053455420765f64625f6572725f6d7367203d20434f4e434154282743616e27742063726561746520646174616261736520272c20696e5f73796e6f6e796d2c20273b2064617461626173652065786973747327293b205349474e414c2053514c5354415445202748593030302720534554204d4553534147455f54455854203d20765f64625f6572725f6d73673b20454e442049463b202053455420406372656174655f64625f73746d74203a3d20434f4e434154282743524541544520444154414241534520272c207379732e71756f74655f6964656e74696669657228696e5f73796e6f6e796d29293b2050524550415245206372656174655f64625f73746d742046524f4d20406372656174655f64625f73746d743b2045584543555445206372656174655f64625f73746d743b204445414c4c4f434154452050524550415245206372656174655f64625f73746d743b202053455420765f646f6e65203d2046414c53453b204f50454e20635f7461626c655f6e616d65733b20635f7461626c655f6e616d65733a204c4f4f5020464554434820635f7461626c655f6e616d657320494e544f20765f7461626c653b20494620765f646f6e65205448454e204c4541564520635f7461626c655f6e616d65733b20454e442049463b202053455420406372656174655f766965775f73746d74203d20434f4e4341542820274352454154452053514c20534543555249545920494e564f4b4552205649455720272c207379732e71756f74655f6964656e74696669657228696e5f73796e6f6e796d292c20272e272c207379732e71756f74655f6964656e74696669657228765f7461626c65292c20272041532053454c454354202a2046524f4d20272c207379732e71756f74655f6964656e74696669657228696e5f64625f6e616d65292c20272e272c207379732e71756f74655f6964656e74696669657228765f7461626c652920293b2050524550415245206372656174655f766965775f73746d742046524f4d20406372656174655f766965775f73746d743b2045584543555445206372656174655f766965775f73746d743b204445414c4c4f434154452050524550415245206372656174655f766965775f73746d743b202053455420765f76696577735f63726561746564203d20765f76696577735f63726561746564202b20313b20454e44204c4f4f503b20434c4f534520635f7461626c655f6e616d65733b202053454c45435420434f4e4341542820274372656174656420272c20765f76696577735f637265617465642c20272076696577272c20494628765f76696577735f6372656174656420213d20312c202773272c202727292c202720696e2074686520272c207379732e71756f74655f6964656e74696669657228696e5f73796e6f6e796d292c20272064617461626173652720292041532073756d6d6172793b2020454e44),
('sys', 'execute_prepared_stmt', 'PROCEDURE', 'execute_prepared_stmt', 'SQL', 'READS_SQL_DATA', 'NO', 'INVOKER', 0x20494e20696e5f7175657279206c6f6e67746578742043484152414354455220534554205554463820, '', 0x424547494e2049462028407379732e6465627567204953204e554c4c29205448454e2053455420407379732e6465627567203d207379732e7379735f6765745f636f6e66696728276465627567272c20274f464627293b20454e442049463b202049462028696e5f7175657279204953204e554c4c204f52204c454e47544828696e5f717565727929203c203429205448454e205349474e414c2053514c5354415445202734353030302720534554204d4553534147455f54455854203d202254686520407379732e657865637574655f70726570617265645f73746d742e73716c206d75737420636f6e7461696e2061207175657279223b20454e442049463b202053455420407379732e657865637574655f70726570617265645f73746d742e73716c203d20696e5f71756572793b202049462028407379732e6465627567203d20274f4e2729205448454e2053454c45435420407379732e657865637574655f70726570617265645f73746d742e73716c20415320274465627567273b20454e442049463b2050524550415245207379735f657865637574655f70726570617265645f73746d742046524f4d20407379732e657865637574655f70726570617265645f73746d742e73716c3b2045584543555445207379735f657865637574655f70726570617265645f73746d743b204445414c4c4f434154452050524550415245207379735f657865637574655f70726570617265645f73746d743b202053455420407379732e657865637574655f70726570617265645f73746d742e73716c203d204e554c4c3b20454e44, 'mysql.sys@localhost', '2018-07-09 10:50:31', '2018-07-09 10:50:31', '', '\n Description\n \n Takes the query in the argument and executes it using a prepared statement. The prepared statement is deallocated,\n so the procedure is mainly useful for executing one off dynamically created queries.\n \n The sys_execute_prepared_stmt prepared statement name is used for the query and is required not to exist.\n \n \n Parameters\n \n in_query (longtext CHARACTER SET UTF8):\n The query to execute.\n \n \n Configuration Options\n \n sys.debug\n Whether to provide debugging output.\n Default is \'OFF\'. Set to \'ON\' to include.\n \n \n Example\n \n mysql> CALL sys.execute_prepared_stmt(\'SELECT * FROM sys.sys_config\');\n +------------------------+-------+---------------------+--------+\n | variable               | value | set_time            | set_by |\n +------------------------+-------+---------------------+--------+\n | statement_truncate_len | 64    | 2015-06-30 13:06:00 | NULL   |\n +------------------------+-------+---------------------+--------+\n 1 row in set (0.00 sec)\n \n Query OK, 0 rows affected (0.00 sec)\n ', 'utf8', 'utf8_general_ci', 'utf8_general_ci', 0x424547494e2049462028407379732e6465627567204953204e554c4c29205448454e2053455420407379732e6465627567203d207379732e7379735f6765745f636f6e66696728276465627567272c20274f464627293b20454e442049463b202049462028696e5f7175657279204953204e554c4c204f52204c454e47544828696e5f717565727929203c203429205448454e205349474e414c2053514c5354415445202734353030302720534554204d4553534147455f54455854203d202254686520407379732e657865637574655f70726570617265645f73746d742e73716c206d75737420636f6e7461696e2061207175657279223b20454e442049463b202053455420407379732e657865637574655f70726570617265645f73746d742e73716c203d20696e5f71756572793b202049462028407379732e6465627567203d20274f4e2729205448454e2053454c45435420407379732e657865637574655f70726570617265645f73746d742e73716c20415320274465627567273b20454e442049463b2050524550415245207379735f657865637574655f70726570617265645f73746d742046524f4d20407379732e657865637574655f70726570617265645f73746d742e73716c3b2045584543555445207379735f657865637574655f70726570617265645f73746d743b204445414c4c4f434154452050524550415245207379735f657865637574655f70726570617265645f73746d743b202053455420407379732e657865637574655f70726570617265645f73746d742e73716c203d204e554c4c3b20454e44);
INSERT INTO `proc` (`db`, `name`, `type`, `specific_name`, `language`, `sql_data_access`, `is_deterministic`, `security_type`, `param_list`, `returns`, `body`, `definer`, `created`, `modified`, `sql_mode`, `comment`, `character_set_client`, `collation_connection`, `db_collation`, `body_utf8`) VALUES
('sys', 'diagnostics', 'PROCEDURE', 'diagnostics', 'SQL', 'READS_SQL_DATA', 'NO', 'INVOKER', 0x20494e20696e5f6d61785f72756e74696d6520696e7420756e7369676e65642c20494e20696e5f696e74657276616c20696e7420756e7369676e65642c20494e20696e5f6175746f5f636f6e66696720656e756d20282763757272656e74272c20276d656469756d272c202766756c6c272920, '', 0x424547494e204445434c41524520765f73746172742c20765f72756e74696d652c20765f697465725f73746172742c20765f736c65657020444543494d414c2832302c32292044454641554c5420302e303b204445434c41524520765f6861735f696e6e6f64622c20765f6861735f6e64622c20765f6861735f70732c20765f6861735f7265706c69636174696f6e2c20765f6861735f70735f7265706c69636174696f6e2056415243484152283829204348415253455420757466382044454641554c5420274e4f273b204445434c41524520765f746869735f7468726561645f656e61626c65642c20765f6861735f70735f766172732c20765f6861735f6d65747269637320454e554d2827594553272c20274e4f27293b204445434c41524520765f7461626c655f6e616d652c20765f62616e6e6572205641524348415228363429204348415253455420757466383b204445434c41524520765f73716c5f7374617475735f73756d6d6172795f73656c6563742c20765f73716c5f7374617475735f73756d6d6172795f64656c74612c20765f73716c5f7374617475735f73756d6d6172795f66726f6d2c20765f6e6f5f64656c74615f6e616d657320544558543b204445434c41524520765f6f75747075745f74696d652c20765f6f75747075745f74696d655f7072657620444543494d414c2832302c332920554e5349474e45443b204445434c41524520765f6f75747075745f636f756e742c20765f636f756e742c20765f6f6c645f67726f75705f636f6e6361745f6d61785f6c656e20494e5420554e5349474e45442044454641554c5420303b204445434c41524520765f7374617475735f73756d6d6172795f77696474682054494e59494e5420554e5349474e45442044454641554c542035303b204445434c41524520765f646f6e6520424f4f4c45414e2044454641554c542046414c53453b204445434c41524520635f6e6462696e666f20435552534f5220464f522053454c454354205441424c455f4e414d452046524f4d20696e666f726d6174696f6e5f736368656d612e5441424c4553205748455245205441424c455f534348454d41203d20276e6462696e666f2720414e44205441424c455f4e414d45204e4f5420494e20282027626c6f636b73272c2027636f6e6669675f706172616d73272c2027646963745f6f626a5f7479706573272c20276469736b5f77726974655f73706565645f62617365272c20276d656d6f72795f7065725f667261676d656e74272c20276d656d6f72797573616765272c20276f7065726174696f6e735f7065725f667261676d656e74272c2027746872656164626c6f636b732720293b204445434c41524520635f73797376696577735f775f64656c746120435552534f5220464f522053454c454354207461626c655f6e616d652046524f4d20746d705f7379735f76696577735f64656c7461204f52444552204259207461626c655f6e616d653b20204445434c41524520434f4e54494e55452048414e444c455220464f52204e4f5420464f554e442053455420765f646f6e65203d20545255453b202053454c45435420494e535452554d454e54454420494e544f20765f746869735f7468726561645f656e61626c65642046524f4d20706572666f726d616e63655f736368656d612e746872656164732057484552452050524f434553534c4953545f4944203d20434f4e4e454354494f4e5f494428293b2049462028765f746869735f7468726561645f656e61626c6564203d20275945532729205448454e2043414c4c207379732e70735f73657475705f64697361626c655f74687265616428434f4e4e454354494f4e5f49442829293b20454e442049463b202049462028696e5f6d61785f72756e74696d65203c20696e5f696e74657276616c29205448454e205349474e414c2053514c5354415445202734353030302720534554204d4553534147455f54455854203d2027696e5f6d61785f72756e74696d65206d7573742062652067726561746572207468616e206f7220657175616c20746f20696e5f696e74657276616c273b20454e442049463b2049462028696e5f6d61785f72756e74696d65203d203029205448454e205349474e414c2053514c5354415445202734353030302720534554204d4553534147455f54455854203d2027696e5f6d61785f72756e74696d65206d7573742062652067726561746572207468616e2030273b20454e442049463b2049462028696e5f696e74657276616c203d203029205448454e205349474e414c2053514c5354415445202734353030302720534554204d4553534147455f54455854203d2027696e5f696e74657276616c206d7573742062652067726561746572207468616e2030273b20454e442049463b202049462028407379732e646961676e6f73746963732e616c6c6f775f695f735f7461626c6573204953204e554c4c29205448454e2053455420407379732e646961676e6f73746963732e616c6c6f775f695f735f7461626c6573203d207379732e7379735f6765745f636f6e6669672827646961676e6f73746963732e616c6c6f775f695f735f7461626c6573272c20274f464627293b20454e442049463b2049462028407379732e646961676e6f73746963732e696e636c7564655f726177204953204e554c4c29205448454e2053455420407379732e646961676e6f73746963732e696e636c7564655f7261772020202020203d207379732e7379735f6765745f636f6e6669672827646961676e6f73746963732e696e636c7564655f7261772720202020202c20274f464627293b20454e442049463b2049462028407379732e6465627567204953204e554c4c29205448454e2053455420407379732e64656275672020202020202020202020202020202020202020202020203d207379732e7379735f6765745f636f6e666967282764656275672720202020202020202020202020202020202020202020202c20274f464627293b20454e442049463b2049462028407379732e73746174656d656e745f7472756e636174655f6c656e204953204e554c4c29205448454e2053455420407379732e73746174656d656e745f7472756e636174655f6c656e202020202020203d207379732e7379735f6765745f636f6e666967282773746174656d656e745f7472756e636174655f6c656e272020202020202c202736342720293b20454e442049463b202053455420406c6f675f62696e203a3d20404073716c5f6c6f675f62696e3b2049462028406c6f675f62696e203d203129205448454e205345542073716c5f6c6f675f62696e203d20303b20454e442049463b202053455420765f6e6f5f64656c74615f6e616d6573203d20434f4e434154282773257b434f554e547d2e5661726961626c655f6e616d65204e4f5420494e2028272c20272727696e6e6f64625f6275666665725f706f6f6c5f70616765735f746f74616c27272c20272c20272727696e6e6f64625f706167655f73697a6527272c20272c202727276c6173745f71756572795f636f737427272c20272c202727276c6173745f71756572795f7061727469616c5f706c616e7327272c20272c202727277163616368655f746f74616c5f626c6f636b7327272c20272c20272727736c6176655f6c6173745f68656172746265617427272c20272c2027272773736c5f6374785f7665726966795f646570746827272c20272c2027272773736c5f6374785f7665726966795f6d6f646527272c20272c2027272773736c5f73657373696f6e5f63616368655f73697a6527272c20272c2027272773736c5f7665726966795f646570746827272c20272c2027272773736c5f7665726966795f6d6f646527272c20272c2027272773736c5f76657273696f6e27272c20272c202727276275666665725f666c7573685f6c736e5f6176675f7261746527272c20272c202727276275666665725f666c7573685f7063745f666f725f646972747927272c20272c202727276275666665725f666c7573685f7063745f666f725f6c736e27272c20272c202727276275666665725f706f6f6c5f70616765735f746f74616c27272c20272c202727276c6f636b5f726f775f6c6f636b5f74696d655f61766727272c20272c202727276c6f636b5f726f775f6c6f636b5f74696d655f6d617827272c20272c20272727696e6e6f64625f706167655f73697a652727272c20272927293b202049462028696e5f6175746f5f636f6e666967203c3e202763757272656e742729205448454e2049462028407379732e6465627567203d20274f4e2729205448454e2053454c45435420434f4e43415428275570646174696e6720506572666f726d616e636520536368656d6120636f6e66696775726174696f6e20746f20272c20696e5f6175746f5f636f6e6669672920415320274465627567273b20454e442049463b2043414c4c207379732e70735f73657475705f736176652830293b202049462028696e5f6175746f5f636f6e666967203d20276d656469756d2729205448454e2055504441544520706572666f726d616e63655f736368656d612e73657475705f636f6e73756d6572732053455420454e41424c4544203d202759455327205748455245204e414d45204e4f54204c494b452027255c5f686973746f727925273b202055504441544520706572666f726d616e63655f736368656d612e73657475705f696e737472756d656e74732053455420454e41424c4544203d2027594553272c2054494d45442020203d202759455327205748455245204e414d45204e4f54204c494b452027776169742f73796e63682f25273b20454c534549462028696e5f6175746f5f636f6e666967203d202766756c6c2729205448454e2055504441544520706572666f726d616e63655f736368656d612e73657475705f636f6e73756d6572732053455420454e41424c4544203d2027594553273b202055504441544520706572666f726d616e63655f736368656d612e73657475705f696e737472756d656e74732053455420454e41424c4544203d2027594553272c2054494d45442020203d2027594553273b20454e442049463b202055504441544520706572666f726d616e63655f736368656d612e746872656164732053455420494e535452554d454e544544203d2027594553272057484552452050524f434553534c4953545f4944203c3e20434f4e4e454354494f4e5f494428293b20454e442049463b202053455420765f737461727420202020202020203d20554e49585f54494d455354414d50284e4f57283229292c20696e5f696e74657276616c202020203d2049464e554c4c28696e5f696e74657276616c2c203330292c20696e5f6d61785f72756e74696d65203d2049464e554c4c28696e5f6d61785f72756e74696d652c203630293b202053455420765f62616e6e6572203d205245504541542820272d272c204c4541535428204752454154455354282033362c20434841525f4c454e4754482856455253494f4e2829292c20434841525f4c454e475448284040676c6f62616c2e76657273696f6e5f636f6d6d656e74292c20434841525f4c454e475448284040676c6f62616c2e76657273696f6e5f636f6d70696c655f6f73292c20434841525f4c454e475448284040676c6f62616c2e76657273696f6e5f636f6d70696c655f6d616368696e65292c20434841525f4c454e475448284040676c6f62616c2e736f636b6574292c20434841525f4c454e475448284040676c6f62616c2e646174616469722920292c203634202920293b2053454c4543542027486f73746e616d652720415320274e616d65272c204040676c6f62616c2e686f73746e616d65204153202756616c75652720554e494f4e20414c4c2053454c4543542027506f72742720415320274e616d65272c204040676c6f62616c2e706f7274204153202756616c75652720554e494f4e20414c4c2053454c4543542027536f636b65742720415320274e616d65272c204040676c6f62616c2e736f636b6574204153202756616c75652720554e494f4e20414c4c2053454c4543542027446174616469722720415320274e616d65272c204040676c6f62616c2e64617461646972204153202756616c75652720554e494f4e20414c4c2053454c454354202753657276657220555549442720415320274e616d65272c204040676c6f62616c2e7365727665725f75756964204153202756616c75652720554e494f4e20414c4c2053454c4543542052455045415428272d272c2032332920415320274e616d65272c20765f62616e6e6572204153202756616c75652720554e494f4e20414c4c2053454c45435420274d7953514c2056657273696f6e2720415320274e616d65272c2056455253494f4e2829204153202756616c75652720554e494f4e20414c4c2053454c454354202753797320536368656d612056657273696f6e2720415320274e616d65272c202853454c454354207379735f76657273696f6e2046524f4d207379732e76657273696f6e29204153202756616c75652720554e494f4e20414c4c2053454c454354202756657273696f6e20436f6d6d656e742720415320274e616d65272c204040676c6f62616c2e76657273696f6e5f636f6d6d656e74204153202756616c75652720554e494f4e20414c4c2053454c454354202756657273696f6e20436f6d70696c65204f532720415320274e616d65272c204040676c6f62616c2e76657273696f6e5f636f6d70696c655f6f73204153202756616c75652720554e494f4e20414c4c2053454c454354202756657273696f6e20436f6d70696c65204d616368696e652720415320274e616d65272c204040676c6f62616c2e76657273696f6e5f636f6d70696c655f6d616368696e65204153202756616c75652720554e494f4e20414c4c2053454c4543542052455045415428272d272c2032332920415320274e616d65272c20765f62616e6e6572204153202756616c75652720554e494f4e20414c4c2053454c45435420275554432054696d652720415320274e616d65272c205554435f54494d455354414d502829204153202756616c75652720554e494f4e20414c4c2053454c45435420274c6f63616c2054696d652720415320274e616d65272c204e4f572829204153202756616c75652720554e494f4e20414c4c2053454c454354202754696d65205a6f6e652720415320274e616d65272c204040676c6f62616c2e74696d655f7a6f6e65204153202756616c75652720554e494f4e20414c4c2053454c454354202753797374656d2054696d65205a6f6e652720415320274e616d65272c204040676c6f62616c2e73797374656d5f74696d655f7a6f6e65204153202756616c75652720554e494f4e20414c4c2053454c454354202754696d65205a6f6e65204f66667365742720415320274e616d65272c2054494d4544494646284e4f5728292c205554435f54494d455354414d50282929204153202756616c7565273b202053455420765f6861735f696e6e6f64622020202020202020203d2049464e554c4c282853454c45435420535550504f52542046524f4d20696e666f726d6174696f6e5f736368656d612e454e47494e455320574845524520454e47494e45203d2027496e6e6f444227292c20274e4f27292c20765f6861735f6e64622020202020202020202020203d2049464e554c4c282853454c45435420535550504f52542046524f4d20696e666f726d6174696f6e5f736368656d612e454e47494e455320574845524520454e47494e45203d20274e4442436c757374657227292c20274e4f27292c20765f6861735f7073202020202020202020202020203d2049464e554c4c282853454c45435420535550504f52542046524f4d20696e666f726d6174696f6e5f736368656d612e454e47494e455320574845524520454e47494e45203d2027504552464f524d414e43455f534348454d4127292c20274e4f27292c20765f6861735f70735f7265706c69636174696f6e203d20494628765f6861735f7073203d20275945532720414e44204558495354532853454c45435420312046524f4d20696e666f726d6174696f6e5f736368656d612e5441424c4553205748455245205441424c455f534348454d41203d2027706572666f726d616e63655f736368656d612720414e44205441424c455f4e414d45203d20277265706c69636174696f6e5f6170706c6965725f73746174757327292c2027594553272c20274e4f2720292c20765f6861735f7265706c69636174696f6e202020203d2020494628765f6861735f70735f7265706c69636174696f6e203d2027594553272c204946282853454c45435420434f554e54282a292046524f4d20706572666f726d616e63655f736368656d612e7265706c69636174696f6e5f636f6e6e656374696f6e5f73746174757329203e20302c2027594553272c20274e4f27292c2049462840406d61737465725f696e666f5f7265706f7369746f7279203d20275441424c45272c204946282853454c45435420434f554e54282a292046524f4d206d7973716c2e736c6176655f6d61737465725f696e666f29203e20302c2027594553272c20274e4f27292c20494628404072656c61795f6c6f675f696e666f5f7265706f7369746f7279203d20275441424c45272c204946282853454c45435420434f554e54282a292046524f4d206d7973716c2e736c6176655f72656c61795f6c6f675f696e666f29203e20302c2027594553272c20274e4f27292c20274d415942452729292029202c20765f6861735f6d65747269637320202020202020203d20494628765f6861735f7073203d202759455327204f5220287379732e76657273696f6e5f6d616a6f722829203d203520414e44207379732e76657273696f6e5f6d696e6f722829203d2036292c2027594553272c20274e4f27292c20765f6861735f70735f7661727320202020202020203d20274e4f273b20202053455420765f6861735f70735f76617273203d204946284040676c6f62616c2e73686f775f636f6d7061746962696c6974795f35362c20274e4f272c202759455327293b202053455420765f6861735f70735f76617273203d2027594553273b202049462028407379732e6465627567203d20274f4e2729205448454e2053454c45435420765f6861735f696e6e6f646220415320274861735f496e6e6f4442272c20765f6861735f6e646220415320274861735f4e4442436c7573746572272c20765f6861735f707320415320274861735f506572666f726d616e63655f536368656d61272c20765f6861735f70735f7661727320415320274861735f505f535f53484f575f5661726961626c6573272c20765f6861735f6d65747269637320415320274861735f6d657472696373272c20765f6861735f70735f7265706c69636174696f6e20274153204861735f505f535f5265706c69636174696f6e272c20765f6861735f7265706c69636174696f6e20415320274861735f5265706c69636174696f6e273b20454e442049463b202049462028765f6861735f696e6e6f646220494e20282744454641554c54272c2027594553272929205448454e2053455420407379732e646961676e6f73746963732e73716c203d202753484f5720454e47494e4520496e6e6f444220535441545553273b20505245504152452073746d745f696e6e6f64625f7374617475732046524f4d20407379732e646961676e6f73746963732e73716c3b20454e442049463b202049462028765f6861735f7073203d20275945532729205448454e2053455420407379732e646961676e6f73746963732e73716c203d202753484f5720454e47494e4520504552464f524d414e43455f534348454d4120535441545553273b20505245504152452073746d745f70735f7374617475732046524f4d20407379732e646961676e6f73746963732e73716c3b20454e442049463b202049462028765f6861735f6e646220494e20282744454641554c54272c2027594553272929205448454e2053455420407379732e646961676e6f73746963732e73716c203d202753484f5720454e47494e45204e4442434c555354455220535441545553273b20505245504152452073746d745f6e6462636c75737465725f7374617475732046524f4d20407379732e646961676e6f73746963732e73716c3b20454e442049463b202053455420407379732e646961676e6f73746963732e73716c5f67656e5f71756572795f74656d706c617465203d202753454c45435420434f4e4341542820272753454c4543542027272c2047524f55505f434f4e434154282043415345205748454e2028535542535452494e47285441424c455f4e414d452c2033292c20434f4c554d4e5f4e414d452920494e202820282727696f5f676c6f62616c5f62795f66696c655f62795f627974657327272c202727746f74616c2727292c20282727696f5f676c6f62616c5f62795f776169745f62795f627974657327272c202727746f74616c5f7265717565737465642727292029205448454e20434f4e4341542827277379732e666f726d61745f62797465732827272c20434f4c554d4e5f4e414d452c202727292041532027272c20434f4c554d4e5f4e414d4529205748454e20535542535452494e4728434f4c554d4e5f4e414d452c202d3829203d2027275f6c6174656e63792727205448454e20434f4e4341542827277379732e666f726d61745f74696d652827272c20434f4c554d4e5f4e414d452c202727292041532027272c20434f4c554d4e5f4e414d4529205748454e20535542535452494e4728434f4c554d4e5f4e414d452c202d3729203d2027275f6d656d6f72792727204f5220535542535452494e4728434f4c554d4e5f4e414d452c202d313729203d2027275f6d656d6f72795f616c6c6f63617465642727204f52202828535542535452494e4728434f4c554d4e5f4e414d452c202d3529203d2027275f726561642727204f5220535542535452494e4728434f4c554d4e5f4e414d452c202d3829203d2027275f7772697474656e2727204f5220535542535452494e4728434f4c554d4e5f4e414d452c202d3629203d2027275f777269746527272920414e4420535542535452494e4728434f4c554d4e5f4e414d452c20312c203629203c3e202727434f554e545f272729205448454e20434f4e4341542827277379732e666f726d61745f62797465732827272c20434f4c554d4e5f4e414d452c202727292041532027272c20434f4c554d4e5f4e414d452920454c534520434f4c554d4e5f4e414d4520454e44204f52444552204259204f5244494e414c5f504f534954494f4e20534550415241544f522027272c5c6e20202020202020272720292c2027275c6e202046524f4d20746d705f27272c20535542535452494e47285441424c455f4e414d452046524f4d2033292c2027275f257b4f55545055547d2727202920415320517565727920494e544f20407379732e646961676e6f73746963732e73716c5f73656c6563742046524f4d20696e666f726d6174696f6e5f736368656d612e434f4c554d4e53205748455245205441424c455f534348454d41203d202727737973272720414e44205441424c455f4e414d45203d203f2047524f5550204259205441424c455f4e414d45273b202053455420407379732e646961676e6f73746963732e73716c5f67656e5f71756572795f64656c7461203d202753454c45435420434f4e4341542820272753454c4543542027272c2047524f55505f434f4e434154282043415345205748454e2046494e445f494e5f53455428434f4c554d4e5f4e414d452c20646961672e706b29205448454e20434f4c554d4e5f4e414d45205748454e20646961672e5441424c455f4e414d45203d202727696f5f676c6f62616c5f62795f66696c655f62795f6279746573272720414e4420434f4c554d4e5f4e414d45203d20272777726974655f7063742727205448454e20434f4e43415428272749464e554c4c28524f554e44283130302d282828652e746f74616c5f726561642d49464e554c4c28732e746f74616c5f726561642c2030292927272c2027272f4e554c4c4946282828652e746f74616c5f726561642d49464e554c4c28732e746f74616c5f726561642c203029292b28652e746f74616c5f7772697474656e2d49464e554c4c28732e746f74616c5f7772697474656e2c20302929292c203029292a313030292c2032292c20302e3030292041532027272c20434f4c554d4e5f4e414d4529205748454e2028646961672e5441424c455f4e414d452c20434f4c554d4e5f4e414d452920494e202820282727696f5f676c6f62616c5f62795f66696c655f62795f627974657327272c202727746f74616c2727292c20282727696f5f676c6f62616c5f62795f776169745f62795f627974657327272c202727746f74616c5f7265717565737465642727292029205448454e20434f4e4341542827277379732e666f726d61745f627974657328652e27272c20434f4c554d4e5f4e414d452c2027272d49464e554c4c28732e27272c20434f4c554d4e5f4e414d452c2027272c203029292041532027272c20434f4c554d4e5f4e414d4529205748454e20535542535452494e4728434f4c554d4e5f4e414d452c20312c20342920494e202827276d61785f27272c2027276d696e5f27272920414e4420535542535452494e4728434f4c554d4e5f4e414d452c202d3829203d2027275f6c6174656e63792727205448454e20434f4e4341542827277379732e666f726d61745f74696d6528652e27272c20434f4c554d4e5f4e414d452c202727292041532027272c20434f4c554d4e5f4e414d4529205748454e20434f4c554d4e5f4e414d45203d2027276176675f6c6174656e63792727205448454e20434f4e4341542827277379732e666f726d61745f74696d652828652e746f74616c5f6c6174656e6379202d2049464e554c4c28732e746f74616c5f6c6174656e63792c2030292927272c2027272f4e554c4c494628652e746f74616c202d2049464e554c4c28732e746f74616c2c2030292c203029292041532027272c20434f4c554d4e5f4e414d4529205748454e20535542535452494e4728434f4c554d4e5f4e414d452c202d313229203d2027275f6176675f6c6174656e63792727205448454e20434f4e4341542827277379732e666f726d61745f74696d652828652e27272c20535542535452494e4728434f4c554d4e5f4e414d452046524f4d203120464f5220434841525f4c454e47544828434f4c554d4e5f4e414d45292d3132292c2027275f6c6174656e6379202d2049464e554c4c28732e27272c20535542535452494e4728434f4c554d4e5f4e414d452046524f4d203120464f5220434841525f4c454e47544828434f4c554d4e5f4e414d45292d3132292c2027275f6c6174656e63792c2030292927272c2027272f4e554c4c494628652e27272c20535542535452494e4728434f4c554d4e5f4e414d452046524f4d203120464f5220434841525f4c454e47544828434f4c554d4e5f4e414d45292d3132292c20272773202d2049464e554c4c28732e27272c20535542535452494e4728434f4c554d4e5f4e414d452046524f4d203120464f5220434841525f4c454e47544828434f4c554d4e5f4e414d45292d3132292c202727732c2030292c203029292041532027272c20434f4c554d4e5f4e414d4529205748454e20535542535452494e4728434f4c554d4e5f4e414d452c202d3829203d2027275f6c6174656e63792727205448454e20434f4e4341542827277379732e666f726d61745f74696d6528652e27272c20434f4c554d4e5f4e414d452c202727202d2049464e554c4c28732e27272c20434f4c554d4e5f4e414d452c2027272c203029292041532027272c20434f4c554d4e5f4e414d4529205748454e20434f4c554d4e5f4e414d4520494e202827276176675f7265616427272c2027276176675f777269746527272c2027276176675f7772697474656e272729205448454e20434f4e4341542827277379732e666f726d61745f62797465732849464e554c4c2828652e746f74616c5f27272c20494628434f4c554d4e5f4e414d45203d2027276176675f7265616427272c2027277265616427272c2027277772697474656e2727292c2027272d49464e554c4c28732e746f74616c5f27272c20494628434f4c554d4e5f4e414d45203d2027276176675f7265616427272c2027277265616427272c2027277772697474656e2727292c2027272c2030292927272c2027272f4e554c4c494628652e636f756e745f27272c20494628434f4c554d4e5f4e414d45203d2027276176675f7265616427272c2027277265616427272c20272777726974652727292c2027272d49464e554c4c28732e636f756e745f27272c20494628434f4c554d4e5f4e414d45203d2027276176675f7265616427272c2027277265616427272c20272777726974652727292c2027272c2030292c2030292c203029292041532027272c20434f4c554d4e5f4e414d4529205748454e20535542535452494e4728434f4c554d4e5f4e414d452c202d3729203d2027275f6d656d6f72792727204f5220535542535452494e4728434f4c554d4e5f4e414d452c202d313729203d2027275f6d656d6f72795f616c6c6f63617465642727204f52202828535542535452494e4728434f4c554d4e5f4e414d452c202d3529203d2027275f726561642727204f5220535542535452494e4728434f4c554d4e5f4e414d452c202d3829203d2027275f7772697474656e2727204f5220535542535452494e4728434f4c554d4e5f4e414d452c202d3629203d2027275f777269746527272920414e4420535542535452494e4728434f4c554d4e5f4e414d452c20312c203629203c3e202727434f554e545f272729205448454e20434f4e4341542827277379732e666f726d61745f627974657328652e27272c20434f4c554d4e5f4e414d452c202727202d2049464e554c4c28732e27272c20434f4c554d4e5f4e414d452c2027272c203029292041532027272c20434f4c554d4e5f4e414d452920454c534520434f4e43415428272728652e27272c20434f4c554d4e5f4e414d452c202727202d2049464e554c4c28732e27272c20434f4c554d4e5f4e414d452c2027272c203029292041532027272c20434f4c554d4e5f4e414d452920454e44204f52444552204259204f5244494e414c5f504f534954494f4e20534550415241544f522027272c5c6e20202020202020272720292c2027275c6e202046524f4d20746d705f27272c20646961672e5441424c455f4e414d452c2027275f656e642065204c454654204f55544552204a4f494e20746d705f27272c20646961672e5441424c455f4e414d452c2027275f73746172742073205553494e47202827272c20646961672e706b2c202727292727202920415320517565727920494e544f20407379732e646961676e6f73746963732e73716c5f73656c6563742046524f4d20746d705f7379735f76696577735f64656c7461206469616720494e4e4552204a4f494e20696e666f726d6174696f6e5f736368656d612e434f4c554d4e532063204f4e20632e5441424c455f4e414d45203d20434f4e434154282727782427272c20646961672e5441424c455f4e414d452920574845524520632e5441424c455f534348454d41203d202727737973272720414e4420646961672e5441424c455f4e414d45203d203f2047524f555020425920646961672e5441424c455f4e414d45273b202049462028765f6861735f7073203d20275945532729205448454e2044524f502054454d504f52415259205441424c452049462045584953545320746d705f7379735f76696577735f64656c74613b204352454154452054454d504f52415259205441424c4520746d705f7379735f76696577735f64656c74612028205441424c455f4e414d45207661726368617228363429204e4f54204e554c4c2c206f726465725f6279207465787420434f4d4d454e5420274f5244455220425920636c6175736520666f722074686520696e697469616c20616e64206f766572616c6c207669657773272c206f726465725f62795f64656c7461207465787420434f4d4d454e5420274f5244455220425920636c6175736520666f72207468652064656c7461207669657773272c2077686572655f64656c7461207465787420434f4d4d454e542027574845524520636c6175736520746f2075736520666f722064656c746120766965777320746f206f6e6c7920696e636c75646520726f7773207769746820612022636f756e7422203e2030272c206c696d69745f726f777320696e7420756e7369676e656420434f4d4d454e542027546865206d6178696d756d206e756d626572206f6620726f777320746f20696e636c75646520666f72207468652076696577272c20706b2076617263686172283132382920434f4d4d454e542027557365642077697468207468652046494e445f494e5f53455428292066756e6374696f6e20736f2075736520636f6d6d6120736570617261746564206c69737420776974686f75742077686974657370616365272c205052494d415259204b455920285441424c455f4e414d452920293b202049462028407379732e6465627567203d20274f4e2729205448454e2053454c4543542027506f70756c6174696e6720746d705f7379735f76696577735f64656c74612720415320274465627567273b20454e442049463b20494e5345525420494e544f20746d705f7379735f76696577735f64656c74612056414c554553202827686f73745f73756d6d6172792720202020202020202020202020202020202020202020202c2027257b5441424c457d2e73746174656d656e745f6c6174656e63792044455343272c202728652e73746174656d656e745f6c6174656e63792d49464e554c4c28732e73746174656d656e745f6c6174656e63792c203029292044455343272c202728652e73746174656d656e7473202d2049464e554c4c28732e73746174656d656e74732c20302929203e2030272c204e554c4c2c2027686f737427292c202827686f73745f73756d6d6172795f62795f66696c655f696f272020202020202020202020202c2027257b5441424c457d2e696f5f6c6174656e63792044455343272c202728652e696f5f6c6174656e63792d49464e554c4c28732e696f5f6c6174656e63792c203029292044455343272c202728652e696f73202d2049464e554c4c28732e696f732c20302929203e2030272c204e554c4c2c2027686f737427292c202827686f73745f73756d6d6172795f62795f66696c655f696f5f7479706527202020202020202c2027257b5441424c457d2e686f73742c20257b5441424c457d2e746f74616c5f6c6174656e63792044455343272c2027652e686f73742c2028652e746f74616c5f6c6174656e63792d49464e554c4c28732e746f74616c5f6c6174656e63792c203029292044455343272c202728652e746f74616c202d2049464e554c4c28732e746f74616c2c20302929203e2030272c204e554c4c2c2027686f73742c6576656e745f6e616d6527292c202827686f73745f73756d6d6172795f62795f73746167657327202020202020202020202020202c2027257b5441424c457d2e686f73742c20257b5441424c457d2e746f74616c5f6c6174656e63792044455343272c2027652e686f73742c2028652e746f74616c5f6c6174656e63792d49464e554c4c28732e746f74616c5f6c6174656e63792c203029292044455343272c202728652e746f74616c202d2049464e554c4c28732e746f74616c2c20302929203e2030272c204e554c4c2c2027686f73742c6576656e745f6e616d6527292c202827686f73745f73756d6d6172795f62795f73746174656d656e745f6c6174656e63792720202c2027257b5441424c457d2e746f74616c5f6c6174656e63792044455343272c202728652e746f74616c5f6c6174656e63792d49464e554c4c28732e746f74616c5f6c6174656e63792c203029292044455343272c202728652e746f74616c202d2049464e554c4c28732e746f74616c2c20302929203e2030272c204e554c4c2c2027686f737427292c202827686f73745f73756d6d6172795f62795f73746174656d656e745f747970652720202020202c2027257b5441424c457d2e686f73742c20257b5441424c457d2e746f74616c5f6c6174656e63792044455343272c2027652e686f73742c2028652e746f74616c5f6c6174656e63792d49464e554c4c28732e746f74616c5f6c6174656e63792c203029292044455343272c202728652e746f74616c202d2049464e554c4c28732e746f74616c2c20302929203e2030272c204e554c4c2c2027686f73742c73746174656d656e7427292c202827696f5f62795f7468726561645f62795f6c6174656e6379272020202020202020202020202c2027257b5441424c457d2e746f74616c5f6c6174656e63792044455343272c202728652e746f74616c5f6c6174656e63792d49464e554c4c28732e746f74616c5f6c6174656e63792c203029292044455343272c202728652e746f74616c202d2049464e554c4c28732e746f74616c2c20302929203e2030272c204e554c4c2c2027757365722c7468726561645f69642c70726f636573736c6973745f696427292c202827696f5f676c6f62616c5f62795f66696c655f62795f6279746573272020202020202020202c2027257b5441424c457d2e746f74616c2044455343272c202728652e746f74616c2d49464e554c4c28732e746f74616c2c203029292044455343272c202728652e746f74616c202d2049464e554c4c28732e746f74616c2c20302929203e2030272c203130302c202766696c6527292c202827696f5f676c6f62616c5f62795f66696c655f62795f6c6174656e637927202020202020202c2027257b5441424c457d2e746f74616c5f6c6174656e63792044455343272c202728652e746f74616c5f6c6174656e63792d49464e554c4c28732e746f74616c5f6c6174656e63792c203029292044455343272c202728652e746f74616c202d2049464e554c4c28732e746f74616c2c20302929203e2030272c203130302c202766696c6527292c202827696f5f676c6f62616c5f62795f776169745f62795f6279746573272020202020202020202c2027257b5441424c457d2e746f74616c5f7265717565737465642044455343272c202728652e746f74616c5f7265717565737465642d49464e554c4c28732e746f74616c5f7265717565737465642c203029292044455343272c202728652e746f74616c202d2049464e554c4c28732e746f74616c2c20302929203e2030272c204e554c4c2c20276576656e745f6e616d6527292c202827696f5f676c6f62616c5f62795f776169745f62795f6c6174656e637927202020202020202c2027257b5441424c457d2e746f74616c5f6c6174656e63792044455343272c202728652e746f74616c5f6c6174656e63792d49464e554c4c28732e746f74616c5f6c6174656e63792c203029292044455343272c202728652e746f74616c202d2049464e554c4c28732e746f74616c2c20302929203e2030272c204e554c4c2c20276576656e745f6e616d6527292c202827736368656d615f696e6465785f73746174697374696373272020202020202020202020202c202728257b5441424c457d2e73656c6563745f6c6174656e63792b257b5441424c457d2e696e736572745f6c6174656e63792b257b5441424c457d2e7570646174655f6c6174656e63792b257b5441424c457d2e64656c6574655f6c6174656e6379292044455343272c20272828652e73656c6563745f6c6174656e63792b652e696e736572745f6c6174656e63792b652e7570646174655f6c6174656e63792b652e64656c6574655f6c6174656e6379292d49464e554c4c28732e73656c6563745f6c6174656e63792b732e696e736572745f6c6174656e63792b732e7570646174655f6c6174656e63792b732e64656c6574655f6c6174656e63792c203029292044455343272c20272828652e726f77735f73656c65637465642b652e696e736572745f6c6174656e63792b652e726f77735f757064617465642b652e726f77735f64656c65746564292d49464e554c4c28732e726f77735f73656c65637465642b732e726f77735f696e7365727465642b732e726f77735f757064617465642b732e726f77735f64656c657465642c20302929203e2030272c203130302c20277461626c655f736368656d612c7461626c655f6e616d652c696e6465785f6e616d6527292c202827736368656d615f7461626c655f73746174697374696373272020202020202020202020202c2027257b5441424c457d2e746f74616c5f6c6174656e63792044455343272c202728652e746f74616c5f6c6174656e63792d49464e554c4c28732e746f74616c5f6c6174656e63792c203029292044455343272c202728652e746f74616c5f6c6174656e63792d49464e554c4c28732e746f74616c5f6c6174656e63792c20302929203e2030272c203130302c20277461626c655f736368656d612c7461626c655f6e616d6527292c202827736368656d615f7461626c65735f776974685f66756c6c5f7461626c655f7363616e73272c2027257b5441424c457d2e726f77735f66756c6c5f7363616e6e65642044455343272c202728652e726f77735f66756c6c5f7363616e6e65642d49464e554c4c28732e726f77735f66756c6c5f7363616e6e65642c203029292044455343272c202728652e726f77735f66756c6c5f7363616e6e65642d49464e554c4c28732e726f77735f66756c6c5f7363616e6e65642c20302929203e2030272c203130302c20276f626a6563745f736368656d612c6f626a6563745f6e616d6527292c202827757365725f73756d6d6172792720202020202020202020202020202020202020202020202c2027257b5441424c457d2e73746174656d656e745f6c6174656e63792044455343272c202728652e73746174656d656e745f6c6174656e63792d49464e554c4c28732e73746174656d656e745f6c6174656e63792c203029292044455343272c202728652e73746174656d656e7473202d2049464e554c4c28732e73746174656d656e74732c20302929203e2030272c204e554c4c2c20277573657227292c202827757365725f73756d6d6172795f62795f66696c655f696f272020202020202020202020202c2027257b5441424c457d2e696f5f6c6174656e63792044455343272c202728652e696f5f6c6174656e63792d49464e554c4c28732e696f5f6c6174656e63792c203029292044455343272c202728652e696f73202d2049464e554c4c28732e696f732c20302929203e2030272c204e554c4c2c20277573657227292c202827757365725f73756d6d6172795f62795f66696c655f696f5f7479706527202020202020202c2027257b5441424c457d2e757365722c20257b5441424c457d2e6c6174656e63792044455343272c2027652e757365722c2028652e6c6174656e63792d49464e554c4c28732e6c6174656e63792c203029292044455343272c202728652e746f74616c202d2049464e554c4c28732e746f74616c2c20302929203e2030272c204e554c4c2c2027757365722c6576656e745f6e616d6527292c202827757365725f73756d6d6172795f62795f73746167657327202020202020202020202020202c2027257b5441424c457d2e757365722c20257b5441424c457d2e746f74616c5f6c6174656e63792044455343272c2027652e757365722c2028652e746f74616c5f6c6174656e63792d49464e554c4c28732e746f74616c5f6c6174656e63792c203029292044455343272c202728652e746f74616c202d2049464e554c4c28732e746f74616c2c20302929203e2030272c204e554c4c2c2027757365722c6576656e745f6e616d6527292c202827757365725f73756d6d6172795f62795f73746174656d656e745f6c6174656e63792720202c2027257b5441424c457d2e746f74616c5f6c6174656e63792044455343272c202728652e746f74616c5f6c6174656e63792d49464e554c4c28732e746f74616c5f6c6174656e63792c203029292044455343272c202728652e746f74616c202d2049464e554c4c28732e746f74616c2c20302929203e2030272c204e554c4c2c20277573657227292c202827757365725f73756d6d6172795f62795f73746174656d656e745f747970652720202020202c2027257b5441424c457d2e757365722c20257b5441424c457d2e746f74616c5f6c6174656e63792044455343272c2027652e757365722c2028652e746f74616c5f6c6174656e63792d49464e554c4c28732e746f74616c5f6c6174656e63792c203029292044455343272c202728652e746f74616c202d2049464e554c4c28732e746f74616c2c20302929203e2030272c204e554c4c2c2027757365722c73746174656d656e7427292c202827776169745f636c61737365735f676c6f62616c5f62795f6176675f6c6174656e637927202c202749464e554c4c28257b5441424c457d2e746f74616c5f6c6174656e6379202f204e554c4c494628257b5441424c457d2e746f74616c2c2030292c2030292044455343272c202749464e554c4c2828652e746f74616c5f6c6174656e63792d49464e554c4c28732e746f74616c5f6c6174656e63792c20302929202f204e554c4c49462828652e746f74616c202d2049464e554c4c28732e746f74616c2c203029292c2030292c2030292044455343272c202728652e746f74616c202d2049464e554c4c28732e746f74616c2c20302929203e2030272c204e554c4c2c20276576656e745f636c61737327292c202827776169745f636c61737365735f676c6f62616c5f62795f6c6174656e63792720202020202c2027257b5441424c457d2e746f74616c5f6c6174656e63792044455343272c202728652e746f74616c5f6c6174656e63792d49464e554c4c28732e746f74616c5f6c6174656e63792c203029292044455343272c202728652e746f74616c202d2049464e554c4c28732e746f74616c2c20302929203e2030272c204e554c4c2c20276576656e745f636c61737327292c20282777616974735f62795f686f73745f62795f6c6174656e63792720202020202020202020202c2027257b5441424c457d2e686f73742c20257b5441424c457d2e746f74616c5f6c6174656e63792044455343272c2027652e686f73742c2028652e746f74616c5f6c6174656e63792d49464e554c4c28732e746f74616c5f6c6174656e63792c203029292044455343272c202728652e746f74616c202d2049464e554c4c28732e746f74616c2c20302929203e2030272c204e554c4c2c2027686f73742c6576656e7427292c20282777616974735f62795f757365725f62795f6c6174656e63792720202020202020202020202c2027257b5441424c457d2e757365722c20257b5441424c457d2e746f74616c5f6c6174656e63792044455343272c2027652e757365722c2028652e746f74616c5f6c6174656e63792d49464e554c4c28732e746f74616c5f6c6174656e63792c203029292044455343272c202728652e746f74616c202d2049464e554c4c28732e746f74616c2c20302929203e2030272c204e554c4c2c2027757365722c6576656e7427292c20282777616974735f676c6f62616c5f62795f6c6174656e6379272020202020202020202020202c2027257b5441424c457d2e746f74616c5f6c6174656e63792044455343272c202728652e746f74616c5f6c6174656e63792d49464e554c4c28732e746f74616c5f6c6174656e63792c203029292044455343272c202728652e746f74616c202d2049464e554c4c28732e746f74616c2c20302929203e2030272c204e554c4c2c20276576656e74732729203b20454e442049463b20202053454c454354202720203d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d2020436f6e66696775726174696f6e20203d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d2020272041532027273b2053454c4543542027474c4f42414c205641524941424c455327204153202754686520666f6c6c6f77696e67206f75747075742069733a273b2049462028765f6861735f70735f76617273203d20275945532729205448454e2053454c454354204c4f574552285641524941424c455f4e414d4529204153205661726961626c655f6e616d652c205641524941424c455f56414c5545204153205661726961626c655f76616c75652046524f4d20706572666f726d616e63655f736368656d612e676c6f62616c5f7661726961626c6573204f52444552204259205641524941424c455f4e414d453b20454c53452053454c454354204c4f574552285641524941424c455f4e414d4529204153205661726961626c655f6e616d652c205641524941424c455f56414c5545204153205661726961626c655f76616c75652046524f4d20696e666f726d6174696f6e5f736368656d612e474c4f42414c5f5641524941424c4553204f52444552204259205641524941424c455f4e414d453b20454e442049463b202049462028765f6861735f7073203d20275945532729205448454e2053454c4543542027506572666f726d616e636520536368656d61205365747570202d204163746f727327204153202754686520666f6c6c6f77696e67206f75747075742069733a273b2053454c454354202a2046524f4d20706572666f726d616e63655f736368656d612e73657475705f6163746f72733b202053454c4543542027506572666f726d616e636520536368656d61205365747570202d20436f6e73756d65727327204153202754686520666f6c6c6f77696e67206f75747075742069733a273b2053454c454354204e414d4520415320436f6e73756d65722c20454e41424c45442c207379732e70735f69735f636f6e73756d65725f656e61626c6564284e414d452920415320434f4c4c454354532046524f4d20706572666f726d616e63655f736368656d612e73657475705f636f6e73756d6572733b202053454c4543542027506572666f726d616e636520536368656d61205365747570202d20496e737472756d656e747327204153202754686520666f6c6c6f77696e67206f75747075742069733a273b2053454c45435420535542535452494e475f494e444558284e414d452c20272f272c2032292041532027496e737472756d656e74436c617373272c20524f554e44283130302a53554d28494628454e41424c4544203d2027594553272c20312c203029292f434f554e54282a292c2032292041532027456e61626c6564506374272c20524f554e44283130302a53554d2849462854494d4544203d2027594553272c20312c203029292f434f554e54282a292c203229204153202754696d6564506374272046524f4d20706572666f726d616e63655f736368656d612e73657475705f696e737472756d656e74732047524f555020425920535542535452494e475f494e444558284e414d452c20272f272c203229204f5244455220425920535542535452494e475f494e444558284e414d452c20272f272c2032293b202053454c4543542027506572666f726d616e636520536368656d61205365747570202d204f626a6563747327204153202754686520666f6c6c6f77696e67206f75747075742069733a273b2053454c454354202a2046524f4d20706572666f726d616e63655f736368656d612e73657475705f6f626a656374733b202053454c4543542027506572666f726d616e636520536368656d61205365747570202d205468726561647327204153202754686520666f6c6c6f77696e67206f75747075742069733a273b2053454c4543542060545950456020415320546872656164547970652c20434f554e54282a292041532027546f74616c272c20524f554e44283130302a53554d28494628494e535452554d454e544544203d2027594553272c20312c203029292f434f554e54282a292c2032292041532027496e737472756d656e746564506374272046524f4d20706572666f726d616e63655f736368656d612e746872656164732047524f555020425920545950453b20454e442049463b20202049462028765f6861735f7265706c69636174696f6e203d20274e4f2729205448454e2053454c45435420274e6f205265706c69636174696f6e20436f6e666967757265642720415320275265706c69636174696f6e20537461747573273b20454c53452053454c45435420434f4e43415428275265706c69636174696f6e20436f6e666967757265643a20272c20765f6861735f7265706c69636174696f6e2c2027202d20506572666f726d616e636520536368656d61205265706c69636174696f6e205461626c65733a20272c20765f6861735f70735f7265706c69636174696f6e2920415320275265706c69636174696f6e20537461747573273b202049462028765f6861735f70735f7265706c69636174696f6e203d20275945532729205448454e2053454c45435420275265706c69636174696f6e202d20436f6e6e656374696f6e20436f6e66696775726174696f6e27204153202754686520666f6c6c6f77696e67206f75747075742069733a273b2053454c454354202a2046524f4d20706572666f726d616e63655f736368656d612e7265706c69636174696f6e5f636f6e6e656374696f6e5f636f6e66696775726174696f6e204f52444552204259204348414e4e454c5f4e414d45203b20454e442049463b202049462028765f6861735f70735f7265706c69636174696f6e203d20275945532729205448454e2053454c45435420275265706c69636174696f6e202d204170706c69657220436f6e66696775726174696f6e27204153202754686520666f6c6c6f77696e67206f75747075742069733a273b2053454c454354202a2046524f4d20706572666f726d616e63655f736368656d612e7265706c69636174696f6e5f6170706c6965725f636f6e66696775726174696f6e204f52444552204259204348414e4e454c5f4e414d453b20454e442049463b20204946202840406d61737465725f696e666f5f7265706f7369746f7279203d20275441424c452729205448454e2053454c45435420275265706c69636174696f6e202d204d617374657220496e666f205265706f7369746f727920436f6e66696775726174696f6e27204153202754686520666f6c6c6f77696e67206f75747075742069733a273b2053454c45435420204368616e6e656c5f6e616d652c20486f73742c20557365725f6e616d652c20506f72742c20436f6e6e6563745f72657472792c20456e61626c65645f73736c2c2053736c5f63612c2053736c5f6361706174682c2053736c5f636572742c2053736c5f6369706865722c2053736c5f6b65792c2053736c5f7665726966795f7365727665725f636572742c204865617274626561742c2042696e642c2049676e6f7265645f7365727665725f6964732c20557569642c2052657472795f636f756e742c2053736c5f63726c2c2053736c5f63726c706174682c20546c735f76657273696f6e2c20456e61626c65645f6175746f5f706f736974696f6e2046524f4d206d7973716c2e736c6176655f6d61737465725f696e666f204f52444552204259204368616e6e656c5f6e616d65203b20454e442049463b202049462028404072656c61795f6c6f675f696e666f5f7265706f7369746f7279203d20275441424c452729205448454e2053454c45435420275265706c69636174696f6e202d2052656c6179204c6f67205265706f7369746f727920436f6e66696775726174696f6e27204153202754686520666f6c6c6f77696e67206f75747075742069733a273b2053454c45435420204368616e6e656c5f6e616d652c2053716c5f64656c61792c204e756d6265725f6f665f776f726b6572732c2049642046524f4d206d7973716c2e736c6176655f72656c61795f6c6f675f696e666f204f52444552204259204368616e6e656c5f6e616d65203b20454e442049463b20454e442049463b20202049462028765f6861735f6e646220494e20282744454641554c54272c2027594553272929205448454e2053454c4543542027436c75737465722054687265616420426c6f636b7327204153202754686520666f6c6c6f77696e67206f75747075742069733a273b2053454c454354202a2046524f4d206e6462696e666f2e746872656164626c6f636b733b20454e442049463b202049462028765f6861735f7073203d20275945532729205448454e2049462028407379732e646961676e6f73746963732e696e636c7564655f726177203d20274f4e2729205448454e2053454c454354202720203d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d2020496e697469616c2053746174757320203d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d2020272041532027273b20454e442049463b202044524f502054454d504f52415259205441424c452049462045584953545320746d705f646967657374735f73746172743b2043414c4c207379732e73746174656d656e745f706572666f726d616e63655f616e616c797a657228276372656174655f746d70272c2027746d705f646967657374735f7374617274272c204e554c4c293b2043414c4c207379732e73746174656d656e745f706572666f726d616e63655f616e616c797a65722827736e617073686f74272c204e554c4c2c204e554c4c293b2043414c4c207379732e73746174656d656e745f706572666f726d616e63655f616e616c797a6572282773617665272c2027746d705f646967657374735f7374617274272c204e554c4c293b202049462028407379732e646961676e6f73746963732e696e636c7564655f726177203d20274f4e2729205448454e2053455420407379732e646961676e6f73746963732e73716c203d205245504c41434528407379732e646961676e6f73746963732e73716c5f67656e5f71756572795f74656d706c6174652c2027257b4f55545055547d272c2027737461727427293b2049462028407379732e6465627567203d20274f4e2729205448454e2053454c454354202754686520666f6c6c6f77696e672071756572792077696c6c206265207573656420746f2067656e65726174652074686520717565727920666f7220656163682073797320766965772720415320274465627567273b2053454c45435420407379732e646961676e6f73746963732e73716c20415320274465627567273b20454e442049463b20505245504152452073746d745f67656e5f71756572792046524f4d20407379732e646961676e6f73746963732e73716c3b20454e442049463b2053455420765f646f6e65203d2046414c53453b204f50454e20635f73797376696577735f775f64656c74613b20635f73797376696577735f775f64656c74615f6c6f6f703a204c4f4f5020464554434820635f73797376696577735f775f64656c746120494e544f20765f7461626c655f6e616d653b20494620765f646f6e65205448454e204c4541564520635f73797376696577735f775f64656c74615f6c6f6f703b20454e442049463b202049462028407379732e6465627567203d20274f4e2729205448454e2053454c45435420434f4e434154282754686520666f6c6c6f77696e6720717565726965732061726520666f722073746f72696e672074686520696e697469616c20636f6e74656e74206f6620272c20765f7461626c655f6e616d652920415320274465627567273b20454e442049463b202043414c4c207379732e657865637574655f70726570617265645f73746d7428434f4e434154282744524f502054454d504f52415259205441424c45204946204558495354532060746d705f272c20765f7461626c655f6e616d652c20275f7374617274602729293b2043414c4c207379732e657865637574655f70726570617265645f73746d7428434f4e43415428274352454154452054454d504f52415259205441424c452060746d705f272c20765f7461626c655f6e616d652c20275f7374617274602053454c454354202a2046524f4d2060737973602e607824272c20765f7461626c655f6e616d652c2027602729293b202049462028407379732e646961676e6f73746963732e696e636c7564655f726177203d20274f4e2729205448454e2053455420407379732e646961676e6f73746963732e7461626c655f6e616d65203d20434f4e43415428277824272c20765f7461626c655f6e616d65293b20455845435554452073746d745f67656e5f7175657279205553494e4720407379732e646961676e6f73746963732e7461626c655f6e616d653b2053454c45435420434f4e43415428407379732e646961676e6f73746963732e73716c5f73656c6563742c204946286f726465725f6279204953204e4f54204e554c4c2c20434f4e43415428275c6e204f5244455220425920272c205245504c414345286f726465725f62792c2027257b5441424c457d272c20434f4e4341542827746d705f272c20765f7461626c655f6e616d652c20275f7374617274272929292c202727292c204946286c696d69745f726f7773204953204e4f54204e554c4c2c20434f4e43415428275c6e204c494d495420272c206c696d69745f726f7773292c20272729202920494e544f20407379732e646961676e6f73746963732e73716c5f73656c6563742046524f4d20746d705f7379735f76696577735f64656c7461205748455245205441424c455f4e414d45203d20765f7461626c655f6e616d653b2053454c45435420434f4e4341542827496e697469616c20272c20765f7461626c655f6e616d6529204153202754686520666f6c6c6f77696e67206f75747075742069733a273b2043414c4c207379732e657865637574655f70726570617265645f73746d7428407379732e646961676e6f73746963732e73716c5f73656c656374293b20454e442049463b20454e44204c4f4f503b20434c4f534520635f73797376696577735f775f64656c74613b202049462028407379732e646961676e6f73746963732e696e636c7564655f726177203d20274f4e2729205448454e204445414c4c4f4341544520505245504152452073746d745f67656e5f71756572793b20454e442049463b20454e442049463b202053455420765f73716c5f7374617475735f73756d6d6172795f73656c656374203d202753454c454354205661726961626c655f6e616d65272c20765f73716c5f7374617475735f73756d6d6172795f64656c746120203d2027272c20765f73716c5f7374617475735f73756d6d6172795f66726f6d2020203d2027273b2020524550454154202053455420765f6f75747075745f636f756e74203d20765f6f75747075745f636f756e74202b20313b2049462028765f6f75747075745f636f756e74203e203129205448454e2053455420765f736c656570203d20696e5f696e74657276616c2d28554e49585f54494d455354414d50284e4f57283229292d765f697465725f7374617274293b2053454c454354204e4f572829204153202754696d65272c20434f4e4341542827476f696e6720746f20736c65657020666f7220272c20765f736c6565702c2027207365636f6e64732e20506c6561736520646f206e6f7420696e746572727570742729204153202754686520666f6c6c6f77696e67206f75747075742069733a273b20444f20534c45455028696e5f696e74657276616c293b20454e442049463b2053455420765f697465725f7374617274203d20554e49585f54494d455354414d50284e4f57283229293b202053454c454354204e4f5728292c20434f4e4341542827497465726174696f6e204e756d62657220272c2049464e554c4c28765f6f75747075745f636f756e742c20274e554c4c272929204153202754686520666f6c6c6f77696e67206f75747075742069733a273b20204946202840406c6f675f62696e203d203129205448454e2053454c454354202753484f57204d41535445522053544154555327204153202754686520666f6c6c6f77696e67206f75747075742069733a273b2053484f57204d4153544552205354415455533b20454e442049463b202049462028765f6861735f7265706c69636174696f6e203c3e20274e4f2729205448454e2053454c454354202753484f5720534c4156452053544154555327204153202754686520666f6c6c6f77696e67206f75747075742069733a273b2053484f5720534c415645205354415455533b202049462028765f6861735f70735f7265706c69636174696f6e203d20275945532729205448454e2053454c45435420275265706c69636174696f6e20436f6e6e656374696f6e2053746174757327204153202754686520666f6c6c6f77696e67206f75747075742069733a273b2053454c454354202a2046524f4d20706572666f726d616e63655f736368656d612e7265706c69636174696f6e5f636f6e6e656374696f6e5f7374617475733b202053454c45435420275265706c69636174696f6e204170706c6965722053746174757327204153202754686520666f6c6c6f77696e67206f75747075742069733a273b2053454c454354202a2046524f4d20706572666f726d616e63655f736368656d612e7265706c69636174696f6e5f6170706c6965725f737461747573204f52444552204259204348414e4e454c5f4e414d453b202053454c45435420275265706c69636174696f6e204170706c69657220537461747573202d20436f6f7264696e61746f7227204153202754686520666f6c6c6f77696e67206f75747075742069733a273b2053454c454354202a2046524f4d20706572666f726d616e63655f736368656d612e7265706c69636174696f6e5f6170706c6965725f7374617475735f62795f636f6f7264696e61746f72204f52444552204259204348414e4e454c5f4e414d453b202053454c45435420275265706c69636174696f6e204170706c69657220537461747573202d20576f726b657227204153202754686520666f6c6c6f77696e67206f75747075742069733a273b2053454c454354202a2046524f4d20706572666f726d616e63655f736368656d612e7265706c69636174696f6e5f6170706c6965725f7374617475735f62795f776f726b6572204f52444552204259204348414e4e454c5f4e414d452c20574f524b45525f49443b20454e442049463b20204946202840406d61737465725f696e666f5f7265706f7369746f7279203d20275441424c452729205448454e2053454c45435420275265706c69636174696f6e202d204d6173746572204c6f672053746174757327204153202754686520666f6c6c6f77696e67206f75747075742069733a273b2053454c454354204d61737465725f6c6f675f6e616d652c204d61737465725f6c6f675f706f732046524f4d206d7973716c2e736c6176655f6d61737465725f696e666f3b20454e442049463b202049462028404072656c61795f6c6f675f696e666f5f7265706f7369746f7279203d20275441424c452729205448454e2053454c45435420275265706c69636174696f6e202d2052656c6179204c6f672053746174757327204153202754686520666f6c6c6f77696e67206f75747075742069733a273b2053454c454354207379732e666f726d61745f706174682852656c61795f6c6f675f6e616d65292041532052656c61795f6c6f675f6e616d652c2052656c61795f6c6f675f706f732c204d61737465725f6c6f675f6e616d652c204d61737465725f6c6f675f706f732046524f4d206d7973716c2e736c6176655f72656c61795f6c6f675f696e666f3b202053454c45435420275265706c69636174696f6e202d20576f726b65722053746174757327204153202754686520666f6c6c6f77696e67206f75747075742069733a273b2053454c4543542049642c207379732e666f726d61745f706174682852656c61795f6c6f675f6e616d65292041532052656c61795f6c6f675f6e616d652c2052656c61795f6c6f675f706f732c204d61737465725f6c6f675f6e616d652c204d61737465725f6c6f675f706f732c207379732e666f726d61745f7061746828436865636b706f696e745f72656c61795f6c6f675f6e616d652920415320436865636b706f696e745f72656c61795f6c6f675f6e616d652c20436865636b706f696e745f72656c61795f6c6f675f706f732c20436865636b706f696e745f6d61737465725f6c6f675f6e616d652c20436865636b706f696e745f6d61737465725f6c6f675f706f732c20436865636b706f696e745f7365716e6f2c20436865636b706f696e745f67726f75705f73697a652c2048455828436865636b706f696e745f67726f75705f6269746d61702920415320436865636b706f696e745f67726f75705f6269746d6170202c204368616e6e656c5f6e616d652046524f4d206d7973716c2e736c6176655f776f726b65725f696e666f204f5244455220425920204368616e6e656c5f6e616d652c2049643b20454e442049463b20454e442049463b202053455420765f7461626c655f6e616d65203d20434f4e4341542827746d705f6d6574726963735f272c20765f6f75747075745f636f756e74293b2043414c4c207379732e657865637574655f70726570617265645f73746d7428434f4e434154282744524f502054454d504f52415259205441424c452049462045584953545320272c20765f7461626c655f6e616d6529293b202043414c4c207379732e657865637574655f70726570617265645f73746d7428434f4e43415428274352454154452054454d504f52415259205441424c4520272c20765f7461626c655f6e616d652c20272028205661726961626c655f6e616d6520564152434841522831393329204e4f54204e554c4c2c205661726961626c655f76616c756520564152434841522831303234292c205479706520564152434841522832323529204e4f54204e554c4c2c20456e61626c656420454e554d28272759455327272c2027274e4f27272c2027275041525449414c272729204e4f54204e554c4c2c205052494d415259204b45592028547970652c205661726961626c655f6e616d6529202920454e47494e45203d20496e6e6f44422044454641554c5420434841525345543d757466382729293b202049462028765f6861735f6d65747269637329205448454e2053455420407379732e646961676e6f73746963732e73716c203d20434f4e434154282027494e5345525420494e544f20272c20765f7461626c655f6e616d652c20272053454c454354205661726961626c655f6e616d652c205245504c414345285661726961626c655f76616c75652c2027275c6e27272c2027275c5c5c5c6e272729204153205661726961626c655f76616c75652c20547970652c20456e61626c65642046524f4d207379732e6d6574726963732720293b20454c53452053455420407379732e646961676e6f73746963732e73716c203d20434f4e434154282027494e5345525420494e544f20272c20765f7461626c655f6e616d652c20272853454c454354204c4f574552285641524941424c455f4e414d4529204153205661726961626c655f6e616d652c205245504c414345285641524941424c455f56414c55452c2027275c6e27272c2027275c5c5c5c6e272729204153205661726961626c655f76616c75652c202727476c6f62616c20537461747573272720415320547970652c202727594553272720415320456e61626c65642046524f4d20706572666f726d616e63655f736368656d612e676c6f62616c5f737461747573202920554e494f4e20414c4c20282053454c454354204e414d45204153205661726961626c655f6e616d652c20434f554e54204153205661726961626c655f76616c75652c20434f4e434154282727496e6e6f4442204d657472696373202d2027272c2053554253595354454d2920415320547970652c20494628535441545553203d202727656e61626c656427272c20272759455327272c2027274e4f27272920415320456e61626c65642046524f4d20696e666f726d6174696f6e5f736368656d612e494e4e4f44425f4d455452494353205748455245204e414d45204e4f5420494e20282027276c6f636b5f726f775f6c6f636b5f74696d6527272c2027276c6f636b5f726f775f6c6f636b5f74696d655f61766727272c2027276c6f636b5f726f775f6c6f636b5f74696d655f6d617827272c2027276c6f636b5f726f775f6c6f636b5f776169747327272c2027276275666665725f706f6f6c5f726561647327272c2027276275666665725f706f6f6c5f726561645f726571756573747327272c2027276275666665725f706f6f6c5f77726974655f726571756573747327272c2027276275666665725f706f6f6c5f776169745f6672656527272c2027276275666665725f706f6f6c5f726561645f616865616427272c2027276275666665725f706f6f6c5f726561645f61686561645f6576696374656427272c2027276275666665725f706f6f6c5f70616765735f746f74616c27272c2027276275666665725f706f6f6c5f70616765735f6d69736327272c2027276275666665725f706f6f6c5f70616765735f6461746127272c2027276275666665725f706f6f6c5f62797465735f6461746127272c2027276275666665725f706f6f6c5f70616765735f646972747927272c2027276275666665725f706f6f6c5f62797465735f646972747927272c2027276275666665725f706f6f6c5f70616765735f6672656527272c2027276275666665725f70616765735f6372656174656427272c2027276275666665725f70616765735f7772697474656e27272c2027276275666665725f70616765735f7265616427272c2027276275666665725f646174615f726561647327272c2027276275666665725f646174615f7772697474656e27272c20272766696c655f6e756d5f6f70656e5f66696c657327272c2027276f735f6c6f675f62797465735f7772697474656e27272c2027276f735f6c6f675f6673796e637327272c2027276f735f6c6f675f70656e64696e675f6673796e637327272c2027276f735f6c6f675f70656e64696e675f77726974657327272c2027276c6f675f776169747327272c2027276c6f675f77726974655f726571756573747327272c2027276c6f675f77726974657327272c202727696e6e6f64625f64626c77725f77726974657327272c202727696e6e6f64625f64626c77725f70616765735f7772697474656e27272c202727696e6e6f64625f706167655f73697a65272729202920554e494f4e20414c4c20282053454c4543542027274e4f5728292727204153205661726961626c655f6e616d652c204e4f57283329204153205661726961626c655f76616c75652c20272753797374656d2054696d65272720415320547970652c202727594553272720415320456e61626c6564202920554e494f4e20414c4c20282053454c454354202727554e49585f54494d455354414d5028292727204153205661726961626c655f6e616d652c20524f554e4428554e49585f54494d455354414d50284e4f57283329292c203329204153205661726961626c655f76616c75652c20272753797374656d2054696d65272720415320547970652c202727594553272720415320456e61626c65642029204f5244455220425920547970652c205661726961626c655f6e616d653b2720293b20454e442049463b2043414c4c207379732e657865637574655f70726570617265645f73746d7428407379732e646961676e6f73746963732e73716c293b202043414c4c207379732e657865637574655f70726570617265645f73746d742820434f4e43415428272853454c454354205661726961626c655f76616c756520494e544f20407379732e646961676e6f73746963732e6f75747075745f74696d652046524f4d20272c20765f7461626c655f6e616d652c20272057484552452054797065203d20272753797374656d2054696d65272720414e44205661726961626c655f6e616d65203d202727554e49585f54494d455354414d502829272729272920293b2053455420765f6f75747075745f74696d65203d20407379732e646961676e6f73746963732e6f75747075745f74696d653b202053455420765f73716c5f7374617475735f73756d6d6172795f73656c656374203d20434f4e43415428765f73716c5f7374617475735f73756d6d6172795f73656c6563742c20272c20434f4e43415428204c4546542873272c20765f6f75747075745f636f756e742c20272e5661726961626c655f76616c75652c20272c20765f7374617475735f73756d6d6172795f77696474682c2027292c20494628272c205245504c41434528765f6e6f5f64656c74615f6e616d65732c2027257b434f554e547d272c20765f6f75747075745f636f756e74292c202720414e442073272c20765f6f75747075745f636f756e742c20272e5661726961626c655f76616c7565205245474558502027275e5b302d395d2b285c5c5c5c2e5b302d395d2b293f2427272c20434f4e434154282727202827272c20524f554e442873272c20765f6f75747075745f636f756e742c20272e5661726961626c655f76616c75652f272c20765f6f75747075745f74696d652c20272c2032292c2027272f736563292727292c20272727272920292041532027274f757470757420272c20765f6f75747075745f636f756e742c2027272727292c20765f73716c5f7374617475735f73756d6d6172795f66726f6d2020203d20434f4e43415428765f73716c5f7374617475735f73756d6d6172795f66726f6d2c202720272c20494628765f6f75747075745f636f756e74203d20312c2027202046524f4d20272c202720202020202020494e4e4552204a4f494e2027292c20765f7461626c655f6e616d652c20272073272c20765f6f75747075745f636f756e742c2049462028765f6f75747075745f636f756e74203d20312c2027272c2027205553494e472028547970652c205661726961626c655f6e616d65292729293b2049462028765f6f75747075745f636f756e74203e203129205448454e2053455420765f73716c5f7374617475735f73756d6d6172795f64656c746120203d20434f4e43415428765f73716c5f7374617475735f73756d6d6172795f64656c74612c20272c20494628272c205245504c41434528765f6e6f5f64656c74615f6e616d65732c2027257b434f554e547d272c20765f6f75747075745f636f756e74292c202720414e442073272c2028765f6f75747075745f636f756e742d31292c20272e5661726961626c655f76616c7565205245474558502027275e5b302d395d2b285c5c5c5c2e5b302d395d2b293f24272720414e442073272c20765f6f75747075745f636f756e742c20272e5661726961626c655f76616c7565205245474558502027275e5b302d395d2b285c5c5c5c2e5b302d395d2b293f2427272c20434f4e4341542849462873272c2028765f6f75747075745f636f756e742d31292c20272e5661726961626c655f76616c7565205245474558502027275e5b302d395d2b5c5c5c5c2e5b302d395d2b242727204f522073272c20765f6f75747075745f636f756e742c20272e5661726961626c655f76616c7565205245474558502027275e5b302d395d2b5c5c5c5c2e5b302d395d2b2427272c20524f554e44282873272c20765f6f75747075745f636f756e742c20272e5661726961626c655f76616c75652d73272c2028765f6f75747075745f636f756e742d31292c20272e5661726961626c655f76616c7565292c2032292c202873272c20765f6f75747075745f636f756e742c20272e5661726961626c655f76616c75652d73272c2028765f6f75747075745f636f756e742d31292c20272e5661726961626c655f76616c75652920292c202727202827272c20524f554e44282873272c20765f6f75747075745f636f756e742c20272e5661726961626c655f76616c75652d73272c2028765f6f75747075745f636f756e742d31292c20272e5661726961626c655f76616c7565292f28272c20765f6f75747075745f74696d652c20272d272c20765f6f75747075745f74696d655f707265762c2027292c2032292c2027272f73656329272720292c2027272727202920415320272744656c74612028272c2028765f6f75747075745f636f756e742d31292c2027202d3e20272c20765f6f75747075745f636f756e742c202729272727293b20454e442049463b202053455420765f6f75747075745f74696d655f70726576203d20765f6f75747075745f74696d653b202049462028407379732e646961676e6f73746963732e696e636c7564655f726177203d20274f4e2729205448454e2049462028765f6861735f6d65747269637329205448454e2053454c454354202753454c454354202a2046524f4d207379732e6d65747269637327204153202754686520666f6c6c6f77696e67206f75747075742069733a273b20454c53452053454c45435420277379732e6d657472696373206571756976616c656e7427204153202754686520666f6c6c6f77696e67206f75747075742069733a273b20454e442049463b2043414c4c207379732e657865637574655f70726570617265645f73746d7428434f4e434154282753454c45435420547970652c205661726961626c655f6e616d652c20456e61626c65642c205661726961626c655f76616c75652046524f4d20272c20765f7461626c655f6e616d652c2027204f5244455220425920547970652c205661726961626c655f6e616d652729293b20454e442049463b202049462028765f6861735f696e6e6f646220494e20282744454641554c54272c2027594553272929205448454e2053454c454354202753484f5720454e47494e4520494e4e4f44422053544154555327204153202754686520666f6c6c6f77696e67206f75747075742069733a273b20455845435554452073746d745f696e6e6f64625f7374617475733b2053454c4543542027496e6e6f4442202d205472616e73616374696f6e7327204153202754686520666f6c6c6f77696e67206f75747075742069733a273b2053454c454354202a2046524f4d20696e666f726d6174696f6e5f736368656d612e494e4e4f44425f5452583b20454e442049463b202049462028765f6861735f6e646220494e20282744454641554c54272c2027594553272929205448454e2053454c454354202753484f5720454e47494e45204e4442434c55535445522053544154555327204153202754686520666f6c6c6f77696e67206f75747075742069733a273b20455845435554452073746d745f6e6462636c75737465725f7374617475733b202053454c45435420276e6462696e666f2e6d656d6f7279757361676527204153202754686520666f6c6c6f77696e67206f75747075742069733a273b2053454c454354206e6f64655f69642c206d656d6f72795f747970652c207379732e666f726d61745f627974657328757365642920415320757365642c20757365645f70616765732c207379732e666f726d61745f627974657328746f74616c2920415320746f74616c2c20746f74616c5f70616765732c20524f554e44283130302a28757365642f746f74616c292c2032292041532027557365642025272046524f4d206e6462696e666f2e6d656d6f727975736167653b202053455420765f646f6e65203d2046414c53453b204f50454e20635f6e6462696e666f3b20635f6e6462696e666f5f6c6f6f703a204c4f4f5020464554434820635f6e6462696e666f20494e544f20765f7461626c655f6e616d653b20494620765f646f6e65205448454e204c4541564520635f6e6462696e666f5f6c6f6f703b20454e442049463b202053454c45435420434f4e434154282753454c454354202a2046524f4d206e6462696e666f2e272c20765f7461626c655f6e616d6529204153202754686520666f6c6c6f77696e67206f75747075742069733a273b2043414c4c207379732e657865637574655f70726570617265645f73746d7428434f4e434154282753454c454354202a2046524f4d20606e6462696e666f602e60272c20765f7461626c655f6e616d652c2027602729293b20454e44204c4f4f503b20434c4f534520635f6e6462696e666f3b202053454c454354202a2046524f4d20696e666f726d6174696f6e5f736368656d612e46494c45533b20454e442049463b202053454c454354202753454c454354202a2046524f4d207379732e70726f636573736c69737427204153202754686520666f6c6c6f77696e67206f75747075742069733a273b2053454c4543542070726f636573736c6973742e2a2046524f4d207379732e70726f636573736c6973743b202049462028765f6861735f7073203d20275945532729205448454e20494620287379732e70735f69735f636f6e73756d65725f656e61626c656428276576656e74735f77616974735f686973746f72795f6c6f6e672729203d20275945532729205448454e2053454c454354202753454c454354202a2046524f4d207379732e6c61746573745f66696c655f696f27204153202754686520666f6c6c6f77696e67206f75747075742069733a273b2053454c454354202a2046524f4d207379732e6c61746573745f66696c655f696f3b20454e442049463b2020494620284558495354532853454c45435420312046524f4d20706572666f726d616e63655f736368656d612e73657475705f696e737472756d656e7473205748455245204e414d45204c494b4520276d656d6f72792f252720414e4420454e41424c4544203d2027594553272929205448454e2053454c454354202753454c454354202a2046524f4d207379732e6d656d6f72795f62795f686f73745f62795f63757272656e745f627974657327204153202754686520666f6c6c6f77696e67206f75747075742069733a273b2053454c454354202a2046524f4d207379732e6d656d6f72795f62795f686f73745f62795f63757272656e745f62797465733b202053454c454354202753454c454354202a2046524f4d207379732e6d656d6f72795f62795f7468726561645f62795f63757272656e745f627974657327204153202754686520666f6c6c6f77696e67206f75747075742069733a273b2053454c454354202a2046524f4d207379732e6d656d6f72795f62795f7468726561645f62795f63757272656e745f62797465733b202053454c454354202753454c454354202a2046524f4d207379732e6d656d6f72795f62795f757365725f62795f63757272656e745f627974657327204153202754686520666f6c6c6f77696e67206f75747075742069733a273b2053454c454354202a2046524f4d207379732e6d656d6f72795f62795f757365725f62795f63757272656e745f62797465733b202053454c454354202753454c454354202a2046524f4d207379732e6d656d6f72795f676c6f62616c5f62795f63757272656e745f627974657327204153202754686520666f6c6c6f77696e67206f75747075742069733a273b2053454c454354202a2046524f4d207379732e6d656d6f72795f676c6f62616c5f62795f63757272656e745f62797465733b20454e442049463b20454e442049463b202053455420765f72756e74696d65203d2028554e49585f54494d455354414d50284e4f5728322929202d20765f7374617274293b20554e54494c2028765f72756e74696d65202b20696e5f696e74657276616c203e3d20696e5f6d61785f72756e74696d652920454e44205245504541543b202049462028765f6861735f7073203d20275945532729205448454e2053454c454354202753484f5720454e47494e4520504552464f524d414e43455f534348454d412053544154555327204153202754686520666f6c6c6f77696e67206f75747075742069733a273b20455845435554452073746d745f70735f7374617475733b20454e442049463b202049462028765f6861735f696e6e6f646220494e20282744454641554c54272c2027594553272929205448454e204445414c4c4f4341544520505245504152452073746d745f696e6e6f64625f7374617475733b20454e442049463b2049462028765f6861735f7073203d20275945532729205448454e204445414c4c4f4341544520505245504152452073746d745f70735f7374617475733b20454e442049463b2049462028765f6861735f6e646220494e20282744454641554c54272c2027594553272929205448454e204445414c4c4f4341544520505245504152452073746d745f6e6462636c75737465725f7374617475733b20454e442049463b20202053454c454354202720203d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d2020536368656d6120496e666f726d6174696f6e20203d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d2020272041532027273b202053454c45435420434f554e54282a292041532027546f74616c204e756d626572206f66205461626c6573272046524f4d20696e666f726d6174696f6e5f736368656d612e5441424c45533b202049462028407379732e646961676e6f73746963732e616c6c6f775f695f735f7461626c6573203d20274f4e2729205448454e2053454c454354202753746f7261676520456e67696e6520557361676527204153202754686520666f6c6c6f77696e67206f75747075742069733a273b2053454c45435420454e47494e452c20434f554e54282a29204153204e554d5f5441424c45532c207379732e666f726d61745f62797465732853554d28444154415f4c454e475448292920415320444154415f4c454e4754482c207379732e666f726d61745f62797465732853554d28494e4445585f4c454e475448292920415320494e4445585f4c454e4754482c207379732e666f726d61745f62797465732853554d28444154415f4c454e4754482b494e4445585f4c454e475448292920415320544f54414c2046524f4d20696e666f726d6174696f6e5f736368656d612e5441424c45532047524f555020425920454e47494e453b202053454c4543542027536368656d61204f626a656374204f7665727669657727204153202754686520666f6c6c6f77696e67206f75747075742069733a273b2053454c454354202a2046524f4d207379732e736368656d615f6f626a6563745f6f766572766965773b202053454c45435420275461626c657320776974686f75742061205052494d415259204b455927204153202754686520666f6c6c6f77696e67206f75747075742069733a273b2053454c454354205441424c45532e5441424c455f534348454d412c20454e47494e452c20434f554e54282a29204153204e756d5461626c65732046524f4d20696e666f726d6174696f6e5f736368656d612e5441424c4553204c454654204f55544552204a4f494e20696e666f726d6174696f6e5f736368656d612e53544154495354494353204f4e20535441544953544943532e5441424c455f534348454d41203d205441424c45532e5441424c455f534348454d4120414e4420535441544953544943532e5441424c455f4e414d45203d205441424c45532e5441424c455f4e414d4520414e4420535441544953544943532e494e4445585f4e414d45203d20275052494d4152592720574845524520535441544953544943532e5441424c455f4e414d45204953204e554c4c20414e44205441424c45532e5441424c455f534348454d41204e4f5420494e2028276d7973716c272c2027696e666f726d6174696f6e5f736368656d61272c2027706572666f726d616e63655f736368656d61272c2027737973272920414e44205441424c45532e5441424c455f54595045203d202742415345205441424c45272047524f5550204259205441424c45532e5441424c455f534348454d412c20454e47494e453b20454e442049463b202049462028765f6861735f7073203d20275945532729205448454e2053454c4543542027556e7573656420496e646578657327204153202754686520666f6c6c6f77696e67206f75747075742069733a273b2053454c454354206f626a6563745f736368656d612c20434f554e54282a29204153204e756d556e75736564496e64657865732046524f4d20706572666f726d616e63655f736368656d612e7461626c655f696f5f77616974735f73756d6d6172795f62795f696e6465785f75736167652020574845524520696e6465785f6e616d65204953204e4f54204e554c4c20414e4420636f756e745f73746172203d203020414e44206f626a6563745f736368656d61204e4f5420494e2028276d7973716c272c2027737973272920414e4420696e6465785f6e616d6520213d20275052494d415259272047524f5550204259206f626a6563745f736368656d613b20454e442049463b202049462028765f6861735f7073203d20275945532729205448454e2053454c454354202720203d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d20204f766572616c6c2053746174757320203d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d2020272041532027273b202053454c454354202743414c4c207379732e70735f73746174656d656e745f6176675f6c6174656e63795f686973746f6772616d282927204153202754686520666f6c6c6f77696e67206f75747075742069733a273b2043414c4c207379732e70735f73746174656d656e745f6176675f6c6174656e63795f686973746f6772616d28293b202043414c4c207379732e73746174656d656e745f706572666f726d616e63655f616e616c797a65722827736e617073686f74272c204e554c4c2c204e554c4c293b2043414c4c207379732e73746174656d656e745f706572666f726d616e63655f616e616c797a657228276f766572616c6c272c204e554c4c2c2027776974685f72756e74696d65735f696e5f393574685f70657263656e74696c6527293b202053455420407379732e646961676e6f73746963732e73716c203d205245504c41434528407379732e646961676e6f73746963732e73716c5f67656e5f71756572795f74656d706c6174652c2027257b4f55545055547d272c2027656e6427293b2049462028407379732e6465627567203d20274f4e2729205448454e2053454c454354202754686520666f6c6c6f77696e672071756572792077696c6c206265207573656420746f2067656e65726174652074686520717565727920666f7220656163682073797320766965772720415320274465627567273b2053454c45435420407379732e646961676e6f73746963732e73716c20415320274465627567273b20454e442049463b20505245504152452073746d745f67656e5f71756572792046524f4d20407379732e646961676e6f73746963732e73716c3b202053455420765f646f6e65203d2046414c53453b204f50454e20635f73797376696577735f775f64656c74613b20635f73797376696577735f775f64656c74615f6c6f6f703a204c4f4f5020464554434820635f73797376696577735f775f64656c746120494e544f20765f7461626c655f6e616d653b20494620765f646f6e65205448454e204c4541564520635f73797376696577735f775f64656c74615f6c6f6f703b20454e442049463b202049462028407379732e6465627567203d20274f4e2729205448454e2053454c45435420434f4e434154282754686520666f6c6c6f77696e6720717565726965732061726520666f722073746f72696e67207468652066696e616c20636f6e74656e74206f6620272c20765f7461626c655f6e616d652920415320274465627567273b20454e442049463b202043414c4c207379732e657865637574655f70726570617265645f73746d7428434f4e434154282744524f502054454d504f52415259205441424c45204946204558495354532060746d705f272c20765f7461626c655f6e616d652c20275f656e64602729293b2043414c4c207379732e657865637574655f70726570617265645f73746d7428434f4e43415428274352454154452054454d504f52415259205441424c452060746d705f272c20765f7461626c655f6e616d652c20275f656e64602053454c454354202a2046524f4d2060737973602e607824272c20765f7461626c655f6e616d652c2027602729293b202049462028407379732e646961676e6f73746963732e696e636c7564655f726177203d20274f4e2729205448454e2053455420407379732e646961676e6f73746963732e7461626c655f6e616d65203d20434f4e43415428277824272c20765f7461626c655f6e616d65293b20455845435554452073746d745f67656e5f7175657279205553494e4720407379732e646961676e6f73746963732e7461626c655f6e616d653b2053454c45435420434f4e43415428407379732e646961676e6f73746963732e73716c5f73656c6563742c204946286f726465725f6279204953204e4f54204e554c4c2c20434f4e43415428275c6e204f5244455220425920272c205245504c414345286f726465725f62792c2027257b5441424c457d272c20434f4e4341542827746d705f272c20765f7461626c655f6e616d652c20275f656e64272929292c202727292c204946286c696d69745f726f7773204953204e4f54204e554c4c2c20434f4e43415428275c6e204c494d495420272c206c696d69745f726f7773292c20272729202920494e544f20407379732e646961676e6f73746963732e73716c5f73656c6563742046524f4d20746d705f7379735f76696577735f64656c7461205748455245205441424c455f4e414d45203d20765f7461626c655f6e616d653b2053454c45435420434f4e43415428274f766572616c6c20272c20765f7461626c655f6e616d6529204153202754686520666f6c6c6f77696e67206f75747075742069733a273b2043414c4c207379732e657865637574655f70726570617265645f73746d7428407379732e646961676e6f73746963732e73716c5f73656c656374293b20454e442049463b20454e44204c4f4f503b20434c4f534520635f73797376696577735f775f64656c74613b20204445414c4c4f4341544520505245504152452073746d745f67656e5f71756572793b20202053454c454354202720203d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d202044656c74612053746174757320203d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d2020272041532027273b202043414c4c207379732e73746174656d656e745f706572666f726d616e63655f616e616c797a6572282764656c7461272c2027746d705f646967657374735f7374617274272c2027776974685f72756e74696d65735f696e5f393574685f70657263656e74696c6527293b2043414c4c207379732e73746174656d656e745f706572666f726d616e63655f616e616c797a65722827636c65616e7570272c204e554c4c2c204e554c4c293b202044524f502054454d504f52415259205441424c4520746d705f646967657374735f73746172743b202049462028407379732e6465627567203d20274f4e2729205448454e2053454c454354202754686520666f6c6c6f77696e672071756572792077696c6c206265207573656420746f2067656e65726174652074686520717565727920666f7220656163682073797320766965772064656c74612720415320274465627567273b2053454c45435420407379732e646961676e6f73746963732e73716c5f67656e5f71756572795f64656c746120415320274465627567273b20454e442049463b20505245504152452073746d745f67656e5f71756572795f64656c74612046524f4d20407379732e646961676e6f73746963732e73716c5f67656e5f71756572795f64656c74613b202053455420765f6f6c645f67726f75705f636f6e6361745f6d61785f6c656e203d20404073657373696f6e2e67726f75705f636f6e6361745f6d61785f6c656e3b2053455420404073657373696f6e2e67726f75705f636f6e6361745f6d61785f6c656e203d20323034383b2053455420765f646f6e65203d2046414c53453b204f50454e20635f73797376696577735f775f64656c74613b20635f73797376696577735f775f64656c74615f6c6f6f703a204c4f4f5020464554434820635f73797376696577735f775f64656c746120494e544f20765f7461626c655f6e616d653b20494620765f646f6e65205448454e204c4541564520635f73797376696577735f775f64656c74615f6c6f6f703b20454e442049463b202053455420407379732e646961676e6f73746963732e7461626c655f6e616d65203d20765f7461626c655f6e616d653b20455845435554452073746d745f67656e5f71756572795f64656c7461205553494e4720407379732e646961676e6f73746963732e7461626c655f6e616d653b2053454c45435420434f4e43415428407379732e646961676e6f73746963732e73716c5f73656c6563742c2049462877686572655f64656c7461204953204e4f54204e554c4c2c20434f4e43415428275c6e20574845524520272c2077686572655f64656c7461292c202727292c204946286f726465725f62795f64656c7461204953204e4f54204e554c4c2c20434f4e43415428275c6e204f5244455220425920272c206f726465725f62795f64656c7461292c202727292c204946286c696d69745f726f7773204953204e4f54204e554c4c2c20434f4e43415428275c6e204c494d495420272c206c696d69745f726f7773292c20272729202920494e544f20407379732e646961676e6f73746963732e73716c5f73656c6563742046524f4d20746d705f7379735f76696577735f64656c7461205748455245205441424c455f4e414d45203d20765f7461626c655f6e616d653b202053454c45435420434f4e434154282744656c746120272c20765f7461626c655f6e616d6529204153202754686520666f6c6c6f77696e67206f75747075742069733a273b2043414c4c207379732e657865637574655f70726570617265645f73746d7428407379732e646961676e6f73746963732e73716c5f73656c656374293b202043414c4c207379732e657865637574655f70726570617265645f73746d7428434f4e434154282744524f502054454d504f52415259205441424c452060746d705f272c20765f7461626c655f6e616d652c20275f656e64602729293b2043414c4c207379732e657865637574655f70726570617265645f73746d7428434f4e434154282744524f502054454d504f52415259205441424c452060746d705f272c20765f7461626c655f6e616d652c20275f7374617274602729293b20454e44204c4f4f503b20434c4f534520635f73797376696577735f775f64656c74613b2053455420404073657373696f6e2e67726f75705f636f6e6361745f6d61785f6c656e203d20765f6f6c645f67726f75705f636f6e6361745f6d61785f6c656e3b20204445414c4c4f4341544520505245504152452073746d745f67656e5f71756572795f64656c74613b2044524f502054454d504f52415259205441424c4520746d705f7379735f76696577735f64656c74613b20454e442049463b202049462028765f6861735f6d65747269637329205448454e2053454c454354202753454c454354202a2046524f4d207379732e6d65747269637327204153202754686520666f6c6c6f77696e67206f75747075742069733a273b20454c53452053454c45435420277379732e6d657472696373206571756976616c656e7427204153202754686520666f6c6c6f77696e67206f75747075742069733a273b20454e442049463b2043414c4c207379732e657865637574655f70726570617265645f73746d742820434f4e43415428765f73716c5f7374617475735f73756d6d6172795f73656c6563742c20765f73716c5f7374617475735f73756d6d6172795f64656c74612c20272c20547970652c2073312e456e61626c6564272c20765f73716c5f7374617475735f73756d6d6172795f66726f6d2c2027204f5244455220425920547970652c205661726961626c655f6e616d6527202920293b202053455420765f636f756e74203d20303b205748494c452028765f636f756e74203c20765f6f75747075745f636f756e742920444f2053455420765f636f756e74203d20765f636f756e74202b20313b2053455420765f7461626c655f6e616d65203d20434f4e4341542827746d705f6d6574726963735f272c20765f636f756e74293b2043414c4c207379732e657865637574655f70726570617265645f73746d7428434f4e434154282744524f502054454d504f52415259205441424c452049462045584953545320272c20765f7461626c655f6e616d6529293b20454e44205748494c453b202049462028696e5f6175746f5f636f6e666967203c3e202763757272656e742729205448454e2043414c4c207379732e70735f73657475705f72656c6f61645f736176656428293b205345542073716c5f6c6f675f62696e203d20406c6f675f62696e3b20454e442049463b202053455420407379732e646961676e6f73746963732e6f75747075745f74696d652020202020202020202020203d204e554c4c2c20407379732e646961676e6f73746963732e73716c20202020202020202020202020202020202020203d204e554c4c2c20407379732e646961676e6f73746963732e73716c5f67656e5f71756572795f64656c7461202020203d204e554c4c2c20407379732e646961676e6f73746963732e73716c5f67656e5f71756572795f74656d706c617465203d204e554c4c2c20407379732e646961676e6f73746963732e73716c5f73656c656374202020202020202020202020203d204e554c4c2c20407379732e646961676e6f73746963732e7461626c655f6e616d65202020202020202020202020203d204e554c4c3b202049462028765f746869735f7468726561645f656e61626c6564203d20275945532729205448454e2043414c4c207379732e70735f73657475705f656e61626c655f74687265616428434f4e4e454354494f4e5f49442829293b20454e442049463b202049462028406c6f675f62696e203d203129205448454e205345542073716c5f6c6f675f62696e203d20406c6f675f62696e3b20454e442049463b20454e44, 'mysql.sys@localhost', '2018-07-09 10:50:31', '2018-07-09 10:50:31', '', '\n Description\n \n Create a report of the current status of the server for diagnostics purposes. Data collected includes (some items depends on versions and settings):\n \n * The GLOBAL VARIABLES\n * Several sys schema views including metrics or equivalent (depending on version and settings)\n * Queries in the 95th percentile\n * Several ndbinfo views for MySQL Cluster\n * Replication (both master and slave) information.\n \n Some of the sys schema views are calculated as initial (optional), overall, delta:\n \n * The initial view is the content of the view at the start of this procedure.\n This output will be the same as the the start values used for the delta view.\n The initial view is included if @sys.diagnostics.include_raw = \'ON\'.\n * The overall view is the content of the view at the end of this procedure.\n This output is the same as the end values used for the delta view.\n The overall view is always included.\n * The delta view is the difference from the beginning to the end. Note that for min and max values\n they are simply the min or max value from the end view respectively, so does not necessarily reflect\n the minimum/maximum value in the monitored period.\n Note: except for the metrics views the delta is only calculation between the first and last outputs.\n \n Requires the SUPER privilege for \"SET sql_log_bin = 0;\".\n \n Versions supported:\n * MySQL 5.6: 5.6.10 and later\n * MySQL 5.7: 5.7.9 and later\n \n Parameters\n \n in_max_runtime (INT UNSIGNED):\n The maximum time to keep collecting data.\n Use NULL to get the default which is 60 seconds, otherwise enter a value greater than 0.\n in_interval (INT UNSIGNED):\n How long to sleep between data collections.\n Use NULL to get the default which is 30 seconds, otherwise enter a value greater than 0.\n in_auto_config (ENUM(\'current\', \'medium\', \'full\'))\n Automatically enable Performance Schema instruments and consumers.\n NOTE: The more that are enabled, the more impact on the performance.\n Supported values are:\n * current - use the current settings.\n * medium - enable some settings.\n * full - enables all settings. This will have a big impact on the\n performance - be careful using this option.\n If another setting the \'current\' is chosen, the current settings\n are restored at the end of the procedure.\n \n \n Configuration Options\n \n sys.diagnostics.allow_i_s_tables\n Specifies whether it is allowed to do table scan queries on information_schema.TABLES. This can be expensive if there\n are many tables. Set to \'ON\' to allow, \'OFF\' to not allow.\n Default is \'OFF\'.\n \n sys.diagnostics.include_raw\n Set to \'ON\' to include the raw data (e.g. the original output of \"SELECT * FROM sys.metrics\").\n Use this to get the initial values of the various views.\n Default is \'OFF\'.\n \n sys.statement_truncate_len\n How much of queries in the process list output to include.\n Default is 64.\n \n sys.debug\n Whether to provide debugging output.\n Default is \'OFF\'. Set to \'ON\' to include.\n \n \n Example\n \n To create a report and append it to the file diag.out:\n \n mysql> TEE diag.out;\n mysql> CALL sys.diagnostics(120, 30, \'current\');\n ...\n mysql> NOTEE;\n ', 'utf8', 'utf8_general_ci', 'utf8_general_ci', 0x424547494e204445434c41524520765f73746172742c20765f72756e74696d652c20765f697465725f73746172742c20765f736c65657020444543494d414c2832302c32292044454641554c5420302e303b204445434c41524520765f6861735f696e6e6f64622c20765f6861735f6e64622c20765f6861735f70732c20765f6861735f7265706c69636174696f6e2c20765f6861735f70735f7265706c69636174696f6e2056415243484152283829204348415253455420757466382044454641554c5420274e4f273b204445434c41524520765f746869735f7468726561645f656e61626c65642c20765f6861735f70735f766172732c20765f6861735f6d65747269637320454e554d2827594553272c20274e4f27293b204445434c41524520765f7461626c655f6e616d652c20765f62616e6e6572205641524348415228363429204348415253455420757466383b204445434c41524520765f73716c5f7374617475735f73756d6d6172795f73656c6563742c20765f73716c5f7374617475735f73756d6d6172795f64656c74612c20765f73716c5f7374617475735f73756d6d6172795f66726f6d2c20765f6e6f5f64656c74615f6e616d657320544558543b204445434c41524520765f6f75747075745f74696d652c20765f6f75747075745f74696d655f7072657620444543494d414c2832302c332920554e5349474e45443b204445434c41524520765f6f75747075745f636f756e742c20765f636f756e742c20765f6f6c645f67726f75705f636f6e6361745f6d61785f6c656e20494e5420554e5349474e45442044454641554c5420303b204445434c41524520765f7374617475735f73756d6d6172795f77696474682054494e59494e5420554e5349474e45442044454641554c542035303b204445434c41524520765f646f6e6520424f4f4c45414e2044454641554c542046414c53453b204445434c41524520635f6e6462696e666f20435552534f5220464f522053454c454354205441424c455f4e414d452046524f4d20696e666f726d6174696f6e5f736368656d612e5441424c4553205748455245205441424c455f534348454d41203d20276e6462696e666f2720414e44205441424c455f4e414d45204e4f5420494e20282027626c6f636b73272c2027636f6e6669675f706172616d73272c2027646963745f6f626a5f7479706573272c20276469736b5f77726974655f73706565645f62617365272c20276d656d6f72795f7065725f667261676d656e74272c20276d656d6f72797573616765272c20276f7065726174696f6e735f7065725f667261676d656e74272c2027746872656164626c6f636b732720293b204445434c41524520635f73797376696577735f775f64656c746120435552534f5220464f522053454c454354207461626c655f6e616d652046524f4d20746d705f7379735f76696577735f64656c7461204f52444552204259207461626c655f6e616d653b20204445434c41524520434f4e54494e55452048414e444c455220464f52204e4f5420464f554e442053455420765f646f6e65203d20545255453b202053454c45435420494e535452554d454e54454420494e544f20765f746869735f7468726561645f656e61626c65642046524f4d20706572666f726d616e63655f736368656d612e746872656164732057484552452050524f434553534c4953545f4944203d20434f4e4e454354494f4e5f494428293b2049462028765f746869735f7468726561645f656e61626c6564203d20275945532729205448454e2043414c4c207379732e70735f73657475705f64697361626c655f74687265616428434f4e4e454354494f4e5f49442829293b20454e442049463b202049462028696e5f6d61785f72756e74696d65203c20696e5f696e74657276616c29205448454e205349474e414c2053514c5354415445202734353030302720534554204d4553534147455f54455854203d2027696e5f6d61785f72756e74696d65206d7573742062652067726561746572207468616e206f7220657175616c20746f20696e5f696e74657276616c273b20454e442049463b2049462028696e5f6d61785f72756e74696d65203d203029205448454e205349474e414c2053514c5354415445202734353030302720534554204d4553534147455f54455854203d2027696e5f6d61785f72756e74696d65206d7573742062652067726561746572207468616e2030273b20454e442049463b2049462028696e5f696e74657276616c203d203029205448454e205349474e414c2053514c5354415445202734353030302720534554204d4553534147455f54455854203d2027696e5f696e74657276616c206d7573742062652067726561746572207468616e2030273b20454e442049463b202049462028407379732e646961676e6f73746963732e616c6c6f775f695f735f7461626c6573204953204e554c4c29205448454e2053455420407379732e646961676e6f73746963732e616c6c6f775f695f735f7461626c6573203d207379732e7379735f6765745f636f6e6669672827646961676e6f73746963732e616c6c6f775f695f735f7461626c6573272c20274f464627293b20454e442049463b2049462028407379732e646961676e6f73746963732e696e636c7564655f726177204953204e554c4c29205448454e2053455420407379732e646961676e6f73746963732e696e636c7564655f7261772020202020203d207379732e7379735f6765745f636f6e6669672827646961676e6f73746963732e696e636c7564655f7261772720202020202c20274f464627293b20454e442049463b2049462028407379732e6465627567204953204e554c4c29205448454e2053455420407379732e64656275672020202020202020202020202020202020202020202020203d207379732e7379735f6765745f636f6e666967282764656275672720202020202020202020202020202020202020202020202c20274f464627293b20454e442049463b2049462028407379732e73746174656d656e745f7472756e636174655f6c656e204953204e554c4c29205448454e2053455420407379732e73746174656d656e745f7472756e636174655f6c656e202020202020203d207379732e7379735f6765745f636f6e666967282773746174656d656e745f7472756e636174655f6c656e272020202020202c202736342720293b20454e442049463b202053455420406c6f675f62696e203a3d20404073716c5f6c6f675f62696e3b2049462028406c6f675f62696e203d203129205448454e205345542073716c5f6c6f675f62696e203d20303b20454e442049463b202053455420765f6e6f5f64656c74615f6e616d6573203d20434f4e434154282773257b434f554e547d2e5661726961626c655f6e616d65204e4f5420494e2028272c202727696e6e6f64625f6275666665725f706f6f6c5f70616765735f746f74616c272c20272c202727696e6e6f64625f706167655f73697a65272c20272c2027276c6173745f71756572795f636f7374272c20272c2027276c6173745f71756572795f7061727469616c5f706c616e73272c20272c2027277163616368655f746f74616c5f626c6f636b73272c20272c202727736c6176655f6c6173745f686561727462656174272c20272c20272773736c5f6374785f7665726966795f6465707468272c20272c20272773736c5f6374785f7665726966795f6d6f6465272c20272c20272773736c5f73657373696f6e5f63616368655f73697a65272c20272c20272773736c5f7665726966795f6465707468272c20272c20272773736c5f7665726966795f6d6f6465272c20272c20272773736c5f76657273696f6e272c20272c2027276275666665725f666c7573685f6c736e5f6176675f72617465272c20272c2027276275666665725f666c7573685f7063745f666f725f6469727479272c20272c2027276275666665725f666c7573685f7063745f666f725f6c736e272c20272c2027276275666665725f706f6f6c5f70616765735f746f74616c272c20272c2027276c6f636b5f726f775f6c6f636b5f74696d655f617667272c20272c2027276c6f636b5f726f775f6c6f636b5f74696d655f6d6178272c20272c202727696e6e6f64625f706167655f73697a6527272c20272927293b202049462028696e5f6175746f5f636f6e666967203c3e202763757272656e742729205448454e2049462028407379732e6465627567203d20274f4e2729205448454e2053454c45435420434f4e43415428275570646174696e6720506572666f726d616e636520536368656d6120636f6e66696775726174696f6e20746f20272c20696e5f6175746f5f636f6e6669672920415320274465627567273b20454e442049463b2043414c4c207379732e70735f73657475705f736176652830293b202049462028696e5f6175746f5f636f6e666967203d20276d656469756d2729205448454e2055504441544520706572666f726d616e63655f736368656d612e73657475705f636f6e73756d6572732053455420454e41424c4544203d202759455327205748455245204e414d45204e4f54204c494b452027255c5f686973746f727925273b202055504441544520706572666f726d616e63655f736368656d612e73657475705f696e737472756d656e74732053455420454e41424c4544203d2027594553272c2054494d45442020203d202759455327205748455245204e414d45204e4f54204c494b452027776169742f73796e63682f25273b20454c534549462028696e5f6175746f5f636f6e666967203d202766756c6c2729205448454e2055504441544520706572666f726d616e63655f736368656d612e73657475705f636f6e73756d6572732053455420454e41424c4544203d2027594553273b202055504441544520706572666f726d616e63655f736368656d612e73657475705f696e737472756d656e74732053455420454e41424c4544203d2027594553272c2054494d45442020203d2027594553273b20454e442049463b202055504441544520706572666f726d616e63655f736368656d612e746872656164732053455420494e535452554d454e544544203d2027594553272057484552452050524f434553534c4953545f4944203c3e20434f4e4e454354494f4e5f494428293b20454e442049463b202053455420765f737461727420202020202020203d20554e49585f54494d455354414d50284e4f57283229292c20696e5f696e74657276616c202020203d2049464e554c4c28696e5f696e74657276616c2c203330292c20696e5f6d61785f72756e74696d65203d2049464e554c4c28696e5f6d61785f72756e74696d652c203630293b202053455420765f62616e6e6572203d205245504541542820272d272c204c4541535428204752454154455354282033362c20434841525f4c454e4754482856455253494f4e2829292c20434841525f4c454e475448284040676c6f62616c2e76657273696f6e5f636f6d6d656e74292c20434841525f4c454e475448284040676c6f62616c2e76657273696f6e5f636f6d70696c655f6f73292c20434841525f4c454e475448284040676c6f62616c2e76657273696f6e5f636f6d70696c655f6d616368696e65292c20434841525f4c454e475448284040676c6f62616c2e736f636b6574292c20434841525f4c454e475448284040676c6f62616c2e646174616469722920292c203634202920293b2053454c4543542027486f73746e616d652720415320274e616d65272c204040676c6f62616c2e686f73746e616d65204153202756616c75652720554e494f4e20414c4c2053454c4543542027506f72742720415320274e616d65272c204040676c6f62616c2e706f7274204153202756616c75652720554e494f4e20414c4c2053454c4543542027536f636b65742720415320274e616d65272c204040676c6f62616c2e736f636b6574204153202756616c75652720554e494f4e20414c4c2053454c4543542027446174616469722720415320274e616d65272c204040676c6f62616c2e64617461646972204153202756616c75652720554e494f4e20414c4c2053454c454354202753657276657220555549442720415320274e616d65272c204040676c6f62616c2e7365727665725f75756964204153202756616c75652720554e494f4e20414c4c2053454c4543542052455045415428272d272c2032332920415320274e616d65272c20765f62616e6e6572204153202756616c75652720554e494f4e20414c4c2053454c45435420274d7953514c2056657273696f6e2720415320274e616d65272c2056455253494f4e2829204153202756616c75652720554e494f4e20414c4c2053454c454354202753797320536368656d612056657273696f6e2720415320274e616d65272c202853454c454354207379735f76657273696f6e2046524f4d207379732e76657273696f6e29204153202756616c75652720554e494f4e20414c4c2053454c454354202756657273696f6e20436f6d6d656e742720415320274e616d65272c204040676c6f62616c2e76657273696f6e5f636f6d6d656e74204153202756616c75652720554e494f4e20414c4c2053454c454354202756657273696f6e20436f6d70696c65204f532720415320274e616d65272c204040676c6f62616c2e76657273696f6e5f636f6d70696c655f6f73204153202756616c75652720554e494f4e20414c4c2053454c454354202756657273696f6e20436f6d70696c65204d616368696e652720415320274e616d65272c204040676c6f62616c2e76657273696f6e5f636f6d70696c655f6d616368696e65204153202756616c75652720554e494f4e20414c4c2053454c4543542052455045415428272d272c2032332920415320274e616d65272c20765f62616e6e6572204153202756616c75652720554e494f4e20414c4c2053454c45435420275554432054696d652720415320274e616d65272c205554435f54494d455354414d502829204153202756616c75652720554e494f4e20414c4c2053454c45435420274c6f63616c2054696d652720415320274e616d65272c204e4f572829204153202756616c75652720554e494f4e20414c4c2053454c454354202754696d65205a6f6e652720415320274e616d65272c204040676c6f62616c2e74696d655f7a6f6e65204153202756616c75652720554e494f4e20414c4c2053454c454354202753797374656d2054696d65205a6f6e652720415320274e616d65272c204040676c6f62616c2e73797374656d5f74696d655f7a6f6e65204153202756616c75652720554e494f4e20414c4c2053454c454354202754696d65205a6f6e65204f66667365742720415320274e616d65272c2054494d4544494646284e4f5728292c205554435f54494d455354414d50282929204153202756616c7565273b202053455420765f6861735f696e6e6f64622020202020202020203d2049464e554c4c282853454c45435420535550504f52542046524f4d20696e666f726d6174696f6e5f736368656d612e454e47494e455320574845524520454e47494e45203d2027496e6e6f444227292c20274e4f27292c20765f6861735f6e64622020202020202020202020203d2049464e554c4c282853454c45435420535550504f52542046524f4d20696e666f726d6174696f6e5f736368656d612e454e47494e455320574845524520454e47494e45203d20274e4442436c757374657227292c20274e4f27292c20765f6861735f7073202020202020202020202020203d2049464e554c4c282853454c45435420535550504f52542046524f4d20696e666f726d6174696f6e5f736368656d612e454e47494e455320574845524520454e47494e45203d2027504552464f524d414e43455f534348454d4127292c20274e4f27292c20765f6861735f70735f7265706c69636174696f6e203d20494628765f6861735f7073203d20275945532720414e44204558495354532853454c45435420312046524f4d20696e666f726d6174696f6e5f736368656d612e5441424c4553205748455245205441424c455f534348454d41203d2027706572666f726d616e63655f736368656d612720414e44205441424c455f4e414d45203d20277265706c69636174696f6e5f6170706c6965725f73746174757327292c2027594553272c20274e4f2720292c20765f6861735f7265706c69636174696f6e202020203d2020494628765f6861735f70735f7265706c69636174696f6e203d2027594553272c204946282853454c45435420434f554e54282a292046524f4d20706572666f726d616e63655f736368656d612e7265706c69636174696f6e5f636f6e6e656374696f6e5f73746174757329203e20302c2027594553272c20274e4f27292c2049462840406d61737465725f696e666f5f7265706f7369746f7279203d20275441424c45272c204946282853454c45435420434f554e54282a292046524f4d206d7973716c2e736c6176655f6d61737465725f696e666f29203e20302c2027594553272c20274e4f27292c20494628404072656c61795f6c6f675f696e666f5f7265706f7369746f7279203d20275441424c45272c204946282853454c45435420434f554e54282a292046524f4d206d7973716c2e736c6176655f72656c61795f6c6f675f696e666f29203e20302c2027594553272c20274e4f27292c20274d415942452729292029202c20765f6861735f6d65747269637320202020202020203d20494628765f6861735f7073203d202759455327204f5220287379732e76657273696f6e5f6d616a6f722829203d203520414e44207379732e76657273696f6e5f6d696e6f722829203d2036292c2027594553272c20274e4f27292c20765f6861735f70735f7661727320202020202020203d20274e4f273b20202053455420765f6861735f70735f76617273203d204946284040676c6f62616c2e73686f775f636f6d7061746962696c6974795f35362c20274e4f272c202759455327293b202053455420765f6861735f70735f76617273203d2027594553273b202049462028407379732e6465627567203d20274f4e2729205448454e2053454c45435420765f6861735f696e6e6f646220415320274861735f496e6e6f4442272c20765f6861735f6e646220415320274861735f4e4442436c7573746572272c20765f6861735f707320415320274861735f506572666f726d616e63655f536368656d61272c20765f6861735f70735f7661727320415320274861735f505f535f53484f575f5661726961626c6573272c20765f6861735f6d65747269637320415320274861735f6d657472696373272c20765f6861735f70735f7265706c69636174696f6e20274153204861735f505f535f5265706c69636174696f6e272c20765f6861735f7265706c69636174696f6e20415320274861735f5265706c69636174696f6e273b20454e442049463b202049462028765f6861735f696e6e6f646220494e20282744454641554c54272c2027594553272929205448454e2053455420407379732e646961676e6f73746963732e73716c203d202753484f5720454e47494e4520496e6e6f444220535441545553273b20505245504152452073746d745f696e6e6f64625f7374617475732046524f4d20407379732e646961676e6f73746963732e73716c3b20454e442049463b202049462028765f6861735f7073203d20275945532729205448454e2053455420407379732e646961676e6f73746963732e73716c203d202753484f5720454e47494e4520504552464f524d414e43455f534348454d4120535441545553273b20505245504152452073746d745f70735f7374617475732046524f4d20407379732e646961676e6f73746963732e73716c3b20454e442049463b202049462028765f6861735f6e646220494e20282744454641554c54272c2027594553272929205448454e2053455420407379732e646961676e6f73746963732e73716c203d202753484f5720454e47494e45204e4442434c555354455220535441545553273b20505245504152452073746d745f6e6462636c75737465725f7374617475732046524f4d20407379732e646961676e6f73746963732e73716c3b20454e442049463b202053455420407379732e646961676e6f73746963732e73716c5f67656e5f71756572795f74656d706c617465203d202753454c45435420434f4e43415428202753454c45435420272c2047524f55505f434f4e434154282043415345205748454e2028535542535452494e47285441424c455f4e414d452c2033292c20434f4c554d4e5f4e414d452920494e2028202827696f5f676c6f62616c5f62795f66696c655f62795f6279746573272c2027746f74616c27292c202827696f5f676c6f62616c5f62795f776169745f62795f6279746573272c2027746f74616c5f72657175657374656427292029205448454e20434f4e43415428277379732e666f726d61745f627974657328272c20434f4c554d4e5f4e414d452c20272920415320272c20434f4c554d4e5f4e414d4529205748454e20535542535452494e4728434f4c554d4e5f4e414d452c202d3829203d20275f6c6174656e637927205448454e20434f4e43415428277379732e666f726d61745f74696d6528272c20434f4c554d4e5f4e414d452c20272920415320272c20434f4c554d4e5f4e414d4529205748454e20535542535452494e4728434f4c554d4e5f4e414d452c202d3729203d20275f6d656d6f727927204f5220535542535452494e4728434f4c554d4e5f4e414d452c202d313729203d20275f6d656d6f72795f616c6c6f636174656427204f52202828535542535452494e4728434f4c554d4e5f4e414d452c202d3529203d20275f7265616427204f5220535542535452494e4728434f4c554d4e5f4e414d452c202d3829203d20275f7772697474656e27204f5220535542535452494e4728434f4c554d4e5f4e414d452c202d3629203d20275f7772697465272920414e4420535542535452494e4728434f4c554d4e5f4e414d452c20312c203629203c3e2027434f554e545f2729205448454e20434f4e43415428277379732e666f726d61745f627974657328272c20434f4c554d4e5f4e414d452c20272920415320272c20434f4c554d4e5f4e414d452920454c534520434f4c554d4e5f4e414d4520454e44204f52444552204259204f5244494e414c5f504f534954494f4e20534550415241544f5220272c0a202020202020202720292c20270a202046524f4d20746d705f272c20535542535452494e47285441424c455f4e414d452046524f4d2033292c20275f257b4f55545055547d27202920415320517565727920494e544f20407379732e646961676e6f73746963732e73716c5f73656c6563742046524f4d20696e666f726d6174696f6e5f736368656d612e434f4c554d4e53205748455245205441424c455f534348454d41203d20277379732720414e44205441424c455f4e414d45203d203f2047524f5550204259205441424c455f4e414d45273b202053455420407379732e646961676e6f73746963732e73716c5f67656e5f71756572795f64656c7461203d202753454c45435420434f4e43415428202753454c45435420272c2047524f55505f434f4e434154282043415345205748454e2046494e445f494e5f53455428434f4c554d4e5f4e414d452c20646961672e706b29205448454e20434f4c554d4e5f4e414d45205748454e20646961672e5441424c455f4e414d45203d2027696f5f676c6f62616c5f62795f66696c655f62795f62797465732720414e4420434f4c554d4e5f4e414d45203d202777726974655f70637427205448454e20434f4e434154282749464e554c4c28524f554e44283130302d282828652e746f74616c5f726561642d49464e554c4c28732e746f74616c5f726561642c20302929272c20272f4e554c4c4946282828652e746f74616c5f726561642d49464e554c4c28732e746f74616c5f726561642c203029292b28652e746f74616c5f7772697474656e2d49464e554c4c28732e746f74616c5f7772697474656e2c20302929292c203029292a313030292c2032292c20302e30302920415320272c20434f4c554d4e5f4e414d4529205748454e2028646961672e5441424c455f4e414d452c20434f4c554d4e5f4e414d452920494e2028202827696f5f676c6f62616c5f62795f66696c655f62795f6279746573272c2027746f74616c27292c202827696f5f676c6f62616c5f62795f776169745f62795f6279746573272c2027746f74616c5f72657175657374656427292029205448454e20434f4e43415428277379732e666f726d61745f627974657328652e272c20434f4c554d4e5f4e414d452c20272d49464e554c4c28732e272c20434f4c554d4e5f4e414d452c20272c2030292920415320272c20434f4c554d4e5f4e414d4529205748454e20535542535452494e4728434f4c554d4e5f4e414d452c20312c20342920494e2028276d61785f272c20276d696e5f272920414e4420535542535452494e4728434f4c554d4e5f4e414d452c202d3829203d20275f6c6174656e637927205448454e20434f4e43415428277379732e666f726d61745f74696d6528652e272c20434f4c554d4e5f4e414d452c20272920415320272c20434f4c554d4e5f4e414d4529205748454e20434f4c554d4e5f4e414d45203d20276176675f6c6174656e637927205448454e20434f4e43415428277379732e666f726d61745f74696d652828652e746f74616c5f6c6174656e6379202d2049464e554c4c28732e746f74616c5f6c6174656e63792c20302929272c20272f4e554c4c494628652e746f74616c202d2049464e554c4c28732e746f74616c2c2030292c2030292920415320272c20434f4c554d4e5f4e414d4529205748454e20535542535452494e4728434f4c554d4e5f4e414d452c202d313229203d20275f6176675f6c6174656e637927205448454e20434f4e43415428277379732e666f726d61745f74696d652828652e272c20535542535452494e4728434f4c554d4e5f4e414d452046524f4d203120464f5220434841525f4c454e47544828434f4c554d4e5f4e414d45292d3132292c20275f6c6174656e6379202d2049464e554c4c28732e272c20535542535452494e4728434f4c554d4e5f4e414d452046524f4d203120464f5220434841525f4c454e47544828434f4c554d4e5f4e414d45292d3132292c20275f6c6174656e63792c20302929272c20272f4e554c4c494628652e272c20535542535452494e4728434f4c554d4e5f4e414d452046524f4d203120464f5220434841525f4c454e47544828434f4c554d4e5f4e414d45292d3132292c202773202d2049464e554c4c28732e272c20535542535452494e4728434f4c554d4e5f4e414d452046524f4d203120464f5220434841525f4c454e47544828434f4c554d4e5f4e414d45292d3132292c2027732c2030292c2030292920415320272c20434f4c554d4e5f4e414d4529205748454e20535542535452494e4728434f4c554d4e5f4e414d452c202d3829203d20275f6c6174656e637927205448454e20434f4e43415428277379732e666f726d61745f74696d6528652e272c20434f4c554d4e5f4e414d452c2027202d2049464e554c4c28732e272c20434f4c554d4e5f4e414d452c20272c2030292920415320272c20434f4c554d4e5f4e414d4529205748454e20434f4c554d4e5f4e414d4520494e2028276176675f72656164272c20276176675f7772697465272c20276176675f7772697474656e2729205448454e20434f4e43415428277379732e666f726d61745f62797465732849464e554c4c2828652e746f74616c5f272c20494628434f4c554d4e5f4e414d45203d20276176675f72656164272c202772656164272c20277772697474656e27292c20272d49464e554c4c28732e746f74616c5f272c20494628434f4c554d4e5f4e414d45203d20276176675f72656164272c202772656164272c20277772697474656e27292c20272c20302929272c20272f4e554c4c494628652e636f756e745f272c20494628434f4c554d4e5f4e414d45203d20276176675f72656164272c202772656164272c2027777269746527292c20272d49464e554c4c28732e636f756e745f272c20494628434f4c554d4e5f4e414d45203d20276176675f72656164272c202772656164272c2027777269746527292c20272c2030292c2030292c2030292920415320272c20434f4c554d4e5f4e414d4529205748454e20535542535452494e4728434f4c554d4e5f4e414d452c202d3729203d20275f6d656d6f727927204f5220535542535452494e4728434f4c554d4e5f4e414d452c202d313729203d20275f6d656d6f72795f616c6c6f636174656427204f52202828535542535452494e4728434f4c554d4e5f4e414d452c202d3529203d20275f7265616427204f5220535542535452494e4728434f4c554d4e5f4e414d452c202d3829203d20275f7772697474656e27204f5220535542535452494e4728434f4c554d4e5f4e414d452c202d3629203d20275f7772697465272920414e4420535542535452494e4728434f4c554d4e5f4e414d452c20312c203629203c3e2027434f554e545f2729205448454e20434f4e43415428277379732e666f726d61745f627974657328652e272c20434f4c554d4e5f4e414d452c2027202d2049464e554c4c28732e272c20434f4c554d4e5f4e414d452c20272c2030292920415320272c20434f4c554d4e5f4e414d452920454c534520434f4e434154282728652e272c20434f4c554d4e5f4e414d452c2027202d2049464e554c4c28732e272c20434f4c554d4e5f4e414d452c20272c2030292920415320272c20434f4c554d4e5f4e414d452920454e44204f52444552204259204f5244494e414c5f504f534954494f4e20534550415241544f5220272c0a202020202020202720292c20270a202046524f4d20746d705f272c20646961672e5441424c455f4e414d452c20275f656e642065204c454654204f55544552204a4f494e20746d705f272c20646961672e5441424c455f4e414d452c20275f73746172742073205553494e472028272c20646961672e706b2c20272927202920415320517565727920494e544f20407379732e646961676e6f73746963732e73716c5f73656c6563742046524f4d20746d705f7379735f76696577735f64656c7461206469616720494e4e4552204a4f494e20696e666f726d6174696f6e5f736368656d612e434f4c554d4e532063204f4e20632e5441424c455f4e414d45203d20434f4e43415428277824272c20646961672e5441424c455f4e414d452920574845524520632e5441424c455f534348454d41203d20277379732720414e4420646961672e5441424c455f4e414d45203d203f2047524f555020425920646961672e5441424c455f4e414d45273b202049462028765f6861735f7073203d20275945532729205448454e2044524f502054454d504f52415259205441424c452049462045584953545320746d705f7379735f76696577735f64656c74613b204352454154452054454d504f52415259205441424c4520746d705f7379735f76696577735f64656c74612028205441424c455f4e414d45207661726368617228363429204e4f54204e554c4c2c206f726465725f6279207465787420434f4d4d454e5420274f5244455220425920636c6175736520666f722074686520696e697469616c20616e64206f766572616c6c207669657773272c206f726465725f62795f64656c7461207465787420434f4d4d454e5420274f5244455220425920636c6175736520666f72207468652064656c7461207669657773272c2077686572655f64656c7461207465787420434f4d4d454e542027574845524520636c6175736520746f2075736520666f722064656c746120766965777320746f206f6e6c7920696e636c75646520726f7773207769746820612022636f756e7422203e2030272c206c696d69745f726f777320696e7420756e7369676e656420434f4d4d454e542027546865206d6178696d756d206e756d626572206f6620726f777320746f20696e636c75646520666f72207468652076696577272c20706b2076617263686172283132382920434f4d4d454e542027557365642077697468207468652046494e445f494e5f53455428292066756e6374696f6e20736f2075736520636f6d6d6120736570617261746564206c69737420776974686f75742077686974657370616365272c205052494d415259204b455920285441424c455f4e414d452920293b202049462028407379732e6465627567203d20274f4e2729205448454e2053454c4543542027506f70756c6174696e6720746d705f7379735f76696577735f64656c74612720415320274465627567273b20454e442049463b20494e5345525420494e544f20746d705f7379735f76696577735f64656c74612056414c554553202827686f73745f73756d6d6172792720202020202020202020202020202020202020202020202c2027257b5441424c457d2e73746174656d656e745f6c6174656e63792044455343272c202728652e73746174656d656e745f6c6174656e63792d49464e554c4c28732e73746174656d656e745f6c6174656e63792c203029292044455343272c202728652e73746174656d656e7473202d2049464e554c4c28732e73746174656d656e74732c20302929203e2030272c204e554c4c2c2027686f737427292c202827686f73745f73756d6d6172795f62795f66696c655f696f272020202020202020202020202c2027257b5441424c457d2e696f5f6c6174656e63792044455343272c202728652e696f5f6c6174656e63792d49464e554c4c28732e696f5f6c6174656e63792c203029292044455343272c202728652e696f73202d2049464e554c4c28732e696f732c20302929203e2030272c204e554c4c2c2027686f737427292c202827686f73745f73756d6d6172795f62795f66696c655f696f5f7479706527202020202020202c2027257b5441424c457d2e686f73742c20257b5441424c457d2e746f74616c5f6c6174656e63792044455343272c2027652e686f73742c2028652e746f74616c5f6c6174656e63792d49464e554c4c28732e746f74616c5f6c6174656e63792c203029292044455343272c202728652e746f74616c202d2049464e554c4c28732e746f74616c2c20302929203e2030272c204e554c4c2c2027686f73742c6576656e745f6e616d6527292c202827686f73745f73756d6d6172795f62795f73746167657327202020202020202020202020202c2027257b5441424c457d2e686f73742c20257b5441424c457d2e746f74616c5f6c6174656e63792044455343272c2027652e686f73742c2028652e746f74616c5f6c6174656e63792d49464e554c4c28732e746f74616c5f6c6174656e63792c203029292044455343272c202728652e746f74616c202d2049464e554c4c28732e746f74616c2c20302929203e2030272c204e554c4c2c2027686f73742c6576656e745f6e616d6527292c202827686f73745f73756d6d6172795f62795f73746174656d656e745f6c6174656e63792720202c2027257b5441424c457d2e746f74616c5f6c6174656e63792044455343272c202728652e746f74616c5f6c6174656e63792d49464e554c4c28732e746f74616c5f6c6174656e63792c203029292044455343272c202728652e746f74616c202d2049464e554c4c28732e746f74616c2c20302929203e2030272c204e554c4c2c2027686f737427292c202827686f73745f73756d6d6172795f62795f73746174656d656e745f747970652720202020202c2027257b5441424c457d2e686f73742c20257b5441424c457d2e746f74616c5f6c6174656e63792044455343272c2027652e686f73742c2028652e746f74616c5f6c6174656e63792d49464e554c4c28732e746f74616c5f6c6174656e63792c203029292044455343272c202728652e746f74616c202d2049464e554c4c28732e746f74616c2c20302929203e2030272c204e554c4c2c2027686f73742c73746174656d656e7427292c202827696f5f62795f7468726561645f62795f6c6174656e6379272020202020202020202020202c2027257b5441424c457d2e746f74616c5f6c6174656e63792044455343272c202728652e746f74616c5f6c6174656e63792d49464e554c4c28732e746f74616c5f6c6174656e63792c203029292044455343272c202728652e746f74616c202d2049464e554c4c28732e746f74616c2c20302929203e2030272c204e554c4c2c2027757365722c7468726561645f69642c70726f636573736c6973745f696427292c202827696f5f676c6f62616c5f62795f66696c655f62795f6279746573272020202020202020202c2027257b5441424c457d2e746f74616c2044455343272c202728652e746f74616c2d49464e554c4c28732e746f74616c2c203029292044455343272c202728652e746f74616c202d2049464e554c4c28732e746f74616c2c20302929203e2030272c203130302c202766696c6527292c202827696f5f676c6f62616c5f62795f66696c655f62795f6c6174656e637927202020202020202c2027257b5441424c457d2e746f74616c5f6c6174656e63792044455343272c202728652e746f74616c5f6c6174656e63792d49464e554c4c28732e746f74616c5f6c6174656e63792c203029292044455343272c202728652e746f74616c202d2049464e554c4c28732e746f74616c2c20302929203e2030272c203130302c202766696c6527292c202827696f5f676c6f62616c5f62795f776169745f62795f6279746573272020202020202020202c2027257b5441424c457d2e746f74616c5f7265717565737465642044455343272c202728652e746f74616c5f7265717565737465642d49464e554c4c28732e746f74616c5f7265717565737465642c203029292044455343272c202728652e746f74616c202d2049464e554c4c28732e746f74616c2c20302929203e2030272c204e554c4c2c20276576656e745f6e616d6527292c202827696f5f676c6f62616c5f62795f776169745f62795f6c6174656e637927202020202020202c2027257b5441424c457d2e746f74616c5f6c6174656e63792044455343272c202728652e746f74616c5f6c6174656e63792d49464e554c4c28732e746f74616c5f6c6174656e63792c203029292044455343272c202728652e746f74616c202d2049464e554c4c28732e746f74616c2c20302929203e2030272c204e554c4c2c20276576656e745f6e616d6527292c202827736368656d615f696e6465785f73746174697374696373272020202020202020202020202c202728257b5441424c457d2e73656c6563745f6c6174656e63792b257b5441424c457d2e696e736572745f6c6174656e63792b257b5441424c457d2e7570646174655f6c6174656e63792b257b5441424c457d2e64656c6574655f6c6174656e6379292044455343272c20272828652e73656c6563745f6c6174656e63792b652e696e736572745f6c6174656e63792b652e7570646174655f6c6174656e63792b652e64656c6574655f6c6174656e6379292d49464e554c4c28732e73656c6563745f6c6174656e63792b732e696e736572745f6c6174656e63792b732e7570646174655f6c6174656e63792b732e64656c6574655f6c6174656e63792c203029292044455343272c20272828652e726f77735f73656c65637465642b652e696e736572745f6c6174656e63792b652e726f77735f757064617465642b652e726f77735f64656c65746564292d49464e554c4c28732e726f77735f73656c65637465642b732e726f77735f696e7365727465642b732e726f77735f757064617465642b732e726f77735f64656c657465642c20302929203e2030272c203130302c20277461626c655f736368656d612c7461626c655f6e616d652c696e6465785f6e616d6527292c202827736368656d615f7461626c655f73746174697374696373272020202020202020202020202c2027257b5441424c457d2e746f74616c5f6c6174656e63792044455343272c202728652e746f74616c5f6c6174656e63792d49464e554c4c28732e746f74616c5f6c6174656e63792c203029292044455343272c202728652e746f74616c5f6c6174656e63792d49464e554c4c28732e746f74616c5f6c6174656e63792c20302929203e2030272c203130302c20277461626c655f736368656d612c7461626c655f6e616d6527292c202827736368656d615f7461626c65735f776974685f66756c6c5f7461626c655f7363616e73272c2027257b5441424c457d2e726f77735f66756c6c5f7363616e6e65642044455343272c202728652e726f77735f66756c6c5f7363616e6e65642d49464e554c4c28732e726f77735f66756c6c5f7363616e6e65642c203029292044455343272c202728652e726f77735f66756c6c5f7363616e6e65642d49464e554c4c28732e726f77735f66756c6c5f7363616e6e65642c20302929203e2030272c203130302c20276f626a6563745f736368656d612c6f626a6563745f6e616d6527292c202827757365725f73756d6d6172792720202020202020202020202020202020202020202020202c2027257b5441424c457d2e73746174656d656e745f6c6174656e63792044455343272c202728652e73746174656d656e745f6c6174656e63792d49464e554c4c28732e73746174656d656e745f6c6174656e63792c203029292044455343272c202728652e73746174656d656e7473202d2049464e554c4c28732e73746174656d656e74732c20302929203e2030272c204e554c4c2c20277573657227292c202827757365725f73756d6d6172795f62795f66696c655f696f272020202020202020202020202c2027257b5441424c457d2e696f5f6c6174656e63792044455343272c202728652e696f5f6c6174656e63792d49464e554c4c28732e696f5f6c6174656e63792c203029292044455343272c202728652e696f73202d2049464e554c4c28732e696f732c20302929203e2030272c204e554c4c2c20277573657227292c202827757365725f73756d6d6172795f62795f66696c655f696f5f7479706527202020202020202c2027257b5441424c457d2e757365722c20257b5441424c457d2e6c6174656e63792044455343272c2027652e757365722c2028652e6c6174656e63792d49464e554c4c28732e6c6174656e63792c203029292044455343272c202728652e746f74616c202d2049464e554c4c28732e746f74616c2c20302929203e2030272c204e554c4c2c2027757365722c6576656e745f6e616d6527292c202827757365725f73756d6d6172795f62795f73746167657327202020202020202020202020202c2027257b5441424c457d2e757365722c20257b5441424c457d2e746f74616c5f6c6174656e63792044455343272c2027652e757365722c2028652e746f74616c5f6c6174656e63792d49464e554c4c28732e746f74616c5f6c6174656e63792c203029292044455343272c202728652e746f74616c202d2049464e554c4c28732e746f74616c2c20302929203e2030272c204e554c4c2c2027757365722c6576656e745f6e616d6527292c202827757365725f73756d6d6172795f62795f73746174656d656e745f6c6174656e63792720202c2027257b5441424c457d2e746f74616c5f6c6174656e63792044455343272c202728652e746f74616c5f6c6174656e63792d49464e554c4c28732e746f74616c5f6c6174656e63792c203029292044455343272c202728652e746f74616c202d2049464e554c4c28732e746f74616c2c20302929203e2030272c204e554c4c2c20277573657227292c202827757365725f73756d6d6172795f62795f73746174656d656e745f747970652720202020202c2027257b5441424c457d2e757365722c20257b5441424c457d2e746f74616c5f6c6174656e63792044455343272c2027652e757365722c2028652e746f74616c5f6c6174656e63792d49464e554c4c28732e746f74616c5f6c6174656e63792c203029292044455343272c202728652e746f74616c202d2049464e554c4c28732e746f74616c2c20302929203e2030272c204e554c4c2c2027757365722c73746174656d656e7427292c202827776169745f636c61737365735f676c6f62616c5f62795f6176675f6c6174656e637927202c202749464e554c4c28257b5441424c457d2e746f74616c5f6c6174656e6379202f204e554c4c494628257b5441424c457d2e746f74616c2c2030292c2030292044455343272c202749464e554c4c2828652e746f74616c5f6c6174656e63792d49464e554c4c28732e746f74616c5f6c6174656e63792c20302929202f204e554c4c49462828652e746f74616c202d2049464e554c4c28732e746f74616c2c203029292c2030292c2030292044455343272c202728652e746f74616c202d2049464e554c4c28732e746f74616c2c20302929203e2030272c204e554c4c2c20276576656e745f636c61737327292c202827776169745f636c61737365735f676c6f62616c5f62795f6c6174656e63792720202020202c2027257b5441424c457d2e746f74616c5f6c6174656e63792044455343272c202728652e746f74616c5f6c6174656e63792d49464e554c4c28732e746f74616c5f6c6174656e63792c203029292044455343272c202728652e746f74616c202d2049464e554c4c28732e746f74616c2c20302929203e2030272c204e554c4c2c20276576656e745f636c61737327292c20282777616974735f62795f686f73745f62795f6c6174656e63792720202020202020202020202c2027257b5441424c457d2e686f73742c20257b5441424c457d2e746f74616c5f6c6174656e63792044455343272c2027652e686f73742c2028652e746f74616c5f6c6174656e63792d49464e554c4c28732e746f74616c5f6c6174656e63792c203029292044455343272c202728652e746f74616c202d2049464e554c4c28732e746f74616c2c20302929203e2030272c204e554c4c2c2027686f73742c6576656e7427292c20282777616974735f62795f757365725f62795f6c6174656e63792720202020202020202020202c2027257b5441424c457d2e757365722c20257b5441424c457d2e746f74616c5f6c6174656e63792044455343272c2027652e757365722c2028652e746f74616c5f6c6174656e63792d49464e554c4c28732e746f74616c5f6c6174656e63792c203029292044455343272c202728652e746f74616c202d2049464e554c4c28732e746f74616c2c20302929203e2030272c204e554c4c2c2027757365722c6576656e7427292c20282777616974735f676c6f62616c5f62795f6c6174656e6379272020202020202020202020202c2027257b5441424c457d2e746f74616c5f6c6174656e63792044455343272c202728652e746f74616c5f6c6174656e63792d49464e554c4c28732e746f74616c5f6c6174656e63792c203029292044455343272c202728652e746f74616c202d2049464e554c4c28732e746f74616c2c20302929203e2030272c204e554c4c2c20276576656e74732729203b20454e442049463b20202053454c454354202720203d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d2020436f6e66696775726174696f6e20203d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d2020272041532027273b2053454c4543542027474c4f42414c205641524941424c455327204153202754686520666f6c6c6f77696e67206f75747075742069733a273b2049462028765f6861735f70735f76617273203d20275945532729205448454e2053454c454354204c4f574552285641524941424c455f4e414d4529204153205661726961626c655f6e616d652c205641524941424c455f56414c5545204153205661726961626c655f76616c75652046524f4d20706572666f726d616e63655f736368656d612e676c6f62616c5f7661726961626c6573204f52444552204259205641524941424c455f4e414d453b20454c53452053454c454354204c4f574552285641524941424c455f4e414d4529204153205661726961626c655f6e616d652c205641524941424c455f56414c5545204153205661726961626c655f76616c75652046524f4d20696e666f726d6174696f6e5f736368656d612e474c4f42414c5f5641524941424c4553204f52444552204259205641524941424c455f4e414d453b20454e442049463b202049462028765f6861735f7073203d20275945532729205448454e2053454c4543542027506572666f726d616e636520536368656d61205365747570202d204163746f727327204153202754686520666f6c6c6f77696e67206f75747075742069733a273b2053454c454354202a2046524f4d20706572666f726d616e63655f736368656d612e73657475705f6163746f72733b202053454c4543542027506572666f726d616e636520536368656d61205365747570202d20436f6e73756d65727327204153202754686520666f6c6c6f77696e67206f75747075742069733a273b2053454c454354204e414d4520415320436f6e73756d65722c20454e41424c45442c207379732e70735f69735f636f6e73756d65725f656e61626c6564284e414d452920415320434f4c4c454354532046524f4d20706572666f726d616e63655f736368656d612e73657475705f636f6e73756d6572733b202053454c4543542027506572666f726d616e636520536368656d61205365747570202d20496e737472756d656e747327204153202754686520666f6c6c6f77696e67206f75747075742069733a273b2053454c45435420535542535452494e475f494e444558284e414d452c20272f272c2032292041532027496e737472756d656e74436c617373272c20524f554e44283130302a53554d28494628454e41424c4544203d2027594553272c20312c203029292f434f554e54282a292c2032292041532027456e61626c6564506374272c20524f554e44283130302a53554d2849462854494d4544203d2027594553272c20312c203029292f434f554e54282a292c203229204153202754696d6564506374272046524f4d20706572666f726d616e63655f736368656d612e73657475705f696e737472756d656e74732047524f555020425920535542535452494e475f494e444558284e414d452c20272f272c203229204f5244455220425920535542535452494e475f494e444558284e414d452c20272f272c2032293b202053454c4543542027506572666f726d616e636520536368656d61205365747570202d204f626a6563747327204153202754686520666f6c6c6f77696e67206f75747075742069733a273b2053454c454354202a2046524f4d20706572666f726d616e63655f736368656d612e73657475705f6f626a656374733b202053454c4543542027506572666f726d616e636520536368656d61205365747570202d205468726561647327204153202754686520666f6c6c6f77696e67206f75747075742069733a273b2053454c4543542060545950456020415320546872656164547970652c20434f554e54282a292041532027546f74616c272c20524f554e44283130302a53554d28494628494e535452554d454e544544203d2027594553272c20312c203029292f434f554e54282a292c2032292041532027496e737472756d656e746564506374272046524f4d20706572666f726d616e63655f736368656d612e746872656164732047524f555020425920545950453b20454e442049463b20202049462028765f6861735f7265706c69636174696f6e203d20274e4f2729205448454e2053454c45435420274e6f205265706c69636174696f6e20436f6e666967757265642720415320275265706c69636174696f6e20537461747573273b20454c53452053454c45435420434f4e43415428275265706c69636174696f6e20436f6e666967757265643a20272c20765f6861735f7265706c69636174696f6e2c2027202d20506572666f726d616e636520536368656d61205265706c69636174696f6e205461626c65733a20272c20765f6861735f70735f7265706c69636174696f6e2920415320275265706c69636174696f6e20537461747573273b202049462028765f6861735f70735f7265706c69636174696f6e203d20275945532729205448454e2053454c45435420275265706c69636174696f6e202d20436f6e6e656374696f6e20436f6e66696775726174696f6e27204153202754686520666f6c6c6f77696e67206f75747075742069733a273b2053454c454354202a2046524f4d20706572666f726d616e63655f736368656d612e7265706c69636174696f6e5f636f6e6e656374696f6e5f636f6e66696775726174696f6e204f52444552204259204348414e4e454c5f4e414d45203b20454e442049463b202049462028765f6861735f70735f7265706c69636174696f6e203d20275945532729205448454e2053454c45435420275265706c69636174696f6e202d204170706c69657220436f6e66696775726174696f6e27204153202754686520666f6c6c6f77696e67206f75747075742069733a273b2053454c454354202a2046524f4d20706572666f726d616e63655f736368656d612e7265706c69636174696f6e5f6170706c6965725f636f6e66696775726174696f6e204f52444552204259204348414e4e454c5f4e414d453b20454e442049463b20204946202840406d61737465725f696e666f5f7265706f7369746f7279203d20275441424c452729205448454e2053454c45435420275265706c69636174696f6e202d204d617374657220496e666f205265706f7369746f727920436f6e66696775726174696f6e27204153202754686520666f6c6c6f77696e67206f75747075742069733a273b2053454c45435420204368616e6e656c5f6e616d652c20486f73742c20557365725f6e616d652c20506f72742c20436f6e6e6563745f72657472792c20456e61626c65645f73736c2c2053736c5f63612c2053736c5f6361706174682c2053736c5f636572742c2053736c5f6369706865722c2053736c5f6b65792c2053736c5f7665726966795f7365727665725f636572742c204865617274626561742c2042696e642c2049676e6f7265645f7365727665725f6964732c20557569642c2052657472795f636f756e742c2053736c5f63726c2c2053736c5f63726c706174682c20546c735f76657273696f6e2c20456e61626c65645f6175746f5f706f736974696f6e2046524f4d206d7973716c2e736c6176655f6d61737465725f696e666f204f52444552204259204368616e6e656c5f6e616d65203b20454e442049463b202049462028404072656c61795f6c6f675f696e666f5f7265706f7369746f7279203d20275441424c452729205448454e2053454c45435420275265706c69636174696f6e202d2052656c6179204c6f67205265706f7369746f727920436f6e66696775726174696f6e27204153202754686520666f6c6c6f77696e67206f75747075742069733a273b2053454c45435420204368616e6e656c5f6e616d652c2053716c5f64656c61792c204e756d6265725f6f665f776f726b6572732c2049642046524f4d206d7973716c2e736c6176655f72656c61795f6c6f675f696e666f204f52444552204259204368616e6e656c5f6e616d65203b20454e442049463b20454e442049463b20202049462028765f6861735f6e646220494e20282744454641554c54272c2027594553272929205448454e2053454c4543542027436c75737465722054687265616420426c6f636b7327204153202754686520666f6c6c6f77696e67206f75747075742069733a273b2053454c454354202a2046524f4d206e6462696e666f2e746872656164626c6f636b733b20454e442049463b202049462028765f6861735f7073203d20275945532729205448454e2049462028407379732e646961676e6f73746963732e696e636c7564655f726177203d20274f4e2729205448454e2053454c454354202720203d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d2020496e697469616c2053746174757320203d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d2020272041532027273b20454e442049463b202044524f502054454d504f52415259205441424c452049462045584953545320746d705f646967657374735f73746172743b2043414c4c207379732e73746174656d656e745f706572666f726d616e63655f616e616c797a657228276372656174655f746d70272c2027746d705f646967657374735f7374617274272c204e554c4c293b2043414c4c207379732e73746174656d656e745f706572666f726d616e63655f616e616c797a65722827736e617073686f74272c204e554c4c2c204e554c4c293b2043414c4c207379732e73746174656d656e745f706572666f726d616e63655f616e616c797a6572282773617665272c2027746d705f646967657374735f7374617274272c204e554c4c293b202049462028407379732e646961676e6f73746963732e696e636c7564655f726177203d20274f4e2729205448454e2053455420407379732e646961676e6f73746963732e73716c203d205245504c41434528407379732e646961676e6f73746963732e73716c5f67656e5f71756572795f74656d706c6174652c2027257b4f55545055547d272c2027737461727427293b2049462028407379732e6465627567203d20274f4e2729205448454e2053454c454354202754686520666f6c6c6f77696e672071756572792077696c6c206265207573656420746f2067656e65726174652074686520717565727920666f7220656163682073797320766965772720415320274465627567273b2053454c45435420407379732e646961676e6f73746963732e73716c20415320274465627567273b20454e442049463b20505245504152452073746d745f67656e5f71756572792046524f4d20407379732e646961676e6f73746963732e73716c3b20454e442049463b2053455420765f646f6e65203d2046414c53453b204f50454e20635f73797376696577735f775f64656c74613b20635f73797376696577735f775f64656c74615f6c6f6f703a204c4f4f5020464554434820635f73797376696577735f775f64656c746120494e544f20765f7461626c655f6e616d653b20494620765f646f6e65205448454e204c4541564520635f73797376696577735f775f64656c74615f6c6f6f703b20454e442049463b202049462028407379732e6465627567203d20274f4e2729205448454e2053454c45435420434f4e434154282754686520666f6c6c6f77696e6720717565726965732061726520666f722073746f72696e672074686520696e697469616c20636f6e74656e74206f6620272c20765f7461626c655f6e616d652920415320274465627567273b20454e442049463b202043414c4c207379732e657865637574655f70726570617265645f73746d7428434f4e434154282744524f502054454d504f52415259205441424c45204946204558495354532060746d705f272c20765f7461626c655f6e616d652c20275f7374617274602729293b2043414c4c207379732e657865637574655f70726570617265645f73746d7428434f4e43415428274352454154452054454d504f52415259205441424c452060746d705f272c20765f7461626c655f6e616d652c20275f7374617274602053454c454354202a2046524f4d2060737973602e607824272c20765f7461626c655f6e616d652c2027602729293b202049462028407379732e646961676e6f73746963732e696e636c7564655f726177203d20274f4e2729205448454e2053455420407379732e646961676e6f73746963732e7461626c655f6e616d65203d20434f4e43415428277824272c20765f7461626c655f6e616d65293b20455845435554452073746d745f67656e5f7175657279205553494e4720407379732e646961676e6f73746963732e7461626c655f6e616d653b2053454c45435420434f4e43415428407379732e646961676e6f73746963732e73716c5f73656c6563742c204946286f726465725f6279204953204e4f54204e554c4c2c20434f4e43415428270a204f5244455220425920272c205245504c414345286f726465725f62792c2027257b5441424c457d272c20434f4e4341542827746d705f272c20765f7461626c655f6e616d652c20275f7374617274272929292c202727292c204946286c696d69745f726f7773204953204e4f54204e554c4c2c20434f4e43415428270a204c494d495420272c206c696d69745f726f7773292c20272729202920494e544f20407379732e646961676e6f73746963732e73716c5f73656c6563742046524f4d20746d705f7379735f76696577735f64656c7461205748455245205441424c455f4e414d45203d20765f7461626c655f6e616d653b2053454c45435420434f4e4341542827496e697469616c20272c20765f7461626c655f6e616d6529204153202754686520666f6c6c6f77696e67206f75747075742069733a273b2043414c4c207379732e657865637574655f70726570617265645f73746d7428407379732e646961676e6f73746963732e73716c5f73656c656374293b20454e442049463b20454e44204c4f4f503b20434c4f534520635f73797376696577735f775f64656c74613b202049462028407379732e646961676e6f73746963732e696e636c7564655f726177203d20274f4e2729205448454e204445414c4c4f4341544520505245504152452073746d745f67656e5f71756572793b20454e442049463b20454e442049463b202053455420765f73716c5f7374617475735f73756d6d6172795f73656c656374203d202753454c454354205661726961626c655f6e616d65272c20765f73716c5f7374617475735f73756d6d6172795f64656c746120203d2027272c20765f73716c5f7374617475735f73756d6d6172795f66726f6d2020203d2027273b2020524550454154202053455420765f6f75747075745f636f756e74203d20765f6f75747075745f636f756e74202b20313b2049462028765f6f75747075745f636f756e74203e203129205448454e2053455420765f736c656570203d20696e5f696e74657276616c2d28554e49585f54494d455354414d50284e4f57283229292d765f697465725f7374617274293b2053454c454354204e4f572829204153202754696d65272c20434f4e4341542827476f696e6720746f20736c65657020666f7220272c20765f736c6565702c2027207365636f6e64732e20506c6561736520646f206e6f7420696e746572727570742729204153202754686520666f6c6c6f77696e67206f75747075742069733a273b20444f20534c45455028696e5f696e74657276616c293b20454e442049463b2053455420765f697465725f7374617274203d20554e49585f54494d455354414d50284e4f57283229293b202053454c454354204e4f5728292c20434f4e4341542827497465726174696f6e204e756d62657220272c2049464e554c4c28765f6f75747075745f636f756e742c20274e554c4c272929204153202754686520666f6c6c6f77696e67206f75747075742069733a273b20204946202840406c6f675f62696e203d203129205448454e2053454c454354202753484f57204d41535445522053544154555327204153202754686520666f6c6c6f77696e67206f75747075742069733a273b2053484f57204d4153544552205354415455533b20454e442049463b202049462028765f6861735f7265706c69636174696f6e203c3e20274e4f2729205448454e2053454c454354202753484f5720534c4156452053544154555327204153202754686520666f6c6c6f77696e67206f75747075742069733a273b2053484f5720534c415645205354415455533b202049462028765f6861735f70735f7265706c69636174696f6e203d20275945532729205448454e2053454c45435420275265706c69636174696f6e20436f6e6e656374696f6e2053746174757327204153202754686520666f6c6c6f77696e67206f75747075742069733a273b2053454c454354202a2046524f4d20706572666f726d616e63655f736368656d612e7265706c69636174696f6e5f636f6e6e656374696f6e5f7374617475733b202053454c45435420275265706c69636174696f6e204170706c6965722053746174757327204153202754686520666f6c6c6f77696e67206f75747075742069733a273b2053454c454354202a2046524f4d20706572666f726d616e63655f736368656d612e7265706c69636174696f6e5f6170706c6965725f737461747573204f52444552204259204348414e4e454c5f4e414d453b202053454c45435420275265706c69636174696f6e204170706c69657220537461747573202d20436f6f7264696e61746f7227204153202754686520666f6c6c6f77696e67206f75747075742069733a273b2053454c454354202a2046524f4d20706572666f726d616e63655f736368656d612e7265706c69636174696f6e5f6170706c6965725f7374617475735f62795f636f6f7264696e61746f72204f52444552204259204348414e4e454c5f4e414d453b202053454c45435420275265706c69636174696f6e204170706c69657220537461747573202d20576f726b657227204153202754686520666f6c6c6f77696e67206f75747075742069733a273b2053454c454354202a2046524f4d20706572666f726d616e63655f736368656d612e7265706c69636174696f6e5f6170706c6965725f7374617475735f62795f776f726b6572204f52444552204259204348414e4e454c5f4e414d452c20574f524b45525f49443b20454e442049463b20204946202840406d61737465725f696e666f5f7265706f7369746f7279203d20275441424c452729205448454e2053454c45435420275265706c69636174696f6e202d204d6173746572204c6f672053746174757327204153202754686520666f6c6c6f77696e67206f75747075742069733a273b2053454c454354204d61737465725f6c6f675f6e616d652c204d61737465725f6c6f675f706f732046524f4d206d7973716c2e736c6176655f6d61737465725f696e666f3b20454e442049463b202049462028404072656c61795f6c6f675f696e666f5f7265706f7369746f7279203d20275441424c452729205448454e2053454c45435420275265706c69636174696f6e202d2052656c6179204c6f672053746174757327204153202754686520666f6c6c6f77696e67206f75747075742069733a273b2053454c454354207379732e666f726d61745f706174682852656c61795f6c6f675f6e616d65292041532052656c61795f6c6f675f6e616d652c2052656c61795f6c6f675f706f732c204d61737465725f6c6f675f6e616d652c204d61737465725f6c6f675f706f732046524f4d206d7973716c2e736c6176655f72656c61795f6c6f675f696e666f3b202053454c45435420275265706c69636174696f6e202d20576f726b65722053746174757327204153202754686520666f6c6c6f77696e67206f75747075742069733a273b2053454c4543542049642c207379732e666f726d61745f706174682852656c61795f6c6f675f6e616d65292041532052656c61795f6c6f675f6e616d652c2052656c61795f6c6f675f706f732c204d61737465725f6c6f675f6e616d652c204d61737465725f6c6f675f706f732c207379732e666f726d61745f7061746828436865636b706f696e745f72656c61795f6c6f675f6e616d652920415320436865636b706f696e745f72656c61795f6c6f675f6e616d652c20436865636b706f696e745f72656c61795f6c6f675f706f732c20436865636b706f696e745f6d61737465725f6c6f675f6e616d652c20436865636b706f696e745f6d61737465725f6c6f675f706f732c20436865636b706f696e745f7365716e6f2c20436865636b706f696e745f67726f75705f73697a652c2048455828436865636b706f696e745f67726f75705f6269746d61702920415320436865636b706f696e745f67726f75705f6269746d6170202c204368616e6e656c5f6e616d652046524f4d206d7973716c2e736c6176655f776f726b65725f696e666f204f5244455220425920204368616e6e656c5f6e616d652c2049643b20454e442049463b20454e442049463b202053455420765f7461626c655f6e616d65203d20434f4e4341542827746d705f6d6574726963735f272c20765f6f75747075745f636f756e74293b2043414c4c207379732e657865637574655f70726570617265645f73746d7428434f4e434154282744524f502054454d504f52415259205441424c452049462045584953545320272c20765f7461626c655f6e616d6529293b202043414c4c207379732e657865637574655f70726570617265645f73746d7428434f4e43415428274352454154452054454d504f52415259205441424c4520272c20765f7461626c655f6e616d652c20272028205661726961626c655f6e616d6520564152434841522831393329204e4f54204e554c4c2c205661726961626c655f76616c756520564152434841522831303234292c205479706520564152434841522832323529204e4f54204e554c4c2c20456e61626c656420454e554d2827594553272c20274e4f272c20275041525449414c2729204e4f54204e554c4c2c205052494d415259204b45592028547970652c205661726961626c655f6e616d6529202920454e47494e45203d20496e6e6f44422044454641554c5420434841525345543d757466382729293b202049462028765f6861735f6d65747269637329205448454e2053455420407379732e646961676e6f73746963732e73716c203d20434f4e434154282027494e5345525420494e544f20272c20765f7461626c655f6e616d652c20272053454c454354205661726961626c655f6e616d652c205245504c414345285661726961626c655f76616c75652c20270a272c20275c5c6e2729204153205661726961626c655f76616c75652c20547970652c20456e61626c65642046524f4d207379732e6d6574726963732720293b20454c53452053455420407379732e646961676e6f73746963732e73716c203d20434f4e434154282027494e5345525420494e544f20272c20765f7461626c655f6e616d652c20272853454c454354204c4f574552285641524941424c455f4e414d4529204153205661726961626c655f6e616d652c205245504c414345285641524941424c455f56414c55452c20270a272c20275c5c6e2729204153205661726961626c655f76616c75652c2027476c6f62616c205374617475732720415320547970652c20275945532720415320456e61626c65642046524f4d20706572666f726d616e63655f736368656d612e676c6f62616c5f737461747573202920554e494f4e20414c4c20282053454c454354204e414d45204153205661726961626c655f6e616d652c20434f554e54204153205661726961626c655f76616c75652c20434f4e4341542827496e6e6f4442204d657472696373202d20272c2053554253595354454d2920415320547970652c20494628535441545553203d2027656e61626c6564272c2027594553272c20274e4f272920415320456e61626c65642046524f4d20696e666f726d6174696f6e5f736368656d612e494e4e4f44425f4d455452494353205748455245204e414d45204e4f5420494e202820276c6f636b5f726f775f6c6f636b5f74696d65272c20276c6f636b5f726f775f6c6f636b5f74696d655f617667272c20276c6f636b5f726f775f6c6f636b5f74696d655f6d6178272c20276c6f636b5f726f775f6c6f636b5f7761697473272c20276275666665725f706f6f6c5f7265616473272c20276275666665725f706f6f6c5f726561645f7265717565737473272c20276275666665725f706f6f6c5f77726974655f7265717565737473272c20276275666665725f706f6f6c5f776169745f66726565272c20276275666665725f706f6f6c5f726561645f6168656164272c20276275666665725f706f6f6c5f726561645f61686561645f65766963746564272c20276275666665725f706f6f6c5f70616765735f746f74616c272c20276275666665725f706f6f6c5f70616765735f6d697363272c20276275666665725f706f6f6c5f70616765735f64617461272c20276275666665725f706f6f6c5f62797465735f64617461272c20276275666665725f706f6f6c5f70616765735f6469727479272c20276275666665725f706f6f6c5f62797465735f6469727479272c20276275666665725f706f6f6c5f70616765735f66726565272c20276275666665725f70616765735f63726561746564272c20276275666665725f70616765735f7772697474656e272c20276275666665725f70616765735f72656164272c20276275666665725f646174615f7265616473272c20276275666665725f646174615f7772697474656e272c202766696c655f6e756d5f6f70656e5f66696c6573272c20276f735f6c6f675f62797465735f7772697474656e272c20276f735f6c6f675f6673796e6373272c20276f735f6c6f675f70656e64696e675f6673796e6373272c20276f735f6c6f675f70656e64696e675f777269746573272c20276c6f675f7761697473272c20276c6f675f77726974655f7265717565737473272c20276c6f675f777269746573272c2027696e6e6f64625f64626c77725f777269746573272c2027696e6e6f64625f64626c77725f70616765735f7772697474656e272c2027696e6e6f64625f706167655f73697a652729202920554e494f4e20414c4c20282053454c45435420274e4f57282927204153205661726961626c655f6e616d652c204e4f57283329204153205661726961626c655f76616c75652c202753797374656d2054696d652720415320547970652c20275945532720415320456e61626c6564202920554e494f4e20414c4c20282053454c4543542027554e49585f54494d455354414d50282927204153205661726961626c655f6e616d652c20524f554e4428554e49585f54494d455354414d50284e4f57283329292c203329204153205661726961626c655f76616c75652c202753797374656d2054696d652720415320547970652c20275945532720415320456e61626c65642029204f5244455220425920547970652c205661726961626c655f6e616d653b2720293b20454e442049463b2043414c4c207379732e657865637574655f70726570617265645f73746d7428407379732e646961676e6f73746963732e73716c293b202043414c4c207379732e657865637574655f70726570617265645f73746d742820434f4e43415428272853454c454354205661726961626c655f76616c756520494e544f20407379732e646961676e6f73746963732e6f75747075745f74696d652046524f4d20272c20765f7461626c655f6e616d652c20272057484552452054797065203d202753797374656d2054696d652720414e44205661726961626c655f6e616d65203d2027554e49585f54494d455354414d5028292729272920293b2053455420765f6f75747075745f74696d65203d20407379732e646961676e6f73746963732e6f75747075745f74696d653b202053455420765f73716c5f7374617475735f73756d6d6172795f73656c656374203d20434f4e43415428765f73716c5f7374617475735f73756d6d6172795f73656c6563742c20272c20434f4e43415428204c4546542873272c20765f6f75747075745f636f756e742c20272e5661726961626c655f76616c75652c20272c20765f7374617475735f73756d6d6172795f77696474682c2027292c20494628272c205245504c41434528765f6e6f5f64656c74615f6e616d65732c2027257b434f554e547d272c20765f6f75747075745f636f756e74292c202720414e442073272c20765f6f75747075745f636f756e742c20272e5661726961626c655f76616c75652052454745585020275e5b302d395d2b285c5c2e5b302d395d2b293f24272c20434f4e43415428272028272c20524f554e442873272c20765f6f75747075745f636f756e742c20272e5661726961626c655f76616c75652f272c20765f6f75747075745f74696d652c20272c2032292c20272f7365632927292c20272729202920415320274f757470757420272c20765f6f75747075745f636f756e742c20272727292c20765f73716c5f7374617475735f73756d6d6172795f66726f6d2020203d20434f4e43415428765f73716c5f7374617475735f73756d6d6172795f66726f6d2c202720272c20494628765f6f75747075745f636f756e74203d20312c2027202046524f4d20272c202720202020202020494e4e4552204a4f494e2027292c20765f7461626c655f6e616d652c20272073272c20765f6f75747075745f636f756e742c2049462028765f6f75747075745f636f756e74203d20312c2027272c2027205553494e472028547970652c205661726961626c655f6e616d65292729293b2049462028765f6f75747075745f636f756e74203e203129205448454e2053455420765f73716c5f7374617475735f73756d6d6172795f64656c746120203d20434f4e43415428765f73716c5f7374617475735f73756d6d6172795f64656c74612c20272c20494628272c205245504c41434528765f6e6f5f64656c74615f6e616d65732c2027257b434f554e547d272c20765f6f75747075745f636f756e74292c202720414e442073272c2028765f6f75747075745f636f756e742d31292c20272e5661726961626c655f76616c75652052454745585020275e5b302d395d2b285c5c2e5b302d395d2b293f242720414e442073272c20765f6f75747075745f636f756e742c20272e5661726961626c655f76616c75652052454745585020275e5b302d395d2b285c5c2e5b302d395d2b293f24272c20434f4e4341542849462873272c2028765f6f75747075745f636f756e742d31292c20272e5661726961626c655f76616c75652052454745585020275e5b302d395d2b5c5c2e5b302d395d2b2427204f522073272c20765f6f75747075745f636f756e742c20272e5661726961626c655f76616c75652052454745585020275e5b302d395d2b5c5c2e5b302d395d2b24272c20524f554e44282873272c20765f6f75747075745f636f756e742c20272e5661726961626c655f76616c75652d73272c2028765f6f75747075745f636f756e742d31292c20272e5661726961626c655f76616c7565292c2032292c202873272c20765f6f75747075745f636f756e742c20272e5661726961626c655f76616c75652d73272c2028765f6f75747075745f636f756e742d31292c20272e5661726961626c655f76616c75652920292c20272028272c20524f554e44282873272c20765f6f75747075745f636f756e742c20272e5661726961626c655f76616c75652d73272c2028765f6f75747075745f636f756e742d31292c20272e5661726961626c655f76616c7565292f28272c20765f6f75747075745f74696d652c20272d272c20765f6f75747075745f74696d655f707265762c2027292c2032292c20272f736563292720292c2027272029204153202744656c74612028272c2028765f6f75747075745f636f756e742d31292c2027202d3e20272c20765f6f75747075745f636f756e742c2027292727293b20454e442049463b202053455420765f6f75747075745f74696d655f70726576203d20765f6f75747075745f74696d653b202049462028407379732e646961676e6f73746963732e696e636c7564655f726177203d20274f4e2729205448454e2049462028765f6861735f6d65747269637329205448454e2053454c454354202753454c454354202a2046524f4d207379732e6d65747269637327204153202754686520666f6c6c6f77696e67206f75747075742069733a273b20454c53452053454c45435420277379732e6d657472696373206571756976616c656e7427204153202754686520666f6c6c6f77696e67206f75747075742069733a273b20454e442049463b2043414c4c207379732e657865637574655f70726570617265645f73746d7428434f4e434154282753454c45435420547970652c205661726961626c655f6e616d652c20456e61626c65642c205661726961626c655f76616c75652046524f4d20272c20765f7461626c655f6e616d652c2027204f5244455220425920547970652c205661726961626c655f6e616d652729293b20454e442049463b202049462028765f6861735f696e6e6f646220494e20282744454641554c54272c2027594553272929205448454e2053454c454354202753484f5720454e47494e4520494e4e4f44422053544154555327204153202754686520666f6c6c6f77696e67206f75747075742069733a273b20455845435554452073746d745f696e6e6f64625f7374617475733b2053454c4543542027496e6e6f4442202d205472616e73616374696f6e7327204153202754686520666f6c6c6f77696e67206f75747075742069733a273b2053454c454354202a2046524f4d20696e666f726d6174696f6e5f736368656d612e494e4e4f44425f5452583b20454e442049463b202049462028765f6861735f6e646220494e20282744454641554c54272c2027594553272929205448454e2053454c454354202753484f5720454e47494e45204e4442434c55535445522053544154555327204153202754686520666f6c6c6f77696e67206f75747075742069733a273b20455845435554452073746d745f6e6462636c75737465725f7374617475733b202053454c45435420276e6462696e666f2e6d656d6f7279757361676527204153202754686520666f6c6c6f77696e67206f75747075742069733a273b2053454c454354206e6f64655f69642c206d656d6f72795f747970652c207379732e666f726d61745f627974657328757365642920415320757365642c20757365645f70616765732c207379732e666f726d61745f627974657328746f74616c2920415320746f74616c2c20746f74616c5f70616765732c20524f554e44283130302a28757365642f746f74616c292c2032292041532027557365642025272046524f4d206e6462696e666f2e6d656d6f727975736167653b202053455420765f646f6e65203d2046414c53453b204f50454e20635f6e6462696e666f3b20635f6e6462696e666f5f6c6f6f703a204c4f4f5020464554434820635f6e6462696e666f20494e544f20765f7461626c655f6e616d653b20494620765f646f6e65205448454e204c4541564520635f6e6462696e666f5f6c6f6f703b20454e442049463b202053454c45435420434f4e434154282753454c454354202a2046524f4d206e6462696e666f2e272c20765f7461626c655f6e616d6529204153202754686520666f6c6c6f77696e67206f75747075742069733a273b2043414c4c207379732e657865637574655f70726570617265645f73746d7428434f4e434154282753454c454354202a2046524f4d20606e6462696e666f602e60272c20765f7461626c655f6e616d652c2027602729293b20454e44204c4f4f503b20434c4f534520635f6e6462696e666f3b202053454c454354202a2046524f4d20696e666f726d6174696f6e5f736368656d612e46494c45533b20454e442049463b202053454c454354202753454c454354202a2046524f4d207379732e70726f636573736c69737427204153202754686520666f6c6c6f77696e67206f75747075742069733a273b2053454c4543542070726f636573736c6973742e2a2046524f4d207379732e70726f636573736c6973743b202049462028765f6861735f7073203d20275945532729205448454e20494620287379732e70735f69735f636f6e73756d65725f656e61626c656428276576656e74735f77616974735f686973746f72795f6c6f6e672729203d20275945532729205448454e2053454c454354202753454c454354202a2046524f4d207379732e6c61746573745f66696c655f696f27204153202754686520666f6c6c6f77696e67206f75747075742069733a273b2053454c454354202a2046524f4d207379732e6c61746573745f66696c655f696f3b20454e442049463b2020494620284558495354532853454c45435420312046524f4d20706572666f726d616e63655f736368656d612e73657475705f696e737472756d656e7473205748455245204e414d45204c494b4520276d656d6f72792f252720414e4420454e41424c4544203d2027594553272929205448454e2053454c454354202753454c454354202a2046524f4d207379732e6d656d6f72795f62795f686f73745f62795f63757272656e745f627974657327204153202754686520666f6c6c6f77696e67206f75747075742069733a273b2053454c454354202a2046524f4d207379732e6d656d6f72795f62795f686f73745f62795f63757272656e745f62797465733b202053454c454354202753454c454354202a2046524f4d207379732e6d656d6f72795f62795f7468726561645f62795f63757272656e745f627974657327204153202754686520666f6c6c6f77696e67206f75747075742069733a273b2053454c454354202a2046524f4d207379732e6d656d6f72795f62795f7468726561645f62795f63757272656e745f62797465733b202053454c454354202753454c454354202a2046524f4d207379732e6d656d6f72795f62795f757365725f62795f63757272656e745f627974657327204153202754686520666f6c6c6f77696e67206f75747075742069733a273b2053454c454354202a2046524f4d207379732e6d656d6f72795f62795f757365725f62795f63757272656e745f62797465733b202053454c454354202753454c454354202a2046524f4d207379732e6d656d6f72795f676c6f62616c5f62795f63757272656e745f627974657327204153202754686520666f6c6c6f77696e67206f75747075742069733a273b2053454c454354202a2046524f4d207379732e6d656d6f72795f676c6f62616c5f62795f63757272656e745f62797465733b20454e442049463b20454e442049463b202053455420765f72756e74696d65203d2028554e49585f54494d455354414d50284e4f5728322929202d20765f7374617274293b20554e54494c2028765f72756e74696d65202b20696e5f696e74657276616c203e3d20696e5f6d61785f72756e74696d652920454e44205245504541543b202049462028765f6861735f7073203d20275945532729205448454e2053454c454354202753484f5720454e47494e4520504552464f524d414e43455f534348454d412053544154555327204153202754686520666f6c6c6f77696e67206f75747075742069733a273b20455845435554452073746d745f70735f7374617475733b20454e442049463b202049462028765f6861735f696e6e6f646220494e20282744454641554c54272c2027594553272929205448454e204445414c4c4f4341544520505245504152452073746d745f696e6e6f64625f7374617475733b20454e442049463b2049462028765f6861735f7073203d20275945532729205448454e204445414c4c4f4341544520505245504152452073746d745f70735f7374617475733b20454e442049463b2049462028765f6861735f6e646220494e20282744454641554c54272c2027594553272929205448454e204445414c4c4f4341544520505245504152452073746d745f6e6462636c75737465725f7374617475733b20454e442049463b20202053454c454354202720203d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d2020536368656d6120496e666f726d6174696f6e20203d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d2020272041532027273b202053454c45435420434f554e54282a292041532027546f74616c204e756d626572206f66205461626c6573272046524f4d20696e666f726d6174696f6e5f736368656d612e5441424c45533b202049462028407379732e646961676e6f73746963732e616c6c6f775f695f735f7461626c6573203d20274f4e2729205448454e2053454c454354202753746f7261676520456e67696e6520557361676527204153202754686520666f6c6c6f77696e67206f75747075742069733a273b2053454c45435420454e47494e452c20434f554e54282a29204153204e554d5f5441424c45532c207379732e666f726d61745f62797465732853554d28444154415f4c454e475448292920415320444154415f4c454e4754482c207379732e666f726d61745f62797465732853554d28494e4445585f4c454e475448292920415320494e4445585f4c454e4754482c207379732e666f726d61745f62797465732853554d28444154415f4c454e4754482b494e4445585f4c454e475448292920415320544f54414c2046524f4d20696e666f726d6174696f6e5f736368656d612e5441424c45532047524f555020425920454e47494e453b202053454c4543542027536368656d61204f626a656374204f7665727669657727204153202754686520666f6c6c6f77696e67206f75747075742069733a273b2053454c454354202a2046524f4d207379732e736368656d615f6f626a6563745f6f766572766965773b202053454c45435420275461626c657320776974686f75742061205052494d415259204b455927204153202754686520666f6c6c6f77696e67206f75747075742069733a273b2053454c454354205441424c45532e5441424c455f534348454d412c20454e47494e452c20434f554e54282a29204153204e756d5461626c65732046524f4d20696e666f726d6174696f6e5f736368656d612e5441424c4553204c454654204f55544552204a4f494e20696e666f726d6174696f6e5f736368656d612e53544154495354494353204f4e20535441544953544943532e5441424c455f534348454d41203d205441424c45532e5441424c455f534348454d4120414e4420535441544953544943532e5441424c455f4e414d45203d205441424c45532e5441424c455f4e414d4520414e4420535441544953544943532e494e4445585f4e414d45203d20275052494d4152592720574845524520535441544953544943532e5441424c455f4e414d45204953204e554c4c20414e44205441424c45532e5441424c455f534348454d41204e4f5420494e2028276d7973716c272c2027696e666f726d6174696f6e5f736368656d61272c2027706572666f726d616e63655f736368656d61272c2027737973272920414e44205441424c45532e5441424c455f54595045203d202742415345205441424c45272047524f5550204259205441424c45532e5441424c455f534348454d412c20454e47494e453b20454e442049463b202049462028765f6861735f7073203d20275945532729205448454e2053454c4543542027556e7573656420496e646578657327204153202754686520666f6c6c6f77696e67206f75747075742069733a273b2053454c454354206f626a6563745f736368656d612c20434f554e54282a29204153204e756d556e75736564496e64657865732046524f4d20706572666f726d616e63655f736368656d612e7461626c655f696f5f77616974735f73756d6d6172795f62795f696e6465785f75736167652020574845524520696e6465785f6e616d65204953204e4f54204e554c4c20414e4420636f756e745f73746172203d203020414e44206f626a6563745f736368656d61204e4f5420494e2028276d7973716c272c2027737973272920414e4420696e6465785f6e616d6520213d20275052494d415259272047524f5550204259206f626a6563745f736368656d613b20454e442049463b202049462028765f6861735f7073203d20275945532729205448454e2053454c454354202720203d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d20204f766572616c6c2053746174757320203d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d2020272041532027273b202053454c454354202743414c4c207379732e70735f73746174656d656e745f6176675f6c6174656e63795f686973746f6772616d282927204153202754686520666f6c6c6f77696e67206f75747075742069733a273b2043414c4c207379732e70735f73746174656d656e745f6176675f6c6174656e63795f686973746f6772616d28293b202043414c4c207379732e73746174656d656e745f706572666f726d616e63655f616e616c797a65722827736e617073686f74272c204e554c4c2c204e554c4c293b2043414c4c207379732e73746174656d656e745f706572666f726d616e63655f616e616c797a657228276f766572616c6c272c204e554c4c2c2027776974685f72756e74696d65735f696e5f393574685f70657263656e74696c6527293b202053455420407379732e646961676e6f73746963732e73716c203d205245504c41434528407379732e646961676e6f73746963732e73716c5f67656e5f71756572795f74656d706c6174652c2027257b4f55545055547d272c2027656e6427293b2049462028407379732e6465627567203d20274f4e2729205448454e2053454c454354202754686520666f6c6c6f77696e672071756572792077696c6c206265207573656420746f2067656e65726174652074686520717565727920666f7220656163682073797320766965772720415320274465627567273b2053454c45435420407379732e646961676e6f73746963732e73716c20415320274465627567273b20454e442049463b20505245504152452073746d745f67656e5f71756572792046524f4d20407379732e646961676e6f73746963732e73716c3b202053455420765f646f6e65203d2046414c53453b204f50454e20635f73797376696577735f775f64656c74613b20635f73797376696577735f775f64656c74615f6c6f6f703a204c4f4f5020464554434820635f73797376696577735f775f64656c746120494e544f20765f7461626c655f6e616d653b20494620765f646f6e65205448454e204c4541564520635f73797376696577735f775f64656c74615f6c6f6f703b20454e442049463b202049462028407379732e6465627567203d20274f4e2729205448454e2053454c45435420434f4e434154282754686520666f6c6c6f77696e6720717565726965732061726520666f722073746f72696e67207468652066696e616c20636f6e74656e74206f6620272c20765f7461626c655f6e616d652920415320274465627567273b20454e442049463b202043414c4c207379732e657865637574655f70726570617265645f73746d7428434f4e434154282744524f502054454d504f52415259205441424c45204946204558495354532060746d705f272c20765f7461626c655f6e616d652c20275f656e64602729293b2043414c4c207379732e657865637574655f70726570617265645f73746d7428434f4e43415428274352454154452054454d504f52415259205441424c452060746d705f272c20765f7461626c655f6e616d652c20275f656e64602053454c454354202a2046524f4d2060737973602e607824272c20765f7461626c655f6e616d652c2027602729293b202049462028407379732e646961676e6f73746963732e696e636c7564655f726177203d20274f4e2729205448454e2053455420407379732e646961676e6f73746963732e7461626c655f6e616d65203d20434f4e43415428277824272c20765f7461626c655f6e616d65293b20455845435554452073746d745f67656e5f7175657279205553494e4720407379732e646961676e6f73746963732e7461626c655f6e616d653b2053454c45435420434f4e43415428407379732e646961676e6f73746963732e73716c5f73656c6563742c204946286f726465725f6279204953204e4f54204e554c4c2c20434f4e43415428270a204f5244455220425920272c205245504c414345286f726465725f62792c2027257b5441424c457d272c20434f4e4341542827746d705f272c20765f7461626c655f6e616d652c20275f656e64272929292c202727292c204946286c696d69745f726f7773204953204e4f54204e554c4c2c20434f4e43415428270a204c494d495420272c206c696d69745f726f7773292c20272729202920494e544f20407379732e646961676e6f73746963732e73716c5f73656c6563742046524f4d20746d705f7379735f76696577735f64656c7461205748455245205441424c455f4e414d45203d20765f7461626c655f6e616d653b2053454c45435420434f4e43415428274f766572616c6c20272c20765f7461626c655f6e616d6529204153202754686520666f6c6c6f77696e67206f75747075742069733a273b2043414c4c207379732e657865637574655f70726570617265645f73746d7428407379732e646961676e6f73746963732e73716c5f73656c656374293b20454e442049463b20454e44204c4f4f503b20434c4f534520635f73797376696577735f775f64656c74613b20204445414c4c4f4341544520505245504152452073746d745f67656e5f71756572793b20202053454c454354202720203d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d202044656c74612053746174757320203d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d2020272041532027273b202043414c4c207379732e73746174656d656e745f706572666f726d616e63655f616e616c797a6572282764656c7461272c2027746d705f646967657374735f7374617274272c2027776974685f72756e74696d65735f696e5f393574685f70657263656e74696c6527293b2043414c4c207379732e73746174656d656e745f706572666f726d616e63655f616e616c797a65722827636c65616e7570272c204e554c4c2c204e554c4c293b202044524f502054454d504f52415259205441424c4520746d705f646967657374735f73746172743b202049462028407379732e6465627567203d20274f4e2729205448454e2053454c454354202754686520666f6c6c6f77696e672071756572792077696c6c206265207573656420746f2067656e65726174652074686520717565727920666f7220656163682073797320766965772064656c74612720415320274465627567273b2053454c45435420407379732e646961676e6f73746963732e73716c5f67656e5f71756572795f64656c746120415320274465627567273b20454e442049463b20505245504152452073746d745f67656e5f71756572795f64656c74612046524f4d20407379732e646961676e6f73746963732e73716c5f67656e5f71756572795f64656c74613b202053455420765f6f6c645f67726f75705f636f6e6361745f6d61785f6c656e203d20404073657373696f6e2e67726f75705f636f6e6361745f6d61785f6c656e3b2053455420404073657373696f6e2e67726f75705f636f6e6361745f6d61785f6c656e203d20323034383b2053455420765f646f6e65203d2046414c53453b204f50454e20635f73797376696577735f775f64656c74613b20635f73797376696577735f775f64656c74615f6c6f6f703a204c4f4f5020464554434820635f73797376696577735f775f64656c746120494e544f20765f7461626c655f6e616d653b20494620765f646f6e65205448454e204c4541564520635f73797376696577735f775f64656c74615f6c6f6f703b20454e442049463b202053455420407379732e646961676e6f73746963732e7461626c655f6e616d65203d20765f7461626c655f6e616d653b20455845435554452073746d745f67656e5f71756572795f64656c7461205553494e4720407379732e646961676e6f73746963732e7461626c655f6e616d653b2053454c45435420434f4e43415428407379732e646961676e6f73746963732e73716c5f73656c6563742c2049462877686572655f64656c7461204953204e4f54204e554c4c2c20434f4e43415428270a20574845524520272c2077686572655f64656c7461292c202727292c204946286f726465725f62795f64656c7461204953204e4f54204e554c4c2c20434f4e43415428270a204f5244455220425920272c206f726465725f62795f64656c7461292c202727292c204946286c696d69745f726f7773204953204e4f54204e554c4c2c20434f4e43415428270a204c494d495420272c206c696d69745f726f7773292c20272729202920494e544f20407379732e646961676e6f73746963732e73716c5f73656c6563742046524f4d20746d705f7379735f76696577735f64656c7461205748455245205441424c455f4e414d45203d20765f7461626c655f6e616d653b202053454c45435420434f4e434154282744656c746120272c20765f7461626c655f6e616d6529204153202754686520666f6c6c6f77696e67206f75747075742069733a273b2043414c4c207379732e657865637574655f70726570617265645f73746d7428407379732e646961676e6f73746963732e73716c5f73656c656374293b202043414c4c207379732e657865637574655f70726570617265645f73746d7428434f4e434154282744524f502054454d504f52415259205441424c452060746d705f272c20765f7461626c655f6e616d652c20275f656e64602729293b2043414c4c207379732e657865637574655f70726570617265645f73746d7428434f4e434154282744524f502054454d504f52415259205441424c452060746d705f272c20765f7461626c655f6e616d652c20275f7374617274602729293b20454e44204c4f4f503b20434c4f534520635f73797376696577735f775f64656c74613b2053455420404073657373696f6e2e67726f75705f636f6e6361745f6d61785f6c656e203d20765f6f6c645f67726f75705f636f6e6361745f6d61785f6c656e3b20204445414c4c4f4341544520505245504152452073746d745f67656e5f71756572795f64656c74613b2044524f502054454d504f52415259205441424c4520746d705f7379735f76696577735f64656c74613b20454e442049463b202049462028765f6861735f6d65747269637329205448454e2053454c454354202753454c454354202a2046524f4d207379732e6d65747269637327204153202754686520666f6c6c6f77696e67206f75747075742069733a273b20454c53452053454c45435420277379732e6d657472696373206571756976616c656e7427204153202754686520666f6c6c6f77696e67206f75747075742069733a273b20454e442049463b2043414c4c207379732e657865637574655f70726570617265645f73746d742820434f4e43415428765f73716c5f7374617475735f73756d6d6172795f73656c6563742c20765f73716c5f7374617475735f73756d6d6172795f64656c74612c20272c20547970652c2073312e456e61626c6564272c20765f73716c5f7374617475735f73756d6d6172795f66726f6d2c2027204f5244455220425920547970652c205661726961626c655f6e616d6527202920293b202053455420765f636f756e74203d20303b205748494c452028765f636f756e74203c20765f6f75747075745f636f756e742920444f2053455420765f636f756e74203d20765f636f756e74202b20313b2053455420765f7461626c655f6e616d65203d20434f4e4341542827746d705f6d6574726963735f272c20765f636f756e74293b2043414c4c207379732e657865637574655f70726570617265645f73746d7428434f4e434154282744524f502054454d504f52415259205441424c452049462045584953545320272c20765f7461626c655f6e616d6529293b20454e44205748494c453b202049462028696e5f6175746f5f636f6e666967203c3e202763757272656e742729205448454e2043414c4c207379732e70735f73657475705f72656c6f61645f736176656428293b205345542073716c5f6c6f675f62696e203d20406c6f675f62696e3b20454e442049463b202053455420407379732e646961676e6f73746963732e6f75747075745f74696d652020202020202020202020203d204e554c4c2c20407379732e646961676e6f73746963732e73716c20202020202020202020202020202020202020203d204e554c4c2c20407379732e646961676e6f73746963732e73716c5f67656e5f71756572795f64656c7461202020203d204e554c4c2c20407379732e646961676e6f73746963732e73716c5f67656e5f71756572795f74656d706c617465203d204e554c4c2c20407379732e646961676e6f73746963732e73716c5f73656c656374202020202020202020202020203d204e554c4c2c20407379732e646961676e6f73746963732e7461626c655f6e616d65202020202020202020202020203d204e554c4c3b202049462028765f746869735f7468726561645f656e61626c6564203d20275945532729205448454e2043414c4c207379732e70735f73657475705f656e61626c655f74687265616428434f4e4e454354494f4e5f49442829293b20454e442049463b202049462028406c6f675f62696e203d203129205448454e205345542073716c5f6c6f675f62696e203d20406c6f675f62696e3b20454e442049463b20454e44);
INSERT INTO `proc` (`db`, `name`, `type`, `specific_name`, `language`, `sql_data_access`, `is_deterministic`, `security_type`, `param_list`, `returns`, `body`, `definer`, `created`, `modified`, `sql_mode`, `comment`, `character_set_client`, `collation_connection`, `db_collation`, `body_utf8`) VALUES
('sys', 'ps_statement_avg_latency_histogram', 'PROCEDURE', 'ps_statement_avg_latency_histogram', 'SQL', 'READS_SQL_DATA', 'NO', 'INVOKER', '', '', 0x424547494e2053454c45435420434f4e43415428275c6e272c20275c6e20202e203d203120756e6974272c20275c6e20202a203d203220756e697473272c20275c6e202023203d203320756e6974735c6e272c20406c6162656c203a3d20434f4e43415428406c6162656c5f696e6e6572203a3d20434f4e43415428275c6e2830202d20272c20524f554e442828406275636b65745f73697a65203a3d202853454c45435420524f554e4428284d4158286176675f757329202d204d494e286176675f75732929202f2028406275636b657473203a3d20313629292041532073697a652046524f4d207379732e782470735f6469676573745f6176675f6c6174656e63795f646973747269627574696f6e2929202f202840756e69745f646976203a3d203130303029292c202840756e6974203a3d20276d7327292c20272927292c20524550454154282720272c2028406d61785f6c6162656c5f73697a65203a3d20282831202b204c454e47544828524f554e442828406275636b65745f73697a65202a20313529202f2040756e69745f6469762929202b2033202b204c454e47544828524f554e4428406275636b65745f73697a65202a20313629202f2040756e69745f6469762929202b20312929202d204c454e47544828406c6162656c5f696e6e657229292c2040636f756e745f696e5f6275636b6574203a3d2049464e554c4c282853454c4543542053554d28636e74292046524f4d207379732e782470735f6469676573745f6176675f6c6174656e63795f646973747269627574696f6e204153206231202057484552452062312e6176675f7573203c3d20406275636b65745f73697a65292c203029292c20524550454154282720272c2028406d61785f6c6162656c5f6c656e203a3d2028406d61785f6c6162656c5f73697a65202b204c454e475448282840746f74616c5f71756572696573203a3d202853454c4543542053554d28636e74292046524f4d207379732e782470735f6469676573745f6176675f6c6174656e63795f646973747269627574696f6e29292929202b203129202d204c454e47544828406c6162656c29292c20277c20272c2049464e554c4c285245504541542849462840636f756e745f696e5f6275636b6574203c2028406f6e655f756e6974203a3d203430292c20272e272c2049462840636f756e745f696e5f6275636b6574203c20284074776f5f756e6974203a3d203830292c20272a272c2027232729292c2020092020202020202020202020202049462840636f756e745f696e5f6275636b6574203c20406f6e655f756e69742c2040636f756e745f696e5f6275636b65742c2009202020202020202020202020200949462840636f756e745f696e5f6275636b6574203c204074776f5f756e69742c2040636f756e745f696e5f6275636b6574202f20322c2040636f756e745f696e5f6275636b6574202f20332929292c202727292c2020406c6162656c203a3d20434f4e43415428406c6162656c5f696e6e6572203a3d20434f4e43415428275c6e28272c20524f554e4428406275636b65745f73697a65202f2040756e69745f646976292c2027202d20272c20524f554e442828406275636b65745f73697a65202a203229202f2040756e69745f646976292c2040756e69742c20272927292c20524550454154282720272c20406d61785f6c6162656c5f73697a65202d204c454e47544828406c6162656c5f696e6e657229292c2040636f756e745f696e5f6275636b6574203a3d2049464e554c4c282853454c4543542053554d28636e74292046524f4d207379732e782470735f6469676573745f6176675f6c6174656e63795f646973747269627574696f6e204153206231202057484552452062312e6176675f7573203e20406275636b65745f73697a6520414e442062312e6176675f7573203c3d20406275636b65745f73697a65202a2032292c203029292c20524550454154282720272c20406d61785f6c6162656c5f6c656e202d204c454e47544828406c6162656c29292c20277c20272c2049464e554c4c285245504541542849462840636f756e745f696e5f6275636b6574203c20406f6e655f756e69742c20272e272c2049462840636f756e745f696e5f6275636b6574203c204074776f5f756e69742c20272a272c2027232729292c2020092020202020202020202020202049462840636f756e745f696e5f6275636b6574203c20406f6e655f756e69742c2040636f756e745f696e5f6275636b65742c2009202020202020202020202020200949462840636f756e745f696e5f6275636b6574203c204074776f5f756e69742c2040636f756e745f696e5f6275636b6574202f20322c2040636f756e745f696e5f6275636b6574202f20332929292c202727292c20406c6162656c203a3d20434f4e43415428406c6162656c5f696e6e6572203a3d20434f4e43415428275c6e28272c20524f554e442828406275636b65745f73697a65202a203229202f2040756e69745f646976292c2027202d20272c20524f554e442828406275636b65745f73697a65202a203329202f2040756e69745f646976292c2040756e69742c20272927292c20524550454154282720272c20406d61785f6c6162656c5f73697a65202d204c454e47544828406c6162656c5f696e6e657229292c2040636f756e745f696e5f6275636b6574203a3d2049464e554c4c282853454c4543542053554d28636e74292046524f4d207379732e782470735f6469676573745f6176675f6c6174656e63795f646973747269627574696f6e204153206231202057484552452062312e6176675f7573203e20406275636b65745f73697a65202a203220414e442062312e6176675f7573203c3d20406275636b65745f73697a65202a2033292c203029292c20524550454154282720272c20406d61785f6c6162656c5f6c656e202d204c454e47544828406c6162656c29292c20277c20272c2049464e554c4c285245504541542849462840636f756e745f696e5f6275636b6574203c20406f6e655f756e69742c20272e272c2049462840636f756e745f696e5f6275636b6574203c204074776f5f756e69742c20272a272c2027232729292c2020092020202020202020202020202049462840636f756e745f696e5f6275636b6574203c20406f6e655f756e69742c2040636f756e745f696e5f6275636b65742c2009202020202020202020202020200949462840636f756e745f696e5f6275636b6574203c204074776f5f756e69742c2040636f756e745f696e5f6275636b6574202f20322c2040636f756e745f696e5f6275636b6574202f20332929292c202727292c20406c6162656c203a3d20434f4e43415428406c6162656c5f696e6e6572203a3d20434f4e43415428275c6e28272c20524f554e442828406275636b65745f73697a65202a203329202f2040756e69745f646976292c2027202d20272c20524f554e442828406275636b65745f73697a65202a203429202f2040756e69745f646976292c2040756e69742c20272927292c20524550454154282720272c20406d61785f6c6162656c5f73697a65202d204c454e47544828406c6162656c5f696e6e657229292c2040636f756e745f696e5f6275636b6574203a3d2049464e554c4c282853454c4543542053554d28636e74292046524f4d207379732e782470735f6469676573745f6176675f6c6174656e63795f646973747269627574696f6e204153206231202057484552452062312e6176675f7573203e20406275636b65745f73697a65202a203320414e442062312e6176675f7573203c3d20406275636b65745f73697a65202a2034292c203029292c20524550454154282720272c20406d61785f6c6162656c5f6c656e202d204c454e47544828406c6162656c29292c20277c20272c2049464e554c4c285245504541542849462840636f756e745f696e5f6275636b6574203c20406f6e655f756e69742c20272e272c2049462840636f756e745f696e5f6275636b6574203c204074776f5f756e69742c20272a272c2027232729292c2020092020202020202020202020202049462840636f756e745f696e5f6275636b6574203c20406f6e655f756e69742c2040636f756e745f696e5f6275636b65742c2009202020202020202020202020200949462840636f756e745f696e5f6275636b6574203c204074776f5f756e69742c2040636f756e745f696e5f6275636b6574202f20322c2040636f756e745f696e5f6275636b6574202f20332929292c202727292c20406c6162656c203a3d20434f4e43415428406c6162656c5f696e6e6572203a3d20434f4e43415428275c6e28272c20524f554e442828406275636b65745f73697a65202a203429202f2040756e69745f646976292c2027202d20272c20524f554e442828406275636b65745f73697a65202a203529202f2040756e69745f646976292c2040756e69742c20272927292c20524550454154282720272c20406d61785f6c6162656c5f73697a65202d204c454e47544828406c6162656c5f696e6e657229292c2040636f756e745f696e5f6275636b6574203a3d2049464e554c4c282853454c4543542053554d28636e74292046524f4d207379732e782470735f6469676573745f6176675f6c6174656e63795f646973747269627574696f6e204153206231202057484552452062312e6176675f7573203e20406275636b65745f73697a65202a203420414e442062312e6176675f7573203c3d20406275636b65745f73697a65202a2035292c203029292c20524550454154282720272c20406d61785f6c6162656c5f6c656e202d204c454e47544828406c6162656c29292c20277c20272c2049464e554c4c285245504541542849462840636f756e745f696e5f6275636b6574203c20406f6e655f756e69742c20272e272c2049462840636f756e745f696e5f6275636b6574203c204074776f5f756e69742c20272a272c2027232729292c2020092020202020202020202020202049462840636f756e745f696e5f6275636b6574203c20406f6e655f756e69742c2040636f756e745f696e5f6275636b65742c2009202020202020202020202020200949462840636f756e745f696e5f6275636b6574203c204074776f5f756e69742c2040636f756e745f696e5f6275636b6574202f20322c2040636f756e745f696e5f6275636b6574202f20332929292c202727292c20406c6162656c203a3d20434f4e43415428406c6162656c5f696e6e6572203a3d20434f4e43415428275c6e28272c20524f554e442828406275636b65745f73697a65202a203529202f2040756e69745f646976292c2027202d20272c20524f554e442828406275636b65745f73697a65202a203629202f2040756e69745f646976292c2040756e69742c20272927292c20524550454154282720272c20406d61785f6c6162656c5f73697a65202d204c454e47544828406c6162656c5f696e6e657229292c2040636f756e745f696e5f6275636b6574203a3d2049464e554c4c282853454c4543542053554d28636e74292046524f4d207379732e782470735f6469676573745f6176675f6c6174656e63795f646973747269627574696f6e204153206231202057484552452062312e6176675f7573203e20406275636b65745f73697a65202a203520414e442062312e6176675f7573203c3d20406275636b65745f73697a65202a2036292c203029292c20524550454154282720272c20406d61785f6c6162656c5f6c656e202d204c454e47544828406c6162656c29292c20277c20272c2049464e554c4c285245504541542849462840636f756e745f696e5f6275636b6574203c20406f6e655f756e69742c20272e272c2049462840636f756e745f696e5f6275636b6574203c204074776f5f756e69742c20272a272c2027232729292c2020092020202020202020202020202049462840636f756e745f696e5f6275636b6574203c20406f6e655f756e69742c2040636f756e745f696e5f6275636b65742c2009202020202020202020202020200949462840636f756e745f696e5f6275636b6574203c204074776f5f756e69742c2040636f756e745f696e5f6275636b6574202f20322c2040636f756e745f696e5f6275636b6574202f20332929292c202727292c20406c6162656c203a3d20434f4e43415428406c6162656c5f696e6e6572203a3d20434f4e43415428275c6e28272c20524f554e442828406275636b65745f73697a65202a203629202f2040756e69745f646976292c2027202d20272c20524f554e442828406275636b65745f73697a65202a203729202f2040756e69745f646976292c2040756e69742c20272927292c20524550454154282720272c20406d61785f6c6162656c5f73697a65202d204c454e47544828406c6162656c5f696e6e657229292c2040636f756e745f696e5f6275636b6574203a3d2049464e554c4c282853454c4543542053554d28636e74292046524f4d207379732e782470735f6469676573745f6176675f6c6174656e63795f646973747269627574696f6e204153206231202057484552452062312e6176675f7573203e20406275636b65745f73697a65202a203620414e442062312e6176675f7573203c3d20406275636b65745f73697a65202a2037292c203029292c20524550454154282720272c20406d61785f6c6162656c5f6c656e202d204c454e47544828406c6162656c29292c20277c20272c2049464e554c4c285245504541542849462840636f756e745f696e5f6275636b6574203c20406f6e655f756e69742c20272e272c2049462840636f756e745f696e5f6275636b6574203c204074776f5f756e69742c20272a272c2027232729292c2020092020202020202020202020202049462840636f756e745f696e5f6275636b6574203c20406f6e655f756e69742c2040636f756e745f696e5f6275636b65742c2009202020202020202020202020200949462840636f756e745f696e5f6275636b6574203c204074776f5f756e69742c2040636f756e745f696e5f6275636b6574202f20322c2040636f756e745f696e5f6275636b6574202f20332929292c202727292c20406c6162656c203a3d20434f4e43415428406c6162656c5f696e6e6572203a3d20434f4e43415428275c6e28272c20524f554e442828406275636b65745f73697a65202a203729202f2040756e69745f646976292c2027202d20272c20524f554e442828406275636b65745f73697a65202a203829202f2040756e69745f646976292c2040756e69742c20272927292c20524550454154282720272c20406d61785f6c6162656c5f73697a65202d204c454e47544828406c6162656c5f696e6e657229292c2040636f756e745f696e5f6275636b6574203a3d2049464e554c4c282853454c4543542053554d28636e74292046524f4d207379732e782470735f6469676573745f6176675f6c6174656e63795f646973747269627574696f6e204153206231202057484552452062312e6176675f7573203e20406275636b65745f73697a65202a203720414e442062312e6176675f7573203c3d20406275636b65745f73697a65202a2038292c203029292c20524550454154282720272c20406d61785f6c6162656c5f6c656e202d204c454e47544828406c6162656c29292c20277c20272c2049464e554c4c285245504541542849462840636f756e745f696e5f6275636b6574203c20406f6e655f756e69742c20272e272c2049462840636f756e745f696e5f6275636b6574203c204074776f5f756e69742c20272a272c2027232729292c2020092020202020202020202020202049462840636f756e745f696e5f6275636b6574203c20406f6e655f756e69742c2040636f756e745f696e5f6275636b65742c2009202020202020202020202020200949462840636f756e745f696e5f6275636b6574203c204074776f5f756e69742c2040636f756e745f696e5f6275636b6574202f20322c2040636f756e745f696e5f6275636b6574202f20332929292c202727292c20406c6162656c203a3d20434f4e43415428406c6162656c5f696e6e6572203a3d20434f4e43415428275c6e28272c20524f554e442828406275636b65745f73697a65202a203829202f2040756e69745f646976292c2027202d20272c20524f554e442828406275636b65745f73697a65202a203929202f2040756e69745f646976292c2040756e69742c20272927292c20524550454154282720272c20406d61785f6c6162656c5f73697a65202d204c454e47544828406c6162656c5f696e6e657229292c2040636f756e745f696e5f6275636b6574203a3d2049464e554c4c282853454c4543542053554d28636e74292046524f4d207379732e782470735f6469676573745f6176675f6c6174656e63795f646973747269627574696f6e204153206231202057484552452062312e6176675f7573203e20406275636b65745f73697a65202a203820414e442062312e6176675f7573203c3d20406275636b65745f73697a65202a2039292c203029292c20524550454154282720272c20406d61785f6c6162656c5f6c656e202d204c454e47544828406c6162656c29292c20277c20272c2049464e554c4c285245504541542849462840636f756e745f696e5f6275636b6574203c20406f6e655f756e69742c20272e272c2049462840636f756e745f696e5f6275636b6574203c204074776f5f756e69742c20272a272c2027232729292c2020092020202020202020202020202049462840636f756e745f696e5f6275636b6574203c20406f6e655f756e69742c2040636f756e745f696e5f6275636b65742c2009202020202020202020202020200949462840636f756e745f696e5f6275636b6574203c204074776f5f756e69742c2040636f756e745f696e5f6275636b6574202f20322c2040636f756e745f696e5f6275636b6574202f20332929292c202727292c20406c6162656c203a3d20434f4e43415428406c6162656c5f696e6e6572203a3d20434f4e43415428275c6e28272c20524f554e442828406275636b65745f73697a65202a203929202f2040756e69745f646976292c2027202d20272c20524f554e442828406275636b65745f73697a65202a20313029202f2040756e69745f646976292c2040756e69742c20272927292c20524550454154282720272c20406d61785f6c6162656c5f73697a65202d204c454e47544828406c6162656c5f696e6e657229292c2040636f756e745f696e5f6275636b6574203a3d2049464e554c4c282853454c4543542053554d28636e74292046524f4d207379732e782470735f6469676573745f6176675f6c6174656e63795f646973747269627574696f6e204153206231202057484552452062312e6176675f7573203e20406275636b65745f73697a65202a203920414e442062312e6176675f7573203c3d20406275636b65745f73697a65202a203130292c203029292c20524550454154282720272c20406d61785f6c6162656c5f6c656e202d204c454e47544828406c6162656c29292c20277c20272c2049464e554c4c285245504541542849462840636f756e745f696e5f6275636b6574203c20406f6e655f756e69742c20272e272c2049462840636f756e745f696e5f6275636b6574203c204074776f5f756e69742c20272a272c2027232729292c2020092020202020202020202020202049462840636f756e745f696e5f6275636b6574203c20406f6e655f756e69742c2040636f756e745f696e5f6275636b65742c2009202020202020202020202020200949462840636f756e745f696e5f6275636b6574203c204074776f5f756e69742c2040636f756e745f696e5f6275636b6574202f20322c2040636f756e745f696e5f6275636b6574202f20332929292c202727292c20406c6162656c203a3d20434f4e43415428406c6162656c5f696e6e6572203a3d20434f4e43415428275c6e28272c20524f554e442828406275636b65745f73697a65202a20313029202f2040756e69745f646976292c2027202d20272c20524f554e442828406275636b65745f73697a65202a20313129202f2040756e69745f646976292c2040756e69742c20272927292c20524550454154282720272c20406d61785f6c6162656c5f73697a65202d204c454e47544828406c6162656c5f696e6e657229292c2040636f756e745f696e5f6275636b6574203a3d2049464e554c4c282853454c4543542053554d28636e74292046524f4d207379732e782470735f6469676573745f6176675f6c6174656e63795f646973747269627574696f6e204153206231202057484552452062312e6176675f7573203e20406275636b65745f73697a65202a20313020414e442062312e6176675f7573203c3d20406275636b65745f73697a65202a203131292c203029292c20524550454154282720272c20406d61785f6c6162656c5f6c656e202d204c454e47544828406c6162656c29292c20277c20272c2049464e554c4c285245504541542849462840636f756e745f696e5f6275636b6574203c20406f6e655f756e69742c20272e272c2049462840636f756e745f696e5f6275636b6574203c204074776f5f756e69742c20272a272c2027232729292c2020092020202020202020202020202049462840636f756e745f696e5f6275636b6574203c20406f6e655f756e69742c2040636f756e745f696e5f6275636b65742c2009202020202020202020202020200949462840636f756e745f696e5f6275636b6574203c204074776f5f756e69742c2040636f756e745f696e5f6275636b6574202f20322c2040636f756e745f696e5f6275636b6574202f20332929292c202727292c20406c6162656c203a3d20434f4e43415428406c6162656c5f696e6e6572203a3d20434f4e43415428275c6e28272c20524f554e442828406275636b65745f73697a65202a20313129202f2040756e69745f646976292c2027202d20272c20524f554e442828406275636b65745f73697a65202a20313229202f2040756e69745f646976292c2040756e69742c20272927292c20524550454154282720272c20406d61785f6c6162656c5f73697a65202d204c454e47544828406c6162656c5f696e6e657229292c2040636f756e745f696e5f6275636b6574203a3d2049464e554c4c282853454c4543542053554d28636e74292046524f4d207379732e782470735f6469676573745f6176675f6c6174656e63795f646973747269627574696f6e204153206231202057484552452062312e6176675f7573203e20406275636b65745f73697a65202a20313120414e442062312e6176675f7573203c3d20406275636b65745f73697a65202a203132292c203029292c20524550454154282720272c20406d61785f6c6162656c5f6c656e202d204c454e47544828406c6162656c29292c20277c20272c2049464e554c4c285245504541542849462840636f756e745f696e5f6275636b6574203c20406f6e655f756e69742c20272e272c2049462840636f756e745f696e5f6275636b6574203c204074776f5f756e69742c20272a272c2027232729292c2020092020202020202020202020202049462840636f756e745f696e5f6275636b6574203c20406f6e655f756e69742c2040636f756e745f696e5f6275636b65742c2009202020202020202020202020200949462840636f756e745f696e5f6275636b6574203c204074776f5f756e69742c2040636f756e745f696e5f6275636b6574202f20322c2040636f756e745f696e5f6275636b6574202f20332929292c202727292c20406c6162656c203a3d20434f4e43415428406c6162656c5f696e6e6572203a3d20434f4e43415428275c6e28272c20524f554e442828406275636b65745f73697a65202a20313229202f2040756e69745f646976292c2027202d20272c20524f554e442828406275636b65745f73697a65202a20313329202f2040756e69745f646976292c2040756e69742c20272927292c20524550454154282720272c20406d61785f6c6162656c5f73697a65202d204c454e47544828406c6162656c5f696e6e657229292c2040636f756e745f696e5f6275636b6574203a3d2049464e554c4c282853454c4543542053554d28636e74292046524f4d207379732e782470735f6469676573745f6176675f6c6174656e63795f646973747269627574696f6e204153206231202057484552452062312e6176675f7573203e20406275636b65745f73697a65202a20313220414e442062312e6176675f7573203c3d20406275636b65745f73697a65202a203133292c203029292c20524550454154282720272c20406d61785f6c6162656c5f6c656e202d204c454e47544828406c6162656c29292c20277c20272c2049464e554c4c285245504541542849462840636f756e745f696e5f6275636b6574203c20406f6e655f756e69742c20272e272c2049462840636f756e745f696e5f6275636b6574203c204074776f5f756e69742c20272a272c2027232729292c2020092020202020202020202020202049462840636f756e745f696e5f6275636b6574203c20406f6e655f756e69742c2040636f756e745f696e5f6275636b65742c2009202020202020202020202020200949462840636f756e745f696e5f6275636b6574203c204074776f5f756e69742c2040636f756e745f696e5f6275636b6574202f20322c2040636f756e745f696e5f6275636b6574202f20332929292c202727292c20406c6162656c203a3d20434f4e43415428406c6162656c5f696e6e6572203a3d20434f4e43415428275c6e28272c20524f554e442828406275636b65745f73697a65202a20313329202f2040756e69745f646976292c2027202d20272c20524f554e442828406275636b65745f73697a65202a20313429202f2040756e69745f646976292c2040756e69742c20272927292c20524550454154282720272c20406d61785f6c6162656c5f73697a65202d204c454e47544828406c6162656c5f696e6e657229292c2040636f756e745f696e5f6275636b6574203a3d2049464e554c4c282853454c4543542053554d28636e74292046524f4d207379732e782470735f6469676573745f6176675f6c6174656e63795f646973747269627574696f6e204153206231202057484552452062312e6176675f7573203e20406275636b65745f73697a65202a20313320414e442062312e6176675f7573203c3d20406275636b65745f73697a65202a203134292c203029292c20524550454154282720272c20406d61785f6c6162656c5f6c656e202d204c454e47544828406c6162656c29292c20277c20272c2049464e554c4c285245504541542849462840636f756e745f696e5f6275636b6574203c20406f6e655f756e69742c20272e272c2049462840636f756e745f696e5f6275636b6574203c204074776f5f756e69742c20272a272c2027232729292c2020092020202020202020202020202049462840636f756e745f696e5f6275636b6574203c20406f6e655f756e69742c2040636f756e745f696e5f6275636b65742c2009202020202020202020202020200949462840636f756e745f696e5f6275636b6574203c204074776f5f756e69742c2040636f756e745f696e5f6275636b6574202f20322c2040636f756e745f696e5f6275636b6574202f20332929292c202727292c20406c6162656c203a3d20434f4e43415428406c6162656c5f696e6e6572203a3d20434f4e43415428275c6e28272c20524f554e442828406275636b65745f73697a65202a20313429202f2040756e69745f646976292c2027202d20272c20524f554e442828406275636b65745f73697a65202a20313529202f2040756e69745f646976292c2040756e69742c20272927292c20524550454154282720272c20406d61785f6c6162656c5f73697a65202d204c454e47544828406c6162656c5f696e6e657229292c2040636f756e745f696e5f6275636b6574203a3d2049464e554c4c282853454c4543542053554d28636e74292046524f4d207379732e782470735f6469676573745f6176675f6c6174656e63795f646973747269627574696f6e204153206231202057484552452062312e6176675f7573203e20406275636b65745f73697a65202a20313420414e442062312e6176675f7573203c3d20406275636b65745f73697a65202a203135292c203029292c20524550454154282720272c20406d61785f6c6162656c5f6c656e202d204c454e47544828406c6162656c29292c20277c20272c2049464e554c4c285245504541542849462840636f756e745f696e5f6275636b6574203c20406f6e655f756e69742c20272e272c2049462840636f756e745f696e5f6275636b6574203c204074776f5f756e69742c20272a272c2027232729292c2020092020202020202020202020202049462840636f756e745f696e5f6275636b6574203c20406f6e655f756e69742c2040636f756e745f696e5f6275636b65742c2009202020202020202020202020200949462840636f756e745f696e5f6275636b6574203c204074776f5f756e69742c2040636f756e745f696e5f6275636b6574202f20322c2040636f756e745f696e5f6275636b6574202f20332929292c202727292c20406c6162656c203a3d20434f4e43415428406c6162656c5f696e6e6572203a3d20434f4e43415428275c6e28272c20524f554e442828406275636b65745f73697a65202a20313529202f2040756e69745f646976292c2027202d20272c20524f554e442828406275636b65745f73697a65202a20313629202f2040756e69745f646976292c2040756e69742c20272927292c20524550454154282720272c20406d61785f6c6162656c5f73697a65202d204c454e47544828406c6162656c5f696e6e657229292c2040636f756e745f696e5f6275636b6574203a3d2049464e554c4c282853454c4543542053554d28636e74292046524f4d207379732e782470735f6469676573745f6176675f6c6174656e63795f646973747269627574696f6e204153206231202057484552452062312e6176675f7573203e20406275636b65745f73697a65202a20313520414e442062312e6176675f7573203c3d20406275636b65745f73697a65202a203136292c203029292c20524550454154282720272c20406d61785f6c6162656c5f6c656e202d204c454e47544828406c6162656c29292c20277c20272c2049464e554c4c285245504541542849462840636f756e745f696e5f6275636b6574203c20406f6e655f756e69742c20272e272c2049462840636f756e745f696e5f6275636b6574203c204074776f5f756e69742c20272a272c2027232729292c2020092020202020202020202020202049462840636f756e745f696e5f6275636b6574203c20406f6e655f756e69742c2040636f756e745f696e5f6275636b65742c2009202020202020202020202020200949462840636f756e745f696e5f6275636b6574203c204074776f5f756e69742c2040636f756e745f696e5f6275636b6574202f20322c2040636f756e745f696e5f6275636b6574202f20332929292c202727292c2020275c6e5c6e2020546f74616c2053746174656d656e74733a20272c2040746f74616c5f717565726965732c20273b204275636b6574733a20272c20406275636b657473202c20273b204275636b65742053697a653a20272c20524f554e4428406275636b65745f73697a65202f2040756e69745f64697629202c202720272c2040756e69742c20273b5c6e272020292041532060506572666f726d616e636520536368656d612053746174656d656e74204469676573742041766572616765204c6174656e637920486973746f6772616d603b2020454e44, 'mysql.sys@localhost', '2018-07-09 10:50:31', '2018-07-09 10:50:31', '', '\n Description\n \n Outputs a textual histogram graph of the average latency values\n across all normalized queries tracked within the Performance Schema\n events_statements_summary_by_digest table.\n \n Can be used to show a very high level picture of what kind of \n latency distribution statements running within this instance have.\n \n Parameters\n \n None.\n \n Example\n \n mysql> CALL sys.ps_statement_avg_latency_histogram()\\G\n *************************** 1. row ***************************\n Performance Schema Statement Digest Average Latency Histogram:\n \n . = 1 unit\n * = 2 units\n # = 3 units\n \n (0 - 38ms)     240 | ################################################################################\n (38 - 77ms)    38  | ......................................\n (77 - 115ms)   3   | ...\n (115 - 154ms)  62  | *******************************\n (154 - 192ms)  3   | ...\n (192 - 231ms)  0   |\n (231 - 269ms)  0   |\n (269 - 307ms)  0   |\n (307 - 346ms)  0   |\n (346 - 384ms)  1   | .\n (384 - 423ms)  1   | .\n (423 - 461ms)  0   |\n (461 - 499ms)  0   |\n (499 - 538ms)  0   |\n (538 - 576ms)  0   |\n (576 - 615ms)  1   | .\n \n Total Statements: 350; Buckets: 16; Bucket Size: 38 ms;\n ', 'utf8', 'utf8_general_ci', 'utf8_general_ci', 0x424547494e2053454c45435420434f4e43415428270a272c20270a20202e203d203120756e6974272c20270a20202a203d203220756e697473272c20270a202023203d203320756e6974730a272c20406c6162656c203a3d20434f4e43415428406c6162656c5f696e6e6572203a3d20434f4e43415428270a2830202d20272c20524f554e442828406275636b65745f73697a65203a3d202853454c45435420524f554e4428284d4158286176675f757329202d204d494e286176675f75732929202f2028406275636b657473203a3d20313629292041532073697a652046524f4d207379732e782470735f6469676573745f6176675f6c6174656e63795f646973747269627574696f6e2929202f202840756e69745f646976203a3d203130303029292c202840756e6974203a3d20276d7327292c20272927292c20524550454154282720272c2028406d61785f6c6162656c5f73697a65203a3d20282831202b204c454e47544828524f554e442828406275636b65745f73697a65202a20313529202f2040756e69745f6469762929202b2033202b204c454e47544828524f554e4428406275636b65745f73697a65202a20313629202f2040756e69745f6469762929202b20312929202d204c454e47544828406c6162656c5f696e6e657229292c2040636f756e745f696e5f6275636b6574203a3d2049464e554c4c282853454c4543542053554d28636e74292046524f4d207379732e782470735f6469676573745f6176675f6c6174656e63795f646973747269627574696f6e204153206231202057484552452062312e6176675f7573203c3d20406275636b65745f73697a65292c203029292c20524550454154282720272c2028406d61785f6c6162656c5f6c656e203a3d2028406d61785f6c6162656c5f73697a65202b204c454e475448282840746f74616c5f71756572696573203a3d202853454c4543542053554d28636e74292046524f4d207379732e782470735f6469676573745f6176675f6c6174656e63795f646973747269627574696f6e29292929202b203129202d204c454e47544828406c6162656c29292c20277c20272c2049464e554c4c285245504541542849462840636f756e745f696e5f6275636b6574203c2028406f6e655f756e6974203a3d203430292c20272e272c2049462840636f756e745f696e5f6275636b6574203c20284074776f5f756e6974203a3d203830292c20272a272c2027232729292c2020092020202020202020202020202049462840636f756e745f696e5f6275636b6574203c20406f6e655f756e69742c2040636f756e745f696e5f6275636b65742c2009202020202020202020202020200949462840636f756e745f696e5f6275636b6574203c204074776f5f756e69742c2040636f756e745f696e5f6275636b6574202f20322c2040636f756e745f696e5f6275636b6574202f20332929292c202727292c2020406c6162656c203a3d20434f4e43415428406c6162656c5f696e6e6572203a3d20434f4e43415428270a28272c20524f554e4428406275636b65745f73697a65202f2040756e69745f646976292c2027202d20272c20524f554e442828406275636b65745f73697a65202a203229202f2040756e69745f646976292c2040756e69742c20272927292c20524550454154282720272c20406d61785f6c6162656c5f73697a65202d204c454e47544828406c6162656c5f696e6e657229292c2040636f756e745f696e5f6275636b6574203a3d2049464e554c4c282853454c4543542053554d28636e74292046524f4d207379732e782470735f6469676573745f6176675f6c6174656e63795f646973747269627574696f6e204153206231202057484552452062312e6176675f7573203e20406275636b65745f73697a6520414e442062312e6176675f7573203c3d20406275636b65745f73697a65202a2032292c203029292c20524550454154282720272c20406d61785f6c6162656c5f6c656e202d204c454e47544828406c6162656c29292c20277c20272c2049464e554c4c285245504541542849462840636f756e745f696e5f6275636b6574203c20406f6e655f756e69742c20272e272c2049462840636f756e745f696e5f6275636b6574203c204074776f5f756e69742c20272a272c2027232729292c2020092020202020202020202020202049462840636f756e745f696e5f6275636b6574203c20406f6e655f756e69742c2040636f756e745f696e5f6275636b65742c2009202020202020202020202020200949462840636f756e745f696e5f6275636b6574203c204074776f5f756e69742c2040636f756e745f696e5f6275636b6574202f20322c2040636f756e745f696e5f6275636b6574202f20332929292c202727292c20406c6162656c203a3d20434f4e43415428406c6162656c5f696e6e6572203a3d20434f4e43415428270a28272c20524f554e442828406275636b65745f73697a65202a203229202f2040756e69745f646976292c2027202d20272c20524f554e442828406275636b65745f73697a65202a203329202f2040756e69745f646976292c2040756e69742c20272927292c20524550454154282720272c20406d61785f6c6162656c5f73697a65202d204c454e47544828406c6162656c5f696e6e657229292c2040636f756e745f696e5f6275636b6574203a3d2049464e554c4c282853454c4543542053554d28636e74292046524f4d207379732e782470735f6469676573745f6176675f6c6174656e63795f646973747269627574696f6e204153206231202057484552452062312e6176675f7573203e20406275636b65745f73697a65202a203220414e442062312e6176675f7573203c3d20406275636b65745f73697a65202a2033292c203029292c20524550454154282720272c20406d61785f6c6162656c5f6c656e202d204c454e47544828406c6162656c29292c20277c20272c2049464e554c4c285245504541542849462840636f756e745f696e5f6275636b6574203c20406f6e655f756e69742c20272e272c2049462840636f756e745f696e5f6275636b6574203c204074776f5f756e69742c20272a272c2027232729292c2020092020202020202020202020202049462840636f756e745f696e5f6275636b6574203c20406f6e655f756e69742c2040636f756e745f696e5f6275636b65742c2009202020202020202020202020200949462840636f756e745f696e5f6275636b6574203c204074776f5f756e69742c2040636f756e745f696e5f6275636b6574202f20322c2040636f756e745f696e5f6275636b6574202f20332929292c202727292c20406c6162656c203a3d20434f4e43415428406c6162656c5f696e6e6572203a3d20434f4e43415428270a28272c20524f554e442828406275636b65745f73697a65202a203329202f2040756e69745f646976292c2027202d20272c20524f554e442828406275636b65745f73697a65202a203429202f2040756e69745f646976292c2040756e69742c20272927292c20524550454154282720272c20406d61785f6c6162656c5f73697a65202d204c454e47544828406c6162656c5f696e6e657229292c2040636f756e745f696e5f6275636b6574203a3d2049464e554c4c282853454c4543542053554d28636e74292046524f4d207379732e782470735f6469676573745f6176675f6c6174656e63795f646973747269627574696f6e204153206231202057484552452062312e6176675f7573203e20406275636b65745f73697a65202a203320414e442062312e6176675f7573203c3d20406275636b65745f73697a65202a2034292c203029292c20524550454154282720272c20406d61785f6c6162656c5f6c656e202d204c454e47544828406c6162656c29292c20277c20272c2049464e554c4c285245504541542849462840636f756e745f696e5f6275636b6574203c20406f6e655f756e69742c20272e272c2049462840636f756e745f696e5f6275636b6574203c204074776f5f756e69742c20272a272c2027232729292c2020092020202020202020202020202049462840636f756e745f696e5f6275636b6574203c20406f6e655f756e69742c2040636f756e745f696e5f6275636b65742c2009202020202020202020202020200949462840636f756e745f696e5f6275636b6574203c204074776f5f756e69742c2040636f756e745f696e5f6275636b6574202f20322c2040636f756e745f696e5f6275636b6574202f20332929292c202727292c20406c6162656c203a3d20434f4e43415428406c6162656c5f696e6e6572203a3d20434f4e43415428270a28272c20524f554e442828406275636b65745f73697a65202a203429202f2040756e69745f646976292c2027202d20272c20524f554e442828406275636b65745f73697a65202a203529202f2040756e69745f646976292c2040756e69742c20272927292c20524550454154282720272c20406d61785f6c6162656c5f73697a65202d204c454e47544828406c6162656c5f696e6e657229292c2040636f756e745f696e5f6275636b6574203a3d2049464e554c4c282853454c4543542053554d28636e74292046524f4d207379732e782470735f6469676573745f6176675f6c6174656e63795f646973747269627574696f6e204153206231202057484552452062312e6176675f7573203e20406275636b65745f73697a65202a203420414e442062312e6176675f7573203c3d20406275636b65745f73697a65202a2035292c203029292c20524550454154282720272c20406d61785f6c6162656c5f6c656e202d204c454e47544828406c6162656c29292c20277c20272c2049464e554c4c285245504541542849462840636f756e745f696e5f6275636b6574203c20406f6e655f756e69742c20272e272c2049462840636f756e745f696e5f6275636b6574203c204074776f5f756e69742c20272a272c2027232729292c2020092020202020202020202020202049462840636f756e745f696e5f6275636b6574203c20406f6e655f756e69742c2040636f756e745f696e5f6275636b65742c2009202020202020202020202020200949462840636f756e745f696e5f6275636b6574203c204074776f5f756e69742c2040636f756e745f696e5f6275636b6574202f20322c2040636f756e745f696e5f6275636b6574202f20332929292c202727292c20406c6162656c203a3d20434f4e43415428406c6162656c5f696e6e6572203a3d20434f4e43415428270a28272c20524f554e442828406275636b65745f73697a65202a203529202f2040756e69745f646976292c2027202d20272c20524f554e442828406275636b65745f73697a65202a203629202f2040756e69745f646976292c2040756e69742c20272927292c20524550454154282720272c20406d61785f6c6162656c5f73697a65202d204c454e47544828406c6162656c5f696e6e657229292c2040636f756e745f696e5f6275636b6574203a3d2049464e554c4c282853454c4543542053554d28636e74292046524f4d207379732e782470735f6469676573745f6176675f6c6174656e63795f646973747269627574696f6e204153206231202057484552452062312e6176675f7573203e20406275636b65745f73697a65202a203520414e442062312e6176675f7573203c3d20406275636b65745f73697a65202a2036292c203029292c20524550454154282720272c20406d61785f6c6162656c5f6c656e202d204c454e47544828406c6162656c29292c20277c20272c2049464e554c4c285245504541542849462840636f756e745f696e5f6275636b6574203c20406f6e655f756e69742c20272e272c2049462840636f756e745f696e5f6275636b6574203c204074776f5f756e69742c20272a272c2027232729292c2020092020202020202020202020202049462840636f756e745f696e5f6275636b6574203c20406f6e655f756e69742c2040636f756e745f696e5f6275636b65742c2009202020202020202020202020200949462840636f756e745f696e5f6275636b6574203c204074776f5f756e69742c2040636f756e745f696e5f6275636b6574202f20322c2040636f756e745f696e5f6275636b6574202f20332929292c202727292c20406c6162656c203a3d20434f4e43415428406c6162656c5f696e6e6572203a3d20434f4e43415428270a28272c20524f554e442828406275636b65745f73697a65202a203629202f2040756e69745f646976292c2027202d20272c20524f554e442828406275636b65745f73697a65202a203729202f2040756e69745f646976292c2040756e69742c20272927292c20524550454154282720272c20406d61785f6c6162656c5f73697a65202d204c454e47544828406c6162656c5f696e6e657229292c2040636f756e745f696e5f6275636b6574203a3d2049464e554c4c282853454c4543542053554d28636e74292046524f4d207379732e782470735f6469676573745f6176675f6c6174656e63795f646973747269627574696f6e204153206231202057484552452062312e6176675f7573203e20406275636b65745f73697a65202a203620414e442062312e6176675f7573203c3d20406275636b65745f73697a65202a2037292c203029292c20524550454154282720272c20406d61785f6c6162656c5f6c656e202d204c454e47544828406c6162656c29292c20277c20272c2049464e554c4c285245504541542849462840636f756e745f696e5f6275636b6574203c20406f6e655f756e69742c20272e272c2049462840636f756e745f696e5f6275636b6574203c204074776f5f756e69742c20272a272c2027232729292c2020092020202020202020202020202049462840636f756e745f696e5f6275636b6574203c20406f6e655f756e69742c2040636f756e745f696e5f6275636b65742c2009202020202020202020202020200949462840636f756e745f696e5f6275636b6574203c204074776f5f756e69742c2040636f756e745f696e5f6275636b6574202f20322c2040636f756e745f696e5f6275636b6574202f20332929292c202727292c20406c6162656c203a3d20434f4e43415428406c6162656c5f696e6e6572203a3d20434f4e43415428270a28272c20524f554e442828406275636b65745f73697a65202a203729202f2040756e69745f646976292c2027202d20272c20524f554e442828406275636b65745f73697a65202a203829202f2040756e69745f646976292c2040756e69742c20272927292c20524550454154282720272c20406d61785f6c6162656c5f73697a65202d204c454e47544828406c6162656c5f696e6e657229292c2040636f756e745f696e5f6275636b6574203a3d2049464e554c4c282853454c4543542053554d28636e74292046524f4d207379732e782470735f6469676573745f6176675f6c6174656e63795f646973747269627574696f6e204153206231202057484552452062312e6176675f7573203e20406275636b65745f73697a65202a203720414e442062312e6176675f7573203c3d20406275636b65745f73697a65202a2038292c203029292c20524550454154282720272c20406d61785f6c6162656c5f6c656e202d204c454e47544828406c6162656c29292c20277c20272c2049464e554c4c285245504541542849462840636f756e745f696e5f6275636b6574203c20406f6e655f756e69742c20272e272c2049462840636f756e745f696e5f6275636b6574203c204074776f5f756e69742c20272a272c2027232729292c2020092020202020202020202020202049462840636f756e745f696e5f6275636b6574203c20406f6e655f756e69742c2040636f756e745f696e5f6275636b65742c2009202020202020202020202020200949462840636f756e745f696e5f6275636b6574203c204074776f5f756e69742c2040636f756e745f696e5f6275636b6574202f20322c2040636f756e745f696e5f6275636b6574202f20332929292c202727292c20406c6162656c203a3d20434f4e43415428406c6162656c5f696e6e6572203a3d20434f4e43415428270a28272c20524f554e442828406275636b65745f73697a65202a203829202f2040756e69745f646976292c2027202d20272c20524f554e442828406275636b65745f73697a65202a203929202f2040756e69745f646976292c2040756e69742c20272927292c20524550454154282720272c20406d61785f6c6162656c5f73697a65202d204c454e47544828406c6162656c5f696e6e657229292c2040636f756e745f696e5f6275636b6574203a3d2049464e554c4c282853454c4543542053554d28636e74292046524f4d207379732e782470735f6469676573745f6176675f6c6174656e63795f646973747269627574696f6e204153206231202057484552452062312e6176675f7573203e20406275636b65745f73697a65202a203820414e442062312e6176675f7573203c3d20406275636b65745f73697a65202a2039292c203029292c20524550454154282720272c20406d61785f6c6162656c5f6c656e202d204c454e47544828406c6162656c29292c20277c20272c2049464e554c4c285245504541542849462840636f756e745f696e5f6275636b6574203c20406f6e655f756e69742c20272e272c2049462840636f756e745f696e5f6275636b6574203c204074776f5f756e69742c20272a272c2027232729292c2020092020202020202020202020202049462840636f756e745f696e5f6275636b6574203c20406f6e655f756e69742c2040636f756e745f696e5f6275636b65742c2009202020202020202020202020200949462840636f756e745f696e5f6275636b6574203c204074776f5f756e69742c2040636f756e745f696e5f6275636b6574202f20322c2040636f756e745f696e5f6275636b6574202f20332929292c202727292c20406c6162656c203a3d20434f4e43415428406c6162656c5f696e6e6572203a3d20434f4e43415428270a28272c20524f554e442828406275636b65745f73697a65202a203929202f2040756e69745f646976292c2027202d20272c20524f554e442828406275636b65745f73697a65202a20313029202f2040756e69745f646976292c2040756e69742c20272927292c20524550454154282720272c20406d61785f6c6162656c5f73697a65202d204c454e47544828406c6162656c5f696e6e657229292c2040636f756e745f696e5f6275636b6574203a3d2049464e554c4c282853454c4543542053554d28636e74292046524f4d207379732e782470735f6469676573745f6176675f6c6174656e63795f646973747269627574696f6e204153206231202057484552452062312e6176675f7573203e20406275636b65745f73697a65202a203920414e442062312e6176675f7573203c3d20406275636b65745f73697a65202a203130292c203029292c20524550454154282720272c20406d61785f6c6162656c5f6c656e202d204c454e47544828406c6162656c29292c20277c20272c2049464e554c4c285245504541542849462840636f756e745f696e5f6275636b6574203c20406f6e655f756e69742c20272e272c2049462840636f756e745f696e5f6275636b6574203c204074776f5f756e69742c20272a272c2027232729292c2020092020202020202020202020202049462840636f756e745f696e5f6275636b6574203c20406f6e655f756e69742c2040636f756e745f696e5f6275636b65742c2009202020202020202020202020200949462840636f756e745f696e5f6275636b6574203c204074776f5f756e69742c2040636f756e745f696e5f6275636b6574202f20322c2040636f756e745f696e5f6275636b6574202f20332929292c202727292c20406c6162656c203a3d20434f4e43415428406c6162656c5f696e6e6572203a3d20434f4e43415428270a28272c20524f554e442828406275636b65745f73697a65202a20313029202f2040756e69745f646976292c2027202d20272c20524f554e442828406275636b65745f73697a65202a20313129202f2040756e69745f646976292c2040756e69742c20272927292c20524550454154282720272c20406d61785f6c6162656c5f73697a65202d204c454e47544828406c6162656c5f696e6e657229292c2040636f756e745f696e5f6275636b6574203a3d2049464e554c4c282853454c4543542053554d28636e74292046524f4d207379732e782470735f6469676573745f6176675f6c6174656e63795f646973747269627574696f6e204153206231202057484552452062312e6176675f7573203e20406275636b65745f73697a65202a20313020414e442062312e6176675f7573203c3d20406275636b65745f73697a65202a203131292c203029292c20524550454154282720272c20406d61785f6c6162656c5f6c656e202d204c454e47544828406c6162656c29292c20277c20272c2049464e554c4c285245504541542849462840636f756e745f696e5f6275636b6574203c20406f6e655f756e69742c20272e272c2049462840636f756e745f696e5f6275636b6574203c204074776f5f756e69742c20272a272c2027232729292c2020092020202020202020202020202049462840636f756e745f696e5f6275636b6574203c20406f6e655f756e69742c2040636f756e745f696e5f6275636b65742c2009202020202020202020202020200949462840636f756e745f696e5f6275636b6574203c204074776f5f756e69742c2040636f756e745f696e5f6275636b6574202f20322c2040636f756e745f696e5f6275636b6574202f20332929292c202727292c20406c6162656c203a3d20434f4e43415428406c6162656c5f696e6e6572203a3d20434f4e43415428270a28272c20524f554e442828406275636b65745f73697a65202a20313129202f2040756e69745f646976292c2027202d20272c20524f554e442828406275636b65745f73697a65202a20313229202f2040756e69745f646976292c2040756e69742c20272927292c20524550454154282720272c20406d61785f6c6162656c5f73697a65202d204c454e47544828406c6162656c5f696e6e657229292c2040636f756e745f696e5f6275636b6574203a3d2049464e554c4c282853454c4543542053554d28636e74292046524f4d207379732e782470735f6469676573745f6176675f6c6174656e63795f646973747269627574696f6e204153206231202057484552452062312e6176675f7573203e20406275636b65745f73697a65202a20313120414e442062312e6176675f7573203c3d20406275636b65745f73697a65202a203132292c203029292c20524550454154282720272c20406d61785f6c6162656c5f6c656e202d204c454e47544828406c6162656c29292c20277c20272c2049464e554c4c285245504541542849462840636f756e745f696e5f6275636b6574203c20406f6e655f756e69742c20272e272c2049462840636f756e745f696e5f6275636b6574203c204074776f5f756e69742c20272a272c2027232729292c2020092020202020202020202020202049462840636f756e745f696e5f6275636b6574203c20406f6e655f756e69742c2040636f756e745f696e5f6275636b65742c2009202020202020202020202020200949462840636f756e745f696e5f6275636b6574203c204074776f5f756e69742c2040636f756e745f696e5f6275636b6574202f20322c2040636f756e745f696e5f6275636b6574202f20332929292c202727292c20406c6162656c203a3d20434f4e43415428406c6162656c5f696e6e6572203a3d20434f4e43415428270a28272c20524f554e442828406275636b65745f73697a65202a20313229202f2040756e69745f646976292c2027202d20272c20524f554e442828406275636b65745f73697a65202a20313329202f2040756e69745f646976292c2040756e69742c20272927292c20524550454154282720272c20406d61785f6c6162656c5f73697a65202d204c454e47544828406c6162656c5f696e6e657229292c2040636f756e745f696e5f6275636b6574203a3d2049464e554c4c282853454c4543542053554d28636e74292046524f4d207379732e782470735f6469676573745f6176675f6c6174656e63795f646973747269627574696f6e204153206231202057484552452062312e6176675f7573203e20406275636b65745f73697a65202a20313220414e442062312e6176675f7573203c3d20406275636b65745f73697a65202a203133292c203029292c20524550454154282720272c20406d61785f6c6162656c5f6c656e202d204c454e47544828406c6162656c29292c20277c20272c2049464e554c4c285245504541542849462840636f756e745f696e5f6275636b6574203c20406f6e655f756e69742c20272e272c2049462840636f756e745f696e5f6275636b6574203c204074776f5f756e69742c20272a272c2027232729292c2020092020202020202020202020202049462840636f756e745f696e5f6275636b6574203c20406f6e655f756e69742c2040636f756e745f696e5f6275636b65742c2009202020202020202020202020200949462840636f756e745f696e5f6275636b6574203c204074776f5f756e69742c2040636f756e745f696e5f6275636b6574202f20322c2040636f756e745f696e5f6275636b6574202f20332929292c202727292c20406c6162656c203a3d20434f4e43415428406c6162656c5f696e6e6572203a3d20434f4e43415428270a28272c20524f554e442828406275636b65745f73697a65202a20313329202f2040756e69745f646976292c2027202d20272c20524f554e442828406275636b65745f73697a65202a20313429202f2040756e69745f646976292c2040756e69742c20272927292c20524550454154282720272c20406d61785f6c6162656c5f73697a65202d204c454e47544828406c6162656c5f696e6e657229292c2040636f756e745f696e5f6275636b6574203a3d2049464e554c4c282853454c4543542053554d28636e74292046524f4d207379732e782470735f6469676573745f6176675f6c6174656e63795f646973747269627574696f6e204153206231202057484552452062312e6176675f7573203e20406275636b65745f73697a65202a20313320414e442062312e6176675f7573203c3d20406275636b65745f73697a65202a203134292c203029292c20524550454154282720272c20406d61785f6c6162656c5f6c656e202d204c454e47544828406c6162656c29292c20277c20272c2049464e554c4c285245504541542849462840636f756e745f696e5f6275636b6574203c20406f6e655f756e69742c20272e272c2049462840636f756e745f696e5f6275636b6574203c204074776f5f756e69742c20272a272c2027232729292c2020092020202020202020202020202049462840636f756e745f696e5f6275636b6574203c20406f6e655f756e69742c2040636f756e745f696e5f6275636b65742c2009202020202020202020202020200949462840636f756e745f696e5f6275636b6574203c204074776f5f756e69742c2040636f756e745f696e5f6275636b6574202f20322c2040636f756e745f696e5f6275636b6574202f20332929292c202727292c20406c6162656c203a3d20434f4e43415428406c6162656c5f696e6e6572203a3d20434f4e43415428270a28272c20524f554e442828406275636b65745f73697a65202a20313429202f2040756e69745f646976292c2027202d20272c20524f554e442828406275636b65745f73697a65202a20313529202f2040756e69745f646976292c2040756e69742c20272927292c20524550454154282720272c20406d61785f6c6162656c5f73697a65202d204c454e47544828406c6162656c5f696e6e657229292c2040636f756e745f696e5f6275636b6574203a3d2049464e554c4c282853454c4543542053554d28636e74292046524f4d207379732e782470735f6469676573745f6176675f6c6174656e63795f646973747269627574696f6e204153206231202057484552452062312e6176675f7573203e20406275636b65745f73697a65202a20313420414e442062312e6176675f7573203c3d20406275636b65745f73697a65202a203135292c203029292c20524550454154282720272c20406d61785f6c6162656c5f6c656e202d204c454e47544828406c6162656c29292c20277c20272c2049464e554c4c285245504541542849462840636f756e745f696e5f6275636b6574203c20406f6e655f756e69742c20272e272c2049462840636f756e745f696e5f6275636b6574203c204074776f5f756e69742c20272a272c2027232729292c2020092020202020202020202020202049462840636f756e745f696e5f6275636b6574203c20406f6e655f756e69742c2040636f756e745f696e5f6275636b65742c2009202020202020202020202020200949462840636f756e745f696e5f6275636b6574203c204074776f5f756e69742c2040636f756e745f696e5f6275636b6574202f20322c2040636f756e745f696e5f6275636b6574202f20332929292c202727292c20406c6162656c203a3d20434f4e43415428406c6162656c5f696e6e6572203a3d20434f4e43415428270a28272c20524f554e442828406275636b65745f73697a65202a20313529202f2040756e69745f646976292c2027202d20272c20524f554e442828406275636b65745f73697a65202a20313629202f2040756e69745f646976292c2040756e69742c20272927292c20524550454154282720272c20406d61785f6c6162656c5f73697a65202d204c454e47544828406c6162656c5f696e6e657229292c2040636f756e745f696e5f6275636b6574203a3d2049464e554c4c282853454c4543542053554d28636e74292046524f4d207379732e782470735f6469676573745f6176675f6c6174656e63795f646973747269627574696f6e204153206231202057484552452062312e6176675f7573203e20406275636b65745f73697a65202a20313520414e442062312e6176675f7573203c3d20406275636b65745f73697a65202a203136292c203029292c20524550454154282720272c20406d61785f6c6162656c5f6c656e202d204c454e47544828406c6162656c29292c20277c20272c2049464e554c4c285245504541542849462840636f756e745f696e5f6275636b6574203c20406f6e655f756e69742c20272e272c2049462840636f756e745f696e5f6275636b6574203c204074776f5f756e69742c20272a272c2027232729292c2020092020202020202020202020202049462840636f756e745f696e5f6275636b6574203c20406f6e655f756e69742c2040636f756e745f696e5f6275636b65742c2009202020202020202020202020200949462840636f756e745f696e5f6275636b6574203c204074776f5f756e69742c2040636f756e745f696e5f6275636b6574202f20322c2040636f756e745f696e5f6275636b6574202f20332929292c202727292c2020270a0a2020546f74616c2053746174656d656e74733a20272c2040746f74616c5f717565726965732c20273b204275636b6574733a20272c20406275636b657473202c20273b204275636b65742053697a653a20272c20524f554e4428406275636b65745f73697a65202f2040756e69745f64697629202c202720272c2040756e69742c20273b0a272020292041532060506572666f726d616e636520536368656d612053746174656d656e74204469676573742041766572616765204c6174656e637920486973746f6772616d603b2020454e44);
INSERT INTO `proc` (`db`, `name`, `type`, `specific_name`, `language`, `sql_data_access`, `is_deterministic`, `security_type`, `param_list`, `returns`, `body`, `definer`, `created`, `modified`, `sql_mode`, `comment`, `character_set_client`, `collation_connection`, `db_collation`, `body_utf8`) VALUES
('sys', 'ps_trace_statement_digest', 'PROCEDURE', 'ps_trace_statement_digest', 'SQL', 'MODIFIES_SQL_DATA', 'NO', 'INVOKER', 0x20494e20696e5f6469676573742056415243484152283332292c20494e20696e5f72756e74696d6520494e542c2020494e20696e5f696e74657276616c20444543494d414c28322c32292c20494e20696e5f73746172745f667265736820424f4f4c45414e2c20494e20696e5f6175746f5f656e61626c6520424f4f4c45414e20, '', 0x424547494e20204445434c41524520765f73746172745f667265736820424f4f4c45414e2044454641554c542066616c73653b204445434c41524520765f6175746f5f656e61626c6520424f4f4c45414e2044454641554c542066616c73653b204445434c41524520765f6578706c61696e2020202020424f4f4c45414e2044454641554c5420747275653b204445434c41524520765f746869735f7468726561645f656e6162656420454e554d2827594553272c20274e4f27293b204445434c41524520765f72756e74696d6520494e542044454641554c5420303b204445434c41524520765f737461727420494e542044454641554c5420303b204445434c41524520765f666f756e645f73746d747320494e543b202053455420406c6f675f62696e203a3d20404073716c5f6c6f675f62696e3b205345542073716c5f6c6f675f62696e203d20303b202053454c45435420494e535452554d454e54454420494e544f20765f746869735f7468726561645f656e616265642046524f4d20706572666f726d616e63655f736368656d612e746872656164732057484552452050524f434553534c4953545f4944203d20434f4e4e454354494f4e5f494428293b2043414c4c207379732e70735f73657475705f64697361626c655f74687265616428434f4e4e454354494f4e5f49442829293b202044524f502054454d504f52415259205441424c45204946204558495354532073746d745f74726163653b204352454154452054454d504f52415259205441424c452073746d745f74726163652028207468726561645f696420424947494e5420554e5349474e45442c2074696d65725f737461727420424947494e5420554e5349474e45442c206576656e745f696420424947494e5420554e5349474e45442c2073716c5f74657874206c6f6e67746578742c2074696d65725f7761697420424947494e5420554e5349474e45442c206c6f636b5f74696d6520424947494e5420554e5349474e45442c206572726f727320424947494e5420554e5349474e45442c206d7973716c5f6572726e6f20494e542c20726f77735f73656e7420424947494e5420554e5349474e45442c20726f77735f616666656374656420424947494e5420554e5349474e45442c20726f77735f6578616d696e656420424947494e5420554e5349474e45442c20637265617465645f746d705f7461626c657320424947494e5420554e5349474e45442c20637265617465645f746d705f6469736b5f7461626c657320424947494e5420554e5349474e45442c206e6f5f696e6465785f7573656420424947494e5420554e5349474e45442c205052494d415259204b455920287468726561645f69642c2074696d65725f73746172742920293b202044524f502054454d504f52415259205441424c45204946204558495354532073746d745f7374616765733b204352454154452054454d504f52415259205441424c452073746d745f7374616765732028206576656e745f696420424947494e5420554e5349474e45442c2073746d745f696420424947494e5420554e5349474e45442c206576656e745f6e616d65205641524348415228313238292c2074696d65725f7761697420424947494e5420554e5349474e45442c205052494d415259204b455920286576656e745f69642920293b202053455420765f73746172745f6672657368203d20696e5f73746172745f66726573683b20494620765f73746172745f6672657368205448454e205452554e43415445205441424c4520706572666f726d616e63655f736368656d612e6576656e74735f73746174656d656e74735f686973746f72795f6c6f6e673b205452554e43415445205441424c4520706572666f726d616e63655f736368656d612e6576656e74735f7374616765735f686973746f72795f6c6f6e673b20454e442049463b202053455420765f6175746f5f656e61626c65203d20696e5f6175746f5f656e61626c653b20494620765f6175746f5f656e61626c65205448454e2043414c4c207379732e70735f73657475705f736176652830293b202055504441544520706572666f726d616e63655f736368656d612e746872656164732053455420494e535452554d454e544544203d2049462850524f434553534c4953545f4944204953204e4f54204e554c4c2c2027594553272c20274e4f27293b202055504441544520706572666f726d616e63655f736368656d612e73657475705f636f6e73756d6572732053455420454e41424c4544203d202759455327205748455245204e414d45204e4f54204c494b452027255c5f686973746f72792720414e44204e414d45204e4f54204c494b4520276576656e74735f77616974252720414e44204e414d45204e4f54204c494b4520276576656e74735f7472616e73616374696f6e73252720414e44204e414d45203c3e202773746174656d656e74735f646967657374273b202055504441544520706572666f726d616e63655f736368656d612e73657475705f696e737472756d656e74732053455420454e41424c4544203d2027594553272c2054494d45442020203d202759455327205748455245204e414d45204c494b45202773746174656d656e742f2527204f52204e414d45204c494b45202773746167652f25273b20454e442049463b20205748494c4520765f72756e74696d65203c20696e5f72756e74696d6520444f2053454c45435420554e49585f54494d455354414d50282920494e544f20765f73746172743b2020494e534552542049474e4f524520494e544f2073746d745f74726163652053454c454354207468726561645f69642c2074696d65725f73746172742c206576656e745f69642c2073716c5f746578742c2074696d65725f776169742c206c6f636b5f74696d652c206572726f72732c206d7973716c5f6572726e6f2c2020726f77735f73656e742c20726f77735f61666665637465642c20726f77735f6578616d696e65642c20637265617465645f746d705f7461626c65732c20637265617465645f746d705f6469736b5f7461626c65732c206e6f5f696e6465785f757365642046524f4d20706572666f726d616e63655f736368656d612e6576656e74735f73746174656d656e74735f686973746f72795f6c6f6e6720574845524520646967657374203d20696e5f6469676573743b2020494e534552542049474e4f524520494e544f2073746d745f7374616765732053454c454354207374616765732e6576656e745f69642c2073746d745f74726163652e6576656e745f69642c207374616765732e6576656e745f6e616d652c207374616765732e74696d65725f776169742046524f4d20706572666f726d616e63655f736368656d612e6576656e74735f7374616765735f686973746f72795f6c6f6e6720415320737461676573204a4f494e2073746d745f7472616365204f4e207374616765732e6e657374696e675f6576656e745f6964203d2073746d745f74726163652e6576656e745f69643b202053454c45435420534c45455028696e5f696e74657276616c2920494e544f2040736c6565703b2053455420765f72756e74696d65203d20765f72756e74696d65202b2028554e49585f54494d455354414d502829202d20765f7374617274293b20454e44205748494c453b202053454c454354202253554d4d4152592053544154495354494353223b202053454c45435420434f554e54282a2920657865637574696f6e732c207379732e666f726d61745f74696d652853554d2874696d65725f77616974292920415320657865635f74696d652c207379732e666f726d61745f74696d652853554d286c6f636b5f74696d652929204153206c6f636b5f74696d652c2053554d28726f77735f73656e742920415320726f77735f73656e742c2053554d28726f77735f61666665637465642920415320726f77735f61666665637465642c2053554d28726f77735f6578616d696e65642920415320726f77735f6578616d696e65642c2053554d28637265617465645f746d705f7461626c65732920415320746d705f7461626c65732c2053554d286e6f5f696e6465785f75736564292041532066756c6c5f7363616e732046524f4d2073746d745f74726163653b202053454c454354206576656e745f6e616d652c20434f554e54282a2920617320636f756e742c207379732e666f726d61745f74696d652853554d2874696d65725f776169742929206173206c6174656e63792046524f4d2073746d745f7374616765732047524f5550204259206576656e745f6e616d65204f524445522042592053554d2874696d65725f776169742920444553433b202053454c45435420224c4f4e474553542052554e4e494e472053544154454d454e54223b202053454c454354207468726561645f69642c207379732e666f726d61745f74696d652874696d65725f776169742920415320657865635f74696d652c207379732e666f726d61745f74696d65286c6f636b5f74696d6529204153206c6f636b5f74696d652c20726f77735f73656e742c20726f77735f61666665637465642c20726f77735f6578616d696e65642c20637265617465645f746d705f7461626c657320415320746d705f7461626c65732c206e6f5f696e6465785f757365642041532066756c6c5f7363616e2046524f4d2073746d745f7472616365204f524445522042592074696d65725f776169742044455343204c494d495420313b202053454c4543542073716c5f746578742046524f4d2073746d745f7472616365204f524445522042592074696d65725f776169742044455343204c494d495420313b202053454c4543542073716c5f746578742c206576656e745f696420494e544f204073716c2c204073716c5f69642046524f4d2073746d745f7472616365204f524445522042592074696d65725f776169742044455343204c494d495420313b2020494620284073716c5f6964204953204e4f54204e554c4c29205448454e2053454c454354206576656e745f6e616d652c207379732e666f726d61745f74696d652874696d65725f7761697429206173206c6174656e63792046524f4d2073746d745f7374616765732057484552452073746d745f6964203d204073716c5f6964204f52444552204259206576656e745f69643b20454e442049463b202044524f502054454d504f52415259205441424c452073746d745f74726163653b2044524f502054454d504f52415259205441424c452073746d745f7374616765733b2020494620284073716c204953204e4f54204e554c4c29205448454e20534554204073746d74203a3d20434f4e43415428224558504c41494e20464f524d41543d4a534f4e20222c204073716c293b20424547494e204445434c41524520434f4e54494e55452048414e444c455220464f5220313036342c20313134362053455420765f6578706c61696e203d2066616c73653b202050524550415245206578706c61696e5f73746d742046524f4d204073746d743b20454e443b202049462028765f6578706c61696e29205448454e2045584543555445206578706c61696e5f73746d743b204445414c4c4f434154452050524550415245206578706c61696e5f73746d743b20454e442049463b20454e442049463b2020494620765f6175746f5f656e61626c65205448454e2043414c4c207379732e70735f73657475705f72656c6f61645f736176656428293b20454e442049463b2049462028765f746869735f7468726561645f656e61626564203d20275945532729205448454e2043414c4c207379732e70735f73657475705f656e61626c655f74687265616428434f4e4e454354494f4e5f49442829293b20454e442049463b20205345542073716c5f6c6f675f62696e203d20406c6f675f62696e3b20454e44, 'mysql.sys@localhost', '2018-07-09 10:50:31', '2018-07-09 10:50:31', '', '\n Description\n \n Traces all instrumentation within Performance Schema for a specific\n Statement Digest. \n \n When finding a statement of interest within the \n performance_schema.events_statements_summary_by_digest table, feed\n the DIGEST MD5 value in to this procedure, set how long to poll for, \n and at what interval to poll, and it will generate a report of all \n statistics tracked within Performance Schema for that digest for the\n interval.\n \n It will also attempt to generate an EXPLAIN for the longest running \n example of the digest during the interval. Note this may fail, as:\n \n * Performance Schema truncates long SQL_TEXT values (and hence the \n EXPLAIN will fail due to parse errors)\n * the default schema is sys (so tables that are not fully qualified\n in the query may not be found)\n * some queries such as SHOW are not supported in EXPLAIN.\n \n When the EXPLAIN fails, the error will be ignored and no EXPLAIN\n output generated.\n \n Requires the SUPER privilege for \"SET sql_log_bin = 0;\".\n \n Parameters\n \n in_digest (VARCHAR(32)):\n The statement digest identifier you would like to analyze\n in_runtime (INT):\n The number of seconds to run analysis for\n in_interval (DECIMAL(2,2)):\n The interval (in seconds, may be fractional) at which to try\n and take snapshots\n in_start_fresh (BOOLEAN):\n Whether to TRUNCATE the events_statements_history_long and\n events_stages_history_long tables before starting\n in_auto_enable (BOOLEAN):\n Whether to automatically turn on required consumers\n \n Example\n \n mysql> call ps_trace_statement_digest(\'891ec6860f98ba46d89dd20b0c03652c\', 10, 0.1, true, true);\n +--------------------+\n | SUMMARY STATISTICS |\n +--------------------+\n | SUMMARY STATISTICS |\n +--------------------+\n 1 row in set (9.11 sec)\n \n +------------+-----------+-----------+-----------+---------------+------------+------------+\n | executions | exec_time | lock_time | rows_sent | rows_examined | tmp_tables | full_scans |\n +------------+-----------+-----------+-----------+---------------+------------+------------+\n |         21 | 4.11 ms   | 2.00 ms   |         0 |            21 |          0 |          0 |\n +------------+-----------+-----------+-----------+---------------+------------+------------+\n 1 row in set (9.11 sec)\n \n +------------------------------------------+-------+-----------+\n | event_name                               | count | latency   |\n +------------------------------------------+-------+-----------+\n | stage/sql/checking query cache for query |    16 | 724.37 us |\n | stage/sql/statistics                     |    16 | 546.92 us |\n | stage/sql/freeing items                  |    18 | 520.11 us |\n | stage/sql/init                           |    51 | 466.80 us |\n ...\n | stage/sql/cleaning up                    |    18 | 11.92 us  |\n | stage/sql/executing                      |    16 | 6.95 us   |\n +------------------------------------------+-------+-----------+\n 17 rows in set (9.12 sec)\n \n +---------------------------+\n | LONGEST RUNNING STATEMENT |\n +---------------------------+\n | LONGEST RUNNING STATEMENT |\n +---------------------------+\n 1 row in set (9.16 sec)\n \n +-----------+-----------+-----------+-----------+---------------+------------+-----------+\n | thread_id | exec_time | lock_time | rows_sent | rows_examined | tmp_tables | full_scan |\n +-----------+-----------+-----------+-----------+---------------+------------+-----------+\n |    166646 | 618.43 us | 1.00 ms   |         0 |             1 |          0 |         0 |\n +-----------+-----------+-----------+-----------+---------------+------------+-----------+\n 1 row in set (9.16 sec)\n \n // Truncated for clarity...\n +-----------------------------------------------------------------+\n | sql_text                                                        |\n +-----------------------------------------------------------------+\n | select hibeventhe0_.id as id1382_, hibeventhe0_.createdTime ... |\n +-----------------------------------------------------------------+\n 1 row in set (9.17 sec)\n \n +------------------------------------------+-----------+\n | event_name                               | latency   |\n +------------------------------------------+-----------+\n | stage/sql/init                           | 8.61 us   |\n | stage/sql/Waiting for query cache lock   | 453.23 us |\n | stage/sql/init                           | 331.07 ns |\n | stage/sql/checking query cache for query | 43.04 us  |\n ...\n | stage/sql/freeing items                  | 30.46 us  |\n | stage/sql/cleaning up                    | 662.13 ns |\n +------------------------------------------+-----------+\n 18 rows in set (9.23 sec)\n \n +----+-------------+--------------+-------+---------------+-----------+---------+-------------+------+-------+\n | id | select_type | table        | type  | possible_keys | key       | key_len | ref         | rows | Extra |\n +----+-------------+--------------+-------+---------------+-----------+---------+-------------+------+-------+\n |  1 | SIMPLE      | hibeventhe0_ | const | fixedTime     | fixedTime | 775     | const,const |    1 | NULL  |\n +----+-------------+--------------+-------+---------------+-----------+---------+-------------+------+-------+\n 1 row in set (9.27 sec)\n \n Query OK, 0 rows affected (9.28 sec)\n ', 'utf8', 'utf8_general_ci', 'utf8_general_ci', 0x424547494e20204445434c41524520765f73746172745f667265736820424f4f4c45414e2044454641554c542066616c73653b204445434c41524520765f6175746f5f656e61626c6520424f4f4c45414e2044454641554c542066616c73653b204445434c41524520765f6578706c61696e2020202020424f4f4c45414e2044454641554c5420747275653b204445434c41524520765f746869735f7468726561645f656e6162656420454e554d2827594553272c20274e4f27293b204445434c41524520765f72756e74696d6520494e542044454641554c5420303b204445434c41524520765f737461727420494e542044454641554c5420303b204445434c41524520765f666f756e645f73746d747320494e543b202053455420406c6f675f62696e203a3d20404073716c5f6c6f675f62696e3b205345542073716c5f6c6f675f62696e203d20303b202053454c45435420494e535452554d454e54454420494e544f20765f746869735f7468726561645f656e616265642046524f4d20706572666f726d616e63655f736368656d612e746872656164732057484552452050524f434553534c4953545f4944203d20434f4e4e454354494f4e5f494428293b2043414c4c207379732e70735f73657475705f64697361626c655f74687265616428434f4e4e454354494f4e5f49442829293b202044524f502054454d504f52415259205441424c45204946204558495354532073746d745f74726163653b204352454154452054454d504f52415259205441424c452073746d745f74726163652028207468726561645f696420424947494e5420554e5349474e45442c2074696d65725f737461727420424947494e5420554e5349474e45442c206576656e745f696420424947494e5420554e5349474e45442c2073716c5f74657874206c6f6e67746578742c2074696d65725f7761697420424947494e5420554e5349474e45442c206c6f636b5f74696d6520424947494e5420554e5349474e45442c206572726f727320424947494e5420554e5349474e45442c206d7973716c5f6572726e6f20494e542c20726f77735f73656e7420424947494e5420554e5349474e45442c20726f77735f616666656374656420424947494e5420554e5349474e45442c20726f77735f6578616d696e656420424947494e5420554e5349474e45442c20637265617465645f746d705f7461626c657320424947494e5420554e5349474e45442c20637265617465645f746d705f6469736b5f7461626c657320424947494e5420554e5349474e45442c206e6f5f696e6465785f7573656420424947494e5420554e5349474e45442c205052494d415259204b455920287468726561645f69642c2074696d65725f73746172742920293b202044524f502054454d504f52415259205441424c45204946204558495354532073746d745f7374616765733b204352454154452054454d504f52415259205441424c452073746d745f7374616765732028206576656e745f696420424947494e5420554e5349474e45442c2073746d745f696420424947494e5420554e5349474e45442c206576656e745f6e616d65205641524348415228313238292c2074696d65725f7761697420424947494e5420554e5349474e45442c205052494d415259204b455920286576656e745f69642920293b202053455420765f73746172745f6672657368203d20696e5f73746172745f66726573683b20494620765f73746172745f6672657368205448454e205452554e43415445205441424c4520706572666f726d616e63655f736368656d612e6576656e74735f73746174656d656e74735f686973746f72795f6c6f6e673b205452554e43415445205441424c4520706572666f726d616e63655f736368656d612e6576656e74735f7374616765735f686973746f72795f6c6f6e673b20454e442049463b202053455420765f6175746f5f656e61626c65203d20696e5f6175746f5f656e61626c653b20494620765f6175746f5f656e61626c65205448454e2043414c4c207379732e70735f73657475705f736176652830293b202055504441544520706572666f726d616e63655f736368656d612e746872656164732053455420494e535452554d454e544544203d2049462850524f434553534c4953545f4944204953204e4f54204e554c4c2c2027594553272c20274e4f27293b202055504441544520706572666f726d616e63655f736368656d612e73657475705f636f6e73756d6572732053455420454e41424c4544203d202759455327205748455245204e414d45204e4f54204c494b452027255c5f686973746f72792720414e44204e414d45204e4f54204c494b4520276576656e74735f77616974252720414e44204e414d45204e4f54204c494b4520276576656e74735f7472616e73616374696f6e73252720414e44204e414d45203c3e202773746174656d656e74735f646967657374273b202055504441544520706572666f726d616e63655f736368656d612e73657475705f696e737472756d656e74732053455420454e41424c4544203d2027594553272c2054494d45442020203d202759455327205748455245204e414d45204c494b45202773746174656d656e742f2527204f52204e414d45204c494b45202773746167652f25273b20454e442049463b20205748494c4520765f72756e74696d65203c20696e5f72756e74696d6520444f2053454c45435420554e49585f54494d455354414d50282920494e544f20765f73746172743b2020494e534552542049474e4f524520494e544f2073746d745f74726163652053454c454354207468726561645f69642c2074696d65725f73746172742c206576656e745f69642c2073716c5f746578742c2074696d65725f776169742c206c6f636b5f74696d652c206572726f72732c206d7973716c5f6572726e6f2c2020726f77735f73656e742c20726f77735f61666665637465642c20726f77735f6578616d696e65642c20637265617465645f746d705f7461626c65732c20637265617465645f746d705f6469736b5f7461626c65732c206e6f5f696e6465785f757365642046524f4d20706572666f726d616e63655f736368656d612e6576656e74735f73746174656d656e74735f686973746f72795f6c6f6e6720574845524520646967657374203d20696e5f6469676573743b2020494e534552542049474e4f524520494e544f2073746d745f7374616765732053454c454354207374616765732e6576656e745f69642c2073746d745f74726163652e6576656e745f69642c207374616765732e6576656e745f6e616d652c207374616765732e74696d65725f776169742046524f4d20706572666f726d616e63655f736368656d612e6576656e74735f7374616765735f686973746f72795f6c6f6e6720415320737461676573204a4f494e2073746d745f7472616365204f4e207374616765732e6e657374696e675f6576656e745f6964203d2073746d745f74726163652e6576656e745f69643b202053454c45435420534c45455028696e5f696e74657276616c2920494e544f2040736c6565703b2053455420765f72756e74696d65203d20765f72756e74696d65202b2028554e49585f54494d455354414d502829202d20765f7374617274293b20454e44205748494c453b202053454c454354202253554d4d4152592053544154495354494353223b202053454c45435420434f554e54282a2920657865637574696f6e732c207379732e666f726d61745f74696d652853554d2874696d65725f77616974292920415320657865635f74696d652c207379732e666f726d61745f74696d652853554d286c6f636b5f74696d652929204153206c6f636b5f74696d652c2053554d28726f77735f73656e742920415320726f77735f73656e742c2053554d28726f77735f61666665637465642920415320726f77735f61666665637465642c2053554d28726f77735f6578616d696e65642920415320726f77735f6578616d696e65642c2053554d28637265617465645f746d705f7461626c65732920415320746d705f7461626c65732c2053554d286e6f5f696e6465785f75736564292041532066756c6c5f7363616e732046524f4d2073746d745f74726163653b202053454c454354206576656e745f6e616d652c20434f554e54282a2920617320636f756e742c207379732e666f726d61745f74696d652853554d2874696d65725f776169742929206173206c6174656e63792046524f4d2073746d745f7374616765732047524f5550204259206576656e745f6e616d65204f524445522042592053554d2874696d65725f776169742920444553433b202053454c45435420224c4f4e474553542052554e4e494e472053544154454d454e54223b202053454c454354207468726561645f69642c207379732e666f726d61745f74696d652874696d65725f776169742920415320657865635f74696d652c207379732e666f726d61745f74696d65286c6f636b5f74696d6529204153206c6f636b5f74696d652c20726f77735f73656e742c20726f77735f61666665637465642c20726f77735f6578616d696e65642c20637265617465645f746d705f7461626c657320415320746d705f7461626c65732c206e6f5f696e6465785f757365642041532066756c6c5f7363616e2046524f4d2073746d745f7472616365204f524445522042592074696d65725f776169742044455343204c494d495420313b202053454c4543542073716c5f746578742046524f4d2073746d745f7472616365204f524445522042592074696d65725f776169742044455343204c494d495420313b202053454c4543542073716c5f746578742c206576656e745f696420494e544f204073716c2c204073716c5f69642046524f4d2073746d745f7472616365204f524445522042592074696d65725f776169742044455343204c494d495420313b2020494620284073716c5f6964204953204e4f54204e554c4c29205448454e2053454c454354206576656e745f6e616d652c207379732e666f726d61745f74696d652874696d65725f7761697429206173206c6174656e63792046524f4d2073746d745f7374616765732057484552452073746d745f6964203d204073716c5f6964204f52444552204259206576656e745f69643b20454e442049463b202044524f502054454d504f52415259205441424c452073746d745f74726163653b2044524f502054454d504f52415259205441424c452073746d745f7374616765733b2020494620284073716c204953204e4f54204e554c4c29205448454e20534554204073746d74203a3d20434f4e43415428224558504c41494e20464f524d41543d4a534f4e20222c204073716c293b20424547494e204445434c41524520434f4e54494e55452048414e444c455220464f5220313036342c20313134362053455420765f6578706c61696e203d2066616c73653b202050524550415245206578706c61696e5f73746d742046524f4d204073746d743b20454e443b202049462028765f6578706c61696e29205448454e2045584543555445206578706c61696e5f73746d743b204445414c4c4f434154452050524550415245206578706c61696e5f73746d743b20454e442049463b20454e442049463b2020494620765f6175746f5f656e61626c65205448454e2043414c4c207379732e70735f73657475705f72656c6f61645f736176656428293b20454e442049463b2049462028765f746869735f7468726561645f656e61626564203d20275945532729205448454e2043414c4c207379732e70735f73657475705f656e61626c655f74687265616428434f4e4e454354494f4e5f49442829293b20454e442049463b20205345542073716c5f6c6f675f62696e203d20406c6f675f62696e3b20454e44);
INSERT INTO `proc` (`db`, `name`, `type`, `specific_name`, `language`, `sql_data_access`, `is_deterministic`, `security_type`, `param_list`, `returns`, `body`, `definer`, `created`, `modified`, `sql_mode`, `comment`, `character_set_client`, `collation_connection`, `db_collation`, `body_utf8`) VALUES
('sys', 'ps_trace_thread', 'PROCEDURE', 'ps_trace_thread', 'SQL', 'MODIFIES_SQL_DATA', 'NO', 'INVOKER', 0x20494e20696e5f7468726561645f696420424947494e5420554e5349474e45442c20494e20696e5f6f757466696c65205641524348415228323535292c20494e20696e5f6d61785f72756e74696d6520444543494d414c2832302c32292c20494e20696e5f696e74657276616c20444543494d414c2832302c32292c20494e20696e5f73746172745f667265736820424f4f4c45414e2c20494e20696e5f6175746f5f736574757020424f4f4c45414e2c20494e20696e5f646562756720424f4f4c45414e20, '', 0x424547494e204445434c41524520765f646f6e6520626f6f6c2044454641554c542046414c53453b204445434c41524520765f73746172742c20765f72756e74696d6520444543494d414c2832302c32292044454641554c5420302e303b204445434c41524520765f6d696e5f6576656e745f696420626967696e7420756e7369676e65642044454641554c5420303b204445434c41524520765f746869735f7468726561645f656e6162656420454e554d2827594553272c20274e4f27293b204445434c41524520765f6576656e74206c6f6e67746578743b204445434c41524520635f737461636b20435552534f5220464f522053454c45435420434f4e434154284946286e657374696e675f6576656e745f6964204953204e4f54204e554c4c2c20434f4e434154286e657374696e675f6576656e745f69642c2027202d3e2027292c202727292c20206576656e745f69642c20273b20272c206576656e745f69642c2027205b6c6162656c3d22272c202728272c207379732e666f726d61745f74696d652874696d65725f77616974292c20272920272c20494620286576656e745f6e616d65204e4f54204c494b452027776169742f696f25272c2020535542535452494e475f494e444558286576656e745f6e616d652c20272f272c202d32292c2020494620286576656e745f6e616d65204e4f54204c494b452027776169742f696f2f66696c652527204f52206576656e745f6e616d65204e4f54204c494b452027776169742f696f2f736f636b657425272c20535542535452494e475f494e444558286576656e745f6e616d652c20272f272c202d34292c206576656e745f6e616d652920292c20494620286576656e745f6e616d65204c494b4520277472616e73616374696f6e272c2049464e554c4c28434f4e43415428275c5c6e272c20776169745f696e666f292c202727292c202727292c20494620286576656e745f6e616d65204c494b45202773746174656d656e742f25272c2049464e554c4c28434f4e43415428275c5c6e272c20776169745f696e666f292c202727292c202727292c2049462028696e5f646562756720414e44206576656e745f6e616d65204c494b4520277761697425272c20776169745f696e666f2c202727292c2027222c20272c202043415345205748454e206576656e745f6e616d65204c494b452027776169742f696f2f66696c652527205448454e20202773686170653d626f782c207374796c653d66696c6c65642c20636f6c6f723d72656427205748454e206576656e745f6e616d65204c494b452027776169742f696f2f7461626c652527205448454e20202773686170653d626f782c207374796c653d66696c6c65642c20636f6c6f723d677265656e27205748454e206576656e745f6e616d65204c494b452027776169742f696f2f736f636b65742527205448454e202773686170653d626f782c207374796c653d66696c6c65642c20636f6c6f723d79656c6c6f7727205748454e206576656e745f6e616d65204c494b452027776169742f73796e63682f6d757465782527205448454e20277374796c653d66696c6c65642c20636f6c6f723d6c69676874736b79626c756527205748454e206576656e745f6e616d65204c494b452027776169742f73796e63682f636f6e642527205448454e20277374796c653d66696c6c65642c20636f6c6f723d6461726b736561677265656e3327205748454e206576656e745f6e616d65204c494b452027776169742f73796e63682f72776c6f636b2527205448454e20277374796c653d66696c6c65642c20636f6c6f723d6f726368696427205748454e206576656e745f6e616d65204c494b452027776169742f73796e63682f73786c6f636b2527205448454e20277374796c653d66696c6c65642c20636f6c6f723d70616c6576696f6c65747265642720205748454e206576656e745f6e616d65204c494b452027776169742f6c6f636b2527205448454e202773686170653d626f782c207374796c653d66696c6c65642c20636f6c6f723d74616e27205748454e206576656e745f6e616d65204c494b45202773746174656d656e742f2527205448454e20434f4e434154282773686170653d626f782c207374796c653d626f6c64272c2043415345205748454e206576656e745f6e616d65204c494b45202773746174656d656e742f636f6d2f2527205448454e2027207374796c653d66696c6c65642c20636f6c6f723d6461726b736561677265656e2720454c5345204946282874696d65725f776169742f3130303030303030303030303029203e2040406c6f6e675f71756572795f74696d652c202027207374796c653d66696c6c65642c20636f6c6f723d726564272c202027207374796c653d66696c6c65642c20636f6c6f723d6c69676874626c7565272920454e442029205748454e206576656e745f6e616d65204c494b4520277472616e73616374696f6e27205448454e202773686170653d626f782c207374796c653d66696c6c65642c20636f6c6f723d6c69676874626c75653327205748454e206576656e745f6e616d65204c494b45202773746167652f2527205448454e20277374796c653d66696c6c65642c20636f6c6f723d736c617465677261793327205748454e206576656e745f6e616d65204c494b4520272569646c652527205448454e202773686170653d626f782c207374796c653d66696c6c65642c20636f6c6f723d66697265627269636b332720454c534520272720454e442c20275d3b5c6e272029206576656e742c206576656e745f69642046524f4d2028202853454c454354207468726561645f69642c206576656e745f69642c206576656e745f6e616d652c2074696d65725f776169742c2074696d65725f73746172742c206e657374696e675f6576656e745f69642c20434f4e43415428277472785f69643a20272c202049464e554c4c287472785f69642c202727292c20275c5c6e272c2027677469643a20272c2049464e554c4c28677469642c202727292c20275c5c6e272c202773746174653a20272c2073746174652c20275c5c6e272c20276d6f64653a20272c206163636573735f6d6f64652c20275c5c6e272c202769736f6c6174696f6e3a20272c2069736f6c6174696f6e5f6c6576656c2c20275c5c6e272c20276175746f636f6d6d69743a20272c206175746f636f6d6d69742c20275c5c6e272c202773617665706f696e74733a20272c206e756d6265725f6f665f73617665706f696e74732c20275c5c6e27202920415320776169745f696e666f2046524f4d20706572666f726d616e63655f736368656d612e6576656e74735f7472616e73616374696f6e735f686973746f72795f6c6f6e67205748455245207468726561645f6964203d20696e5f7468726561645f696420414e44206576656e745f6964203e20765f6d696e5f6576656e745f69642920554e494f4e202853454c454354207468726561645f69642c206576656e745f69642c206576656e745f6e616d652c2074696d65725f776169742c2074696d65725f73746172742c206e657374696e675f6576656e745f69642c2020434f4e434154282773746174656d656e743a20272c2073716c5f746578742c20275c5c6e272c20276572726f72733a20272c206572726f72732c20275c5c6e272c20277761726e696e67733a20272c207761726e696e67732c20275c5c6e272c20276c6f636b2074696d653a20272c207379732e666f726d61745f74696d65286c6f636b5f74696d65292c275c5c6e272c2027726f77732061666665637465643a20272c20726f77735f61666665637465642c20275c5c6e272c2027726f77732073656e743a20272c20726f77735f73656e742c20275c5c6e272c2027726f7773206578616d696e65643a20272c20726f77735f6578616d696e65642c20275c5c6e272c2027746d70207461626c65733a20272c20637265617465645f746d705f7461626c65732c20275c5c6e272c2027746d70206469736b207461626c65733a20272c20637265617465645f746d705f6469736b5f7461626c65732c20275c5c6e27202773656c656374207363616e3a20272c2073656c6563745f7363616e2c20275c5c6e272c202773656c6563742066756c6c206a6f696e3a20272c2073656c6563745f66756c6c5f6a6f696e2c20275c5c6e272c202773656c6563742066756c6c2072616e6765206a6f696e3a20272c2073656c6563745f66756c6c5f72616e67655f6a6f696e2c20275c5c6e272c202773656c6563742072616e67653a20272c2073656c6563745f72616e67652c20275c5c6e272c202773656c6563742072616e676520636865636b3a20272c2073656c6563745f72616e67655f636865636b2c20275c5c6e272c202027736f7274206d65726765207061737365733a20272c20736f72745f6d657267655f7061737365732c20275c5c6e272c2027736f727420726f77733a20272c20736f72745f726f77732c20275c5c6e272c2027736f72742072616e67653a20272c20736f72745f72616e67652c20275c5c6e272c2027736f7274207363616e3a20272c20736f72745f7363616e2c20275c5c6e272c20276e6f20696e64657820757365643a20272c204946286e6f5f696e6465785f757365642c202754525545272c202746414c534527292c20275c5c6e272c20276e6f20676f6f6420696e64657820757365643a20272c204946286e6f5f676f6f645f696e6465785f757365642c202754525545272c202746414c534527292c20275c5c6e27202920415320776169745f696e666f2046524f4d20706572666f726d616e63655f736368656d612e6576656e74735f73746174656d656e74735f686973746f72795f6c6f6e67205748455245207468726561645f6964203d20696e5f7468726561645f696420414e44206576656e745f6964203e20765f6d696e5f6576656e745f69642920554e494f4e202853454c454354207468726561645f69642c206576656e745f69642c206576656e745f6e616d652c2074696d65725f776169742c2074696d65725f73746172742c206e657374696e675f6576656e745f69642c206e756c6c20415320776169745f696e666f2046524f4d20706572666f726d616e63655f736368656d612e6576656e74735f7374616765735f686973746f72795f6c6f6e6720205748455245207468726561645f6964203d20696e5f7468726561645f696420414e44206576656e745f6964203e20765f6d696e5f6576656e745f69642920554e494f4e20202853454c454354207468726561645f69642c206576656e745f69642c2020434f4e434154286576656e745f6e616d652c20204946286576656e745f6e616d65204e4f54204c494b452027776169742f73796e63682f6d7574657825272c2049464e554c4c28434f4e4341542827202d20272c206f7065726174696f6e292c202727292c202727292c20204946286e756d6265725f6f665f6279746573204953204e4f54204e554c4c2c20434f4e434154282720272c206e756d6265725f6f665f62797465732c202720627974657327292c202727292c204946286576656e745f6e616d65204c494b452027776169742f696f2f66696c6525272c20275c5c6e272c202727292c204946286f626a6563745f736368656d61204953204e4f54204e554c4c2c20434f4e43415428275c5c6e4f626a6563743a20272c206f626a6563745f736368656d612c20272e27292c202727292c20204946286f626a6563745f6e616d65204953204e4f54204e554c4c2c2020494620286576656e745f6e616d65204c494b452027776169742f696f2f736f636b657425272c20434f4e43415428275c5c6e272c20494620286f626a6563745f6e616d65204c494b4520273a3025272c204040736f636b65742c206f626a6563745f6e616d6529292c206f626a6563745f6e616d65292c20272720292c20494628696e6465785f6e616d65204953204e4f54204e554c4c2c20434f4e434154282720496e6465783a20272c20696e6465785f6e616d65292c202727292c20275c5c6e272029204153206576656e745f6e616d652c2074696d65725f776169742c2074696d65725f73746172742c206e657374696e675f6576656e745f69642c20736f7572636520415320776169745f696e666f2046524f4d20706572666f726d616e63655f736368656d612e6576656e74735f77616974735f686973746f72795f6c6f6e67205748455245207468726561645f6964203d20696e5f7468726561645f696420414e44206576656e745f6964203e20765f6d696e5f6576656e745f6964292029206576656e747320204f52444552204259206576656e745f69643b204445434c41524520434f4e54494e55452048414e444c455220464f52204e4f5420464f554e442053455420765f646f6e65203d20545255453b202053455420406c6f675f62696e203a3d20404073716c5f6c6f675f62696e3b205345542073716c5f6c6f675f62696e203d20303b202053454c45435420494e535452554d454e54454420494e544f20765f746869735f7468726561645f656e616265642046524f4d20706572666f726d616e63655f736368656d612e746872656164732057484552452050524f434553534c4953545f4944203d20434f4e4e454354494f4e5f494428293b2043414c4c207379732e70735f73657475705f64697361626c655f74687265616428434f4e4e454354494f4e5f49442829293b202049462028696e5f6175746f5f736574757029205448454e2043414c4c207379732e70735f73657475705f736176652830293b202044454c4554452046524f4d20706572666f726d616e63655f736368656d612e73657475705f6163746f72733b202055504441544520706572666f726d616e63655f736368656d612e746872656164732053455420494e535452554d454e544544203d204946285448524541445f4944203d20696e5f7468726561645f69642c2027594553272c20274e4f27293b202055504441544520706572666f726d616e63655f736368656d612e73657475705f636f6e73756d6572732053455420454e41424c4544203d202759455327205748455245204e414d45204e4f54204c494b452027255c5f686973746f7279273b202055504441544520706572666f726d616e63655f736368656d612e73657475705f696e737472756d656e74732053455420454e41424c4544203d2027594553272c2054494d45442020203d2027594553273b20454e442049463b202049462028696e5f73746172745f667265736829205448454e205452554e4341544520706572666f726d616e63655f736368656d612e6576656e74735f7472616e73616374696f6e735f686973746f72795f6c6f6e673b205452554e4341544520706572666f726d616e63655f736368656d612e6576656e74735f73746174656d656e74735f686973746f72795f6c6f6e673b205452554e4341544520706572666f726d616e63655f736368656d612e6576656e74735f7374616765735f686973746f72795f6c6f6e673b205452554e4341544520706572666f726d616e63655f736368656d612e6576656e74735f77616974735f686973746f72795f6c6f6e673b20454e442049463b202044524f502054454d504f52415259205441424c452049462045584953545320746d705f6576656e74733b204352454154452054454d504f52415259205441424c4520746d705f6576656e74732028206576656e745f696420626967696e7420756e7369676e6564204e4f54204e554c4c2c206576656e74206c6f6e67626c6f622c205052494d415259204b455920286576656e745f69642920293b2020494e5345525420494e544f20746d705f6576656e74732056414c5545532028302c20434f4e434154282764696772617068206576656e7473207b2072616e6b6469723d4c523b206e6f64657365703d302e31303b5c6e272c20272f2f20537461636b2063726561746564202e2e2e2e2e3a20272c204e4f5728292c20275c6e272c20272f2f204d7953514c2076657273696f6e202e2e2e2e2e3a20272c2056455253494f4e28292c20275c6e272c20272f2f204d7953514c20686f73746e616d65202e2e2e2e3a20272c204040686f73746e616d652c20275c6e272c20272f2f204d7953514c20706f7274202e2e2e2e2e2e2e2e3a20272c204040706f72742c20275c6e272c20272f2f204d7953514c20736f636b6574202e2e2e2e2e2e3a20272c204040736f636b65742c20275c6e272c20272f2f204d7953514c2075736572202e2e2e2e2e2e2e2e3a20272c2043555252454e545f5553455228292c20275c6e2729293b202053454c45435420434f4e43415428274461746120636f6c6c656374696f6e207374617274696e6720666f72205448524541445f4944203d20272c20696e5f7468726561645f6964292041532027496e666f273b202053455420765f6d696e5f6576656e745f6964203d20302c20765f737461727420202020202020203d20554e49585f54494d455354414d5028292c20696e5f696e74657276616c202020203d2049464e554c4c28696e5f696e74657276616c2c20312e3030292c20696e5f6d61785f72756e74696d65203d2049464e554c4c28696e5f6d61785f72756e74696d652c2036302e3030293b20205748494c452028765f72756e74696d65203c20696e5f6d61785f72756e74696d6520414e44202853454c45435420494e535452554d454e5445442046524f4d20706572666f726d616e63655f736368656d612e74687265616473205748455245205448524541445f4944203d20696e5f7468726561645f696429203d2027594553272920444f2053455420765f646f6e65203d2046414c53453b204f50454e20635f737461636b3b20635f737461636b5f6c6f6f703a204c4f4f5020464554434820635f737461636b20494e544f20765f6576656e742c20765f6d696e5f6576656e745f69643b20494620765f646f6e65205448454e204c4541564520635f737461636b5f6c6f6f703b20454e442049463b2020494620284c454e47544828765f6576656e7429203e203029205448454e20494e5345525420494e544f20746d705f6576656e74732056414c5545532028765f6d696e5f6576656e745f69642c20765f6576656e74293b20454e442049463b20454e44204c4f4f503b20434c4f534520635f737461636b3b202053454c45435420534c45455028696e5f696e74657276616c2920494e544f2040736c6565703b2053455420765f72756e74696d65203d2028554e49585f54494d455354414d502829202d20765f7374617274293b20454e44205748494c453b2020494e5345525420494e544f20746d705f6576656e74732056414c5545532028765f6d696e5f6576656e745f69642b312c20277d27293b202053455420407175657279203d20434f4e434154282753454c454354206576656e742046524f4d20746d705f6576656e7473204f52444552204259206576656e745f696420494e544f204f555446494c45202727272c20696e5f6f757466696c652c20272727204649454c445320455343415045442042592027272727204c494e4553205445524d494e41544544204259202727272727293b20505245504152452073746d745f6f75747075742046524f4d204071756572793b20455845435554452073746d745f6f75747075743b204445414c4c4f4341544520505245504152452073746d745f6f75747075743b202053454c45435420434f4e4341542827537461636b207472616365207772697474656e20746f20272c20696e5f6f757466696c65292041532027496e666f273b2053454c45435420434f4e4341542827646f74202d54706466202d6f202f746d702f737461636b5f272c20696e5f7468726561645f69642c20272e70646620272c20696e5f6f757466696c65292041532027436f6e7665727420746f20504446273b2053454c45435420434f4e4341542827646f74202d54706e67202d6f202f746d702f737461636b5f272c20696e5f7468726561645f69642c20272e706e6720272c20696e5f6f757466696c65292041532027436f6e7665727420746f20504e47273b2044524f502054454d504f52415259205441424c4520746d705f6576656e74733b202049462028696e5f6175746f5f736574757029205448454e2043414c4c207379732e70735f73657475705f72656c6f61645f736176656428293b20454e442049463b2049462028765f746869735f7468726561645f656e61626564203d20275945532729205448454e2043414c4c207379732e70735f73657475705f656e61626c655f74687265616428434f4e4e454354494f4e5f49442829293b20454e442049463b20205345542073716c5f6c6f675f62696e203d20406c6f675f62696e3b20454e44, 'mysql.sys@localhost', '2018-07-09 10:50:31', '2018-07-09 10:50:31', '', '\n Description\n \n Dumps all data within Performance Schema for an instrumented thread,\n to create a DOT formatted graph file. \n \n Each resultset returned from the procedure should be used for a complete graph\n \n Requires the SUPER privilege for \"SET sql_log_bin = 0;\".\n \n Parameters\n \n in_thread_id (BIGINT UNSIGNED):\n The thread that you would like a stack trace for\n in_outfile  (VARCHAR(255)):\n The filename the dot file will be written to\n in_max_runtime (DECIMAL(20,2)):\n The maximum time to keep collecting data.\n Use NULL to get the default which is 60 seconds.\n in_interval (DECIMAL(20,2)): \n How long to sleep between data collections. \n Use NULL to get the default which is 1 second.\n in_start_fresh (BOOLEAN):\n Whether to reset all Performance Schema data before tracing.\n in_auto_setup (BOOLEAN):\n Whether to disable all other threads and enable all consumers/instruments. \n This will also reset the settings at the end of the run.\n in_debug (BOOLEAN):\n Whether you would like to include file:lineno in the graph\n \n Example\n \n mysql> CALL sys.ps_trace_thread(25, CONCAT(\'/tmp/stack-\', REPLACE(NOW(), \' \', \'-\'), \'.dot\'), NULL, NULL, TRUE, TRUE, TRUE);\n +-------------------+\n | summary           |\n +-------------------+\n | Disabled 1 thread |\n +-------------------+\n 1 row in set (0.00 sec)\n \n +---------------------------------------------+\n | Info                                        |\n +---------------------------------------------+\n | Data collection starting for THREAD_ID = 25 |\n +---------------------------------------------+\n 1 row in set (0.03 sec)\n \n +-----------------------------------------------------------+\n | Info                                                      |\n +-----------------------------------------------------------+\n | Stack trace written to /tmp/stack-2014-02-16-21:18:41.dot |\n +-----------------------------------------------------------+\n 1 row in set (60.07 sec)\n \n +-------------------------------------------------------------------+\n | Convert to PDF                                                    |\n +-------------------------------------------------------------------+\n | dot -Tpdf -o /tmp/stack_25.pdf /tmp/stack-2014-02-16-21:18:41.dot |\n +-------------------------------------------------------------------+\n 1 row in set (60.07 sec)\n \n +-------------------------------------------------------------------+\n | Convert to PNG                                                    |\n +-------------------------------------------------------------------+\n | dot -Tpng -o /tmp/stack_25.png /tmp/stack-2014-02-16-21:18:41.dot |\n +-------------------------------------------------------------------+\n 1 row in set (60.07 sec)\n \n +------------------+\n | summary          |\n +------------------+\n | Enabled 1 thread |\n +------------------+\n 1 row in set (60.32 sec)\n ', 'utf8', 'utf8_general_ci', 'utf8_general_ci', 0x424547494e204445434c41524520765f646f6e6520626f6f6c2044454641554c542046414c53453b204445434c41524520765f73746172742c20765f72756e74696d6520444543494d414c2832302c32292044454641554c5420302e303b204445434c41524520765f6d696e5f6576656e745f696420626967696e7420756e7369676e65642044454641554c5420303b204445434c41524520765f746869735f7468726561645f656e6162656420454e554d2827594553272c20274e4f27293b204445434c41524520765f6576656e74206c6f6e67746578743b204445434c41524520635f737461636b20435552534f5220464f522053454c45435420434f4e434154284946286e657374696e675f6576656e745f6964204953204e4f54204e554c4c2c20434f4e434154286e657374696e675f6576656e745f69642c2027202d3e2027292c202727292c20206576656e745f69642c20273b20272c206576656e745f69642c2027205b6c6162656c3d22272c202728272c207379732e666f726d61745f74696d652874696d65725f77616974292c20272920272c20494620286576656e745f6e616d65204e4f54204c494b452027776169742f696f25272c2020535542535452494e475f494e444558286576656e745f6e616d652c20272f272c202d32292c2020494620286576656e745f6e616d65204e4f54204c494b452027776169742f696f2f66696c652527204f52206576656e745f6e616d65204e4f54204c494b452027776169742f696f2f736f636b657425272c20535542535452494e475f494e444558286576656e745f6e616d652c20272f272c202d34292c206576656e745f6e616d652920292c20494620286576656e745f6e616d65204c494b4520277472616e73616374696f6e272c2049464e554c4c28434f4e43415428275c6e272c20776169745f696e666f292c202727292c202727292c20494620286576656e745f6e616d65204c494b45202773746174656d656e742f25272c2049464e554c4c28434f4e43415428275c6e272c20776169745f696e666f292c202727292c202727292c2049462028696e5f646562756720414e44206576656e745f6e616d65204c494b4520277761697425272c20776169745f696e666f2c202727292c2027222c20272c202043415345205748454e206576656e745f6e616d65204c494b452027776169742f696f2f66696c652527205448454e20202773686170653d626f782c207374796c653d66696c6c65642c20636f6c6f723d72656427205748454e206576656e745f6e616d65204c494b452027776169742f696f2f7461626c652527205448454e20202773686170653d626f782c207374796c653d66696c6c65642c20636f6c6f723d677265656e27205748454e206576656e745f6e616d65204c494b452027776169742f696f2f736f636b65742527205448454e202773686170653d626f782c207374796c653d66696c6c65642c20636f6c6f723d79656c6c6f7727205748454e206576656e745f6e616d65204c494b452027776169742f73796e63682f6d757465782527205448454e20277374796c653d66696c6c65642c20636f6c6f723d6c69676874736b79626c756527205748454e206576656e745f6e616d65204c494b452027776169742f73796e63682f636f6e642527205448454e20277374796c653d66696c6c65642c20636f6c6f723d6461726b736561677265656e3327205748454e206576656e745f6e616d65204c494b452027776169742f73796e63682f72776c6f636b2527205448454e20277374796c653d66696c6c65642c20636f6c6f723d6f726368696427205748454e206576656e745f6e616d65204c494b452027776169742f73796e63682f73786c6f636b2527205448454e20277374796c653d66696c6c65642c20636f6c6f723d70616c6576696f6c65747265642720205748454e206576656e745f6e616d65204c494b452027776169742f6c6f636b2527205448454e202773686170653d626f782c207374796c653d66696c6c65642c20636f6c6f723d74616e27205748454e206576656e745f6e616d65204c494b45202773746174656d656e742f2527205448454e20434f4e434154282773686170653d626f782c207374796c653d626f6c64272c2043415345205748454e206576656e745f6e616d65204c494b45202773746174656d656e742f636f6d2f2527205448454e2027207374796c653d66696c6c65642c20636f6c6f723d6461726b736561677265656e2720454c5345204946282874696d65725f776169742f3130303030303030303030303029203e2040406c6f6e675f71756572795f74696d652c202027207374796c653d66696c6c65642c20636f6c6f723d726564272c202027207374796c653d66696c6c65642c20636f6c6f723d6c69676874626c7565272920454e442029205748454e206576656e745f6e616d65204c494b4520277472616e73616374696f6e27205448454e202773686170653d626f782c207374796c653d66696c6c65642c20636f6c6f723d6c69676874626c75653327205748454e206576656e745f6e616d65204c494b45202773746167652f2527205448454e20277374796c653d66696c6c65642c20636f6c6f723d736c617465677261793327205748454e206576656e745f6e616d65204c494b4520272569646c652527205448454e202773686170653d626f782c207374796c653d66696c6c65642c20636f6c6f723d66697265627269636b332720454c534520272720454e442c20275d3b0a272029206576656e742c206576656e745f69642046524f4d2028202853454c454354207468726561645f69642c206576656e745f69642c206576656e745f6e616d652c2074696d65725f776169742c2074696d65725f73746172742c206e657374696e675f6576656e745f69642c20434f4e43415428277472785f69643a20272c202049464e554c4c287472785f69642c202727292c20275c6e272c2027677469643a20272c2049464e554c4c28677469642c202727292c20275c6e272c202773746174653a20272c2073746174652c20275c6e272c20276d6f64653a20272c206163636573735f6d6f64652c20275c6e272c202769736f6c6174696f6e3a20272c2069736f6c6174696f6e5f6c6576656c2c20275c6e272c20276175746f636f6d6d69743a20272c206175746f636f6d6d69742c20275c6e272c202773617665706f696e74733a20272c206e756d6265725f6f665f73617665706f696e74732c20275c6e27202920415320776169745f696e666f2046524f4d20706572666f726d616e63655f736368656d612e6576656e74735f7472616e73616374696f6e735f686973746f72795f6c6f6e67205748455245207468726561645f6964203d20696e5f7468726561645f696420414e44206576656e745f6964203e20765f6d696e5f6576656e745f69642920554e494f4e202853454c454354207468726561645f69642c206576656e745f69642c206576656e745f6e616d652c2074696d65725f776169742c2074696d65725f73746172742c206e657374696e675f6576656e745f69642c2020434f4e434154282773746174656d656e743a20272c2073716c5f746578742c20275c6e272c20276572726f72733a20272c206572726f72732c20275c6e272c20277761726e696e67733a20272c207761726e696e67732c20275c6e272c20276c6f636b2074696d653a20272c207379732e666f726d61745f74696d65286c6f636b5f74696d65292c275c6e272c2027726f77732061666665637465643a20272c20726f77735f61666665637465642c20275c6e272c2027726f77732073656e743a20272c20726f77735f73656e742c20275c6e272c2027726f7773206578616d696e65643a20272c20726f77735f6578616d696e65642c20275c6e272c2027746d70207461626c65733a20272c20637265617465645f746d705f7461626c65732c20275c6e272c2027746d70206469736b207461626c65733a20272c20637265617465645f746d705f6469736b5f7461626c65732c20275c6e27202773656c656374207363616e3a20272c2073656c6563745f7363616e2c20275c6e272c202773656c6563742066756c6c206a6f696e3a20272c2073656c6563745f66756c6c5f6a6f696e2c20275c6e272c202773656c6563742066756c6c2072616e6765206a6f696e3a20272c2073656c6563745f66756c6c5f72616e67655f6a6f696e2c20275c6e272c202773656c6563742072616e67653a20272c2073656c6563745f72616e67652c20275c6e272c202773656c6563742072616e676520636865636b3a20272c2073656c6563745f72616e67655f636865636b2c20275c6e272c202027736f7274206d65726765207061737365733a20272c20736f72745f6d657267655f7061737365732c20275c6e272c2027736f727420726f77733a20272c20736f72745f726f77732c20275c6e272c2027736f72742072616e67653a20272c20736f72745f72616e67652c20275c6e272c2027736f7274207363616e3a20272c20736f72745f7363616e2c20275c6e272c20276e6f20696e64657820757365643a20272c204946286e6f5f696e6465785f757365642c202754525545272c202746414c534527292c20275c6e272c20276e6f20676f6f6420696e64657820757365643a20272c204946286e6f5f676f6f645f696e6465785f757365642c202754525545272c202746414c534527292c20275c6e27202920415320776169745f696e666f2046524f4d20706572666f726d616e63655f736368656d612e6576656e74735f73746174656d656e74735f686973746f72795f6c6f6e67205748455245207468726561645f6964203d20696e5f7468726561645f696420414e44206576656e745f6964203e20765f6d696e5f6576656e745f69642920554e494f4e202853454c454354207468726561645f69642c206576656e745f69642c206576656e745f6e616d652c2074696d65725f776169742c2074696d65725f73746172742c206e657374696e675f6576656e745f69642c206e756c6c20415320776169745f696e666f2046524f4d20706572666f726d616e63655f736368656d612e6576656e74735f7374616765735f686973746f72795f6c6f6e6720205748455245207468726561645f6964203d20696e5f7468726561645f696420414e44206576656e745f6964203e20765f6d696e5f6576656e745f69642920554e494f4e20202853454c454354207468726561645f69642c206576656e745f69642c2020434f4e434154286576656e745f6e616d652c20204946286576656e745f6e616d65204e4f54204c494b452027776169742f73796e63682f6d7574657825272c2049464e554c4c28434f4e4341542827202d20272c206f7065726174696f6e292c202727292c202727292c20204946286e756d6265725f6f665f6279746573204953204e4f54204e554c4c2c20434f4e434154282720272c206e756d6265725f6f665f62797465732c202720627974657327292c202727292c204946286576656e745f6e616d65204c494b452027776169742f696f2f66696c6525272c20275c6e272c202727292c204946286f626a6563745f736368656d61204953204e4f54204e554c4c2c20434f4e43415428275c6e4f626a6563743a20272c206f626a6563745f736368656d612c20272e27292c202727292c20204946286f626a6563745f6e616d65204953204e4f54204e554c4c2c2020494620286576656e745f6e616d65204c494b452027776169742f696f2f736f636b657425272c20434f4e43415428275c6e272c20494620286f626a6563745f6e616d65204c494b4520273a3025272c204040736f636b65742c206f626a6563745f6e616d6529292c206f626a6563745f6e616d65292c20272720292c20494628696e6465785f6e616d65204953204e4f54204e554c4c2c20434f4e434154282720496e6465783a20272c20696e6465785f6e616d65292c202727292c20275c6e272029204153206576656e745f6e616d652c2074696d65725f776169742c2074696d65725f73746172742c206e657374696e675f6576656e745f69642c20736f7572636520415320776169745f696e666f2046524f4d20706572666f726d616e63655f736368656d612e6576656e74735f77616974735f686973746f72795f6c6f6e67205748455245207468726561645f6964203d20696e5f7468726561645f696420414e44206576656e745f6964203e20765f6d696e5f6576656e745f6964292029206576656e747320204f52444552204259206576656e745f69643b204445434c41524520434f4e54494e55452048414e444c455220464f52204e4f5420464f554e442053455420765f646f6e65203d20545255453b202053455420406c6f675f62696e203a3d20404073716c5f6c6f675f62696e3b205345542073716c5f6c6f675f62696e203d20303b202053454c45435420494e535452554d454e54454420494e544f20765f746869735f7468726561645f656e616265642046524f4d20706572666f726d616e63655f736368656d612e746872656164732057484552452050524f434553534c4953545f4944203d20434f4e4e454354494f4e5f494428293b2043414c4c207379732e70735f73657475705f64697361626c655f74687265616428434f4e4e454354494f4e5f49442829293b202049462028696e5f6175746f5f736574757029205448454e2043414c4c207379732e70735f73657475705f736176652830293b202044454c4554452046524f4d20706572666f726d616e63655f736368656d612e73657475705f6163746f72733b202055504441544520706572666f726d616e63655f736368656d612e746872656164732053455420494e535452554d454e544544203d204946285448524541445f4944203d20696e5f7468726561645f69642c2027594553272c20274e4f27293b202055504441544520706572666f726d616e63655f736368656d612e73657475705f636f6e73756d6572732053455420454e41424c4544203d202759455327205748455245204e414d45204e4f54204c494b452027255c5f686973746f7279273b202055504441544520706572666f726d616e63655f736368656d612e73657475705f696e737472756d656e74732053455420454e41424c4544203d2027594553272c2054494d45442020203d2027594553273b20454e442049463b202049462028696e5f73746172745f667265736829205448454e205452554e4341544520706572666f726d616e63655f736368656d612e6576656e74735f7472616e73616374696f6e735f686973746f72795f6c6f6e673b205452554e4341544520706572666f726d616e63655f736368656d612e6576656e74735f73746174656d656e74735f686973746f72795f6c6f6e673b205452554e4341544520706572666f726d616e63655f736368656d612e6576656e74735f7374616765735f686973746f72795f6c6f6e673b205452554e4341544520706572666f726d616e63655f736368656d612e6576656e74735f77616974735f686973746f72795f6c6f6e673b20454e442049463b202044524f502054454d504f52415259205441424c452049462045584953545320746d705f6576656e74733b204352454154452054454d504f52415259205441424c4520746d705f6576656e74732028206576656e745f696420626967696e7420756e7369676e6564204e4f54204e554c4c2c206576656e74206c6f6e67626c6f622c205052494d415259204b455920286576656e745f69642920293b2020494e5345525420494e544f20746d705f6576656e74732056414c5545532028302c20434f4e434154282764696772617068206576656e7473207b2072616e6b6469723d4c523b206e6f64657365703d302e31303b0a272c20272f2f20537461636b2063726561746564202e2e2e2e2e3a20272c204e4f5728292c20270a272c20272f2f204d7953514c2076657273696f6e202e2e2e2e2e3a20272c2056455253494f4e28292c20270a272c20272f2f204d7953514c20686f73746e616d65202e2e2e2e3a20272c204040686f73746e616d652c20270a272c20272f2f204d7953514c20706f7274202e2e2e2e2e2e2e2e3a20272c204040706f72742c20270a272c20272f2f204d7953514c20736f636b6574202e2e2e2e2e2e3a20272c204040736f636b65742c20270a272c20272f2f204d7953514c2075736572202e2e2e2e2e2e2e2e3a20272c2043555252454e545f5553455228292c20270a2729293b202053454c45435420434f4e43415428274461746120636f6c6c656374696f6e207374617274696e6720666f72205448524541445f4944203d20272c20696e5f7468726561645f6964292041532027496e666f273b202053455420765f6d696e5f6576656e745f6964203d20302c20765f737461727420202020202020203d20554e49585f54494d455354414d5028292c20696e5f696e74657276616c202020203d2049464e554c4c28696e5f696e74657276616c2c20312e3030292c20696e5f6d61785f72756e74696d65203d2049464e554c4c28696e5f6d61785f72756e74696d652c2036302e3030293b20205748494c452028765f72756e74696d65203c20696e5f6d61785f72756e74696d6520414e44202853454c45435420494e535452554d454e5445442046524f4d20706572666f726d616e63655f736368656d612e74687265616473205748455245205448524541445f4944203d20696e5f7468726561645f696429203d2027594553272920444f2053455420765f646f6e65203d2046414c53453b204f50454e20635f737461636b3b20635f737461636b5f6c6f6f703a204c4f4f5020464554434820635f737461636b20494e544f20765f6576656e742c20765f6d696e5f6576656e745f69643b20494620765f646f6e65205448454e204c4541564520635f737461636b5f6c6f6f703b20454e442049463b2020494620284c454e47544828765f6576656e7429203e203029205448454e20494e5345525420494e544f20746d705f6576656e74732056414c5545532028765f6d696e5f6576656e745f69642c20765f6576656e74293b20454e442049463b20454e44204c4f4f503b20434c4f534520635f737461636b3b202053454c45435420534c45455028696e5f696e74657276616c2920494e544f2040736c6565703b2053455420765f72756e74696d65203d2028554e49585f54494d455354414d502829202d20765f7374617274293b20454e44205748494c453b2020494e5345525420494e544f20746d705f6576656e74732056414c5545532028765f6d696e5f6576656e745f69642b312c20277d27293b202053455420407175657279203d20434f4e434154282753454c454354206576656e742046524f4d20746d705f6576656e7473204f52444552204259206576656e745f696420494e544f204f555446494c452027272c20696e5f6f757466696c652c202727204649454c44532045534341504544204259202727204c494e4553205445524d494e4154454420425920272727293b20505245504152452073746d745f6f75747075742046524f4d204071756572793b20455845435554452073746d745f6f75747075743b204445414c4c4f4341544520505245504152452073746d745f6f75747075743b202053454c45435420434f4e4341542827537461636b207472616365207772697474656e20746f20272c20696e5f6f757466696c65292041532027496e666f273b2053454c45435420434f4e4341542827646f74202d54706466202d6f202f746d702f737461636b5f272c20696e5f7468726561645f69642c20272e70646620272c20696e5f6f757466696c65292041532027436f6e7665727420746f20504446273b2053454c45435420434f4e4341542827646f74202d54706e67202d6f202f746d702f737461636b5f272c20696e5f7468726561645f69642c20272e706e6720272c20696e5f6f757466696c65292041532027436f6e7665727420746f20504e47273b2044524f502054454d504f52415259205441424c4520746d705f6576656e74733b202049462028696e5f6175746f5f736574757029205448454e2043414c4c207379732e70735f73657475705f72656c6f61645f736176656428293b20454e442049463b2049462028765f746869735f7468726561645f656e61626564203d20275945532729205448454e2043414c4c207379732e70735f73657475705f656e61626c655f74687265616428434f4e4e454354494f4e5f49442829293b20454e442049463b20205345542073716c5f6c6f675f62696e203d20406c6f675f62696e3b20454e44),
('sys', 'ps_setup_disable_background_threads', 'PROCEDURE', 'ps_setup_disable_background_threads', 'SQL', 'MODIFIES_SQL_DATA', 'NO', 'INVOKER', '', '', 0x424547494e2055504441544520706572666f726d616e63655f736368656d612e746872656164732053455420696e737472756d656e746564203d20274e4f272057484552452074797065203d20274241434b47524f554e44273b202053454c45435420434f4e434154282744697361626c656420272c2040726f7773203a3d20524f575f434f554e5428292c2027206261636b67726f756e6420746872656164272c2049462840726f777320213d20312c202773272c20272729292041532073756d6d6172793b20454e44, 'mysql.sys@localhost', '2018-07-09 10:50:31', '2018-07-09 10:50:31', '', '\n Description\n \n Disable all background thread instrumentation within Performance Schema.\n \n Parameters\n \n None.\n \n Example\n \n mysql> CALL sys.ps_setup_disable_background_threads();\n +--------------------------------+\n | summary                        |\n +--------------------------------+\n | Disabled 18 background threads |\n +--------------------------------+\n 1 row in set (0.00 sec)\n ', 'utf8', 'utf8_general_ci', 'utf8_general_ci', 0x424547494e2055504441544520706572666f726d616e63655f736368656d612e746872656164732053455420696e737472756d656e746564203d20274e4f272057484552452074797065203d20274241434b47524f554e44273b202053454c45435420434f4e434154282744697361626c656420272c2040726f7773203a3d20524f575f434f554e5428292c2027206261636b67726f756e6420746872656164272c2049462840726f777320213d20312c202773272c20272729292041532073756d6d6172793b20454e44),
('sys', 'ps_setup_disable_consumer', 'PROCEDURE', 'ps_setup_disable_consumer', 'SQL', 'MODIFIES_SQL_DATA', 'NO', 'INVOKER', 0x20494e20636f6e73756d65722056415243484152283132382920, '', 0x424547494e2055504441544520706572666f726d616e63655f736368656d612e73657475705f636f6e73756d6572732053455420656e61626c6564203d20274e4f27205748455245206e616d65204c494b4520434f4e434154282725272c20636f6e73756d65722c20272527293b202053454c45435420434f4e434154282744697361626c656420272c2040726f7773203a3d20524f575f434f554e5428292c202720636f6e73756d6572272c2049462840726f777320213d20312c202773272c20272729292041532073756d6d6172793b20454e44, 'mysql.sys@localhost', '2018-07-09 10:50:31', '2018-07-09 10:50:31', '', '\n Description\n \n Disables consumers within Performance Schema \n matching the input pattern.\n \n Parameters\n \n consumer (VARCHAR(128)):\n A LIKE pattern match (using \"%consumer%\") of consumers to disable\n \n Example\n \n To disable all consumers:\n \n mysql> CALL sys.ps_setup_disable_consumer(\'\');\n +--------------------------+\n | summary                  |\n +--------------------------+\n | Disabled 15 consumers    |\n +--------------------------+\n 1 row in set (0.02 sec)\n \n To disable just the event_stage consumers:\n \n mysql> CALL sys.ps_setup_disable_comsumers(\'stage\');\n +------------------------+\n | summary                |\n +------------------------+\n | Disabled 3 consumers   |\n +------------------------+\n 1 row in set (0.00 sec)\n ', 'utf8', 'utf8_general_ci', 'utf8_general_ci', 0x424547494e2055504441544520706572666f726d616e63655f736368656d612e73657475705f636f6e73756d6572732053455420656e61626c6564203d20274e4f27205748455245206e616d65204c494b4520434f4e434154282725272c20636f6e73756d65722c20272527293b202053454c45435420434f4e434154282744697361626c656420272c2040726f7773203a3d20524f575f434f554e5428292c202720636f6e73756d6572272c2049462840726f777320213d20312c202773272c20272729292041532073756d6d6172793b20454e44),
('sys', 'ps_setup_disable_instrument', 'PROCEDURE', 'ps_setup_disable_instrument', 'SQL', 'MODIFIES_SQL_DATA', 'NO', 'INVOKER', 0x20494e20696e5f7061747465726e2056415243484152283132382920, '', 0x424547494e2055504441544520706572666f726d616e63655f736368656d612e73657475705f696e737472756d656e74732053455420656e61626c6564203d20274e4f272c2074696d6564203d20274e4f27205748455245206e616d65204c494b4520434f4e434154282725272c20696e5f7061747465726e2c20272527293b202053454c45435420434f4e434154282744697361626c656420272c2040726f7773203a3d20524f575f434f554e5428292c202720696e737472756d656e74272c2049462840726f777320213d20312c202773272c20272729292041532073756d6d6172793b20454e44, 'mysql.sys@localhost', '2018-07-09 10:50:31', '2018-07-09 10:50:31', '', '\n Description\n \n Disables instruments within Performance Schema \n matching the input pattern.\n \n Parameters\n \n in_pattern (VARCHAR(128)):\n A LIKE pattern match (using \"%in_pattern%\") of events to disable\n \n Example\n \n To disable all mutex instruments:\n \n mysql> CALL sys.ps_setup_disable_instrument(\'wait/synch/mutex\');\n +--------------------------+\n | summary                  |\n +--------------------------+\n | Disabled 155 instruments |\n +--------------------------+\n 1 row in set (0.02 sec)\n \n To disable just a specific TCP/IP based network IO instrument:\n \n mysql> CALL sys.ps_setup_disable_instrument(\'wait/io/socket/sql/server_tcpip_socket\');\n +------------------------+\n | summary                |\n +------------------------+\n | Disabled 1 instruments |\n +------------------------+\n 1 row in set (0.00 sec)\n \n To disable all instruments:\n \n mysql> CALL sys.ps_setup_disable_instrument(\'\');\n +--------------------------+\n | summary                  |\n +--------------------------+\n | Disabled 547 instruments |\n +--------------------------+\n 1 row in set (0.01 sec)\n ', 'utf8', 'utf8_general_ci', 'utf8_general_ci', 0x424547494e2055504441544520706572666f726d616e63655f736368656d612e73657475705f696e737472756d656e74732053455420656e61626c6564203d20274e4f272c2074696d6564203d20274e4f27205748455245206e616d65204c494b4520434f4e434154282725272c20696e5f7061747465726e2c20272527293b202053454c45435420434f4e434154282744697361626c656420272c2040726f7773203a3d20524f575f434f554e5428292c202720696e737472756d656e74272c2049462840726f777320213d20312c202773272c20272729292041532073756d6d6172793b20454e44),
('sys', 'ps_setup_disable_thread', 'PROCEDURE', 'ps_setup_disable_thread', 'SQL', 'MODIFIES_SQL_DATA', 'NO', 'INVOKER', 0x20494e20696e5f636f6e6e656374696f6e5f696420424947494e5420, '', 0x424547494e2055504441544520706572666f726d616e63655f736368656d612e746872656164732053455420696e737472756d656e746564203d20274e4f272057484552452070726f636573736c6973745f6964203d20696e5f636f6e6e656374696f6e5f69643b202053454c45435420434f4e434154282744697361626c656420272c2040726f7773203a3d20524f575f434f554e5428292c202720746872656164272c2049462840726f777320213d20312c202773272c20272729292041532073756d6d6172793b20454e44, 'mysql.sys@localhost', '2018-07-09 10:50:31', '2018-07-09 10:50:31', '', '\n Description\n \n Disable the given connection/thread in Performance Schema.\n \n Parameters\n \n in_connection_id (BIGINT):\n The connection ID (PROCESSLIST_ID from performance_schema.threads\n or the ID shown within SHOW PROCESSLIST)\n \n Example\n \n mysql> CALL sys.ps_setup_disable_thread(3);\n +-------------------+\n | summary           |\n +-------------------+\n | Disabled 1 thread |\n +-------------------+\n 1 row in set (0.01 sec)\n \n To disable the current connection:\n \n mysql> CALL sys.ps_setup_disable_thread(CONNECTION_ID());\n +-------------------+\n | summary           |\n +-------------------+\n | Disabled 1 thread |\n +-------------------+\n 1 row in set (0.00 sec)\n ', 'utf8', 'utf8_general_ci', 'utf8_general_ci', 0x424547494e2055504441544520706572666f726d616e63655f736368656d612e746872656164732053455420696e737472756d656e746564203d20274e4f272057484552452070726f636573736c6973745f6964203d20696e5f636f6e6e656374696f6e5f69643b202053454c45435420434f4e434154282744697361626c656420272c2040726f7773203a3d20524f575f434f554e5428292c202720746872656164272c2049462840726f777320213d20312c202773272c20272729292041532073756d6d6172793b20454e44),
('sys', 'ps_setup_enable_background_threads', 'PROCEDURE', 'ps_setup_enable_background_threads', 'SQL', 'MODIFIES_SQL_DATA', 'NO', 'INVOKER', '', '', 0x424547494e2055504441544520706572666f726d616e63655f736368656d612e746872656164732053455420696e737472756d656e746564203d2027594553272057484552452074797065203d20274241434b47524f554e44273b202053454c45435420434f4e4341542827456e61626c656420272c2040726f7773203a3d20524f575f434f554e5428292c2027206261636b67726f756e6420746872656164272c2049462840726f777320213d20312c202773272c20272729292041532073756d6d6172793b20454e44, 'mysql.sys@localhost', '2018-07-09 10:50:31', '2018-07-09 10:50:31', '', '\n Description\n \n Enable all background thread instrumentation within Performance Schema.\n \n Parameters\n \n None.\n \n Example\n \n mysql> CALL sys.ps_setup_enable_background_threads();\n +-------------------------------+\n | summary                       |\n +-------------------------------+\n | Enabled 18 background threads |\n +-------------------------------+\n 1 row in set (0.00 sec)\n ', 'utf8', 'utf8_general_ci', 'utf8_general_ci', 0x424547494e2055504441544520706572666f726d616e63655f736368656d612e746872656164732053455420696e737472756d656e746564203d2027594553272057484552452074797065203d20274241434b47524f554e44273b202053454c45435420434f4e4341542827456e61626c656420272c2040726f7773203a3d20524f575f434f554e5428292c2027206261636b67726f756e6420746872656164272c2049462840726f777320213d20312c202773272c20272729292041532073756d6d6172793b20454e44),
('sys', 'ps_setup_enable_consumer', 'PROCEDURE', 'ps_setup_enable_consumer', 'SQL', 'MODIFIES_SQL_DATA', 'NO', 'INVOKER', 0x20494e20636f6e73756d65722056415243484152283132382920, '', 0x424547494e2055504441544520706572666f726d616e63655f736368656d612e73657475705f636f6e73756d6572732053455420656e61626c6564203d202759455327205748455245206e616d65204c494b4520434f4e434154282725272c20636f6e73756d65722c20272527293b202053454c45435420434f4e4341542827456e61626c656420272c2040726f7773203a3d20524f575f434f554e5428292c202720636f6e73756d6572272c2049462840726f777320213d20312c202773272c20272729292041532073756d6d6172793b20454e44, 'mysql.sys@localhost', '2018-07-09 10:50:31', '2018-07-09 10:50:31', '', '\n Description\n \n Enables consumers within Performance Schema \n matching the input pattern.\n \n Parameters\n \n consumer (VARCHAR(128)):\n A LIKE pattern match (using \"%consumer%\") of consumers to enable\n \n Example\n \n To enable all consumers:\n \n mysql> CALL sys.ps_setup_enable_consumer(\'\');\n +-------------------------+\n | summary                 |\n +-------------------------+\n | Enabled 10 consumers    |\n +-------------------------+\n 1 row in set (0.02 sec)\n \n Query OK, 0 rows affected (0.02 sec)\n \n To enable just \"waits\" consumers:\n \n mysql> CALL sys.ps_setup_enable_consumer(\'waits\');\n +-----------------------+\n | summary               |\n +-----------------------+\n | Enabled 3 consumers   |\n +-----------------------+\n 1 row in set (0.00 sec)\n \n Query OK, 0 rows affected (0.00 sec)\n ', 'utf8', 'utf8_general_ci', 'utf8_general_ci', 0x424547494e2055504441544520706572666f726d616e63655f736368656d612e73657475705f636f6e73756d6572732053455420656e61626c6564203d202759455327205748455245206e616d65204c494b4520434f4e434154282725272c20636f6e73756d65722c20272527293b202053454c45435420434f4e4341542827456e61626c656420272c2040726f7773203a3d20524f575f434f554e5428292c202720636f6e73756d6572272c2049462840726f777320213d20312c202773272c20272729292041532073756d6d6172793b20454e44),
('sys', 'ps_setup_enable_instrument', 'PROCEDURE', 'ps_setup_enable_instrument', 'SQL', 'MODIFIES_SQL_DATA', 'NO', 'INVOKER', 0x20494e20696e5f7061747465726e2056415243484152283132382920, '', 0x424547494e2055504441544520706572666f726d616e63655f736368656d612e73657475705f696e737472756d656e74732053455420656e61626c6564203d2027594553272c2074696d6564203d202759455327205748455245206e616d65204c494b4520434f4e434154282725272c20696e5f7061747465726e2c20272527293b202053454c45435420434f4e4341542827456e61626c656420272c2040726f7773203a3d20524f575f434f554e5428292c202720696e737472756d656e74272c2049462840726f777320213d20312c202773272c20272729292041532073756d6d6172793b20454e44, 'mysql.sys@localhost', '2018-07-09 10:50:31', '2018-07-09 10:50:31', '', '\n Description\n \n Enables instruments within Performance Schema \n matching the input pattern.\n \n Parameters\n \n in_pattern (VARCHAR(128)):\n A LIKE pattern match (using \"%in_pattern%\") of events to enable\n \n Example\n \n To enable all mutex instruments:\n \n mysql> CALL sys.ps_setup_enable_instrument(\'wait/synch/mutex\');\n +-------------------------+\n | summary                 |\n +-------------------------+\n | Enabled 155 instruments |\n +-------------------------+\n 1 row in set (0.02 sec)\n \n Query OK, 0 rows affected (0.02 sec)\n \n To enable just a specific TCP/IP based network IO instrument:\n \n mysql> CALL sys.ps_setup_enable_instrument(\'wait/io/socket/sql/server_tcpip_socket\');\n +-----------------------+\n | summary               |\n +-----------------------+\n | Enabled 1 instruments |\n +-----------------------+\n 1 row in set (0.00 sec)\n \n Query OK, 0 rows affected (0.00 sec)\n \n To enable all instruments:\n \n mysql> CALL sys.ps_setup_enable_instrument(\'\');\n +-------------------------+\n | summary                 |\n +-------------------------+\n | Enabled 547 instruments |\n +-------------------------+\n 1 row in set (0.01 sec)\n \n Query OK, 0 rows affected (0.01 sec)\n ', 'utf8', 'utf8_general_ci', 'utf8_general_ci', 0x424547494e2055504441544520706572666f726d616e63655f736368656d612e73657475705f696e737472756d656e74732053455420656e61626c6564203d2027594553272c2074696d6564203d202759455327205748455245206e616d65204c494b4520434f4e434154282725272c20696e5f7061747465726e2c20272527293b202053454c45435420434f4e4341542827456e61626c656420272c2040726f7773203a3d20524f575f434f554e5428292c202720696e737472756d656e74272c2049462840726f777320213d20312c202773272c20272729292041532073756d6d6172793b20454e44),
('sys', 'ps_setup_enable_thread', 'PROCEDURE', 'ps_setup_enable_thread', 'SQL', 'MODIFIES_SQL_DATA', 'NO', 'INVOKER', 0x20494e20696e5f636f6e6e656374696f6e5f696420424947494e5420, '', 0x424547494e2055504441544520706572666f726d616e63655f736368656d612e746872656164732053455420696e737472756d656e746564203d2027594553272057484552452070726f636573736c6973745f6964203d20696e5f636f6e6e656374696f6e5f69643b202053454c45435420434f4e4341542827456e61626c656420272c2040726f7773203a3d20524f575f434f554e5428292c202720746872656164272c2049462840726f777320213d20312c202773272c20272729292041532073756d6d6172793b20454e44, 'mysql.sys@localhost', '2018-07-09 10:50:31', '2018-07-09 10:50:31', '', '\n Description\n \n Enable the given connection/thread in Performance Schema.\n \n Parameters\n \n in_connection_id (BIGINT):\n The connection ID (PROCESSLIST_ID from performance_schema.threads\n or the ID shown within SHOW PROCESSLIST)\n \n Example\n \n mysql> CALL sys.ps_setup_enable_thread(3);\n +------------------+\n | summary          |\n +------------------+\n | Enabled 1 thread |\n +------------------+\n 1 row in set (0.01 sec)\n \n To enable the current connection:\n \n mysql> CALL sys.ps_setup_enable_thread(CONNECTION_ID());\n +------------------+\n | summary          |\n +------------------+\n | Enabled 1 thread |\n +------------------+\n 1 row in set (0.00 sec)\n ', 'utf8', 'utf8_general_ci', 'utf8_general_ci', 0x424547494e2055504441544520706572666f726d616e63655f736368656d612e746872656164732053455420696e737472756d656e746564203d2027594553272057484552452070726f636573736c6973745f6964203d20696e5f636f6e6e656374696f6e5f69643b202053454c45435420434f4e4341542827456e61626c656420272c2040726f7773203a3d20524f575f434f554e5428292c202720746872656164272c2049462840726f777320213d20312c202773272c20272729292041532073756d6d6172793b20454e44);
INSERT INTO `proc` (`db`, `name`, `type`, `specific_name`, `language`, `sql_data_access`, `is_deterministic`, `security_type`, `param_list`, `returns`, `body`, `definer`, `created`, `modified`, `sql_mode`, `comment`, `character_set_client`, `collation_connection`, `db_collation`, `body_utf8`) VALUES
('sys', 'ps_setup_reload_saved', 'PROCEDURE', 'ps_setup_reload_saved', 'SQL', 'MODIFIES_SQL_DATA', 'NO', 'INVOKER', '', '', 0x424547494e204445434c41524520765f646f6e6520626f6f6c2044454641554c542046414c53453b204445434c41524520765f6c6f636b5f726573756c7420494e543b204445434c41524520765f6c6f636b5f757365645f627920424947494e543b204445434c41524520765f7369676e616c5f6d65737361676520544558543b204445434c41524520455849542048414e444c455220464f522053514c455843455054494f4e20424547494e205349474e414c2053514c53544154452056414c5545202739303030312720534554204d4553534147455f54455854203d2027416e206572726f72206f636375727265642c20776173207379732e70735f73657475705f7361766528292072756e206265666f726520746869732070726f6365647572653f273b20454e443b202053455420406c6f675f62696e203a3d20404073716c5f6c6f675f62696e3b205345542073716c5f6c6f675f62696e203d20303b202053454c4543542049535f555345445f4c4f434b28277379732e70735f73657475705f73617665272920494e544f20765f6c6f636b5f757365645f62793b202049462028765f6c6f636b5f757365645f627920213d20434f4e4e454354494f4e5f4944282929205448454e2053455420765f7369676e616c5f6d657373616765203d20434f4e4341542827546865207379732e70735f73657475705f73617665206c6f636b2069732063757272656e746c79206f776e656420627920272c20765f6c6f636b5f757365645f6279293b205349474e414c2053514c53544154452056414c5545202739303030322720534554204d4553534147455f54455854203d20765f7369676e616c5f6d6573736167653b20454e442049463b202044454c4554452046524f4d20706572666f726d616e63655f736368656d612e73657475705f6163746f72733b20494e5345525420494e544f20706572666f726d616e63655f736368656d612e73657475705f6163746f72732053454c454354202a2046524f4d20746d705f73657475705f6163746f72733b2020424547494e204445434c41524520765f6e616d652076617263686172283634293b204445434c41524520765f656e61626c656420656e756d2827594553272c20274e4f27293b204445434c41524520635f636f6e73756d65727320435552534f5220464f522053454c454354204e414d452c20454e41424c45442046524f4d20746d705f73657475705f636f6e73756d6572733b204445434c41524520434f4e54494e55452048414e444c455220464f52204e4f5420464f554e442053455420765f646f6e65203d20545255453b202053455420765f646f6e65203d2046414c53453b204f50454e20635f636f6e73756d6572733b20635f636f6e73756d6572735f6c6f6f703a204c4f4f5020464554434820635f636f6e73756d65727320494e544f20765f6e616d652c20765f656e61626c65643b20494620765f646f6e65205448454e204c4541564520635f636f6e73756d6572735f6c6f6f703b20454e442049463b202055504441544520706572666f726d616e63655f736368656d612e73657475705f636f6e73756d6572732053455420454e41424c4544203d20765f656e61626c6564205748455245204e414d45203d20765f6e616d653b20454e44204c4f4f503b20434c4f534520635f636f6e73756d6572733b20454e443b202055504441544520706572666f726d616e63655f736368656d612e73657475705f696e737472756d656e747320494e4e4552204a4f494e20746d705f73657475705f696e737472756d656e7473205553494e4720284e414d45292053455420706572666f726d616e63655f736368656d612e73657475705f696e737472756d656e74732e454e41424c4544203d20746d705f73657475705f696e737472756d656e74732e454e41424c45442c20706572666f726d616e63655f736368656d612e73657475705f696e737472756d656e74732e54494d45442020203d20746d705f73657475705f696e737472756d656e74732e54494d45443b20424547494e204445434c41524520765f7468726561645f696420626967696e7420756e7369676e65643b204445434c41524520765f696e737472756d656e74656420656e756d2827594553272c20274e4f27293b204445434c41524520635f7468726561647320435552534f5220464f522053454c454354205448524541445f49442c20494e535452554d454e5445442046524f4d20746d705f746872656164733b204445434c41524520434f4e54494e55452048414e444c455220464f52204e4f5420464f554e442053455420765f646f6e65203d20545255453b202053455420765f646f6e65203d2046414c53453b204f50454e20635f746872656164733b20635f746872656164735f6c6f6f703a204c4f4f5020464554434820635f7468726561647320494e544f20765f7468726561645f69642c20765f696e737472756d656e7465643b20494620765f646f6e65205448454e204c4541564520635f746872656164735f6c6f6f703b20454e442049463b202055504441544520706572666f726d616e63655f736368656d612e746872656164732053455420494e535452554d454e544544203d20765f696e737472756d656e746564205748455245205448524541445f4944203d20765f7468726561645f69643b20454e44204c4f4f503b20434c4f534520635f746872656164733b20454e443b202055504441544520706572666f726d616e63655f736368656d612e746872656164732053455420494e535452554d454e544544203d2049462850524f434553534c4953545f55534552204953204e4f54204e554c4c2c207379732e70735f69735f6163636f756e745f656e61626c65642850524f434553534c4953545f484f53542c2050524f434553534c4953545f55534552292c20275945532729205748455245205448524541445f4944204e4f5420494e202853454c454354205448524541445f49442046524f4d20746d705f74687265616473293b202044524f502054454d504f52415259205441424c4520746d705f73657475705f6163746f72733b2044524f502054454d504f52415259205441424c4520746d705f73657475705f636f6e73756d6572733b2044524f502054454d504f52415259205441424c4520746d705f73657475705f696e737472756d656e74733b2044524f502054454d504f52415259205441424c4520746d705f746872656164733b202053454c4543542052454c454153455f4c4f434b28277379732e70735f73657475705f73617665272920494e544f20765f6c6f636b5f726573756c743b20205345542073716c5f6c6f675f62696e203d20406c6f675f62696e3b2020454e44, 'mysql.sys@localhost', '2018-07-09 10:50:31', '2018-07-09 10:50:31', '', '\n Description\n \n Reloads a saved Performance Schema configuration,\n so that you can alter the setup for debugging purposes, \n but restore it to a previous state.\n \n Use the companion procedure - ps_setup_save(), to \n save a configuration.\n \n Requires the SUPER privilege for \"SET sql_log_bin = 0;\".\n \n Parameters\n \n None.\n \n Example\n \n mysql> CALL sys.ps_setup_save();\n Query OK, 0 rows affected (0.08 sec)\n \n mysql> UPDATE performance_schema.setup_instruments SET enabled = \'YES\', timed = \'YES\';\n Query OK, 547 rows affected (0.40 sec)\n Rows matched: 784  Changed: 547  Warnings: 0\n \n /* Run some tests that need more detailed instrumentation here */\n \n mysql> CALL sys.ps_setup_reload_saved();\n Query OK, 0 rows affected (0.32 sec)\n ', 'utf8', 'utf8_general_ci', 'utf8_general_ci', 0x424547494e204445434c41524520765f646f6e6520626f6f6c2044454641554c542046414c53453b204445434c41524520765f6c6f636b5f726573756c7420494e543b204445434c41524520765f6c6f636b5f757365645f627920424947494e543b204445434c41524520765f7369676e616c5f6d65737361676520544558543b204445434c41524520455849542048414e444c455220464f522053514c455843455054494f4e20424547494e205349474e414c2053514c53544154452056414c5545202739303030312720534554204d4553534147455f54455854203d2027416e206572726f72206f636375727265642c20776173207379732e70735f73657475705f7361766528292072756e206265666f726520746869732070726f6365647572653f273b20454e443b202053455420406c6f675f62696e203a3d20404073716c5f6c6f675f62696e3b205345542073716c5f6c6f675f62696e203d20303b202053454c4543542049535f555345445f4c4f434b28277379732e70735f73657475705f73617665272920494e544f20765f6c6f636b5f757365645f62793b202049462028765f6c6f636b5f757365645f627920213d20434f4e4e454354494f4e5f4944282929205448454e2053455420765f7369676e616c5f6d657373616765203d20434f4e4341542827546865207379732e70735f73657475705f73617665206c6f636b2069732063757272656e746c79206f776e656420627920272c20765f6c6f636b5f757365645f6279293b205349474e414c2053514c53544154452056414c5545202739303030322720534554204d4553534147455f54455854203d20765f7369676e616c5f6d6573736167653b20454e442049463b202044454c4554452046524f4d20706572666f726d616e63655f736368656d612e73657475705f6163746f72733b20494e5345525420494e544f20706572666f726d616e63655f736368656d612e73657475705f6163746f72732053454c454354202a2046524f4d20746d705f73657475705f6163746f72733b2020424547494e204445434c41524520765f6e616d652076617263686172283634293b204445434c41524520765f656e61626c656420656e756d2827594553272c20274e4f27293b204445434c41524520635f636f6e73756d65727320435552534f5220464f522053454c454354204e414d452c20454e41424c45442046524f4d20746d705f73657475705f636f6e73756d6572733b204445434c41524520434f4e54494e55452048414e444c455220464f52204e4f5420464f554e442053455420765f646f6e65203d20545255453b202053455420765f646f6e65203d2046414c53453b204f50454e20635f636f6e73756d6572733b20635f636f6e73756d6572735f6c6f6f703a204c4f4f5020464554434820635f636f6e73756d65727320494e544f20765f6e616d652c20765f656e61626c65643b20494620765f646f6e65205448454e204c4541564520635f636f6e73756d6572735f6c6f6f703b20454e442049463b202055504441544520706572666f726d616e63655f736368656d612e73657475705f636f6e73756d6572732053455420454e41424c4544203d20765f656e61626c6564205748455245204e414d45203d20765f6e616d653b20454e44204c4f4f503b20434c4f534520635f636f6e73756d6572733b20454e443b202055504441544520706572666f726d616e63655f736368656d612e73657475705f696e737472756d656e747320494e4e4552204a4f494e20746d705f73657475705f696e737472756d656e7473205553494e4720284e414d45292053455420706572666f726d616e63655f736368656d612e73657475705f696e737472756d656e74732e454e41424c4544203d20746d705f73657475705f696e737472756d656e74732e454e41424c45442c20706572666f726d616e63655f736368656d612e73657475705f696e737472756d656e74732e54494d45442020203d20746d705f73657475705f696e737472756d656e74732e54494d45443b20424547494e204445434c41524520765f7468726561645f696420626967696e7420756e7369676e65643b204445434c41524520765f696e737472756d656e74656420656e756d2827594553272c20274e4f27293b204445434c41524520635f7468726561647320435552534f5220464f522053454c454354205448524541445f49442c20494e535452554d454e5445442046524f4d20746d705f746872656164733b204445434c41524520434f4e54494e55452048414e444c455220464f52204e4f5420464f554e442053455420765f646f6e65203d20545255453b202053455420765f646f6e65203d2046414c53453b204f50454e20635f746872656164733b20635f746872656164735f6c6f6f703a204c4f4f5020464554434820635f7468726561647320494e544f20765f7468726561645f69642c20765f696e737472756d656e7465643b20494620765f646f6e65205448454e204c4541564520635f746872656164735f6c6f6f703b20454e442049463b202055504441544520706572666f726d616e63655f736368656d612e746872656164732053455420494e535452554d454e544544203d20765f696e737472756d656e746564205748455245205448524541445f4944203d20765f7468726561645f69643b20454e44204c4f4f503b20434c4f534520635f746872656164733b20454e443b202055504441544520706572666f726d616e63655f736368656d612e746872656164732053455420494e535452554d454e544544203d2049462850524f434553534c4953545f55534552204953204e4f54204e554c4c2c207379732e70735f69735f6163636f756e745f656e61626c65642850524f434553534c4953545f484f53542c2050524f434553534c4953545f55534552292c20275945532729205748455245205448524541445f4944204e4f5420494e202853454c454354205448524541445f49442046524f4d20746d705f74687265616473293b202044524f502054454d504f52415259205441424c4520746d705f73657475705f6163746f72733b2044524f502054454d504f52415259205441424c4520746d705f73657475705f636f6e73756d6572733b2044524f502054454d504f52415259205441424c4520746d705f73657475705f696e737472756d656e74733b2044524f502054454d504f52415259205441424c4520746d705f746872656164733b202053454c4543542052454c454153455f4c4f434b28277379732e70735f73657475705f73617665272920494e544f20765f6c6f636b5f726573756c743b20205345542073716c5f6c6f675f62696e203d20406c6f675f62696e3b2020454e44),
('sys', 'ps_setup_reset_to_default', 'PROCEDURE', 'ps_setup_reset_to_default', 'SQL', 'MODIFIES_SQL_DATA', 'NO', 'INVOKER', 0x20494e20696e5f766572626f736520424f4f4c45414e20, '', 0x424547494e2053455420407175657279203d202744454c4554452046524f4d20706572666f726d616e63655f736368656d612e73657475705f6163746f7273205748455245204e4f542028484f5354203d20272725272720414e442055534552203d20272725272720414e4420524f4c45203d20272725272729273b202049462028696e5f766572626f736529205448454e2053454c45435420434f4e4341542827526573657474696e673a2073657475705f6163746f72735c6e272c205245504c414345284071756572792c20272020272c2027272929204153207374617475733b20454e442049463b2020505245504152452072657365745f73746d742046524f4d204071756572793b20455845435554452072657365745f73746d743b204445414c4c4f4341544520505245504152452072657365745f73746d743b202053455420407175657279203d2027494e534552542049474e4f524520494e544f20706572666f726d616e63655f736368656d612e73657475705f6163746f72732056414c554553202827272527272c2027272527272c2027272527272c20272759455327272c202727594553272729273b202049462028696e5f766572626f736529205448454e2053454c45435420434f4e4341542827526573657474696e673a2073657475705f6163746f72735c6e272c205245504c414345284071756572792c20272020272c2027272929204153207374617475733b20454e442049463b2020505245504152452072657365745f73746d742046524f4d204071756572793b20455845435554452072657365745f73746d743b204445414c4c4f4341544520505245504152452072657365745f73746d743b202053455420407175657279203d202755504441544520706572666f726d616e63655f736368656d612e73657475705f696e737472756d656e74732053455420454e41424c4544203d207379732e70735f69735f696e737472756d656e745f64656661756c745f656e61626c6564284e414d45292c2054494d45442020203d207379732e70735f69735f696e737472756d656e745f64656661756c745f74696d6564284e414d4529273b202049462028696e5f766572626f736529205448454e2053454c45435420434f4e4341542827526573657474696e673a2073657475705f696e737472756d656e74735c6e272c205245504c414345284071756572792c20272020272c2027272929204153207374617475733b20454e442049463b2020505245504152452072657365745f73746d742046524f4d204071756572793b20455845435554452072657365745f73746d743b204445414c4c4f4341544520505245504152452072657365745f73746d743b202053455420407175657279203d202755504441544520706572666f726d616e63655f736368656d612e73657475705f636f6e73756d6572732053455420454e41424c4544203d204946284e414d4520494e202827276576656e74735f73746174656d656e74735f63757272656e7427272c2027276576656e74735f7472616e73616374696f6e735f63757272656e7427272c202727676c6f62616c5f696e737472756d656e746174696f6e27272c2027277468726561645f696e737472756d656e746174696f6e27272c20272773746174656d656e74735f6469676573742727292c20272759455327272c2027274e4f272729273b202049462028696e5f766572626f736529205448454e2053454c45435420434f4e4341542827526573657474696e673a2073657475705f636f6e73756d6572735c6e272c205245504c414345284071756572792c20272020272c2027272929204153207374617475733b20454e442049463b2020505245504152452072657365745f73746d742046524f4d204071756572793b20455845435554452072657365745f73746d743b204445414c4c4f4341544520505245504152452072657365745f73746d743b202053455420407175657279203d202744454c4554452046524f4d20706572666f726d616e63655f736368656d612e73657475705f6f626a65637473205748455245204e4f5420284f424a4543545f5459504520494e202827274556454e5427272c20272746554e4354494f4e27272c20272750524f43454455524527272c2027275441424c4527272c2027275452494747455227272920414e44204f424a4543545f4e414d45203d2027272527272020414e4420284f424a4543545f534348454d41203d2027276d7973716c27272020202020202020202020202020414e4420454e41424c4544203d2027274e4f27272020414e442054494d4544203d2027274e4f27272029204f5220284f424a4543545f534348454d41203d202727706572666f726d616e63655f736368656d61272720414e4420454e41424c4544203d2027274e4f27272020414e442054494d4544203d2027274e4f27272029204f5220284f424a4543545f534348454d41203d202727696e666f726d6174696f6e5f736368656d61272720414e4420454e41424c4544203d2027274e4f27272020414e442054494d4544203d2027274e4f27272029204f5220284f424a4543545f534348454d41203d202727252727202020202020202020202020202020202020414e4420454e41424c4544203d202727594553272720414e442054494d4544203d20272759455327272929273b202049462028696e5f766572626f736529205448454e2053454c45435420434f4e4341542827526573657474696e673a2073657475705f6f626a656374735c6e272c205245504c414345284071756572792c20272020272c2027272929204153207374617475733b20454e442049463b2020505245504152452072657365745f73746d742046524f4d204071756572793b20455845435554452072657365745f73746d743b204445414c4c4f4341544520505245504152452072657365745f73746d743b202053455420407175657279203d2027494e534552542049474e4f524520494e544f20706572666f726d616e63655f736368656d612e73657475705f6f626a656374732056414c554553202827274556454e542727202020202c2027276d7973716c2727202020202020202020202020202c2027272527272c2027274e4f2727202c2027274e4f272720292c202827274556454e542727202020202c202727706572666f726d616e63655f736368656d6127272c2027272527272c2027274e4f2727202c2027274e4f272720292c202827274556454e542727202020202c202727696e666f726d6174696f6e5f736368656d6127272c2027272527272c2027274e4f2727202c2027274e4f272720292c202827274556454e542727202020202c20272725272720202020202020202020202020202020202c2027272527272c20272759455327272c2027275945532727292c2028272746554e4354494f4e2727202c2027276d7973716c2727202020202020202020202020202c2027272527272c2027274e4f2727202c2027274e4f272720292c2028272746554e4354494f4e2727202c202727706572666f726d616e63655f736368656d6127272c2027272527272c2027274e4f2727202c2027274e4f272720292c2028272746554e4354494f4e2727202c202727696e666f726d6174696f6e5f736368656d6127272c2027272527272c2027274e4f2727202c2027274e4f272720292c2028272746554e4354494f4e2727202c20272725272720202020202020202020202020202020202c2027272527272c20272759455327272c2027275945532727292c2028272750524f43454455524527272c2027276d7973716c2727202020202020202020202020202c2027272527272c2027274e4f2727202c2027274e4f272720292c2028272750524f43454455524527272c202727706572666f726d616e63655f736368656d6127272c2027272527272c2027274e4f2727202c2027274e4f272720292c2028272750524f43454455524527272c202727696e666f726d6174696f6e5f736368656d6127272c2027272527272c2027274e4f2727202c2027274e4f272720292c2028272750524f43454455524527272c20272725272720202020202020202020202020202020202c2027272527272c20272759455327272c2027275945532727292c202827275441424c452727202020202c2027276d7973716c2727202020202020202020202020202c2027272527272c2027274e4f2727202c2027274e4f272720292c202827275441424c452727202020202c202727706572666f726d616e63655f736368656d6127272c2027272527272c2027274e4f2727202c2027274e4f272720292c202827275441424c452727202020202c202727696e666f726d6174696f6e5f736368656d6127272c2027272527272c2027274e4f2727202c2027274e4f272720292c202827275441424c452727202020202c20272725272720202020202020202020202020202020202c2027272527272c20272759455327272c2027275945532727292c2028272754524947474552272720202c2027276d7973716c2727202020202020202020202020202c2027272527272c2027274e4f2727202c2027274e4f272720292c2028272754524947474552272720202c202727706572666f726d616e63655f736368656d6127272c2027272527272c2027274e4f2727202c2027274e4f272720292c2028272754524947474552272720202c202727696e666f726d6174696f6e5f736368656d6127272c2027272527272c2027274e4f2727202c2027274e4f272720292c2028272754524947474552272720202c20272725272720202020202020202020202020202020202c2027272527272c20272759455327272c202727594553272729273b202049462028696e5f766572626f736529205448454e2053454c45435420434f4e4341542827526573657474696e673a2073657475705f6f626a656374735c6e272c205245504c414345284071756572792c20272020272c2027272929204153207374617475733b20454e442049463b2020505245504152452072657365745f73746d742046524f4d204071756572793b20455845435554452072657365745f73746d743b204445414c4c4f4341544520505245504152452072657365745f73746d743b202053455420407175657279203d202755504441544520706572666f726d616e63655f736368656d612e746872656164732053455420494e535452554d454e544544203d2027275945532727273b202049462028696e5f766572626f736529205448454e2053454c45435420434f4e4341542827526573657474696e673a20746872656164735c6e272c205245504c414345284071756572792c20272020272c2027272929204153207374617475733b20454e442049463b2020505245504152452072657365745f73746d742046524f4d204071756572793b20455845435554452072657365745f73746d743b204445414c4c4f4341544520505245504152452072657365745f73746d743b20454e44, 'mysql.sys@localhost', '2018-07-09 10:50:31', '2018-07-09 10:50:31', '', '\n Description\n \n Resets the Performance Schema setup to the default settings.\n \n Parameters\n \n in_verbose (BOOLEAN):\n Whether to print each setup stage (including the SQL) whilst running.\n \n Example\n \n mysql> CALL sys.ps_setup_reset_to_default(true)\\G\n *************************** 1. row ***************************\n status: Resetting: setup_actors\n DELETE\n FROM performance_schema.setup_actors\n WHERE NOT (HOST = \'%\' AND USER = \'%\' AND ROLE = \'%\')\n 1 row in set (0.00 sec)\n \n *************************** 1. row ***************************\n status: Resetting: setup_actors\n INSERT IGNORE INTO performance_schema.setup_actors\n VALUES (\'%\', \'%\', \'%\')\n 1 row in set (0.00 sec)\n ...\n \n mysql> CALL sys.ps_setup_reset_to_default(false)\\G\n Query OK, 0 rows affected (0.00 sec)\n ', 'utf8', 'utf8_general_ci', 'utf8_general_ci', 0x424547494e2053455420407175657279203d202744454c4554452046524f4d20706572666f726d616e63655f736368656d612e73657475705f6163746f7273205748455245204e4f542028484f5354203d2027252720414e442055534552203d2027252720414e4420524f4c45203d2027252729273b202049462028696e5f766572626f736529205448454e2053454c45435420434f4e4341542827526573657474696e673a2073657475705f6163746f72730a272c205245504c414345284071756572792c20272020272c2027272929204153207374617475733b20454e442049463b2020505245504152452072657365745f73746d742046524f4d204071756572793b20455845435554452072657365745f73746d743b204445414c4c4f4341544520505245504152452072657365745f73746d743b202053455420407175657279203d2027494e534552542049474e4f524520494e544f20706572666f726d616e63655f736368656d612e73657475705f6163746f72732056414c55455320282725272c202725272c202725272c2027594553272c20275945532729273b202049462028696e5f766572626f736529205448454e2053454c45435420434f4e4341542827526573657474696e673a2073657475705f6163746f72730a272c205245504c414345284071756572792c20272020272c2027272929204153207374617475733b20454e442049463b2020505245504152452072657365745f73746d742046524f4d204071756572793b20455845435554452072657365745f73746d743b204445414c4c4f4341544520505245504152452072657365745f73746d743b202053455420407175657279203d202755504441544520706572666f726d616e63655f736368656d612e73657475705f696e737472756d656e74732053455420454e41424c4544203d207379732e70735f69735f696e737472756d656e745f64656661756c745f656e61626c6564284e414d45292c2054494d45442020203d207379732e70735f69735f696e737472756d656e745f64656661756c745f74696d6564284e414d4529273b202049462028696e5f766572626f736529205448454e2053454c45435420434f4e4341542827526573657474696e673a2073657475705f696e737472756d656e74730a272c205245504c414345284071756572792c20272020272c2027272929204153207374617475733b20454e442049463b2020505245504152452072657365745f73746d742046524f4d204071756572793b20455845435554452072657365745f73746d743b204445414c4c4f4341544520505245504152452072657365745f73746d743b202053455420407175657279203d202755504441544520706572666f726d616e63655f736368656d612e73657475705f636f6e73756d6572732053455420454e41424c4544203d204946284e414d4520494e2028276576656e74735f73746174656d656e74735f63757272656e74272c20276576656e74735f7472616e73616374696f6e735f63757272656e74272c2027676c6f62616c5f696e737472756d656e746174696f6e272c20277468726561645f696e737472756d656e746174696f6e272c202773746174656d656e74735f64696765737427292c2027594553272c20274e4f2729273b202049462028696e5f766572626f736529205448454e2053454c45435420434f4e4341542827526573657474696e673a2073657475705f636f6e73756d6572730a272c205245504c414345284071756572792c20272020272c2027272929204153207374617475733b20454e442049463b2020505245504152452072657365745f73746d742046524f4d204071756572793b20455845435554452072657365745f73746d743b204445414c4c4f4341544520505245504152452072657365745f73746d743b202053455420407175657279203d202744454c4554452046524f4d20706572666f726d616e63655f736368656d612e73657475705f6f626a65637473205748455245204e4f5420284f424a4543545f5459504520494e2028274556454e54272c202746554e4354494f4e272c202750524f434544555245272c20275441424c45272c202754524947474552272920414e44204f424a4543545f4e414d45203d202725272020414e4420284f424a4543545f534348454d41203d20276d7973716c272020202020202020202020202020414e4420454e41424c4544203d20274e4f272020414e442054494d4544203d20274e4f272029204f5220284f424a4543545f534348454d41203d2027706572666f726d616e63655f736368656d612720414e4420454e41424c4544203d20274e4f272020414e442054494d4544203d20274e4f272029204f5220284f424a4543545f534348454d41203d2027696e666f726d6174696f6e5f736368656d612720414e4420454e41424c4544203d20274e4f272020414e442054494d4544203d20274e4f272029204f5220284f424a4543545f534348454d41203d20272527202020202020202020202020202020202020414e4420454e41424c4544203d20275945532720414e442054494d4544203d2027594553272929273b202049462028696e5f766572626f736529205448454e2053454c45435420434f4e4341542827526573657474696e673a2073657475705f6f626a656374730a272c205245504c414345284071756572792c20272020272c2027272929204153207374617475733b20454e442049463b2020505245504152452072657365745f73746d742046524f4d204071756572793b20455845435554452072657365745f73746d743b204445414c4c4f4341544520505245504152452072657365745f73746d743b202053455420407175657279203d2027494e534552542049474e4f524520494e544f20706572666f726d616e63655f736368656d612e73657475705f6f626a656374732056414c5545532028274556454e5427202020202c20276d7973716c27202020202020202020202020202c202725272c20274e4f27202c20274e4f2720292c2028274556454e5427202020202c2027706572666f726d616e63655f736368656d61272c202725272c20274e4f27202c20274e4f2720292c2028274556454e5427202020202c2027696e666f726d6174696f6e5f736368656d61272c202725272c20274e4f27202c20274e4f2720292c2028274556454e5427202020202c2027252720202020202020202020202020202020202c202725272c2027594553272c202759455327292c20282746554e4354494f4e27202c20276d7973716c27202020202020202020202020202c202725272c20274e4f27202c20274e4f2720292c20282746554e4354494f4e27202c2027706572666f726d616e63655f736368656d61272c202725272c20274e4f27202c20274e4f2720292c20282746554e4354494f4e27202c2027696e666f726d6174696f6e5f736368656d61272c202725272c20274e4f27202c20274e4f2720292c20282746554e4354494f4e27202c2027252720202020202020202020202020202020202c202725272c2027594553272c202759455327292c20282750524f434544555245272c20276d7973716c27202020202020202020202020202c202725272c20274e4f27202c20274e4f2720292c20282750524f434544555245272c2027706572666f726d616e63655f736368656d61272c202725272c20274e4f27202c20274e4f2720292c20282750524f434544555245272c2027696e666f726d6174696f6e5f736368656d61272c202725272c20274e4f27202c20274e4f2720292c20282750524f434544555245272c2027252720202020202020202020202020202020202c202725272c2027594553272c202759455327292c2028275441424c4527202020202c20276d7973716c27202020202020202020202020202c202725272c20274e4f27202c20274e4f2720292c2028275441424c4527202020202c2027706572666f726d616e63655f736368656d61272c202725272c20274e4f27202c20274e4f2720292c2028275441424c4527202020202c2027696e666f726d6174696f6e5f736368656d61272c202725272c20274e4f27202c20274e4f2720292c2028275441424c4527202020202c2027252720202020202020202020202020202020202c202725272c2027594553272c202759455327292c202827545249474745522720202c20276d7973716c27202020202020202020202020202c202725272c20274e4f27202c20274e4f2720292c202827545249474745522720202c2027706572666f726d616e63655f736368656d61272c202725272c20274e4f27202c20274e4f2720292c202827545249474745522720202c2027696e666f726d6174696f6e5f736368656d61272c202725272c20274e4f27202c20274e4f2720292c202827545249474745522720202c2027252720202020202020202020202020202020202c202725272c2027594553272c20275945532729273b202049462028696e5f766572626f736529205448454e2053454c45435420434f4e4341542827526573657474696e673a2073657475705f6f626a656374730a272c205245504c414345284071756572792c20272020272c2027272929204153207374617475733b20454e442049463b2020505245504152452072657365745f73746d742046524f4d204071756572793b20455845435554452072657365745f73746d743b204445414c4c4f4341544520505245504152452072657365745f73746d743b202053455420407175657279203d202755504441544520706572666f726d616e63655f736368656d612e746872656164732053455420494e535452554d454e544544203d202759455327273b202049462028696e5f766572626f736529205448454e2053454c45435420434f4e4341542827526573657474696e673a20746872656164730a272c205245504c414345284071756572792c20272020272c2027272929204153207374617475733b20454e442049463b2020505245504152452072657365745f73746d742046524f4d204071756572793b20455845435554452072657365745f73746d743b204445414c4c4f4341544520505245504152452072657365745f73746d743b20454e44),
('sys', 'ps_setup_save', 'PROCEDURE', 'ps_setup_save', 'SQL', 'MODIFIES_SQL_DATA', 'NO', 'INVOKER', 0x20494e20696e5f74696d656f757420494e5420, '', 0x424547494e204445434c41524520765f6c6f636b5f726573756c7420494e543b202053455420406c6f675f62696e203a3d20404073716c5f6c6f675f62696e3b205345542073716c5f6c6f675f62696e203d20303b202053454c454354204745545f4c4f434b28277379732e70735f73657475705f73617665272c20696e5f74696d656f75742920494e544f20765f6c6f636b5f726573756c743b2020494620765f6c6f636b5f726573756c74205448454e2044524f502054454d504f52415259205441424c452049462045584953545320746d705f73657475705f6163746f72733b2044524f502054454d504f52415259205441424c452049462045584953545320746d705f73657475705f636f6e73756d6572733b2044524f502054454d504f52415259205441424c452049462045584953545320746d705f73657475705f696e737472756d656e74733b2044524f502054454d504f52415259205441424c452049462045584953545320746d705f746872656164733b20204352454154452054454d504f52415259205441424c4520746d705f73657475705f6163746f7273204c494b4520706572666f726d616e63655f736368656d612e73657475705f6163746f72733b204352454154452054454d504f52415259205441424c4520746d705f73657475705f636f6e73756d657273204c494b4520706572666f726d616e63655f736368656d612e73657475705f636f6e73756d6572733b204352454154452054454d504f52415259205441424c4520746d705f73657475705f696e737472756d656e7473204c494b4520706572666f726d616e63655f736368656d612e73657475705f696e737472756d656e74733b204352454154452054454d504f52415259205441424c4520746d705f7468726561647320285448524541445f494420626967696e7420756e7369676e6564204e4f54204e554c4c205052494d415259204b45592c20494e535452554d454e54454420656e756d2827594553272c274e4f2729204e4f54204e554c4c293b2020494e5345525420494e544f20746d705f73657475705f6163746f72732053454c454354202a2046524f4d20706572666f726d616e63655f736368656d612e73657475705f6163746f72733b20494e5345525420494e544f20746d705f73657475705f636f6e73756d6572732053454c454354202a2046524f4d20706572666f726d616e63655f736368656d612e73657475705f636f6e73756d6572733b20494e5345525420494e544f20746d705f73657475705f696e737472756d656e74732053454c454354202a2046524f4d20706572666f726d616e63655f736368656d612e73657475705f696e737472756d656e74733b20494e5345525420494e544f20746d705f746872656164732053454c454354205448524541445f49442c20494e535452554d454e5445442046524f4d20706572666f726d616e63655f736368656d612e746872656164733b20454c5345205349474e414c2053514c53544154452056414c5545202739303030302720534554204d4553534147455f54455854203d2027436f756c64206e6f74206c6f636b20746865207379732e70735f73657475705f736176652075736572206c6f636b2c20616e6f746865722074687265616420686173206120736176656420636f6e66696775726174696f6e273b20454e442049463b20205345542073716c5f6c6f675f62696e203d20406c6f675f62696e3b20454e44, 'mysql.sys@localhost', '2018-07-09 10:50:31', '2018-07-09 10:50:31', '', '\n Description\n \n Saves the current configuration of Performance Schema, \n so that you can alter the setup for debugging purposes, \n but restore it to a previous state.\n \n Use the companion procedure - ps_setup_reload_saved(), to \n restore the saved config.\n \n The named lock \"sys.ps_setup_save\" is taken before the\n current configuration is saved. If the attempt to get the named\n lock times out, an error occurs.\n \n The lock is released after the settings have been restored by\n calling ps_setup_reload_saved().\n \n Requires the SUPER privilege for \"SET sql_log_bin = 0;\".\n \n Parameters\n \n in_timeout INT\n The timeout in seconds used when trying to obtain the lock.\n A negative timeout means infinite timeout.\n \n Example\n \n mysql> CALL sys.ps_setup_save(-1);\n Query OK, 0 rows affected (0.08 sec)\n \n mysql> UPDATE performance_schema.setup_instruments \n ->    SET enabled = \'YES\', timed = \'YES\';\n Query OK, 547 rows affected (0.40 sec)\n Rows matched: 784  Changed: 547  Warnings: 0\n \n /* Run some tests that need more detailed instrumentation here */\n \n mysql> CALL sys.ps_setup_reload_saved();\n Query OK, 0 rows affected (0.32 sec)\n ', 'utf8', 'utf8_general_ci', 'utf8_general_ci', 0x424547494e204445434c41524520765f6c6f636b5f726573756c7420494e543b202053455420406c6f675f62696e203a3d20404073716c5f6c6f675f62696e3b205345542073716c5f6c6f675f62696e203d20303b202053454c454354204745545f4c4f434b28277379732e70735f73657475705f73617665272c20696e5f74696d656f75742920494e544f20765f6c6f636b5f726573756c743b2020494620765f6c6f636b5f726573756c74205448454e2044524f502054454d504f52415259205441424c452049462045584953545320746d705f73657475705f6163746f72733b2044524f502054454d504f52415259205441424c452049462045584953545320746d705f73657475705f636f6e73756d6572733b2044524f502054454d504f52415259205441424c452049462045584953545320746d705f73657475705f696e737472756d656e74733b2044524f502054454d504f52415259205441424c452049462045584953545320746d705f746872656164733b20204352454154452054454d504f52415259205441424c4520746d705f73657475705f6163746f7273204c494b4520706572666f726d616e63655f736368656d612e73657475705f6163746f72733b204352454154452054454d504f52415259205441424c4520746d705f73657475705f636f6e73756d657273204c494b4520706572666f726d616e63655f736368656d612e73657475705f636f6e73756d6572733b204352454154452054454d504f52415259205441424c4520746d705f73657475705f696e737472756d656e7473204c494b4520706572666f726d616e63655f736368656d612e73657475705f696e737472756d656e74733b204352454154452054454d504f52415259205441424c4520746d705f7468726561647320285448524541445f494420626967696e7420756e7369676e6564204e4f54204e554c4c205052494d415259204b45592c20494e535452554d454e54454420656e756d2827594553272c274e4f2729204e4f54204e554c4c293b2020494e5345525420494e544f20746d705f73657475705f6163746f72732053454c454354202a2046524f4d20706572666f726d616e63655f736368656d612e73657475705f6163746f72733b20494e5345525420494e544f20746d705f73657475705f636f6e73756d6572732053454c454354202a2046524f4d20706572666f726d616e63655f736368656d612e73657475705f636f6e73756d6572733b20494e5345525420494e544f20746d705f73657475705f696e737472756d656e74732053454c454354202a2046524f4d20706572666f726d616e63655f736368656d612e73657475705f696e737472756d656e74733b20494e5345525420494e544f20746d705f746872656164732053454c454354205448524541445f49442c20494e535452554d454e5445442046524f4d20706572666f726d616e63655f736368656d612e746872656164733b20454c5345205349474e414c2053514c53544154452056414c5545202739303030302720534554204d4553534147455f54455854203d2027436f756c64206e6f74206c6f636b20746865207379732e70735f73657475705f736176652075736572206c6f636b2c20616e6f746865722074687265616420686173206120736176656420636f6e66696775726174696f6e273b20454e442049463b20205345542073716c5f6c6f675f62696e203d20406c6f675f62696e3b20454e44),
('sys', 'ps_setup_show_disabled', 'PROCEDURE', 'ps_setup_show_disabled', 'SQL', 'READS_SQL_DATA', 'NO', 'INVOKER', 0x20494e20696e5f73686f775f696e737472756d656e747320424f4f4c45414e2c20494e20696e5f73686f775f7468726561647320424f4f4c45414e20, '', 0x424547494e2053454c454354204040706572666f726d616e63655f736368656d6120415320706572666f726d616e63655f736368656d615f656e61626c65643b20202053454c45435420434f4e43415428275c27272c20757365722c20275c27405c27272c20686f73742c20275c2727292041532064697361626c65645f75736572732046524f4d20706572666f726d616e63655f736368656d612e73657475705f6163746f727320574845524520656e61626c6564203d20274e4f27204f524445522042592064697361626c65645f75736572733b20202053454c454354206f626a6563745f747970652c20434f4e434154286f626a6563745f736368656d612c20272e272c206f626a6563745f6e616d6529204153206f626a656374732c20656e61626c65642c2074696d65642046524f4d20706572666f726d616e63655f736368656d612e73657475705f6f626a6563747320574845524520656e61626c6564203d20274e4f27204f52444552204259206f626a6563745f747970652c206f626a656374733b202053454c454354206e616d652041532064697361626c65645f636f6e73756d6572732046524f4d20706572666f726d616e63655f736368656d612e73657475705f636f6e73756d65727320574845524520656e61626c6564203d20274e4f27204f524445522042592064697361626c65645f636f6e73756d6572733b202049462028696e5f73686f775f7468726561647329205448454e2053454c454354204946286e616d65203d20277468726561642f73716c2f6f6e655f636f6e6e656374696f6e272c2020434f4e4341542870726f636573736c6973745f757365722c202740272c2070726f636573736c6973745f686f7374292c20205245504c414345286e616d652c20277468726561642f272c20272729292041532064697361626c65645f746872656164732c2054595045204153207468726561645f747970652046524f4d20706572666f726d616e63655f736368656d612e7468726561647320574845524520494e535452554d454e544544203d20274e4f27204f524445522042592064697361626c65645f746872656164733b20454e442049463b202049462028696e5f73686f775f696e737472756d656e747329205448454e2053454c454354206e616d652041532064697361626c65645f696e737472756d656e74732c2074696d65642046524f4d20706572666f726d616e63655f736368656d612e73657475705f696e737472756d656e747320574845524520656e61626c6564203d20274e4f27204f524445522042592064697361626c65645f696e737472756d656e74733b20454e442049463b20454e44, 'mysql.sys@localhost', '2018-07-09 10:50:31', '2018-07-09 10:50:31', '', '\n Description\n \n Shows all currently disable Performance Schema configuration.\n \n Disabled users is only available for MySQL 5.7.6 and later.\n In earlier versions it was only possible to enable users.\n \n Parameters\n \n in_show_instruments (BOOLEAN):\n Whether to print disabled instruments (can print many items)\n \n in_show_threads (BOOLEAN):\n Whether to print disabled threads\n \n Example\n \n mysql> CALL sys.ps_setup_show_disabled(TRUE, TRUE);\n +----------------------------+\n | performance_schema_enabled |\n +----------------------------+\n |                          1 |\n +----------------------------+\n 1 row in set (0.00 sec)\n \n +--------------------+\n | disabled_users     |\n +--------------------+\n | \'mark\'@\'localhost\' |\n +--------------------+\n 1 row in set (0.00 sec)\n \n +-------------+----------------------+---------+-------+\n | object_type | objects              | enabled | timed |\n +-------------+----------------------+---------+-------+\n | EVENT       | mysql.%              | NO      | NO    |\n | EVENT       | performance_schema.% | NO      | NO    |\n | EVENT       | information_schema.% | NO      | NO    |\n | FUNCTION    | mysql.%              | NO      | NO    |\n | FUNCTION    | performance_schema.% | NO      | NO    |\n | FUNCTION    | information_schema.% | NO      | NO    |\n | PROCEDURE   | mysql.%              | NO      | NO    |\n | PROCEDURE   | performance_schema.% | NO      | NO    |\n | PROCEDURE   | information_schema.% | NO      | NO    |\n | TABLE       | mysql.%              | NO      | NO    |\n | TABLE       | performance_schema.% | NO      | NO    |\n | TABLE       | information_schema.% | NO      | NO    |\n | TRIGGER     | mysql.%              | NO      | NO    |\n | TRIGGER     | performance_schema.% | NO      | NO    |\n | TRIGGER     | information_schema.% | NO      | NO    |\n +-------------+----------------------+---------+-------+\n 15 rows in set (0.00 sec)\n \n +----------------------------------+\n | disabled_consumers               |\n +----------------------------------+\n | events_stages_current            |\n | events_stages_history            |\n | events_stages_history_long       |\n | events_statements_history        |\n | events_statements_history_long   |\n | events_transactions_history      |\n | events_transactions_history_long |\n | events_waits_current             |\n | events_waits_history             |\n | events_waits_history_long        |\n +----------------------------------+\n 10 rows in set (0.00 sec)\n \n Empty set (0.00 sec)\n \n +---------------------------------------------------------------------------------------+-------+\n | disabled_instruments                                                                  | timed |\n +---------------------------------------------------------------------------------------+-------+\n | wait/synch/mutex/sql/TC_LOG_MMAP::LOCK_tc                                             | NO    |\n | wait/synch/mutex/sql/LOCK_des_key_file                                                | NO    |\n | wait/synch/mutex/sql/MYSQL_BIN_LOG::LOCK_commit                                       | NO    |\n ...\n | memory/sql/servers_cache                                                              | NO    |\n | memory/sql/udf_mem                                                                    | NO    |\n | wait/lock/metadata/sql/mdl                                                            | NO    |\n +---------------------------------------------------------------------------------------+-------+\n 547 rows in set (0.00 sec)\n \n Query OK, 0 rows affected (0.01 sec)\n ', 'utf8', 'utf8_general_ci', 'utf8_general_ci', 0x424547494e2053454c454354204040706572666f726d616e63655f736368656d6120415320706572666f726d616e63655f736368656d615f656e61626c65643b20202053454c45435420434f4e434154282727272c20757365722c2027274027272c20686f73742c20272727292041532064697361626c65645f75736572732046524f4d20706572666f726d616e63655f736368656d612e73657475705f6163746f727320574845524520656e61626c6564203d20274e4f27204f524445522042592064697361626c65645f75736572733b20202053454c454354206f626a6563745f747970652c20434f4e434154286f626a6563745f736368656d612c20272e272c206f626a6563745f6e616d6529204153206f626a656374732c20656e61626c65642c2074696d65642046524f4d20706572666f726d616e63655f736368656d612e73657475705f6f626a6563747320574845524520656e61626c6564203d20274e4f27204f52444552204259206f626a6563745f747970652c206f626a656374733b202053454c454354206e616d652041532064697361626c65645f636f6e73756d6572732046524f4d20706572666f726d616e63655f736368656d612e73657475705f636f6e73756d65727320574845524520656e61626c6564203d20274e4f27204f524445522042592064697361626c65645f636f6e73756d6572733b202049462028696e5f73686f775f7468726561647329205448454e2053454c454354204946286e616d65203d20277468726561642f73716c2f6f6e655f636f6e6e656374696f6e272c2020434f4e4341542870726f636573736c6973745f757365722c202740272c2070726f636573736c6973745f686f7374292c20205245504c414345286e616d652c20277468726561642f272c20272729292041532064697361626c65645f746872656164732c2054595045204153207468726561645f747970652046524f4d20706572666f726d616e63655f736368656d612e7468726561647320574845524520494e535452554d454e544544203d20274e4f27204f524445522042592064697361626c65645f746872656164733b20454e442049463b202049462028696e5f73686f775f696e737472756d656e747329205448454e2053454c454354206e616d652041532064697361626c65645f696e737472756d656e74732c2074696d65642046524f4d20706572666f726d616e63655f736368656d612e73657475705f696e737472756d656e747320574845524520656e61626c6564203d20274e4f27204f524445522042592064697361626c65645f696e737472756d656e74733b20454e442049463b20454e44),
('sys', 'ps_setup_show_disabled_consumers', 'PROCEDURE', 'ps_setup_show_disabled_consumers', 'SQL', 'READS_SQL_DATA', 'YES', 'INVOKER', '', '', 0x424547494e2053454c454354206e616d652041532064697361626c65645f636f6e73756d6572732046524f4d20706572666f726d616e63655f736368656d612e73657475705f636f6e73756d65727320574845524520656e61626c6564203d20274e4f27204f524445522042592064697361626c65645f636f6e73756d6572733b20454e44, 'mysql.sys@localhost', '2018-07-09 10:50:31', '2018-07-09 10:50:31', '', '\n Description\n \n Shows all currently disabled consumers.\n \n Parameters\n \n None\n \n Example\n \n mysql> CALL sys.ps_setup_show_disabled_consumers();\n \n +---------------------------+\n | disabled_consumers        |\n +---------------------------+\n | events_statements_current |\n | global_instrumentation    |\n | thread_instrumentation    |\n | statements_digest         |\n +---------------------------+\n 4 rows in set (0.05 sec)\n ', 'utf8', 'utf8_general_ci', 'utf8_general_ci', 0x424547494e2053454c454354206e616d652041532064697361626c65645f636f6e73756d6572732046524f4d20706572666f726d616e63655f736368656d612e73657475705f636f6e73756d65727320574845524520656e61626c6564203d20274e4f27204f524445522042592064697361626c65645f636f6e73756d6572733b20454e44),
('sys', 'ps_setup_show_disabled_instruments', 'PROCEDURE', 'ps_setup_show_disabled_instruments', 'SQL', 'READS_SQL_DATA', 'YES', 'INVOKER', '', '', 0x424547494e2053454c454354206e616d652041532064697361626c65645f696e737472756d656e74732c2074696d65642046524f4d20706572666f726d616e63655f736368656d612e73657475705f696e737472756d656e747320574845524520656e61626c6564203d20274e4f27204f524445522042592064697361626c65645f696e737472756d656e74733b20454e44, 'mysql.sys@localhost', '2018-07-09 10:50:31', '2018-07-09 10:50:31', '', '\n Description\n \n Shows all currently disabled instruments.\n \n Parameters\n \n None\n \n Example\n \n mysql> CALL sys.ps_setup_show_disabled_instruments();\n ', 'utf8', 'utf8_general_ci', 'utf8_general_ci', 0x424547494e2053454c454354206e616d652041532064697361626c65645f696e737472756d656e74732c2074696d65642046524f4d20706572666f726d616e63655f736368656d612e73657475705f696e737472756d656e747320574845524520656e61626c6564203d20274e4f27204f524445522042592064697361626c65645f696e737472756d656e74733b20454e44);
INSERT INTO `proc` (`db`, `name`, `type`, `specific_name`, `language`, `sql_data_access`, `is_deterministic`, `security_type`, `param_list`, `returns`, `body`, `definer`, `created`, `modified`, `sql_mode`, `comment`, `character_set_client`, `collation_connection`, `db_collation`, `body_utf8`) VALUES
('sys', 'ps_setup_show_enabled', 'PROCEDURE', 'ps_setup_show_enabled', 'SQL', 'READS_SQL_DATA', 'YES', 'INVOKER', 0x20494e20696e5f73686f775f696e737472756d656e747320424f4f4c45414e2c20494e20696e5f73686f775f7468726561647320424f4f4c45414e20, '', 0x424547494e2053454c454354204040706572666f726d616e63655f736368656d6120415320706572666f726d616e63655f736368656d615f656e61626c65643b202053454c45435420434f4e43415428275c27272c20757365722c20275c27405c27272c20686f73742c20275c27272920415320656e61626c65645f75736572732046524f4d20706572666f726d616e63655f736368656d612e73657475705f6163746f72732020574845524520656e61626c6564203d20275945532720204f5244455220425920656e61626c65645f75736572733b202053454c454354206f626a6563745f747970652c20434f4e434154286f626a6563745f736368656d612c20272e272c206f626a6563745f6e616d6529204153206f626a656374732c20656e61626c65642c2074696d65642046524f4d20706572666f726d616e63655f736368656d612e73657475705f6f626a6563747320574845524520656e61626c6564203d202759455327204f52444552204259206f626a6563745f747970652c206f626a656374733b202053454c454354206e616d6520415320656e61626c65645f636f6e73756d6572732046524f4d20706572666f726d616e63655f736368656d612e73657475705f636f6e73756d65727320574845524520656e61626c6564203d202759455327204f5244455220425920656e61626c65645f636f6e73756d6572733b202049462028696e5f73686f775f7468726561647329205448454e2053454c454354204946286e616d65203d20277468726561642f73716c2f6f6e655f636f6e6e656374696f6e272c2020434f4e4341542870726f636573736c6973745f757365722c202740272c2070726f636573736c6973745f686f7374292c20205245504c414345286e616d652c20277468726561642f272c202727292920415320656e61626c65645f746872656164732c2054595045204153207468726561645f747970652046524f4d20706572666f726d616e63655f736368656d612e7468726561647320574845524520494e535452554d454e544544203d202759455327204f5244455220425920656e61626c65645f746872656164733b20454e442049463b202049462028696e5f73686f775f696e737472756d656e747329205448454e2053454c454354206e616d6520415320656e61626c65645f696e737472756d656e74732c2074696d65642046524f4d20706572666f726d616e63655f736368656d612e73657475705f696e737472756d656e747320574845524520656e61626c6564203d202759455327204f5244455220425920656e61626c65645f696e737472756d656e74733b20454e442049463b20454e44, 'mysql.sys@localhost', '2018-07-09 10:50:31', '2018-07-09 10:50:31', '', '\n Description\n \n Shows all currently enabled Performance Schema configuration.\n \n Parameters\n \n in_show_instruments (BOOLEAN):\n Whether to print enabled instruments (can print many items)\n \n in_show_threads (BOOLEAN):\n Whether to print enabled threads\n \n Example\n \n mysql> CALL sys.ps_setup_show_enabled(TRUE, TRUE);\n +----------------------------+\n | performance_schema_enabled |\n +----------------------------+\n |                          1 |\n +----------------------------+\n 1 row in set (0.00 sec)\n \n +---------------+\n | enabled_users |\n +---------------+\n | \'%\'@\'%\'       |\n +---------------+\n 1 row in set (0.01 sec)\n \n +-------------+---------+---------+-------+\n | object_type | objects | enabled | timed |\n +-------------+---------+---------+-------+\n | EVENT       | %.%     | YES     | YES   |\n | FUNCTION    | %.%     | YES     | YES   |\n | PROCEDURE   | %.%     | YES     | YES   |\n | TABLE       | %.%     | YES     | YES   |\n | TRIGGER     | %.%     | YES     | YES   |\n +-------------+---------+---------+-------+\n 5 rows in set (0.01 sec)\n \n +---------------------------+\n | enabled_consumers         |\n +---------------------------+\n | events_statements_current |\n | global_instrumentation    |\n | thread_instrumentation    |\n | statements_digest         |\n +---------------------------+\n 4 rows in set (0.05 sec)\n \n +---------------------------------+-------------+\n | enabled_threads                 | thread_type |\n +---------------------------------+-------------+\n | sql/main                        | BACKGROUND  |\n | sql/thread_timer_notifier       | BACKGROUND  |\n | innodb/io_ibuf_thread           | BACKGROUND  |\n | innodb/io_log_thread            | BACKGROUND  |\n | innodb/io_read_thread           | BACKGROUND  |\n | innodb/io_read_thread           | BACKGROUND  |\n | innodb/io_write_thread          | BACKGROUND  |\n | innodb/io_write_thread          | BACKGROUND  |\n | innodb/page_cleaner_thread      | BACKGROUND  |\n | innodb/srv_lock_timeout_thread  | BACKGROUND  |\n | innodb/srv_error_monitor_thread | BACKGROUND  |\n | innodb/srv_monitor_thread       | BACKGROUND  |\n | innodb/srv_master_thread        | BACKGROUND  |\n | innodb/srv_purge_thread         | BACKGROUND  |\n | innodb/srv_worker_thread        | BACKGROUND  |\n | innodb/srv_worker_thread        | BACKGROUND  |\n | innodb/srv_worker_thread        | BACKGROUND  |\n | innodb/buf_dump_thread          | BACKGROUND  |\n | innodb/dict_stats_thread        | BACKGROUND  |\n | sql/signal_handler              | BACKGROUND  |\n | sql/compress_gtid_table         | FOREGROUND  |\n | root@localhost                  | FOREGROUND  |\n +---------------------------------+-------------+\n 22 rows in set (0.01 sec)\n \n +-------------------------------------+-------+\n | enabled_instruments                 | timed |\n +-------------------------------------+-------+\n | wait/io/file/sql/map                | YES   |\n | wait/io/file/sql/binlog             | YES   |\n ...\n | statement/com/Error                 | YES   |\n | statement/com/                      | YES   |\n | idle                                | YES   |\n +-------------------------------------+-------+\n 210 rows in set (0.08 sec)\n \n Query OK, 0 rows affected (0.89 sec)\n ', 'utf8', 'utf8_general_ci', 'utf8_general_ci', 0x424547494e2053454c454354204040706572666f726d616e63655f736368656d6120415320706572666f726d616e63655f736368656d615f656e61626c65643b202053454c45435420434f4e434154282727272c20757365722c2027274027272c20686f73742c202727272920415320656e61626c65645f75736572732046524f4d20706572666f726d616e63655f736368656d612e73657475705f6163746f72732020574845524520656e61626c6564203d20275945532720204f5244455220425920656e61626c65645f75736572733b202053454c454354206f626a6563745f747970652c20434f4e434154286f626a6563745f736368656d612c20272e272c206f626a6563745f6e616d6529204153206f626a656374732c20656e61626c65642c2074696d65642046524f4d20706572666f726d616e63655f736368656d612e73657475705f6f626a6563747320574845524520656e61626c6564203d202759455327204f52444552204259206f626a6563745f747970652c206f626a656374733b202053454c454354206e616d6520415320656e61626c65645f636f6e73756d6572732046524f4d20706572666f726d616e63655f736368656d612e73657475705f636f6e73756d65727320574845524520656e61626c6564203d202759455327204f5244455220425920656e61626c65645f636f6e73756d6572733b202049462028696e5f73686f775f7468726561647329205448454e2053454c454354204946286e616d65203d20277468726561642f73716c2f6f6e655f636f6e6e656374696f6e272c2020434f4e4341542870726f636573736c6973745f757365722c202740272c2070726f636573736c6973745f686f7374292c20205245504c414345286e616d652c20277468726561642f272c202727292920415320656e61626c65645f746872656164732c2054595045204153207468726561645f747970652046524f4d20706572666f726d616e63655f736368656d612e7468726561647320574845524520494e535452554d454e544544203d202759455327204f5244455220425920656e61626c65645f746872656164733b20454e442049463b202049462028696e5f73686f775f696e737472756d656e747329205448454e2053454c454354206e616d6520415320656e61626c65645f696e737472756d656e74732c2074696d65642046524f4d20706572666f726d616e63655f736368656d612e73657475705f696e737472756d656e747320574845524520656e61626c6564203d202759455327204f5244455220425920656e61626c65645f696e737472756d656e74733b20454e442049463b20454e44),
('sys', 'ps_setup_show_enabled_consumers', 'PROCEDURE', 'ps_setup_show_enabled_consumers', 'SQL', 'READS_SQL_DATA', 'YES', 'INVOKER', '', '', 0x424547494e2053454c454354206e616d6520415320656e61626c65645f636f6e73756d6572732046524f4d20706572666f726d616e63655f736368656d612e73657475705f636f6e73756d65727320574845524520656e61626c6564203d202759455327204f5244455220425920656e61626c65645f636f6e73756d6572733b20454e44, 'mysql.sys@localhost', '2018-07-09 10:50:31', '2018-07-09 10:50:31', '', '\n Description\n \n Shows all currently enabled consumers.\n \n Parameters\n \n None\n \n Example\n \n mysql> CALL sys.ps_setup_show_enabled_consumers();\n \n +---------------------------+\n | enabled_consumers         |\n +---------------------------+\n | events_statements_current |\n | global_instrumentation    |\n | thread_instrumentation    |\n | statements_digest         |\n +---------------------------+\n 4 rows in set (0.05 sec)\n ', 'utf8', 'utf8_general_ci', 'utf8_general_ci', 0x424547494e2053454c454354206e616d6520415320656e61626c65645f636f6e73756d6572732046524f4d20706572666f726d616e63655f736368656d612e73657475705f636f6e73756d65727320574845524520656e61626c6564203d202759455327204f5244455220425920656e61626c65645f636f6e73756d6572733b20454e44),
('sys', 'ps_setup_show_enabled_instruments', 'PROCEDURE', 'ps_setup_show_enabled_instruments', 'SQL', 'READS_SQL_DATA', 'YES', 'INVOKER', '', '', 0x424547494e2053454c454354206e616d6520415320656e61626c65645f696e737472756d656e74732c2074696d65642046524f4d20706572666f726d616e63655f736368656d612e73657475705f696e737472756d656e747320574845524520656e61626c6564203d202759455327204f5244455220425920656e61626c65645f696e737472756d656e74733b20454e44, 'mysql.sys@localhost', '2018-07-09 10:50:31', '2018-07-09 10:50:31', '', '\n Description\n \n Shows all currently enabled instruments.\n \n Parameters\n \n None\n \n Example\n \n mysql> CALL sys.ps_setup_show_enabled_instruments();\n ', 'utf8', 'utf8_general_ci', 'utf8_general_ci', 0x424547494e2053454c454354206e616d6520415320656e61626c65645f696e737472756d656e74732c2074696d65642046524f4d20706572666f726d616e63655f736368656d612e73657475705f696e737472756d656e747320574845524520656e61626c6564203d202759455327204f5244455220425920656e61626c65645f696e737472756d656e74733b20454e44),
('sys', 'ps_truncate_all_tables', 'PROCEDURE', 'ps_truncate_all_tables', 'SQL', 'MODIFIES_SQL_DATA', 'YES', 'INVOKER', 0x20494e20696e5f766572626f736520424f4f4c45414e20, '', 0x424547494e204445434c41524520765f646f6e6520494e542044454641554c542046414c53453b204445434c41524520765f746f74616c5f7461626c657320494e542044454641554c5420303b204445434c41524520765f70735f7461626c652056415243484152283634293b204445434c4152452070735f7461626c657320435552534f5220464f522053454c454354207461626c655f6e616d65202046524f4d20494e464f524d4154494f4e5f534348454d412e5441424c455320205748455245207461626c655f736368656d61203d2027706572666f726d616e63655f736368656d61272020414e4420287461626c655f6e616d65204c494b4520272573756d6d617279252720204f52207461626c655f6e616d65204c494b45202725686973746f72792527293b204445434c41524520434f4e54494e55452048414e444c455220464f52204e4f5420464f554e442053455420765f646f6e65203d20545255453b20204f50454e2070735f7461626c65733b202070735f7461626c65735f6c6f6f703a204c4f4f502046455443482070735f7461626c657320494e544f20765f70735f7461626c653b20494620765f646f6e65205448454e204c454156452070735f7461626c65735f6c6f6f703b20454e442049463b202053455420407472756e636174655f73746d74203a3d20434f4e43415428275452554e43415445205441424c4520706572666f726d616e63655f736368656d612e272c20765f70735f7461626c65293b20494620696e5f766572626f7365205448454e2053454c45435420434f4e434154282752756e6e696e673a20272c20407472756e636174655f73746d7429204153207374617475733b20454e442049463b202050524550415245207472756e636174655f73746d742046524f4d20407472756e636174655f73746d743b2045584543555445207472756e636174655f73746d743b204445414c4c4f434154452050524550415245207472756e636174655f73746d743b202053455420765f746f74616c5f7461626c6573203d20765f746f74616c5f7461626c6573202b20313b20454e44204c4f4f503b2020434c4f53452070735f7461626c65733b202053454c45435420434f4e43415428275472756e636174656420272c20765f746f74616c5f7461626c65732c2027207461626c657327292041532073756d6d6172793b2020454e44, 'mysql.sys@localhost', '2018-07-09 10:50:31', '2018-07-09 10:50:31', '', '\n Description\n \n Truncates all summary tables within Performance Schema, \n resetting all aggregated instrumentation as a snapshot.\n \n Parameters\n \n in_verbose (BOOLEAN):\n Whether to print each TRUNCATE statement before running\n \n Example\n \n mysql> CALL sys.ps_truncate_all_tables(false);\n +---------------------+\n | summary             |\n +---------------------+\n | Truncated 44 tables |\n +---------------------+\n 1 row in set (0.10 sec)\n \n Query OK, 0 rows affected (0.10 sec)\n ', 'utf8', 'utf8_general_ci', 'utf8_general_ci', 0x424547494e204445434c41524520765f646f6e6520494e542044454641554c542046414c53453b204445434c41524520765f746f74616c5f7461626c657320494e542044454641554c5420303b204445434c41524520765f70735f7461626c652056415243484152283634293b204445434c4152452070735f7461626c657320435552534f5220464f522053454c454354207461626c655f6e616d65202046524f4d20494e464f524d4154494f4e5f534348454d412e5441424c455320205748455245207461626c655f736368656d61203d2027706572666f726d616e63655f736368656d61272020414e4420287461626c655f6e616d65204c494b4520272573756d6d617279252720204f52207461626c655f6e616d65204c494b45202725686973746f72792527293b204445434c41524520434f4e54494e55452048414e444c455220464f52204e4f5420464f554e442053455420765f646f6e65203d20545255453b20204f50454e2070735f7461626c65733b202070735f7461626c65735f6c6f6f703a204c4f4f502046455443482070735f7461626c657320494e544f20765f70735f7461626c653b20494620765f646f6e65205448454e204c454156452070735f7461626c65735f6c6f6f703b20454e442049463b202053455420407472756e636174655f73746d74203a3d20434f4e43415428275452554e43415445205441424c4520706572666f726d616e63655f736368656d612e272c20765f70735f7461626c65293b20494620696e5f766572626f7365205448454e2053454c45435420434f4e434154282752756e6e696e673a20272c20407472756e636174655f73746d7429204153207374617475733b20454e442049463b202050524550415245207472756e636174655f73746d742046524f4d20407472756e636174655f73746d743b2045584543555445207472756e636174655f73746d743b204445414c4c4f434154452050524550415245207472756e636174655f73746d743b202053455420765f746f74616c5f7461626c6573203d20765f746f74616c5f7461626c6573202b20313b20454e44204c4f4f503b2020434c4f53452070735f7461626c65733b202053454c45435420434f4e43415428275472756e636174656420272c20765f746f74616c5f7461626c65732c2027207461626c657327292041532073756d6d6172793b2020454e44);
INSERT INTO `proc` (`db`, `name`, `type`, `specific_name`, `language`, `sql_data_access`, `is_deterministic`, `security_type`, `param_list`, `returns`, `body`, `definer`, `created`, `modified`, `sql_mode`, `comment`, `character_set_client`, `collation_connection`, `db_collation`, `body_utf8`) VALUES
('sys', 'statement_performance_analyzer', 'PROCEDURE', 'statement_performance_analyzer', 'SQL', 'CONTAINS_SQL', 'NO', 'INVOKER', 0x20494e20696e5f616374696f6e20454e554d2827736e617073686f74272c20276f766572616c6c272c202764656c7461272c20276372656174655f7461626c65272c20276372656174655f746d70272c202773617665272c2027636c65616e757027292c20494e20696e5f7461626c65205641524348415228313239292c20494e20696e5f766965777320534554202827776974685f72756e74696d65735f696e5f393574685f70657263656e74696c65272c2027616e616c79736973272c2027776974685f6572726f72735f6f725f7761726e696e6773272c2027776974685f66756c6c5f7461626c655f7363616e73272c2027776974685f736f7274696e67272c2027776974685f74656d705f7461626c6573272c2027637573746f6d272920, '', 0x424547494e204445434c41524520765f7461626c655f6578697374732c20765f746d705f646967657374735f7461626c655f6578697374732c20765f637573746f6d5f766965775f65786973747320454e554d2827272c202742415345205441424c45272c202756494557272c202754454d504f5241525927292044454641554c542027273b204445434c41524520765f746869735f7468726561645f656e61626c656420454e554d2827594553272c20274e4f27293b204445434c41524520765f666f7263655f6e65775f736e617073686f7420424f4f4c45414e2044454641554c542046414c53453b204445434c41524520765f646967657374735f7461626c65205641524348415228313333293b204445434c41524520765f71756f7465645f7461626c652c20765f71756f7465645f637573746f6d5f76696577205641524348415228313333292044454641554c542027273b204445434c41524520765f7461626c655f64622c20765f7461626c655f6e616d652c20765f637573746f6d5f64622c20765f637573746f6d5f6e616d652056415243484152283634293b204445434c41524520765f6469676573745f7461626c655f74656d706c6174652c20765f636865636b73756d5f7265662c20765f636865636b73756d5f7461626c6520746578743b204445434c41524520765f73716c206c6f6e67746578743b204445434c41524520765f6572726f725f6d7367205641524348415228313238293b20202053454c45435420494e535452554d454e54454420494e544f20765f746869735f7468726561645f656e61626c65642046524f4d20706572666f726d616e63655f736368656d612e746872656164732057484552452050524f434553534c4953545f4944203d20434f4e4e454354494f4e5f494428293b2049462028765f746869735f7468726561645f656e61626c6564203d20275945532729205448454e2043414c4c207379732e70735f73657475705f64697361626c655f74687265616428434f4e4e454354494f4e5f49442829293b20454e442049463b202053455420406c6f675f62696e203a3d20404073716c5f6c6f675f62696e3b2049462028406c6f675f62696e203d203129205448454e205345542073716c5f6c6f675f62696e203d20303b20454e442049463b20202049462028407379732e73746174656d656e745f706572666f726d616e63655f616e616c797a65722e6c696d6974204953204e554c4c29205448454e2053455420407379732e73746174656d656e745f706572666f726d616e63655f616e616c797a65722e6c696d6974203d207379732e7379735f6765745f636f6e666967282773746174656d656e745f706572666f726d616e63655f616e616c797a65722e6c696d6974272c202731303027293b20454e442049463b2049462028407379732e6465627567204953204e554c4c29205448454e2053455420407379732e646562756720202020202020202020202020202020202020202020202020202020202020203d207379732e7379735f6765745f636f6e6669672827646562756727202020202020202020202020202020202020202020202020202020202020202c20274f464627293b20454e442049463b20202049462028696e5f7461626c65203d20274e4f5728292729205448454e2053455420765f666f7263655f6e65775f736e617073686f74203d20545255452c20696e5f7461626c65202020202020202020202020203d204e554c4c3b20454c534549462028696e5f7461626c65204953204e4f54204e554c4c29205448454e20494620284e4f5420494e53545228696e5f7461626c652c20272e272929205448454e2053455420765f7461626c655f64622020203d20444154414241534528292c20765f7461626c655f6e616d65203d20696e5f7461626c653b20454c53452053455420765f7461626c655f64622020203d20535542535452494e475f494e44455828696e5f7461626c652c20272e272c2031293b2053455420765f7461626c655f6e616d65203d20535542535452494e4728696e5f7461626c652c20434841525f4c454e47544828765f7461626c655f6462292b32293b20454e442049463b202053455420765f71756f7465645f7461626c65203d20434f4e434154282760272c20765f7461626c655f64622c2027602e60272c20765f7461626c655f6e616d652c20276027293b202049462028407379732e6465627567203d20274f4e2729205448454e2053454c45435420434f4e4341542827696e5f7461626c652069733a206462203d202727272c20765f7461626c655f64622c202727272c207461626c65203d202727272c20765f7461626c655f6e616d652c20272727272920415320274465627567273b20454e442049463b202049462028765f7461626c655f6462203d204441544142415345282920414e442028765f7461626c655f6e616d65203d2027746d705f6469676573747327204f5220765f7461626c655f6e616d65203d2027746d705f646967657374735f64656c7461272929205448454e2053455420765f6572726f725f6d7367203d20434f4e4341542827496e76616c69642076616c756520666f7220696e5f7461626c653a20272c20765f71756f7465645f7461626c652c2027206973207265736572766564207461626c65206e616d652e27293b205349474e414c2053514c5354415445202734353030302720534554204d4553534147455f54455854203d20765f6572726f725f6d73673b20454e442049463b202043414c4c207379732e7461626c655f65786973747328765f7461626c655f64622c20765f7461626c655f6e616d652c20765f7461626c655f657869737473293b2049462028407379732e6465627567203d20274f4e2729205448454e2053454c45435420434f4e4341542827765f7461626c655f657869737473203d20272c20765f7461626c655f6578697374732920415320274465627567273b20454e442049463b202049462028765f7461626c655f657869737473203d202742415345205441424c452729205448454e2053455420765f636865636b73756d5f726566203d20282053454c4543542047524f55505f434f4e43415428434f4e43415428434f4c554d4e5f4e414d452c20434f4c554d4e5f5459504529204f52444552204259204f5244494e414c5f504f534954494f4e2920415320436865636b73756d2046524f4d20696e666f726d6174696f6e5f736368656d612e434f4c554d4e53205748455245205441424c455f534348454d41203d2027706572666f726d616e63655f736368656d612720414e44205441424c455f4e414d45203d20276576656e74735f73746174656d656e74735f73756d6d6172795f62795f6469676573742720292c20765f636865636b73756d5f7461626c65203d20282053454c4543542047524f55505f434f4e43415428434f4e43415428434f4c554d4e5f4e414d452c20434f4c554d4e5f5459504529204f52444552204259204f5244494e414c5f504f534954494f4e2920415320436865636b73756d2046524f4d20696e666f726d6174696f6e5f736368656d612e434f4c554d4e53205748455245205441424c455f534348454d41203d20765f7461626c655f646220414e44205441424c455f4e414d45203d20765f7461626c655f6e616d6520293b202049462028765f636865636b73756d5f726566203c3e20765f636865636b73756d5f7461626c6529205448454e2053455420765f6572726f725f6d7367203d20434f4e4341542827546865207461626c6520272c20494628434841525f4c454e47544828765f71756f7465645f7461626c6529203e2039332c20434f4e43415428272e2e2e272c20535542535452494e4728765f71756f7465645f7461626c652c202d393029292c20765f71756f7465645f7461626c65292c202720686173207468652077726f6e6720646566696e6974696f6e2e27293b205349474e414c2053514c5354415445202734353030302720534554204d4553534147455f54455854203d20765f6572726f725f6d73673b20454e442049463b20454e442049463b20454e442049463b20202049462028696e5f7669657773204953204e554c4c204f5220696e5f7669657773203d20272729205448454e2053455420696e5f7669657773203d2027776974685f72756e74696d65735f696e5f393574685f70657263656e74696c652c616e616c797369732c776974685f6572726f72735f6f725f7761726e696e67732c776974685f66756c6c5f7461626c655f7363616e732c776974685f736f7274696e672c776974685f74656d705f7461626c6573273b20454e442049463b20202043414c4c207379732e7461626c655f65786973747328444154414241534528292c2027746d705f64696765737473272c20765f746d705f646967657374735f7461626c655f657869737473293b2049462028407379732e6465627567203d20274f4e2729205448454e2053454c45435420434f4e4341542827765f746d705f646967657374735f7461626c655f657869737473203d20272c20765f746d705f646967657374735f7461626c655f6578697374732920415320274465627567273b20454e442049463b202043415345205748454e20696e5f616374696f6e20494e202827736e617073686f74272c20276f766572616c6c2729205448454e2049462028696e5f7461626c65204953204e4f54204e554c4c29205448454e20494620284e4f5420765f7461626c655f65786973747320494e20282754454d504f52415259272c202742415345205441424c45272929205448454e2053455420765f6572726f725f6d7367203d20434f4e434154282754686520272c20696e5f616374696f6e2c202720616374696f6e20726571756972657320696e5f7461626c6520746f206265204e554c4c2c204e4f572829206f72207370656369667920616e206578697374696e67207461626c652e272c202720546865207461626c6520272c20494628434841525f4c454e47544828765f71756f7465645f7461626c6529203e2031362c20434f4e43415428272e2e2e272c20535542535452494e4728765f71756f7465645f7461626c652c202d313329292c20765f71756f7465645f7461626c65292c202720646f6573206e6f742065786973742e27293b205349474e414c2053514c5354415445202734353030302720534554204d4553534147455f54455854203d20765f6572726f725f6d73673b20454e442049463b20454e442049463b20205748454e20696e5f616374696f6e20494e20282764656c7461272c2027736176652729205448454e2049462028765f7461626c655f657869737473204e4f5420494e20282754454d504f52415259272c202742415345205441424c45272929205448454e2053455420765f6572726f725f6d7367203d20434f4e434154282754686520272c20696e5f616374696f6e2c202720616374696f6e20726571756972657320696e5f7461626c6520746f20626520616e206578697374696e67207461626c652e272c20494628696e5f7461626c65204953204e4f54204e554c4c2c20434f4e434154282720546865207461626c6520272c20494628434841525f4c454e47544828765f71756f7465645f7461626c6529203e2033392c20434f4e43415428272e2e2e272c20535542535452494e4728765f71756f7465645f7461626c652c202d333629292c20765f71756f7465645f7461626c65292c202720646f6573206e6f742065786973742e27292c20272729293b205349474e414c2053514c5354415445202734353030302720534554204d4553534147455f54455854203d20765f6572726f725f6d73673b20454e442049463b202049462028696e5f616374696f6e203d202764656c74612720414e4420765f746d705f646967657374735f7461626c655f657869737473203c3e202754454d504f524152592729205448454e205349474e414c2053514c5354415445202734353030302720534554204d4553534147455f54455854203d2027416e206578697374696e6720736e617073686f742067656e6572617465642077697468207468652073746174656d656e745f706572666f726d616e63655f616e616c797a65722829206d7573742065786973742e273b20454e442049463b205748454e20696e5f616374696f6e203d20276372656174655f746d7027205448454e2049462028765f7461626c655f657869737473203d202754454d504f524152592729205448454e2053455420765f6572726f725f6d7367203d20434f4e434154282743616e6e6f742063726561746520746865207461626c6520272c20494628434841525f4c454e47544828765f71756f7465645f7461626c6529203e2037322c20434f4e43415428272e2e2e272c20535542535452494e4728765f71756f7465645f7461626c652c202d363929292c20765f71756f7465645f7461626c65292c202720617320697420616c7265616479206578697374732e27293b205349474e414c2053514c5354415445202734353030302720534554204d4553534147455f54455854203d20765f6572726f725f6d73673b20454e442049463b20205748454e20696e5f616374696f6e203d20276372656174655f7461626c6527205448454e2049462028765f7461626c655f657869737473203c3e20272729205448454e2053455420765f6572726f725f6d7367203d20434f4e434154282743616e6e6f742063726561746520746865207461626c6520272c20494628434841525f4c454e47544828765f71756f7465645f7461626c6529203e2035322c20434f4e43415428272e2e2e272c20535542535452494e4728765f71756f7465645f7461626c652c202d343929292c20765f71756f7465645f7461626c65292c202720617320697420616c726561647920657869737473272c20494628765f7461626c655f657869737473203d202754454d504f52415259272c202720617320612074656d706f72617279207461626c652e272c20272e2729293b205349474e414c2053514c5354415445202734353030302720534554204d4553534147455f54455854203d20765f6572726f725f6d73673b20454e442049463b20205748454e20696e5f616374696f6e203d2027636c65616e757027205448454e20444f202853454c4543542031293b20454c5345205349474e414c2053514c5354415445202734353030302720534554204d4553534147455f54455854203d2027556e6b6e6f776e20616374696f6e2e20537570706f7274656420616374696f6e73206172653a20636c65616e75702c206372656174655f7461626c652c206372656174655f746d702c2064656c74612c206f766572616c6c2c20736176652c20736e617073686f74273b20454e4420434153453b202053455420765f6469676573745f7461626c655f74656d706c617465203d202743524541544520257b54454d504f524152597d5441424c4520257b5441424c455f4e414d457d20282060534348454d415f4e414d45602076617263686172283634292044454641554c54204e554c4c2c2060444947455354602076617263686172283332292044454641554c54204e554c4c2c20604449474553545f5445585460206c6f6e67746578742c2060434f554e545f535441526020626967696e742832302920756e7369676e6564204e4f54204e554c4c2c206053554d5f54494d45525f574149546020626967696e742832302920756e7369676e6564204e4f54204e554c4c2c20604d494e5f54494d45525f574149546020626967696e742832302920756e7369676e6564204e4f54204e554c4c2c20604156475f54494d45525f574149546020626967696e742832302920756e7369676e6564204e4f54204e554c4c2c20604d41585f54494d45525f574149546020626967696e742832302920756e7369676e6564204e4f54204e554c4c2c206053554d5f4c4f434b5f54494d456020626967696e742832302920756e7369676e6564204e4f54204e554c4c2c206053554d5f4552524f52536020626967696e742832302920756e7369676e6564204e4f54204e554c4c2c206053554d5f5741524e494e47536020626967696e742832302920756e7369676e6564204e4f54204e554c4c2c206053554d5f524f57535f41464645435445446020626967696e742832302920756e7369676e6564204e4f54204e554c4c2c206053554d5f524f57535f53454e546020626967696e742832302920756e7369676e6564204e4f54204e554c4c2c206053554d5f524f57535f4558414d494e45446020626967696e742832302920756e7369676e6564204e4f54204e554c4c2c206053554d5f435245415445445f544d505f4449534b5f5441424c45536020626967696e742832302920756e7369676e6564204e4f54204e554c4c2c206053554d5f435245415445445f544d505f5441424c45536020626967696e742832302920756e7369676e6564204e4f54204e554c4c2c206053554d5f53454c4543545f46554c4c5f4a4f494e6020626967696e742832302920756e7369676e6564204e4f54204e554c4c2c206053554d5f53454c4543545f46554c4c5f52414e47455f4a4f494e6020626967696e742832302920756e7369676e6564204e4f54204e554c4c2c206053554d5f53454c4543545f52414e47456020626967696e742832302920756e7369676e6564204e4f54204e554c4c2c206053554d5f53454c4543545f52414e47455f434845434b6020626967696e742832302920756e7369676e6564204e4f54204e554c4c2c206053554d5f53454c4543545f5343414e6020626967696e742832302920756e7369676e6564204e4f54204e554c4c2c206053554d5f534f52545f4d455247455f5041535345536020626967696e742832302920756e7369676e6564204e4f54204e554c4c2c206053554d5f534f52545f52414e47456020626967696e742832302920756e7369676e6564204e4f54204e554c4c2c206053554d5f534f52545f524f57536020626967696e742832302920756e7369676e6564204e4f54204e554c4c2c206053554d5f534f52545f5343414e6020626967696e742832302920756e7369676e6564204e4f54204e554c4c2c206053554d5f4e4f5f494e4445585f555345446020626967696e742832302920756e7369676e6564204e4f54204e554c4c2c206053554d5f4e4f5f474f4f445f494e4445585f555345446020626967696e742832302920756e7369676e6564204e4f54204e554c4c2c206046495253545f5345454e602074696d657374616d70204e554c4c2044454641554c54204e554c4c2c20604c4153545f5345454e602074696d657374616d70204e554c4c2044454641554c54204e554c4c2c20494e4445582028534348454d415f4e414d452c204449474553542920292044454641554c5420434841525345543d75746638273b202049462028765f666f7263655f6e65775f736e617073686f74204f5220696e5f616374696f6e203d2027736e617073686f7427204f522028696e5f616374696f6e203d20276f766572616c6c2720414e4420696e5f7461626c65204953204e554c4c29204f522028696e5f616374696f6e203d2027736176652720414e4420765f746d705f646967657374735f7461626c655f657869737473203c3e202754454d504f5241525927292029205448454e2049462028765f746d705f646967657374735f7461626c655f657869737473203d202754454d504f524152592729205448454e2049462028407379732e6465627567203d20274f4e2729205448454e2053454c454354202744524f502054454d504f52415259205441424c452049462045584953545320746d705f646967657374732720415320274465627567273b20454e442049463b2044524f502054454d504f52415259205441424c452049462045584953545320746d705f646967657374733b20454e442049463b2043414c4c207379732e657865637574655f70726570617265645f73746d74285245504c414345285245504c41434528765f6469676573745f7461626c655f74656d706c6174652c2027257b54454d504f524152597d272c202754454d504f524152592027292c2027257b5441424c455f4e414d457d272c2027746d705f646967657374732729293b202053455420765f73716c203d20434f4e4341542827494e5345525420494e544f20746d705f646967657374732053454c454354202a2046524f4d20272c20494628696e5f7461626c65204953204e554c4c204f5220696e5f616374696f6e203d202773617665272c2027706572666f726d616e63655f736368656d612e6576656e74735f73746174656d656e74735f73756d6d6172795f62795f646967657374272c20765f71756f7465645f7461626c6529293b2043414c4c207379732e657865637574655f70726570617265645f73746d7428765f73716c293b20454e442049463b202049462028696e5f616374696f6e20494e2028276372656174655f7461626c65272c20276372656174655f746d70272929205448454e2049462028696e5f616374696f6e203d20276372656174655f7461626c652729205448454e2043414c4c207379732e657865637574655f70726570617265645f73746d74285245504c414345285245504c41434528765f6469676573745f7461626c655f74656d706c6174652c2027257b54454d504f524152597d272c202727292c2027257b5441424c455f4e414d457d272c20765f71756f7465645f7461626c6529293b20454c53452043414c4c207379732e657865637574655f70726570617265645f73746d74285245504c414345285245504c41434528765f6469676573745f7461626c655f74656d706c6174652c2027257b54454d504f524152597d272c202754454d504f524152592027292c2027257b5441424c455f4e414d457d272c20765f71756f7465645f7461626c6529293b20454e442049463b20454c534549462028696e5f616374696f6e203d2027736176652729205448454e2043414c4c207379732e657865637574655f70726570617265645f73746d7428434f4e434154282744454c4554452046524f4d20272c20765f71756f7465645f7461626c6529293b2043414c4c207379732e657865637574655f70726570617265645f73746d7428434f4e4341542827494e5345525420494e544f20272c20765f71756f7465645f7461626c652c20272053454c454354202a2046524f4d20746d705f646967657374732729293b20454c534549462028696e5f616374696f6e203d2027636c65616e75702729205448454e2044524f502054454d504f52415259205441424c4520494620455849535453207379732e746d705f646967657374733b2044524f502054454d504f52415259205441424c4520494620455849535453207379732e746d705f646967657374735f64656c74613b20454c534549462028696e5f616374696f6e20494e2028276f766572616c6c272c202764656c7461272929205448454e2049462028696e5f616374696f6e203d20276f766572616c6c2729205448454e2049462028696e5f7461626c65204953204e554c4c29205448454e2053455420765f646967657374735f7461626c65203d2027746d705f64696765737473273b20454c53452053455420765f646967657374735f7461626c65203d20765f71756f7465645f7461626c653b20454e442049463b20454c53452053455420765f646967657374735f7461626c65203d2027746d705f646967657374735f64656c7461273b2044524f502054454d504f52415259205441424c452049462045584953545320746d705f646967657374735f64656c74613b204352454154452054454d504f52415259205441424c4520746d705f646967657374735f64656c7461204c494b4520746d705f646967657374733b2053455420765f73716c203d20434f4e4341542827494e5345525420494e544f20746d705f646967657374735f64656c74612053454c4543542060645f656e64602e60534348454d415f4e414d45602c2060645f656e64602e60444947455354602c2060645f656e64602e604449474553545f54455854602c2060645f656e64602e60434f554e545f53544152602d49464e554c4c2860645f7374617274602e60434f554e545f53544152602c203029204153202727434f554e545f5354415227272c2060645f656e64602e6053554d5f54494d45525f57414954602d49464e554c4c2860645f7374617274602e6053554d5f54494d45525f57414954602c20302920415320272753554d5f54494d45525f5741495427272c2060645f656e64602e604d494e5f54494d45525f57414954602041532027274d494e5f54494d45525f5741495427272c2049464e554c4c282860645f656e64602e6053554d5f54494d45525f57414954602d49464e554c4c2860645f7374617274602e6053554d5f54494d45525f57414954602c203029292f4e554c4c49462860645f656e64602e60434f554e545f53544152602d49464e554c4c2860645f7374617274602e60434f554e545f53544152602c2030292c2030292c2030292041532027274156475f54494d45525f5741495427272c2060645f656e64602e604d41585f54494d45525f57414954602041532027274d41585f54494d45525f5741495427272c2060645f656e64602e6053554d5f4c4f434b5f54494d45602d49464e554c4c2860645f7374617274602e6053554d5f4c4f434b5f54494d45602c20302920415320272753554d5f4c4f434b5f54494d4527272c2060645f656e64602e6053554d5f4552524f5253602d49464e554c4c2860645f7374617274602e6053554d5f4552524f5253602c20302920415320272753554d5f4552524f525327272c2060645f656e64602e6053554d5f5741524e494e4753602d49464e554c4c2860645f7374617274602e6053554d5f5741524e494e4753602c20302920415320272753554d5f5741524e494e475327272c2060645f656e64602e6053554d5f524f57535f4146464543544544602d49464e554c4c2860645f7374617274602e6053554d5f524f57535f4146464543544544602c20302920415320272753554d5f524f57535f414646454354454427272c2060645f656e64602e6053554d5f524f57535f53454e54602d49464e554c4c2860645f7374617274602e6053554d5f524f57535f53454e54602c20302920415320272753554d5f524f57535f53454e5427272c2060645f656e64602e6053554d5f524f57535f4558414d494e4544602d49464e554c4c2860645f7374617274602e6053554d5f524f57535f4558414d494e4544602c20302920415320272753554d5f524f57535f4558414d494e454427272c2060645f656e64602e6053554d5f435245415445445f544d505f4449534b5f5441424c4553602d49464e554c4c2860645f7374617274602e6053554d5f435245415445445f544d505f4449534b5f5441424c4553602c20302920415320272753554d5f435245415445445f544d505f4449534b5f5441424c455327272c2060645f656e64602e6053554d5f435245415445445f544d505f5441424c4553602d49464e554c4c2860645f7374617274602e6053554d5f435245415445445f544d505f5441424c4553602c20302920415320272753554d5f435245415445445f544d505f5441424c455327272c2060645f656e64602e6053554d5f53454c4543545f46554c4c5f4a4f494e602d49464e554c4c2860645f7374617274602e6053554d5f53454c4543545f46554c4c5f4a4f494e602c20302920415320272753554d5f53454c4543545f46554c4c5f4a4f494e27272c2060645f656e64602e6053554d5f53454c4543545f46554c4c5f52414e47455f4a4f494e602d49464e554c4c2860645f7374617274602e6053554d5f53454c4543545f46554c4c5f52414e47455f4a4f494e602c20302920415320272753554d5f53454c4543545f46554c4c5f52414e47455f4a4f494e27272c2060645f656e64602e6053554d5f53454c4543545f52414e4745602d49464e554c4c2860645f7374617274602e6053554d5f53454c4543545f52414e4745602c20302920415320272753554d5f53454c4543545f52414e474527272c2060645f656e64602e6053554d5f53454c4543545f52414e47455f434845434b602d49464e554c4c2860645f7374617274602e6053554d5f53454c4543545f52414e47455f434845434b602c20302920415320272753554d5f53454c4543545f52414e47455f434845434b27272c2060645f656e64602e6053554d5f53454c4543545f5343414e602d49464e554c4c2860645f7374617274602e6053554d5f53454c4543545f5343414e602c20302920415320272753554d5f53454c4543545f5343414e27272c2060645f656e64602e6053554d5f534f52545f4d455247455f504153534553602d49464e554c4c2860645f7374617274602e6053554d5f534f52545f4d455247455f504153534553602c20302920415320272753554d5f534f52545f4d455247455f50415353455327272c2060645f656e64602e6053554d5f534f52545f52414e4745602d49464e554c4c2860645f7374617274602e6053554d5f534f52545f52414e4745602c20302920415320272753554d5f534f52545f52414e474527272c2060645f656e64602e6053554d5f534f52545f524f5753602d49464e554c4c2860645f7374617274602e6053554d5f534f52545f524f5753602c20302920415320272753554d5f534f52545f524f575327272c2060645f656e64602e6053554d5f534f52545f5343414e602d49464e554c4c2860645f7374617274602e6053554d5f534f52545f5343414e602c20302920415320272753554d5f534f52545f5343414e27272c2060645f656e64602e6053554d5f4e4f5f494e4445585f55534544602d49464e554c4c2860645f7374617274602e6053554d5f4e4f5f494e4445585f55534544602c20302920415320272753554d5f4e4f5f494e4445585f5553454427272c2060645f656e64602e6053554d5f4e4f5f474f4f445f494e4445585f55534544602d49464e554c4c2860645f7374617274602e6053554d5f4e4f5f474f4f445f494e4445585f55534544602c20302920415320272753554d5f4e4f5f474f4f445f494e4445585f5553454427272c2060645f656e64602e6046495253545f5345454e602c2060645f656e64602e604c4153545f5345454e602046524f4d20746d705f6469676573747320645f656e64204c454654204f55544552204a4f494e20272c20765f71756f7465645f7461626c652c202720645f7374617274204f4e2060645f7374617274602e6044494745535460203d2060645f656e64602e604449474553546020414e44202860645f7374617274602e60534348454d415f4e414d4560203d2060645f656e64602e60534348454d415f4e414d4560204f52202860645f7374617274602e60534348454d415f4e414d4560204953204e554c4c20414e442060645f656e64602e60534348454d415f4e414d4560204953204e554c4c2920292057484552452060645f656e64602e60434f554e545f53544152602d49464e554c4c2860645f7374617274602e60434f554e545f53544152602c203029203e203027293b2043414c4c207379732e657865637574655f70726570617265645f73746d7428765f73716c293b20454e442049463b20204946202846494e445f494e5f5345542827776974685f72756e74696d65735f696e5f393574685f70657263656e74696c65272c20696e5f76696577732929205448454e2053454c45435420275175657269657320776974682052756e74696d6520696e20393574682050657263656e74696c652720415320274e657874204f7574707574273b202044524f502054454d504f52415259205441424c452049462045584953545320746d705f6469676573745f6176675f6c6174656e63795f646973747269627574696f6e313b2044524f502054454d504f52415259205441424c452049462045584953545320746d705f6469676573745f6176675f6c6174656e63795f646973747269627574696f6e323b2044524f502054454d504f52415259205441424c452049462045584953545320746d705f6469676573745f393574685f70657263656e74696c655f62795f6176675f75733b20204352454154452054454d504f52415259205441424c4520746d705f6469676573745f6176675f6c6174656e63795f646973747269627574696f6e31202820636e7420626967696e7420756e7369676e6564204e4f54204e554c4c2c206176675f757320646563696d616c2832312c3029204e4f54204e554c4c2c205052494d415259204b455920286176675f757329202920454e47494e453d496e6e6f44423b202053455420765f73716c203d20434f4e4341542827494e5345525420494e544f20746d705f6469676573745f6176675f6c6174656e63795f646973747269627574696f6e312053454c45435420434f554e54282a2920636e742c2020524f554e44286176675f74696d65725f776169742f3130303030303029204153206176675f75732046524f4d20272c20765f646967657374735f7461626c652c20272047524f5550204259206176675f757327293b2043414c4c207379732e657865637574655f70726570617265645f73746d7428765f73716c293b20204352454154452054454d504f52415259205441424c4520746d705f6469676573745f6176675f6c6174656e63795f646973747269627574696f6e32204c494b4520746d705f6469676573745f6176675f6c6174656e63795f646973747269627574696f6e313b20494e5345525420494e544f20746d705f6469676573745f6176675f6c6174656e63795f646973747269627574696f6e322053454c454354202a2046524f4d20746d705f6469676573745f6176675f6c6174656e63795f646973747269627574696f6e313b20204352454154452054454d504f52415259205441424c4520746d705f6469676573745f393574685f70657263656e74696c655f62795f6176675f75732028206176675f757320646563696d616c2832312c3029204e4f54204e554c4c2c2070657263656e74696c6520646563696d616c2834362c3429204e4f54204e554c4c2c205052494d415259204b455920286176675f757329202920454e47494e453d496e6e6f44423b202053455420765f73716c203d20434f4e4341542827494e5345525420494e544f20746d705f6469676573745f393574685f70657263656e74696c655f62795f6176675f75732053454c4543542073322e6176675f7573206176675f75732c2049464e554c4c2853554d2873312e636e74292f4e554c4c4946282853454c45435420434f554e54282a292046524f4d20272c20765f646967657374735f7461626c652c2027292c2030292c2030292070657263656e74696c652046524f4d20746d705f6469676573745f6176675f6c6174656e63795f646973747269627574696f6e31204153207331204a4f494e20746d705f6469676573745f6176675f6c6174656e63795f646973747269627574696f6e32204153207332204f4e2073312e6176675f7573203c3d2073322e6176675f75732047524f55502042592073322e6176675f757320484156494e472070657263656e74696c65203e20302e3935204f524445522042592070657263656e74696c65204c494d4954203127293b2043414c4c207379732e657865637574655f70726570617265645f73746d7428765f73716c293b202053455420765f73716c203d205245504c41434528205245504c41434528202853454c45435420564945575f444546494e4954494f4e2046524f4d20696e666f726d6174696f6e5f736368656d612e5649455753205748455245205441424c455f534348454d41203d204441544142415345282920414e44205441424c455f4e414d45203d202773746174656d656e74735f776974685f72756e74696d65735f696e5f393574685f70657263656e74696c652720292c202760706572666f726d616e63655f736368656d61602e606576656e74735f73746174656d656e74735f73756d6d6172795f62795f64696765737460272c20765f646967657374735f7461626c6520292c20277379732e782470735f6469676573745f393574685f70657263656e74696c655f62795f6176675f7573272c202760737973602e60782470735f6469676573745f393574685f70657263656e74696c655f62795f6176675f7573602720293b2043414c4c207379732e657865637574655f70726570617265645f73746d7428765f73716c293b202044524f502054454d504f52415259205441424c4520746d705f6469676573745f6176675f6c6174656e63795f646973747269627574696f6e313b2044524f502054454d504f52415259205441424c4520746d705f6469676573745f6176675f6c6174656e63795f646973747269627574696f6e323b2044524f502054454d504f52415259205441424c4520746d705f6469676573745f393574685f70657263656e74696c655f62795f6176675f75733b20454e442049463b20204946202846494e445f494e5f5345542827616e616c79736973272c20696e5f76696577732929205448454e2053454c45435420434f4e4341542827546f7020272c20407379732e73746174656d656e745f706572666f726d616e63655f616e616c797a65722e6c696d69742c20272051756572696573204f72646572656420627920546f74616c204c6174656e6379272920415320274e657874204f7574707574273b2053455420765f73716c203d205245504c41434528202853454c45435420564945575f444546494e4954494f4e2046524f4d20696e666f726d6174696f6e5f736368656d612e5649455753205748455245205441424c455f534348454d41203d204441544142415345282920414e44205441424c455f4e414d45203d202773746174656d656e745f616e616c797369732720292c202760706572666f726d616e63655f736368656d61602e606576656e74735f73746174656d656e74735f73756d6d6172795f62795f64696765737460272c20765f646967657374735f7461626c6520293b2049462028407379732e73746174656d656e745f706572666f726d616e63655f616e616c797a65722e6c696d6974203e203029205448454e2053455420765f73716c203d20434f4e43415428765f73716c2c2027204c494d495420272c20407379732e73746174656d656e745f706572666f726d616e63655f616e616c797a65722e6c696d6974293b20454e442049463b2043414c4c207379732e657865637574655f70726570617265645f73746d7428765f73716c293b20454e442049463b20204946202846494e445f494e5f5345542827776974685f6572726f72735f6f725f7761726e696e6773272c20696e5f76696577732929205448454e2053454c45435420434f4e4341542827546f7020272c20407379732e73746174656d656e745f706572666f726d616e63655f616e616c797a65722e6c696d69742c202720517565726965732077697468204572726f7273272920415320274e657874204f7574707574273b2053455420765f73716c203d205245504c41434528202853454c45435420564945575f444546494e4954494f4e2046524f4d20696e666f726d6174696f6e5f736368656d612e5649455753205748455245205441424c455f534348454d41203d204441544142415345282920414e44205441424c455f4e414d45203d202773746174656d656e74735f776974685f6572726f72735f6f725f7761726e696e67732720292c202760706572666f726d616e63655f736368656d61602e606576656e74735f73746174656d656e74735f73756d6d6172795f62795f64696765737460272c20765f646967657374735f7461626c6520293b2049462028407379732e73746174656d656e745f706572666f726d616e63655f616e616c797a65722e6c696d6974203e203029205448454e2053455420765f73716c203d20434f4e43415428765f73716c2c2027204c494d495420272c20407379732e73746174656d656e745f706572666f726d616e63655f616e616c797a65722e6c696d6974293b20454e442049463b2043414c4c207379732e657865637574655f70726570617265645f73746d7428765f73716c293b20454e442049463b20204946202846494e445f494e5f5345542827776974685f66756c6c5f7461626c655f7363616e73272c20696e5f76696577732929205448454e2053454c45435420434f4e4341542827546f7020272c20407379732e73746174656d656e745f706572666f726d616e63655f616e616c797a65722e6c696d69742c2027205175657269657320776974682046756c6c205461626c65205363616e272920415320274e657874204f7574707574273b2053455420765f73716c203d205245504c41434528202853454c45435420564945575f444546494e4954494f4e2046524f4d20696e666f726d6174696f6e5f736368656d612e5649455753205748455245205441424c455f534348454d41203d204441544142415345282920414e44205441424c455f4e414d45203d202773746174656d656e74735f776974685f66756c6c5f7461626c655f7363616e732720292c202760706572666f726d616e63655f736368656d61602e606576656e74735f73746174656d656e74735f73756d6d6172795f62795f64696765737460272c20765f646967657374735f7461626c6520293b2049462028407379732e73746174656d656e745f706572666f726d616e63655f616e616c797a65722e6c696d6974203e203029205448454e2053455420765f73716c203d20434f4e43415428765f73716c2c2027204c494d495420272c20407379732e73746174656d656e745f706572666f726d616e63655f616e616c797a65722e6c696d6974293b20454e442049463b2043414c4c207379732e657865637574655f70726570617265645f73746d7428765f73716c293b20454e442049463b20204946202846494e445f494e5f5345542827776974685f736f7274696e67272c20696e5f76696577732929205448454e2053454c45435420434f4e4341542827546f7020272c20407379732e73746174656d656e745f706572666f726d616e63655f616e616c797a65722e6c696d69742c20272051756572696573207769746820536f7274696e67272920415320274e657874204f7574707574273b2053455420765f73716c203d205245504c41434528202853454c45435420564945575f444546494e4954494f4e2046524f4d20696e666f726d6174696f6e5f736368656d612e5649455753205748455245205441424c455f534348454d41203d204441544142415345282920414e44205441424c455f4e414d45203d202773746174656d656e74735f776974685f736f7274696e672720292c202760706572666f726d616e63655f736368656d61602e606576656e74735f73746174656d656e74735f73756d6d6172795f62795f64696765737460272c20765f646967657374735f7461626c6520293b2049462028407379732e73746174656d656e745f706572666f726d616e63655f616e616c797a65722e6c696d6974203e203029205448454e2053455420765f73716c203d20434f4e43415428765f73716c2c2027204c494d495420272c20407379732e73746174656d656e745f706572666f726d616e63655f616e616c797a65722e6c696d6974293b20454e442049463b2043414c4c207379732e657865637574655f70726570617265645f73746d7428765f73716c293b20454e442049463b20204946202846494e445f494e5f5345542827776974685f74656d705f7461626c6573272c20696e5f76696577732929205448454e2053454c45435420434f4e4341542827546f7020272c20407379732e73746174656d656e745f706572666f726d616e63655f616e616c797a65722e6c696d69742c20272051756572696573207769746820496e7465726e616c2054656d706f72617279205461626c6573272920415320274e657874204f7574707574273b2053455420765f73716c203d205245504c41434528202853454c45435420564945575f444546494e4954494f4e2046524f4d20696e666f726d6174696f6e5f736368656d612e5649455753205748455245205441424c455f534348454d41203d204441544142415345282920414e44205441424c455f4e414d45203d202773746174656d656e74735f776974685f74656d705f7461626c65732720292c202760706572666f726d616e63655f736368656d61602e606576656e74735f73746174656d656e74735f73756d6d6172795f62795f64696765737460272c20765f646967657374735f7461626c6520293b2049462028407379732e73746174656d656e745f706572666f726d616e63655f616e616c797a65722e6c696d6974203e203029205448454e2053455420765f73716c203d20434f4e43415428765f73716c2c2027204c494d495420272c20407379732e73746174656d656e745f706572666f726d616e63655f616e616c797a65722e6c696d6974293b20454e442049463b2043414c4c207379732e657865637574655f70726570617265645f73746d7428765f73716c293b20454e442049463b20204946202846494e445f494e5f5345542827637573746f6d272c20696e5f76696577732929205448454e2053454c45435420434f4e4341542827546f7020272c20407379732e73746174656d656e745f706572666f726d616e63655f616e616c797a65722e6c696d69742c20272051756572696573205573696e6720437573746f6d2056696577272920415320274e657874204f7574707574273b202049462028407379732e73746174656d656e745f706572666f726d616e63655f616e616c797a65722e76696577204953204e554c4c29205448454e2053455420407379732e73746174656d656e745f706572666f726d616e63655f616e616c797a65722e76696577203d207379732e7379735f6765745f636f6e666967282773746174656d656e745f706572666f726d616e63655f616e616c797a65722e76696577272c204e554c4c293b20454e442049463b2049462028407379732e73746174656d656e745f706572666f726d616e63655f616e616c797a65722e76696577204953204e554c4c29205448454e205349474e414c2053514c5354415445202734353030302720534554204d4553534147455f54455854203d202754686520407379732e73746174656d656e745f706572666f726d616e63655f616e616c797a65722e766965772075736572207661726961626c65206d757374206265207365742077697468207468652076696577206f7220717565727920746f207573652e273b20454e442049463b2020494620284e4f5420494e53545228407379732e73746174656d656e745f706572666f726d616e63655f616e616c797a65722e766965772c202720272929205448454e20494620284e4f5420494e53545228407379732e73746174656d656e745f706572666f726d616e63655f616e616c797a65722e766965772c20272e272929205448454e2053455420765f637573746f6d5f64622020203d20444154414241534528292c20765f637573746f6d5f6e616d65203d20407379732e73746174656d656e745f706572666f726d616e63655f616e616c797a65722e766965773b20454c53452053455420765f637573746f6d5f64622020203d20535542535452494e475f494e44455828407379732e73746174656d656e745f706572666f726d616e63655f616e616c797a65722e766965772c20272e272c2031293b2053455420765f637573746f6d5f6e616d65203d20535542535452494e4728407379732e73746174656d656e745f706572666f726d616e63655f616e616c797a65722e766965772c20434841525f4c454e47544828765f637573746f6d5f6462292b32293b20454e442049463b202043414c4c207379732e7461626c655f65786973747328765f637573746f6d5f64622c20765f637573746f6d5f6e616d652c20765f637573746f6d5f766965775f657869737473293b2049462028765f637573746f6d5f766965775f657869737473203c3e2027564945572729205448454e205349474e414c2053514c5354415445202734353030302720534554204d4553534147455f54455854203d202754686520407379732e73746174656d656e745f706572666f726d616e63655f616e616c797a65722e766965772075736572207661726961626c65206973207365742062757420737065636966696564206e65697468657220616e206578697374696e672076696577206e6f7220612071756572792e273b20454e442049463b202053455420765f73716c203d205245504c41434528202853454c45435420564945575f444546494e4954494f4e2046524f4d20696e666f726d6174696f6e5f736368656d612e5649455753205748455245205441424c455f534348454d41203d20765f637573746f6d5f646220414e44205441424c455f4e414d45203d20765f637573746f6d5f6e616d6520292c202760706572666f726d616e63655f736368656d61602e606576656e74735f73746174656d656e74735f73756d6d6172795f62795f64696765737460272c20765f646967657374735f7461626c6520293b20454c53452053455420765f73716c203d205245504c41434528407379732e73746174656d656e745f706572666f726d616e63655f616e616c797a65722e766965772c202760706572666f726d616e63655f736368656d61602e606576656e74735f73746174656d656e74735f73756d6d6172795f62795f64696765737460272c20765f646967657374735f7461626c65293b20454e442049463b202049462028407379732e73746174656d656e745f706572666f726d616e63655f616e616c797a65722e6c696d6974203e203029205448454e2053455420765f73716c203d20434f4e43415428765f73716c2c2027204c494d495420272c20407379732e73746174656d656e745f706572666f726d616e63655f616e616c797a65722e6c696d6974293b20454e442049463b202043414c4c207379732e657865637574655f70726570617265645f73746d7428765f73716c293b20454e442049463b20454e442049463b202049462028765f746869735f7468726561645f656e61626c6564203d20275945532729205448454e2043414c4c207379732e70735f73657475705f656e61626c655f74687265616428434f4e4e454354494f4e5f49442829293b20454e442049463b202049462028406c6f675f62696e203d203129205448454e205345542073716c5f6c6f675f62696e203d20406c6f675f62696e3b20454e442049463b20454e44, 'mysql.sys@localhost', '2018-07-09 10:50:31', '2018-07-09 10:50:31', '', '\n Description\n \n Create a report of the statements running on the server.\n \n The views are calculated based on the overall and/or delta activity.\n \n Requires the SUPER privilege for \"SET sql_log_bin = 0;\".\n \n Parameters\n \n in_action (ENUM(\'snapshot\', \'overall\', \'delta\', \'create_tmp\', \'create_table\', \'save\', \'cleanup\')):\n The action to take. Supported actions are:\n * snapshot      Store a snapshot. The default is to make a snapshot of the current content of\n performance_schema.events_statements_summary_by_digest, but by setting in_table\n this can be overwritten to copy the content of the specified table.\n The snapshot is stored in the sys.tmp_digests temporary table.\n * overall       Generate analyzis based on the content specified by in_table. For the overall analyzis,\n in_table can be NOW() to use a fresh snapshot. This will overwrite an existing snapshot.\n Use NULL for in_table to use the existing snapshot. If in_table IS NULL and no snapshot\n exists, a new will be created.\n See also in_views and @sys.statement_performance_analyzer.limit.\n * delta         Generate a delta analysis. The delta will be calculated between the reference table in\n in_table and the snapshot. An existing snapshot must exist.\n The action uses the sys.tmp_digests_delta temporary table.\n See also in_views and @sys.statement_performance_analyzer.limit.\n * create_table  Create a regular table suitable for storing the snapshot for later use, e.g. for\n calculating deltas.\n * create_tmp    Create a temporary table suitable for storing the snapshot for later use, e.g. for\n calculating deltas.\n * save          Save the snapshot in the table specified by in_table. The table must exists and have\n the correct structure.\n If no snapshot exists, a new is created.\n * cleanup       Remove the temporary tables used for the snapshot and delta.\n \n in_table (VARCHAR(129)):\n The table argument used for some actions. Use the format \'db1.t1\' or \'t1\' without using any backticks (`)\n for quoting. Periods (.) are not supported in the database and table names.\n \n The meaning of the table for each action supporting the argument is:\n \n * snapshot      The snapshot is created based on the specified table. Set to NULL or NOW() to use\n the current content of performance_schema.events_statements_summary_by_digest.\n * overall       The table with the content to create the overall analyzis for. The following values\n can be used:\n - A table name - use the content of that table.\n - NOW()        - create a fresh snapshot and overwrite the existing snapshot.\n - NULL         - use the last stored snapshot.\n * delta         The table name is mandatory and specified the reference view to compare the currently\n stored snapshot against. If no snapshot exists, a new will be created.\n * create_table  The name of the regular table to create.\n * create_tmp    The name of the temporary table to create.\n * save          The name of the table to save the currently stored snapshot into.\n \n in_views (SET (\'with_runtimes_in_95th_percentile\', \'analysis\', \'with_errors_or_warnings\',\n \'with_full_table_scans\', \'with_sorting\', \'with_temp_tables\', \'custom\'))\n Which views to include:  * with_runtimes_in_95th_percentile  Based on the sys.statements_with_runtimes_in_95th_percentile view * analysis                          Based on the sys.statement_analysis view * with_errors_or_warnings           Based on the sys.statements_with_errors_or_warnings view * with_full_table_scans             Based on the sys.statements_with_full_table_scans view * with_sorting                      Based on the sys.statements_with_sorting view * with_temp_tables                  Based on the sys.statements_with_temp_tables view * custom                            Use a custom view. This view must be specified in @sys.statement_performance_analyzer.view to an existing view or a query  Default is to include all except \'custom\'.   Configuration Options  sys.statement_performance_analyzer.limit The maximum number of rows to include for the views that does not have a built-in limit (e.g. the 95th percentile view). If not set the limit is 100.  sys.statement_performance_analyzer.view Used together with the \'custom\' view. If the value contains a space, it is considered a query, otherwise it must be an existing view querying the performance_schema.events_statements_summary_by_digest table. There cannot be any limit clause including in the query or view definition if @sys.statement_performance_analyzer.limit > 0. If specifying a view, use the same format as for in_table.  sys.debug Whether to provide debugging output. Default is \'OFF\'. Set to \'ON\' to include.   Example  To create a report with the queries in the 95th percentile since last truncate of performance_schema.events_statements_summary_by_digest and the delta for a 1 minute period:  1. Create a temporary table to store the initial snapshot. 2. Create the initial snapshot. 3. Save the initial snapshot in the temporary table. 4. Wait one minute. 5. Create a new snapshot. 6. Perform analyzis based on the new snapshot. 7. Perform analyzis based on the delta between the initial and new snapshots.  mysql> CALL sys.statement_performance_analyzer(\'create_tmp\', \'mydb.tmp_digests_ini\', NULL); Query OK, 0 rows affected (0.08 sec)  mysql> CALL sys.statement_performance_analyzer(\'snapshot\', NULL, NULL); Query OK, 0 rows affected (0.02 sec)  mysql> CALL sys.statement_performance_analyzer(\'save\', \'mydb.tmp_digests_ini\', NULL); Query OK, 0 rows affected (0.00 sec)  mysql> DO SLEEP(60); Query OK, 0 rows affected (1 min 0.00 sec)  mysql> CALL sys.statement_performance_analyzer(\'snapshot\', NULL, NULL); Query OK, 0 rows affected (0.02 sec)  mysql> CALL sys.statement_performance_analyzer(\'overall\', NULL, \'with_runtimes_in_95th_percentile\'); +-----------------------------------------+ | Next Output                             | +-----------------------------------------+ | Queries with Runtime in 95th Percentile | +-----------------------------------------+ 1 row in set (0.05 sec)  ...  mysql> CALL sys.statement_performance_analyzer(\'delta\', \'mydb.tmp_digests_ini\', \'with_runtimes_in_95th_percentile\'); +-----------------------------------------+ | Next Output                             | +-----------------------------------------+ | Queries with Runtime in 95th Percentile | +-----------------------------------------+ 1 row in set (0.03 sec)  ...   To create an overall report of the 95th percentile queries and the top 10 queries with full table scans:  mysql> CALL sys.statement_performance_analyzer(\'snapshot\', NULL, NULL); Query OK, 0 rows affected (0.01 sec)                                     mysql> SET @sys.statement_performance_analyzer.limit = 10; Query OK, 0 rows affected (0.00 sec)            mysql> CALL sys.statement_performance_analyzer(\'overall\', NULL, \'with_runtimes_in_95th_percentile,with_full_table_scans\'); +-----------------------------------------+ | Next Output                             | +-----------------------------------------+ | Queries with Runtime in 95th Percentile | +-----------------------------------------+ 1 row in set (0.01 sec)  ...  +-------------------------------------+ | Next Output                         | +-------------------------------------+ | Top 10 Queries with Full Table Scan | +-------------------------------------+ 1 row in set (0.09 sec)  ...   Use a custom view showing the top 10 query sorted by total execution time refreshing the view every minute using the watch command in Linux.  mysql> CREATE OR REPLACE VIEW mydb.my_statements AS -> SELECT sys.format_statement(DIGEST_TEXT) AS query, ->        SCHEMA_NAME AS db, ->        COUNT_STAR AS exec_count, ->        sys.format_time(SUM_TIMER_WAIT) AS total_latency, ->        sys.format_time(AVG_TIMER_WAIT) AS avg_latency, ->        ROUND(IFNULL(SUM_ROWS_SENT / NULLIF(COUNT_STAR, 0), 0)) AS rows_sent_avg, ->        ROUND(IFNULL(SUM_ROWS_EXAMINED / NULLIF(COUNT_STAR, 0), 0)) AS rows_examined_avg, ->        ROUND(IFNULL(SUM_ROWS_AFFECTED / NULLIF(COUNT_STAR, 0), 0)) AS rows_affected_avg, ->        DIGEST AS digest ->   FROM performance_schema.events_statements_summary_by_digest -> ORDER BY SUM_TIMER_WAIT DESC; Query OK, 0 rows affected (0.01 sec)  mysql> CALL sys.statement_performance_analyzer(\'create_table\', \'mydb.digests_prev\', NULL); Query OK, 0 rows affected (0.10 sec)  shell$ watch -n 60 \"mysql sys --table -e \" > SET @sys.statement_performance_analyzer.view = \'mydb.my_statements\'; > SET @sys.statement_performance_analyzer.limit = 10; > CALL statement_performance_analyzer(\'snapshot\', NULL, NULL); > CALL statement_performance_analyzer(\'delta\', \'mydb.digests_prev\', \'custom\'); > CALL statement_performance_analyzer(\'save\', \'mydb.digests_prev\', NULL); > \"\"  Every 60.0s: mysql sys --table -e \"                                                                                                   ...  Mon Dec 22 10:58:51 2014  +----------------------------------+ | Next Output                      | +----------------------------------+ | Top 10 Queries Using Custom View | +----------------------------------+ +-------------------+-------+------------+---------------+-------------+---------------+-------------------+-------------------+----------------------------------+ | query             | db    | exec_count | total_latency | avg_latency | rows_sent_avg | rows_examined_avg | rows_affected_avg | digest                           | +-------------------+-------+------------+---------------+-------------+---------------+-------------------+-------------------+----------------------------------+ ... ', 'utf8', 'utf8_general_ci', 'utf8_general_ci', 0x424547494e204445434c41524520765f7461626c655f6578697374732c20765f746d705f646967657374735f7461626c655f6578697374732c20765f637573746f6d5f766965775f65786973747320454e554d2827272c202742415345205441424c45272c202756494557272c202754454d504f5241525927292044454641554c542027273b204445434c41524520765f746869735f7468726561645f656e61626c656420454e554d2827594553272c20274e4f27293b204445434c41524520765f666f7263655f6e65775f736e617073686f7420424f4f4c45414e2044454641554c542046414c53453b204445434c41524520765f646967657374735f7461626c65205641524348415228313333293b204445434c41524520765f71756f7465645f7461626c652c20765f71756f7465645f637573746f6d5f76696577205641524348415228313333292044454641554c542027273b204445434c41524520765f7461626c655f64622c20765f7461626c655f6e616d652c20765f637573746f6d5f64622c20765f637573746f6d5f6e616d652056415243484152283634293b204445434c41524520765f6469676573745f7461626c655f74656d706c6174652c20765f636865636b73756d5f7265662c20765f636865636b73756d5f7461626c6520746578743b204445434c41524520765f73716c206c6f6e67746578743b204445434c41524520765f6572726f725f6d7367205641524348415228313238293b20202053454c45435420494e535452554d454e54454420494e544f20765f746869735f7468726561645f656e61626c65642046524f4d20706572666f726d616e63655f736368656d612e746872656164732057484552452050524f434553534c4953545f4944203d20434f4e4e454354494f4e5f494428293b2049462028765f746869735f7468726561645f656e61626c6564203d20275945532729205448454e2043414c4c207379732e70735f73657475705f64697361626c655f74687265616428434f4e4e454354494f4e5f49442829293b20454e442049463b202053455420406c6f675f62696e203a3d20404073716c5f6c6f675f62696e3b2049462028406c6f675f62696e203d203129205448454e205345542073716c5f6c6f675f62696e203d20303b20454e442049463b20202049462028407379732e73746174656d656e745f706572666f726d616e63655f616e616c797a65722e6c696d6974204953204e554c4c29205448454e2053455420407379732e73746174656d656e745f706572666f726d616e63655f616e616c797a65722e6c696d6974203d207379732e7379735f6765745f636f6e666967282773746174656d656e745f706572666f726d616e63655f616e616c797a65722e6c696d6974272c202731303027293b20454e442049463b2049462028407379732e6465627567204953204e554c4c29205448454e2053455420407379732e646562756720202020202020202020202020202020202020202020202020202020202020203d207379732e7379735f6765745f636f6e6669672827646562756727202020202020202020202020202020202020202020202020202020202020202c20274f464627293b20454e442049463b20202049462028696e5f7461626c65203d20274e4f5728292729205448454e2053455420765f666f7263655f6e65775f736e617073686f74203d20545255452c20696e5f7461626c65202020202020202020202020203d204e554c4c3b20454c534549462028696e5f7461626c65204953204e4f54204e554c4c29205448454e20494620284e4f5420494e53545228696e5f7461626c652c20272e272929205448454e2053455420765f7461626c655f64622020203d20444154414241534528292c20765f7461626c655f6e616d65203d20696e5f7461626c653b20454c53452053455420765f7461626c655f64622020203d20535542535452494e475f494e44455828696e5f7461626c652c20272e272c2031293b2053455420765f7461626c655f6e616d65203d20535542535452494e4728696e5f7461626c652c20434841525f4c454e47544828765f7461626c655f6462292b32293b20454e442049463b202053455420765f71756f7465645f7461626c65203d20434f4e434154282760272c20765f7461626c655f64622c2027602e60272c20765f7461626c655f6e616d652c20276027293b202049462028407379732e6465627567203d20274f4e2729205448454e2053454c45435420434f4e4341542827696e5f7461626c652069733a206462203d2027272c20765f7461626c655f64622c2027272c207461626c65203d2027272c20765f7461626c655f6e616d652c202727272920415320274465627567273b20454e442049463b202049462028765f7461626c655f6462203d204441544142415345282920414e442028765f7461626c655f6e616d65203d2027746d705f6469676573747327204f5220765f7461626c655f6e616d65203d2027746d705f646967657374735f64656c7461272929205448454e2053455420765f6572726f725f6d7367203d20434f4e4341542827496e76616c69642076616c756520666f7220696e5f7461626c653a20272c20765f71756f7465645f7461626c652c2027206973207265736572766564207461626c65206e616d652e27293b205349474e414c2053514c5354415445202734353030302720534554204d4553534147455f54455854203d20765f6572726f725f6d73673b20454e442049463b202043414c4c207379732e7461626c655f65786973747328765f7461626c655f64622c20765f7461626c655f6e616d652c20765f7461626c655f657869737473293b2049462028407379732e6465627567203d20274f4e2729205448454e2053454c45435420434f4e4341542827765f7461626c655f657869737473203d20272c20765f7461626c655f6578697374732920415320274465627567273b20454e442049463b202049462028765f7461626c655f657869737473203d202742415345205441424c452729205448454e2053455420765f636865636b73756d5f726566203d20282053454c4543542047524f55505f434f4e43415428434f4e43415428434f4c554d4e5f4e414d452c20434f4c554d4e5f5459504529204f52444552204259204f5244494e414c5f504f534954494f4e2920415320436865636b73756d2046524f4d20696e666f726d6174696f6e5f736368656d612e434f4c554d4e53205748455245205441424c455f534348454d41203d2027706572666f726d616e63655f736368656d612720414e44205441424c455f4e414d45203d20276576656e74735f73746174656d656e74735f73756d6d6172795f62795f6469676573742720292c20765f636865636b73756d5f7461626c65203d20282053454c4543542047524f55505f434f4e43415428434f4e43415428434f4c554d4e5f4e414d452c20434f4c554d4e5f5459504529204f52444552204259204f5244494e414c5f504f534954494f4e2920415320436865636b73756d2046524f4d20696e666f726d6174696f6e5f736368656d612e434f4c554d4e53205748455245205441424c455f534348454d41203d20765f7461626c655f646220414e44205441424c455f4e414d45203d20765f7461626c655f6e616d6520293b202049462028765f636865636b73756d5f726566203c3e20765f636865636b73756d5f7461626c6529205448454e2053455420765f6572726f725f6d7367203d20434f4e4341542827546865207461626c6520272c20494628434841525f4c454e47544828765f71756f7465645f7461626c6529203e2039332c20434f4e43415428272e2e2e272c20535542535452494e4728765f71756f7465645f7461626c652c202d393029292c20765f71756f7465645f7461626c65292c202720686173207468652077726f6e6720646566696e6974696f6e2e27293b205349474e414c2053514c5354415445202734353030302720534554204d4553534147455f54455854203d20765f6572726f725f6d73673b20454e442049463b20454e442049463b20454e442049463b20202049462028696e5f7669657773204953204e554c4c204f5220696e5f7669657773203d20272729205448454e2053455420696e5f7669657773203d2027776974685f72756e74696d65735f696e5f393574685f70657263656e74696c652c616e616c797369732c776974685f6572726f72735f6f725f7761726e696e67732c776974685f66756c6c5f7461626c655f7363616e732c776974685f736f7274696e672c776974685f74656d705f7461626c6573273b20454e442049463b20202043414c4c207379732e7461626c655f65786973747328444154414241534528292c2027746d705f64696765737473272c20765f746d705f646967657374735f7461626c655f657869737473293b2049462028407379732e6465627567203d20274f4e2729205448454e2053454c45435420434f4e4341542827765f746d705f646967657374735f7461626c655f657869737473203d20272c20765f746d705f646967657374735f7461626c655f6578697374732920415320274465627567273b20454e442049463b202043415345205748454e20696e5f616374696f6e20494e202827736e617073686f74272c20276f766572616c6c2729205448454e2049462028696e5f7461626c65204953204e4f54204e554c4c29205448454e20494620284e4f5420765f7461626c655f65786973747320494e20282754454d504f52415259272c202742415345205441424c45272929205448454e2053455420765f6572726f725f6d7367203d20434f4e434154282754686520272c20696e5f616374696f6e2c202720616374696f6e20726571756972657320696e5f7461626c6520746f206265204e554c4c2c204e4f572829206f72207370656369667920616e206578697374696e67207461626c652e272c202720546865207461626c6520272c20494628434841525f4c454e47544828765f71756f7465645f7461626c6529203e2031362c20434f4e43415428272e2e2e272c20535542535452494e4728765f71756f7465645f7461626c652c202d313329292c20765f71756f7465645f7461626c65292c202720646f6573206e6f742065786973742e27293b205349474e414c2053514c5354415445202734353030302720534554204d4553534147455f54455854203d20765f6572726f725f6d73673b20454e442049463b20454e442049463b20205748454e20696e5f616374696f6e20494e20282764656c7461272c2027736176652729205448454e2049462028765f7461626c655f657869737473204e4f5420494e20282754454d504f52415259272c202742415345205441424c45272929205448454e2053455420765f6572726f725f6d7367203d20434f4e434154282754686520272c20696e5f616374696f6e2c202720616374696f6e20726571756972657320696e5f7461626c6520746f20626520616e206578697374696e67207461626c652e272c20494628696e5f7461626c65204953204e4f54204e554c4c2c20434f4e434154282720546865207461626c6520272c20494628434841525f4c454e47544828765f71756f7465645f7461626c6529203e2033392c20434f4e43415428272e2e2e272c20535542535452494e4728765f71756f7465645f7461626c652c202d333629292c20765f71756f7465645f7461626c65292c202720646f6573206e6f742065786973742e27292c20272729293b205349474e414c2053514c5354415445202734353030302720534554204d4553534147455f54455854203d20765f6572726f725f6d73673b20454e442049463b202049462028696e5f616374696f6e203d202764656c74612720414e4420765f746d705f646967657374735f7461626c655f657869737473203c3e202754454d504f524152592729205448454e205349474e414c2053514c5354415445202734353030302720534554204d4553534147455f54455854203d2027416e206578697374696e6720736e617073686f742067656e6572617465642077697468207468652073746174656d656e745f706572666f726d616e63655f616e616c797a65722829206d7573742065786973742e273b20454e442049463b205748454e20696e5f616374696f6e203d20276372656174655f746d7027205448454e2049462028765f7461626c655f657869737473203d202754454d504f524152592729205448454e2053455420765f6572726f725f6d7367203d20434f4e434154282743616e6e6f742063726561746520746865207461626c6520272c20494628434841525f4c454e47544828765f71756f7465645f7461626c6529203e2037322c20434f4e43415428272e2e2e272c20535542535452494e4728765f71756f7465645f7461626c652c202d363929292c20765f71756f7465645f7461626c65292c202720617320697420616c7265616479206578697374732e27293b205349474e414c2053514c5354415445202734353030302720534554204d4553534147455f54455854203d20765f6572726f725f6d73673b20454e442049463b20205748454e20696e5f616374696f6e203d20276372656174655f7461626c6527205448454e2049462028765f7461626c655f657869737473203c3e20272729205448454e2053455420765f6572726f725f6d7367203d20434f4e434154282743616e6e6f742063726561746520746865207461626c6520272c20494628434841525f4c454e47544828765f71756f7465645f7461626c6529203e2035322c20434f4e43415428272e2e2e272c20535542535452494e4728765f71756f7465645f7461626c652c202d343929292c20765f71756f7465645f7461626c65292c202720617320697420616c726561647920657869737473272c20494628765f7461626c655f657869737473203d202754454d504f52415259272c202720617320612074656d706f72617279207461626c652e272c20272e2729293b205349474e414c2053514c5354415445202734353030302720534554204d4553534147455f54455854203d20765f6572726f725f6d73673b20454e442049463b20205748454e20696e5f616374696f6e203d2027636c65616e757027205448454e20444f202853454c4543542031293b20454c5345205349474e414c2053514c5354415445202734353030302720534554204d4553534147455f54455854203d2027556e6b6e6f776e20616374696f6e2e20537570706f7274656420616374696f6e73206172653a20636c65616e75702c206372656174655f7461626c652c206372656174655f746d702c2064656c74612c206f766572616c6c2c20736176652c20736e617073686f74273b20454e4420434153453b202053455420765f6469676573745f7461626c655f74656d706c617465203d202743524541544520257b54454d504f524152597d5441424c4520257b5441424c455f4e414d457d20282060534348454d415f4e414d45602076617263686172283634292044454641554c54204e554c4c2c2060444947455354602076617263686172283332292044454641554c54204e554c4c2c20604449474553545f5445585460206c6f6e67746578742c2060434f554e545f535441526020626967696e742832302920756e7369676e6564204e4f54204e554c4c2c206053554d5f54494d45525f574149546020626967696e742832302920756e7369676e6564204e4f54204e554c4c2c20604d494e5f54494d45525f574149546020626967696e742832302920756e7369676e6564204e4f54204e554c4c2c20604156475f54494d45525f574149546020626967696e742832302920756e7369676e6564204e4f54204e554c4c2c20604d41585f54494d45525f574149546020626967696e742832302920756e7369676e6564204e4f54204e554c4c2c206053554d5f4c4f434b5f54494d456020626967696e742832302920756e7369676e6564204e4f54204e554c4c2c206053554d5f4552524f52536020626967696e742832302920756e7369676e6564204e4f54204e554c4c2c206053554d5f5741524e494e47536020626967696e742832302920756e7369676e6564204e4f54204e554c4c2c206053554d5f524f57535f41464645435445446020626967696e742832302920756e7369676e6564204e4f54204e554c4c2c206053554d5f524f57535f53454e546020626967696e742832302920756e7369676e6564204e4f54204e554c4c2c206053554d5f524f57535f4558414d494e45446020626967696e742832302920756e7369676e6564204e4f54204e554c4c2c206053554d5f435245415445445f544d505f4449534b5f5441424c45536020626967696e742832302920756e7369676e6564204e4f54204e554c4c2c206053554d5f435245415445445f544d505f5441424c45536020626967696e742832302920756e7369676e6564204e4f54204e554c4c2c206053554d5f53454c4543545f46554c4c5f4a4f494e6020626967696e742832302920756e7369676e6564204e4f54204e554c4c2c206053554d5f53454c4543545f46554c4c5f52414e47455f4a4f494e6020626967696e742832302920756e7369676e6564204e4f54204e554c4c2c206053554d5f53454c4543545f52414e47456020626967696e742832302920756e7369676e6564204e4f54204e554c4c2c206053554d5f53454c4543545f52414e47455f434845434b6020626967696e742832302920756e7369676e6564204e4f54204e554c4c2c206053554d5f53454c4543545f5343414e6020626967696e742832302920756e7369676e6564204e4f54204e554c4c2c206053554d5f534f52545f4d455247455f5041535345536020626967696e742832302920756e7369676e6564204e4f54204e554c4c2c206053554d5f534f52545f52414e47456020626967696e742832302920756e7369676e6564204e4f54204e554c4c2c206053554d5f534f52545f524f57536020626967696e742832302920756e7369676e6564204e4f54204e554c4c2c206053554d5f534f52545f5343414e6020626967696e742832302920756e7369676e6564204e4f54204e554c4c2c206053554d5f4e4f5f494e4445585f555345446020626967696e742832302920756e7369676e6564204e4f54204e554c4c2c206053554d5f4e4f5f474f4f445f494e4445585f555345446020626967696e742832302920756e7369676e6564204e4f54204e554c4c2c206046495253545f5345454e602074696d657374616d70204e554c4c2044454641554c54204e554c4c2c20604c4153545f5345454e602074696d657374616d70204e554c4c2044454641554c54204e554c4c2c20494e4445582028534348454d415f4e414d452c204449474553542920292044454641554c5420434841525345543d75746638273b202049462028765f666f7263655f6e65775f736e617073686f74204f5220696e5f616374696f6e203d2027736e617073686f7427204f522028696e5f616374696f6e203d20276f766572616c6c2720414e4420696e5f7461626c65204953204e554c4c29204f522028696e5f616374696f6e203d2027736176652720414e4420765f746d705f646967657374735f7461626c655f657869737473203c3e202754454d504f5241525927292029205448454e2049462028765f746d705f646967657374735f7461626c655f657869737473203d202754454d504f524152592729205448454e2049462028407379732e6465627567203d20274f4e2729205448454e2053454c454354202744524f502054454d504f52415259205441424c452049462045584953545320746d705f646967657374732720415320274465627567273b20454e442049463b2044524f502054454d504f52415259205441424c452049462045584953545320746d705f646967657374733b20454e442049463b2043414c4c207379732e657865637574655f70726570617265645f73746d74285245504c414345285245504c41434528765f6469676573745f7461626c655f74656d706c6174652c2027257b54454d504f524152597d272c202754454d504f524152592027292c2027257b5441424c455f4e414d457d272c2027746d705f646967657374732729293b202053455420765f73716c203d20434f4e4341542827494e5345525420494e544f20746d705f646967657374732053454c454354202a2046524f4d20272c20494628696e5f7461626c65204953204e554c4c204f5220696e5f616374696f6e203d202773617665272c2027706572666f726d616e63655f736368656d612e6576656e74735f73746174656d656e74735f73756d6d6172795f62795f646967657374272c20765f71756f7465645f7461626c6529293b2043414c4c207379732e657865637574655f70726570617265645f73746d7428765f73716c293b20454e442049463b202049462028696e5f616374696f6e20494e2028276372656174655f7461626c65272c20276372656174655f746d70272929205448454e2049462028696e5f616374696f6e203d20276372656174655f7461626c652729205448454e2043414c4c207379732e657865637574655f70726570617265645f73746d74285245504c414345285245504c41434528765f6469676573745f7461626c655f74656d706c6174652c2027257b54454d504f524152597d272c202727292c2027257b5441424c455f4e414d457d272c20765f71756f7465645f7461626c6529293b20454c53452043414c4c207379732e657865637574655f70726570617265645f73746d74285245504c414345285245504c41434528765f6469676573745f7461626c655f74656d706c6174652c2027257b54454d504f524152597d272c202754454d504f524152592027292c2027257b5441424c455f4e414d457d272c20765f71756f7465645f7461626c6529293b20454e442049463b20454c534549462028696e5f616374696f6e203d2027736176652729205448454e2043414c4c207379732e657865637574655f70726570617265645f73746d7428434f4e434154282744454c4554452046524f4d20272c20765f71756f7465645f7461626c6529293b2043414c4c207379732e657865637574655f70726570617265645f73746d7428434f4e4341542827494e5345525420494e544f20272c20765f71756f7465645f7461626c652c20272053454c454354202a2046524f4d20746d705f646967657374732729293b20454c534549462028696e5f616374696f6e203d2027636c65616e75702729205448454e2044524f502054454d504f52415259205441424c4520494620455849535453207379732e746d705f646967657374733b2044524f502054454d504f52415259205441424c4520494620455849535453207379732e746d705f646967657374735f64656c74613b20454c534549462028696e5f616374696f6e20494e2028276f766572616c6c272c202764656c7461272929205448454e2049462028696e5f616374696f6e203d20276f766572616c6c2729205448454e2049462028696e5f7461626c65204953204e554c4c29205448454e2053455420765f646967657374735f7461626c65203d2027746d705f64696765737473273b20454c53452053455420765f646967657374735f7461626c65203d20765f71756f7465645f7461626c653b20454e442049463b20454c53452053455420765f646967657374735f7461626c65203d2027746d705f646967657374735f64656c7461273b2044524f502054454d504f52415259205441424c452049462045584953545320746d705f646967657374735f64656c74613b204352454154452054454d504f52415259205441424c4520746d705f646967657374735f64656c7461204c494b4520746d705f646967657374733b2053455420765f73716c203d20434f4e4341542827494e5345525420494e544f20746d705f646967657374735f64656c74612053454c4543542060645f656e64602e60534348454d415f4e414d45602c2060645f656e64602e60444947455354602c2060645f656e64602e604449474553545f54455854602c2060645f656e64602e60434f554e545f53544152602d49464e554c4c2860645f7374617274602e60434f554e545f53544152602c2030292041532027434f554e545f53544152272c2060645f656e64602e6053554d5f54494d45525f57414954602d49464e554c4c2860645f7374617274602e6053554d5f54494d45525f57414954602c203029204153202753554d5f54494d45525f57414954272c2060645f656e64602e604d494e5f54494d45525f574149546020415320274d494e5f54494d45525f57414954272c2049464e554c4c282860645f656e64602e6053554d5f54494d45525f57414954602d49464e554c4c2860645f7374617274602e6053554d5f54494d45525f57414954602c203029292f4e554c4c49462860645f656e64602e60434f554e545f53544152602d49464e554c4c2860645f7374617274602e60434f554e545f53544152602c2030292c2030292c20302920415320274156475f54494d45525f57414954272c2060645f656e64602e604d41585f54494d45525f574149546020415320274d41585f54494d45525f57414954272c2060645f656e64602e6053554d5f4c4f434b5f54494d45602d49464e554c4c2860645f7374617274602e6053554d5f4c4f434b5f54494d45602c203029204153202753554d5f4c4f434b5f54494d45272c2060645f656e64602e6053554d5f4552524f5253602d49464e554c4c2860645f7374617274602e6053554d5f4552524f5253602c203029204153202753554d5f4552524f5253272c2060645f656e64602e6053554d5f5741524e494e4753602d49464e554c4c2860645f7374617274602e6053554d5f5741524e494e4753602c203029204153202753554d5f5741524e494e4753272c2060645f656e64602e6053554d5f524f57535f4146464543544544602d49464e554c4c2860645f7374617274602e6053554d5f524f57535f4146464543544544602c203029204153202753554d5f524f57535f4146464543544544272c2060645f656e64602e6053554d5f524f57535f53454e54602d49464e554c4c2860645f7374617274602e6053554d5f524f57535f53454e54602c203029204153202753554d5f524f57535f53454e54272c2060645f656e64602e6053554d5f524f57535f4558414d494e4544602d49464e554c4c2860645f7374617274602e6053554d5f524f57535f4558414d494e4544602c203029204153202753554d5f524f57535f4558414d494e4544272c2060645f656e64602e6053554d5f435245415445445f544d505f4449534b5f5441424c4553602d49464e554c4c2860645f7374617274602e6053554d5f435245415445445f544d505f4449534b5f5441424c4553602c203029204153202753554d5f435245415445445f544d505f4449534b5f5441424c4553272c2060645f656e64602e6053554d5f435245415445445f544d505f5441424c4553602d49464e554c4c2860645f7374617274602e6053554d5f435245415445445f544d505f5441424c4553602c203029204153202753554d5f435245415445445f544d505f5441424c4553272c2060645f656e64602e6053554d5f53454c4543545f46554c4c5f4a4f494e602d49464e554c4c2860645f7374617274602e6053554d5f53454c4543545f46554c4c5f4a4f494e602c203029204153202753554d5f53454c4543545f46554c4c5f4a4f494e272c2060645f656e64602e6053554d5f53454c4543545f46554c4c5f52414e47455f4a4f494e602d49464e554c4c2860645f7374617274602e6053554d5f53454c4543545f46554c4c5f52414e47455f4a4f494e602c203029204153202753554d5f53454c4543545f46554c4c5f52414e47455f4a4f494e272c2060645f656e64602e6053554d5f53454c4543545f52414e4745602d49464e554c4c2860645f7374617274602e6053554d5f53454c4543545f52414e4745602c203029204153202753554d5f53454c4543545f52414e4745272c2060645f656e64602e6053554d5f53454c4543545f52414e47455f434845434b602d49464e554c4c2860645f7374617274602e6053554d5f53454c4543545f52414e47455f434845434b602c203029204153202753554d5f53454c4543545f52414e47455f434845434b272c2060645f656e64602e6053554d5f53454c4543545f5343414e602d49464e554c4c2860645f7374617274602e6053554d5f53454c4543545f5343414e602c203029204153202753554d5f53454c4543545f5343414e272c2060645f656e64602e6053554d5f534f52545f4d455247455f504153534553602d49464e554c4c2860645f7374617274602e6053554d5f534f52545f4d455247455f504153534553602c203029204153202753554d5f534f52545f4d455247455f504153534553272c2060645f656e64602e6053554d5f534f52545f52414e4745602d49464e554c4c2860645f7374617274602e6053554d5f534f52545f52414e4745602c203029204153202753554d5f534f52545f52414e4745272c2060645f656e64602e6053554d5f534f52545f524f5753602d49464e554c4c2860645f7374617274602e6053554d5f534f52545f524f5753602c203029204153202753554d5f534f52545f524f5753272c2060645f656e64602e6053554d5f534f52545f5343414e602d49464e554c4c2860645f7374617274602e6053554d5f534f52545f5343414e602c203029204153202753554d5f534f52545f5343414e272c2060645f656e64602e6053554d5f4e4f5f494e4445585f55534544602d49464e554c4c2860645f7374617274602e6053554d5f4e4f5f494e4445585f55534544602c203029204153202753554d5f4e4f5f494e4445585f55534544272c2060645f656e64602e6053554d5f4e4f5f474f4f445f494e4445585f55534544602d49464e554c4c2860645f7374617274602e6053554d5f4e4f5f474f4f445f494e4445585f55534544602c203029204153202753554d5f4e4f5f474f4f445f494e4445585f55534544272c2060645f656e64602e6046495253545f5345454e602c2060645f656e64602e604c4153545f5345454e602046524f4d20746d705f6469676573747320645f656e64204c454654204f55544552204a4f494e20272c20765f71756f7465645f7461626c652c202720645f7374617274204f4e2060645f7374617274602e6044494745535460203d2060645f656e64602e604449474553546020414e44202860645f7374617274602e60534348454d415f4e414d4560203d2060645f656e64602e60534348454d415f4e414d4560204f52202860645f7374617274602e60534348454d415f4e414d4560204953204e554c4c20414e442060645f656e64602e60534348454d415f4e414d4560204953204e554c4c2920292057484552452060645f656e64602e60434f554e545f53544152602d49464e554c4c2860645f7374617274602e60434f554e545f53544152602c203029203e203027293b2043414c4c207379732e657865637574655f70726570617265645f73746d7428765f73716c293b20454e442049463b20204946202846494e445f494e5f5345542827776974685f72756e74696d65735f696e5f393574685f70657263656e74696c65272c20696e5f76696577732929205448454e2053454c45435420275175657269657320776974682052756e74696d6520696e20393574682050657263656e74696c652720415320274e657874204f7574707574273b202044524f502054454d504f52415259205441424c452049462045584953545320746d705f6469676573745f6176675f6c6174656e63795f646973747269627574696f6e313b2044524f502054454d504f52415259205441424c452049462045584953545320746d705f6469676573745f6176675f6c6174656e63795f646973747269627574696f6e323b2044524f502054454d504f52415259205441424c452049462045584953545320746d705f6469676573745f393574685f70657263656e74696c655f62795f6176675f75733b20204352454154452054454d504f52415259205441424c4520746d705f6469676573745f6176675f6c6174656e63795f646973747269627574696f6e31202820636e7420626967696e7420756e7369676e6564204e4f54204e554c4c2c206176675f757320646563696d616c2832312c3029204e4f54204e554c4c2c205052494d415259204b455920286176675f757329202920454e47494e453d496e6e6f44423b202053455420765f73716c203d20434f4e4341542827494e5345525420494e544f20746d705f6469676573745f6176675f6c6174656e63795f646973747269627574696f6e312053454c45435420434f554e54282a2920636e742c2020524f554e44286176675f74696d65725f776169742f3130303030303029204153206176675f75732046524f4d20272c20765f646967657374735f7461626c652c20272047524f5550204259206176675f757327293b2043414c4c207379732e657865637574655f70726570617265645f73746d7428765f73716c293b20204352454154452054454d504f52415259205441424c4520746d705f6469676573745f6176675f6c6174656e63795f646973747269627574696f6e32204c494b4520746d705f6469676573745f6176675f6c6174656e63795f646973747269627574696f6e313b20494e5345525420494e544f20746d705f6469676573745f6176675f6c6174656e63795f646973747269627574696f6e322053454c454354202a2046524f4d20746d705f6469676573745f6176675f6c6174656e63795f646973747269627574696f6e313b20204352454154452054454d504f52415259205441424c4520746d705f6469676573745f393574685f70657263656e74696c655f62795f6176675f75732028206176675f757320646563696d616c2832312c3029204e4f54204e554c4c2c2070657263656e74696c6520646563696d616c2834362c3429204e4f54204e554c4c2c205052494d415259204b455920286176675f757329202920454e47494e453d496e6e6f44423b202053455420765f73716c203d20434f4e4341542827494e5345525420494e544f20746d705f6469676573745f393574685f70657263656e74696c655f62795f6176675f75732053454c4543542073322e6176675f7573206176675f75732c2049464e554c4c2853554d2873312e636e74292f4e554c4c4946282853454c45435420434f554e54282a292046524f4d20272c20765f646967657374735f7461626c652c2027292c2030292c2030292070657263656e74696c652046524f4d20746d705f6469676573745f6176675f6c6174656e63795f646973747269627574696f6e31204153207331204a4f494e20746d705f6469676573745f6176675f6c6174656e63795f646973747269627574696f6e32204153207332204f4e2073312e6176675f7573203c3d2073322e6176675f75732047524f55502042592073322e6176675f757320484156494e472070657263656e74696c65203e20302e3935204f524445522042592070657263656e74696c65204c494d4954203127293b2043414c4c207379732e657865637574655f70726570617265645f73746d7428765f73716c293b202053455420765f73716c203d205245504c41434528205245504c41434528202853454c45435420564945575f444546494e4954494f4e2046524f4d20696e666f726d6174696f6e5f736368656d612e5649455753205748455245205441424c455f534348454d41203d204441544142415345282920414e44205441424c455f4e414d45203d202773746174656d656e74735f776974685f72756e74696d65735f696e5f393574685f70657263656e74696c652720292c202760706572666f726d616e63655f736368656d61602e606576656e74735f73746174656d656e74735f73756d6d6172795f62795f64696765737460272c20765f646967657374735f7461626c6520292c20277379732e782470735f6469676573745f393574685f70657263656e74696c655f62795f6176675f7573272c202760737973602e60782470735f6469676573745f393574685f70657263656e74696c655f62795f6176675f7573602720293b2043414c4c207379732e657865637574655f70726570617265645f73746d7428765f73716c293b202044524f502054454d504f52415259205441424c4520746d705f6469676573745f6176675f6c6174656e63795f646973747269627574696f6e313b2044524f502054454d504f52415259205441424c4520746d705f6469676573745f6176675f6c6174656e63795f646973747269627574696f6e323b2044524f502054454d504f52415259205441424c4520746d705f6469676573745f393574685f70657263656e74696c655f62795f6176675f75733b20454e442049463b20204946202846494e445f494e5f5345542827616e616c79736973272c20696e5f76696577732929205448454e2053454c45435420434f4e4341542827546f7020272c20407379732e73746174656d656e745f706572666f726d616e63655f616e616c797a65722e6c696d69742c20272051756572696573204f72646572656420627920546f74616c204c6174656e6379272920415320274e657874204f7574707574273b2053455420765f73716c203d205245504c41434528202853454c45435420564945575f444546494e4954494f4e2046524f4d20696e666f726d6174696f6e5f736368656d612e5649455753205748455245205441424c455f534348454d41203d204441544142415345282920414e44205441424c455f4e414d45203d202773746174656d656e745f616e616c797369732720292c202760706572666f726d616e63655f736368656d61602e606576656e74735f73746174656d656e74735f73756d6d6172795f62795f64696765737460272c20765f646967657374735f7461626c6520293b2049462028407379732e73746174656d656e745f706572666f726d616e63655f616e616c797a65722e6c696d6974203e203029205448454e2053455420765f73716c203d20434f4e43415428765f73716c2c2027204c494d495420272c20407379732e73746174656d656e745f706572666f726d616e63655f616e616c797a65722e6c696d6974293b20454e442049463b2043414c4c207379732e657865637574655f70726570617265645f73746d7428765f73716c293b20454e442049463b20204946202846494e445f494e5f5345542827776974685f6572726f72735f6f725f7761726e696e6773272c20696e5f76696577732929205448454e2053454c45435420434f4e4341542827546f7020272c20407379732e73746174656d656e745f706572666f726d616e63655f616e616c797a65722e6c696d69742c202720517565726965732077697468204572726f7273272920415320274e657874204f7574707574273b2053455420765f73716c203d205245504c41434528202853454c45435420564945575f444546494e4954494f4e2046524f4d20696e666f726d6174696f6e5f736368656d612e5649455753205748455245205441424c455f534348454d41203d204441544142415345282920414e44205441424c455f4e414d45203d202773746174656d656e74735f776974685f6572726f72735f6f725f7761726e696e67732720292c202760706572666f726d616e63655f736368656d61602e606576656e74735f73746174656d656e74735f73756d6d6172795f62795f64696765737460272c20765f646967657374735f7461626c6520293b2049462028407379732e73746174656d656e745f706572666f726d616e63655f616e616c797a65722e6c696d6974203e203029205448454e2053455420765f73716c203d20434f4e43415428765f73716c2c2027204c494d495420272c20407379732e73746174656d656e745f706572666f726d616e63655f616e616c797a65722e6c696d6974293b20454e442049463b2043414c4c207379732e657865637574655f70726570617265645f73746d7428765f73716c293b20454e442049463b20204946202846494e445f494e5f5345542827776974685f66756c6c5f7461626c655f7363616e73272c20696e5f76696577732929205448454e2053454c45435420434f4e4341542827546f7020272c20407379732e73746174656d656e745f706572666f726d616e63655f616e616c797a65722e6c696d69742c2027205175657269657320776974682046756c6c205461626c65205363616e272920415320274e657874204f7574707574273b2053455420765f73716c203d205245504c41434528202853454c45435420564945575f444546494e4954494f4e2046524f4d20696e666f726d6174696f6e5f736368656d612e5649455753205748455245205441424c455f534348454d41203d204441544142415345282920414e44205441424c455f4e414d45203d202773746174656d656e74735f776974685f66756c6c5f7461626c655f7363616e732720292c202760706572666f726d616e63655f736368656d61602e606576656e74735f73746174656d656e74735f73756d6d6172795f62795f64696765737460272c20765f646967657374735f7461626c6520293b2049462028407379732e73746174656d656e745f706572666f726d616e63655f616e616c797a65722e6c696d6974203e203029205448454e2053455420765f73716c203d20434f4e43415428765f73716c2c2027204c494d495420272c20407379732e73746174656d656e745f706572666f726d616e63655f616e616c797a65722e6c696d6974293b20454e442049463b2043414c4c207379732e657865637574655f70726570617265645f73746d7428765f73716c293b20454e442049463b20204946202846494e445f494e5f5345542827776974685f736f7274696e67272c20696e5f76696577732929205448454e2053454c45435420434f4e4341542827546f7020272c20407379732e73746174656d656e745f706572666f726d616e63655f616e616c797a65722e6c696d69742c20272051756572696573207769746820536f7274696e67272920415320274e657874204f7574707574273b2053455420765f73716c203d205245504c41434528202853454c45435420564945575f444546494e4954494f4e2046524f4d20696e666f726d6174696f6e5f736368656d612e5649455753205748455245205441424c455f534348454d41203d204441544142415345282920414e44205441424c455f4e414d45203d202773746174656d656e74735f776974685f736f7274696e672720292c202760706572666f726d616e63655f736368656d61602e606576656e74735f73746174656d656e74735f73756d6d6172795f62795f64696765737460272c20765f646967657374735f7461626c6520293b2049462028407379732e73746174656d656e745f706572666f726d616e63655f616e616c797a65722e6c696d6974203e203029205448454e2053455420765f73716c203d20434f4e43415428765f73716c2c2027204c494d495420272c20407379732e73746174656d656e745f706572666f726d616e63655f616e616c797a65722e6c696d6974293b20454e442049463b2043414c4c207379732e657865637574655f70726570617265645f73746d7428765f73716c293b20454e442049463b20204946202846494e445f494e5f5345542827776974685f74656d705f7461626c6573272c20696e5f76696577732929205448454e2053454c45435420434f4e4341542827546f7020272c20407379732e73746174656d656e745f706572666f726d616e63655f616e616c797a65722e6c696d69742c20272051756572696573207769746820496e7465726e616c2054656d706f72617279205461626c6573272920415320274e657874204f7574707574273b2053455420765f73716c203d205245504c41434528202853454c45435420564945575f444546494e4954494f4e2046524f4d20696e666f726d6174696f6e5f736368656d612e5649455753205748455245205441424c455f534348454d41203d204441544142415345282920414e44205441424c455f4e414d45203d202773746174656d656e74735f776974685f74656d705f7461626c65732720292c202760706572666f726d616e63655f736368656d61602e606576656e74735f73746174656d656e74735f73756d6d6172795f62795f64696765737460272c20765f646967657374735f7461626c6520293b2049462028407379732e73746174656d656e745f706572666f726d616e63655f616e616c797a65722e6c696d6974203e203029205448454e2053455420765f73716c203d20434f4e43415428765f73716c2c2027204c494d495420272c20407379732e73746174656d656e745f706572666f726d616e63655f616e616c797a65722e6c696d6974293b20454e442049463b2043414c4c207379732e657865637574655f70726570617265645f73746d7428765f73716c293b20454e442049463b20204946202846494e445f494e5f5345542827637573746f6d272c20696e5f76696577732929205448454e2053454c45435420434f4e4341542827546f7020272c20407379732e73746174656d656e745f706572666f726d616e63655f616e616c797a65722e6c696d69742c20272051756572696573205573696e6720437573746f6d2056696577272920415320274e657874204f7574707574273b202049462028407379732e73746174656d656e745f706572666f726d616e63655f616e616c797a65722e76696577204953204e554c4c29205448454e2053455420407379732e73746174656d656e745f706572666f726d616e63655f616e616c797a65722e76696577203d207379732e7379735f6765745f636f6e666967282773746174656d656e745f706572666f726d616e63655f616e616c797a65722e76696577272c204e554c4c293b20454e442049463b2049462028407379732e73746174656d656e745f706572666f726d616e63655f616e616c797a65722e76696577204953204e554c4c29205448454e205349474e414c2053514c5354415445202734353030302720534554204d4553534147455f54455854203d202754686520407379732e73746174656d656e745f706572666f726d616e63655f616e616c797a65722e766965772075736572207661726961626c65206d757374206265207365742077697468207468652076696577206f7220717565727920746f207573652e273b20454e442049463b2020494620284e4f5420494e53545228407379732e73746174656d656e745f706572666f726d616e63655f616e616c797a65722e766965772c202720272929205448454e20494620284e4f5420494e53545228407379732e73746174656d656e745f706572666f726d616e63655f616e616c797a65722e766965772c20272e272929205448454e2053455420765f637573746f6d5f64622020203d20444154414241534528292c20765f637573746f6d5f6e616d65203d20407379732e73746174656d656e745f706572666f726d616e63655f616e616c797a65722e766965773b20454c53452053455420765f637573746f6d5f64622020203d20535542535452494e475f494e44455828407379732e73746174656d656e745f706572666f726d616e63655f616e616c797a65722e766965772c20272e272c2031293b2053455420765f637573746f6d5f6e616d65203d20535542535452494e4728407379732e73746174656d656e745f706572666f726d616e63655f616e616c797a65722e766965772c20434841525f4c454e47544828765f637573746f6d5f6462292b32293b20454e442049463b202043414c4c207379732e7461626c655f65786973747328765f637573746f6d5f64622c20765f637573746f6d5f6e616d652c20765f637573746f6d5f766965775f657869737473293b2049462028765f637573746f6d5f766965775f657869737473203c3e2027564945572729205448454e205349474e414c2053514c5354415445202734353030302720534554204d4553534147455f54455854203d202754686520407379732e73746174656d656e745f706572666f726d616e63655f616e616c797a65722e766965772075736572207661726961626c65206973207365742062757420737065636966696564206e65697468657220616e206578697374696e672076696577206e6f7220612071756572792e273b20454e442049463b202053455420765f73716c203d205245504c41434528202853454c45435420564945575f444546494e4954494f4e2046524f4d20696e666f726d6174696f6e5f736368656d612e5649455753205748455245205441424c455f534348454d41203d20765f637573746f6d5f646220414e44205441424c455f4e414d45203d20765f637573746f6d5f6e616d6520292c202760706572666f726d616e63655f736368656d61602e606576656e74735f73746174656d656e74735f73756d6d6172795f62795f64696765737460272c20765f646967657374735f7461626c6520293b20454c53452053455420765f73716c203d205245504c41434528407379732e73746174656d656e745f706572666f726d616e63655f616e616c797a65722e766965772c202760706572666f726d616e63655f736368656d61602e606576656e74735f73746174656d656e74735f73756d6d6172795f62795f64696765737460272c20765f646967657374735f7461626c65293b20454e442049463b202049462028407379732e73746174656d656e745f706572666f726d616e63655f616e616c797a65722e6c696d6974203e203029205448454e2053455420765f73716c203d20434f4e43415428765f73716c2c2027204c494d495420272c20407379732e73746174656d656e745f706572666f726d616e63655f616e616c797a65722e6c696d6974293b20454e442049463b202043414c4c207379732e657865637574655f70726570617265645f73746d7428765f73716c293b20454e442049463b20454e442049463b202049462028765f746869735f7468726561645f656e61626c6564203d20275945532729205448454e2043414c4c207379732e70735f73657475705f656e61626c655f74687265616428434f4e4e454354494f4e5f49442829293b20454e442049463b202049462028406c6f675f62696e203d203129205448454e205345542073716c5f6c6f675f62696e203d20406c6f675f62696e3b20454e442049463b20454e44);
INSERT INTO `proc` (`db`, `name`, `type`, `specific_name`, `language`, `sql_data_access`, `is_deterministic`, `security_type`, `param_list`, `returns`, `body`, `definer`, `created`, `modified`, `sql_mode`, `comment`, `character_set_client`, `collation_connection`, `db_collation`, `body_utf8`) VALUES
('sys', 'table_exists', 'PROCEDURE', 'table_exists', 'SQL', 'CONTAINS_SQL', 'NO', 'INVOKER', 0x20494e20696e5f64622056415243484152283634292c20494e20696e5f7461626c652056415243484152283634292c204f5554206f75745f65786973747320454e554d2827272c202742415345205441424c45272c202756494557272c202754454d504f52415259272920, '', 0x424547494e204445434c41524520765f6572726f7220424f4f4c45414e2044454641554c542046414c53453b204445434c41524520434f4e54494e55452048414e444c455220464f5220313035302053455420765f6572726f72203d20545255453b204445434c41524520434f4e54494e55452048414e444c455220464f5220313134362053455420765f6572726f72203d20545255453b2020534554206f75745f657869737473203d2027273b2020494620284558495354532853454c45435420312046524f4d20696e666f726d6174696f6e5f736368656d612e5441424c4553205748455245205441424c455f534348454d41203d20696e5f646220414e44205441424c455f4e414d45203d20696e5f7461626c652929205448454e2053455420407379732e746d702e7461626c655f6578697374732e53514c203d20434f4e43415428274352454154452054454d504f52415259205441424c452060272c20696e5f64622c2027602e60272c20696e5f7461626c652c2027602028696420494e54205052494d415259204b45592927293b20505245504152452073746d745f6372656174655f7461626c652046524f4d20407379732e746d702e7461626c655f6578697374732e53514c3b20455845435554452073746d745f6372656174655f7461626c653b204445414c4c4f4341544520505245504152452073746d745f6372656174655f7461626c653b2049462028765f6572726f7229205448454e20534554206f75745f657869737473203d202754454d504f52415259273b20454c53452053455420407379732e746d702e7461626c655f6578697374732e53514c203d20434f4e434154282744524f502054454d504f52415259205441424c452060272c20696e5f64622c2027602e60272c20696e5f7461626c652c20276027293b20505245504152452073746d745f64726f705f7461626c652046524f4d20407379732e746d702e7461626c655f6578697374732e53514c3b20455845435554452073746d745f64726f705f7461626c653b204445414c4c4f4341544520505245504152452073746d745f64726f705f7461626c653b20534554206f75745f657869737473203d202853454c454354205441424c455f545950452046524f4d20696e666f726d6174696f6e5f736368656d612e5441424c4553205748455245205441424c455f534348454d41203d20696e5f646220414e44205441424c455f4e414d45203d20696e5f7461626c65293b20454e442049463b20454c53452053455420407379732e746d702e7461626c655f6578697374732e53514c203d20434f4e434154282753454c45435420434f554e54282a292046524f4d2060272c20696e5f64622c2027602e60272c20696e5f7461626c652c20276027293b20505245504152452073746d745f73656c6563742046524f4d20407379732e746d702e7461626c655f6578697374732e53514c3b20494620284e4f5420765f6572726f7229205448454e204445414c4c4f4341544520505245504152452073746d745f73656c6563743b20534554206f75745f657869737473203d202754454d504f52415259273b20454e442049463b20454e442049463b20454e44, 'mysql.sys@localhost', '2018-07-09 10:50:31', '2018-07-09 10:50:31', '', '\n Description\n \n Tests whether the table specified in in_db and in_table exists either as a regular\n table, or as a temporary table. The returned value corresponds to the table that\n will be used, so if there\'s both a temporary and a permanent table with the given\n name, then \'TEMPORARY\' will be returned.\n \n Parameters\n \n in_db (VARCHAR(64)):\n The database name to check for the existance of the table in.\n \n in_table (VARCHAR(64)):\n The name of the table to check the existance of.\n \n out_exists ENUM(\'\', \'BASE TABLE\', \'VIEW\', \'TEMPORARY\'):\n The return value: whether the table exists. The value is one of:\n * \'\'           - the table does not exist neither as a base table, view, nor temporary table.\n * \'BASE TABLE\' - the table name exists as a permanent base table table.\n * \'VIEW\'       - the table name exists as a view.\n * \'TEMPORARY\'  - the table name exists as a temporary table.\n \n Example\n \n mysql> CREATE DATABASE db1;\n Query OK, 1 row affected (0.07 sec)\n \n mysql> use db1;\n Database changed\n mysql> CREATE TABLE t1 (id INT PRIMARY KEY);\n Query OK, 0 rows affected (0.08 sec)\n \n mysql> CREATE TABLE t2 (id INT PRIMARY KEY);\n Query OK, 0 rows affected (0.08 sec)\n \n mysql> CREATE view v_t1 AS SELECT * FROM t1;\n Query OK, 0 rows affected (0.00 sec)\n \n mysql> CREATE TEMPORARY TABLE t1 (id INT PRIMARY KEY);\n Query OK, 0 rows affected (0.00 sec)\n \n mysql> CALL sys.table_exists(\'db1\', \'t1\', @exists); SELECT @exists;\n Query OK, 0 rows affected (0.00 sec)\n \n +------------+\n | @exists    |\n +------------+\n | TEMPORARY  |\n +------------+\n 1 row in set (0.00 sec)\n \n mysql> CALL sys.table_exists(\'db1\', \'t2\', @exists); SELECT @exists;\n Query OK, 0 rows affected (0.00 sec)\n \n +------------+\n | @exists    |\n +------------+\n | BASE TABLE |\n +------------+\n 1 row in set (0.01 sec)\n \n mysql> CALL sys.table_exists(\'db1\', \'v_t1\', @exists); SELECT @exists;\n Query OK, 0 rows affected (0.00 sec)\n \n +---------+\n | @exists |\n +---------+\n | VIEW    |\n +---------+\n 1 row in set (0.00 sec)\n \n mysql> CALL sys.table_exists(\'db1\', \'t3\', @exists); SELECT @exists;\n Query OK, 0 rows affected (0.01 sec)\n \n +---------+\n | @exists |\n +---------+\n |         |\n +---------+\n 1 row in set (0.00 sec)\n ', 'utf8', 'utf8_general_ci', 'utf8_general_ci', 0x424547494e204445434c41524520765f6572726f7220424f4f4c45414e2044454641554c542046414c53453b204445434c41524520434f4e54494e55452048414e444c455220464f5220313035302053455420765f6572726f72203d20545255453b204445434c41524520434f4e54494e55452048414e444c455220464f5220313134362053455420765f6572726f72203d20545255453b2020534554206f75745f657869737473203d2027273b2020494620284558495354532853454c45435420312046524f4d20696e666f726d6174696f6e5f736368656d612e5441424c4553205748455245205441424c455f534348454d41203d20696e5f646220414e44205441424c455f4e414d45203d20696e5f7461626c652929205448454e2053455420407379732e746d702e7461626c655f6578697374732e53514c203d20434f4e43415428274352454154452054454d504f52415259205441424c452060272c20696e5f64622c2027602e60272c20696e5f7461626c652c2027602028696420494e54205052494d415259204b45592927293b20505245504152452073746d745f6372656174655f7461626c652046524f4d20407379732e746d702e7461626c655f6578697374732e53514c3b20455845435554452073746d745f6372656174655f7461626c653b204445414c4c4f4341544520505245504152452073746d745f6372656174655f7461626c653b2049462028765f6572726f7229205448454e20534554206f75745f657869737473203d202754454d504f52415259273b20454c53452053455420407379732e746d702e7461626c655f6578697374732e53514c203d20434f4e434154282744524f502054454d504f52415259205441424c452060272c20696e5f64622c2027602e60272c20696e5f7461626c652c20276027293b20505245504152452073746d745f64726f705f7461626c652046524f4d20407379732e746d702e7461626c655f6578697374732e53514c3b20455845435554452073746d745f64726f705f7461626c653b204445414c4c4f4341544520505245504152452073746d745f64726f705f7461626c653b20534554206f75745f657869737473203d202853454c454354205441424c455f545950452046524f4d20696e666f726d6174696f6e5f736368656d612e5441424c4553205748455245205441424c455f534348454d41203d20696e5f646220414e44205441424c455f4e414d45203d20696e5f7461626c65293b20454e442049463b20454c53452053455420407379732e746d702e7461626c655f6578697374732e53514c203d20434f4e434154282753454c45435420434f554e54282a292046524f4d2060272c20696e5f64622c2027602e60272c20696e5f7461626c652c20276027293b20505245504152452073746d745f73656c6563742046524f4d20407379732e746d702e7461626c655f6578697374732e53514c3b20494620284e4f5420765f6572726f7229205448454e204445414c4c4f4341544520505245504152452073746d745f73656c6563743b20534554206f75745f657869737473203d202754454d504f52415259273b20454e442049463b20454e442049463b20454e44);

-- --------------------------------------------------------

--
-- Table structure for table `procs_priv`
--

CREATE TABLE `procs_priv` (
  `Host` char(60) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Db` char(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `User` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Routine_name` char(64) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `Routine_type` enum('FUNCTION','PROCEDURE') COLLATE utf8_bin NOT NULL,
  `Grantor` char(93) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Proc_priv` set('Execute','Alter Routine','Grant') CHARACTER SET utf8 NOT NULL DEFAULT '',
  `Timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Procedure privileges';

-- --------------------------------------------------------

--
-- Table structure for table `proxies_priv`
--

CREATE TABLE `proxies_priv` (
  `Host` char(60) COLLATE utf8_bin NOT NULL DEFAULT '',
  `User` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Proxied_host` char(60) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Proxied_user` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `With_grant` tinyint(1) NOT NULL DEFAULT '0',
  `Grantor` char(93) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User proxy privileges';

--
-- Dumping data for table `proxies_priv`
--

INSERT INTO `proxies_priv` (`Host`, `User`, `Proxied_host`, `Proxied_user`, `With_grant`, `Grantor`, `Timestamp`) VALUES
('localhost', 'root', '', '', 1, 'boot@connecting host', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `servers`
--

CREATE TABLE `servers` (
  `Server_name` char(64) NOT NULL DEFAULT '',
  `Host` char(64) NOT NULL DEFAULT '',
  `Db` char(64) NOT NULL DEFAULT '',
  `Username` char(64) NOT NULL DEFAULT '',
  `Password` char(64) NOT NULL DEFAULT '',
  `Port` int(4) NOT NULL DEFAULT '0',
  `Socket` char(64) NOT NULL DEFAULT '',
  `Wrapper` char(64) NOT NULL DEFAULT '',
  `Owner` char(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `server_cost`
--

CREATE TABLE `server_cost` (
  `cost_name` varchar(64) NOT NULL,
  `cost_value` float DEFAULT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `comment` varchar(1024) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `server_cost`
--

INSERT INTO `server_cost` (`cost_name`, `cost_value`, `last_update`, `comment`) VALUES
('disk_temptable_create_cost', NULL, '2018-07-09 10:50:29', NULL),
('disk_temptable_row_cost', NULL, '2018-07-09 10:50:29', NULL),
('key_compare_cost', NULL, '2018-07-09 10:50:29', NULL),
('memory_temptable_create_cost', NULL, '2018-07-09 10:50:29', NULL),
('memory_temptable_row_cost', NULL, '2018-07-09 10:50:29', NULL),
('row_evaluate_cost', NULL, '2018-07-09 10:50:29', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `slave_master_info`
--

CREATE TABLE `slave_master_info` (
  `Number_of_lines` int(10) UNSIGNED NOT NULL COMMENT 'Number of lines in the file.',
  `Master_log_name` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'The name of the master binary log currently being read from the master.',
  `Master_log_pos` bigint(20) UNSIGNED NOT NULL COMMENT 'The master log position of the last read event.',
  `Host` char(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT 'The host name of the master.',
  `User_name` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT 'The user name used to connect to the master.',
  `User_password` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT 'The password used to connect to the master.',
  `Port` int(10) UNSIGNED NOT NULL COMMENT 'The network port used to connect to the master.',
  `Connect_retry` int(10) UNSIGNED NOT NULL COMMENT 'The period (in seconds) that the slave will wait before trying to reconnect to the master.',
  `Enabled_ssl` tinyint(1) NOT NULL COMMENT 'Indicates whether the server supports SSL connections.',
  `Ssl_ca` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT 'The file used for the Certificate Authority (CA) certificate.',
  `Ssl_capath` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT 'The path to the Certificate Authority (CA) certificates.',
  `Ssl_cert` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT 'The name of the SSL certificate file.',
  `Ssl_cipher` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT 'The name of the cipher in use for the SSL connection.',
  `Ssl_key` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT 'The name of the SSL key file.',
  `Ssl_verify_server_cert` tinyint(1) NOT NULL COMMENT 'Whether to verify the server certificate.',
  `Heartbeat` float NOT NULL,
  `Bind` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT 'Displays which interface is employed when connecting to the MySQL server',
  `Ignored_server_ids` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT 'The number of server IDs to be ignored, followed by the actual server IDs',
  `Uuid` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT 'The master server uuid.',
  `Retry_count` bigint(20) UNSIGNED NOT NULL COMMENT 'Number of reconnect attempts, to the master, before giving up.',
  `Ssl_crl` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT 'The file used for the Certificate Revocation List (CRL)',
  `Ssl_crlpath` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT 'The path used for Certificate Revocation List (CRL) files',
  `Enabled_auto_position` tinyint(1) NOT NULL COMMENT 'Indicates whether GTIDs will be used to retrieve events from the master.',
  `Channel_name` char(64) NOT NULL COMMENT 'The channel on which the slave is connected to a source. Used in Multisource Replication',
  `Tls_version` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT 'Tls version'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `slave_relay_log_info`
--

CREATE TABLE `slave_relay_log_info` (
  `Number_of_lines` int(10) UNSIGNED NOT NULL COMMENT 'Number of lines in the file or rows in the table. Used to version table definitions.',
  `Relay_log_name` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'The name of the current relay log file.',
  `Relay_log_pos` bigint(20) UNSIGNED NOT NULL COMMENT 'The relay log position of the last executed event.',
  `Master_log_name` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'The name of the master binary log file from which the events in the relay log file were read.',
  `Master_log_pos` bigint(20) UNSIGNED NOT NULL COMMENT 'The master log position of the last executed event.',
  `Sql_delay` int(11) NOT NULL COMMENT 'The number of seconds that the slave must lag behind the master.',
  `Number_of_workers` int(10) UNSIGNED NOT NULL,
  `Id` int(10) UNSIGNED NOT NULL COMMENT 'Internal Id that uniquely identifies this record.',
  `Channel_name` char(64) NOT NULL COMMENT 'The channel on which the slave is connected to a source. Used in Multisource Replication'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `slave_worker_info`
--

CREATE TABLE `slave_worker_info` (
  `Id` int(10) UNSIGNED NOT NULL,
  `Relay_log_name` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `Relay_log_pos` bigint(20) UNSIGNED NOT NULL,
  `Master_log_name` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `Master_log_pos` bigint(20) UNSIGNED NOT NULL,
  `Checkpoint_relay_log_name` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `Checkpoint_relay_log_pos` bigint(20) UNSIGNED NOT NULL,
  `Checkpoint_master_log_name` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `Checkpoint_master_log_pos` bigint(20) UNSIGNED NOT NULL,
  `Checkpoint_seqno` int(10) UNSIGNED NOT NULL,
  `Checkpoint_group_size` int(10) UNSIGNED NOT NULL,
  `Checkpoint_group_bitmap` blob NOT NULL,
  `Channel_name` char(64) NOT NULL COMMENT 'The channel on which the slave is connected to a source. Used in Multisource Replication'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `slow_log`
--

CREATE TABLE `slow_log` (
  `start_time` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `user_host` mediumtext NOT NULL,
  `query_time` time(6) NOT NULL,
  `lock_time` time(6) NOT NULL,
  `rows_sent` int(11) NOT NULL,
  `rows_examined` int(11) NOT NULL,
  `db` varchar(512) NOT NULL,
  `last_insert_id` int(11) NOT NULL,
  `insert_id` int(11) NOT NULL,
  `server_id` int(10) UNSIGNED NOT NULL,
  `sql_text` mediumblob NOT NULL,
  `thread_id` bigint(21) UNSIGNED NOT NULL
) ENGINE=CSV DEFAULT CHARSET=utf8 COMMENT='Slow log';

-- --------------------------------------------------------

--
-- Table structure for table `tables_priv`
--

CREATE TABLE `tables_priv` (
  `Host` char(60) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Db` char(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `User` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Table_name` char(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Grantor` char(93) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Table_priv` set('Select','Insert','Update','Delete','Create','Drop','Grant','References','Index','Alter','Create View','Show view','Trigger') CHARACTER SET utf8 NOT NULL DEFAULT '',
  `Column_priv` set('Select','Insert','Update','References') CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table privileges';

--
-- Dumping data for table `tables_priv`
--

INSERT INTO `tables_priv` (`Host`, `Db`, `User`, `Table_name`, `Grantor`, `Timestamp`, `Table_priv`, `Column_priv`) VALUES
('localhost', 'mysql', 'mysql.session', 'user', 'boot@connecting host', '0000-00-00 00:00:00', 'Select', ''),
('localhost', 'sys', 'mysql.sys', 'sys_config', 'root@localhost', '2018-07-09 10:50:30', 'Select', '');

-- --------------------------------------------------------

--
-- Table structure for table `time_zone`
--

CREATE TABLE `time_zone` (
  `Time_zone_id` int(10) UNSIGNED NOT NULL,
  `Use_leap_seconds` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `time_zone_leap_second`
--

CREATE TABLE `time_zone_leap_second` (
  `Transition_time` bigint(20) NOT NULL,
  `Correction` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `time_zone_name`
--

CREATE TABLE `time_zone_name` (
  `Name` char(64) NOT NULL,
  `Time_zone_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `time_zone_transition`
--

CREATE TABLE `time_zone_transition` (
  `Time_zone_id` int(10) UNSIGNED NOT NULL,
  `Transition_time` bigint(20) NOT NULL,
  `Transition_type_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `time_zone_transition_type`
--

CREATE TABLE `time_zone_transition_type` (
  `Time_zone_id` int(10) UNSIGNED NOT NULL,
  `Transition_type_id` int(10) UNSIGNED NOT NULL,
  `Offset` int(11) NOT NULL DEFAULT '0',
  `Is_DST` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `Abbreviation` char(8) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `Host` char(60) COLLATE utf8_bin NOT NULL DEFAULT '',
  `User` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Select_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Insert_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Update_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Delete_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Create_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Drop_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Reload_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Shutdown_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Process_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `File_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Grant_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `References_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Index_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Alter_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Show_db_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Super_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Create_tmp_table_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Lock_tables_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Execute_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Repl_slave_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Repl_client_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Create_view_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Show_view_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Create_routine_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Alter_routine_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Create_user_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Event_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Trigger_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Create_tablespace_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `ssl_type` enum('','ANY','X509','SPECIFIED') CHARACTER SET utf8 NOT NULL DEFAULT '',
  `ssl_cipher` blob NOT NULL,
  `x509_issuer` blob NOT NULL,
  `x509_subject` blob NOT NULL,
  `max_questions` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `max_updates` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `max_connections` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `max_user_connections` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `plugin` char(64) COLLATE utf8_bin NOT NULL DEFAULT 'mysql_native_password',
  `authentication_string` text COLLATE utf8_bin,
  `password_expired` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `password_last_changed` timestamp NULL DEFAULT NULL,
  `password_lifetime` smallint(5) UNSIGNED DEFAULT NULL,
  `account_locked` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and global privileges';

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`Host`, `User`, `Select_priv`, `Insert_priv`, `Update_priv`, `Delete_priv`, `Create_priv`, `Drop_priv`, `Reload_priv`, `Shutdown_priv`, `Process_priv`, `File_priv`, `Grant_priv`, `References_priv`, `Index_priv`, `Alter_priv`, `Show_db_priv`, `Super_priv`, `Create_tmp_table_priv`, `Lock_tables_priv`, `Execute_priv`, `Repl_slave_priv`, `Repl_client_priv`, `Create_view_priv`, `Show_view_priv`, `Create_routine_priv`, `Alter_routine_priv`, `Create_user_priv`, `Event_priv`, `Trigger_priv`, `Create_tablespace_priv`, `ssl_type`, `ssl_cipher`, `x509_issuer`, `x509_subject`, `max_questions`, `max_updates`, `max_connections`, `max_user_connections`, `plugin`, `authentication_string`, `password_expired`, `password_last_changed`, `password_lifetime`, `account_locked`) VALUES
('localhost', 'root', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', '', '', '', '', 0, 0, 0, 0, 'mysql_native_password', '*81F5E21E35407D884A6CD4A731AEBFB6AF209E1B', 'N', '2018-07-09 10:56:31', NULL, 'N'),
('localhost', 'mysql.session', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', '', '', '', '', 0, 0, 0, 0, 'mysql_native_password', '*THISISNOTAVALIDPASSWORDTHATCANBEUSEDHERE', 'N', '2018-07-09 10:50:30', NULL, 'Y'),
('localhost', 'mysql.sys', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', '', '', '', '', 0, 0, 0, 0, 'mysql_native_password', '*THISISNOTAVALIDPASSWORDTHATCANBEUSEDHERE', 'N', '2018-07-09 10:50:30', NULL, 'Y');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `columns_priv`
--
ALTER TABLE `columns_priv`
  ADD PRIMARY KEY (`Host`,`Db`,`User`,`Table_name`,`Column_name`);

--
-- Indexes for table `db`
--
ALTER TABLE `db`
  ADD PRIMARY KEY (`Host`,`Db`,`User`),
  ADD KEY `User` (`User`);

--
-- Indexes for table `engine_cost`
--
ALTER TABLE `engine_cost`
  ADD PRIMARY KEY (`cost_name`,`engine_name`,`device_type`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`db`,`name`);

--
-- Indexes for table `func`
--
ALTER TABLE `func`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `gtid_executed`
--
ALTER TABLE `gtid_executed`
  ADD PRIMARY KEY (`source_uuid`,`interval_start`);

--
-- Indexes for table `help_category`
--
ALTER TABLE `help_category`
  ADD PRIMARY KEY (`help_category_id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `help_keyword`
--
ALTER TABLE `help_keyword`
  ADD PRIMARY KEY (`help_keyword_id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `help_relation`
--
ALTER TABLE `help_relation`
  ADD PRIMARY KEY (`help_keyword_id`,`help_topic_id`);

--
-- Indexes for table `help_topic`
--
ALTER TABLE `help_topic`
  ADD PRIMARY KEY (`help_topic_id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `innodb_index_stats`
--
ALTER TABLE `innodb_index_stats`
  ADD PRIMARY KEY (`database_name`,`table_name`,`index_name`,`stat_name`);

--
-- Indexes for table `innodb_table_stats`
--
ALTER TABLE `innodb_table_stats`
  ADD PRIMARY KEY (`database_name`,`table_name`);

--
-- Indexes for table `ndb_binlog_index`
--
ALTER TABLE `ndb_binlog_index`
  ADD PRIMARY KEY (`epoch`,`orig_server_id`,`orig_epoch`);

--
-- Indexes for table `phpbbacl_groups`
--
ALTER TABLE `phpbbacl_groups`
  ADD KEY `group_id` (`group_id`),
  ADD KEY `auth_opt_id` (`auth_option_id`),
  ADD KEY `auth_role_id` (`auth_role_id`);

--
-- Indexes for table `phpbbacl_options`
--
ALTER TABLE `phpbbacl_options`
  ADD PRIMARY KEY (`auth_option_id`),
  ADD UNIQUE KEY `auth_option` (`auth_option`);

--
-- Indexes for table `phpbbacl_roles`
--
ALTER TABLE `phpbbacl_roles`
  ADD PRIMARY KEY (`role_id`),
  ADD KEY `role_type` (`role_type`),
  ADD KEY `role_order` (`role_order`);

--
-- Indexes for table `phpbbacl_roles_data`
--
ALTER TABLE `phpbbacl_roles_data`
  ADD PRIMARY KEY (`role_id`,`auth_option_id`),
  ADD KEY `ath_op_id` (`auth_option_id`);

--
-- Indexes for table `phpbbacl_users`
--
ALTER TABLE `phpbbacl_users`
  ADD KEY `user_id` (`user_id`),
  ADD KEY `auth_option_id` (`auth_option_id`),
  ADD KEY `auth_role_id` (`auth_role_id`);

--
-- Indexes for table `phpbbattachments`
--
ALTER TABLE `phpbbattachments`
  ADD PRIMARY KEY (`attach_id`),
  ADD KEY `filetime` (`filetime`),
  ADD KEY `post_msg_id` (`post_msg_id`),
  ADD KEY `topic_id` (`topic_id`),
  ADD KEY `poster_id` (`poster_id`),
  ADD KEY `is_orphan` (`is_orphan`);

--
-- Indexes for table `phpbbbanlist`
--
ALTER TABLE `phpbbbanlist`
  ADD PRIMARY KEY (`ban_id`),
  ADD KEY `ban_end` (`ban_end`),
  ADD KEY `ban_user` (`ban_userid`,`ban_exclude`),
  ADD KEY `ban_email` (`ban_email`,`ban_exclude`),
  ADD KEY `ban_ip` (`ban_ip`,`ban_exclude`);

--
-- Indexes for table `phpbbbbcodes`
--
ALTER TABLE `phpbbbbcodes`
  ADD PRIMARY KEY (`bbcode_id`),
  ADD KEY `display_on_post` (`display_on_posting`);

--
-- Indexes for table `phpbbbookmarks`
--
ALTER TABLE `phpbbbookmarks`
  ADD PRIMARY KEY (`topic_id`,`user_id`);

--
-- Indexes for table `phpbbbots`
--
ALTER TABLE `phpbbbots`
  ADD PRIMARY KEY (`bot_id`),
  ADD KEY `bot_active` (`bot_active`);

--
-- Indexes for table `phpbbconfig`
--
ALTER TABLE `phpbbconfig`
  ADD PRIMARY KEY (`config_name`),
  ADD KEY `is_dynamic` (`is_dynamic`);

--
-- Indexes for table `phpbbconfig_text`
--
ALTER TABLE `phpbbconfig_text`
  ADD PRIMARY KEY (`config_name`);

--
-- Indexes for table `phpbbconfirm`
--
ALTER TABLE `phpbbconfirm`
  ADD PRIMARY KEY (`session_id`,`confirm_id`),
  ADD KEY `confirm_type` (`confirm_type`);

--
-- Indexes for table `phpbbdisallow`
--
ALTER TABLE `phpbbdisallow`
  ADD PRIMARY KEY (`disallow_id`);

--
-- Indexes for table `phpbbdrafts`
--
ALTER TABLE `phpbbdrafts`
  ADD PRIMARY KEY (`draft_id`),
  ADD KEY `save_time` (`save_time`);

--
-- Indexes for table `phpbbext`
--
ALTER TABLE `phpbbext`
  ADD UNIQUE KEY `ext_name` (`ext_name`);

--
-- Indexes for table `phpbbextensions`
--
ALTER TABLE `phpbbextensions`
  ADD PRIMARY KEY (`extension_id`);

--
-- Indexes for table `phpbbextension_groups`
--
ALTER TABLE `phpbbextension_groups`
  ADD PRIMARY KEY (`group_id`);

--
-- Indexes for table `phpbbforums`
--
ALTER TABLE `phpbbforums`
  ADD PRIMARY KEY (`forum_id`),
  ADD KEY `left_right_id` (`left_id`,`right_id`),
  ADD KEY `forum_lastpost_id` (`forum_last_post_id`);

--
-- Indexes for table `phpbbforums_access`
--
ALTER TABLE `phpbbforums_access`
  ADD PRIMARY KEY (`forum_id`,`user_id`,`session_id`);

--
-- Indexes for table `phpbbforums_track`
--
ALTER TABLE `phpbbforums_track`
  ADD PRIMARY KEY (`user_id`,`forum_id`);

--
-- Indexes for table `phpbbforums_watch`
--
ALTER TABLE `phpbbforums_watch`
  ADD KEY `forum_id` (`forum_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `notify_stat` (`notify_status`);

--
-- Indexes for table `phpbbgroups`
--
ALTER TABLE `phpbbgroups`
  ADD PRIMARY KEY (`group_id`),
  ADD KEY `group_legend_name` (`group_legend`,`group_name`);

--
-- Indexes for table `phpbbicons`
--
ALTER TABLE `phpbbicons`
  ADD PRIMARY KEY (`icons_id`),
  ADD KEY `display_on_posting` (`display_on_posting`);

--
-- Indexes for table `phpbblang`
--
ALTER TABLE `phpbblang`
  ADD PRIMARY KEY (`lang_id`),
  ADD KEY `lang_iso` (`lang_iso`);

--
-- Indexes for table `phpbblog`
--
ALTER TABLE `phpbblog`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `log_type` (`log_type`),
  ADD KEY `forum_id` (`forum_id`),
  ADD KEY `topic_id` (`topic_id`),
  ADD KEY `reportee_id` (`reportee_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `log_time` (`log_time`);

--
-- Indexes for table `phpbblogin_attempts`
--
ALTER TABLE `phpbblogin_attempts`
  ADD KEY `att_ip` (`attempt_ip`,`attempt_time`),
  ADD KEY `att_for` (`attempt_forwarded_for`,`attempt_time`),
  ADD KEY `att_time` (`attempt_time`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `phpbbmigrations`
--
ALTER TABLE `phpbbmigrations`
  ADD PRIMARY KEY (`migration_name`);

--
-- Indexes for table `phpbbmoderator_cache`
--
ALTER TABLE `phpbbmoderator_cache`
  ADD KEY `disp_idx` (`display_on_index`),
  ADD KEY `forum_id` (`forum_id`);

--
-- Indexes for table `phpbbmodules`
--
ALTER TABLE `phpbbmodules`
  ADD PRIMARY KEY (`module_id`),
  ADD KEY `left_right_id` (`left_id`,`right_id`),
  ADD KEY `module_enabled` (`module_enabled`),
  ADD KEY `class_left_id` (`module_class`,`left_id`);

--
-- Indexes for table `phpbbnotifications`
--
ALTER TABLE `phpbbnotifications`
  ADD PRIMARY KEY (`notification_id`),
  ADD KEY `item_ident` (`notification_type_id`,`item_id`),
  ADD KEY `user` (`user_id`,`notification_read`);

--
-- Indexes for table `phpbbnotification_types`
--
ALTER TABLE `phpbbnotification_types`
  ADD PRIMARY KEY (`notification_type_id`),
  ADD UNIQUE KEY `type` (`notification_type_name`);

--
-- Indexes for table `phpbboauth_accounts`
--
ALTER TABLE `phpbboauth_accounts`
  ADD PRIMARY KEY (`user_id`,`provider`);

--
-- Indexes for table `phpbboauth_states`
--
ALTER TABLE `phpbboauth_states`
  ADD KEY `user_id` (`user_id`),
  ADD KEY `provider` (`provider`);

--
-- Indexes for table `phpbboauth_tokens`
--
ALTER TABLE `phpbboauth_tokens`
  ADD KEY `user_id` (`user_id`),
  ADD KEY `provider` (`provider`);

--
-- Indexes for table `phpbbpoll_options`
--
ALTER TABLE `phpbbpoll_options`
  ADD KEY `poll_opt_id` (`poll_option_id`),
  ADD KEY `topic_id` (`topic_id`);

--
-- Indexes for table `phpbbpoll_votes`
--
ALTER TABLE `phpbbpoll_votes`
  ADD KEY `topic_id` (`topic_id`),
  ADD KEY `vote_user_id` (`vote_user_id`),
  ADD KEY `vote_user_ip` (`vote_user_ip`);

--
-- Indexes for table `phpbbposts`
--
ALTER TABLE `phpbbposts`
  ADD PRIMARY KEY (`post_id`),
  ADD KEY `forum_id` (`forum_id`),
  ADD KEY `topic_id` (`topic_id`),
  ADD KEY `poster_ip` (`poster_ip`),
  ADD KEY `poster_id` (`poster_id`),
  ADD KEY `tid_post_time` (`topic_id`,`post_time`),
  ADD KEY `post_username` (`post_username`),
  ADD KEY `post_visibility` (`post_visibility`);

--
-- Indexes for table `phpbbprivmsgs`
--
ALTER TABLE `phpbbprivmsgs`
  ADD PRIMARY KEY (`msg_id`),
  ADD KEY `author_ip` (`author_ip`),
  ADD KEY `message_time` (`message_time`),
  ADD KEY `author_id` (`author_id`),
  ADD KEY `root_level` (`root_level`);

--
-- Indexes for table `phpbbprivmsgs_folder`
--
ALTER TABLE `phpbbprivmsgs_folder`
  ADD PRIMARY KEY (`folder_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `phpbbprivmsgs_rules`
--
ALTER TABLE `phpbbprivmsgs_rules`
  ADD PRIMARY KEY (`rule_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `phpbbprivmsgs_to`
--
ALTER TABLE `phpbbprivmsgs_to`
  ADD KEY `msg_id` (`msg_id`),
  ADD KEY `author_id` (`author_id`),
  ADD KEY `usr_flder_id` (`user_id`,`folder_id`);

--
-- Indexes for table `phpbbprofile_fields`
--
ALTER TABLE `phpbbprofile_fields`
  ADD PRIMARY KEY (`field_id`),
  ADD KEY `fld_type` (`field_type`),
  ADD KEY `fld_ordr` (`field_order`);

--
-- Indexes for table `phpbbprofile_fields_data`
--
ALTER TABLE `phpbbprofile_fields_data`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `phpbbprofile_fields_lang`
--
ALTER TABLE `phpbbprofile_fields_lang`
  ADD PRIMARY KEY (`field_id`,`lang_id`,`option_id`);

--
-- Indexes for table `phpbbprofile_lang`
--
ALTER TABLE `phpbbprofile_lang`
  ADD PRIMARY KEY (`field_id`,`lang_id`);

--
-- Indexes for table `phpbbranks`
--
ALTER TABLE `phpbbranks`
  ADD PRIMARY KEY (`rank_id`);

--
-- Indexes for table `phpbbreports`
--
ALTER TABLE `phpbbreports`
  ADD PRIMARY KEY (`report_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `pm_id` (`pm_id`);

--
-- Indexes for table `phpbbreports_reasons`
--
ALTER TABLE `phpbbreports_reasons`
  ADD PRIMARY KEY (`reason_id`);

--
-- Indexes for table `phpbbsearch_results`
--
ALTER TABLE `phpbbsearch_results`
  ADD PRIMARY KEY (`search_key`);

--
-- Indexes for table `phpbbsearch_wordlist`
--
ALTER TABLE `phpbbsearch_wordlist`
  ADD PRIMARY KEY (`word_id`),
  ADD UNIQUE KEY `wrd_txt` (`word_text`),
  ADD KEY `wrd_cnt` (`word_count`);

--
-- Indexes for table `phpbbsearch_wordmatch`
--
ALTER TABLE `phpbbsearch_wordmatch`
  ADD UNIQUE KEY `un_mtch` (`word_id`,`post_id`,`title_match`),
  ADD KEY `word_id` (`word_id`),
  ADD KEY `post_id` (`post_id`);

--
-- Indexes for table `phpbbsessions`
--
ALTER TABLE `phpbbsessions`
  ADD PRIMARY KEY (`session_id`),
  ADD KEY `session_time` (`session_time`),
  ADD KEY `session_user_id` (`session_user_id`),
  ADD KEY `session_fid` (`session_forum_id`);

--
-- Indexes for table `phpbbsessions_keys`
--
ALTER TABLE `phpbbsessions_keys`
  ADD PRIMARY KEY (`key_id`,`user_id`),
  ADD KEY `last_login` (`last_login`);

--
-- Indexes for table `phpbbsitelist`
--
ALTER TABLE `phpbbsitelist`
  ADD PRIMARY KEY (`site_id`);

--
-- Indexes for table `phpbbsmilies`
--
ALTER TABLE `phpbbsmilies`
  ADD PRIMARY KEY (`smiley_id`),
  ADD KEY `display_on_post` (`display_on_posting`);

--
-- Indexes for table `phpbbstyles`
--
ALTER TABLE `phpbbstyles`
  ADD PRIMARY KEY (`style_id`),
  ADD UNIQUE KEY `style_name` (`style_name`);

--
-- Indexes for table `phpbbteampage`
--
ALTER TABLE `phpbbteampage`
  ADD PRIMARY KEY (`teampage_id`);

--
-- Indexes for table `phpbbtopics`
--
ALTER TABLE `phpbbtopics`
  ADD PRIMARY KEY (`topic_id`),
  ADD KEY `forum_id` (`forum_id`),
  ADD KEY `forum_id_type` (`forum_id`,`topic_type`),
  ADD KEY `last_post_time` (`topic_last_post_time`),
  ADD KEY `fid_time_moved` (`forum_id`,`topic_last_post_time`,`topic_moved_id`),
  ADD KEY `topic_visibility` (`topic_visibility`),
  ADD KEY `forum_vis_last` (`forum_id`,`topic_visibility`,`topic_last_post_id`),
  ADD KEY `latest_topics` (`forum_id`,`topic_last_post_time`,`topic_last_post_id`,`topic_moved_id`);

--
-- Indexes for table `phpbbtopics_posted`
--
ALTER TABLE `phpbbtopics_posted`
  ADD PRIMARY KEY (`user_id`,`topic_id`);

--
-- Indexes for table `phpbbtopics_track`
--
ALTER TABLE `phpbbtopics_track`
  ADD PRIMARY KEY (`user_id`,`topic_id`),
  ADD KEY `forum_id` (`forum_id`),
  ADD KEY `topic_id` (`topic_id`);

--
-- Indexes for table `phpbbtopics_watch`
--
ALTER TABLE `phpbbtopics_watch`
  ADD KEY `topic_id` (`topic_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `notify_stat` (`notify_status`);

--
-- Indexes for table `phpbbusers`
--
ALTER TABLE `phpbbusers`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `username_clean` (`username_clean`),
  ADD KEY `user_birthday` (`user_birthday`),
  ADD KEY `user_type` (`user_type`),
  ADD KEY `user_email` (`user_email`);

--
-- Indexes for table `phpbbuser_group`
--
ALTER TABLE `phpbbuser_group`
  ADD KEY `group_id` (`group_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `group_leader` (`group_leader`);

--
-- Indexes for table `phpbbuser_notifications`
--
ALTER TABLE `phpbbuser_notifications`
  ADD UNIQUE KEY `itm_usr_mthd` (`item_type`,`item_id`,`user_id`,`method`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `uid_itm_id` (`user_id`,`item_id`),
  ADD KEY `usr_itm_tpe` (`user_id`,`item_type`,`item_id`);

--
-- Indexes for table `phpbbwarnings`
--
ALTER TABLE `phpbbwarnings`
  ADD PRIMARY KEY (`warning_id`);

--
-- Indexes for table `phpbbwords`
--
ALTER TABLE `phpbbwords`
  ADD PRIMARY KEY (`word_id`);

--
-- Indexes for table `phpbbzebra`
--
ALTER TABLE `phpbbzebra`
  ADD PRIMARY KEY (`user_id`,`zebra_id`);

--
-- Indexes for table `phpbb_acl_groups`
--
ALTER TABLE `phpbb_acl_groups`
  ADD KEY `group_id` (`group_id`),
  ADD KEY `auth_opt_id` (`auth_option_id`),
  ADD KEY `auth_role_id` (`auth_role_id`);

--
-- Indexes for table `phpbb_acl_options`
--
ALTER TABLE `phpbb_acl_options`
  ADD PRIMARY KEY (`auth_option_id`),
  ADD UNIQUE KEY `auth_option` (`auth_option`);

--
-- Indexes for table `phpbb_acl_roles`
--
ALTER TABLE `phpbb_acl_roles`
  ADD PRIMARY KEY (`role_id`),
  ADD KEY `role_type` (`role_type`),
  ADD KEY `role_order` (`role_order`);

--
-- Indexes for table `phpbb_acl_roles_data`
--
ALTER TABLE `phpbb_acl_roles_data`
  ADD PRIMARY KEY (`role_id`,`auth_option_id`),
  ADD KEY `ath_op_id` (`auth_option_id`);

--
-- Indexes for table `phpbb_acl_users`
--
ALTER TABLE `phpbb_acl_users`
  ADD KEY `user_id` (`user_id`),
  ADD KEY `auth_option_id` (`auth_option_id`),
  ADD KEY `auth_role_id` (`auth_role_id`);

--
-- Indexes for table `phpbb_attachments`
--
ALTER TABLE `phpbb_attachments`
  ADD PRIMARY KEY (`attach_id`),
  ADD KEY `filetime` (`filetime`),
  ADD KEY `post_msg_id` (`post_msg_id`),
  ADD KEY `topic_id` (`topic_id`),
  ADD KEY `poster_id` (`poster_id`),
  ADD KEY `is_orphan` (`is_orphan`);

--
-- Indexes for table `phpbb_banlist`
--
ALTER TABLE `phpbb_banlist`
  ADD PRIMARY KEY (`ban_id`),
  ADD KEY `ban_end` (`ban_end`),
  ADD KEY `ban_user` (`ban_userid`,`ban_exclude`),
  ADD KEY `ban_email` (`ban_email`,`ban_exclude`),
  ADD KEY `ban_ip` (`ban_ip`,`ban_exclude`);

--
-- Indexes for table `phpbb_bbcodes`
--
ALTER TABLE `phpbb_bbcodes`
  ADD PRIMARY KEY (`bbcode_id`),
  ADD KEY `display_on_post` (`display_on_posting`);

--
-- Indexes for table `phpbb_bookmarks`
--
ALTER TABLE `phpbb_bookmarks`
  ADD PRIMARY KEY (`topic_id`,`user_id`);

--
-- Indexes for table `phpbb_bots`
--
ALTER TABLE `phpbb_bots`
  ADD PRIMARY KEY (`bot_id`),
  ADD KEY `bot_active` (`bot_active`);

--
-- Indexes for table `phpbb_config`
--
ALTER TABLE `phpbb_config`
  ADD PRIMARY KEY (`config_name`),
  ADD KEY `is_dynamic` (`is_dynamic`);

--
-- Indexes for table `phpbb_config_text`
--
ALTER TABLE `phpbb_config_text`
  ADD PRIMARY KEY (`config_name`);

--
-- Indexes for table `phpbb_confirm`
--
ALTER TABLE `phpbb_confirm`
  ADD PRIMARY KEY (`session_id`,`confirm_id`),
  ADD KEY `confirm_type` (`confirm_type`);

--
-- Indexes for table `phpbb_disallow`
--
ALTER TABLE `phpbb_disallow`
  ADD PRIMARY KEY (`disallow_id`);

--
-- Indexes for table `phpbb_drafts`
--
ALTER TABLE `phpbb_drafts`
  ADD PRIMARY KEY (`draft_id`),
  ADD KEY `save_time` (`save_time`);

--
-- Indexes for table `phpbb_ext`
--
ALTER TABLE `phpbb_ext`
  ADD UNIQUE KEY `ext_name` (`ext_name`);

--
-- Indexes for table `phpbb_extensions`
--
ALTER TABLE `phpbb_extensions`
  ADD PRIMARY KEY (`extension_id`);

--
-- Indexes for table `phpbb_extension_groups`
--
ALTER TABLE `phpbb_extension_groups`
  ADD PRIMARY KEY (`group_id`);

--
-- Indexes for table `phpbb_forums`
--
ALTER TABLE `phpbb_forums`
  ADD PRIMARY KEY (`forum_id`),
  ADD KEY `left_right_id` (`left_id`,`right_id`),
  ADD KEY `forum_lastpost_id` (`forum_last_post_id`);

--
-- Indexes for table `phpbb_forums_access`
--
ALTER TABLE `phpbb_forums_access`
  ADD PRIMARY KEY (`forum_id`,`user_id`,`session_id`);

--
-- Indexes for table `phpbb_forums_track`
--
ALTER TABLE `phpbb_forums_track`
  ADD PRIMARY KEY (`user_id`,`forum_id`);

--
-- Indexes for table `phpbb_forums_watch`
--
ALTER TABLE `phpbb_forums_watch`
  ADD KEY `forum_id` (`forum_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `notify_stat` (`notify_status`);

--
-- Indexes for table `phpbb_groups`
--
ALTER TABLE `phpbb_groups`
  ADD PRIMARY KEY (`group_id`),
  ADD KEY `group_legend_name` (`group_legend`,`group_name`);

--
-- Indexes for table `phpbb_icons`
--
ALTER TABLE `phpbb_icons`
  ADD PRIMARY KEY (`icons_id`),
  ADD KEY `display_on_posting` (`display_on_posting`);

--
-- Indexes for table `phpbb_lang`
--
ALTER TABLE `phpbb_lang`
  ADD PRIMARY KEY (`lang_id`),
  ADD KEY `lang_iso` (`lang_iso`);

--
-- Indexes for table `phpbb_log`
--
ALTER TABLE `phpbb_log`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `log_type` (`log_type`),
  ADD KEY `forum_id` (`forum_id`),
  ADD KEY `topic_id` (`topic_id`),
  ADD KEY `reportee_id` (`reportee_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `log_time` (`log_time`);

--
-- Indexes for table `phpbb_login_attempts`
--
ALTER TABLE `phpbb_login_attempts`
  ADD KEY `att_ip` (`attempt_ip`,`attempt_time`),
  ADD KEY `att_for` (`attempt_forwarded_for`,`attempt_time`),
  ADD KEY `att_time` (`attempt_time`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `phpbb_migrations`
--
ALTER TABLE `phpbb_migrations`
  ADD PRIMARY KEY (`migration_name`);

--
-- Indexes for table `phpbb_moderator_cache`
--
ALTER TABLE `phpbb_moderator_cache`
  ADD KEY `disp_idx` (`display_on_index`),
  ADD KEY `forum_id` (`forum_id`);

--
-- Indexes for table `phpbb_modules`
--
ALTER TABLE `phpbb_modules`
  ADD PRIMARY KEY (`module_id`),
  ADD KEY `left_right_id` (`left_id`,`right_id`),
  ADD KEY `module_enabled` (`module_enabled`),
  ADD KEY `class_left_id` (`module_class`,`left_id`);

--
-- Indexes for table `phpbb_notifications`
--
ALTER TABLE `phpbb_notifications`
  ADD PRIMARY KEY (`notification_id`),
  ADD KEY `item_ident` (`notification_type_id`,`item_id`),
  ADD KEY `user` (`user_id`,`notification_read`);

--
-- Indexes for table `phpbb_notification_types`
--
ALTER TABLE `phpbb_notification_types`
  ADD PRIMARY KEY (`notification_type_id`),
  ADD UNIQUE KEY `type` (`notification_type_name`);

--
-- Indexes for table `phpbb_oauth_accounts`
--
ALTER TABLE `phpbb_oauth_accounts`
  ADD PRIMARY KEY (`user_id`,`provider`);

--
-- Indexes for table `phpbb_oauth_states`
--
ALTER TABLE `phpbb_oauth_states`
  ADD KEY `user_id` (`user_id`),
  ADD KEY `provider` (`provider`);

--
-- Indexes for table `phpbb_oauth_tokens`
--
ALTER TABLE `phpbb_oauth_tokens`
  ADD KEY `user_id` (`user_id`),
  ADD KEY `provider` (`provider`);

--
-- Indexes for table `phpbb_poll_options`
--
ALTER TABLE `phpbb_poll_options`
  ADD KEY `poll_opt_id` (`poll_option_id`),
  ADD KEY `topic_id` (`topic_id`);

--
-- Indexes for table `phpbb_poll_votes`
--
ALTER TABLE `phpbb_poll_votes`
  ADD KEY `topic_id` (`topic_id`),
  ADD KEY `vote_user_id` (`vote_user_id`),
  ADD KEY `vote_user_ip` (`vote_user_ip`);

--
-- Indexes for table `phpbb_posts`
--
ALTER TABLE `phpbb_posts`
  ADD PRIMARY KEY (`post_id`),
  ADD KEY `forum_id` (`forum_id`),
  ADD KEY `topic_id` (`topic_id`),
  ADD KEY `poster_ip` (`poster_ip`),
  ADD KEY `poster_id` (`poster_id`),
  ADD KEY `tid_post_time` (`topic_id`,`post_time`),
  ADD KEY `post_username` (`post_username`),
  ADD KEY `post_visibility` (`post_visibility`);

--
-- Indexes for table `phpbb_privmsgs`
--
ALTER TABLE `phpbb_privmsgs`
  ADD PRIMARY KEY (`msg_id`),
  ADD KEY `author_ip` (`author_ip`),
  ADD KEY `message_time` (`message_time`),
  ADD KEY `author_id` (`author_id`),
  ADD KEY `root_level` (`root_level`);

--
-- Indexes for table `phpbb_privmsgs_folder`
--
ALTER TABLE `phpbb_privmsgs_folder`
  ADD PRIMARY KEY (`folder_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `phpbb_privmsgs_rules`
--
ALTER TABLE `phpbb_privmsgs_rules`
  ADD PRIMARY KEY (`rule_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `phpbb_privmsgs_to`
--
ALTER TABLE `phpbb_privmsgs_to`
  ADD KEY `msg_id` (`msg_id`),
  ADD KEY `author_id` (`author_id`),
  ADD KEY `usr_flder_id` (`user_id`,`folder_id`);

--
-- Indexes for table `phpbb_profile_fields`
--
ALTER TABLE `phpbb_profile_fields`
  ADD PRIMARY KEY (`field_id`),
  ADD KEY `fld_type` (`field_type`),
  ADD KEY `fld_ordr` (`field_order`);

--
-- Indexes for table `phpbb_profile_fields_data`
--
ALTER TABLE `phpbb_profile_fields_data`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `phpbb_profile_fields_lang`
--
ALTER TABLE `phpbb_profile_fields_lang`
  ADD PRIMARY KEY (`field_id`,`lang_id`,`option_id`);

--
-- Indexes for table `phpbb_profile_lang`
--
ALTER TABLE `phpbb_profile_lang`
  ADD PRIMARY KEY (`field_id`,`lang_id`);

--
-- Indexes for table `phpbb_ranks`
--
ALTER TABLE `phpbb_ranks`
  ADD PRIMARY KEY (`rank_id`);

--
-- Indexes for table `phpbb_reports`
--
ALTER TABLE `phpbb_reports`
  ADD PRIMARY KEY (`report_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `pm_id` (`pm_id`);

--
-- Indexes for table `phpbb_reports_reasons`
--
ALTER TABLE `phpbb_reports_reasons`
  ADD PRIMARY KEY (`reason_id`);

--
-- Indexes for table `phpbb_search_results`
--
ALTER TABLE `phpbb_search_results`
  ADD PRIMARY KEY (`search_key`);

--
-- Indexes for table `phpbb_search_wordlist`
--
ALTER TABLE `phpbb_search_wordlist`
  ADD PRIMARY KEY (`word_id`),
  ADD UNIQUE KEY `wrd_txt` (`word_text`),
  ADD KEY `wrd_cnt` (`word_count`);

--
-- Indexes for table `phpbb_search_wordmatch`
--
ALTER TABLE `phpbb_search_wordmatch`
  ADD UNIQUE KEY `un_mtch` (`word_id`,`post_id`,`title_match`),
  ADD KEY `word_id` (`word_id`),
  ADD KEY `post_id` (`post_id`);

--
-- Indexes for table `phpbb_sessions`
--
ALTER TABLE `phpbb_sessions`
  ADD PRIMARY KEY (`session_id`),
  ADD KEY `session_time` (`session_time`),
  ADD KEY `session_user_id` (`session_user_id`),
  ADD KEY `session_fid` (`session_forum_id`);

--
-- Indexes for table `phpbb_sessions_keys`
--
ALTER TABLE `phpbb_sessions_keys`
  ADD PRIMARY KEY (`key_id`,`user_id`),
  ADD KEY `last_login` (`last_login`);

--
-- Indexes for table `phpbb_sitelist`
--
ALTER TABLE `phpbb_sitelist`
  ADD PRIMARY KEY (`site_id`);

--
-- Indexes for table `phpbb_smilies`
--
ALTER TABLE `phpbb_smilies`
  ADD PRIMARY KEY (`smiley_id`),
  ADD KEY `display_on_post` (`display_on_posting`);

--
-- Indexes for table `phpbb_styles`
--
ALTER TABLE `phpbb_styles`
  ADD PRIMARY KEY (`style_id`),
  ADD UNIQUE KEY `style_name` (`style_name`);

--
-- Indexes for table `phpbb_teampage`
--
ALTER TABLE `phpbb_teampage`
  ADD PRIMARY KEY (`teampage_id`);

--
-- Indexes for table `phpbb_topics`
--
ALTER TABLE `phpbb_topics`
  ADD PRIMARY KEY (`topic_id`),
  ADD KEY `forum_id` (`forum_id`),
  ADD KEY `forum_id_type` (`forum_id`,`topic_type`),
  ADD KEY `last_post_time` (`topic_last_post_time`),
  ADD KEY `fid_time_moved` (`forum_id`,`topic_last_post_time`,`topic_moved_id`),
  ADD KEY `topic_visibility` (`topic_visibility`),
  ADD KEY `forum_vis_last` (`forum_id`,`topic_visibility`,`topic_last_post_id`),
  ADD KEY `latest_topics` (`forum_id`,`topic_last_post_time`,`topic_last_post_id`,`topic_moved_id`);

--
-- Indexes for table `phpbb_topics_posted`
--
ALTER TABLE `phpbb_topics_posted`
  ADD PRIMARY KEY (`user_id`,`topic_id`);

--
-- Indexes for table `phpbb_topics_track`
--
ALTER TABLE `phpbb_topics_track`
  ADD PRIMARY KEY (`user_id`,`topic_id`),
  ADD KEY `forum_id` (`forum_id`),
  ADD KEY `topic_id` (`topic_id`);

--
-- Indexes for table `phpbb_topics_watch`
--
ALTER TABLE `phpbb_topics_watch`
  ADD KEY `topic_id` (`topic_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `notify_stat` (`notify_status`);

--
-- Indexes for table `phpbb_users`
--
ALTER TABLE `phpbb_users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `username_clean` (`username_clean`),
  ADD KEY `user_birthday` (`user_birthday`),
  ADD KEY `user_type` (`user_type`),
  ADD KEY `user_email` (`user_email`);

--
-- Indexes for table `phpbb_user_group`
--
ALTER TABLE `phpbb_user_group`
  ADD KEY `group_id` (`group_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `group_leader` (`group_leader`);

--
-- Indexes for table `phpbb_user_notifications`
--
ALTER TABLE `phpbb_user_notifications`
  ADD UNIQUE KEY `itm_usr_mthd` (`item_type`,`item_id`,`user_id`,`method`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `uid_itm_id` (`user_id`,`item_id`),
  ADD KEY `usr_itm_tpe` (`user_id`,`item_type`,`item_id`);

--
-- Indexes for table `phpbb_warnings`
--
ALTER TABLE `phpbb_warnings`
  ADD PRIMARY KEY (`warning_id`);

--
-- Indexes for table `phpbb_words`
--
ALTER TABLE `phpbb_words`
  ADD PRIMARY KEY (`word_id`);

--
-- Indexes for table `phpbb_zebra`
--
ALTER TABLE `phpbb_zebra`
  ADD PRIMARY KEY (`user_id`,`zebra_id`);

--
-- Indexes for table `plugin`
--
ALTER TABLE `plugin`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `proc`
--
ALTER TABLE `proc`
  ADD PRIMARY KEY (`db`,`name`,`type`);

--
-- Indexes for table `procs_priv`
--
ALTER TABLE `procs_priv`
  ADD PRIMARY KEY (`Host`,`Db`,`User`,`Routine_name`,`Routine_type`),
  ADD KEY `Grantor` (`Grantor`);

--
-- Indexes for table `proxies_priv`
--
ALTER TABLE `proxies_priv`
  ADD PRIMARY KEY (`Host`,`User`,`Proxied_host`,`Proxied_user`),
  ADD KEY `Grantor` (`Grantor`);

--
-- Indexes for table `servers`
--
ALTER TABLE `servers`
  ADD PRIMARY KEY (`Server_name`);

--
-- Indexes for table `server_cost`
--
ALTER TABLE `server_cost`
  ADD PRIMARY KEY (`cost_name`);

--
-- Indexes for table `slave_master_info`
--
ALTER TABLE `slave_master_info`
  ADD PRIMARY KEY (`Channel_name`);

--
-- Indexes for table `slave_relay_log_info`
--
ALTER TABLE `slave_relay_log_info`
  ADD PRIMARY KEY (`Channel_name`);

--
-- Indexes for table `slave_worker_info`
--
ALTER TABLE `slave_worker_info`
  ADD PRIMARY KEY (`Channel_name`,`Id`);

--
-- Indexes for table `tables_priv`
--
ALTER TABLE `tables_priv`
  ADD PRIMARY KEY (`Host`,`Db`,`User`,`Table_name`),
  ADD KEY `Grantor` (`Grantor`);

--
-- Indexes for table `time_zone`
--
ALTER TABLE `time_zone`
  ADD PRIMARY KEY (`Time_zone_id`);

--
-- Indexes for table `time_zone_leap_second`
--
ALTER TABLE `time_zone_leap_second`
  ADD PRIMARY KEY (`Transition_time`);

--
-- Indexes for table `time_zone_name`
--
ALTER TABLE `time_zone_name`
  ADD PRIMARY KEY (`Name`);

--
-- Indexes for table `time_zone_transition`
--
ALTER TABLE `time_zone_transition`
  ADD PRIMARY KEY (`Time_zone_id`,`Transition_time`);

--
-- Indexes for table `time_zone_transition_type`
--
ALTER TABLE `time_zone_transition_type`
  ADD PRIMARY KEY (`Time_zone_id`,`Transition_type_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`Host`,`User`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `phpbbacl_options`
--
ALTER TABLE `phpbbacl_options`
  MODIFY `auth_option_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

--
-- AUTO_INCREMENT for table `phpbbacl_roles`
--
ALTER TABLE `phpbbacl_roles`
  MODIFY `role_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `phpbbattachments`
--
ALTER TABLE `phpbbattachments`
  MODIFY `attach_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `phpbbbanlist`
--
ALTER TABLE `phpbbbanlist`
  MODIFY `ban_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `phpbbbots`
--
ALTER TABLE `phpbbbots`
  MODIFY `bot_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `phpbbdisallow`
--
ALTER TABLE `phpbbdisallow`
  MODIFY `disallow_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `phpbbdrafts`
--
ALTER TABLE `phpbbdrafts`
  MODIFY `draft_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `phpbbextensions`
--
ALTER TABLE `phpbbextensions`
  MODIFY `extension_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `phpbbextension_groups`
--
ALTER TABLE `phpbbextension_groups`
  MODIFY `group_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `phpbbforums`
--
ALTER TABLE `phpbbforums`
  MODIFY `forum_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `phpbbgroups`
--
ALTER TABLE `phpbbgroups`
  MODIFY `group_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `phpbbicons`
--
ALTER TABLE `phpbbicons`
  MODIFY `icons_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `phpbblang`
--
ALTER TABLE `phpbblang`
  MODIFY `lang_id` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `phpbblog`
--
ALTER TABLE `phpbblog`
  MODIFY `log_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `phpbbmodules`
--
ALTER TABLE `phpbbmodules`
  MODIFY `module_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=208;

--
-- AUTO_INCREMENT for table `phpbbnotifications`
--
ALTER TABLE `phpbbnotifications`
  MODIFY `notification_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `phpbbnotification_types`
--
ALTER TABLE `phpbbnotification_types`
  MODIFY `notification_type_id` smallint(4) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `phpbbposts`
--
ALTER TABLE `phpbbposts`
  MODIFY `post_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `phpbbprivmsgs`
--
ALTER TABLE `phpbbprivmsgs`
  MODIFY `msg_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `phpbbprivmsgs_folder`
--
ALTER TABLE `phpbbprivmsgs_folder`
  MODIFY `folder_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `phpbbprivmsgs_rules`
--
ALTER TABLE `phpbbprivmsgs_rules`
  MODIFY `rule_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `phpbbprofile_fields`
--
ALTER TABLE `phpbbprofile_fields`
  MODIFY `field_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `phpbbranks`
--
ALTER TABLE `phpbbranks`
  MODIFY `rank_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `phpbbreports`
--
ALTER TABLE `phpbbreports`
  MODIFY `report_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `phpbbreports_reasons`
--
ALTER TABLE `phpbbreports_reasons`
  MODIFY `reason_id` smallint(4) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `phpbbsearch_wordlist`
--
ALTER TABLE `phpbbsearch_wordlist`
  MODIFY `word_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `phpbbsitelist`
--
ALTER TABLE `phpbbsitelist`
  MODIFY `site_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `phpbbsmilies`
--
ALTER TABLE `phpbbsmilies`
  MODIFY `smiley_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `phpbbstyles`
--
ALTER TABLE `phpbbstyles`
  MODIFY `style_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `phpbbteampage`
--
ALTER TABLE `phpbbteampage`
  MODIFY `teampage_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `phpbbtopics`
--
ALTER TABLE `phpbbtopics`
  MODIFY `topic_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `phpbbusers`
--
ALTER TABLE `phpbbusers`
  MODIFY `user_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `phpbbwarnings`
--
ALTER TABLE `phpbbwarnings`
  MODIFY `warning_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `phpbbwords`
--
ALTER TABLE `phpbbwords`
  MODIFY `word_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `phpbb_acl_options`
--
ALTER TABLE `phpbb_acl_options`
  MODIFY `auth_option_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

--
-- AUTO_INCREMENT for table `phpbb_acl_roles`
--
ALTER TABLE `phpbb_acl_roles`
  MODIFY `role_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `phpbb_attachments`
--
ALTER TABLE `phpbb_attachments`
  MODIFY `attach_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `phpbb_banlist`
--
ALTER TABLE `phpbb_banlist`
  MODIFY `ban_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `phpbb_bots`
--
ALTER TABLE `phpbb_bots`
  MODIFY `bot_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `phpbb_disallow`
--
ALTER TABLE `phpbb_disallow`
  MODIFY `disallow_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `phpbb_drafts`
--
ALTER TABLE `phpbb_drafts`
  MODIFY `draft_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `phpbb_extensions`
--
ALTER TABLE `phpbb_extensions`
  MODIFY `extension_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `phpbb_extension_groups`
--
ALTER TABLE `phpbb_extension_groups`
  MODIFY `group_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `phpbb_forums`
--
ALTER TABLE `phpbb_forums`
  MODIFY `forum_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `phpbb_groups`
--
ALTER TABLE `phpbb_groups`
  MODIFY `group_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `phpbb_icons`
--
ALTER TABLE `phpbb_icons`
  MODIFY `icons_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `phpbb_lang`
--
ALTER TABLE `phpbb_lang`
  MODIFY `lang_id` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `phpbb_log`
--
ALTER TABLE `phpbb_log`
  MODIFY `log_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `phpbb_modules`
--
ALTER TABLE `phpbb_modules`
  MODIFY `module_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=208;

--
-- AUTO_INCREMENT for table `phpbb_notifications`
--
ALTER TABLE `phpbb_notifications`
  MODIFY `notification_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `phpbb_notification_types`
--
ALTER TABLE `phpbb_notification_types`
  MODIFY `notification_type_id` smallint(4) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `phpbb_posts`
--
ALTER TABLE `phpbb_posts`
  MODIFY `post_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `phpbb_privmsgs`
--
ALTER TABLE `phpbb_privmsgs`
  MODIFY `msg_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `phpbb_privmsgs_folder`
--
ALTER TABLE `phpbb_privmsgs_folder`
  MODIFY `folder_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `phpbb_privmsgs_rules`
--
ALTER TABLE `phpbb_privmsgs_rules`
  MODIFY `rule_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `phpbb_profile_fields`
--
ALTER TABLE `phpbb_profile_fields`
  MODIFY `field_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `phpbb_ranks`
--
ALTER TABLE `phpbb_ranks`
  MODIFY `rank_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `phpbb_reports`
--
ALTER TABLE `phpbb_reports`
  MODIFY `report_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `phpbb_reports_reasons`
--
ALTER TABLE `phpbb_reports_reasons`
  MODIFY `reason_id` smallint(4) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `phpbb_search_wordlist`
--
ALTER TABLE `phpbb_search_wordlist`
  MODIFY `word_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `phpbb_sitelist`
--
ALTER TABLE `phpbb_sitelist`
  MODIFY `site_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `phpbb_smilies`
--
ALTER TABLE `phpbb_smilies`
  MODIFY `smiley_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `phpbb_styles`
--
ALTER TABLE `phpbb_styles`
  MODIFY `style_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `phpbb_teampage`
--
ALTER TABLE `phpbb_teampage`
  MODIFY `teampage_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `phpbb_topics`
--
ALTER TABLE `phpbb_topics`
  MODIFY `topic_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `phpbb_users`
--
ALTER TABLE `phpbb_users`
  MODIFY `user_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `phpbb_warnings`
--
ALTER TABLE `phpbb_warnings`
  MODIFY `warning_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `phpbb_words`
--
ALTER TABLE `phpbb_words`
  MODIFY `word_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `time_zone`
--
ALTER TABLE `time_zone`
  MODIFY `Time_zone_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
