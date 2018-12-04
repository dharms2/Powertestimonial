-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 04, 2018 at 09:50 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.1.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `powertest`
--

-- --------------------------------------------------------

--
-- Table structure for table `acl_phinxlog`
--

CREATE TABLE `acl_phinxlog` (
  `version` bigint(20) NOT NULL,
  `migration_name` varchar(100) DEFAULT NULL,
  `start_time` timestamp NULL DEFAULT NULL,
  `end_time` timestamp NULL DEFAULT NULL,
  `breakpoint` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `acl_phinxlog`
--

INSERT INTO `acl_phinxlog` (`version`, `migration_name`, `start_time`, `end_time`, `breakpoint`) VALUES
(20141229162641, 'CakePhpDbAcl', '2017-10-04 21:30:10', '2017-10-04 21:30:11', 0);

-- --------------------------------------------------------

--
-- Table structure for table `acos`
--

CREATE TABLE `acos` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `model` varchar(255) DEFAULT NULL,
  `foreign_key` int(11) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `lft` int(11) DEFAULT NULL,
  `rght` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `acos`
--

INSERT INTO `acos` (`id`, `parent_id`, `model`, `foreign_key`, `alias`, `lft`, `rght`) VALUES
(1, NULL, NULL, NULL, 'controllers', 1, 354),
(2, 1, NULL, NULL, 'Error', 2, 5),
(3, 1, NULL, NULL, 'Groups', 6, 19),
(4, 3, NULL, NULL, 'index', 7, 8),
(5, 3, NULL, NULL, 'view', 9, 10),
(6, 3, NULL, NULL, 'add', 11, 12),
(7, 3, NULL, NULL, 'edit', 13, 14),
(8, 3, NULL, NULL, 'delete', 15, 16),
(9, 1, NULL, NULL, 'Pages', 20, 25),
(10, 9, NULL, NULL, 'display', 21, 22),
(17, 1, NULL, NULL, 'Users', 26, 91),
(18, 17, NULL, NULL, 'index', 27, 28),
(22, 17, NULL, NULL, 'delete', 29, 30),
(23, 17, NULL, NULL, 'login', 31, 32),
(24, 17, NULL, NULL, 'logout', 33, 34),
(25, 1, NULL, NULL, 'Acl', 92, 93),
(26, 1, NULL, NULL, 'Bake', 94, 95),
(41, 1, NULL, NULL, 'Migrations', 96, 97),
(44, 17, NULL, NULL, 'associateDashboard', 37, 38),
(46, 17, NULL, NULL, 'addAssociate', 39, 40),
(48, 17, NULL, NULL, 'editAssociate', 41, 42),
(50, 17, NULL, NULL, 'updateStatus', 43, 44),
(52, 1, NULL, NULL, 'Indexes', 98, 121),
(53, 52, NULL, NULL, 'index', 99, 100),
(54, 52, NULL, NULL, 'price', 101, 102),
(55, 52, NULL, NULL, 'howItWork', 103, 104),
(56, 52, NULL, NULL, 'contact', 105, 106),
(57, 52, NULL, NULL, 'confirmSignup', 107, 108),
(59, 17, NULL, NULL, 'checkEmailIsUnique', 45, 46),
(88, 1, NULL, NULL, 'SurveyCategory', 122, 137),
(89, 88, NULL, NULL, 'index', 123, 124),
(91, 88, NULL, NULL, 'add', 125, 126),
(92, 88, NULL, NULL, 'edit', 127, 128),
(93, 88, NULL, NULL, 'delete', 129, 130),
(94, 1, NULL, NULL, 'ReviewsMgmt', 138, 177),
(95, 94, NULL, NULL, 'index', 139, 140),
(97, 94, NULL, NULL, 'add', 141, 142),
(100, 94, NULL, NULL, 'reviewStepOne', 143, 144),
(101, 94, NULL, NULL, 'reviewStepTwo', 145, 146),
(102, 52, NULL, NULL, 'invoice', 109, 110),
(104, 88, NULL, NULL, 'updateStatus', 131, 132),
(105, 17, NULL, NULL, 'register', 47, 48),
(106, 52, NULL, NULL, 'emailContact', 111, 112),
(108, 94, NULL, NULL, 'rating', 147, 148),
(109, 1, NULL, NULL, 'SurveyMgmt', 178, 197),
(110, 109, NULL, NULL, 'index', 179, 180),
(112, 109, NULL, NULL, 'add', 181, 182),
(113, 109, NULL, NULL, 'edit', 183, 184),
(114, 109, NULL, NULL, 'delete', 185, 186),
(115, 109, NULL, NULL, 'updateStatus', 187, 188),
(116, 1, NULL, NULL, 'SurveyQuestion', 198, 211),
(117, 116, NULL, NULL, 'index', 199, 200),
(119, 116, NULL, NULL, 'add', 201, 202),
(120, 116, NULL, NULL, 'edit', 203, 204),
(121, 116, NULL, NULL, 'delete', 205, 206),
(122, 116, NULL, NULL, 'updateStatus', 207, 208),
(123, 1, NULL, NULL, 'SurveyTemplates', 212, 237),
(124, 123, NULL, NULL, 'index', 213, 214),
(126, 123, NULL, NULL, 'add', 215, 216),
(127, 123, NULL, NULL, 'edit', 217, 218),
(128, 123, NULL, NULL, 'delete', 219, 220),
(129, 123, NULL, NULL, 'updateStatus', 221, 222),
(131, 123, NULL, NULL, 'chooseQuestion', 223, 224),
(132, 94, NULL, NULL, 'submitSurveyAnswer', 149, 150),
(140, 1, NULL, NULL, 'ApiConfigurations', 238, 267),
(141, 140, NULL, NULL, 'index', 239, 240),
(146, 109, NULL, NULL, 'getAnalyzeData', 189, 190),
(147, 109, NULL, NULL, 'surveysUserAns', 191, 192),
(150, 109, NULL, NULL, 'checkTemplateExist', 193, 194),
(153, 94, NULL, NULL, 'checkZillowApiDetails', 151, 152),
(154, 17, NULL, NULL, 'profile', 49, 50),
(155, 17, NULL, NULL, 'forgotPassword', 51, 52),
(156, 17, NULL, NULL, 'resetPassword', 53, 54),
(157, 17, NULL, NULL, 'editProfile', 55, 56),
(158, 17, NULL, NULL, 'editCompanyProfile', 57, 58),
(159, 17, NULL, NULL, 'changePassword', 59, 60),
(160, 17, NULL, NULL, 'checkPassword', 61, 62),
(163, 17, NULL, NULL, 'checkAddionalEmailIsUnique', 63, 64),
(164, 140, NULL, NULL, 'checkZillowScreenName', 241, 242),
(165, 140, NULL, NULL, 'checkGooglePlaceId', 243, 244),
(166, 140, NULL, NULL, 'checkYelpBussinessName', 245, 246),
(168, 52, NULL, NULL, 'accountSuspended', 113, 114),
(169, 94, NULL, NULL, 'checkFacebookApiDetails', 153, 154),
(170, 94, NULL, NULL, 'checkGoogleApiDetails', 155, 156),
(171, 94, NULL, NULL, 'checkYelpApiDetails', 157, 158),
(172, 123, NULL, NULL, 'importSurveyTempalteQuestion', 225, 226),
(173, 140, NULL, NULL, 'zillow', 247, 248),
(174, 140, NULL, NULL, 'google', 249, 250),
(175, 140, NULL, NULL, 'yelp', 251, 252),
(176, 140, NULL, NULL, 'facebook', 253, 254),
(177, 1, NULL, NULL, 'Twilio', 268, 269),
(178, 140, NULL, NULL, 'fbCallback', 255, 256),
(179, 1, NULL, NULL, 'CrossDomainApi', 270, 275),
(180, 179, NULL, NULL, 'index', 271, 272),
(181, 52, NULL, NULL, 'privacyPolicy', 115, 116),
(182, 88, NULL, NULL, 'checkNameIsUnique', 133, 134),
(183, 52, NULL, NULL, 'contactSuccess', 117, 118),
(184, 1, NULL, NULL, 'Reports', 276, 287),
(185, 184, NULL, NULL, 'index', 277, 278),
(186, 17, NULL, NULL, 'associateReviewData', 65, 66),
(187, 17, NULL, NULL, 'overallReview', 67, 68),
(199, 140, NULL, NULL, 'angiesList', 257, 258),
(200, 140, NULL, NULL, 'throwException', 259, 260),
(201, 179, NULL, NULL, 'throwException', 273, 274),
(202, 2, NULL, NULL, 'throwException', 3, 4),
(203, 3, NULL, NULL, 'throwException', 17, 18),
(204, 52, NULL, NULL, 'throwException', 119, 120),
(205, 9, NULL, NULL, 'throwException', 23, 24),
(206, 184, NULL, NULL, 'monthSurvey', 279, 280),
(207, 184, NULL, NULL, 'monthReview', 281, 282),
(208, 184, NULL, NULL, 'getAllSurveyReview', 283, 284),
(209, 184, NULL, NULL, 'throwException', 285, 286),
(210, 94, NULL, NULL, 'checkAngiesListApiDetails', 159, 160),
(211, 94, NULL, NULL, 'delete', 161, 162),
(212, 94, NULL, NULL, 'sendSms', 163, 164),
(213, 94, NULL, NULL, 'resend', 165, 166),
(214, 94, NULL, NULL, 'throwException', 167, 168),
(215, 1, NULL, NULL, 'SuperAdmin', 288, 313),
(216, 215, NULL, NULL, 'userManagement', 289, 290),
(217, 215, NULL, NULL, 'updateStatus', 291, 292),
(218, 215, NULL, NULL, 'upgradeRequest', 293, 294),
(219, 215, NULL, NULL, 'planUpgradeApproved', 295, 296),
(220, 215, NULL, NULL, 'throwException', 297, 298),
(221, 88, NULL, NULL, 'throwException', 135, 136),
(222, 109, NULL, NULL, 'throwException', 195, 196),
(223, 116, NULL, NULL, 'throwException', 209, 210),
(224, 123, NULL, NULL, 'throwException', 227, 228),
(225, 17, NULL, NULL, 'apiConfigForAssociate', 69, 70),
(226, 17, NULL, NULL, 'planUpgrade', 71, 72),
(227, 17, NULL, NULL, 'planUpgradeReq', 73, 74),
(228, 17, NULL, NULL, 'throwException', 75, 76),
(229, 1, NULL, NULL, 'Widgets', 314, 339),
(230, 229, NULL, NULL, 'index', 315, 316),
(231, 229, NULL, NULL, 'reviewSmall', 317, 318),
(232, 229, NULL, NULL, 'reviewLarge', 319, 320),
(233, 229, NULL, NULL, 'largeReviewIframe', 321, 322),
(234, 229, NULL, NULL, 'seeReview', 323, 324),
(235, 229, NULL, NULL, 'reviewMe', 325, 326),
(236, 229, NULL, NULL, 'reviewsSend', 327, 328),
(237, 229, NULL, NULL, 'email', 329, 330),
(238, 229, NULL, NULL, 'successSmall', 331, 332),
(239, 229, NULL, NULL, 'successLarge', 333, 334),
(240, 229, NULL, NULL, 'download', 335, 336),
(241, 229, NULL, NULL, 'throwException', 337, 338),
(242, 140, NULL, NULL, 'bbbReview', 261, 262),
(243, 1, NULL, NULL, 'AutoReminders', 340, 347),
(244, 243, NULL, NULL, 'index', 341, 342),
(245, 243, NULL, NULL, 'saveAutoReminderDate', 343, 344),
(246, 243, NULL, NULL, 'throwException', 345, 346),
(247, 1, NULL, NULL, 'CustomEmailTemplates', 348, 353),
(248, 247, NULL, NULL, 'index', 349, 350),
(249, 247, NULL, NULL, 'throwException', 351, 352),
(250, 140, NULL, NULL, 'realtorReview', 263, 264),
(251, 94, NULL, NULL, 'checkBBBApiDetails', 169, 170),
(252, 94, NULL, NULL, 'checkRealtorApiDetails', 171, 172),
(254, 123, NULL, NULL, 'questionOrderingUp', 229, 230),
(255, 140, NULL, NULL, 'fetchOnlineReview', 265, 266),
(256, 123, NULL, NULL, 'questionOrderingDown', 231, 232),
(257, 17, NULL, NULL, 'onlineReviewBreakdown', 77, 78),
(258, 17, NULL, NULL, 'internalReviewBreakdown', 79, 80),
(259, 123, NULL, NULL, 'removeQuestion', 233, 234),
(260, 94, NULL, NULL, 'getChildArray', 173, 174),
(261, 94, NULL, NULL, 'getArrayByKey', 175, 176),
(262, 123, NULL, NULL, 'recursiveDataInsert', 235, 236),
(263, 215, NULL, NULL, 'userTransaction', 299, 300),
(264, 215, NULL, NULL, 'cancelRecuring', 301, 302),
(265, 215, NULL, NULL, 'cancelRecuringById', 303, 304),
(266, 17, NULL, NULL, 'makePayment', 81, 82),
(267, 215, NULL, NULL, 'coupons', 305, 306),
(268, 17, NULL, NULL, 'getAllParentUsers', 83, 84),
(269, 215, NULL, NULL, 'addCoupon', 307, 308),
(270, 215, NULL, NULL, 'checkCodeIsUnique', 309, 310),
(271, 215, NULL, NULL, 'delete', 311, 312),
(272, 17, NULL, NULL, 'applyCoupon', 85, 86),
(273, 17, NULL, NULL, 'updatePaymentInfo', 87, 88),
(274, 17, NULL, NULL, 'paymentUpdate', 89, 90);

-- --------------------------------------------------------

--
-- Table structure for table `api_configurations`
--

CREATE TABLE `api_configurations` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `zillow_access_Id` varchar(225) DEFAULT NULL COMMENT 'Details="Zillow Web Services ID (ZWSID)"',
  `zillow_screen_name` varchar(225) DEFAULT NULL,
  `google_place_id` varchar(225) DEFAULT NULL,
  `yelp_business_id` varchar(225) DEFAULT NULL,
  `facebook_page_name` varchar(225) DEFAULT NULL,
  `facebook_app_id` varchar(50) DEFAULT NULL,
  `facebook_app_secret` varchar(250) DEFAULT NULL,
  `angies_business_id` varchar(50) DEFAULT NULL,
  `bbb_business_name` varchar(225) DEFAULT NULL,
  `realtor_business_name` varchar(150) DEFAULT NULL,
  `yelp_include_in_survey` tinyint(1) NOT NULL DEFAULT '1',
  `zillow_include_in_survey` tinyint(1) NOT NULL DEFAULT '1',
  `realtor_include_in_survey` tinyint(1) NOT NULL DEFAULT '1',
  `facebook_include_in_survey` tinyint(1) DEFAULT '1',
  `google_include_in_survey` tinyint(1) NOT NULL DEFAULT '1',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0=>not delete, 1=> delete',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `api_configurations`
--

INSERT INTO `api_configurations` (`id`, `user_id`, `zillow_access_Id`, `zillow_screen_name`, `google_place_id`, `yelp_business_id`, `facebook_page_name`, `facebook_app_id`, `facebook_app_secret`, `angies_business_id`, `bbb_business_name`, `realtor_business_name`, `yelp_include_in_survey`, `zillow_include_in_survey`, `realtor_include_in_survey`, `facebook_include_in_survey`, `google_include_in_survey`, `is_deleted`, `status`, `created`, `modified`) VALUES
(1, 11, 'X1-ZWz18zotebfwgb_8gte4', 'user19731134', 'ChIJVaDVHHPryFYRa9Ocf10TS3Y', 'partners-real-estate-eagle-river', '', NULL, NULL, '24104612', NULL, 'test', 1, 1, 1, 1, 1, 0, 1, '2017-10-31 19:14:46', '2018-01-11 00:37:18'),
(13, 170, 'X1-ZWz18zotebfwgb_8gte4', 'PartnersRealEstate', 'ChIJVaDVHHPryFYRa9Ocf10TS3Y', 'partners-real-estate-eagle-river', 'Partners Real Estate - Eagle River, AK', '1931084697154141', 'EAAEKAl6sHi0BALRIxJgk6TrWLlZCsNJr1eJsDfpFyXeQZCU9xT0T5eULSjxJeV2yA6kWXnAuGmOkoNxZCEZCSZAIGdDfG08PJZBlAkvwRMC2vrTrt23Wr64HQLiX2ZAyMGhucBPBZCQ47EvZABOZAWjOKmgp0muTYzZB8cZD', '12918017', 'partners-real-estate-llc-in-eagle-river-ak-12961', 'Brandon-Thorud___1205486', 1, 1, 1, 1, 1, 0, 1, '2017-11-21 18:03:02', '2018-02-13 01:22:19'),
(14, 172, 'X1-ZWz18zotebfwgb_8gte4', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 0, 1, '2017-11-21 18:03:02', '2017-12-09 06:03:25'),
(15, 174, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 0, 1, '2017-11-28 23:25:31', '2017-11-28 23:25:31'),
(16, 177, 'X1-ZWz18zotebfwgb_8gte4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 0, 1, '2017-12-02 21:24:15', '2017-12-05 00:10:54'),
(17, 179, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 0, 1, '2017-12-02 22:00:08', '2017-12-02 22:00:08'),
(18, 181, 'X1-ZWz18zotebfwgb_8gte4', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 0, 1, '2017-12-04 19:00:57', '2018-01-16 18:01:36'),
(19, 182, 'X1-ZWz18zotebfwgb_8gte4', '', '', '', '', NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 0, 1, '2017-12-04 23:01:48', '2017-12-05 00:15:16'),
(20, 184, 'X1-ZWz18zotebfwgb_8gte4', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 0, 1, '2017-12-05 00:48:30', '2017-12-05 01:01:59'),
(21, 185, 'X1-ZWz18zotebfwgb_8gte4', 'PartnersRealEstate', 'ChIJVaDVHHPryFYRa9Ocf10TS3Y', 'Partners-real-estate-eagle-river', 'Partners Real Estate - Eagle River, AK', NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 0, 1, '2017-12-05 01:32:32', '2017-12-07 02:01:16'),
(22, 186, 'X1-ZWz18zotebfwgb_8gte4', '', '', 'partners-real-estate-eagle-river', '', NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 0, 1, '2017-12-06 13:30:58', '2017-12-06 16:03:34'),
(23, 187, 'X1-ZWz18zotebfwgb_8gte4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 0, 1, '2017-12-06 16:08:40', '2017-12-06 16:09:26'),
(24, 188, 'X1-ZWz18zotebfwgb_8gte4', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 0, 1, '2017-12-06 17:31:54', '2017-12-06 17:49:34'),
(25, 189, 'X1-ZWz18zotebfwgb_8gte4', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 0, 1, '2017-12-06 17:56:29', '2017-12-06 17:57:30'),
(26, 190, 'X1-ZWz18zotebfwgb_8gte4', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 0, 1, '2017-12-06 18:34:49', '2017-12-06 18:35:42'),
(27, 191, 'X1-ZWz18zotebfwgb_8gte4', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 0, 1, '2017-12-06 18:39:39', '2017-12-06 18:40:10'),
(28, 192, 'X1-ZWz18zotebfwgb_8gte4', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 0, 1, '2017-12-06 18:42:39', '2017-12-06 18:46:18'),
(29, 193, 'X1-ZWz18zotebfwgb_8gte4', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 0, 1, '2017-12-06 18:49:37', '2017-12-06 18:50:11'),
(30, 194, 'X1-ZWz18zotebfwgb_8gte4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 0, 1, '2017-12-06 20:20:18', '2017-12-06 20:29:44'),
(31, 195, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 0, 1, '2017-12-06 20:35:00', '2017-12-06 20:44:55'),
(32, 196, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 0, 1, '2017-12-06 20:49:38', '2017-12-06 20:51:43'),
(33, 197, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 0, 1, '2017-12-06 20:54:09', '2017-12-06 20:58:30'),
(34, 198, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 0, 1, '2017-12-06 21:02:38', '2017-12-06 21:03:25'),
(35, 199, 'X1-ZWz18zotebfwgb_8gte4', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 0, 1, '2017-12-06 21:13:30', '2017-12-06 21:51:06'),
(36, 200, 'X1-ZWz18zotebfwgb_8gte4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 0, 1, '2017-12-06 23:13:58', '2017-12-06 23:15:26'),
(37, 201, 'X1-ZWz18zotebfwgb_8gte4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 0, 1, '2017-12-06 23:59:02', '2017-12-07 00:02:00'),
(38, 202, 'X1-ZWz18zotebfwgb_8gte4', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 0, 1, '2017-12-07 18:51:59', '2017-12-07 20:35:49'),
(39, 204, 'X1-ZWz18zotebfwgb_8gte4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 0, 1, '2017-12-07 19:40:38', '2017-12-07 21:42:36'),
(40, 208, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 0, 1, '2017-12-07 23:34:06', '2017-12-07 23:46:58'),
(41, 209, NULL, NULL, NULL, NULL, NULL, '568673573324847', '94ed1df88cf5698c89e5d16e5ccf1af9', NULL, NULL, NULL, 1, 1, 1, 1, 1, 0, 1, '2017-12-07 23:58:55', '2017-12-08 16:05:23'),
(42, 210, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 0, 1, '2017-12-08 00:10:37', '2017-12-08 00:10:37'),
(43, 211, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 0, 1, '2017-12-08 00:27:25', '2017-12-08 00:31:33'),
(44, 212, 'X1-ZWz18zotebfwgb_8gte4', NULL, NULL, NULL, NULL, '568673573324847', '94ed1df88cf5698c89e5d16e5ccf1af9', NULL, NULL, NULL, 1, 1, 1, 1, 1, 0, 1, '2017-12-08 17:21:37', '2017-12-08 19:17:03'),
(45, 214, 'X1-ZWz18zotebfwgb_8gte4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 0, 1, '2017-12-09 00:48:44', '2017-12-09 00:51:08'),
(46, 215, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 0, 1, '2017-12-09 00:53:09', '2017-12-09 00:53:09'),
(47, 218, 'X1-ZWz18zotebfwgb_8gte4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 0, 1, '2017-12-09 02:06:32', '2017-12-14 03:19:05'),
(48, 220, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 0, 1, '2017-12-09 03:00:51', '2017-12-09 03:01:32'),
(49, 221, 'X1-ZWz18zotebfwgb_8gte4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 0, 1, '2017-12-09 03:03:48', '2017-12-09 03:06:22'),
(50, 223, 'X1-ZWz18zotebfwgb_8gte4', 'Mark Bellamy', 'ChIJEwkoSA3_v1QRbbsRD1BHvnw', 'class-act-property-management-salem', 'Class Act Property Management LLC', NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 0, 1, '2017-12-14 00:55:17', '2017-12-15 03:17:21'),
(51, 218, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 0, 1, '2017-12-14 03:14:09', '2017-12-14 03:14:09'),
(52, 229, 'X1-ZWz18zotebfwgb_8gte4', 'PartnersRealEstate', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 0, 1, '2017-12-14 03:45:07', '2017-12-14 03:47:07'),
(53, 230, 'X1-ZWz18zotebfwgb_8gte4', 'user19731134', 'ChIJVaDVHHPryFYRa9Ocf10TS3Y', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 0, 1, '2017-12-14 03:55:07', '2017-12-14 03:56:23'),
(54, 231, NULL, NULL, NULL, NULL, 'Barauli', NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 0, 1, '2017-12-14 22:56:29', '2017-12-15 01:11:27'),
(55, 232, 'X1-ZWz18zotebfwgb_8gte4', 'PartnersRealEstate', 'ChIJVaDVHHPryFYRa9Ocf10TS3Y', 'partners-real-estate-eagle-river', 'Partners Real Estate - Eagle River, AK', NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 0, 1, '2017-12-15 00:20:02', '2017-12-15 00:26:40'),
(56, 233, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 0, 1, '2017-12-15 00:27:20', '2017-12-15 00:27:20'),
(57, 234, 'X1-ZWz18zotebfwgb_8gte4', 'Tsquare1', 'ChIJEfX2eR4MkFQR2raCUmgUbzE', 't-square-properties-bothell', 'T-Square Properties', NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 0, 1, '2017-12-15 01:03:25', '2017-12-15 02:14:55'),
(58, 235, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 0, 1, '2017-12-15 03:10:14', '2017-12-15 03:10:14'),
(59, 236, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 0, 1, '2017-12-15 05:55:16', '2017-12-15 05:55:16'),
(60, 237, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 0, 1, '2017-12-15 05:56:31', '2017-12-15 05:56:31'),
(61, 238, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 0, 1, '2017-12-15 05:57:23', '2017-12-15 05:57:23'),
(62, 239, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 0, 1, '2017-12-15 06:12:00', '2017-12-15 06:12:00'),
(63, 240, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 0, 1, '2017-12-15 06:12:30', '2017-12-15 06:12:30'),
(64, 241, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 0, 1, '2017-12-15 19:52:16', '2017-12-15 19:52:16'),
(65, 242, 'X1-ZWz18zotebfwgb_8gte4', 'user19731134', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 0, 1, '2017-12-15 22:26:04', '2017-12-15 22:30:25'),
(66, 243, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 0, 1, '2017-12-15 22:27:17', '2017-12-15 22:27:17'),
(67, 244, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 0, 1, '2017-12-15 23:20:26', '2017-12-15 23:20:26'),
(68, 245, 'X1-ZWz18zotebfwgb_8gte4', 'tsquare1', NULL, 'partners-real-estate-eagle-river', 'Merchant 1', NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 0, 1, '2017-12-16 15:59:48', '2017-12-16 16:04:42'),
(69, 246, 'X1-ZWz18zotebfwgb_8gte4', 'user19731134', 'ChIJ07HFQ1Z_24ARf2QSDb35NDU', 'team-flores-real-estate-coldwell-banker-san-diego-2', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 0, 1, '2017-12-16 16:38:25', '2017-12-16 17:10:34'),
(70, 247, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 0, 1, '2017-12-16 16:40:23', '2017-12-16 16:40:23'),
(71, 248, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 0, 1, '2017-12-16 18:40:08', '2017-12-16 18:40:08'),
(72, 249, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 0, 1, '2017-12-16 18:49:14', '2017-12-16 18:49:14'),
(73, 250, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 0, 1, '2017-12-16 19:04:10', '2017-12-16 19:04:10'),
(74, 251, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 0, 1, '2017-12-16 19:06:05', '2017-12-16 19:06:05'),
(75, 252, NULL, NULL, NULL, 'team-flores-real-estate-coldwell-banker-san-diego-2', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 0, 1, '2017-12-16 19:18:43', '2017-12-18 18:17:37'),
(76, 253, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 0, 1, '2017-12-16 20:31:44', '2017-12-16 20:31:44'),
(77, 254, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 0, 1, '2017-12-16 20:33:16', '2017-12-16 20:33:16'),
(78, 255, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 0, 1, '2017-12-16 20:48:30', '2017-12-16 20:48:30'),
(79, 256, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 0, 1, '2017-12-18 17:21:44', '2017-12-18 17:21:44'),
(80, 260, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 0, 1, '2017-12-18 17:48:34', '2017-12-18 17:48:34'),
(81, 262, NULL, NULL, NULL, 'elite-event-dinner-with-the-chef-at-avant-san-diego', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 0, 1, '2017-12-20 23:10:14', '2017-12-20 23:15:49'),
(82, 263, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 0, 1, '2017-12-20 23:12:10', '2017-12-20 23:12:10'),
(83, 264, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 0, 1, '2017-12-20 23:27:54', '2017-12-20 23:27:54'),
(84, 265, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 0, 1, '2017-12-20 23:28:58', '2017-12-20 23:28:58'),
(85, 266, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 0, 1, '2017-12-21 20:55:41', '2017-12-21 20:55:41'),
(86, 267, 'X1-ZWz18zotebfwgb_8gte4', 'user27708862', 'ChIJVaDVHHPryFYRa9Ocf10TS3Y', 'partners-real-estate-eagle-river', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 0, 1, '2017-12-21 23:14:54', '2017-12-21 23:18:33'),
(87, 268, 'X1-ZWz18zotebfwgb_8gte4', 'user27708862', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 0, 1, '2017-12-21 23:21:26', '2017-12-21 23:24:50'),
(88, 269, 'X1-ZWz18zotebfwgb_8gte4', 'user19731134', 'ChIJ07HFQ1Z_24ARf2QSDb35NDU', 'team-flores-real-estate-coldwell-banker-san-diego-2', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 0, 1, '2017-12-21 23:46:05', '2017-12-22 00:27:58'),
(89, 270, 'X1-ZWz18zotebfwgb_8gte4', 'user19731134', 'ChIJ8xMvlV6C3IAR8xvCFle7850', 'team-flores-real-estate-coldwell-banker-san-diego-2', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 0, 1, '2017-12-21 23:47:31', '2017-12-22 00:16:20'),
(90, 271, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 0, 1, '2017-12-21 23:49:02', '2017-12-21 23:49:02'),
(91, 272, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 0, 1, '2017-12-21 23:54:13', '2017-12-21 23:54:13'),
(92, 273, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 0, 1, '2017-12-21 23:55:45', '2017-12-21 23:55:45'),
(93, 274, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 0, 1, '2017-12-21 23:56:39', '2017-12-21 23:56:39'),
(94, 275, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 0, 1, '2017-12-21 23:57:37', '2017-12-21 23:57:37'),
(95, 276, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 0, 1, '2017-12-21 23:57:39', '2017-12-21 23:57:39'),
(96, 277, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 0, 1, '2017-12-21 23:58:22', '2017-12-21 23:58:22'),
(97, 278, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 0, 1, '2017-12-21 23:59:13', '2017-12-21 23:59:13'),
(98, 279, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 0, 1, '2017-12-21 23:59:15', '2017-12-21 23:59:15'),
(99, 280, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 0, 1, '2017-12-22 00:00:08', '2017-12-22 00:00:08'),
(100, 282, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 0, 1, '2017-12-22 00:01:52', '2017-12-22 00:01:52'),
(101, 283, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 0, 1, '2017-12-22 00:02:50', '2017-12-22 00:02:50'),
(102, 284, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 0, 1, '2017-12-22 17:09:17', '2017-12-22 17:09:17'),
(103, 286, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 0, 1, '2017-12-22 17:22:27', '2017-12-22 17:22:27'),
(104, 287, 'X1-ZWz18zotebfwgb_8gte4', 'user19731134', NULL, 'team-flores-real-estate-coldwell-banker-san-diego-2', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 0, 1, '2017-12-22 17:24:32', '2017-12-22 23:23:49'),
(105, 288, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 0, 1, '2017-12-22 23:21:30', '2017-12-22 23:21:30'),
(106, 289, 'X1-ZWz18zotebfwgb_8gte4', 'tsquare1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 0, 1, '2017-12-23 00:14:51', '2017-12-23 00:31:25'),
(107, 290, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 0, 1, '2017-12-23 02:20:27', '2017-12-23 02:20:27'),
(108, 291, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 0, 1, '2017-12-26 10:08:51', '2017-12-26 10:08:51'),
(109, 292, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 0, 1, '2017-12-26 10:11:47', '2017-12-26 10:11:47'),
(110, 294, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 0, 1, '2017-12-27 00:48:19', '2017-12-27 00:48:19'),
(111, 295, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 0, 1, '2017-12-27 01:09:56', '2017-12-27 01:09:56'),
(112, 296, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 0, 1, '2017-12-27 01:14:09', '2017-12-27 01:14:09'),
(113, 297, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '24104612', NULL, NULL, 1, 1, 1, 1, 1, 0, 1, '2017-12-27 23:45:21', '2018-01-04 00:43:27'),
(114, 298, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 0, 1, '2017-12-29 21:15:18', '2017-12-29 21:15:18'),
(115, 299, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 0, 1, '2017-12-29 22:07:25', '2017-12-29 22:07:25'),
(116, 300, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 0, 1, '2018-01-11 01:30:55', '2018-01-11 01:30:55'),
(117, 301, 'X1-ZWz18zotebfwgb_8gte4', 'tim7558', 'ChIJEZbOX1FxIocRJt_vKSrkwz0', 'partners-real-estate-eagle-river', 'Merchant 1', '521557201549792', 'EAAEKAl6sHi0BAH2BFKKml24QVInJZC7F4mGV5Hu0Fl9NuE3NAHqgwHfdPaeq6Ja0iKBLuK3IXdyZBJq76sdEZAZCQ8QPu3NRqZA7AErVE7QtCm7BZBA9wtmvrHy9dAGyZBxZCOaS8S158waRBWshwTNJ1hjjZAc0HSaC8iZAMmHomljAZDZD', '12918017', 'partners-real-estate-llc-in-eagle-river-ak-12961', 'Brandon-Thorud___1205486', 1, 1, 1, 1, 1, 0, 1, '2018-01-11 17:43:41', '2018-02-10 22:34:34'),
(118, 302, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 0, 1, '2018-01-11 17:47:07', '2018-01-11 17:47:07'),
(119, 303, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 0, 1, '2018-01-11 23:35:19', '2018-01-11 23:35:19'),
(120, 304, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 0, 1, '2018-01-11 23:41:45', '2018-01-11 23:41:45'),
(121, 305, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 0, 1, '2018-01-11 23:49:12', '2018-01-11 23:49:12'),
(122, 306, 'X1-ZWz18zotebfwgb_8gte4', 'user27708862', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 0, 1, '2018-01-11 23:59:58', '2018-01-12 00:24:33'),
(123, 307, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 0, 1, '2018-01-12 01:28:38', '2018-01-12 01:28:38'),
(124, 308, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 0, 1, '2018-01-12 16:58:56', '2018-01-12 16:58:56'),
(125, 309, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 0, 1, '2018-01-12 23:15:53', '2018-01-12 23:15:53'),
(126, 310, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 0, 1, '2018-01-12 23:20:46', '2018-01-12 23:20:46'),
(127, 311, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 0, 1, '2018-03-09 01:32:15', '2018-03-09 01:32:15'),
(128, 312, NULL, NULL, NULL, 'partners-real-estate-eagle-river', 'Partners Real Estate - Eagle River, AK', '1931084697154141', 'EAAEKAl6sHi0BAFMen5JfSlxES4PpcEwXOcuAyZAyMjHzCHQNxUHf2w7TiQTk0KZCv8lfAMNaUtJEE90bmJFE7HcUtTZBcY5QvZC7zVcVXDktEkZCArYB4KIoN9srHwGm6NS3wsZAHHuWlDV6YglWoJdrZChNLBTmCEoZCCFtIgcBCgZDZD', NULL, NULL, NULL, 1, 1, 1, 1, 1, 0, 1, '2018-03-22 23:21:22', '2018-03-26 18:05:11'),
(129, 313, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 0, 1, '2018-03-22 23:22:47', '2018-03-22 23:22:47'),
(130, 314, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 0, 1, '2018-03-22 23:23:54', '2018-03-22 23:23:54'),
(131, 315, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 0, 1, '2018-03-22 23:24:43', '2018-03-22 23:24:43'),
(132, 316, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 0, 1, '2018-03-22 23:25:42', '2018-03-22 23:25:42'),
(133, 317, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 0, 1, '2018-03-22 23:26:23', '2018-03-22 23:26:23'),
(134, 318, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 0, 1, '2018-03-22 23:27:00', '2018-03-22 23:27:00'),
(135, 319, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 0, 1, '2018-03-24 21:34:52', '2018-03-24 21:34:52'),
(136, 320, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 0, 1, '2018-03-24 21:35:55', '2018-03-24 21:35:55'),
(137, 321, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 0, 1, '2018-03-28 18:14:11', '2018-03-28 18:14:11'),
(138, 322, NULL, NULL, NULL, 'team-flores-real-estate-coldwell-banker-san-diego-2', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 0, 1, '2018-04-03 02:30:20', '2018-04-03 02:37:16'),
(139, 323, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 0, 1, '2018-04-08 02:51:06', '2018-04-08 02:51:06'),
(140, 324, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 0, 1, '2018-04-08 03:46:54', '2018-04-08 03:46:54'),
(141, 325, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 0, 1, '2018-04-08 03:50:16', '2018-04-08 03:50:16'),
(142, 326, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 0, 1, '2018-04-08 03:53:01', '2018-04-08 03:53:01'),
(143, 328, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 0, 1, '2018-04-08 03:55:20', '2018-04-08 03:55:20'),
(144, 329, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 0, 1, '2018-04-08 03:57:41', '2018-04-08 03:57:41'),
(145, 330, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 0, 1, '2018-04-08 04:02:26', '2018-04-08 04:02:26'),
(146, 331, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 0, 1, '2018-04-08 04:47:28', '2018-04-08 04:47:28'),
(147, 332, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 0, 1, '2018-04-08 05:41:37', '2018-04-08 05:41:37'),
(148, 333, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 0, 1, '2018-04-08 05:46:36', '2018-04-08 05:46:36'),
(149, 334, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 0, 1, '2018-04-08 05:47:59', '2018-04-08 05:47:59'),
(150, 335, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 0, 1, '2018-04-08 05:49:28', '2018-04-08 05:49:28');

-- --------------------------------------------------------

--
-- Table structure for table `api_reviews`
--

CREATE TABLE `api_reviews` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `review_id` varchar(50) DEFAULT NULL,
  `rating` decimal(3,2) DEFAULT NULL,
  `source_img` varchar(500) DEFAULT NULL,
  `reviewer_name` varchar(500) DEFAULT NULL,
  `review_date` varchar(50) DEFAULT NULL,
  `review_url` varchar(500) DEFAULT NULL,
  `review_desc` text,
  `reviewer_profile_url` varchar(500) DEFAULT NULL,
  `google_relative_time` varchar(500) DEFAULT NULL,
  `zillow_review_summary` text,
  `zillow_review_id` varchar(50) DEFAULT NULL,
  `google_review_id` varchar(50) DEFAULT NULL,
  `yelp_review_id` varchar(50) DEFAULT NULL,
  `facebook_review_id` varchar(50) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `api_reviews`
--

INSERT INTO `api_reviews` (`id`, `user_id`, `review_id`, `rating`, `source_img`, `reviewer_name`, `review_date`, `review_url`, `review_desc`, `reviewer_profile_url`, `google_relative_time`, `zillow_review_summary`, `zillow_review_id`, `google_review_id`, `yelp_review_id`, `facebook_review_id`, `deleted`) VALUES
(106, 11, 'JWtTzHgx0R8SewcKRTaF7A', '5.00', 'img/yelp-icon.png', 'B J.', '2017-10-10 14:45:12', 'https://www.yelp.com/biz/team-flores-real-estate-coldwell-banker-san-diego-2?hrid=JWtTzHgx0R8SewcKRTaF7A&adjust_creative=yLRKI4b4orlxDvOUmYsS9A&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_reviews&utm_source=yLRKI4b4orlxDvOUmYsS9A', 'Team Flores is one of the best real estate teams in San Diego area! Lorraine and Saundra always provided me with high quality service. Although they handle...', 'https://s3-media1.fl.yelpcdn.com/photo/cLLAmW6VslFQZ7Ii9q-KGg/o.jpg', NULL, NULL, NULL, NULL, 'JWtTzHgx0R8SewcKRTaF7A', NULL, 1),
(107, 11, '8-RP0w9WIeeXU4Z_8P8ohA', '5.00', 'img/yelp-icon.png', 'Jeff R.', '2017-06-28 18:59:58', 'https://www.yelp.com/biz/team-flores-real-estate-coldwell-banker-san-diego-2?hrid=8-RP0w9WIeeXU4Z_8P8ohA&adjust_creative=yLRKI4b4orlxDvOUmYsS9A&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_reviews&utm_source=yLRKI4b4orlxDvOUmYsS9A', 'Lorraine and Sandra were fantastic. The realtor we used for years relocated back east. We needed a new realtor and much to our good fortune we were...', '', NULL, NULL, NULL, NULL, '8-RP0w9WIeeXU4Z_8P8ohA', NULL, 1),
(108, 11, '113246034351852089601', '5.00', 'img/Google.png', 'James Haines', '2017-07-28 23:53:28', 'https://www.google.com/maps/contrib/113246034351852089601/reviews', 'Very scary process for anyone especially me being my first home I\'ve bought! Team Flores knew this going into it and explained everything to me (in words I could understand) and was able to answer any of my questions! U can tell this is a team that cares about my needs rather than a paycheck thank you for everything you guys did for me will definitely be referring anyone I know to you guys and hope to work together again one day!', 'https://lh5.googleusercontent.com/-ELQyrRB2gcA/AAAAAAAAAAI/AAAAAAAAAAA/ANQ0kf6vMVuvXs75VI8ikU4fQ-fuAwmTGQ/s128-c0x00000000-cc-rp-mo/photo.jpg', '3 months ago', NULL, NULL, '113246034351852089601', NULL, NULL, 1),
(109, 11, '115334713129436718016', '5.00', 'img/Google.png', 'Giselle Garcia', '2017-09-02 02:10:59', 'https://www.google.com/maps/contrib/115334713129436718016/reviews', 'The girls are wonderful, very thorough,  work very very hard, they ask all the questions necessary to find what you want. Not just hard working but also really fun, easy going, very relatable. Do not take a no for an answer from the sellers but always in the most respectful way.', 'https://lh3.googleusercontent.com/-QTB0cyKt7K0/AAAAAAAAAAI/AAAAAAAAAAA/ANQ0kf5uSDo50xbmvlKaUFQQ3PZNSfKdcg/s128-c0x00000000-cc-rp-mo/photo.jpg', '2 months ago', NULL, NULL, '115334713129436718016', NULL, NULL, 1),
(110, 11, '101395116478776692943', '5.00', 'img/Google.png', 'Robin Root', '2017-07-05 17:38:41', 'https://www.google.com/maps/contrib/101395116478776692943/reviews', 'I highly recommend Team Flores for your real estate needs.  They sold our house the day they put up the for sale sign and it sold for more than the asking price!  When there was a problem with the title, they took care of it right away and the sale went through with no problems.  Lorraine and Saundra are knowledgeable, caring and helpful realtors who will work with you every step of the way, whether you are buying or selling.  I will definitely use Team Flores the next time I need to buy or sell a home!', 'https://lh6.googleusercontent.com/-wQbdeSc4oJI/AAAAAAAAAAI/AAAAAAAAAAA/ANQ0kf6hvuQe6AWU4N9utTtqW8QGqYWLfQ/s128-c0x00000000-cc-rp-mo/photo.jpg', '4 months ago', NULL, NULL, '101395116478776692943', NULL, NULL, 1),
(111, 11, '102883582952947235343', '5.00', 'img/Google.png', 'Jeff R', '2017-06-29 02:10:17', 'https://www.google.com/maps/contrib/102883582952947235343/reviews', 'After the realtor that we worked with for years moved back east, a friend recommended Lorraine. I am so lucky he did. These ladies anticipated everything, communicated very well and helped us make a great transaction from start to finish. Well done ladies!!', 'https://lh3.googleusercontent.com/-J9CiOqELIK4/AAAAAAAAAAI/AAAAAAAAAAA/ANQ0kf6klSyKEh-KLRxXfxX-64Idd6LSLg/s128-c0x00000000-cc-rp-mo/photo.jpg', '4 months ago', NULL, NULL, '102883582952947235343', NULL, NULL, 1),
(112, 11, '105810693394970120913', '5.00', 'img/Google.png', 'Cinthya Negrete', '2017-09-02 01:10:31', 'https://www.google.com/maps/contrib/105810693394970120913/reviews', 'Lorraine and Saundra help us enormously findign our house last year, in a beautiful community in Escondido.  We were first time homebuyers with little knowledge of the process, but thankfully we got to work with them and...these ladies rock!... first of all they care about their clients, and are passionate to help them find the perfect home, they did it for us :). They were really good listeners and great advisors at times when big decisions needed to be made, explaning things with good details but trying to always make it simple for us, adapting to our schedule, and later, even coming up with home improvements ideas, including reference numbers and all. We are really pleased with our home and the journey that it was to get it, but definitely we couldn\'t done it better without team Flores. I\'d recommend Lorraine and Saudra anytime.', 'https://lh5.googleusercontent.com/-7WVz1oGBY9E/AAAAAAAAAAI/AAAAAAAAAAA/ANQ0kf6mrwKOpdUWc2vuvL7xJLCtTHzyxA/s128-c0x00000000-cc-rp-mo/photo.jpg', '2 months ago', NULL, NULL, '105810693394970120913', NULL, NULL, 1),
(113, 11, '3242042', '5.00', 'img/zillow.png', 'jbloom1999', '2017-04-07', 'http://www.zillow.com/profile/user19731134/Reviews/?review=3242042', 'Brandon is great. We liked working with Brandon as soon as we met him. He has a great knowledge of the area, the product inventory and market. He has the great combination of professional knowledge and ...', 'http://www.zillow.com/profile/jbloom1999/', NULL, 'Property manage a Single Family home in Eagle River, Eagle River, AK.', '3242042', NULL, NULL, NULL, 0),
(114, 170, '3192648', '5.00', 'img/zillow.png', 'kboquet', '2017-03-19', 'http://www.zillow.com/profile/user19731134/Reviews/?review=3192648', 'We are very grateful for Brandon Thorud and the support of Partners Real Estate when we relocated to Alaska.  Brandon has great interpersonal skills and is very easy to work with.  He is very conscientious ...', 'http://www.zillow.com/profile/kboquet/', NULL, 'Bought a Single Family home in 2009 in Eagle River, Eagle River, AK.', '3192648', NULL, NULL, NULL, 0),
(115, 170, '3185414', '5.00', 'img/zillow.png', 'Janan2', '2017-03-15', 'http://www.zillow.com/profile/user19731134/Reviews/?review=3185414', 'Brandon assisted my family and I with our home purchase when we relocated from Arizona to Alaska. He and his company were fantastic to work with, got our offer accepted, closed early and done all remotely ...', 'http://www.zillow.com/profile/Janan2/', NULL, 'Bought a Single Family home in 2015 in Chugiak, Chugiak, AK.', '3185414', NULL, NULL, NULL, 0),
(116, 172, '3242042', '5.00', 'img/zillow.png', 'jbloom1999', '2017-04-07', 'http://www.zillow.com/profile/user19731134/Reviews/?review=3242042', 'Brandon is great. We liked working with Brandon as soon as we met him. He has a great knowledge of the area, the product inventory and market. He has the great combination of professional knowledge and ...', 'http://www.zillow.com/profile/jbloom1999/', NULL, 'Property manage a Single Family home in Eagle River, Eagle River, AK.', '3242042', NULL, NULL, NULL, 1),
(117, 172, '3192648', '5.00', 'img/zillow.png', 'kboquet', '2017-03-19', 'http://www.zillow.com/profile/user19731134/Reviews/?review=3192648', 'We are very grateful for Brandon Thorud and the support of Partners Real Estate when we relocated to Alaska.  Brandon has great interpersonal skills and is very easy to work with.  He is very conscientious ...', 'http://www.zillow.com/profile/kboquet/', NULL, 'Bought a Single Family home in 2009 in Eagle River, Eagle River, AK.', '3192648', NULL, NULL, NULL, 1),
(118, 172, '3185414', '5.00', 'img/zillow.png', 'Janan2', '2017-03-15', 'http://www.zillow.com/profile/user19731134/Reviews/?review=3185414', 'Brandon assisted my family and I with our home purchase when we relocated from Arizona to Alaska. He and his company were fantastic to work with, got our offer accepted, closed early and done all remotely ...', 'http://www.zillow.com/profile/Janan2/', NULL, 'Bought a Single Family home in 2015 in Chugiak, Chugiak, AK.', '3185414', NULL, NULL, NULL, 1),
(119, 172, '112609143360730447890', '5.00', 'img/Google.png', 'Tami Shepherd', '2017-09-28 23:45:47', 'https://www.google.com/maps/contrib/112609143360730447890/reviews', 'I love Pampered Pooch, Lisa is wonderful and so is Katie and the rest of the employees.  I wouldn\'t go anywhere else. I have a yorkie and Frenchie.', 'https://lh6.googleusercontent.com/-YHOg3_y9-78/AAAAAAAAAAI/AAAAAAAAAAA/AFiYof1FxKJpHio9H7v68cum2Jz1VdKneA/s128-c0x00000000-cc-rp-mo/photo.jpg', 'a month ago', NULL, NULL, '112609143360730447890', NULL, NULL, 0),
(120, 172, '110597731838752734886', '1.00', 'img/Google.png', 'Dawn Raus', '2017-04-29 23:49:51', 'https://www.google.com/maps/contrib/110597731838752734886/reviews', 'Don\'t bring your pet here! They cut a chunk out of my dogs ear, blood everywhere!! I even had to go back to get his nails trimmed. Then a third trip to show how they ruined my mini schnauzer\'s beautiful beard! They also cut his skirt way to low. The owner, Lisa wouldn\'t give me a refund or even a complimentary grooming (I was even willing to return for this)!!', 'https://lh3.googleusercontent.com/-8SY0QgtBYWM/AAAAAAAAAAI/AAAAAAAAABQ/k-5QJbyTbqw/s128-c0x00000000-cc-rp-mo/photo.jpg', '6 months ago', NULL, NULL, '110597731838752734886', NULL, NULL, 0),
(121, 172, '117644597470833551493', '5.00', 'img/Google.png', 'Les St. John', '2017-01-03 08:57:45', 'https://www.google.com/maps/contrib/117644597470833551493/reviews', 'Fantastic......Lindsie your the BEST Groomer ', 'https://lh4.googleusercontent.com/-OGNRpLDeKiE/AAAAAAAAAAI/AAAAAAAAAMU/1R2OK3sYM64/s128-c0x00000000-cc-rp-mo/photo.jpg', '10 months ago', NULL, NULL, '117644597470833551493', NULL, NULL, 0),
(122, 172, '1254445321', '5.00', 'img/Google.png', 'A Google User', '2009-10-02 01:02:01', '', 'This is the best place to take your dogs. I took my two babies there and they looked so pretty afterward. They do an excellent job and the price is really good! They are 100 % honest.... ', '', '8 years ago', NULL, NULL, '1254445321', NULL, NULL, 0),
(123, 172, '1253057511', '5.00', 'img/Google.png', 'A Google User', '2009-09-15 23:31:51', '', 'The groomers at Pampered Pooch are just hands down the best. They really know what they are doing and my dog always comes out looking great and happy as can be! I would recommend this establishment 100 percent. ', '', '8 years ago', NULL, NULL, '1253057511', NULL, NULL, 0),
(127, 170, '3696551', '5.00', 'img/zillow.png', 'Douglas Moody', '2017-10-16', 'http://www.zillow.com/profile/PartnersRealEstate/Reviews/?review=3696551', 'My wife and I cannot say enough wonderful things about Jeron! As first time home buyers we had a lot of questions and concerns throughout the process and Jeron made it his priority to make himself available ...', 'http://www.zillow.com/profile/moody-douglas/', NULL, 'Bought a Single Family home in 2017 in Bayshore-Klatt, Anchorage, AK.', '3696551', NULL, NULL, NULL, 0),
(128, 170, '3562980', '5.00', 'img/zillow.png', 'mrs sarahejohnson9', '2017-08-19', 'http://www.zillow.com/profile/PartnersRealEstate/Reviews/?review=3562980', 'She helped me find the perfect home and answered all my questions as a first time home buyer! She made the process so easy! I would highly recommend her for all real estate needs.', 'http://www.zillow.com/profile/mrs-sarahejohnson9/', NULL, 'Bought a Townhouse home in 2017 in Taku-Campbell, Anchorage, AK.', '3562980', NULL, NULL, NULL, 0),
(129, 170, '3562055', '5.00', 'img/zillow.png', 'mmeza0', '2017-08-18', 'http://www.zillow.com/profile/PartnersRealEstate/Reviews/?review=3562055', 'Renee took the time to work with us to find our forever home. She always kept our best interest in mind, was honest, responsive, flexible, and great to work with. She helped make this experience fun and ...', 'http://www.zillow.com/profile/mmeza0/', NULL, 'Bought a Single Family home in 2016 in Eagle River, Eagle River, AK.', '3562055', NULL, NULL, NULL, 0),
(130, 170, '3529754', '5.00', 'img/zillow.png', 'zuser20170629005143161', '2017-08-05', 'http://www.zillow.com/profile/PartnersRealEstate/Reviews/?review=3529754', 'Ethan was very prompt and thorough answering any and all questions I had, even if I emailed him after normal work hours. I had to bow out of buying the place we looked at for financial reasons, but if/when ...', 'http://www.zillow.com/profile/zuser20170629005143161/', NULL, 'Listed, but didn\'t sell my Condo home in 2017 in Russian Jack Park, Anchorage, AK.', '3529754', NULL, NULL, NULL, 0),
(131, 170, '3512599', '5.00', 'img/zillow.png', 'TARA VANAMAN', '2017-07-29', 'http://www.zillow.com/profile/PartnersRealEstate/Reviews/?review=3512599', 'Jeron Rose of Partners Real Estate was a pleasure to work with. He is newer to the field but a joy to work with, an advocate for his clients and committed to learning and growing. He was always willing ...', 'http://www.zillow.com/profile/tdvanaman5/', NULL, 'Bought a Single Family home in 2017 in Eagle River, Eagle River, AK.', '3512599', NULL, NULL, NULL, 0),
(132, 170, '3442673', '5.00', 'img/zillow.png', 'Ashley jasper', '2017-06-30', 'http://www.zillow.com/profile/PartnersRealEstate/Reviews/?review=3442673', 'First time home buyers, met Tim as he was showing us a rental, we discussed our shock of the area\'s high rental costs and he suggested buying our own home.  My husband is active duty and we have always ...', 'http://www.zillow.com/profile/zuser20170302040858501/', NULL, 'Bought a Single Family home in 2017 in Eagle River, Eagle River, AK.', '3442673', NULL, NULL, NULL, 0),
(133, 170, '3414470', '5.00', 'img/zillow.png', 'live4fishin31', '2017-06-19', 'http://www.zillow.com/profile/PartnersRealEstate/Reviews/?review=3414470', 'Tim gave us one of the best home buying experiences we ever could have imagined. We were extremely picky, and Tim found us our dream home. This is our second house we\'ve bought and Tim was by far, way ...', 'http://www.zillow.com/profile/live4fishin31/', NULL, 'Bought a home in 2017 in Suntrana, Healy, AK 99755.', '3414470', NULL, NULL, NULL, 0),
(134, 170, '3380728', '5.00', 'img/zillow.png', 'user3540461', '2017-06-04', 'http://www.zillow.com/profile/PartnersRealEstate/Reviews/?review=3380728', 'Tim went ABOVE and BEYOND for us! Whenever, however we need a question answered or something done he responded quickly and did whatever needed to be done. He kept in constant contact with the sellers ...', 'http://www.zillow.com/profile/user3540461/', NULL, 'Bought a Single Family home in 2017 in Wasilla, AK.', '3380728', NULL, NULL, NULL, 0),
(135, 170, '3379195', '5.00', 'img/zillow.png', 'zuser20170122103006326', '2017-06-03', 'http://www.zillow.com/profile/PartnersRealEstate/Reviews/?review=3379195', 'We had called about a listing with a different agent he never returned my message at that time Danica stepped in and helped us through the buying process. If we had questions immediately she answered ...', 'http://www.zillow.com/profile/zuser20170122103006326/', NULL, 'Bought a home in 2017 in Anchorage, AK.', '3379195', NULL, NULL, NULL, 0),
(136, 170, '3242042', '5.00', 'img/zillow.png', 'jbloom1999', '2017-04-07', 'http://www.zillow.com/profile/PartnersRealEstate/Reviews/?review=3242042', 'Brandon is great. We liked working with Brandon as soon as we met him. He has a great knowledge of the area, the product inventory and market. He has the great combination of professional knowledge and ...', 'http://www.zillow.com/profile/jbloom1999/', NULL, 'Property manage a Single Family home in Eagle River, Eagle River, AK.', '3242042', NULL, NULL, NULL, 0),
(137, 11, '3216691', '5.00', 'img/zillow.png', 'zoyaclestenkof', '2017-03-29', 'http://www.zillow.com/profile/user27708862/Reviews/?review=3216691', 'Stacy was reliable, prompt, courteous and very knowledgeable in helping us buy a home. She made purchasing a home a pleasant experience, and found us exactly what we needed in a short period of time. ...', 'http://www.zillow.com/profile/zoyaclestenkof/', NULL, 'Showed home in 2005 in Abbott Loop, Anchorage, AK 99507.', '3216691', NULL, NULL, NULL, 1),
(138, 11, '3214468', '5.00', 'img/zillow.png', 'zuser20160314213832983', '2017-03-28', 'http://www.zillow.com/profile/user27708862/Reviews/?review=3214468', 'I began working with Stacy in April of 2016 when I was looking to rent an apartment/condo. She was the licensee for the property listed that I was looking at, and after I obtained the lease of said property, ...', 'http://www.zillow.com/profile/zuser20160314213832983/', NULL, 'Bought a Condo home in 2017 in Scenic Foothills, Anchorage, AK.', '3214468', NULL, NULL, NULL, 1),
(139, 11, '1693525', '5.00', 'img/zillow.png', 'AKjes', '2015-04-07', 'http://www.zillow.com/profile/user27708862/Reviews/?review=1693525', 'i have purchased a house previously with another realtor, so am able to compare this experience with the previous- that said, I highly recommend Stacy and would work with her again. <br/>I have only good ...', '', NULL, 'Bought a Single Family home in 2015 in Bayshore-Klatt, Anchorage, AK.', '1693525', NULL, NULL, NULL, 1),
(140, 11, '17307965036597441511431810', '4.00', 'img/facebook-icon.png', 'Dharmveer Thakur', '2017-11-23T10:10:10+0000', 'https://www.facebook.com/pg/Sprint5+Test+Demo-1921248051491991/reviews/', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(141, 11, '15784515788677181511431693', '5.00', 'img/facebook-icon.png', 'Rajesh Kumar Singh', '2017-11-23T10:08:13+0000', 'https://www.facebook.com/pg/Sprint5+Test+Demo-1921248051491991/reviews/', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(142, 11, '2H9gGcuSJCSrN_EjaY89aQ', '5.00', 'img/yelp-icon.png', 'Brittni W.', '2016-09-13 22:54:44', 'https://www.yelp.com/biz/partners-real-estate-eagle-river?hrid=2H9gGcuSJCSrN_EjaY89aQ&adjust_creative=yLRKI4b4orlxDvOUmYsS9A&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_reviews&utm_source=yLRKI4b4orlxDvOUmYsS9A', 'We have been using Partners Real Estate since we first landed in Alaska a few years ago.  We started as renters, they were strict about cleanliness and...', 'https://s3-media2.fl.yelpcdn.com/photo/InpLWAKhGZkkPRkdalmzIw/o.jpg', NULL, NULL, NULL, NULL, '2H9gGcuSJCSrN_EjaY89aQ', NULL, 0),
(143, 11, 'd65SlxOfx2w1vj6kcszcvg', '2.00', 'img/yelp-icon.png', 'Michael S.', '2017-04-11 22:53:08', 'https://www.yelp.com/biz/partners-real-estate-eagle-river?hrid=d65SlxOfx2w1vj6kcszcvg&adjust_creative=yLRKI4b4orlxDvOUmYsS9A&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_reviews&utm_source=yLRKI4b4orlxDvOUmYsS9A', 'I\'ll begin with saying I\'ve never had a problem with any real estate or property management company before. I\'ve never had any damages to property, and I\'ve...', '', NULL, NULL, NULL, NULL, 'd65SlxOfx2w1vj6kcszcvg', NULL, 0),
(144, 11, 'istgEquSIh88PfQN7jARbw', '5.00', 'img/yelp-icon.png', 'Natalie J.', '2017-01-31 10:45:11', 'https://www.yelp.com/biz/partners-real-estate-eagle-river?hrid=istgEquSIh88PfQN7jARbw&adjust_creative=yLRKI4b4orlxDvOUmYsS9A&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_reviews&utm_source=yLRKI4b4orlxDvOUmYsS9A', 'Partners Real Estate is a great company for buying, selling and managing. Brandon is a hard worker. They are managing my townhouse and got it rented in one...', '', NULL, NULL, NULL, NULL, 'istgEquSIh88PfQN7jARbw', NULL, 0),
(145, 177, '17307965036597441511431810', '4.00', 'img/facebook-icon.png', 'Dharmveer Thakur', '2017-11-23T10:10:10+0000', 'https://www.facebook.com/pg/Sprint5+Test+Demo-1921248051491991/reviews/', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(146, 177, '15784515788677181511431693', '5.00', 'img/facebook-icon.png', 'Rajesh Kumar Singh', '2017-11-23T10:08:13+0000', 'https://www.facebook.com/pg/Sprint5+Test+Demo-1921248051491991/reviews/', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(147, 177, '3242042', '5.00', 'img/zillow.png', 'jbloom1999', '2017-04-07', 'http://www.zillow.com/profile/user19731134/Reviews/?review=3242042', 'Brandon is great. We liked working with Brandon as soon as we met him. He has a great knowledge of the area, the product inventory and market. He has the great combination of professional knowledge and ...', 'http://www.zillow.com/profile/jbloom1999/', NULL, 'Property manage a Single Family home in Eagle River, Eagle River, AK.', '3242042', NULL, NULL, NULL, 1),
(148, 177, '3192648', '5.00', 'img/zillow.png', 'kboquet', '2017-03-19', 'http://www.zillow.com/profile/user19731134/Reviews/?review=3192648', 'We are very grateful for Brandon Thorud and the support of Partners Real Estate when we relocated to Alaska.  Brandon has great interpersonal skills and is very easy to work with.  He is very conscientious ...', 'http://www.zillow.com/profile/kboquet/', NULL, 'Bought a Single Family home in 2009 in Eagle River, Eagle River, AK.', '3192648', NULL, NULL, NULL, 1),
(149, 177, '3185414', '5.00', 'img/zillow.png', 'Janan2', '2017-03-15', 'http://www.zillow.com/profile/user19731134/Reviews/?review=3185414', 'Brandon assisted my family and I with our home purchase when we relocated from Arizona to Alaska. He and his company were fantastic to work with, got our offer accepted, closed early and done all remotely ...', 'http://www.zillow.com/profile/Janan2/', NULL, 'Bought a Single Family home in 2015 in Chugiak, Chugiak, AK.', '3185414', NULL, NULL, NULL, 1),
(150, 172, '2H9gGcuSJCSrN_EjaY89aQ', '5.00', 'img/yelp-icon.png', 'Brittni W.', '2016-09-13 22:54:44', 'https://www.yelp.com/biz/partners-real-estate-eagle-river?hrid=2H9gGcuSJCSrN_EjaY89aQ&adjust_creative=yLRKI4b4orlxDvOUmYsS9A&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_reviews&utm_source=yLRKI4b4orlxDvOUmYsS9A', 'We have been using Partners Real Estate since we first landed in Alaska a few years ago.  We started as renters, they were strict about cleanliness and...', 'https://s3-media2.fl.yelpcdn.com/photo/InpLWAKhGZkkPRkdalmzIw/o.jpg', NULL, NULL, NULL, NULL, '2H9gGcuSJCSrN_EjaY89aQ', NULL, 1),
(151, 172, 'd65SlxOfx2w1vj6kcszcvg', '2.00', 'img/yelp-icon.png', 'Michael S.', '2017-04-11 22:53:08', 'https://www.yelp.com/biz/partners-real-estate-eagle-river?hrid=d65SlxOfx2w1vj6kcszcvg&adjust_creative=yLRKI4b4orlxDvOUmYsS9A&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_reviews&utm_source=yLRKI4b4orlxDvOUmYsS9A', 'I\'ll begin with saying I\'ve never had a problem with any real estate or property management company before. I\'ve never had any damages to property, and I\'ve...', '', NULL, NULL, NULL, NULL, 'd65SlxOfx2w1vj6kcszcvg', NULL, 1),
(152, 172, 'istgEquSIh88PfQN7jARbw', '5.00', 'img/yelp-icon.png', 'Natalie J.', '2017-01-31 10:45:11', 'https://www.yelp.com/biz/partners-real-estate-eagle-river?hrid=istgEquSIh88PfQN7jARbw&adjust_creative=yLRKI4b4orlxDvOUmYsS9A&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_reviews&utm_source=yLRKI4b4orlxDvOUmYsS9A', 'Partners Real Estate is a great company for buying, selling and managing. Brandon is a hard worker. They are managing my townhouse and got it rented in one...', '', NULL, NULL, NULL, NULL, 'istgEquSIh88PfQN7jARbw', NULL, 1),
(153, 172, '2198564', '5.00', 'img/zillow.png', 'Cynthia4619', '2016-02-17', 'http://www.zillow.com/profile/tsquare1/Reviews/?review=2198564', 'I have been looking for a rental home for about two weeks and finally found a company that returns my calls and emails!  They were on time for our appointment and were able to answer all my questions. ...', 'http://www.zillow.com/profile/Cynthia4619/', NULL, 'Helped me rent a Single Family home in Mill Creek, WA.', '2198564', NULL, NULL, NULL, 0),
(154, 172, '553457', '5.00', 'img/zillow.png', 'eddie t 71', '2013-10-24', 'http://www.zillow.com/profile/tsquare1/Reviews/?review=553457', 'Quick to get back to us and accommodating to our schedule.  Had a good selection of homes for us to look at and consider and helped us get into the one that we wanted.  I would recommend to others.', 'http://www.zillow.com/profile/eddie-t-71/', NULL, 'Helped me rent a home in Cottage Lake, Woodinville, WA 98077.', '553457', NULL, NULL, NULL, 0),
(155, 172, '535340', '2.00', 'img/zillow.png', 'sven98011', '2013-10-10', 'http://www.zillow.com/profile/tsquare1/Reviews/?review=535340', 'Poor professionalism; representative was more than 40 minutes late to a property showing and informed us at the last minute that another applicant would be joining the walk through.  Upon hearing the ...', 'http://www.zillow.com/profile/sven98011/', NULL, 'We connected, but it did not work out. Looking in Thrashers Corner, Seattle Hill-Silver Firs, WA 98012', '535340', NULL, NULL, NULL, 0),
(156, 170, '2198564', '5.00', 'img/zillow.png', 'Cynthia4619', '2016-02-17', 'http://www.zillow.com/profile/tsquare1/Reviews/?review=2198564', 'I have been looking for a rental home for about two weeks and finally found a company that returns my calls and emails!  They were on time for our appointment and were able to answer all my questions. ...', 'http://www.zillow.com/profile/Cynthia4619/', NULL, 'Helped me rent a Single Family home in Mill Creek, WA.', '2198564', NULL, NULL, NULL, 1),
(157, 170, '553457', '5.00', 'img/zillow.png', 'eddie t 71', '2013-10-24', 'http://www.zillow.com/profile/tsquare1/Reviews/?review=553457', 'Quick to get back to us and accommodating to our schedule.  Had a good selection of homes for us to look at and consider and helped us get into the one that we wanted.  I would recommend to others.', 'http://www.zillow.com/profile/eddie-t-71/', NULL, 'Helped me rent a home in Cottage Lake, Woodinville, WA 98077.', '553457', NULL, NULL, NULL, 1),
(158, 170, '535340', '2.00', 'img/zillow.png', 'sven98011', '2013-10-10', 'http://www.zillow.com/profile/tsquare1/Reviews/?review=535340', 'Poor professionalism; representative was more than 40 minutes late to a property showing and informed us at the last minute that another applicant would be joining the walk through.  Upon hearing the ...', 'http://www.zillow.com/profile/sven98011/', NULL, 'We connected, but it did not work out. Looking in Thrashers Corner, Seattle Hill-Silver Firs, WA 98012', '535340', NULL, NULL, NULL, 1),
(159, 186, '3442673', '5.00', 'img/zillow.png', 'Ashley jasper', '2017-06-30', 'http://www.zillow.com/profile/tim7558/Reviews/?review=3442673', 'First time home buyers, met Tim as he was showing us a rental, we discussed our shock of the area\'s high rental costs and he suggested buying our own home.  My husband is active duty and we have always ...', 'http://www.zillow.com/profile/zuser20170302040858501/', NULL, 'Bought a Single Family home in 2017 in Eagle River, Eagle River, AK.', '3442673', NULL, NULL, NULL, 1),
(160, 186, '3414470', '5.00', 'img/zillow.png', 'live4fishin31', '2017-06-19', 'http://www.zillow.com/profile/tim7558/Reviews/?review=3414470', 'Tim gave us one of the best home buying experiences we ever could have imagined. We were extremely picky, and Tim found us our dream home. This is our second house we\'ve bought and Tim was by far, way ...', 'http://www.zillow.com/profile/live4fishin31/', NULL, 'Bought a home in 2017 in Suntrana, Healy, AK 99755.', '3414470', NULL, NULL, NULL, 1),
(161, 186, '3380728', '5.00', 'img/zillow.png', 'user3540461', '2017-06-04', 'http://www.zillow.com/profile/tim7558/Reviews/?review=3380728', 'Tim went ABOVE and BEYOND for us! Whenever, however we need a question answered or something done he responded quickly and did whatever needed to be done. He kept in constant contact with the sellers ...', 'http://www.zillow.com/profile/user3540461/', NULL, 'Bought a Single Family home in 2017 in Wasilla, AK.', '3380728', NULL, NULL, NULL, 1),
(162, 170, '3075792', '5.00', 'img/zillow.png', 'zuser20140922074735562', '2017-01-27', 'http://www.zillow.com/profile/tim7558/Reviews/?review=3075792', 'What made you decide to buy/sell your home?<br/>While doing a comparison of rentals in the area and mortgage rates, we did not want to throw away upwards of $36k a year and since were military were going ...', 'http://www.zillow.com/profile/zuser20140922074735562/', NULL, 'Bought a Single Family home in 2016 in South Fork, Eagle River, AK.', '3075792', NULL, NULL, NULL, 0),
(163, 186, '3696551', '5.00', 'img/zillow.png', 'Douglas Moody', '2017-10-16', 'http://www.zillow.com/profile/jeronrose/Reviews/?review=3696551', 'My wife and I cannot say enough wonderful things about Jeron! As first time home buyers we had a lot of questions and concerns throughout the process and Jeron made it his priority to make himself available ...', 'http://www.zillow.com/profile/moody-douglas/', NULL, 'Bought a Single Family home in 2017 in Bayshore-Klatt, Anchorage, AK.', '3696551', NULL, NULL, NULL, 1),
(164, 170, '3137997', '5.00', 'img/zillow.png', 'coleheat', '2017-02-23', 'http://www.zillow.com/profile/jeronrose/Reviews/?review=3137997', 'I first contacted Jeron with a unique and time-critical situation I hoped he could help with, knowing it may have been a lot to ask. His reply was sympathetic and professional. He was able to finish the ...', 'http://www.zillow.com/profile/coleheat/', NULL, 'Bought and sold a Single Family home in 2016 in Chugiak, Chugiak, AK.', '3137997', NULL, NULL, NULL, 0),
(165, 186, 'JWtTzHgx0R8SewcKRTaF7A', '5.00', 'img/yelp-icon.png', 'B J.', '2017-10-10 14:45:12', 'https://www.yelp.com/biz/team-flores-real-estate-coldwell-banker-san-diego-2?hrid=JWtTzHgx0R8SewcKRTaF7A&adjust_creative=yLRKI4b4orlxDvOUmYsS9A&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_reviews&utm_source=yLRKI4b4orlxDvOUmYsS9A', 'Team Flores is one of the best real estate teams in San Diego area! Lorraine and Saundra always provided me with high quality service. Although they handle...', 'https://s3-media1.fl.yelpcdn.com/photo/cLLAmW6VslFQZ7Ii9q-KGg/o.jpg', NULL, NULL, NULL, NULL, 'JWtTzHgx0R8SewcKRTaF7A', NULL, 1),
(166, 186, '2H9gGcuSJCSrN_EjaY89aQ', '5.00', 'img/yelp-icon.png', 'Brittni W.', '2016-09-13 22:54:44', 'https://www.yelp.com/biz/partners-real-estate-eagle-river?hrid=2H9gGcuSJCSrN_EjaY89aQ&adjust_creative=yLRKI4b4orlxDvOUmYsS9A&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_reviews&utm_source=yLRKI4b4orlxDvOUmYsS9A', 'We have been using Partners Real Estate since we first landed in Alaska a few years ago.  We started as renters, they were strict about cleanliness and...', 'https://s3-media2.fl.yelpcdn.com/photo/InpLWAKhGZkkPRkdalmzIw/o.jpg', NULL, NULL, NULL, NULL, '2H9gGcuSJCSrN_EjaY89aQ', NULL, 0),
(167, 186, 'd65SlxOfx2w1vj6kcszcvg', '2.00', 'img/yelp-icon.png', 'Michael S.', '2017-04-11 22:53:08', 'https://www.yelp.com/biz/partners-real-estate-eagle-river?hrid=d65SlxOfx2w1vj6kcszcvg&adjust_creative=yLRKI4b4orlxDvOUmYsS9A&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_reviews&utm_source=yLRKI4b4orlxDvOUmYsS9A', 'I\'ll begin with saying I\'ve never had a problem with any real estate or property management company before. I\'ve never had any damages to property, and I\'ve...', '', NULL, NULL, NULL, NULL, 'd65SlxOfx2w1vj6kcszcvg', NULL, 0),
(168, 186, 'istgEquSIh88PfQN7jARbw', '5.00', 'img/yelp-icon.png', 'Natalie J.', '2017-01-31 10:45:11', 'https://www.yelp.com/biz/partners-real-estate-eagle-river?hrid=istgEquSIh88PfQN7jARbw&adjust_creative=yLRKI4b4orlxDvOUmYsS9A&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_reviews&utm_source=yLRKI4b4orlxDvOUmYsS9A', 'Partners Real Estate is a great company for buying, selling and managing. Brandon is a hard worker. They are managing my townhouse and got it rented in one...', '', NULL, NULL, NULL, NULL, 'istgEquSIh88PfQN7jARbw', NULL, 0),
(169, 186, '8-RP0w9WIeeXU4Z_8P8ohA', '5.00', 'img/yelp-icon.png', 'Jeff R.', '2017-06-28 18:59:58', 'https://www.yelp.com/biz/team-flores-real-estate-coldwell-banker-san-diego-2?hrid=8-RP0w9WIeeXU4Z_8P8ohA&adjust_creative=yLRKI4b4orlxDvOUmYsS9A&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_reviews&utm_source=yLRKI4b4orlxDvOUmYsS9A', 'Lorraine and Sandra were fantastic. The realtor we used for years relocated back east. We needed a new realtor and much to our good fortune we were...', '', NULL, NULL, NULL, NULL, '8-RP0w9WIeeXU4Z_8P8ohA', NULL, 1),
(170, 186, '3066953230359821486045891', '5.00', 'img/facebook-icon.png', 'Ankit Chetu', '2017-02-02T14:31:31+0000', 'https://www.facebook.com/pg/Merchant+1-666741620153385/reviews/', 'Hello i am here to write a review because this page providing me lot of offers.', NULL, NULL, NULL, NULL, NULL, NULL, '3066953230359821486045891', 1),
(171, 186, '14985763635588501485181245', '4.00', 'img/facebook-icon.png', 'Vineet Kumar Arya', '2017-01-23T14:20:45+0000', 'https://www.facebook.com/pg/Merchant+1-666741620153385/reviews/', 'Hi Good Lorem ipsum dummy content. So it is usefullllll........', NULL, NULL, NULL, NULL, NULL, NULL, '14985763635588501485181245', 1),
(172, 186, '2907511014327961485175188', '4.00', 'img/facebook-icon.png', 'Rakesh Maurya', '2017-01-23T12:39:48+0000', 'https://www.facebook.com/pg/Merchant+1-666741620153385/reviews/', 'Hello this page is providing promotional offers', NULL, NULL, NULL, NULL, NULL, NULL, '2907511014327961485175188', 1),
(173, 186, '17307965036597441511431810', '4.00', 'img/facebook-icon.png', 'Dharmveer Thakur', '2017-11-23T10:10:10+0000', 'https://www.facebook.com/pg/Sprint5+Test+Demo-1921248051491991/reviews/', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', NULL, NULL, NULL, NULL, NULL, NULL, '17307965036597441511431810', 1),
(174, 186, '15784515788677181511431693', '5.00', 'img/facebook-icon.png', 'Rajesh Kumar Singh', '2017-11-23T10:08:13+0000', 'https://www.facebook.com/pg/Sprint5+Test+Demo-1921248051491991/reviews/', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', NULL, NULL, NULL, NULL, NULL, NULL, '15784515788677181511431693', 1),
(175, 186, '113246034351852089601', '5.00', 'img/Google.png', 'James Haines', '2017-07-28 23:53:28', 'https://www.google.com/maps/contrib/113246034351852089601/reviews', 'Very scary process for anyone especially me being my first home I\'ve bought! Team Flores knew this going into it and explained everything to me (in words I could understand) and was able to answer any of my questions! U can tell this is a team that cares about my needs rather than a paycheck thank you for everything you guys did for me will definitely be referring anyone I know to you guys and hope to work together again one day!', 'https://lh5.googleusercontent.com/-ELQyrRB2gcA/AAAAAAAAAAI/AAAAAAAAAAA/AFiYof3o3mvUkwE5figCwZ5JNW-HdoV_uw/s128-c0x00000000-cc-rp-mo/photo.jpg', '4 months ago', NULL, NULL, '113246034351852089601', NULL, NULL, 1),
(176, 186, '101395116478776692943', '5.00', 'img/Google.png', 'Robin Root', '2017-07-05 17:38:41', 'https://www.google.com/maps/contrib/101395116478776692943/reviews', 'I highly recommend Team Flores for your real estate needs.  They sold our house the day they put up the for sale sign and it sold for more than the asking price!  When there was a problem with the title, they took care of it right away and the sale went through with no problems.  Lorraine and Saundra are knowledgeable, caring and helpful realtors who will work with you every step of the way, whether you are buying or selling.  I will definitely use Team Flores the next time I need to buy or sell a home!', 'https://lh6.googleusercontent.com/-wQbdeSc4oJI/AAAAAAAAAAI/AAAAAAAAAAA/AFiYof0rF_XYA0XQfy_8Nw38WdcxIeqeXg/s128-c0x00000000-cc-rp-mo/photo.jpg', '5 months ago', NULL, NULL, '101395116478776692943', NULL, NULL, 1),
(177, 186, '115334713129436718016', '5.00', 'img/Google.png', 'Giselle Garcia', '2017-09-02 02:10:59', 'https://www.google.com/maps/contrib/115334713129436718016/reviews', 'The girls are wonderful, very thorough,  work very very hard, they ask all the questions necessary to find what you want. Not just hard working but also really fun, easy going, very relatable. Do not take a no for an answer from the sellers but always in the most respectful way.', 'https://lh3.googleusercontent.com/-QTB0cyKt7K0/AAAAAAAAAAI/AAAAAAAAAAA/AFiYof0uUKEEtKs9R-WN_L6DBX2qzWVR9g/s128-c0x00000000-cc-rp-mo/photo.jpg', '3 months ago', NULL, NULL, '115334713129436718016', NULL, NULL, 1),
(178, 186, '102883582952947235343', '5.00', 'img/Google.png', 'Jeff R', '2017-06-29 02:10:17', 'https://www.google.com/maps/contrib/102883582952947235343/reviews', 'After the realtor that we worked with for years moved back east, a friend recommended Lorraine. I am so lucky he did. These ladies anticipated everything, communicated very well and helped us make a great transaction from start to finish. Well done ladies!!', 'https://lh3.googleusercontent.com/-J9CiOqELIK4/AAAAAAAAAAI/AAAAAAAAAAA/AFiYof0ZU6CB8-Ji6o2iAN6qQvOFQOpjxA/s128-c0x00000000-cc-rp-mo/photo.jpg', '5 months ago', NULL, NULL, '102883582952947235343', NULL, NULL, 1),
(179, 186, '105810693394970120913', '5.00', 'img/Google.png', 'Cinthya Negrete', '2017-09-02 01:10:31', 'https://www.google.com/maps/contrib/105810693394970120913/reviews', 'Lorraine and Saundra help us enormously findign our house last year, in a beautiful community in Escondido.  We were first time homebuyers with little knowledge of the process, but thankfully we got to work with them and...these ladies rock!... first of all they care about their clients, and are passionate to help them find the perfect home, they did it for us :). They were really good listeners and great advisors at times when big decisions needed to be made, explaning things with good details but trying to always make it simple for us, adapting to our schedule, and later, even coming up with home improvements ideas, including reference numbers and all. We are really pleased with our home and the journey that it was to get it, but definitely we couldn\'t done it better without team Flores. I\'d recommend Lorraine and Saudra anytime.', 'https://lh5.googleusercontent.com/-7WVz1oGBY9E/AAAAAAAAAAI/AAAAAAAAAAA/AFiYof3NCRYq4JQk18IKeX-pfjWSEN-_Nw/s128-c0x00000000-cc-rp-mo/photo.jpg', '3 months ago', NULL, NULL, '105810693394970120913', NULL, NULL, 1),
(180, 187, '3442673', '5.00', 'img/zillow.png', 'Ashley jasper', '2017-06-30', 'http://www.zillow.com/profile/tim7558/Reviews/?review=3442673', 'First time home buyers, met Tim as he was showing us a rental, we discussed our shock of the area\'s high rental costs and he suggested buying our own home.  My husband is active duty and we have always ...', 'http://www.zillow.com/profile/zuser20170302040858501/', NULL, 'Bought a Single Family home in 2017 in Eagle River, Eagle River, AK.', '3442673', NULL, NULL, NULL, 0),
(181, 187, '3414470', '5.00', 'img/zillow.png', 'live4fishin31', '2017-06-19', 'http://www.zillow.com/profile/tim7558/Reviews/?review=3414470', 'Tim gave us one of the best home buying experiences we ever could have imagined. We were extremely picky, and Tim found us our dream home. This is our second house we\'ve bought and Tim was by far, way ...', 'http://www.zillow.com/profile/live4fishin31/', NULL, 'Bought a home in 2017 in Suntrana, Healy, AK 99755.', '3414470', NULL, NULL, NULL, 0),
(182, 187, '3380728', '5.00', 'img/zillow.png', 'user3540461', '2017-06-04', 'http://www.zillow.com/profile/tim7558/Reviews/?review=3380728', 'Tim went ABOVE and BEYOND for us! Whenever, however we need a question answered or something done he responded quickly and did whatever needed to be done. He kept in constant contact with the sellers ...', 'http://www.zillow.com/profile/user3540461/', NULL, 'Bought a Single Family home in 2017 in Wasilla, AK.', '3380728', NULL, NULL, NULL, 0),
(183, 187, '3075792', '5.00', 'img/zillow.png', 'zuser20140922074735562', '2017-01-27', 'http://www.zillow.com/profile/tim7558/Reviews/?review=3075792', 'What made you decide to buy/sell your home?<br/>While doing a comparison of rentals in the area and mortgage rates, we did not want to throw away upwards of $36k a year and since were military were going ...', 'http://www.zillow.com/profile/zuser20140922074735562/', NULL, 'Bought a Single Family home in 2016 in South Fork, Eagle River, AK.', '3075792', NULL, NULL, NULL, 0),
(184, 187, '101876689730805561109', '5.00', 'img/Google.png', 'christina fogg', '2017-11-16 02:07:57', 'https://www.google.com/maps/contrib/101876689730805561109/reviews', 'Brandon is AMAZING!!! He help sell my home back in 2015 and helped my husband and I buy our new home (2017). When the sellers were being unreasonable he went to bat for us and got the deal where it worked best for us. His whole team were all helpful in any questions we had. If you are looking to buy or rent in Alaska look up Partners Realty and ask for Brandon Thorud. He will make it a smooth and fun experience.', 'https://lh3.googleusercontent.com/-MiEriSll9pI/AAAAAAAAAAI/AAAAAAAAAAA/AFiYof3b7Zs32NrfSP1udYjjW-NsOEOG2g/s128-c0x00000000-cc-rp-mo/photo.jpg', '2 weeks ago', NULL, NULL, '101876689730805561109', NULL, NULL, 0),
(185, 187, '117230349546220471870', '5.00', 'img/Google.png', 'Traci Lenard', '2017-08-16 23:13:54', 'https://www.google.com/maps/contrib/117230349546220471870/reviews', 'Kim and Terry are a great team! They were very communicative throughout the entire process, making the sale of the property as seamless as possible. They are personable and professional. I couldn\'t have been more comfortable and pleased to have their help!', 'https://lh5.googleusercontent.com/-bet4-ch3JT8/AAAAAAAAAAI/AAAAAAAAAAA/AFiYof1fAcAmyu45h7OF0T0NpDOGMOuWFA/s128-c0x00000000-cc-rp-mo/photo.jpg', '3 months ago', NULL, NULL, '117230349546220471870', NULL, NULL, 0),
(186, 187, '118017591695459869073', '1.00', 'img/Google.png', 'Anna Smelser', '2017-11-03 18:05:26', 'https://www.google.com/maps/contrib/118017591695459869073/reviews', 'All Iâ€™m going to say is I wish we never signed a lease with them! I canâ€™t wait till August 2018 when our lease is up! Will never use them again.', 'https://lh3.googleusercontent.com/-bzm7o5k-oOw/AAAAAAAAAAI/AAAAAAAAAAA/AFiYof2zN9jTUOlSOm3JfyRGw4K55EvqKQ/s128-c0x00000000-cc-rp-mo/photo.jpg', 'a month ago', NULL, NULL, '118017591695459869073', NULL, NULL, 0),
(187, 187, '102631988454298483310', '5.00', 'img/Google.png', 'Brittni Anderson', '2016-12-01 16:29:56', 'https://www.google.com/maps/contrib/102631988454298483310/reviews', 'We started out as renters through Partners when we first got stationed in Alaska.  They were helpful and got us into an affordable home within 2 days.  Any time we had issues maintenance was quick to respond in a timely manner. They were strict but fair which is why we chose them to help us buy our first house.  When it was time for us to leave Alaska for our next adventure we were confident leaving them in charge of our property. They had renters in our house in less than a week.  Brandon has gone above and beyond with communication. Would definitely recommend.', 'https://lh5.googleusercontent.com/-7JVeKlIsIGU/AAAAAAAAAAI/AAAAAAAAAAA/AFiYof2cTTRLD7nCSKuI9yGYo8jASqQ0ig/s128-c0x00000000-cc-rp-mo/photo.jpg', 'a year ago', NULL, NULL, '102631988454298483310', NULL, NULL, 0),
(188, 187, '111993907216625355573', '1.00', 'img/Google.png', 'haley lienhart', '2017-09-02 18:44:27', 'https://www.google.com/maps/contrib/111993907216625355573/reviews', 'Unorganized company. Will give you multiple different answers for questions, have lost payments, takes forever to get any sort of response when leaving messages.', 'https://lh3.googleusercontent.com/-CUMGHbxGQ08/AAAAAAAAAAI/AAAAAAAAAAA/AFiYof1_YgQFRmst_ej-UyHzJyu2nD9Xtw/s128-c0x00000000-cc-rp-mo/photo.jpg', '3 months ago', NULL, NULL, '111993907216625355573', NULL, NULL, 0),
(189, 187, '2H9gGcuSJCSrN_EjaY89aQ', '5.00', 'img/yelp-icon.png', 'Brittni W.', '2016-09-13 22:54:44', 'https://www.yelp.com/biz/partners-real-estate-eagle-river?hrid=2H9gGcuSJCSrN_EjaY89aQ&adjust_creative=yLRKI4b4orlxDvOUmYsS9A&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_reviews&utm_source=yLRKI4b4orlxDvOUmYsS9A', 'We have been using Partners Real Estate since we first landed in Alaska a few years ago.  We started as renters, they were strict about cleanliness and...', 'https://s3-media2.fl.yelpcdn.com/photo/InpLWAKhGZkkPRkdalmzIw/o.jpg', NULL, NULL, NULL, NULL, '2H9gGcuSJCSrN_EjaY89aQ', NULL, 0),
(190, 187, 'd65SlxOfx2w1vj6kcszcvg', '2.00', 'img/yelp-icon.png', 'Michael S.', '2017-04-11 22:53:08', 'https://www.yelp.com/biz/partners-real-estate-eagle-river?hrid=d65SlxOfx2w1vj6kcszcvg&adjust_creative=yLRKI4b4orlxDvOUmYsS9A&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_reviews&utm_source=yLRKI4b4orlxDvOUmYsS9A', 'I\'ll begin with saying I\'ve never had a problem with any real estate or property management company before. I\'ve never had any damages to property, and I\'ve...', '', NULL, NULL, NULL, NULL, 'd65SlxOfx2w1vj6kcszcvg', NULL, 0),
(191, 187, 'istgEquSIh88PfQN7jARbw', '5.00', 'img/yelp-icon.png', 'Natalie J.', '2017-01-31 10:45:11', 'https://www.yelp.com/biz/partners-real-estate-eagle-river?hrid=istgEquSIh88PfQN7jARbw&adjust_creative=yLRKI4b4orlxDvOUmYsS9A&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_reviews&utm_source=yLRKI4b4orlxDvOUmYsS9A', 'Partners Real Estate is a great company for buying, selling and managing. Brandon is a hard worker. They are managing my townhouse and got it rented in one...', '', NULL, NULL, NULL, NULL, 'istgEquSIh88PfQN7jARbw', NULL, 0);
INSERT INTO `api_reviews` (`id`, `user_id`, `review_id`, `rating`, `source_img`, `reviewer_name`, `review_date`, `review_url`, `review_desc`, `reviewer_profile_url`, `google_relative_time`, `zillow_review_summary`, `zillow_review_id`, `google_review_id`, `yelp_review_id`, `facebook_review_id`, `deleted`) VALUES
(192, 187, '3066953230359821486045891', '5.00', 'img/facebook-icon.png', 'Ankit Chetu', '2017-02-02T14:31:31+0000', 'https://www.facebook.com/pg/Merchant+1-666741620153385/reviews/', 'Hello i am here to write a review because this page providing me lot of offers.', NULL, NULL, NULL, NULL, NULL, NULL, '3066953230359821486045891', 0),
(193, 187, '14985763635588501485181245', '4.00', 'img/facebook-icon.png', 'Vineet Kumar Arya', '2017-01-23T14:20:45+0000', 'https://www.facebook.com/pg/Merchant+1-666741620153385/reviews/', 'Hi Good Lorem ipsum dummy content. So it is usefullllll........', NULL, NULL, NULL, NULL, NULL, NULL, '14985763635588501485181245', 0),
(194, 187, '2907511014327961485175188', '4.00', 'img/facebook-icon.png', 'Rakesh Maurya', '2017-01-23T12:39:48+0000', 'https://www.facebook.com/pg/Merchant+1-666741620153385/reviews/', 'Hello this page is providing promotional offers', NULL, NULL, NULL, NULL, NULL, NULL, '2907511014327961485175188', 0),
(195, 188, '3442673', '5.00', 'img/zillow.png', 'Ashley jasper', '2017-06-30', 'http://www.zillow.com/profile/tim7558/Reviews/?review=3442673', 'First time home buyers, met Tim as he was showing us a rental, we discussed our shock of the area\'s high rental costs and he suggested buying our own home.  My husband is active duty and we have always ...', 'http://www.zillow.com/profile/zuser20170302040858501/', NULL, 'Bought a Single Family home in 2017 in Eagle River, Eagle River, AK.', '3442673', NULL, NULL, NULL, 0),
(196, 188, '3414470', '5.00', 'img/zillow.png', 'live4fishin31', '2017-06-19', 'http://www.zillow.com/profile/tim7558/Reviews/?review=3414470', 'Tim gave us one of the best home buying experiences we ever could have imagined. We were extremely picky, and Tim found us our dream home. This is our second house we\'ve bought and Tim was by far, way ...', 'http://www.zillow.com/profile/live4fishin31/', NULL, 'Bought a home in 2017 in Suntrana, Healy, AK 99755.', '3414470', NULL, NULL, NULL, 0),
(197, 188, '3380728', '5.00', 'img/zillow.png', 'user3540461', '2017-06-04', 'http://www.zillow.com/profile/tim7558/Reviews/?review=3380728', 'Tim went ABOVE and BEYOND for us! Whenever, however we need a question answered or something done he responded quickly and did whatever needed to be done. He kept in constant contact with the sellers ...', 'http://www.zillow.com/profile/user3540461/', NULL, 'Bought a Single Family home in 2017 in Wasilla, AK.', '3380728', NULL, NULL, NULL, 0),
(198, 188, '3075792', '5.00', 'img/zillow.png', 'zuser20140922074735562', '2017-01-27', 'http://www.zillow.com/profile/tim7558/Reviews/?review=3075792', 'What made you decide to buy/sell your home?<br/>While doing a comparison of rentals in the area and mortgage rates, we did not want to throw away upwards of $36k a year and since were military were going ...', 'http://www.zillow.com/profile/zuser20140922074735562/', NULL, 'Bought a Single Family home in 2016 in South Fork, Eagle River, AK.', '3075792', NULL, NULL, NULL, 1),
(199, 188, 'JWtTzHgx0R8SewcKRTaF7A', '5.00', 'img/yelp-icon.png', 'B J.', '2017-10-10 14:45:12', 'https://www.yelp.com/biz/team-flores-real-estate-coldwell-banker-san-diego-2?hrid=JWtTzHgx0R8SewcKRTaF7A&adjust_creative=yLRKI4b4orlxDvOUmYsS9A&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_reviews&utm_source=yLRKI4b4orlxDvOUmYsS9A', 'Team Flores is one of the best real estate teams in San Diego area! Lorraine and Saundra always provided me with high quality service. Although they handle...', 'https://s3-media1.fl.yelpcdn.com/photo/cLLAmW6VslFQZ7Ii9q-KGg/o.jpg', NULL, NULL, NULL, NULL, 'JWtTzHgx0R8SewcKRTaF7A', NULL, 1),
(200, 188, '8-RP0w9WIeeXU4Z_8P8ohA', '5.00', 'img/yelp-icon.png', 'Jeff R.', '2017-06-28 18:59:58', 'https://www.yelp.com/biz/team-flores-real-estate-coldwell-banker-san-diego-2?hrid=8-RP0w9WIeeXU4Z_8P8ohA&adjust_creative=yLRKI4b4orlxDvOUmYsS9A&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_reviews&utm_source=yLRKI4b4orlxDvOUmYsS9A', 'Lorraine and Sandra were fantastic. The realtor we used for years relocated back east. We needed a new realtor and much to our good fortune we were...', '', NULL, NULL, NULL, NULL, '8-RP0w9WIeeXU4Z_8P8ohA', NULL, 1),
(201, 188, '17307965036597441511431810', '4.00', 'img/facebook-icon.png', 'Dharmveer Thakur', '2017-11-23T10:10:10+0000', 'https://www.facebook.com/pg/Sprint5+Test+Demo-1921248051491991/reviews/', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', NULL, NULL, NULL, NULL, NULL, NULL, '17307965036597441511431810', 1),
(202, 188, '15784515788677181511431693', '5.00', 'img/facebook-icon.png', 'Rajesh Kumar Singh', '2017-11-23T10:08:13+0000', 'https://www.facebook.com/pg/Sprint5+Test+Demo-1921248051491991/reviews/', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', NULL, NULL, NULL, NULL, NULL, NULL, '15784515788677181511431693', 1),
(203, 188, '3696551', '5.00', 'img/zillow.png', 'Douglas Moody', '2017-10-16', 'http://www.zillow.com/profile/PartnersRealEstate/Reviews/?review=3696551', 'My wife and I cannot say enough wonderful things about Jeron! As first time home buyers we had a lot of questions and concerns throughout the process and Jeron made it his priority to make himself available ...', 'http://www.zillow.com/profile/moody-douglas/', NULL, 'Bought a Single Family home in 2017 in Bayshore-Klatt, Anchorage, AK.', '3696551', NULL, NULL, NULL, 0),
(204, 188, '3562980', '5.00', 'img/zillow.png', 'mrs sarahejohnson9', '2017-08-19', 'http://www.zillow.com/profile/PartnersRealEstate/Reviews/?review=3562980', 'She helped me find the perfect home and answered all my questions as a first time home buyer! She made the process so easy! I would highly recommend her for all real estate needs.', 'http://www.zillow.com/profile/mrs-sarahejohnson9/', NULL, 'Bought a Townhouse home in 2017 in Taku-Campbell, Anchorage, AK.', '3562980', NULL, NULL, NULL, 0),
(205, 188, '3562055', '5.00', 'img/zillow.png', 'mmeza0', '2017-08-18', 'http://www.zillow.com/profile/PartnersRealEstate/Reviews/?review=3562055', 'Renee took the time to work with us to find our forever home. She always kept our best interest in mind, was honest, responsive, flexible, and great to work with. She helped make this experience fun and ...', 'http://www.zillow.com/profile/mmeza0/', NULL, 'Bought a Single Family home in 2016 in Eagle River, Eagle River, AK.', '3562055', NULL, NULL, NULL, 0),
(206, 188, '3529754', '5.00', 'img/zillow.png', 'zuser20170629005143161', '2017-08-05', 'http://www.zillow.com/profile/PartnersRealEstate/Reviews/?review=3529754', 'Ethan was very prompt and thorough answering any and all questions I had, even if I emailed him after normal work hours. I had to bow out of buying the place we looked at for financial reasons, but if/when ...', 'http://www.zillow.com/profile/zuser20170629005143161/', NULL, 'Listed, but didn\'t sell my Condo home in 2017 in Russian Jack Park, Anchorage, AK.', '3529754', NULL, NULL, NULL, 0),
(207, 188, '3512599', '5.00', 'img/zillow.png', 'TARA VANAMAN', '2017-07-29', 'http://www.zillow.com/profile/PartnersRealEstate/Reviews/?review=3512599', 'Jeron Rose of Partners Real Estate was a pleasure to work with. He is newer to the field but a joy to work with, an advocate for his clients and committed to learning and growing. He was always willing ...', 'http://www.zillow.com/profile/tdvanaman5/', NULL, 'Bought a Single Family home in 2017 in Eagle River, Eagle River, AK.', '3512599', NULL, NULL, NULL, 0),
(208, 188, '3379195', '5.00', 'img/zillow.png', 'zuser20170122103006326', '2017-06-03', 'http://www.zillow.com/profile/PartnersRealEstate/Reviews/?review=3379195', 'We had called about a listing with a different agent he never returned my message at that time Danica stepped in and helped us through the buying process. If we had questions immediately she answered ...', 'http://www.zillow.com/profile/zuser20170122103006326/', NULL, 'Bought a home in 2017 in Anchorage, AK.', '3379195', NULL, NULL, NULL, 0),
(209, 188, '3242042', '5.00', 'img/zillow.png', 'jbloom1999', '2017-04-07', 'http://www.zillow.com/profile/PartnersRealEstate/Reviews/?review=3242042', 'Brandon is great. We liked working with Brandon as soon as we met him. He has a great knowledge of the area, the product inventory and market. He has the great combination of professional knowledge and ...', 'http://www.zillow.com/profile/jbloom1999/', NULL, 'Property manage a Single Family home in Eagle River, Eagle River, AK.', '3242042', NULL, NULL, NULL, 0),
(210, 188, '2H9gGcuSJCSrN_EjaY89aQ', '5.00', 'img/yelp-icon.png', 'Brittni W.', '2016-09-13 22:54:44', 'https://www.yelp.com/biz/partners-real-estate-eagle-river?hrid=2H9gGcuSJCSrN_EjaY89aQ&adjust_creative=yLRKI4b4orlxDvOUmYsS9A&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_reviews&utm_source=yLRKI4b4orlxDvOUmYsS9A', 'We have been using Partners Real Estate since we first landed in Alaska a few years ago.  We started as renters, they were strict about cleanliness and...', 'https://s3-media2.fl.yelpcdn.com/photo/InpLWAKhGZkkPRkdalmzIw/o.jpg', NULL, NULL, NULL, NULL, '2H9gGcuSJCSrN_EjaY89aQ', NULL, 0),
(211, 188, 'd65SlxOfx2w1vj6kcszcvg', '2.00', 'img/yelp-icon.png', 'Michael S.', '2017-04-11 22:53:08', 'https://www.yelp.com/biz/partners-real-estate-eagle-river?hrid=d65SlxOfx2w1vj6kcszcvg&adjust_creative=yLRKI4b4orlxDvOUmYsS9A&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_reviews&utm_source=yLRKI4b4orlxDvOUmYsS9A', 'I\'ll begin with saying I\'ve never had a problem with any real estate or property management company before. I\'ve never had any damages to property, and I\'ve...', '', NULL, NULL, NULL, NULL, 'd65SlxOfx2w1vj6kcszcvg', NULL, 0),
(212, 188, 'istgEquSIh88PfQN7jARbw', '5.00', 'img/yelp-icon.png', 'Natalie J.', '2017-01-31 10:45:11', 'https://www.yelp.com/biz/partners-real-estate-eagle-river?hrid=istgEquSIh88PfQN7jARbw&adjust_creative=yLRKI4b4orlxDvOUmYsS9A&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_reviews&utm_source=yLRKI4b4orlxDvOUmYsS9A', 'Partners Real Estate is a great company for buying, selling and managing. Brandon is a hard worker. They are managing my townhouse and got it rented in one...', '', NULL, NULL, NULL, NULL, 'istgEquSIh88PfQN7jARbw', NULL, 0),
(213, 188, '3066953230359821486045891', '5.00', 'img/facebook-icon.png', 'Ankit Chetu', '2017-02-02T14:31:31+0000', 'https://www.facebook.com/pg/Merchant+1-666741620153385/reviews/', 'Hello i am here to write a review because this page providing me lot of offers.', NULL, NULL, NULL, NULL, NULL, NULL, '3066953230359821486045891', 0),
(214, 188, '14985763635588501485181245', '4.00', 'img/facebook-icon.png', 'Vineet Kumar Arya', '2017-01-23T14:20:45+0000', 'https://www.facebook.com/pg/Merchant+1-666741620153385/reviews/', 'Hi Good Lorem ipsum dummy content. So it is usefullllll........', NULL, NULL, NULL, NULL, NULL, NULL, '14985763635588501485181245', 0),
(215, 188, '2907511014327961485175188', '4.00', 'img/facebook-icon.png', 'Rakesh Maurya', '2017-01-23T12:39:48+0000', 'https://www.facebook.com/pg/Merchant+1-666741620153385/reviews/', 'Hello this page is providing promotional offers', NULL, NULL, NULL, NULL, NULL, NULL, '2907511014327961485175188', 0),
(216, 189, '3593983', '5.00', 'img/zillow.png', 'adepascale78', '2017-09-01', 'http://www.zillow.com/profile/Team-Flores/Reviews/?review=3593983', 'Saundra and Lorraine are great realtors. They helped me find the perfect home for me at the time. They always kept me motivated during my home search and did not get sidetracked when dealing with a difficult ...', 'http://www.zillow.com/profile/adepascale78/', NULL, 'Bought a Single Family home in 2014 for approximately $325K in Northwest, Chula Vista, CA.', '3593983', NULL, NULL, NULL, 0),
(217, 189, '3584135', '5.00', 'img/zillow.png', 'rdroman99', '2017-08-28', 'http://www.zillow.com/profile/Team-Flores/Reviews/?review=3584135', 'Extensive knowledge of the real estate business. Walks you through the process and ensures you have a proper understanding of the processes at all stages. Willing to visit multiple homes and extremely ...', 'http://www.zillow.com/profile/rdroman99/', NULL, 'Bought a Condo home in 2017 for approximately $350K in Mira Mesa, San Diego, CA.', '3584135', NULL, NULL, NULL, 0),
(218, 189, '3510722', '5.00', 'img/zillow.png', 'jamesrh88', '2017-07-28', 'http://www.zillow.com/profile/Team-Flores/Reviews/?review=3510722', '\"Quick and painless\" as my dad put it. Being my first time buying I had no idea but team Flores was very knowledgeable and patient with me, worked tirelessly to find the right home for me, and fought ...', 'http://www.zillow.com/profile/jamesrh88/', NULL, 'Bought a Condo home in 2016 for approximately $300K in Temecula, CA.', '3510722', NULL, NULL, NULL, 0),
(219, 189, '3438239', '5.00', 'img/zillow.png', 'jeffman27', '2017-06-28', 'http://www.zillow.com/profile/Team-Flores/Reviews/?review=3438239', 'Our long time realtor moved back east and we were very fortunate to be pointed in Lorraine\'s direction. She worked hard to find the perfect home. The transaction was seamless due in large part to their ...', 'http://www.zillow.com/profile/jeffman27/', NULL, 'Bought a Condo home in 2017 in Temecula, CA.', '3438239', NULL, NULL, NULL, 0),
(220, 189, '3420525', '5.00', 'img/zillow.png', 'Roo92366', '2017-06-21', 'http://www.zillow.com/profile/Team-Flores/Reviews/?review=3420525', 'Team Flores was fantastic to work with!  Lorraine and Saundra sold our house on the first day it was listed, and they got us an even better price than we asked for.  They resolved a problem with the title ...', 'http://www.zillow.com/profile/Roo92366/', NULL, 'Sold a Single Family home in 2014 for approximately $525K in Rosemead, CA.', '3420525', NULL, NULL, NULL, 0),
(221, 190, '3242042', '5.00', 'img/zillow.png', 'jbloom1999', '2017-04-07', 'http://www.zillow.com/profile/user19731134/Reviews/?review=3242042', 'Brandon is great. We liked working with Brandon as soon as we met him. He has a great knowledge of the area, the product inventory and market. He has the great combination of professional knowledge and ...', 'http://www.zillow.com/profile/jbloom1999/', NULL, 'Property manage a Single Family home in Eagle River, Eagle River, AK.', '3242042', NULL, NULL, NULL, 0),
(222, 190, '3192648', '5.00', 'img/zillow.png', 'kboquet', '2017-03-19', 'http://www.zillow.com/profile/user19731134/Reviews/?review=3192648', 'We are very grateful for Brandon Thorud and the support of Partners Real Estate when we relocated to Alaska.  Brandon has great interpersonal skills and is very easy to work with.  He is very conscientious ...', 'http://www.zillow.com/profile/kboquet/', NULL, 'Bought a Single Family home in 2009 in Eagle River, Eagle River, AK.', '3192648', NULL, NULL, NULL, 0),
(223, 190, '3185414', '5.00', 'img/zillow.png', 'Janan2', '2017-03-15', 'http://www.zillow.com/profile/user19731134/Reviews/?review=3185414', 'Brandon assisted my family and I with our home purchase when we relocated from Arizona to Alaska. He and his company were fantastic to work with, got our offer accepted, closed early and done all remotely ...', 'http://www.zillow.com/profile/Janan2/', NULL, 'Bought a Single Family home in 2015 in Chugiak, Chugiak, AK.', '3185414', NULL, NULL, NULL, 0),
(224, 190, '3066953230359821486045891', '5.00', 'img/facebook-icon.png', 'Ankit Chetu', '2017-02-02T14:31:31+0000', 'https://www.facebook.com/pg/Merchant+1-666741620153385/reviews/', 'Hello i am here to write a review because this page providing me lot of offers.', NULL, NULL, NULL, NULL, NULL, NULL, '3066953230359821486045891', 0),
(225, 190, '14985763635588501485181245', '4.00', 'img/facebook-icon.png', 'Vineet Kumar Arya', '2017-01-23T14:20:45+0000', 'https://www.facebook.com/pg/Merchant+1-666741620153385/reviews/', 'Hi Good Lorem ipsum dummy content. So it is usefullllll........', NULL, NULL, NULL, NULL, NULL, NULL, '14985763635588501485181245', 0),
(226, 190, '2907511014327961485175188', '4.00', 'img/facebook-icon.png', 'Rakesh Maurya', '2017-01-23T12:39:48+0000', 'https://www.facebook.com/pg/Merchant+1-666741620153385/reviews/', 'Hello this page is providing promotional offers', NULL, NULL, NULL, NULL, NULL, NULL, '2907511014327961485175188', 0),
(227, 190, 'JWtTzHgx0R8SewcKRTaF7A', '5.00', 'img/yelp-icon.png', 'B J.', '2017-10-10 14:45:12', 'https://www.yelp.com/biz/team-flores-real-estate-coldwell-banker-san-diego-2?hrid=JWtTzHgx0R8SewcKRTaF7A&adjust_creative=yLRKI4b4orlxDvOUmYsS9A&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_reviews&utm_source=yLRKI4b4orlxDvOUmYsS9A', 'Team Flores is one of the best real estate teams in San Diego area! Lorraine and Saundra always provided me with high quality service. Although they handle...', 'https://s3-media1.fl.yelpcdn.com/photo/cLLAmW6VslFQZ7Ii9q-KGg/o.jpg', NULL, NULL, NULL, NULL, 'JWtTzHgx0R8SewcKRTaF7A', NULL, 0),
(228, 190, '8-RP0w9WIeeXU4Z_8P8ohA', '5.00', 'img/yelp-icon.png', 'Jeff R.', '2017-06-28 18:59:58', 'https://www.yelp.com/biz/team-flores-real-estate-coldwell-banker-san-diego-2?hrid=8-RP0w9WIeeXU4Z_8P8ohA&adjust_creative=yLRKI4b4orlxDvOUmYsS9A&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_reviews&utm_source=yLRKI4b4orlxDvOUmYsS9A', 'Lorraine and Sandra were fantastic. The realtor we used for years relocated back east. We needed a new realtor and much to our good fortune we were...', '', NULL, NULL, NULL, NULL, '8-RP0w9WIeeXU4Z_8P8ohA', NULL, 0),
(229, 191, '3242042', '5.00', 'img/zillow.png', 'jbloom1999', '2017-04-07', 'http://www.zillow.com/profile/user19731134/Reviews/?review=3242042', 'Brandon is great. We liked working with Brandon as soon as we met him. He has a great knowledge of the area, the product inventory and market. He has the great combination of professional knowledge and ...', 'http://www.zillow.com/profile/jbloom1999/', NULL, 'Property manage a Single Family home in Eagle River, Eagle River, AK.', '3242042', NULL, NULL, NULL, 0),
(230, 191, '3192648', '5.00', 'img/zillow.png', 'kboquet', '2017-03-19', 'http://www.zillow.com/profile/user19731134/Reviews/?review=3192648', 'We are very grateful for Brandon Thorud and the support of Partners Real Estate when we relocated to Alaska.  Brandon has great interpersonal skills and is very easy to work with.  He is very conscientious ...', 'http://www.zillow.com/profile/kboquet/', NULL, 'Bought a Single Family home in 2009 in Eagle River, Eagle River, AK.', '3192648', NULL, NULL, NULL, 0),
(231, 191, '3185414', '5.00', 'img/zillow.png', 'Janan2', '2017-03-15', 'http://www.zillow.com/profile/user19731134/Reviews/?review=3185414', 'Brandon assisted my family and I with our home purchase when we relocated from Arizona to Alaska. He and his company were fantastic to work with, got our offer accepted, closed early and done all remotely ...', 'http://www.zillow.com/profile/Janan2/', NULL, 'Bought a Single Family home in 2015 in Chugiak, Chugiak, AK.', '3185414', NULL, NULL, NULL, 0),
(232, 191, '17307965036597441511431810', '4.00', 'img/facebook-icon.png', 'Dharmveer Thakur', '2017-11-23T10:10:10+0000', 'https://www.facebook.com/pg/Sprint5+Test+Demo-1921248051491991/reviews/', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', NULL, NULL, NULL, NULL, NULL, NULL, '17307965036597441511431810', 0),
(233, 191, '15784515788677181511431693', '5.00', 'img/facebook-icon.png', 'Rajesh Kumar Singh', '2017-11-23T10:08:13+0000', 'https://www.facebook.com/pg/Sprint5+Test+Demo-1921248051491991/reviews/', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', NULL, NULL, NULL, NULL, NULL, NULL, '15784515788677181511431693', 0),
(234, 191, '2H9gGcuSJCSrN_EjaY89aQ', '5.00', 'img/yelp-icon.png', 'Brittni W.', '2016-09-13 22:54:44', 'https://www.yelp.com/biz/partners-real-estate-eagle-river?hrid=2H9gGcuSJCSrN_EjaY89aQ&adjust_creative=yLRKI4b4orlxDvOUmYsS9A&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_reviews&utm_source=yLRKI4b4orlxDvOUmYsS9A', 'We have been using Partners Real Estate since we first landed in Alaska a few years ago.  We started as renters, they were strict about cleanliness and...', 'https://s3-media2.fl.yelpcdn.com/photo/InpLWAKhGZkkPRkdalmzIw/o.jpg', NULL, NULL, NULL, NULL, '2H9gGcuSJCSrN_EjaY89aQ', NULL, 0),
(235, 191, 'd65SlxOfx2w1vj6kcszcvg', '2.00', 'img/yelp-icon.png', 'Michael S.', '2017-04-11 22:53:08', 'https://www.yelp.com/biz/partners-real-estate-eagle-river?hrid=d65SlxOfx2w1vj6kcszcvg&adjust_creative=yLRKI4b4orlxDvOUmYsS9A&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_reviews&utm_source=yLRKI4b4orlxDvOUmYsS9A', 'I\'ll begin with saying I\'ve never had a problem with any real estate or property management company before. I\'ve never had any damages to property, and I\'ve...', '', NULL, NULL, NULL, NULL, 'd65SlxOfx2w1vj6kcszcvg', NULL, 0),
(236, 191, 'istgEquSIh88PfQN7jARbw', '5.00', 'img/yelp-icon.png', 'Natalie J.', '2017-01-31 10:45:11', 'https://www.yelp.com/biz/partners-real-estate-eagle-river?hrid=istgEquSIh88PfQN7jARbw&adjust_creative=yLRKI4b4orlxDvOUmYsS9A&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_reviews&utm_source=yLRKI4b4orlxDvOUmYsS9A', 'Partners Real Estate is a great company for buying, selling and managing. Brandon is a hard worker. They are managing my townhouse and got it rented in one...', '', NULL, NULL, NULL, NULL, 'istgEquSIh88PfQN7jARbw', NULL, 0),
(237, 192, '3066953230359821486045891', '5.00', 'img/facebook-icon.png', 'Ankit Chetu', '2017-02-02T14:31:31+0000', 'https://www.facebook.com/pg/Merchant+1-666741620153385/reviews/', 'Hello i am here to write a review because this page providing me lot of offers.', NULL, NULL, NULL, NULL, NULL, NULL, '3066953230359821486045891', 0),
(238, 192, '14985763635588501485181245', '4.00', 'img/facebook-icon.png', 'Vineet Kumar Arya', '2017-01-23T14:20:45+0000', 'https://www.facebook.com/pg/Merchant+1-666741620153385/reviews/', 'Hi Good Lorem ipsum dummy content. So it is usefullllll........', NULL, NULL, NULL, NULL, NULL, NULL, '14985763635588501485181245', 0),
(239, 192, '2907511014327961485175188', '4.00', 'img/facebook-icon.png', 'Rakesh Maurya', '2017-01-23T12:39:48+0000', 'https://www.facebook.com/pg/Merchant+1-666741620153385/reviews/', 'Hello this page is providing promotional offers', NULL, NULL, NULL, NULL, NULL, NULL, '2907511014327961485175188', 0),
(240, 192, '3242042', '5.00', 'img/zillow.png', 'jbloom1999', '2017-04-07', 'http://www.zillow.com/profile/user19731134/Reviews/?review=3242042', 'Brandon is great. We liked working with Brandon as soon as we met him. He has a great knowledge of the area, the product inventory and market. He has the great combination of professional knowledge and ...', 'http://www.zillow.com/profile/jbloom1999/', NULL, 'Property manage a Single Family home in Eagle River, Eagle River, AK.', '3242042', NULL, NULL, NULL, 0),
(241, 192, '3192648', '5.00', 'img/zillow.png', 'kboquet', '2017-03-19', 'http://www.zillow.com/profile/user19731134/Reviews/?review=3192648', 'We are very grateful for Brandon Thorud and the support of Partners Real Estate when we relocated to Alaska.  Brandon has great interpersonal skills and is very easy to work with.  He is very conscientious ...', 'http://www.zillow.com/profile/kboquet/', NULL, 'Bought a Single Family home in 2009 in Eagle River, Eagle River, AK.', '3192648', NULL, NULL, NULL, 0),
(242, 192, '3185414', '5.00', 'img/zillow.png', 'Janan2', '2017-03-15', 'http://www.zillow.com/profile/user19731134/Reviews/?review=3185414', 'Brandon assisted my family and I with our home purchase when we relocated from Arizona to Alaska. He and his company were fantastic to work with, got our offer accepted, closed early and done all remotely ...', 'http://www.zillow.com/profile/Janan2/', NULL, 'Bought a Single Family home in 2015 in Chugiak, Chugiak, AK.', '3185414', NULL, NULL, NULL, 0),
(243, 192, '2H9gGcuSJCSrN_EjaY89aQ', '5.00', 'img/yelp-icon.png', 'Brittni W.', '2016-09-13 22:54:44', 'https://www.yelp.com/biz/partners-real-estate-eagle-river?hrid=2H9gGcuSJCSrN_EjaY89aQ&adjust_creative=yLRKI4b4orlxDvOUmYsS9A&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_reviews&utm_source=yLRKI4b4orlxDvOUmYsS9A', 'We have been using Partners Real Estate since we first landed in Alaska a few years ago.  We started as renters, they were strict about cleanliness and...', 'https://s3-media2.fl.yelpcdn.com/photo/InpLWAKhGZkkPRkdalmzIw/o.jpg', NULL, NULL, NULL, NULL, '2H9gGcuSJCSrN_EjaY89aQ', NULL, 0),
(244, 192, 'd65SlxOfx2w1vj6kcszcvg', '2.00', 'img/yelp-icon.png', 'Michael S.', '2017-04-11 22:53:08', 'https://www.yelp.com/biz/partners-real-estate-eagle-river?hrid=d65SlxOfx2w1vj6kcszcvg&adjust_creative=yLRKI4b4orlxDvOUmYsS9A&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_reviews&utm_source=yLRKI4b4orlxDvOUmYsS9A', 'I\'ll begin with saying I\'ve never had a problem with any real estate or property management company before. I\'ve never had any damages to property, and I\'ve...', '', NULL, NULL, NULL, NULL, 'd65SlxOfx2w1vj6kcszcvg', NULL, 0),
(245, 192, 'istgEquSIh88PfQN7jARbw', '5.00', 'img/yelp-icon.png', 'Natalie J.', '2017-01-31 10:45:11', 'https://www.yelp.com/biz/partners-real-estate-eagle-river?hrid=istgEquSIh88PfQN7jARbw&adjust_creative=yLRKI4b4orlxDvOUmYsS9A&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_reviews&utm_source=yLRKI4b4orlxDvOUmYsS9A', 'Partners Real Estate is a great company for buying, selling and managing. Brandon is a hard worker. They are managing my townhouse and got it rented in one...', '', NULL, NULL, NULL, NULL, 'istgEquSIh88PfQN7jARbw', NULL, 0),
(246, 193, '3242042', '5.00', 'img/zillow.png', 'jbloom1999', '2017-04-07', 'http://www.zillow.com/profile/user19731134/Reviews/?review=3242042', 'Brandon is great. We liked working with Brandon as soon as we met him. He has a great knowledge of the area, the product inventory and market. He has the great combination of professional knowledge and ...', 'http://www.zillow.com/profile/jbloom1999/', NULL, 'Property manage a Single Family home in Eagle River, Eagle River, AK.', '3242042', NULL, NULL, NULL, 0),
(247, 193, '3192648', '5.00', 'img/zillow.png', 'kboquet', '2017-03-19', 'http://www.zillow.com/profile/user19731134/Reviews/?review=3192648', 'We are very grateful for Brandon Thorud and the support of Partners Real Estate when we relocated to Alaska.  Brandon has great interpersonal skills and is very easy to work with.  He is very conscientious ...', 'http://www.zillow.com/profile/kboquet/', NULL, 'Bought a Single Family home in 2009 in Eagle River, Eagle River, AK.', '3192648', NULL, NULL, NULL, 0),
(248, 193, '3185414', '5.00', 'img/zillow.png', 'Janan2', '2017-03-15', 'http://www.zillow.com/profile/user19731134/Reviews/?review=3185414', 'Brandon assisted my family and I with our home purchase when we relocated from Arizona to Alaska. He and his company were fantastic to work with, got our offer accepted, closed early and done all remotely ...', 'http://www.zillow.com/profile/Janan2/', NULL, 'Bought a Single Family home in 2015 in Chugiak, Chugiak, AK.', '3185414', NULL, NULL, NULL, 0),
(249, 194, '3242042', '5.00', 'img/zillow.png', 'jbloom1999', '2017-04-07', 'http://www.zillow.com/profile/user19731134/Reviews/?review=3242042', 'Brandon is great. We liked working with Brandon as soon as we met him. He has a great knowledge of the area, the product inventory and market. He has the great combination of professional knowledge and ...', 'http://www.zillow.com/profile/jbloom1999/', NULL, 'Property manage a Single Family home in Eagle River, Eagle River, AK.', '3242042', NULL, NULL, NULL, 0),
(250, 194, '3192648', '5.00', 'img/zillow.png', 'kboquet', '2017-03-19', 'http://www.zillow.com/profile/user19731134/Reviews/?review=3192648', 'We are very grateful for Brandon Thorud and the support of Partners Real Estate when we relocated to Alaska.  Brandon has great interpersonal skills and is very easy to work with.  He is very conscientious ...', 'http://www.zillow.com/profile/kboquet/', NULL, 'Bought a Single Family home in 2009 in Eagle River, Eagle River, AK.', '3192648', NULL, NULL, NULL, 0),
(251, 194, '3185414', '5.00', 'img/zillow.png', 'Janan2', '2017-03-15', 'http://www.zillow.com/profile/user19731134/Reviews/?review=3185414', 'Brandon assisted my family and I with our home purchase when we relocated from Arizona to Alaska. He and his company were fantastic to work with, got our offer accepted, closed early and done all remotely ...', 'http://www.zillow.com/profile/Janan2/', NULL, 'Bought a Single Family home in 2015 in Chugiak, Chugiak, AK.', '3185414', NULL, NULL, NULL, 0),
(252, 194, '113246034351852089601', '5.00', 'img/Google.png', 'James Haines', '2017-07-28 23:53:28', 'https://www.google.com/maps/contrib/113246034351852089601/reviews', 'Very scary process for anyone especially me being my first home I\'ve bought! Team Flores knew this going into it and explained everything to me (in words I could understand) and was able to answer any of my questions! U can tell this is a team that cares about my needs rather than a paycheck thank you for everything you guys did for me will definitely be referring anyone I know to you guys and hope to work together again one day!', 'https://lh5.googleusercontent.com/-ELQyrRB2gcA/AAAAAAAAAAI/AAAAAAAAAAA/AFiYof3o3mvUkwE5figCwZ5JNW-HdoV_uw/s128-c0x00000000-cc-rp-mo/photo.jpg', '4 months ago', NULL, NULL, '113246034351852089601', NULL, NULL, 0),
(253, 194, '101395116478776692943', '5.00', 'img/Google.png', 'Robin Root', '2017-07-05 17:38:41', 'https://www.google.com/maps/contrib/101395116478776692943/reviews', 'I highly recommend Team Flores for your real estate needs.  They sold our house the day they put up the for sale sign and it sold for more than the asking price!  When there was a problem with the title, they took care of it right away and the sale went through with no problems.  Lorraine and Saundra are knowledgeable, caring and helpful realtors who will work with you every step of the way, whether you are buying or selling.  I will definitely use Team Flores the next time I need to buy or sell a home!', 'https://lh6.googleusercontent.com/-wQbdeSc4oJI/AAAAAAAAAAI/AAAAAAAAAAA/AFiYof0rF_XYA0XQfy_8Nw38WdcxIeqeXg/s128-c0x00000000-cc-rp-mo/photo.jpg', '5 months ago', NULL, NULL, '101395116478776692943', NULL, NULL, 0),
(254, 194, '115334713129436718016', '5.00', 'img/Google.png', 'Giselle Garcia', '2017-09-02 02:10:59', 'https://www.google.com/maps/contrib/115334713129436718016/reviews', 'The girls are wonderful, very thorough,  work very very hard, they ask all the questions necessary to find what you want. Not just hard working but also really fun, easy going, very relatable. Do not take a no for an answer from the sellers but always in the most respectful way.', 'https://lh3.googleusercontent.com/-QTB0cyKt7K0/AAAAAAAAAAI/AAAAAAAAAAA/AFiYof0uUKEEtKs9R-WN_L6DBX2qzWVR9g/s128-c0x00000000-cc-rp-mo/photo.jpg', '3 months ago', NULL, NULL, '115334713129436718016', NULL, NULL, 0),
(255, 194, '102883582952947235343', '5.00', 'img/Google.png', 'Jeff R', '2017-06-29 02:10:17', 'https://www.google.com/maps/contrib/102883582952947235343/reviews', 'After the realtor that we worked with for years moved back east, a friend recommended Lorraine. I am so lucky he did. These ladies anticipated everything, communicated very well and helped us make a great transaction from start to finish. Well done ladies!!', 'https://lh3.googleusercontent.com/-J9CiOqELIK4/AAAAAAAAAAI/AAAAAAAAAAA/AFiYof0ZU6CB8-Ji6o2iAN6qQvOFQOpjxA/s128-c0x00000000-cc-rp-mo/photo.jpg', '5 months ago', NULL, NULL, '102883582952947235343', NULL, NULL, 0),
(256, 194, '105810693394970120913', '5.00', 'img/Google.png', 'Cinthya Negrete', '2017-09-02 01:10:31', 'https://www.google.com/maps/contrib/105810693394970120913/reviews', 'Lorraine and Saundra help us enormously findign our house last year, in a beautiful community in Escondido.  We were first time homebuyers with little knowledge of the process, but thankfully we got to work with them and...these ladies rock!... first of all they care about their clients, and are passionate to help them find the perfect home, they did it for us :). They were really good listeners and great advisors at times when big decisions needed to be made, explaning things with good details but trying to always make it simple for us, adapting to our schedule, and later, even coming up with home improvements ideas, including reference numbers and all. We are really pleased with our home and the journey that it was to get it, but definitely we couldn\'t done it better without team Flores. I\'d recommend Lorraine and Saudra anytime.', 'https://lh5.googleusercontent.com/-7WVz1oGBY9E/AAAAAAAAAAI/AAAAAAAAAAA/AFiYof3NCRYq4JQk18IKeX-pfjWSEN-_Nw/s128-c0x00000000-cc-rp-mo/photo.jpg', '3 months ago', NULL, NULL, '105810693394970120913', NULL, NULL, 0),
(257, 194, 'JWtTzHgx0R8SewcKRTaF7A', '5.00', 'img/yelp-icon.png', 'B J.', '2017-10-10 14:45:12', 'https://www.yelp.com/biz/team-flores-real-estate-coldwell-banker-san-diego-2?hrid=JWtTzHgx0R8SewcKRTaF7A&adjust_creative=yLRKI4b4orlxDvOUmYsS9A&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_reviews&utm_source=yLRKI4b4orlxDvOUmYsS9A', 'Team Flores is one of the best real estate teams in San Diego area! Lorraine and Saundra always provided me with high quality service. Although they handle...', 'https://s3-media1.fl.yelpcdn.com/photo/cLLAmW6VslFQZ7Ii9q-KGg/o.jpg', NULL, NULL, NULL, NULL, 'JWtTzHgx0R8SewcKRTaF7A', NULL, 0),
(258, 194, '8-RP0w9WIeeXU4Z_8P8ohA', '5.00', 'img/yelp-icon.png', 'Jeff R.', '2017-06-28 18:59:58', 'https://www.yelp.com/biz/team-flores-real-estate-coldwell-banker-san-diego-2?hrid=8-RP0w9WIeeXU4Z_8P8ohA&adjust_creative=yLRKI4b4orlxDvOUmYsS9A&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_reviews&utm_source=yLRKI4b4orlxDvOUmYsS9A', 'Lorraine and Sandra were fantastic. The realtor we used for years relocated back east. We needed a new realtor and much to our good fortune we were...', '', NULL, NULL, NULL, NULL, '8-RP0w9WIeeXU4Z_8P8ohA', NULL, 0),
(259, 194, '3066953230359821486045891', '5.00', 'img/facebook-icon.png', 'Ankit Chetu', '2017-02-02T14:31:31+0000', 'https://www.facebook.com/pg/Merchant+1-666741620153385/reviews/', 'Hello i am here to write a review because this page providing me lot of offers.', NULL, NULL, NULL, NULL, NULL, NULL, '3066953230359821486045891', 0),
(260, 194, '14985763635588501485181245', '4.00', 'img/facebook-icon.png', 'Vineet Kumar Arya', '2017-01-23T14:20:45+0000', 'https://www.facebook.com/pg/Merchant+1-666741620153385/reviews/', 'Hi Good Lorem ipsum dummy content. So it is usefullllll........', NULL, NULL, NULL, NULL, NULL, NULL, '14985763635588501485181245', 0),
(261, 194, '2907511014327961485175188', '4.00', 'img/facebook-icon.png', 'Rakesh Maurya', '2017-01-23T12:39:48+0000', 'https://www.facebook.com/pg/Merchant+1-666741620153385/reviews/', 'Hello this page is providing promotional offers', NULL, NULL, NULL, NULL, NULL, NULL, '2907511014327961485175188', 0),
(262, 195, '2H9gGcuSJCSrN_EjaY89aQ', '5.00', 'img/yelp-icon.png', 'Brittni W.', '2016-09-13 22:54:44', 'https://www.yelp.com/biz/partners-real-estate-eagle-river?hrid=2H9gGcuSJCSrN_EjaY89aQ&adjust_creative=yLRKI4b4orlxDvOUmYsS9A&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_reviews&utm_source=yLRKI4b4orlxDvOUmYsS9A', 'We have been using Partners Real Estate since we first landed in Alaska a few years ago.  We started as renters, they were strict about cleanliness and...', 'https://s3-media2.fl.yelpcdn.com/photo/InpLWAKhGZkkPRkdalmzIw/o.jpg', NULL, NULL, NULL, NULL, '2H9gGcuSJCSrN_EjaY89aQ', NULL, 0),
(263, 195, 'd65SlxOfx2w1vj6kcszcvg', '2.00', 'img/yelp-icon.png', 'Michael S.', '2017-04-11 22:53:08', 'https://www.yelp.com/biz/partners-real-estate-eagle-river?hrid=d65SlxOfx2w1vj6kcszcvg&adjust_creative=yLRKI4b4orlxDvOUmYsS9A&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_reviews&utm_source=yLRKI4b4orlxDvOUmYsS9A', 'I\'ll begin with saying I\'ve never had a problem with any real estate or property management company before. I\'ve never had any damages to property, and I\'ve...', '', NULL, NULL, NULL, NULL, 'd65SlxOfx2w1vj6kcszcvg', NULL, 0),
(264, 195, 'istgEquSIh88PfQN7jARbw', '5.00', 'img/yelp-icon.png', 'Natalie J.', '2017-01-31 10:45:11', 'https://www.yelp.com/biz/partners-real-estate-eagle-river?hrid=istgEquSIh88PfQN7jARbw&adjust_creative=yLRKI4b4orlxDvOUmYsS9A&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_reviews&utm_source=yLRKI4b4orlxDvOUmYsS9A', 'Partners Real Estate is a great company for buying, selling and managing. Brandon is a hard worker. They are managing my townhouse and got it rented in one...', '', NULL, NULL, NULL, NULL, 'istgEquSIh88PfQN7jARbw', NULL, 0),
(265, 195, '3066953230359821486045891', '5.00', 'img/facebook-icon.png', 'Ankit Chetu', '2017-02-02T14:31:31+0000', 'https://www.facebook.com/pg/Merchant+1-666741620153385/reviews/', 'Hello i am here to write a review because this page providing me lot of offers.', NULL, NULL, NULL, NULL, NULL, NULL, '3066953230359821486045891', 0),
(266, 195, '14985763635588501485181245', '4.00', 'img/facebook-icon.png', 'Vineet Kumar Arya', '2017-01-23T14:20:45+0000', 'https://www.facebook.com/pg/Merchant+1-666741620153385/reviews/', 'Hi Good Lorem ipsum dummy content. So it is usefullllll........', NULL, NULL, NULL, NULL, NULL, NULL, '14985763635588501485181245', 0),
(267, 195, '2907511014327961485175188', '4.00', 'img/facebook-icon.png', 'Rakesh Maurya', '2017-01-23T12:39:48+0000', 'https://www.facebook.com/pg/Merchant+1-666741620153385/reviews/', 'Hello this page is providing promotional offers', NULL, NULL, NULL, NULL, NULL, NULL, '2907511014327961485175188', 0),
(268, 196, '3066953230359821486045891', '5.00', 'img/facebook-icon.png', 'Ankit Chetu', '2017-02-02T14:31:31+0000', 'https://www.facebook.com/pg/Merchant+1-666741620153385/reviews/', 'Hello i am here to write a review because this page providing me lot of offers.', NULL, NULL, NULL, NULL, NULL, NULL, '3066953230359821486045891', 0),
(269, 196, '14985763635588501485181245', '4.00', 'img/facebook-icon.png', 'Vineet Kumar Arya', '2017-01-23T14:20:45+0000', 'https://www.facebook.com/pg/Merchant+1-666741620153385/reviews/', 'Hi Good Lorem ipsum dummy content. So it is usefullllll........', NULL, NULL, NULL, NULL, NULL, NULL, '14985763635588501485181245', 0),
(270, 196, '2907511014327961485175188', '4.00', 'img/facebook-icon.png', 'Rakesh Maurya', '2017-01-23T12:39:48+0000', 'https://www.facebook.com/pg/Merchant+1-666741620153385/reviews/', 'Hello this page is providing promotional offers', NULL, NULL, NULL, NULL, NULL, NULL, '2907511014327961485175188', 0),
(271, 196, 'JWtTzHgx0R8SewcKRTaF7A', '5.00', 'img/yelp-icon.png', 'B J.', '2017-10-10 14:45:12', 'https://www.yelp.com/biz/team-flores-real-estate-coldwell-banker-san-diego-2?hrid=JWtTzHgx0R8SewcKRTaF7A&adjust_creative=yLRKI4b4orlxDvOUmYsS9A&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_reviews&utm_source=yLRKI4b4orlxDvOUmYsS9A', 'Team Flores is one of the best real estate teams in San Diego area! Lorraine and Saundra always provided me with high quality service. Although they handle...', 'https://s3-media1.fl.yelpcdn.com/photo/cLLAmW6VslFQZ7Ii9q-KGg/o.jpg', NULL, NULL, NULL, NULL, 'JWtTzHgx0R8SewcKRTaF7A', NULL, 0),
(272, 196, '8-RP0w9WIeeXU4Z_8P8ohA', '5.00', 'img/yelp-icon.png', 'Jeff R.', '2017-06-28 18:59:58', 'https://www.yelp.com/biz/team-flores-real-estate-coldwell-banker-san-diego-2?hrid=8-RP0w9WIeeXU4Z_8P8ohA&adjust_creative=yLRKI4b4orlxDvOUmYsS9A&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_reviews&utm_source=yLRKI4b4orlxDvOUmYsS9A', 'Lorraine and Sandra were fantastic. The realtor we used for years relocated back east. We needed a new realtor and much to our good fortune we were...', '', NULL, NULL, NULL, NULL, '8-RP0w9WIeeXU4Z_8P8ohA', NULL, 0),
(273, 197, 'JWtTzHgx0R8SewcKRTaF7A', '5.00', 'img/yelp-icon.png', 'B J.', '2017-10-10 14:45:12', 'https://www.yelp.com/biz/team-flores-real-estate-coldwell-banker-san-diego-2?hrid=JWtTzHgx0R8SewcKRTaF7A&adjust_creative=yLRKI4b4orlxDvOUmYsS9A&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_reviews&utm_source=yLRKI4b4orlxDvOUmYsS9A', 'Team Flores is one of the best real estate teams in San Diego area! Lorraine and Saundra always provided me with high quality service. Although they handle...', 'https://s3-media1.fl.yelpcdn.com/photo/cLLAmW6VslFQZ7Ii9q-KGg/o.jpg', NULL, NULL, NULL, NULL, 'JWtTzHgx0R8SewcKRTaF7A', NULL, 0),
(274, 197, '8-RP0w9WIeeXU4Z_8P8ohA', '5.00', 'img/yelp-icon.png', 'Jeff R.', '2017-06-28 18:59:58', 'https://www.yelp.com/biz/team-flores-real-estate-coldwell-banker-san-diego-2?hrid=8-RP0w9WIeeXU4Z_8P8ohA&adjust_creative=yLRKI4b4orlxDvOUmYsS9A&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_reviews&utm_source=yLRKI4b4orlxDvOUmYsS9A', 'Lorraine and Sandra were fantastic. The realtor we used for years relocated back east. We needed a new realtor and much to our good fortune we were...', '', NULL, NULL, NULL, NULL, '8-RP0w9WIeeXU4Z_8P8ohA', NULL, 0),
(275, 197, '3066953230359821486045891', '5.00', 'img/facebook-icon.png', 'Ankit Chetu', '2017-02-02T14:31:31+0000', 'https://www.facebook.com/pg/Merchant+1-666741620153385/reviews/', 'Hello i am here to write a review because this page providing me lot of offers.', NULL, NULL, NULL, NULL, NULL, NULL, '3066953230359821486045891', 0),
(276, 197, '14985763635588501485181245', '4.00', 'img/facebook-icon.png', 'Vineet Kumar Arya', '2017-01-23T14:20:45+0000', 'https://www.facebook.com/pg/Merchant+1-666741620153385/reviews/', 'Hi Good Lorem ipsum dummy content. So it is usefullllll........', NULL, NULL, NULL, NULL, NULL, NULL, '14985763635588501485181245', 0),
(277, 197, '2907511014327961485175188', '4.00', 'img/facebook-icon.png', 'Rakesh Maurya', '2017-01-23T12:39:48+0000', 'https://www.facebook.com/pg/Merchant+1-666741620153385/reviews/', 'Hello this page is providing promotional offers', NULL, NULL, NULL, NULL, NULL, NULL, '2907511014327961485175188', 0),
(278, 198, '3066953230359821486045891', '5.00', 'img/facebook-icon.png', 'Ankit Chetu', '2017-02-02T14:31:31+0000', 'https://www.facebook.com/pg/Merchant+1-666741620153385/reviews/', 'Hello i am here to write a review because this page providing me lot of offers.', NULL, NULL, NULL, NULL, NULL, NULL, '3066953230359821486045891', 0),
(279, 198, '14985763635588501485181245', '4.00', 'img/facebook-icon.png', 'Vineet Kumar Arya', '2017-01-23T14:20:45+0000', 'https://www.facebook.com/pg/Merchant+1-666741620153385/reviews/', 'Hi Good Lorem ipsum dummy content. So it is usefullllll........', NULL, NULL, NULL, NULL, NULL, NULL, '14985763635588501485181245', 0),
(280, 198, '2907511014327961485175188', '4.00', 'img/facebook-icon.png', 'Rakesh Maurya', '2017-01-23T12:39:48+0000', 'https://www.facebook.com/pg/Merchant+1-666741620153385/reviews/', 'Hello this page is providing promotional offers', NULL, NULL, NULL, NULL, NULL, NULL, '2907511014327961485175188', 0),
(281, 198, '2ZQV5b75oCItb4Np2sIwrw', '5.00', 'img/yelp-icon.png', 'E H.', '2017-11-04 15:12:40', 'https://www.yelp.com/biz/pamir-kabob-house-san-diego?hrid=2ZQV5b75oCItb4Np2sIwrw&adjust_creative=yLRKI4b4orlxDvOUmYsS9A&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_reviews&utm_source=yLRKI4b4orlxDvOUmYsS9A', 'Really good and tasty food. Family run, I like it very much and will be back. Thank you Diba (Mom) and chef (hubby) and girls (greeters :). \n\nHEADS UP: they...', 'https://s3-media1.fl.yelpcdn.com/photo/wM4XCz6zwojiLhOKv2PBrA/o.jpg', NULL, NULL, NULL, NULL, '2ZQV5b75oCItb4Np2sIwrw', NULL, 0),
(282, 198, 'cFNrVLmOT7inPvUhPugK6A', '4.00', 'img/yelp-icon.png', 'Natalia Y.', '2017-11-07 19:11:58', 'https://www.yelp.com/biz/pamir-kabob-house-san-diego?hrid=cFNrVLmOT7inPvUhPugK6A&adjust_creative=yLRKI4b4orlxDvOUmYsS9A&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_reviews&utm_source=yLRKI4b4orlxDvOUmYsS9A', 'Very nice place. Great food & tea. Pretty good baklava. Amazing service. I loved floor seating. So relaxing.\n\nWe had:\nManty - 4\nSamosas - 3 (wasn\'t out...', 'https://s3-media3.fl.yelpcdn.com/photo/ae3T-ubela5z3uXIotU1Ng/o.jpg', NULL, NULL, NULL, NULL, 'cFNrVLmOT7inPvUhPugK6A', NULL, 0),
(283, 198, '_AcQ41DeGFwHnORpxvU4nA', '4.00', 'img/yelp-icon.png', 'Su T.', '2017-10-21 07:51:59', 'https://www.yelp.com/biz/pamir-kabob-house-san-diego?hrid=_AcQ41DeGFwHnORpxvU4nA&adjust_creative=yLRKI4b4orlxDvOUmYsS9A&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_reviews&utm_source=yLRKI4b4orlxDvOUmYsS9A', 'There is a bit of a musty smell inside but once you get past that the food and customer service are pretty good. Everything is authentic. I\'ve been here...', 'https://s3-media1.fl.yelpcdn.com/photo/S4VuaFcnDCGdPWpPXCehNA/o.jpg', NULL, NULL, NULL, NULL, '_AcQ41DeGFwHnORpxvU4nA', NULL, 0),
(284, 199, 'JWtTzHgx0R8SewcKRTaF7A', '5.00', 'img/yelp-icon.png', 'B J.', '2017-10-10 14:45:12', 'https://www.yelp.com/biz/team-flores-real-estate-coldwell-banker-san-diego-2?hrid=JWtTzHgx0R8SewcKRTaF7A&adjust_creative=yLRKI4b4orlxDvOUmYsS9A&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_reviews&utm_source=yLRKI4b4orlxDvOUmYsS9A', 'Team Flores is one of the best real estate teams in San Diego area! Lorraine and Saundra always provided me with high quality service. Although they handle...', 'https://s3-media1.fl.yelpcdn.com/photo/cLLAmW6VslFQZ7Ii9q-KGg/o.jpg', NULL, NULL, NULL, NULL, 'JWtTzHgx0R8SewcKRTaF7A', NULL, 0),
(285, 199, '8-RP0w9WIeeXU4Z_8P8ohA', '5.00', 'img/yelp-icon.png', 'Jeff R.', '2017-06-28 18:59:58', 'https://www.yelp.com/biz/team-flores-real-estate-coldwell-banker-san-diego-2?hrid=8-RP0w9WIeeXU4Z_8P8ohA&adjust_creative=yLRKI4b4orlxDvOUmYsS9A&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_reviews&utm_source=yLRKI4b4orlxDvOUmYsS9A', 'Lorraine and Sandra were fantastic. The realtor we used for years relocated back east. We needed a new realtor and much to our good fortune we were...', '', NULL, NULL, NULL, NULL, '8-RP0w9WIeeXU4Z_8P8ohA', NULL, 0),
(286, 199, '3066953230359821486045891', '5.00', 'img/facebook-icon.png', 'Ankit Chetu', '2017-02-02T14:31:31+0000', 'https://www.facebook.com/pg/Merchant+1-666741620153385/reviews/', 'Hello i am here to write a review because this page providing me lot of offers.', NULL, NULL, NULL, NULL, NULL, NULL, '3066953230359821486045891', 0),
(287, 199, '14985763635588501485181245', '4.00', 'img/facebook-icon.png', 'Vineet Kumar Arya', '2017-01-23T14:20:45+0000', 'https://www.facebook.com/pg/Merchant+1-666741620153385/reviews/', 'Hi Good Lorem ipsum dummy content. So it is usefullllll........', NULL, NULL, NULL, NULL, NULL, NULL, '14985763635588501485181245', 0),
(288, 199, '2907511014327961485175188', '4.00', 'img/facebook-icon.png', 'Rakesh Maurya', '2017-01-23T12:39:48+0000', 'https://www.facebook.com/pg/Merchant+1-666741620153385/reviews/', 'Hello this page is providing promotional offers', NULL, NULL, NULL, NULL, NULL, NULL, '2907511014327961485175188', 0);
INSERT INTO `api_reviews` (`id`, `user_id`, `review_id`, `rating`, `source_img`, `reviewer_name`, `review_date`, `review_url`, `review_desc`, `reviewer_profile_url`, `google_relative_time`, `zillow_review_summary`, `zillow_review_id`, `google_review_id`, `yelp_review_id`, `facebook_review_id`, `deleted`) VALUES
(289, 200, '3242042', '5.00', 'img/zillow.png', 'jbloom1999', '2017-04-07', 'http://www.zillow.com/profile/user19731134/Reviews/?review=3242042', 'Brandon is great. We liked working with Brandon as soon as we met him. He has a great knowledge of the area, the product inventory and market. He has the great combination of professional knowledge and ...', 'http://www.zillow.com/profile/jbloom1999/', NULL, 'Property manage a Single Family home in Eagle River, Eagle River, AK.', '3242042', NULL, NULL, NULL, 0),
(290, 200, '3192648', '5.00', 'img/zillow.png', 'kboquet', '2017-03-19', 'http://www.zillow.com/profile/user19731134/Reviews/?review=3192648', 'We are very grateful for Brandon Thorud and the support of Partners Real Estate when we relocated to Alaska.  Brandon has great interpersonal skills and is very easy to work with.  He is very conscientious ...', 'http://www.zillow.com/profile/kboquet/', NULL, 'Bought a Single Family home in 2009 in Eagle River, Eagle River, AK.', '3192648', NULL, NULL, NULL, 0),
(291, 200, '3185414', '5.00', 'img/zillow.png', 'Janan2', '2017-03-15', 'http://www.zillow.com/profile/user19731134/Reviews/?review=3185414', 'Brandon assisted my family and I with our home purchase when we relocated from Arizona to Alaska. He and his company were fantastic to work with, got our offer accepted, closed early and done all remotely ...', 'http://www.zillow.com/profile/Janan2/', NULL, 'Bought a Single Family home in 2015 in Chugiak, Chugiak, AK.', '3185414', NULL, NULL, NULL, 0),
(292, 200, 'JWtTzHgx0R8SewcKRTaF7A', '5.00', 'img/yelp-icon.png', 'B J.', '2017-10-10 14:45:12', 'https://www.yelp.com/biz/team-flores-real-estate-coldwell-banker-san-diego-2?hrid=JWtTzHgx0R8SewcKRTaF7A&adjust_creative=yLRKI4b4orlxDvOUmYsS9A&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_reviews&utm_source=yLRKI4b4orlxDvOUmYsS9A', 'Team Flores is one of the best real estate teams in San Diego area! Lorraine and Saundra always provided me with high quality service. Although they handle...', 'https://s3-media1.fl.yelpcdn.com/photo/cLLAmW6VslFQZ7Ii9q-KGg/o.jpg', NULL, NULL, NULL, NULL, 'JWtTzHgx0R8SewcKRTaF7A', NULL, 0),
(293, 200, '8-RP0w9WIeeXU4Z_8P8ohA', '5.00', 'img/yelp-icon.png', 'Jeff R.', '2017-06-28 18:59:58', 'https://www.yelp.com/biz/team-flores-real-estate-coldwell-banker-san-diego-2?hrid=8-RP0w9WIeeXU4Z_8P8ohA&adjust_creative=yLRKI4b4orlxDvOUmYsS9A&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_reviews&utm_source=yLRKI4b4orlxDvOUmYsS9A', 'Lorraine and Sandra were fantastic. The realtor we used for years relocated back east. We needed a new realtor and much to our good fortune we were...', '', NULL, NULL, NULL, NULL, '8-RP0w9WIeeXU4Z_8P8ohA', NULL, 0),
(294, 200, '3066953230359821486045891', '5.00', 'img/facebook-icon.png', 'Ankit Chetu', '2017-02-02T14:31:31+0000', 'https://www.facebook.com/pg/Merchant+1-666741620153385/reviews/', 'Hello i am here to write a review because this page providing me lot of offers.', NULL, NULL, NULL, NULL, NULL, NULL, '3066953230359821486045891', 0),
(295, 200, '14985763635588501485181245', '4.00', 'img/facebook-icon.png', 'Vineet Kumar Arya', '2017-01-23T14:20:45+0000', 'https://www.facebook.com/pg/Merchant+1-666741620153385/reviews/', 'Hi Good Lorem ipsum dummy content. So it is usefullllll........', NULL, NULL, NULL, NULL, NULL, NULL, '14985763635588501485181245', 0),
(296, 200, '2907511014327961485175188', '4.00', 'img/facebook-icon.png', 'Rakesh Maurya', '2017-01-23T12:39:48+0000', 'https://www.facebook.com/pg/Merchant+1-666741620153385/reviews/', 'Hello this page is providing promotional offers', NULL, NULL, NULL, NULL, NULL, NULL, '2907511014327961485175188', 0),
(297, 201, '3442673', '5.00', 'img/zillow.png', 'Ashley jasper', '2017-06-30', 'http://www.zillow.com/profile/tim7558/Reviews/?review=3442673', 'First time home buyers, met Tim as he was showing us a rental, we discussed our shock of the area\'s high rental costs and he suggested buying our own home.  My husband is active duty and we have always ...', 'http://www.zillow.com/profile/zuser20170302040858501/', NULL, 'Bought a Single Family home in 2017 in Eagle River, Eagle River, AK.', '3442673', NULL, NULL, NULL, 0),
(298, 201, '3414470', '5.00', 'img/zillow.png', 'live4fishin31', '2017-06-19', 'http://www.zillow.com/profile/tim7558/Reviews/?review=3414470', 'Tim gave us one of the best home buying experiences we ever could have imagined. We were extremely picky, and Tim found us our dream home. This is our second house we\'ve bought and Tim was by far, way ...', 'http://www.zillow.com/profile/live4fishin31/', NULL, 'Bought a home in 2017 in Suntrana, Healy, AK 99755.', '3414470', NULL, NULL, NULL, 0),
(299, 201, '3380728', '5.00', 'img/zillow.png', 'user3540461', '2017-06-04', 'http://www.zillow.com/profile/tim7558/Reviews/?review=3380728', 'Tim went ABOVE and BEYOND for us! Whenever, however we need a question answered or something done he responded quickly and did whatever needed to be done. He kept in constant contact with the sellers ...', 'http://www.zillow.com/profile/user3540461/', NULL, 'Bought a Single Family home in 2017 in Wasilla, AK.', '3380728', NULL, NULL, NULL, 0),
(300, 201, '3075792', '5.00', 'img/zillow.png', 'zuser20140922074735562', '2017-01-27', 'http://www.zillow.com/profile/tim7558/Reviews/?review=3075792', 'What made you decide to buy/sell your home?<br/>While doing a comparison of rentals in the area and mortgage rates, we did not want to throw away upwards of $36k a year and since were military were going ...', 'http://www.zillow.com/profile/zuser20140922074735562/', NULL, 'Bought a Single Family home in 2016 in South Fork, Eagle River, AK.', '3075792', NULL, NULL, NULL, 0),
(301, 201, '101876689730805561109', '5.00', 'img/Google.png', 'christina fogg', '2017-11-16 02:07:57', 'https://www.google.com/maps/contrib/101876689730805561109/reviews', 'Brandon is AMAZING!!! He help sell my home back in 2015 and helped my husband and I buy our new home (2017). When the sellers were being unreasonable he went to bat for us and got the deal where it worked best for us. His whole team were all helpful in any questions we had. If you are looking to buy or rent in Alaska look up Partners Realty and ask for Brandon Thorud. He will make it a smooth and fun experience.', 'https://lh3.googleusercontent.com/-MiEriSll9pI/AAAAAAAAAAI/AAAAAAAAAAA/AFiYof3b7Zs32NrfSP1udYjjW-NsOEOG2g/s128-c0x00000000-cc-rp-mo/photo.jpg', '2 weeks ago', NULL, NULL, '101876689730805561109', NULL, NULL, 0),
(302, 201, '117230349546220471870', '5.00', 'img/Google.png', 'Traci Lenard', '2017-08-16 23:13:54', 'https://www.google.com/maps/contrib/117230349546220471870/reviews', 'Kim and Terry are a great team! They were very communicative throughout the entire process, making the sale of the property as seamless as possible. They are personable and professional. I couldn\'t have been more comfortable and pleased to have their help!', 'https://lh5.googleusercontent.com/-bet4-ch3JT8/AAAAAAAAAAI/AAAAAAAAAAA/AFiYof1fAcAmyu45h7OF0T0NpDOGMOuWFA/s128-c0x00000000-cc-rp-mo/photo.jpg', '3 months ago', NULL, NULL, '117230349546220471870', NULL, NULL, 0),
(303, 201, '118017591695459869073', '1.00', 'img/Google.png', 'Anna Smelser', '2017-11-03 18:05:26', 'https://www.google.com/maps/contrib/118017591695459869073/reviews', 'All Iâ€™m going to say is I wish we never signed a lease with them! I canâ€™t wait till August 2018 when our lease is up! Will never use them again.', 'https://lh3.googleusercontent.com/-bzm7o5k-oOw/AAAAAAAAAAI/AAAAAAAAAAA/AFiYof2zN9jTUOlSOm3JfyRGw4K55EvqKQ/s128-c0x00000000-cc-rp-mo/photo.jpg', 'a month ago', NULL, NULL, '118017591695459869073', NULL, NULL, 0),
(304, 201, '102631988454298483310', '5.00', 'img/Google.png', 'Brittni Anderson', '2016-12-01 16:29:56', 'https://www.google.com/maps/contrib/102631988454298483310/reviews', 'We started out as renters through Partners when we first got stationed in Alaska.  They were helpful and got us into an affordable home within 2 days.  Any time we had issues maintenance was quick to respond in a timely manner. They were strict but fair which is why we chose them to help us buy our first house.  When it was time for us to leave Alaska for our next adventure we were confident leaving them in charge of our property. They had renters in our house in less than a week.  Brandon has gone above and beyond with communication. Would definitely recommend.', 'https://lh5.googleusercontent.com/-7JVeKlIsIGU/AAAAAAAAAAI/AAAAAAAAAAA/AFiYof2cTTRLD7nCSKuI9yGYo8jASqQ0ig/s128-c0x00000000-cc-rp-mo/photo.jpg', 'a year ago', NULL, NULL, '102631988454298483310', NULL, NULL, 0),
(305, 201, '111993907216625355573', '1.00', 'img/Google.png', 'haley lienhart', '2017-09-02 18:44:27', 'https://www.google.com/maps/contrib/111993907216625355573/reviews', 'Unorganized company. Will give you multiple different answers for questions, have lost payments, takes forever to get any sort of response when leaving messages.', 'https://lh3.googleusercontent.com/-CUMGHbxGQ08/AAAAAAAAAAI/AAAAAAAAAAA/AFiYof1_YgQFRmst_ej-UyHzJyu2nD9Xtw/s128-c0x00000000-cc-rp-mo/photo.jpg', '3 months ago', NULL, NULL, '111993907216625355573', NULL, NULL, 0),
(306, 201, 'JWtTzHgx0R8SewcKRTaF7A', '5.00', 'img/yelp-icon.png', 'B J.', '2017-10-10 14:45:12', 'https://www.yelp.com/biz/team-flores-real-estate-coldwell-banker-san-diego-2?hrid=JWtTzHgx0R8SewcKRTaF7A&adjust_creative=yLRKI4b4orlxDvOUmYsS9A&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_reviews&utm_source=yLRKI4b4orlxDvOUmYsS9A', 'Team Flores is one of the best real estate teams in San Diego area! Lorraine and Saundra always provided me with high quality service. Although they handle...', 'https://s3-media1.fl.yelpcdn.com/photo/cLLAmW6VslFQZ7Ii9q-KGg/o.jpg', NULL, NULL, NULL, NULL, 'JWtTzHgx0R8SewcKRTaF7A', NULL, 0),
(307, 201, '8-RP0w9WIeeXU4Z_8P8ohA', '5.00', 'img/yelp-icon.png', 'Jeff R.', '2017-06-28 18:59:58', 'https://www.yelp.com/biz/team-flores-real-estate-coldwell-banker-san-diego-2?hrid=8-RP0w9WIeeXU4Z_8P8ohA&adjust_creative=yLRKI4b4orlxDvOUmYsS9A&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_reviews&utm_source=yLRKI4b4orlxDvOUmYsS9A', 'Lorraine and Sandra were fantastic. The realtor we used for years relocated back east. We needed a new realtor and much to our good fortune we were...', '', NULL, NULL, NULL, NULL, '8-RP0w9WIeeXU4Z_8P8ohA', NULL, 0),
(308, 185, '3696551', '5.00', 'img/zillow.png', 'Douglas Moody', '2017-10-16', 'http://www.zillow.com/profile/PartnersRealEstate/Reviews/?review=3696551', 'My wife and I cannot say enough wonderful things about Jeron! As first time home buyers we had a lot of questions and concerns throughout the process and Jeron made it his priority to make himself available ...', 'http://www.zillow.com/profile/moody-douglas/', NULL, 'Bought a Single Family home in 2017 in Bayshore-Klatt, Anchorage, AK.', '3696551', NULL, NULL, NULL, 0),
(309, 185, '3562980', '5.00', 'img/zillow.png', 'mrs sarahejohnson9', '2017-08-19', 'http://www.zillow.com/profile/PartnersRealEstate/Reviews/?review=3562980', 'She helped me find the perfect home and answered all my questions as a first time home buyer! She made the process so easy! I would highly recommend her for all real estate needs.', 'http://www.zillow.com/profile/mrs-sarahejohnson9/', NULL, 'Bought a Townhouse home in 2017 in Taku-Campbell, Anchorage, AK.', '3562980', NULL, NULL, NULL, 0),
(310, 185, '3562055', '5.00', 'img/zillow.png', 'mmeza0', '2017-08-18', 'http://www.zillow.com/profile/PartnersRealEstate/Reviews/?review=3562055', 'Renee took the time to work with us to find our forever home. She always kept our best interest in mind, was honest, responsive, flexible, and great to work with. She helped make this experience fun and ...', 'http://www.zillow.com/profile/mmeza0/', NULL, 'Bought a Single Family home in 2016 in Eagle River, Eagle River, AK.', '3562055', NULL, NULL, NULL, 0),
(311, 185, '3529754', '5.00', 'img/zillow.png', 'zuser20170629005143161', '2017-08-05', 'http://www.zillow.com/profile/PartnersRealEstate/Reviews/?review=3529754', 'Ethan was very prompt and thorough answering any and all questions I had, even if I emailed him after normal work hours. I had to bow out of buying the place we looked at for financial reasons, but if/when ...', 'http://www.zillow.com/profile/zuser20170629005143161/', NULL, 'Listed, but didn\'t sell my Condo home in 2017 in Russian Jack Park, Anchorage, AK.', '3529754', NULL, NULL, NULL, 0),
(312, 185, '3512599', '5.00', 'img/zillow.png', 'TARA VANAMAN', '2017-07-29', 'http://www.zillow.com/profile/PartnersRealEstate/Reviews/?review=3512599', 'Jeron Rose of Partners Real Estate was a pleasure to work with. He is newer to the field but a joy to work with, an advocate for his clients and committed to learning and growing. He was always willing ...', 'http://www.zillow.com/profile/tdvanaman5/', NULL, 'Bought a Single Family home in 2017 in Eagle River, Eagle River, AK.', '3512599', NULL, NULL, NULL, 0),
(313, 185, '3442673', '5.00', 'img/zillow.png', 'Ashley jasper', '2017-06-30', 'http://www.zillow.com/profile/PartnersRealEstate/Reviews/?review=3442673', 'First time home buyers, met Tim as he was showing us a rental, we discussed our shock of the area\'s high rental costs and he suggested buying our own home.  My husband is active duty and we have always ...', 'http://www.zillow.com/profile/zuser20170302040858501/', NULL, 'Bought a Single Family home in 2017 in Eagle River, Eagle River, AK.', '3442673', NULL, NULL, NULL, 0),
(314, 185, '3414470', '5.00', 'img/zillow.png', 'live4fishin31', '2017-06-19', 'http://www.zillow.com/profile/PartnersRealEstate/Reviews/?review=3414470', 'Tim gave us one of the best home buying experiences we ever could have imagined. We were extremely picky, and Tim found us our dream home. This is our second house we\'ve bought and Tim was by far, way ...', 'http://www.zillow.com/profile/live4fishin31/', NULL, 'Bought a home in 2017 in Suntrana, Healy, AK 99755.', '3414470', NULL, NULL, NULL, 0),
(315, 185, '3380728', '5.00', 'img/zillow.png', 'user3540461', '2017-06-04', 'http://www.zillow.com/profile/PartnersRealEstate/Reviews/?review=3380728', 'Tim went ABOVE and BEYOND for us! Whenever, however we need a question answered or something done he responded quickly and did whatever needed to be done. He kept in constant contact with the sellers ...', 'http://www.zillow.com/profile/user3540461/', NULL, 'Bought a Single Family home in 2017 in Wasilla, AK.', '3380728', NULL, NULL, NULL, 0),
(316, 185, '3379195', '5.00', 'img/zillow.png', 'zuser20170122103006326', '2017-06-03', 'http://www.zillow.com/profile/PartnersRealEstate/Reviews/?review=3379195', 'We had called about a listing with a different agent he never returned my message at that time Danica stepped in and helped us through the buying process. If we had questions immediately she answered ...', 'http://www.zillow.com/profile/zuser20170122103006326/', NULL, 'Bought a home in 2017 in Anchorage, AK.', '3379195', NULL, NULL, NULL, 0),
(317, 185, '3242042', '5.00', 'img/zillow.png', 'jbloom1999', '2017-04-07', 'http://www.zillow.com/profile/PartnersRealEstate/Reviews/?review=3242042', 'Brandon is great. We liked working with Brandon as soon as we met him. He has a great knowledge of the area, the product inventory and market. He has the great combination of professional knowledge and ...', 'http://www.zillow.com/profile/jbloom1999/', NULL, 'Property manage a Single Family home in Eagle River, Eagle River, AK.', '3242042', NULL, NULL, NULL, 0),
(318, 185, '2H9gGcuSJCSrN_EjaY89aQ', '5.00', 'img/yelp-icon.png', 'Brittni W.', '2016-09-13 22:54:44', 'https://www.yelp.com/biz/partners-real-estate-eagle-river?hrid=2H9gGcuSJCSrN_EjaY89aQ&adjust_creative=yLRKI4b4orlxDvOUmYsS9A&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_reviews&utm_source=yLRKI4b4orlxDvOUmYsS9A', 'We have been using Partners Real Estate since we first landed in Alaska a few years ago.  We started as renters, they were strict about cleanliness and...', 'https://s3-media2.fl.yelpcdn.com/photo/InpLWAKhGZkkPRkdalmzIw/o.jpg', NULL, NULL, NULL, NULL, '2H9gGcuSJCSrN_EjaY89aQ', NULL, 0),
(319, 185, 'd65SlxOfx2w1vj6kcszcvg', '2.00', 'img/yelp-icon.png', 'Michael S.', '2017-04-11 22:53:08', 'https://www.yelp.com/biz/partners-real-estate-eagle-river?hrid=d65SlxOfx2w1vj6kcszcvg&adjust_creative=yLRKI4b4orlxDvOUmYsS9A&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_reviews&utm_source=yLRKI4b4orlxDvOUmYsS9A', 'I\'ll begin with saying I\'ve never had a problem with any real estate or property management company before. I\'ve never had any damages to property, and I\'ve...', '', NULL, NULL, NULL, NULL, 'd65SlxOfx2w1vj6kcszcvg', NULL, 0),
(320, 185, 'istgEquSIh88PfQN7jARbw', '5.00', 'img/yelp-icon.png', 'Natalie J.', '2017-01-31 10:45:11', 'https://www.yelp.com/biz/partners-real-estate-eagle-river?hrid=istgEquSIh88PfQN7jARbw&adjust_creative=yLRKI4b4orlxDvOUmYsS9A&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_reviews&utm_source=yLRKI4b4orlxDvOUmYsS9A', 'Partners Real Estate is a great company for buying, selling and managing. Brandon is a hard worker. They are managing my townhouse and got it rented in one...', '', NULL, NULL, NULL, NULL, 'istgEquSIh88PfQN7jARbw', NULL, 0),
(321, 185, '2198564', '5.00', 'img/zillow.png', 'Cynthia4619', '2016-02-17', 'http://www.zillow.com/profile/tsquare1/Reviews/?review=2198564', 'I have been looking for a rental home for about two weeks and finally found a company that returns my calls and emails!  They were on time for our appointment and were able to answer all my questions. ...', 'http://www.zillow.com/profile/Cynthia4619/', NULL, 'Helped me rent a Single Family home in Mill Creek, WA.', '2198564', NULL, NULL, NULL, 1),
(322, 185, '553457', '5.00', 'img/zillow.png', 'eddie t 71', '2013-10-24', 'http://www.zillow.com/profile/tsquare1/Reviews/?review=553457', 'Quick to get back to us and accommodating to our schedule.  Had a good selection of homes for us to look at and consider and helped us get into the one that we wanted.  I would recommend to others.', 'http://www.zillow.com/profile/eddie-t-71/', NULL, 'Helped me rent a home in Cottage Lake, Woodinville, WA 98077.', '553457', NULL, NULL, NULL, 1),
(323, 185, '535340', '2.00', 'img/zillow.png', 'sven98011', '2013-10-10', 'http://www.zillow.com/profile/tsquare1/Reviews/?review=535340', 'Poor professionalism; representative was more than 40 minutes late to a property showing and informed us at the last minute that another applicant would be joining the walk through.  Upon hearing the ...', 'http://www.zillow.com/profile/sven98011/', NULL, 'We connected, but it did not work out. Looking in Thrashers Corner, Seattle Hill-Silver Firs, WA 98012', '535340', NULL, NULL, NULL, 1),
(324, 204, '3696551', '5.00', 'img/zillow.png', 'Douglas Moody', '2017-10-16', 'http://www.zillow.com/profile/PartnersRealEstate/Reviews/?review=3696551', 'My wife and I cannot say enough wonderful things about Jeron! As first time home buyers we had a lot of questions and concerns throughout the process and Jeron made it his priority to make himself available ...', 'http://www.zillow.com/profile/moody-douglas/', NULL, 'Bought a Single Family home in 2017 in Bayshore-Klatt, Anchorage, AK.', '3696551', NULL, NULL, NULL, 0),
(325, 204, '3562980', '5.00', 'img/zillow.png', 'mrs sarahejohnson9', '2017-08-19', 'http://www.zillow.com/profile/PartnersRealEstate/Reviews/?review=3562980', 'She helped me find the perfect home and answered all my questions as a first time home buyer! She made the process so easy! I would highly recommend her for all real estate needs.', 'http://www.zillow.com/profile/mrs-sarahejohnson9/', NULL, 'Bought a Townhouse home in 2017 in Taku-Campbell, Anchorage, AK.', '3562980', NULL, NULL, NULL, 0),
(326, 204, '3562055', '5.00', 'img/zillow.png', 'mmeza0', '2017-08-18', 'http://www.zillow.com/profile/PartnersRealEstate/Reviews/?review=3562055', 'Renee took the time to work with us to find our forever home. She always kept our best interest in mind, was honest, responsive, flexible, and great to work with. She helped make this experience fun and ...', 'http://www.zillow.com/profile/mmeza0/', NULL, 'Bought a Single Family home in 2016 in Eagle River, Eagle River, AK.', '3562055', NULL, NULL, NULL, 0),
(327, 204, '3529754', '5.00', 'img/zillow.png', 'zuser20170629005143161', '2017-08-05', 'http://www.zillow.com/profile/PartnersRealEstate/Reviews/?review=3529754', 'Ethan was very prompt and thorough answering any and all questions I had, even if I emailed him after normal work hours. I had to bow out of buying the place we looked at for financial reasons, but if/when ...', 'http://www.zillow.com/profile/zuser20170629005143161/', NULL, 'Listed, but didn\'t sell my Condo home in 2017 in Russian Jack Park, Anchorage, AK.', '3529754', NULL, NULL, NULL, 0),
(328, 204, '3512599', '5.00', 'img/zillow.png', 'TARA VANAMAN', '2017-07-29', 'http://www.zillow.com/profile/PartnersRealEstate/Reviews/?review=3512599', 'Jeron Rose of Partners Real Estate was a pleasure to work with. He is newer to the field but a joy to work with, an advocate for his clients and committed to learning and growing. He was always willing ...', 'http://www.zillow.com/profile/tdvanaman5/', NULL, 'Bought a Single Family home in 2017 in Eagle River, Eagle River, AK.', '3512599', NULL, NULL, NULL, 0),
(329, 204, '3442673', '5.00', 'img/zillow.png', 'Ashley jasper', '2017-06-30', 'http://www.zillow.com/profile/PartnersRealEstate/Reviews/?review=3442673', 'First time home buyers, met Tim as he was showing us a rental, we discussed our shock of the area\'s high rental costs and he suggested buying our own home.  My husband is active duty and we have always ...', 'http://www.zillow.com/profile/zuser20170302040858501/', NULL, 'Bought a Single Family home in 2017 in Eagle River, Eagle River, AK.', '3442673', NULL, NULL, NULL, 0),
(330, 204, '3414470', '5.00', 'img/zillow.png', 'live4fishin31', '2017-06-19', 'http://www.zillow.com/profile/PartnersRealEstate/Reviews/?review=3414470', 'Tim gave us one of the best home buying experiences we ever could have imagined. We were extremely picky, and Tim found us our dream home. This is our second house we\'ve bought and Tim was by far, way ...', 'http://www.zillow.com/profile/live4fishin31/', NULL, 'Bought a home in 2017 in Suntrana, Healy, AK 99755.', '3414470', NULL, NULL, NULL, 0),
(331, 204, '3380728', '5.00', 'img/zillow.png', 'user3540461', '2017-06-04', 'http://www.zillow.com/profile/PartnersRealEstate/Reviews/?review=3380728', 'Tim went ABOVE and BEYOND for us! Whenever, however we need a question answered or something done he responded quickly and did whatever needed to be done. He kept in constant contact with the sellers ...', 'http://www.zillow.com/profile/user3540461/', NULL, 'Bought a Single Family home in 2017 in Wasilla, AK.', '3380728', NULL, NULL, NULL, 0),
(332, 204, '3379195', '5.00', 'img/zillow.png', 'zuser20170122103006326', '2017-06-03', 'http://www.zillow.com/profile/PartnersRealEstate/Reviews/?review=3379195', 'We had called about a listing with a different agent he never returned my message at that time Danica stepped in and helped us through the buying process. If we had questions immediately she answered ...', 'http://www.zillow.com/profile/zuser20170122103006326/', NULL, 'Bought a home in 2017 in Anchorage, AK.', '3379195', NULL, NULL, NULL, 0),
(333, 204, '3242042', '5.00', 'img/zillow.png', 'jbloom1999', '2017-04-07', 'http://www.zillow.com/profile/PartnersRealEstate/Reviews/?review=3242042', 'Brandon is great. We liked working with Brandon as soon as we met him. He has a great knowledge of the area, the product inventory and market. He has the great combination of professional knowledge and ...', 'http://www.zillow.com/profile/jbloom1999/', NULL, 'Property manage a Single Family home in Eagle River, Eagle River, AK.', '3242042', NULL, NULL, NULL, 0),
(334, 204, 'JWtTzHgx0R8SewcKRTaF7A', '5.00', 'img/yelp-icon.png', 'B J.', '2017-10-10 14:45:12', 'https://www.yelp.com/biz/team-flores-real-estate-coldwell-banker-san-diego-2?hrid=JWtTzHgx0R8SewcKRTaF7A&adjust_creative=yLRKI4b4orlxDvOUmYsS9A&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_reviews&utm_source=yLRKI4b4orlxDvOUmYsS9A', 'Team Flores is one of the best real estate teams in San Diego area! Lorraine and Saundra always provided me with high quality service. Although they handle...', 'https://s3-media1.fl.yelpcdn.com/photo/cLLAmW6VslFQZ7Ii9q-KGg/o.jpg', NULL, NULL, NULL, NULL, 'JWtTzHgx0R8SewcKRTaF7A', NULL, 0),
(335, 204, '8-RP0w9WIeeXU4Z_8P8ohA', '5.00', 'img/yelp-icon.png', 'Jeff R.', '2017-06-28 18:59:58', 'https://www.yelp.com/biz/team-flores-real-estate-coldwell-banker-san-diego-2?hrid=8-RP0w9WIeeXU4Z_8P8ohA&adjust_creative=yLRKI4b4orlxDvOUmYsS9A&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_reviews&utm_source=yLRKI4b4orlxDvOUmYsS9A', 'Lorraine and Sandra were fantastic. The realtor we used for years relocated back east. We needed a new realtor and much to our good fortune we were...', '', NULL, NULL, NULL, NULL, '8-RP0w9WIeeXU4Z_8P8ohA', NULL, 0),
(336, 204, '3066953230359821486045891', '5.00', 'img/facebook-icon.png', 'Ankit Chetu', '2017-02-02T14:31:31+0000', 'https://www.facebook.com/pg/Merchant+1-666741620153385/reviews/', 'Hello i am here to write a review because this page providing me lot of offers.', NULL, NULL, NULL, NULL, NULL, NULL, '3066953230359821486045891', 1),
(337, 204, '14985763635588501485181245', '4.00', 'img/facebook-icon.png', 'Vineet Kumar Arya', '2017-01-23T14:20:45+0000', 'https://www.facebook.com/pg/Merchant+1-666741620153385/reviews/', 'Hi Good Lorem ipsum dummy content. So it is usefullllll........', NULL, NULL, NULL, NULL, NULL, NULL, '14985763635588501485181245', 1),
(338, 204, '2907511014327961485175188', '4.00', 'img/facebook-icon.png', 'Rakesh Maurya', '2017-01-23T12:39:48+0000', 'https://www.facebook.com/pg/Merchant+1-666741620153385/reviews/', 'Hello this page is providing promotional offers', NULL, NULL, NULL, NULL, NULL, NULL, '2907511014327961485175188', 1),
(339, 202, '3216691', '5.00', 'img/zillow.png', 'zoyaclestenkof', '2017-03-29', 'http://www.zillow.com/profile/user27708862/Reviews/?review=3216691', 'Stacy was reliable, prompt, courteous and very knowledgeable in helping us buy a home. She made purchasing a home a pleasant experience, and found us exactly what we needed in a short period of time. ...', 'http://www.zillow.com/profile/zoyaclestenkof/', NULL, 'Showed home in 2005 in Abbott Loop, Anchorage, AK 99507.', '3216691', NULL, NULL, NULL, 0),
(340, 202, '3214468', '5.00', 'img/zillow.png', 'zuser20160314213832983', '2017-03-28', 'http://www.zillow.com/profile/user27708862/Reviews/?review=3214468', 'I began working with Stacy in April of 2016 when I was looking to rent an apartment/condo. She was the licensee for the property listed that I was looking at, and after I obtained the lease of said property, ...', 'http://www.zillow.com/profile/zuser20160314213832983/', NULL, 'Bought a Condo home in 2017 in Scenic Foothills, Anchorage, AK.', '3214468', NULL, NULL, NULL, 0),
(341, 202, '1693525', '5.00', 'img/zillow.png', 'AKjes', '2015-04-07', 'http://www.zillow.com/profile/user27708862/Reviews/?review=1693525', 'i have purchased a house previously with another realtor, so am able to compare this experience with the previous- that said, I highly recommend Stacy and would work with her again. <br/>I have only good ...', '', NULL, 'Bought a Single Family home in 2015 in Bayshore-Klatt, Anchorage, AK.', '1693525', NULL, NULL, NULL, 0),
(342, 202, '2ZQV5b75oCItb4Np2sIwrw', '5.00', 'img/yelp-icon.png', 'E H.', '2017-11-04 15:12:40', 'https://www.yelp.com/biz/pamir-kabob-house-san-diego?hrid=2ZQV5b75oCItb4Np2sIwrw&adjust_creative=yLRKI4b4orlxDvOUmYsS9A&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_reviews&utm_source=yLRKI4b4orlxDvOUmYsS9A', 'Really good and tasty food. Family run, I like it very much and will be back. Thank you Diba (Mom) and chef (hubby) and girls (greeters :). \n\nHEADS UP: they...', 'https://s3-media1.fl.yelpcdn.com/photo/wM4XCz6zwojiLhOKv2PBrA/o.jpg', NULL, NULL, NULL, NULL, '2ZQV5b75oCItb4Np2sIwrw', NULL, 0),
(343, 202, 'cFNrVLmOT7inPvUhPugK6A', '4.00', 'img/yelp-icon.png', 'Natalia Y.', '2017-11-07 19:11:58', 'https://www.yelp.com/biz/pamir-kabob-house-san-diego?hrid=cFNrVLmOT7inPvUhPugK6A&adjust_creative=yLRKI4b4orlxDvOUmYsS9A&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_reviews&utm_source=yLRKI4b4orlxDvOUmYsS9A', 'Very nice place. Great food & tea. Pretty good baklava. Amazing service. I loved floor seating. So relaxing.\n\nWe had:\nManty - 4\nSamosas - 3 (wasn\'t out...', 'https://s3-media3.fl.yelpcdn.com/photo/ae3T-ubela5z3uXIotU1Ng/o.jpg', NULL, NULL, NULL, NULL, 'cFNrVLmOT7inPvUhPugK6A', NULL, 0),
(344, 202, '_AcQ41DeGFwHnORpxvU4nA', '4.00', 'img/yelp-icon.png', 'Su T.', '2017-10-21 07:51:59', 'https://www.yelp.com/biz/pamir-kabob-house-san-diego?hrid=_AcQ41DeGFwHnORpxvU4nA&adjust_creative=yLRKI4b4orlxDvOUmYsS9A&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_reviews&utm_source=yLRKI4b4orlxDvOUmYsS9A', 'There is a bit of a musty smell inside but once you get past that the food and customer service are pretty good. Everything is authentic. I\'ve been here...', 'https://s3-media1.fl.yelpcdn.com/photo/S4VuaFcnDCGdPWpPXCehNA/o.jpg', NULL, NULL, NULL, NULL, '_AcQ41DeGFwHnORpxvU4nA', NULL, 0),
(345, 204, '17307965036597441511431810', '4.00', 'img/facebook-icon.png', 'Dharmveer Thakur', '2017-11-23T10:10:10+0000', 'https://www.facebook.com/pg/Sprint5+Test+Demo-1921248051491991/reviews/', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', NULL, NULL, NULL, NULL, NULL, NULL, '17307965036597441511431810', 0),
(346, 204, '15784515788677181511431693', '5.00', 'img/facebook-icon.png', 'Rajesh Kumar Singh', '2017-11-23T10:08:13+0000', 'https://www.facebook.com/pg/Sprint5+Test+Demo-1921248051491991/reviews/', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', NULL, NULL, NULL, NULL, NULL, NULL, '15784515788677181511431693', 0),
(347, 204, '6570933580126421512658072', '5.00', 'img/facebook-icon.png', 'Ajay Chetu', '2017-12-07T14:47:52+0000', 'https://www.facebook.com/pg/Sprint5+Test+Demo-1921248051491991/reviews/', 'test review 07 dec\nasdfasdfasdfasdfasdfasdf', NULL, NULL, NULL, NULL, NULL, NULL, '6570933580126421512658072', 0),
(348, 208, '2ZQV5b75oCItb4Np2sIwrw', '5.00', 'img/yelp-icon.png', 'E H.', '2017-11-04 15:12:40', 'https://www.yelp.com/biz/pamir-kabob-house-san-diego?hrid=2ZQV5b75oCItb4Np2sIwrw&adjust_creative=yLRKI4b4orlxDvOUmYsS9A&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_reviews&utm_source=yLRKI4b4orlxDvOUmYsS9A', 'Really good and tasty food. Family run, I like it very much and will be back. Thank you Diba (Mom) and chef (hubby) and girls (greeters :). \n\nHEADS UP: they...', 'https://s3-media1.fl.yelpcdn.com/photo/wM4XCz6zwojiLhOKv2PBrA/o.jpg', NULL, NULL, NULL, NULL, '2ZQV5b75oCItb4Np2sIwrw', NULL, 0),
(349, 208, 'cFNrVLmOT7inPvUhPugK6A', '4.00', 'img/yelp-icon.png', 'Natalia Y.', '2017-11-07 19:11:58', 'https://www.yelp.com/biz/pamir-kabob-house-san-diego?hrid=cFNrVLmOT7inPvUhPugK6A&adjust_creative=yLRKI4b4orlxDvOUmYsS9A&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_reviews&utm_source=yLRKI4b4orlxDvOUmYsS9A', 'Very nice place. Great food & tea. Pretty good baklava. Amazing service. I loved floor seating. So relaxing.\n\nWe had:\nManty - 4\nSamosas - 3 (wasn\'t out...', 'https://s3-media3.fl.yelpcdn.com/photo/ae3T-ubela5z3uXIotU1Ng/o.jpg', NULL, NULL, NULL, NULL, 'cFNrVLmOT7inPvUhPugK6A', NULL, 0),
(350, 208, '_AcQ41DeGFwHnORpxvU4nA', '4.00', 'img/yelp-icon.png', 'Su T.', '2017-10-21 07:51:59', 'https://www.yelp.com/biz/pamir-kabob-house-san-diego?hrid=_AcQ41DeGFwHnORpxvU4nA&adjust_creative=yLRKI4b4orlxDvOUmYsS9A&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_reviews&utm_source=yLRKI4b4orlxDvOUmYsS9A', 'There is a bit of a musty smell inside but once you get past that the food and customer service are pretty good. Everything is authentic. I\'ve been here...', 'https://s3-media1.fl.yelpcdn.com/photo/S4VuaFcnDCGdPWpPXCehNA/o.jpg', NULL, NULL, NULL, NULL, '_AcQ41DeGFwHnORpxvU4nA', NULL, 0),
(351, 209, '2ZQV5b75oCItb4Np2sIwrw', '5.00', 'img/yelp-icon.png', 'E H.', '2017-11-04 15:12:40', 'https://www.yelp.com/biz/pamir-kabob-house-san-diego?hrid=2ZQV5b75oCItb4Np2sIwrw&adjust_creative=yLRKI4b4orlxDvOUmYsS9A&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_reviews&utm_source=yLRKI4b4orlxDvOUmYsS9A', 'Really good and tasty food. Family run, I like it very much and will be back. Thank you Diba (Mom) and chef (hubby) and girls (greeters :). \n\nHEADS UP: they...', 'https://s3-media1.fl.yelpcdn.com/photo/wM4XCz6zwojiLhOKv2PBrA/o.jpg', NULL, NULL, NULL, NULL, '2ZQV5b75oCItb4Np2sIwrw', NULL, 1),
(352, 209, 'cFNrVLmOT7inPvUhPugK6A', '4.00', 'img/yelp-icon.png', 'Natalia Y.', '2017-11-07 19:11:58', 'https://www.yelp.com/biz/pamir-kabob-house-san-diego?hrid=cFNrVLmOT7inPvUhPugK6A&adjust_creative=yLRKI4b4orlxDvOUmYsS9A&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_reviews&utm_source=yLRKI4b4orlxDvOUmYsS9A', 'Very nice place. Great food & tea. Pretty good baklava. Amazing service. I loved floor seating. So relaxing.\n\nWe had:\nManty - 4\nSamosas - 3 (wasn\'t out...', 'https://s3-media3.fl.yelpcdn.com/photo/ae3T-ubela5z3uXIotU1Ng/o.jpg', NULL, NULL, NULL, NULL, 'cFNrVLmOT7inPvUhPugK6A', NULL, 1),
(353, 209, '_AcQ41DeGFwHnORpxvU4nA', '4.00', 'img/yelp-icon.png', 'Su T.', '2017-10-21 07:51:59', 'https://www.yelp.com/biz/pamir-kabob-house-san-diego?hrid=_AcQ41DeGFwHnORpxvU4nA&adjust_creative=yLRKI4b4orlxDvOUmYsS9A&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_reviews&utm_source=yLRKI4b4orlxDvOUmYsS9A', 'There is a bit of a musty smell inside but once you get past that the food and customer service are pretty good. Everything is authentic. I\'ve been here...', 'https://s3-media1.fl.yelpcdn.com/photo/S4VuaFcnDCGdPWpPXCehNA/o.jpg', NULL, NULL, NULL, NULL, '_AcQ41DeGFwHnORpxvU4nA', NULL, 1),
(354, 209, '3066953230359821486045891', '5.00', 'img/facebook-icon.png', 'Ankit Chetu', '2017-02-02T14:31:31+0000', 'https://www.facebook.com/pg/Merchant+1-666741620153385/reviews/', 'Hello i am here to write a review because this page providing me lot of offers.', NULL, NULL, NULL, NULL, NULL, NULL, '3066953230359821486045891', 1),
(355, 209, '14985763635588501485181245', '4.00', 'img/facebook-icon.png', 'Vineet Kumar Arya', '2017-01-23T14:20:45+0000', 'https://www.facebook.com/pg/Merchant+1-666741620153385/reviews/', 'Hi Good Lorem ipsum dummy content. So it is usefullllll........', NULL, NULL, NULL, NULL, NULL, NULL, '14985763635588501485181245', 1),
(356, 209, '2907511014327961485175188', '4.00', 'img/facebook-icon.png', 'Rakesh Maurya', '2017-01-23T12:39:48+0000', 'https://www.facebook.com/pg/Merchant+1-666741620153385/reviews/', 'Hello this page is providing promotional offers', NULL, NULL, NULL, NULL, NULL, NULL, '2907511014327961485175188', 1),
(357, 211, '3066953230359821486045891', '5.00', 'img/facebook-icon.png', 'Ankit Chetu', '2017-02-02T14:31:31+0000', 'https://www.facebook.com/pg/Merchant+1-666741620153385/reviews/', 'Hello i am here to write a review because this page providing me lot of offers.', NULL, NULL, NULL, NULL, NULL, NULL, '3066953230359821486045891', 0),
(358, 211, '14985763635588501485181245', '4.00', 'img/facebook-icon.png', 'Vineet Kumar Arya', '2017-01-23T14:20:45+0000', 'https://www.facebook.com/pg/Merchant+1-666741620153385/reviews/', 'Hi Good Lorem ipsum dummy content. So it is usefullllll........', NULL, NULL, NULL, NULL, NULL, NULL, '14985763635588501485181245', 0),
(359, 211, '2907511014327961485175188', '4.00', 'img/facebook-icon.png', 'Rakesh Maurya', '2017-01-23T12:39:48+0000', 'https://www.facebook.com/pg/Merchant+1-666741620153385/reviews/', 'Hello this page is providing promotional offers', NULL, NULL, NULL, NULL, NULL, NULL, '2907511014327961485175188', 0),
(360, 170, '2H9gGcuSJCSrN_EjaY89aQ', '5.00', 'img/yelp-icon.png', 'Brittni W.', '2016-09-13 22:54:44', 'https://www.yelp.com/biz/partners-real-estate-eagle-river?hrid=2H9gGcuSJCSrN_EjaY89aQ&adjust_creative=yLRKI4b4orlxDvOUmYsS9A&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_reviews&utm_source=yLRKI4b4orlxDvOUmYsS9A', 'We have been using Partners Real Estate since we first landed in Alaska a few years ago.  We started as renters, they were strict about cleanliness and...', 'https://s3-media2.fl.yelpcdn.com/photo/InpLWAKhGZkkPRkdalmzIw/o.jpg', NULL, NULL, NULL, NULL, '2H9gGcuSJCSrN_EjaY89aQ', NULL, 0),
(361, 170, 'd65SlxOfx2w1vj6kcszcvg', '2.00', 'img/yelp-icon.png', 'Michael S.', '2017-04-11 22:53:08', 'https://www.yelp.com/biz/partners-real-estate-eagle-river?hrid=d65SlxOfx2w1vj6kcszcvg&adjust_creative=yLRKI4b4orlxDvOUmYsS9A&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_reviews&utm_source=yLRKI4b4orlxDvOUmYsS9A', 'I\'ll begin with saying I\'ve never had a problem with any real estate or property management company before. I\'ve never had any damages to property, and I\'ve...', '', NULL, NULL, NULL, NULL, 'd65SlxOfx2w1vj6kcszcvg', NULL, 0),
(362, 170, 'istgEquSIh88PfQN7jARbw', '5.00', 'img/yelp-icon.png', 'Natalie J.', '2017-01-31 10:45:11', 'https://www.yelp.com/biz/partners-real-estate-eagle-river?hrid=istgEquSIh88PfQN7jARbw&adjust_creative=yLRKI4b4orlxDvOUmYsS9A&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_reviews&utm_source=yLRKI4b4orlxDvOUmYsS9A', 'Partners Real Estate is a great company for buying, selling and managing. Brandon is a hard worker. They are managing my townhouse and got it rented in one...', '', NULL, NULL, NULL, NULL, 'istgEquSIh88PfQN7jARbw', NULL, 0),
(363, 209, '6570933580126421512658072', '5.00', 'img/facebook-icon.png', 'Ajay Chetu', '2017-12-07T14:47:52+0000', 'https://www.facebook.com/pg/Sprint5+Test+Demo-1921248051491991/reviews/', 'test review 07 dec\nasdfasdfasdfasdfasdfasdf', NULL, NULL, NULL, NULL, NULL, NULL, '6570933580126421512658072', 0),
(364, 209, '17307965036597441511431810', '4.00', 'img/facebook-icon.png', 'Dharmveer Thakur', '2017-11-23T10:10:10+0000', 'https://www.facebook.com/pg/Sprint5+Test+Demo-1921248051491991/reviews/', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', NULL, NULL, NULL, NULL, NULL, NULL, '17307965036597441511431810', 0),
(365, 209, '15784515788677181511431693', '5.00', 'img/facebook-icon.png', 'Rajesh Kumar Singh', '2017-11-23T10:08:13+0000', 'https://www.facebook.com/pg/Sprint5+Test+Demo-1921248051491991/reviews/', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', NULL, NULL, NULL, NULL, NULL, NULL, '15784515788677181511431693', 0),
(366, 209, '-qgmPjM-A0BF3LQ4_8ValQ', '5.00', 'img/yelp-icon.png', 'Todd P.', '2015-10-19 16:49:44', 'https://www.yelp.com/biz/elite-event-dinner-with-the-chef-at-avant-san-diego?hrid=-qgmPjM-A0BF3LQ4_8ValQ&adjust_creative=yLRKI4b4orlxDvOUmYsS9A&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_reviews&utm_source=yLRKI4b4orlxDvOUmYsS9A', 'I went home comfortably stuffed and quite cheery.\nFirst off I want to share how goofy we are, not knowing how to find the front of this place. Having never...', 'https://s3-media2.fl.yelpcdn.com/photo/DOywnfnEZEWhGeQP3Uv-rw/o.jpg', NULL, NULL, NULL, NULL, '-qgmPjM-A0BF3LQ4_8ValQ', NULL, 0),
(367, 209, 'DnZlNOaFCZgaP70U-My3dQ', '5.00', 'img/yelp-icon.png', 'Vicki C.', '2015-06-11 11:18:56', 'https://www.yelp.com/biz/elite-event-dinner-with-the-chef-at-avant-san-diego?hrid=DnZlNOaFCZgaP70U-My3dQ&adjust_creative=yLRKI4b4orlxDvOUmYsS9A&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_reviews&utm_source=yLRKI4b4orlxDvOUmYsS9A', 'AVANT raised the bar, this was an exceptional Yelp Elite event. A small group of lucky Elites were treated to a full dining experience with cocktails,...', 'https://s3-media1.fl.yelpcdn.com/photo/0jaWzCGcPNTrtPPA5S1VYg/o.jpg', NULL, NULL, NULL, NULL, 'DnZlNOaFCZgaP70U-My3dQ', NULL, 0),
(368, 209, 'JGXuyFcIBnG2JSG4fubMhA', '5.00', 'img/yelp-icon.png', 'Daphne L.', '2015-06-09 22:58:42', 'https://www.yelp.com/biz/elite-event-dinner-with-the-chef-at-avant-san-diego?hrid=JGXuyFcIBnG2JSG4fubMhA&adjust_creative=yLRKI4b4orlxDvOUmYsS9A&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_reviews&utm_source=yLRKI4b4orlxDvOUmYsS9A', 'I\'ve put my foot down: my new \"last meal\" would be the Braised Lamb Shank AVANT served tonight. This was absolutely to die for and I cannot even explain...', 'https://s3-media2.fl.yelpcdn.com/photo/n_lCus_1NG0I82n2N0DbRA/o.jpg', NULL, NULL, NULL, NULL, 'JGXuyFcIBnG2JSG4fubMhA', NULL, 0),
(369, 212, '3442673', '5.00', 'img/zillow.png', 'Ashley jasper', '2017-06-30', 'http://www.zillow.com/profile/tim7558/Reviews/?review=3442673', 'First time home buyers, met Tim as he was showing us a rental, we discussed our shock of the area\'s high rental costs and he suggested buying our own home.  My husband is active duty and we have always ...', 'http://www.zillow.com/profile/zuser20170302040858501/', NULL, 'Bought a Single Family home in 2017 in Eagle River, Eagle River, AK.', '3442673', NULL, NULL, NULL, 0),
(370, 212, '3414470', '5.00', 'img/zillow.png', 'live4fishin31', '2017-06-19', 'http://www.zillow.com/profile/tim7558/Reviews/?review=3414470', 'Tim gave us one of the best home buying experiences we ever could have imagined. We were extremely picky, and Tim found us our dream home. This is our second house we\'ve bought and Tim was by far, way ...', 'http://www.zillow.com/profile/live4fishin31/', NULL, 'Bought a home in 2017 in Suntrana, Healy, AK 99755.', '3414470', NULL, NULL, NULL, 0),
(371, 212, '3380728', '5.00', 'img/zillow.png', 'user3540461', '2017-06-04', 'http://www.zillow.com/profile/tim7558/Reviews/?review=3380728', 'Tim went ABOVE and BEYOND for us! Whenever, however we need a question answered or something done he responded quickly and did whatever needed to be done. He kept in constant contact with the sellers ...', 'http://www.zillow.com/profile/user3540461/', NULL, 'Bought a Single Family home in 2017 in Wasilla, AK.', '3380728', NULL, NULL, NULL, 0),
(372, 212, '3075792', '5.00', 'img/zillow.png', 'zuser20140922074735562', '2017-01-27', 'http://www.zillow.com/profile/tim7558/Reviews/?review=3075792', 'What made you decide to buy/sell your home?<br/>While doing a comparison of rentals in the area and mortgage rates, we did not want to throw away upwards of $36k a year and since were military were going ...', 'http://www.zillow.com/profile/zuser20140922074735562/', NULL, 'Bought a Single Family home in 2016 in South Fork, Eagle River, AK.', '3075792', NULL, NULL, NULL, 0),
(373, 212, '-qgmPjM-A0BF3LQ4_8ValQ', '5.00', 'img/yelp-icon.png', 'Todd P.', '2015-10-19 16:49:44', 'https://www.yelp.com/biz/elite-event-dinner-with-the-chef-at-avant-san-diego?hrid=-qgmPjM-A0BF3LQ4_8ValQ&adjust_creative=yLRKI4b4orlxDvOUmYsS9A&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_reviews&utm_source=yLRKI4b4orlxDvOUmYsS9A', 'I went home comfortably stuffed and quite cheery.\nFirst off I want to share how goofy we are, not knowing how to find the front of this place. Having never...', 'https://s3-media2.fl.yelpcdn.com/photo/DOywnfnEZEWhGeQP3Uv-rw/o.jpg', NULL, NULL, NULL, NULL, '-qgmPjM-A0BF3LQ4_8ValQ', NULL, 0),
(374, 212, 'DnZlNOaFCZgaP70U-My3dQ', '5.00', 'img/yelp-icon.png', 'Vicki C.', '2015-06-11 11:18:56', 'https://www.yelp.com/biz/elite-event-dinner-with-the-chef-at-avant-san-diego?hrid=DnZlNOaFCZgaP70U-My3dQ&adjust_creative=yLRKI4b4orlxDvOUmYsS9A&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_reviews&utm_source=yLRKI4b4orlxDvOUmYsS9A', 'AVANT raised the bar, this was an exceptional Yelp Elite event. A small group of lucky Elites were treated to a full dining experience with cocktails,...', 'https://s3-media1.fl.yelpcdn.com/photo/0jaWzCGcPNTrtPPA5S1VYg/o.jpg', NULL, NULL, NULL, NULL, 'DnZlNOaFCZgaP70U-My3dQ', NULL, 0),
(375, 212, 'JGXuyFcIBnG2JSG4fubMhA', '5.00', 'img/yelp-icon.png', 'Daphne L.', '2015-06-09 22:58:42', 'https://www.yelp.com/biz/elite-event-dinner-with-the-chef-at-avant-san-diego?hrid=JGXuyFcIBnG2JSG4fubMhA&adjust_creative=yLRKI4b4orlxDvOUmYsS9A&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_reviews&utm_source=yLRKI4b4orlxDvOUmYsS9A', 'I\'ve put my foot down: my new \"last meal\" would be the Braised Lamb Shank AVANT served tonight. This was absolutely to die for and I cannot even explain...', 'https://s3-media2.fl.yelpcdn.com/photo/n_lCus_1NG0I82n2N0DbRA/o.jpg', NULL, NULL, NULL, NULL, 'JGXuyFcIBnG2JSG4fubMhA', NULL, 0),
(376, 212, '3066953230359821486045891', '5.00', 'img/facebook-icon.png', 'Ankit Chetu', '2017-02-02T14:31:31+0000', 'https://www.facebook.com/pg/Merchant+1-666741620153385/reviews/', 'Hello i am here to write a review because this page providing me lot of offers.', NULL, NULL, NULL, NULL, NULL, NULL, '3066953230359821486045891', 0),
(377, 212, '14985763635588501485181245', '4.00', 'img/facebook-icon.png', 'Vineet Kumar Arya', '2017-01-23T14:20:45+0000', 'https://www.facebook.com/pg/Merchant+1-666741620153385/reviews/', 'Hi Good Lorem ipsum dummy content. So it is usefullllll........', NULL, NULL, NULL, NULL, NULL, NULL, '14985763635588501485181245', 0),
(378, 212, '2907511014327961485175188', '4.00', 'img/facebook-icon.png', 'Rakesh Maurya', '2017-01-23T12:39:48+0000', 'https://www.facebook.com/pg/Merchant+1-666741620153385/reviews/', 'Hello this page is providing promotional offers', NULL, NULL, NULL, NULL, NULL, NULL, '2907511014327961485175188', 0),
(379, 214, '3216691', '5.00', 'img/zillow.png', 'zoyaclestenkof', '2017-03-29', 'http://www.zillow.com/profile/user27708862/Reviews/?review=3216691', 'Stacy was reliable, prompt, courteous and very knowledgeable in helping us buy a home. She made purchasing a home a pleasant experience, and found us exactly what we needed in a short period of time. ...', 'http://www.zillow.com/profile/zoyaclestenkof/', NULL, 'Showed home in 2005 in Abbott Loop, Anchorage, AK 99507.', '3216691', NULL, NULL, NULL, 0),
(380, 214, '3214468', '5.00', 'img/zillow.png', 'zuser20160314213832983', '2017-03-28', 'http://www.zillow.com/profile/user27708862/Reviews/?review=3214468', 'I began working with Stacy in April of 2016 when I was looking to rent an apartment/condo. She was the licensee for the property listed that I was looking at, and after I obtained the lease of said property, ...', 'http://www.zillow.com/profile/zuser20160314213832983/', NULL, 'Bought a Condo home in 2017 in Scenic Foothills, Anchorage, AK.', '3214468', NULL, NULL, NULL, 0),
(381, 214, '1693525', '5.00', 'img/zillow.png', 'AKjes', '2015-04-07', 'http://www.zillow.com/profile/user27708862/Reviews/?review=1693525', 'i have purchased a house previously with another realtor, so am able to compare this experience with the previous- that said, I highly recommend Stacy and would work with her again. <br/>I have only good ...', '', NULL, 'Bought a Single Family home in 2015 in Bayshore-Klatt, Anchorage, AK.', '1693525', NULL, NULL, NULL, 0);
INSERT INTO `api_reviews` (`id`, `user_id`, `review_id`, `rating`, `source_img`, `reviewer_name`, `review_date`, `review_url`, `review_desc`, `reviewer_profile_url`, `google_relative_time`, `zillow_review_summary`, `zillow_review_id`, `google_review_id`, `yelp_review_id`, `facebook_review_id`, `deleted`) VALUES
(382, 214, '2H9gGcuSJCSrN_EjaY89aQ', '5.00', 'img/yelp-icon.png', 'Brittni W.', '2016-09-13 22:54:44', 'https://www.yelp.com/biz/partners-real-estate-eagle-river?hrid=2H9gGcuSJCSrN_EjaY89aQ&adjust_creative=yLRKI4b4orlxDvOUmYsS9A&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_reviews&utm_source=yLRKI4b4orlxDvOUmYsS9A', 'We have been using Partners Real Estate since we first landed in Alaska a few years ago.  We started as renters, they were strict about cleanliness and...', 'https://s3-media2.fl.yelpcdn.com/photo/InpLWAKhGZkkPRkdalmzIw/o.jpg', NULL, NULL, NULL, NULL, '2H9gGcuSJCSrN_EjaY89aQ', NULL, 0),
(383, 214, 'd65SlxOfx2w1vj6kcszcvg', '2.00', 'img/yelp-icon.png', 'Michael S.', '2017-04-11 22:53:08', 'https://www.yelp.com/biz/partners-real-estate-eagle-river?hrid=d65SlxOfx2w1vj6kcszcvg&adjust_creative=yLRKI4b4orlxDvOUmYsS9A&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_reviews&utm_source=yLRKI4b4orlxDvOUmYsS9A', 'I\'ll begin with saying I\'ve never had a problem with any real estate or property management company before. I\'ve never had any damages to property, and I\'ve...', '', NULL, NULL, NULL, NULL, 'd65SlxOfx2w1vj6kcszcvg', NULL, 0),
(384, 214, 'istgEquSIh88PfQN7jARbw', '5.00', 'img/yelp-icon.png', 'Natalie J.', '2017-01-31 10:45:11', 'https://www.yelp.com/biz/partners-real-estate-eagle-river?hrid=istgEquSIh88PfQN7jARbw&adjust_creative=yLRKI4b4orlxDvOUmYsS9A&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_reviews&utm_source=yLRKI4b4orlxDvOUmYsS9A', 'Partners Real Estate is a great company for buying, selling and managing. Brandon is a hard worker. They are managing my townhouse and got it rented in one...', '', NULL, NULL, NULL, NULL, 'istgEquSIh88PfQN7jARbw', NULL, 0),
(385, 220, '101876689730805561109', '5.00', 'img/Google.png', 'christina fogg', '2017-11-16 02:07:57', 'https://www.google.com/maps/contrib/101876689730805561109/reviews', 'Brandon is AMAZING!!! He help sell my home back in 2015 and helped my husband and I buy our new home (2017). When the sellers were being unreasonable he went to bat for us and got the deal where it worked best for us. His whole team were all helpful in any questions we had. If you are looking to buy or rent in Alaska look up Partners Realty and ask for Brandon Thorud. He will make it a smooth and fun experience.', 'https://lh3.googleusercontent.com/-MiEriSll9pI/AAAAAAAAAAI/AAAAAAAAAAA/AFiYof3b7Zs32NrfSP1udYjjW-NsOEOG2g/s128-c0x00000000-cc-rp-mo/photo.jpg', '3 weeks ago', NULL, NULL, '101876689730805561109', NULL, NULL, 0),
(386, 220, '117230349546220471870', '5.00', 'img/Google.png', 'Traci Lenard', '2017-08-16 23:13:54', 'https://www.google.com/maps/contrib/117230349546220471870/reviews', 'Kim and Terry are a great team! They were very communicative throughout the entire process, making the sale of the property as seamless as possible. They are personable and professional. I couldn\'t have been more comfortable and pleased to have their help!', 'https://lh5.googleusercontent.com/-bet4-ch3JT8/AAAAAAAAAAI/AAAAAAAAAAA/AFiYof1fAcAmyu45h7OF0T0NpDOGMOuWFA/s128-c0x00000000-cc-rp-mo/photo.jpg', '3 months ago', NULL, NULL, '117230349546220471870', NULL, NULL, 0),
(387, 220, '118017591695459869073', '1.00', 'img/Google.png', 'Anna Smelser', '2017-11-03 18:05:26', 'https://www.google.com/maps/contrib/118017591695459869073/reviews', 'All Iâ€™m going to say is I wish we never signed a lease with them! I canâ€™t wait till August 2018 when our lease is up! Will never use them again.', 'https://lh3.googleusercontent.com/-bzm7o5k-oOw/AAAAAAAAAAI/AAAAAAAAAAA/AFiYof2zN9jTUOlSOm3JfyRGw4K55EvqKQ/s128-c0x00000000-cc-rp-mo/photo.jpg', 'a month ago', NULL, NULL, '118017591695459869073', NULL, NULL, 0),
(388, 220, '102631988454298483310', '5.00', 'img/Google.png', 'Brittni Anderson', '2016-12-01 16:29:56', 'https://www.google.com/maps/contrib/102631988454298483310/reviews', 'We started out as renters through Partners when we first got stationed in Alaska.  They were helpful and got us into an affordable home within 2 days.  Any time we had issues maintenance was quick to respond in a timely manner. They were strict but fair which is why we chose them to help us buy our first house.  When it was time for us to leave Alaska for our next adventure we were confident leaving them in charge of our property. They had renters in our house in less than a week.  Brandon has gone above and beyond with communication. Would definitely recommend.', 'https://lh5.googleusercontent.com/-7JVeKlIsIGU/AAAAAAAAAAI/AAAAAAAAAAA/AFiYof2cTTRLD7nCSKuI9yGYo8jASqQ0ig/s128-c0x00000000-cc-rp-mo/photo.jpg', 'a year ago', NULL, NULL, '102631988454298483310', NULL, NULL, 0),
(389, 220, '111993907216625355573', '1.00', 'img/Google.png', 'haley lienhart', '2017-09-02 18:44:27', 'https://www.google.com/maps/contrib/111993907216625355573/reviews', 'Unorganized company. Will give you multiple different answers for questions, have lost payments, takes forever to get any sort of response when leaving messages.', 'https://lh3.googleusercontent.com/-CUMGHbxGQ08/AAAAAAAAAAI/AAAAAAAAAAA/AFiYof1_YgQFRmst_ej-UyHzJyu2nD9Xtw/s128-c0x00000000-cc-rp-mo/photo.jpg', '3 months ago', NULL, NULL, '111993907216625355573', NULL, NULL, 0),
(390, 185, '101876689730805561109', '5.00', 'img/Google.png', 'christina fogg', '2017-11-16 02:07:57', 'https://www.google.com/maps/contrib/101876689730805561109/reviews', 'Brandon is AMAZING!!! He help sell my home back in 2015 and helped my husband and I buy our new home (2017). When the sellers were being unreasonable he went to bat for us and got the deal where it worked best for us. His whole team were all helpful in any questions we had. If you are looking to buy or rent in Alaska look up Partners Realty and ask for Brandon Thorud. He will make it a smooth and fun experience.', 'https://lh3.googleusercontent.com/-MiEriSll9pI/AAAAAAAAAAI/AAAAAAAAAAA/AFiYof3b7Zs32NrfSP1udYjjW-NsOEOG2g/s128-c0x00000000-cc-rp-mo/photo.jpg', '3 weeks ago', NULL, NULL, '101876689730805561109', NULL, NULL, 0),
(391, 185, '117230349546220471870', '5.00', 'img/Google.png', 'Traci Lenard', '2017-08-16 23:13:54', 'https://www.google.com/maps/contrib/117230349546220471870/reviews', 'Kim and Terry are a great team! They were very communicative throughout the entire process, making the sale of the property as seamless as possible. They are personable and professional. I couldn\'t have been more comfortable and pleased to have their help!', 'https://lh5.googleusercontent.com/-bet4-ch3JT8/AAAAAAAAAAI/AAAAAAAAAAA/AFiYof1fAcAmyu45h7OF0T0NpDOGMOuWFA/s128-c0x00000000-cc-rp-mo/photo.jpg', '3 months ago', NULL, NULL, '117230349546220471870', NULL, NULL, 0),
(392, 185, '118017591695459869073', '1.00', 'img/Google.png', 'Anna Smelser', '2017-11-03 18:05:26', 'https://www.google.com/maps/contrib/118017591695459869073/reviews', 'All Iâ€™m going to say is I wish we never signed a lease with them! I canâ€™t wait till August 2018 when our lease is up! Will never use them again.', 'https://lh3.googleusercontent.com/-bzm7o5k-oOw/AAAAAAAAAAI/AAAAAAAAAAA/AFiYof2zN9jTUOlSOm3JfyRGw4K55EvqKQ/s128-c0x00000000-cc-rp-mo/photo.jpg', 'a month ago', NULL, NULL, '118017591695459869073', NULL, NULL, 0),
(393, 185, '102631988454298483310', '5.00', 'img/Google.png', 'Brittni Anderson', '2016-12-01 16:29:56', 'https://www.google.com/maps/contrib/102631988454298483310/reviews', 'We started out as renters through Partners when we first got stationed in Alaska.  They were helpful and got us into an affordable home within 2 days.  Any time we had issues maintenance was quick to respond in a timely manner. They were strict but fair which is why we chose them to help us buy our first house.  When it was time for us to leave Alaska for our next adventure we were confident leaving them in charge of our property. They had renters in our house in less than a week.  Brandon has gone above and beyond with communication. Would definitely recommend.', 'https://lh5.googleusercontent.com/-7JVeKlIsIGU/AAAAAAAAAAI/AAAAAAAAAAA/AFiYof2cTTRLD7nCSKuI9yGYo8jASqQ0ig/s128-c0x00000000-cc-rp-mo/photo.jpg', 'a year ago', NULL, NULL, '102631988454298483310', NULL, NULL, 0),
(394, 185, '111993907216625355573', '1.00', 'img/Google.png', 'haley lienhart', '2017-09-02 18:44:27', 'https://www.google.com/maps/contrib/111993907216625355573/reviews', 'Unorganized company. Will give you multiple different answers for questions, have lost payments, takes forever to get any sort of response when leaving messages.', 'https://lh3.googleusercontent.com/-CUMGHbxGQ08/AAAAAAAAAAI/AAAAAAAAAAA/AFiYof1_YgQFRmst_ej-UyHzJyu2nD9Xtw/s128-c0x00000000-cc-rp-mo/photo.jpg', '3 months ago', NULL, NULL, '111993907216625355573', NULL, NULL, 0),
(395, 221, '101876689730805561109', '5.00', 'img/Google.png', 'christina fogg', '2017-11-16 02:07:57', 'https://www.google.com/maps/contrib/101876689730805561109/reviews', 'Brandon is AMAZING!!! He help sell my home back in 2015 and helped my husband and I buy our new home (2017). When the sellers were being unreasonable he went to bat for us and got the deal where it worked best for us. His whole team were all helpful in any questions we had. If you are looking to buy or rent in Alaska look up Partners Realty and ask for Brandon Thorud. He will make it a smooth and fun experience.', 'https://lh3.googleusercontent.com/-MiEriSll9pI/AAAAAAAAAAI/AAAAAAAAAAA/AFiYof3b7Zs32NrfSP1udYjjW-NsOEOG2g/s128-c0x00000000-cc-rp-mo/photo.jpg', '3 weeks ago', NULL, NULL, '101876689730805561109', NULL, NULL, 0),
(396, 221, '117230349546220471870', '5.00', 'img/Google.png', 'Traci Lenard', '2017-08-16 23:13:54', 'https://www.google.com/maps/contrib/117230349546220471870/reviews', 'Kim and Terry are a great team! They were very communicative throughout the entire process, making the sale of the property as seamless as possible. They are personable and professional. I couldn\'t have been more comfortable and pleased to have their help!', 'https://lh5.googleusercontent.com/-bet4-ch3JT8/AAAAAAAAAAI/AAAAAAAAAAA/AFiYof1fAcAmyu45h7OF0T0NpDOGMOuWFA/s128-c0x00000000-cc-rp-mo/photo.jpg', '3 months ago', NULL, NULL, '117230349546220471870', NULL, NULL, 0),
(397, 221, '118017591695459869073', '1.00', 'img/Google.png', 'Anna Smelser', '2017-11-03 18:05:26', 'https://www.google.com/maps/contrib/118017591695459869073/reviews', 'All Iâ€™m going to say is I wish we never signed a lease with them! I canâ€™t wait till August 2018 when our lease is up! Will never use them again.', 'https://lh3.googleusercontent.com/-bzm7o5k-oOw/AAAAAAAAAAI/AAAAAAAAAAA/AFiYof2zN9jTUOlSOm3JfyRGw4K55EvqKQ/s128-c0x00000000-cc-rp-mo/photo.jpg', 'a month ago', NULL, NULL, '118017591695459869073', NULL, NULL, 0),
(398, 221, '102631988454298483310', '5.00', 'img/Google.png', 'Brittni Anderson', '2016-12-01 16:29:56', 'https://www.google.com/maps/contrib/102631988454298483310/reviews', 'We started out as renters through Partners when we first got stationed in Alaska.  They were helpful and got us into an affordable home within 2 days.  Any time we had issues maintenance was quick to respond in a timely manner. They were strict but fair which is why we chose them to help us buy our first house.  When it was time for us to leave Alaska for our next adventure we were confident leaving them in charge of our property. They had renters in our house in less than a week.  Brandon has gone above and beyond with communication. Would definitely recommend.', 'https://lh5.googleusercontent.com/-7JVeKlIsIGU/AAAAAAAAAAI/AAAAAAAAAAA/AFiYof2cTTRLD7nCSKuI9yGYo8jASqQ0ig/s128-c0x00000000-cc-rp-mo/photo.jpg', 'a year ago', NULL, NULL, '102631988454298483310', NULL, NULL, 0),
(399, 221, '111993907216625355573', '1.00', 'img/Google.png', 'haley lienhart', '2017-09-02 18:44:27', 'https://www.google.com/maps/contrib/111993907216625355573/reviews', 'Unorganized company. Will give you multiple different answers for questions, have lost payments, takes forever to get any sort of response when leaving messages.', 'https://lh3.googleusercontent.com/-CUMGHbxGQ08/AAAAAAAAAAI/AAAAAAAAAAA/AFiYof1_YgQFRmst_ej-UyHzJyu2nD9Xtw/s128-c0x00000000-cc-rp-mo/photo.jpg', '3 months ago', NULL, NULL, '111993907216625355573', NULL, NULL, 0),
(400, 221, '3442673', '5.00', 'img/zillow.png', 'Ashley jasper', '2017-06-30', 'http://www.zillow.com/profile/tim7558/Reviews/?review=3442673', 'First time home buyers, met Tim as he was showing us a rental, we discussed our shock of the area\'s high rental costs and he suggested buying our own home.  My husband is active duty and we have always ...', 'http://www.zillow.com/profile/zuser20170302040858501/', NULL, 'Bought a Single Family home in 2017 in Eagle River, Eagle River, AK.', '3442673', NULL, NULL, NULL, 0),
(401, 221, '3414470', '5.00', 'img/zillow.png', 'live4fishin31', '2017-06-19', 'http://www.zillow.com/profile/tim7558/Reviews/?review=3414470', 'Tim gave us one of the best home buying experiences we ever could have imagined. We were extremely picky, and Tim found us our dream home. This is our second house we\'ve bought and Tim was by far, way ...', 'http://www.zillow.com/profile/live4fishin31/', NULL, 'Bought a home in 2017 in Suntrana, Healy, AK 99755.', '3414470', NULL, NULL, NULL, 0),
(402, 221, '3380728', '5.00', 'img/zillow.png', 'user3540461', '2017-06-04', 'http://www.zillow.com/profile/tim7558/Reviews/?review=3380728', 'Tim went ABOVE and BEYOND for us! Whenever, however we need a question answered or something done he responded quickly and did whatever needed to be done. He kept in constant contact with the sellers ...', 'http://www.zillow.com/profile/user3540461/', NULL, 'Bought a Single Family home in 2017 in Wasilla, AK.', '3380728', NULL, NULL, NULL, 0),
(403, 221, '3075792', '5.00', 'img/zillow.png', 'zuser20140922074735562', '2017-01-27', 'http://www.zillow.com/profile/tim7558/Reviews/?review=3075792', 'What made you decide to buy/sell your home?<br/>While doing a comparison of rentals in the area and mortgage rates, we did not want to throw away upwards of $36k a year and since were military were going ...', 'http://www.zillow.com/profile/zuser20140922074735562/', NULL, 'Bought a Single Family home in 2016 in South Fork, Eagle River, AK.', '3075792', NULL, NULL, NULL, 0),
(404, 221, 'JWtTzHgx0R8SewcKRTaF7A', '5.00', 'img/yelp-icon.png', 'B J.', '2017-10-10 14:45:12', 'https://www.yelp.com/biz/team-flores-real-estate-coldwell-banker-san-diego-2?hrid=JWtTzHgx0R8SewcKRTaF7A&adjust_creative=yLRKI4b4orlxDvOUmYsS9A&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_reviews&utm_source=yLRKI4b4orlxDvOUmYsS9A', 'Team Flores is one of the best real estate teams in San Diego area! Lorraine and Saundra always provided me with high quality service. Although they handle...', 'https://s3-media1.fl.yelpcdn.com/photo/cLLAmW6VslFQZ7Ii9q-KGg/o.jpg', NULL, NULL, NULL, NULL, 'JWtTzHgx0R8SewcKRTaF7A', NULL, 0),
(405, 221, '8-RP0w9WIeeXU4Z_8P8ohA', '5.00', 'img/yelp-icon.png', 'Jeff R.', '2017-06-28 18:59:58', 'https://www.yelp.com/biz/team-flores-real-estate-coldwell-banker-san-diego-2?hrid=8-RP0w9WIeeXU4Z_8P8ohA&adjust_creative=yLRKI4b4orlxDvOUmYsS9A&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_reviews&utm_source=yLRKI4b4orlxDvOUmYsS9A', 'Lorraine and Sandra were fantastic. The realtor we used for years relocated back east. We needed a new realtor and much to our good fortune we were...', '', NULL, NULL, NULL, NULL, '8-RP0w9WIeeXU4Z_8P8ohA', NULL, 0),
(406, 218, 'JWtTzHgx0R8SewcKRTaF7A', '5.00', 'img/yelp-icon.png', 'B J.', '2017-10-10 14:45:12', 'https://www.yelp.com/biz/team-flores-real-estate-coldwell-banker-san-diego-2?hrid=JWtTzHgx0R8SewcKRTaF7A&adjust_creative=yLRKI4b4orlxDvOUmYsS9A&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_reviews&utm_source=yLRKI4b4orlxDvOUmYsS9A', 'Team Flores is one of the best real estate teams in San Diego area! Lorraine and Saundra always provided me with high quality service. Although they handle...', 'https://s3-media1.fl.yelpcdn.com/photo/cLLAmW6VslFQZ7Ii9q-KGg/o.jpg', NULL, NULL, NULL, NULL, 'JWtTzHgx0R8SewcKRTaF7A', NULL, 0),
(407, 218, '8-RP0w9WIeeXU4Z_8P8ohA', '5.00', 'img/yelp-icon.png', 'Jeff R.', '2017-06-28 18:59:58', 'https://www.yelp.com/biz/team-flores-real-estate-coldwell-banker-san-diego-2?hrid=8-RP0w9WIeeXU4Z_8P8ohA&adjust_creative=yLRKI4b4orlxDvOUmYsS9A&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_reviews&utm_source=yLRKI4b4orlxDvOUmYsS9A', 'Lorraine and Sandra were fantastic. The realtor we used for years relocated back east. We needed a new realtor and much to our good fortune we were...', '', NULL, NULL, NULL, NULL, '8-RP0w9WIeeXU4Z_8P8ohA', NULL, 0),
(408, 218, '2H9gGcuSJCSrN_EjaY89aQ', '5.00', 'img/yelp-icon.png', 'Brittni W.', '2016-09-13 22:54:44', 'https://www.yelp.com/biz/partners-real-estate-eagle-river?hrid=2H9gGcuSJCSrN_EjaY89aQ&adjust_creative=yLRKI4b4orlxDvOUmYsS9A&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_reviews&utm_source=yLRKI4b4orlxDvOUmYsS9A', 'We have been using Partners Real Estate since we first landed in Alaska a few years ago.  We started as renters, they were strict about cleanliness and...', 'https://s3-media2.fl.yelpcdn.com/photo/InpLWAKhGZkkPRkdalmzIw/o.jpg', NULL, NULL, NULL, NULL, '2H9gGcuSJCSrN_EjaY89aQ', NULL, 1),
(409, 218, 'd65SlxOfx2w1vj6kcszcvg', '2.00', 'img/yelp-icon.png', 'Michael S.', '2017-04-11 22:53:08', 'https://www.yelp.com/biz/partners-real-estate-eagle-river?hrid=d65SlxOfx2w1vj6kcszcvg&adjust_creative=yLRKI4b4orlxDvOUmYsS9A&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_reviews&utm_source=yLRKI4b4orlxDvOUmYsS9A', 'I\'ll begin with saying I\'ve never had a problem with any real estate or property management company before. I\'ve never had any damages to property, and I\'ve...', '', NULL, NULL, NULL, NULL, 'd65SlxOfx2w1vj6kcszcvg', NULL, 1),
(410, 218, 'istgEquSIh88PfQN7jARbw', '5.00', 'img/yelp-icon.png', 'Natalie J.', '2017-01-31 10:45:11', 'https://www.yelp.com/biz/partners-real-estate-eagle-river?hrid=istgEquSIh88PfQN7jARbw&adjust_creative=yLRKI4b4orlxDvOUmYsS9A&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_reviews&utm_source=yLRKI4b4orlxDvOUmYsS9A', 'Partners Real Estate is a great company for buying, selling and managing. Brandon is a hard worker. They are managing my townhouse and got it rented in one...', '', NULL, NULL, NULL, NULL, 'istgEquSIh88PfQN7jARbw', NULL, 1),
(411, 170, '101876689730805561109', '5.00', 'img/Google.png', 'christina fogg', '2017-11-16 02:07:57', 'https://www.google.com/maps/contrib/101876689730805561109/reviews', 'Brandon is AMAZING!!! He help sell my home back in 2015 and helped my husband and I buy our new home (2017). When the sellers were being unreasonable he went to bat for us and got the deal where it worked best for us. His whole team were all helpful in any questions we had. If you are looking to buy or rent in Alaska look up Partners Realty and ask for Brandon Thorud. He will make it a smooth and fun experience.', 'https://lh3.googleusercontent.com/-MiEriSll9pI/AAAAAAAAAAI/AAAAAAAAAAA/AFiYof3b7Zs32NrfSP1udYjjW-NsOEOG2g/s128-c0x00000000-cc-rp-mo/photo.jpg', '3 weeks ago', NULL, NULL, '101876689730805561109', NULL, NULL, 0),
(412, 170, '117230349546220471870', '5.00', 'img/Google.png', 'Traci Lenard', '2017-08-16 23:13:54', 'https://www.google.com/maps/contrib/117230349546220471870/reviews', 'Kim and Terry are a great team! They were very communicative throughout the entire process, making the sale of the property as seamless as possible. They are personable and professional. I couldn\'t have been more comfortable and pleased to have their help!', 'https://lh5.googleusercontent.com/-bet4-ch3JT8/AAAAAAAAAAI/AAAAAAAAAAA/AFiYof1fAcAmyu45h7OF0T0NpDOGMOuWFA/s128-c0x00000000-cc-rp-mo/photo.jpg', '3 months ago', NULL, NULL, '117230349546220471870', NULL, NULL, 0),
(413, 170, '118017591695459869073', '1.00', 'img/Google.png', 'Anna Smelser', '2017-11-03 18:05:26', 'https://www.google.com/maps/contrib/118017591695459869073/reviews', 'All Iâ€™m going to say is I wish we never signed a lease with them! I canâ€™t wait till August 2018 when our lease is up! Will never use them again.', 'https://lh3.googleusercontent.com/-bzm7o5k-oOw/AAAAAAAAAAI/AAAAAAAAAAA/AFiYof2zN9jTUOlSOm3JfyRGw4K55EvqKQ/s128-c0x00000000-cc-rp-mo/photo.jpg', 'a month ago', NULL, NULL, '118017591695459869073', NULL, NULL, 1),
(414, 170, '102631988454298483310', '5.00', 'img/Google.png', 'Brittni Anderson', '2016-12-01 16:29:56', 'https://www.google.com/maps/contrib/102631988454298483310/reviews', 'We started out as renters through Partners when we first got stationed in Alaska.  They were helpful and got us into an affordable home within 2 days.  Any time we had issues maintenance was quick to respond in a timely manner. They were strict but fair which is why we chose them to help us buy our first house.  When it was time for us to leave Alaska for our next adventure we were confident leaving them in charge of our property. They had renters in our house in less than a week.  Brandon has gone above and beyond with communication. Would definitely recommend.', 'https://lh5.googleusercontent.com/-7JVeKlIsIGU/AAAAAAAAAAI/AAAAAAAAAAA/AFiYof2cTTRLD7nCSKuI9yGYo8jASqQ0ig/s128-c0x00000000-cc-rp-mo/photo.jpg', 'a year ago', NULL, NULL, '102631988454298483310', NULL, NULL, 0),
(415, 170, '111993907216625355573', '1.00', 'img/Google.png', 'haley lienhart', '2017-09-02 18:44:27', 'https://www.google.com/maps/contrib/111993907216625355573/reviews', 'Unorganized company. Will give you multiple different answers for questions, have lost payments, takes forever to get any sort of response when leaving messages.', 'https://lh3.googleusercontent.com/-CUMGHbxGQ08/AAAAAAAAAAI/AAAAAAAAAAA/AFiYof1_YgQFRmst_ej-UyHzJyu2nD9Xtw/s128-c0x00000000-cc-rp-mo/photo.jpg', '3 months ago', NULL, NULL, '111993907216625355573', NULL, NULL, 0),
(416, 172, 'JWtTzHgx0R8SewcKRTaF7A', '5.00', 'img/yelp-icon.png', 'B J.', '2017-10-10 14:45:12', 'https://www.yelp.com/biz/team-flores-real-estate-coldwell-banker-san-diego-2?hrid=JWtTzHgx0R8SewcKRTaF7A&adjust_creative=yLRKI4b4orlxDvOUmYsS9A&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_reviews&utm_source=yLRKI4b4orlxDvOUmYsS9A', 'Team Flores is one of the best real estate teams in San Diego area! Lorraine and Saundra always provided me with high quality service. Although they handle...', 'https://s3-media1.fl.yelpcdn.com/photo/cLLAmW6VslFQZ7Ii9q-KGg/o.jpg', NULL, NULL, NULL, NULL, 'JWtTzHgx0R8SewcKRTaF7A', NULL, 0),
(417, 172, '8-RP0w9WIeeXU4Z_8P8ohA', '5.00', 'img/yelp-icon.png', 'Jeff R.', '2017-06-28 18:59:58', 'https://www.yelp.com/biz/team-flores-real-estate-coldwell-banker-san-diego-2?hrid=8-RP0w9WIeeXU4Z_8P8ohA&adjust_creative=yLRKI4b4orlxDvOUmYsS9A&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_reviews&utm_source=yLRKI4b4orlxDvOUmYsS9A', 'Lorraine and Sandra were fantastic. The realtor we used for years relocated back east. We needed a new realtor and much to our good fortune we were...', '', NULL, NULL, NULL, NULL, '8-RP0w9WIeeXU4Z_8P8ohA', NULL, 0),
(418, 11, '101876689730805561109', '5.00', 'img/Google.png', 'christina fogg', '2017-11-16 02:07:57', 'https://www.google.com/maps/contrib/101876689730805561109/reviews', 'Brandon is AMAZING!!! He help sell my home back in 2015 and helped my husband and I buy our new home (2017). When the sellers were being unreasonable he went to bat for us and got the deal where it worked best for us. His whole team were all helpful in any questions we had. If you are looking to buy or rent in Alaska look up Partners Realty and ask for Brandon Thorud. He will make it a smooth and fun experience.', 'https://lh3.googleusercontent.com/-MiEriSll9pI/AAAAAAAAAAI/AAAAAAAAAAA/AFiYof3b7Zs32NrfSP1udYjjW-NsOEOG2g/s128-c0x00000000-cc-rp-mo/photo.jpg', '3 weeks ago', NULL, NULL, '101876689730805561109', NULL, NULL, 0),
(419, 11, '117230349546220471870', '5.00', 'img/Google.png', 'Traci Lenard', '2017-08-16 23:13:54', 'https://www.google.com/maps/contrib/117230349546220471870/reviews', 'Kim and Terry are a great team! They were very communicative throughout the entire process, making the sale of the property as seamless as possible. They are personable and professional. I couldn\'t have been more comfortable and pleased to have their help!', 'https://lh5.googleusercontent.com/-bet4-ch3JT8/AAAAAAAAAAI/AAAAAAAAAAA/AFiYof1fAcAmyu45h7OF0T0NpDOGMOuWFA/s128-c0x00000000-cc-rp-mo/photo.jpg', '3 months ago', NULL, NULL, '117230349546220471870', NULL, NULL, 0),
(420, 11, '118017591695459869073', '1.00', 'img/Google.png', 'Anna Smelser', '2017-11-03 18:05:26', 'https://www.google.com/maps/contrib/118017591695459869073/reviews', 'All Iâ€™m going to say is I wish we never signed a lease with them! I canâ€™t wait till August 2018 when our lease is up! Will never use them again.', 'https://lh3.googleusercontent.com/-bzm7o5k-oOw/AAAAAAAAAAI/AAAAAAAAAAA/AFiYof2zN9jTUOlSOm3JfyRGw4K55EvqKQ/s128-c0x00000000-cc-rp-mo/photo.jpg', 'a month ago', NULL, NULL, '118017591695459869073', NULL, NULL, 0),
(421, 11, '102631988454298483310', '5.00', 'img/Google.png', 'Brittni Anderson', '2016-12-01 16:29:56', 'https://www.google.com/maps/contrib/102631988454298483310/reviews', 'We started out as renters through Partners when we first got stationed in Alaska.  They were helpful and got us into an affordable home within 2 days.  Any time we had issues maintenance was quick to respond in a timely manner. They were strict but fair which is why we chose them to help us buy our first house.  When it was time for us to leave Alaska for our next adventure we were confident leaving them in charge of our property. They had renters in our house in less than a week.  Brandon has gone above and beyond with communication. Would definitely recommend.', 'https://lh5.googleusercontent.com/-7JVeKlIsIGU/AAAAAAAAAAI/AAAAAAAAAAA/AFiYof2cTTRLD7nCSKuI9yGYo8jASqQ0ig/s128-c0x00000000-cc-rp-mo/photo.jpg', 'a year ago', NULL, NULL, '102631988454298483310', NULL, NULL, 0),
(422, 11, '111993907216625355573', '1.00', 'img/Google.png', 'haley lienhart', '2017-09-02 18:44:27', 'https://www.google.com/maps/contrib/111993907216625355573/reviews', 'Unorganized company. Will give you multiple different answers for questions, have lost payments, takes forever to get any sort of response when leaving messages.', 'https://lh3.googleusercontent.com/-CUMGHbxGQ08/AAAAAAAAAAI/AAAAAAAAAAA/AFiYof1_YgQFRmst_ej-UyHzJyu2nD9Xtw/s128-c0x00000000-cc-rp-mo/photo.jpg', '3 months ago', NULL, NULL, '111993907216625355573', NULL, NULL, 0),
(423, 223, 'TTcYWkiLMhT_A_-6-KM_zg', '3.00', 'img/yelp-icon.png', 'Virginia M.', '2017-11-07 15:32:30', 'https://www.yelp.com/biz/class-act-property-management-salem?hrid=TTcYWkiLMhT_A_-6-KM_zg&adjust_creative=yLRKI4b4orlxDvOUmYsS9A&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_reviews&utm_source=yLRKI4b4orlxDvOUmYsS9A', 'Mark Bellamy was very kind to refund my application fee when I complained that the apartment for which I applied was no longer available. The website is...', 'https://s3-media2.fl.yelpcdn.com/photo/33i6he0xaRGzpKeF-SJrHw/o.jpg', NULL, NULL, NULL, NULL, 'TTcYWkiLMhT_A_-6-KM_zg', NULL, 0),
(424, 223, 'BrFIfL_KwIJvcVbi0tpsxg', '1.00', 'img/yelp-icon.png', 'Tiffany G.', '2017-03-05 20:17:52', 'https://www.yelp.com/biz/class-act-property-management-salem?hrid=BrFIfL_KwIJvcVbi0tpsxg&adjust_creative=yLRKI4b4orlxDvOUmYsS9A&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_reviews&utm_source=yLRKI4b4orlxDvOUmYsS9A', 'Terrible company. After taking over for a contract that was previously signed, the owner, Mark, has been rude and ignores complaints. After stating he...', 'https://s3-media2.fl.yelpcdn.com/photo/4VGsxO94AejosdSW9UfkjQ/o.jpg', NULL, NULL, NULL, NULL, 'BrFIfL_KwIJvcVbi0tpsxg', NULL, 0),
(425, 223, '0yxBJqXTN10dfRPCaFOpQw', '1.00', 'img/yelp-icon.png', 'Lee Ann M.', '2017-06-30 12:05:34', 'https://www.yelp.com/biz/class-act-property-management-salem?hrid=0yxBJqXTN10dfRPCaFOpQw&adjust_creative=yLRKI4b4orlxDvOUmYsS9A&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_reviews&utm_source=yLRKI4b4orlxDvOUmYsS9A', 'TERRIBLE.  I am filing a dispute with my credit card company.  They\'re thieves.  Absolute worst.  Not a class act at all.', 'https://s3-media3.fl.yelpcdn.com/photo/-yDt5iiMJh5stlTbWiwtfA/o.jpg', NULL, NULL, NULL, NULL, '0yxBJqXTN10dfRPCaFOpQw', NULL, 0),
(426, 223, '107970074362859459802', '4.00', 'img/Google.png', 'Donna Burke', '2017-11-06 18:52:47', 'https://www.google.com/maps/contrib/107970074362859459802/reviews', 'I have rented from Class Act for a year and a half. Mark was very helpful when my first rental was being sold and I needed a new place. He has always responded promptly to any issues or concerns when procedures followed. I take responsibility for knowing those as well as making sure I meet the owners requirements.  With good communication and realistic expectations on both sides, Class Act has shown to be a good company and is recommended.', 'https://lh5.googleusercontent.com/-YBlc3SHGwak/AAAAAAAAAAI/AAAAAAAAAAA/AFiYof1ezRQG8cg8KAeJ21VqbNH4z9ZH0Q/s128-c0x00000000-cc-rp-mo/photo.jpg', 'a month ago', NULL, NULL, '107970074362859459802', NULL, NULL, 0),
(427, 223, '113258660991300620711', '1.00', 'img/Google.png', 'Nathan Webb', '2017-08-31 15:35:52', 'https://www.google.com/maps/contrib/113258660991300620711/reviews', 'I am an owner renting out my unit and have used Class Act for 2 years now. I have been disappointed with the lack of communication and slow/no response I have received from this company. They have ignored my concerns and refuse to take the time to inform me of major expenses. Class Act has complete apathy for the owner\'s concerns. Instead of trying to resolve them, they have now dropped me as a client with 30 days notice, but plan to hold on to my funds for an extra 60 days.', 'https://lh6.googleusercontent.com/-Mpei7cp3JE8/AAAAAAAAAAI/AAAAAAAACfw/blWh4yBynik/s128-c0x00000000-cc-rp-mo/photo.jpg', '3 months ago', NULL, NULL, '113258660991300620711', NULL, NULL, 0),
(428, 223, '105306032578820115369', '1.00', 'img/Google.png', 'Rheanna Albright', '2017-07-10 15:57:00', 'https://www.google.com/maps/contrib/105306032578820115369/reviews', 'I rented from this company almpst three years ago with a similar back story as all the other reviews, i rented through a private owner who then turned it over to class act. At which point everything was communicated through a portal. I too had an emotional support animal who is certified and that also was ignored by both the owner and property managmenr company. When i left, my lease was terminated without notice, my dog was denied. When it came time to clean the house for new tenants there was a long list of made up charges one being that they had to replace a (what looked like twenty year old carpet, ya know the orange stuff that was so hip back then) because there was \"dog feces\" mind you I still own this 90 pound mut who has never had an accident his whole life. The carpet itself I shampood as moved in and i was disgusted how much their \"profesional\" cleaners missed. When everything was said and done and i was going to be taken to court I attempted to get proof of the rude portal messages that were clearly going to give me the proof I needed to show the unlawful denial of my dog, EVERY SINGLE MESSAGE WAS DELETED ON THEIR!!! I could not get my own copy pf anything.\n\nIm writing this now because I am disgusted reading all the same reviews and the management company has the odosity to reply to every review in attemps to explain their side because they think they are in the right? Because the are black and white and dont want to put forth the customer service that they should!', 'https://lh3.googleusercontent.com/-kMgEeA0cm6E/AAAAAAAAAAI/AAAAAAAAKEc/Ud2-XK1CfXs/s128-c0x00000000-cc-rp-mo/photo.jpg', '5 months ago', NULL, NULL, '105306032578820115369', NULL, NULL, 0),
(429, 223, '107348320048067025251', '1.00', 'img/Google.png', 'Danielle Gannaway', '2017-06-14 01:14:30', 'https://www.google.com/maps/contrib/107348320048067025251/reviews', 'Apparently the only way to get in touch with these people, once they\'ve got your money, is to write a bad review. They COMPLETELY IGNORE any attempt at communication, are shady, classLESS, rude customer service and give off false impressions to potential tenants that they\'ve been approved for the property. They discriminate against registered, ADA/FHAA protected service dogs and emotional support animals. Extremely unprofessional and I have yet to find ONE good review from someone who doesn\'t have the last name Bellamy (in relation to the owner Mark Bellamy who says he will respond via email, like his assistant Rihannon, but refuses after several polite attempts to find out the status of my application). I was told by Rihannon  I would \'be sent an email requesting further information\' regarding my Emotional Support Dog (9 y/o purebred yellow lab) and that \'there is no size or breed restriction if is it registered\'. Got my hopes up, was under the impression I didn\'t just waste 110 dollars on an application, and that we were being considered for approval, then never heard from them again despite numerous emails and phone calls. Despite EVERYTHING on our applications being 100%, no criminal history or bad rental history, clean driving record, proof of large and increasing income, etc. They do not call back and office says meetings by appointment only. How the hell do you get an appointment if you can\'t get in out with anyone? Looks like they saved me the trouble from renting from a shady company! Good riddance. \n\nI wonder if they respond to this?\n\nI am editing to respond to their last response: they did not RESPOND to emails; photos I shared were the only communication I received and I could not provide proof of documentation of my ESA because I was waiting on an email requesting additional information about the dogs (a form to fill out) from Class Act. How can I know what information to provide if I have not been emailed a form to fill out (that I was told would be sent to me but never was). I called twice and emailed Rihannon and Mark countless times throughout the course of a WEEK, not 2 days, and was not contacted. One day I was told I would be sent an email requesting info, and a week later after no communication, the property was no longer on the website. After I took the time to write a detailed cover letter and reach out earnestly and politely, I really don\'t think it would have been that difficult to type a quick email informing me that the property was no longer available. This company is shady and untruthful. All you need to do is read the multiple reviews to gather that. Anything they say in response is literally untruthful not to mention rude and unprofessional. Y\n\nWe received an Application Denial letter in the mail due to \'rude behavior\'; the rude behavior being this review, in assuming. Considering the review was posted after our applications were denied, I\'m not sure how this makes sense, but whatever helps them sleep at night. Will NEVER rent from this company. From what I can tell, we were  saved from a laundry list of troubles by not being accepted.', 'https://lh5.googleusercontent.com/-PpArEs98YCc/AAAAAAAAAAI/AAAAAAAABv4/J4VTi8pEeIk/s128-c0x00000000-cc-rp-mo/photo.jpg', '6 months ago', NULL, NULL, '107348320048067025251', NULL, NULL, 0),
(430, 223, '118006739208024841895', '1.00', 'img/Google.png', 'Tiffany Gonzalez', '2017-03-06 03:52:23', 'https://www.google.com/maps/contrib/118006739208024841895/reviews', 'Terrible company. After taking over for a contract that was previously signed, the owner, Mark, has been rude and ignores complaints. After stating he would, he has refused to abide by the previous contract and tried to make us adhere to his policy of using his portal, though we never signed anything with him.  He has stated issues would be fixed within 30 days and on March 10th we will have been waiting over 5 months for issues to be resolved, please see business images. Just BE WARNED!!! This business has been CLASSLESS! Do not do business with this company! \n\n', 'https://lh3.googleusercontent.com/-VBnY_hpjhuA/AAAAAAAAAAI/AAAAAAAAAT4/HP9EdvMZqzw/s128-c0x00000000-cc-rp-mo/photo.jpg', '9 months ago', NULL, NULL, '118006739208024841895', NULL, NULL, 0),
(431, 223, '3661631', NULL, 'img/zillow.png', 'MichaelSkourtes', '2017-10-02', 'http://www.zillow.com/profile/Mark-Bellamy/Reviews/?review=3661631', 'Mark Bellamy was using old pictures of a property available for rent in Bend Oregon that were taken when property was in better condition. The reality is the property was a total dump. He took my $2,300 ...', 'http://www.zillow.com/profile/MichaelSkourtes/', NULL, 'Helped me rent a Single Family home in Mountain View, Bend, OR.', '3661631', NULL, NULL, NULL, 0),
(432, 223, '3160855', NULL, 'img/zillow.png', '1gonzalezpride', '2017-03-05', 'http://www.zillow.com/profile/Mark-Bellamy/Reviews/?review=3160855', 'Terrible company. After taking over for a contract that was previously signed, the owner, Mark, has been rude and ignores complaints. After stating he would, he has refused to abide by the previous contract ...', 'http://www.zillow.com/profile/1gonzalezpride/', NULL, 'Other service. Turner, OR', '3160855', NULL, NULL, NULL, 0),
(433, 223, '2955196', NULL, 'img/zillow.png', 'andys259', '2016-12-01', 'http://www.zillow.com/profile/Mark-Bellamy/Reviews/?review=2955196', 'I did not care for Class Act\'s customer service.  The house was nice and good quality in a good neighborhood.  My complaint is with the service.  They were only avaliable by email and really give the ...', 'http://www.zillow.com/profile/andys259/', NULL, 'Helped me rent a Single Family home in Dallas, OR.', '2955196', NULL, NULL, NULL, 0),
(434, 223, '1559020', NULL, 'img/zillow.png', 'onondaga156', '2015-07-11', 'http://www.zillow.com/profile/Mark-Bellamy/Reviews/?review=1559020', 'I worked with Mark on renting a property over the internet. A friend went and toured the property and I watched a video online. On this I gave a deposit to hold the place. When I arrived the unit which ...', 'http://www.zillow.com/profile/onondaga156/', NULL, 'Helped me rent a Single Family home in Hubbard, OR.', '1559020', NULL, NULL, NULL, 0),
(435, 223, '1376272', NULL, 'img/zillow.png', 'idavenpo', '2015-05-25', 'http://www.zillow.com/profile/Mark-Bellamy/Reviews/?review=1376272', 'As a former tenant of Mr. Bellamy I can attest that he is very straight forward and direct. He nearly always responded to any of my concerns within a very short time. When I ended up behind in my rent, ...', 'http://www.zillow.com/profile/idavenpo/', NULL, 'Helped me rent a Mobile / Manufactured home in Salem, OR.', '1376272', NULL, NULL, NULL, 0),
(436, 223, '1074904', NULL, 'img/zillow.png', 'Techla Fish', '2014-11-20', 'http://www.zillow.com/profile/Mark-Bellamy/Reviews/?review=1074904', 'Not helpful at all! You must work around his schedule cause he will not accomidate you at all. Really unimpressed with my expereince. I wouldnt let him rent for me or too me.', 'http://www.zillow.com/profile/user6676657/', NULL, 'We connected, but it did not work out. Looking in Dallas, OR', '1074904', NULL, NULL, NULL, 0),
(437, 223, '734228', NULL, 'img/zillow.png', 'willarddoug', '2014-03-31', 'http://www.zillow.com/profile/Mark-Bellamy/Reviews/?review=734228', 'A horrible property manager. Disrespectful, dismissive and arrogant. We walked into a mold infested home with extensively gross carpets and non working appliances that took him days to fix. He could care ...', 'http://www.zillow.com/profile/willarddoug/', NULL, 'Helped me rent a Condo home in Northgate, Salem, OR.', '734228', NULL, NULL, NULL, 0),
(438, 218, '3242042', '5.00', 'img/zillow.png', 'jbloom1999', '2017-04-07', 'http://www.zillow.com/profile/user19731134/Reviews/?review=3242042', 'Brandon is great. We liked working with Brandon as soon as we met him. He has a great knowledge of the area, the product inventory and market. He has the great combination of professional knowledge and ...', 'http://www.zillow.com/profile/jbloom1999/', NULL, 'Property manage a Single Family home in Eagle River, Eagle River, AK.', '3242042', NULL, NULL, NULL, 0),
(439, 218, '3192648', '5.00', 'img/zillow.png', 'kboquet', '2017-03-19', 'http://www.zillow.com/profile/user19731134/Reviews/?review=3192648', 'We are very grateful for Brandon Thorud and the support of Partners Real Estate when we relocated to Alaska.  Brandon has great interpersonal skills and is very easy to work with.  He is very conscientious ...', 'http://www.zillow.com/profile/kboquet/', NULL, 'Bought a Single Family home in 2009 in Eagle River, Eagle River, AK.', '3192648', NULL, NULL, NULL, 0),
(440, 218, '3185414', '5.00', 'img/zillow.png', 'Janan2', '2017-03-15', 'http://www.zillow.com/profile/user19731134/Reviews/?review=3185414', 'Brandon assisted my family and I with our home purchase when we relocated from Arizona to Alaska. He and his company were fantastic to work with, got our offer accepted, closed early and done all remotely ...', 'http://www.zillow.com/profile/Janan2/', NULL, 'Bought a Single Family home in 2015 in Chugiak, Chugiak, AK.', '3185414', NULL, NULL, NULL, 0),
(441, 229, '3696551', '5.00', 'img/zillow.png', 'Douglas Moody', '2017-10-16', 'http://www.zillow.com/profile/PartnersRealEstate/Reviews/?review=3696551', 'My wife and I cannot say enough wonderful things about Jeron! As first time home buyers we had a lot of questions and concerns throughout the process and Jeron made it his priority to make himself available ...', 'http://www.zillow.com/profile/moody-douglas/', NULL, 'Bought a Single Family home in 2017 in Bayshore-Klatt, Anchorage, AK.', '3696551', NULL, NULL, NULL, 0),
(442, 229, '3562980', '5.00', 'img/zillow.png', 'mrs sarahejohnson9', '2017-08-19', 'http://www.zillow.com/profile/PartnersRealEstate/Reviews/?review=3562980', 'She helped me find the perfect home and answered all my questions as a first time home buyer! She made the process so easy! I would highly recommend her for all real estate needs.', 'http://www.zillow.com/profile/mrs-sarahejohnson9/', NULL, 'Bought a Townhouse home in 2017 in Taku-Campbell, Anchorage, AK.', '3562980', NULL, NULL, NULL, 0),
(443, 229, '3562055', '5.00', 'img/zillow.png', 'mmeza0', '2017-08-18', 'http://www.zillow.com/profile/PartnersRealEstate/Reviews/?review=3562055', 'Renee took the time to work with us to find our forever home. She always kept our best interest in mind, was honest, responsive, flexible, and great to work with. She helped make this experience fun and ...', 'http://www.zillow.com/profile/mmeza0/', NULL, 'Bought a Single Family home in 2016 in Eagle River, Eagle River, AK.', '3562055', NULL, NULL, NULL, 0),
(444, 229, '3529754', '5.00', 'img/zillow.png', 'zuser20170629005143161', '2017-08-05', 'http://www.zillow.com/profile/PartnersRealEstate/Reviews/?review=3529754', 'Ethan was very prompt and thorough answering any and all questions I had, even if I emailed him after normal work hours. I had to bow out of buying the place we looked at for financial reasons, but if/when ...', 'http://www.zillow.com/profile/zuser20170629005143161/', NULL, 'Listed, but didn\'t sell my Condo home in 2017 in Russian Jack Park, Anchorage, AK.', '3529754', NULL, NULL, NULL, 0),
(445, 229, '3512599', '5.00', 'img/zillow.png', 'TARA VANAMAN', '2017-07-29', 'http://www.zillow.com/profile/PartnersRealEstate/Reviews/?review=3512599', 'Jeron Rose of Partners Real Estate was a pleasure to work with. He is newer to the field but a joy to work with, an advocate for his clients and committed to learning and growing. He was always willing ...', 'http://www.zillow.com/profile/tdvanaman5/', NULL, 'Bought a Single Family home in 2017 in Eagle River, Eagle River, AK.', '3512599', NULL, NULL, NULL, 0),
(446, 229, '3442673', '5.00', 'img/zillow.png', 'Ashley jasper', '2017-06-30', 'http://www.zillow.com/profile/PartnersRealEstate/Reviews/?review=3442673', 'First time home buyers, met Tim as he was showing us a rental, we discussed our shock of the area\'s high rental costs and he suggested buying our own home.  My husband is active duty and we have always ...', 'http://www.zillow.com/profile/zuser20170302040858501/', NULL, 'Bought a Single Family home in 2017 in Eagle River, Eagle River, AK.', '3442673', NULL, NULL, NULL, 0),
(447, 229, '3414470', '5.00', 'img/zillow.png', 'live4fishin31', '2017-06-19', 'http://www.zillow.com/profile/PartnersRealEstate/Reviews/?review=3414470', 'Tim gave us one of the best home buying experiences we ever could have imagined. We were extremely picky, and Tim found us our dream home. This is our second house we\'ve bought and Tim was by far, way ...', 'http://www.zillow.com/profile/live4fishin31/', NULL, 'Bought a home in 2017 in Suntrana, Healy, AK 99755.', '3414470', NULL, NULL, NULL, 0),
(448, 229, '3380728', '5.00', 'img/zillow.png', 'user3540461', '2017-06-04', 'http://www.zillow.com/profile/PartnersRealEstate/Reviews/?review=3380728', 'Tim went ABOVE and BEYOND for us! Whenever, however we need a question answered or something done he responded quickly and did whatever needed to be done. He kept in constant contact with the sellers ...', 'http://www.zillow.com/profile/user3540461/', NULL, 'Bought a Single Family home in 2017 in Wasilla, AK.', '3380728', NULL, NULL, NULL, 0),
(449, 229, '3379195', '5.00', 'img/zillow.png', 'zuser20170122103006326', '2017-06-03', 'http://www.zillow.com/profile/PartnersRealEstate/Reviews/?review=3379195', 'We had called about a listing with a different agent he never returned my message at that time Danica stepped in and helped us through the buying process. If we had questions immediately she answered ...', 'http://www.zillow.com/profile/zuser20170122103006326/', NULL, 'Bought a home in 2017 in Anchorage, AK.', '3379195', NULL, NULL, NULL, 0),
(450, 229, '3242042', '5.00', 'img/zillow.png', 'jbloom1999', '2017-04-07', 'http://www.zillow.com/profile/PartnersRealEstate/Reviews/?review=3242042', 'Brandon is great. We liked working with Brandon as soon as we met him. He has a great knowledge of the area, the product inventory and market. He has the great combination of professional knowledge and ...', 'http://www.zillow.com/profile/jbloom1999/', NULL, 'Property manage a Single Family home in Eagle River, Eagle River, AK.', '3242042', NULL, NULL, NULL, 0),
(451, 230, '3242042', '5.00', 'img/zillow.png', 'jbloom1999', '2017-04-07', 'http://www.zillow.com/profile/user19731134/Reviews/?review=3242042', 'Brandon is great. We liked working with Brandon as soon as we met him. He has a great knowledge of the area, the product inventory and market. He has the great combination of professional knowledge and ...', 'http://www.zillow.com/profile/jbloom1999/', NULL, 'Property manage a Single Family home in Eagle River, Eagle River, AK.', '3242042', NULL, NULL, NULL, 0),
(452, 230, '3192648', '5.00', 'img/zillow.png', 'kboquet', '2017-03-19', 'http://www.zillow.com/profile/user19731134/Reviews/?review=3192648', 'We are very grateful for Brandon Thorud and the support of Partners Real Estate when we relocated to Alaska.  Brandon has great interpersonal skills and is very easy to work with.  He is very conscientious ...', 'http://www.zillow.com/profile/kboquet/', NULL, 'Bought a Single Family home in 2009 in Eagle River, Eagle River, AK.', '3192648', NULL, NULL, NULL, 0),
(453, 230, '3185414', '5.00', 'img/zillow.png', 'Janan2', '2017-03-15', 'http://www.zillow.com/profile/user19731134/Reviews/?review=3185414', 'Brandon assisted my family and I with our home purchase when we relocated from Arizona to Alaska. He and his company were fantastic to work with, got our offer accepted, closed early and done all remotely ...', 'http://www.zillow.com/profile/Janan2/', NULL, 'Bought a Single Family home in 2015 in Chugiak, Chugiak, AK.', '3185414', NULL, NULL, NULL, 0),
(454, 230, '101876689730805561109', '5.00', 'img/Google.png', 'christina fogg', '2017-11-16 02:07:57', 'https://www.google.com/maps/contrib/101876689730805561109/reviews', 'Brandon is AMAZING!!! He help sell my home back in 2015 and helped my husband and I buy our new home (2017). When the sellers were being unreasonable he went to bat for us and got the deal where it worked best for us. His whole team were all helpful in any questions we had. If you are looking to buy or rent in Alaska look up Partners Realty and ask for Brandon Thorud. He will make it a smooth and fun experience.', 'https://lh3.googleusercontent.com/-MiEriSll9pI/AAAAAAAAAAI/AAAAAAAAAAA/AFiYof3b7Zs32NrfSP1udYjjW-NsOEOG2g/s128-c0x00000000-cc-rp-mo/photo.jpg', '3 weeks ago', NULL, NULL, '101876689730805561109', NULL, NULL, 0),
(455, 230, '117230349546220471870', '5.00', 'img/Google.png', 'Traci Lenard', '2017-08-16 23:13:54', 'https://www.google.com/maps/contrib/117230349546220471870/reviews', 'Kim and Terry are a great team! They were very communicative throughout the entire process, making the sale of the property as seamless as possible. They are personable and professional. I couldn\'t have been more comfortable and pleased to have their help!', 'https://lh5.googleusercontent.com/-bet4-ch3JT8/AAAAAAAAAAI/AAAAAAAAAAA/AFiYof1fAcAmyu45h7OF0T0NpDOGMOuWFA/s128-c0x00000000-cc-rp-mo/photo.jpg', '3 months ago', NULL, NULL, '117230349546220471870', NULL, NULL, 0);
INSERT INTO `api_reviews` (`id`, `user_id`, `review_id`, `rating`, `source_img`, `reviewer_name`, `review_date`, `review_url`, `review_desc`, `reviewer_profile_url`, `google_relative_time`, `zillow_review_summary`, `zillow_review_id`, `google_review_id`, `yelp_review_id`, `facebook_review_id`, `deleted`) VALUES
(456, 230, '118017591695459869073', '1.00', 'img/Google.png', 'Anna Smelser', '2017-11-03 18:05:26', 'https://www.google.com/maps/contrib/118017591695459869073/reviews', 'All Iâ€™m going to say is I wish we never signed a lease with them! I canâ€™t wait till August 2018 when our lease is up! Will never use them again.', 'https://lh3.googleusercontent.com/-bzm7o5k-oOw/AAAAAAAAAAI/AAAAAAAAAAA/AFiYof2zN9jTUOlSOm3JfyRGw4K55EvqKQ/s128-c0x00000000-cc-rp-mo/photo.jpg', 'a month ago', NULL, NULL, '118017591695459869073', NULL, NULL, 0),
(457, 230, '102631988454298483310', '5.00', 'img/Google.png', 'Brittni Anderson', '2016-12-01 16:29:56', 'https://www.google.com/maps/contrib/102631988454298483310/reviews', 'We started out as renters through Partners when we first got stationed in Alaska.  They were helpful and got us into an affordable home within 2 days.  Any time we had issues maintenance was quick to respond in a timely manner. They were strict but fair which is why we chose them to help us buy our first house.  When it was time for us to leave Alaska for our next adventure we were confident leaving them in charge of our property. They had renters in our house in less than a week.  Brandon has gone above and beyond with communication. Would definitely recommend.', 'https://lh5.googleusercontent.com/-7JVeKlIsIGU/AAAAAAAAAAI/AAAAAAAAAAA/AFiYof2cTTRLD7nCSKuI9yGYo8jASqQ0ig/s128-c0x00000000-cc-rp-mo/photo.jpg', 'a year ago', NULL, NULL, '102631988454298483310', NULL, NULL, 0),
(458, 230, '111993907216625355573', '1.00', 'img/Google.png', 'haley lienhart', '2017-09-02 18:44:27', 'https://www.google.com/maps/contrib/111993907216625355573/reviews', 'Unorganized company. Will give you multiple different answers for questions, have lost payments, takes forever to get any sort of response when leaving messages.', 'https://lh3.googleusercontent.com/-CUMGHbxGQ08/AAAAAAAAAAI/AAAAAAAAAAA/AFiYof1_YgQFRmst_ej-UyHzJyu2nD9Xtw/s128-c0x00000000-cc-rp-mo/photo.jpg', '3 months ago', NULL, NULL, '111993907216625355573', NULL, NULL, 0),
(459, 232, '101560627188598751507320868', '5.00', 'img/facebook-icon.png', 'Angel Washington', '2017-10-06T20:14:28+0000', 'https://www.facebook.com/pg/Partners+Real+Estate+-+Eagle+River%2C+AK-158396570987231/reviews/', '', NULL, NULL, NULL, NULL, NULL, NULL, '101560627188598751507320868', 0),
(460, 232, '101005026990992161502494532', '5.00', 'img/facebook-icon.png', 'Adam Harki', '2017-08-11T23:35:32+0000', 'https://www.facebook.com/pg/Partners+Real+Estate+-+Eagle+River%2C+AK-158396570987231/reviews/', 'We got excellent service from Kim & Terry Hardman in buying our investment property.  They really went above and beyond for us.  Thank you Kim & Terry!!', NULL, NULL, NULL, NULL, NULL, NULL, '101005026990992161502494532', 0),
(461, 232, '102150848203396761502346170', '5.00', 'img/facebook-icon.png', 'Gabrielle Bryant', '2017-08-10T06:22:50+0000', 'https://www.facebook.com/pg/Partners+Real+Estate+-+Eagle+River%2C+AK-158396570987231/reviews/', 'Alisha is amazing! She went above and beyond for our family. We were stationed in Japan house hunting and she was able to visit and send video of the homes we were interested in. She took the 17 hour time difference in stride. All this while pregnant as well folks! And although in the end we were unable to purchase a home, definitely not her fault, she never made us feel pressured or rushed. She gave us honest and important insight. I would highly recommend her and will use her when we are ready to house hunt again.', NULL, NULL, NULL, NULL, NULL, NULL, '102150848203396761502346170', 0),
(462, 232, '101034703375229241490990860', '1.00', 'img/facebook-icon.png', 'Mike Sazama', '2017-03-31T20:07:40+0000', 'https://www.facebook.com/pg/Partners+Real+Estate+-+Eagle+River%2C+AK-158396570987231/reviews/', '', NULL, NULL, NULL, NULL, NULL, NULL, '101034703375229241490990860', 0),
(463, 232, '102103872559088791487727239', '5.00', 'img/facebook-icon.png', 'Stacy Hague', '2017-02-22T01:33:59+0000', 'https://www.facebook.com/pg/Partners+Real+Estate+-+Eagle+River%2C+AK-158396570987231/reviews/', '', NULL, NULL, NULL, NULL, NULL, NULL, '102103872559088791487727239', 0),
(464, 232, '18657650870682801472169670', '5.00', 'img/facebook-icon.png', 'Stephanie Mathew', '2016-08-26T00:01:10+0000', 'https://www.facebook.com/pg/Partners+Real+Estate+-+Eagle+River%2C+AK-158396570987231/reviews/', '', NULL, NULL, NULL, NULL, NULL, NULL, '18657650870682801472169670', 0),
(465, 232, '101596095968655771450825203', '5.00', 'img/facebook-icon.png', 'Janan Palmer', '2015-12-22T23:00:03+0000', 'https://www.facebook.com/pg/Partners+Real+Estate+-+Eagle+River%2C+AK-158396570987231/reviews/', 'We purchased our home here in Alaska through Brandon. He was fantastic, met us on short notice during our trip and ensured we closed on time. We were moving from out of state, and he (and the staff at Partners) made it all possible for our family.', NULL, NULL, NULL, NULL, NULL, NULL, '101596095968655771450825203', 0),
(466, 232, '14352549799254111448536246', '5.00', 'img/facebook-icon.png', 'Sandra Evans', '2015-11-26T11:10:46+0000', 'https://www.facebook.com/pg/Partners+Real+Estate+-+Eagle+River%2C+AK-158396570987231/reviews/', '', NULL, NULL, NULL, NULL, NULL, NULL, '14352549799254111448536246', 0),
(467, 232, '102147747273916891438057153', '5.00', 'img/facebook-icon.png', 'Crystal Lynn', '2015-07-28T04:19:13+0000', 'https://www.facebook.com/pg/Partners+Real+Estate+-+Eagle+River%2C+AK-158396570987231/reviews/', 'Friendly and professional office staff and agents!!', NULL, NULL, NULL, NULL, NULL, NULL, '102147747273916891438057153', 0),
(468, 232, '20417578960995121431057734', '5.00', 'img/facebook-icon.png', 'Bernie McClure', '2015-05-08T04:02:14+0000', 'https://www.facebook.com/pg/Partners+Real+Estate+-+Eagle+River%2C+AK-158396570987231/reviews/', '', NULL, NULL, NULL, NULL, NULL, NULL, '20417578960995121431057734', 0),
(469, 232, '102113777819821491430598099', '5.00', 'img/facebook-icon.png', 'Mary Shields Williams', '2015-05-02T20:21:39+0000', 'https://www.facebook.com/pg/Partners+Real+Estate+-+Eagle+River%2C+AK-158396570987231/reviews/', 'We were new to the Eagle River area and all I can say is we are so thankful we picked a house to rent from Partners Real Estate. They have been so easy to work with on everything and by far the best property management we have ever rented from! A+ in every area of rental management!!', NULL, NULL, NULL, NULL, NULL, NULL, '102113777819821491430598099', 0),
(470, 232, '102151369943579031430260170', '5.00', 'img/facebook-icon.png', 'Kimberlee Wear', '2015-04-28T22:29:30+0000', 'https://www.facebook.com/pg/Partners+Real+Estate+-+Eagle+River%2C+AK-158396570987231/reviews/', 'these guys managed a rental property for us. They also went on the sell the home. Communication was great and the place was sold quickly. A million thank you\'s for the great work!', NULL, NULL, NULL, NULL, NULL, NULL, '102151369943579031430260170', 0),
(471, 232, '20062243196231021428952726', '5.00', 'img/facebook-icon.png', 'Kim Kaufmann', '2015-04-13T19:18:46+0000', 'https://www.facebook.com/pg/Partners+Real+Estate+-+Eagle+River%2C+AK-158396570987231/reviews/', 'I\'ve had Partners do Property Management to my home for the last year. I am so happy with their service that I consider them am important buisness partner in keeping my Tenants happy. There were several items that needed fixing at the home, that Partners informed me of the fixes and went ahead and scheduled the work. This keeps the tenants happy and makes my life stress free. They had no problems finding the tenant I have today, and the tenant have always paid ontime and are problem free. Not only Partners have been an excellent Property Manager, that I also recomment them for all your Homes needs...', NULL, NULL, NULL, NULL, NULL, NULL, '20062243196231021428952726', 0),
(472, 232, '19429984290506551399294550', '5.00', 'img/facebook-icon.png', 'C Rolf Milton', '2014-05-05T12:55:50+0000', 'https://www.facebook.com/pg/Partners+Real+Estate+-+Eagle+River%2C+AK-158396570987231/reviews/', '', NULL, NULL, NULL, NULL, NULL, NULL, '19429984290506551399294550', 0),
(473, 232, '101598702814906911390593792', '3.00', 'img/facebook-icon.png', 'Sherri Sapp', '2014-01-24T20:03:12+0000', 'https://www.facebook.com/pg/Partners+Real+Estate+-+Eagle+River%2C+AK-158396570987231/reviews/', 'Partners has been part of Eagle River for years, but with some new youth and enthusiasm they are soon to be a force in Eagle River Real Estate.', NULL, NULL, NULL, NULL, NULL, NULL, '101598702814906911390593792', 0),
(474, 232, '101597002577052971390529597', '5.00', 'img/facebook-icon.png', 'Cherie Taylor', '2014-01-24T02:13:17+0000', 'https://www.facebook.com/pg/Partners+Real+Estate+-+Eagle+River%2C+AK-158396570987231/reviews/', 'We have been very pleased using Partners RE as our property management company. Our house was rented out in less than a week, both times it became available. Brandon has been super helpful & answered all of our questions/concerns in a professional & timely \nmanner.', NULL, NULL, NULL, NULL, NULL, NULL, '101597002577052971390529597', 0),
(475, 232, '102085978614634641390501923', '5.00', 'img/facebook-icon.png', 'David Fisher', '2014-01-23T18:32:03+0000', 'https://www.facebook.com/pg/Partners+Real+Estate+-+Eagle+River%2C+AK-158396570987231/reviews/', '', NULL, NULL, NULL, NULL, NULL, NULL, '102085978614634641390501923', 0),
(476, 232, '101568760981970671390498901', '5.00', 'img/facebook-icon.png', 'Evamarbri Rivera Areizaga', '2014-01-23T17:41:41+0000', 'https://www.facebook.com/pg/Partners+Real+Estate+-+Eagle+River%2C+AK-158396570987231/reviews/', '', NULL, NULL, NULL, NULL, NULL, NULL, '101568760981970671390498901', 0),
(477, 232, '19310846971541411390454710', '5.00', 'img/facebook-icon.png', 'Brandon Thorud', '2014-01-23T05:25:10+0000', 'https://www.facebook.com/pg/Partners+Real+Estate+-+Eagle+River%2C+AK-158396570987231/reviews/', '', NULL, NULL, NULL, NULL, NULL, NULL, '19310846971541411390454710', 0),
(478, 232, '102149634732708651390368979', '5.00', 'img/facebook-icon.png', 'Liz Thorud', '2014-01-22T05:36:19+0000', 'https://www.facebook.com/pg/Partners+Real+Estate+-+Eagle+River%2C+AK-158396570987231/reviews/', '', NULL, NULL, NULL, NULL, NULL, NULL, '102149634732708651390368979', 0),
(479, 232, '18822693284724961388875704', '5.00', 'img/facebook-icon.png', 'Eric N Glimmer Wilson', '2014-01-04T22:48:24+0000', 'https://www.facebook.com/pg/Partners+Real+Estate+-+Eagle+River%2C+AK-158396570987231/reviews/', 'This company has all of its customers at the top of the list. They are compassionate and are helpful in every way. If you need a great management company or a great company to rent from this is the company.', NULL, NULL, NULL, NULL, NULL, NULL, '18822693284724961388875704', 0),
(480, 232, '17481709518839711372302683', '5.00', 'img/facebook-icon.png', 'Debbie Cook', '2013-06-27T03:11:23+0000', 'https://www.facebook.com/pg/Partners+Real+Estate+-+Eagle+River%2C+AK-158396570987231/reviews/', '', NULL, NULL, NULL, NULL, NULL, NULL, '17481709518839711372302683', 0),
(481, 232, '102103385401289211367608070', '5.00', 'img/facebook-icon.png', 'Chantel Cheney Smith Warmack', '2013-05-03T19:07:50+0000', 'https://www.facebook.com/pg/Partners+Real+Estate+-+Eagle+River%2C+AK-158396570987231/reviews/', '', NULL, NULL, NULL, NULL, NULL, NULL, '102103385401289211367608070', 0),
(482, 232, '2H9gGcuSJCSrN_EjaY89aQ', '5.00', 'img/yelp-icon.png', 'Brittni W.', '2016-09-13 22:54:44', 'https://www.yelp.com/biz/partners-real-estate-eagle-river?hrid=2H9gGcuSJCSrN_EjaY89aQ&adjust_creative=yLRKI4b4orlxDvOUmYsS9A&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_reviews&utm_source=yLRKI4b4orlxDvOUmYsS9A', 'We have been using Partners Real Estate since we first landed in Alaska a few years ago.  We started as renters, they were strict about cleanliness and...', 'https://s3-media2.fl.yelpcdn.com/photo/InpLWAKhGZkkPRkdalmzIw/o.jpg', NULL, NULL, NULL, NULL, '2H9gGcuSJCSrN_EjaY89aQ', NULL, 0),
(483, 232, 'd65SlxOfx2w1vj6kcszcvg', '2.00', 'img/yelp-icon.png', 'Michael S.', '2017-04-11 22:53:08', 'https://www.yelp.com/biz/partners-real-estate-eagle-river?hrid=d65SlxOfx2w1vj6kcszcvg&adjust_creative=yLRKI4b4orlxDvOUmYsS9A&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_reviews&utm_source=yLRKI4b4orlxDvOUmYsS9A', 'I\'ll begin with saying I\'ve never had a problem with any real estate or property management company before. I\'ve never had any damages to property, and I\'ve...', '', NULL, NULL, NULL, NULL, 'd65SlxOfx2w1vj6kcszcvg', NULL, 0),
(484, 232, 'istgEquSIh88PfQN7jARbw', '5.00', 'img/yelp-icon.png', 'Natalie J.', '2017-01-31 10:45:11', 'https://www.yelp.com/biz/partners-real-estate-eagle-river?hrid=istgEquSIh88PfQN7jARbw&adjust_creative=yLRKI4b4orlxDvOUmYsS9A&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_reviews&utm_source=yLRKI4b4orlxDvOUmYsS9A', 'Partners Real Estate is a great company for buying, selling and managing. Brandon is a hard worker. They are managing my townhouse and got it rented in one...', '', NULL, NULL, NULL, NULL, 'istgEquSIh88PfQN7jARbw', NULL, 0),
(485, 232, '101876689730805561109', '5.00', 'img/Google.png', 'christina fogg', '2017-11-16 02:07:57', 'https://www.google.com/maps/contrib/101876689730805561109/reviews', 'Brandon is AMAZING!!! He help sell my home back in 2015 and helped my husband and I buy our new home (2017). When the sellers were being unreasonable he went to bat for us and got the deal where it worked best for us. His whole team were all helpful in any questions we had. If you are looking to buy or rent in Alaska look up Partners Realty and ask for Brandon Thorud. He will make it a smooth and fun experience.', 'https://lh3.googleusercontent.com/-MiEriSll9pI/AAAAAAAAAAI/AAAAAAAAAAA/AFiYof3b7Zs32NrfSP1udYjjW-NsOEOG2g/s128-c0x00000000-cc-rp-mo/photo.jpg', '4 weeks ago', NULL, NULL, '101876689730805561109', NULL, NULL, 0),
(486, 232, '117230349546220471870', '5.00', 'img/Google.png', 'Traci Lenard', '2017-08-16 23:13:54', 'https://www.google.com/maps/contrib/117230349546220471870/reviews', 'Kim and Terry are a great team! They were very communicative throughout the entire process, making the sale of the property as seamless as possible. They are personable and professional. I couldn\'t have been more comfortable and pleased to have their help!', 'https://lh5.googleusercontent.com/-bet4-ch3JT8/AAAAAAAAAAI/AAAAAAAAAAA/AFiYof1fAcAmyu45h7OF0T0NpDOGMOuWFA/s128-c0x00000000-cc-rp-mo/photo.jpg', '3 months ago', NULL, NULL, '117230349546220471870', NULL, NULL, 0),
(487, 232, '118017591695459869073', '1.00', 'img/Google.png', 'Anna Smelser', '2017-11-03 18:05:26', 'https://www.google.com/maps/contrib/118017591695459869073/reviews', 'All Iâ€™m going to say is I wish we never signed a lease with them! I canâ€™t wait till August 2018 when our lease is up! Will never use them again.', 'https://lh3.googleusercontent.com/-bzm7o5k-oOw/AAAAAAAAAAI/AAAAAAAAAAA/AFiYof2zN9jTUOlSOm3JfyRGw4K55EvqKQ/s128-c0x00000000-cc-rp-mo/photo.jpg', 'a month ago', NULL, NULL, '118017591695459869073', NULL, NULL, 0),
(488, 232, '102631988454298483310', '5.00', 'img/Google.png', 'Brittni Anderson', '2016-12-01 16:29:56', 'https://www.google.com/maps/contrib/102631988454298483310/reviews', 'We started out as renters through Partners when we first got stationed in Alaska.  They were helpful and got us into an affordable home within 2 days.  Any time we had issues maintenance was quick to respond in a timely manner. They were strict but fair which is why we chose them to help us buy our first house.  When it was time for us to leave Alaska for our next adventure we were confident leaving them in charge of our property. They had renters in our house in less than a week.  Brandon has gone above and beyond with communication. Would definitely recommend.', 'https://lh5.googleusercontent.com/-7JVeKlIsIGU/AAAAAAAAAAI/AAAAAAAAAAA/AFiYof2cTTRLD7nCSKuI9yGYo8jASqQ0ig/s128-c0x00000000-cc-rp-mo/photo.jpg', 'a year ago', NULL, NULL, '102631988454298483310', NULL, NULL, 0),
(489, 232, '111993907216625355573', '1.00', 'img/Google.png', 'haley lienhart', '2017-09-02 18:44:27', 'https://www.google.com/maps/contrib/111993907216625355573/reviews', 'Unorganized company. Will give you multiple different answers for questions, have lost payments, takes forever to get any sort of response when leaving messages.', 'https://lh3.googleusercontent.com/-CUMGHbxGQ08/AAAAAAAAAAI/AAAAAAAAAAA/AFiYof1_YgQFRmst_ej-UyHzJyu2nD9Xtw/s128-c0x00000000-cc-rp-mo/photo.jpg', '3 months ago', NULL, NULL, '111993907216625355573', NULL, NULL, 0),
(490, 232, '3696551', '5.00', 'img/zillow.png', 'Douglas Moody', '2017-10-16', 'http://www.zillow.com/profile/PartnersRealEstate/Reviews/?review=3696551', 'My wife and I cannot say enough wonderful things about Jeron! As first time home buyers we had a lot of questions and concerns throughout the process and Jeron made it his priority to make himself available ...', 'http://www.zillow.com/profile/moody-douglas/', NULL, 'Bought a Single Family home in 2017 in Bayshore-Klatt, Anchorage, AK.', '3696551', NULL, NULL, NULL, 0),
(491, 232, '3562980', '5.00', 'img/zillow.png', 'mrs sarahejohnson9', '2017-08-19', 'http://www.zillow.com/profile/PartnersRealEstate/Reviews/?review=3562980', 'She helped me find the perfect home and answered all my questions as a first time home buyer! She made the process so easy! I would highly recommend her for all real estate needs.', 'http://www.zillow.com/profile/mrs-sarahejohnson9/', NULL, 'Bought a Townhouse home in 2017 in Taku-Campbell, Anchorage, AK.', '3562980', NULL, NULL, NULL, 0),
(492, 232, '3562055', '5.00', 'img/zillow.png', 'mmeza0', '2017-08-18', 'http://www.zillow.com/profile/PartnersRealEstate/Reviews/?review=3562055', 'Renee took the time to work with us to find our forever home. She always kept our best interest in mind, was honest, responsive, flexible, and great to work with. She helped make this experience fun and ...', 'http://www.zillow.com/profile/mmeza0/', NULL, 'Bought a Single Family home in 2016 in Eagle River, Eagle River, AK.', '3562055', NULL, NULL, NULL, 0),
(493, 232, '3529754', '5.00', 'img/zillow.png', 'zuser20170629005143161', '2017-08-05', 'http://www.zillow.com/profile/PartnersRealEstate/Reviews/?review=3529754', 'Ethan was very prompt and thorough answering any and all questions I had, even if I emailed him after normal work hours. I had to bow out of buying the place we looked at for financial reasons, but if/when ...', 'http://www.zillow.com/profile/zuser20170629005143161/', NULL, 'Listed, but didn\'t sell my Condo home in 2017 in Russian Jack Park, Anchorage, AK.', '3529754', NULL, NULL, NULL, 0),
(494, 232, '3512599', '5.00', 'img/zillow.png', 'TARA VANAMAN', '2017-07-29', 'http://www.zillow.com/profile/PartnersRealEstate/Reviews/?review=3512599', 'Jeron Rose of Partners Real Estate was a pleasure to work with. He is newer to the field but a joy to work with, an advocate for his clients and committed to learning and growing. He was always willing ...', 'http://www.zillow.com/profile/tdvanaman5/', NULL, 'Bought a Single Family home in 2017 in Eagle River, Eagle River, AK.', '3512599', NULL, NULL, NULL, 0),
(495, 232, '3442673', '5.00', 'img/zillow.png', 'Ashley jasper', '2017-06-30', 'http://www.zillow.com/profile/PartnersRealEstate/Reviews/?review=3442673', 'First time home buyers, met Tim as he was showing us a rental, we discussed our shock of the area\'s high rental costs and he suggested buying our own home.  My husband is active duty and we have always ...', 'http://www.zillow.com/profile/zuser20170302040858501/', NULL, 'Bought a Single Family home in 2017 in Eagle River, Eagle River, AK.', '3442673', NULL, NULL, NULL, 0),
(496, 232, '3414470', '5.00', 'img/zillow.png', 'live4fishin31', '2017-06-19', 'http://www.zillow.com/profile/PartnersRealEstate/Reviews/?review=3414470', 'Tim gave us one of the best home buying experiences we ever could have imagined. We were extremely picky, and Tim found us our dream home. This is our second house we\'ve bought and Tim was by far, way ...', 'http://www.zillow.com/profile/live4fishin31/', NULL, 'Bought a home in 2017 in Suntrana, Healy, AK 99755.', '3414470', NULL, NULL, NULL, 0),
(497, 232, '3380728', '5.00', 'img/zillow.png', 'user3540461', '2017-06-04', 'http://www.zillow.com/profile/PartnersRealEstate/Reviews/?review=3380728', 'Tim went ABOVE and BEYOND for us! Whenever, however we need a question answered or something done he responded quickly and did whatever needed to be done. He kept in constant contact with the sellers ...', 'http://www.zillow.com/profile/user3540461/', NULL, 'Bought a Single Family home in 2017 in Wasilla, AK.', '3380728', NULL, NULL, NULL, 0),
(498, 232, '3379195', '5.00', 'img/zillow.png', 'zuser20170122103006326', '2017-06-03', 'http://www.zillow.com/profile/PartnersRealEstate/Reviews/?review=3379195', 'We had called about a listing with a different agent he never returned my message at that time Danica stepped in and helped us through the buying process. If we had questions immediately she answered ...', 'http://www.zillow.com/profile/zuser20170122103006326/', NULL, 'Bought a home in 2017 in Anchorage, AK.', '3379195', NULL, NULL, NULL, 0),
(499, 232, '3242042', '5.00', 'img/zillow.png', 'jbloom1999', '2017-04-07', 'http://www.zillow.com/profile/PartnersRealEstate/Reviews/?review=3242042', 'Brandon is great. We liked working with Brandon as soon as we met him. He has a great knowledge of the area, the product inventory and market. He has the great combination of professional knowledge and ...', 'http://www.zillow.com/profile/jbloom1999/', NULL, 'Property manage a Single Family home in Eagle River, Eagle River, AK.', '3242042', NULL, NULL, NULL, 0),
(500, 234, '2198564', '5.00', 'img/zillow.png', 'Cynthia4619', '2016-02-17', 'http://www.zillow.com/profile/tsquare1/Reviews/?review=2198564', 'I have been looking for a rental home for about two weeks and finally found a company that returns my calls and emails!  They were on time for our appointment and were able to answer all my questions. ...', 'http://www.zillow.com/profile/Cynthia4619/', NULL, 'Helped me rent a Single Family home in Mill Creek, WA.', '2198564', NULL, NULL, NULL, 0),
(501, 234, '553457', '5.00', 'img/zillow.png', 'eddie t 71', '2013-10-24', 'http://www.zillow.com/profile/tsquare1/Reviews/?review=553457', 'Quick to get back to us and accommodating to our schedule.  Had a good selection of homes for us to look at and consider and helped us get into the one that we wanted.  I would recommend to others.', 'http://www.zillow.com/profile/eddie-t-71/', NULL, 'Helped me rent a home in Cottage Lake, Woodinville, WA 98077.', '553457', NULL, NULL, NULL, 0),
(502, 234, '535340', '2.00', 'img/zillow.png', 'sven98011', '2013-10-10', 'http://www.zillow.com/profile/tsquare1/Reviews/?review=535340', 'Poor professionalism; representative was more than 40 minutes late to a property showing and informed us at the last minute that another applicant would be joining the walk through.  Upon hearing the ...', 'http://www.zillow.com/profile/sven98011/', NULL, 'We connected, but it did not work out. Looking in Thrashers Corner, Seattle Hill-Silver Firs, WA 98012', '535340', NULL, NULL, NULL, 0),
(503, 234, '103596431139707347334', '5.00', 'img/Google.png', 'Gloria Zuchowski', '2017-10-14 00:13:07', 'https://www.google.com/maps/contrib/103596431139707347334/reviews', 'I am so impressed with the way T-Square is managing my home. This is specially true since I live out of state and I have to rely on them to manage my home while I\'m away. They maintain good communication and whenever I need to talk to someone, they are always available. They are a strong committed team of people who care about the quality and professionalism they bring to their clients and tenants. I can rely on their expertise and I appreciate the way they value integrity to protect the safety and privacy of the parties they serve. I highly recommend T-Square company and I know they won\'t disappoint you.', 'https://lh5.googleusercontent.com/-wg_RkOjgnL0/AAAAAAAAAAI/AAAAAAAAAAA/AFiYof2Wy6cF_iNE2dSk8Bpk55uKVJckkA/s128-c0x00000000-cc-rp-mo/photo.jpg', '2 months ago', NULL, NULL, '103596431139707347334', NULL, NULL, 0),
(504, 234, '113461865287644983575', '5.00', 'img/Google.png', 'Rich Sheets', '2017-11-14 18:56:57', 'https://www.google.com/maps/contrib/113461865287644983575/reviews', 'I have known Tom and Kellie Tollifson since mid-2006.  Iâ€™ve watched them grow their company based on principles of taking care of their clients.  Youâ€™re always going to have some people you just can\'t please, but their growth and sustainability of client satisfaction is a testament to anyone looking for property management as well as a reputable firm to locate rental property.  As their technology consultant, it has been a pleasure working with them and their staff.  As a service provider, I can say without reservation this is a great company to work with.', 'https://lh6.googleusercontent.com/-EVw7YLrX2kk/AAAAAAAAAAI/AAAAAAAAAAA/AFiYof1HtAfXN7vgg9xixrpFXL56nUI5-g/s128-c0x00000000-cc-rp-mo/photo.jpg', '4 weeks ago', NULL, NULL, '113461865287644983575', NULL, NULL, 0),
(505, 234, '113877083131961090888', '5.00', 'img/Google.png', 'Mike Vilhauer', '2017-09-08 11:43:27', 'https://www.google.com/maps/contrib/113877083131961090888/reviews', 'I\'ve been a client of T-Square for 4 years and counting.  The experience has been top notch.  We interviewed several competing firms before selecting T-square after some poor experiences with property rental groups.  Kellie and her team have a very pragmatic approach to maintenance and have handled all the issues with renters in a quick and reasonable manner.  As we are not around to managed any day-to-day issues that may arise, we have come to trust the team at T-square to help us out and to get things sorted quickly.', 'https://lh4.googleusercontent.com/-XQUFevB4DxQ/AAAAAAAAAAI/AAAAAAAAAAA/AFiYof36nHjwmg-GLOmZmaA4xbu1uEgYcA/s128-c0x00000000-cc-rp-mo/photo.jpg', '3 months ago', NULL, NULL, '113877083131961090888', NULL, NULL, 0),
(506, 234, '117827593928807226812', '5.00', 'img/Google.png', 'Stephen Fox', '2017-08-15 20:33:55', 'https://www.google.com/maps/contrib/117827593928807226812/reviews', 'Working with T-Square Properties has been an absolute pleasure. Kellie and Tom are very professional and extremely attentive to detail. If you\'re looking for a property management company I highly recommend their services.', 'https://lh4.googleusercontent.com/-f_Nyamv4yO8/AAAAAAAAAAI/AAAAAAAAAAA/AFiYof2kDW2qmZXMdppQ1AqYomqP7LmF3g/s128-c0x00000000-cc-rp-mo/photo.jpg', '4 months ago', NULL, NULL, '117827593928807226812', NULL, NULL, 0),
(507, 234, '118221829392703495123', '5.00', 'img/Google.png', 'Dani Ruiz', '2017-11-09 19:19:17', 'https://www.google.com/maps/contrib/118221829392703495123/reviews', 'T-square is awesome, we so appreciate the way we were taken care of. We will be sending many referrals!', 'https://lh5.googleusercontent.com/-gKzFojBGc6M/AAAAAAAAAAI/AAAAAAAAAAA/AFiYof3b7AaDWL6Q9QRJkH5xe1sVWBW_Eg/s128-c0x00000000-cc-rp-mo/photo.jpg', 'a month ago', NULL, NULL, '118221829392703495123', NULL, NULL, 0),
(508, 234, 'JcOmWTiKNGaM62BghRaTDQ', '3.00', 'img/yelp-icon.png', 'Jason B.', '2016-10-17 12:42:31', 'https://www.yelp.com/biz/t-square-properties-bothell?hrid=JcOmWTiKNGaM62BghRaTDQ&adjust_creative=yLRKI4b4orlxDvOUmYsS9A&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_reviews&utm_source=yLRKI4b4orlxDvOUmYsS9A', 'I used T Square for 4 years as I had moved to a different state and needed to rent my property until the market came back. Things started off well and...', 'https://s3-media1.fl.yelpcdn.com/photo/QRMtqiuwsOiW-dq4YJtwWA/o.jpg', NULL, NULL, NULL, NULL, 'JcOmWTiKNGaM62BghRaTDQ', NULL, 0),
(509, 234, '3BsCHCvY7iwuLnTkQeVAcA', '1.00', 'img/yelp-icon.png', 'Marian H.', '2017-09-08 06:01:43', 'https://www.yelp.com/biz/t-square-properties-bothell?hrid=3BsCHCvY7iwuLnTkQeVAcA&adjust_creative=yLRKI4b4orlxDvOUmYsS9A&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_reviews&utm_source=yLRKI4b4orlxDvOUmYsS9A', 'Poor customer service and my accounts show erroneous charges which after a few months of fighting them, they automatically disappear.  I do not recommend...', '', NULL, NULL, NULL, NULL, '3BsCHCvY7iwuLnTkQeVAcA', NULL, 0),
(510, 234, 'yEms25RSxxONOA006Cs33g', '1.00', 'img/yelp-icon.png', 'Jeff H.', '2017-03-08 12:41:33', 'https://www.yelp.com/biz/t-square-properties-bothell?hrid=yEms25RSxxONOA006Cs33g&adjust_creative=yLRKI4b4orlxDvOUmYsS9A&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_reviews&utm_source=yLRKI4b4orlxDvOUmYsS9A', 'I lived in the apartment  complex for 13 years before T-Square was assigned to manage it a few months ago.\n\nSince taking over, T-Square has announced...', '', NULL, NULL, NULL, NULL, 'yEms25RSxxONOA006Cs33g', NULL, 0),
(511, 231, '1808074525109711501653692', '4.00', 'img/facebook-icon.png', 'Suraj Singh Gautam', '2017-08-02T06:01:32+0000', 'https://www.facebook.com/pg/Barauli-1469514193326079/reviews/', '', NULL, NULL, NULL, NULL, NULL, NULL, '1808074525109711501653692', 0),
(512, 170, '101560627188598751507320868', '5.00', 'img/facebook-icon.png', 'Angel Washington', '2017-10-06T20:14:28+0000', 'https://www.facebook.com/pg/Partners+Real+Estate+-+Eagle+River%2C+AK-158396570987231/reviews/', '', NULL, NULL, NULL, NULL, NULL, NULL, '101560627188598751507320868', 0),
(513, 170, '101005026990992161502494532', '5.00', 'img/facebook-icon.png', 'Adam Harki', '2017-08-11T23:35:32+0000', 'https://www.facebook.com/pg/Partners+Real+Estate+-+Eagle+River%2C+AK-158396570987231/reviews/', 'We got excellent service from Kim & Terry Hardman in buying our investment property.  They really went above and beyond for us.  Thank you Kim & Terry!!', NULL, NULL, NULL, NULL, NULL, NULL, '101005026990992161502494532', 0),
(514, 170, '102150848203396761502346170', '5.00', 'img/facebook-icon.png', 'Gabrielle Bryant', '2017-08-10T06:22:50+0000', 'https://www.facebook.com/pg/Partners+Real+Estate+-+Eagle+River%2C+AK-158396570987231/reviews/', 'Alisha is amazing! She went above and beyond for our family. We were stationed in Japan house hunting and she was able to visit and send video of the homes we were interested in. She took the 17 hour time difference in stride. All this while pregnant as well folks! And although in the end we were unable to purchase a home, definitely not her fault, she never made us feel pressured or rushed. She gave us honest and important insight. I would highly recommend her and will use her when we are ready to house hunt again.', NULL, NULL, NULL, NULL, NULL, NULL, '102150848203396761502346170', 0),
(515, 170, '101034703375229241490990860', '1.00', 'img/facebook-icon.png', 'Mike Sazama', '2017-03-31T20:07:40+0000', 'https://www.facebook.com/pg/Partners+Real+Estate+-+Eagle+River%2C+AK-158396570987231/reviews/', '', NULL, NULL, NULL, NULL, NULL, NULL, '101034703375229241490990860', 0),
(516, 170, '102103872559088791487727239', '5.00', 'img/facebook-icon.png', 'Stacy Hague', '2017-02-22T01:33:59+0000', 'https://www.facebook.com/pg/Partners+Real+Estate+-+Eagle+River%2C+AK-158396570987231/reviews/', '', NULL, NULL, NULL, NULL, NULL, NULL, '102103872559088791487727239', 0),
(517, 170, '18657650870682801472169670', '5.00', 'img/facebook-icon.png', 'Stephanie Mathew', '2016-08-26T00:01:10+0000', 'https://www.facebook.com/pg/Partners+Real+Estate+-+Eagle+River%2C+AK-158396570987231/reviews/', '', NULL, NULL, NULL, NULL, NULL, NULL, '18657650870682801472169670', 0),
(518, 170, '101596095968655771450825203', '5.00', 'img/facebook-icon.png', 'Janan Palmer', '2015-12-22T23:00:03+0000', 'https://www.facebook.com/pg/Partners+Real+Estate+-+Eagle+River%2C+AK-158396570987231/reviews/', 'We purchased our home here in Alaska through Brandon. He was fantastic, met us on short notice during our trip and ensured we closed on time. We were moving from out of state, and he (and the staff at Partners) made it all possible for our family.', NULL, NULL, NULL, NULL, NULL, NULL, '101596095968655771450825203', 0),
(519, 170, '14352549799254111448536246', '5.00', 'img/facebook-icon.png', 'Sandra Evans', '2015-11-26T11:10:46+0000', 'https://www.facebook.com/pg/Partners+Real+Estate+-+Eagle+River%2C+AK-158396570987231/reviews/', '', NULL, NULL, NULL, NULL, NULL, NULL, '14352549799254111448536246', 0),
(520, 170, '102147747273916891438057153', '5.00', 'img/facebook-icon.png', 'Crystal Lynn', '2015-07-28T04:19:13+0000', 'https://www.facebook.com/pg/Partners+Real+Estate+-+Eagle+River%2C+AK-158396570987231/reviews/', 'Friendly and professional office staff and agents!!', NULL, NULL, NULL, NULL, NULL, NULL, '102147747273916891438057153', 0),
(521, 170, '20417578960995121431057734', '5.00', 'img/facebook-icon.png', 'Bernie McClure', '2015-05-08T04:02:14+0000', 'https://www.facebook.com/pg/Partners+Real+Estate+-+Eagle+River%2C+AK-158396570987231/reviews/', '', NULL, NULL, NULL, NULL, NULL, NULL, '20417578960995121431057734', 0),
(522, 170, '102113777819821491430598099', '5.00', 'img/facebook-icon.png', 'Mary Shields Williams', '2015-05-02T20:21:39+0000', 'https://www.facebook.com/pg/Partners+Real+Estate+-+Eagle+River%2C+AK-158396570987231/reviews/', 'We were new to the Eagle River area and all I can say is we are so thankful we picked a house to rent from Partners Real Estate. They have been so easy to work with on everything and by far the best property management we have ever rented from! A+ in every area of rental management!!', NULL, NULL, NULL, NULL, NULL, NULL, '102113777819821491430598099', 0),
(523, 170, '102151369943579031430260170', '5.00', 'img/facebook-icon.png', 'Kimberlee Wear', '2015-04-28T22:29:30+0000', 'https://www.facebook.com/pg/Partners+Real+Estate+-+Eagle+River%2C+AK-158396570987231/reviews/', 'these guys managed a rental property for us. They also went on the sell the home. Communication was great and the place was sold quickly. A million thank you\'s for the great work!', NULL, NULL, NULL, NULL, NULL, NULL, '102151369943579031430260170', 0),
(524, 170, '20062243196231021428952726', '5.00', 'img/facebook-icon.png', 'Kim Kaufmann', '2015-04-13T19:18:46+0000', 'https://www.facebook.com/pg/Partners+Real+Estate+-+Eagle+River%2C+AK-158396570987231/reviews/', 'I\'ve had Partners do Property Management to my home for the last year. I am so happy with their service that I consider them am important buisness partner in keeping my Tenants happy. There were several items that needed fixing at the home, that Partners informed me of the fixes and went ahead and scheduled the work. This keeps the tenants happy and makes my life stress free. They had no problems finding the tenant I have today, and the tenant have always paid ontime and are problem free. Not only Partners have been an excellent Property Manager, that I also recomment them for all your Homes needs...', NULL, NULL, NULL, NULL, NULL, NULL, '20062243196231021428952726', 0),
(525, 170, '19429984290506551399294550', '5.00', 'img/facebook-icon.png', 'C Rolf Milton', '2014-05-05T12:55:50+0000', 'https://www.facebook.com/pg/Partners+Real+Estate+-+Eagle+River%2C+AK-158396570987231/reviews/', '', NULL, NULL, NULL, NULL, NULL, NULL, '19429984290506551399294550', 0),
(526, 170, '101598702814906911390593792', '3.00', 'img/facebook-icon.png', 'Sherri Sapp', '2014-01-24T20:03:12+0000', 'https://www.facebook.com/pg/Partners+Real+Estate+-+Eagle+River%2C+AK-158396570987231/reviews/', 'Partners has been part of Eagle River for years, but with some new youth and enthusiasm they are soon to be a force in Eagle River Real Estate.', NULL, NULL, NULL, NULL, NULL, NULL, '101598702814906911390593792', 0),
(527, 170, '101597002577052971390529597', '5.00', 'img/facebook-icon.png', 'Cherie Taylor', '2014-01-24T02:13:17+0000', 'https://www.facebook.com/pg/Partners+Real+Estate+-+Eagle+River%2C+AK-158396570987231/reviews/', 'We have been very pleased using Partners RE as our property management company. Our house was rented out in less than a week, both times it became available. Brandon has been super helpful & answered all of our questions/concerns in a professional & timely \nmanner.', NULL, NULL, NULL, NULL, NULL, NULL, '101597002577052971390529597', 0),
(528, 170, '102085978614634641390501923', '5.00', 'img/facebook-icon.png', 'David Fisher', '2014-01-23T18:32:03+0000', 'https://www.facebook.com/pg/Partners+Real+Estate+-+Eagle+River%2C+AK-158396570987231/reviews/', '', NULL, NULL, NULL, NULL, NULL, NULL, '102085978614634641390501923', 0),
(529, 170, '101568760981970671390498901', '5.00', 'img/facebook-icon.png', 'Evamarbri Rivera Areizaga', '2014-01-23T17:41:41+0000', 'https://www.facebook.com/pg/Partners+Real+Estate+-+Eagle+River%2C+AK-158396570987231/reviews/', '', NULL, NULL, NULL, NULL, NULL, NULL, '101568760981970671390498901', 0),
(530, 170, '19310846971541411390454710', '5.00', 'img/facebook-icon.png', 'Brandon Thorud', '2014-01-23T05:25:10+0000', 'https://www.facebook.com/pg/Partners+Real+Estate+-+Eagle+River%2C+AK-158396570987231/reviews/', '', NULL, NULL, NULL, NULL, NULL, NULL, '19310846971541411390454710', 0),
(531, 170, '102149634732708651390368979', '5.00', 'img/facebook-icon.png', 'Liz Thorud', '2014-01-22T05:36:19+0000', 'https://www.facebook.com/pg/Partners+Real+Estate+-+Eagle+River%2C+AK-158396570987231/reviews/', '', NULL, NULL, NULL, NULL, NULL, NULL, '102149634732708651390368979', 0),
(532, 170, '18822693284724961388875704', '5.00', 'img/facebook-icon.png', 'Eric N Glimmer Wilson', '2014-01-04T22:48:24+0000', 'https://www.facebook.com/pg/Partners+Real+Estate+-+Eagle+River%2C+AK-158396570987231/reviews/', 'This company has all of its customers at the top of the list. They are compassionate and are helpful in every way. If you need a great management company or a great company to rent from this is the company.', NULL, NULL, NULL, NULL, NULL, NULL, '18822693284724961388875704', 0),
(533, 170, '17481709518839711372302683', '5.00', 'img/facebook-icon.png', 'Debbie Cook', '2013-06-27T03:11:23+0000', 'https://www.facebook.com/pg/Partners+Real+Estate+-+Eagle+River%2C+AK-158396570987231/reviews/', '', NULL, NULL, NULL, NULL, NULL, NULL, '17481709518839711372302683', 0),
(534, 170, '102103385401289211367608070', '5.00', 'img/facebook-icon.png', 'Chantel Cheney Smith Warmack', '2013-05-03T19:07:50+0000', 'https://www.facebook.com/pg/Partners+Real+Estate+-+Eagle+River%2C+AK-158396570987231/reviews/', '', NULL, NULL, NULL, NULL, NULL, NULL, '102103385401289211367608070', 0),
(535, 234, '102134131144160631512515845', '5.00', 'img/facebook-icon.png', 'Sarah Laidler', '2017-12-05T23:17:25+0000', 'https://www.facebook.com/pg/T-Square+Properties-325682215701/reviews/', 'T-Square Properties and Tom & Kellie Tollifson are always a joy to work with. It\'s refreshing to see true professionalism in the leasing industry. Thank you for setting the bar and being an example with your leadership and expertise!', NULL, NULL, NULL, NULL, NULL, NULL, '102134131144160631512515845', 0),
(536, 234, '102125785044724591510676874', '5.00', 'img/facebook-icon.png', 'Rich Sheets', '2017-11-14T16:27:54+0000', 'https://www.facebook.com/pg/T-Square+Properties-325682215701/reviews/', 'I have known Tom and Kellie Tollifson since mid-2006.  Iâ€™ve watched them grow their company based on principles of taking care of their clients.  Youâ€™re always going to have some people you just can\'t please, but their growth and sustainability of client satisfaction is a testament to anyone looking for property management as well as a reputable firm to locate rental property.  As their technology consultant, it has been a pleasure working with them and their staff.  As a service provider, I can say without reservation this is a great company to work with.', NULL, NULL, NULL, NULL, NULL, NULL, '102125785044724591510676874', 0),
(537, 234, '102146444568421641510198245', '5.00', 'img/facebook-icon.png', 'Cindy Horst', '2017-11-09T03:30:45+0000', 'https://www.facebook.com/pg/T-Square+Properties-325682215701/reviews/', 'Great property management experience. Kind, professional, extremely knowledgeable.', NULL, NULL, NULL, NULL, NULL, NULL, '102146444568421641510198245', 0),
(538, 234, '101551238442723931500322604', '1.00', 'img/facebook-icon.png', 'Danielle LaFleur', '2017-07-17T20:16:44+0000', 'https://www.facebook.com/pg/T-Square+Properties-325682215701/reviews/', '', NULL, NULL, NULL, NULL, NULL, NULL, '101551238442723931500322604', 0),
(539, 234, '5430884393858391491924518', '1.00', 'img/facebook-icon.png', 'ERicka Hernandez', '2017-04-11T15:28:38+0000', 'https://www.facebook.com/pg/T-Square+Properties-325682215701/reviews/', 'T-Square has placed an amount of $2,90.77 to my account as a back charge. I sent them an email on 4/8/17 requesting an explanation of charges. So far, it is 4/11/17 and I have not received an explanation. This is the second time this incident happens.  They are getting used to put charges to my account without given an explanation.  There are 4 more owners with charges as well and they have not given them a response either.', NULL, NULL, NULL, NULL, NULL, NULL, '5430884393858391491924518', 0),
(540, 234, '15483782586081651481491865', '5.00', 'img/facebook-icon.png', 'Howard Voland', '2016-12-11T21:31:05+0000', 'https://www.facebook.com/pg/T-Square+Properties-325682215701/reviews/', 'I have used T-Square Properties for five years to manage a commercial building and have been delighted with their services. Both owners and staff have done a superb job and have been very responsive to any problems or concerns. Basically they took care of the day-to-day operation and when any issues came up, they were prompt to handle them but at the same time keeping me fully informed, especially when there were tenant problems. Tom and Kellie run the business with great integrity and honesty. Tricia (accounting) and Jonathan (maintenance) were terrific to work with and extremely caring and responsive. I couldn\'t have asked for a better property management company.', NULL, NULL, NULL, NULL, NULL, NULL, '15483782586081651481491865', 0),
(541, 234, '101560511191729581476733380', '3.00', 'img/facebook-icon.png', 'Jason Baum', '2016-10-17T19:43:00+0000', 'https://www.facebook.com/pg/T-Square+Properties-325682215701/reviews/', 'I used T Square for 4 years as I had moved to a different state and needed to rent my property until the market came back. Things started off well and everything seemed to be ok throughout the process. \nThe issues arose when it came time to sell the property and have the tenants vacate the property. That is when I discovered issue after issue and found out that their regular inspections of the property were falsified as there was damage, landscaping issues and general neglect that should have been handled months, if not years, ago. In the end, I just wanted to sever my relationship with them and move on with my life.', NULL, NULL, NULL, NULL, NULL, NULL, '101560511191729581476733380', 0),
(542, 234, '102147744446999221453607528', '5.00', 'img/facebook-icon.png', 'Christine Donovan', '2016-01-24T03:52:08+0000', 'https://www.facebook.com/pg/T-Square+Properties-325682215701/reviews/', '', NULL, NULL, NULL, NULL, NULL, NULL, '102147744446999221453607528', 0),
(543, 234, '101558172685108221453364038', '5.00', 'img/facebook-icon.png', 'Jonathan Garcia', '2016-01-21T08:13:58+0000', 'https://www.facebook.com/pg/T-Square+Properties-325682215701/reviews/', 'I rented out a house I owned in Duvall using their property management service for 4 years. They were very professional, found great tenants really quickly and took great care of the property.\n\nI was really happy that I did not have to lift a finger once I handed them out the keys:\n* I had a tenant who broke the lease while I was in Europe and they found a new tenant within 15 days. All I had to do was read my email informing me of the progress.\n* They dealt with all tenants issues (leaky toilet, garage door problem, etc.) very rapidly. I didn\'t have to do anything and I was informed by email.\n* The service providers they use to work in the house are very cost effective (roof cleaning for under $300 with the provider they used vs $700 I was quoted by several companies)\n* When I sold the house, the buyer\'s inspector said the house was in great shape\n\nOverall I highly recommend them if you want a stress free property management experience.', NULL, NULL, NULL, NULL, NULL, NULL, '101558172685108221453364038', 0),
(544, 234, '101036061279327831443730419', '1.00', 'img/facebook-icon.png', 'Logan Fink', '2015-10-01T20:13:39+0000', 'https://www.facebook.com/pg/T-Square+Properties-325682215701/reviews/', '', NULL, NULL, NULL, NULL, NULL, NULL, '101036061279327831443730419', 0),
(545, 234, '102156739974315221430405299', '5.00', 'img/facebook-icon.png', 'Heather Nicely', '2015-04-30T14:48:19+0000', 'https://www.facebook.com/pg/T-Square+Properties-325682215701/reviews/', 'Great staff, professional company! Five stars!!!!!', NULL, NULL, NULL, NULL, NULL, NULL, '102156739974315221430405299', 0),
(546, 234, '101556164567204121383790331', '5.00', 'img/facebook-icon.png', 'Douglas Frederick Losse', '2013-11-07T02:12:11+0000', 'https://www.facebook.com/pg/T-Square+Properties-325682215701/reviews/', '', NULL, NULL, NULL, NULL, NULL, NULL, '101556164567204121383790331', 0),
(547, 234, '102152615796411881363896847', '5.00', 'img/facebook-icon.png', 'Patrick P J Chapman', '2013-03-21T20:14:07+0000', 'https://www.facebook.com/pg/T-Square+Properties-325682215701/reviews/', '', NULL, NULL, NULL, NULL, NULL, NULL, '102152615796411881363896847', 0),
(548, 234, '101563603044456391360605898', '5.00', 'img/facebook-icon.png', 'Chrysztyna Rowek', '2013-02-11T18:04:58+0000', 'https://www.facebook.com/pg/T-Square+Properties-325682215701/reviews/', '', NULL, NULL, NULL, NULL, NULL, NULL, '101563603044456391360605898', 0),
(549, 223, '101568051269843381481128601', '1.00', 'img/facebook-icon.png', 'Clayton Kammer', '2016-12-07T16:36:41+0000', 'https://www.facebook.com/pg/Class+Act+Property+Management+LLC-504859166388133/reviews/', '', NULL, NULL, NULL, NULL, NULL, NULL, '101568051269843381481128601', 0),
(550, 242, '3242042', '5.00', 'img/zillow.png', 'jbloom1999', '2017-04-07', 'http://www.zillow.com/profile/user19731134/Reviews/?review=3242042', 'Brandon is great. We liked working with Brandon as soon as we met him. He has a great knowledge of the area, the product inventory and market. He has the great combination of professional knowledge and ...', 'http://www.zillow.com/profile/jbloom1999/', NULL, 'Property manage a Single Family home in Eagle River, Eagle River, AK.', '3242042', NULL, NULL, NULL, 0),
(551, 242, '3192648', '5.00', 'img/zillow.png', 'kboquet', '2017-03-19', 'http://www.zillow.com/profile/user19731134/Reviews/?review=3192648', 'We are very grateful for Brandon Thorud and the support of Partners Real Estate when we relocated to Alaska.  Brandon has great interpersonal skills and is very easy to work with.  He is very conscientious ...', 'http://www.zillow.com/profile/kboquet/', NULL, 'Bought a Single Family home in 2009 in Eagle River, Eagle River, AK.', '3192648', NULL, NULL, NULL, 0),
(552, 242, '3185414', '5.00', 'img/zillow.png', 'Janan2', '2017-03-15', 'http://www.zillow.com/profile/user19731134/Reviews/?review=3185414', 'Brandon assisted my family and I with our home purchase when we relocated from Arizona to Alaska. He and his company were fantastic to work with, got our offer accepted, closed early and done all remotely ...', 'http://www.zillow.com/profile/Janan2/', NULL, 'Bought a Single Family home in 2015 in Chugiak, Chugiak, AK.', '3185414', NULL, NULL, NULL, 0),
(553, 245, '2198564', '5.00', 'img/zillow.png', 'Cynthia4619', '2016-02-17', 'http://www.zillow.com/profile/tsquare1/Reviews/?review=2198564', 'I have been looking for a rental home for about two weeks and finally found a company that returns my calls and emails!  They were on time for our appointment and were able to answer all my questions. ...', 'http://www.zillow.com/profile/Cynthia4619/', NULL, 'Helped me rent a Single Family home in Mill Creek, WA.', '2198564', NULL, NULL, NULL, 0),
(554, 245, '553457', '5.00', 'img/zillow.png', 'eddie t 71', '2013-10-24', 'http://www.zillow.com/profile/tsquare1/Reviews/?review=553457', 'Quick to get back to us and accommodating to our schedule.  Had a good selection of homes for us to look at and consider and helped us get into the one that we wanted.  I would recommend to others.', 'http://www.zillow.com/profile/eddie-t-71/', NULL, 'Helped me rent a home in Cottage Lake, Woodinville, WA 98077.', '553457', NULL, NULL, NULL, 0),
(555, 245, '535340', '2.00', 'img/zillow.png', 'sven98011', '2013-10-10', 'http://www.zillow.com/profile/tsquare1/Reviews/?review=535340', 'Poor professionalism; representative was more than 40 minutes late to a property showing and informed us at the last minute that another applicant would be joining the walk through.  Upon hearing the ...', 'http://www.zillow.com/profile/sven98011/', NULL, 'We connected, but it did not work out. Looking in Thrashers Corner, Seattle Hill-Silver Firs, WA 98012', '535340', NULL, NULL, NULL, 0);
INSERT INTO `api_reviews` (`id`, `user_id`, `review_id`, `rating`, `source_img`, `reviewer_name`, `review_date`, `review_url`, `review_desc`, `reviewer_profile_url`, `google_relative_time`, `zillow_review_summary`, `zillow_review_id`, `google_review_id`, `yelp_review_id`, `facebook_review_id`, `deleted`) VALUES
(556, 245, '2H9gGcuSJCSrN_EjaY89aQ', '5.00', 'img/yelp-icon.png', 'Brittni W.', '2016-09-13 22:54:44', 'https://www.yelp.com/biz/partners-real-estate-eagle-river?hrid=2H9gGcuSJCSrN_EjaY89aQ&adjust_creative=yLRKI4b4orlxDvOUmYsS9A&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_reviews&utm_source=yLRKI4b4orlxDvOUmYsS9A', 'We have been using Partners Real Estate since we first landed in Alaska a few years ago.  We started as renters, they were strict about cleanliness and...', 'https://s3-media2.fl.yelpcdn.com/photo/InpLWAKhGZkkPRkdalmzIw/o.jpg', NULL, NULL, NULL, NULL, '2H9gGcuSJCSrN_EjaY89aQ', NULL, 0),
(557, 245, 'd65SlxOfx2w1vj6kcszcvg', '2.00', 'img/yelp-icon.png', 'Michael S.', '2017-04-11 22:53:08', 'https://www.yelp.com/biz/partners-real-estate-eagle-river?hrid=d65SlxOfx2w1vj6kcszcvg&adjust_creative=yLRKI4b4orlxDvOUmYsS9A&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_reviews&utm_source=yLRKI4b4orlxDvOUmYsS9A', 'I\'ll begin with saying I\'ve never had a problem with any real estate or property management company before. I\'ve never had any damages to property, and I\'ve...', '', NULL, NULL, NULL, NULL, 'd65SlxOfx2w1vj6kcszcvg', NULL, 0),
(558, 245, 'istgEquSIh88PfQN7jARbw', '5.00', 'img/yelp-icon.png', 'Natalie J.', '2017-01-31 10:45:11', 'https://www.yelp.com/biz/partners-real-estate-eagle-river?hrid=istgEquSIh88PfQN7jARbw&adjust_creative=yLRKI4b4orlxDvOUmYsS9A&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_reviews&utm_source=yLRKI4b4orlxDvOUmYsS9A', 'Partners Real Estate is a great company for buying, selling and managing. Brandon is a hard worker. They are managing my townhouse and got it rented in one...', '', NULL, NULL, NULL, NULL, 'istgEquSIh88PfQN7jARbw', NULL, 0),
(559, 245, '5215572015497921486045891', '5.00', 'img/facebook-icon.png', 'Ankit Chetu', '2017-02-02T14:31:31+0000', 'https://www.facebook.com/pg/Merchant+1-666741620153385/reviews/', 'Hello i am here to write a review because this page providing me lot of offers.', NULL, NULL, NULL, NULL, NULL, NULL, '5215572015497921486045891', 0),
(560, 245, '15213508846147311485181245', '4.00', 'img/facebook-icon.png', 'Vineet Kumar Arya', '2017-01-23T14:20:45+0000', 'https://www.facebook.com/pg/Merchant+1-666741620153385/reviews/', 'Hi Good Lorem ipsum dummy content. So it is usefullllll........', NULL, NULL, NULL, NULL, NULL, NULL, '15213508846147311485181245', 0),
(561, 245, '3001111338301261485175188', '4.00', 'img/facebook-icon.png', 'Rakesh Maurya', '2017-01-23T12:39:48+0000', 'https://www.facebook.com/pg/Merchant+1-666741620153385/reviews/', 'Hello this page is providing promotional offers', NULL, NULL, NULL, NULL, NULL, NULL, '3001111338301261485175188', 0),
(562, 246, '3242042', '5.00', 'img/zillow.png', 'jbloom1999', '2017-04-07', 'http://www.zillow.com/profile/user19731134/Reviews/?review=3242042', 'Brandon is great. We liked working with Brandon as soon as we met him. He has a great knowledge of the area, the product inventory and market. He has the great combination of professional knowledge and ...', 'http://www.zillow.com/profile/jbloom1999/', NULL, 'Property manage a Single Family home in Eagle River, Eagle River, AK.', '3242042', NULL, NULL, NULL, 0),
(563, 246, '3192648', '5.00', 'img/zillow.png', 'kboquet', '2017-03-19', 'http://www.zillow.com/profile/user19731134/Reviews/?review=3192648', 'We are very grateful for Brandon Thorud and the support of Partners Real Estate when we relocated to Alaska.  Brandon has great interpersonal skills and is very easy to work with.  He is very conscientious ...', 'http://www.zillow.com/profile/kboquet/', NULL, 'Bought a Single Family home in 2009 in Eagle River, Eagle River, AK.', '3192648', NULL, NULL, NULL, 0),
(564, 246, '3185414', '5.00', 'img/zillow.png', 'Janan2', '2017-03-15', 'http://www.zillow.com/profile/user19731134/Reviews/?review=3185414', 'Brandon assisted my family and I with our home purchase when we relocated from Arizona to Alaska. He and his company were fantastic to work with, got our offer accepted, closed early and done all remotely ...', 'http://www.zillow.com/profile/Janan2/', NULL, 'Bought a Single Family home in 2015 in Chugiak, Chugiak, AK.', '3185414', NULL, NULL, NULL, 0),
(565, 246, '113246034351852089601', '5.00', 'img/Google.png', 'James Haines', '2017-07-28 23:53:28', 'https://www.google.com/maps/contrib/113246034351852089601/reviews', 'Very scary process for anyone especially me being my first home I\'ve bought! Team Flores knew this going into it and explained everything to me (in words I could understand) and was able to answer any of my questions! U can tell this is a team that cares about my needs rather than a paycheck thank you for everything you guys did for me will definitely be referring anyone I know to you guys and hope to work together again one day!', 'https://lh5.googleusercontent.com/-ELQyrRB2gcA/AAAAAAAAAAI/AAAAAAAAAAA/AFiYof3o3mvUkwE5figCwZ5JNW-HdoV_uw/s128-c0x00000000-cc-rp-mo/photo.jpg', '4 months ago', NULL, NULL, '113246034351852089601', NULL, NULL, 0),
(566, 246, '101395116478776692943', '5.00', 'img/Google.png', 'Robin Root', '2017-07-05 17:38:41', 'https://www.google.com/maps/contrib/101395116478776692943/reviews', 'I highly recommend Team Flores for your real estate needs.  They sold our house the day they put up the for sale sign and it sold for more than the asking price!  When there was a problem with the title, they took care of it right away and the sale went through with no problems.  Lorraine and Saundra are knowledgeable, caring and helpful realtors who will work with you every step of the way, whether you are buying or selling.  I will definitely use Team Flores the next time I need to buy or sell a home!', 'https://lh6.googleusercontent.com/-wQbdeSc4oJI/AAAAAAAAAAI/AAAAAAAAAAA/AFiYof0rF_XYA0XQfy_8Nw38WdcxIeqeXg/s128-c0x00000000-cc-rp-mo/photo.jpg', '5 months ago', NULL, NULL, '101395116478776692943', NULL, NULL, 0),
(567, 246, '115334713129436718016', '5.00', 'img/Google.png', 'Giselle Garcia', '2017-09-02 02:10:59', 'https://www.google.com/maps/contrib/115334713129436718016/reviews', 'The girls are wonderful, very thorough,  work very very hard, they ask all the questions necessary to find what you want. Not just hard working but also really fun, easy going, very relatable. Do not take a no for an answer from the sellers but always in the most respectful way.', 'https://lh3.googleusercontent.com/-QTB0cyKt7K0/AAAAAAAAAAI/AAAAAAAAAAA/AFiYof0uUKEEtKs9R-WN_L6DBX2qzWVR9g/s128-c0x00000000-cc-rp-mo/photo.jpg', '3 months ago', NULL, NULL, '115334713129436718016', NULL, NULL, 0),
(568, 246, '102883582952947235343', '5.00', 'img/Google.png', 'Jeff R', '2017-06-29 02:10:17', 'https://www.google.com/maps/contrib/102883582952947235343/reviews', 'After the realtor that we worked with for years moved back east, a friend recommended Lorraine. I am so lucky he did. These ladies anticipated everything, communicated very well and helped us make a great transaction from start to finish. Well done ladies!!', 'https://lh3.googleusercontent.com/-J9CiOqELIK4/AAAAAAAAAAI/AAAAAAAAAAA/AFiYof0ZU6CB8-Ji6o2iAN6qQvOFQOpjxA/s128-c0x00000000-cc-rp-mo/photo.jpg', '5 months ago', NULL, NULL, '102883582952947235343', NULL, NULL, 0),
(569, 246, '105810693394970120913', '5.00', 'img/Google.png', 'Cinthya Negrete', '2017-09-02 01:10:31', 'https://www.google.com/maps/contrib/105810693394970120913/reviews', 'Lorraine and Saundra help us enormously findign our house last year, in a beautiful community in Escondido.  We were first time homebuyers with little knowledge of the process, but thankfully we got to work with them and...these ladies rock!... first of all they care about their clients, and are passionate to help them find the perfect home, they did it for us :). They were really good listeners and great advisors at times when big decisions needed to be made, explaning things with good details but trying to always make it simple for us, adapting to our schedule, and later, even coming up with home improvements ideas, including reference numbers and all. We are really pleased with our home and the journey that it was to get it, but definitely we couldn\'t done it better without team Flores. I\'d recommend Lorraine and Saudra anytime.', 'https://lh5.googleusercontent.com/-7WVz1oGBY9E/AAAAAAAAAAI/AAAAAAAAAAA/AFiYof3NCRYq4JQk18IKeX-pfjWSEN-_Nw/s128-c0x00000000-cc-rp-mo/photo.jpg', '3 months ago', NULL, NULL, '105810693394970120913', NULL, NULL, 0),
(570, 246, 'JWtTzHgx0R8SewcKRTaF7A', '5.00', 'img/yelp-icon.png', 'B J.', '2017-10-10 14:45:12', 'https://www.yelp.com/biz/team-flores-real-estate-coldwell-banker-san-diego-2?hrid=JWtTzHgx0R8SewcKRTaF7A&adjust_creative=yLRKI4b4orlxDvOUmYsS9A&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_reviews&utm_source=yLRKI4b4orlxDvOUmYsS9A', 'Team Flores is one of the best real estate teams in San Diego area! Lorraine and Saundra always provided me with high quality service. Although they handle...', 'https://s3-media1.fl.yelpcdn.com/photo/cLLAmW6VslFQZ7Ii9q-KGg/o.jpg', NULL, NULL, NULL, NULL, 'JWtTzHgx0R8SewcKRTaF7A', NULL, 0),
(571, 246, '8-RP0w9WIeeXU4Z_8P8ohA', '5.00', 'img/yelp-icon.png', 'Jeff R.', '2017-06-28 18:59:58', 'https://www.yelp.com/biz/team-flores-real-estate-coldwell-banker-san-diego-2?hrid=8-RP0w9WIeeXU4Z_8P8ohA&adjust_creative=yLRKI4b4orlxDvOUmYsS9A&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_reviews&utm_source=yLRKI4b4orlxDvOUmYsS9A', 'Lorraine and Sandra were fantastic. The realtor we used for years relocated back east. We needed a new realtor and much to our good fortune we were...', '', NULL, NULL, NULL, NULL, '8-RP0w9WIeeXU4Z_8P8ohA', NULL, 0),
(572, 252, 'JWtTzHgx0R8SewcKRTaF7A', '5.00', 'img/yelp-icon.png', 'B J.', '2017-10-10 14:45:12', 'https://www.yelp.com/biz/team-flores-real-estate-coldwell-banker-san-diego-2?hrid=JWtTzHgx0R8SewcKRTaF7A&adjust_creative=yLRKI4b4orlxDvOUmYsS9A&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_reviews&utm_source=yLRKI4b4orlxDvOUmYsS9A', 'Team Flores is one of the best real estate teams in San Diego area! Lorraine and Saundra always provided me with high quality service. Although they handle...', 'https://s3-media1.fl.yelpcdn.com/photo/cLLAmW6VslFQZ7Ii9q-KGg/o.jpg', NULL, NULL, NULL, NULL, 'JWtTzHgx0R8SewcKRTaF7A', NULL, 0),
(573, 252, '8-RP0w9WIeeXU4Z_8P8ohA', '5.00', 'img/yelp-icon.png', 'Jeff R.', '2017-06-28 18:59:58', 'https://www.yelp.com/biz/team-flores-real-estate-coldwell-banker-san-diego-2?hrid=8-RP0w9WIeeXU4Z_8P8ohA&adjust_creative=yLRKI4b4orlxDvOUmYsS9A&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_reviews&utm_source=yLRKI4b4orlxDvOUmYsS9A', 'Lorraine and Sandra were fantastic. The realtor we used for years relocated back east. We needed a new realtor and much to our good fortune we were...', '', NULL, NULL, NULL, NULL, '8-RP0w9WIeeXU4Z_8P8ohA', NULL, 0),
(574, 262, '-qgmPjM-A0BF3LQ4_8ValQ', '5.00', 'img/yelp-icon.png', 'Todd P.', '2015-10-19 16:49:44', 'https://www.yelp.com/biz/elite-event-dinner-with-the-chef-at-avant-san-diego?hrid=-qgmPjM-A0BF3LQ4_8ValQ&adjust_creative=yLRKI4b4orlxDvOUmYsS9A&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_reviews&utm_source=yLRKI4b4orlxDvOUmYsS9A', 'I went home comfortably stuffed and quite cheery.\nFirst off I want to share how goofy we are, not knowing how to find the front of this place. Having never...', 'https://s3-media2.fl.yelpcdn.com/photo/DOywnfnEZEWhGeQP3Uv-rw/o.jpg', NULL, NULL, NULL, NULL, '-qgmPjM-A0BF3LQ4_8ValQ', NULL, 0),
(575, 262, 'DnZlNOaFCZgaP70U-My3dQ', '5.00', 'img/yelp-icon.png', 'Vicki C.', '2015-06-11 11:18:56', 'https://www.yelp.com/biz/elite-event-dinner-with-the-chef-at-avant-san-diego?hrid=DnZlNOaFCZgaP70U-My3dQ&adjust_creative=yLRKI4b4orlxDvOUmYsS9A&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_reviews&utm_source=yLRKI4b4orlxDvOUmYsS9A', 'AVANT raised the bar, this was an exceptional Yelp Elite event. A small group of lucky Elites were treated to a full dining experience with cocktails,...', 'https://s3-media1.fl.yelpcdn.com/photo/0jaWzCGcPNTrtPPA5S1VYg/o.jpg', NULL, NULL, NULL, NULL, 'DnZlNOaFCZgaP70U-My3dQ', NULL, 0),
(577, 262, 'JGXuyFcIBnG2JSG4fubMhA', '5.00', 'img/yelp-icon.png', 'Daphne L.', '2015-06-09 22:58:42', 'https://www.yelp.com/biz/elite-event-dinner-with-the-chef-at-avant-san-diego?hrid=JGXuyFcIBnG2JSG4fubMhA&adjust_creative=yLRKI4b4orlxDvOUmYsS9A&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_reviews&utm_source=yLRKI4b4orlxDvOUmYsS9A', 'I\'ve put my foot down: my new \"last meal\" would be the Braised Lamb Shank AVANT served tonight. This was absolutely to die for and I cannot even explain...', 'https://s3-media2.fl.yelpcdn.com/photo/n_lCus_1NG0I82n2N0DbRA/o.jpg', NULL, NULL, NULL, NULL, 'JGXuyFcIBnG2JSG4fubMhA', NULL, 0),
(578, 267, '3216691', '5.00', 'img/zillow.png', 'zoyaclestenkof', '2017-03-29', 'http://www.zillow.com/profile/user27708862/Reviews/?review=3216691', 'Stacy was reliable, prompt, courteous and very knowledgeable in helping us buy a home. She made purchasing a home a pleasant experience, and found us exactly what we needed in a short period of time. ...', 'http://www.zillow.com/profile/zoyaclestenkof/', NULL, 'Showed home in 2005 in Abbott Loop, Anchorage, AK 99507.', '3216691', NULL, NULL, NULL, 0),
(579, 267, '3214468', '5.00', 'img/zillow.png', 'zuser20160314213832983', '2017-03-28', 'http://www.zillow.com/profile/user27708862/Reviews/?review=3214468', 'I began working with Stacy in April of 2016 when I was looking to rent an apartment/condo. She was the licensee for the property listed that I was looking at, and after I obtained the lease of said property, ...', 'http://www.zillow.com/profile/zuser20160314213832983/', NULL, 'Bought a Condo home in 2017 in Scenic Foothills, Anchorage, AK.', '3214468', NULL, NULL, NULL, 0),
(580, 267, '1693525', '5.00', 'img/zillow.png', 'AKjes', '2015-04-07', 'http://www.zillow.com/profile/user27708862/Reviews/?review=1693525', 'i have purchased a house previously with another realtor, so am able to compare this experience with the previous- that said, I highly recommend Stacy and would work with her again. <br/>I have only good ...', '', NULL, 'Bought a Single Family home in 2015 in Bayshore-Klatt, Anchorage, AK.', '1693525', NULL, NULL, NULL, 0),
(581, 267, '101876689730805561109', '5.00', 'img/Google.png', 'christina fogg', '2017-11-16 02:07:57', 'https://www.google.com/maps/contrib/101876689730805561109/reviews', 'Brandon is AMAZING!!! He help sell my home back in 2015 and helped my husband and I buy our new home (2017). When the sellers were being unreasonable he went to bat for us and got the deal where it worked best for us. His whole team were all helpful in any questions we had. If you are looking to buy or rent in Alaska look up Partners Realty and ask for Brandon Thorud. He will make it a smooth and fun experience.', 'https://lh3.googleusercontent.com/-MiEriSll9pI/AAAAAAAAAAI/AAAAAAAAAAA/AFiYof3b7Zs32NrfSP1udYjjW-NsOEOG2g/s128-c0x00000000-cc-rp-mo/photo.jpg', 'a month ago', NULL, NULL, '101876689730805561109', NULL, NULL, 0),
(582, 267, '117230349546220471870', '5.00', 'img/Google.png', 'Traci Lenard', '2017-08-16 23:13:54', 'https://www.google.com/maps/contrib/117230349546220471870/reviews', 'Kim and Terry are a great team! They were very communicative throughout the entire process, making the sale of the property as seamless as possible. They are personable and professional. I couldn\'t have been more comfortable and pleased to have their help!', 'https://lh5.googleusercontent.com/-bet4-ch3JT8/AAAAAAAAAAI/AAAAAAAAAAA/AFiYof1fAcAmyu45h7OF0T0NpDOGMOuWFA/s128-c0x00000000-cc-rp-mo/photo.jpg', '4 months ago', NULL, NULL, '117230349546220471870', NULL, NULL, 0),
(583, 267, '118017591695459869073', '1.00', 'img/Google.png', 'Anna Smelser', '2017-11-03 18:05:26', 'https://www.google.com/maps/contrib/118017591695459869073/reviews', 'All Iâ€™m going to say is I wish we never signed a lease with them! I canâ€™t wait till August 2018 when our lease is up! Will never use them again.', 'https://lh3.googleusercontent.com/-bzm7o5k-oOw/AAAAAAAAAAI/AAAAAAAAAAA/AFiYof2zN9jTUOlSOm3JfyRGw4K55EvqKQ/s128-c0x00000000-cc-rp-mo/photo.jpg', 'a month ago', NULL, NULL, '118017591695459869073', NULL, NULL, 0),
(584, 267, '102631988454298483310', '5.00', 'img/Google.png', 'Brittni Anderson', '2016-12-01 16:29:56', 'https://www.google.com/maps/contrib/102631988454298483310/reviews', 'We started out as renters through Partners when we first got stationed in Alaska.  They were helpful and got us into an affordable home within 2 days.  Any time we had issues maintenance was quick to respond in a timely manner. They were strict but fair which is why we chose them to help us buy our first house.  When it was time for us to leave Alaska for our next adventure we were confident leaving them in charge of our property. They had renters in our house in less than a week.  Brandon has gone above and beyond with communication. Would definitely recommend.', 'https://lh5.googleusercontent.com/-7JVeKlIsIGU/AAAAAAAAAAI/AAAAAAAAAAA/AFiYof2cTTRLD7nCSKuI9yGYo8jASqQ0ig/s128-c0x00000000-cc-rp-mo/photo.jpg', 'a year ago', NULL, NULL, '102631988454298483310', NULL, NULL, 0),
(585, 267, '111993907216625355573', '1.00', 'img/Google.png', 'haley lienhart', '2017-09-02 18:44:27', 'https://www.google.com/maps/contrib/111993907216625355573/reviews', 'Unorganized company. Will give you multiple different answers for questions, have lost payments, takes forever to get any sort of response when leaving messages.', 'https://lh3.googleusercontent.com/-CUMGHbxGQ08/AAAAAAAAAAI/AAAAAAAAAAA/AFiYof1_YgQFRmst_ej-UyHzJyu2nD9Xtw/s128-c0x00000000-cc-rp-mo/photo.jpg', '3 months ago', NULL, NULL, '111993907216625355573', NULL, NULL, 0),
(586, 267, '2H9gGcuSJCSrN_EjaY89aQ', '5.00', 'img/yelp-icon.png', 'Brittni W.', '2016-09-13 22:54:44', 'https://www.yelp.com/biz/partners-real-estate-eagle-river?hrid=2H9gGcuSJCSrN_EjaY89aQ&adjust_creative=yLRKI4b4orlxDvOUmYsS9A&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_reviews&utm_source=yLRKI4b4orlxDvOUmYsS9A', 'We have been using Partners Real Estate since we first landed in Alaska a few years ago.  We started as renters, they were strict about cleanliness and...', 'https://s3-media2.fl.yelpcdn.com/photo/InpLWAKhGZkkPRkdalmzIw/o.jpg', NULL, NULL, NULL, NULL, '2H9gGcuSJCSrN_EjaY89aQ', NULL, 0),
(587, 267, 'd65SlxOfx2w1vj6kcszcvg', '2.00', 'img/yelp-icon.png', 'Michael S.', '2017-04-11 22:53:08', 'https://www.yelp.com/biz/partners-real-estate-eagle-river?hrid=d65SlxOfx2w1vj6kcszcvg&adjust_creative=yLRKI4b4orlxDvOUmYsS9A&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_reviews&utm_source=yLRKI4b4orlxDvOUmYsS9A', 'I\'ll begin with saying I\'ve never had a problem with any real estate or property management company before. I\'ve never had any damages to property, and I\'ve...', '', NULL, NULL, NULL, NULL, 'd65SlxOfx2w1vj6kcszcvg', NULL, 0),
(588, 267, 'istgEquSIh88PfQN7jARbw', '5.00', 'img/yelp-icon.png', 'Natalie J.', '2017-01-31 10:45:11', 'https://www.yelp.com/biz/partners-real-estate-eagle-river?hrid=istgEquSIh88PfQN7jARbw&adjust_creative=yLRKI4b4orlxDvOUmYsS9A&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_reviews&utm_source=yLRKI4b4orlxDvOUmYsS9A', 'Partners Real Estate is a great company for buying, selling and managing. Brandon is a hard worker. They are managing my townhouse and got it rented in one...', '', NULL, NULL, NULL, NULL, 'istgEquSIh88PfQN7jARbw', NULL, 0),
(589, 268, '3216691', '5.00', 'img/zillow.png', 'zoyaclestenkof', '2017-03-29', 'http://www.zillow.com/profile/user27708862/Reviews/?review=3216691', 'Stacy was reliable, prompt, courteous and very knowledgeable in helping us buy a home. She made purchasing a home a pleasant experience, and found us exactly what we needed in a short period of time. ...', 'http://www.zillow.com/profile/zoyaclestenkof/', NULL, 'Showed home in 2005 in Abbott Loop, Anchorage, AK 99507.', '3216691', NULL, NULL, NULL, 0),
(590, 268, '3214468', '5.00', 'img/zillow.png', 'zuser20160314213832983', '2017-03-28', 'http://www.zillow.com/profile/user27708862/Reviews/?review=3214468', 'I began working with Stacy in April of 2016 when I was looking to rent an apartment/condo. She was the licensee for the property listed that I was looking at, and after I obtained the lease of said property, ...', 'http://www.zillow.com/profile/zuser20160314213832983/', NULL, 'Bought a Condo home in 2017 in Scenic Foothills, Anchorage, AK.', '3214468', NULL, NULL, NULL, 0),
(591, 268, '1693525', '5.00', 'img/zillow.png', 'AKjes', '2015-04-07', 'http://www.zillow.com/profile/user27708862/Reviews/?review=1693525', 'i have purchased a house previously with another realtor, so am able to compare this experience with the previous- that said, I highly recommend Stacy and would work with her again. <br/>I have only good ...', '', NULL, 'Bought a Single Family home in 2015 in Bayshore-Klatt, Anchorage, AK.', '1693525', NULL, NULL, NULL, 0),
(592, 270, '3242042', '5.00', 'img/zillow.png', 'jbloom1999', '2017-04-07', 'http://www.zillow.com/profile/user19731134/Reviews/?review=3242042', 'Brandon is great. We liked working with Brandon as soon as we met him. He has a great knowledge of the area, the product inventory and market. He has the great combination of professional knowledge and ...', 'http://www.zillow.com/profile/jbloom1999/', NULL, 'Property manage a Single Family home in Eagle River, Eagle River, AK.', '3242042', NULL, NULL, NULL, 0),
(593, 270, '3192648', '5.00', 'img/zillow.png', 'kboquet', '2017-03-19', 'http://www.zillow.com/profile/user19731134/Reviews/?review=3192648', 'We are very grateful for Brandon Thorud and the support of Partners Real Estate when we relocated to Alaska.  Brandon has great interpersonal skills and is very easy to work with.  He is very conscientious ...', 'http://www.zillow.com/profile/kboquet/', NULL, 'Bought a Single Family home in 2009 in Eagle River, Eagle River, AK.', '3192648', NULL, NULL, NULL, 0),
(594, 270, '3185414', '5.00', 'img/zillow.png', 'Janan2', '2017-03-15', 'http://www.zillow.com/profile/user19731134/Reviews/?review=3185414', 'Brandon assisted my family and I with our home purchase when we relocated from Arizona to Alaska. He and his company were fantastic to work with, got our offer accepted, closed early and done all remotely ...', 'http://www.zillow.com/profile/Janan2/', NULL, 'Bought a Single Family home in 2015 in Chugiak, Chugiak, AK.', '3185414', NULL, NULL, NULL, 0),
(595, 270, '113246034351852089601', '5.00', 'img/Google.png', 'James Haines', '2017-07-28 23:53:28', 'https://www.google.com/maps/contrib/113246034351852089601/reviews', 'Very scary process for anyone especially me being my first home I\'ve bought! Team Flores knew this going into it and explained everything to me (in words I could understand) and was able to answer any of my questions! U can tell this is a team that cares about my needs rather than a paycheck thank you for everything you guys did for me will definitely be referring anyone I know to you guys and hope to work together again one day!', 'https://lh5.googleusercontent.com/-ELQyrRB2gcA/AAAAAAAAAAI/AAAAAAAAAAA/AFiYof3o3mvUkwE5figCwZ5JNW-HdoV_uw/s128-c0x00000000-cc-rp-mo/photo.jpg', '4 months ago', NULL, NULL, '113246034351852089601', NULL, NULL, 1),
(596, 270, '115334713129436718016', '5.00', 'img/Google.png', 'Giselle Garcia', '2017-09-02 02:10:59', 'https://www.google.com/maps/contrib/115334713129436718016/reviews', 'The girls are wonderful, very thorough,  work very very hard, they ask all the questions necessary to find what you want. Not just hard working but also really fun, easy going, very relatable. Do not take a no for an answer from the sellers but always in the most respectful way.', 'https://lh3.googleusercontent.com/-QTB0cyKt7K0/AAAAAAAAAAI/AAAAAAAAAAA/AFiYof0uUKEEtKs9R-WN_L6DBX2qzWVR9g/s128-c0x00000000-cc-rp-mo/photo.jpg', '3 months ago', NULL, NULL, '115334713129436718016', NULL, NULL, 1),
(597, 270, '101395116478776692943', '5.00', 'img/Google.png', 'Robin Root', '2017-07-05 17:38:41', 'https://www.google.com/maps/contrib/101395116478776692943/reviews', 'I highly recommend Team Flores for your real estate needs.  They sold our house the day they put up the for sale sign and it sold for more than the asking price!  When there was a problem with the title, they took care of it right away and the sale went through with no problems.  Lorraine and Saundra are knowledgeable, caring and helpful realtors who will work with you every step of the way, whether you are buying or selling.  I will definitely use Team Flores the next time I need to buy or sell a home!', 'https://lh6.googleusercontent.com/-wQbdeSc4oJI/AAAAAAAAAAI/AAAAAAAAAAA/AFiYof0rF_XYA0XQfy_8Nw38WdcxIeqeXg/s128-c0x00000000-cc-rp-mo/photo.jpg', '5 months ago', NULL, NULL, '101395116478776692943', NULL, NULL, 1),
(598, 270, '102883582952947235343', '5.00', 'img/Google.png', 'Jeff R', '2017-06-29 02:10:17', 'https://www.google.com/maps/contrib/102883582952947235343/reviews', 'After the realtor that we worked with for years moved back east, a friend recommended Lorraine. I am so lucky he did. These ladies anticipated everything, communicated very well and helped us make a great transaction from start to finish. Well done ladies!!', 'https://lh3.googleusercontent.com/-J9CiOqELIK4/AAAAAAAAAAI/AAAAAAAAAAA/AFiYof0ZU6CB8-Ji6o2iAN6qQvOFQOpjxA/s128-c0x00000000-cc-rp-mo/photo.jpg', '5 months ago', NULL, NULL, '102883582952947235343', NULL, NULL, 1),
(599, 270, '105810693394970120913', '5.00', 'img/Google.png', 'Cinthya Negrete', '2017-09-02 01:10:31', 'https://www.google.com/maps/contrib/105810693394970120913/reviews', 'Lorraine and Saundra help us enormously findign our house last year, in a beautiful community in Escondido.  We were first time homebuyers with little knowledge of the process, but thankfully we got to work with them and...these ladies rock!... first of all they care about their clients, and are passionate to help them find the perfect home, they did it for us :). They were really good listeners and great advisors at times when big decisions needed to be made, explaning things with good details but trying to always make it simple for us, adapting to our schedule, and later, even coming up with home improvements ideas, including reference numbers and all. We are really pleased with our home and the journey that it was to get it, but definitely we couldn\'t done it better without team Flores. I\'d recommend Lorraine and Saudra anytime.', 'https://lh5.googleusercontent.com/-7WVz1oGBY9E/AAAAAAAAAAI/AAAAAAAAAAA/AFiYof3NCRYq4JQk18IKeX-pfjWSEN-_Nw/s128-c0x00000000-cc-rp-mo/photo.jpg', '3 months ago', NULL, NULL, '105810693394970120913', NULL, NULL, 1),
(600, 270, 'JWtTzHgx0R8SewcKRTaF7A', '5.00', 'img/yelp-icon.png', 'B J.', '2017-10-10 14:45:12', 'https://www.yelp.com/biz/team-flores-real-estate-coldwell-banker-san-diego-2?hrid=JWtTzHgx0R8SewcKRTaF7A&adjust_creative=yLRKI4b4orlxDvOUmYsS9A&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_reviews&utm_source=yLRKI4b4orlxDvOUmYsS9A', 'Team Flores is one of the best real estate teams in San Diego area! Lorraine and Saundra always provided me with high quality service. Although they handle...', 'https://s3-media1.fl.yelpcdn.com/photo/cLLAmW6VslFQZ7Ii9q-KGg/o.jpg', NULL, NULL, NULL, NULL, 'JWtTzHgx0R8SewcKRTaF7A', NULL, 0),
(601, 270, '8-RP0w9WIeeXU4Z_8P8ohA', '5.00', 'img/yelp-icon.png', 'Jeff R.', '2017-06-28 18:59:58', 'https://www.yelp.com/biz/team-flores-real-estate-coldwell-banker-san-diego-2?hrid=8-RP0w9WIeeXU4Z_8P8ohA&adjust_creative=yLRKI4b4orlxDvOUmYsS9A&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_reviews&utm_source=yLRKI4b4orlxDvOUmYsS9A', 'Lorraine and Sandra were fantastic. The realtor we used for years relocated back east. We needed a new realtor and much to our good fortune we were...', '', NULL, NULL, NULL, NULL, '8-RP0w9WIeeXU4Z_8P8ohA', NULL, 0),
(602, 270, '112609143360730447890', '5.00', 'img/Google.png', 'Tami Shepherd', '2017-09-28 23:45:47', 'https://www.google.com/maps/contrib/112609143360730447890/reviews', 'I love Pampered Pooch, Lisa is wonderful and so is Katie and the rest of the employees.  I wouldn\'t go anywhere else. I have a yorkie and Frenchie.', 'https://lh6.googleusercontent.com/-YHOg3_y9-78/AAAAAAAAAAI/AAAAAAAAAAA/AFiYof1FxKJpHio9H7v68cum2Jz1VdKneA/s128-c0x00000000-cc-rp-mo/photo.jpg', '2 months ago', NULL, NULL, '112609143360730447890', NULL, NULL, 0),
(603, 270, '110597731838752734886', '1.00', 'img/Google.png', 'Dawn Raus', '2017-04-29 23:49:51', 'https://www.google.com/maps/contrib/110597731838752734886/reviews', 'Don\'t bring your pet here! They cut a chunk out of my dogs ear, blood everywhere!! I even had to go back to get his nails trimmed. Then a third trip to show how they ruined my mini schnauzer\'s beautiful beard! They also cut his skirt way to low. The owner, Lisa wouldn\'t give me a refund or even a complimentary grooming (I was even willing to return for this)!!', 'https://lh3.googleusercontent.com/-8SY0QgtBYWM/AAAAAAAAAAI/AAAAAAAAABQ/k-5QJbyTbqw/s128-c0x00000000-cc-rp-mo/photo.jpg', '7 months ago', NULL, NULL, '110597731838752734886', NULL, NULL, 0),
(604, 270, '117644597470833551493', '5.00', 'img/Google.png', 'Les St. John', '2017-01-03 08:57:45', 'https://www.google.com/maps/contrib/117644597470833551493/reviews', 'Fantastic......Lindsie your the BEST Groomer ', 'https://lh4.googleusercontent.com/-OGNRpLDeKiE/AAAAAAAAAAI/AAAAAAAAAMU/1R2OK3sYM64/s128-c0x00000000-cc-rp-mo/photo.jpg', '11 months ago', NULL, NULL, '117644597470833551493', NULL, NULL, 0),
(605, 270, '1254445321', '5.00', 'img/Google.png', 'A Google User', '2009-10-02 01:02:01', '', 'This is the best place to take your dogs. I took my two babies there and they looked so pretty afterward. They do an excellent job and the price is really good! They are 100 % honest.... ', '', '8 years ago', NULL, NULL, '1254445321', NULL, NULL, 0),
(606, 270, '1253057511', '5.00', 'img/Google.png', 'A Google User', '2009-09-15 23:31:51', '', 'The groomers at Pampered Pooch are just hands down the best. They really know what they are doing and my dog always comes out looking great and happy as can be! I would recommend this establishment 100 percent. ', '', '8 years ago', NULL, NULL, '1253057511', NULL, NULL, 0),
(607, 270, '2ZQV5b75oCItb4Np2sIwrw', '5.00', 'img/yelp-icon.png', 'E H.', '2017-11-04 15:12:40', 'https://www.yelp.com/biz/pamir-kabob-house-san-diego?hrid=2ZQV5b75oCItb4Np2sIwrw&adjust_creative=yLRKI4b4orlxDvOUmYsS9A&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_reviews&utm_source=yLRKI4b4orlxDvOUmYsS9A', 'Really good and tasty food. Family run, I like it very much and will be back. Thank you Diba (Mom) and chef (hubby) and girls (greeters :). \n\nHEADS UP: they...', 'https://s3-media1.fl.yelpcdn.com/photo/wM4XCz6zwojiLhOKv2PBrA/o.jpg', NULL, NULL, NULL, NULL, '2ZQV5b75oCItb4Np2sIwrw', NULL, 1),
(608, 270, 'cFNrVLmOT7inPvUhPugK6A', '4.00', 'img/yelp-icon.png', 'Natalia Y.', '2017-11-07 19:11:58', 'https://www.yelp.com/biz/pamir-kabob-house-san-diego?hrid=cFNrVLmOT7inPvUhPugK6A&adjust_creative=yLRKI4b4orlxDvOUmYsS9A&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_reviews&utm_source=yLRKI4b4orlxDvOUmYsS9A', 'Very nice place. Great food & tea. Pretty good baklava. Amazing service. I loved floor seating. So relaxing.\n\nWe had:\nManty - 4\nSamosas - 3 (wasn\'t out...', 'https://s3-media3.fl.yelpcdn.com/photo/ae3T-ubela5z3uXIotU1Ng/o.jpg', NULL, NULL, NULL, NULL, 'cFNrVLmOT7inPvUhPugK6A', NULL, 1),
(609, 270, '_AcQ41DeGFwHnORpxvU4nA', '4.00', 'img/yelp-icon.png', 'Su T.', '2017-10-21 07:51:59', 'https://www.yelp.com/biz/pamir-kabob-house-san-diego?hrid=_AcQ41DeGFwHnORpxvU4nA&adjust_creative=yLRKI4b4orlxDvOUmYsS9A&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_reviews&utm_source=yLRKI4b4orlxDvOUmYsS9A', 'There is a bit of a musty smell inside but once you get past that the food and customer service are pretty good. Everything is authentic. I\'ve been here...', 'https://s3-media1.fl.yelpcdn.com/photo/S4VuaFcnDCGdPWpPXCehNA/o.jpg', NULL, NULL, NULL, NULL, '_AcQ41DeGFwHnORpxvU4nA', NULL, 1),
(610, 269, '3242042', '5.00', 'img/zillow.png', 'jbloom1999', '2017-04-07', 'http://www.zillow.com/profile/user19731134/Reviews/?review=3242042', 'Brandon is great. We liked working with Brandon as soon as we met him. He has a great knowledge of the area, the product inventory and market. He has the great combination of professional knowledge and ...', 'http://www.zillow.com/profile/jbloom1999/', NULL, 'Property manage a Single Family home in Eagle River, Eagle River, AK.', '3242042', NULL, NULL, NULL, 0),
(611, 269, '3192648', '5.00', 'img/zillow.png', 'kboquet', '2017-03-19', 'http://www.zillow.com/profile/user19731134/Reviews/?review=3192648', 'We are very grateful for Brandon Thorud and the support of Partners Real Estate when we relocated to Alaska.  Brandon has great interpersonal skills and is very easy to work with.  He is very conscientious ...', 'http://www.zillow.com/profile/kboquet/', NULL, 'Bought a Single Family home in 2009 in Eagle River, Eagle River, AK.', '3192648', NULL, NULL, NULL, 0),
(612, 269, '3185414', '5.00', 'img/zillow.png', 'Janan2', '2017-03-15', 'http://www.zillow.com/profile/user19731134/Reviews/?review=3185414', 'Brandon assisted my family and I with our home purchase when we relocated from Arizona to Alaska. He and his company were fantastic to work with, got our offer accepted, closed early and done all remotely ...', 'http://www.zillow.com/profile/Janan2/', NULL, 'Bought a Single Family home in 2015 in Chugiak, Chugiak, AK.', '3185414', NULL, NULL, NULL, 0),
(613, 269, '113246034351852089601', '5.00', 'img/Google.png', 'James Haines', '2017-07-28 23:53:28', 'https://www.google.com/maps/contrib/113246034351852089601/reviews', 'Very scary process for anyone especially me being my first home I\'ve bought! Team Flores knew this going into it and explained everything to me (in words I could understand) and was able to answer any of my questions! U can tell this is a team that cares about my needs rather than a paycheck thank you for everything you guys did for me will definitely be referring anyone I know to you guys and hope to work together again one day!', 'https://lh5.googleusercontent.com/-ELQyrRB2gcA/AAAAAAAAAAI/AAAAAAAAAAA/AFiYof3o3mvUkwE5figCwZ5JNW-HdoV_uw/s128-c0x00000000-cc-rp-mo/photo.jpg', '4 months ago', NULL, NULL, '113246034351852089601', NULL, NULL, 0),
(614, 269, '115334713129436718016', '5.00', 'img/Google.png', 'Giselle Garcia', '2017-09-02 02:10:59', 'https://www.google.com/maps/contrib/115334713129436718016/reviews', 'The girls are wonderful, very thorough,  work very very hard, they ask all the questions necessary to find what you want. Not just hard working but also really fun, easy going, very relatable. Do not take a no for an answer from the sellers but always in the most respectful way.', 'https://lh3.googleusercontent.com/-QTB0cyKt7K0/AAAAAAAAAAI/AAAAAAAAAAA/AFiYof0uUKEEtKs9R-WN_L6DBX2qzWVR9g/s128-c0x00000000-cc-rp-mo/photo.jpg', '3 months ago', NULL, NULL, '115334713129436718016', NULL, NULL, 0),
(615, 269, '101395116478776692943', '5.00', 'img/Google.png', 'Robin Root', '2017-07-05 17:38:41', 'https://www.google.com/maps/contrib/101395116478776692943/reviews', 'I highly recommend Team Flores for your real estate needs.  They sold our house the day they put up the for sale sign and it sold for more than the asking price!  When there was a problem with the title, they took care of it right away and the sale went through with no problems.  Lorraine and Saundra are knowledgeable, caring and helpful realtors who will work with you every step of the way, whether you are buying or selling.  I will definitely use Team Flores the next time I need to buy or sell a home!', 'https://lh6.googleusercontent.com/-wQbdeSc4oJI/AAAAAAAAAAI/AAAAAAAAAAA/AFiYof0rF_XYA0XQfy_8Nw38WdcxIeqeXg/s128-c0x00000000-cc-rp-mo/photo.jpg', '5 months ago', NULL, NULL, '101395116478776692943', NULL, NULL, 0),
(616, 269, '102883582952947235343', '5.00', 'img/Google.png', 'Jeff R', '2017-06-29 02:10:17', 'https://www.google.com/maps/contrib/102883582952947235343/reviews', 'After the realtor that we worked with for years moved back east, a friend recommended Lorraine. I am so lucky he did. These ladies anticipated everything, communicated very well and helped us make a great transaction from start to finish. Well done ladies!!', 'https://lh3.googleusercontent.com/-J9CiOqELIK4/AAAAAAAAAAI/AAAAAAAAAAA/AFiYof0ZU6CB8-Ji6o2iAN6qQvOFQOpjxA/s128-c0x00000000-cc-rp-mo/photo.jpg', '5 months ago', NULL, NULL, '102883582952947235343', NULL, NULL, 0),
(617, 269, '105810693394970120913', '5.00', 'img/Google.png', 'Cinthya Negrete', '2017-09-02 01:10:31', 'https://www.google.com/maps/contrib/105810693394970120913/reviews', 'Lorraine and Saundra help us enormously findign our house last year, in a beautiful community in Escondido.  We were first time homebuyers with little knowledge of the process, but thankfully we got to work with them and...these ladies rock!... first of all they care about their clients, and are passionate to help them find the perfect home, they did it for us :). They were really good listeners and great advisors at times when big decisions needed to be made, explaning things with good details but trying to always make it simple for us, adapting to our schedule, and later, even coming up with home improvements ideas, including reference numbers and all. We are really pleased with our home and the journey that it was to get it, but definitely we couldn\'t done it better without team Flores. I\'d recommend Lorraine and Saudra anytime.', 'https://lh5.googleusercontent.com/-7WVz1oGBY9E/AAAAAAAAAAI/AAAAAAAAAAA/AFiYof3NCRYq4JQk18IKeX-pfjWSEN-_Nw/s128-c0x00000000-cc-rp-mo/photo.jpg', '3 months ago', NULL, NULL, '105810693394970120913', NULL, NULL, 0),
(618, 269, 'JWtTzHgx0R8SewcKRTaF7A', '5.00', 'img/yelp-icon.png', 'B J.', '2017-10-10 14:45:12', 'https://www.yelp.com/biz/team-flores-real-estate-coldwell-banker-san-diego-2?hrid=JWtTzHgx0R8SewcKRTaF7A&adjust_creative=yLRKI4b4orlxDvOUmYsS9A&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_reviews&utm_source=yLRKI4b4orlxDvOUmYsS9A', 'Team Flores is one of the best real estate teams in San Diego area! Lorraine and Saundra always provided me with high quality service. Although they handle...', 'https://s3-media1.fl.yelpcdn.com/photo/cLLAmW6VslFQZ7Ii9q-KGg/o.jpg', NULL, NULL, NULL, NULL, 'JWtTzHgx0R8SewcKRTaF7A', NULL, 0),
(619, 269, '8-RP0w9WIeeXU4Z_8P8ohA', '5.00', 'img/yelp-icon.png', 'Jeff R.', '2017-06-28 18:59:58', 'https://www.yelp.com/biz/team-flores-real-estate-coldwell-banker-san-diego-2?hrid=8-RP0w9WIeeXU4Z_8P8ohA&adjust_creative=yLRKI4b4orlxDvOUmYsS9A&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_reviews&utm_source=yLRKI4b4orlxDvOUmYsS9A', 'Lorraine and Sandra were fantastic. The realtor we used for years relocated back east. We needed a new realtor and much to our good fortune we were...', '', NULL, NULL, NULL, NULL, '8-RP0w9WIeeXU4Z_8P8ohA', NULL, 0),
(620, 287, 'JWtTzHgx0R8SewcKRTaF7A', '5.00', 'img/yelp-icon.png', 'B J.', '2017-10-10 14:45:12', 'https://www.yelp.com/biz/team-flores-real-estate-coldwell-banker-san-diego-2?hrid=JWtTzHgx0R8SewcKRTaF7A&adjust_creative=yLRKI4b4orlxDvOUmYsS9A&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_reviews&utm_source=yLRKI4b4orlxDvOUmYsS9A', 'Team Flores is one of the best real estate teams in San Diego area! Lorraine and Saundra always provided me with high quality service. Although they handle...', 'https://s3-media1.fl.yelpcdn.com/photo/cLLAmW6VslFQZ7Ii9q-KGg/o.jpg', NULL, NULL, NULL, NULL, 'JWtTzHgx0R8SewcKRTaF7A', NULL, 0),
(621, 287, '8-RP0w9WIeeXU4Z_8P8ohA', '5.00', 'img/yelp-icon.png', 'Jeff R.', '2017-06-28 18:59:58', 'https://www.yelp.com/biz/team-flores-real-estate-coldwell-banker-san-diego-2?hrid=8-RP0w9WIeeXU4Z_8P8ohA&adjust_creative=yLRKI4b4orlxDvOUmYsS9A&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_reviews&utm_source=yLRKI4b4orlxDvOUmYsS9A', 'Lorraine and Sandra were fantastic. The realtor we used for years relocated back east. We needed a new realtor and much to our good fortune we were...', '', NULL, NULL, NULL, NULL, '8-RP0w9WIeeXU4Z_8P8ohA', NULL, 0),
(622, 287, '3242042', '5.00', 'img/zillow.png', 'jbloom1999', '2017-04-07', 'http://www.zillow.com/profile/user19731134/Reviews/?review=3242042', 'Brandon is great. We liked working with Brandon as soon as we met him. He has a great knowledge of the area, the product inventory and market. He has the great combination of professional knowledge and ...', 'http://www.zillow.com/profile/jbloom1999/', NULL, 'Property manage a Single Family home in Eagle River, Eagle River, AK.', '3242042', NULL, NULL, NULL, 0),
(623, 287, '3192648', '5.00', 'img/zillow.png', 'kboquet', '2017-03-19', 'http://www.zillow.com/profile/user19731134/Reviews/?review=3192648', 'We are very grateful for Brandon Thorud and the support of Partners Real Estate when we relocated to Alaska.  Brandon has great interpersonal skills and is very easy to work with.  He is very conscientious ...', 'http://www.zillow.com/profile/kboquet/', NULL, 'Bought a Single Family home in 2009 in Eagle River, Eagle River, AK.', '3192648', NULL, NULL, NULL, 0),
(624, 287, '3185414', '5.00', 'img/zillow.png', 'Janan2', '2017-03-15', 'http://www.zillow.com/profile/user19731134/Reviews/?review=3185414', 'Brandon assisted my family and I with our home purchase when we relocated from Arizona to Alaska. He and his company were fantastic to work with, got our offer accepted, closed early and done all remotely ...', 'http://www.zillow.com/profile/Janan2/', NULL, 'Bought a Single Family home in 2015 in Chugiak, Chugiak, AK.', '3185414', NULL, NULL, NULL, 0),
(625, 289, '2198564', '5.00', 'img/zillow.png', 'Cynthia4619', '2016-02-17', 'http://www.zillow.com/profile/tsquare1/Reviews/?review=2198564', 'I have been looking for a rental home for about two weeks and finally found a company that returns my calls and emails!  They were on time for our appointment and were able to answer all my questions. ...', 'http://www.zillow.com/profile/Cynthia4619/', NULL, 'Helped me rent a Single Family home in Mill Creek, WA.', '2198564', NULL, NULL, NULL, 0),
(626, 289, '553457', '5.00', 'img/zillow.png', 'eddie t 71', '2013-10-24', 'http://www.zillow.com/profile/tsquare1/Reviews/?review=553457', 'Quick to get back to us and accommodating to our schedule.  Had a good selection of homes for us to look at and consider and helped us get into the one that we wanted.  I would recommend to others.', 'http://www.zillow.com/profile/eddie-t-71/', NULL, 'Helped me rent a home in Cottage Lake, Woodinville, WA 98077.', '553457', NULL, NULL, NULL, 0),
(627, 289, '535340', '2.00', 'img/zillow.png', 'sven98011', '2013-10-10', 'http://www.zillow.com/profile/tsquare1/Reviews/?review=535340', 'Poor professionalism; representative was more than 40 minutes late to a property showing and informed us at the last minute that another applicant would be joining the walk through.  Upon hearing the ...', 'http://www.zillow.com/profile/sven98011/', NULL, 'We connected, but it did not work out. Looking in Thrashers Corner, Seattle Hill-Silver Firs, WA 98012', '535340', NULL, NULL, NULL, 0),
(628, 306, '3216691', '5.00', 'img/zillow.png', 'zoyaclestenkof', '2017-03-29', 'http://www.zillow.com/profile/user27708862/Reviews/?review=3216691', 'Stacy was reliable, prompt, courteous and very knowledgeable in helping us buy a home. She made purchasing a home a pleasant experience, and found us exactly what we needed in a short period of time. ...', 'http://www.zillow.com/profile/zoyaclestenkof/', NULL, 'Showed home in 2005 in Abbott Loop, Anchorage, AK 99507.', '3216691', NULL, NULL, NULL, 0),
(629, 306, '3214468', '5.00', 'img/zillow.png', 'zuser20160314213832983', '2017-03-28', 'http://www.zillow.com/profile/user27708862/Reviews/?review=3214468', 'I began working with Stacy in April of 2016 when I was looking to rent an apartment/condo. She was the licensee for the property listed that I was looking at, and after I obtained the lease of said property, ...', 'http://www.zillow.com/profile/zuser20160314213832983/', NULL, 'Bought a Condo home in 2017 in Scenic Foothills, Anchorage, AK.', '3214468', NULL, NULL, NULL, 0),
(630, 306, '1693525', '5.00', 'img/zillow.png', 'AKjes', '2015-04-07', 'http://www.zillow.com/profile/user27708862/Reviews/?review=1693525', 'i have purchased a house previously with another realtor, so am able to compare this experience with the previous- that said, I highly recommend Stacy and would work with her again. <br/>I have only good ...', '', NULL, 'Bought a Single Family home in 2015 in Bayshore-Klatt, Anchorage, AK.', '1693525', NULL, NULL, NULL, 0),
(631, 181, '2198564', '5.00', 'img/zillow.png', 'Cynthia4619', '2016-02-17', 'http://www.zillow.com/profile/tsquare1/Reviews/?review=2198564', 'I have been looking for a rental home for about two weeks and finally found a company that returns my calls and emails!  They were on time for our appointment and were able to answer all my questions. ...', 'http://www.zillow.com/profile/Cynthia4619/', NULL, 'Helped me rent a Single Family home in Mill Creek, WA.', '2198564', NULL, NULL, NULL, 0),
(632, 181, '553457', '5.00', 'img/zillow.png', 'eddie t 71', '2013-10-24', 'http://www.zillow.com/profile/tsquare1/Reviews/?review=553457', 'Quick to get back to us and accommodating to our schedule.  Had a good selection of homes for us to look at and consider and helped us get into the one that we wanted.  I would recommend to others.', 'http://www.zillow.com/profile/eddie-t-71/', NULL, 'Helped me rent a home in Cottage Lake, Woodinville, WA 98077.', '553457', NULL, NULL, NULL, 0),
(633, 181, '535340', '2.00', 'img/zillow.png', 'sven98011', '2013-10-10', 'http://www.zillow.com/profile/tsquare1/Reviews/?review=535340', 'Poor professionalism; representative was more than 40 minutes late to a property showing and informed us at the last minute that another applicant would be joining the walk through.  Upon hearing the ...', 'http://www.zillow.com/profile/sven98011/', NULL, 'We connected, but it did not work out. Looking in Thrashers Corner, Seattle Hill-Silver Firs, WA 98012', '535340', NULL, NULL, NULL, 0),
(634, 301, '5215572015497921486045891', '5.00', 'img/facebook-icon.png', 'Ankit Chetu', '2017-02-02T14:31:31+0000', 'https://www.facebook.com/pg/Merchant+1-666741620153385/reviews/', 'Hello i am here to write a review because this page providing me lot of offers.', NULL, NULL, NULL, NULL, NULL, NULL, '5215572015497921486045891', 0),
(635, 301, '15213508846147311485181245', '4.00', 'img/facebook-icon.png', 'Vineet Kumar Arya', '2017-01-23T14:20:45+0000', 'https://www.facebook.com/pg/Merchant+1-666741620153385/reviews/', 'Hi Good Lorem ipsum dummy content. So it is usefullllll........', NULL, NULL, NULL, NULL, NULL, NULL, '15213508846147311485181245', 0),
(636, 301, '3001111338301261485175188', '4.00', 'img/facebook-icon.png', 'Rakesh Maurya', '2017-01-23T12:39:48+0000', 'https://www.facebook.com/pg/Merchant+1-666741620153385/reviews/', 'Hello this page is providing promotional offers', NULL, NULL, NULL, NULL, NULL, NULL, '3001111338301261485175188', 0),
(637, 301, 'd65SlxOfx2w1vj6kcszcvg', '2.00', 'img/yelp-icon.png', 'Michael S.', '2017-04-11 22:53:08', 'https://www.yelp.com/biz/partners-real-estate-eagle-river?hrid=d65SlxOfx2w1vj6kcszcvg&adjust_creative=yLRKI4b4orlxDvOUmYsS9A&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_reviews&utm_source=yLRKI4b4orlxDvOUmYsS9A', 'I\'ll begin with saying I\'ve never had a problem with any real estate or property management company before. I\'ve never had any damages to property, and I\'ve...', '', NULL, NULL, NULL, NULL, 'd65SlxOfx2w1vj6kcszcvg', NULL, 0),
(638, 301, '2H9gGcuSJCSrN_EjaY89aQ', '5.00', 'img/yelp-icon.png', 'Brittni W.', '2016-09-13 22:54:44', 'https://www.yelp.com/biz/partners-real-estate-eagle-river?hrid=2H9gGcuSJCSrN_EjaY89aQ&adjust_creative=yLRKI4b4orlxDvOUmYsS9A&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_reviews&utm_source=yLRKI4b4orlxDvOUmYsS9A', 'We have been using Partners Real Estate since we first landed in Alaska a few years ago.  We started as renters, they were strict about cleanliness and...', 'https://s3-media2.fl.yelpcdn.com/photo/InpLWAKhGZkkPRkdalmzIw/o.jpg', NULL, NULL, NULL, NULL, '2H9gGcuSJCSrN_EjaY89aQ', NULL, 0),
(639, 301, 'istgEquSIh88PfQN7jARbw', '5.00', 'img/yelp-icon.png', 'Natalie J.', '2017-01-31 10:45:11', 'https://www.yelp.com/biz/partners-real-estate-eagle-river?hrid=istgEquSIh88PfQN7jARbw&adjust_creative=yLRKI4b4orlxDvOUmYsS9A&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_reviews&utm_source=yLRKI4b4orlxDvOUmYsS9A', 'Partners Real Estate is a great company for buying, selling and managing. Brandon is a hard worker. They are managing my townhouse and got it rented in one...', '', NULL, NULL, NULL, NULL, 'istgEquSIh88PfQN7jARbw', NULL, 0),
(640, 301, '3888293', '5.00', 'img/zillow.png', 'Mitch Ramirez', '2018-01-16', 'http://www.zillow.com/profile/tim7558/Reviews/?review=3888293', 'Tim did an excellent job helping us find exactly what we were looking for and connected us with all of the resources needed to acquire our new home. Our purchase was long distance but Tim made us feel ...', 'http://www.zillow.com/profile/mitchinreallife/', NULL, 'Bought a Single Family home in 2018 for approximately $275K in Palmer, AK.', '3888293', NULL, NULL, NULL, 0);
INSERT INTO `api_reviews` (`id`, `user_id`, `review_id`, `rating`, `source_img`, `reviewer_name`, `review_date`, `review_url`, `review_desc`, `reviewer_profile_url`, `google_relative_time`, `zillow_review_summary`, `zillow_review_id`, `google_review_id`, `yelp_review_id`, `facebook_review_id`, `deleted`) VALUES
(641, 301, '3837618', '5.00', 'img/zillow.png', 'janporter53', '2017-12-20', 'http://www.zillow.com/profile/tim7558/Reviews/?review=3837618', 'I live in Iowa. My sister passed away and I was the executrix and had to sell her house. I hired Tim, not knowing anything about him, but hoping he could carry the burden of everything  since there was ...', 'http://www.zillow.com/profile/janporter53/', NULL, 'Sold a Single Family home in 2017 in Birchwood, Chugiak, AK.', '3837618', NULL, NULL, NULL, 0),
(642, 301, '3442673', '5.00', 'img/zillow.png', 'Ashley jasper', '2017-06-30', 'http://www.zillow.com/profile/tim7558/Reviews/?review=3442673', 'First time home buyers, met Tim as he was showing us a rental, we discussed our shock of the area\'s high rental costs and he suggested buying our own home.  My husband is active duty and we have always ...', 'http://www.zillow.com/profile/zuser20170302040858501/', NULL, 'Bought a Single Family home in 2017 in Eagle River, Eagle River, AK.', '3442673', NULL, NULL, NULL, 0),
(643, 301, '3414470', '5.00', 'img/zillow.png', 'live4fishin31', '2017-06-19', 'http://www.zillow.com/profile/tim7558/Reviews/?review=3414470', 'Tim gave us one of the best home buying experiences we ever could have imagined. We were extremely picky, and Tim found us our dream home. This is our second house we\'ve bought and Tim was by far, way ...', 'http://www.zillow.com/profile/live4fishin31/', NULL, 'Bought a home in 2017 in Suntrana, Healy, AK 99755.', '3414470', NULL, NULL, NULL, 0),
(644, 301, '3380728', '5.00', 'img/zillow.png', 'user3540461', '2017-06-04', 'http://www.zillow.com/profile/tim7558/Reviews/?review=3380728', 'Tim went ABOVE and BEYOND for us! Whenever, however we need a question answered or something done he responded quickly and did whatever needed to be done. He kept in constant contact with the sellers ...', 'http://www.zillow.com/profile/user3540461/', NULL, 'Bought a Single Family home in 2017 in Wasilla, AK.', '3380728', NULL, NULL, NULL, 0),
(645, 301, '3075792', '5.00', 'img/zillow.png', 'zuser20140922074735562', '2017-01-27', 'http://www.zillow.com/profile/tim7558/Reviews/?review=3075792', 'What made you decide to buy/sell your home?<br/>While doing a comparison of rentals in the area and mortgage rates, we did not want to throw away upwards of $36k a year and since were military were going ...', 'http://www.zillow.com/profile/zuser20140922074735562/', NULL, 'Bought a Single Family home in 2016 in South Fork, Eagle River, AK.', '3075792', NULL, NULL, NULL, 0),
(646, 301, '100624769021672385317', '5.00', 'img/Google.png', 'Matthew C', '2017-11-29 20:11:11', 'https://www.google.com/maps/contrib/100624769021672385317/reviews', 'Chelsea Countryman and her team were wonderful through the process. She provided us with all the information we needed and all of the resources that you could possibly ask for. The systems and processes that she has set up are easy to understand and they work! We sold our home in only 3 weeks on the market.', 'https://lh3.googleusercontent.com/-kLNrBt6UqWA/AAAAAAAAAAI/AAAAAAAATto/UoyiJKCTdO0/s128-c0x00000000-cc-rp-mo-ba3/photo.jpg', '2 months ago', NULL, NULL, '100624769021672385317', NULL, NULL, 0),
(647, 170, '3888293', '5.00', 'img/zillow.png', 'Mitch Ramirez', '2018-01-16', 'http://www.zillow.com/profile/PartnersRealEstate/Reviews/?review=3888293', 'Tim did an excellent job helping us find exactly what we were looking for and connected us with all of the resources needed to acquire our new home. Our purchase was long distance but Tim made us feel ...', 'http://www.zillow.com/profile/mitchinreallife/', NULL, 'Bought a Single Family home in 2018 for approximately $275K in Palmer, AK.', '3888293', NULL, NULL, NULL, 0),
(648, 170, '3837618', '5.00', 'img/zillow.png', 'janporter53', '2017-12-20', 'http://www.zillow.com/profile/PartnersRealEstate/Reviews/?review=3837618', 'I live in Iowa. My sister passed away and I was the executrix and had to sell her house. I hired Tim, not knowing anything about him, but hoping he could carry the burden of everything  since there was ...', 'http://www.zillow.com/profile/janporter53/', NULL, 'Sold a Single Family home in 2017 in Birchwood, Chugiak, AK.', '3837618', NULL, NULL, NULL, 0),
(649, 170, '111111485189976445474', '5.00', 'img/Google.png', 'Amanda Martinez', '2016-11-24 22:59:57', 'https://www.google.com/maps/contrib/111111485189976445474/reviews', 'REVIEW UPDATE****** My husband and I posted a review in regards to an issue we were having with Partners Real Estate. The issue has been fully rectified, we have attempted to delete the previous review; but unfortunately it states technical difficulties. We wanted to make sure and make it known that the problem has been resolved and we are grateful for Brandon\'s constant communication to fix the issue. If any issue comes about I would highly recommend scheduling time to meet with Brandon or speak to him personally as that was the best way to settle the matter.', 'https://lh3.googleusercontent.com/-f1Z7nDv4Jjc/AAAAAAAAAAI/AAAAAAAAACw/kdZVhnrSdm4/s128-c0x00000000-cc-rp-mo/photo.jpg', 'a year ago', NULL, NULL, '111111485189976445474', NULL, NULL, 0),
(650, 170, '16219940878804431517969127', '5.00', 'img/facebook-icon.png', 'Angela Marie', '2018-02-07T02:05:27+0000', 'https://www.facebook.com/pg/Partners+Real+Estate+-+Eagle+River%2C+AK-158396570987231/reviews/', '', NULL, NULL, NULL, NULL, NULL, NULL, '16219940878804431517969127', 0),
(651, 170, '3216691', '5.00', 'img/zillow.png', 'zoyaclestenkof', '2017-03-29', 'http://www.zillow.com/profile/user27708862/Reviews/?review=3216691', 'Stacy was reliable, prompt, courteous and very knowledgeable in helping us buy a home. She made purchasing a home a pleasant experience, and found us exactly what we needed in a short period of time. ...', 'http://www.zillow.com/profile/zoyaclestenkof/', NULL, 'Showed home in 2005 in Abbott Loop, Anchorage, AK 99507.', '3216691', NULL, NULL, NULL, 0),
(652, 170, '3214468', '5.00', 'img/zillow.png', 'zuser20160314213832983', '2017-03-28', 'http://www.zillow.com/profile/user27708862/Reviews/?review=3214468', 'I began working with Stacy in April of 2016 when I was looking to rent an apartment/condo. She was the licensee for the property listed that I was looking at, and after I obtained the lease of said property, ...', 'http://www.zillow.com/profile/zuser20160314213832983/', NULL, 'Bought a Condo home in 2017 in Scenic Foothills, Anchorage, AK.', '3214468', NULL, NULL, NULL, 0),
(653, 170, '2464782', '5.00', 'img/zillow.png', 'elchris', '2016-05-24', 'http://www.zillow.com/profile/EthanBenson/Reviews/?review=2464782', 'Ethan helped us in our first home sale and I can\'t say enough good things about him. He did an excellent job helping us understand the process and guide us through the, often difficult, process of selling ...', 'http://www.zillow.com/profile/elchris/', NULL, 'Sold a Single Family home in 2016 in Palmer, AK.', '2464782', NULL, NULL, NULL, 0),
(654, 181, 'd65SlxOfx2w1vj6kcszcvg', '2.00', 'img/yelp-icon.png', 'Michael S.', '2017-04-11 22:53:08', 'https://www.yelp.com/biz/partners-real-estate-eagle-river?hrid=d65SlxOfx2w1vj6kcszcvg&adjust_creative=yLRKI4b4orlxDvOUmYsS9A&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_reviews&utm_source=yLRKI4b4orlxDvOUmYsS9A', 'I\'ll begin with saying I\'ve never had a problem with any real estate or property management company before. I\'ve never had any damages to property, and I\'ve...', '', NULL, NULL, NULL, NULL, 'd65SlxOfx2w1vj6kcszcvg', NULL, 0),
(655, 181, '2H9gGcuSJCSrN_EjaY89aQ', '5.00', 'img/yelp-icon.png', 'Brittni W.', '2016-09-13 22:54:44', 'https://www.yelp.com/biz/partners-real-estate-eagle-river?hrid=2H9gGcuSJCSrN_EjaY89aQ&adjust_creative=yLRKI4b4orlxDvOUmYsS9A&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_reviews&utm_source=yLRKI4b4orlxDvOUmYsS9A', 'We have been using Partners Real Estate since we first landed in Alaska a few years ago.  We started as renters, they were strict about cleanliness and...', 'https://s3-media2.fl.yelpcdn.com/photo/InpLWAKhGZkkPRkdalmzIw/o.jpg', NULL, NULL, NULL, NULL, '2H9gGcuSJCSrN_EjaY89aQ', NULL, 0),
(656, 181, 'istgEquSIh88PfQN7jARbw', '5.00', 'img/yelp-icon.png', 'Natalie J.', '2017-01-31 10:45:11', 'https://www.yelp.com/biz/partners-real-estate-eagle-river?hrid=istgEquSIh88PfQN7jARbw&adjust_creative=yLRKI4b4orlxDvOUmYsS9A&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_reviews&utm_source=yLRKI4b4orlxDvOUmYsS9A', 'Partners Real Estate is a great company for buying, selling and managing. Brandon is a hard worker. They are managing my townhouse and got it rented in one...', '', NULL, NULL, NULL, NULL, 'istgEquSIh88PfQN7jARbw', NULL, 0),
(657, 170, '14428080825131541518516056', '1.00', 'img/facebook-icon.png', 'Brian Barber', '2018-02-13T10:00:56+0000', 'https://www.facebook.com/pg/Partners+Real+Estate+-+Eagle+River%2C+AK-158396570987231/reviews/', 'Do not use this company to rent a place.  You will not get your full security deposit back, even when you pay a full extra months rent when you arenâ€™t there along with all the utilities because you gave notice on the 10th and 21 days notice is not good enough.  Even when you leave the place 10 times better than when you moved in.  You will not get credit for any improvements you make.  Oh and donâ€™t expect your deposit back in the winter,  a deposit is held until the snow melts.  Bet I wonâ€™t get that back either.  You have been warned.  Rent at your own risk.', NULL, NULL, NULL, NULL, NULL, NULL, '14428080825131541518516056', 0),
(658, 11, '3192648', '5.00', 'img/zillow.png', 'kboquet', '2017-03-19', 'http://www.zillow.com/profile/user19731134/Reviews/?review=3192648', 'We are very grateful for Brandon Thorud and the support of Partners Real Estate when we relocated to Alaska.  Brandon has great interpersonal skills and is very easy to work with.  He is very conscientious ...', 'http://www.zillow.com/profile/kboquet/', NULL, 'Bought a Single Family home in 2009 in Eagle River, Eagle River, AK.', '3192648', NULL, NULL, NULL, 0),
(659, 11, '111111485189976445474', '5.00', 'img/Google.png', 'Amanda Martinez', '2016-11-24 22:59:57', 'https://www.google.com/maps/contrib/111111485189976445474/reviews', 'REVIEW UPDATE****** My husband and I posted a review in regards to an issue we were having with Partners Real Estate. The issue has been fully rectified, we have attempted to delete the previous review; but unfortunately it states technical difficulties. We wanted to make sure and make it known that the problem has been resolved and we are grateful for Brandon\'s constant communication to fix the issue. If any issue comes about I would highly recommend scheduling time to meet with Brandon or speak to him personally as that was the best way to settle the matter.', 'https://lh3.googleusercontent.com/-f1Z7nDv4Jjc/AAAAAAAAAAI/AAAAAAAAACw/kdZVhnrSdm4/s128-c0x00000000-cc-rp-mo/photo.jpg', 'a year ago', NULL, NULL, '111111485189976445474', NULL, NULL, 0),
(660, 11, '3185414', '5.00', 'img/zillow.png', 'Janan2', '2017-03-15', 'http://www.zillow.com/profile/user19731134/Reviews/?review=3185414', 'Brandon assisted my family and I with our home purchase when we relocated from Arizona to Alaska. He and his company were fantastic to work with, got our offer accepted, closed early and done all remotely ...', 'http://www.zillow.com/profile/Janan2/', NULL, 'Bought a Single Family home in 2015 in Chugiak, Chugiak, AK.', '3185414', NULL, NULL, NULL, 0),
(661, 312, 'd65SlxOfx2w1vj6kcszcvg', '2.00', 'img/yelp-icon.png', 'Michael S.', '2017-04-11 22:53:08', 'https://www.yelp.com/biz/partners-real-estate-eagle-river?hrid=d65SlxOfx2w1vj6kcszcvg&adjust_creative=b3N5P3WED5QQaJIliGALXA&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_reviews&utm_source=b3N5P3WED5QQaJIliGALXA', 'I\'ll begin with saying I\'ve never had a problem with any real estate or property management company before. I\'ve never had any damages to property, and I\'ve...', '', NULL, NULL, NULL, NULL, 'd65SlxOfx2w1vj6kcszcvg', NULL, 0),
(662, 312, '2H9gGcuSJCSrN_EjaY89aQ', '5.00', 'img/yelp-icon.png', 'Brittni W.', '2016-09-13 22:54:44', 'https://www.yelp.com/biz/partners-real-estate-eagle-river?hrid=2H9gGcuSJCSrN_EjaY89aQ&adjust_creative=b3N5P3WED5QQaJIliGALXA&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_reviews&utm_source=b3N5P3WED5QQaJIliGALXA', 'We have been using Partners Real Estate since we first landed in Alaska a few years ago.  We started as renters, they were strict about cleanliness and...', 'https://s3-media2.fl.yelpcdn.com/photo/InpLWAKhGZkkPRkdalmzIw/o.jpg', NULL, NULL, NULL, NULL, '2H9gGcuSJCSrN_EjaY89aQ', NULL, 0),
(663, 312, 'yuvyzVFbtf0plKxdXYwCLA', '5.00', 'img/yelp-icon.png', 'Dave W.', '2015-09-03 10:00:28', 'https://www.yelp.com/biz/partners-real-estate-eagle-river?hrid=yuvyzVFbtf0plKxdXYwCLA&adjust_creative=b3N5P3WED5QQaJIliGALXA&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_reviews&utm_source=b3N5P3WED5QQaJIliGALXA', 'I\'m going against the grain compared to the previous reviews. I had my house rented for 10 years and Partners Real Estate (PRE) was the Property Manager.  I...', 'https://s3-media3.fl.yelpcdn.com/photo/-aAbQPu39DKwh5ZYuVFWKw/o.jpg', NULL, NULL, NULL, NULL, 'yuvyzVFbtf0plKxdXYwCLA', NULL, 0),
(664, 312, '15862651747843341518906509', '5.00', 'img/facebook-icon.png', 'Desiree Bennie', '2018-02-17T22:28:29+0000', 'https://www.facebook.com/pg/Partners+Real+Estate+-+Eagle+River%2C+AK-158396570987231/reviews/', '', NULL, NULL, NULL, NULL, NULL, NULL, '15862651747843341518906509', 0),
(665, 312, '14428080825131541518516056', '1.00', 'img/facebook-icon.png', 'Brian Barber', '2018-02-13T10:00:56+0000', 'https://www.facebook.com/pg/Partners+Real+Estate+-+Eagle+River%2C+AK-158396570987231/reviews/', 'Do not use this company to rent a place.  You will not get your full security deposit back, even when you pay a full extra months rent when you arenâ€™t there along with all the utilities because you gave notice on the 10th and 21 days notice is not good enough.  Even when you leave the place 10 times better than when you moved in.  You will not get credit for any improvements you make.  Oh and donâ€™t expect your deposit back in the winter,  a deposit is held until the snow melts.  Bet I wonâ€™t get that back either.  You have been warned.  Rent at your own risk.', NULL, NULL, NULL, NULL, NULL, NULL, '14428080825131541518516056', 0),
(666, 312, '16219940878804431517969127', '5.00', 'img/facebook-icon.png', 'Angela Marie', '2018-02-07T02:05:27+0000', 'https://www.facebook.com/pg/Partners+Real+Estate+-+Eagle+River%2C+AK-158396570987231/reviews/', '', NULL, NULL, NULL, NULL, NULL, NULL, '16219940878804431517969127', 0),
(667, 312, '101560627188598751507320868', '5.00', 'img/facebook-icon.png', 'Angel Washington', '2017-10-06T20:14:28+0000', 'https://www.facebook.com/pg/Partners+Real+Estate+-+Eagle+River%2C+AK-158396570987231/reviews/', '', NULL, NULL, NULL, NULL, NULL, NULL, '101560627188598751507320868', 0),
(668, 312, '101005026990992161502494532', '5.00', 'img/facebook-icon.png', 'Adam Harki', '2017-08-11T23:35:32+0000', 'https://www.facebook.com/pg/Partners+Real+Estate+-+Eagle+River%2C+AK-158396570987231/reviews/', 'We got excellent service from Kim & Terry Hardman in buying our investment property.  They really went above and beyond for us.  Thank you Kim & Terry!!', NULL, NULL, NULL, NULL, NULL, NULL, '101005026990992161502494532', 0),
(669, 312, '102150848203396761502346170', '5.00', 'img/facebook-icon.png', 'Gabrielle Bryant', '2017-08-10T06:22:50+0000', 'https://www.facebook.com/pg/Partners+Real+Estate+-+Eagle+River%2C+AK-158396570987231/reviews/', 'Alisha is amazing! She went above and beyond for our family. We were stationed in Japan house hunting and she was able to visit and send video of the homes we were interested in. She took the 17 hour time difference in stride. All this while pregnant as well folks! And although in the end we were unable to purchase a home, definitely not her fault, she never made us feel pressured or rushed. She gave us honest and important insight. I would highly recommend her and will use her when we are ready to house hunt again.', NULL, NULL, NULL, NULL, NULL, NULL, '102150848203396761502346170', 0),
(670, 312, '101034703375229241490990860', '1.00', 'img/facebook-icon.png', 'Mike Sazama', '2017-03-31T20:07:40+0000', 'https://www.facebook.com/pg/Partners+Real+Estate+-+Eagle+River%2C+AK-158396570987231/reviews/', '', NULL, NULL, NULL, NULL, NULL, NULL, '101034703375229241490990860', 0),
(671, 312, '102103872559088791487727239', '5.00', 'img/facebook-icon.png', 'Stacy Hague', '2017-02-22T01:33:59+0000', 'https://www.facebook.com/pg/Partners+Real+Estate+-+Eagle+River%2C+AK-158396570987231/reviews/', '', NULL, NULL, NULL, NULL, NULL, NULL, '102103872559088791487727239', 0),
(672, 312, '18657650870682801472169670', '5.00', 'img/facebook-icon.png', 'Stephanie Mathew', '2016-08-26T00:01:10+0000', 'https://www.facebook.com/pg/Partners+Real+Estate+-+Eagle+River%2C+AK-158396570987231/reviews/', '', NULL, NULL, NULL, NULL, NULL, NULL, '18657650870682801472169670', 0),
(673, 312, '101596095968655771450825203', '5.00', 'img/facebook-icon.png', 'Janan Palmer', '2015-12-22T23:00:03+0000', 'https://www.facebook.com/pg/Partners+Real+Estate+-+Eagle+River%2C+AK-158396570987231/reviews/', 'We purchased our home here in Alaska through Brandon. He was fantastic, met us on short notice during our trip and ensured we closed on time. We were moving from out of state, and he (and the staff at Partners) made it all possible for our family.', NULL, NULL, NULL, NULL, NULL, NULL, '101596095968655771450825203', 0),
(674, 312, '14352549799254111448536246', '5.00', 'img/facebook-icon.png', 'Sandra Evans', '2015-11-26T11:10:46+0000', 'https://www.facebook.com/pg/Partners+Real+Estate+-+Eagle+River%2C+AK-158396570987231/reviews/', '', NULL, NULL, NULL, NULL, NULL, NULL, '14352549799254111448536246', 0),
(675, 312, '102147747273916891438057153', '5.00', 'img/facebook-icon.png', 'Crystal Lynn', '2015-07-28T04:19:13+0000', 'https://www.facebook.com/pg/Partners+Real+Estate+-+Eagle+River%2C+AK-158396570987231/reviews/', 'Friendly and professional office staff and agents!!', NULL, NULL, NULL, NULL, NULL, NULL, '102147747273916891438057153', 0),
(676, 312, '20417578960995121431057734', '5.00', 'img/facebook-icon.png', 'Bernie McClure', '2015-05-08T04:02:14+0000', 'https://www.facebook.com/pg/Partners+Real+Estate+-+Eagle+River%2C+AK-158396570987231/reviews/', '', NULL, NULL, NULL, NULL, NULL, NULL, '20417578960995121431057734', 0),
(677, 312, '102113777819821491430598099', '5.00', 'img/facebook-icon.png', 'Mary Williams', '2015-05-02T20:21:39+0000', 'https://www.facebook.com/pg/Partners+Real+Estate+-+Eagle+River%2C+AK-158396570987231/reviews/', 'We were new to the Eagle River area and all I can say is we are so thankful we picked a house to rent from Partners Real Estate. They have been so easy to work with on everything and by far the best property management we have ever rented from! A+ in every area of rental management!!', NULL, NULL, NULL, NULL, NULL, NULL, '102113777819821491430598099', 0),
(678, 312, '102151369943579031430260170', '5.00', 'img/facebook-icon.png', 'Kimberlee Wear', '2015-04-28T22:29:30+0000', 'https://www.facebook.com/pg/Partners+Real+Estate+-+Eagle+River%2C+AK-158396570987231/reviews/', 'these guys managed a rental property for us. They also went on the sell the home. Communication was great and the place was sold quickly. A million thank you\'s for the great work!', NULL, NULL, NULL, NULL, NULL, NULL, '102151369943579031430260170', 0),
(679, 312, '20062243196231021428952726', '5.00', 'img/facebook-icon.png', 'Kim Kaufmann', '2015-04-13T19:18:46+0000', 'https://www.facebook.com/pg/Partners+Real+Estate+-+Eagle+River%2C+AK-158396570987231/reviews/', 'I\'ve had Partners do Property Management to my home for the last year. I am so happy with their service that I consider them am important buisness partner in keeping my Tenants happy. There were several items that needed fixing at the home, that Partners informed me of the fixes and went ahead and scheduled the work. This keeps the tenants happy and makes my life stress free. They had no problems finding the tenant I have today, and the tenant have always paid ontime and are problem free. Not only Partners have been an excellent Property Manager, that I also recomment them for all your Homes needs...', NULL, NULL, NULL, NULL, NULL, NULL, '20062243196231021428952726', 0),
(680, 312, '19429984290506551399294550', '5.00', 'img/facebook-icon.png', 'C Rolf Milton', '2014-05-05T12:55:50+0000', 'https://www.facebook.com/pg/Partners+Real+Estate+-+Eagle+River%2C+AK-158396570987231/reviews/', '', NULL, NULL, NULL, NULL, NULL, NULL, '19429984290506551399294550', 0),
(681, 312, '101598702814906911390593792', '3.00', 'img/facebook-icon.png', 'Sherri Sapp', '2014-01-24T20:03:12+0000', 'https://www.facebook.com/pg/Partners+Real+Estate+-+Eagle+River%2C+AK-158396570987231/reviews/', 'Partners has been part of Eagle River for years, but with some new youth and enthusiasm they are soon to be a force in Eagle River Real Estate.', NULL, NULL, NULL, NULL, NULL, NULL, '101598702814906911390593792', 0),
(682, 312, '101597002577052971390529597', '5.00', 'img/facebook-icon.png', 'Cherie Taylor', '2014-01-24T02:13:17+0000', 'https://www.facebook.com/pg/Partners+Real+Estate+-+Eagle+River%2C+AK-158396570987231/reviews/', 'We have been very pleased using Partners RE as our property management company. Our house was rented out in less than a week, both times it became available. Brandon has been super helpful & answered all of our questions/concerns in a professional & timely \nmanner.', NULL, NULL, NULL, NULL, NULL, NULL, '101597002577052971390529597', 0),
(683, 312, '102085978614634641390501923', '5.00', 'img/facebook-icon.png', 'David Fisher', '2014-01-23T18:32:03+0000', 'https://www.facebook.com/pg/Partners+Real+Estate+-+Eagle+River%2C+AK-158396570987231/reviews/', '', NULL, NULL, NULL, NULL, NULL, NULL, '102085978614634641390501923', 0),
(684, 312, '101568760981970671390498901', '5.00', 'img/facebook-icon.png', 'Evamarbri Rivera Areizaga', '2014-01-23T17:41:41+0000', 'https://www.facebook.com/pg/Partners+Real+Estate+-+Eagle+River%2C+AK-158396570987231/reviews/', '', NULL, NULL, NULL, NULL, NULL, NULL, '101568760981970671390498901', 0),
(685, 312, '19310846971541411390454710', '5.00', 'img/facebook-icon.png', 'Brandon Thorud', '2014-01-23T05:25:10+0000', 'https://www.facebook.com/pg/Partners+Real+Estate+-+Eagle+River%2C+AK-158396570987231/reviews/', '', NULL, NULL, NULL, NULL, NULL, NULL, '19310846971541411390454710', 0),
(686, 312, '102149634732708651390368979', '5.00', 'img/facebook-icon.png', 'Liz Thorud', '2014-01-22T05:36:19+0000', 'https://www.facebook.com/pg/Partners+Real+Estate+-+Eagle+River%2C+AK-158396570987231/reviews/', '', NULL, NULL, NULL, NULL, NULL, NULL, '102149634732708651390368979', 0),
(687, 312, '18822693284724961388875704', '5.00', 'img/facebook-icon.png', 'Eric N Glimmer Wilson', '2014-01-04T22:48:24+0000', 'https://www.facebook.com/pg/Partners+Real+Estate+-+Eagle+River%2C+AK-158396570987231/reviews/', 'This company has all of its customers at the top of the list. They are compassionate and are helpful in every way. If you need a great management company or a great company to rent from this is the company.', NULL, NULL, NULL, NULL, NULL, NULL, '18822693284724961388875704', 0),
(688, 312, '17481709518839711372302683', '5.00', 'img/facebook-icon.png', 'Debbie Cook', '2013-06-27T03:11:23+0000', 'https://www.facebook.com/pg/Partners+Real+Estate+-+Eagle+River%2C+AK-158396570987231/reviews/', '', NULL, NULL, NULL, NULL, NULL, NULL, '17481709518839711372302683', 0),
(689, 312, '102103385401289211367608070', '5.00', 'img/facebook-icon.png', 'Chantel Cheney Smith Warmack', '2013-05-03T19:07:50+0000', 'https://www.facebook.com/pg/Partners+Real+Estate+-+Eagle+River%2C+AK-158396570987231/reviews/', '', NULL, NULL, NULL, NULL, NULL, NULL, '102103385401289211367608070', 0),
(690, 170, 'yuvyzVFbtf0plKxdXYwCLA', '5.00', 'img/yelp-icon.png', 'Dave W.', '2015-09-03 10:00:28', 'https://www.yelp.com/biz/partners-real-estate-eagle-river?hrid=yuvyzVFbtf0plKxdXYwCLA&adjust_creative=b3N5P3WED5QQaJIliGALXA&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_reviews&utm_source=b3N5P3WED5QQaJIliGALXA', 'I\'m going against the grain compared to the previous reviews. I had my house rented for 10 years and Partners Real Estate (PRE) was the Property Manager.  I...', 'https://s3-media3.fl.yelpcdn.com/photo/-aAbQPu39DKwh5ZYuVFWKw/o.jpg', NULL, NULL, NULL, NULL, 'yuvyzVFbtf0plKxdXYwCLA', NULL, 0),
(691, 322, 'JWtTzHgx0R8SewcKRTaF7A', '5.00', 'img/yelp-icon.png', 'B J.', '2017-10-10 14:45:12', 'https://www.yelp.com/biz/team-flores-real-estate-coldwell-banker-san-diego-2?hrid=JWtTzHgx0R8SewcKRTaF7A&adjust_creative=b3N5P3WED5QQaJIliGALXA&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_reviews&utm_source=b3N5P3WED5QQaJIliGALXA', 'Team Flores is one of the best real estate teams in San Diego area! Lorraine and Saundra always provided me with high quality service. Although they handle...', 'https://s3-media1.fl.yelpcdn.com/photo/cLLAmW6VslFQZ7Ii9q-KGg/o.jpg', NULL, NULL, NULL, NULL, 'JWtTzHgx0R8SewcKRTaF7A', NULL, 0),
(692, 322, '8-RP0w9WIeeXU4Z_8P8ohA', '5.00', 'img/yelp-icon.png', 'Jeff R.', '2017-06-28 18:59:58', 'https://www.yelp.com/biz/team-flores-real-estate-coldwell-banker-san-diego-2?hrid=8-RP0w9WIeeXU4Z_8P8ohA&adjust_creative=b3N5P3WED5QQaJIliGALXA&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_reviews&utm_source=b3N5P3WED5QQaJIliGALXA', 'Lorraine and Sandra were fantastic. The realtor we used for years relocated back east. We needed a new realtor and much to our good fortune we were...', '', NULL, NULL, NULL, NULL, '8-RP0w9WIeeXU4Z_8P8ohA', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `api_services`
--

CREATE TABLE `api_services` (
  `id` int(10) UNSIGNED NOT NULL,
  `api` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `api_url` text COLLATE utf8_unicode_ci NOT NULL,
  `created` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `api_services`
--

INSERT INTO `api_services` (`id`, `api`, `api_url`, `created`, `modified`) VALUES
(1, 'google', 'www.google.com', '2017-10-04 16:04:14', '0000-00-00 00:00:00'),
(2, 'yelp', 'www.yelp.com', '2017-10-04 16:04:14', '0000-00-00 00:00:00'),
(3, 'facebook', 'www.facebook.com', '2017-10-04 16:04:14', '0000-00-00 00:00:00'),
(4, 'zillow', 'www.zillow.com', '2017-10-04 16:04:14', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `aros`
--

CREATE TABLE `aros` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `model` varchar(255) DEFAULT NULL,
  `foreign_key` int(11) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `lft` int(11) DEFAULT NULL,
  `rght` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `aros`
--

INSERT INTO `aros` (`id`, `parent_id`, `model`, `foreign_key`, `alias`, `lft`, `rght`) VALUES
(2, NULL, 'Groups', 1, NULL, 1, 4),
(3, NULL, 'Groups', 2, NULL, 5, 354),
(4, NULL, 'Groups', 3, NULL, 355, 370),
(5, NULL, 'Groups', 4, NULL, 371, 588),
(17, 3, 'Users', 10, NULL, 20, 21),
(18, 3, 'Users', 11, NULL, 22, 23),
(20, 4, 'Users', 13, NULL, 360, 361),
(25, 4, 'Users', 18, NULL, 362, 363),
(26, 5, 'Users', 19, NULL, 374, 375),
(27, 3, 'Users', 20, NULL, 24, 25),
(28, 3, 'Users', 21, NULL, 26, 27),
(29, 5, 'Users', 22, NULL, 376, 377),
(31, 5, 'Users', 24, NULL, 378, 379),
(32, 3, 'Users', 25, NULL, 28, 29),
(33, 3, 'Users', 26, NULL, 30, 31),
(34, 5, 'Users', 27, NULL, 380, 381),
(35, 3, 'Users', 28, NULL, 32, 33),
(36, 3, 'Users', 29, NULL, 34, 35),
(38, 3, 'Users', 31, NULL, 36, 37),
(39, 3, 'Users', 32, NULL, 38, 39),
(40, 3, 'Users', 33, NULL, 40, 41),
(41, 5, 'Users', 34, NULL, 382, 383),
(42, 3, 'Users', 35, NULL, 42, 43),
(43, 3, 'Users', 36, NULL, 44, 45),
(44, 3, 'Users', 37, NULL, 46, 47),
(45, 5, 'Users', 38, NULL, 384, 385),
(46, 3, 'Users', 39, NULL, 48, 49),
(47, 5, 'Users', 40, NULL, 386, 387),
(48, 5, 'Users', 41, NULL, 388, 389),
(49, 3, 'Users', 42, NULL, 50, 51),
(50, 3, 'Users', 43, NULL, 52, 53),
(51, 3, 'Users', 44, NULL, 54, 55),
(52, 3, 'Users', 45, NULL, 56, 57),
(53, 3, 'Users', 46, NULL, 58, 59),
(54, 3, 'Users', 47, NULL, 60, 61),
(55, 3, 'Users', 48, NULL, 62, 63),
(56, 3, 'Users', 49, NULL, 64, 65),
(57, 3, 'Users', 50, NULL, 66, 67),
(58, 3, 'Users', 51, NULL, 68, 69),
(59, 3, 'Users', 52, NULL, 70, 71),
(60, 3, 'Users', 53, NULL, 72, 73),
(61, 3, 'Users', 54, NULL, 74, 75),
(62, 3, 'Users', 55, NULL, 76, 77),
(63, 3, 'Users', 56, NULL, 78, 79),
(64, 3, 'Users', 57, NULL, 80, 81),
(65, 3, 'Users', 58, NULL, 82, 83),
(66, 3, 'Users', 59, NULL, 84, 85),
(67, 3, 'Users', 60, NULL, 86, 87),
(68, 3, 'Users', 61, NULL, 88, 89),
(69, 3, 'Users', 62, NULL, 90, 91),
(70, 3, 'Users', 63, NULL, 92, 93),
(71, 3, 'Users', 64, NULL, 94, 95),
(72, 3, 'Users', 65, NULL, 96, 97),
(73, 5, 'Users', 66, NULL, 390, 391),
(74, 3, 'Users', 67, NULL, 98, 99),
(75, 3, 'Users', 68, NULL, 100, 101),
(76, 3, 'Users', 69, NULL, 102, 103),
(79, 3, 'Users', 72, NULL, 104, 105),
(80, 3, 'Users', 73, NULL, 106, 107),
(81, 3, 'Users', 74, NULL, 108, 109),
(82, 3, 'Users', 75, NULL, 110, 111),
(83, 5, 'Users', 76, NULL, 392, 393),
(84, 3, 'Users', 77, NULL, 112, 113),
(85, 3, 'Users', 78, NULL, 114, 115),
(86, 5, 'Users', 79, NULL, 394, 395),
(87, 5, 'Users', 80, NULL, 396, 397),
(88, 3, 'Users', 81, NULL, 116, 117),
(90, 3, 'Users', 83, NULL, 118, 119),
(91, 3, 'Users', 84, NULL, 120, 121),
(92, 3, 'Users', 85, NULL, 122, 123),
(94, 5, 'Users', 87, NULL, 398, 399),
(95, 5, 'Users', 88, NULL, 400, 401),
(96, 5, 'Users', 89, NULL, 402, 403),
(97, 5, 'Users', 90, NULL, 404, 405),
(98, 5, 'Users', 91, NULL, 406, 407),
(99, 5, 'Users', 92, NULL, 408, 409),
(100, 5, 'Users', 93, NULL, 410, 411),
(101, 5, 'Users', 94, NULL, 412, 413),
(102, 5, 'Users', 95, NULL, 414, 415),
(103, 5, 'Users', 96, NULL, 416, 417),
(104, 5, 'Users', 97, NULL, 418, 419),
(105, 5, 'Users', 98, NULL, 420, 421),
(106, 5, 'Users', 99, NULL, 422, 423),
(107, 5, 'Users', 100, NULL, 424, 425),
(108, 5, 'Users', 101, NULL, 426, 427),
(109, 5, 'Users', 102, NULL, 428, 429),
(110, 5, 'Users', 103, NULL, 430, 431),
(111, 5, 'Users', 104, NULL, 432, 433),
(112, 5, 'Users', 105, NULL, 434, 435),
(113, 5, 'Users', 106, NULL, 436, 437),
(114, 5, 'Users', 107, NULL, 438, 439),
(115, 5, 'Users', 108, NULL, 440, 441),
(116, 5, 'Users', 109, NULL, 442, 443),
(117, 5, 'Users', 110, NULL, 444, 445),
(118, 5, 'Users', 111, NULL, 446, 447),
(119, 5, 'Users', 112, NULL, 448, 449),
(139, 5, 'Users', 132, NULL, 450, 451),
(140, 3, 'Users', 133, NULL, 124, 125),
(143, 5, 'Users', 136, NULL, 452, 453),
(145, 3, 'Users', 138, NULL, 126, 127),
(146, 5, 'Users', 139, NULL, 454, 455),
(148, 3, 'Users', 141, NULL, 128, 129),
(149, 5, 'Users', 142, NULL, 456, 457),
(150, 5, 'Users', 143, NULL, 458, 459),
(152, 3, 'Users', 145, NULL, 130, 131),
(153, 5, 'Users', 146, NULL, 460, 461),
(157, 3, 'Users', 150, NULL, 132, 133),
(158, 3, 'Users', 151, NULL, 134, 135),
(159, 5, 'Users', 152, NULL, 462, 463),
(160, 3, 'Users', 153, NULL, 136, 137),
(161, 3, 'Users', 154, NULL, 138, 139),
(162, 3, 'Users', 155, NULL, 140, 141),
(163, 3, 'Users', 156, NULL, 142, 143),
(164, 3, 'Users', 157, NULL, 144, 145),
(165, 3, 'Users', 158, NULL, 146, 147),
(166, 3, 'Users', 159, NULL, 148, 149),
(167, 5, 'Users', 160, NULL, 464, 465),
(168, 3, 'Users', 161, NULL, 150, 151),
(169, 5, 'Users', 162, NULL, 466, 467),
(170, 3, 'Users', 163, NULL, 152, 153),
(171, 3, 'Users', 164, NULL, 154, 155),
(172, 5, 'Users', 165, NULL, 468, 469),
(173, 3, 'Users', 166, NULL, 156, 157),
(174, 3, 'Users', 167, NULL, 158, 159),
(175, 3, 'Users', 168, NULL, 160, 161),
(176, 3, 'Users', 172, NULL, 162, 163),
(177, 3, 'Users', 170, NULL, 164, 165),
(178, 5, 'Users', 173, NULL, 470, 471),
(179, 3, 'Users', 174, NULL, 166, 167),
(180, 5, 'Users', 175, NULL, 472, 473),
(182, 3, 'Users', 177, NULL, 168, 169),
(184, 3, 'Users', 179, NULL, 170, 171),
(185, 5, 'Users', 180, NULL, 474, 475),
(186, 3, 'Users', 181, NULL, 172, 173),
(187, 3, 'Users', 182, NULL, 174, 175),
(188, 5, 'Users', 183, NULL, 476, 477),
(189, 3, 'Users', 184, NULL, 176, 177),
(190, 3, 'Users', 185, NULL, 178, 179),
(191, 3, 'Users', 186, NULL, 180, 181),
(192, 3, 'Users', 187, NULL, 182, 183),
(193, 3, 'Users', 188, NULL, 184, 185),
(194, 3, 'Users', 189, NULL, 186, 187),
(195, 3, 'Users', 190, NULL, 188, 189),
(196, 3, 'Users', 191, NULL, 190, 191),
(197, 3, 'Users', 192, NULL, 192, 193),
(198, 3, 'Users', 193, NULL, 194, 195),
(199, 3, 'Users', 194, NULL, 196, 197),
(200, 3, 'Users', 195, NULL, 198, 199),
(201, 3, 'Users', 196, NULL, 200, 201),
(202, 3, 'Users', 197, NULL, 202, 203),
(203, 3, 'Users', 198, NULL, 204, 205),
(204, 3, 'Users', 199, NULL, 206, 207),
(205, 3, 'Users', 200, NULL, 208, 209),
(206, 3, 'Users', 201, NULL, 210, 211),
(207, 3, 'Users', 202, NULL, 212, 213),
(208, 5, 'Users', 203, NULL, 478, 479),
(209, 3, 'Users', 204, NULL, 214, 215),
(210, 5, 'Users', 205, NULL, 480, 481),
(212, 5, 'Users', 207, NULL, 482, 483),
(213, 3, 'Users', 208, NULL, 216, 217),
(214, 3, 'Users', 209, NULL, 218, 219),
(215, 3, 'Users', 210, NULL, 220, 221),
(216, 3, 'Users', 211, NULL, 222, 223),
(217, 3, 'Users', 212, NULL, 224, 225),
(218, 5, 'Users', 213, NULL, 484, 485),
(219, 3, 'Users', 214, NULL, 226, 227),
(220, 3, 'Users', 215, NULL, 228, 229),
(221, 5, 'Users', 216, NULL, 486, 487),
(222, 5, 'Users', 217, NULL, 488, 489),
(223, 3, 'Users', 218, NULL, 230, 231),
(224, 5, 'Users', 219, NULL, 490, 491),
(225, 3, 'Users', 220, NULL, 232, 233),
(226, 3, 'Users', 221, NULL, 234, 235),
(227, 5, 'Users', 222, NULL, 492, 493),
(228, 3, 'Users', 223, NULL, 236, 237),
(229, 5, 'Users', 224, NULL, 494, 495),
(230, 5, 'Users', 225, NULL, 496, 497),
(231, 5, 'Users', 226, NULL, 498, 499),
(232, 5, 'Users', 227, NULL, 500, 501),
(233, 5, 'Users', 228, NULL, 502, 503),
(234, 5, 'Users', 229, NULL, 504, 505),
(235, 3, 'Users', 230, NULL, 238, 239),
(236, 3, 'Users', 231, NULL, 240, 241),
(237, 3, 'Users', 232, NULL, 242, 243),
(238, 5, 'Users', 233, NULL, 506, 507),
(239, 3, 'Users', 234, NULL, 244, 245),
(240, 5, 'Users', 235, NULL, 508, 509),
(241, 5, 'Users', 236, NULL, 510, 511),
(242, 5, 'Users', 237, NULL, 512, 513),
(243, 5, 'Users', 238, NULL, 514, 515),
(244, 5, 'Users', 239, NULL, 516, 517),
(245, 5, 'Users', 240, NULL, 518, 519),
(246, 3, 'Users', 241, NULL, 246, 247),
(247, 5, 'Users', 242, NULL, 520, 521),
(248, 5, 'Users', 243, NULL, 522, 523),
(249, 3, 'Users', 244, NULL, 248, 249),
(250, 3, 'Users', 245, NULL, 250, 251),
(251, 3, 'Users', 246, NULL, 252, 253),
(252, 5, 'Users', 247, NULL, 524, 525),
(253, 3, 'Users', 248, NULL, 254, 255),
(254, 5, 'Users', 249, NULL, 526, 527),
(255, 3, 'Users', 250, NULL, 256, 257),
(256, 3, 'Users', 251, NULL, 258, 259),
(257, 3, 'Users', 252, NULL, 260, 261),
(258, 3, 'Users', 253, NULL, 262, 263),
(259, 3, 'Users', 254, NULL, 264, 265),
(260, 3, 'Users', 255, NULL, 266, 267),
(261, 5, 'Users', 256, NULL, 528, 529),
(262, 5, 'Users', 257, NULL, 530, 531),
(263, 5, 'Users', 258, NULL, 532, 533),
(264, 5, 'Users', 259, NULL, 534, 535),
(265, 5, 'Users', 260, NULL, 536, 537),
(266, 3, 'Users', 261, NULL, 268, 269),
(267, 3, 'Users', 262, NULL, 270, 271),
(268, 5, 'Users', 263, NULL, 538, 539),
(269, 3, 'Users', 264, NULL, 272, 273),
(270, 5, 'Users', 265, NULL, 540, 541),
(271, 5, 'Users', 266, NULL, 542, 543),
(272, 3, 'Users', 267, NULL, 274, 275),
(273, 5, 'Users', 268, NULL, 544, 545),
(274, 3, 'Users', 269, NULL, 276, 277),
(275, 3, 'Users', 270, NULL, 278, 279),
(276, 5, 'Users', 271, NULL, 546, 547),
(277, 5, 'Users', 272, NULL, 548, 549),
(278, 5, 'Users', 273, NULL, 550, 551),
(279, 5, 'Users', 274, NULL, 552, 553),
(280, 5, 'Users', 275, NULL, 554, 555),
(281, 3, 'Users', 276, NULL, 280, 281),
(282, 5, 'Users', 277, NULL, 556, 557),
(283, 5, 'Users', 278, NULL, 558, 559),
(284, 5, 'Users', 279, NULL, 560, 561),
(285, 5, 'Users', 280, NULL, 562, 563),
(286, 5, 'Users', 281, NULL, 564, 565),
(287, 5, 'Users', 282, NULL, 566, 567),
(288, 5, 'Users', 283, NULL, 568, 569),
(289, 3, 'Users', 284, NULL, 282, 283),
(290, 3, 'Users', 285, NULL, 284, 285),
(291, 3, 'Users', 286, NULL, 286, 287),
(292, 3, 'Users', 287, NULL, 288, 289),
(293, 5, 'Users', 288, NULL, 570, 571),
(294, 3, 'Users', 289, NULL, 290, 291),
(295, 3, 'Users', 290, NULL, 292, 293),
(296, 3, 'Users', 291, NULL, 294, 295),
(297, 5, 'Users', 292, NULL, 572, 573),
(298, 3, 'Users', 293, NULL, 296, 297),
(299, 3, 'Users', 294, NULL, 298, 299),
(300, 3, 'Users', 295, NULL, 300, 301),
(301, 3, 'Users', 296, NULL, 302, 303),
(302, 3, 'Users', 297, NULL, 304, 305),
(303, 5, 'Users', 298, NULL, 574, 575),
(304, 3, 'Users', 299, NULL, 306, 307),
(305, 5, 'Users', 300, NULL, 576, 577),
(306, 3, 'Users', 301, NULL, 308, 309),
(307, 5, 'Users', 302, NULL, 578, 579),
(308, 3, 'Users', 303, NULL, 310, 311),
(309, 3, 'Users', 304, NULL, 312, 313),
(310, 3, 'Users', 305, NULL, 314, 315),
(311, 3, 'Users', 306, NULL, 316, 317),
(312, 3, 'Users', 307, NULL, 318, 319),
(313, 3, 'Users', 308, NULL, 320, 321),
(314, 3, 'Users', 309, NULL, 322, 323),
(315, 5, 'Users', 310, NULL, 580, 581),
(316, 5, 'Users', 311, NULL, 582, 583),
(317, NULL, 'Groups', 7, NULL, 588, 595),
(318, 3, 'Users', 312, NULL, 324, 325),
(319, 4, 'Users', 313, NULL, 364, 365),
(320, 4, 'Users', 314, NULL, 366, 367),
(321, 317, 'Users', 315, NULL, 589, 590),
(322, 317, 'Users', 316, NULL, 591, 592),
(323, 5, 'Users', 317, NULL, 584, 585),
(324, 5, 'Users', 318, NULL, 586, 587),
(325, 4, 'Users', 319, NULL, 368, 369),
(326, 317, 'Users', 320, NULL, 593, 594),
(327, 3, 'Users', 321, NULL, 326, 327),
(328, 3, 'Users', 322, NULL, 328, 329),
(329, 3, 'Users', 323, NULL, 330, 331),
(330, 3, 'Users', 324, NULL, 332, 333),
(331, 3, 'Users', 325, NULL, 334, 335),
(332, 3, 'Users', 326, NULL, 336, 337),
(334, 3, 'Users', 328, NULL, 338, 339),
(335, 3, 'Users', 329, NULL, 340, 341),
(336, 3, 'Users', 330, NULL, 342, 343),
(337, 3, 'Users', 331, NULL, 344, 345),
(338, 3, 'Users', 332, NULL, 346, 347),
(339, 3, 'Users', 333, NULL, 348, 349),
(340, 3, 'Users', 334, NULL, 350, 351),
(341, 3, 'Users', 335, NULL, 352, 353);

-- --------------------------------------------------------

--
-- Table structure for table `aros_acos`
--

CREATE TABLE `aros_acos` (
  `id` int(11) NOT NULL,
  `aro_id` int(11) NOT NULL,
  `aco_id` int(11) NOT NULL,
  `_create` varchar(2) NOT NULL DEFAULT '0',
  `_read` varchar(2) NOT NULL DEFAULT '0',
  `_update` varchar(2) NOT NULL DEFAULT '0',
  `_delete` varchar(2) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `aros_acos`
--

INSERT INTO `aros_acos` (`id`, `aro_id`, `aco_id`, `_create`, `_read`, `_update`, `_delete`) VALUES
(1, 2, 1, '1', '1', '1', '1'),
(2, 3, 1, '1', '1', '1', '1'),
(3, 3, 24, '1', '1', '1', '1'),
(4, 2, 24, '1', '1', '1', '1'),
(5, 5, 1, '1', '1', '1', '1'),
(6, 5, 44, '-1', '-1', '-1', '-1'),
(7, 5, 48, '-1', '-1', '-1', '-1'),
(8, 5, 46, '-1', '-1', '-1', '-1'),
(9, 4, 1, '1', '1', '1', '1'),
(10, 317, 1, '1', '1', '1', '1'),
(11, 317, 17, '1', '1', '1', '1'),
(12, 4, 24, '1', '1', '1', '1'),
(13, 317, 24, '1', '1', '1', '1'),
(14, 317, 44, '1', '1', '1', '1');

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` bigint(14) NOT NULL,
  `content` text NOT NULL,
  `created` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`id`, `name`, `email`, `phone`, `content`, `created`) VALUES
(1, 'fdhfdbhg', 'gfhf@gmail.com', 1234567890, 'gfgfgfdnhg', '2017-10-26 23:23:41'),
(2, 'Dharm', 'dharmveer@gmail.com', 1234567890, 'sdffbvgfds', '2017-10-26 23:25:21'),
(3, 'Dharm', 'dharmveer@gmail.com', 2147483647, 'dvgfdbg gf ffgx gfxd vgvgvgvg  hgsdfha jkhgasdjghf nbhjbg', '2017-10-27 00:24:07'),
(4, 'Dharm', 'dharmveer@gmail.com', 2147483647, 'dvgfdbg gf ffgx gfxd vgvgvgvg  hgsdfha jkhgasdjghf nbhjbg', '2017-10-27 00:24:16'),
(5, 'Dharm', 'dharmveer@gmail.com', 2147483647, 'dvgfdbg gf ffgx gfxd vgvgvgvg  hgsdfha jkhgasdjghf nbhjbg', '2017-10-27 00:25:08'),
(6, 'Dharm', 'dharmveer@gmail.com', 2147483647, 'dvgfdbg gf ffgx gfxd vgvgvgvg  hgsdfha jkhgasdjghf nbhjbg', '2017-10-27 00:26:06'),
(7, 'Sanda Moldovan', 'smmoldovan@hotmail.com', 2147483647, 'hjdfsjkg jkbgkbh hjbhjs hjbhj hjbhjbgf hjdfsjkg jkbgkbh hjbhjs hjbhj hjbhjbgf ', '2017-10-27 00:27:28'),
(8, 'Sanda Moldovan', 'smmoldovan@hotmail.com', 2147483647, 'hjdfsjkg jkbgkbh hjbhjs hjbhj hjbhjbgf hjdfsjkg jkbgkbh hjbhjs hjbhj hjbhjbgf ', '2017-10-27 00:28:01'),
(9, 'Sanda Moldovan', 'smmoldovan@hotmail.com', 2147483647, 'hjdfsjkg jkbgkbh hjbhjs hjbhj hjbhjbgf hjdfsjkg jkbgkbh hjbhjs hjbhj hjbhjbgf ', '2017-10-27 00:28:49');

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `cty_iso_code` varchar(3) NOT NULL,
  `cty_desc` varchar(40) NOT NULL,
  `cty_phone_code` varchar(6) NOT NULL,
  `cty_code` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`cty_iso_code`, `cty_desc`, `cty_phone_code`, `cty_code`) VALUES
('AD', 'ANDORRA', '376', 'AD'),
('AE', 'UNITED ARAB EMIRATES', '971', 'AE'),
('AF', 'AFGHANISTAN', '93', 'AF'),
('AG', 'ANTIGUA AND BARBUDA', '809', 'ATG'),
('AI', 'ANGUILLA', '809', 'AI'),
('AL', 'ALBANIA', '355', 'AL'),
('AM', 'ARMENIA', '374', 'AM'),
('AN', 'NETHERLANDS ANTILLES', '599', 'AN'),
('AO', 'ANGOLA', '244', 'AO'),
('AQ', 'ANTARCTICA', '672', 'AQ'),
('AR', 'ARGENTINA', '54', 'ARG'),
('AS', 'AMERICAN SAMOA', '684', 'AS'),
('AT', 'AUSTRIA', '43', 'AUT'),
('AU', 'AUSTRALIA', '61', 'AUS'),
('AW', 'ARUBA', '297', 'ABW'),
('AZ', 'AZERBAIJAN', '994', 'AZ'),
('BA', 'BOSNIA AND HERZEGOVINA', '387', 'BA'),
('BB', 'BARBADOS', '809', 'BRB'),
('BD', 'BANGLADESH', '880', 'BD'),
('BE', 'BELGIUM', '321', 'BEL'),
('BF', 'BURKINA FASO', '226', 'BF'),
('BG', 'BULGARIA', '359', 'BG'),
('BH', 'BAHRAIN', '973', 'BH'),
('BI', 'BURUNDI', '257', 'BI'),
('BJ', 'BENIN', '229', 'BJ'),
('BM', 'BERMUDA', '809', 'BMU'),
('BN', 'BRUNEI DARUSSALAM', '673', 'BN'),
('BO', 'BOLIVIA', '591', 'BO'),
('BR', 'BRAZIL', '55', 'BRA'),
('BS', 'BAHAMAS', '1', 'BHS'),
('BT', 'BHUTAN', '975', 'BT'),
('BV', 'BOUVET ISLAND', '', 'BV'),
('BW', 'BOTSWANA', '267', 'BW'),
('BY', 'BELARUS', '375', 'BY'),
('BZ', 'BELIZE', '501', 'BZ'),
('CA', 'CANADA', '1', 'CA'),
('CC', 'COCOS (KEELING) ISLANDS', '672', 'CCK'),
('CD', 'CONGO, THE DEMOCRATIC REPUBLIC OF THE', '242', 'CD'),
('CF', 'CENTRAL AFRICAN REPUBLIC', '236', 'CF'),
('CG', 'CONGO', '242', 'CG'),
('CH', 'SWITZERLAND', '41', 'CH'),
('CI', 'COTE D\'IVOIRE', '225', 'CI'),
('CK', 'COOK ISLANDS', '682', 'CK'),
('CL', 'CHILE', '56', 'CL'),
('CM', 'CAMEROON', '237', 'CM'),
('CN', 'CHINA', '86', 'CN'),
('CO', 'COLOMBIA', '57', 'COL'),
('CR', 'COSTA RICA', '506', 'CRI'),
('CU', 'CUBA', '53', 'CU'),
('CV', 'CAPE VERDE', '809', 'CV'),
('CX', 'CHRISTMAS ISLAND', '672', 'CX'),
('CY', 'CYPRUS', '357', 'CY'),
('CZ', 'CZECH REPUBLIC', '42', 'CZ'),
('DE', 'GERMANY', '49', 'DEU'),
('DJ', 'DJIBOUTI', '253', 'DJ'),
('DK', 'DENMARK', '45', 'DNK'),
('DM', 'DOMINICA', '809', 'DM'),
('DO', 'DOMINICAN REPUBLIC', '809', 'DO'),
('DZ', 'ALGERIA', '213', 'DZ'),
('EC', 'ECUADOR', '592', 'EC'),
('EE', 'ESTONIA', '372', 'EE'),
('EG', 'EGYPT', '20', 'EG'),
('EH', 'WESTERN SAHARA', '', 'EH'),
('ER', 'ERITREA', '291', 'ER'),
('ES', 'SPAIN', '349', 'ES'),
('ET', 'ETHIOPIA', '251', 'ET'),
('FI', 'FINLAND', '358', 'FI'),
('FJ', 'FIJI', '679', 'FJ'),
('FK', 'FALKLAND ISLANDS (MALVINAS)', '500', 'FK'),
('FM', 'MICRONESIA, FEDERATED STATES OF', '691', 'FM'),
('FO', 'FAROE ISLANDS', '298', 'FO'),
('FR', 'FRANCE', '33', 'FR'),
('GA', 'GABON', '241', 'GA'),
('GB', 'UNITED KINGDOM', '44', 'GB'),
('GD', 'GRENADA', '809', 'GD'),
('GE', 'GEORGIA', '995', 'GE'),
('GF', 'FRENCH GUIANA', '594', 'GF'),
('GH', 'GHANA', '233', 'GH'),
('GI', 'GIBRALTAR', '350', 'GI'),
('GL', 'GREENLAND', '299', 'GL'),
('GM', 'GAMBIA', '220', 'GM'),
('GN', 'GUINEA', '224', 'GN'),
('GP', 'GUADELOUPE', '590', 'GP'),
('GQ', 'EQUATORIAL GUINEA', '240', 'GQ'),
('GR', 'GREECE', '30', 'GR'),
('GS', 'SOUTH GEORGIA AND THE SOUTH SANDWICH ISL', '', 'GS'),
('GT', 'GUATEMALA', '502', 'GT'),
('GW', 'GUINEA-BISSAU', '245', 'GW'),
('GY', 'GUYANA', '592', 'GY'),
('HK', 'HONG KONG', '852', 'HK'),
('HM', 'HEARD ISLAND AND MCDONALD ISLANDS', '', 'HM'),
('HN', 'HONDURAS', '504', 'HN'),
('HR', 'CROATIA', '385', 'HR'),
('HT', 'HAITI', '509', 'HT'),
('HU', 'HUNGARY', '36', 'HU'),
('ID', 'INDONESIA', '62', 'ID'),
('IE', 'IRELAND', '353', 'IE'),
('IL', 'ISRAEL', '972', 'IL'),
('IN', 'INDIA', '91', 'IN'),
('IO', 'BRITISH INDIAN OCEAN TERRITORY', '0', 'IO'),
('IQ', 'IRAQ', '964', 'IQ'),
('IR', 'IRAN, ISLAMIC REPUBLIC OF', '98', 'IR'),
('IS', 'ICELAND', '354', 'IS'),
('IT', 'ITALY', '39', 'IT'),
('JM', 'JAMAICA', '809', 'JM'),
('JO', 'JORDAN', '962', 'JO'),
('JP', 'JAPAN', '81', 'JP'),
('KE', 'KENYA', '254', 'KE'),
('KG', 'KYRGYZSTAN', '7', 'KG'),
('KH', 'CAMBODIA', '855', 'KH'),
('KI', 'KIRIBATI', '686', 'KI'),
('KM', 'COMOROS', '269', 'KM'),
('KN', 'SAINT KITTS AND NEVIS', '809', 'KN'),
('KP', 'KOREA, DEMOCRATIC PEOPLE\'S REPUBLIC OF', '82', 'KP'),
('KR', 'KOREA, REPUBLIC OF', '82', 'KR'),
('KW', 'KUWAIT', '965', 'KW'),
('KY', 'CAYMAN ISLANDS', '809', 'KY'),
('KZ', 'KAZAKHSTAN', '7', 'KZ'),
('LA', 'LAO PEOPLE\'S DEMOCRATIC REPUBLIC', '21', 'LA'),
('LB', 'LEBANON', '961', 'LB'),
('LC', 'SAINT LUCIA', '809', 'LC'),
('LI', 'LIECHTENSTEIN', '417', 'LI'),
('LK', 'SRI LANKA', '94', 'LK'),
('LR', 'LIBERIA', '231', 'LR'),
('LS', 'LESOTHO', '266', 'LS'),
('LT', 'LITHUANIA', '370', 'LT'),
('LU', 'LUXEMBOURG', '352', 'LU'),
('LV', 'LATVIA', '371', 'LV'),
('LY', 'LIBYAN ARAB JAMAHIRIYA', '218', 'LY'),
('MA', 'MOROCCO', '212', 'MA'),
('MC', 'MONACO', '339', 'MC'),
('MD', 'MOLDOVA, REPUBLIC OF', '373', 'MD'),
('MG', 'MADAGASCAR', '261', 'MG'),
('MH', 'MARSHALL ISLANDS', '692', 'MH'),
('MK', 'MACEDONIA, THE FORMER YUGOSLAV REPUBLIC', '389', 'MK'),
('ML', 'MALI', '223', 'ML'),
('MM', 'MYANMAR', '95', 'MM'),
('MN', 'MONGOLIA', '976', 'MN'),
('MO', 'MACAO', '853', 'MO'),
('MP', 'NORTHERN MARIANA ISLANDS', '670', 'MP'),
('MQ', 'MARTINIQUE', '596', 'MQ'),
('MR', 'MAURITANIA', '222', 'MR'),
('MS', 'MONTSERRAT', '809', 'MS'),
('MT', 'MALTA', '356', 'MT'),
('MU', 'MAURITIUS', '230', 'MU'),
('MV', 'MALDIVES', '960', 'MV'),
('MW', 'MALAWI', '265', 'MW'),
('MX', 'MEXICO', '52', 'MX'),
('MY', 'MALAYSIA', '60', 'MY'),
('MZ', 'MOZAMBIQUE', '258', 'MZ'),
('NA', 'NAMIBIA', '264', 'NA'),
('NC', 'NEW CALEDONIA', '687', 'NC'),
('NE', 'NIGER', '227', 'NE'),
('NF', 'NORFOLK ISLAND', '6723', 'NF'),
('NG', 'NIGERIA', '234', 'NG'),
('NI', 'NICARAGUA', '505', 'NI'),
('NL', 'NETHERLANDS', '31', 'NL'),
('NO', 'NORWAY', '47', 'NO'),
('NP', 'NEPAL', '977', 'NP'),
('NR', 'NAURU', '674', 'NR'),
('NU', 'NIUE', '683', 'NU'),
('NZ', 'NEW ZEALAND', '64', 'NZ'),
('OM', 'OMAN', '968', 'OM'),
('PA', 'PANAMA', '507', 'PA'),
('PE', 'PERU', '51', 'PE'),
('PF', 'FRENCH POLYNESIA', '689', 'PF'),
('PG', 'PAPUA NEW GUINEA', '675', 'PG'),
('PH', 'PHILIPPINES', '63', 'PH'),
('PK', 'PAKISTAN', '92', 'PK'),
('PL', 'POLAND', '48', 'PL'),
('PM', 'SAINT PIERRE AND MIQUELON', '508', 'PM'),
('PN', 'PITCAIRN', '', 'PN'),
('PS', 'PALESTINIAN TERRITORY, OCCUPIED', '970', 'PS'),
('PT', 'PORTUGAL', '351', 'PT'),
('PW', 'PALAU', '680', 'PW'),
('PY', 'PARAGUAY', '595', 'PY'),
('QA', 'QATAR', '974', 'QA'),
('RE', 'REUNION', '262', 'RE'),
('RO', 'ROMANIA', '40', 'RO'),
('RU', 'RUSSIAN FEDERATION', '7', 'RU'),
('RW', 'RWANDA', '250', 'RW'),
('SA', 'SAUDI ARABIA', '966', 'SA'),
('SB', 'SOLOMON ISLANDS', '677', 'SB'),
('SC', 'SEYCHELLES', '248', 'SC'),
('SD', 'SUDAN', '249', 'SD'),
('SE', 'SWEDEN', '46', 'SE'),
('SG', 'SINGAPORE', '65', 'SG'),
('SH', 'SAINT HELENA', '290', 'SH'),
('SI', 'SLOVENIA', '386', 'SI'),
('SJ', 'SVALBARD AND JAN MAYEN', '47', 'SJ'),
('SK', 'SLOVAKIA', '42', 'SK'),
('SL', 'SIERRA LEONE', '232', 'SL'),
('SM', 'SAN MARINO', '395', 'SM'),
('SN', 'SENEGAL', '221', 'SN'),
('SO', 'SOMALIA', '252', 'SO'),
('SR', 'SURINAME', '597', 'SR'),
('ST', 'SAO TOME AND PRINCIPE', '239', 'ST'),
('SV', 'EL SALVADOR', '503', 'SV'),
('SY', 'SYRIAN ARAB REPUBLIC', '963', 'SY'),
('SZ', 'SWAZILAND', '268', 'SZ'),
('TC', 'TURKS AND CAICOS ISLANDS', '809', 'TC'),
('TD', 'CHAD', '235', 'TD'),
('TF', 'FRENCH SOUTHERN TERRITORIES', '', 'TF'),
('TG', 'TOGO', '228', 'TG'),
('TH', 'THAILAND', '66', 'TH'),
('TJ', 'TAJIKISTAN', '7', 'TJ'),
('TK', 'TOKELAU', '690', 'TK'),
('TL', 'TIMOR-LESTE', '670', 'TL'),
('TM', 'TURKMENISTAN', '7', 'TM'),
('TN', 'TUNISIA', '216', 'TN'),
('TO', 'TONGA', '676', 'TO'),
('TR', 'TURKEY', '90', 'TR'),
('TT', 'TRINIDAD AND TOBAGO', '868', 'TT'),
('TV', 'TUVALU', '688', 'TV'),
('TW', 'TAIWAN, PROVINCE OF CHINA', '886', 'TW'),
('TZ', 'TANZANIA, UNITED REPUBLIC OF', '255', 'TZ'),
('UA', 'UKRAINE', '380', 'UA'),
('UG', 'UGANDA', '256', 'UG'),
('UM', 'UNITED STATES MINOR OUTLYING ISLANDS', '', 'UM'),
('US', 'UNITED STATES', '1', 'US'),
('UY', 'URUGUAY', '598', 'UY'),
('UZ', 'UZBEKISTAN', '7', 'UZ'),
('VA', 'HOLY SEE (VATICAN CITY STATE)', '396', 'VA'),
('VC', 'SAINT VINCENT AND THE GRENADINES', '809', 'VC'),
('VE', 'VENEZUELA', '58', 'VE'),
('VG', 'VIRGIN ISLANDS, BRITISH', '340', 'VG'),
('VN', 'VIETNAM', '84', 'VN'),
('VU', 'VANUATU', '678', 'VU'),
('WF', 'WALLIS AND FUTUNA', '681', 'WF'),
('WS', 'SAMOA', '684', 'WS'),
('YE', 'YEMEN', '967', 'YE'),
('YT', 'MAYOTTE', '2696', 'YT'),
('YU', 'YUGOSLAVIA', '381', 'YU'),
('ZA', 'SOUTH AFRICA', '27', 'ZA'),
('ZM', 'ZAMBIA', '260', 'ZM'),
('ZW', 'ZIMBABWE', '263', 'ZW');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` int(11) NOT NULL,
  `code` varchar(50) NOT NULL,
  `discount_type` enum('per','amt') NOT NULL COMMENT '"per" => "On Percentage","amt" => "On Amount"',
  `discount` varchar(50) NOT NULL,
  `used` int(11) NOT NULL DEFAULT '0',
  `valid_from` date NOT NULL,
  `valid_to` date NOT NULL,
  `status` enum('A','I') NOT NULL COMMENT '"A"=>"Active", "I"=>"Inactive"',
  `created` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `code`, `discount_type`, `discount`, `used`, `valid_from`, `valid_to`, `status`, `created`, `modified`) VALUES
(10, 'POWER', 'per', '10%', 0, '2018-03-22', '2018-03-31', 'A', '2018-03-23 00:26:57', '2018-03-23 00:26:57'),
(11, 'RAID5$', 'amt', '$5.00', 0, '2018-03-22', '2018-03-30', 'A', '2018-03-23 00:42:48', '2018-03-23 00:42:48');

-- --------------------------------------------------------

--
-- Table structure for table `custom_email_templates`
--

CREATE TABLE `custom_email_templates` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `init_subject` text,
  `init_body` longtext,
  `first_subject` text,
  `first_reminder_days` int(11) DEFAULT '3',
  `first_body` longtext,
  `second_reminder_days` int(11) DEFAULT '6',
  `second_subject` text,
  `second_body` longtext,
  `sms_verbiage` longtext,
  `created` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `custom_email_templates`
--

INSERT INTO `custom_email_templates` (`id`, `user_id`, `init_subject`, `init_body`, `first_subject`, `first_reminder_days`, `first_body`, `second_reminder_days`, `second_subject`, `second_body`, `sms_verbiage`, `created`, `modified`) VALUES
(5, 301, 'Please Rate Your Experience', '<p>Hello {Recipient_Name},</p>\r\n<p>Thank you for offering to write a review about your most recent experience with <strong>{Sender_Business_Name}</strong> and <strong>{Sender_Name}</strong>. I hope you had a great experience and are satisfied with the service I provided. Your feedback is very valuable and I appreciate you taking the time to rate your experience.</p>\r\n<p>Initial Email (Review/Survey Request) Template</p>\r\n<p>{CLICK_HERE_to_rate_your_experience}</p>\r\n<p>Sincerely,</p>\r\n<p>{Sender_Name}<br /> <strong>Email:</strong> {Sender_Email}<br /> <strong>Phone:</strong> {Sender_Phone}</p>', 'Reminder Mail: Please Rate Your Experience', 3, '<p>Hello {Recipient_Name},</p>\r\n<p>Thank you for offering to write a review about your most recent experience with <strong>{Sender_Business_Name}</strong> and <strong>{Sender_Name}</strong>. I hope you had a great experience and are satisfied with the service I provided. Your feedback is very valuable and I appreciate you taking the time to rate your experience.</p>\r\n<p>1st Reminder Template</p>\r\n<p>{CLICK_HERE_to_rate_your_experience}</p>\r\n<p>Sincerely,</p>\r\n<p>{Sender_Name}<br /> <strong>Email:</strong> {Sender_Email}<br /> <strong>Phone:</strong> {Sender_Phone}</p>', 6, 'Reminder Mail: Please Rate Your Experience', '<p>Hello {Recipient_Name},</p>\r\n<p>Thank you for offering to write a review about your most recent experience with <strong>{Sender_Business_Name}</strong> and <strong>{Sender_Name}</strong>. I hope you had a great experience and are satisfied with the service I provided. Your feedback is very valuable and I appreciate you taking the time to rate your experience.</p>\r\n<p>2nd Reminder Template</p>\r\n<p>{CLICK_HERE_to_rate_your_experience}</p>\r\n<p>Sincerely,</p>\r\n<p>{Sender_Name}<br /> <strong>Email:</strong> {Sender_Email}<br /> <strong>Phone:</strong> {Sender_Phone}</p>', 'Thank you for offering to write a review about your most recent experience.', '2018-02-10 22:20:58', '2018-02-23 19:47:41'),
(6, 170, 'Please rate your experience with Partners Real Estate', '<p>Hello {Recipient_Name},</p>\r\n<p>Thank you for offering to write a review about your most recent experience with <strong>{Sender_Business_Name}</strong> and <strong>{Sender_Name}</strong>. I hope you had a great experience and are satisfied with the service I provided. Your feedback is very valuable and I appreciate you taking the time to rate your experience.</p>\r\n<p>{CLICK_HERE_to_rate_your_experience}</p>\r\n<p>Sincerely,</p>\r\n<p>{Sender_Name}<br /> <strong>Email:</strong> {Sender_Email}<br /> <strong>Phone:</strong> {Sender_Phone}</p>', 'Please rate your experience with Partners Real Estate', 3, '<p>Hello {Recipient_Name},</p>\r\n<p>Thank you for offering to write a review about your most recent experience with <strong>{Sender_Business_Name}</strong> and <strong>{Sender_Name}</strong>. I hope you had a great experience and are satisfied with the service I provided. Your feedback is very valuable and I appreciate you taking the time to rate your experience.</p>\r\n<p>{CLICK_HERE_to_rate_your_experience}</p>\r\n<p>Sincerely,</p>\r\n<p>{Sender_Name}<br /> <strong>Email:</strong> {Sender_Email}<br /> <strong>Phone:</strong> {Sender_Phone}</p>', 7, 'Please rate your experience with Partners Real Estate', '<p>Hello {Recipient_Name},</p>\r\n<p>Thank you for offering to write a review about your most recent experience with <strong>{Sender_Business_Name}</strong> and <strong>{Sender_Name}</strong>. I know your time is valuable and life can get busy but we hope you can spare just a couple minutes to help me out. &nbsp; Your feedback is very valuable and I appreciate you taking the time to rate your experience.&nbsp; Thank you for your help!</p>\r\n<p>{CLICK_HERE_to_rate_your_experience}</p>\r\n<p>Sincerely,</p>\r\n<p>{Sender_Name}<br /> <strong>Email:</strong> {Sender_Email}<br /> <strong>Phone:</strong> {Sender_Phone}</p>', 'Hello {Recipient_Name},\r\nThank you for offering to write a review about your most recent experience with {Sender_Business_Name} and {Sender_Name}. Your feedback is very valuable and I appreciate you taking the time to rate your experience.\r\n\r\n{CLICK_HERE_to_rate_your_experience}\r\n\r\nSincerely,\r\n\r\n{Sender_Name}\r\nEmail: {Sender_Email}\r\nPhone: {Sender_Phone}', '2018-02-12 03:01:59', '2018-02-15 20:33:24'),
(8, 181, 'Test initial', '<p>Hello {Recipient_Name},</p>\r\n<p>Thank you for offering to write a review about your most recent experience with <strong>{Sender_Business_Name}</strong> and <strong>{Sender_Name}</strong>. I hope you had a great experience and are satisfied with the service I provided. Your feedback is very valuable and I appreciate you taking the time to rate your experience.</p>\r\n<p>{CLICK_HERE_to_rate_your_experience}</p>\r\n<p>Sincerely,</p>\r\n<p>{Sender_Name}<br /> <strong>Email:</strong> {Sender_Email}<br /> <strong>Phone:</strong> {Sender_Phone}</p>', 'Test first reminder', 1, '<p>Hello {Recipient_Name},</p>\r\n<p>Thank you for offering to write a review about your most recent experience with <strong>{Sender_Business_Name}</strong> and <strong>{Sender_Name}</strong>. I hope you had a great experience and are satisfied with the service I provided. Your feedback is very valuable and I appreciate you taking the time to rate your experience.</p>\r\n<p>{CLICK_HERE_to_rate_your_experience}</p>\r\n<p>Sincerely,</p>\r\n<p>{Sender_Name}<br /> <strong>Email:</strong> {Sender_Email}<br /> <strong>Phone:</strong> {Sender_Phone}</p>', 6, 'Test reminder3', '<p>Hello {Recipient_Name},</p>\r\n<p>Thank you for offering to write a review about your most recent experience with <strong>{Sender_Business_Name}</strong> and <strong>{Sender_Name}</strong>. I hope you had a great experience and are satisfied with the service I provided. Your feedback is very valuable and I appreciate you taking the time to rate your experience.</p>\r\n<p>{CLICK_HERE_to_rate_your_experience}</p>\r\n<p>Sincerely,</p>\r\n<p>{Sender_Name}<br /> <strong>Email:</strong> {Sender_Email}<br /> <strong>Phone:</strong> {Sender_Phone}</p>', NULL, '2018-02-13 20:54:20', '2018-02-13 20:54:54'),
(9, 312, 'Please Rate Your Experience', '<p>Hello {Recipient_Name},</p><p>Thank you for offering to write a review about your most recent experience with <strong>{Sender_Business_Name}</strong> and <strong>{Sender_Name}</strong>. I hope you had a great experience and are satisfied with the service I provided. Your feedback is very valuable and I appreciate you taking the time to rate your experience.</p><p>{CLICK_HERE_to_rate_your_experience}</p><p>Sincerely,</p></p>{Sender_Name}<br><strong>Email:</strong> {Sender_Email}<br><strong>Phone:</strong> {Sender_Phone}</p>', 'Reminder Mail: Please Rate Your Experience', 3, '<p>Hello {Recipient_Name},</p><p>Thank you for offering to write a review about your most recent experience with <strong>{Sender_Business_Name}</strong> and <strong>{Sender_Name}</strong>. I hope you had a great experience and are satisfied with the service I provided. Your feedback is very valuable and I appreciate you taking the time to rate your experience.</p><p>{CLICK_HERE_to_rate_your_experience}</p><p>Sincerely,</p></p>{Sender_Name}<br><strong>Email:</strong> {Sender_Email}<br><strong>Phone:</strong> {Sender_Phone}</p>', 7, 'Reminder Mail: Please Rate Your Experience', '<p>Hello {Recipient_Name},</p><p>Thank you for offering to write a review about your most recent experience with <strong>{Sender_Business_Name}</strong> and <strong>{Sender_Name}</strong>. I hope you had a great experience and are satisfied with the service I provided. Your feedback is very valuable and I appreciate you taking the time to rate your experience.</p><p>{CLICK_HERE_to_rate_your_experience}</p><p>Sincerely,</p></p>{Sender_Name}<br><strong>Email:</strong> {Sender_Email}<br><strong>Phone:</strong> {Sender_Phone}</p>', 'Hello {Recipient_Name},\n\nThank you for offering to write a review about your most recent experience with {Sender_Business_Name} and {Sender_Name}. Your feedback is very valuable and I appreciate you taking the time to rate your experience.\n\nClick link below to rate your experience\n\n{CLICK_HERE_to_rate_your_experience}', '2018-03-22 23:21:12', '2018-03-22 23:21:12'),
(10, 321, 'Please Rate Your Experience', '<p>Hello {Recipient_Name},</p><p>Thank you for offering to write a review about your most recent experience with <strong>{Sender_Business_Name}</strong> and <strong>{Sender_Name}</strong>. I hope you had a great experience and are satisfied with the service I provided. Your feedback is very valuable and I appreciate you taking the time to rate your experience.</p><p>{CLICK_HERE_to_rate_your_experience}</p><p>Sincerely,</p></p>{Sender_Name}<br><strong>Email:</strong> {Sender_Email}<br><strong>Phone:</strong> {Sender_Phone}</p>', 'Reminder Mail: Please Rate Your Experience', 3, '<p>Hello {Recipient_Name},</p><p>Thank you for offering to write a review about your most recent experience with <strong>{Sender_Business_Name}</strong> and <strong>{Sender_Name}</strong>. I hope you had a great experience and are satisfied with the service I provided. Your feedback is very valuable and I appreciate you taking the time to rate your experience.</p><p>{CLICK_HERE_to_rate_your_experience}</p><p>Sincerely,</p></p>{Sender_Name}<br><strong>Email:</strong> {Sender_Email}<br><strong>Phone:</strong> {Sender_Phone}</p>', 7, 'Reminder Mail: Please Rate Your Experience', '<p>Hello {Recipient_Name},</p><p>Thank you for offering to write a review about your most recent experience with <strong>{Sender_Business_Name}</strong> and <strong>{Sender_Name}</strong>. I hope you had a great experience and are satisfied with the service I provided. Your feedback is very valuable and I appreciate you taking the time to rate your experience.</p><p>{CLICK_HERE_to_rate_your_experience}</p><p>Sincerely,</p></p>{Sender_Name}<br><strong>Email:</strong> {Sender_Email}<br><strong>Phone:</strong> {Sender_Phone}</p>', 'Hello {Recipient_Name},\n\nThank you for offering to write a review about your most recent experience with {Sender_Business_Name} and {Sender_Name}. Your feedback is very valuable and I appreciate you taking the time to rate your experience.\n\nClick link below to rate your experience\n\n{CLICK_HERE_to_rate_your_experience}', '2018-03-28 18:14:00', '2018-03-28 18:14:00'),
(11, 322, 'Please Rate Your Experience', '<p>Hello {Recipient_Name},</p><p>Thank you for offering to write a review about your most recent experience with <strong>{Sender_Business_Name}</strong> and <strong>{Sender_Name}</strong>. I hope you had a great experience and are satisfied with the service I provided. Your feedback is very valuable and I appreciate you taking the time to rate your experience.</p><p>{CLICK_HERE_to_rate_your_experience}</p><p>Sincerely,</p></p>{Sender_Name}<br><strong>Email:</strong> {Sender_Email}<br><strong>Phone:</strong> {Sender_Phone}</p>', 'Reminder Mail: Please Rate Your Experience', 3, '<p>Hello {Recipient_Name},</p><p>Thank you for offering to write a review about your most recent experience with <strong>{Sender_Business_Name}</strong> and <strong>{Sender_Name}</strong>. I hope you had a great experience and are satisfied with the service I provided. Your feedback is very valuable and I appreciate you taking the time to rate your experience.</p><p>{CLICK_HERE_to_rate_your_experience}</p><p>Sincerely,</p></p>{Sender_Name}<br><strong>Email:</strong> {Sender_Email}<br><strong>Phone:</strong> {Sender_Phone}</p>', 7, 'Reminder Mail: Please Rate Your Experience', '<p>Hello {Recipient_Name},</p><p>Thank you for offering to write a review about your most recent experience with <strong>{Sender_Business_Name}</strong> and <strong>{Sender_Name}</strong>. I hope you had a great experience and are satisfied with the service I provided. Your feedback is very valuable and I appreciate you taking the time to rate your experience.</p><p>{CLICK_HERE_to_rate_your_experience}</p><p>Sincerely,</p></p>{Sender_Name}<br><strong>Email:</strong> {Sender_Email}<br><strong>Phone:</strong> {Sender_Phone}</p>', 'Hello {Recipient_Name},\n\nThank you for offering to write a review about your most recent experience with {Sender_Business_Name} and {Sender_Name}. Your feedback is very valuable and I appreciate you taking the time to rate your experience.\n\nClick link below to rate your experience\n\n{CLICK_HERE_to_rate_your_experience}', '2018-04-03 02:30:14', '2018-04-03 02:30:14'),
(12, 323, 'Please Rate Your Experience', '<p>Hello {Recipient_Name},</p><p>Thank you for offering to write a review about your most recent experience with <strong>{Sender_Business_Name}</strong> and <strong>{Sender_Name}</strong>. I hope you had a great experience and are satisfied with the service I provided. Your feedback is very valuable and I appreciate you taking the time to rate your experience.</p><p>{CLICK_HERE_to_rate_your_experience}</p><p>Sincerely,</p></p>{Sender_Name}<br><strong>Email:</strong> {Sender_Email}<br><strong>Phone:</strong> {Sender_Phone}</p>', 'Reminder Mail: Please Rate Your Experience', 3, '<p>Hello {Recipient_Name},</p><p>Thank you for offering to write a review about your most recent experience with <strong>{Sender_Business_Name}</strong> and <strong>{Sender_Name}</strong>. I hope you had a great experience and are satisfied with the service I provided. Your feedback is very valuable and I appreciate you taking the time to rate your experience.</p><p>{CLICK_HERE_to_rate_your_experience}</p><p>Sincerely,</p></p>{Sender_Name}<br><strong>Email:</strong> {Sender_Email}<br><strong>Phone:</strong> {Sender_Phone}</p>', 7, 'Reminder Mail: Please Rate Your Experience', '<p>Hello {Recipient_Name},</p><p>Thank you for offering to write a review about your most recent experience with <strong>{Sender_Business_Name}</strong> and <strong>{Sender_Name}</strong>. I hope you had a great experience and are satisfied with the service I provided. Your feedback is very valuable and I appreciate you taking the time to rate your experience.</p><p>{CLICK_HERE_to_rate_your_experience}</p><p>Sincerely,</p></p>{Sender_Name}<br><strong>Email:</strong> {Sender_Email}<br><strong>Phone:</strong> {Sender_Phone}</p>', 'Hello {Recipient_Name},\n\nThank you for offering to write a review about your most recent experience with {Sender_Business_Name} and {Sender_Name}. Your feedback is very valuable and I appreciate you taking the time to rate your experience.\n\nClick link below to rate your experience\n\n{CLICK_HERE_to_rate_your_experience}', '2018-04-08 02:51:04', '2018-04-08 02:51:04'),
(13, 324, 'Please Rate Your Experience', '<p>Hello {Recipient_Name},</p><p>Thank you for offering to write a review about your most recent experience with <strong>{Sender_Business_Name}</strong> and <strong>{Sender_Name}</strong>. I hope you had a great experience and are satisfied with the service I provided. Your feedback is very valuable and I appreciate you taking the time to rate your experience.</p><p>{CLICK_HERE_to_rate_your_experience}</p><p>Sincerely,</p></p>{Sender_Name}<br><strong>Email:</strong> {Sender_Email}<br><strong>Phone:</strong> {Sender_Phone}</p>', 'Reminder Mail: Please Rate Your Experience', 3, '<p>Hello {Recipient_Name},</p><p>Thank you for offering to write a review about your most recent experience with <strong>{Sender_Business_Name}</strong> and <strong>{Sender_Name}</strong>. I hope you had a great experience and are satisfied with the service I provided. Your feedback is very valuable and I appreciate you taking the time to rate your experience.</p><p>{CLICK_HERE_to_rate_your_experience}</p><p>Sincerely,</p></p>{Sender_Name}<br><strong>Email:</strong> {Sender_Email}<br><strong>Phone:</strong> {Sender_Phone}</p>', 7, 'Reminder Mail: Please Rate Your Experience', '<p>Hello {Recipient_Name},</p><p>Thank you for offering to write a review about your most recent experience with <strong>{Sender_Business_Name}</strong> and <strong>{Sender_Name}</strong>. I hope you had a great experience and are satisfied with the service I provided. Your feedback is very valuable and I appreciate you taking the time to rate your experience.</p><p>{CLICK_HERE_to_rate_your_experience}</p><p>Sincerely,</p></p>{Sender_Name}<br><strong>Email:</strong> {Sender_Email}<br><strong>Phone:</strong> {Sender_Phone}</p>', 'Hello {Recipient_Name},\n\nThank you for offering to write a review about your most recent experience with {Sender_Business_Name} and {Sender_Name}. Your feedback is very valuable and I appreciate you taking the time to rate your experience.\n\nClick link below to rate your experience\n\n{CLICK_HERE_to_rate_your_experience}', '2018-04-08 03:46:49', '2018-04-08 03:46:49'),
(14, 325, 'Please Rate Your Experience', '<p>Hello {Recipient_Name},</p><p>Thank you for offering to write a review about your most recent experience with <strong>{Sender_Business_Name}</strong> and <strong>{Sender_Name}</strong>. I hope you had a great experience and are satisfied with the service I provided. Your feedback is very valuable and I appreciate you taking the time to rate your experience.</p><p>{CLICK_HERE_to_rate_your_experience}</p><p>Sincerely,</p></p>{Sender_Name}<br><strong>Email:</strong> {Sender_Email}<br><strong>Phone:</strong> {Sender_Phone}</p>', 'Reminder Mail: Please Rate Your Experience', 3, '<p>Hello {Recipient_Name},</p><p>Thank you for offering to write a review about your most recent experience with <strong>{Sender_Business_Name}</strong> and <strong>{Sender_Name}</strong>. I hope you had a great experience and are satisfied with the service I provided. Your feedback is very valuable and I appreciate you taking the time to rate your experience.</p><p>{CLICK_HERE_to_rate_your_experience}</p><p>Sincerely,</p></p>{Sender_Name}<br><strong>Email:</strong> {Sender_Email}<br><strong>Phone:</strong> {Sender_Phone}</p>', 7, 'Reminder Mail: Please Rate Your Experience', '<p>Hello {Recipient_Name},</p><p>Thank you for offering to write a review about your most recent experience with <strong>{Sender_Business_Name}</strong> and <strong>{Sender_Name}</strong>. I hope you had a great experience and are satisfied with the service I provided. Your feedback is very valuable and I appreciate you taking the time to rate your experience.</p><p>{CLICK_HERE_to_rate_your_experience}</p><p>Sincerely,</p></p>{Sender_Name}<br><strong>Email:</strong> {Sender_Email}<br><strong>Phone:</strong> {Sender_Phone}</p>', 'Hello {Recipient_Name},\n\nThank you for offering to write a review about your most recent experience with {Sender_Business_Name} and {Sender_Name}. Your feedback is very valuable and I appreciate you taking the time to rate your experience.\n\nClick link below to rate your experience\n\n{CLICK_HERE_to_rate_your_experience}', '2018-04-08 03:50:13', '2018-04-08 03:50:13'),
(15, 326, 'Please Rate Your Experience', '<p>Hello {Recipient_Name},</p><p>Thank you for offering to write a review about your most recent experience with <strong>{Sender_Business_Name}</strong> and <strong>{Sender_Name}</strong>. I hope you had a great experience and are satisfied with the service I provided. Your feedback is very valuable and I appreciate you taking the time to rate your experience.</p><p>{CLICK_HERE_to_rate_your_experience}</p><p>Sincerely,</p></p>{Sender_Name}<br><strong>Email:</strong> {Sender_Email}<br><strong>Phone:</strong> {Sender_Phone}</p>', 'Reminder Mail: Please Rate Your Experience', 3, '<p>Hello {Recipient_Name},</p><p>Thank you for offering to write a review about your most recent experience with <strong>{Sender_Business_Name}</strong> and <strong>{Sender_Name}</strong>. I hope you had a great experience and are satisfied with the service I provided. Your feedback is very valuable and I appreciate you taking the time to rate your experience.</p><p>{CLICK_HERE_to_rate_your_experience}</p><p>Sincerely,</p></p>{Sender_Name}<br><strong>Email:</strong> {Sender_Email}<br><strong>Phone:</strong> {Sender_Phone}</p>', 7, 'Reminder Mail: Please Rate Your Experience', '<p>Hello {Recipient_Name},</p><p>Thank you for offering to write a review about your most recent experience with <strong>{Sender_Business_Name}</strong> and <strong>{Sender_Name}</strong>. I hope you had a great experience and are satisfied with the service I provided. Your feedback is very valuable and I appreciate you taking the time to rate your experience.</p><p>{CLICK_HERE_to_rate_your_experience}</p><p>Sincerely,</p></p>{Sender_Name}<br><strong>Email:</strong> {Sender_Email}<br><strong>Phone:</strong> {Sender_Phone}</p>', 'Hello {Recipient_Name},\n\nThank you for offering to write a review about your most recent experience with {Sender_Business_Name} and {Sender_Name}. Your feedback is very valuable and I appreciate you taking the time to rate your experience.\n\nClick link below to rate your experience\n\n{CLICK_HERE_to_rate_your_experience}', '2018-04-08 03:52:54', '2018-04-08 03:52:54'),
(16, 328, 'Please Rate Your Experience', '<p>Hello {Recipient_Name},</p><p>Thank you for offering to write a review about your most recent experience with <strong>{Sender_Business_Name}</strong> and <strong>{Sender_Name}</strong>. I hope you had a great experience and are satisfied with the service I provided. Your feedback is very valuable and I appreciate you taking the time to rate your experience.</p><p>{CLICK_HERE_to_rate_your_experience}</p><p>Sincerely,</p></p>{Sender_Name}<br><strong>Email:</strong> {Sender_Email}<br><strong>Phone:</strong> {Sender_Phone}</p>', 'Reminder Mail: Please Rate Your Experience', 3, '<p>Hello {Recipient_Name},</p><p>Thank you for offering to write a review about your most recent experience with <strong>{Sender_Business_Name}</strong> and <strong>{Sender_Name}</strong>. I hope you had a great experience and are satisfied with the service I provided. Your feedback is very valuable and I appreciate you taking the time to rate your experience.</p><p>{CLICK_HERE_to_rate_your_experience}</p><p>Sincerely,</p></p>{Sender_Name}<br><strong>Email:</strong> {Sender_Email}<br><strong>Phone:</strong> {Sender_Phone}</p>', 7, 'Reminder Mail: Please Rate Your Experience', '<p>Hello {Recipient_Name},</p><p>Thank you for offering to write a review about your most recent experience with <strong>{Sender_Business_Name}</strong> and <strong>{Sender_Name}</strong>. I hope you had a great experience and are satisfied with the service I provided. Your feedback is very valuable and I appreciate you taking the time to rate your experience.</p><p>{CLICK_HERE_to_rate_your_experience}</p><p>Sincerely,</p></p>{Sender_Name}<br><strong>Email:</strong> {Sender_Email}<br><strong>Phone:</strong> {Sender_Phone}</p>', 'Hello {Recipient_Name},\n\nThank you for offering to write a review about your most recent experience with {Sender_Business_Name} and {Sender_Name}. Your feedback is very valuable and I appreciate you taking the time to rate your experience.\n\nClick link below to rate your experience\n\n{CLICK_HERE_to_rate_your_experience}', '2018-04-08 03:55:11', '2018-04-08 03:55:11'),
(17, 329, 'Please Rate Your Experience', '<p>Hello {Recipient_Name},</p><p>Thank you for offering to write a review about your most recent experience with <strong>{Sender_Business_Name}</strong> and <strong>{Sender_Name}</strong>. I hope you had a great experience and are satisfied with the service I provided. Your feedback is very valuable and I appreciate you taking the time to rate your experience.</p><p>{CLICK_HERE_to_rate_your_experience}</p><p>Sincerely,</p></p>{Sender_Name}<br><strong>Email:</strong> {Sender_Email}<br><strong>Phone:</strong> {Sender_Phone}</p>', 'Reminder Mail: Please Rate Your Experience', 3, '<p>Hello {Recipient_Name},</p><p>Thank you for offering to write a review about your most recent experience with <strong>{Sender_Business_Name}</strong> and <strong>{Sender_Name}</strong>. I hope you had a great experience and are satisfied with the service I provided. Your feedback is very valuable and I appreciate you taking the time to rate your experience.</p><p>{CLICK_HERE_to_rate_your_experience}</p><p>Sincerely,</p></p>{Sender_Name}<br><strong>Email:</strong> {Sender_Email}<br><strong>Phone:</strong> {Sender_Phone}</p>', 7, 'Reminder Mail: Please Rate Your Experience', '<p>Hello {Recipient_Name},</p><p>Thank you for offering to write a review about your most recent experience with <strong>{Sender_Business_Name}</strong> and <strong>{Sender_Name}</strong>. I hope you had a great experience and are satisfied with the service I provided. Your feedback is very valuable and I appreciate you taking the time to rate your experience.</p><p>{CLICK_HERE_to_rate_your_experience}</p><p>Sincerely,</p></p>{Sender_Name}<br><strong>Email:</strong> {Sender_Email}<br><strong>Phone:</strong> {Sender_Phone}</p>', 'Hello {Recipient_Name},\n\nThank you for offering to write a review about your most recent experience with {Sender_Business_Name} and {Sender_Name}. Your feedback is very valuable and I appreciate you taking the time to rate your experience.\n\nClick link below to rate your experience\n\n{CLICK_HERE_to_rate_your_experience}', '2018-04-08 03:57:34', '2018-04-08 03:57:34'),
(18, 330, 'Please Rate Your Experience', '<p>Hello {Recipient_Name},</p><p>Thank you for offering to write a review about your most recent experience with <strong>{Sender_Business_Name}</strong> and <strong>{Sender_Name}</strong>. I hope you had a great experience and are satisfied with the service I provided. Your feedback is very valuable and I appreciate you taking the time to rate your experience.</p><p>{CLICK_HERE_to_rate_your_experience}</p><p>Sincerely,</p></p>{Sender_Name}<br><strong>Email:</strong> {Sender_Email}<br><strong>Phone:</strong> {Sender_Phone}</p>', 'Reminder Mail: Please Rate Your Experience', 3, '<p>Hello {Recipient_Name},</p><p>Thank you for offering to write a review about your most recent experience with <strong>{Sender_Business_Name}</strong> and <strong>{Sender_Name}</strong>. I hope you had a great experience and are satisfied with the service I provided. Your feedback is very valuable and I appreciate you taking the time to rate your experience.</p><p>{CLICK_HERE_to_rate_your_experience}</p><p>Sincerely,</p></p>{Sender_Name}<br><strong>Email:</strong> {Sender_Email}<br><strong>Phone:</strong> {Sender_Phone}</p>', 7, 'Reminder Mail: Please Rate Your Experience', '<p>Hello {Recipient_Name},</p><p>Thank you for offering to write a review about your most recent experience with <strong>{Sender_Business_Name}</strong> and <strong>{Sender_Name}</strong>. I hope you had a great experience and are satisfied with the service I provided. Your feedback is very valuable and I appreciate you taking the time to rate your experience.</p><p>{CLICK_HERE_to_rate_your_experience}</p><p>Sincerely,</p></p>{Sender_Name}<br><strong>Email:</strong> {Sender_Email}<br><strong>Phone:</strong> {Sender_Phone}</p>', 'Hello {Recipient_Name},\n\nThank you for offering to write a review about your most recent experience with {Sender_Business_Name} and {Sender_Name}. Your feedback is very valuable and I appreciate you taking the time to rate your experience.\n\nClick link below to rate your experience\n\n{CLICK_HERE_to_rate_your_experience}', '2018-04-08 04:02:20', '2018-04-08 04:02:20'),
(19, 331, 'Please Rate Your Experience', '<p>Hello {Recipient_Name},</p><p>Thank you for offering to write a review about your most recent experience with <strong>{Sender_Business_Name}</strong> and <strong>{Sender_Name}</strong>. I hope you had a great experience and are satisfied with the service I provided. Your feedback is very valuable and I appreciate you taking the time to rate your experience.</p><p>{CLICK_HERE_to_rate_your_experience}</p><p>Sincerely,</p></p>{Sender_Name}<br><strong>Email:</strong> {Sender_Email}<br><strong>Phone:</strong> {Sender_Phone}</p>', 'Reminder Mail: Please Rate Your Experience', 3, '<p>Hello {Recipient_Name},</p><p>Thank you for offering to write a review about your most recent experience with <strong>{Sender_Business_Name}</strong> and <strong>{Sender_Name}</strong>. I hope you had a great experience and are satisfied with the service I provided. Your feedback is very valuable and I appreciate you taking the time to rate your experience.</p><p>{CLICK_HERE_to_rate_your_experience}</p><p>Sincerely,</p></p>{Sender_Name}<br><strong>Email:</strong> {Sender_Email}<br><strong>Phone:</strong> {Sender_Phone}</p>', 7, 'Reminder Mail: Please Rate Your Experience', '<p>Hello {Recipient_Name},</p><p>Thank you for offering to write a review about your most recent experience with <strong>{Sender_Business_Name}</strong> and <strong>{Sender_Name}</strong>. I hope you had a great experience and are satisfied with the service I provided. Your feedback is very valuable and I appreciate you taking the time to rate your experience.</p><p>{CLICK_HERE_to_rate_your_experience}</p><p>Sincerely,</p></p>{Sender_Name}<br><strong>Email:</strong> {Sender_Email}<br><strong>Phone:</strong> {Sender_Phone}</p>', 'Hello {Recipient_Name},\n\nThank you for offering to write a review about your most recent experience with {Sender_Business_Name} and {Sender_Name}. Your feedback is very valuable and I appreciate you taking the time to rate your experience.\n\nClick link below to rate your experience\n\n{CLICK_HERE_to_rate_your_experience}', '2018-04-08 04:47:22', '2018-04-08 04:47:22'),
(20, 332, 'Please Rate Your Experience', '<p>Hello {Recipient_Name},</p><p>Thank you for offering to write a review about your most recent experience with <strong>{Sender_Business_Name}</strong> and <strong>{Sender_Name}</strong>. I hope you had a great experience and are satisfied with the service I provided. Your feedback is very valuable and I appreciate you taking the time to rate your experience.</p><p>{CLICK_HERE_to_rate_your_experience}</p><p>Sincerely,</p></p>{Sender_Name}<br><strong>Email:</strong> {Sender_Email}<br><strong>Phone:</strong> {Sender_Phone}</p>', 'Reminder Mail: Please Rate Your Experience', 3, '<p>Hello {Recipient_Name},</p><p>Thank you for offering to write a review about your most recent experience with <strong>{Sender_Business_Name}</strong> and <strong>{Sender_Name}</strong>. I hope you had a great experience and are satisfied with the service I provided. Your feedback is very valuable and I appreciate you taking the time to rate your experience.</p><p>{CLICK_HERE_to_rate_your_experience}</p><p>Sincerely,</p></p>{Sender_Name}<br><strong>Email:</strong> {Sender_Email}<br><strong>Phone:</strong> {Sender_Phone}</p>', 7, 'Reminder Mail: Please Rate Your Experience', '<p>Hello {Recipient_Name},</p><p>Thank you for offering to write a review about your most recent experience with <strong>{Sender_Business_Name}</strong> and <strong>{Sender_Name}</strong>. I hope you had a great experience and are satisfied with the service I provided. Your feedback is very valuable and I appreciate you taking the time to rate your experience.</p><p>{CLICK_HERE_to_rate_your_experience}</p><p>Sincerely,</p></p>{Sender_Name}<br><strong>Email:</strong> {Sender_Email}<br><strong>Phone:</strong> {Sender_Phone}</p>', 'Hello {Recipient_Name},\n\nThank you for offering to write a review about your most recent experience with {Sender_Business_Name} and {Sender_Name}. Your feedback is very valuable and I appreciate you taking the time to rate your experience.\n\nClick link below to rate your experience\n\n{CLICK_HERE_to_rate_your_experience}', '2018-04-08 05:41:31', '2018-04-08 05:41:31'),
(21, 333, 'Please Rate Your Experience', '<p>Hello {Recipient_Name},</p><p>Thank you for offering to write a review about your most recent experience with <strong>{Sender_Business_Name}</strong> and <strong>{Sender_Name}</strong>. I hope you had a great experience and are satisfied with the service I provided. Your feedback is very valuable and I appreciate you taking the time to rate your experience.</p><p>{CLICK_HERE_to_rate_your_experience}</p><p>Sincerely,</p></p>{Sender_Name}<br><strong>Email:</strong> {Sender_Email}<br><strong>Phone:</strong> {Sender_Phone}</p>', 'Reminder Mail: Please Rate Your Experience', 3, '<p>Hello {Recipient_Name},</p><p>Thank you for offering to write a review about your most recent experience with <strong>{Sender_Business_Name}</strong> and <strong>{Sender_Name}</strong>. I hope you had a great experience and are satisfied with the service I provided. Your feedback is very valuable and I appreciate you taking the time to rate your experience.</p><p>{CLICK_HERE_to_rate_your_experience}</p><p>Sincerely,</p></p>{Sender_Name}<br><strong>Email:</strong> {Sender_Email}<br><strong>Phone:</strong> {Sender_Phone}</p>', 7, 'Reminder Mail: Please Rate Your Experience', '<p>Hello {Recipient_Name},</p><p>Thank you for offering to write a review about your most recent experience with <strong>{Sender_Business_Name}</strong> and <strong>{Sender_Name}</strong>. I hope you had a great experience and are satisfied with the service I provided. Your feedback is very valuable and I appreciate you taking the time to rate your experience.</p><p>{CLICK_HERE_to_rate_your_experience}</p><p>Sincerely,</p></p>{Sender_Name}<br><strong>Email:</strong> {Sender_Email}<br><strong>Phone:</strong> {Sender_Phone}</p>', 'Hello {Recipient_Name},\n\nThank you for offering to write a review about your most recent experience with {Sender_Business_Name} and {Sender_Name}. Your feedback is very valuable and I appreciate you taking the time to rate your experience.\n\nClick link below to rate your experience\n\n{CLICK_HERE_to_rate_your_experience}', '2018-04-08 05:46:30', '2018-04-08 05:46:30'),
(22, 334, 'Please Rate Your Experience', '<p>Hello {Recipient_Name},</p><p>Thank you for offering to write a review about your most recent experience with <strong>{Sender_Business_Name}</strong> and <strong>{Sender_Name}</strong>. I hope you had a great experience and are satisfied with the service I provided. Your feedback is very valuable and I appreciate you taking the time to rate your experience.</p><p>{CLICK_HERE_to_rate_your_experience}</p><p>Sincerely,</p></p>{Sender_Name}<br><strong>Email:</strong> {Sender_Email}<br><strong>Phone:</strong> {Sender_Phone}</p>', 'Reminder Mail: Please Rate Your Experience', 3, '<p>Hello {Recipient_Name},</p><p>Thank you for offering to write a review about your most recent experience with <strong>{Sender_Business_Name}</strong> and <strong>{Sender_Name}</strong>. I hope you had a great experience and are satisfied with the service I provided. Your feedback is very valuable and I appreciate you taking the time to rate your experience.</p><p>{CLICK_HERE_to_rate_your_experience}</p><p>Sincerely,</p></p>{Sender_Name}<br><strong>Email:</strong> {Sender_Email}<br><strong>Phone:</strong> {Sender_Phone}</p>', 7, 'Reminder Mail: Please Rate Your Experience', '<p>Hello {Recipient_Name},</p><p>Thank you for offering to write a review about your most recent experience with <strong>{Sender_Business_Name}</strong> and <strong>{Sender_Name}</strong>. I hope you had a great experience and are satisfied with the service I provided. Your feedback is very valuable and I appreciate you taking the time to rate your experience.</p><p>{CLICK_HERE_to_rate_your_experience}</p><p>Sincerely,</p></p>{Sender_Name}<br><strong>Email:</strong> {Sender_Email}<br><strong>Phone:</strong> {Sender_Phone}</p>', 'Hello {Recipient_Name},\n\nThank you for offering to write a review about your most recent experience with {Sender_Business_Name} and {Sender_Name}. Your feedback is very valuable and I appreciate you taking the time to rate your experience.\n\nClick link below to rate your experience\n\n{CLICK_HERE_to_rate_your_experience}', '2018-04-08 05:47:53', '2018-04-08 05:47:53'),
(23, 335, 'Please Rate Your Experience', '<p>Hello {Recipient_Name},</p><p>Thank you for offering to write a review about your most recent experience with <strong>{Sender_Business_Name}</strong> and <strong>{Sender_Name}</strong>. I hope you had a great experience and are satisfied with the service I provided. Your feedback is very valuable and I appreciate you taking the time to rate your experience.</p><p>{CLICK_HERE_to_rate_your_experience}</p><p>Sincerely,</p></p>{Sender_Name}<br><strong>Email:</strong> {Sender_Email}<br><strong>Phone:</strong> {Sender_Phone}</p>', 'Reminder Mail: Please Rate Your Experience', 3, '<p>Hello {Recipient_Name},</p><p>Thank you for offering to write a review about your most recent experience with <strong>{Sender_Business_Name}</strong> and <strong>{Sender_Name}</strong>. I hope you had a great experience and are satisfied with the service I provided. Your feedback is very valuable and I appreciate you taking the time to rate your experience.</p><p>{CLICK_HERE_to_rate_your_experience}</p><p>Sincerely,</p></p>{Sender_Name}<br><strong>Email:</strong> {Sender_Email}<br><strong>Phone:</strong> {Sender_Phone}</p>', 7, 'Reminder Mail: Please Rate Your Experience', '<p>Hello {Recipient_Name},</p><p>Thank you for offering to write a review about your most recent experience with <strong>{Sender_Business_Name}</strong> and <strong>{Sender_Name}</strong>. I hope you had a great experience and are satisfied with the service I provided. Your feedback is very valuable and I appreciate you taking the time to rate your experience.</p><p>{CLICK_HERE_to_rate_your_experience}</p><p>Sincerely,</p></p>{Sender_Name}<br><strong>Email:</strong> {Sender_Email}<br><strong>Phone:</strong> {Sender_Phone}</p>', 'Hello {Recipient_Name},\n\nThank you for offering to write a review about your most recent experience with {Sender_Business_Name} and {Sender_Name}. Your feedback is very valuable and I appreciate you taking the time to rate your experience.\n\nClick link below to rate your experience\n\n{CLICK_HERE_to_rate_your_experience}', '2018-04-08 05:49:21', '2018-04-08 05:49:21');

-- --------------------------------------------------------

--
-- Table structure for table `facebook`
--

CREATE TABLE `facebook` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `page_id` varchar(50) DEFAULT NULL,
  `access_token` text,
  `page_name` varchar(500) DEFAULT NULL,
  `avg_rating` decimal(3,2) DEFAULT NULL,
  `rating_count` int(11) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `address` varchar(500) DEFAULT NULL,
  `image_url` varchar(500) DEFAULT NULL,
  `page_url` varchar(500) DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `facebook`
--

INSERT INTO `facebook` (`id`, `user_id`, `page_id`, `access_token`, `page_name`, `avg_rating`, `rating_count`, `phone`, `address`, `image_url`, `page_url`, `created`, `modified`) VALUES
(1, 11, '1921248051491991', 'EAAIFNKJUyC8BAMdtlOteWFnud3ZCnwH0Qk3Bn2OXIjBkF73PZCqGZBR4i9DvWZA1v5yTiTSthlZCPvh9dusIiYMlSZBOsbOxBoLIRfidvtJPvN39onZBkgEveWle1stUnqa9q6dVL7ovIM6PFPXvjbCuUOxtZAP8C223CKMH9LbCLQZDZD', 'Sprint5 Test Demo', '4.50', 2, NULL, NULL, NULL, 'https://www.facebook.com/pg/Sprint5+Test+Demo-1921248051491991/reviews/', '0000-00-00 00:00:00', '2017-12-04 16:46:01'),
(2, 170, '158396570987231', 'EAAEKAl6sHi0BALBZAizFRaZBafLv2I52r6eRnyB6GESf3QwxUoCgWdirBvNL3skZC9Rz2nFEzN6SA620itRpRKsj82nJSE5P5zM7FAkufutKlMaDGuHkvkaZCOwI8CXRZAhF8EQ3j5h90aOn9l2oEUkiM0jDj9ZCIuvjR2bXnRZBAZDZD', 'Partners Real Estate - Eagle River, AK', NULL, NULL, NULL, NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/c19.0.50.50/p50x50/12342596_508299629330255_7544639525736257397_n.jpg?oh=c84e33e3baa7c4e874b929233af151b8&oe=5B125CC2', 'https://www.facebook.com/pg/Partners+Real+Estate+-+Eagle+River%2C+AK-158396570987231/reviews/', '0000-00-00 00:00:00', '2018-02-14 02:27:16'),
(3, 172, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 177, '1921248051491991', 'EAAIFNKJUyC8BALFCY4xAVKRCVTWE9M0LfnSaQMYauW5ERsZA94B7L2Ami4alM6twX5jrZCWPii2PuPo0spvalgGVZB7aG1hdziayUTypaG6c2Mwldr1UdfsW7cKkPVVa9XDjZA4FDLTYVMNlREQq7WChT1qJfFN3zRbYqGYpdEscAza4oFCL', 'Sprint5 Test Demo', '4.50', 2, NULL, NULL, NULL, 'https://www.facebook.com/pg/Sprint5+Test+Demo-1921248051491991/reviews/', '2017-12-02 21:24:15', '2017-12-04 16:45:16'),
(5, 179, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-02 22:00:08', '2017-12-02 22:00:08'),
(6, 181, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-04 19:00:57', '2017-12-04 19:00:57'),
(7, 182, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-04 23:01:48', '2017-12-04 23:01:48'),
(8, 184, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-05 00:48:30', '2017-12-05 00:48:30'),
(9, 185, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-05 01:32:32', '2017-12-05 01:32:32'),
(10, 186, '666741620153385', 'EAAIFNKJUyC8BAEEXDE6x418x8GQscgtsU2p2aDxXlmOtZCyQq4HS5eau9WrjTKZBK9Cf0j1xsGQa4Cy8tZCPtWlotLl1MXllhPdViCOIcINZCgJU406DwxDkUIFdeCvV6SvKu4hEM7ZBPRepCiGYJvyyqNvPDQee6X16ZC8isQFEmqhiqDzt5Y', 'Merchant 1', '4.30', 3, '9876567543', '2001 North Lamar Street, Dallas, Texas 75202', 'https://scontent.xx.fbcdn.net/v/t1.0-1/p50x50/19702369_766729546821258_7822615421753989751_n.jpg?oh=e1cadd535386252b862900c42b8de0ed&oe=5AC896E1', 'https://www.facebook.com/pg/Merchant+1-666741620153385/reviews/', '2017-12-06 13:30:58', '2017-12-06 13:48:53'),
(11, 187, '666741620153385', 'EAAIFNKJUyC8BALBIRxiNZAAP47SzWovlKDJvmDYjifPhfLzUbo7ZCjW4A43nKwDXRJOhxvjeot7bC91HhuP8ew69yQgW2eqA8sKxNnkWwdV1UU933zHobgmmAJ8ZCxqI0MfIa93gecgydZAkZAoa1c25deBi5ZABnMivatI6fnNAZDZD', 'Merchant 1', '4.30', 3, '9876567543', '2001 North Lamar Street, Dallas, Texas 75202', 'https://scontent.xx.fbcdn.net/v/t1.0-1/p50x50/19702369_766729546821258_7822615421753989751_n.jpg?oh=e1cadd535386252b862900c42b8de0ed&oe=5AC896E1', 'https://www.facebook.com/pg/Merchant+1-666741620153385/reviews/', '2017-12-06 16:08:40', '2017-12-06 16:22:18'),
(12, 188, '666741620153385', 'EAAIFNKJUyC8BAAeqXK6vOl4e6VhYNAKn6wVvkaYY5cRDrbsm6dIcNReQgKjZCw9bNEr70e36AJL2BRi1exiIaGla5zw1rEnFmRVUv6ZA1BIbvH9UjbdD949obvJMhmgzvkgvBZBoZAZCLx4lDEHNECqMnS1VfvyVe3UuN55I70QZDZD', 'Merchant 1', '4.30', 3, '9876567543', '2001 North Lamar Street, Dallas, Texas 75202', 'https://scontent.xx.fbcdn.net/v/t1.0-1/p50x50/19702369_766729546821258_7822615421753989751_n.jpg?oh=e1cadd535386252b862900c42b8de0ed&oe=5AC896E1', 'https://www.facebook.com/pg/Merchant+1-666741620153385/reviews/', '2017-12-06 17:31:54', '2017-12-06 17:49:39'),
(13, 189, '666741620153385', 'EAAIFNKJUyC8BAMRd5Ohhqh1rPfuQ5Qg5KSG8MhVNL7qM2ULiZAcvl0B5OdjLrqt9WWnOaYdeqPUIZC8Kl69OsUfUKrsJOWAfM1SceaOuIjDxUV1Xz9Vaxm2ZCklPZC5Ngan4wQlQUec6aiWcZCb1Bf3zqOZCDXZC7oR4bpVOLS3FgZDZD', 'Merchant 1', '4.30', 3, '9876567543', '2001 North Lamar Street, Dallas, Texas 75202', 'https://scontent.xx.fbcdn.net/v/t1.0-1/p50x50/19702369_766729546821258_7822615421753989751_n.jpg?oh=e1cadd535386252b862900c42b8de0ed&oe=5AC896E1', 'https://www.facebook.com/pg/Merchant+1-666741620153385/reviews/', '2017-12-06 17:56:29', '2017-12-06 17:57:35'),
(14, 190, '666741620153385', 'EAAIFNKJUyC8BAAjoNFyuQscbnPsAw6J4o35wrGIOkZBEkluKWDu10rHgyabuvPvPZAFvAJl7H9OeZCrspE762xASsPAckMIhHBGU55vAPslz99RugPnZARlZBJ2FZCGzkmV9nqgYzFmEzh9pDCz8mTCRcZAiYpmQEczglegfpLlUUCZAmZAHFaaVr', 'Merchant 1', '4.30', 3, '9876567543', '2001 North Lamar Street, Dallas, Texas 75202', 'https://scontent.xx.fbcdn.net/v/t1.0-1/p50x50/19702369_766729546821258_7822615421753989751_n.jpg?oh=e1cadd535386252b862900c42b8de0ed&oe=5AC896E1', 'https://www.facebook.com/pg/Merchant+1-666741620153385/reviews/', '2017-12-06 18:34:49', '2017-12-06 18:38:46'),
(15, 191, '1921248051491991', 'EAAIFNKJUyC8BANy0SDZC06t3R9QZBZAGjc1GBwEkLoWYOOZAotTJN2ph2GfnZBBPqLsZCRfKA0wTx3p1yHiyQkp5ZAdVZAe08Dg8ZAXZAwFZBZC3L9RgTpT2JB4Prg1Mroy4d5OF76uOOLV7PGh9E9934DwhUVVZC2papQesY9rWL3uCXIQZDZD', 'Sprint5 Test Demo', '4.50', 2, '2345697874', 'A Block, Noida, India 201301', 'https://scontent.xx.fbcdn.net/v/t1.0-1/p50x50/18156875_1921248114825318_6448515011320868729_n.png?oh=e2a174dd78c018ad67670b8f7c1c55e6&oe=5A93D7BD', 'https://www.facebook.com/pg/Sprint5+Test+Demo-1921248051491991/reviews/', '2017-12-06 18:39:39', '2017-12-06 18:41:28'),
(16, 192, '666741620153385', 'EAAIFNKJUyC8BALsG6sKSVZBuWaR4DgIQi4bdgUcoxFb3uqg9sDIIJ6PAfGooZB0lXFcHETHcJZBXOToGLZAjsjR57AYr8YBgvaUkp35DWDXOf1qZA7UsQdiKAULs9Gi4dBGS25kZA79cReCfXGpoZApwhTSz5wctEhoeswZC0IQSB3BJZCBgXt0CI', 'Merchant 1', '4.30', 3, '9876567543', '2001 North Lamar Street, Dallas, Texas 75202', 'https://scontent.xx.fbcdn.net/v/t1.0-1/p50x50/19702369_766729546821258_7822615421753989751_n.jpg?oh=e1cadd535386252b862900c42b8de0ed&oe=5AC896E1', 'https://www.facebook.com/pg/Merchant+1-666741620153385/reviews/', '2017-12-06 18:42:39', '2017-12-06 18:48:03'),
(17, 193, '666741620153385', 'EAAIFNKJUyC8BAI8bZCbgpfKaNehCaS9aJPs9kGUbAGC8vEKHEOAYxMN1jrhkieXDFSDVbuKLGZA6JUFjvWh747LIp5FFX1ZAKiyxGAhsq3t85QE5704quiCAN9ak7xZBFM0qN653c4yjq1x2qJbwhdJxQ8X9Q1Jrd5GNIZApAFw6r7yvjXGOX', 'Merchant 1', '4.30', 3, '9876567543', '2001 North Lamar Street, Dallas, Texas 75202', 'https://scontent.xx.fbcdn.net/v/t1.0-1/p50x50/19702369_766729546821258_7822615421753989751_n.jpg?oh=e1cadd535386252b862900c42b8de0ed&oe=5AC896E1', 'https://www.facebook.com/pg/Merchant+1-666741620153385/reviews/', '2017-12-06 18:49:37', '2017-12-06 18:50:13'),
(18, 194, '666741620153385', 'EAAIFNKJUyC8BAAYt9cWmUriBmT84IsM8ISjyzmEgWOBYZAh35qFlrdZCygefyQs41uaylrqqJ9xE8lyLiKrpPvPZCBR68RZAo1ReCZAkIujK1tTkRK0FTsO0c3LhheKGh8vZAWHTzG4cMeuDayb6no2KY9QygTuuExeJZCYbFLfjPPLG0DlgJte', 'Merchant 1', '4.30', 3, '9876567543', '2001 North Lamar Street, Dallas, Texas 75202', 'https://scontent.xx.fbcdn.net/v/t1.0-1/p50x50/19702369_766729546821258_7822615421753989751_n.jpg?oh=e1cadd535386252b862900c42b8de0ed&oe=5AC896E1', 'https://www.facebook.com/pg/Merchant+1-666741620153385/reviews/', '2017-12-06 20:20:18', '2017-12-06 20:30:35'),
(19, 195, '666741620153385', 'EAAIFNKJUyC8BAPdkfdOUj91ZB5gfELAgHKKXa9cEUTP5947cUphWTX1hjED7ZAZA8ZAnEZBHfYReYaMdn5sZBs64HsUAxbgmZBNvBWlB62Lqkz3dgZBslQru6LUe7OUF35beQN4DcZCqUkQFND83ZAQZAp8enCo7UdyGKPAnvRP56sJwvOpM6SBfFf3', 'Merchant 1', '4.30', 3, '9876567543', '2001 North Lamar Street, Dallas, Texas 75202', 'https://scontent.xx.fbcdn.net/v/t1.0-1/p50x50/19702369_766729546821258_7822615421753989751_n.jpg?oh=e1cadd535386252b862900c42b8de0ed&oe=5AC896E1', 'https://www.facebook.com/pg/Merchant+1-666741620153385/reviews/', '2017-12-06 20:35:00', '2017-12-06 20:48:51'),
(20, 196, '666741620153385', 'EAAIFNKJUyC8BADWD5NxcUBzl2cPWgfv6r8O8wmNrvO6mH0titeKckeEfERgYCLKSVkqBCHX8wb5FBo3rIZBYa5QVLbdu3OVhEAlmreAxwD7R6oIv54X3vlgxcGCHhZCdxYi2DNTyZCFouGuEUii49VidqIZB3UHcmTRpAiXlqZCUEfvjxYtjY', 'Merchant 1', '4.30', 3, '9876567543', '2001 North Lamar Street, Dallas, Texas 75202', 'https://scontent.xx.fbcdn.net/v/t1.0-1/p50x50/19702369_766729546821258_7822615421753989751_n.jpg?oh=e1cadd535386252b862900c42b8de0ed&oe=5AC896E1', 'https://www.facebook.com/pg/Merchant+1-666741620153385/reviews/', '2017-12-06 20:49:38', '2017-12-06 20:51:22'),
(21, 197, '666741620153385', 'EAAIFNKJUyC8BAAIeZCY73vfrka2LFM0Bd7pJ0j5IIWhaFYe1AkyvcIUXCKir7rCZBRJdJ35X9U2aBGNexxqNMw3wLUXvqsASH39DgRpzfD5wODDrV1oJVI28CNIQRj1NqoiZAujA35vIZAQaDvRnuLqDtoRIwd3ageQ9mhotlcWnRI089Xnx', 'Merchant 1', '4.30', 3, '9876567543', '2001 North Lamar Street, Dallas, Texas 75202', 'https://scontent.xx.fbcdn.net/v/t1.0-1/p50x50/19702369_766729546821258_7822615421753989751_n.jpg?oh=e1cadd535386252b862900c42b8de0ed&oe=5AC896E1', 'https://www.facebook.com/pg/Merchant+1-666741620153385/reviews/', '2017-12-06 20:54:09', '2017-12-06 21:01:28'),
(22, 198, '666741620153385', 'EAAIFNKJUyC8BAPZCrs76qtt0hEqOpk9faqsUhN6BZAOtomG9KDAB2wst687LPHXFp3LL2rYQhHN8MofsUSf6mhBc6JBYHY7k6J1SaHYFzyw85ZCvpPmA6MQj5jzzCEYH0nDxeVtpnZAoZA0UtwXpLzAHwJhpXIaYtGgPYeMZA7cAZDZD', 'Merchant 1', '4.30', 3, '9876567543', '2001 North Lamar Street, Dallas, Texas 75202', 'https://scontent.xx.fbcdn.net/v/t1.0-1/p50x50/19702369_766729546821258_7822615421753989751_n.jpg?oh=e1cadd535386252b862900c42b8de0ed&oe=5AC896E1', 'https://www.facebook.com/pg/Merchant+1-666741620153385/reviews/', '2017-12-06 21:02:38', '2017-12-06 21:03:08'),
(23, 199, '666741620153385', 'EAAIFNKJUyC8BAL6LXzHJbo8WGQj1yqiLrM8dDyRh0RYgyL4h7XFbYjraZAuBuOwBQZBWkLc3ZCU6SyRMlLWUK4QtfGElazcefKFwMh5q2XEKdAj8LYMqTM05fZCZBzbcNbpnB91iVNMPcP2ImkIuq5kgRh56ofXZBDT4rkDyb9GWOZAoS9ezjKf', 'Merchant 1', '4.30', 3, '9876567543', '2001 North Lamar Street, Dallas, Texas 75202', 'https://scontent.xx.fbcdn.net/v/t1.0-1/p50x50/19702369_766729546821258_7822615421753989751_n.jpg?oh=e1cadd535386252b862900c42b8de0ed&oe=5AC896E1', 'https://www.facebook.com/pg/Merchant+1-666741620153385/reviews/', '2017-12-06 21:13:30', '2017-12-06 21:14:47'),
(24, 200, '666741620153385', 'EAAIFNKJUyC8BAHZCZBjwnXepuctf7nLVVjkdOc33grc3I7oYiZARS1su4vz2EnfVw8zG786wrof9dPQBwGZBMdhrkbeAAOehc9ge7TxQm0fKuU9WrCMgiqpzQdDWXYuJf6ZAXl797bKhjZBEgaBgZAIQwPAJs9cKQnBurOnf3eMMwZDZD', 'Merchant 1', '4.30', 3, '9876567543', '2001 North Lamar Street, Dallas, Texas 75202', 'https://scontent.xx.fbcdn.net/v/t1.0-1/p50x50/19702369_766729546821258_7822615421753989751_n.jpg?oh=e1cadd535386252b862900c42b8de0ed&oe=5AC896E1', 'https://www.facebook.com/pg/Merchant+1-666741620153385/reviews/', '2017-12-06 23:13:58', '2017-12-06 23:15:31'),
(25, 201, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-06 23:59:02', '2017-12-06 23:59:02'),
(26, 202, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-07 18:51:59', '2017-12-07 18:51:59'),
(27, 204, '1921248051491991', 'EAAIFNKJUyC8BAGfu4NLVc1qc76vlVLk4xpEf6dvM8ZAxnhiQm9iR8QsCewVmOJIYNoRLB8yxTrg5h3a86ZC7SQk6Lk16zVcvLHhaQRZBSN5q31LOgMnw5t94VtXZAEYwEJNJ0yz6huNey0uMRKoD6VzdktH2BcBzPrACWB4xQhZAYSkseCorprAydBllgnnKt8czt8GyY7AZDZD', 'Sprint5 Test Demo', '4.70', 3, '2345697874', 'A Block, Noida, India 201301', 'https://scontent.xx.fbcdn.net/v/t1.0-1/p50x50/18156875_1921248114825318_6448515011320868729_n.png?oh=e2a174dd78c018ad67670b8f7c1c55e6&oe=5A93D7BD', 'https://www.facebook.com/pg/Sprint5+Test+Demo-1921248051491991/reviews/', '2017-12-07 19:40:38', '2017-12-07 21:53:45'),
(28, 208, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-07 23:34:06', '2017-12-07 23:34:06'),
(29, 209, '1921248051491991', 'EAAIFNKJUyC8BAAmlT7pHqKSFXaxvPazTtHGez6yZARaEEqBdywOkHroJ7LWtP19NimdzHXNQZCyjNCNjCYuFtSHRDor4YdagcWqXsV6pMX4oWbBTI2T3jeMuQXokTB2NJ5ChapGBjYDnVv4T0pZBVgFcv3fcFGb64yFUK35qXZA1yuZCLI2Ag7aX6f4Jh6IZCzqNyWALGbRwZDZD', 'Sprint5 Test Demo', NULL, NULL, '', '', 'https://scontent.xx.fbcdn.net/v/t1.0-1/p50x50/18156875_1921248114825318_6448515011320868729_n.png?oh=e2a174dd78c018ad67670b8f7c1c55e6&oe=5A93D7BD', 'https://www.facebook.com/pg/Sprint5+Test+Demo-1921248051491991/reviews/', '2017-12-07 23:58:55', '2017-12-08 15:50:31'),
(30, 210, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-08 00:10:37', '2017-12-08 00:10:37'),
(31, 211, '666741620153385', 'EAAIFNKJUyC8BACnPAPFRZCPmmASInPkmpDNbOH3dfYqJIYxsdnPFmvzVcdKaKJrOtJrQs2sa5s0Tnmn0gC75cFqHR0T5fvqPMBhh4hw9chVpfJfoNGJuktrdMP0iZCuPNSSVOyT6ZC2PrMZA1ZCXQA9ZCvGl3aC2NvkGLj59ZB4ugUc8rh6WOgxNqmuXt1ZCN5UCkUl7SAJsAwZDZD', 'Merchant 1', NULL, NULL, '', '', 'https://scontent.xx.fbcdn.net/v/t1.0-1/p50x50/19702369_766729546821258_7822615421753989751_n.jpg?oh=e1cadd535386252b862900c42b8de0ed&oe=5AC896E1', 'https://www.facebook.com/pg/Merchant+1-666741620153385/reviews/', '2017-12-08 00:27:25', '2017-12-08 00:31:34'),
(32, 212, '666741620153385', 'EAAIFNKJUyC8BAGUGjzU6iXOHPVMZBsQyXbdnE6LSOevHIwlwJ63gZC0gBf1aPfLx5r1iB8BBZAORHWn6dPh3EXz4RqmY1eZB3X88ZAXc4kwEKg7ES7kyuf3zRqX13ADCbgOQ9u7rLYBCcTj1VF9a6U63tJUPWBWu6hxELy6ssKlUu0YZAFZAV70GALjHZBEridOZBggw3hSKrgQZDZD', 'Merchant 1', NULL, NULL, '', '', 'https://scontent.xx.fbcdn.net/v/t1.0-1/p50x50/19702369_766729546821258_7822615421753989751_n.jpg?oh=e1cadd535386252b862900c42b8de0ed&oe=5AC896E1', 'https://www.facebook.com/pg/Merchant+1-666741620153385/reviews/', '2017-12-08 17:21:37', '2017-12-08 19:17:04'),
(33, 214, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-09 00:48:44', '2017-12-09 00:48:44'),
(34, 215, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-09 00:53:09', '2017-12-09 00:53:09'),
(35, 218, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-09 02:06:32', '2017-12-09 02:06:32'),
(36, 220, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-09 03:00:51', '2017-12-09 03:00:51'),
(37, 221, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-09 03:03:48', '2017-12-09 03:03:48'),
(38, 223, '504859166388133', 'EAAEKAl6sHi0BANsaramyNwvGFiUgKsnkFgkZBkmf4QPBhfUqDZAplpIFgnZCeZBe1Y8p5DtM1LcTN6DJyhGcVFtmS4gjDlZC6WOk2Q8XTDCKSi6iwV810tqS6ZAv4ByJmMSg2AIOdep3wKRNWl0t5t7WQtVSHNd7KKQkBU6GZArngZDZD', 'Class Act Property Management LLC', NULL, NULL, NULL, NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/c15.0.50.50/p50x50/418333_10149999285994467_1920585607_n.png?oh=76d28733818826ea583063d0010a8d43&oe=5AD02304', 'https://www.facebook.com/pg/Class+Act+Property+Management+LLC-504859166388133/reviews/', '2017-12-14 00:55:17', '2017-12-15 03:17:21'),
(39, 218, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-14 03:14:09', '2017-12-14 03:14:09'),
(40, 229, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-14 03:45:07', '2017-12-14 03:45:07'),
(41, 230, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-14 03:55:07', '2017-12-14 03:55:07'),
(42, 231, '1469514193326079', 'EAAEKAl6sHi0BAMrmS7PTNlKn45pV6O9Cn0Rs8IZCmGQRfovY99GIxDercjAHWOlHObTi4lDPlBdV4s7RvWgpa8ECzISsm8TVXSPuYXoOgsetOauFQpcNdAfgsO0wTxW4KrhJLa9BL6KZBjgILPY5CnZCZBSRNQWzp0806P7yniruLATWOTyZA', 'Barauli', NULL, NULL, NULL, NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/c8.0.50.50/p50x50/10420783_1511840235760141_2638004110319583419_n.jpg?oh=899441141685e4736b6aac6a07ee3cc7&oe=5AD7073C', 'https://www.facebook.com/pg/Barauli-1469514193326079/reviews/', '2017-12-14 22:56:29', '2017-12-15 01:11:27'),
(43, 232, '158396570987231', 'EAAEKAl6sHi0BAC0fVmPqY77wmRdrXB1usMX2CuBPdp2TGV6A60t7X1kGNuLxUSKiJJzvpambtiQuvMu6wNpci8Gxu0X3GIJ0lnoZAL56ZB0pDjDOCytlZA0eEtqcry4HT9Czxtaiu3V70zwyjGdgEaZCWLm0BOu0cGOZBl3HctQZDZD', 'Partners Real Estate - Eagle River, AK', NULL, NULL, NULL, NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/c19.0.50.50/p50x50/12342596_508299629330255_7544639525736257397_n.jpg?oh=4984bfcef31c78dbcfe5eb57bc2283de&oe=5AC342C2', 'https://www.facebook.com/pg/Partners+Real+Estate+-+Eagle+River%2C+AK-158396570987231/reviews/', '2017-12-15 00:20:02', '2017-12-15 00:25:22'),
(44, 233, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-15 00:27:20', '2017-12-15 00:27:20'),
(45, 234, '325682215701', 'EAAEKAl6sHi0BAPSiDDjEh9s0Inn0ZAVfiZCkrZB3ceMF2RKDjNO2GFaezbnxoJWTAKgCZBi0FuZBktJUT2s3vRwkrWWEvRr7N5NbPZAUFF4Ge06vFvNDZCz2wVmRHML7L3wlVt4BtQrD15NoalxlF8dxbCyb6juoJC1v2cE5cngqQZDZD', 'T-Square Properties', NULL, NULL, NULL, NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/c0.0.50.50/p50x50/11071099_10155290957830702_4566725121108906789_n.jpg?oh=979d2b1b4677ec537af23b85813974e7&oe=5AB8474F', 'https://www.facebook.com/pg/T-Square+Properties-325682215701/reviews/', '2017-12-15 01:03:25', '2017-12-15 02:14:55'),
(46, 235, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-15 03:10:14', '2017-12-15 03:10:14'),
(47, 236, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-15 05:55:16', '2017-12-15 05:55:16'),
(48, 237, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-15 05:56:31', '2017-12-15 05:56:31'),
(49, 238, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-15 05:57:23', '2017-12-15 05:57:23'),
(50, 239, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-15 06:12:00', '2017-12-15 06:12:00'),
(51, 240, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-15 06:12:30', '2017-12-15 06:12:30'),
(52, 241, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-15 19:52:16', '2017-12-15 19:52:16'),
(53, 242, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-15 22:26:04', '2017-12-15 22:26:04'),
(54, 243, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-15 22:27:17', '2017-12-15 22:27:17'),
(55, 244, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-15 23:20:26', '2017-12-15 23:20:26'),
(56, 245, '666741620153385', 'EAAEKAl6sHi0BAAwrZACV9D2y23bgLgEBX5Hfy4TmPYSGvvDN5ErCxj0nBxUgZCZAAskMENppFakZCzv1ZApgCzz7gCnm1bplpieqmzxALTp5vV5pzYNs29J04dgoZAKDkFNfCdRMaZByZBrZBtriq9h1KDWrSgHkZBFbDOKSZBh7E9ex0L5TZBktatmJ', 'Merchant 1', NULL, NULL, NULL, NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p50x50/19702369_766729546821258_7822615421753989751_n.jpg?oh=e1cadd535386252b862900c42b8de0ed&oe=5AC896E1', 'https://www.facebook.com/pg/Merchant+1-666741620153385/reviews/', '2017-12-16 15:59:48', '2017-12-16 16:04:43'),
(57, 246, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-16 16:38:25', '2017-12-16 16:38:25'),
(58, 247, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-16 16:40:23', '2017-12-16 16:40:23'),
(59, 248, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-16 18:40:08', '2017-12-16 18:40:08'),
(60, 249, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-16 18:49:14', '2017-12-16 18:49:14'),
(61, 250, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-16 19:04:10', '2017-12-16 19:04:10'),
(62, 251, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-16 19:06:05', '2017-12-16 19:06:05'),
(63, 252, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-16 19:18:43', '2017-12-16 19:18:43'),
(64, 253, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-16 20:31:44', '2017-12-16 20:31:44'),
(65, 254, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-16 20:33:16', '2017-12-16 20:33:16'),
(66, 255, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-16 20:48:30', '2017-12-16 20:48:30'),
(67, 256, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-18 17:21:44', '2017-12-18 17:21:44'),
(68, 260, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-18 17:48:34', '2017-12-18 17:48:34'),
(69, 262, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-20 23:10:14', '2017-12-20 23:10:14'),
(70, 263, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-20 23:12:10', '2017-12-20 23:12:10'),
(71, 264, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-20 23:27:54', '2017-12-20 23:27:54'),
(72, 265, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-20 23:28:58', '2017-12-20 23:28:58'),
(73, 266, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-21 20:55:41', '2017-12-21 20:55:41'),
(74, 267, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-21 23:14:53', '2017-12-21 23:14:53'),
(75, 268, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-21 23:21:26', '2017-12-21 23:21:26'),
(76, 269, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-21 23:46:05', '2017-12-21 23:46:05'),
(77, 270, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-21 23:47:31', '2017-12-21 23:47:31'),
(78, 271, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-21 23:49:02', '2017-12-21 23:49:02'),
(79, 272, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-21 23:54:13', '2017-12-21 23:54:13'),
(80, 273, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-21 23:55:44', '2017-12-21 23:55:44'),
(81, 274, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-21 23:56:39', '2017-12-21 23:56:39'),
(82, 275, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-21 23:57:37', '2017-12-21 23:57:37'),
(83, 276, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-21 23:57:39', '2017-12-21 23:57:39'),
(84, 277, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-21 23:58:22', '2017-12-21 23:58:22'),
(85, 278, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-21 23:59:13', '2017-12-21 23:59:13'),
(86, 279, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-21 23:59:14', '2017-12-21 23:59:14'),
(87, 280, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-22 00:00:08', '2017-12-22 00:00:08'),
(88, 282, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-22 00:01:52', '2017-12-22 00:01:52'),
(89, 283, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-22 00:02:50', '2017-12-22 00:02:50'),
(90, 284, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-22 17:09:17', '2017-12-22 17:09:17'),
(91, 286, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-22 17:22:27', '2017-12-22 17:22:27'),
(92, 287, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-22 17:24:32', '2017-12-22 17:24:32'),
(93, 288, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-22 23:21:30', '2017-12-22 23:21:30'),
(94, 289, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-23 00:14:51', '2017-12-23 00:14:51'),
(95, 290, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-23 02:20:27', '2017-12-23 02:20:27'),
(96, 291, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-26 10:08:51', '2017-12-26 10:08:51'),
(97, 292, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-26 10:11:47', '2017-12-26 10:11:47'),
(98, 294, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-27 00:48:19', '2017-12-27 00:48:19'),
(99, 295, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-27 01:09:56', '2017-12-27 01:09:56'),
(100, 296, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-27 01:14:09', '2017-12-27 01:14:09'),
(101, 297, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-27 23:45:21', '2017-12-27 23:45:21'),
(102, 298, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-29 21:15:18', '2017-12-29 21:15:18'),
(103, 299, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-29 22:07:25', '2017-12-29 22:07:25'),
(104, 300, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-01-11 01:30:53', '2018-01-11 01:30:53'),
(105, 301, '666741620153385', 'EAAEKAl6sHi0BAF8D7jeNkzhlM05YWrgwexuHmRETTSHk5n0zCGoUGuyMJxsMOBe0RXNJ415e5FK7d6oNEmOuXLgZBq3ZAbWPUvWkrPilMR1MGYvm38O5lLnd2O35uR7OPLf1tFLnLxZAZCyQFie1BvDZBwoEZBqwQozCqLUgClO8XCQZBh5b8lK', 'Merchant 1', NULL, NULL, NULL, NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/p50x50/19702369_766729546821258_7822615421753989751_n.jpg?oh=5d837176276163b6f9a459b256dc3955&oe=5B17B0E1', 'https://www.facebook.com/pg/Merchant+1-666741620153385/reviews/', '2018-01-11 17:43:40', '2018-02-13 01:18:01'),
(106, 302, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-01-11 17:47:06', '2018-01-11 17:47:06'),
(107, 303, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-01-11 23:35:18', '2018-01-11 23:35:18'),
(108, 304, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-01-11 23:41:44', '2018-01-11 23:41:44'),
(109, 305, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-01-11 23:49:10', '2018-01-11 23:49:10'),
(110, 306, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-01-11 23:59:57', '2018-01-11 23:59:57'),
(111, 307, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-01-12 01:28:37', '2018-01-12 01:28:37'),
(112, 308, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-01-12 16:58:55', '2018-01-12 16:58:55'),
(113, 309, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-01-12 23:15:53', '2018-01-12 23:15:53'),
(114, 310, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-01-12 23:20:46', '2018-01-12 23:20:46'),
(115, 311, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-03-09 01:32:15', '2018-03-09 01:32:15'),
(116, 312, '158396570987231', 'EAAEKAl6sHi0BAIZB9U6st0UsWnvPOVPoLx7u2jKSOqZB18Vr8a4NwhdFt1zAVtVXNVCHWNZCriO05Pu0K7eMjuhneMZBsp16EtOdXUP5dq4MfYsKmAD8dglcljZClhqaHoexMZC8Jwx978d3X44wcTT7TlfOSEZCxZBUuZAJrr1B2iQZDZD', 'Partners Real Estate - Eagle River, AK', NULL, NULL, NULL, NULL, 'https://scontent.xx.fbcdn.net/v/t1.0-1/c19.0.50.50/p50x50/12342596_508299629330255_7544639525736257397_n.jpg?_nc_cat=0&oh=ce50891a139a92beb041584b1e746742&oe=5B39E9C2', 'https://www.facebook.com/pg/Partners+Real+Estate+-+Eagle+River%2C+AK-158396570987231/reviews/', '2018-03-22 23:21:22', '2018-03-26 18:05:12'),
(117, 313, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-03-22 23:22:47', '2018-03-22 23:22:47'),
(118, 314, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-03-22 23:23:54', '2018-03-22 23:23:54'),
(119, 315, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-03-22 23:24:42', '2018-03-22 23:24:42'),
(120, 316, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-03-22 23:25:42', '2018-03-22 23:25:42'),
(121, 317, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-03-22 23:26:22', '2018-03-22 23:26:22'),
(122, 318, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-03-22 23:27:00', '2018-03-22 23:27:00'),
(123, 319, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-03-24 21:34:52', '2018-03-24 21:34:52'),
(124, 320, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-03-24 21:35:55', '2018-03-24 21:35:55'),
(125, 321, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-03-28 18:14:11', '2018-03-28 18:14:11'),
(126, 322, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-03 02:30:19', '2018-04-03 02:30:19'),
(127, 323, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-08 02:51:06', '2018-04-08 02:51:06'),
(128, 324, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-08 03:46:54', '2018-04-08 03:46:54'),
(129, 325, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-08 03:50:15', '2018-04-08 03:50:15'),
(130, 326, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-08 03:53:00', '2018-04-08 03:53:00'),
(131, 328, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-08 03:55:19', '2018-04-08 03:55:19'),
(132, 329, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-08 03:57:40', '2018-04-08 03:57:40'),
(133, 330, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-08 04:02:26', '2018-04-08 04:02:26'),
(134, 331, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-08 04:47:28', '2018-04-08 04:47:28'),
(135, 332, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-08 05:41:37', '2018-04-08 05:41:37'),
(136, 333, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-08 05:46:35', '2018-04-08 05:46:35'),
(137, 334, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-08 05:47:58', '2018-04-08 05:47:58'),
(138, 335, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-08 05:49:28', '2018-04-08 05:49:28');

-- --------------------------------------------------------

--
-- Table structure for table `google`
--

CREATE TABLE `google` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `place_id` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` text COLLATE utf8_unicode_ci,
  `rating` decimal(3,2) DEFAULT NULL,
  `adr_address` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `formatted_address` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location_lat` decimal(9,6) DEFAULT NULL,
  `location_lng` decimal(9,6) DEFAULT NULL,
  `formatted_phone_number` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `international_phone_number` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reference` text COLLATE utf8_unicode_ci,
  `map_url` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `website` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `google`
--

INSERT INTO `google` (`id`, `user_id`, `place_id`, `name`, `rating`, `adr_address`, `formatted_address`, `location_lat`, `location_lng`, `formatted_phone_number`, `international_phone_number`, `reference`, `map_url`, `website`, `created`, `modified`) VALUES
(1, 11, 'ChIJVaDVHHPryFYRa9Ocf10TS3Y', 'Partners Real Estate', '3.60', '<span class=\"street-address\">11940 Business Blvd #202</span>, <span class=\"locality\">Eagle River</span>, <span class=\"region\">AK</span> <span class=\"postal-code\">99577</span>, <span class=\"country-name\">USA</span>', '11940 Business Blvd #202, Eagle River, AK 99577, USA', '61.328620', '-149.573419', '(907) 694-4994', '+1 907-694-4994', 'CmRRAAAAcGGDZODRTLztV2wOXfPD_buMinqX1kI3fQH9NrAtWSA_HpTZ_0amlv03xvp6bQvvpWSpBmODQscdbK-6dxUnKrK1SuQlFacnkVGFDV-StWC203A4gx4XTza6KaLryDR2EhAgjdH-RQsJ0g9Rt1tyvPxcGhRkXEAFqoA_KstQa42xeVXHSQBmhA', 'https://maps.google.com/?cid=8523928012022666091', 'http://www.partnersre.com/', '2017-11-15 21:03:57', '2018-02-15 18:00:02'),
(7, 170, 'ChIJVaDVHHPryFYRa9Ocf10TS3Y', 'Partners Real Estate', '3.60', '<span class=\"street-address\">11940 Business Blvd #202</span>, <span class=\"locality\">Eagle River</span>, <span class=\"region\">AK</span> <span class=\"postal-code\">99577</span>, <span class=\"country-name\">USA</span>', '11940 Business Blvd #202, Eagle River, AK 99577, USA', '61.328620', '-149.573419', '(907) 694-4994', '+1 907-694-4994', 'CmRRAAAArxVHkGIEh11UxiSnOIMU9ZrfRZW0-QuNhieKJ33uqWmF54WbZhrTejgoegO686ze5YsGbSgjqxL0PsJBmyqX5kH-a4rwsouHdCXv3JJdbqoACTV8vS-kNMWiOjKf4k0vEhAnx5kVOualkiDmpQq_CdN5GhQUe8nJjbLBz4kKvzZ2kvDJBqlVhw', 'https://maps.google.com/?cid=8523928012022666091', 'http://www.partnersre.com/', '2017-11-21 18:03:02', '2018-02-15 18:00:12'),
(8, 172, 'ChIJ8xMvlV6C3IAR8xvCFle7850', 'Pampered Pooch Spa & Bowtique', '4.40', '<span class=\"street-address\">40585 California Oaks Rd # F4</span>, <span class=\"locality\">Murrieta</span>, <span class=\"region\">CA</span> <span class=\"postal-code\">92562-5724</span>, <span class=\"country-name\">USA</span>', '40585 California Oaks Rd # F4, Murrieta, CA 92562, USA', '33.573935', '-117.203221', '(951) 461-3355', '+1 951-461-3355', 'CmRSAAAAa9J9IuRrVZSjtlSC11ET26-l_K-al7p09s1XzGlXJ0Pl7BS7fw2iXO4Bco_yGq65nEM_gOioD42UJ_raJpHxPfq1FWe61rtBvV2W6dLPRlffiYqi14M37ohGLEQFR9EUEhCmmx2MUUly_ajDQSCAjvVqGhTCxFW0b7-kwQcql-1t1QGok-lYiw', 'https://maps.google.com/?cid=11381646666013744115', 'http://www.thepamperedpoochspa.com/', '2017-11-21 18:03:02', '2017-11-24 00:24:27'),
(9, 174, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-28 23:25:30', '2017-11-28 23:25:30'),
(10, 177, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-02 21:24:15', '2017-12-02 21:24:15'),
(11, 179, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-02 22:00:08', '2017-12-02 22:00:08'),
(12, 181, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-04 19:00:57', '2017-12-04 19:00:57'),
(13, 182, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-04 23:01:48', '2017-12-04 23:01:48'),
(14, 184, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-05 00:48:30', '2017-12-05 00:48:30'),
(15, 185, 'ChIJVaDVHHPryFYRa9Ocf10TS3Y', 'Partners Real Estate', '3.40', '<span class=\"street-address\">11940 Business Blvd #202</span>, <span class=\"locality\">Eagle River</span>, <span class=\"region\">AK</span> <span class=\"postal-code\">99577</span>, <span class=\"country-name\">USA</span>', '11940 Business Blvd #202, Eagle River, AK 99577, USA', '61.328620', '-149.573419', '(907) 694-4994', '+1 907-694-4994', 'CmRRAAAA3Bm99IeYmN8Vccww4r_j3essV7z0EPpvxUgDHT9a63RXf8jJMM57a0kLHNlNIhhvKzBsO5vmF0szSGUoPRv3r4sHh90ikCcl4ywvDyL4lSUSkrd1sFG4JRaxMi7ZQp_0EhAzMxjNw8BLvCvQM3ulyeLaGhSkN3PMt1CuiH-weJvFjuugggY5Kw', 'https://maps.google.com/?cid=8523928012022666091', 'http://www.partnersre.com/', '2017-12-05 01:32:32', '2017-12-09 03:02:20'),
(16, 186, 'ChIJ07HFQ1Z_24ARf2QSDb35NDU', 'Team Flores - Real Estate', '5.00', '<span class=\"street-address\">32675 Temecula Pkwy Ste A</span>, <span class=\"locality\">Temecula</span>, <span class=\"region\">CA</span> <span class=\"postal-code\">92592</span>, <span class=\"country-name\">USA</span>', '32675 Temecula Pkwy Ste A, Temecula, CA 92592, USA', '33.483664', '-117.087002', '(858) 243-2043', '+1 858-243-2043', 'CmRRAAAApp75XceVOU6LkxuxhF5eMYAxjnfeWCW0KWEsRT-mNxo0vyhhKx05L04yPxO-S0yci7KIeZKTsUJUMDUSrjy4_hLsreHPiUPqfIkbt9J2hP7owY9xiROKI_mD9SExYkcSEhDwWx4YyfKyVf3VnR7026vHGhSTPqabEXjhlPIX-4LFXex7KNprbg', 'https://maps.google.com/?cid=3833963773162579071', 'http://www.teamflores.net/', '2017-12-06 13:30:58', '2017-12-06 15:03:57'),
(17, 187, 'ChIJVaDVHHPryFYRa9Ocf10TS3Y', 'Partners Real Estate', '3.40', '<span class=\"street-address\">11940 Business Blvd #202</span>, <span class=\"locality\">Eagle River</span>, <span class=\"region\">AK</span> <span class=\"postal-code\">99577</span>, <span class=\"country-name\">USA</span>', '11940 Business Blvd #202, Eagle River, AK 99577, USA', '61.328620', '-149.573419', '(907) 694-4994', '+1 907-694-4994', 'CmRRAAAANYqg-3_1J_B4HX3iQh9t6ECiCDi3dKD1_El5T8bVEyra5KXT0fX49db3lMegVVLl5K5DtuzXCdJbfXR9_O3Q5xElxEnFAJawZnG1FK7XNO8FpMiOVj84VjNwhny6D1OjEhDoIx8KQF2WjG2_0WAzGwtIGhRud22gnpxi2OBmvYkupbku8W1vuw', 'https://maps.google.com/?cid=8523928012022666091', 'http://www.partnersre.com/', '2017-12-06 16:08:40', '2017-12-06 16:09:27'),
(18, 188, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-06 17:31:54', '2017-12-06 17:31:54'),
(19, 189, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-06 17:56:29', '2017-12-06 17:56:29'),
(20, 190, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-06 18:34:49', '2017-12-06 18:34:49'),
(21, 191, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-06 18:39:39', '2017-12-06 18:39:39'),
(22, 192, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-06 18:42:38', '2017-12-06 18:42:38'),
(23, 193, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-06 18:49:37', '2017-12-06 18:49:37'),
(24, 194, 'ChIJ07HFQ1Z_24ARf2QSDb35NDU', 'Team Flores - Real Estate', '5.00', '<span class=\"street-address\">32675 Temecula Pkwy Ste A</span>, <span class=\"locality\">Temecula</span>, <span class=\"region\">CA</span> <span class=\"postal-code\">92592</span>, <span class=\"country-name\">USA</span>', '32675 Temecula Pkwy Ste A, Temecula, CA 92592, USA', '33.483664', '-117.087002', '(858) 243-2043', '+1 858-243-2043', 'CmRRAAAAcGR4CfsHLfmUqPuxX-Gp7pHwkF06dCIeEe5HB_UoLIjKK2safImlmMyFd4oIOP1cOlHDPexqUQjV4XyZ2j-hSFiioymJUK5jKd_PeAy3DDQ1qNnTm4j38o7O5Pbwbsv6EhBmWDxGJfugS2RuwU-R8YLtGhSNmjIGWJyrLmGX38IS0F8tH8Iuog', 'https://maps.google.com/?cid=3833963773162579071', 'http://www.teamflores.net/', '2017-12-06 20:20:17', '2017-12-06 20:20:57'),
(25, 195, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-06 20:35:00', '2017-12-06 20:35:00'),
(26, 196, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-06 20:49:38', '2017-12-06 20:49:38'),
(27, 197, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-06 20:54:09', '2017-12-06 20:54:09'),
(28, 198, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-06 21:02:38', '2017-12-06 21:02:38'),
(29, 199, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-06 21:13:30', '2017-12-06 21:13:30'),
(30, 200, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-06 23:13:58', '2017-12-06 23:13:58'),
(31, 201, 'ChIJVaDVHHPryFYRa9Ocf10TS3Y', 'Partners Real Estate', '3.40', '<span class=\"street-address\">11940 Business Blvd #202</span>, <span class=\"locality\">Eagle River</span>, <span class=\"region\">AK</span> <span class=\"postal-code\">99577</span>, <span class=\"country-name\">USA</span>', '11940 Business Blvd #202, Eagle River, AK 99577, USA', '61.328620', '-149.573419', '(907) 694-4994', '+1 907-694-4994', 'CmRRAAAAcVV3i9aRlGDJrYnVenmuZneJowtSHSlUZGI_lYCtNuL2ehQ06cT7GsjBj6mj0UF5KBdVj1P8aJMr2NNQ2eeAR3W3Pd9zQnLzSziUjZX_wjG3FtamW_U2WtuaYDeCdWaLEhA9ug_xaUi9JDHhNx60nOkjGhTk2en3MksDSEYPZpqWSCRh9xV2Xg', 'https://maps.google.com/?cid=8523928012022666091', 'http://www.partnersre.com/', '2017-12-06 23:59:02', '2017-12-07 00:00:56'),
(32, 202, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-07 18:51:59', '2017-12-07 18:51:59'),
(33, 204, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-07 19:40:38', '2017-12-07 19:40:38'),
(34, 208, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-07 23:34:05', '2017-12-07 23:34:05'),
(35, 209, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-07 23:58:55', '2017-12-07 23:58:55'),
(36, 210, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-08 00:10:37', '2017-12-08 00:10:37'),
(37, 211, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-08 00:27:25', '2017-12-08 00:27:25'),
(38, 212, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-08 17:21:36', '2017-12-08 17:21:36'),
(39, 214, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-09 00:48:44', '2017-12-09 00:48:44'),
(40, 215, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-09 00:53:09', '2017-12-09 00:53:09'),
(41, 218, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-09 02:06:31', '2017-12-09 02:06:31'),
(42, 220, 'ChIJVaDVHHPryFYRa9Ocf10TS3Y', 'Partners Real Estate', '3.40', '<span class=\"street-address\">11940 Business Blvd #202</span>, <span class=\"locality\">Eagle River</span>, <span class=\"region\">AK</span> <span class=\"postal-code\">99577</span>, <span class=\"country-name\">USA</span>', '11940 Business Blvd #202, Eagle River, AK 99577, USA', '61.328620', '-149.573419', '(907) 694-4994', '+1 907-694-4994', 'CmRRAAAAwoxQaWKPGgQFWKAbKWn6_TO1ZU-SvAfNCPLqI8c41mEMprUlFGbRn-op8VZqT32KCnJdNyxa01zLH2zW0zoGtY1CafhgyhN5q9dz0q4k29z7g4Gtiwd7z_BXsG401XVHEhBO1q3Bh5694cty9KCmsVoBGhQcnGt3A_JGaIqzkJ-FV8eBiy-eUQ', 'https://maps.google.com/?cid=8523928012022666091', 'http://www.partnersre.com/', '2017-12-09 03:00:51', '2017-12-09 03:01:32'),
(43, 221, 'ChIJVaDVHHPryFYRa9Ocf10TS3Y', 'Partners Real Estate', '3.40', '<span class=\"street-address\">11940 Business Blvd #202</span>, <span class=\"locality\">Eagle River</span>, <span class=\"region\">AK</span> <span class=\"postal-code\">99577</span>, <span class=\"country-name\">USA</span>', '11940 Business Blvd #202, Eagle River, AK 99577, USA', '61.328620', '-149.573419', '(907) 694-4994', '+1 907-694-4994', 'CmRRAAAA3Ig9JdiTGp6MlRq9puTWk8AeZO2IF3GgMDN5sIAqNdocbVYEGCHqQ0q2EqhYVR5EBjgIF0mzTbu26_xLcDzotQIwGgnmIL6VXEkKGOZjA8Q1TFJWDHHVsjJnhRW6TBC-EhDGLfAOMkPybyzb_8Y2xC2pGhSSz4kJ9E2zLXw5CcA1vYeUbNUkEA', 'https://maps.google.com/?cid=8523928012022666091', 'http://www.partnersre.com/', '2017-12-09 03:03:48', '2017-12-09 03:05:06'),
(44, 223, 'ChIJEwkoSA3_v1QRbbsRD1BHvnw', 'Class Act Property Management LLC', '1.40', '<span class=\"street-address\">189 Liberty St NE #307</span>, <span class=\"locality\">Salem</span>, <span class=\"region\">OR</span> <span class=\"postal-code\">97301</span>, <span class=\"country-name\">USA</span>', '189 Liberty St NE #307, Salem, OR 97301, USA', '44.940967', '-123.038883', '(541) 719-8200', '+1 541-719-8200', 'CmRRAAAAPC8JbEowEMjz6wqnXmShIb1htnEly8vmKWIbPkY6MoIVf64CoF-BQ29di7c-jQUyQ2sAr-0IpSprYZclnYLgsWemO5v5JrqU4dxdmP_FulUP1xTE1bSrmnoVltE4hUxnEhBjq4tEQ-PurriBbAN_HRNKGhQzGNanezj5-5gBN0bAuz72Q59qvw', 'https://maps.google.com/?cid=8988700315453864813', 'http://www.classactproperties.com/', '2017-12-14 00:55:17', '2017-12-14 01:11:25'),
(45, 218, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-14 03:14:09', '2017-12-14 03:14:09'),
(46, 229, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-14 03:45:07', '2017-12-14 03:45:07'),
(47, 230, 'ChIJVaDVHHPryFYRa9Ocf10TS3Y', 'Partners Real Estate', '3.40', '<span class=\"street-address\">11940 Business Blvd #202</span>, <span class=\"locality\">Eagle River</span>, <span class=\"region\">AK</span> <span class=\"postal-code\">99577</span>, <span class=\"country-name\">USA</span>', '11940 Business Blvd #202, Eagle River, AK 99577, USA', '61.328620', '-149.573419', '(907) 694-4994', '+1 907-694-4994', 'CmRRAAAAulMWtKiBA3xk9cgJv4PwnQ_kPs9LVmoZEEPEQU4jt88qzAMlqoOgdtDxccFjeETIzyA9rMo3Zr2-F_lHGFgcDCUUI6_0IIcxXM6XZi_dTvy8iM6VSOErY6LW0VUNrPdHEhC6nl1aU791cRTh5-4k2izsGhQC_8pj34mq45g-Wul0Sq4KCiy2Uw', 'https://maps.google.com/?cid=8523928012022666091', 'http://www.partnersre.com/', '2017-12-14 03:55:07', '2017-12-14 03:56:24'),
(48, 231, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-14 22:56:28', '2017-12-14 22:56:28'),
(49, 232, 'ChIJVaDVHHPryFYRa9Ocf10TS3Y', 'Partners Real Estate', '3.40', '<span class=\"street-address\">11940 Business Blvd #202</span>, <span class=\"locality\">Eagle River</span>, <span class=\"region\">AK</span> <span class=\"postal-code\">99577</span>, <span class=\"country-name\">USA</span>', '11940 Business Blvd #202, Eagle River, AK 99577, USA', '61.328620', '-149.573419', '(907) 694-4994', '+1 907-694-4994', 'CmRRAAAAmGVTJbZtFwMz-upth2FfHLvBSCEtQeegCLl41JizQbvplA3KvfZrom1ekOhgAST58ByVh6AyP7ALHNKJ2mu5rLFcGoqSCk3UKGq3siZ-_XKCmW7KMII3_JHM2RTWOxBAEhDLO8MZsfK6IyJI9aGkztIvGhTaCrzbDjn9hHlacniNucKFIokm5Q', 'https://maps.google.com/?cid=8523928012022666091', 'http://www.partnersre.com/', '2017-12-15 00:20:02', '2017-12-15 00:26:22'),
(50, 233, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-15 00:27:20', '2017-12-15 00:27:20'),
(51, 234, 'ChIJEfX2eR4MkFQR2raCUmgUbzE', 'T-Square Properties', '4.70', '<span class=\"street-address\">19125 North Creek Pkwy #208</span>, <span class=\"locality\">Bothell</span>, <span class=\"region\">WA</span> <span class=\"postal-code\">98011</span>, <span class=\"country-name\">USA</span>', '19125 North Creek Pkwy #208, Bothell, WA 98011, USA', '47.766820', '-122.186884', '(425) 485-1800', '+1 425-485-1800', 'CmRRAAAA7lObvDivPpATG_jruFS966D0wDOY2IHIdfsiaKN1ODfEYeRm7Yz9akKf8LFmKJLgQe-SqSCB5TkQUbYtc0WiC1SRHavnTcK8prm__E3Khfy8WFUk_yWft1VC1yGgLUkgEhDjHo1N900Rwc51MKe6hya1GhTO9Rf9DNTOX_yw224O-6k4NQIotA', 'https://maps.google.com/?cid=3562088268566804186', 'http://tsquareproperties.net/', '2017-12-15 01:03:25', '2017-12-15 01:04:30'),
(52, 235, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-15 03:10:14', '2017-12-15 03:10:14'),
(53, 236, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-15 05:55:16', '2017-12-15 05:55:16'),
(54, 237, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-15 05:56:31', '2017-12-15 05:56:31'),
(55, 238, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-15 05:57:23', '2017-12-15 05:57:23'),
(56, 239, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-15 06:12:00', '2017-12-15 06:12:00'),
(57, 240, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-15 06:12:30', '2017-12-15 06:12:30'),
(58, 241, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-15 19:52:16', '2017-12-15 19:52:16'),
(59, 242, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-15 22:26:04', '2017-12-15 22:26:04'),
(60, 243, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-15 22:27:16', '2017-12-15 22:27:16'),
(61, 244, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-15 23:20:26', '2017-12-15 23:20:26'),
(62, 245, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-16 15:59:48', '2017-12-16 15:59:48'),
(63, 246, 'ChIJ07HFQ1Z_24ARf2QSDb35NDU', 'Team Flores - Real Estate', '5.00', '<span class=\"street-address\">32675 Temecula Pkwy Ste A</span>, <span class=\"locality\">Temecula</span>, <span class=\"region\">CA</span> <span class=\"postal-code\">92592</span>, <span class=\"country-name\">USA</span>', '32675 Temecula Pkwy Ste A, Temecula, CA 92592, USA', '33.483664', '-117.087002', '(858) 243-2043', '+1 858-243-2043', 'CmRRAAAAY6-fN9TO2UgmogsMgdVjpGvo4vNutKDUypNWy5EmI99ZR0hBsBcIqZqWegV3fJlrLklLMOVwWPEICrIlWrznA_mVRTyKNBGwNRT2m1lw90DHFVLbFiob72sZZ6hwDRS6EhAJOZLAINRZRaNiGoWqXyaDGhRob1jqxPdyewsfbre2u8QfqsBk_A', 'https://maps.google.com/?cid=3833963773162579071', 'http://www.teamflores.net/', '2017-12-16 16:38:25', '2017-12-16 17:09:59'),
(64, 247, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-16 16:40:23', '2017-12-16 16:40:23'),
(65, 248, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-16 18:40:08', '2017-12-16 18:40:08'),
(66, 249, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-16 18:49:14', '2017-12-16 18:49:14'),
(67, 250, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-16 19:04:09', '2017-12-16 19:04:09'),
(68, 251, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-16 19:06:04', '2017-12-16 19:06:04'),
(69, 252, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-16 19:18:43', '2017-12-16 19:18:43'),
(70, 253, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-16 20:31:43', '2017-12-16 20:31:43'),
(71, 254, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-16 20:33:16', '2017-12-16 20:33:16'),
(72, 255, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-16 20:48:30', '2017-12-16 20:48:30'),
(73, 256, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-18 17:21:44', '2017-12-18 17:21:44'),
(74, 260, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-18 17:48:34', '2017-12-18 17:48:34'),
(75, 262, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-20 23:10:14', '2017-12-20 23:10:14'),
(76, 263, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-20 23:12:10', '2017-12-20 23:12:10'),
(77, 264, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-20 23:27:54', '2017-12-20 23:27:54'),
(78, 265, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-20 23:28:58', '2017-12-20 23:28:58'),
(79, 266, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-21 20:55:41', '2017-12-21 20:55:41'),
(80, 267, 'ChIJVaDVHHPryFYRa9Ocf10TS3Y', 'Partners Real Estate', '3.40', '<span class=\"street-address\">11940 Business Blvd #202</span>, <span class=\"locality\">Eagle River</span>, <span class=\"region\">AK</span> <span class=\"postal-code\">99577</span>, <span class=\"country-name\">USA</span>', '11940 Business Blvd #202, Eagle River, AK 99577, USA', '61.328620', '-149.573419', '(907) 694-4994', '+1 907-694-4994', 'CmRRAAAAPCTddJUJMAuNllWVIU0uEpCV1mzmSYVYwmtQJnmdBz4Ijt4lhOLZey0DKx8c_m1zUImxx0aUqrNckV7tXXIP8yeBYQaqEabuDRjaYL2rXl-c8uUlY4dKlgnqoaZNDFxWEhBA_sCrPqlUJTrytwOjAOfRGhSGOqPOFwn7z5K285CTa1Mc1XoMAA', 'https://maps.google.com/?cid=8523928012022666091', 'http://www.partnersre.com/', '2017-12-21 23:14:53', '2017-12-21 23:18:07'),
(81, 268, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-21 23:21:26', '2017-12-21 23:21:26'),
(82, 269, 'ChIJ07HFQ1Z_24ARf2QSDb35NDU', 'Team Flores - Real Estate', '5.00', '<span class=\"street-address\">32675 Temecula Pkwy Ste A</span>, <span class=\"locality\">Temecula</span>, <span class=\"region\">CA</span> <span class=\"postal-code\">92592</span>, <span class=\"country-name\">USA</span>', '32675 Temecula Pkwy Ste A, Temecula, CA 92592, USA', '33.483664', '-117.087002', '(858) 243-2043', '+1 858-243-2043', 'CmRRAAAA5eCXm2h6Laeac9gh31sgG5M8ZzsVtqSSYK7e2EOv4A9GSwJhaf5PkUF86HpFKGgvbrEjc39pdzyKiABq0zJSDO0iCJ21ihyJYPmEu5-QSim4BgO7kLWmvSk1N1vpQN47EhCMEMGj9hgDzCvWLisS7r8tGhTuZTS0sH0WeIOB8edioZcjdjcsZQ', 'https://maps.google.com/?cid=3833963773162579071', 'http://www.teamflores.net/', '2017-12-21 23:46:05', '2017-12-22 00:26:22'),
(83, 270, 'ChIJ8xMvlV6C3IAR8xvCFle7850', 'Pampered Pooch Spa & Bowtique', '4.40', '<span class=\"street-address\">40585 California Oaks Rd # F4</span>, <span class=\"locality\">Murrieta</span>, <span class=\"region\">CA</span> <span class=\"postal-code\">92562-5724</span>, <span class=\"country-name\">USA</span>', '40585 California Oaks Rd # F4, Murrieta, CA 92562, USA', '33.573935', '-117.203221', '(951) 461-3355', '+1 951-461-3355', 'CmRSAAAA-Wm_WsJjV7Uf5ldz0VHGMH4DwxQwGx-dNDLapQ4tLJ0twjbuh0u28occzgAikqu1josw5XbDSXfKaKvtgL6ZlAVbpM4QwCLPZ75YJP_8Zaz4cxQOlFlRkSWDDtSEzF7iEhBTNe1-XGZTiLxO59kOvvQ7GhQ67joTh7ajCfUp8uRXiZJ0k5fINQ', 'https://maps.google.com/?cid=11381646666013744115', 'http://www.thepamperedpoochspa.com/', '2017-12-21 23:47:31', '2017-12-22 00:13:42'),
(84, 271, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-21 23:49:02', '2017-12-21 23:49:02'),
(85, 272, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-21 23:54:12', '2017-12-21 23:54:12'),
(86, 273, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-21 23:55:44', '2017-12-21 23:55:44'),
(87, 274, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-21 23:56:39', '2017-12-21 23:56:39'),
(88, 275, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-21 23:57:37', '2017-12-21 23:57:37'),
(89, 276, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-21 23:57:39', '2017-12-21 23:57:39'),
(90, 277, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-21 23:58:22', '2017-12-21 23:58:22'),
(91, 278, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-21 23:59:13', '2017-12-21 23:59:13'),
(92, 279, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-21 23:59:14', '2017-12-21 23:59:14'),
(93, 280, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-22 00:00:08', '2017-12-22 00:00:08'),
(94, 282, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-22 00:01:52', '2017-12-22 00:01:52'),
(95, 283, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-22 00:02:50', '2017-12-22 00:02:50'),
(96, 284, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-22 17:09:17', '2017-12-22 17:09:17'),
(97, 286, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-22 17:22:27', '2017-12-22 17:22:27'),
(98, 287, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-22 17:24:32', '2017-12-22 17:24:32'),
(99, 288, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-22 23:21:30', '2017-12-22 23:21:30'),
(100, 289, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-23 00:14:51', '2017-12-23 00:14:51'),
(101, 290, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-23 02:20:27', '2017-12-23 02:20:27'),
(102, 291, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-26 10:08:50', '2017-12-26 10:08:50'),
(103, 292, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-26 10:11:47', '2017-12-26 10:11:47'),
(104, 294, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-27 00:48:19', '2017-12-27 00:48:19'),
(105, 295, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-27 01:09:56', '2017-12-27 01:09:56'),
(106, 296, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-27 01:14:08', '2017-12-27 01:14:08'),
(107, 297, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-27 23:45:21', '2017-12-27 23:45:21'),
(108, 298, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-29 21:15:17', '2017-12-29 21:15:17'),
(109, 299, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-29 22:07:25', '2017-12-29 22:07:25'),
(110, 300, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-01-11 01:30:51', '2018-01-11 01:30:51'),
(111, 301, 'ChIJEZbOX1FxIocRJt_vKSrkwz0', 'Venturi Realty Group', NULL, '<span class=\"street-address\">1119 Alameda Blvd NW</span>, <span class=\"locality\">Albuquerque</span>, <span class=\"region\">NM</span> <span class=\"postal-code\">87114-1936</span>, <span class=\"country-name\">USA</span>', '1119 Alameda Blvd NW, Albuquerque, NM 87114, USA', '35.194752', '-106.635182', '(505) 448-8888', '+1 505-448-8888', 'CmRRAAAA9OrAiahENjxGsWqoiuWRNeiMao05G7y413_B-H4Q5Y8xltWjHxAH8o2rGqJftPyUG2yFlSB5y-LQ6ZpQBOcAGgik1JHm8OFOh6kF4S_uSit2yF26zG-M8E7cVhrkVF5qEhA-bZzfw1r0KDq9mgE0boY1GhRTwT3Wh5tMR07BaqLqbAdpNNg83g', 'https://maps.google.com/?cid=4450651726515527462', 'https://welcomehomeabq.com/', '2018-01-11 17:43:39', '2018-02-13 01:17:48'),
(112, 302, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-01-11 17:47:02', '2018-01-11 17:47:02'),
(113, 303, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-01-11 23:35:17', '2018-01-11 23:35:17'),
(114, 304, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-01-11 23:41:44', '2018-01-11 23:41:44'),
(115, 305, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-01-11 23:49:09', '2018-01-11 23:49:09'),
(116, 306, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-01-11 23:59:54', '2018-01-11 23:59:54'),
(117, 307, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-01-12 01:28:36', '2018-01-12 01:28:36'),
(118, 308, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-01-12 16:58:53', '2018-01-12 16:58:53'),
(119, 309, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-01-12 23:15:52', '2018-01-12 23:15:52'),
(120, 310, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-01-12 23:20:44', '2018-01-12 23:20:44'),
(121, 311, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-03-09 01:32:14', '2018-03-09 01:32:14'),
(122, 312, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-03-22 23:21:19', '2018-03-22 23:21:19'),
(123, 313, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-03-22 23:22:46', '2018-03-22 23:22:46'),
(124, 314, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-03-22 23:23:53', '2018-03-22 23:23:53'),
(125, 315, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-03-22 23:24:42', '2018-03-22 23:24:42'),
(126, 316, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-03-22 23:25:41', '2018-03-22 23:25:41'),
(127, 317, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-03-22 23:26:21', '2018-03-22 23:26:21'),
(128, 318, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-03-22 23:26:58', '2018-03-22 23:26:58'),
(129, 319, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-03-24 21:34:51', '2018-03-24 21:34:51'),
(130, 320, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-03-24 21:35:53', '2018-03-24 21:35:53'),
(131, 321, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-03-28 18:14:10', '2018-03-28 18:14:10'),
(132, 322, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-03 02:30:19', '2018-04-03 02:30:19'),
(133, 323, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-08 02:51:05', '2018-04-08 02:51:05'),
(134, 324, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-08 03:46:53', '2018-04-08 03:46:53'),
(135, 325, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-08 03:50:15', '2018-04-08 03:50:15'),
(136, 326, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-08 03:53:00', '2018-04-08 03:53:00'),
(137, 328, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-08 03:55:18', '2018-04-08 03:55:18'),
(138, 329, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-08 03:57:39', '2018-04-08 03:57:39'),
(139, 330, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-08 04:02:25', '2018-04-08 04:02:25'),
(140, 331, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-08 04:47:26', '2018-04-08 04:47:26'),
(141, 332, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-08 05:41:36', '2018-04-08 05:41:36'),
(142, 333, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-08 05:46:34', '2018-04-08 05:46:34'),
(143, 334, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-08 05:47:57', '2018-04-08 05:47:57'),
(144, 335, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-08 05:49:26', '2018-04-08 05:49:26');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `priority` int(11) NOT NULL DEFAULT '0',
  `created` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `priority`, `created`, `modified`) VALUES
(1, 'Super Admin ', 1, '2017-10-05 03:10:12', '2018-03-08 20:36:57'),
(2, 'Company Representative', 2, '2017-10-05 03:10:32', '2018-03-08 20:37:08'),
(3, 'Location Admin', 3, '2017-10-05 03:10:55', '2018-03-08 20:41:19'),
(4, 'Associate', 5, '2017-10-05 03:11:19', '2018-03-08 20:41:50'),
(7, 'Team Lead', 4, '2018-03-08 23:03:00', '2018-03-08 23:04:26');

-- --------------------------------------------------------

--
-- Table structure for table `order_transactions`
--

CREATE TABLE `order_transactions` (
  `id` int(11) NOT NULL,
  `order_ref` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `plan_id` int(11) NOT NULL,
  `transaction_status` enum('Pending','Complete') NOT NULL,
  `payment_type` varchar(50) NOT NULL,
  `approval_code` varchar(50) DEFAULT NULL,
  `invoice_id` bigint(50) DEFAULT NULL,
  `transaction_id` varchar(50) DEFAULT NULL,
  `recur_id` bigint(50) DEFAULT NULL,
  `recur_amt` varchar(50) DEFAULT NULL,
  `recuring_status` int(1) NOT NULL DEFAULT '0',
  `subscription_cancel_dt` date DEFAULT NULL,
  `expiry_date` date DEFAULT NULL,
  `auth_request` text NOT NULL,
  `auth_response` text,
  `created` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_transactions`
--

INSERT INTO `order_transactions` (`id`, `order_ref`, `user_id`, `amount`, `first_name`, `last_name`, `plan_id`, `transaction_status`, `payment_type`, `approval_code`, `invoice_id`, `transaction_id`, `recur_id`, `recur_amt`, `recuring_status`, `subscription_cancel_dt`, `expiry_date`, `auth_request`, `auth_response`, `created`, `modified`) VALUES
(70, 1521760859, 312, 349, 'Matthew', 'Bate', 3, 'Complete', 'Credit Card', '<html><body>YAPPROVED 251048', 506129, '20180322111927-080880-506129', 9721, '249.00', 0, NULL, NULL, '{\"ePNAccount\":\"080880\",\"Inv\":\"report\",\"RestrictKey\":\"yFqqXJh9Pqnugfr\",\"TranType\":\"Sale\",\"Total\":\"349.00\",\"CardNo\":\"xxxxxxxxxxxxxxxx\",\"CVV2Type\":\"1\",\"CVV2\":\"xxx\",\"ExpMonth\":\"xx\",\"ExpYear\":\"xx\",\"FirstName\":\"Matthew\",\"LastName\":\"Bate\",\"Email\":\"matthewbate1@yopmail.com\",\"Company\":\"Chetu India\",\"Address\":\"1344 Goucher ST\",\"City\":\"Pacific Palisades\",\"State\":\"CA\",\"RecurMethodID\":\"0\",\"Identifier\":\"1521760859\",\"Zip\":90272,\"RCRRecurAmount\":\"249.00\",\"RCRRecurs\":\"0\",\"RCRPeriod\":\"Monthly\",\"RCRChargeWhen\":\"OnDayOfCycle\",\"RCRStartOnDay\":\"04~22~2018\"}', '<html><body>\"YAPPROVED 251048\",\"AVS Match 9 Digit Zip and Address (X)\",\"CVV2 Match (M)\",\"506129\",\"20180322111927-080880-506129\",\"RecurID=9721\"</body></html>', '2018-03-22 23:21:00', '2018-03-22 23:21:09'),
(71, 1522260829, 321, 99, 'Sanda', 'Moldovan', 1, 'Complete', 'Credit Card', '<html><body>YAPPROVED 311196', 506692, '20180328061214-080880-506692', 9725, '49.00', 0, NULL, NULL, '{\"ePNAccount\":\"080880\",\"Inv\":\"report\",\"RestrictKey\":\"yFqqXJh9Pqnugfr\",\"TranType\":\"Sale\",\"Total\":\"99.00\",\"CardNo\":\"xxxxxxxxxxxxxxxx\",\"CVV2Type\":\"1\",\"CVV2\":\"xxx\",\"ExpMonth\":\"xx\",\"ExpYear\":\"xx\",\"FirstName\":\"Sanda\",\"LastName\":\"Moldovan\",\"Email\":\"test234@yopmail.com\",\"Company\":\"Chetu India\",\"Address\":\"1344 Goucher ST\",\"City\":\"Pacific Palisades\",\"State\":\"CA\",\"RecurMethodID\":\"0\",\"Identifier\":\"1522260829\",\"Zip\":90272,\"RCRRecurAmount\":\"49.00\",\"RCRRecurs\":\"0\",\"RCRPeriod\":\"Monthly\",\"RCRChargeWhen\":\"OnDayOfCycle\",\"RCRStartOnDay\":\"04~28~2018\"}', '<html><body>\"YAPPROVED 311196\",\"AVS Match 9 Digit Zip and Address (X)\",\"CVV2 Match (M)\",\"506692\",\"20180328061214-080880-506692\",\"RecurID=9725\"</body></html>', '2018-03-28 18:13:49', '2018-03-28 18:13:58'),
(72, 1522722599, 322, 179, 'Amit', 'Kumar', 2, 'Complete', 'Credit Card', '<html><body>YAPPROVED 010184', 507437, '20180402142823-080880-507437', 9743, '129.00', 0, NULL, NULL, '{\"ePNAccount\":\"080880\",\"Inv\":\"report\",\"RestrictKey\":\"yFqqXJh9Pqnugfr\",\"TranType\":\"Sale\",\"Total\":\"179.00\",\"CardNo\":\"xxxxxxxxxxxxxxxx\",\"CVV2Type\":\"1\",\"CVV2\":\"xxx\",\"ExpMonth\":\"xx\",\"ExpYear\":\"xx\",\"FirstName\":\"Amit\",\"LastName\":\"Kumar\",\"Email\":\"amitk5@yopmail.com\",\"Company\":\"Chetu\",\"Address\":\"noida\",\"City\":\"noida\",\"State\":\"UP\",\"RecurMethodID\":\"0\",\"Identifier\":\"1522722599\",\"Zip\":201301,\"RCRRecurAmount\":\"129.00\",\"RCRRecurs\":\"0\",\"RCRPeriod\":\"Monthly\",\"RCRChargeWhen\":\"OnDayOfCycle\",\"RCRStartOnDay\":\"05~03~2018\"}', '<html><body>\"YAPPROVED 010184\",\"AVS Match 9 Digit Zip and Address (X)\",\"CVV2 Match (M)\",\"507437\",\"20180402142823-080880-507437\",\"RecurID=9743\"</body></html>', '2018-04-03 02:29:59', '2018-04-03 02:30:12'),
(73, 1523155855, 323, 179, 'Test', 'Kumar', 2, 'Complete', 'Credit Card', '<html><body>YAPPROVED 912972', 508066, '20180407144916-080880-508066', 9764, '129.00', 0, NULL, NULL, '{\"ePNAccount\":\"080880\",\"Inv\":\"report\",\"RestrictKey\":\"yFqqXJh9Pqnugfr\",\"TranType\":\"Sale\",\"Total\":\"179.00\",\"CardNo\":\"xxxxxxxxxxxxxxxx\",\"CVV2Type\":\"1\",\"CVV2\":\"xxx\",\"ExpMonth\":\"xx\",\"ExpYear\":\"xx\",\"FirstName\":\"Test\",\"LastName\":\"Kumar\",\"Email\":\"test50@yopmail.com\",\"Company\":\"Microsoft\",\"Address\":\"noida\",\"City\":\"Noida\",\"State\":\"UP\",\"RecurMethodID\":\"0\",\"Identifier\":\"1523155855\",\"Zip\":44444,\"RCRRecurAmount\":\"129.00\",\"RCRRecurs\":\"0\",\"RCRPeriod\":\"Monthly\",\"RCRChargeWhen\":\"OnDayOfCycle\",\"RCRStartOnDay\":\"05~08~2018\"}', '<html><body>\"YAPPROVED 912972\",\"AVS Match 9 Digit Zip and Address (X)\",\"CVV2 Match (M)\",\"508066\",\"20180407144916-080880-508066\",\"RecurID=9764\"</body></html>', '2018-04-08 02:50:55', '2018-04-08 02:51:04'),
(74, 1523159199, 324, 349, 'Test51', 'Kumar', 3, 'Complete', 'Credit Card', '<html><body>YAPPROVED 610132', 508068, '20180407154459-080880-508068', 9765, '249.00', 0, NULL, NULL, '{\"ePNAccount\":\"080880\",\"Inv\":\"report\",\"RestrictKey\":\"yFqqXJh9Pqnugfr\",\"TranType\":\"Sale\",\"Total\":\"349.00\",\"CardNo\":\"xxxxxxxxxxxxxxxx\",\"CVV2Type\":\"1\",\"CVV2\":\"xxx\",\"ExpMonth\":\"xx\",\"ExpYear\":\"xx\",\"FirstName\":\"Test51\",\"LastName\":\"Kumar\",\"Email\":\"test51@yopmail.com\",\"Company\":\"Chetu India\",\"Address\":\"1344 Goucher ST\",\"City\":\"Pacific Palisades\",\"State\":\"CA\",\"RecurMethodID\":\"0\",\"Identifier\":\"1523159199\",\"Zip\":90272,\"RCRRecurAmount\":\"249.00\",\"RCRRecurs\":\"0\",\"RCRPeriod\":\"Monthly\",\"RCRChargeWhen\":\"OnDayOfCycle\",\"RCRStartOnDay\":\"04~08~2018\"}', '<html><body>\"YAPPROVED 610132\",\"AVS Match 9 Digit Zip and Address (X)\",\"CVV2 Match (M)\",\"508068\",\"20180407154459-080880-508068\",\"RecurID=9765\"</body></html>', '2018-04-08 03:46:39', '2018-04-08 03:46:48'),
(75, 1523159403, 325, 179, 'TEST52', 'Kumar', 2, 'Complete', 'Credit Card', '<html><body>YAPPROVED 110140', 508069, '20180407154824-080880-508069', 9766, '129.00', 0, NULL, NULL, '{\"ePNAccount\":\"080880\",\"Inv\":\"report\",\"RestrictKey\":\"yFqqXJh9Pqnugfr\",\"TranType\":\"Sale\",\"Total\":\"179.00\",\"CardNo\":\"xxxxxxxxxxxxxxxx\",\"CVV2Type\":\"1\",\"CVV2\":\"xxx\",\"ExpMonth\":\"xx\",\"ExpYear\":\"xx\",\"FirstName\":\"TEST52\",\"LastName\":\"Kumar\",\"Email\":\"test52@yopmail.com\",\"Company\":\"Chetu India\",\"Address\":\"1344 Goucher ST\",\"City\":\"Pacific Palisades\",\"State\":\"CA\",\"RecurMethodID\":\"0\",\"Identifier\":\"1523159403\",\"Zip\":90272,\"RCRRecurAmount\":\"129.00\",\"RCRRecurs\":\"0\",\"RCRPeriod\":\"Monthly\",\"RCRChargeWhen\":\"OnDayOfCycle\",\"RCRStartOnDay\":\"04~08~2018\"}', '<html><body>\"YAPPROVED 110140\",\"AVS Match 9 Digit Zip and Address (X)\",\"CVV2 Match (M)\",\"508069\",\"20180407154824-080880-508069\",\"RecurID=9766\"</body></html>', '2018-04-08 03:50:03', '2018-04-08 03:50:12'),
(76, 1523159563, 326, 349, 'Test53', 'Kumar', 3, 'Complete', 'Credit Card', '<html><body>YAPPROVED 015424', 508070, '20180407155104-080880-508070', 9767, '249.00', 0, NULL, NULL, '{\"ePNAccount\":\"080880\",\"Inv\":\"report\",\"RestrictKey\":\"yFqqXJh9Pqnugfr\",\"TranType\":\"Sale\",\"Total\":\"349.00\",\"CardNo\":\"xxxxxxxxxxxxxxxx\",\"CVV2Type\":\"1\",\"CVV2\":\"xxx\",\"ExpMonth\":\"xx\",\"ExpYear\":\"xx\",\"FirstName\":\"Test53\",\"LastName\":\"Kumar\",\"Email\":\"test53@yopmail.com\",\"Company\":\"Microsoft\",\"Address\":\"noida\",\"City\":\"Noida\",\"State\":\"UP\",\"RecurMethodID\":\"0\",\"Identifier\":\"1523159563\",\"Zip\":44444,\"RCRRecurAmount\":\"249.00\",\"RCRRecurs\":\"0\",\"RCRPeriod\":\"Monthly\",\"RCRChargeWhen\":\"OnDayOfCycle\",\"RCRStartOnDay\":\"04~08~2018\"}', '<html><body>\"YAPPROVED 015424\",\"AVS Match 9 Digit Zip and Address (X)\",\"CVV2 Match (M)\",\"508070\",\"20180407155104-080880-508070\",\"RecurID=9767\"</body></html>', '2018-04-08 03:52:43', '2018-04-08 03:52:53'),
(77, 1523159668, 327, 349, 'Test54', 'Kumar', 3, 'Pending', 'Credit Card', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '{\"ePNAccount\":\"080880\",\"Inv\":\"report\",\"RestrictKey\":\"yFqqXJh9Pqnugfr\",\"TranType\":\"Sale\",\"Total\":\"349.00\",\"CardNo\":\"xxxxxxxxxxxxxxxx\",\"CVV2Type\":\"1\",\"CVV2\":\"xxx\",\"ExpMonth\":\"xx\",\"ExpYear\":\"xx\",\"FirstName\":\"Test54\",\"LastName\":\"Kumar\",\"Email\":\"test54@yopmail.com\",\"Company\":\"Microsoft\",\"Address\":\"noida\",\"City\":\"Noida\",\"State\":\"UP\",\"RecurMethodID\":\"0\",\"Identifier\":\"1523159668\",\"Zip\":44444,\"RCRRecurAmount\":\"249.00\",\"RCRRecurs\":\"0\",\"RCRPeriod\":\"Monthly\",\"RCRChargeWhen\":\"OnDayOfCycle\",\"RCRStartOnDay\":\"04~08~2018\"}', '<html><body>\"UInvalid Card\"</body></html>', '2018-04-08 03:54:28', '2018-04-08 03:54:31'),
(78, 1523159702, 328, 349, 'Test54', 'Kumar', 3, 'Complete', 'Credit Card', '<html><body>YAPPROVED 196656', 508071, '20180407155322-080880-508071', 9768, '249.00', 0, NULL, NULL, '{\"ePNAccount\":\"080880\",\"Inv\":\"report\",\"RestrictKey\":\"yFqqXJh9Pqnugfr\",\"TranType\":\"Sale\",\"Total\":\"349.00\",\"CardNo\":\"xxxxxxxxxxxxxxxx\",\"CVV2Type\":\"1\",\"CVV2\":\"xxx\",\"ExpMonth\":\"xx\",\"ExpYear\":\"xx\",\"FirstName\":\"Test54\",\"LastName\":\"Kumar\",\"Email\":\"test54@yopmail.com\",\"Company\":\"Microsoft\",\"Address\":\"noida\",\"City\":\"Noida\",\"State\":\"UP\",\"RecurMethodID\":\"0\",\"Identifier\":\"1523159702\",\"Zip\":44444,\"RCRRecurAmount\":\"249.00\",\"RCRRecurs\":\"0\",\"RCRPeriod\":\"Monthly\",\"RCRChargeWhen\":\"OnDayOfCycle\",\"RCRStartOnDay\":\"04~08~2018\"}', '<html><body>\"YAPPROVED 196656\",\"AVS Match 9 Digit Zip and Address (X)\",\"CVV2 Match (M)\",\"508071\",\"20180407155322-080880-508071\",\"RecurID=9768\"</body></html>', '2018-04-08 03:55:02', '2018-04-08 03:55:10'),
(79, 1523159844, 329, 349, 'Test55', 'Kumar', 3, 'Complete', 'Credit Card', '<html><body>YAPPROVED 429832', 508072, '20180407155544-080880-508072', 9769, '249.00', 1, '2018-04-08', NULL, '{\"ePNAccount\":\"080880\",\"Inv\":\"report\",\"RestrictKey\":\"yFqqXJh9Pqnugfr\",\"TranType\":\"Sale\",\"Total\":\"349.00\",\"CardNo\":\"xxxxxxxxxxxxxxxx\",\"CVV2Type\":\"1\",\"CVV2\":\"xxx\",\"ExpMonth\":\"xx\",\"ExpYear\":\"xx\",\"FirstName\":\"Test55\",\"LastName\":\"Kumar\",\"Email\":\"test55@yopmail.com\",\"Company\":\"Chetu India\",\"Address\":\"1344 Goucher ST\",\"City\":\"Pacific Palisades\",\"State\":\"CA\",\"RecurMethodID\":\"0\",\"Identifier\":\"1523159844\",\"Zip\":90272,\"RCRRecurAmount\":\"249.00\",\"RCRRecurs\":\"0\",\"RCRPeriod\":\"Monthly\",\"RCRChargeWhen\":\"OnDayOfCycle\",\"RCRStartOnDay\":\"04~09~2018\"}', '<html><body>\"YAPPROVED 429832\",\"AVS Match 9 Digit Zip and Address (X)\",\"CVV2 Match (M)\",\"508072\",\"20180407155544-080880-508072\",\"RecurID=9769\"</body></html>', '2018-04-08 03:57:24', '2018-04-08 05:36:45'),
(80, 1523160130, 330, 349, 'Test51', 'Kumar', 3, 'Complete', 'Credit Card', '<html><body>YAPPROVED 028224', 508073, '20180407160031-080880-508073', 9770, '249.00', 1, '2018-04-08', NULL, '{\"ePNAccount\":\"080880\",\"Inv\":\"report\",\"RestrictKey\":\"yFqqXJh9Pqnugfr\",\"TranType\":\"Sale\",\"Total\":\"349.00\",\"CardNo\":\"xxxxxxxxxxxxxxxx\",\"CVV2Type\":\"1\",\"CVV2\":\"xxx\",\"ExpMonth\":\"xx\",\"ExpYear\":\"xx\",\"FirstName\":\"Test51\",\"LastName\":\"Kumar\",\"Email\":\"test56@yopmail.com\",\"Company\":\"Chetu India\",\"Address\":\"1344 Goucher ST\",\"City\":\"Pacific Palisades\",\"State\":\"CA\",\"RecurMethodID\":\"0\",\"Identifier\":\"1523160130\",\"Zip\":90272,\"RCRRecurAmount\":\"249.00\",\"RCRRecurs\":\"0\",\"RCRPeriod\":\"Monthly\",\"RCRChargeWhen\":\"OnDayOfCycle\",\"RCRStartOnDay\":\"04~09~2018\"}', '<html><body>\"YAPPROVED 028224\",\"AVS Match 9 Digit Zip and Address (X)\",\"CVV2 Match (M)\",\"508073\",\"20180407160031-080880-508073\",\"RecurID=9770\"</body></html>', '2018-04-08 04:02:10', '2018-04-08 05:23:30'),
(81, 1523162832, 331, 349, 'Test', 'Kumar', 3, 'Complete', 'Credit Card', '<html><body>YAPPROVED 306752', 508077, '20180407164532-080880-508077', 9771, '249.00', 1, '2018-04-08', NULL, '{\"ePNAccount\":\"080880\",\"Inv\":\"report\",\"RestrictKey\":\"yFqqXJh9Pqnugfr\",\"TranType\":\"Sale\",\"Total\":\"349.00\",\"CardNo\":\"xxxxxxxxxxxxxxxx\",\"CVV2Type\":\"1\",\"CVV2\":\"xxx\",\"ExpMonth\":\"xx\",\"ExpYear\":\"xx\",\"FirstName\":\"Test\",\"LastName\":\"Kumar\",\"Email\":\"test57@yopmail.com\",\"Company\":\"chetu\",\"Address\":\"C-467, Beta 1\",\"City\":\"Noida\",\"State\":\"UP\",\"RecurMethodID\":\"0\",\"Identifier\":\"1523162832\",\"Zip\":44444,\"RCRRecurAmount\":\"249.00\",\"RCRRecurs\":\"0\",\"RCRPeriod\":\"Monthly\",\"RCRChargeWhen\":\"OnDayOfCycle\",\"RCRStartOnDay\":\"04~08~2018\"}', '<html><body>\"YAPPROVED 306752\",\"AVS Match 9 Digit Zip and Address (X)\",\"CVV2 Match (M)\",\"508077\",\"20180407164532-080880-508077\",\"RecurID=9771\"</body></html>', '2018-04-08 04:47:12', '2018-04-08 05:09:36'),
(82, 1523166081, 332, 99, 'Test58', 'Kumar', 1, 'Complete', 'Credit Card', '<html><body>YAPPROVED 396900', 508087, '20180407173942-080880-508087', 9772, '49.00', 0, NULL, NULL, '{\"ePNAccount\":\"080880\",\"Inv\":\"report\",\"RestrictKey\":\"yFqqXJh9Pqnugfr\",\"TranType\":\"Sale\",\"Total\":\"99.00\",\"CardNo\":\"xxxxxxxxxxxxxxxx\",\"CVV2Type\":\"1\",\"CVV2\":\"xxx\",\"ExpMonth\":\"xx\",\"ExpYear\":\"xx\",\"FirstName\":\"Test58\",\"LastName\":\"Kumar\",\"Email\":\"test58@yopmail.com\",\"Company\":\"Microsoft\",\"Address\":\"C-467, Beta 1\",\"City\":\"Noida\",\"State\":\"UP\",\"RecurMethodID\":\"0\",\"Identifier\":\"1523166081\",\"Zip\":44444,\"RCRRecurAmount\":\"49.00\",\"RCRRecurs\":\"0\",\"RCRPeriod\":\"Monthly\",\"RCRChargeWhen\":\"OnDayOfCycle\",\"RCRStartOnDay\":\"04~08~2018\"}', '<html><body>\"YAPPROVED 396900\",\"AVS Match 9 Digit Zip and Address (X)\",\"CVV2 Match (M)\",\"508087\",\"20180407173942-080880-508087\",\"RecurID=9772\"</body></html>', '2018-04-08 05:41:21', '2018-04-08 05:41:30'),
(83, 1523166379, 333, 99, 'Test59', 'Kumar', 1, 'Complete', 'Credit Card', '<html><body>YAPPROVED 377664', 508088, '20180407174439-080880-508088', 9773, '49.00', 0, NULL, NULL, '{\"ePNAccount\":\"080880\",\"Inv\":\"report\",\"RestrictKey\":\"yFqqXJh9Pqnugfr\",\"TranType\":\"Sale\",\"Total\":\"99.00\",\"CardNo\":\"xxxxxxxxxxxxxxxx\",\"CVV2Type\":\"1\",\"CVV2\":\"xxx\",\"ExpMonth\":\"xx\",\"ExpYear\":\"xx\",\"FirstName\":\"Test59\",\"LastName\":\"Kumar\",\"Email\":\"test59@yopmail.com\",\"Company\":\"Microsoft\",\"Address\":\"noida\",\"City\":\"Noida\",\"State\":\"UP\",\"RecurMethodID\":\"0\",\"Identifier\":\"1523166379\",\"Zip\":44444,\"RCRRecurAmount\":\"49.00\",\"RCRRecurs\":\"0\",\"RCRPeriod\":\"Monthly\",\"RCRChargeWhen\":\"OnDayOfCycle\",\"RCRStartOnDay\":\"04~08~2018\"}', '<html><body>\"YAPPROVED 377664\",\"AVS Match 9 Digit Zip and Address (X)\",\"CVV2 Match (M)\",\"508088\",\"20180407174439-080880-508088\",\"RecurID=9773\"</body></html>', '2018-04-08 05:46:19', '2018-04-08 05:46:27'),
(84, 1523166464, 334, 99, 'Test', 'Kumar', 1, 'Complete', 'Credit Card', '<html><body>YAPPROVED 025156', 508089, '20180407174604-080880-508089', 9774, '49.00', 0, NULL, NULL, '{\"ePNAccount\":\"080880\",\"Inv\":\"report\",\"RestrictKey\":\"yFqqXJh9Pqnugfr\",\"TranType\":\"Sale\",\"Total\":\"99.00\",\"CardNo\":\"xxxxxxxxxxxxxxxx\",\"CVV2Type\":\"1\",\"CVV2\":\"xxx\",\"ExpMonth\":\"xx\",\"ExpYear\":\"xx\",\"FirstName\":\"Test\",\"LastName\":\"Kumar\",\"Email\":\"test62@yopmail.com\",\"Company\":\"Microsoft\",\"Address\":\"noida\",\"City\":\"Noida\",\"State\":\"UP\",\"RecurMethodID\":\"0\",\"Identifier\":\"1523166464\",\"Zip\":44444,\"RCRRecurAmount\":\"49.00\",\"RCRRecurs\":\"0\",\"RCRPeriod\":\"Monthly\",\"RCRChargeWhen\":\"OnDayOfCycle\",\"RCRStartOnDay\":\"04~08~2018\"}', '<html><body>\"YAPPROVED 025156\",\"AVS Match 9 Digit Zip and Address (X)\",\"CVV2 Match (M)\",\"508089\",\"20180407174604-080880-508089\",\"RecurID=9774\"</body></html>', '2018-04-08 05:47:44', '2018-04-08 05:47:52'),
(85, 1523166550, 335, 179, 'Test63', 'Kumar', 2, 'Complete', 'Credit Card', '<html><body>YAPPROVED 289916', 508090, '20180407174730-080880-508090', 9775, '129.00', 0, NULL, NULL, '{\"ePNAccount\":\"080880\",\"Inv\":\"report\",\"RestrictKey\":\"yFqqXJh9Pqnugfr\",\"TranType\":\"Sale\",\"Total\":\"179.00\",\"CardNo\":\"xxxxxxxxxxxxxxxx\",\"CVV2Type\":\"1\",\"CVV2\":\"xxx\",\"ExpMonth\":\"xx\",\"ExpYear\":\"xx\",\"FirstName\":\"Test63\",\"LastName\":\"Kumar\",\"Email\":\"test63@yopmail.com\",\"Company\":\"Microsoft\",\"Address\":\"noida\",\"City\":\"Noida\",\"State\":\"UP\",\"RecurMethodID\":\"0\",\"Identifier\":\"1523166550\",\"Zip\":44444,\"RCRRecurAmount\":\"129.00\",\"RCRRecurs\":\"0\",\"RCRPeriod\":\"Monthly\",\"RCRChargeWhen\":\"OnDayOfCycle\",\"RCRStartOnDay\":\"04~08~2018\"}', '<html><body>\"YAPPROVED 289916\",\"AVS Match 9 Digit Zip and Address (X)\",\"CVV2 Match (M)\",\"508090\",\"20180407174730-080880-508090\",\"RecurID=9775\"</body></html>', '2018-04-08 05:49:10', '2018-04-08 05:49:19');

-- --------------------------------------------------------

--
-- Table structure for table `payment_details`
--

CREATE TABLE `payment_details` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `payment_type` varchar(50) NOT NULL,
  `card_num` int(16) NOT NULL,
  `expiry_date` varchar(50) NOT NULL,
  `security_code` varchar(5) NOT NULL,
  `card_holder_name` varchar(50) NOT NULL,
  `created` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `personal_site_reviews`
--

CREATE TABLE `personal_site_reviews` (
  `id` int(11) NOT NULL,
  `ratings` int(5) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `comment` text NOT NULL,
  `completion_date` date NOT NULL,
  `created` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `plans`
--

CREATE TABLE `plans` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `amt` decimal(10,2) NOT NULL DEFAULT '0.00',
  `setup_fee` decimal(10,2) NOT NULL DEFAULT '0.00',
  `created` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `plans`
--

INSERT INTO `plans` (`id`, `name`, `amt`, `setup_fee`, `created`, `modified`) VALUES
(1, 'Power', '49.00', '50.00', '2017-10-13 15:10:10', '2017-10-13 15:10:10'),
(2, 'Power Plus', '129.00', '50.00', '2017-10-13 15:10:10', '2017-10-13 15:10:10'),
(3, 'Ultimate Power', '249.00', '100.00', '2017-10-13 15:10:10', '2017-10-13 15:10:10');

-- --------------------------------------------------------

--
-- Table structure for table `plan_features`
--

CREATE TABLE `plan_features` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `created` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `plan_features`
--

INSERT INTO `plan_features` (`id`, `name`, `created`, `modified`) VALUES
(1, '1 User Account', '2017-10-13 15:10:10', '2017-10-13 15:10:10'),
(2, '5 star rating system', '2017-10-13 15:10:10', '2017-10-13 15:10:10'),
(3, 'Auto review requests', '2017-10-13 15:10:10', '2017-10-13 15:10:10'),
(4, 'Real time alerts', '2017-10-13 15:10:10', '2017-10-13 15:10:10'),
(5, 'Auto email reminders', '2017-10-13 15:10:10', '2017-10-13 15:10:10'),
(6, 'At a glance analysis', '2017-10-13 15:10:10', '2017-10-13 15:10:10'),
(7, 'Web review widgets', '2017-10-13 15:10:10', '2017-10-13 15:10:10'),
(8, 'Free tech support', '2017-10-13 15:10:10', '2017-10-13 15:10:10'),
(9, 'Custom branded', '2017-10-13 15:10:10', '2017-10-13 15:10:10'),
(10, 'Full device optimization', '2017-10-13 15:10:10', '2017-10-13 15:10:10'),
(11, 'Review request button on your website and emails', '2017-10-13 15:10:10', '2017-10-13 15:10:10'),
(12, 'Up to 10 User Accounts', '2017-10-13 15:10:10', '2017-10-13 15:10:10'),
(13, 'Up to 5 customized surveys/reviews', '2017-10-13 15:10:10', '2017-10-13 15:10:10'),
(14, 'Individual account branding', '2017-10-13 15:10:10', '2017-10-13 15:10:10'),
(15, 'Up to 25 User Accounts', '2017-10-13 15:10:10', '2017-10-13 15:10:10'),
(16, 'Individual custom branding', '2017-10-13 15:10:10', '2017-10-13 15:10:10'),
(17, 'Up to 25 customized surveys and reviews', '2017-10-13 15:10:10', '2017-10-13 15:10:10'),
(18, 'Text integration', '2017-10-13 15:10:10', '2017-10-13 15:10:10'),
(19, 'Review analysis', '2017-10-13 15:10:10', '2017-10-13 15:10:10'),
(20, 'Free Microsite', '2017-10-13 15:10:10', '2017-10-13 15:10:10');

-- --------------------------------------------------------

--
-- Table structure for table `plan_features_xref`
--

CREATE TABLE `plan_features_xref` (
  `id` int(11) NOT NULL,
  `plan_id` int(11) NOT NULL,
  `plan_features_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `plan_features_xref`
--

INSERT INTO `plan_features_xref` (`id`, `plan_id`, `plan_features_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 1, 5),
(6, 1, 6),
(7, 1, 7),
(8, 1, 8),
(9, 1, 9),
(10, 1, 10),
(11, 1, 11),
(12, 2, 13),
(13, 2, 2),
(14, 2, 3),
(15, 2, 4),
(16, 2, 5),
(17, 2, 6),
(18, 2, 7),
(19, 2, 8),
(20, 2, 9),
(21, 2, 10),
(22, 2, 11),
(23, 2, 12),
(24, 2, 14),
(25, 3, 15),
(26, 3, 2),
(27, 3, 3),
(28, 3, 4),
(29, 3, 5),
(30, 3, 6),
(31, 3, 7),
(32, 3, 8),
(33, 3, 9),
(34, 3, 10),
(35, 3, 11),
(36, 3, 15),
(37, 3, 16),
(38, 3, 17),
(39, 3, 18),
(40, 3, 19),
(41, 3, 20);

-- --------------------------------------------------------

--
-- Table structure for table `post_rating`
--

CREATE TABLE `post_rating` (
  `rating_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `rating_number` int(11) NOT NULL,
  `total_points` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1 = Block, 0 = Unblock',
  `created` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `profile_images`
--

CREATE TABLE `profile_images` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `img_url` varchar(500) DEFAULT NULL,
  `business_img_url` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `profile_images`
--

INSERT INTO `profile_images` (`id`, `user_id`, `img_url`, `business_img_url`) VALUES
(1, 11, 'user_img_11.jpg', 'company_img_11.jpg'),
(8, 170, 'user_img_170.jpg', 'company_img_170.jpg'),
(9, 172, 'user_img_172.png', ''),
(10, 177, '', NULL),
(11, 182, 'user_img_182.jpg', 'company_img_182.png'),
(12, 185, 'user_img_185.jpg', 'company_img_185.jpg'),
(13, 202, 'user_img_202.jpg', 'company_img_202.png'),
(14, 214, 'user_img_214.jpg', NULL),
(15, 215, 'user_img_215.jpg', NULL),
(16, 218, 'user_img_218.png', 'company_img_218.png'),
(17, 223, NULL, 'company_img_223.jpg'),
(18, 229, 'user_img_229.jpg', 'company_img_229.png'),
(19, 234, NULL, 'company_img_234.jpg'),
(20, 232, 'user_img_232.jpg', 'company_img_232.png'),
(21, 262, 'user_img_262.jpg', 'company_img_262.png'),
(22, 270, '', NULL),
(23, 289, 'user_img_289.jpg', NULL),
(24, 301, NULL, ''),
(25, 302, 'user_img_302.jpg', 'company_img_302.png');

-- --------------------------------------------------------

--
-- Table structure for table `reviews_mgmt`
--

CREATE TABLE `reviews_mgmt` (
  `id` int(11) NOT NULL,
  `recipient_first_name` varchar(50) NOT NULL,
  `recipient_last_name` varchar(50) NOT NULL,
  `recipient_email` varchar(50) DEFAULT NULL,
  `recipient_phone` varchar(20) DEFAULT NULL,
  `send_type` varchar(50) NOT NULL,
  `survey_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '1',
  `user_action` int(1) DEFAULT NULL COMMENT '1=Google Review,2=Facebook Review,3=Yelp Review,4=PowerTest Review,5=Survey,6=Realtor Review,7=Zillow Review,8=AngiesList Review,9=BBB Review',
  `ratings` int(5) DEFAULT NULL,
  `survey_done` int(1) NOT NULL DEFAULT '1' COMMENT '1=Sent, 2=Complete, 3=Pending Survey',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0=>not delete, 1=> delete',
  `first_reminder_dt` date DEFAULT '0000-00-00',
  `first_reminder_send` int(1) NOT NULL DEFAULT '0',
  `second_reminder_dt` date DEFAULT '0000-00-00',
  `second_reminder_send` int(1) NOT NULL DEFAULT '0',
  `created` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reviews_mgmt`
--

INSERT INTO `reviews_mgmt` (`id`, `recipient_first_name`, `recipient_last_name`, `recipient_email`, `recipient_phone`, `send_type`, `survey_id`, `user_id`, `sender_id`, `status`, `user_action`, `ratings`, `survey_done`, `is_deleted`, `first_reminder_dt`, `first_reminder_send`, `second_reminder_dt`, `second_reminder_send`, `created`, `modified`) VALUES
(116, 'Dharm', 'Singh', 'dharms2@chetu.com', '123-456-7890', '', 4, 11, 0, 1, 4, NULL, 2, 0, NULL, 0, NULL, 0, '2017-11-21 18:13:20', '2017-11-21 18:13:52'),
(117, 'Dharm', 'Singh', 'dharms2@chetu.com', '123-456-7890', '', 14, 11, 0, 1, 4, 5, 2, 0, NULL, 0, NULL, 0, '2017-11-21 18:14:41', '2017-11-21 18:15:23'),
(118, 'Dharm', 'Singh', 'dharms2@chetu.com', '123-456-7890', '', 14, 11, 0, 1, 4, 5, 2, 0, NULL, 0, NULL, 0, '2017-11-21 18:15:50', '2017-11-21 18:16:19'),
(119, 'Dharm', 'Singh', 'dharms2@chetu.com', '123-456-7890', '', 14, 11, 0, 1, 4, 4, 2, 0, NULL, 0, NULL, 0, '2017-11-21 18:16:41', '2017-11-21 18:17:17'),
(120, 'Dharm', 'Singh', 'dharms2@chetu.com', '123-456-7890', '', 14, 11, 0, 1, 4, 4, 2, 0, NULL, 0, NULL, 0, '2017-11-21 18:18:00', '2017-11-21 18:18:29'),
(121, 'Dharm', 'Singh', 'dharm@yopmail.com', '123-456-7890', '', 14, 11, 0, 1, 4, 5, 2, 0, NULL, 0, NULL, 0, '2017-11-22 23:52:04', '2017-11-22 23:52:52'),
(122, 'Brandon', 'Thorud', 'Brandon@partnersre.com', '123-456-7890', '', 17, 170, 0, 1, 4, 5, 2, 0, NULL, 0, NULL, 0, '2017-11-24 09:07:20', '2017-11-27 09:39:22'),
(123, 'Dharm', 'Singh', 'abhiipure1289@gmail.com', '123-456-7890', '', 14, 11, 0, 1, 4, 5, 2, 0, NULL, 0, NULL, 0, '2017-11-24 23:40:45', '2017-11-25 18:44:40'),
(124, 'Brandon', 'Thorud', 'brandon@partnersre.com', '123-456-7890', '', 17, 170, 0, 1, 4, 5, 2, 0, NULL, 0, NULL, 0, '2017-12-01 06:28:40', '2017-12-01 06:29:44'),
(125, 'donald', 'duck', 'brandon@partnersre.com', '123-456-7890', '', 17, 170, 0, 1, NULL, NULL, 1, 0, NULL, 0, NULL, 0, '2017-12-01 06:45:36', '2017-12-01 06:45:36'),
(126, 'Dharm', 'Singh', 'dharms2@chetu.com', '123-456-7890', '', 14, 11, 0, 1, 2, 5, 2, 0, NULL, 0, NULL, 0, '2017-12-02 19:14:54', '2017-12-02 19:19:18'),
(127, 'Dharm', 'Singh', 'dharms2@chetu.com', '123-456-7890', '', 4, 11, 0, 1, 4, NULL, 2, 0, NULL, 0, NULL, 0, '2017-12-02 19:20:17', '2017-12-02 19:20:40'),
(128, 'sandeep', 'mishra', 'sandeepm@yopmail.com', '123-456-7890', '', 22, 11, 0, 1, 4, 4, 2, 0, NULL, 0, NULL, 0, '2017-12-02 22:12:33', '2017-12-02 22:13:14'),
(129, 'ajay', 'kumar', 'ajayk@yopmail.com', '123-456-7890', '', 22, 11, 0, 1, 2, 5, 3, 0, NULL, 0, NULL, 0, '2017-12-02 22:15:37', '2017-12-02 22:21:16'),
(130, 'neeraj', 'kumar', 'neerajk@yopmail.com', '123-456-7890', '', 22, 11, 0, 1, 4, 4, 2, 0, NULL, 0, NULL, 0, '2017-12-02 22:26:42', '2017-12-02 22:27:29'),
(131, 'varun', 'kumar', 'varunk@yopmail.com', '123-456-7890', '', 22, 11, 0, 1, 4, 3, 3, 0, NULL, 0, NULL, 0, '2017-12-02 22:28:44', '2017-12-02 22:29:02'),
(132, 'tset', 'user', 'test@yopmail.com', '123-456-7890', '', 23, 172, 0, 1, 4, 4, 2, 0, NULL, 0, NULL, 0, '2017-12-02 22:29:55', '2017-12-02 22:31:25'),
(133, 'kumar', 'varma', 'kumarv@yopmail.com', '123-456-7890', '', 24, 11, 0, 1, 2, 5, 3, 0, NULL, 0, NULL, 0, '2017-12-02 22:30:39', '2017-12-04 16:40:06'),
(134, 'test', 'user', 'test@yopmail.com', '123-456-7890', '', 25, 172, 0, 1, 4, 5, 3, 0, NULL, 0, NULL, 0, '2017-12-02 22:34:02', '2017-12-02 22:34:27'),
(135, 'Sumit', 'kumar', 'sumitk@yopmail.com', '123-456-7890', '', 26, 172, 0, 1, 4, 3, 2, 0, NULL, 0, NULL, 0, '2017-12-02 23:53:50', '2017-12-02 23:57:37'),
(136, 'Sumit', 'kumar', 'sumitk@yopmail.com', '123-456-7890', '', 26, 172, 0, 1, NULL, NULL, 1, 0, NULL, 0, NULL, 0, '2017-12-02 23:55:28', '2017-12-02 23:55:28'),
(137, 'Sumit', 'kumar', 'sumitk@yopmail.com', '123-456-7890', '', 25, 172, 0, 1, 4, 4, 2, 0, NULL, 0, NULL, 0, '2017-12-03 00:02:49', '2017-12-03 00:03:14'),
(138, 'Sumit', 'kumar', 'sumitk@yopmail.com', '123-456-7890', '', 23, 172, 0, 1, 4, 4, 2, 0, NULL, 0, NULL, 0, '2017-12-03 00:03:42', '2017-12-03 00:04:05'),
(139, 'Brandon', 'Thorud', 'Brandon@partnersre.com', '123-456-7890', '', 17, 170, 0, 1, 4, 5, 3, 0, NULL, 0, NULL, 0, '2017-12-03 03:06:30', '2017-12-05 01:30:12'),
(140, 'Brandon', 'Thorud', 'Brandon@partnersre.com', '123-456-7890', '', 17, 170, 0, 1, 3, 5, 2, 0, NULL, 0, NULL, 0, '2017-12-03 03:11:14', '2017-12-03 03:12:25'),
(141, 'Brandon', 'Thorud', 'Brandon@partnersre.com', '123-456-7890', '', 17, 170, 0, 1, 4, 3, 3, 0, NULL, 0, NULL, 0, '2017-12-03 04:32:44', '2017-12-03 04:35:32'),
(142, 'Brandon', 'Thorud', 'Brandon@partnersre.com', '123-456-7890', '', 17, 170, 0, 1, 2, 5, 2, 0, NULL, 0, NULL, 0, '2017-12-03 04:32:49', '2017-12-03 04:33:40'),
(143, 'test', 'haldher', 'meena@yopmail.com', '123-456-7890', '', 28, 11, 0, 1, 4, 5, 3, 0, NULL, 0, NULL, 0, '2017-12-04 18:50:20', '2017-12-04 18:50:45'),
(144, 'Test', 'Moldovan', 'meena@yopmail.com', '123-456-7890', '', 28, 11, 0, 1, 7, 5, 3, 0, NULL, 0, NULL, 0, '2017-12-04 18:52:07', '2017-12-04 18:52:30'),
(145, 'Sumit', 'kumar', 'sumitk@yopmail.com', '123-456-7890', '', 23, 172, 0, 1, 7, 5, 2, 0, NULL, 0, NULL, 0, '2017-12-04 19:21:49', '2017-12-04 19:23:06'),
(146, 'Sumit', 'test', 'sumitk@yopmail.com', '123-456-7890', '', 29, 172, 0, 1, 1, 5, 2, 0, NULL, 0, NULL, 0, '2017-12-04 19:26:56', '2017-12-04 19:27:18'),
(147, 'test', 'teee', 'sumitk@yopmail.com', '123-456-7890', '', 29, 172, 0, 1, 7, 5, 2, 0, NULL, 0, NULL, 0, '2017-12-04 19:29:07', '2017-12-04 19:29:21'),
(148, 'Sanda', 'Moldovan', 'test@yopmail.com', '123-456-7890', '', 28, 11, 0, 1, 7, 5, 2, 0, NULL, 0, NULL, 0, '2017-12-04 19:55:30', '2017-12-04 19:56:00'),
(149, 'meena', 'Admin', 'meena@yopmail.com', '123-456-7890', '', 28, 11, 0, 1, 4, 3, 2, 0, NULL, 0, NULL, 0, '2017-12-04 20:06:31', '2017-12-04 20:06:49'),
(150, 'meena', 'Admin', 'meena@yopmail.com', '123-456-7890', '', 28, 11, 0, 1, 4, 2, 2, 0, NULL, 0, NULL, 0, '2017-12-04 20:08:18', '2017-12-04 20:08:53'),
(151, 'meena', 'Singh', 'meena@yopmail.com', '123-456-7890', '', 28, 11, 0, 1, 4, 3, 2, 0, NULL, 0, NULL, 0, '2017-12-04 21:09:23', '2017-12-04 21:13:10'),
(152, 'Sanda', 'Moldovan', 'meena@yopmail.com', '123-456-7890', '', 28, 11, 0, 1, 4, 3, 3, 0, NULL, 0, NULL, 0, '2017-12-04 21:13:40', '2017-12-04 21:13:51'),
(153, 'meena', 'Moldovan', 'meena@yopmail.com', '123-456-7890', '', 28, 11, 0, 1, 4, 3, 2, 0, NULL, 0, NULL, 0, '2017-12-04 23:52:58', '2017-12-04 23:53:18'),
(154, 'Brandon', 'Thorud', 'brandon@partnersre.com', '123-456-7890', '', 17, 170, 0, 1, 2, 5, 2, 0, NULL, 0, NULL, 0, '2017-12-05 00:04:44', '2017-12-05 00:05:21'),
(155, 'brandon', 'Thorud', 'brandon@partnersre.com', '123-456-7890', '', 17, 170, 0, 1, 1, 5, 2, 0, NULL, 0, NULL, 0, '2017-12-05 00:18:48', '2017-12-05 00:19:17'),
(156, 'sam', 'kumar', 'sam@yopmail.com', '123-456-7890', '', 53, 184, 0, 1, 4, 3, 2, 0, NULL, 0, NULL, 0, '2017-12-05 00:55:23', '2017-12-05 00:57:26'),
(157, 'Brandon', 'Thorud', 'Brandon@partnersre.com', '123-456-7890', '', 54, 185, 0, 1, 4, 5, 3, 0, NULL, 0, NULL, 0, '2017-12-05 02:04:15', '2017-12-05 04:46:43'),
(158, 'Brandon', 'Thorud', 'Brandon@partnersre.com', '123-456-7890', '', 54, 185, 0, 1, 4, 3, 3, 0, NULL, 0, NULL, 0, '2017-12-05 04:50:35', '2017-12-05 04:51:00'),
(159, 'test', 'test', 'test@yopmail.com', '123-456-7890', '', 27, 170, 0, 1, 4, NULL, 2, 0, NULL, 0, NULL, 0, '2017-12-05 23:49:31', '2017-12-05 23:52:49'),
(160, 'test', 'test', 'test@yopmail.com', '123-456-7890', '', 17, 170, 0, 1, 7, 5, 3, 0, NULL, 0, NULL, 0, '2017-12-05 23:54:26', '2017-12-05 23:55:19'),
(161, 'Brandon', 'Thorud', 'Brandon@partnersre.com', '123-456-7890', '', 54, 185, 0, 1, 4, 5, 3, 0, NULL, 0, NULL, 0, '2017-12-06 02:15:23', '2017-12-06 02:29:12'),
(162, 'Brandon', 'Thorud', 'Brandon@partnersre.com', '123-456-7890', '', 54, 185, 0, 1, 4, 5, 3, 0, NULL, 0, NULL, 0, '2017-12-06 02:35:47', '2017-12-06 02:36:08'),
(163, 'Brandon', 'Thorud', 'Brandon@partnersre.com', '123-456-7890', '', 54, 185, 0, 1, 4, 5, 3, 0, NULL, 0, NULL, 0, '2017-12-06 02:41:20', '2017-12-06 02:42:21'),
(164, 'Dharm', 'Singh', 'dharms2@chetu.com', '123-456-7890', '', 56, 187, 0, 1, 7, 5, 2, 0, NULL, 0, NULL, 0, '2017-12-06 16:40:09', '2017-12-06 18:20:40'),
(165, 'Dharm', 'Singh', 'dharms2@chetu.com', '123-456-7890', '', 57, 199, 0, 1, 3, 5, 2, 0, NULL, 0, NULL, 0, '2017-12-06 21:53:33', '2017-12-06 21:54:03'),
(166, 'Dharm', 'Singh', 'dharms2@chetu.com', '123-456-7890', '', 58, 200, 0, 1, 3, 5, 3, 0, NULL, 0, NULL, 0, '2017-12-06 23:16:46', '2017-12-06 23:18:23'),
(167, 'Dharm', 'Singh', 'dharm@yopmail.com', '123-456-7890', '', 59, 201, 0, 1, 1, 5, 3, 0, NULL, 0, NULL, 0, '2017-12-07 00:04:24', '2017-12-11 21:01:27'),
(168, 'test', 'Admin', 'test@yopmail.com', '123-456-7890', '', 29, 172, 0, 1, 4, 4, 2, 0, NULL, 0, NULL, 0, '2017-12-07 00:53:31', '2017-12-07 00:54:08'),
(169, 'Brandon', 'Thorud', 'Brandon@partnersre.com', '123-456-7890', '', 54, 185, 0, 1, 3, 5, 3, 0, NULL, 0, NULL, 0, '2017-12-07 01:44:36', '2017-12-09 00:47:05'),
(170, 'Brandon', 'Thorud', 'Brandon@partnersre.com', '123-456-7890', '', 54, 185, 0, 1, 4, 5, 3, 0, NULL, 0, NULL, 0, '2017-12-07 01:46:36', '2017-12-09 00:47:05'),
(171, 'dharm', 'dev', 'dharmdevg@yopmail.com', '123-456-7890', '', 60, 202, 0, 1, 4, 4, 2, 0, NULL, 0, NULL, 0, '2017-12-07 20:45:33', '2017-12-07 20:48:41'),
(172, 'prashant', 'mishra', 'prashantmishra@yopmail.com', '123-456-7890', '', 61, 202, 0, 1, 4, 2, 2, 0, NULL, 0, NULL, 0, '2017-12-07 20:46:24', '2017-12-07 20:49:43'),
(173, 'bikash', 'rout', 'bikashrout@yopmail.com', '123-456-7890', '', 62, 202, 0, 1, 4, 4, 2, 0, NULL, 0, NULL, 0, '2017-12-07 20:47:08', '2017-12-07 20:50:09'),
(174, 'dd', 'gg', 'dharmg@yopmail.com', '123-456-7890', '', 63, 202, 0, 1, 3, 5, 2, 0, NULL, 0, NULL, 0, '2017-12-07 20:47:48', '2017-12-07 20:52:52'),
(175, 'dharm', 'gangwar', 'dharmdevg@yopmail.com', '123-456-7890', '', 61, 202, 0, 1, 3, 5, 2, 0, NULL, 0, NULL, 0, '2017-12-07 20:54:41', '2017-12-07 20:55:06'),
(176, 'bikash', 'rout', 'bikashrout@yopmail.com', '123-456-7890', '', 61, 202, 0, 1, 4, 1, 2, 0, NULL, 0, NULL, 0, '2017-12-07 20:55:54', '2017-12-07 20:58:27'),
(177, 'dhar', 'gangwar', 'dharmdevg@yopmail.com', '123-456-7890', '', 65, 203, 0, 1, 4, NULL, 2, 0, NULL, 0, NULL, 0, '2017-12-07 21:31:01', '2017-12-07 21:31:34'),
(178, 'Dharm', 'Singh', 'dharms2@chetu.com', '123-456-7890', '', 66, 204, 0, 1, 2, 5, 2, 0, NULL, 0, NULL, 0, '2017-12-07 21:46:07', '2017-12-07 21:47:44'),
(179, 'dharm', 'gang', 'dharmdevg@yopmail.com', '123-456-7890', '', 61, 205, 0, 1, 4, 5, 3, 0, NULL, 0, NULL, 0, '2017-12-07 23:51:14', '2017-12-09 00:16:29'),
(180, 'brandon', 'thorud', 'brandon@partnersre.com', '123-456-7890', '', 17, 170, 0, 1, 3, 5, 3, 0, NULL, 0, NULL, 0, '2017-12-08 01:24:57', '2017-12-08 01:27:10'),
(181, 'brandon', 'Thorud', 'brandon@partnersre.com', '123-456-7890', '', 54, 185, 0, 1, 3, 5, 3, 0, NULL, 0, NULL, 0, '2017-12-08 01:55:56', '2017-12-09 00:47:03'),
(182, 'Dharm', 'Singh', 'dharms2@chetu.com', '123-456-7890', '', 4, 212, 0, 1, NULL, NULL, 1, 0, NULL, 0, NULL, 0, '2017-12-08 19:22:19', '2017-12-08 19:22:19'),
(183, 'Dharm', 'Singh', 'dharms2@chetu.com', '123-456-7890', '', 4, 212, 0, 1, NULL, NULL, 1, 0, NULL, 0, NULL, 0, '2017-12-08 19:23:26', '2017-12-08 19:23:26'),
(184, 'Dharm', 'Singh', 'dharms2@chetu.com', '123-456-7890', '', 4, 212, 0, 1, NULL, NULL, 1, 0, NULL, 0, NULL, 0, '2017-12-08 19:25:07', '2017-12-08 19:25:07'),
(185, 'Dharm', 'Singh', 'dharms2@chetu.com', '123-456-7890', '', 4, 212, 0, 1, NULL, NULL, 1, 0, NULL, 0, NULL, 0, '2017-12-08 19:26:06', '2017-12-08 19:26:06'),
(186, 'Dharm', 'Singh', 'dharms2@chetu.com', '123-456-7890', '', 4, 212, 0, 1, NULL, NULL, 1, 0, NULL, 0, NULL, 0, '2017-12-08 19:30:14', '2017-12-08 19:30:14'),
(187, 'test', 'Admin', 'test@yopmail.com', '123-456-7890', '', 4, 11, 0, 1, 4, NULL, 2, 0, NULL, 0, NULL, 0, '2017-12-09 00:04:55', '2017-12-09 00:05:40'),
(188, 'Company', 'Admin', 'test@yopmail.com', '123-456-7890', '', 14, 11, 0, 1, NULL, NULL, 1, 0, NULL, 0, NULL, 0, '2017-12-09 00:06:28', '2017-12-09 00:06:28'),
(189, 'Company', 'Admin', 'test@yopmail.com', '123-456-7890', '', 14, 11, 0, 1, 4, 3, 2, 0, NULL, 0, NULL, 0, '2017-12-09 00:06:59', '2017-12-09 00:07:27'),
(190, 'Ankita', 'Sharma', 'ankitas@yopmail.com', '123-456-7890', '', 68, 11, 0, 1, 4, 3, 3, 0, NULL, 0, NULL, 0, '2017-12-09 00:32:33', '2017-12-09 00:33:05'),
(191, 'Deepak', 'bharti', 'deepakb@yopmail.com', '123-456-7890', '', 68, 11, 0, 1, 7, 5, 3, 0, NULL, 0, NULL, 0, '2017-12-09 00:37:12', '2017-12-09 00:39:06'),
(192, 'Brandon', 'Thorud', 'Brandon@partnersre.com', '123-456-7890', '', 54, 185, 0, 1, NULL, NULL, 1, 0, NULL, 0, NULL, 0, '2017-12-09 00:48:21', '2017-12-09 00:48:21'),
(193, 'Brandon', 'Thorud', 'Brandon@partnersre.com', '123-456-7890', '', 54, 185, 0, 1, 4, 5, 3, 0, NULL, 0, NULL, 0, '2017-12-09 00:49:22', '2017-12-13 01:46:21'),
(194, 'Manan', 'kumar', 'manans@chetu.com', '123-456-7890', '', 70, 218, 0, 1, 4, NULL, 3, 0, NULL, 0, NULL, 0, '2017-12-09 02:20:02', '2017-12-09 02:20:46'),
(195, 'dharm', 'singh', 'dharms2@chetu.com', '123-456-7890', '', 70, 218, 0, 1, 4, NULL, 2, 0, NULL, 0, NULL, 0, '2017-12-09 02:25:35', '2017-12-09 02:27:05'),
(196, 'Manan', 'singh', 'manans@chetu.com', '123-456-7890', '', 70, 218, 0, 1, NULL, NULL, 1, 0, NULL, 0, NULL, 0, '2017-12-09 02:30:24', '2017-12-09 02:30:24'),
(197, 'Gaurav', 'Sharma', 'gauravs@chetu.com', '123-456-7890', '', 17, 170, 0, 1, 4, 3, 2, 0, NULL, 0, NULL, 0, '2017-12-09 03:05:40', '2017-12-09 03:09:41'),
(198, 'vipin', 'kumar', 'vipink5@chetu.com', '123-456-7890', '', 70, 218, 0, 1, NULL, NULL, 1, 0, NULL, 0, NULL, 0, '2017-12-09 03:38:50', '2017-12-09 03:38:50'),
(199, 'vipin', 'kumar', 'vipink5@chetu.com', '123-456-7890', '', 70, 218, 0, 1, 4, NULL, 3, 0, NULL, 0, NULL, 0, '2017-12-09 03:40:11', '2017-12-09 03:47:18'),
(200, 'Manan', 'kumar', 'manans@chetu.com', '123-456-7890', '', 70, 218, 0, 1, 4, NULL, 2, 0, NULL, 0, NULL, 0, '2017-12-09 03:50:49', '2017-12-09 03:51:24'),
(201, 'Dharm', 'Singh', 'dharms2@chetu.com', '123-456-7890', '', 71, 221, 0, 1, 1, 5, 3, 0, NULL, 0, NULL, 0, '2017-12-09 04:21:47', '2017-12-11 15:46:39'),
(202, 'Brandon', 'Thorud', 'brandon@partnersre.com', '123-456-7890', '', 17, 170, 0, 1, 3, 5, 2, 0, NULL, 0, NULL, 0, '2017-12-09 04:31:47', '2017-12-09 05:01:00'),
(203, 'amit', 'Kumar', 'amit11@yopmail.com', '123-456-7890', '', 17, 170, 0, 1, 3, 5, 2, 0, NULL, 0, NULL, 0, '2017-12-09 04:57:57', '2017-12-09 05:00:21'),
(204, 'Test', 'Test', 'test@yopmail.com', '123-456-7890', '', 14, 11, 0, 1, 4, 3, 2, 0, NULL, 0, NULL, 0, '2017-12-11 20:26:12', '2017-12-11 20:28:36'),
(205, 'Test', 'User', 'test@yopmail.com', '123-456-7890', '', 4, 11, 0, 1, 4, NULL, 3, 0, NULL, 0, NULL, 0, '2017-12-11 20:40:33', '2017-12-11 20:40:44'),
(206, 'Test', 'User', 'test@yopmail.com', '123-456-7890', '', 4, 11, 0, 1, 4, NULL, 2, 0, NULL, 0, NULL, 0, '2017-12-11 20:52:04', '2017-12-11 20:54:53'),
(207, 'Test', 'User', 'test@yopmail.com', '123-456-7890', '', 28, 11, 0, 1, NULL, NULL, 1, 0, NULL, 0, NULL, 0, '2017-12-11 20:55:29', '2017-12-11 20:55:29'),
(208, 'Test', 'User', 'test@yopmail.com', '123-456-7890', '', 28, 11, 0, 1, NULL, NULL, 1, 0, NULL, 0, NULL, 0, '2017-12-11 20:57:34', '2017-12-11 20:57:34'),
(209, 'Dharm', 'Singh', 'dharm@yopmail.com', '123-456-7890', '', 14, 11, 0, 1, NULL, NULL, 1, 0, NULL, 0, NULL, 0, '2017-12-11 21:00:57', '2017-12-11 21:00:57'),
(210, 'Dharm', 'Singh', 'dharm@yopmail.com', '123-456-7890', '', 4, 11, 0, 1, 4, NULL, 3, 0, NULL, 0, NULL, 0, '2017-12-11 21:02:27', '2017-12-11 21:02:36'),
(211, 'Test', 'User', 'test@yopmail.com', '123-456-7890', '', 28, 11, 0, 1, NULL, NULL, 1, 0, NULL, 0, NULL, 0, '2017-12-11 21:03:39', '2017-12-11 21:03:39'),
(212, 'brandon', 'thorud', 'brandon@partnersre.com', '123-456-7890', '', 17, 170, 0, 1, 3, 5, 3, 0, NULL, 0, NULL, 0, '2017-12-12 23:18:26', '2017-12-13 01:48:22'),
(213, 'Jeff', 'Kropp', 'jeff.kropp@gmail.com', '123-456-7890', '', 17, 170, 0, 1, NULL, NULL, 1, 0, NULL, 0, NULL, 0, '2017-12-12 23:45:03', '2017-12-12 23:45:03'),
(214, 'Jeff', 'Kropp', 'jeff.kropp@gmail.com', '123-456-7890', '', 17, 170, 0, 1, NULL, NULL, 1, 1, NULL, 0, NULL, 0, '2017-12-12 23:45:35', '2018-01-11 03:49:23'),
(215, 'Arpit', 'Gupta', 'dharm@yopmail.com', '123-456-7890', '', 14, 11, 0, 1, 3, 5, 2, 0, NULL, 0, NULL, 0, '2017-12-13 13:16:51', '2017-12-13 13:26:24'),
(216, 'sumit', 'kumar', 'sumit@yopmail.com', '000-000-0000', 'email', 70, 219, 0, 1, NULL, NULL, 1, 0, NULL, 0, NULL, 0, '2017-12-14 03:05:07', '2017-12-14 03:05:07'),
(217, 'sohan', 'kumar', 'sohank@yopmail.com', '000-000-0000', 'email', 70, 226, 0, 1, NULL, NULL, 1, 0, NULL, 0, NULL, 0, '2017-12-14 03:17:25', '2017-12-14 03:17:25'),
(218, 'manan', 'singh', 'manans@chetu.com', '000-000-0000', 'email', 70, 219, 0, 1, 4, NULL, 3, 0, NULL, 0, NULL, 0, '2017-12-14 04:01:36', '2017-12-14 04:01:49'),
(219, 'meena', 'kumar', 'meena@yopmail.com', '000-000-0000', 'email', 70, 229, 0, 1, 4, NULL, 3, 0, NULL, 0, NULL, 0, '2017-12-14 04:17:21', '2017-12-14 04:18:20'),
(220, 'vipin', 'kumar', 'vipink8@yopmail.com', '+1-954-706-3103', 'email,sms', 70, 219, 0, 1, NULL, NULL, 1, 0, NULL, 0, NULL, 0, '2017-12-14 04:30:17', '2017-12-14 04:30:17'),
(221, 'vipin', 'kumar', 'vipink8@yopmail.com', '+1-954-706-3103', 'email,sms', 70, 219, 0, 1, NULL, NULL, 1, 0, NULL, 0, NULL, 0, '2017-12-14 04:35:41', '2017-12-14 04:35:41'),
(222, 'vipin', 'kumar', 'vipink8@yopmail.com', '+1-954-706-3103', 'email,sms', 70, 219, 0, 1, NULL, NULL, 1, 0, NULL, 0, NULL, 0, '2017-12-14 04:38:03', '2017-12-14 04:38:03'),
(223, 'vipin', 'kumar', 'vipink8@yopmail.com', '+1-954-706-3103', 'email,sms', 70, 219, 0, 1, 4, NULL, 3, 0, NULL, 0, NULL, 0, '2017-12-14 04:38:12', '2017-12-14 04:38:47'),
(224, 'vipin', 'kumar', 'vipink8@yopmail.com', '+1-954-706-3103', 'email,sms', 70, 219, 0, 1, 4, NULL, 3, 0, NULL, 0, NULL, 0, '2017-12-14 04:39:15', '2017-12-14 04:39:37'),
(225, 'manan', 'kumar', 'manans@yopmail.com', '+1-954-706-3103', 'email,sms', 70, 219, 0, 1, NULL, NULL, 1, 0, NULL, 0, NULL, 0, '2017-12-14 04:40:44', '2017-12-14 04:40:44'),
(226, 'manan', 'kumar', 'manans@chetu.com', '+1-954-706-3103', 'email,sms', 70, 229, 0, 1, NULL, NULL, 1, 0, NULL, 0, NULL, 0, '2017-12-14 04:41:55', '2017-12-14 04:41:55'),
(227, 'Dharm', 'Singh', 'veersingh@yopmail.com', '000-000-0000', 'email', 72, 233, 232, 1, NULL, NULL, 1, 0, NULL, 0, NULL, 0, '2017-12-15 00:29:35', '2017-12-15 18:35:18'),
(228, 'Dharm', 'Singh', 'veersingh@yopmail.com', '+1-954-706-3103', 'email,sms', 72, 233, 232, 1, 2, 5, 2, 0, NULL, 0, NULL, 0, '2017-12-15 01:01:07', '2017-12-15 19:07:39'),
(229, 'amit', 'k5', 'amit11@yopmail.com', '000-000-0000', 'email', 77, 231, 0, 1, 4, NULL, 2, 0, NULL, 0, NULL, 0, '2017-12-15 04:34:21', '2017-12-15 04:35:02'),
(230, 'gdfgs', 'fdsg', 'amit12@yopmail.com', '000-000-0000', 'email', 77, 235, 0, 1, 4, NULL, 2, 0, NULL, 0, NULL, 0, '2017-12-15 04:36:40', '2017-12-15 04:37:26'),
(231, 'Dharm', 'Singh', 'veersingh@yopmail.com', '000-000-0000', 'email', 72, 233, 232, 1, 4, 4, 2, 0, NULL, 0, NULL, 0, '2017-12-15 18:50:34', '2017-12-15 19:02:02'),
(232, 'Dharm', 'Singh', 'veersingh@yopmail.com', '000-000-0000', 'email', 72, 233, 232, 1, NULL, NULL, 1, 0, NULL, 0, NULL, 0, '2017-12-15 19:10:37', '2017-12-15 19:10:37'),
(233, 'Dharm', 'Singh', 'veersingh@yopmail.com', '000-000-0000', 'email', 72, 232, 232, 1, NULL, NULL, 1, 0, NULL, 0, NULL, 0, '2017-12-15 19:11:45', '2017-12-15 19:11:45'),
(234, 'Raj', 'Singh', 'raj@yopmail.com', '000-000-0000', 'email', 82, 246, 246, 1, 4, 4, 2, 0, NULL, 0, NULL, 0, '2017-12-16 17:28:26', '2017-12-16 17:29:31'),
(235, 'Shiva', 'Sharma', 'shiva@yopmail.com', '000-000-0000', 'email', 83, 246, 246, 1, 4, NULL, 2, 0, NULL, 0, NULL, 0, '2017-12-16 17:35:29', '2017-12-16 17:45:47'),
(236, 'raj', 'Singh', 'raj@yopmail.com', '000-000-0000', 'email', 82, 247, 246, 1, 4, 5, 3, 0, NULL, 0, NULL, 0, '2017-12-16 17:38:54', '2017-12-16 17:39:46'),
(237, 'Shiva', 'mishra', 'rakesh@yopmail.com', '000-000-0000', 'email', 83, 247, 246, 1, NULL, NULL, 1, 0, NULL, 0, NULL, 0, '2017-12-16 17:43:54', '2017-12-16 17:43:54'),
(238, 'Raj survey by company representative', 'mishra', 'prashant@yopmail.com', '000-000-0000', 'email', 82, 246, 246, 1, NULL, NULL, 1, 0, NULL, 0, NULL, 0, '2017-12-16 17:54:45', '2017-12-16 17:54:45'),
(239, 'Shiva', 'mishra', 'rakesh@yopmail.com', '000-000-0000', 'email', 83, 247, 246, 1, 4, NULL, 3, 0, NULL, 0, NULL, 0, '2017-12-16 17:58:00', '2017-12-16 18:02:38'),
(240, 'raj 2', 'mishra', 'raj@yopmail.com', '000-000-0000', 'email', 82, 247, 246, 1, NULL, NULL, 1, 0, NULL, 0, NULL, 0, '2017-12-16 18:02:04', '2017-12-16 18:02:04'),
(241, 'raj3', 'mishra', 'rakesh@yopmail.com', '000-000-0000', 'email', 82, 247, 246, 1, 4, 5, 3, 0, NULL, 0, NULL, 0, '2017-12-16 18:03:21', '2017-12-16 18:29:06'),
(242, 'Rohit', 'Singh', 'rohit@yopmail.com', '000-000-0000', 'email', 82, 247, 246, 1, NULL, NULL, 1, 0, NULL, 0, NULL, 0, '2017-12-16 18:08:58', '2017-12-16 18:08:58'),
(243, 'Rohit', 'Singh', 'rohit@yopmail.com', '000-000-0000', 'email', 82, 247, 246, 1, NULL, NULL, 1, 0, NULL, 0, NULL, 0, '2017-12-16 18:08:59', '2017-12-16 18:08:59'),
(244, 'Sohit', 'Sharma', 'sohit@yopmail.com', '000-000-0000', 'email', 82, 246, 246, 1, NULL, NULL, 1, 0, NULL, 0, NULL, 0, '2017-12-16 18:10:00', '2017-12-16 18:10:00'),
(245, 'Jeetu', 'Sharma', 'jeetu@yopmail.com', '000-000-0000', 'email', 82, 247, 246, 1, NULL, NULL, 1, 0, NULL, 0, NULL, 0, '2017-12-16 18:12:24', '2017-12-16 18:12:24'),
(246, 'Rinku', 'mishra', 'rinku@yopmail.com', '000-000-0000', 'email', 82, 246, 246, 1, NULL, NULL, 1, 0, NULL, 0, NULL, 0, '2017-12-16 18:13:15', '2017-12-16 18:13:15'),
(247, 'Kapil', 'Mishra', 'kapil@yopmail.com', '000-000-0000', 'email', 82, 246, 246, 1, NULL, NULL, 1, 0, NULL, 0, NULL, 0, '2017-12-16 18:14:52', '2017-12-16 18:14:52'),
(248, 'Sanket', 'Mishra', 'sanket@yopmail.com', '000-000-0000', 'email', 82, 247, 246, 1, NULL, NULL, 1, 0, NULL, 0, NULL, 0, '2017-12-16 18:20:55', '2017-12-16 18:20:55'),
(249, 'Shiva 34', 'mishra', 'shiva@yopmail.com', '000-000-0000', 'email', 83, 246, 246, 1, NULL, NULL, 1, 0, NULL, 0, NULL, 0, '2017-12-16 18:31:05', '2017-12-16 18:31:05'),
(250, 'Shiva15', 'mishra', 'prashant@yopmail.com', '000-000-0000', 'email', 83, 246, 246, 1, NULL, NULL, 1, 0, NULL, 0, NULL, 0, '2017-12-16 18:33:46', '2017-12-16 18:33:46'),
(251, 'Rohit', 'mishra', 'rohit@yopmail.com', '000-000-0000', 'email', 90, 252, 252, 1, 4, NULL, 2, 0, NULL, 0, NULL, 0, '2017-12-16 20:06:15', '2017-12-16 20:06:59'),
(252, 'ramesh', 'Sharma', 'ramesh@yopmail.com', '000-000-0000', 'email', 90, 252, 252, 1, 4, NULL, 2, 0, NULL, 0, NULL, 0, '2017-12-16 20:55:43', '2017-12-16 20:57:08'),
(253, 'Arvind', 'Singh', 'arvind@yopmail.com', '000-000-0000', 'email', 91, 252, 252, 1, 4, 4, 3, 0, NULL, 0, NULL, 0, '2017-12-16 20:58:33', '2017-12-16 20:59:10'),
(254, 'Vinay', 'Jain', 'vinay@yopmail.com', '000-000-0000', 'email', 120, 11, 11, 1, 4, 4, 2, 0, NULL, 0, NULL, 0, '2017-12-18 18:13:44', '2017-12-18 18:14:40'),
(255, 'Vinod', 'Sharma', 'vinod@yopmail.com', '000-000-0000', 'email', 121, 252, 252, 1, 3, 5, 3, 0, NULL, 0, NULL, 0, '2017-12-18 18:20:52', '2017-12-18 18:23:17'),
(256, 'Veer', 'Singh', 'dharmn@yopmail.com', '000-000-0000', 'email', 122, 262, 262, 1, 4, NULL, 2, 0, NULL, 0, NULL, 0, '2017-12-20 23:14:43', '2017-12-20 23:14:59'),
(257, 'Matthew', 'Bate', 'test2017@yopmail.com', '000-000-0000', 'email', 122, 262, 262, 1, NULL, NULL, 1, 0, NULL, 0, NULL, 0, '2017-12-21 21:49:22', '2017-12-21 21:49:22'),
(258, 'Test', 'User', 'test2017@yopmail.com', '000-000-0000', 'email', 122, 263, 262, 1, NULL, NULL, 1, 0, NULL, 0, NULL, 0, '2017-12-21 21:52:26', '2017-12-21 21:52:26'),
(259, 'Test', 'User', 'test2017@yopmail.com', '000-000-0000', 'email', 122, 263, 262, 1, 4, NULL, 2, 0, NULL, 0, NULL, 0, '2017-12-21 21:52:45', '2017-12-21 21:57:01'),
(260, 'Dharm', 'Singh', 'test2017@yopmail.com', '000-000-0000', 'email', 122, 263, 262, 1, NULL, NULL, 1, 0, NULL, 0, NULL, 0, '2017-12-21 21:56:12', '2017-12-21 21:56:12'),
(261, 'review of Karan', 'Singh', 'karan@yopmail.com', '000-000-0000', 'email', 129, 270, 270, 1, 3, 5, 2, 0, NULL, 0, NULL, 0, '2017-12-22 00:52:57', '2017-12-22 00:57:32'),
(262, 'survey of Arjun', 'Singh', 'arjun@yopmail.com', '000-000-0000', 'email', 130, 270, 270, 1, NULL, NULL, 1, 0, NULL, 0, NULL, 0, '2017-12-22 00:54:04', '2017-12-22 00:54:04'),
(263, 'Brandon', 'Thorud', 'Brandon@partnersre.com', '000-000-0000', 'email', 17, 170, 170, 1, 4, 5, 3, 0, NULL, 0, NULL, 0, '2017-12-22 05:43:51', '2017-12-22 06:07:01'),
(266, 'Dharm', 'Singh', 'test@yopmail.com', '+1-222-232-4354', 'email,sms', 133, 287, 287, 1, NULL, NULL, 1, 0, NULL, 0, NULL, 0, '2017-12-22 17:26:25', '2017-12-22 17:26:25'),
(267, 'Dharm', 'Singh', 'meena@yopmail.com', '+1-954-706-3103', 'email,sms', 133, 287, 287, 1, NULL, NULL, 1, 0, NULL, 0, NULL, 0, '2017-12-22 17:28:42', '2017-12-22 17:28:42'),
(268, 'Prashant', 'Mishra', 'prashant@yopmail.com', '+1-954-706-3103', 'email,sms', 127, 270, 270, 1, 4, NULL, 2, 0, NULL, 0, NULL, 0, '2017-12-22 17:37:42', '2017-12-22 17:43:19'),
(269, 'Mahesh', 'Sharma', 'mahesh@yopmail.com', '+1-954-706-3103', 'email,sms', 127, 270, 270, 1, NULL, NULL, 1, 0, NULL, 0, NULL, 0, '2017-12-22 17:42:30', '2017-12-22 17:42:30'),
(271, 'Request survey 2', 'survey2', 'survey2@yopmail.com', '000-000-0000', 'email', 130, 270, 270, 1, 4, NULL, 2, 0, NULL, 0, NULL, 0, '2017-12-22 18:05:21', '2017-12-22 18:30:07'),
(272, 'review2', 'sharma', 'review2@yopmail.com', '000-000-0000', 'email', 129, 270, 270, 1, 3, 5, 2, 0, NULL, 0, NULL, 0, '2017-12-22 18:07:59', '2017-12-22 18:29:39'),
(273, 'Company', 'Admin', 'test@yopmail.com', '+1-234-567-8906', 'email,sms', 134, 289, 289, 1, NULL, NULL, 1, 0, NULL, 0, NULL, 0, '2017-12-23 00:33:36', '2017-12-23 00:33:36'),
(274, 'vipin', 'kumar', 'vipink5@yopmail.com', '+1-954-706-3103', 'email,sms', 134, 289, 289, 1, NULL, NULL, 1, 0, NULL, 0, NULL, 0, '2017-12-23 01:10:47', '2017-12-23 01:10:47'),
(275, 'vipin', 'kumar', 'vipink5@chetu.com', '+1-954-706-3103', 'email,sms', 134, 289, 289, 1, NULL, NULL, 1, 0, NULL, 0, NULL, 0, '2017-12-23 01:11:20', '2017-12-23 01:11:20'),
(276, 'vipin', 'kumar', 'vipink5@yopmail.com', '+1-954-706-3103', 'email,sms', 134, 289, 289, 1, 4, NULL, 2, 0, NULL, 0, NULL, 0, '2017-12-23 01:12:05', '2017-12-23 01:12:38'),
(277, 'Brandon', 'Thorud', 'brandon@partnersre.com', '000-000-0000', 'email', 17, 170, 170, 1, 7, 5, 2, 0, NULL, 0, NULL, 0, '2017-12-26 09:50:22', '2017-12-26 09:51:06'),
(278, 'Company', 'Admin', 'meena1@gmail.com', '+1-234-567-8904', 'email,sms', 17, 170, 170, 1, NULL, NULL, 1, 0, NULL, 0, NULL, 0, '2017-12-26 21:38:43', '2017-12-26 21:38:43'),
(279, 'Brandon', 'Thorud', 'brandon@partnersre.com', '000-000-0000', 'email', 17, 170, 170, 1, 8, 5, 2, 0, NULL, 0, NULL, 0, '2017-12-27 01:10:29', '2018-01-11 04:26:19'),
(280, 'test', 'test123', 'test@yopmail.com', '+1-954-706-3103', 'email,sms', 27, 170, 170, 1, 4, NULL, 2, 0, NULL, 0, NULL, 0, '2017-12-29 21:12:04', '2017-12-29 21:13:13'),
(281, 'Company', 'Admin', 'test@yopmail.com', '+1-234-567-8907', 'email,sms', 27, 298, 298, 1, 4, NULL, 2, 0, NULL, 0, NULL, 0, '2017-12-29 21:16:21', '2017-12-29 21:16:54'),
(282, 'Dharm', 'Singh', 'dharmsingh@yopmail.com', 'N/A', 'email', 144, 297, 297, 1, 8, 5, 2, 0, NULL, 0, NULL, 0, '2018-01-04 00:45:04', '2018-01-04 00:48:04'),
(283, 'Brandon', 'Thorud', 'brandon@partnersre.com', '+1-907-433-9588', 'email,sms', 27, 170, 170, 1, 4, NULL, 2, 0, NULL, 0, NULL, 0, '2018-01-06 00:21:10', '2018-01-06 00:42:37'),
(284, 'Dharm', 'Singh', 'dharmsingh@yopmail.com', 'N/A', 'email', 28, 11, 11, 1, 8, 5, 2, 0, NULL, 0, NULL, 0, '2018-01-11 00:40:36', '2018-01-11 00:41:05'),
(285, 'meena', 'Admin', 'meena@yopmail.com', 'N/A', 'email', 119, 11, 11, 1, 4, 4, 2, 1, NULL, 0, NULL, 0, '2018-01-11 00:44:42', '2018-01-11 00:49:33'),
(286, 'Meena', 'Haldher', 'meena@yopmail.com', 'N/A', 'email', 120, 11, 11, 1, 1, 4, 2, 0, NULL, 0, NULL, 0, '2018-01-11 00:46:44', '2018-01-11 00:47:03'),
(287, 'Brandon', 'Thorud', 'brandon@partnersre.com', 'N/A', 'email', 17, 170, 170, 1, 8, 5, 2, 0, NULL, 0, NULL, 0, '2018-01-11 03:34:22', '2018-01-11 03:42:49'),
(288, 'Brandon', 'Thorud', 'brandon@partnersre.com', 'N/A', 'email', 27, 170, 170, 1, 4, NULL, 2, 0, NULL, 0, NULL, 0, '2018-01-11 03:40:52', '2018-01-11 03:42:41'),
(289, 'Dharm', 'Singh', 'dharmsveer@yopmail.com', 'N/A', 'email', 28, 11, 11, 1, 8, 5, 2, 0, NULL, 0, NULL, 0, '2018-01-11 16:11:56', '2018-01-11 16:12:56'),
(290, 'Matthew', 'Bate', 'dharmsingh@yopmail.com', 'N/A', 'email', 147, 301, 301, 1, 4, NULL, 2, 0, NULL, 0, NULL, 0, '2018-01-11 17:47:58', '2018-01-11 17:48:43'),
(291, 'Matthew', 'Bate', 'dharmsingh@yopmail.com', 'N/A', 'email', 147, 302, 301, 1, NULL, NULL, 1, 0, NULL, 0, NULL, 0, '2018-01-11 17:49:53', '2018-01-11 17:49:53'),
(292, 'Matthew', 'Bate', 'dharmsingh@yopmail.com', 'N/A', 'email', 148, 302, 301, 1, 8, 5, 2, 0, NULL, 0, NULL, 0, '2018-01-11 17:50:19', '2018-01-11 17:51:01'),
(293, 'Matthew', 'Bate', 'dharmsingh@yopmail.com', 'N/A', 'email', 148, 302, 301, 1, 4, 4, 2, 0, NULL, 0, NULL, 0, '2018-01-11 17:50:35', '2018-01-11 18:12:38'),
(294, 'Matthew', 'Bate', 'dharmsingh@yopmail.com', 'N/A', 'email', 148, 301, 301, 1, 4, 3, 3, 0, NULL, 0, NULL, 0, '2018-01-11 18:00:45', '2018-01-11 18:01:10'),
(295, 'Jam', 'Thew', 'Jam@yopmail.com', 'N/A', 'email', 150, 303, 303, 1, 4, 4, 3, 0, NULL, 0, NULL, 0, '2018-01-11 23:36:14', '2018-01-11 23:36:41'),
(296, 'Jam', 'Admin', 'Jam@yopmail.com', 'N/A', 'email', 156, 306, 306, 1, 4, 4, 2, 0, NULL, 0, NULL, 0, '2018-01-12 00:01:14', '2018-01-12 00:02:10'),
(297, 'Company', 'Admin', 'jenny@yopmail.com', 'N/A', 'email', 155, 306, 306, 1, 4, NULL, 2, 0, NULL, 0, NULL, 0, '2018-01-12 00:01:54', '2018-01-12 00:10:05'),
(298, 'Company', 'Admin', 'N/A', 'N/A', 'email', 155, 306, 306, 1, NULL, NULL, 1, 1, NULL, 0, NULL, 0, '2018-01-12 00:08:38', '2018-01-12 00:09:10'),
(299, 'Company', 'Admin', 'N/A', 'N/A', 'email', 155, 306, 306, 1, NULL, NULL, 1, 1, NULL, 0, NULL, 0, '2018-01-12 00:08:46', '2018-01-12 00:09:16'),
(300, 'Company', 'Admin', 'jenny@yopmail.com', 'N/A', 'email', 156, 306, 306, 1, NULL, NULL, 1, 0, NULL, 0, NULL, 0, '2018-01-12 00:13:10', '2018-01-12 00:13:10'),
(301, 'Dharm', 'Singh', 'dharmsingh@yopmail.com', 'N/A', 'email', 147, 301, 301, 1, NULL, NULL, 1, 0, NULL, 0, NULL, 0, '2018-01-12 00:18:59', '2018-01-12 00:18:59'),
(302, 'Dharm', 'Singh', 'dharmsingh@yopmail.com', 'N/A', 'email', 148, 301, 301, 1, NULL, NULL, 1, 0, '2018-02-12', 0, '2018-02-13', 0, '2018-01-12 00:21:24', '2018-02-12 20:19:56'),
(303, 'Company', 'Admin', 'jenny@yopmail.com', 'N/A', 'email', 156, 306, 306, 1, 4, 4, 2, 0, NULL, 0, NULL, 0, '2018-01-12 00:23:14', '2018-01-12 00:24:03'),
(304, 'Company', 'Admin', 'jenny@yopmail.com', 'N/A', 'email', 156, 306, 306, 1, 7, 4, 2, 0, NULL, 0, NULL, 0, '2018-01-12 00:25:39', '2018-01-12 00:25:57'),
(305, 'Brandon', 'Thorud', 'brandon@partnersre.com', 'N/A', 'email', 17, 170, 170, 1, 8, 5, 2, 0, NULL, 0, NULL, 0, '2018-01-12 01:23:07', '2018-01-12 01:25:46'),
(306, 'Dharm', 'Singh', 'dharmsingh@yopmail.com', 'N/A', 'email', 17, 170, 170, 1, 8, 5, 2, 0, NULL, 0, NULL, 0, '2018-01-12 15:50:02', '2018-01-12 15:52:06'),
(307, 'Dharm', 'Singh', 'dharmsingh@yopmail.com', 'N/A', 'email', 17, 170, 170, 1, 8, 5, 2, 0, NULL, 0, NULL, 0, '2018-01-12 15:54:38', '2018-01-12 15:55:10'),
(308, 'meena', 'Admin', 'meena@yopmail.com', 'N/A', 'email', 120, 11, 11, 1, 7, 4, 2, 0, NULL, 0, NULL, 0, '2018-01-12 23:20:38', '2018-01-12 23:20:59'),
(309, 'Vipin', 'Kumar', 'vipink6@yopmail.com', 'N/A', 'email', 161, 309, 309, 1, NULL, NULL, 1, 0, NULL, 0, NULL, 0, '2018-01-12 23:21:32', '2018-01-12 23:21:32'),
(310, 'Meena', 'Haldher', 'meena@yopmail.com', 'N/A', 'email', 120, 11, 11, 1, 4, 4, 2, 0, NULL, 0, NULL, 0, '2018-01-12 23:22:46', '2018-01-12 23:23:03'),
(311, 'Brandon', 'Thorud', 'brandon@partnersre.com', 'N/A', 'email', 17, 170, 170, 1, 8, 5, 2, 0, NULL, 0, NULL, 0, '2018-01-13 00:30:34', '2018-01-13 00:32:27'),
(312, 'Vipin', 'Kumar', 'vipink5@chetu.com', 'N/A', 'email', 163, 181, 181, 1, 4, 3, 2, 0, NULL, 0, NULL, 0, '2018-01-16 17:49:31', '2018-01-16 17:50:36'),
(313, 'Meena', 'Haldher', 'meena@yopmail.com', 'N/A', 'email', 163, 181, 181, 1, 4, 4, 3, 0, NULL, 0, NULL, 0, '2018-01-16 17:53:34', '2018-01-16 17:53:46'),
(314, 'Meena', 'Haldher', 'meena@yopmail.com', 'N/A', 'email', 163, 181, 181, 1, 4, 5, 3, 0, NULL, 0, NULL, 0, '2018-01-16 17:55:24', '2018-01-16 17:55:36'),
(315, 'Vipin', 'Kumar', 'vipink5@chetu.com', 'N/A', 'email', 163, 181, 181, 1, 4, 4, 3, 0, '2018-02-13', 1, '2018-02-13', 1, '2018-01-16 17:58:39', '2018-02-13 23:00:05'),
(316, 'Vipin', 'Kumar', 'vipink5@chetu.com', 'N/A', 'email', 163, 181, 181, 1, 7, 4, 2, 0, NULL, 0, NULL, 0, '2018-01-16 18:03:54', '2018-01-16 18:04:28'),
(317, 'Vipin', 'Kumar', 'vipink5@chetu.com', 'N/A', 'email', 164, 181, 181, 1, 4, NULL, 2, 0, NULL, 0, NULL, 0, '2018-01-25 01:49:41', '2018-01-25 01:51:29'),
(318, 'Vipin', 'Kumar', 'vipink5@chetu.com', 'N/A', 'email', 164, 181, 181, 1, 4, NULL, 2, 0, NULL, 0, NULL, 0, '2018-01-25 01:54:05', '2018-01-25 01:54:40'),
(319, 'vipin', 'kumar', 'vipink5@yopmail.com', 'N/A', 'email', 148, 301, 301, 1, 4, 2, 3, 0, '2018-02-12', 0, '2018-02-12', 0, '2018-02-10 22:29:39', '2018-02-12 19:28:27'),
(320, 'Dharm', 'Singh', 'veersinghz@yopmail.com', 'N/A', 'email', 148, 301, 301, 1, 6, 5, 2, 0, '2018-02-13', 0, '2018-02-16', 0, '2018-02-10 22:36:28', '2018-02-10 22:37:03'),
(321, 'Dharm', 'Singh', 'veersinghz@yopmail.com', 'N/A', 'email', 148, 301, 301, 1, 4, 2, 2, 0, '2018-02-13', 0, '2018-02-16', 0, '2018-02-10 22:37:49', '2018-02-10 22:38:22'),
(322, 'vipin', 'kumar', 'vipink5@yopmail.com', 'N/A', 'email', 165, 301, 301, 1, 4, 4, 2, 0, '2018-02-13', 0, '2018-02-16', 0, '2018-02-10 22:42:03', '2018-02-10 22:42:33'),
(323, 'vipin', 'kumar', 'vipink5@yopmail.com', 'N/A', 'email', 165, 301, 301, 1, 4, 5, 3, 0, '2018-02-13', 1, '2018-02-12', 0, '2018-02-10 23:38:31', '2018-02-13 23:00:02'),
(324, 'Brandon', 'Thorud', 'brandon@partnersre.com', 'N/A', 'email', 17, 170, 170, 1, 6, 5, 2, 0, '2018-02-14', 0, '2018-02-17', 0, '2018-02-11 07:42:06', '2018-02-11 09:43:09'),
(325, 'Brandon', 'Thorud', 'Brandon@partnersre.com', 'N/A', 'email', 17, 170, 170, 1, NULL, NULL, 1, 0, '2018-02-15', 1, '2018-02-19', 0, '2018-02-12 03:04:47', '2018-02-15 18:00:03'),
(326, 'Matthew', 'Bate', 'dharmsingh1@yopmail.com', '+1-954-706-3103', 'email,sms', 148, 301, 301, 1, NULL, NULL, 1, 0, '2018-02-18', 0, '2018-02-21', 0, '2018-02-15 18:58:04', '2018-02-15 18:58:04'),
(327, 'Brandon', 'Thorud', 'N/A', '+1-907-433-9588', 'sms', 17, 170, 170, 1, NULL, NULL, 1, 0, '2018-02-18', 0, '2018-02-22', 0, '2018-02-15 20:26:28', '2018-02-15 20:26:28'),
(328, 'Dharm', 'Singh', 'N/A', '+1-954-706-3103', 'sms', 148, 301, 301, 1, NULL, NULL, 1, 0, '2018-02-18', 0, '2018-02-21', 0, '2018-02-15 21:14:27', '2018-02-15 21:14:27'),
(329, 'Brandon', 'Thorud', 'N/A', '+1-907-433-9588', 'sms', 17, 170, 170, 1, NULL, NULL, 1, 0, '2018-02-18', 0, '2018-02-22', 0, '2018-02-15 21:28:44', '2018-02-15 21:28:44'),
(330, 'Sanda', 'Moldovan', 'dharmsingh@yopmail.com', 'N/A', 'email', 166, 301, 301, 1, NULL, NULL, 1, 0, '2018-02-19', 0, '2018-02-22', 0, '2018-02-16 01:28:50', '2018-02-16 01:28:50'),
(331, 'Manan', 'Test', 'manans@chetu.com', 'N/A', 'email', 17, 170, 170, 1, NULL, NULL, 1, 0, '2018-02-20', 0, '2018-02-24', 0, '2018-02-17 05:01:39', '2018-02-17 05:01:39'),
(332, 'Manan', 'Test', 'manans@chetu.com', 'N/A', 'email', 17, 170, 170, 1, NULL, NULL, 1, 0, '2018-02-20', 0, '2018-02-24', 0, '2018-02-17 05:25:22', '2018-02-17 05:25:22'),
(333, 'Manan', 'Test', 'manans@chetu.com', 'N/A', 'email', 17, 170, 170, 1, NULL, NULL, 1, 0, '2018-02-20', 0, '2018-02-24', 0, '2018-02-17 05:29:14', '2018-02-17 05:29:14'),
(334, 'Manan', 'Test', 'manans@chetu.com', 'N/A', 'email', 17, 170, 170, 1, NULL, NULL, 1, 0, '2018-02-20', 0, '2018-02-24', 0, '2018-02-17 05:37:43', '2018-02-17 05:37:43'),
(335, 'Manan', 'Test', 'manans@chetu.com', 'N/A', 'email', 17, 170, 170, 1, NULL, NULL, 1, 0, '2018-02-20', 0, '2018-02-24', 0, '2018-02-17 05:39:06', '2018-02-17 05:39:06'),
(336, 'Manan', 'Test', 'manans@chetu.com', 'N/A', 'email', 17, 170, 170, 1, NULL, NULL, 1, 0, '2018-02-20', 0, '2018-02-24', 0, '2018-02-17 05:39:16', '2018-02-17 05:39:16'),
(337, 'Manan', 'Test', 'manans@chetu.com', 'N/A', 'email', 17, 170, 170, 1, NULL, NULL, 1, 0, '2018-02-20', 0, '2018-02-24', 0, '2018-02-17 05:39:33', '2018-02-17 05:39:33'),
(338, 'Manan', 'Test', 'manans@chetu.com', 'N/A', 'email', 17, 170, 170, 1, NULL, NULL, 1, 0, '2018-02-20', 0, '2018-02-24', 0, '2018-02-17 05:43:13', '2018-02-17 05:43:13'),
(339, 'Manan', 'Test', 'manans@chetu.com', 'N/A', 'email', 17, 170, 170, 1, NULL, NULL, 1, 0, '2018-02-20', 0, '2018-02-24', 0, '2018-02-17 05:43:36', '2018-02-17 05:43:36'),
(340, 'Manan', 'Test', 'manans@chetu.com', 'N/A', 'email', 17, 170, 170, 1, NULL, NULL, 1, 0, '2018-02-20', 0, '2018-02-24', 0, '2018-02-17 05:45:15', '2018-02-17 05:45:15'),
(341, 'Manan', 'Test', 'manans@chetu.com', 'N/A', 'email', 17, 170, 170, 1, NULL, NULL, 1, 0, '2018-02-20', 0, '2018-02-24', 0, '2018-02-17 05:45:52', '2018-02-17 05:45:52'),
(342, 'Manan', 'Singh', 'manans@chetu.com', 'N/A', 'email', 147, 301, 301, 1, NULL, NULL, 1, 0, '2018-02-20', 0, '2018-02-23', 0, '2018-02-17 05:50:21', '2018-02-17 05:50:21'),
(343, 'Manan', 'Singh', 'N/A', 'N/A', 'email', 147, 301, 301, 1, NULL, NULL, 1, 0, '2018-02-20', 0, '2018-02-23', 0, '2018-02-17 05:50:56', '2018-02-17 05:50:56'),
(344, 'Manan', 'Singh', 'N/A', 'N/A', 'email', 147, 301, 301, 1, NULL, NULL, 1, 0, '2018-02-20', 0, '2018-02-23', 0, '2018-02-17 05:51:10', '2018-02-17 05:51:10'),
(345, 'Manan', 'Singh', 'N/A', 'N/A', 'email', 147, 301, 301, 1, NULL, NULL, 1, 0, '2018-02-20', 0, '2018-02-23', 0, '2018-02-17 05:51:17', '2018-02-17 05:51:17'),
(346, 'Manan', 'Singh', 'N/A', 'N/A', 'email', 147, 301, 301, 1, NULL, NULL, 1, 0, '2018-02-20', 0, '2018-02-23', 0, '2018-02-17 05:54:07', '2018-02-17 05:54:07'),
(347, 'Manan', 'Singh', 'N/A', 'N/A', 'email', 147, 301, 301, 1, NULL, NULL, 1, 0, '2018-02-20', 0, '2018-02-23', 0, '2018-02-17 05:54:28', '2018-02-17 05:54:28'),
(348, 'Manan', 'Singh', 'manans@chetu.com', 'N/A', 'email', 147, 301, 301, 1, NULL, NULL, 1, 0, '2018-02-20', 0, '2018-02-23', 0, '2018-02-17 05:55:28', '2018-02-17 05:55:28'),
(349, 'Manan', 'Singh', 'manans@chetu.com', 'N/A', 'email', 147, 301, 301, 1, NULL, NULL, 1, 0, '2018-02-20', 0, '2018-02-23', 0, '2018-02-17 05:56:39', '2018-02-17 05:56:39'),
(350, 'Manan', 'Singh', 'manans@chetu.com', 'N/A', 'email', 147, 301, 301, 1, NULL, NULL, 1, 0, '2018-02-20', 0, '2018-02-23', 0, '2018-02-17 05:56:55', '2018-02-17 05:56:55'),
(351, 'Manan', 'Singh', 'manans@chetu.com', 'N/A', 'email', 147, 301, 301, 1, NULL, NULL, 1, 0, '2018-02-20', 0, '2018-02-23', 0, '2018-02-17 05:59:00', '2018-02-17 05:59:00'),
(352, 'Manan', 'Singh', 'manans@chetu.com', 'N/A', 'email', 147, 301, 301, 1, NULL, NULL, 1, 0, '2018-02-20', 0, '2018-02-23', 0, '2018-02-17 06:00:07', '2018-02-17 06:00:07'),
(353, 'Manan', 'Singh', 'manans@chetu.com', 'N/A', 'email', 147, 301, 301, 1, NULL, NULL, 1, 0, '2018-02-20', 0, '2018-02-23', 0, '2018-02-17 06:00:26', '2018-02-17 06:00:26'),
(354, 'Manan', 'Singh', 'manans@chetu.com', 'N/A', 'email', 147, 301, 301, 1, NULL, NULL, 1, 0, '2018-02-20', 0, '2018-02-23', 0, '2018-02-17 06:01:10', '2018-02-17 06:01:10'),
(355, 'Manan', 'Singh', 'manans@chetu.com', 'N/A', 'email', 147, 301, 301, 1, NULL, NULL, 1, 0, '2018-02-20', 0, '2018-02-23', 0, '2018-02-17 06:01:52', '2018-02-17 06:01:52'),
(356, 'Manan', 'Singh', 'manans@chetu.com', 'N/A', 'email', 147, 301, 301, 1, NULL, NULL, 1, 0, '2018-02-20', 0, '2018-02-23', 0, '2018-02-17 06:03:32', '2018-02-17 06:03:32'),
(357, 'Manan', 'Singh', 'manans@chetu.com', 'N/A', 'email', 147, 301, 301, 1, NULL, NULL, 1, 0, '2018-02-20', 0, '2018-02-23', 0, '2018-02-17 06:04:28', '2018-02-17 06:04:28'),
(358, 'Manan', 'Singh', 'manans@chetu.com', 'N/A', 'email', 147, 301, 301, 1, NULL, NULL, 1, 0, '2018-02-20', 0, '2018-02-23', 0, '2018-02-17 06:05:12', '2018-02-17 06:05:12'),
(434, 'Sanda', 'Moldovan', 'dharms1@yopmail.com', 'N/A', 'email', 148, 301, 301, 1, NULL, NULL, 1, 0, '2018-02-22', 0, '2018-02-25', 0, '2018-02-19 17:25:50', '2018-02-19 17:25:50'),
(435, 'Sanda', 'Moldovan', 'dharms1@yopmail.com', 'N/A', 'email', 148, 301, 301, 1, NULL, NULL, 1, 0, '2018-02-22', 0, '2018-02-25', 0, '2018-02-19 17:26:32', '2018-02-19 17:26:32'),
(436, 'Sanda', 'Moldovan', 'dharms1@yopmail.com', 'N/A', 'email', 148, 301, 301, 1, NULL, NULL, 1, 1, '2018-02-22', 0, '2018-02-25', 0, '2018-02-19 17:28:04', '2018-02-19 17:28:05'),
(437, 'Sanda', 'Moldovan', 'dharms1@yopmail.com', 'N/A', 'email', 148, 301, 301, 1, NULL, NULL, 1, 0, '2018-02-22', 0, '2018-02-25', 0, '2018-02-19 17:31:20', '2018-02-19 17:31:20'),
(438, 'Sanda', 'Moldovan', 'veer3@yopmail.com', 'N/A', 'email', 147, 301, 301, 1, NULL, NULL, 1, 1, '2018-02-22', 0, '2018-02-25', 0, '2018-02-19 17:45:35', '2018-02-19 17:45:37'),
(439, 'Sanda', 'Moldovan', 'veer3@yopmail.com', 'N/A', 'email', 147, 301, 301, 1, NULL, NULL, 1, 1, '2018-02-22', 0, '2018-02-25', 0, '2018-02-19 17:46:10', '2018-02-19 17:46:11'),
(440, 'Sanda', 'Moldovan', 'veer3@yopmail.com', 'N/A', 'email', 147, 301, 301, 1, NULL, NULL, 1, 1, '2018-02-22', 0, '2018-02-25', 0, '2018-02-19 17:46:57', '2018-02-19 17:46:58'),
(441, 'Sanda', 'Moldovan', 'veer3@yopmail.com', 'N/A', 'email', 147, 301, 301, 1, NULL, NULL, 1, 1, '2018-02-22', 0, '2018-02-25', 0, '2018-02-19 17:48:04', '2018-02-19 17:48:06'),
(442, 'Sanda', 'Moldovan', 'veer3@yopmail.com', 'N/A', 'email', 147, 301, 301, 1, NULL, NULL, 1, 1, '2018-02-22', 0, '2018-02-25', 0, '2018-02-19 17:53:54', '2018-02-19 17:53:56'),
(443, 'Sanda', 'Moldovan', 'veer3@yopmail.com', 'N/A', 'email', 147, 301, 301, 1, NULL, NULL, 1, 1, '2018-02-22', 0, '2018-02-25', 0, '2018-02-19 18:11:02', '2018-02-19 18:11:02'),
(444, 'Manan', 'Singh', 'manans@chetu.com', 'N/A', 'email', 147, 301, 301, 1, NULL, NULL, 1, 1, '2018-02-22', 0, '2018-02-25', 0, '2018-02-19 20:48:51', '2018-02-19 20:48:52'),
(445, 'Sanda', 'Moldovan', 'dharmsingh2@yopmail.com', 'N/A', 'email', 148, 301, 301, 1, NULL, NULL, 1, 1, '2018-02-22', 0, '2018-02-25', 0, '2018-02-19 21:57:48', '2018-02-19 21:57:49'),
(446, 'Fdsaf', 'Dsaf', 'manans@chetu.com', 'N/A', 'email', 148, 301, 301, 1, NULL, NULL, 1, 0, '2018-02-23', 0, '2018-02-26', 0, '2018-02-20 05:02:45', '2018-02-20 05:02:45'),
(447, 'Matthew', 'Bate', 'dharmsingh2@yopmail.com', 'N/A', 'email', 148, 301, 301, 1, NULL, NULL, 1, 0, '2018-02-23', 0, '2018-02-26', 0, '2018-02-20 15:36:05', '2018-02-20 15:36:05'),
(448, 'Sanda', 'Moldovan', 'dharm@yopmail.com', 'N/A', 'email', 148, 301, 301, 1, NULL, NULL, 1, 0, '2018-02-26', 0, '2018-03-01', 0, '2018-02-23 19:54:18', '2018-02-23 19:54:18'),
(449, 'Sanda', 'Moldovan', 'dharm@yopmail.com', 'N/A', 'email', 148, 302, 301, 1, NULL, NULL, 1, 0, '2018-02-26', 0, '2018-03-01', 0, '2018-02-23 19:57:27', '2018-02-23 19:57:27'),
(450, 'manan', 'Singh', 'dharm@yopmail.com', 'N/A', 'email', 148, 302, 302, 1, NULL, NULL, 1, 0, '0000-00-00', 0, '0000-00-00', 0, '2018-02-23 19:58:53', '2018-02-23 19:58:53'),
(451, 'Brandon', 'Thorud', 'Brandon@partnersre.com', 'N/A', 'email', 17, 175, 170, 1, NULL, NULL, 1, 0, '2018-02-26', 0, '2018-03-02', 0, '2018-02-23 21:51:06', '2018-02-23 21:51:06'),
(452, 'Dharm', 'Singh', 'dharm@yopmail.com', 'N/A', 'email', 17, 170, 170, 1, NULL, NULL, 1, 0, '2018-02-26', 0, '2018-03-02', 0, '2018-02-23 23:14:04', '2018-02-23 23:14:04'),
(453, 'Matthew', 'Bate', 'dharm@yopmail.com', 'N/A', 'email', 17, 175, 170, 1, 4, 4, 3, 0, '2018-02-26', 0, '2018-03-02', 0, '2018-02-23 23:14:49', '2018-02-23 23:26:35'),
(454, 'Matthew', 'Bate', 'matthew@yopmail.com', 'N/A', 'email', 17, 175, 170, 1, NULL, NULL, 1, 0, '2018-02-26', 0, '2018-03-02', 0, '2018-02-23 23:29:43', '2018-02-23 23:29:43'),
(455, 'Sanda', 'Moldovan', 'dharm@yopmail.com', 'N/A', 'email', 148, 301, 301, 1, 4, 5, 3, 0, '2018-02-27', 0, '2018-03-02', 0, '2018-02-24 00:30:22', '2018-02-24 00:31:03'),
(456, 'Sanda', 'Moldovan', 'dharm@yopmail.com', 'N/A', 'email', 148, 302, 301, 1, 4, 5, 3, 0, '2018-02-27', 0, '2018-03-02', 0, '2018-02-24 00:31:33', '2018-02-24 00:37:59'),
(457, 'Brandon', 'Thorud', 'brandon@partnersre.com', 'N/A', 'email', 17, 175, 170, 1, NULL, NULL, 1, 0, '2018-02-27', 0, '2018-03-03', 0, '2018-02-24 03:15:59', '2018-03-23 02:50:44'),
(458, 'Vishwanath', 'kumar', 'vishwanath@yopmail.com', 'N/A', 'email', 148, 301, 301, 1, 4, 4, 3, 0, '2018-03-10', 0, '2018-03-13', 0, '2018-03-07 20:21:36', '2018-03-07 20:21:55'),
(459, 'servendra', 'Kumar', 'vishwanath@yopmail.com', 'N/A', 'email', 148, 301, 301, 1, 4, 1, 3, 0, '2018-03-10', 0, '2018-03-13', 0, '2018-03-07 20:23:30', '2018-03-07 20:23:54'),
(460, 'Matthew', 'Bate', 'finaldata@yopmail.com', 'N/A', 'email', 169, 312, 312, 1, 4, NULL, 2, 0, '2018-03-25', 0, '2018-03-29', 0, '2018-03-22 23:37:31', '2018-03-23 00:03:35'),
(461, 'Brandon', 'Thorud', 'brandon@partnersre.com', 'N/A', 'email', 17, 170, 170, 1, NULL, NULL, 1, 0, '2018-03-29', 0, '2018-04-02', 0, '2018-03-26 07:23:43', '2018-03-26 07:23:43'),
(462, 'Brandon', 'Thorud', 'brandon@partnersre.com', 'N/A', 'email', 17, 170, 170, 1, 4, 5, 3, 0, '2018-03-29', 0, '2018-04-02', 0, '2018-03-26 07:23:45', '2018-03-26 07:25:10'),
(463, 'Brandon', 'Thorud', 'brandon@partnersre.com', 'N/A', 'email', 17, 170, 170, 1, 8, 5, 3, 0, '2018-03-30', 0, '2018-04-03', 0, '2018-03-27 07:39:11', '2018-03-27 07:43:27'),
(464, 'Brandon', 'THORUD', 'brandon@partnersre.com', 'N/A', 'email', 17, 170, 170, 1, 4, 3, 2, 0, '2018-03-30', 0, '2018-04-03', 0, '2018-03-27 07:44:14', '2018-03-27 07:44:56'),
(465, 'Sanda', 'Moldovan', 'dharm@yopmail.com', 'N/A', 'email', 27, 170, 170, 1, 4, NULL, 3, 0, '2018-04-11', 0, '2018-04-15', 0, '2018-04-08 19:14:11', '2018-04-08 19:18:52'),
(466, 'Matthew', 'Bate', 'dharm@yopmail.com', 'N/A', 'email', 27, 170, 170, 1, 4, NULL, 2, 0, '2018-04-11', 0, '2018-04-15', 0, '2018-04-08 19:16:20', '2018-04-08 19:16:43'),
(467, 'Sanda', 'Moldovan', 'dharm@yopmail.com', 'N/A', 'email', 27, 170, 170, 1, 4, NULL, 3, 0, '2018-04-11', 0, '2018-04-15', 0, '2018-04-08 19:18:31', '2018-04-08 19:24:29'),
(468, 'Sanda', 'Moldovan', 'dharm@yopmail.com', 'N/A', 'email', 198, 170, 170, 1, NULL, NULL, 1, 0, '2018-04-11', 0, '2018-04-15', 0, '2018-04-08 19:24:02', '2018-04-08 19:24:02'),
(469, 'Sanda', 'Moldovan', 'dharm@yopmail.com', 'N/A', 'email', 198, 170, 170, 1, 4, NULL, 3, 0, '2018-04-11', 0, '2018-04-15', 0, '2018-04-08 19:25:40', '2018-04-08 19:25:52'),
(470, 'Sanda', 'Moldovan', 'dharm@yopmail.com', 'N/A', 'email', 199, 170, 170, 1, 4, NULL, 2, 0, '2018-04-11', 0, '2018-04-15', 0, '2018-04-08 19:54:17', '2018-04-08 19:55:06'),
(471, 'Sanda', 'Moldovan', 'dharm@yopmail.com', 'N/A', 'email', 199, 170, 170, 1, 4, NULL, 3, 0, '2018-04-11', 0, '2018-04-15', 0, '2018-04-08 20:03:30', '2018-04-08 20:03:41'),
(472, 'Sanda', 'Moldovan', 'dharm@yopmail.com', 'N/A', 'email', 199, 170, 170, 1, 4, NULL, 3, 0, '2018-04-11', 0, '2018-04-15', 0, '2018-04-08 20:12:57', '2018-04-08 20:13:11'),
(473, 'Sanda', 'Moldovan', 'dharm@yopmail.com', 'N/A', 'email', 199, 170, 170, 1, 4, NULL, 3, 0, '2018-04-11', 0, '2018-04-15', 0, '2018-04-08 20:21:22', '2018-04-08 20:21:33'),
(474, 'Sanda', 'Moldovan', 'dharm@yopmail.com', 'N/A', 'email', 199, 170, 170, 1, 4, NULL, 3, 0, '2018-04-11', 0, '2018-04-15', 0, '2018-04-08 20:24:08', '2018-04-08 20:24:19'),
(475, 'Sanda', 'Moldovan', 'dharm@yopmail.com', 'N/A', 'email', 199, 170, 170, 1, 4, NULL, 2, 0, '2018-04-11', 0, '2018-04-15', 0, '2018-04-08 20:27:02', '2018-04-08 20:27:35');

-- --------------------------------------------------------

--
-- Table structure for table `survey_ans`
--

CREATE TABLE `survey_ans` (
  `id` int(11) NOT NULL,
  `survey_mgmt_id` int(11) DEFAULT NULL,
  `review_mgmt_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `survey_qus_id` int(11) DEFAULT NULL,
  `fourstaroption` tinyint(1) DEFAULT '0' COMMENT 'if user click four star then fourstaroption = 1->question,2->review',
  `answers` text NOT NULL,
  `survey_done` int(1) NOT NULL DEFAULT '0',
  `q_level` varchar(250) DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `survey_ans`
--

INSERT INTO `survey_ans` (`id`, `survey_mgmt_id`, `review_mgmt_id`, `user_id`, `survey_qus_id`, `fourstaroption`, `answers`, `survey_done`, `q_level`, `created`, `modified`) VALUES
(202, 4, 116, 11, 1, NULL, '', 1, NULL, '2017-11-21 18:13:51', '2017-11-21 18:13:51'),
(203, 4, 116, 11, 2, NULL, '3', 1, NULL, '2017-11-21 18:13:51', '2017-11-21 18:13:51'),
(204, 4, 116, 11, 7, NULL, '3', 1, NULL, '2017-11-21 18:13:51', '2017-11-21 18:13:51'),
(205, 14, 119, 11, 7, NULL, '3', 1, NULL, '2017-11-21 18:17:17', '2017-11-21 18:17:17'),
(206, 14, 119, 11, 1, NULL, '3', 1, NULL, '2017-11-21 18:17:17', '2017-11-21 18:17:17'),
(207, 14, 120, 11, 7, NULL, '3', 1, NULL, '2017-11-21 18:18:29', '2017-11-21 18:18:29'),
(208, 14, 120, 11, 1, NULL, '3', 1, NULL, '2017-11-21 18:18:29', '2017-11-21 18:18:29'),
(209, 4, 127, 11, 1, NULL, '3', 1, NULL, '2017-12-02 19:20:40', '2017-12-02 19:20:40'),
(210, 4, 127, 11, 2, NULL, '3', 1, NULL, '2017-12-02 19:20:40', '2017-12-02 19:20:40'),
(211, 4, 127, 11, 7, NULL, '3', 1, NULL, '2017-12-02 19:20:40', '2017-12-02 19:20:40'),
(212, 22, 128, 11, 7, NULL, '1', 1, NULL, '2017-12-02 22:13:14', '2017-12-02 22:13:14'),
(213, 22, 128, 11, 34, NULL, '1', 1, NULL, '2017-12-02 22:13:14', '2017-12-02 22:13:14'),
(214, 22, 130, 11, 7, NULL, '0', 1, NULL, '2017-12-02 22:27:28', '2017-12-02 22:27:28'),
(215, 22, 130, 11, 1, NULL, '1', 1, NULL, '2017-12-02 22:27:28', '2017-12-02 22:27:28'),
(216, 23, 132, 172, 29, NULL, '0', 1, NULL, '2017-12-02 22:31:25', '2017-12-02 22:31:25'),
(217, 26, 135, 172, 29, NULL, '0', 1, NULL, '2017-12-02 23:57:37', '2017-12-02 23:57:37'),
(218, 25, 137, 172, 29, NULL, '0', 1, NULL, '2017-12-03 00:03:14', '2017-12-03 00:03:14'),
(219, 23, 138, 172, 29, NULL, '0', 1, NULL, '2017-12-03 00:04:04', '2017-12-03 00:04:04'),
(220, 17, 142, 170, 25, NULL, '0', 1, NULL, '2017-12-03 04:33:40', '2017-12-03 04:33:40'),
(221, 28, 149, 11, 7, NULL, '1', 1, NULL, '2017-12-04 20:06:49', '2017-12-04 20:06:49'),
(222, 28, 149, 11, 34, NULL, '1', 1, NULL, '2017-12-04 20:06:49', '2017-12-04 20:06:49'),
(223, 28, 150, 11, 7, NULL, '1', 1, NULL, '2017-12-04 20:08:53', '2017-12-04 20:08:53'),
(224, 28, 150, 11, 34, NULL, '0', 1, NULL, '2017-12-04 20:08:53', '2017-12-04 20:08:53'),
(225, 28, 151, 11, 7, NULL, '1', 1, NULL, '2017-12-04 21:13:10', '2017-12-04 21:13:10'),
(226, 28, 151, 11, 34, NULL, '1', 1, NULL, '2017-12-04 21:13:10', '2017-12-04 21:13:10'),
(227, 28, 153, 11, 7, NULL, '1', 1, NULL, '2017-12-04 23:53:17', '2017-12-04 23:53:17'),
(228, 28, 153, 11, 34, NULL, '1', 1, NULL, '2017-12-04 23:53:17', '2017-12-04 23:53:17'),
(229, 53, 156, 184, 47, NULL, '1', 1, NULL, '2017-12-05 00:57:26', '2017-12-05 00:57:26'),
(230, 53, 156, 184, 48, NULL, '1', 1, NULL, '2017-12-05 00:57:26', '2017-12-05 00:57:26'),
(231, 53, 156, 184, 49, NULL, '25', 1, NULL, '2017-12-05 00:57:26', '2017-12-05 00:57:26'),
(232, 27, 159, 170, 36, NULL, '1', 1, NULL, '2017-12-05 23:52:49', '2017-12-05 23:52:49'),
(233, 27, 159, 170, 37, NULL, '0', 1, NULL, '2017-12-05 23:52:49', '2017-12-05 23:52:49'),
(234, 27, 159, 170, 38, NULL, '1', 1, NULL, '2017-12-05 23:52:49', '2017-12-05 23:52:49'),
(235, 27, 159, 170, 39, NULL, '2', 1, NULL, '2017-12-05 23:52:49', '2017-12-05 23:52:49'),
(236, 27, 159, 170, 40, NULL, '0', 1, NULL, '2017-12-05 23:52:49', '2017-12-05 23:52:49'),
(237, 27, 159, 170, 41, NULL, 'test', 1, NULL, '2017-12-05 23:52:49', '2017-12-05 23:52:49'),
(238, 29, 168, 172, 29, NULL, '0', 1, NULL, '2017-12-07 00:54:08', '2017-12-07 00:54:08'),
(239, 29, 168, 172, 70, NULL, '3', 1, NULL, '2017-12-07 00:54:08', '2017-12-07 00:54:08'),
(240, 29, 168, 172, 71, NULL, '{\"Address\":\"test1\",\"State\":\"test3\",\"City\":\"test2\",\"Zipcode\":\"test4\"}', 1, NULL, '2017-12-07 00:54:08', '2017-12-07 00:54:08'),
(241, 60, 171, 202, 72, NULL, '0', 1, NULL, '2017-12-07 20:48:41', '2017-12-07 20:48:41'),
(242, 61, 172, 202, 75, NULL, '5', 1, NULL, '2017-12-07 20:49:43', '2017-12-07 20:49:43'),
(243, 62, 173, 202, 75, NULL, '4', 1, NULL, '2017-12-07 20:50:09', '2017-12-07 20:50:09'),
(244, 61, 176, 202, 75, NULL, '5', 1, NULL, '2017-12-07 20:58:27', '2017-12-07 20:58:27'),
(245, 65, 177, 203, 77, NULL, '2', 1, NULL, '2017-12-07 21:31:34', '2017-12-07 21:31:34'),
(246, 4, 187, 11, 1, NULL, '1', 1, NULL, '2017-12-09 00:05:40', '2017-12-09 00:05:40'),
(247, 4, 187, 11, 2, NULL, '3', 1, NULL, '2017-12-09 00:05:40', '2017-12-09 00:05:40'),
(248, 4, 187, 11, 7, NULL, '3', 1, NULL, '2017-12-09 00:05:40', '2017-12-09 00:05:40'),
(249, 14, 189, 11, 7, NULL, '0', 1, NULL, '2017-12-09 00:07:27', '2017-12-09 00:07:27'),
(250, 70, 195, 218, 87, NULL, '1', 1, NULL, '2017-12-09 02:27:04', '2017-12-09 02:27:04'),
(251, 70, 195, 218, 88, NULL, '3', 1, NULL, '2017-12-09 02:27:04', '2017-12-09 02:27:04'),
(252, 17, 197, 170, 25, NULL, '0', 1, NULL, '2017-12-09 03:09:41', '2017-12-09 03:09:41'),
(253, 70, 200, 218, 87, NULL, '0', 1, NULL, '2017-12-09 03:51:23', '2017-12-09 03:51:23'),
(254, 70, 200, 218, 88, NULL, '0', 1, NULL, '2017-12-09 03:51:23', '2017-12-09 03:51:23'),
(255, 14, 204, 11, 7, NULL, '3', 1, NULL, '2017-12-11 20:28:36', '2017-12-11 20:28:36'),
(256, 4, 206, 11, 1, NULL, '1,3', 1, NULL, '2017-12-11 20:54:53', '2017-12-11 20:54:53'),
(257, 4, 206, 11, 2, NULL, '3', 1, NULL, '2017-12-11 20:54:53', '2017-12-11 20:54:53'),
(258, 4, 206, 11, 7, NULL, '3', 1, NULL, '2017-12-11 20:54:53', '2017-12-11 20:54:53'),
(259, 77, 229, 231, 99, NULL, '0', 1, NULL, '2017-12-15 04:35:02', '2017-12-15 04:35:02'),
(260, 77, 230, 235, 99, NULL, '3', 1, NULL, '2017-12-15 04:37:26', '2017-12-15 04:37:26'),
(261, 72, 231, 233, 100, NULL, '3', 1, NULL, '2017-12-15 19:02:02', '2017-12-15 19:02:02'),
(262, 82, 234, 246, 112, NULL, '0', 1, NULL, '2017-12-16 17:29:30', '2017-12-16 17:29:30'),
(263, 83, 235, 246, 112, NULL, '1', 1, NULL, '2017-12-16 17:45:47', '2017-12-16 17:45:47'),
(264, 83, 239, 247, 112, NULL, '1', 1, NULL, '2017-12-16 17:58:59', '2017-12-16 17:58:59'),
(265, 90, 251, 252, 119, NULL, '1', 1, NULL, '2017-12-16 20:06:59', '2017-12-16 20:06:59'),
(266, 90, 252, 252, 119, NULL, '0', 1, NULL, '2017-12-16 20:57:08', '2017-12-16 20:57:08'),
(267, 120, 254, 11, 7, NULL, '0', 1, NULL, '2017-12-18 18:14:40', '2017-12-18 18:14:40'),
(268, 122, 256, 262, 123, NULL, '0', 1, NULL, '2017-12-20 23:14:59', '2017-12-20 23:14:59'),
(269, 122, 259, 263, 123, NULL, '0', 1, NULL, '2017-12-21 21:57:01', '2017-12-21 21:57:01'),
(270, 127, 268, 270, 127, NULL, '0', 1, NULL, '2017-12-22 17:43:19', '2017-12-22 17:43:19'),
(271, 130, 271, 270, 129, NULL, '0', 1, NULL, '2017-12-22 18:30:07', '2017-12-22 18:30:07'),
(272, 134, 276, 289, 133, NULL, '0', 1, NULL, '2017-12-23 01:12:38', '2017-12-23 01:12:38'),
(273, 27, 280, 170, 36, NULL, '1', 1, NULL, '2017-12-29 21:13:13', '2017-12-29 21:13:13'),
(274, 27, 280, 170, 37, NULL, '0', 1, NULL, '2017-12-29 21:13:13', '2017-12-29 21:13:13'),
(275, 27, 280, 170, 38, NULL, '1', 1, NULL, '2017-12-29 21:13:13', '2017-12-29 21:13:13'),
(276, 27, 280, 170, 39, NULL, '3', 1, NULL, '2017-12-29 21:13:13', '2017-12-29 21:13:13'),
(277, 27, 280, 170, 40, NULL, '1', 1, NULL, '2017-12-29 21:13:13', '2017-12-29 21:13:13'),
(278, 27, 280, 170, 41, NULL, 'test', 1, NULL, '2017-12-29 21:13:13', '2017-12-29 21:13:13'),
(279, 27, 281, 298, 36, NULL, '1', 1, NULL, '2017-12-29 21:16:54', '2017-12-29 21:16:54'),
(280, 27, 281, 298, 37, NULL, '1', 1, NULL, '2017-12-29 21:16:54', '2017-12-29 21:16:54'),
(281, 27, 281, 298, 38, NULL, '3', 1, NULL, '2017-12-29 21:16:54', '2017-12-29 21:16:54'),
(282, 27, 281, 298, 39, NULL, '3', 1, NULL, '2017-12-29 21:16:54', '2017-12-29 21:16:54'),
(283, 27, 281, 298, 40, NULL, '1', 1, NULL, '2017-12-29 21:16:54', '2017-12-29 21:16:54'),
(284, 27, 281, 298, 41, NULL, 'test', 1, NULL, '2017-12-29 21:16:54', '2017-12-29 21:16:54'),
(285, 27, 283, 170, 36, NULL, '1', 1, NULL, '2018-01-06 00:42:37', '2018-01-06 00:42:37'),
(286, 27, 283, 170, 37, NULL, '0', 1, NULL, '2018-01-06 00:42:37', '2018-01-06 00:42:37'),
(287, 27, 283, 170, 38, NULL, '0', 1, NULL, '2018-01-06 00:42:37', '2018-01-06 00:42:37'),
(288, 27, 283, 170, 39, NULL, '3', 1, NULL, '2018-01-06 00:42:37', '2018-01-06 00:42:37'),
(289, 27, 283, 170, 40, NULL, '1', 1, NULL, '2018-01-06 00:42:37', '2018-01-06 00:42:37'),
(290, 27, 283, 170, 41, NULL, 'No I don\'t', 1, NULL, '2018-01-06 00:42:37', '2018-01-06 00:42:37'),
(291, 119, 285, 11, 34, 1, '1', 1, NULL, '2018-01-11 00:45:37', '2018-01-11 00:45:37'),
(292, 119, 285, 11, 84, 1, '1', 1, NULL, '2018-01-11 00:45:37', '2018-01-11 00:45:37'),
(293, 119, 285, 11, 7, 1, '3', 1, NULL, '2018-01-11 00:45:37', '2018-01-11 00:45:37'),
(294, 27, 288, 170, 36, 0, '1', 1, NULL, '2018-01-11 03:42:40', '2018-01-11 03:42:40'),
(295, 27, 288, 170, 37, 0, '1', 1, NULL, '2018-01-11 03:42:40', '2018-01-11 03:42:40'),
(296, 27, 288, 170, 38, 0, '3', 1, NULL, '2018-01-11 03:42:40', '2018-01-11 03:42:40'),
(297, 27, 288, 170, 39, 0, '3', 1, NULL, '2018-01-11 03:42:40', '2018-01-11 03:42:40'),
(298, 27, 288, 170, 40, 0, '1', 1, NULL, '2018-01-11 03:42:40', '2018-01-11 03:42:40'),
(299, 27, 288, 170, 41, 0, 'no', 1, NULL, '2018-01-11 03:42:40', '2018-01-11 03:42:40'),
(300, 147, 290, 301, 142, 0, '0,1', 1, NULL, '2018-01-11 17:48:42', '2018-01-11 17:48:42'),
(301, 148, 293, 302, 142, 1, '0,1', 1, NULL, '2018-01-11 18:12:37', '2018-01-11 18:12:37'),
(302, 156, 296, 306, 146, 1, '1', 1, NULL, '2018-01-12 00:01:40', '2018-01-12 00:01:40'),
(303, 156, 296, 306, 146, 1, '1', 1, NULL, '2018-01-12 00:02:00', '2018-01-12 00:02:00'),
(304, 156, 296, 306, 146, 1, '1', 1, NULL, '2018-01-12 00:02:10', '2018-01-12 00:02:10'),
(305, 155, 297, 306, 146, 0, '2', 1, NULL, '2018-01-12 00:09:42', '2018-01-12 00:09:42'),
(306, 155, 297, 306, 146, 0, '2', 1, NULL, '2018-01-12 00:10:04', '2018-01-12 00:10:04'),
(307, 156, 303, 306, 146, 1, '3', 1, NULL, '2018-01-12 00:24:02', '2018-01-12 00:24:02'),
(308, 120, 310, 11, 7, 1, '0', 1, NULL, '2018-01-12 23:23:02', '2018-01-12 23:23:02'),
(309, 120, 310, 11, 84, 1, '1', 1, NULL, '2018-01-12 23:23:02', '2018-01-12 23:23:02'),
(310, 163, 312, 181, 42, 0, '0,1', 1, NULL, '2018-01-16 17:50:35', '2018-01-16 17:50:35'),
(311, 164, 317, 181, 42, 0, '1', 1, NULL, '2018-01-25 01:51:28', '2018-01-25 01:51:28'),
(312, 164, 318, 181, 42, 0, '0', 1, NULL, '2018-01-25 01:54:40', '2018-01-25 01:54:40'),
(313, 148, 321, 301, 167, 0, '5', 1, NULL, '2018-02-10 22:38:22', '2018-02-10 22:38:22'),
(314, 148, 321, 301, 142, 0, '1', 1, NULL, '2018-02-10 22:38:22', '2018-02-10 22:38:22'),
(315, 165, 322, 301, 142, 1, '0', 1, NULL, '2018-02-10 22:42:32', '2018-02-10 22:42:32'),
(316, 165, 322, 301, 168, 1, '25', 1, NULL, '2018-02-10 22:42:32', '2018-02-10 22:42:32'),
(317, 169, 460, 312, 172, 0, '0', 1, 'select_qusetion_id[0][172]', '2018-03-23 00:03:34', '2018-03-23 00:03:34'),
(318, 169, 460, 312, 171, 0, '0,1', 1, 'select_qusetion_id[0][172][ans][0][171]', '2018-03-23 00:03:34', '2018-03-23 00:03:34'),
(319, 169, 460, 312, 173, 0, 'Dharm Veer Singh', 1, 'select_qusetion_id[0][172][ans][0][173]', '2018-03-23 00:03:34', '2018-03-23 00:03:34'),
(320, 17, 464, 170, 25, 0, '0', 1, '', '2018-03-27 07:44:56', '2018-03-27 07:44:56'),
(321, 27, 466, 170, 36, 0, '0', 1, '', '2018-04-08 19:16:43', '2018-04-08 19:16:43'),
(322, 199, 470, 170, 25, 0, '0,2', 1, 'select_qusetion_id[0][25]', '2018-04-08 19:55:06', '2018-04-08 19:55:06'),
(323, 199, 470, 170, 26, 0, '0,1,2', 1, 'select_qusetion_id[0][26]', '2018-04-08 19:55:06', '2018-04-08 19:55:06'),
(324, 199, 470, 170, 27, 0, '0,1', 1, 'select_qusetion_id[0][27]', '2018-04-08 19:55:06', '2018-04-08 19:55:06'),
(325, 199, 470, 170, 36, 0, '2', 1, 'select_qusetion_id[0][36]', '2018-04-08 19:55:06', '2018-04-08 19:55:06'),
(326, 199, 470, 170, 188, 0, '0,1,2,3', 1, 'select_qusetion_id[0][36][ans][2][188]', '2018-04-08 19:55:06', '2018-04-08 19:55:06'),
(327, 199, 471, 170, 25, 0, '0,1', 1, 'select_qusetion_id[0][25]', '2018-04-08 20:06:08', '2018-04-08 20:06:08'),
(328, 199, 471, 170, 26, 0, '0,2', 1, 'select_qusetion_id[0][26]', '2018-04-08 20:06:08', '2018-04-08 20:06:08'),
(329, 199, 471, 170, 27, 0, '0,1,2', 1, 'select_qusetion_id[0][27]', '2018-04-08 20:06:08', '2018-04-08 20:06:08'),
(330, 199, 471, 170, 36, 0, '2', 1, 'select_qusetion_id[0][36]', '2018-04-08 20:06:08', '2018-04-08 20:06:08'),
(331, 199, 471, 170, 188, 0, '1,2,3', 1, 'select_qusetion_id[0][36][ans][2][188]', '2018-04-08 20:06:08', '2018-04-08 20:06:08'),
(332, 199, 472, 170, 25, 0, '0,2', 1, 'select_qusetion_id[0][25]', '2018-04-08 20:16:23', '2018-04-08 20:16:23'),
(333, 199, 472, 170, 26, 0, '0,1', 1, 'select_qusetion_id[0][26]', '2018-04-08 20:16:23', '2018-04-08 20:16:23'),
(334, 199, 472, 170, 27, 0, '0,1,2', 1, 'select_qusetion_id[0][27]', '2018-04-08 20:16:23', '2018-04-08 20:16:23'),
(335, 199, 472, 170, 36, 0, '2', 1, 'select_qusetion_id[0][36]', '2018-04-08 20:16:23', '2018-04-08 20:16:23'),
(336, 199, 472, 170, 188, 0, '1,2,3', 1, 'select_qusetion_id[0][36][ans][2][188]', '2018-04-08 20:16:24', '2018-04-08 20:16:24'),
(337, 199, 473, 170, 25, 0, '0,2', 1, 'select_qusetion_id[0][25]', '2018-04-08 20:22:18', '2018-04-08 20:22:18'),
(338, 199, 473, 170, 26, 0, '0,1', 1, 'select_qusetion_id[0][26]', '2018-04-08 20:22:18', '2018-04-08 20:22:18'),
(339, 199, 473, 170, 27, 0, '0,1,2', 1, 'select_qusetion_id[0][27]', '2018-04-08 20:22:18', '2018-04-08 20:22:18'),
(340, 199, 473, 170, 36, 0, '0', 1, 'select_qusetion_id[0][36]', '2018-04-08 20:22:18', '2018-04-08 20:22:18'),
(341, 199, 473, 170, 188, 0, '1,2,3', 1, 'select_qusetion_id[0][36][ans][0][188]', '2018-04-08 20:22:18', '2018-04-08 20:22:18'),
(342, 199, 474, 170, 25, 0, '0,2', 1, 'select_qusetion_id[0][25]', '2018-04-08 20:24:35', '2018-04-08 20:24:35'),
(343, 199, 474, 170, 26, 0, '0,1', 1, 'select_qusetion_id[0][26]', '2018-04-08 20:24:35', '2018-04-08 20:24:35'),
(344, 199, 474, 170, 27, 0, '0,1,2', 1, 'select_qusetion_id[0][27]', '2018-04-08 20:24:35', '2018-04-08 20:24:35'),
(345, 199, 474, 170, 36, 0, '2', 1, 'select_qusetion_id[0][36]', '2018-04-08 20:24:35', '2018-04-08 20:24:35'),
(346, 199, 474, 170, 188, 0, '1,3', 1, 'select_qusetion_id[0][36][ans][2][188]', '2018-04-08 20:24:35', '2018-04-08 20:24:35'),
(347, 199, 475, 170, 25, 0, '0,1,2', 1, 'select_qusetion_id[0][25]', '2018-04-08 20:27:35', '2018-04-08 20:27:35'),
(348, 199, 475, 170, 26, 0, '0,1,2', 1, 'select_qusetion_id[0][26]', '2018-04-08 20:27:35', '2018-04-08 20:27:35'),
(349, 199, 475, 170, 27, 0, '1,2', 1, 'select_qusetion_id[0][27]', '2018-04-08 20:27:35', '2018-04-08 20:27:35'),
(350, 199, 475, 170, 36, 0, '0', 1, 'select_qusetion_id[0][36]', '2018-04-08 20:27:35', '2018-04-08 20:27:35'),
(351, 199, 475, 170, 188, 0, '0,3', 1, 'select_qusetion_id[0][36][ans][0][188]', '2018-04-08 20:27:35', '2018-04-08 20:27:35');

-- --------------------------------------------------------

--
-- Table structure for table `survey_category`
--

CREATE TABLE `survey_category` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `created` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `survey_category`
--

INSERT INTO `survey_category` (`id`, `user_id`, `name`, `description`, `status`, `is_deleted`, `created`, `modified`) VALUES
(3, 11, 'New Category', 'Best Category of Question', 1, 0, '2017-10-23 17:27:11', '2017-12-08 20:44:40'),
(9, 11, 'Test Category', 'Test Category ', 1, 0, '2017-11-02 12:56:30', '2017-12-09 01:16:10'),
(26, 170, 'Default Category', 'This is default category description.', 1, 0, '2017-11-21 18:03:02', '2017-11-21 18:03:02'),
(27, 174, 'Default Category', 'This is default category description.', 1, 0, '2017-11-28 23:25:30', '2017-11-28 23:25:30'),
(28, 170, 'Buyer', 'Buyer Client', 1, 0, '2017-12-01 05:19:47', '2017-12-01 05:19:47'),
(29, 170, 'Seller', 'Seller Client', 1, 0, '2017-12-01 05:19:58', '2017-12-01 05:19:58'),
(30, 11, 'Test', 'csdc', 0, 1, '2017-12-02 19:44:29', '2017-12-02 20:52:15'),
(31, 11, 'test', 'sadcas', 1, 1, '2017-12-02 20:53:47', '2017-12-02 20:54:04'),
(32, 172, 'Test Category1', 'test', 1, 0, '2017-12-02 21:01:37', '2017-12-02 21:04:30'),
(33, 177, 'Default Category', 'This is default category description.', 0, 0, '2017-12-02 21:24:15', '2017-12-04 23:39:03'),
(34, 179, 'Default Category', 'This is default category description.', 1, 0, '2017-12-02 22:00:08', '2017-12-02 22:00:08'),
(35, 170, 'Tenant', 'Tenants', 1, 0, '2017-12-03 03:19:07', '2017-12-03 03:19:07'),
(36, 181, 'Default Category', 'This is default category description.', 1, 0, '2017-12-04 19:00:57', '2017-12-04 19:00:57'),
(37, 182, 'Default Category', 'This is default category description.', 1, 0, '2017-12-04 23:01:48', '2017-12-04 23:01:48'),
(38, 177, 'Test', ' fddsf', 1, 0, '2017-12-04 23:34:52', '2017-12-04 23:39:10'),
(39, 177, 'Test 1', 'Testing..', 1, 0, '2017-12-04 23:37:28', '2017-12-04 23:39:14'),
(40, 184, 'Default Category', 'This is default category description.', 1, 0, '2017-12-05 00:48:29', '2017-12-05 00:48:29'),
(41, 185, 'Default Category', 'This is default category description.', 1, 0, '2017-12-05 01:32:32', '2017-12-05 01:32:32'),
(42, 186, 'Default Category', 'This is default category description.', 1, 0, '2017-12-06 13:30:57', '2017-12-06 13:30:57'),
(43, 187, 'Default Category', 'This is default category description.', 1, 0, '2017-12-06 16:08:39', '2017-12-06 16:08:39'),
(44, 188, 'Default Category', 'This is default category description.', 1, 0, '2017-12-06 17:31:54', '2017-12-06 17:31:54'),
(45, 189, 'Default Category', 'This is default category description.', 1, 0, '2017-12-06 17:56:29', '2017-12-06 17:56:29'),
(46, 190, 'Default Category', 'This is default category description.', 1, 0, '2017-12-06 18:34:49', '2017-12-06 18:34:49'),
(47, 191, 'Default Category', 'This is default category description.', 1, 0, '2017-12-06 18:39:39', '2017-12-06 18:39:39'),
(48, 192, 'Default Category', 'This is default category description.', 1, 0, '2017-12-06 18:42:38', '2017-12-06 18:42:38'),
(49, 193, 'Default Category', 'This is default category description.', 1, 0, '2017-12-06 18:49:37', '2017-12-06 18:49:37'),
(50, 194, 'Default Category', 'This is default category description.', 1, 0, '2017-12-06 20:20:17', '2017-12-06 20:20:17'),
(51, 195, 'Default Category', 'This is default category description.', 1, 0, '2017-12-06 20:35:00', '2017-12-06 20:35:00'),
(52, 196, 'Default Category', 'This is default category description.', 1, 0, '2017-12-06 20:49:38', '2017-12-06 20:49:38'),
(53, 197, 'Default Category', 'This is default category description.', 1, 0, '2017-12-06 20:54:09', '2017-12-06 20:54:09'),
(54, 198, 'Default Category', 'This is default category description.', 1, 0, '2017-12-06 21:02:38', '2017-12-06 21:02:38'),
(55, 199, 'Default Category', 'This is default category description.', 1, 0, '2017-12-06 21:13:30', '2017-12-06 21:13:30'),
(56, 200, 'Default Category', 'This is default category description.', 1, 0, '2017-12-06 23:13:58', '2017-12-06 23:13:58'),
(57, 201, 'Default Category', 'This is default category description.', 1, 0, '2017-12-06 23:59:02', '2017-12-06 23:59:02'),
(58, 172, 'Star', 'test', 1, 0, '2017-12-07 00:35:10', '2017-12-07 00:35:10'),
(59, 172, 'Radio', 'test', 1, 0, '2017-12-07 00:35:19', '2017-12-07 00:35:19'),
(60, 172, 'Checkbox', 'test', 1, 0, '2017-12-07 00:35:29', '2017-12-07 00:35:29'),
(61, 172, 'Address Group Of fields', 'test', 1, 0, '2017-12-07 00:35:49', '2017-12-07 00:35:49'),
(62, 202, 'Default Category', 'This is default category description.', 1, 0, '2017-12-07 18:51:59', '2017-12-07 20:06:19'),
(63, 204, 'Default Category', 'This is default category description.', 1, 0, '2017-12-07 19:40:38', '2017-12-07 19:40:38'),
(64, 202, 'TestingCategory', 'Category for Testing ', 1, 0, '2017-12-07 20:04:23', '2017-12-07 20:22:39'),
(65, 202, 'test', 'test', 1, 1, '2017-12-07 20:23:02', '2017-12-07 20:23:21'),
(66, 202, 'Prashant Category', 'Prashant Category Description', 1, 0, '2017-12-07 21:05:35', '2017-12-07 21:05:35'),
(67, 202, 'Bikash Category', 'Bikash Category Description', 1, 0, '2017-12-07 21:10:42', '2017-12-07 21:10:42'),
(68, 208, 'Default Category', 'This is default category description.', 1, 0, '2017-12-07 23:34:05', '2017-12-07 23:34:05'),
(69, 202, 'dgdfsgdsfgsdfg', '         ', 1, 0, '2017-12-07 23:38:08', '2017-12-07 23:38:08'),
(70, 209, 'Default Category', 'This is default category description.', 1, 0, '2017-12-07 23:58:55', '2017-12-07 23:58:55'),
(71, 210, 'Default Category', 'This is default category description.', 1, 0, '2017-12-08 00:10:37', '2017-12-08 00:10:37'),
(72, 211, 'Default Category', 'This is default category description.', 1, 0, '2017-12-08 00:27:25', '2017-12-08 00:27:25'),
(73, 212, 'Default Category', 'This is default category description.', 1, 0, '2017-12-08 17:21:36', '2017-12-08 23:23:13'),
(74, 214, 'Default Category', 'This is default category description.', 1, 0, '2017-12-09 00:48:44', '2017-12-09 00:48:44'),
(75, 215, 'Default Category', 'This is default category description.', 1, 0, '2017-12-09 00:53:09', '2017-12-09 00:53:09'),
(76, 218, 'Default Category', 'This is default category description.', 1, 0, '2017-12-09 02:06:31', '2017-12-09 02:06:31'),
(77, 220, 'Default Category', 'This is default category description.', 1, 0, '2017-12-09 03:00:51', '2017-12-09 03:00:51'),
(78, 221, 'Default Category', 'This is default category description.', 1, 0, '2017-12-09 03:03:48', '2017-12-09 03:03:48'),
(79, 223, 'Default Category', 'This is default category description.', 1, 0, '2017-12-14 00:55:17', '2017-12-14 00:55:17'),
(80, 230, 'Default Category', 'This is default category description.', 1, 0, '2017-12-14 03:55:07', '2017-12-14 03:55:07'),
(81, 170, 'Test', 'New Test', 1, 0, '2017-12-14 06:10:32', '2017-12-14 06:10:32'),
(82, 231, 'Default Category', 'This is default category description.', 1, 0, '2017-12-14 22:56:28', '2017-12-14 22:56:28'),
(83, 232, 'Default Category', 'This is default category description.', 1, 0, '2017-12-15 00:20:02', '2017-12-15 00:20:02'),
(84, 234, 'Default Category', 'This is default category description.', 1, 0, '2017-12-15 01:03:24', '2017-12-15 01:03:24'),
(85, 241, 'Default Category', 'This is default category description.', 1, 0, '2017-12-15 19:52:16', '2017-12-15 19:52:16'),
(86, 244, 'Default Category', 'This is default category description.', 1, 0, '2017-12-15 23:20:25', '2017-12-15 23:20:25'),
(87, 245, 'Default Category', 'This is default category description.', 1, 0, '2017-12-16 15:59:48', '2017-12-16 15:59:48'),
(88, 246, 'Default Category', 'This is default category description.', 1, 0, '2017-12-16 16:38:25', '2017-12-16 16:38:25'),
(89, 246, 'Test Category ', 'Test Category description', 1, 0, '2017-12-16 17:23:05', '2017-12-16 17:23:05'),
(90, 248, 'Default Category', 'This is default category description.', 1, 0, '2017-12-16 18:40:08', '2017-12-16 18:40:08'),
(91, 248, 'Test Category', 'Test Category desc', 1, 0, '2017-12-16 18:50:21', '2017-12-16 18:50:21'),
(92, 250, 'Default Category', 'This is default category description.', 1, 0, '2017-12-16 19:04:09', '2017-12-16 19:04:09'),
(93, 251, 'Default Category', 'This is default category description.', 1, 0, '2017-12-16 19:06:04', '2017-12-16 19:06:04'),
(94, 251, 'Test Category', 'Test Category description', 1, 0, '2017-12-16 19:07:32', '2017-12-16 19:07:32'),
(95, 252, 'Default Category', 'This is default category description.', 1, 0, '2017-12-16 19:18:42', '2017-12-16 19:18:42'),
(96, 252, 'Test Category', 'Test Category description', 1, 0, '2017-12-16 19:19:48', '2017-12-16 19:19:48'),
(97, 253, 'Default Category', 'This is default category description.', 1, 0, '2017-12-16 20:31:43', '2017-12-16 20:31:43'),
(98, 254, 'Default Category', 'This is default category description.', 1, 0, '2017-12-16 20:33:16', '2017-12-16 20:33:16'),
(99, 255, 'Default Category', 'This is default category description.', 1, 0, '2017-12-16 20:48:29', '2017-12-16 20:48:29'),
(100, 262, 'Default Category', 'This is default category description.', 1, 0, '2017-12-20 23:10:13', '2017-12-20 23:10:13'),
(101, 264, 'Default Category', 'This is default category description.', 1, 0, '2017-12-20 23:27:54', '2017-12-20 23:27:54'),
(102, 267, 'Default Category', 'This is default category description.', 1, 0, '2017-12-21 23:14:53', '2017-12-21 23:14:53'),
(103, 269, 'Default Category', 'This is default category description.', 1, 0, '2017-12-21 23:46:05', '2017-12-21 23:46:05'),
(104, 270, 'Default Category', 'This is default category description.', 1, 0, '2017-12-21 23:47:30', '2017-12-21 23:47:30'),
(105, 276, 'Default Category', 'This is default category description.', 1, 0, '2017-12-21 23:57:39', '2017-12-21 23:57:39'),
(106, 270, 'Test Category', 'Test category description', 1, 0, '2017-12-22 00:40:38', '2017-12-22 00:40:38'),
(107, 284, 'Default Category', 'This is default category description.', 1, 0, '2017-12-22 17:09:17', '2017-12-22 17:09:17'),
(108, 286, 'Default Category', 'This is default category description.', 1, 0, '2017-12-22 17:22:27', '2017-12-22 17:22:27'),
(109, 287, 'Default Category', 'This is default category description.', 1, 0, '2017-12-22 17:24:31', '2017-12-22 17:24:31'),
(110, 289, 'Default Category', 'This is default category description.', 1, 0, '2017-12-23 00:14:50', '2017-12-23 00:14:50'),
(111, 290, 'Default Category', 'This is default category description.', 1, 0, '2017-12-23 02:20:26', '2017-12-23 02:20:26'),
(112, 291, 'Default Category', 'This is default category description.', 1, 0, '2017-12-26 10:08:50', '2017-12-26 10:08:50'),
(113, 294, 'Default Category', 'This is default category description.', 1, 0, '2017-12-27 00:48:18', '2017-12-27 00:48:18'),
(114, 295, 'Default Category', 'This is default category description.', 1, 0, '2017-12-27 01:09:56', '2017-12-27 01:09:56'),
(115, 296, 'Default Category', 'This is default category description.', 1, 0, '2017-12-27 01:14:08', '2017-12-27 01:14:08'),
(116, 297, 'Default Category', 'This is default category description.', 1, 0, '2017-12-27 23:45:20', '2017-12-27 23:45:20'),
(117, 299, 'Default Category', 'This is default category description.', 1, 0, '2017-12-29 22:07:25', '2017-12-29 22:07:25'),
(118, 301, 'Default Category', 'This is default category description.', 1, 0, '2018-01-11 17:43:28', '2018-01-11 17:43:28'),
(119, 303, 'Default Category', 'This is default category description.', 1, 0, '2018-01-11 23:35:11', '2018-01-11 23:35:11'),
(120, 304, 'Default Category', 'This is default category description.', 1, 0, '2018-01-11 23:41:37', '2018-01-11 23:41:37'),
(121, 305, 'Default Category', 'This is default category description.', 1, 0, '2018-01-11 23:49:02', '2018-01-11 23:49:02'),
(122, 306, 'Default Category', 'This is default category description.', 1, 0, '2018-01-11 23:59:49', '2018-01-11 23:59:49'),
(123, 307, 'Default Category', 'This is default category description.', 1, 0, '2018-01-12 01:28:26', '2018-01-12 01:28:26'),
(124, 308, 'Default Category', 'This is default category description.', 1, 0, '2018-01-12 16:58:45', '2018-01-12 16:58:45'),
(125, 309, 'Default Category', 'This is default category description.', 1, 0, '2018-01-12 23:15:46', '2018-01-12 23:15:46'),
(126, 312, 'Default Category', 'This is default category description.', 1, 0, '2018-03-22 23:21:12', '2018-03-22 23:21:12'),
(127, 321, 'Default Category', 'This is default category description.', 1, 0, '2018-03-28 18:14:01', '2018-03-28 18:14:01'),
(128, 322, 'Default Category', 'This is default category description.', 1, 0, '2018-04-03 02:30:14', '2018-04-03 02:30:14'),
(129, 323, 'Default Category', 'This is default category description.', 1, 0, '2018-04-08 02:51:04', '2018-04-08 02:51:04'),
(130, 324, 'Default Category', 'This is default category description.', 1, 0, '2018-04-08 03:46:50', '2018-04-08 03:46:50'),
(131, 325, 'Default Category', 'This is default category description.', 1, 0, '2018-04-08 03:50:14', '2018-04-08 03:50:14'),
(132, 326, 'Default Category', 'This is default category description.', 1, 0, '2018-04-08 03:52:55', '2018-04-08 03:52:55'),
(133, 328, 'Default Category', 'This is default category description.', 1, 0, '2018-04-08 03:55:13', '2018-04-08 03:55:13'),
(134, 329, 'Default Category', 'This is default category description.', 1, 0, '2018-04-08 03:57:34', '2018-04-08 03:57:34'),
(135, 330, 'Default Category', 'This is default category description.', 1, 0, '2018-04-08 04:02:20', '2018-04-08 04:02:20'),
(136, 331, 'Default Category', 'This is default category description.', 1, 0, '2018-04-08 04:47:22', '2018-04-08 04:47:22'),
(137, 332, 'Default Category', 'This is default category description.', 1, 0, '2018-04-08 05:41:31', '2018-04-08 05:41:31'),
(138, 333, 'Default Category', 'This is default category description.', 1, 0, '2018-04-08 05:46:30', '2018-04-08 05:46:30'),
(139, 334, 'Default Category', 'This is default category description.', 1, 0, '2018-04-08 05:47:54', '2018-04-08 05:47:54'),
(140, 335, 'Default Category', 'This is default category description.', 1, 0, '2018-04-08 05:49:22', '2018-04-08 05:49:22');

-- --------------------------------------------------------

--
-- Table structure for table `survey_mgmt`
--

CREATE TABLE `survey_mgmt` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `description` varchar(500) NOT NULL,
  `survey_template_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_edited` tinyint(1) DEFAULT '0' COMMENT '0=>edit, 1=>nonedit',
  `created` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `survey_mgmt`
--

INSERT INTO `survey_mgmt` (`id`, `user_id`, `name`, `description`, `survey_template_id`, `status`, `is_deleted`, `is_edited`, `created`, `modified`) VALUES
(4, 11, ' Health Literacy Assessments', 'cdsgzdhdrhsfwerghwhrterj', 1, 1, 0, 0, '2017-10-22 23:30:00', '2017-11-02 13:00:47'),
(14, 11, 'Test Survey New', 'Test Survey New', 5, 1, 0, 0, '2017-11-04 01:02:06', '2017-11-07 01:43:13'),
(15, 11, 'Test Survey2', 'Test Survey2', 1, 1, 0, 0, '2017-11-16 04:23:49', '2017-11-16 04:23:49'),
(17, 170, '5 star review', '5 star review request', 7, 1, 0, 1, '2017-11-08 14:57:52', '2017-11-08 14:57:52'),
(18, 172, 'test', 'test', 8, 1, 0, 0, '2017-12-02 21:02:29', '2017-12-02 21:02:29'),
(19, 177, 'survey3', '        ', 9, 1, 0, 0, '2017-12-02 21:47:57', '2017-12-02 21:47:57'),
(20, 177, 'survey4', '    ', 9, 0, 0, 0, '2017-12-02 21:49:39', '2017-12-02 22:00:01'),
(21, 177, 'test1', 'testing', 9, 1, 0, 0, '2017-12-02 22:03:32', '2017-12-02 22:03:32'),
(22, 11, 'Finanace survey', 'Finanace survey testing', 5, 1, 0, 0, '2017-12-02 22:12:08', '2017-12-02 22:15:07'),
(23, 172, 'ReviewTemplate', 'test', 12, 1, 0, 0, '2017-12-02 22:29:22', '2017-12-02 22:29:22'),
(24, 11, 'survey 1', 'test', 10, 1, 0, 0, '2017-12-02 22:30:16', '2017-12-02 22:30:16'),
(25, 172, 'Facebook survey', 'test', 13, 1, 0, 0, '2017-12-02 22:33:41', '2017-12-02 22:33:41'),
(26, 172, 'Demo Test1', 'Demo Test1 Description', 12, 1, 0, 0, '2017-12-02 23:51:42', '2017-12-02 23:51:42'),
(27, 170, '5 Star Survey', '5 star survey for responses below 5 stars', 14, 1, 0, 1, '2017-12-03 04:27:58', '2017-12-06 16:05:21'),
(28, 11, 'Review Survey', 'test', 16, 1, 0, 0, '2017-12-04 18:49:49', '2017-12-04 18:49:49'),
(29, 172, 'Dec survey', 'test', 17, 1, 0, 0, '2017-12-04 19:25:42', '2017-12-04 19:25:42'),
(30, 177, 'Test2', 'Testing...', 9, 1, 0, 0, '2017-12-04 21:18:19', '2017-12-04 21:18:19'),
(31, 177, 'Test3', 'Testing..', 9, 1, 1, 0, '2017-12-04 21:18:34', '2017-12-04 21:48:25'),
(32, 177, 'Test3', 'Testing....', 9, 1, 0, 0, '2017-12-04 21:18:46', '2017-12-04 21:18:46'),
(33, 177, 'Test4', 'Testing....', 9, 1, 0, 0, '2017-12-04 21:19:01', '2017-12-04 21:19:01'),
(34, 177, 'Test5', 'Testing..', 9, 1, 0, 0, '2017-12-04 21:19:16', '2017-12-04 21:19:16'),
(35, 177, 'Test6', 'Testing..', 9, 1, 0, 0, '2017-12-04 21:19:31', '2017-12-04 21:19:31'),
(36, 177, 'Test7', 'Testing...', 9, 1, 0, 0, '2017-12-04 21:19:44', '2017-12-04 21:19:44'),
(37, 177, 'Test8', 'Testing...', 9, 1, 0, 0, '2017-12-04 21:19:59', '2017-12-04 21:19:59'),
(38, 177, 'Test9', 'Testing', 9, 1, 0, 0, '2017-12-04 21:20:15', '2017-12-04 21:20:15'),
(39, 177, 'Test10', 'Testing...', 9, 1, 0, 0, '2017-12-04 21:20:28', '2017-12-04 21:20:28'),
(40, 177, 'Test11', 'Testing..', 9, 1, 0, 0, '2017-12-04 21:20:42', '2017-12-04 21:20:42'),
(41, 177, 'Test12', 'Testing....', 9, 1, 0, 0, '2017-12-04 21:20:54', '2017-12-04 21:20:54'),
(42, 177, 'Test13', 'Testing....', 9, 1, 0, 0, '2017-12-04 21:21:17', '2017-12-04 21:21:17'),
(43, 177, 'Test14', 'Testing...', 9, 1, 0, 0, '2017-12-04 21:21:29', '2017-12-04 21:21:29'),
(44, 177, 'Test15', 'Testing..', 9, 1, 0, 0, '2017-12-04 21:21:45', '2017-12-04 21:21:45'),
(45, 177, 'Test16', 'Testing....', 9, 1, 0, 0, '2017-12-04 21:21:57', '2017-12-04 21:21:57'),
(46, 177, 'Test17', 'Testing...', 9, 1, 0, 0, '2017-12-04 21:22:09', '2017-12-04 21:22:09'),
(47, 177, 'Test18', 'Testing..', 9, 1, 0, 0, '2017-12-04 21:22:21', '2017-12-04 21:22:21'),
(48, 177, 'Test19', 'Testing...', 9, 1, 0, 0, '2017-12-04 21:22:33', '2017-12-04 21:22:33'),
(49, 177, 'Test20', 'Testing..', 9, 0, 0, 0, '2017-12-04 21:22:45', '2017-12-04 21:54:38'),
(50, 177, 'Test21', 'Testing...', 9, 1, 0, 0, '2017-12-04 21:22:56', '2017-12-04 21:22:56'),
(51, 177, 'Test22', 'Testing...', 9, 1, 0, 0, '2017-12-04 21:23:08', '2017-12-04 21:23:08'),
(52, 177, 'Test20', 'Testing...', 9, 1, 0, 0, '2017-12-04 21:37:18', '2017-12-04 21:37:18'),
(53, 184, 'Test Survey', 'test', 20, 1, 0, 0, '2017-12-05 00:54:55', '2017-12-05 00:54:55'),
(54, 185, '5 Star Review', '5 Star Review', 22, 1, 0, 0, '2017-12-05 02:03:52', '2017-12-05 02:03:52'),
(55, 170, 'New Dec Survey', 'test', 14, 1, 1, 0, '2017-12-06 16:06:03', '2017-12-14 01:17:16'),
(56, 187, 'New Review', 'New Review', 23, 1, 0, 0, '2017-12-06 16:39:54', '2017-12-06 16:39:54'),
(57, 199, 'Test Survey New', 'Test Survey New', 24, 1, 0, 0, '2017-12-06 21:53:20', '2017-12-06 21:53:20'),
(58, 200, 'Test New Review', 'Test New Review', 25, 1, 0, 0, '2017-12-06 23:16:29', '2017-12-06 23:16:29'),
(59, 201, 'New Review', 'New Review', 26, 1, 0, 0, '2017-12-07 00:03:57', '2017-12-07 00:03:57'),
(60, 202, 'Test New Survey', 'Test New Survey Description', 27, 1, 0, 0, '2017-12-07 20:25:50', '2017-12-07 20:26:02'),
(61, 202, 'social survey', 'social survey with social icon', 30, 1, 0, 0, '2017-12-07 20:43:38', '2017-12-07 20:43:38'),
(62, 202, 'Review Survey', 'Review Survey Description', 28, 1, 0, 0, '2017-12-07 20:44:04', '2017-12-07 20:44:04'),
(63, 202, 'Chetu Survey', 'Chetu Survey Description', 29, 1, 0, 0, '2017-12-07 20:44:26', '2017-12-07 20:44:26'),
(64, 202, 'Prashant Survey', 'Prashant Survey Description', 31, 1, 0, 0, '2017-12-07 21:17:27', '2017-12-07 21:17:27'),
(65, 202, 'Bikash Survey', 'Bikash Survey Description           ', 32, 1, 0, 0, '2017-12-07 21:18:00', '2017-12-07 23:39:33'),
(66, 204, 'Test Survey New', 'New Template', 33, 1, 0, 0, '2017-12-07 21:45:57', '2017-12-07 21:45:57'),
(67, 202, 'sdfsdfsadfsad', '         ', 27, 1, 0, 0, '2017-12-07 23:39:45', '2017-12-07 23:39:45'),
(68, 11, 'Survey for retesting', 'Survey for retesting', 35, 1, 0, 0, '2017-12-09 00:31:44', '2017-12-09 00:31:44'),
(69, 212, 'Test Survey New', 'Test Survey New', 34, 1, 0, 0, '2017-12-09 00:46:07', '2017-12-09 00:46:07'),
(70, 218, 'Test servey1', 'Test Desc', 36, 1, 0, 0, '2017-12-09 02:18:38', '2017-12-09 02:18:38'),
(71, 221, 'Test Survey New', 'New Template', 37, 1, 0, 0, '2017-12-09 04:20:34', '2017-12-09 04:20:34'),
(72, 232, 'Test Survey New', 'Test Survey New', 40, 1, 0, 0, '2017-12-15 00:29:01', '2017-12-15 00:29:01'),
(73, 234, '5 Star Review', '5 star review ', 42, 1, 0, 0, '2017-12-15 02:17:28', '2017-12-15 02:17:28'),
(74, 234, '5 star survey', '5 star survey', 41, 1, 0, 0, '2017-12-15 02:17:53', '2017-12-15 02:17:53'),
(75, 223, 'Five Star Review', 'Five Star Review', 39, 1, 0, 0, '2017-12-15 03:22:48', '2017-12-15 03:22:48'),
(76, 223, 'Five Star Survey', 'Five Star Survey', 38, 1, 0, 0, '2017-12-15 03:23:27', '2017-12-15 03:23:27'),
(77, 231, 'my first test', 'das', 43, 1, 0, 0, '2017-12-15 04:33:54', '2017-12-15 04:33:54'),
(78, 241, 'Default Survey', 'Default Survey Description', 44, 1, 0, 0, '2017-12-15 19:52:16', '2017-12-15 19:52:16'),
(79, 244, 'Default Survey', 'Default Survey Description', 45, 1, 0, 0, '2017-12-15 23:20:26', '2017-12-15 23:20:26'),
(80, 245, 'Default Survey', 'Default Survey Description', 46, 1, 0, 0, '2017-12-16 15:59:48', '2017-12-16 15:59:48'),
(81, 246, 'Default Survey', 'Default Survey Description', 47, 1, 0, 0, '2017-12-16 16:38:25', '2017-12-16 16:38:25'),
(82, 246, 'Raj', 'Raj description', 48, 1, 0, 0, '2017-12-16 17:26:59', '2017-12-16 17:26:59'),
(83, 246, 'Shiva survey', 'Shiva survey Description', 49, 1, 0, 0, '2017-12-16 17:34:12', '2017-12-16 17:34:12'),
(84, 248, 'Default Survey', 'Default Survey Description', 50, 1, 0, 0, '2017-12-16 18:40:08', '2017-12-16 18:40:08'),
(85, 248, 'rohit', 'rohit Description', 51, 1, 0, 0, '2017-12-16 18:56:38', '2017-12-16 18:56:38'),
(86, 248, 'Mohit review', 'Mohit review Description', 52, 1, 0, 0, '2017-12-16 18:58:14', '2017-12-16 18:58:14'),
(87, 250, 'Default Survey', 'Default Survey Description', 53, 1, 0, 0, '2017-12-16 19:04:09', '2017-12-16 19:04:09'),
(88, 251, 'Default Survey', 'Default Survey Description', 54, 1, 0, 0, '2017-12-16 19:06:04', '2017-12-16 19:06:04'),
(89, 252, 'Default Survey', 'Default Survey Description', 57, 1, 0, 0, '2017-12-16 19:18:43', '2017-12-16 19:18:43'),
(90, 252, 'rohit survey', 'Rohit survey description', 58, 1, 0, 0, '2017-12-16 19:25:58', '2017-12-16 19:25:58'),
(91, 252, 'rohit review', 'Rohit review description', 59, 1, 0, 0, '2017-12-16 20:05:18', '2017-12-16 20:05:18'),
(92, 253, 'Default Survey', 'Default Survey Description', 60, 1, 0, 0, '2017-12-16 20:31:43', '2017-12-16 20:31:43'),
(93, 254, 'Default Survey', 'Default Survey Description', 61, 1, 0, 0, '2017-12-16 20:33:16', '2017-12-16 20:33:16'),
(94, 255, 'Default Survey', 'Default Survey Description', 62, 1, 0, 0, '2017-12-16 20:48:30', '2017-12-16 20:48:30'),
(95, 11, 'Survey 22', 'Survey 22 description', 1, 1, 0, 0, '2017-12-18 17:51:17', '2017-12-18 17:51:17'),
(96, 11, 'Survey23', 'Survey23 description', 1, 1, 0, 0, '2017-12-18 17:51:46', '2017-12-18 17:51:46'),
(97, 11, 'Survey 24', 'Survey 24 description', 1, 1, 0, 0, '2017-12-18 17:52:13', '2017-12-18 17:52:13'),
(98, 11, 'survey 25', 'survey 25 description', 1, 1, 0, 0, '2017-12-18 17:52:39', '2017-12-18 17:52:39'),
(99, 11, 'survey27', 'survey27  Description', 1, 1, 0, 0, '2017-12-18 17:53:11', '2017-12-18 17:53:11'),
(100, 11, 'survey28', 'survey28 description', 1, 1, 0, 0, '2017-12-18 17:53:40', '2017-12-18 17:53:40'),
(101, 11, 'survey29', 'survey29 Description', 1, 1, 0, 0, '2017-12-18 17:54:06', '2017-12-18 17:54:06'),
(102, 11, 'Survey30', 'Survey30 Description', 1, 1, 0, 0, '2017-12-18 17:54:35', '2017-12-18 17:54:35'),
(103, 11, 'Survey 31', 'Survey 31 description', 1, 1, 1, 0, '2017-12-18 17:55:07', '2018-01-11 00:49:42'),
(104, 11, 'survey32', 'survey32 description', 1, 1, 0, 0, '2017-12-18 17:55:35', '2017-12-18 17:55:35'),
(105, 11, 'survey33', 'survey33 description', 1, 1, 0, 0, '2017-12-18 17:56:10', '2017-12-18 17:56:10'),
(106, 11, 'survey34', 'survey34 Description', 1, 1, 0, 0, '2017-12-18 17:56:37', '2017-12-18 17:56:37'),
(107, 11, 'Survey35', 'Survey35 Description', 1, 1, 0, 0, '2017-12-18 17:57:06', '2017-12-18 17:57:06'),
(108, 11, 'survey36', 'survey36 Description', 1, 1, 0, 0, '2017-12-18 17:57:38', '2017-12-18 17:57:38'),
(109, 11, 'survey37', 'survey37 Description', 1, 1, 0, 0, '2017-12-18 17:58:02', '2017-12-18 17:58:02'),
(110, 11, 'survey38', 'survey38 description', 1, 1, 0, 0, '2017-12-18 17:58:32', '2017-12-18 17:58:32'),
(111, 11, 'Survey39', 'Survey39 Description', 1, 1, 0, 0, '2017-12-18 17:58:57', '2017-12-18 17:58:57'),
(112, 11, 'Survey 40', 'Survey 40 Description', 1, 1, 0, 0, '2017-12-18 17:59:21', '2017-12-18 17:59:21'),
(113, 11, 'Survey 41', 'Survey 41 Description', 1, 1, 0, 0, '2017-12-18 17:59:48', '2017-12-18 17:59:48'),
(114, 11, 'Survey 42', 'Survey 42 Survey 42', 1, 1, 0, 0, '2017-12-18 18:00:13', '2017-12-18 18:00:13'),
(115, 11, 'Survey 43', 'Survey 43 description', 1, 1, 0, 0, '2017-12-18 18:00:48', '2017-12-18 18:00:48'),
(116, 11, 'Survey 44', 'Survey 44 Description', 1, 1, 0, 0, '2017-12-18 18:01:13', '2017-12-18 18:01:13'),
(117, 11, 'Survey 45', 'Survey 45 Description', 1, 1, 1, 0, '2017-12-18 18:03:29', '2018-01-11 00:49:45'),
(118, 11, 'Survey 46', 'Survey 46 Description', 1, 1, 0, 0, '2017-12-18 18:04:09', '2017-12-18 18:04:09'),
(119, 11, 'Survey 47 4 star question', 'survey 47 description', 35, 1, 0, 0, '2017-12-18 18:04:38', '2018-01-11 00:43:56'),
(120, 11, 'Review for 55 review option', 'Review for 55 description', 108, 1, 0, 0, '2017-12-18 18:12:42', '2018-01-12 23:20:07'),
(121, 252, 'Survey 55', 'Survey 55 description', 64, 1, 0, 0, '2017-12-18 18:20:11', '2017-12-18 18:20:11'),
(122, 262, 'Default Survey', 'Default Survey Description', 67, 1, 0, 0, '2017-12-20 23:10:14', '2017-12-20 23:10:14'),
(123, 264, 'Default Survey', 'Default Survey Description', 68, 1, 0, 0, '2017-12-20 23:27:54', '2017-12-20 23:27:54'),
(124, 266, 'fgfsdgh', 'dfgfsdgfd', 67, 1, 1, 0, '2017-12-21 22:29:27', '2017-12-21 23:21:22'),
(125, 267, 'Default Survey', 'Default Survey Description', 69, 1, 0, 1, '2017-12-21 23:14:53', '2017-12-21 23:14:53'),
(126, 269, 'Default Survey', 'Default Survey Description', 70, 1, 0, 1, '2017-12-21 23:46:05', '2017-12-21 23:46:05'),
(127, 270, 'Default Survey', 'Default Survey Description', 71, 1, 0, 1, '2017-12-21 23:47:31', '2017-12-21 23:47:31'),
(128, 276, 'Default Survey', 'Default Survey Description', 72, 1, 0, 1, '2017-12-21 23:57:39', '2017-12-21 23:57:39'),
(129, 270, 'Karan review', 'Karan review description', 73, 1, 0, 0, '2017-12-22 00:50:53', '2017-12-22 00:50:53'),
(130, 270, 'Arjun survey', 'Arjun survey description', 74, 1, 0, 0, '2017-12-22 00:51:37', '2017-12-22 00:51:37'),
(131, 284, 'Default Survey', 'Default Survey Description', 75, 1, 0, 1, '2017-12-22 17:09:17', '2017-12-22 17:09:17'),
(132, 286, 'Default Survey', 'Default Survey Description', 76, 1, 0, 0, '2017-12-22 17:22:27', '2017-12-22 17:22:27'),
(133, 287, 'Default Survey', 'Default Survey Description', 77, 1, 0, 1, '2017-12-22 17:24:32', '2017-12-22 17:24:32'),
(134, 289, 'Default Survey', 'Default Survey Description', 78, 1, 0, 1, '2017-12-23 00:14:50', '2017-12-23 00:14:50'),
(135, 290, 'Default Survey', 'Default Survey Description', 79, 1, 0, 1, '2017-12-23 02:20:27', '2017-12-23 02:20:27'),
(136, 291, 'Default Survey', 'Default Survey Description', 80, 1, 0, 1, '2017-12-26 10:08:50', '2017-12-26 10:08:50'),
(137, 294, '5 Star Survey', '5 Star survey for responses below 5 stars', 82, 1, 0, 1, '2017-12-27 00:48:19', '2017-12-27 00:48:19'),
(138, 294, '5 Star review', '5 star review request', 83, 1, 0, 1, '2017-12-27 00:48:19', '2017-12-27 00:48:19'),
(139, 295, '5 Star Survey', '5 Star survey for responses below 5 stars', 84, 1, 0, 1, '2017-12-27 01:09:56', '2017-12-27 01:09:56'),
(140, 295, '5 Star review', '5 star review request', 85, 1, 0, 1, '2017-12-27 01:09:56', '2017-12-27 01:09:56'),
(141, 296, '5 Star Survey', '5 Star survey for responses below 5 stars', 86, 1, 0, 1, '2017-12-27 01:14:08', '2017-12-27 01:14:08'),
(142, 296, '5 Star review', '5 star review request', 87, 1, 0, 1, '2017-12-27 01:14:08', '2017-12-27 01:14:08'),
(143, 297, '5 Star Survey', '5 Star survey for responses below 5 stars', 88, 1, 0, 1, '2017-12-27 23:45:21', '2017-12-27 23:45:21'),
(144, 297, '5 Star review', '5 star review request', 89, 1, 0, 1, '2017-12-27 23:45:21', '2017-12-27 23:45:21'),
(145, 299, '5 Star Survey', '5 Star survey for responses below 5 stars', 90, 1, 0, 1, '2017-12-29 22:07:25', '2017-12-29 22:07:25'),
(146, 299, '5 Star review', '5 star review request', 91, 1, 0, 1, '2017-12-29 22:07:25', '2017-12-29 22:07:25'),
(147, 301, '5 Star Survey', '5 Star survey for responses below 5 stars', 92, 1, 0, 1, '2018-01-11 17:43:33', '2018-01-11 17:43:33'),
(148, 301, '5 Star review', '5 star review request', 93, 1, 0, 1, '2018-01-11 17:43:34', '2018-01-11 17:43:34'),
(149, 303, '5 Star Survey', '5 Star survey for responses below 5 stars', 94, 1, 0, 1, '2018-01-11 23:35:15', '2018-01-11 23:35:15'),
(150, 303, '5 Star review', '5 star review request', 95, 1, 0, 1, '2018-01-11 23:35:16', '2018-01-11 23:35:16'),
(151, 304, '5 Star Survey', '5 Star survey for responses below 5 stars', 96, 1, 0, 1, '2018-01-11 23:41:41', '2018-01-11 23:41:41'),
(152, 304, '5 Star review', '5 star review request', 97, 1, 0, 1, '2018-01-11 23:41:42', '2018-01-11 23:41:42'),
(153, 305, '5 Star Survey', '5 Star survey for responses below 5 stars', 98, 1, 0, 1, '2018-01-11 23:49:07', '2018-01-11 23:49:07'),
(154, 305, '5 Star review', '5 star review request', 99, 1, 0, 1, '2018-01-11 23:49:07', '2018-01-11 23:49:07'),
(155, 306, '5 Star Survey', '5 Star survey for responses below 5 stars', 100, 1, 0, 1, '2018-01-11 23:59:51', '2018-01-11 23:59:51'),
(156, 306, '5 Star review', '5 star review request', 101, 1, 0, 1, '2018-01-11 23:59:52', '2018-01-11 23:59:52'),
(157, 307, '5 Star Survey', '5 Star survey for responses below 5 stars', 102, 1, 0, 1, '2018-01-12 01:28:33', '2018-01-12 01:28:33'),
(158, 307, '5 Star review', '5 star review request', 103, 1, 0, 1, '2018-01-12 01:28:35', '2018-01-12 01:28:35'),
(159, 308, '5 Star Survey', '5 Star survey for responses below 5 stars', 104, 1, 0, 1, '2018-01-12 16:58:50', '2018-01-12 16:58:50'),
(160, 308, '5 Star review', '5 star review request', 105, 1, 0, 1, '2018-01-12 16:58:51', '2018-01-12 16:58:51'),
(161, 309, '5 Star Survey', '5 Star survey for responses below 5 stars', 106, 1, 0, 1, '2018-01-12 23:15:50', '2018-01-12 23:15:50'),
(162, 309, '5 Star review', '5 star review request', 107, 1, 0, 1, '2018-01-12 23:15:51', '2018-01-12 23:15:51'),
(163, 181, 'Test Review', 'test desc', 110, 1, 0, 0, '2018-01-16 17:48:49', '2018-01-16 17:48:49'),
(164, 181, 'Test survey', 'test desc', 66, 1, 0, 0, '2018-01-25 01:49:21', '2018-01-25 01:49:21'),
(165, 301, 'test Review', 'Test desc', 111, 1, 0, 0, '2018-02-10 22:41:42', '2018-02-10 22:41:42'),
(166, 301, 'Test Review New', 'Test Review New', 111, 1, 0, 0, '2018-02-16 01:28:18', '2018-02-16 01:28:18'),
(167, 312, '5 Star Survey', '5 Star survey for responses below 5 stars', 114, 1, 0, 1, '2018-03-22 23:21:17', '2018-03-22 23:21:17'),
(168, 312, '5 Star review', '5 star review request', 115, 1, 0, 1, '2018-03-22 23:21:17', '2018-03-22 23:21:17'),
(169, 312, 'Test Survey', 'Test Survey', 116, 1, 0, 0, '2018-03-22 23:37:00', '2018-03-22 23:37:00'),
(170, 321, '5 Star Survey', '5 Star survey for responses below 5 stars', 118, 1, 0, 1, '2018-03-28 18:14:07', '2018-03-28 18:14:07'),
(171, 321, '5 Star review', '5 star review request', 119, 1, 0, 1, '2018-03-28 18:14:09', '2018-03-28 18:14:09'),
(172, 322, '5 Star Survey', '5 Star survey for responses below 5 stars', 120, 1, 0, 1, '2018-04-03 02:30:18', '2018-04-03 02:30:18'),
(173, 322, '5 Star review', '5 star review request', 121, 1, 0, 1, '2018-04-03 02:30:18', '2018-04-03 02:30:18'),
(174, 323, '5 Star Survey', '5 Star survey for responses below 5 stars', 122, 1, 0, 1, '2018-04-08 02:51:05', '2018-04-08 02:51:05'),
(175, 323, '5 Star review', '5 star review request', 123, 1, 0, 1, '2018-04-08 02:51:05', '2018-04-08 02:51:05'),
(176, 324, '5 Star Survey', '5 Star survey for responses below 5 stars', 124, 1, 0, 1, '2018-04-08 03:46:52', '2018-04-08 03:46:52'),
(177, 324, '5 Star review', '5 star review request', 125, 1, 0, 1, '2018-04-08 03:46:53', '2018-04-08 03:46:53'),
(178, 325, '5 Star Survey', '5 Star survey for responses below 5 stars', 126, 1, 0, 1, '2018-04-08 03:50:15', '2018-04-08 03:50:15'),
(179, 325, '5 Star review', '5 star review request', 127, 1, 0, 1, '2018-04-08 03:50:15', '2018-04-08 03:50:15'),
(180, 326, '5 Star Survey', '5 Star survey for responses below 5 stars', 128, 1, 0, 1, '2018-04-08 03:52:58', '2018-04-08 03:52:58'),
(181, 326, '5 Star review', '5 star review request', 129, 1, 0, 1, '2018-04-08 03:52:59', '2018-04-08 03:52:59'),
(182, 328, '5 Star Survey', '5 Star survey for responses below 5 stars', 130, 1, 0, 1, '2018-04-08 03:55:16', '2018-04-08 03:55:16'),
(183, 328, '5 Star review', '5 star review request', 131, 1, 0, 1, '2018-04-08 03:55:17', '2018-04-08 03:55:17'),
(184, 329, '5 Star Survey', '5 Star survey for responses below 5 stars', 132, 1, 0, 1, '2018-04-08 03:57:38', '2018-04-08 03:57:38'),
(185, 329, '5 Star review', '5 star review request', 133, 1, 0, 1, '2018-04-08 03:57:38', '2018-04-08 03:57:38'),
(186, 330, '5 Star Survey', '5 Star survey for responses below 5 stars', 134, 1, 0, 1, '2018-04-08 04:02:24', '2018-04-08 04:02:24'),
(187, 330, '5 Star review', '5 star review request', 135, 1, 0, 1, '2018-04-08 04:02:24', '2018-04-08 04:02:24'),
(188, 331, '5 Star Survey', '5 Star survey for responses below 5 stars', 136, 1, 0, 1, '2018-04-08 04:47:25', '2018-04-08 04:47:25'),
(189, 331, '5 Star review', '5 star review request', 137, 1, 0, 1, '2018-04-08 04:47:26', '2018-04-08 04:47:26'),
(190, 332, '5 Star Survey', '5 Star survey for responses below 5 stars', 138, 1, 0, 1, '2018-04-08 05:41:34', '2018-04-08 05:41:34'),
(191, 332, '5 Star review', '5 star review request', 139, 1, 0, 1, '2018-04-08 05:41:35', '2018-04-08 05:41:35'),
(192, 333, '5 Star Survey', '5 Star survey for responses below 5 stars', 140, 1, 0, 1, '2018-04-08 05:46:33', '2018-04-08 05:46:33'),
(193, 333, '5 Star review', '5 star review request', 141, 1, 0, 1, '2018-04-08 05:46:33', '2018-04-08 05:46:33'),
(194, 334, '5 Star Survey', '5 Star survey for responses below 5 stars', 142, 1, 0, 1, '2018-04-08 05:47:56', '2018-04-08 05:47:56'),
(195, 334, '5 Star review', '5 star review request', 143, 1, 0, 1, '2018-04-08 05:47:56', '2018-04-08 05:47:56'),
(196, 335, '5 Star Survey', '5 Star survey for responses below 5 stars', 144, 1, 0, 1, '2018-04-08 05:49:25', '2018-04-08 05:49:25'),
(197, 335, '5 Star review', '5 star review request', 145, 1, 0, 1, '2018-04-08 05:49:25', '2018-04-08 05:49:25'),
(198, 170, 'Test Review', 'Test Review', 146, 1, 0, 0, '2018-04-08 19:23:37', '2018-04-10 10:19:55'),
(199, 170, 'Test Survey1', 'Test Survey1', 147, 1, 0, 0, '2018-04-08 19:53:59', '2018-04-08 19:53:59');

-- --------------------------------------------------------

--
-- Table structure for table `survey_question`
--

CREATE TABLE `survey_question` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `questions` varchar(500) NOT NULL,
  `ans_types` int(1) NOT NULL COMMENT '1=Radio, 2=Checkbox,3=Textarea,4=Five star,5=Address Group Of Fields',
  `ans_choices` varchar(255) DEFAULT NULL,
  `correct_ans` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `created` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `survey_question`
--

INSERT INTO `survey_question` (`id`, `user_id`, `category_id`, `questions`, `ans_types`, `ans_choices`, `correct_ans`, `status`, `is_deleted`, `created`, `modified`) VALUES
(1, 11, 5, 'Is tests questions ?', 2, 'Yes,I Don\'t No,No,Nothing', '1', 1, 0, '2017-10-27 23:32:31', '2017-11-02 15:23:12'),
(2, 11, 5, 'What is your name 1 ?', 1, 'Dharm,Veer,Singh,Dharm Veer Singh', '3', 1, 0, '2017-10-28 00:29:05', '2017-10-28 00:29:05'),
(7, 11, 9, 'What is your designation ?', 1, 'Software Developer,Architech,Finance,Accounting', '0', 1, 0, '2017-11-03 19:47:27', '2017-11-03 19:47:27'),
(25, 170, 26, 'My agent was always on time and punctual', 2, 'Agree|Disagree|Don\'t agree or disagree', '0,1', 1, 0, '2017-11-04 05:56:18', '2017-11-04 06:51:42'),
(26, 170, 26, 'My agent was very knowledgeable about the area.', 2, 'Agree|Disagree|Don\'t agree or disagree', '', 1, 0, '2017-11-08 08:15:35', '2017-11-08 08:15:35'),
(27, 170, 26, 'My Agent was an expert negotiator.', 2, 'Agree|Disagree|Don\'t agree or disagree', '', 1, 0, '2017-11-08 08:16:11', '2017-11-08 08:16:11'),
(28, 174, 27, 'Default Question', 2, 'Good Service,Best Service,Nothing,No Need', '0,1', 1, 0, '2017-11-28 23:25:30', '2017-11-28 23:25:30'),
(29, 172, 32, 'test', 1, 'A', NULL, 1, 0, '2017-12-02 21:01:52', '2017-12-02 21:01:52'),
(30, 177, 33, 'Default Question', 2, 'Good Service,Best Service,Nothing,No Need', '', 1, 0, '2017-12-02 21:24:15', '2017-12-04 19:02:20'),
(31, 177, 33, '    ', 1, '  ', NULL, 1, 0, '2017-12-02 21:35:07', '2017-12-02 21:35:07'),
(32, 177, 33, '    ', 1, '    ', NULL, 0, 1, '2017-12-02 21:54:44', '2017-12-04 23:31:52'),
(33, 179, 34, 'Default Question', 2, 'Good Service,Best Service,Nothing,No Need', '0,1', 1, 0, '2017-12-02 22:00:08', '2017-12-02 22:13:23'),
(34, 11, 9, 'What is you role here?', 1, 'Admin,Tester,Developer', NULL, 1, 0, '2017-12-02 22:10:15', '2017-12-02 22:10:15'),
(35, 170, 35, 'The property was clean and ready for me when I moved in.', 1, 'Agree|Disagree|Don\'t agree or disagree', NULL, 1, 0, '2017-12-03 03:20:18', '2017-12-03 03:20:18'),
(36, 170, 26, 'How would you rate the professionalism of your agent?', 1, 'Exceptional|Good|Poor', NULL, 1, 0, '2017-12-03 04:05:19', '2017-12-03 04:05:19'),
(37, 170, 26, 'How knowledgeable was your agent?', 1, 'Extremely Knowledgeable|Somewhat Knowledgeable|Not very Knowledgeable', NULL, 1, 0, '2017-12-03 04:08:22', '2017-12-03 04:08:22'),
(38, 170, 26, 'Was your agent always on time and punctual?', 1, 'Yes, always|Sometimes|very rarely', NULL, 1, 0, '2017-12-03 04:09:33', '2017-12-03 04:09:33'),
(39, 170, 26, 'How would you rate the communication from your agent throughout the process?', 1, 'Great, they always kept me informed|Ok, sometimes I had to ask for information|My agent did not keep me informed/communicate with me', NULL, 1, 0, '2017-12-03 04:11:33', '2017-12-03 04:11:33'),
(40, 170, 26, 'How would you rate your overall experience with your agent?', 1, 'Fantastic|it was ok|It was terrible', NULL, 1, 0, '2017-12-03 04:12:23', '2017-12-03 04:12:23'),
(41, 170, 26, 'Do you have anything else you would like us to know?', 3, '', NULL, 1, 0, '2017-12-03 04:12:56', '2017-12-03 04:12:56'),
(42, 181, 36, 'Default Question', 2, 'Good Service,Best Service,Nothing,No Need', '0,1', 1, 0, '2017-12-04 19:00:57', '2017-12-04 19:00:57'),
(43, 182, 37, 'Default Question', 2, 'Good Service,Best Service,Nothing,No Need', '0,1', 1, 0, '2017-12-04 23:01:48', '2017-12-04 23:01:48'),
(44, 177, 33, '   ', 1, '  ,  ', '', 1, 1, '2017-12-04 23:32:47', '2017-12-04 23:33:46'),
(45, 177, 38, 'Q1', 1, '  ', NULL, 1, 0, '2017-12-05 00:08:48', '2017-12-05 00:08:48'),
(46, 177, 39, '   ', 1, '  ', NULL, 1, 0, '2017-12-05 00:09:00', '2017-12-05 00:09:00'),
(47, 184, 40, 'Default Question', 2, 'Good Service,Best Service,Nothing,No Need', '0,1', 1, 0, '2017-12-05 00:48:29', '2017-12-05 00:48:29'),
(48, 184, 40, 'What is your gender?', 1, 'Male,Female', NULL, 1, 0, '2017-12-05 00:53:23', '2017-12-05 00:53:23'),
(49, 184, 40, 'What is your age?', 3, '', NULL, 1, 0, '2017-12-05 00:54:01', '2017-12-05 00:54:01'),
(50, 185, 41, 'Default Question', 2, 'Good Service|Best Service|Nothing|No Need', '0,1', 1, 0, '2017-12-05 01:32:32', '2017-12-05 01:32:32'),
(51, 185, 41, 'How was your experience?', 1, 'Good|Ok|Bad', NULL, 1, 0, '2017-12-05 01:59:24', '2017-12-05 01:59:24'),
(52, 185, 41, 'How Professional was your agent?', 1, 'Good|OK|Bad', NULL, 1, 0, '2017-12-05 01:59:52', '2017-12-05 01:59:52'),
(53, 185, 41, 'Any additional information ', 3, '', NULL, 1, 0, '2017-12-05 02:00:08', '2017-12-05 02:00:08'),
(54, 186, 42, 'Default Question', 2, 'Good Service,Best Service,Nothing,No Need', '0,1', 1, 0, '2017-12-06 13:30:57', '2017-12-06 13:30:57'),
(55, 187, 43, 'Default Question', 2, 'Good Service,Best Service,Nothing,No Need', '0,1', 1, 0, '2017-12-06 16:08:40', '2017-12-06 16:08:40'),
(56, 188, 44, 'Default Question', 2, 'Good Service,Best Service,Nothing,No Need', '0,1', 1, 0, '2017-12-06 17:31:54', '2017-12-06 17:31:54'),
(57, 189, 45, 'Default Question', 2, 'Good Service,Best Service,Nothing,No Need', '0,1', 1, 0, '2017-12-06 17:56:29', '2017-12-06 17:56:29'),
(58, 190, 46, 'Default Question', 2, 'Good Service,Best Service,Nothing,No Need', '0,1', 1, 0, '2017-12-06 18:34:49', '2017-12-06 18:34:49'),
(59, 191, 47, 'Default Question', 2, 'Good Service,Best Service,Nothing,No Need', '0,1', 1, 0, '2017-12-06 18:39:39', '2017-12-06 18:39:39'),
(60, 192, 48, 'Default Question', 2, 'Good Service,Best Service,Nothing,No Need', '0,1', 1, 0, '2017-12-06 18:42:38', '2017-12-06 18:42:38'),
(61, 193, 49, 'Default Question', 2, 'Good Service,Best Service,Nothing,No Need', '0,1', 1, 0, '2017-12-06 18:49:37', '2017-12-06 18:49:37'),
(62, 194, 50, 'Default Question', 2, 'Good Service,Best Service,Nothing,No Need', '0,1', 1, 0, '2017-12-06 20:20:17', '2017-12-06 20:20:17'),
(63, 195, 51, 'Default Question', 2, 'Good Service,Best Service,Nothing,No Need', '0,1', 1, 0, '2017-12-06 20:35:00', '2017-12-06 20:35:00'),
(64, 196, 52, 'Default Question', 2, 'Good Service,Best Service,Nothing,No Need', '0,1', 1, 0, '2017-12-06 20:49:38', '2017-12-06 20:49:38'),
(65, 197, 53, 'Default Question', 2, 'Good Service,Best Service,Nothing,No Need', '0,1', 1, 0, '2017-12-06 20:54:09', '2017-12-06 20:54:09'),
(66, 198, 54, 'Default Question', 2, 'Good Service,Best Service,Nothing,No Need', '0,1', 1, 0, '2017-12-06 21:02:38', '2017-12-06 21:02:38'),
(67, 199, 55, 'Default Question', 2, 'Good Service,Best Service,Nothing,No Need', '0,1', 1, 0, '2017-12-06 21:13:30', '2017-12-06 21:13:30'),
(68, 200, 56, 'Default Question', 2, 'Good Service,Best Service,Nothing,No Need', '0,1', 1, 0, '2017-12-06 23:13:58', '2017-12-06 23:13:58'),
(69, 201, 57, 'Default Question', 2, 'Good Service,Best Service,Nothing,No Need', '0,1', 1, 0, '2017-12-06 23:59:02', '2017-12-06 23:59:02'),
(70, 172, 58, 'Give your feedback?', 4, '', NULL, 1, 0, '2017-12-07 00:44:13', '2017-12-07 00:44:13'),
(71, 172, 61, 'Where do you live?', 5, '', NULL, 1, 0, '2017-12-07 00:51:34', '2017-12-07 00:51:34'),
(72, 202, 62, 'Default Question', 2, 'Good Service,Best Service,Nothing,No Need', '0,1', 1, 0, '2017-12-07 18:51:59', '2017-12-07 20:23:44'),
(73, 204, 63, 'Default Question', 2, 'Good Service,Best Service,Nothing,No Need', '0,1', 1, 0, '2017-12-07 19:40:38', '2017-12-07 19:40:38'),
(74, 202, 62, 'What is Chetu?', 1, 'Software Company,Testing Company,IT Company', NULL, 1, 0, '2017-12-07 20:28:41', '2017-12-07 20:28:50'),
(75, 202, 64, 'Give Rating to Chetu', 4, '', NULL, 1, 0, '2017-12-07 20:29:43', '2017-12-07 20:29:43'),
(76, 202, 66, 'Question By Prashant.', 2, 'Hitlor,Tanashah,Dictator', NULL, 1, 0, '2017-12-07 21:06:53', '2017-12-07 21:06:53'),
(77, 202, 67, 'Bikash love to ', 1, 'Tea,Chana,Feni', NULL, 1, 0, '2017-12-07 21:15:04', '2017-12-07 21:15:04'),
(78, 208, 68, 'Default Question', 2, 'Good Service,Best Service,Nothing,No Need', '0,1', 1, 0, '2017-12-07 23:34:05', '2017-12-07 23:34:05'),
(79, 209, 70, 'Default Question', 2, 'Good Service,Best Service,Nothing,No Need', '0,1', 1, 0, '2017-12-07 23:58:55', '2017-12-07 23:58:55'),
(80, 210, 71, 'Default Question', 2, 'Good Service,Best Service,Nothing,No Need', '0,1', 1, 0, '2017-12-08 00:10:37', '2017-12-08 00:10:37'),
(81, 211, 72, 'Default Question', 2, 'Good Service,Best Service,Nothing,No Need', '0,1', 1, 0, '2017-12-08 00:27:25', '2017-12-08 00:27:25'),
(82, 212, 73, 'Default Question', 2, 'Good Service,Best Service,Nothing,No Need', '0,1', 1, 0, '2017-12-08 17:21:36', '2017-12-08 23:23:18'),
(83, 11, 3, 'dddd', 1, 'dd', NULL, 1, 0, '2017-12-09 00:03:15', '2017-12-09 00:03:15'),
(84, 11, 9, 'How are you doing', 2, 'Fine, thank you,doing fine,Fine, tell me about you', NULL, 1, 0, '2017-12-09 00:20:26', '2017-12-09 00:20:26'),
(85, 214, 74, 'Default Question', 2, 'Good Service,Best Service,Nothing,No Need', '0,1', 1, 0, '2017-12-09 00:48:44', '2017-12-09 00:48:44'),
(86, 215, 75, 'Default Question', 2, 'Good Service,Best Service,Nothing,No Need', '0,1', 1, 0, '2017-12-09 00:53:09', '2017-12-09 00:53:09'),
(87, 218, 76, 'Default Question', 2, 'Good Service,Best Service,Nothing,No Need', '0,1', 1, 0, '2017-12-09 02:06:31', '2017-12-09 02:06:31'),
(88, 218, 76, 'What is your age?', 1, '20,25,30,35', '', 1, 0, '2017-12-09 02:16:09', '2017-12-09 02:16:09'),
(89, 220, 77, 'Default Question', 2, 'Good Service,Best Service,Nothing,No Need', '0,1', 1, 0, '2017-12-09 03:00:51', '2017-12-09 03:00:51'),
(90, 221, 78, 'Default Question', 2, 'Good Service,Best Service,Nothing,No Need', '0,1', 1, 0, '2017-12-09 03:03:48', '2017-12-09 03:03:48'),
(91, 223, 79, 'Default Question', 2, 'Good Service|Best Service|Nothing|No Need', '0,1', 1, 0, '2017-12-14 00:55:17', '2017-12-14 00:55:17'),
(92, 223, 79, 'How would you rate the professionalism of your agent?', 1, 'Exeptional|Good|Poor', NULL, 1, 0, '2017-12-14 01:28:38', '2017-12-14 01:28:38'),
(93, 223, 79, 'How Knowledgeable was your agent?', 1, 'Extremely Knowledgeable|Somewhat Knowledgeable|Not very Knowledgeable', NULL, 1, 0, '2017-12-14 01:29:25', '2017-12-14 01:29:25'),
(94, 223, 79, 'Was your agent always on time and punctual?', 1, 'Yes, always|Sometimes|Very Rarely', NULL, 1, 0, '2017-12-14 01:29:59', '2017-12-14 01:29:59'),
(95, 223, 79, 'How would you rate the communication from your agent throughout the process?', 1, 'Great, they always kept me informed|Ok, sometimes I had to ask for information|My agent did not keep me informed/communicate with me', NULL, 1, 0, '2017-12-14 01:31:06', '2017-12-14 01:31:06'),
(96, 223, 79, 'How would you rate your overall experience with your agent?', 1, 'Fantastic|It was ok|It was terrible', NULL, 1, 0, '2017-12-14 01:31:44', '2017-12-14 01:31:44'),
(97, 223, 79, 'Do you have anything else you would like us to know?', 3, '', NULL, 1, 0, '2017-12-14 01:32:03', '2017-12-14 01:32:03'),
(98, 230, 80, 'Default Question', 2, 'Good Service,Best Service,Nothing,No Need', '0,1', 1, 0, '2017-12-14 03:55:07', '2017-12-14 03:55:07'),
(99, 231, 82, 'Default Question', 2, 'Good Service,Best Service,Nothing,No Need', '0,1', 1, 0, '2017-12-14 22:56:28', '2017-12-14 22:56:28'),
(100, 232, 83, 'Default Question', 2, 'Good Service,Best Service,Nothing,No Need', '0,1', 1, 0, '2017-12-15 00:20:02', '2017-12-15 00:20:02'),
(101, 234, 84, 'Default Question', 2, 'Good Service|Best Service|Nothing|No Need ', '0,1', 1, 0, '2017-12-15 01:03:25', '2017-12-15 01:03:25'),
(102, 234, 84, 'How would you rate the professionalism of your agent?', 1, 'Exceptional|Good|Poor', NULL, 1, 0, '2017-12-15 01:11:37', '2017-12-15 01:11:37'),
(103, 234, 84, 'How knowledgeable was your agent?', 1, 'Extremely Knowledgeable|Somewhat Knowledgeable|Not very Knowledgeable', NULL, 1, 0, '2017-12-15 01:12:24', '2017-12-15 01:12:24'),
(104, 234, 84, 'Was your agent always on time and punctual?', 1, 'Yes, always|Sometimes|Very rarely', NULL, 1, 0, '2017-12-15 01:13:11', '2017-12-15 01:13:11'),
(105, 234, 84, 'How would you rate the communication from your agent throughout the process?', 1, 'Great, they always kept me informed|Ok, sometimes I had to ask for information|My agent did not keep me informed/communicate with me', NULL, 1, 0, '2017-12-15 01:14:24', '2017-12-15 01:14:24'),
(106, 234, 84, 'How would you rate your overall experience with your agent?', 1, 'It was fantastic|It was ok|It was terrible', NULL, 1, 0, '2017-12-15 01:15:12', '2017-12-15 01:15:12'),
(107, 234, 84, 'Do you have anything else you would like us to know?', 3, '', NULL, 1, 0, '2017-12-15 01:15:30', '2017-12-15 01:15:30'),
(108, 241, 85, 'Default Question', 2, 'Good Service,Best Service,Nothing,No Need', '0,1', 1, 0, '2017-12-15 19:52:16', '2017-12-15 19:52:16'),
(109, 244, 86, 'Default Question', 2, 'Good Service,Best Service,Nothing,No Need', '0,1', 1, 0, '2017-12-15 23:20:26', '2017-12-15 23:20:26'),
(110, 245, 87, 'Default Question', 2, 'Good Service,Best Service,Nothing,No Need', '0,1', 1, 0, '2017-12-16 15:59:48', '2017-12-16 15:59:48'),
(111, 246, 88, 'Default Question', 2, 'Good Service,Best Service,Nothing,No Need', '0,1', 1, 0, '2017-12-16 16:38:25', '2017-12-16 16:38:25'),
(112, 246, 89, 'What is your name ?', 1, 'Raj,Shiva', '', 1, 0, '2017-12-16 17:24:51', '2017-12-16 17:24:51'),
(113, 248, 90, 'Default Question', 2, 'Good Service,Best Service,Nothing,No Need', '0,1', 1, 0, '2017-12-16 18:40:08', '2017-12-16 18:40:08'),
(114, 248, 91, 'What is your name ?', 1, 'Rohit,Mohit', NULL, 1, 0, '2017-12-16 18:51:09', '2017-12-16 18:51:09'),
(115, 250, 92, 'Default Question', 2, 'Good Service,Best Service,Nothing,No Need', '0,1', 1, 0, '2017-12-16 19:04:09', '2017-12-16 19:04:09'),
(116, 251, 93, 'Default Question', 2, 'Good Service,Best Service,Nothing,No Need', '0,1', 1, 0, '2017-12-16 19:06:04', '2017-12-16 19:06:04'),
(117, 251, 94, 'What is your name ?', 1, 'Rohit,Mohit', NULL, 1, 0, '2017-12-16 19:09:00', '2017-12-16 19:09:00'),
(118, 252, 95, 'Default Question', 2, 'Good Service,Best Service,Nothing,No Need', '0,1', 1, 0, '2017-12-16 19:18:43', '2017-12-16 19:18:43'),
(119, 252, 96, 'What is your name ?', 1, 'rohit,mohit', NULL, 1, 0, '2017-12-16 19:20:33', '2017-12-16 19:20:33'),
(120, 253, 97, 'Default Question', 2, 'Good Service,Best Service,Nothing,No Need', '0,1', 1, 0, '2017-12-16 20:31:43', '2017-12-16 20:31:43'),
(121, 254, 98, 'Default Question', 2, 'Good Service,Best Service,Nothing,No Need', '0,1', 1, 0, '2017-12-16 20:33:16', '2017-12-16 20:33:16'),
(122, 255, 99, 'Default Question', 2, 'Good Service,Best Service,Nothing,No Need', '0,1', 1, 0, '2017-12-16 20:48:29', '2017-12-16 20:48:29'),
(123, 262, 100, 'Default Question', 2, 'Good Service,Best Service,Nothing,No Need', '0,1', 1, 0, '2017-12-20 23:10:13', '2017-12-20 23:10:13'),
(124, 264, 101, 'Default Question', 2, 'Good Service,Best Service,Nothing,No Need', '0,1', 1, 0, '2017-12-20 23:27:54', '2017-12-20 23:27:54'),
(125, 267, 102, 'Default Question', 2, 'Good Service,Best Service,Nothing,No Need', '0,1', 1, 0, '2017-12-21 23:14:53', '2017-12-21 23:14:53'),
(126, 269, 103, 'Default Question', 2, 'Good Service,Best Service,Nothing,No Need', '0,1', 1, 0, '2017-12-21 23:46:05', '2017-12-21 23:46:05'),
(127, 270, 104, 'Default Question', 2, 'Good Service,Best Service,Nothing,No Need', '0,1', 1, 0, '2017-12-21 23:47:30', '2017-12-21 23:47:30'),
(128, 276, 105, 'Default Question', 2, 'Good Service,Best Service,Nothing,No Need', '0,1', 1, 0, '2017-12-21 23:57:39', '2017-12-21 23:57:39'),
(129, 270, 106, 'What is your name ?', 1, 'Karan,Arjun', NULL, 1, 0, '2017-12-22 00:41:49', '2017-12-22 00:41:49'),
(130, 284, 107, 'Default Question', 2, 'Good Service,Best Service,Nothing,No Need', '0,1', 1, 0, '2017-12-22 17:09:17', '2017-12-22 17:09:17'),
(131, 286, 108, 'Default Question', 2, 'Good Service,Best Service,Nothing,No Need', '0,1', 1, 0, '2017-12-22 17:22:27', '2017-12-22 17:22:27'),
(132, 287, 109, 'Default Question', 2, 'Good Service,Best Service,Nothing,No Need', '0,1', 1, 0, '2017-12-22 17:24:31', '2017-12-22 17:24:31'),
(133, 289, 110, 'Default Question', 2, 'Good Service,Best Service,Nothing,No Need', '0,1', 1, 0, '2017-12-23 00:14:50', '2017-12-23 00:14:50'),
(134, 290, 111, 'Default Question', 2, 'Good Service,Best Service,Nothing,No Need', '0,1', 1, 0, '2017-12-23 02:20:27', '2017-12-23 02:20:27'),
(135, 291, 112, 'Default Question', 2, 'Good Service,Best Service,Nothing,No Need', '0,1', 1, 0, '2017-12-26 10:08:50', '2017-12-26 10:08:50'),
(136, 291, 112, 'Hello', 1, 'Yes,No', NULL, 1, 0, '2017-12-26 10:09:33', '2017-12-26 10:09:33'),
(137, 294, 113, 'Default Question', 2, 'Good Service,Best Service,Nothing,No Need', '0,1', 1, 0, '2017-12-27 00:48:19', '2017-12-27 00:48:19'),
(138, 295, 114, 'Default Question', 2, 'Good Service,Best Service,Nothing,No Need', '0,1', 1, 0, '2017-12-27 01:09:56', '2017-12-27 01:09:56'),
(139, 296, 115, 'Default Question', 2, 'Good Service,Best Service,Nothing,No Need', '0,1', 1, 0, '2017-12-27 01:14:08', '2017-12-27 01:14:08'),
(140, 297, 116, 'Default Question', 2, 'Good Service,Best Service,Nothing,No Need', '0,1', 1, 0, '2017-12-27 23:45:20', '2017-12-27 23:45:20'),
(141, 299, 117, 'Default Question', 2, 'Good Service,Best Service,Nothing,No Need', '0,1', 1, 0, '2017-12-29 22:07:25', '2017-12-29 22:07:25'),
(142, 301, 118, 'Default Question', 2, 'Good Service,Best Service,Nothing,No Need', '0,1', 1, 0, '2018-01-11 17:43:28', '2018-01-11 17:43:28'),
(143, 303, 119, 'Default Question', 2, 'Good Service,Best Service,Nothing,No Need', '0,1', 1, 0, '2018-01-11 23:35:12', '2018-01-11 23:35:12'),
(144, 304, 120, 'Default Question', 2, 'Good Service,Best Service,Nothing,No Need', '0,1', 1, 0, '2018-01-11 23:41:37', '2018-01-11 23:41:37'),
(145, 305, 121, 'Default Question', 2, 'Good Service,Best Service,Nothing,No Need', '0,1', 1, 0, '2018-01-11 23:49:04', '2018-01-11 23:49:04'),
(146, 306, 122, 'Default Question', 2, 'Good Service,Best Service,Nothing,No Need', '0,1', 1, 0, '2018-01-11 23:59:49', '2018-01-11 23:59:49'),
(147, 307, 123, 'Default Question', 2, 'Good Service|Best Service|Nothing|No Need', '0,1', 1, 0, '2018-01-12 01:28:28', '2018-01-12 01:28:28'),
(148, 308, 124, 'Default Question', 2, 'Good Service,Best Service,Nothing,No Need', '0,1', 1, 0, '2018-01-12 16:58:46', '2018-01-12 16:58:46'),
(149, 309, 125, 'Default Question', 2, 'Good Service,Best Service,Nothing,No Need', '0,1', 1, 0, '2018-01-12 23:15:46', '2018-01-12 23:15:46'),
(150, 181, 36, 'Your age?', 2, '20,30', '', 1, 0, '2018-01-24 01:49:09', '2018-01-24 01:49:09'),
(151, 170, 26, 'asdfadsf', 1, 'adsf|adsf', NULL, 1, 0, '2018-01-26 01:31:50', '2018-01-26 01:31:50'),
(152, 170, 26, 'aaaaaaaassssssssssssfffffffffff', 1, 'adsf|adsf', NULL, 1, 0, '2018-01-26 01:32:07', '2018-01-26 01:32:07'),
(153, 170, 26, 'llllllllllllleeeeeeeeeeeeeee', 1, 'adsf|adsf', NULL, 1, 0, '2018-01-26 01:32:23', '2018-01-26 01:32:23'),
(154, 170, 26, 'vveeeeeeeeeeevvvvvvv', 1, 'adsf|adsf', NULL, 1, 0, '2018-01-26 01:32:40', '2018-01-26 01:32:40'),
(155, 170, 26, 'rrrrrrrrrrrrrrrrrrrrrrraaaaaaaaaaaaaaaa', 1, 'adsf|adsf', NULL, 1, 0, '2018-01-26 01:32:55', '2018-01-26 01:32:55'),
(156, 170, 26, 'jjjjjjjjjjjjjjjjjjjjjjjjjjjjyyyyyyyyyyyyyyyyy', 1, 'adsf|adsf', NULL, 1, 0, '2018-01-26 01:33:10', '2018-01-26 01:33:10'),
(157, 170, 26, 'iiiiiiiiiiiiiiiiiiiiiiiiihhhhhhhhhhhhhhhh', 1, 'adsf|adsf', NULL, 1, 0, '2018-01-26 01:33:25', '2018-01-26 01:33:25'),
(158, 170, 26, 'bbbbbbbbbbbbbbbbbbbbbbgggggggggggggggggg', 1, 'adsf|adf', NULL, 1, 0, '2018-01-26 01:33:40', '2018-01-26 01:33:40'),
(159, 170, 26, 'mmmmmmmmmmmmmmmmmmnnnnnnnnnnnnn', 1, 'adsf|adsf', NULL, 1, 0, '2018-01-26 01:33:57', '2018-01-26 01:33:57'),
(160, 170, 26, 'uuuuuuuuuuuuuuucccccccccccccccccccccc', 1, 'adsf|adsf', NULL, 1, 0, '2018-01-26 01:34:16', '2018-01-26 01:34:16'),
(161, 170, 26, 'ooooooooooooooooooooooooooooqqqqqqqqqqqqqqqqqqqqqqqqq', 1, 'adsf|adsf', NULL, 1, 0, '2018-01-26 01:34:36', '2018-01-26 01:34:36'),
(162, 170, 26, 'asdfadsf', 1, 'adsf|adsf', NULL, 1, 0, '2018-01-26 01:34:52', '2018-01-26 01:34:52'),
(163, 170, 26, 'ppppppppppppppppppppppppppppppjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjj', 1, 'adsf|adsf', NULL, 1, 0, '2018-01-26 01:35:09', '2018-01-26 01:35:09'),
(164, 170, 26, 'ttttttttttttttttttttttttttttttttttffffffffffffffffffffffff', 1, 'adsf|adsf', NULL, 1, 0, '2018-01-26 01:35:27', '2018-01-26 01:35:27'),
(165, 170, 26, 'adsfasdf', 1, 'adsf|adsf', NULL, 1, 0, '2018-01-26 01:35:37', '2018-01-26 01:35:37'),
(166, 170, 26, 'adsfadfs', 1, 'adsf|adsf', NULL, 1, 0, '2018-01-26 01:35:48', '2018-01-26 01:35:48'),
(167, 301, 118, 'Give Five Star.', 4, '', NULL, 1, 0, '2018-02-10 22:31:49', '2018-02-10 22:31:49'),
(168, 301, 118, 'What is your age?', 3, '', NULL, 1, 1, '2018-02-10 22:37:52', '2018-02-10 22:40:34'),
(169, 301, 118, 'What is your age?', 3, '', NULL, 1, 0, '2018-02-10 22:39:23', '2018-02-10 22:39:23'),
(170, 301, 118, 'Address group fields.', 5, '', NULL, 1, 0, '2018-02-19 19:10:42', '2018-02-19 19:10:42'),
(171, 312, 126, 'Default Question', 2, 'Good Service|Best Service|Nothing|No Need', '0,1', 1, 0, '2018-03-22 23:21:13', '2018-03-22 23:21:13'),
(172, 312, 126, 'What is your gender ?', 1, 'Male|Female', NULL, 1, 0, '2018-03-22 23:33:50', '2018-03-22 23:33:50'),
(173, 312, 126, 'What is your name ?', 3, '', NULL, 1, 0, '2018-03-22 23:35:26', '2018-03-22 23:35:26'),
(174, 321, 127, 'Default Question', 2, 'Good Service|Best Service|Nothing|No Need', '0,1', 1, 0, '2018-03-28 18:14:01', '2018-03-28 18:14:01'),
(175, 322, 128, 'Default Question', 2, 'Good Service|Best Service|Nothing|No Need', '0,1', 1, 0, '2018-04-03 02:30:15', '2018-04-03 02:30:15'),
(176, 323, 129, 'Default Question', 2, 'Good Service|Best Service|Nothing|No Need', '0,1', 1, 0, '2018-04-08 02:51:04', '2018-04-08 02:51:04'),
(177, 324, 130, 'Default Question', 2, 'Good Service|Best Service|Nothing|No Need', '0,1', 1, 0, '2018-04-08 03:46:51', '2018-04-08 03:46:51'),
(178, 325, 131, 'Default Question', 2, 'Good Service|Best Service|Nothing|No Need', '0,1', 1, 0, '2018-04-08 03:50:14', '2018-04-08 03:50:14'),
(179, 326, 132, 'Default Question', 2, 'Good Service|Best Service|Nothing|No Need', '0,1', 1, 0, '2018-04-08 03:52:56', '2018-04-08 03:52:56'),
(180, 328, 133, 'Default Question', 2, 'Good Service|Best Service|Nothing|No Need', '0,1', 1, 0, '2018-04-08 03:55:13', '2018-04-08 03:55:13'),
(181, 329, 134, 'Default Question', 2, 'Good Service|Best Service|Nothing|No Need', '0,1', 1, 0, '2018-04-08 03:57:35', '2018-04-08 03:57:35'),
(182, 330, 135, 'Default Question', 2, 'Good Service|Best Service|Nothing|No Need', '0,1', 1, 0, '2018-04-08 04:02:21', '2018-04-08 04:02:21'),
(183, 331, 136, 'Default Question', 2, 'Good Service|Best Service|Nothing|No Need', '0,1', 1, 0, '2018-04-08 04:47:23', '2018-04-08 04:47:23'),
(184, 332, 137, 'Default Question', 2, 'Good Service|Best Service|Nothing|No Need', '0,1', 1, 0, '2018-04-08 05:41:32', '2018-04-08 05:41:32'),
(185, 333, 138, 'Default Question', 2, 'Good Service|Best Service|Nothing|No Need', '0,1', 1, 0, '2018-04-08 05:46:30', '2018-04-08 05:46:30'),
(186, 334, 139, 'Default Question', 2, 'Good Service|Best Service|Nothing|No Need', '0,1', 1, 0, '2018-04-08 05:47:54', '2018-04-08 05:47:54'),
(187, 335, 140, 'Default Question', 2, 'Good Service|Best Service|Nothing|No Need', '0,1', 1, 0, '2018-04-08 05:49:23', '2018-04-08 05:49:23'),
(188, 170, 26, 'Checkbox', 2, 'a|b|c|d', NULL, 1, 0, '2018-04-08 19:13:04', '2018-04-08 19:13:04');

-- --------------------------------------------------------

--
-- Table structure for table `survey_templates`
--

CREATE TABLE `survey_templates` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `category` varchar(500) DEFAULT NULL,
  `description` text NOT NULL,
  `greeting` text NOT NULL,
  `footer` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_edited` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0=>edit, 1=>nonedit',
  `created` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `survey_templates`
--

INSERT INTO `survey_templates` (`id`, `user_id`, `name`, `category`, `description`, `greeting`, `footer`, `status`, `is_deleted`, `is_edited`, `created`, `modified`) VALUES
(1, 11, 'New Template', '0', 'Based on your experience how would you rate us:', 'We would love to hear a little more about your experience and ask that you take a quick moment to answer the questions on this page and provide any additional information you may feel is important.', 'Your feedback helps us ensure that we continue to provide the best service possible to our clients.  Thank you for taking the time to help us out.\r\nThank you for taking the time to complete our survey!', 1, 0, 0, '2017-10-22 23:30:00', '2017-11-10 04:51:48'),
(5, 11, 'Very New Templates', NULL, 'Very New Templates Description', 'Very New Templates Header', 'Very New Templates Footer', 1, 0, 0, '2017-11-04 01:03:58', '2017-12-02 22:14:53'),
(7, 170, '5 star review', NULL, '5 star review request', 'Step 1 of 2.  Please rate your experience.', 'Thank you for your feedback!', 1, 0, 1, '2017-11-08 14:56:22', '2017-11-08 14:56:22'),
(8, 172, 'test', NULL, 'test', 'test', 'test', 1, 0, 0, '2017-12-02 21:02:11', '2017-12-02 21:02:11'),
(9, 177, 'template', NULL, 'bfd', 'vdsfb', 'vfgd ', 1, 0, 0, '2017-12-02 21:44:50', '2017-12-04 19:20:23'),
(10, 11, 'New test template', NULL, 'New test Header and footer', 'New test Header', 'New test Header', 1, 0, 0, '2017-12-02 22:11:37', '2017-12-02 22:11:37'),
(11, 179, 'Test Templates', NULL, 'dafdf', 'dsafd', 'dafds', 1, 0, 0, '2017-12-02 22:18:30', '2017-12-02 22:18:41'),
(12, 172, 'Review Testing', NULL, 'test', 'test', 'test', 1, 0, 0, '2017-12-02 22:28:27', '2017-12-02 22:28:27'),
(13, 172, 'Review Template for Facebook', NULL, 'test', 'test', 'test', 1, 0, 0, '2017-12-02 22:33:23', '2017-12-02 22:33:23'),
(14, 170, '5 Star Survey', NULL, '5 star survey', 'Thank you for rating your experience with us.  Client satisfaction is our #1 priority.  We would like to hear a little more about your experience and ask that you take a quick moment to answer the questions on this page and provide any additional information you may feel is important.  Your feedback helps us ensure we are providing the best service possible to our clients.  Thank you for taking the time to help us out.', 'Thank you!', 1, 0, 1, '2017-12-03 04:25:17', '2017-12-03 04:25:17'),
(15, 11, 'test', NULL, 'test', 'test', 'test', 1, 1, 0, '2017-12-04 16:38:37', '2017-12-13 13:20:00'),
(16, 11, 'Review Test Template', NULL, 'test', 'test', 'test', 1, 0, 0, '2017-12-04 18:49:30', '2017-12-04 18:49:30'),
(17, 172, 'Test Dec Survey', NULL, 'test', 'test', 'test', 1, 0, 0, '2017-12-04 19:25:27', '2017-12-04 19:25:27'),
(18, 177, 'Temp1', NULL, 'Testing...', 'Test1', 'Test2', 1, 1, 0, '2017-12-04 23:17:36', '2017-12-04 23:18:29'),
(19, 177, 'Temp1', NULL, 'Testing..', 'Testing..', 'Testing..', 1, 0, 0, '2017-12-04 23:19:13', '2017-12-04 23:19:13'),
(20, 184, 'Template', NULL, 'test', 'test', 'test', 1, 0, 0, '2017-12-05 00:54:33', '2017-12-05 00:54:33'),
(21, 185, '5 star survey', NULL, '5 star survey', 'Customer service is our top priority.  Please let us know a little more information ', 'Thank you', 1, 0, 0, '2017-12-05 02:01:20', '2017-12-05 02:01:20'),
(22, 185, '5 Star Review', NULL, '5 star review', 'Please rate your experience with us.', 'Thank you', 1, 0, 0, '2017-12-05 02:02:49', '2017-12-05 02:02:49'),
(23, 187, 'New Template', NULL, 'New Template', 'New Template', 'New Template', 1, 0, 0, '2017-12-06 16:39:25', '2017-12-06 16:39:25'),
(24, 199, 'New Template', NULL, 'New Template', 'New Template', 'New Template', 1, 0, 0, '2017-12-06 21:53:05', '2017-12-06 21:53:05'),
(25, 200, 'New Template', NULL, 'New Template', 'New Template', 'New Template', 1, 0, 0, '2017-12-06 23:16:03', '2017-12-06 23:16:03'),
(26, 201, 'New Template', NULL, 'New Template', 'New Template', 'New Template', 1, 0, 0, '2017-12-07 00:03:34', '2017-12-07 00:03:34'),
(27, 202, 'Test Template', NULL, 'Test Description', 'Test Greeting (Header)', 'Test Footer', 1, 0, 0, '2017-12-07 20:25:13', '2017-12-07 20:25:19'),
(28, 202, 'Review Template', NULL, 'Description', 'header', 'footer', 1, 0, 0, '2017-12-07 20:31:07', '2017-12-07 20:31:07'),
(29, 202, 'Chetu Survey', NULL, 'Desc', 'header', 'Footer', 1, 0, 0, '2017-12-07 20:32:16', '2017-12-07 20:32:16'),
(30, 202, 'Social Template', NULL, 'Social Description', 'Social Heading', 'Social Footer', 1, 0, 0, '2017-12-07 20:43:00', '2017-12-07 20:43:00'),
(31, 202, 'Prashant Template', NULL, 'Prashant Template Description', 'Prashant Template Header', 'Prashant Template Footer', 1, 0, 0, '2017-12-07 21:12:35', '2017-12-07 21:12:35'),
(32, 202, 'Bikash Template', NULL, 'Bikash Template Description', 'Bikash Template Header', 'Bikash Template Footer', 1, 0, 0, '2017-12-07 21:16:19', '2017-12-07 21:16:19'),
(33, 204, 'New Template', NULL, 'New Template', 'New Template', 'New Template', 1, 0, 0, '2017-12-07 21:45:46', '2017-12-07 21:45:46'),
(34, 212, 'New Template', NULL, 'New Template', 'New Template', 'New Template', 1, 0, 0, '2017-12-08 23:22:22', '2017-12-08 23:22:22'),
(35, 11, 'TemplateRetest 4star Question', NULL, 'How are you', 'Header  for testing', 'Footer for testing', 1, 0, 0, '2017-12-09 00:23:57', '2018-01-11 00:42:24'),
(36, 218, 'Test Temp1', NULL, 'Test description ', 'Welcome to PowerTest', 'Thanks You', 1, 0, 0, '2017-12-09 02:17:59', '2017-12-09 02:17:59'),
(37, 221, 'New Template', NULL, 'New Template', 'New Template', 'New Template', 1, 0, 0, '2017-12-09 04:19:45', '2017-12-09 04:19:45'),
(38, 223, '5 Star Survey', NULL, '5 star survey', 'Thank you for rating your experience with us.  Client satisfaction is our #1 priority.  We would like to hear a little more about your experience and ask that you take a quick moment to answer the questions on this page and provide any additional information you may feel is important.  Your feedback helps us ensure we are providing the best service possible to our clients.  Thank you for taking the time to help us out.', 'Thank You', 1, 0, 0, '2017-12-14 01:33:13', '2017-12-14 01:33:13'),
(39, 223, '5 Star Review', NULL, '5 star review request', 'Step 1 of 2.  Please rate your experience.', 'Thank you for your feedback!', 1, 0, 0, '2017-12-14 01:35:39', '2017-12-14 01:35:39'),
(40, 232, 'New Template', NULL, 'New Template', 'New Template', 'New Template', 1, 0, 0, '2017-12-15 00:28:26', '2017-12-15 00:28:26'),
(41, 234, '5 Star Survey', NULL, '5 Star Survey', 'Thank you for rating your experience with us.  Client satisfaction is our #1 priority.  We would like to hear a little more about your experience and ask that you take a quick moment to answer the questions on this page and provide any additional information you may feel is important.  Your feedback helps us ensure we are providing the best service possible to our clients.  Thank you for taking the time to help us out.', 'Thank you!', 1, 0, 0, '2017-12-15 01:17:48', '2017-12-15 01:17:48'),
(42, 234, '5 Star Review', NULL, '5 Star Review Request', 'Step 1 of 2.  Please rate your experience.', 'Thank you for your feedback!', 1, 0, 0, '2017-12-15 01:18:51', '2017-12-15 01:18:51'),
(43, 231, 'Manan', NULL, 'dsaf', 'dfasf', 'dasf', 1, 0, 0, '2017-12-15 03:08:25', '2017-12-15 03:08:25'),
(44, 241, 'Default Template', NULL, 'Default Template Description', 'Default Template Greeting Header', 'Default Template Greeting Footer', 1, 0, 0, '2017-12-15 19:52:16', '2017-12-15 19:52:16'),
(45, 244, 'Default Template', NULL, 'Default Template Description', 'Default Template Greeting Header', 'Default Template Greeting Footer', 1, 0, 0, '2017-12-15 23:20:26', '2017-12-15 23:20:26'),
(46, 245, 'Default Template', NULL, 'Default Template Description', 'Default Template Greeting Header', 'Default Template Greeting Footer', 1, 0, 0, '2017-12-16 15:59:48', '2017-12-16 15:59:48'),
(47, 246, 'Default Template', NULL, 'Default Template Description', 'Default Template Greeting Header', 'Default Template Greeting Footer', 1, 0, 0, '2017-12-16 16:38:25', '2017-12-16 16:38:25'),
(48, 246, 'raj', NULL, 'Description', 'raj Greeting (Header)', 'raj Footer', 1, 0, 0, '2017-12-16 17:26:30', '2017-12-16 17:26:30'),
(49, 246, 'Shiva', NULL, 'Shiva Description', 'Shiva Greeting (Header)', 'Shiva Footer ', 1, 0, 0, '2017-12-16 17:33:29', '2017-12-16 17:33:29'),
(50, 248, 'Default Template', NULL, 'Default Template Description', 'Default Template Greeting Header', 'Default Template Greeting Footer', 1, 0, 0, '2017-12-16 18:40:08', '2017-12-16 18:40:08'),
(51, 248, 'Survey template', NULL, 'Survey Description', 'Survey template Greeting (Header)', 'Survey footer', 1, 0, 0, '2017-12-16 18:53:26', '2017-12-16 18:53:26'),
(52, 248, 'Review template', NULL, 'Description', 'Review template Greeting (Header)', 'Review template  Footer', 1, 0, 0, '2017-12-16 18:54:35', '2017-12-16 18:54:35'),
(53, 250, 'Default Template', NULL, 'Default Template Description', 'Default Template Greeting Header', 'Default Template Greeting Footer', 1, 0, 0, '2017-12-16 19:04:09', '2017-12-16 19:04:09'),
(54, 251, 'Default Template', NULL, 'Default Template Description', 'Default Template Greeting Header', 'Default Template Greeting Footer', 1, 0, 0, '2017-12-16 19:06:04', '2017-12-16 19:06:04'),
(55, 251, 'Survey template', NULL, 'Survey description', 'Survey template greeting (Header)', 'Survey Footer', 1, 0, 0, '2017-12-16 19:10:49', '2017-12-16 19:10:49'),
(56, 251, 'Review template', NULL, 'Review description', 'Review template \r\ngreeting (Header)', 'Review template footer\r\n', 1, 0, 0, '2017-12-16 19:12:48', '2017-12-16 19:12:48'),
(57, 252, 'Default Template', NULL, 'Default Template Description', 'Default Template Greeting Header', 'Default Template Greeting Footer', 1, 0, 0, '2017-12-16 19:18:43', '2017-12-16 19:18:43'),
(58, 252, 'Survey template', NULL, 'Description', 'Survey template greeting (Header)', 'Review template \r\nFooter ', 1, 0, 0, '2017-12-16 19:22:00', '2017-12-16 19:22:00'),
(59, 252, 'Review template', NULL, 'Review template description', 'Review template greeting (Header)', 'Review template Footer', 1, 0, 0, '2017-12-16 19:23:24', '2017-12-16 19:23:24'),
(60, 253, 'Default Template', NULL, 'Default Template Description', 'Default Template Greeting Header', 'Default Template Greeting Footer', 1, 0, 0, '2017-12-16 20:31:43', '2017-12-16 20:31:43'),
(61, 254, 'Default Template', NULL, 'Default Template Description', 'Default Template Greeting Header', 'Default Template Greeting Footer', 1, 0, 0, '2017-12-16 20:33:16', '2017-12-16 20:33:16'),
(62, 255, 'Default Template', NULL, 'Default Template Description', 'Default Template Greeting Header', 'Default Template Greeting Footer', 1, 0, 0, '2017-12-16 20:48:29', '2017-12-16 20:48:29'),
(63, 11, 'Review template 55 Review Option', NULL, 'Review template 55 description', 'Review template 55 Greeting (Header)', 'Review template 55 Footer', 1, 0, 0, '2017-12-18 18:10:11', '2018-01-11 00:41:10'),
(64, 252, 'Review 55', NULL, 'Review 55 Description ', 'Review 55 \r\nGreeting (Header)', 'Review 55 Footer', 1, 0, 0, '2017-12-18 18:19:37', '2017-12-18 18:19:37'),
(65, 181, 'Social review', NULL, 'Test Description', 'Welcome ', 'Thanks', 1, 0, 0, '2017-12-18 22:04:23', '2017-12-18 22:07:49'),
(66, 181, 'Social servey', NULL, 'Test Desc', 'welcome', 'Thanks', 1, 0, 0, '2017-12-18 22:06:00', '2017-12-18 22:06:29'),
(67, 262, 'Default Template', NULL, 'Default Template Description', 'Default Template Greeting Header', 'Default Template Greeting Footer', 1, 0, 0, '2017-12-20 23:10:14', '2017-12-20 23:10:14'),
(68, 264, 'Default Template', NULL, 'Default Template Description', 'Default Template Greeting Header', 'Default Template Greeting Footer', 1, 0, 1, '2017-12-20 23:27:54', '2017-12-20 23:27:54'),
(69, 267, 'Default Template', NULL, 'Default Template Description', 'Default Template Greeting Header', 'Default Template Greeting Footer', 1, 0, 1, '2017-12-21 23:14:53', '2017-12-21 23:14:53'),
(70, 269, 'Default Template', NULL, 'Default Template Description', 'Default Template Greeting Header', 'Default Template Greeting Footer', 1, 0, 1, '2017-12-21 23:46:05', '2017-12-21 23:46:05'),
(71, 270, 'Default Template', NULL, 'Default Template Description', 'Default Template Greeting Header', 'Default Template Greeting Footer', 1, 0, 1, '2017-12-21 23:47:31', '2017-12-21 23:47:31'),
(72, 276, 'Default Template', NULL, 'Default Template Description', 'Default Template Greeting Header', 'Default Template Greeting Footer', 1, 0, 1, '2017-12-21 23:57:39', '2017-12-21 23:57:39'),
(73, 270, 'Review template', NULL, 'Test template description', 'Test template greeting (Header)', 'Test template footer', 1, 0, 0, '2017-12-22 00:45:08', '2017-12-22 00:45:08'),
(74, 270, 'Survey  Template', NULL, 'Survey  Template description', 'Survey  Template greeting (Header)', 'Survey  Template footer', 1, 0, 0, '2017-12-22 00:46:26', '2017-12-22 00:46:26'),
(75, 284, 'Default Template', NULL, 'Default Template Description', 'Default Template Greeting Header', 'Default Template Greeting Footer', 1, 0, 1, '2017-12-22 17:09:17', '2017-12-22 17:09:17'),
(76, 286, 'Default Template', NULL, 'Default Template Description', 'Default Template Greeting Header', 'Default Template Greeting Footer', 1, 0, 0, '2017-12-22 17:22:27', '2017-12-22 17:22:27'),
(77, 287, 'Default Template', NULL, 'Default Template Description', 'Default Template Greeting Header', 'Default Template Greeting Footer', 1, 0, 1, '2017-12-22 17:24:32', '2017-12-22 17:24:32'),
(78, 289, 'Default Template', NULL, 'Default Template Description', 'Default Template Greeting Header', 'Default Template Greeting Footer', 1, 0, 1, '2017-12-23 00:14:50', '2017-12-23 00:14:50'),
(79, 290, 'Default Template', NULL, 'Default Template Description', 'Default Template Greeting Header', 'Default Template Greeting Footer', 1, 0, 1, '2017-12-23 02:20:27', '2017-12-23 02:20:27'),
(80, 291, 'Default Template', NULL, 'Default Template Description', 'Default Template Greeting Header', 'Default Template Greeting Footer', 1, 0, 1, '2017-12-26 10:08:50', '2017-12-26 10:08:50'),
(81, 291, 'Hello', NULL, 'Testing', 'Test', 'Test', 1, 0, 0, '2017-12-26 10:10:12', '2017-12-26 10:10:12'),
(82, 294, '5 Star Survey', NULL, '5 Star survey', 'Thank you for rating your experience with us.  Client satisfaction is our #1 priority.  We would like to hear a little more about your experience and ask that you take a quick moment to answer the questions on this page and provide any additional information you may feel is important.  Your feedback helps us ensure we are providing the best service possible to our clients.  Thank you for taking the time to help us out.', 'Thank you!', 1, 0, 1, '2017-12-27 00:48:19', '2017-12-27 00:48:19'),
(83, 294, '5 Star review', NULL, '5 Star review request', 'Step 1 of 2.  Please rate your experience.', 'Thank you for your feedback!', 1, 0, 1, '2017-12-27 00:48:19', '2017-12-27 00:48:19'),
(84, 295, '5 Star Survey', NULL, '5 Star survey', 'Thank you for rating your experience with us.  Client satisfaction is our #1 priority.  We would like to hear a little more about your experience and ask that you take a quick moment to answer the questions on this page and provide any additional information you may feel is important.  Your feedback helps us ensure we are providing the best service possible to our clients.  Thank you for taking the time to help us out.', 'Thank you!', 1, 0, 1, '2017-12-27 01:09:56', '2017-12-27 01:09:56'),
(85, 295, '5 Star review', NULL, '5 Star review request', 'Step 1 of 2.  Please rate your experience.', 'Thank you for your feedback!', 1, 0, 1, '2017-12-27 01:09:56', '2017-12-27 01:09:56'),
(86, 296, '5 Star Survey', NULL, '5 Star survey', 'Thank you for rating your experience with us.  Client satisfaction is our #1 priority.  We would like to hear a little more about your experience and ask that you take a quick moment to answer the questions on this page and provide any additional information you may feel is important.  Your feedback helps us ensure we are providing the best service possible to our clients.  Thank you for taking the time to help us out.', 'Thank you!', 1, 0, 1, '2017-12-27 01:14:08', '2017-12-27 01:14:08'),
(87, 296, '5 Star review', NULL, '5 Star review request', 'Step 1 of 2.  Please rate your experience.', 'Thank you for your feedback!', 1, 0, 1, '2017-12-27 01:14:08', '2017-12-27 01:14:08'),
(88, 297, '5 Star Survey', NULL, '5 Star survey', 'Thank you for rating your experience with us.  Client satisfaction is our #1 priority.  We would like to hear a little more about your experience and ask that you take a quick moment to answer the questions on this page and provide any additional information you may feel is important.  Your feedback helps us ensure we are providing the best service possible to our clients.  Thank you for taking the time to help us out.', 'Thank you!', 1, 0, 1, '2017-12-27 23:45:20', '2017-12-27 23:45:20'),
(89, 297, '5 Star review', NULL, '5 Star review request', 'Step 1 of 2.  Please rate your experience.', 'Thank you for your feedback!', 1, 0, 1, '2017-12-27 23:45:20', '2017-12-27 23:45:20'),
(90, 299, '5 Star Survey', NULL, '5 Star survey', 'Thank you for rating your experience with us.  Client satisfaction is our #1 priority.  We would like to hear a little more about your experience and ask that you take a quick moment to answer the questions on this page and provide any additional information you may feel is important.  Your feedback helps us ensure we are providing the best service possible to our clients.  Thank you for taking the time to help us out.', 'Thank you!', 1, 0, 1, '2017-12-29 22:07:25', '2017-12-29 22:07:25'),
(91, 299, '5 Star review', NULL, '5 Star review request', 'Step 1 of 2.  Please rate your experience.', 'Thank you for your feedback!', 1, 0, 1, '2017-12-29 22:07:25', '2017-12-29 22:07:25'),
(92, 301, '5 Star Survey', NULL, '5 Star survey', 'Thank you for rating your experience with us.  Client satisfaction is our #1 priority.  We would like to hear a little more about your experience and ask that you take a quick moment to answer the questions on this page and provide any additional information you may feel is important.  Your feedback helps us ensure we are providing the best service possible to our clients.  Thank you for taking the time to help us out.', 'Thank you!', 1, 0, 1, '2018-01-11 17:43:29', '2018-01-11 17:43:29'),
(93, 301, '5 Star review', NULL, '5 Star review request', 'Step 1 of 2.  Please rate your experience.', 'Thank you for your feedback!', 1, 0, 1, '2018-01-11 17:43:30', '2018-01-11 17:43:30'),
(94, 303, '5 Star Survey', NULL, '5 Star survey', 'Thank you for rating your experience with us.  Client satisfaction is our #1 priority.  We would like to hear a little more about your experience and ask that you take a quick moment to answer the questions on this page and provide any additional information you may feel is important.  Your feedback helps us ensure we are providing the best service possible to our clients.  Thank you for taking the time to help us out.', 'Thank you!', 1, 0, 1, '2018-01-11 23:35:13', '2018-01-11 23:35:13'),
(95, 303, '5 Star review', NULL, '5 Star review request', 'Step 1 of 2.  Please rate your experience.', 'Thank you for your feedback!', 1, 0, 1, '2018-01-11 23:35:13', '2018-01-11 23:35:13'),
(96, 304, '5 Star Survey', NULL, '5 Star survey', 'Thank you for rating your experience with us.  Client satisfaction is our #1 priority.  We would like to hear a little more about your experience and ask that you take a quick moment to answer the questions on this page and provide any additional information you may feel is important.  Your feedback helps us ensure we are providing the best service possible to our clients.  Thank you for taking the time to help us out.', 'Thank you!', 1, 0, 1, '2018-01-11 23:41:38', '2018-01-11 23:41:38'),
(97, 304, '5 Star review', NULL, '5 Star review request', 'Step 1 of 2.  Please rate your experience.', 'Thank you for your feedback!', 1, 0, 1, '2018-01-11 23:41:38', '2018-01-11 23:41:38'),
(98, 305, '5 Star Survey', NULL, '5 Star survey', 'Thank you for rating your experience with us.  Client satisfaction is our #1 priority.  We would like to hear a little more about your experience and ask that you take a quick moment to answer the questions on this page and provide any additional information you may feel is important.  Your feedback helps us ensure we are providing the best service possible to our clients.  Thank you for taking the time to help us out.', 'Thank you!', 1, 0, 1, '2018-01-11 23:49:04', '2018-01-11 23:49:04'),
(99, 305, '5 Star review', NULL, '5 Star review request', 'Step 1 of 2.  Please rate your experience.', 'Thank you for your feedback!', 1, 0, 1, '2018-01-11 23:49:05', '2018-01-11 23:49:05'),
(100, 306, '5 Star Survey', NULL, '5 Star survey', 'Thank you for rating your experience with us.  Client satisfaction is our #1 priority.  We would like to hear a little more about your experience and ask that you take a quick moment to answer the questions on this page and provide any additional information you may feel is important.  Your feedback helps us ensure we are providing the best service possible to our clients.  Thank you for taking the time to help us out.', 'Thank you!', 1, 0, 1, '2018-01-11 23:59:49', '2018-01-11 23:59:49'),
(101, 306, '5 Star review', NULL, '5 Star review request', 'Step 1 of 2.  Please rate your experience.', 'Thank you for your feedback!', 1, 0, 1, '2018-01-11 23:59:50', '2018-01-11 23:59:50'),
(102, 307, '5 Star Survey', NULL, '5 Star survey', 'Thank you for rating your experience with us.  Client satisfaction is our #1 priority.  We would like to hear a little more about your experience and ask that you take a quick moment to answer the questions on this page and provide any additional information you may feel is important.  Your feedback helps us ensure we are providing the best service possible to our clients.  Thank you for taking the time to help us out.', 'Thank you!', 1, 0, 1, '2018-01-12 01:28:29', '2018-01-12 01:28:29'),
(103, 307, '5 Star review', NULL, '5 Star review request', 'Step 1 of 2.  Please rate your experience.', 'Thank you for your feedback!', 1, 0, 1, '2018-01-12 01:28:30', '2018-01-12 01:28:30'),
(104, 308, '5 Star Survey', NULL, '5 Star survey', 'Thank you for rating your experience with us.  Client satisfaction is our #1 priority.  We would like to hear a little more about your experience and ask that you take a quick moment to answer the questions on this page and provide any additional information you may feel is important.  Your feedback helps us ensure we are providing the best service possible to our clients.  Thank you for taking the time to help us out.', 'Thank you!', 1, 0, 1, '2018-01-12 16:58:47', '2018-01-12 16:58:47'),
(105, 308, '5 Star review', NULL, '5 Star review request', 'Step 1 of 2.  Please rate your experience.', 'Thank you for your feedback!', 1, 0, 1, '2018-01-12 16:58:47', '2018-01-12 16:58:47'),
(106, 309, '5 Star Survey', NULL, '5 Star survey', 'Thank you for rating your experience with us.  Client satisfaction is our #1 priority.  We would like to hear a little more about your experience and ask that you take a quick moment to answer the questions on this page and provide any additional information you may feel is important.  Your feedback helps us ensure we are providing the best service possible to our clients.  Thank you for taking the time to help us out.', 'Thank you!', 1, 0, 1, '2018-01-12 23:15:47', '2018-01-12 23:15:47'),
(107, 309, '5 Star review', NULL, '5 Star review request', 'Step 1 of 2.  Please rate your experience.', 'Thank you for your feedback!', 1, 0, 1, '2018-01-12 23:15:48', '2018-01-12 23:15:48'),
(108, 11, 'Review this portal ', NULL, 'Review this portal ', 'Review this portal ', 'Review this portal ', 1, 0, 0, '2018-01-12 23:19:54', '2018-01-12 23:19:54'),
(109, 11, 'Restttt', NULL, 'Restttt', 'Restttt', 'Restttt', 1, 0, 0, '2018-01-16 17:46:58', '2018-01-16 17:46:58'),
(110, 181, 'Test Review for 4star', NULL, 'test desc', 'Welcome', 'Thanks', 1, 0, 0, '2018-01-16 17:48:13', '2018-01-16 17:53:02'),
(111, 301, 'Test Dec Survey', NULL, 'test desc', 'Welcome', 'Thanks', 1, 0, 0, '2018-02-10 22:40:59', '2018-02-10 22:40:59'),
(112, 302, 'New Template', NULL, 'New Template', 'New Template', 'New Template', 1, 0, 0, '2018-02-20 21:45:24', '2018-02-20 21:45:24'),
(113, 302, 'Associate Template', NULL, 'Associate Template', 'Associate Template', 'Associate Template', 1, 0, 0, '2018-03-09 23:43:05', '2018-03-09 23:43:05'),
(114, 312, '5 Star Survey', NULL, '5 Star survey', 'Thank you for rating your experience with us.  Client satisfaction is our #1 priority.  We would like to hear a little more about your experience and ask that you take a quick moment to answer the questions on this page and provide any additional information you may feel is important.  Your feedback helps us ensure we are providing the best service possible to our clients.  Thank you for taking the time to help us out.', 'Thank you!', 1, 0, 1, '2018-03-22 23:21:15', '2018-03-22 23:21:15'),
(115, 312, '5 Star review', NULL, '5 Star review request', 'Step 1 of 2.  Please rate your experience.', 'Thank you for your feedback!', 1, 0, 1, '2018-03-22 23:21:15', '2018-03-22 23:21:15'),
(116, 312, 'Test Template', NULL, 'Test Template', 'Welcome', 'Thank you', 1, 0, 0, '2018-03-22 23:36:35', '2018-03-22 23:36:35'),
(117, 170, 'Test Review New', NULL, 'Test Review New', 'Test Review New', 'Test Review New', 1, 1, 0, '2018-03-27 20:29:50', '2018-03-27 20:30:38'),
(118, 321, '5 Star Survey', NULL, '5 Star survey', 'Thank you for rating your experience with us.  Client satisfaction is our #1 priority.  We would like to hear a little more about your experience and ask that you take a quick moment to answer the questions on this page and provide any additional information you may feel is important.  Your feedback helps us ensure we are providing the best service possible to our clients.  Thank you for taking the time to help us out.', 'Thank you!', 1, 0, 1, '2018-03-28 18:14:02', '2018-03-28 18:14:02'),
(119, 321, '5 Star review', NULL, '5 Star review request', 'Step 1 of 2.  Please rate your experience.', 'Thank you for your feedback!', 1, 0, 1, '2018-03-28 18:14:03', '2018-03-28 18:14:03'),
(120, 322, '5 Star Survey', NULL, '5 Star survey', 'Thank you for rating your experience with us.  Client satisfaction is our #1 priority.  We would like to hear a little more about your experience and ask that you take a quick moment to answer the questions on this page and provide any additional information you may feel is important.  Your feedback helps us ensure we are providing the best service possible to our clients.  Thank you for taking the time to help us out.', 'Thank you!', 1, 0, 1, '2018-04-03 02:30:15', '2018-04-03 02:30:15'),
(121, 322, '5 Star review', NULL, '5 Star review request', 'Step 1 of 2.  Please rate your experience.', 'Thank you for your feedback!', 1, 0, 1, '2018-04-03 02:30:16', '2018-04-03 02:30:16'),
(122, 323, '5 Star Survey', NULL, '5 Star survey', 'Thank you for rating your experience with us.  Client satisfaction is our #1 priority.  We would like to hear a little more about your experience and ask that you take a quick moment to answer the questions on this page and provide any additional information you may feel is important.  Your feedback helps us ensure we are providing the best service possible to our clients.  Thank you for taking the time to help us out.', 'Thank you!', 1, 0, 1, '2018-04-08 02:51:04', '2018-04-08 02:51:04'),
(123, 323, '5 Star review', NULL, '5 Star review request', 'Step 1 of 2.  Please rate your experience.', 'Thank you for your feedback!', 1, 0, 1, '2018-04-08 02:51:05', '2018-04-08 02:51:05'),
(124, 324, '5 Star Survey', NULL, '5 Star survey', 'Thank you for rating your experience with us.  Client satisfaction is our #1 priority.  We would like to hear a little more about your experience and ask that you take a quick moment to answer the questions on this page and provide any additional information you may feel is important.  Your feedback helps us ensure we are providing the best service possible to our clients.  Thank you for taking the time to help us out.', 'Thank you!', 1, 0, 1, '2018-04-08 03:46:51', '2018-04-08 03:46:51'),
(125, 324, '5 Star review', NULL, '5 Star review request', 'Step 1 of 2.  Please rate your experience.', 'Thank you for your feedback!', 1, 0, 1, '2018-04-08 03:46:51', '2018-04-08 03:46:51'),
(126, 325, '5 Star Survey', NULL, '5 Star survey', 'Thank you for rating your experience with us.  Client satisfaction is our #1 priority.  We would like to hear a little more about your experience and ask that you take a quick moment to answer the questions on this page and provide any additional information you may feel is important.  Your feedback helps us ensure we are providing the best service possible to our clients.  Thank you for taking the time to help us out.', 'Thank you!', 1, 0, 1, '2018-04-08 03:50:14', '2018-04-08 03:50:14'),
(127, 325, '5 Star review', NULL, '5 Star review request', 'Step 1 of 2.  Please rate your experience.', 'Thank you for your feedback!', 1, 0, 1, '2018-04-08 03:50:15', '2018-04-08 03:50:15'),
(128, 326, '5 Star Survey', NULL, '5 Star survey', 'Thank you for rating your experience with us.  Client satisfaction is our #1 priority.  We would like to hear a little more about your experience and ask that you take a quick moment to answer the questions on this page and provide any additional information you may feel is important.  Your feedback helps us ensure we are providing the best service possible to our clients.  Thank you for taking the time to help us out.', 'Thank you!', 1, 0, 1, '2018-04-08 03:52:56', '2018-04-08 03:52:56'),
(129, 326, '5 Star review', NULL, '5 Star review request', 'Step 1 of 2.  Please rate your experience.', 'Thank you for your feedback!', 1, 0, 1, '2018-04-08 03:52:57', '2018-04-08 03:52:57'),
(130, 328, '5 Star Survey', NULL, '5 Star survey', 'Thank you for rating your experience with us.  Client satisfaction is our #1 priority.  We would like to hear a little more about your experience and ask that you take a quick moment to answer the questions on this page and provide any additional information you may feel is important.  Your feedback helps us ensure we are providing the best service possible to our clients.  Thank you for taking the time to help us out.', 'Thank you!', 1, 0, 1, '2018-04-08 03:55:14', '2018-04-08 03:55:14'),
(131, 328, '5 Star review', NULL, '5 Star review request', 'Step 1 of 2.  Please rate your experience.', 'Thank you for your feedback!', 1, 0, 1, '2018-04-08 03:55:15', '2018-04-08 03:55:15'),
(132, 329, '5 Star Survey', NULL, '5 Star survey', 'Thank you for rating your experience with us.  Client satisfaction is our #1 priority.  We would like to hear a little more about your experience and ask that you take a quick moment to answer the questions on this page and provide any additional information you may feel is important.  Your feedback helps us ensure we are providing the best service possible to our clients.  Thank you for taking the time to help us out.', 'Thank you!', 1, 0, 1, '2018-04-08 03:57:35', '2018-04-08 03:57:35'),
(133, 329, '5 Star review', NULL, '5 Star review request', 'Step 1 of 2.  Please rate your experience.', 'Thank you for your feedback!', 1, 0, 1, '2018-04-08 03:57:36', '2018-04-08 03:57:36'),
(134, 330, '5 Star Survey', NULL, '5 Star survey', 'Thank you for rating your experience with us.  Client satisfaction is our #1 priority.  We would like to hear a little more about your experience and ask that you take a quick moment to answer the questions on this page and provide any additional information you may feel is important.  Your feedback helps us ensure we are providing the best service possible to our clients.  Thank you for taking the time to help us out.', 'Thank you!', 1, 0, 1, '2018-04-08 04:02:22', '2018-04-08 04:02:22'),
(135, 330, '5 Star review', NULL, '5 Star review request', 'Step 1 of 2.  Please rate your experience.', 'Thank you for your feedback!', 1, 0, 1, '2018-04-08 04:02:23', '2018-04-08 04:02:23'),
(136, 331, '5 Star Survey', NULL, '5 Star survey', 'Thank you for rating your experience with us.  Client satisfaction is our #1 priority.  We would like to hear a little more about your experience and ask that you take a quick moment to answer the questions on this page and provide any additional information you may feel is important.  Your feedback helps us ensure we are providing the best service possible to our clients.  Thank you for taking the time to help us out.', 'Thank you!', 1, 0, 1, '2018-04-08 04:47:24', '2018-04-08 04:47:24'),
(137, 331, '5 Star review', NULL, '5 Star review request', 'Step 1 of 2.  Please rate your experience.', 'Thank you for your feedback!', 1, 0, 1, '2018-04-08 04:47:24', '2018-04-08 04:47:24'),
(138, 332, '5 Star Survey', NULL, '5 Star survey', 'Thank you for rating your experience with us.  Client satisfaction is our #1 priority.  We would like to hear a little more about your experience and ask that you take a quick moment to answer the questions on this page and provide any additional information you may feel is important.  Your feedback helps us ensure we are providing the best service possible to our clients.  Thank you for taking the time to help us out.', 'Thank you!', 1, 0, 1, '2018-04-08 05:41:33', '2018-04-08 05:41:33'),
(139, 332, '5 Star review', NULL, '5 Star review request', 'Step 1 of 2.  Please rate your experience.', 'Thank you for your feedback!', 1, 0, 1, '2018-04-08 05:41:33', '2018-04-08 05:41:33'),
(140, 333, '5 Star Survey', NULL, '5 Star survey', 'Thank you for rating your experience with us.  Client satisfaction is our #1 priority.  We would like to hear a little more about your experience and ask that you take a quick moment to answer the questions on this page and provide any additional information you may feel is important.  Your feedback helps us ensure we are providing the best service possible to our clients.  Thank you for taking the time to help us out.', 'Thank you!', 1, 0, 1, '2018-04-08 05:46:31', '2018-04-08 05:46:31'),
(141, 333, '5 Star review', NULL, '5 Star review request', 'Step 1 of 2.  Please rate your experience.', 'Thank you for your feedback!', 1, 0, 1, '2018-04-08 05:46:32', '2018-04-08 05:46:32'),
(142, 334, '5 Star Survey', NULL, '5 Star survey', 'Thank you for rating your experience with us.  Client satisfaction is our #1 priority.  We would like to hear a little more about your experience and ask that you take a quick moment to answer the questions on this page and provide any additional information you may feel is important.  Your feedback helps us ensure we are providing the best service possible to our clients.  Thank you for taking the time to help us out.', 'Thank you!', 1, 0, 1, '2018-04-08 05:47:55', '2018-04-08 05:47:55'),
(143, 334, '5 Star review', NULL, '5 Star review request', 'Step 1 of 2.  Please rate your experience.', 'Thank you for your feedback!', 1, 0, 1, '2018-04-08 05:47:55', '2018-04-08 05:47:55'),
(144, 335, '5 Star Survey', NULL, '5 Star survey', 'Thank you for rating your experience with us.  Client satisfaction is our #1 priority.  We would like to hear a little more about your experience and ask that you take a quick moment to answer the questions on this page and provide any additional information you may feel is important.  Your feedback helps us ensure we are providing the best service possible to our clients.  Thank you for taking the time to help us out.', 'Thank you!', 1, 0, 1, '2018-04-08 05:49:23', '2018-04-08 05:49:23'),
(145, 335, '5 Star review', NULL, '5 Star review request', 'Step 1 of 2.  Please rate your experience.', 'Thank you for your feedback!', 1, 0, 1, '2018-04-08 05:49:23', '2018-04-08 05:49:23'),
(146, 170, 'Test Review', NULL, 'Test Survey', 'Test Review', 'Test Review', 1, 0, 0, '2018-04-08 19:23:23', '2018-04-10 10:19:36'),
(147, 170, 'Test Survey', NULL, 'Test Survey', 'Test Survey', 'Test Survey', 1, 0, 0, '2018-04-08 19:53:38', '2018-04-08 19:53:38');

-- --------------------------------------------------------

--
-- Table structure for table `survey_templates_question`
--

CREATE TABLE `survey_templates_question` (
  `id` int(11) NOT NULL,
  `survey_templates_id` bigint(50) NOT NULL,
  `type` int(1) NOT NULL COMMENT '1=review, 2=survey',
  `star` int(11) DEFAULT NULL COMMENT '0=>survey,4=>4 star,3=>3 star,2=>2 star,1=>1 star',
  `question` varchar(255) NOT NULL COMMENT 'if star = 5,question ={1=>facebook,2=>yelp,3=>zillow,4=>google-plus,5=>realtor,5=>BBB} if star = 4 and fouroption = 2 ,question ={1=>facebook,2=>yelp,3=>zillow,4=>google-plus,5=>realtor,6=>BBB}',
  `fouroption` int(1) DEFAULT NULL COMMENT '1=>question,2=>review chennel',
  `question_ordering` int(1) NOT NULL DEFAULT '0',
  `has_question_logic` int(1) NOT NULL DEFAULT '0',
  `question_logic_id` int(1) DEFAULT '0',
  `q_level` varchar(255) DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `survey_templates_question`
--

INSERT INTO `survey_templates_question` (`id`, `survey_templates_id`, `type`, `star`, `question`, `fouroption`, `question_ordering`, `has_question_logic`, `question_logic_id`, `q_level`, `created`, `modified`) VALUES
(16, 1, 2, 0, '1', 0, 0, 0, 0, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 1, 2, 0, '2', 0, 0, 0, 0, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 1, 2, 0, '7', 0, 0, 0, 0, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 5, 1, 4, '7', 0, 0, 0, 0, NULL, '2017-11-04 01:03:58', '2017-12-13 13:24:55'),
(24, 5, 1, 3, '7', 0, 0, 0, 0, NULL, '2017-11-04 01:03:58', '2017-12-13 13:24:55'),
(25, 5, 1, 2, '7', 0, 0, 0, 0, NULL, '2017-11-04 01:03:58', '2017-12-13 13:24:55'),
(26, 5, 1, 1, '7', 0, 0, 0, 0, NULL, '2017-11-04 01:03:58', '2017-12-13 13:24:55'),
(27, 6, 1, 4, '22', 0, 0, 0, 0, NULL, '2017-11-18 01:22:09', '2017-11-18 01:22:09'),
(28, 6, 1, 3, '22', 0, 0, 0, 0, NULL, '2017-11-18 01:22:09', '2017-11-18 01:22:09'),
(29, 6, 1, 2, '22', 0, 0, 0, 0, NULL, '2017-11-18 01:22:09', '2017-11-18 01:22:09'),
(30, 6, 1, 1, '22', 0, 0, 0, 0, NULL, '2017-11-18 01:22:09', '2017-11-18 01:22:09'),
(31, 7, 1, 4, '25', 0, 0, 0, 0, NULL, '2017-11-08 14:56:23', '2017-12-03 03:10:25'),
(32, 7, 1, 3, '25', 1, 0, 0, 0, NULL, '2017-11-08 14:56:23', '2018-01-11 03:33:52'),
(33, 7, 1, 2, '25', 1, 0, 0, 0, NULL, '2017-11-08 14:56:23', '2018-01-11 03:33:53'),
(34, 7, 1, 1, '25', 1, 0, 0, 0, NULL, '2017-11-08 14:56:23', '2018-01-11 03:33:54'),
(38, 8, 1, 5, '3', 0, 0, 0, 0, NULL, '2017-12-02 21:02:11', '2017-12-02 21:02:11'),
(39, 8, 1, 4, '29', 0, 0, 0, 0, NULL, '2017-12-02 21:02:11', '2017-12-07 18:07:48'),
(40, 9, 2, 0, '30', 0, 0, 0, 0, NULL, '2017-12-02 21:44:50', '2017-12-04 23:30:07'),
(41, 9, 2, 0, '31', 0, 0, 0, 0, NULL, '2017-12-02 21:44:50', '2017-12-04 23:30:07'),
(42, 10, 1, 5, '1', 0, 0, 0, 0, NULL, '2017-12-02 22:11:37', '2017-12-13 13:20:28'),
(43, 10, 1, 5, '2', 0, 0, 0, 0, NULL, '2017-12-02 22:11:37', '2017-12-13 13:20:29'),
(46, 10, 1, 4, '7', 0, 0, 0, 0, NULL, '2017-12-02 22:11:37', '2017-12-13 13:20:29'),
(47, 10, 1, 4, '34', 0, 0, 0, 0, NULL, '2017-12-02 22:11:37', '2017-12-13 13:20:29'),
(48, 10, 1, 3, '34', 0, 0, 0, 0, NULL, '2017-12-02 22:11:37', '2017-12-13 13:20:29'),
(50, 11, 1, 5, '3', 0, 0, 0, 0, NULL, '2017-12-02 22:18:30', '2017-12-02 22:21:10'),
(51, 11, 1, 0, '33', 0, 0, 0, 0, NULL, '2017-12-02 22:18:30', '2017-12-02 22:21:10'),
(52, 11, 1, 5, '1', 0, 0, 0, 0, NULL, '2017-12-02 22:19:31', '2017-12-02 22:21:10'),
(54, 12, 1, 5, '3', 0, 0, 0, 0, NULL, '2017-12-02 22:28:27', '2017-12-02 22:28:27'),
(58, 7, 1, 5, '1', NULL, 0, 0, 0, NULL, '2017-12-03 03:10:25', '2018-02-11 07:41:28'),
(59, 7, 1, 5, '2', NULL, 0, 0, 0, NULL, '2017-12-03 03:10:25', '2018-02-11 07:41:29'),
(60, 7, 1, 5, '3', NULL, 0, 0, 0, NULL, '2017-12-03 03:10:25', '2018-02-11 07:41:30'),
(61, 7, 1, 5, '4', NULL, 0, 0, 0, NULL, '2017-12-03 03:10:25', '2018-02-11 07:41:30'),
(62, 14, 2, 0, '36', 0, 0, 0, 0, NULL, '2017-12-03 04:25:17', '2017-12-03 04:25:17'),
(63, 14, 2, 0, '37', 0, 0, 0, 0, NULL, '2017-12-03 04:25:17', '2017-12-03 04:25:17'),
(64, 14, 2, 0, '38', 0, 0, 0, 0, NULL, '2017-12-03 04:25:17', '2017-12-03 04:25:17'),
(65, 14, 2, 0, '39', 0, 0, 0, 0, NULL, '2017-12-03 04:25:17', '2017-12-03 04:25:17'),
(66, 14, 2, 0, '40', 0, 0, 0, 0, NULL, '2017-12-03 04:25:17', '2017-12-03 04:25:17'),
(67, 14, 2, 0, '41', 0, 0, 0, 0, NULL, '2017-12-03 04:25:17', '2017-12-03 04:25:17'),
(74, 15, 1, 0, '7', 0, 0, 0, 0, NULL, '2017-12-04 16:38:37', '2017-12-04 18:44:53'),
(75, 15, 1, 0, '34', 0, 0, 0, 0, NULL, '2017-12-04 16:38:37', '2017-12-04 18:44:53'),
(76, 15, 1, 5, '2', 0, 0, 0, 0, NULL, '2017-12-04 16:38:46', '2017-12-04 18:44:53'),
(77, 15, 1, 5, '3', 0, 0, 0, 0, NULL, '2017-12-04 16:38:46', '2017-12-04 18:44:53'),
(85, 16, 1, 5, '1', 1, 0, 0, 0, NULL, '2017-12-04 21:05:21', '2018-01-11 00:38:21'),
(87, 16, 1, 5, '3', 1, 0, 0, 0, NULL, '2017-12-04 21:06:14', '2018-01-11 00:38:24'),
(88, 16, 1, 5, '4', 1, 0, 0, 0, NULL, '2017-12-04 21:06:14', '2018-01-11 00:38:25'),
(89, 18, 2, 0, '30', 0, 0, 0, 0, NULL, '2017-12-04 23:17:36', '2017-12-04 23:17:36'),
(92, 19, 2, 0, '30', 0, 0, 0, 0, NULL, '2017-12-04 23:19:13', '2017-12-04 23:29:53'),
(93, 20, 1, 0, '47', 0, 0, 0, 0, NULL, '2017-12-05 00:54:33', '2017-12-05 00:54:33'),
(94, 20, 1, 0, '48', 0, 0, 0, 0, NULL, '2017-12-05 00:54:33', '2017-12-05 00:54:33'),
(95, 20, 1, 0, '49', 0, 0, 0, 0, NULL, '2017-12-05 00:54:33', '2017-12-05 00:54:33'),
(96, 21, 2, 0, '51', 0, 0, 0, 0, NULL, '2017-12-05 02:01:20', '2017-12-05 02:01:20'),
(97, 21, 2, 0, '52', 0, 0, 0, 0, NULL, '2017-12-05 02:01:20', '2017-12-05 02:01:20'),
(98, 21, 2, 0, '53', 0, 0, 0, 0, NULL, '2017-12-05 02:01:20', '2017-12-05 02:01:20'),
(99, 22, 1, 5, '2', 0, 0, 0, 0, NULL, '2017-12-05 02:02:49', '2017-12-07 01:45:57'),
(100, 22, 1, 5, '3', 0, 0, 0, 0, NULL, '2017-12-05 02:02:49', '2017-12-07 01:45:57'),
(102, 22, 1, 0, '51', 0, 0, 0, 0, NULL, '2017-12-05 02:02:49', '2017-12-07 01:45:57'),
(103, 22, 1, 0, '52', 0, 0, 0, 0, NULL, '2017-12-05 02:02:49', '2017-12-07 01:45:57'),
(104, 22, 1, 0, '53', 0, 0, 0, 0, NULL, '2017-12-05 02:02:49', '2017-12-07 01:45:57'),
(105, 23, 1, 5, '2', 0, 0, 0, 0, NULL, '2017-12-06 16:39:25', '2017-12-06 16:39:25'),
(106, 23, 1, 5, '3', 0, 0, 0, 0, NULL, '2017-12-06 16:39:25', '2017-12-06 16:39:25'),
(107, 23, 1, 5, '4', 0, 0, 0, 0, NULL, '2017-12-06 16:39:25', '2017-12-06 16:39:25'),
(108, 23, 1, 0, '55', 0, 0, 0, 0, NULL, '2017-12-06 16:39:25', '2017-12-06 16:39:25'),
(109, 24, 1, 5, '2', 0, 0, 0, 0, NULL, '2017-12-06 21:53:05', '2017-12-06 21:53:05'),
(110, 24, 1, 0, '67', 0, 0, 0, 0, NULL, '2017-12-06 21:53:05', '2017-12-06 21:53:05'),
(111, 25, 1, 5, '1', 0, 0, 0, 0, NULL, '2017-12-06 23:16:03', '2017-12-06 23:16:03'),
(112, 25, 1, 5, '2', 0, 0, 0, 0, NULL, '2017-12-06 23:16:03', '2017-12-06 23:16:03'),
(113, 25, 1, 5, '3', 0, 0, 0, 0, NULL, '2017-12-06 23:16:03', '2017-12-06 23:16:03'),
(114, 25, 1, 0, '68', 0, 0, 0, 0, NULL, '2017-12-06 23:16:03', '2017-12-06 23:16:03'),
(115, 26, 1, 5, '2', 0, 0, 0, 0, NULL, '2017-12-07 00:03:34', '2017-12-07 00:03:34'),
(116, 26, 1, 5, '3', 0, 0, 0, 0, NULL, '2017-12-07 00:03:34', '2017-12-07 00:03:34'),
(117, 26, 1, 5, '4', 0, 0, 0, 0, NULL, '2017-12-07 00:03:34', '2017-12-07 00:03:34'),
(118, 26, 1, 0, '69', 0, 0, 0, 0, NULL, '2017-12-07 00:03:34', '2017-12-07 00:03:34'),
(131, 22, 1, 5, '1', 0, 0, 0, 0, NULL, '2017-12-07 01:45:57', '2017-12-07 01:45:57'),
(132, 22, 1, 5, '4', 0, 0, 0, 0, NULL, '2017-12-07 01:45:57', '2017-12-07 01:45:57'),
(133, 17, 2, 0, '29', 0, 0, 0, 0, NULL, '2017-12-07 18:07:08', '2017-12-07 18:07:08'),
(134, 17, 2, 0, '70', 0, 0, 0, 0, NULL, '2017-12-07 18:07:09', '2017-12-07 18:07:09'),
(135, 17, 2, 0, '71', 0, 0, 0, 0, NULL, '2017-12-07 18:07:09', '2017-12-07 18:07:09'),
(136, 13, 2, 0, '29', 0, 0, 0, 0, NULL, '2017-12-07 18:07:21', '2017-12-07 18:07:21'),
(137, 13, 2, 0, '70', 0, 0, 0, 0, NULL, '2017-12-07 18:07:21', '2017-12-07 18:07:21'),
(138, 13, 2, 0, '71', 0, 0, 0, 0, NULL, '2017-12-07 18:07:21', '2017-12-07 18:07:21'),
(139, 12, 2, 0, '29', 0, 0, 0, 0, NULL, '2017-12-07 18:07:34', '2017-12-07 18:07:34'),
(140, 12, 2, 0, '70', 0, 0, 0, 0, NULL, '2017-12-07 18:07:34', '2017-12-07 18:07:34'),
(141, 12, 2, 0, '71', 0, 0, 0, 0, NULL, '2017-12-07 18:07:34', '2017-12-07 18:07:34'),
(142, 8, 1, 4, '70', 0, 0, 0, 0, NULL, '2017-12-07 18:07:48', '2017-12-07 18:07:48'),
(143, 8, 1, 4, '71', 0, 0, 0, 0, NULL, '2017-12-07 18:07:48', '2017-12-07 18:07:48'),
(144, 27, 1, 4, '72', 0, 0, 0, 0, NULL, '2017-12-07 20:25:13', '2017-12-07 20:25:13'),
(145, 27, 1, 0, '72', 0, 0, 0, 0, NULL, '2017-12-07 20:25:13', '2017-12-07 20:25:13'),
(146, 28, 1, 0, '75', 0, 0, 0, 0, NULL, '2017-12-07 20:31:07', '2017-12-07 20:31:07'),
(147, 29, 1, 0, '74', 0, 0, 0, 0, NULL, '2017-12-07 20:32:16', '2017-12-07 20:52:06'),
(148, 30, 1, 5, '2', 0, 0, 0, 0, NULL, '2017-12-07 20:43:00', '2017-12-07 20:43:00'),
(149, 30, 1, 5, '3', 0, 0, 0, 0, NULL, '2017-12-07 20:43:00', '2017-12-07 20:43:00'),
(150, 30, 1, 0, '75', 0, 0, 0, 0, NULL, '2017-12-07 20:43:00', '2017-12-07 20:43:00'),
(151, 29, 1, 5, '2', 0, 0, 0, 0, NULL, '2017-12-07 20:52:06', '2017-12-07 20:52:06'),
(152, 29, 1, 5, '3', 0, 0, 0, 0, NULL, '2017-12-07 20:52:06', '2017-12-07 20:52:06'),
(153, 31, 2, 0, '76', 0, 0, 0, 0, NULL, '2017-12-07 21:12:35', '2017-12-07 21:12:35'),
(154, 32, 2, 0, '77', 0, 0, 0, 0, NULL, '2017-12-07 21:16:19', '2017-12-07 21:16:19'),
(155, 33, 1, 5, '1', 0, 0, 0, 0, NULL, '2017-12-07 21:45:46', '2017-12-07 21:45:46'),
(156, 33, 1, 5, '2', 0, 0, 0, 0, NULL, '2017-12-07 21:45:46', '2017-12-07 21:45:46'),
(157, 33, 1, 5, '3', 0, 0, 0, 0, NULL, '2017-12-07 21:45:46', '2017-12-07 21:45:46'),
(158, 33, 1, 5, '4', 0, 0, 0, 0, NULL, '2017-12-07 21:45:46', '2017-12-07 21:45:46'),
(159, 33, 1, 0, '73', 0, 0, 0, 0, NULL, '2017-12-07 21:45:46', '2017-12-07 21:45:46'),
(160, 34, 1, 5, '1', 0, 0, 0, 0, NULL, '2017-12-08 23:22:22', '2017-12-08 23:22:22'),
(161, 34, 1, 5, '2', 0, 0, 0, 0, NULL, '2017-12-08 23:22:22', '2017-12-08 23:22:22'),
(162, 34, 1, 5, '3', 0, 0, 0, 0, NULL, '2017-12-08 23:22:22', '2017-12-08 23:22:22'),
(163, 34, 1, 0, '82', 0, 0, 0, 0, NULL, '2017-12-08 23:22:22', '2017-12-08 23:22:22'),
(164, 35, 1, 5, '2', 1, 0, 0, 0, NULL, '2017-12-09 00:23:57', '2018-01-11 00:42:28'),
(165, 35, 1, 5, '3', 1, 0, 0, 0, NULL, '2017-12-09 00:23:57', '2018-01-11 00:42:31'),
(166, 35, 1, 4, '34', 1, 0, 0, 0, NULL, '2017-12-09 00:23:57', '2018-01-11 00:42:41'),
(167, 35, 1, 4, '84', 1, 0, 0, 0, NULL, '2017-12-09 00:23:57', '2018-01-11 00:42:42'),
(169, 36, 2, 0, '87', 0, 0, 0, 0, NULL, '2017-12-09 02:17:59', '2017-12-09 02:17:59'),
(170, 36, 2, 0, '88', 0, 0, 0, 0, NULL, '2017-12-09 02:17:59', '2017-12-09 02:17:59'),
(171, 37, 1, 5, '2', 0, 0, 0, 0, NULL, '2017-12-09 04:19:45', '2017-12-09 04:19:45'),
(172, 37, 1, 5, '3', 0, 0, 0, 0, NULL, '2017-12-09 04:19:45', '2017-12-09 04:19:45'),
(173, 37, 1, 5, '4', 0, 0, 0, 0, NULL, '2017-12-09 04:19:45', '2017-12-09 04:19:45'),
(174, 37, 1, 0, '90', 0, 0, 0, 0, NULL, '2017-12-09 04:19:45', '2017-12-09 04:19:45'),
(175, 35, 1, 5, '4', 1, 0, 0, 0, NULL, '2017-12-13 13:18:42', '2018-01-11 00:42:33'),
(176, 16, 1, 5, '2', 1, 0, 0, 0, NULL, '2017-12-13 13:19:54', '2018-01-11 00:38:23'),
(177, 10, 1, 5, '3', 0, 0, 0, 0, NULL, '2017-12-13 13:20:29', '2017-12-13 13:20:29'),
(178, 10, 1, 5, '4', 0, 0, 0, 0, NULL, '2017-12-13 13:20:29', '2017-12-13 13:20:29'),
(179, 5, 1, 5, '2', 0, 0, 0, 0, NULL, '2017-12-13 13:24:55', '2017-12-13 13:24:55'),
(180, 5, 1, 5, '3', 0, 0, 0, 0, NULL, '2017-12-13 13:24:55', '2017-12-13 13:24:55'),
(181, 5, 1, 5, '4', 0, 0, 0, 0, NULL, '2017-12-13 13:24:55', '2017-12-13 13:24:55'),
(182, 38, 2, 0, '92', 0, 0, 0, 0, NULL, '2017-12-14 01:33:13', '2017-12-14 01:33:13'),
(183, 38, 2, 0, '93', 0, 0, 0, 0, NULL, '2017-12-14 01:33:13', '2017-12-14 01:33:13'),
(184, 38, 2, 0, '94', 0, 0, 0, 0, NULL, '2017-12-14 01:33:13', '2017-12-14 01:33:13'),
(185, 38, 2, 0, '95', 0, 0, 0, 0, NULL, '2017-12-14 01:33:13', '2017-12-14 01:33:13'),
(186, 38, 2, 0, '96', 0, 0, 0, 0, NULL, '2017-12-14 01:33:13', '2017-12-14 01:33:13'),
(187, 38, 2, 0, '97', 0, 0, 0, 0, NULL, '2017-12-14 01:33:13', '2017-12-14 01:33:13'),
(188, 39, 1, 0, '92', 0, 0, 0, 0, NULL, '2017-12-14 01:35:39', '2017-12-14 01:35:39'),
(189, 39, 1, 0, '93', 0, 0, 0, 0, NULL, '2017-12-14 01:35:39', '2017-12-14 01:35:39'),
(190, 39, 1, 0, '94', 0, 0, 0, 0, NULL, '2017-12-14 01:35:39', '2017-12-14 01:35:39'),
(191, 39, 1, 0, '95', 0, 0, 0, 0, NULL, '2017-12-14 01:35:39', '2017-12-14 01:35:39'),
(192, 39, 1, 0, '96', 0, 0, 0, 0, NULL, '2017-12-14 01:35:39', '2017-12-14 01:35:39'),
(193, 39, 1, 0, '97', 0, 0, 0, 0, NULL, '2017-12-14 01:35:39', '2017-12-14 01:35:39'),
(194, 40, 1, 5, '1', 0, 0, 0, 0, NULL, '2017-12-15 00:28:26', '2017-12-15 00:28:26'),
(195, 40, 1, 5, '2', 0, 0, 0, 0, NULL, '2017-12-15 00:28:26', '2017-12-15 00:28:26'),
(196, 40, 1, 5, '3', 0, 0, 0, 0, NULL, '2017-12-15 00:28:26', '2017-12-15 00:28:26'),
(197, 40, 1, 5, '4', 0, 0, 0, 0, NULL, '2017-12-15 00:28:26', '2017-12-15 00:28:26'),
(198, 40, 1, 0, '100', 0, 0, 0, 0, NULL, '2017-12-15 00:28:26', '2017-12-15 00:28:26'),
(199, 41, 2, 0, '102', 0, 0, 0, 0, NULL, '2017-12-15 01:17:48', '2017-12-15 01:17:48'),
(200, 41, 2, 0, '103', 0, 0, 0, 0, NULL, '2017-12-15 01:17:48', '2017-12-15 01:17:48'),
(201, 41, 2, 0, '104', 0, 0, 0, 0, NULL, '2017-12-15 01:17:48', '2017-12-15 01:17:48'),
(202, 41, 2, 0, '105', 0, 0, 0, 0, NULL, '2017-12-15 01:17:48', '2017-12-15 01:17:48'),
(203, 41, 2, 0, '106', 0, 0, 0, 0, NULL, '2017-12-15 01:17:48', '2017-12-15 01:17:48'),
(204, 41, 2, 0, '107', 0, 0, 0, 0, NULL, '2017-12-15 01:17:48', '2017-12-15 01:17:48'),
(205, 42, 1, 0, '102', 0, 0, 0, 0, NULL, '2017-12-15 01:18:51', '2017-12-15 02:30:03'),
(206, 42, 1, 0, '103', 0, 0, 0, 0, NULL, '2017-12-15 01:18:51', '2017-12-15 02:30:03'),
(207, 42, 1, 0, '104', 0, 0, 0, 0, NULL, '2017-12-15 01:18:51', '2017-12-15 02:30:03'),
(208, 42, 1, 0, '105', 0, 0, 0, 0, NULL, '2017-12-15 01:18:51', '2017-12-15 02:30:03'),
(209, 42, 1, 0, '106', 0, 0, 0, 0, NULL, '2017-12-15 01:18:51', '2017-12-15 02:30:03'),
(210, 42, 1, 0, '107', 0, 0, 0, 0, NULL, '2017-12-15 01:18:51', '2017-12-15 02:30:03'),
(211, 42, 1, 5, '1', 0, 0, 0, 0, NULL, '2017-12-15 02:30:03', '2017-12-15 02:30:03'),
(212, 42, 1, 5, '2', 0, 0, 0, 0, NULL, '2017-12-15 02:30:03', '2017-12-15 02:30:03'),
(213, 42, 1, 5, '3', 0, 0, 0, 0, NULL, '2017-12-15 02:30:03', '2017-12-15 02:30:03'),
(214, 42, 1, 5, '4', 0, 0, 0, 0, NULL, '2017-12-15 02:30:03', '2017-12-15 02:30:03'),
(215, 43, 2, 0, '99', 0, 0, 0, 0, NULL, '2017-12-15 03:08:25', '2017-12-15 03:08:25'),
(216, 44, 2, 0, '108', 0, 0, 0, 0, NULL, '2017-12-15 19:52:16', '2017-12-15 19:52:16'),
(217, 45, 2, 0, '109', 0, 0, 0, 0, NULL, '2017-12-15 23:20:26', '2017-12-15 23:20:26'),
(218, 46, 2, 0, '110', 0, 0, 0, 0, NULL, '2017-12-16 15:59:48', '2017-12-16 15:59:48'),
(219, 47, 2, 0, '111', 0, 0, 0, 0, NULL, '2017-12-16 16:38:25', '2017-12-16 16:38:25'),
(220, 48, 1, 4, '112', 0, 0, 0, 0, NULL, '2017-12-16 17:26:30', '2017-12-16 17:26:30'),
(221, 49, 2, 0, '112', 0, 0, 0, 0, NULL, '2017-12-16 17:33:29', '2017-12-16 17:33:29'),
(222, 50, 2, 0, '113', 0, 0, 0, 0, NULL, '2017-12-16 18:40:08', '2017-12-16 18:40:08'),
(223, 51, 2, 0, '114', 0, 0, 0, 0, NULL, '2017-12-16 18:53:26', '2017-12-16 18:53:26'),
(224, 52, 1, 4, '114', 0, 0, 0, 0, NULL, '2017-12-16 18:54:35', '2017-12-16 18:54:35'),
(225, 53, 2, 0, '115', 0, 0, 0, 0, NULL, '2017-12-16 19:04:09', '2017-12-16 19:04:09'),
(226, 54, 2, 0, '116', 0, 0, 0, 0, NULL, '2017-12-16 19:06:04', '2017-12-16 19:06:04'),
(227, 55, 2, 0, '117', 0, 0, 0, 0, NULL, '2017-12-16 19:10:49', '2017-12-16 19:10:49'),
(228, 56, 1, 4, '117', 0, 0, 0, 0, NULL, '2017-12-16 19:12:48', '2017-12-16 19:12:48'),
(229, 57, 2, 0, '118', 0, 0, 0, 0, NULL, '2017-12-16 19:18:43', '2017-12-16 19:18:43'),
(230, 58, 2, 0, '119', 0, 0, 0, 0, NULL, '2017-12-16 19:22:00', '2017-12-16 19:22:00'),
(231, 59, 1, 4, '119', 0, 0, 0, 0, NULL, '2017-12-16 19:23:24', '2017-12-16 19:23:24'),
(232, 60, 2, 0, '120', 0, 0, 0, 0, NULL, '2017-12-16 20:31:43', '2017-12-16 20:31:43'),
(233, 61, 2, 0, '121', 0, 0, 0, 0, NULL, '2017-12-16 20:33:16', '2017-12-16 20:33:16'),
(234, 62, 2, 0, '122', 0, 0, 0, 0, NULL, '2017-12-16 20:48:30', '2017-12-16 20:48:30'),
(237, 64, 1, 5, '2', 0, 0, 0, 0, NULL, '2017-12-18 18:19:37', '2017-12-18 18:19:37'),
(238, 64, 1, 1, '119', 0, 0, 0, 0, NULL, '2017-12-18 18:19:37', '2017-12-18 18:19:37'),
(239, 65, 1, 5, '2', 0, 0, 0, 0, NULL, '2017-12-18 22:04:23', '2017-12-18 22:04:39'),
(240, 65, 1, 4, '42', 0, 0, 0, 0, NULL, '2017-12-18 22:04:23', '2017-12-18 22:04:40'),
(241, 66, 2, 0, '42', 0, 0, 0, 0, NULL, '2017-12-18 22:06:00', '2017-12-18 22:06:00'),
(242, 67, 2, 0, '123', 0, 0, 0, 0, NULL, '2017-12-20 23:10:14', '2017-12-20 23:10:14'),
(243, 68, 2, 0, '124', 0, 0, 0, 0, NULL, '2017-12-20 23:27:54', '2017-12-20 23:27:54'),
(244, 69, 2, 0, '125', 0, 0, 0, 0, NULL, '2017-12-21 23:14:53', '2017-12-21 23:14:53'),
(245, 70, 2, 0, '126', 0, 0, 0, 0, NULL, '2017-12-21 23:46:05', '2017-12-21 23:46:05'),
(246, 71, 2, 0, '127', 0, 0, 0, 0, NULL, '2017-12-21 23:47:31', '2017-12-21 23:47:31'),
(247, 72, 2, 0, '128', 0, 0, 0, 0, NULL, '2017-12-21 23:57:39', '2017-12-21 23:57:39'),
(248, 73, 1, 5, '2', 0, 0, 0, 0, NULL, '2017-12-22 00:45:08', '2017-12-22 00:45:08'),
(249, 73, 1, 4, '129', 0, 0, 0, 0, NULL, '2017-12-22 00:45:08', '2017-12-22 00:45:08'),
(250, 74, 2, 0, '129', 0, 0, 0, 0, NULL, '2017-12-22 00:46:26', '2017-12-22 00:46:26'),
(251, 75, 2, 0, '130', 0, 0, 0, 0, NULL, '2017-12-22 17:09:17', '2017-12-22 17:09:17'),
(252, 76, 2, 0, '131', 0, 0, 0, 0, NULL, '2017-12-22 17:22:27', '2017-12-22 17:22:27'),
(253, 77, 2, 0, '132', 0, 0, 0, 0, NULL, '2017-12-22 17:24:32', '2017-12-22 17:24:32'),
(254, 78, 2, 0, '133', 0, 0, 0, 0, NULL, '2017-12-23 00:14:50', '2017-12-23 00:14:50'),
(255, 79, 2, 0, '134', 0, 0, 0, 0, NULL, '2017-12-23 02:20:27', '2017-12-23 02:20:27'),
(256, 80, 2, 0, '135', 0, 0, 0, 0, NULL, '2017-12-26 10:08:50', '2017-12-26 10:08:50'),
(257, 81, 1, 4, '135', 0, 0, 0, 0, NULL, '2017-12-26 10:10:12', '2017-12-26 10:10:12'),
(258, 81, 1, 1, '136', 0, 0, 0, 0, NULL, '2017-12-26 10:10:12', '2017-12-26 10:10:12'),
(259, 82, 2, 0, '137', 0, 0, 0, 0, NULL, '2017-12-27 00:48:19', '2017-12-27 00:48:19'),
(260, 83, 1, 0, '137', 0, 0, 0, 0, NULL, '2017-12-27 00:48:19', '2017-12-27 00:48:19'),
(261, 84, 2, 0, '138', 0, 0, 0, 0, NULL, '2017-12-27 01:09:56', '2017-12-27 01:09:56'),
(262, 85, 1, 0, '138', 0, 0, 0, 0, NULL, '2017-12-27 01:09:56', '2017-12-27 01:09:56'),
(263, 86, 2, 0, '139', 0, 0, 0, 0, NULL, '2017-12-27 01:14:08', '2017-12-27 01:14:08'),
(264, 87, 1, 0, '139', 0, 0, 0, 0, NULL, '2017-12-27 01:14:08', '2017-12-27 01:14:08'),
(265, 88, 2, 0, '140', 0, 0, 0, 0, NULL, '2017-12-27 23:45:20', '2017-12-27 23:45:20'),
(266, 89, 1, 0, '140', 0, 0, 0, 0, NULL, '2017-12-27 23:45:21', '2018-01-07 15:41:11'),
(267, 90, 2, 0, '141', 0, 0, 0, 0, NULL, '2017-12-29 22:07:25', '2017-12-29 22:07:25'),
(268, 91, 1, 0, '141', 0, 0, 0, 0, NULL, '2017-12-29 22:07:25', '2017-12-29 22:07:25'),
(269, 89, 1, 5, '5', 0, 0, 0, 0, NULL, '2018-01-04 00:43:40', '2018-01-04 00:43:40'),
(270, 89, 1, 4, '140', 0, 0, 0, 0, NULL, '2018-01-07 15:41:11', '2018-01-07 15:41:11'),
(271, 63, 1, 5, '3', 2, 0, 0, 0, NULL, '2018-01-09 17:59:04', '2018-01-11 00:41:12'),
(272, 63, 1, 5, '4', 2, 0, 0, 0, NULL, '2018-01-09 17:59:05', '2018-01-11 00:41:13'),
(273, 16, 1, 5, '5', 1, 0, 0, 0, NULL, '2018-01-11 00:38:26', '2018-01-11 00:38:26'),
(274, 16, 1, 0, '7', 1, 0, 0, 0, NULL, '2018-01-11 00:38:27', '2018-01-11 00:38:27'),
(275, 63, 1, 4, '2', 2, 0, 0, 0, NULL, '2018-01-11 00:41:14', '2018-01-11 00:41:14'),
(276, 63, 1, 4, '3', 2, 0, 0, 0, NULL, '2018-01-11 00:41:15', '2018-01-11 00:41:15'),
(277, 63, 1, 4, '4', 2, 0, 0, 0, NULL, '2018-01-11 00:41:16', '2018-01-11 00:41:16'),
(278, 63, 1, 0, '7', 2, 0, 0, 0, NULL, '2018-01-11 00:41:18', '2018-01-11 00:41:18'),
(279, 63, 1, 0, '34', 2, 0, 0, 0, NULL, '2018-01-11 00:41:20', '2018-01-11 00:41:20'),
(280, 63, 1, 0, '84', 2, 0, 0, 0, NULL, '2018-01-11 00:41:26', '2018-01-11 00:41:26'),
(281, 35, 1, 4, '7', 1, 0, 0, 0, NULL, '2018-01-11 00:42:39', '2018-01-11 00:42:39'),
(282, 35, 1, 0, '34', 1, 0, 0, 0, NULL, '2018-01-11 00:42:43', '2018-01-11 00:42:43'),
(283, 35, 1, 0, '84', 1, 0, 0, 0, NULL, '2018-01-11 00:42:44', '2018-01-11 00:42:44'),
(284, 7, 1, 5, '5', NULL, 0, 0, 0, NULL, '2018-01-11 03:33:38', '2018-02-11 07:41:31'),
(285, 92, 2, 0, '142', 1, 0, 0, 0, NULL, '2018-01-11 17:43:32', '2018-01-11 17:43:32'),
(303, 93, 1, 4, '142', 1, 0, 0, 0, NULL, '2018-01-11 21:57:18', '2018-02-19 19:11:28'),
(305, 94, 2, 0, '143', 1, 0, 0, 0, NULL, '2018-01-11 23:35:14', '2018-01-11 23:35:14'),
(306, 95, 1, 0, '143', 1, 0, 0, 0, NULL, '2018-01-11 23:35:14', '2018-01-11 23:35:14'),
(307, 96, 2, 0, '144', 1, 0, 0, 0, NULL, '2018-01-11 23:41:40', '2018-01-11 23:41:40'),
(308, 97, 1, 0, '144', 1, 0, 0, 0, NULL, '2018-01-11 23:41:41', '2018-01-11 23:41:41'),
(310, 98, 2, 0, '145', 1, 0, 0, 0, NULL, '2018-01-11 23:49:06', '2018-01-11 23:49:06'),
(311, 99, 1, 0, '145', 1, 0, 0, 0, NULL, '2018-01-11 23:49:06', '2018-01-11 23:49:06'),
(312, 100, 2, 0, '146', 1, 0, 0, 0, NULL, '2018-01-11 23:59:50', '2018-01-11 23:59:50'),
(313, 101, 1, -1, '146', 2, 0, 0, 0, NULL, '2018-01-11 23:59:51', '2018-01-12 00:25:15'),
(315, 101, 1, 4, '3', 2, 0, 0, 0, NULL, '2018-01-12 00:25:13', '2018-01-12 00:25:13'),
(316, 102, 2, 0, '147', 1, 0, 0, 0, NULL, '2018-01-12 01:28:30', '2018-01-12 01:28:30'),
(317, 103, 1, -1, '147', 1, 0, 0, 0, NULL, '2018-01-12 01:28:32', '2018-01-12 01:28:32'),
(318, 104, 2, 0, '148', 1, 0, 0, 0, NULL, '2018-01-12 16:58:48', '2018-01-12 16:58:48'),
(319, 105, 1, -1, '148', 1, 0, 0, 0, NULL, '2018-01-12 16:58:49', '2018-01-12 16:58:49'),
(320, 106, 2, NULL, '149', 1, 0, 0, 0, NULL, '2018-01-12 23:15:50', '2018-01-12 23:15:50'),
(321, 107, 1, -1, '149', 1, 0, 0, 0, NULL, '2018-01-12 23:15:50', '2018-01-12 23:15:50'),
(322, 108, 1, 5, '2', 1, 0, 0, 0, NULL, '2018-01-12 23:19:54', '2018-01-12 23:22:13'),
(325, 108, 1, -1, '7', 1, 0, 0, 0, NULL, '2018-01-12 23:19:54', '2018-01-12 23:22:14'),
(326, 108, 1, -1, '34', 1, 0, 0, 0, NULL, '2018-01-12 23:19:54', '2018-01-12 23:22:14'),
(327, 108, 1, 4, '7', 1, 0, 0, 0, NULL, '2018-01-12 23:21:37', '2018-01-12 23:22:13'),
(328, 108, 1, 4, '84', 1, 0, 0, 0, NULL, '2018-01-12 23:21:37', '2018-01-12 23:22:13'),
(338, 109, 2, 0, '7', NULL, 0, 0, 0, NULL, '2018-01-16 17:48:12', '2018-01-16 17:48:23'),
(339, 109, 2, 0, '34', NULL, 0, 0, 0, NULL, '2018-01-16 17:48:13', '2018-01-16 17:48:24'),
(340, 109, 2, 0, '84', NULL, 0, 0, 0, NULL, '2018-01-16 17:48:14', '2018-01-16 17:48:24'),
(341, 110, 1, 5, '2', 2, 0, 0, 0, NULL, '2018-01-16 17:48:14', '2018-01-16 17:53:03'),
(342, 110, 1, 4, '3', 2, 0, 0, 0, NULL, '2018-01-16 17:48:14', '2018-01-16 17:53:03'),
(343, 110, 1, 3, '42', 2, 0, 0, 0, NULL, '2018-01-16 17:48:14', '2018-01-16 17:53:04'),
(344, 93, 1, -1, '142', 1, 2, 0, 0, NULL, '2018-02-10 22:35:23', '2018-02-19 19:11:31'),
(345, 93, 1, -1, '167', 1, 1, 0, 0, NULL, '2018-02-10 22:35:23', '2018-02-19 19:11:30'),
(346, 93, 1, 5, '1', 1, 0, 0, 0, NULL, '2018-02-10 22:35:30', '2018-02-19 19:11:24'),
(347, 93, 1, 5, '2', 1, 0, 0, 0, NULL, '2018-02-10 22:35:31', '2018-02-19 19:11:24'),
(348, 93, 1, 5, '3', 1, 0, 0, 0, NULL, '2018-02-10 22:35:32', '2018-02-19 19:11:25'),
(349, 93, 1, 5, '4', 1, 0, 0, 0, NULL, '2018-02-10 22:35:33', '2018-02-19 19:11:25'),
(350, 93, 1, 5, '5', 1, 0, 0, 0, NULL, '2018-02-10 22:35:34', '2018-02-19 19:11:25'),
(351, 93, 1, 5, '6', 1, 0, 0, 0, NULL, '2018-02-10 22:35:35', '2018-02-19 19:11:26'),
(352, 93, 1, 5, '7', 1, 0, 0, 0, NULL, '2018-02-10 22:35:36', '2018-02-19 19:11:27'),
(353, 4293106774, 1, 3, '142', 2, 2, 0, 0, NULL, '2018-02-10 22:36:17', '2018-02-10 22:36:22'),
(354, 4293106774, 1, 3, '167', 2, 1, 0, 0, NULL, '2018-02-10 22:36:17', '2018-02-10 22:36:22'),
(355, 1201873617, 1, 4, '142', 1, 1, 0, 0, NULL, '2018-02-10 22:40:41', '2018-02-10 22:40:41'),
(356, 1201873617, 1, 4, '168', 1, 2, 0, 0, NULL, '2018-02-10 22:40:41', '2018-02-10 22:40:41'),
(357, 1201873617, 1, -1, '168', 1, 1, 0, 0, NULL, '2018-02-10 22:40:55', '2018-02-10 22:40:55'),
(358, 111, 1, 5, '1', 1, 0, 0, 0, NULL, '2018-02-10 22:41:00', '2018-02-12 18:14:32'),
(359, 111, 1, 5, '2', 1, 0, 0, 0, NULL, '2018-02-10 22:41:00', '2018-02-12 18:14:32'),
(360, 111, 1, 5, '3', 1, 0, 0, 0, NULL, '2018-02-10 22:41:00', '2018-02-12 18:14:32'),
(361, 111, 1, 4, '142', 1, 1, 0, 0, NULL, '2018-02-10 22:41:00', '2018-02-12 18:14:33'),
(362, 111, 1, 4, '168', 1, 2, 0, 0, NULL, '2018-02-10 22:41:00', '2018-02-12 18:14:33'),
(364, 7, 1, -1, '36', NULL, 1, 0, 0, NULL, '2018-02-11 07:40:48', '2018-02-11 07:41:32'),
(365, 7, 1, -1, '37', NULL, 2, 0, 0, NULL, '2018-02-11 07:40:49', '2018-02-11 07:41:32'),
(366, 7, 1, -1, '38', NULL, 3, 0, 0, NULL, '2018-02-11 07:40:50', '2018-02-11 07:41:33'),
(367, 7, 1, -1, '39', NULL, 4, 0, 0, NULL, '2018-02-11 07:40:50', '2018-02-11 07:41:34'),
(368, 7, 1, -1, '40', NULL, 5, 0, 0, NULL, '2018-02-11 07:40:51', '2018-02-11 07:41:36'),
(369, 7, 1, -1, '41', NULL, 6, 0, 0, NULL, '2018-02-11 07:40:51', '2018-02-11 07:41:37'),
(371, 7, 1, 5, '6', NULL, 0, 0, 0, NULL, '2018-02-11 07:41:31', '2018-02-11 07:41:31'),
(372, 7, 1, 5, '7', NULL, 0, 0, 0, NULL, '2018-02-11 07:41:31', '2018-02-11 07:41:31'),
(373, 111, 1, -1, '167', 1, 3, 0, 0, NULL, '2018-02-12 17:17:54', '2018-02-12 20:37:31'),
(380, 111, 1, -1, '142', 1, 1, 0, 0, NULL, '2018-02-12 18:15:20', '2018-02-12 20:37:28'),
(381, 111, 1, -1, '169', 1, 2, 0, 0, NULL, '2018-02-12 20:37:16', '2018-02-12 20:37:32'),
(382, 93, 1, 3, '167', 1, 2, 0, 0, NULL, '2018-02-15 04:58:52', '2018-02-19 19:11:30'),
(383, 93, 1, 3, '169', 1, 1, 0, 0, NULL, '2018-02-15 04:58:53', '2018-02-19 19:11:29'),
(384, 93, 1, -1, '170', 1, 3, 0, 0, NULL, '2018-02-19 19:11:02', '2018-02-19 19:11:31'),
(385, 48575811, 1, -1, '142', 3, 1, 0, 0, NULL, '2018-02-20 20:42:44', '2018-02-20 20:42:44'),
(386, 4251950470, 2, 0, '142', 3, 2, 0, 0, NULL, '2018-02-20 21:45:04', '2018-02-20 21:45:21'),
(387, 4251950470, 2, 0, '167', 3, 1, 0, 0, NULL, '2018-02-20 21:45:04', '2018-02-20 21:45:21'),
(388, 112, 2, 0, '167', NULL, 1, 0, 0, NULL, '2018-02-20 21:45:25', '2018-04-08 00:38:52'),
(389, 112, 2, 0, '142', NULL, 3, 0, 0, NULL, '2018-02-20 21:45:25', '2018-04-08 00:38:53'),
(390, 3399381336, 1, -1, '142', 3, 1, 0, 0, NULL, '2018-02-27 00:39:28', '2018-02-27 00:39:28'),
(391, 3399381336, 1, -1, '167', 3, 2, 0, 0, NULL, '2018-02-27 00:39:29', '2018-02-27 00:39:29'),
(392, 257027623, 1, -1, '142', 3, 1, 0, 0, NULL, '2018-02-27 00:57:23', '2018-02-27 00:57:53'),
(393, 257027623, 1, -1, '167', 3, 2, 0, 0, NULL, '2018-02-27 00:57:24', '2018-02-27 00:57:52'),
(395, 257027623, 1, -1, '169', 3, 3, 0, 0, NULL, '2018-02-27 00:57:43', '2018-02-27 00:57:43'),
(396, 257027623, 1, 1, '142', 3, 1, 0, 0, NULL, '2018-02-27 00:59:17', '2018-02-27 00:59:17'),
(397, 257027623, 1, 1, '167', 3, 2, 0, 0, NULL, '2018-02-27 00:59:17', '2018-02-27 00:59:17'),
(398, 257027623, 1, 1, '169', 3, 3, 0, 0, NULL, '2018-02-27 00:59:18', '2018-02-27 00:59:18'),
(399, 1935846466, 1, -1, '142', 3, 1, 0, 0, NULL, '2018-02-27 16:00:27', '2018-02-27 16:00:27'),
(400, 1935846466, 1, -1, '167', 3, 2, 0, 0, NULL, '2018-02-27 16:00:28', '2018-02-27 16:00:28'),
(401, 1935846466, 1, -1, '170', 3, 3, 0, 0, NULL, '2018-02-27 16:00:35', '2018-02-27 16:00:35'),
(402, 1935846466, 1, -1, '169', 3, 3, 0, 0, NULL, '2018-02-27 16:00:40', '2018-02-27 16:00:40'),
(403, 316830983, 2, 0, '142', 3, 1, 0, 0, NULL, '2018-02-27 16:27:02', '2018-02-27 16:27:02'),
(404, 316830983, 2, 0, '167', 3, 2, 0, 0, NULL, '2018-02-27 16:27:03', '2018-02-27 16:27:03'),
(405, 316830983, 2, 0, '169', 3, 2, 0, 0, NULL, '2018-02-27 16:32:08', '2018-02-27 16:32:08'),
(406, 112, 2, 0, '169', NULL, 4, 0, 0, NULL, '2018-03-07 20:22:29', '2018-04-08 00:38:53'),
(407, 112, 2, 0, '170', NULL, 5, 0, 0, NULL, '2018-03-07 20:22:30', '2018-04-08 00:38:53'),
(408, 93, 1, -1, '169', 1, 4, 0, 0, NULL, '2018-03-07 20:22:48', '2018-03-07 20:22:48'),
(409, 95313707, 2, 0, '142', 3, 1, 0, 0, NULL, '2018-03-09 23:43:02', '2018-03-09 23:43:02'),
(410, 113, 2, 0, '142', NULL, 1, 0, 0, NULL, '2018-03-09 23:43:05', '2018-03-09 23:43:05'),
(411, 114, 2, 0, '171', NULL, 0, 0, 0, NULL, '2018-03-22 23:21:15', '2018-03-22 23:21:15'),
(412, 115, 1, -1, '171', 1, 0, 0, 0, NULL, '2018-03-22 23:21:16', '2018-03-22 23:21:16'),
(413, 116, 2, 0, '172', NULL, 1, 1, 0, 'select_qusetion_id[0][172]', '2018-03-22 23:36:36', '2018-03-22 23:36:36'),
(414, 116, 2, 0, '171', NULL, 1, 0, 149, 'select_qusetion_id[0][172][ans][0][171]', '2018-03-22 23:36:37', '2018-03-22 23:36:37'),
(415, 116, 2, 0, '173', NULL, 2, 0, 149, 'select_qusetion_id[0][172][ans][0][173]', '2018-03-22 23:36:37', '2018-03-22 23:36:37'),
(416, 116, 2, 0, '173', NULL, 1, 0, 150, 'select_qusetion_id[0][172][ans][1][173]', '2018-03-22 23:36:39', '2018-03-22 23:36:39'),
(417, 2748534860, 1, -1, '25', 3, 1, 0, 0, 'select_qusetion_id[-1][25]', '2018-03-27 20:27:59', '2018-03-27 20:28:50'),
(418, 2748534860, 1, -1, '26', 3, 4, 0, 0, 'select_qusetion_id[-1][26]', '2018-03-27 20:28:00', '2018-03-27 20:28:51'),
(419, 2748534860, 1, -1, '27', 3, 7, 0, 0, 'select_qusetion_id[-1][27]', '2018-03-27 20:28:00', '2018-03-27 20:28:53'),
(420, 2748534860, 1, -1, '36', 3, 8, 0, 0, 'select_qusetion_id[-1][36]', '2018-03-27 20:28:01', '2018-03-27 20:28:54'),
(421, 2748534860, 1, -1, '37', 3, 10, 0, 0, 'select_qusetion_id[-1][37]', '2018-03-27 20:28:01', '2018-03-27 20:28:55'),
(422, 2748534860, 1, -1, '25', 3, 3, 0, 0, 'select_qusetion_id[-1][36][ans][0][25]', '2018-03-27 20:28:12', '2018-03-27 20:28:51'),
(423, 2748534860, 1, -1, '26', 3, 6, 0, 0, 'select_qusetion_id[-1][36][ans][0][26]', '2018-03-27 20:28:13', '2018-03-27 20:28:52'),
(425, 2748534860, 1, -1, '36', 3, 9, 0, 0, 'select_qusetion_id[-1][36][ans][0][36]', '2018-03-27 20:28:13', '2018-03-27 20:28:55'),
(426, 2748534860, 1, -1, '25', 3, 2, 0, 0, 'select_qusetion_id[-1][36][ans][1][25]', '2018-03-27 20:28:44', '2018-03-27 20:28:51'),
(428, 2748534860, 1, -1, '27', 3, 5, 0, 0, 'select_qusetion_id[-1][36][ans][1][27]', '2018-03-27 20:28:45', '2018-03-27 20:28:52'),
(429, 117, 1, -1, '25', NULL, 1, 0, 0, 'select_qusetion_id[-1][25]', '2018-03-27 20:29:50', '2018-03-27 20:29:50'),
(430, 117, 1, -1, '26', NULL, 2, 0, 0, 'select_qusetion_id[-1][26]', '2018-03-27 20:29:51', '2018-03-27 20:29:51'),
(431, 117, 1, -1, '27', NULL, 3, 0, 0, 'select_qusetion_id[-1][27]', '2018-03-27 20:29:51', '2018-03-27 20:29:51'),
(432, 117, 1, -1, '36', NULL, 4, 1, 0, 'select_qusetion_id[-1][36]', '2018-03-27 20:29:52', '2018-03-27 20:29:52'),
(433, 117, 1, -1, '25', NULL, 1, 0, 151, 'select_qusetion_id[-1][36][ans][0][25]', '2018-03-27 20:29:53', '2018-03-27 20:29:53'),
(434, 117, 1, -1, '26', NULL, 2, 0, 151, 'select_qusetion_id[-1][36][ans][0][26]', '2018-03-27 20:29:54', '2018-03-27 20:29:54'),
(435, 117, 1, -1, '36', NULL, 3, 0, 151, 'select_qusetion_id[-1][36][ans][0][36]', '2018-03-27 20:29:55', '2018-03-27 20:29:55'),
(436, 117, 1, -1, '25', NULL, 1, 0, 152, 'select_qusetion_id[-1][36][ans][1][25]', '2018-03-27 20:29:56', '2018-03-27 20:29:56'),
(437, 117, 1, -1, '27', NULL, 2, 0, 152, 'select_qusetion_id[-1][36][ans][1][27]', '2018-03-27 20:29:59', '2018-03-27 20:29:59'),
(438, 117, 1, -1, '37', NULL, 5, 0, 0, 'select_qusetion_id[-1][37]', '2018-03-27 20:30:00', '2018-03-27 20:30:00'),
(439, 117, 1, 5, '1', NULL, 0, 0, 0, NULL, '2018-03-27 20:30:00', '2018-03-27 20:30:00'),
(440, 117, 1, 5, '2', NULL, 0, 0, 0, NULL, '2018-03-27 20:30:00', '2018-03-27 20:30:00'),
(441, 1500697013, 1, -1, '25', 3, 1, 0, 0, 'select_qusetion_id[-1][25]', '2018-03-27 23:29:21', '2018-03-27 23:30:36'),
(442, 1500697013, 1, -1, '26', 3, 7, 0, 0, 'select_qusetion_id[-1][26]', '2018-03-27 23:29:22', '2018-03-27 23:30:40'),
(443, 1500697013, 1, -1, '27', 3, 8, 0, 0, 'select_qusetion_id[-1][27]', '2018-03-27 23:29:22', '2018-03-27 23:30:41'),
(444, 1500697013, 1, -1, '36', 3, 5, 0, 0, 'select_qusetion_id[-1][36]', '2018-03-27 23:29:29', '2018-03-27 23:30:38'),
(445, 1500697013, 1, -1, '151', 3, 4, 0, 0, 'select_qusetion_id[-1][36][ans][0][151]', '2018-03-27 23:29:37', '2018-03-27 23:30:38'),
(446, 1500697013, 1, -1, '25', 3, 3, 0, 0, 'select_qusetion_id[-1][36][ans][0][25]', '2018-03-27 23:29:44', '2018-03-27 23:30:37'),
(447, 1500697013, 1, -1, '26', 3, 6, 0, 0, 'select_qusetion_id[-1][36][ans][0][26]', '2018-03-27 23:29:45', '2018-03-27 23:30:40'),
(448, 1500697013, 1, -1, '27', 3, 9, 0, 0, 'select_qusetion_id[-1][36][ans][0][27]', '2018-03-27 23:29:45', '2018-03-27 23:30:42'),
(449, 1500697013, 1, -1, '151', 3, 2, 0, 0, 'select_qusetion_id[-1][36][ans][1][151]', '2018-03-27 23:30:12', '2018-03-27 23:30:37'),
(452, 1500697013, 1, -1, '166', 3, 10, 0, 0, 'select_qusetion_id[-1][36][ans][1][166]', '2018-03-27 23:30:21', '2018-03-27 23:30:42'),
(453, 118, 2, 0, '174', NULL, 0, 0, 0, NULL, '2018-03-28 18:14:05', '2018-03-28 18:14:05'),
(454, 119, 1, -1, '174', 1, 0, 0, 0, NULL, '2018-03-28 18:14:07', '2018-03-28 18:14:07'),
(455, 1532831533, 1, -1, '83', 3, 1, 0, 0, 'select_qusetion_id[-1][83]', '2018-03-28 18:17:34', '2018-03-28 18:17:48'),
(456, 1532831533, 1, -1, '129', 3, 2, 0, 0, 'select_qusetion_id[-1][129]', '2018-03-28 18:17:34', '2018-03-28 18:17:51'),
(457, 1532831533, 1, -1, '149', 3, 3, 0, 0, 'select_qusetion_id[-1][149]', '2018-03-28 18:17:35', '2018-03-28 18:17:52'),
(467, 120, 2, 0, '175', NULL, 0, 0, 0, NULL, '2018-04-03 02:30:17', '2018-04-03 02:30:17'),
(468, 121, 1, -1, '175', 1, 0, 0, 0, NULL, '2018-04-03 02:30:17', '2018-04-03 02:38:54'),
(469, 121, 1, 1, '175', 1, 1, 0, 0, 'select_qusetion_id[1][175]', '2018-04-03 02:36:53', '2018-04-03 02:38:54'),
(470, 121, 1, 2, '175', 1, 1, 0, 0, 'select_qusetion_id[2][175]', '2018-04-03 02:37:50', '2018-04-03 02:38:53'),
(471, 121, 1, 4, '175', 1, 1, 0, 0, 'select_qusetion_id[4][175]', '2018-04-03 02:38:11', '2018-04-03 02:38:53'),
(472, 121, 1, 5, '2', 1, 0, 0, 0, NULL, '2018-04-03 02:38:15', '2018-04-03 02:38:52'),
(473, 112, 2, 0, '71', 3, 2, 0, 0, 'select_qusetion_id[0][167][ans][0][71]', '2018-04-08 00:37:16', '2018-04-08 00:38:53'),
(476, 122, 2, 0, '176', NULL, 0, 0, 0, NULL, '2018-04-08 02:51:05', '2018-04-08 02:51:05'),
(477, 123, 1, -1, '176', 1, 0, 0, 0, NULL, '2018-04-08 02:51:05', '2018-04-08 02:51:05'),
(478, 124, 2, 0, '177', NULL, 0, 0, 0, NULL, '2018-04-08 03:46:52', '2018-04-08 03:46:52'),
(479, 125, 1, -1, '177', 1, 0, 0, 0, NULL, '2018-04-08 03:46:52', '2018-04-08 03:46:52'),
(480, 126, 2, 0, '178', NULL, 0, 0, 0, NULL, '2018-04-08 03:50:15', '2018-04-08 03:50:15'),
(481, 127, 1, -1, '178', 1, 0, 0, 0, NULL, '2018-04-08 03:50:15', '2018-04-08 03:50:15'),
(482, 128, 2, 0, '179', NULL, 0, 0, 0, NULL, '2018-04-08 03:52:57', '2018-04-08 03:52:57'),
(483, 129, 1, -1, '179', 1, 0, 0, 0, NULL, '2018-04-08 03:52:58', '2018-04-08 03:52:58'),
(484, 130, 2, 0, '180', NULL, 0, 0, 0, NULL, '2018-04-08 03:55:15', '2018-04-08 03:55:15'),
(485, 131, 1, -1, '180', 1, 0, 0, 0, NULL, '2018-04-08 03:55:16', '2018-04-08 03:55:16'),
(486, 132, 2, 0, '181', NULL, 0, 0, 0, NULL, '2018-04-08 03:57:37', '2018-04-08 03:57:37'),
(487, 133, 1, -1, '181', 1, 0, 0, 0, NULL, '2018-04-08 03:57:37', '2018-04-08 03:57:37'),
(488, 134, 2, 0, '182', NULL, 0, 0, 0, NULL, '2018-04-08 04:02:23', '2018-04-08 04:02:23'),
(489, 135, 1, -1, '182', 1, 0, 0, 0, NULL, '2018-04-08 04:02:23', '2018-04-08 04:02:23'),
(490, 136, 2, 0, '183', NULL, 0, 0, 0, NULL, '2018-04-08 04:47:25', '2018-04-08 04:47:25'),
(491, 137, 1, -1, '183', 1, 0, 0, 0, NULL, '2018-04-08 04:47:25', '2018-04-08 04:47:25'),
(492, 138, 2, 0, '184', NULL, 0, 0, 0, NULL, '2018-04-08 05:41:34', '2018-04-08 05:41:34'),
(493, 139, 1, -1, '184', 1, 0, 0, 0, NULL, '2018-04-08 05:41:34', '2018-04-08 05:41:34'),
(494, 140, 2, 0, '185', NULL, 0, 0, 0, NULL, '2018-04-08 05:46:32', '2018-04-08 05:46:32'),
(495, 141, 1, -1, '185', 1, 0, 0, 0, NULL, '2018-04-08 05:46:32', '2018-04-08 05:46:32'),
(496, 142, 2, 0, '186', NULL, 0, 0, 0, NULL, '2018-04-08 05:47:55', '2018-04-08 05:47:55'),
(497, 143, 1, -1, '186', 1, 0, 0, 0, NULL, '2018-04-08 05:47:56', '2018-04-08 05:47:56'),
(498, 144, 2, 0, '187', NULL, 0, 0, 0, NULL, '2018-04-08 05:49:24', '2018-04-08 05:49:24'),
(499, 145, 1, -1, '187', 1, 0, 0, 0, NULL, '2018-04-08 05:49:25', '2018-04-08 05:49:25'),
(500, 14, 2, 0, '188', 3, 1, 0, 0, 'select_qusetion_id[0][188]', '2018-04-08 19:13:21', '2018-04-08 19:13:21'),
(501, 7, 1, -1, '188', 3, 1, 0, 0, 'select_qusetion_id[-1][188]', '2018-04-08 19:21:34', '2018-04-08 19:21:34'),
(502, 1336541917, 2, 0, '25', 3, 1, 0, 0, 'select_qusetion_id[0][25]', '2018-04-08 19:23:14', '2018-04-08 19:23:14'),
(503, 1336541917, 2, 0, '26', 3, 2, 0, 0, 'select_qusetion_id[0][26]', '2018-04-08 19:23:14', '2018-04-08 19:23:14'),
(504, 1336541917, 2, 0, '27', 3, 3, 0, 0, 'select_qusetion_id[0][27]', '2018-04-08 19:23:14', '2018-04-08 19:23:14'),
(505, 1336541917, 2, 0, '36', 3, 4, 0, 0, 'select_qusetion_id[0][36]', '2018-04-08 19:23:14', '2018-04-08 19:23:14'),
(506, 1336541917, 2, 0, '37', 3, 5, 0, 0, 'select_qusetion_id[0][37]', '2018-04-08 19:23:14', '2018-04-08 19:23:14'),
(507, 1336541917, 2, 0, '38', 3, 6, 0, 0, 'select_qusetion_id[0][38]', '2018-04-08 19:23:14', '2018-04-08 19:23:14'),
(508, 1336541917, 2, 0, '39', 3, 7, 0, 0, 'select_qusetion_id[0][39]', '2018-04-08 19:23:14', '2018-04-08 19:23:14'),
(509, 1336541917, 2, 0, '40', 3, 8, 0, 0, 'select_qusetion_id[0][40]', '2018-04-08 19:23:14', '2018-04-08 19:23:14'),
(510, 1336541917, 2, 0, '41', 3, 9, 0, 0, 'select_qusetion_id[0][41]', '2018-04-08 19:23:14', '2018-04-08 19:23:14'),
(511, 1336541917, 2, 0, '188', 3, 10, 0, 0, 'select_qusetion_id[0][188]', '2018-04-08 19:23:14', '2018-04-08 19:23:14'),
(512, 1336541917, 2, 0, '35', 3, 11, 0, 0, 'select_qusetion_id[0][35]', '2018-04-08 19:23:14', '2018-04-08 19:23:14'),
(524, 1811796925, 2, 0, '25', 3, 1, 0, 0, 'select_qusetion_id[0][25]', '2018-04-08 19:52:37', '2018-04-08 19:52:37'),
(525, 1811796925, 2, 0, '26', 3, 2, 0, 0, 'select_qusetion_id[0][26]', '2018-04-08 19:52:37', '2018-04-08 19:52:37'),
(526, 1811796925, 2, 0, '27', 3, 1, 0, 0, 'select_qusetion_id[0][27]', '2018-04-08 19:52:44', '2018-04-08 19:52:44'),
(527, 1811796925, 2, 0, '36', 3, 1, 0, 0, 'select_qusetion_id[0][36]', '2018-04-08 19:52:50', '2018-04-08 19:52:50'),
(528, 1811796925, 2, 0, '188', 3, 1, 0, 0, 'select_qusetion_id[0][36][ans][0][188]', '2018-04-08 19:53:06', '2018-04-08 19:53:06'),
(529, 1811796925, 2, 0, '188', 3, 1, 0, 0, 'select_qusetion_id[0][36][ans][1][188]', '2018-04-08 19:53:17', '2018-04-08 19:53:17'),
(530, 1811796925, 2, 0, '188', 3, 1, 0, 0, 'select_qusetion_id[0][36][ans][2][188]', '2018-04-08 19:53:26', '2018-04-08 19:53:26'),
(531, 147, 2, 0, '25', NULL, 1, 0, 0, 'select_qusetion_id[0][25]', '2018-04-08 19:53:38', '2018-04-08 19:53:38'),
(532, 147, 2, 0, '26', NULL, 2, 0, 0, 'select_qusetion_id[0][26]', '2018-04-08 19:53:38', '2018-04-08 19:53:38'),
(533, 147, 2, 0, '27', NULL, 3, 0, 0, 'select_qusetion_id[0][27]', '2018-04-08 19:53:38', '2018-04-08 19:53:38'),
(534, 147, 2, 0, '36', NULL, 4, 1, 0, 'select_qusetion_id[0][36]', '2018-04-08 19:53:38', '2018-04-08 19:53:38'),
(535, 147, 2, 0, '188', NULL, 1, 0, 153, 'select_qusetion_id[0][36][ans][0][188]', '2018-04-08 19:53:38', '2018-04-08 19:53:38'),
(536, 147, 2, 0, '188', NULL, 1, 0, 154, 'select_qusetion_id[0][36][ans][1][188]', '2018-04-08 19:53:38', '2018-04-08 19:53:38'),
(537, 147, 2, 0, '188', NULL, 1, 0, 155, 'select_qusetion_id[0][36][ans][2][188]', '2018-04-08 19:53:38', '2018-04-08 19:53:38'),
(538, 146, 1, -1, '25', NULL, 1, 0, 0, 'select_qusetion_id[-1][25]', '2018-04-10 10:18:55', '2018-04-10 10:19:37'),
(539, 146, 1, -1, '26', NULL, 2, 0, 0, 'select_qusetion_id[-1][26]', '2018-04-10 10:18:55', '2018-04-10 10:19:37'),
(540, 146, 1, -1, '188', NULL, 3, 0, 0, 'select_qusetion_id[-1][188]', '2018-04-10 10:18:55', '2018-04-10 10:19:37'),
(541, 146, 1, 5, '1', NULL, 0, 0, 0, NULL, '2018-04-10 10:18:58', '2018-04-10 10:19:36'),
(542, 146, 1, 5, '2', NULL, 0, 0, 0, NULL, '2018-04-10 10:18:58', '2018-04-10 10:19:36'),
(543, 146, 1, 5, '3', NULL, 0, 0, 0, NULL, '2018-04-10 10:18:58', '2018-04-10 10:19:37'),
(544, 146, 1, 5, '4', NULL, 0, 0, 0, NULL, '2018-04-10 10:18:58', '2018-04-10 10:19:37'),
(545, 146, 1, 5, '5', NULL, 0, 0, 0, NULL, '2018-04-10 10:18:58', '2018-04-10 10:19:37'),
(546, 146, 1, 5, '6', NULL, 0, 0, 0, NULL, '2018-04-10 10:18:58', '2018-04-10 10:19:37'),
(547, 146, 1, 5, '7', NULL, 0, 0, 0, NULL, '2018-04-10 10:18:58', '2018-04-10 10:19:37');

-- --------------------------------------------------------

--
-- Table structure for table `survey_templates_question_logic`
--

CREATE TABLE `survey_templates_question_logic` (
  `id` int(11) NOT NULL,
  `survey_template_question_id` int(11) NOT NULL,
  `ans_option` int(11) NOT NULL,
  `survey_template_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `survey_templates_question_logic`
--

INSERT INTO `survey_templates_question_logic` (`id`, `survey_template_question_id`, `ans_option`, `survey_template_id`) VALUES
(149, 413, 0, 116),
(150, 413, 1, 116),
(151, 432, 0, 117),
(152, 432, 1, 117),
(153, 534, 0, 147),
(154, 534, 1, 147),
(155, 534, 2, 147);

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `payment_details_id` int(11) NOT NULL,
  `plan_id` int(11) NOT NULL,
  `pyment_gatway_id` int(11) NOT NULL,
  `transaction_responce` text NOT NULL,
  `created` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `update_payment_log`
--

CREATE TABLE `update_payment_log` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `recur_id` int(11) NOT NULL,
  `status` enum('Success','Error') NOT NULL,
  `update_request` text NOT NULL,
  `update_response` text NOT NULL,
  `created` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `update_payment_log`
--

INSERT INTO `update_payment_log` (`id`, `user_id`, `recur_id`, `status`, `update_request`, `update_response`, `created`, `modified`) VALUES
(8, 312, 9721, 'Success', '{\"ePNAccount\":\"080880\",\"RestrictKey\":\"yFqqXJh9Pqnugfr\",\"RecurID\":9721,\"TranType\":\"ModifyCreditCard\",\"CardNo\":\"xxxxxxxxxxxxxxxx\",\"ExpMonth\":\"xx\",\"ExpYear\":\"xx\"}', '\"Y\",\"Successful\"', '2018-03-23 00:54:25', '2018-03-23 00:54:38'),
(9, 328, 9768, 'Success', '{\"ePNAccount\":\"080880\",\"RestrictKey\":\"yFqqXJh9Pqnugfr\",\"RecurID\":9768,\"TranType\":\"ModifyCreditCard\",\"CardNo\":\"xxxxxxxxxxxxxxxx\",\"ExpMonth\":\"xx\",\"ExpYear\":\"xx\"}', '\"Y\",\"Successful\"', '2018-04-08 05:19:49', '2018-04-08 05:19:54');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(150) DEFAULT NULL,
  `last_name` varchar(150) DEFAULT NULL,
  `password` char(60) NOT NULL,
  `email` varchar(50) NOT NULL,
  `additional_email` varchar(50) DEFAULT NULL,
  `phone` varchar(16) DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `address_line1` varchar(100) DEFAULT NULL,
  `address_line2` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `zip_code` int(6) DEFAULT NULL,
  `business_name` varchar(255) DEFAULT NULL,
  `business_phone` varchar(16) DEFAULT NULL,
  `business_address_line1` varchar(255) DEFAULT NULL,
  `business_address_line2` varchar(255) DEFAULT NULL,
  `business_city` varchar(100) DEFAULT NULL,
  `business_state` varchar(100) DEFAULT NULL,
  `business_country` varchar(100) DEFAULT NULL,
  `business_zip_code` int(6) DEFAULT NULL,
  `group_id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL DEFAULT '0',
  `location` varchar(50) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `billing_address` tinyint(1) NOT NULL DEFAULT '1',
  `term_condition` tinyint(1) NOT NULL DEFAULT '0',
  `token` varchar(255) DEFAULT NULL,
  `plan_id` int(11) NOT NULL DEFAULT '0',
  `is_deleted` int(11) NOT NULL DEFAULT '0',
  `access_token` varchar(255) NOT NULL,
  `api_config` tinyint(1) NOT NULL DEFAULT '0',
  `review_fetch_date` date NOT NULL DEFAULT '0000-00-00',
  `created` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `password`, `email`, `additional_email`, `phone`, `birth_date`, `address_line1`, `address_line2`, `city`, `state`, `country`, `zip_code`, `business_name`, `business_phone`, `business_address_line1`, `business_address_line2`, `business_city`, `business_state`, `business_country`, `business_zip_code`, `group_id`, `parent_id`, `company_id`, `location`, `is_active`, `billing_address`, `term_condition`, `token`, `plan_id`, `is_deleted`, `access_token`, `api_config`, `review_fetch_date`, `created`, `modified`) VALUES
(10, 'Supar', 'Admin', '$2y$10$D0poZfCSR0SpYe5VsJFdc.u7pNb.5hVl.8QSJdNq5XAO2rosohRF6', 'superadmin@powertestimonial.com', '', '945-313-9942', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, 1, 1, 0, NULL, 2, 0, '', 0, '0000-00-00', '2017-10-12 20:41:45', '2018-01-11 01:18:02'),
(11, 'Frank', 'Paul', '$2y$10$nFqWB17uUz82uUDN/5LN4.wAJJIhtGz819vUaP1uvOXk6mppqKNrK', 'companyadmin@powertestimonial.com', '', '+435-465656562', NULL, 'rtret', '    dfg', 'rtgret', 'fgd', 'ID', 1234567, 'Chetu India', '+987-4561230__', 'A 186 Sector 63', 'sdcfdas', 'hg', 'ghjn', 'AD', 1234567, 2, 0, 0, NULL, 1, 1, 0, NULL, 2, 0, '', 0, '0000-00-00', '2017-10-12 20:44:51', '2018-03-22 22:13:22'),
(170, 'Brandon', 'Thorud', '$2y$10$kBJk2H8TZB5M4Ud9JbWNn.tRDqcU0rv4txUdrUuM0ohogJsGzVn3y', 'brandon@partnersre.com', 'Broker@partnersre.com', '+907-6944994__', NULL, '11940 Business Blvd Ste 202', '', 'Eagle River', 'AK', 'US', 99577, 'Partners Real Estate', '+907-6944994__', '11940 Business Blvd ', 'Ste 202', 'Eagle River', 'AK', 'AD', 99577, 2, 0, 170, NULL, 1, 1, 1, '1705a17df50d3747', 3, 0, '', 0, '2018-02-14', '2017-11-04 05:56:17', '2018-03-23 18:12:49'),
(172, 'Dharm', 'Singh', '$2y$10$6TF6HRBF1ybe18YBX.E26..tuTiN.iYR38qh6D9iuGyL7V9uZ6WoO', 'dharms2@chetu.com', '', '', NULL, '1344 Goucher ST', '1344 Goucher ST 2', 'Pacific Palisades', 'CA', 'US', 1234567, 'test', '123-456-7890', 'A-186, test123', 'test123', 'Noida', 'UP', 'India', 1234567, 2, 0, 0, NULL, 1, 1, 1, '1725a23140e1714a', 2, 0, '', 0, '0000-00-00', '2017-11-21 18:02:59', '2018-03-22 22:13:22'),
(173, 'Dharm', 'Singh', '$2y$10$xyW2BTTZerkSJhsjHZkJcOq9XsHGt/VI3Vn/4rZH7.UkplOgM8RBC', 'dharm@yopmail.com', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 11, 0, NULL, 1, 1, 0, NULL, 2, 0, '', 0, '0000-00-00', '2017-11-21 18:22:06', '2017-11-21 18:22:06'),
(174, 'Test', 'User', '$2y$10$2rTKZfdOWKgG8Pn3Na.U7OScMNCpQtbaRypGLwYIM8u9r1SH8NU5m', 'brandon@yopmail.com', '', NULL, NULL, '11940', '', 'Eagle River', 'AK', 'US', 99577, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, NULL, 1, 1, 1, NULL, 2, 0, '', 0, '0000-00-00', '2017-11-28 23:25:29', '2018-03-22 22:13:22'),
(175, 'Tim', 'Whitney', '$2y$10$KpAEzXxKqT7gzsSqrhTbue1GAtVaNJWPMBNJmCOVhISHKoKHMdTRq', 'tim@partnersre.com', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 170, 170, NULL, 1, 1, 0, '1755a3ca190f1048', 2, 0, '', 0, '0000-00-00', '2017-12-01 05:16:38', '2018-03-26 23:29:58'),
(177, 'Naresh', 'Gudipudi', '$2y$10$oY4uCglYiKJ.Z3pMV1SYYefPvGuBRfOClcKorJ99T0zFI902MwUQu', 'nareshg1@yopmail.com', 'gems@yopmail.com', '', NULL, '123', 'Main street', 'Clear Water', 'Florida', 'US', 33021, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, NULL, 1, 1, 1, NULL, 2, 0, '', 0, '0000-00-00', '2017-12-02 21:24:13', '2018-03-22 22:13:22'),
(179, 'Amit', 'Kumar', '$2y$10$/LtHstxFGEMde1gaQSjzheUzHsxmo/ohFlsHRlMZvgjDeQWo6dhZq', 'amit11@yopmail.com', '', NULL, NULL, 'dasf', '', 'Plantation', 'FL', 'US', 33322, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, NULL, 1, 1, 1, NULL, 2, 0, '', 0, '0000-00-00', '2017-12-02 22:00:06', '2018-03-22 22:13:22'),
(180, 'amit', 'kumar', '$2y$10$csGHYTkoZpts6y2/GdqNpunCvP/FNwSJTwFG2rdzLajwwjbAUxm.S', 'amitk@yopmail.com', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 172, 0, NULL, 1, 1, 0, NULL, 2, 0, '', 0, '0000-00-00', '2017-12-02 23:19:48', '2017-12-02 23:19:48'),
(181, 'vipin', 'kumar', '$2y$10$Qq8PAaZSn84Ol6Jf19OvHO2fMpXQsZfEFZormy8Nz/sTmD8OPh9YW', 'vipink5@chetu.com', '', NULL, NULL, 'noida', '', 'noida', 'up', 'AU', 4000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, NULL, 1, 1, 1, NULL, 2, 0, '', 0, '2018-02-14', '2017-12-04 19:00:56', '2018-03-22 22:13:22'),
(182, 'FirstName', '  LAstName  ', '$2y$10$TNp/Df5uJ34NpYh62SRbF.URQqJAAl6//N48Z06KgiNM2Cv0oN26i', 'prashantjohn@yopmail.com', 'email@test.com', '123-123-1231', NULL, 'AddressLine1', 'AddressLine2', 'City', 'State', 'Country', 123123, 'BusinessNAme', '123-123-14__', 'Address1', 'Address2', 'city', 'state', 'country', 1231234, 2, 0, 0, NULL, 1, 0, 1, NULL, 2, 0, '', 0, '0000-00-00', '2017-12-04 23:01:45', '2018-03-22 22:13:22'),
(183, 'sandeep', 'kumar', '$2y$10$REH7V9sDkUBHW/lEtH/Sa.9DsZ3H1xaSv/GbB6kFw9QxBwOBQqG2q', 'sandeep@yopmail.com', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 177, 0, NULL, 1, 1, 0, NULL, 2, 0, '', 0, '0000-00-00', '2017-12-04 23:43:09', '2017-12-04 23:43:55'),
(184, 'Alex', 'kumar', '$2y$10$4osE5fWSjljsQ1NiLaDGZO1/9ElRd2NZ3d.XewGYUNnlkaPsc.l0i', 'alex@yopmail.com', '', NULL, NULL, 'noida', '', 'noida', 'up', 'AU', 4000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, NULL, 1, 1, 1, NULL, 2, 0, '', 0, '0000-00-00', '2017-12-05 00:48:27', '2018-03-22 22:13:22'),
(185, 'Brandon', 'Thorud', '$2y$10$gY.UJTU5nLLBTQl1ehxqwuZKoARrJhddHAAJ4Jr2QrUYR4VsW7tAW', 'Info@partnersre.com', '', '907-433-9588', NULL, '11940 Business Blvd Ste 202', '', 'Eagle River', 'AK', 'US', 99577, 'Partners Real Estate', '907-694-4994', '11940 Business Blvd Ste 202', '', 'Eagle River', 'AK', 'USA', 99577, 2, 0, 185, NULL, 1, 1, 1, NULL, 2, 0, '', 0, '0000-00-00', '2017-12-05 01:32:26', '2018-03-23 18:13:16'),
(186, 'Dharm', 'Singh', '$2y$10$emxn3mTR00xIs4ADeIuuF.WS.kq16UUWxW4PiTaNd027hrW1NRb9m', 'veer@yopmail.com', '', NULL, NULL, '1344 Goucher ST', '1344 Goucher ST 2', 'Pacific Palisades', 'CA', 'US', 90272, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, NULL, 1, 1, 1, NULL, 2, 0, '', 0, '0000-00-00', '2017-12-06 13:30:55', '2018-03-22 22:13:22'),
(187, 'Dharm', 'Singh', '$2y$10$2xloRZAdSlFMljnFUMEfYerQqdYGekQrfnMF9LX9HIiTwZPSD1DZO', 'singh@yopmail.com', '', NULL, NULL, '1344 Goucher ST', '1344 Goucher ST 2', 'Pacific Palisades', 'CA', 'US', 90272, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, NULL, 1, 1, 1, NULL, 2, 0, '', 0, '0000-00-00', '2017-12-06 16:08:37', '2018-03-22 22:13:22'),
(188, 'Dharm', 'Singh', '$2y$10$Y4Ym0IQsFqIzPRuPHoLzkeB80RrgsJ/lC1Uez6leRTI7UHV3LQ.qC', 'veers123456@yopmail.com', '', NULL, NULL, '1344 Goucher ST', '1344 Goucher ST 2', 'Pacific Palisades', 'CA', 'US', 90272, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, NULL, 1, 1, 1, NULL, 2, 0, '', 0, '0000-00-00', '2017-12-06 17:31:53', '2018-03-22 22:13:22'),
(189, 'Dharm', 'Singh', '$2y$10$rSmnGT76vdEXUfklIotxBOlWNB41eJkxKDP9ya.ICjAt/Pwwu690i', 'veer1@yopmail.com', '', NULL, NULL, '1344 Goucher ST', '1344 Goucher ST 2', 'Pacific Palisades', 'CA', 'US', 90272, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, NULL, 1, 1, 1, NULL, 2, 0, '', 0, '0000-00-00', '2017-12-06 17:56:27', '2018-03-22 22:13:22'),
(190, 'Dharm', 'Singh', '$2y$10$hjl8IVr2JRKvDQTzczovPuR5oc4PqqRAZA9j/B7nojj6Bclvj9i1C', 'veer3@yopmail.com', '', NULL, NULL, '1344 Goucher ST', '1344 Goucher ST 2', 'Pacific Palisades', 'CA', 'US', 90272, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, NULL, 1, 1, 1, NULL, 2, 0, '', 0, '0000-00-00', '2017-12-06 18:34:47', '2018-03-22 22:13:22'),
(191, 'Dharm', 'Singh', '$2y$10$iNsA438FSa77qyZb370ODO5PNfACBJrdRwMrxSvxYNUDmD90l/HFq', 'dharmveer1@chetu.com', '', NULL, NULL, '1344 Goucher ST', '1344 Goucher ST 2', 'Pacific Palisades', 'CA', 'US', 90272, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, NULL, 1, 1, 1, NULL, 2, 0, '', 0, '0000-00-00', '2017-12-06 18:39:37', '2018-03-22 22:13:22'),
(192, 'Dharm', 'Singh', '$2y$10$jzsenlZXFyKkXyeFKt3bgu2S2rCZE1qCte728Sr5lQnUDmay1pWQC', 'dharmveer9@yopmail.com', '', NULL, NULL, '1344 Goucher ST', '1344 Goucher ST 2', 'Pacific Palisades', 'CA', 'US', 90272, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, NULL, 1, 1, 1, NULL, 2, 0, '', 0, '0000-00-00', '2017-12-06 18:42:37', '2018-03-22 22:13:22'),
(193, 'Dharm', 'Singh', '$2y$10$EH0/ShORTHUTu8HO24p8L.n8HhiauRVlixyn9rnlL9I0poAvmW9FW', 'veer4@yopmail.com', '', NULL, NULL, '1344 Goucher ST', '1344 Goucher ST 2', 'Pacific Palisades', 'CA', 'US', 90272, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, NULL, 1, 1, 1, NULL, 2, 0, '', 0, '0000-00-00', '2017-12-06 18:49:36', '2018-03-22 22:13:22'),
(194, 'Dharm', 'Singh', '$2y$10$1mxODgBkiFOTHLGgZ2YBg.iSv1BUmUtPln9eNigX2RzssHW5GR2g2', 'veer5@chetu.com', '', NULL, NULL, '1344 Goucher ST', '1344 Goucher ST 2', 'Pacific Palisades', 'CA', 'US', 90272, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, NULL, 1, 1, 1, NULL, 2, 0, '', 0, '0000-00-00', '2017-12-06 20:20:16', '2018-03-22 22:13:22'),
(195, 'Dharm', 'Singh', '$2y$10$VmOz6Np9R2w04ibEtAWTT.OhsJqnLCQWYYgBHk5WLOO1u6bSGEA4O', 'veer6@chetu.com', '', NULL, NULL, '1344 Goucher ST', '1344 Goucher ST 2', 'Pacific Palisades', 'CA', 'US', 90272, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, NULL, 1, 1, 1, NULL, 2, 0, '', 0, '0000-00-00', '2017-12-06 20:34:58', '2018-03-22 22:13:22'),
(196, 'Dharm', 'Singh', '$2y$10$SsdfLcaFHqVDoinb75z6jep7kqaBzev2JHBHX5BnHR0SOHZqImXue', 'veer7@chetu.com', '', NULL, NULL, '1344 Goucher ST', '1344 Goucher ST 2', 'Pacific Palisades', 'CA', 'US', 90272, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, NULL, 1, 1, 1, NULL, 2, 0, '', 0, '0000-00-00', '2017-12-06 20:49:36', '2018-03-22 22:13:22'),
(197, 'Dharm', 'Singh', '$2y$10$A7sAMsZtQfK1FEbU3opx3.rR9./wHM8N0J608PcDdyKjNjgPO8rEe', 'veer8@chetu.com', '', NULL, NULL, '1344 Goucher ST', '1344 Goucher ST 2', 'Pacific Palisades', 'CA', 'US', 90272, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, NULL, 1, 1, 1, NULL, 2, 0, '', 0, '0000-00-00', '2017-12-06 20:54:08', '2018-03-22 22:13:22'),
(198, 'Dharm', 'Singh', '$2y$10$yuFaZoRJt7mw0/VK5yFimu9mGH5SAkD5ydktZJHJhCqNH/POzJmZ.', 'veer9@chetu.com', '', NULL, NULL, '1344 Goucher ST', '1344 Goucher ST 2', 'Pacific Palisades', 'CA', 'US', 90272, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, NULL, 1, 1, 1, NULL, 2, 0, '', 0, '0000-00-00', '2017-12-06 21:02:36', '2018-03-22 22:13:22'),
(199, 'Dharm', 'Singh', '$2y$10$92geVX1PCoJY5Fga6eOWaOyb6Cja96BedMKw.MiSTWif0IsuBqNem', 'veer10@chetu.com', '', NULL, NULL, '1344 Goucher ST', '1344 Goucher ST 2', 'Pacific Palisades', 'CA', 'US', 90272, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, NULL, 1, 1, 1, NULL, 2, 0, '', 0, '0000-00-00', '2017-12-06 21:13:28', '2018-03-22 22:13:22'),
(200, 'Dharm', 'Singh', '$2y$10$bOE2e5ZRlq/tNMbWNsdwiuuIWZxF2uGGZ.VBVS95HIBWWIjPk9O2O', 'veer123@chetu.com', '', NULL, NULL, '1344 Goucher ST', '1344 Goucher ST 2', 'Pacific Palisades', 'CA', 'US', 90272, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, NULL, 1, 1, 1, NULL, 2, 0, '', 0, '0000-00-00', '2017-12-06 23:13:56', '2018-03-22 22:13:22'),
(201, 'Dharm', 'Singh', '$2y$10$kBJk2H8TZB5M4Ud9JbWNn.tRDqcU0rv4txUdrUuM0ohogJsGzVn3y', 'dharmveer21@yopmail.com', '', NULL, NULL, '1344 Goucher ST', '1344 Goucher ST 2', 'Pacific Palisades', 'CA', 'US', 90272, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, NULL, 1, 1, 1, NULL, 2, 0, '', 0, '0000-00-00', '2017-12-06 23:59:01', '2018-03-22 22:13:22'),
(202, 'Dharm', 'Dev', '$2y$10$DivXvB5qqnYdNY.SzKWUh.BTy9yAfhupn.V3v3Sq56RfyDtH8QmCi', 'dharmdevg@yopmail.com', 'dharmg@chetu.com', '987-654-3210', NULL, 'A- 186/187', 'Sector 63', 'NoidaTest', 'UPTest', 'INTest', 201301, 'Chetu', '123-456-7891', 'Sector ', '63', 'Noida', 'Utter Pradesh', 'India', 201301, 2, 0, 0, NULL, 1, 0, 1, '2025a2992fbeb478', 2, 0, '', 0, '0000-00-00', '2017-12-07 18:51:57', '2018-03-22 22:13:22'),
(203, 'Prashant', 'Mishra', '$2y$10$MNHE6lLxKz637XVDzdTwLOADt6.AI4jBvzabOZMxImvjIKwrAy/ae', 'prashantmishra@yopmail.com', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 202, 0, NULL, 1, 1, 0, NULL, 2, 0, '', 0, '0000-00-00', '2017-12-07 19:26:41', '2017-12-07 19:58:22'),
(204, 'Dharm', 'Singh', '$2y$10$iPiYhT5rfw/tCA1lzayJOO5hJTRh.vUZsNV.r/5OkY2SfPSI83mSe', 'dharms201@chetu.com', '', NULL, NULL, '1344 Goucher ST', '1344 Goucher ST 2', 'Pacific Palisades', 'CA', 'US', 90272, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, NULL, 1, 1, 1, NULL, 2, 0, '', 0, '0000-00-00', '2017-12-07 19:40:36', '2018-03-22 22:13:22'),
(205, 'bikash', 'rout', '$2y$10$QIwSq58mos6KKDYSOdskre/sqdeA7/gwWFAF/E8O1tV0WElh9eLsu', 'bikashrout@yopmail.com', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 202, 0, NULL, 1, 1, 0, NULL, 2, 0, '', 0, '0000-00-00', '2017-12-07 19:41:53', '2017-12-07 20:16:18'),
(207, 'Test', 'TestLast', '$2y$10$9CY569158BZDPjrNSMAKKe3lecfD3VlbjUjq/gKFn1fmMZOzf8Kle', 'test@test.com', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 202, 0, NULL, 0, 1, 0, NULL, 2, 0, '', 0, '0000-00-00', '2017-12-07 19:56:17', '2017-12-07 19:58:18'),
(208, 'Dharm', 'Singh', '$2y$10$1nCJ3f.peBnySbj/Hxe8W.hp/E6ORWjmDEbDC2KSqwZR90t.l5R72', 'dharmq@chetu.com', '', NULL, NULL, '1344 Goucher ST', '1344 Goucher ST 2', 'Pacific Palisades', 'CA', 'US', 90272, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, NULL, 1, 1, 1, NULL, 2, 0, '', 0, '0000-00-00', '2017-12-07 23:34:04', '2018-03-22 22:13:22'),
(209, 'Dharm', 'Singh', '$2y$10$g7vLmS9CY6faSKVcachnMeOCA37/BpaVNvfmGYrNaWWeBiCF5AVdK', 'dharmsn@chetu.com', '', NULL, NULL, '1344 Goucher ST', '1344 Goucher ST 2', 'Pacific Palisades', 'CA', 'US', 90272, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, NULL, 1, 1, 1, NULL, 2, 0, '', 0, '0000-00-00', '2017-12-07 23:58:54', '2018-03-22 22:13:22'),
(210, 'vipin', 'kumar', '$2y$10$8RScOBgqvl7vEBLvMuZLxe2RwtMK7iOZrDKaUTK//hif5wR5xSN2G', 'vipinkc@chetu.com', '', NULL, NULL, 'noida', '', 'noida', 'up', 'AU', 4000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, NULL, 1, 1, 1, NULL, 2, 0, '', 0, '0000-00-00', '2017-12-08 00:10:34', '2018-03-22 22:13:22'),
(211, 'sam', 'john', '$2y$10$V/RQzD6pttN9ots511G3Ouy773f3w7zZlDNwMFqoGQfG3WlaCFY1C', 'sam@yopmail.com', '', NULL, NULL, 'A-186, test123', 'test123', 'Noida', 'UP', 'IN', 201301, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, NULL, 1, 1, 1, NULL, 2, 0, '', 0, '0000-00-00', '2017-12-08 00:27:23', '2018-03-22 22:13:22'),
(212, 'Dharm', 'Singh', '$2y$10$.fNA/CGBn0uqZfKqOUZ3xecJgdJn5uJaRQgf6OUHUnuAWCF055Is.', 'dharmsm@chetu.com', '', NULL, NULL, '1344 Goucher ST', '1344 Goucher ST 2', 'Pacific Palisades', 'CA', 'US', 90272, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, NULL, 1, 1, 1, NULL, 2, 0, '', 0, '0000-00-00', '2017-12-08 17:21:34', '2018-03-22 22:13:22'),
(213, 'Dharm', 'Singh', '$2y$10$oQoXIRdDrGiW6SMCY8BhM.d/lEfuDNR2Uv10evB.aQ.sDPy/9Djry', 'dharmscd@chetu.com', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 212, 0, NULL, 1, 1, 0, NULL, 2, 0, '', 0, '0000-00-00', '2017-12-09 00:44:56', '2017-12-09 00:44:56'),
(214, 'Chetu', 'User', '$2y$10$Wr0ZSjJicrIWYxoLecUrtOchkQaTIN48s3zlbiKylK.tMvlf4rszK', 'chetu@yopmail.com', '', '', NULL, 'A-186', 'test123', 'Noida', 'UP', 'IN', 201301, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, NULL, 1, 1, 1, NULL, 2, 0, '', 0, '0000-00-00', '2017-12-09 00:48:43', '2018-03-22 22:13:22'),
(215, 'Bill', 'Smith', '$2y$10$hYlWvKTgvhx1qjDWF9fchOjbVTkYBIuwYYDr53Bn257.uHV/XZ.6e', 'bills@yopmail.com', '', '', NULL, 'Test 1', 'Test 2', 'Miami', 'Florida', 'US', 12456, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, NULL, 1, 1, 1, NULL, 2, 0, '', 0, '0000-00-00', '2017-12-09 00:53:08', '2018-03-22 22:13:22'),
(216, 'Naresh', 'Gudipudi', '$2y$10$xsj0wfJv1W.eNlNZI1NCh.RdpzYNbW54jxOGUfM7TIy.n9qet2xQy', 'nareshg11@yopmail.com', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 11, 0, NULL, 1, 1, 0, NULL, 2, 0, '', 0, '0000-00-00', '2017-12-09 01:08:47', '2017-12-09 01:08:47'),
(217, 'Yogesh', 'Bhatt', '$2y$10$J/W/w5d/PzMTy7m7ET7yCuSCpYBm4owjr3R.I4VTEtwITMghdfyPK', 'yogeshb@yopmail.com', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 11, 0, NULL, 1, 1, 0, NULL, 2, 0, '', 0, '0000-00-00', '2017-12-09 01:11:15', '2017-12-09 01:11:15'),
(218, 'vipin', 'kumar', '$2y$10$kPoi5tBuOVacJSN.eIysaO9OeLw0A8A85oS0.8Ron0AIvJIGoasU6', 'vipin@yopmail.com', '', '+1-234-567-8901', NULL, 'noida', '', 'noida', 'UP', 'IN', 201301, 'Chetu', '+918-527238750', 'noida', '', 'noida', 'UP', 'IN', 201301, 2, 0, 0, NULL, 1, 1, 1, NULL, 2, 0, '', 0, '0000-00-00', '2017-12-09 02:06:29', '2018-03-22 22:13:22'),
(219, 'sumit', 'kumar', '$2y$10$EH.c07O1KL8xlk6vh2lapeH.EKap9jX8c/tTNtu3RVGSM4d1nRTDu', 'sumits@yopmail.com', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 218, 0, NULL, 1, 1, 0, NULL, 2, 0, '', 0, '0000-00-00', '2017-12-09 02:12:38', '2017-12-09 02:12:38'),
(220, 'Dharm', 'Singh', '$2y$10$uYIYrd1EBEk96igCn9W9We7umgb6zQPEdQqb263n4tj7ots0J67A2', 'dharms201x@chetu.com', '', NULL, NULL, '1344 Goucher ST, 1344 Goucher ST 2', '1344 Goucher ST 2', 'Pacific Palisades', 'CA', 'US', 90272, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, NULL, 1, 1, 1, NULL, 2, 0, '', 0, '0000-00-00', '2017-12-09 03:00:48', '2018-03-22 22:13:22'),
(221, 'Dharm', 'Singh', '$2y$10$iXzhPFzST1EzHbFhUtQYqeKzb53ISAPB2i7pzlt1aWLrjE/G2LItS', 'dharms201q@chetu.com', '', NULL, NULL, '1344 Goucher ST', '1344 Goucher ST 2', 'Pacific Palisades', 'CA', 'US', 90272, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, NULL, 1, 1, 1, NULL, 2, 0, '', 0, '0000-00-00', '2017-12-09 03:03:46', '2018-03-22 22:13:22'),
(222, 'Chris', 'Moore', '$2y$10$iG3XZMPNxBJntGRKBQqpBO/u.jhFaoT5WyjeCKS5sqIyZ0WrQffWm', 'chrismooreak@gmail.com', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 170, 170, NULL, 1, 1, 0, NULL, 2, 0, '', 0, '0000-00-00', '2017-12-12 07:16:52', '2018-03-26 23:29:53'),
(223, 'Mark', 'Bellamy', '$2y$10$sxBavBV8gHk4ROSJJmM26OdPPS7V387b93GNPzzc0DVpRoGn6D43S', 'mark.classact@gmail.com', '', NULL, NULL, '587 NE Greenwood Ave, Ste A', '', 'Bend', 'Oregon', 'US', 97701, 'Class Act Property Management LLC', '+971-5991440__', '587 NE Greenwood Ave', 'Ste A', 'Bend', 'Oregon', 'US', 97701, 2, 0, 223, NULL, 1, 1, 1, NULL, 2, 0, '', 0, '0000-00-00', '2017-12-14 00:55:14', '2018-03-26 23:37:08'),
(224, 'amit', 'kumar', '$2y$10$j8Nh5OKKELM1sxI7M5AIne6qeMyos0ySIXIjcoUbnmQcMicvfR5TO', 'amit@yopmail.com', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 218, 0, NULL, 1, 1, 0, NULL, 2, 0, '', 0, '0000-00-00', '2017-12-14 03:07:37', '2017-12-14 03:07:37'),
(225, 'amit', 'kumar', '$2y$10$dg9SxaDJwWHUWTdZSPAKLO6rgiaK4GoH36E9TQUt4s8LsUPduPeBm', 'amitk2@yopmail.com', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 218, 0, NULL, 1, 1, 0, NULL, 2, 0, '', 0, '0000-00-00', '2017-12-14 03:08:26', '2017-12-14 03:08:26'),
(226, 'mohan', 'kumar', '$2y$10$wN/HKeQmZayKwvG2m3zjUeBuoHhRw0V56/k/oLQaM3nV4bzyMy6BW', 'mohank@yopmail.com', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 218, 0, NULL, 1, 1, 0, NULL, 2, 0, '', 0, '0000-00-00', '2017-12-14 03:14:07', '2017-12-14 03:14:07'),
(227, 'servendra', 'kumar', '$2y$10$G4i9jiDfqkq56VFo4GKkluV2z6oJbjCfPjoMO2InlY6./UtBjURCO', 'servendrak@yopmail.com', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 218, 0, NULL, 1, 1, 0, NULL, 2, 0, '', 0, '0000-00-00', '2017-12-14 03:42:54', '2017-12-14 03:42:54'),
(228, 'servendra', 'kumar', '$2y$10$ALCj47Wnl8BtKyRZnQVyCuVc4M8dhhJSuiBTNFC8.UOt7y6DpsLhu', 'servendrak1@yopmail.com', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 218, 0, NULL, 1, 1, 0, NULL, 2, 0, '', 0, '0000-00-00', '2017-12-14 03:43:33', '2017-12-14 03:43:33'),
(229, 'servendra', 'kumar', '$2y$10$ylZnhgrudKE0rzZCNT3RiePpdbWxOATWCGfUukxwl.Rhyw5dXGepO', 'servendrak12@yopmail.com', '', '+1-234-567-8901', NULL, 'noida', '', 'Noida', 'UP', 'IN', 201301, 'Chetu', '+1-234-567-8990', 'noida', '', 'noida', 'UP', 'IN', 201301, 4, 218, 0, NULL, 1, 1, 0, NULL, 2, 0, '', 0, '0000-00-00', '2017-12-14 03:45:05', '2017-12-14 04:21:51'),
(230, 'rizwaan', 'kumar', '$2y$10$8gmW4FFSOijxUexqf/.3n.PGUkMi1Bn9NxlE/VjW2WRh2EU7gxeBq', 'rizwaanm@yopmail.com', '', NULL, NULL, 'noida', '', 'noida', 'UP', 'IN', 201301, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, NULL, 1, 1, 1, NULL, 2, 0, '', 0, '0000-00-00', '2017-12-14 03:55:05', '2018-03-22 22:13:22'),
(231, 'Manan', 'Singh', '$2y$10$xcZ6ftW5FFK0Q0eQJqvFVuJ2.4H4ppcpSx1Krj9YFtth6iUEOSEyu', 'manan11@yopmail.com', '', NULL, NULL, 'daf', 'dsaf', 'dsaf', 'dsaf', 'US', 64131, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, NULL, 1, 1, 1, NULL, 2, 0, '', 0, '0000-00-00', '2017-12-14 22:56:25', '2018-03-22 22:13:22'),
(232, 'Dharm', 'Singh', '$2y$10$gP39wrAHLN/Wzovey0yOO.I3Muw.BMIPBGO.QxuTeTSeVOBDZMlLe', 'dharmsp@chetu.com', '', '+1-945-313-9942', NULL, '1344 Goucher ST', '1344 Goucher ST 2', 'Pacific Palisades', 'CA', 'US', 90272, 'Chetu India', '+1-987-456-1230', 'A 186 Sector 63', '', 'Noida', 'UP', 'IN', 1234567, 2, 0, 0, NULL, 1, 1, 1, NULL, 2, 0, '', 0, '0000-00-00', '2017-12-15 00:19:59', '2018-03-22 22:13:22'),
(233, 'Dharm', 'Singh', '$2y$10$TAfufJFFKF8M5g23kSRk.OpsRIyBZCjaETjlKKmcy0O45QzCQKfXe', 'dharmsl@chetu.com', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 232, 0, NULL, 1, 1, 0, NULL, 2, 0, '', 0, '0000-00-00', '2017-12-15 00:27:19', '2017-12-15 00:27:19'),
(234, 'Kellie', 'Tollifson', '$2y$10$dVQHguMkYAjBMLHRaTXnOunax6nExKwgtzoOlu5V7CZSJrrJjYmOW', 'ktollifson@tsquaremanagement.com', '', NULL, NULL, '19125 North Creek Parkway #208', '', 'Bothell', 'WA', 'US', 98011, 'T-Square Properties', '+1-425-949-4583', '19125 North Creek Parkway #208', '', 'Bothell', 'WA', 'US', 98011, 2, 0, 234, NULL, 1, 1, 1, NULL, 2, 0, '', 0, '0000-00-00', '2017-12-15 01:03:23', '2018-03-26 23:36:20'),
(235, 'Manan Assoc', 'Singh', '$2y$10$qGhyM0lS09vhgC.eEINFiuvhn6JumCRGU6rHrYdLGqWOO5qDPJxWC', 'manan13@yopmail.com', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 231, 0, NULL, 1, 1, 0, NULL, 2, 0, '', 0, '0000-00-00', '2017-12-15 03:10:11', '2017-12-22 05:34:00'),
(236, 'Ethan', 'Benson', '$2y$10$byyyzXXczDVPeiWI2675jOSGnvPMUdBPA1osYK.IfkmaElXLahCPS', 'eb@creekviewak.com', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 170, 170, NULL, 1, 1, 0, NULL, 2, 0, '', 0, '0000-00-00', '2017-12-15 05:55:13', '2018-03-26 23:29:49'),
(237, 'Kim and Terry', 'Hardman', '$2y$10$MobGP.loRSwOOvWSs/SAM.v6vwX1aXfVApq9shKp5pxVDVKI1niGO', 'kimhardman_chakw@yahoo.com', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 170, 170, NULL, 1, 1, 0, NULL, 2, 0, '', 0, '0000-00-00', '2017-12-15 05:56:30', '2018-03-26 23:29:43'),
(238, 'Jeron', 'Rose', '$2y$10$0lP4Nsn4Ihaw6C3loDJz8OuJi/CJnogH5GFzgJ0.zXMDVgLYvSkyq', 'jeron@partnersre.com', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 170, 170, NULL, 1, 1, 0, NULL, 2, 0, '', 0, '0000-00-00', '2017-12-15 05:57:21', '2018-03-26 23:29:39'),
(239, 'Ann Marie', 'Davey', '$2y$10$m2P50f7XLwLD5FyghV8yqeBOsjAA5WhH/.2l7GqtRWn9ZdwNg8/1i', 'adavey907@gmail.com', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 170, 170, NULL, 1, 1, 0, NULL, 2, 0, '', 0, '0000-00-00', '2017-12-15 06:11:59', '2018-03-26 23:29:35'),
(240, 'Danica', 'Sopko', '$2y$10$5G4vFxoDfxG1TlX4ZEArgOmjtRhYXr1j60Mc/cdTkEaqdx0LJFplC', 'danicaj907@gmail.com', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 170, 170, '', 1, 1, 1, NULL, 2, 0, '', 1, '0000-00-00', '2017-12-15 06:12:29', '2018-03-27 08:24:44'),
(241, 'Company', 'Admin', '$2y$10$zdsXqzrTINLFCBCam1tr6.xdkWUVXVHdw8YZ6thNKpxI8rmYhDTay', 'meena1@gmail.com', '', NULL, NULL, 'A-186, test123', 'test123', 'Noida', 'UP', 'IN', 201301, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, NULL, 1, 1, 1, NULL, 2, 0, '', 0, '0000-00-00', '2017-12-15 19:52:13', '2018-03-22 22:13:22'),
(242, 'amit', 'kumar', '$2y$10$caQSsnMDrbHR3zGLc0CsbuecD0tQu/Q0LPKIur3JpD5lVO/duDktC', 'amitk3@yopmail.com', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 181, 0, NULL, 1, 1, 0, NULL, 2, 0, '', 0, '0000-00-00', '2017-12-15 22:26:01', '2017-12-15 22:26:01'),
(243, 'sumit', 'kumar', '$2y$10$Zh/jd9qQH39PS9PxgtfNn.szYwkbttqyMN2QmYeIz/cbq7otwgMDu', 'sumitk3@yopmail.com', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 181, 0, NULL, 1, 1, 0, NULL, 2, 0, '', 0, '0000-00-00', '2017-12-15 22:27:15', '2017-12-15 22:27:15'),
(244, 'Dharm', 'Singh', '$2y$10$5KxdtRmbguL2l.3vYA0wYO54tKYpwVP11hfx6FO2QPVl1zLn8eYnK', 'dharms256@chetu.com', '', NULL, NULL, '1344 Goucher ST, 1344 Goucher ST 2', '1344 Goucher ST 2', 'Pacific Palisades', 'CA', 'US', 90272, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, NULL, 1, 1, 1, NULL, 2, 0, '', 0, '0000-00-00', '2017-12-15 23:20:24', '2018-03-22 22:13:22'),
(245, 'Company', 'Admin', '$2y$10$gs7jG606OxhBqYDeRKkCW.jvr5bCkLx46EEWOH5uh8/.9Rp.EqNaq', 'meena2@gmail.com', '', NULL, NULL, 'A-186, test123', 'test123', 'Noida', 'UP', 'IN', 201301, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, NULL, 1, 1, 1, NULL, 2, 0, '', 0, '0000-00-00', '2017-12-16 15:59:46', '2018-03-22 22:13:22'),
(246, 'prashant', 'mishra', '$2y$10$LyfHXHyrbUC6WmPppFis1es8X9AW0PQm3vP8WrQDvZKazS65/kU6u', 'prashant2@yopmail.com', '', NULL, NULL, 'noida', '', 'noida', 'Alabama', 'IN', 201301, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, NULL, 1, 1, 1, NULL, 2, 0, '', 0, '0000-00-00', '2017-12-16 16:38:23', '2018-03-22 22:13:22'),
(247, 'Rakesh', 'Sharma', '$2y$10$K7w1c23SoUovrsAfgOMKqusiSqX/FFUhdR11TxUYlb6th4BpFij1C', 'rakesh@yopmail.com', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 246, 0, NULL, 1, 1, 0, NULL, 2, 0, '', 0, '0000-00-00', '2017-12-16 16:40:21', '2017-12-16 17:36:49'),
(248, 'prashant', 'mishra', '$2y$10$Ac0vxtBO5kQJQER3/ck96OOg91R1VgNHd6T.g3yfZ22YXr8US7uOe', 'prashant3@yopmail.com', '', NULL, NULL, 'noida', '', 'noida', 'Alabama', 'IN', 201301, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, NULL, 1, 1, 1, NULL, 2, 0, '', 0, '0000-00-00', '2017-12-16 18:40:06', '2018-03-22 22:13:22'),
(249, 'Prashant', 'Mishra', '$2y$10$EEJanEDU8zQzvICXi9QKlu4aw7gJg/Q3p9EUOix/eTVlvY5eejy76', 'prashantm@chetu.com', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 248, 0, NULL, 1, 1, 0, NULL, 2, 0, '', 0, '0000-00-00', '2017-12-16 18:49:13', '2017-12-16 18:49:13'),
(250, 'prashant', 'mishra', '$2y$10$woMbBWOSHH2ZmaLalmeOUecEGrckyWEfgPF4dMgLyrJbgenfHWEVm', 'pdshrmmrshdp@chetu.com', '', NULL, NULL, 'noida', '', 'noida', 'Alabama', 'IN', 201301, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, NULL, 1, 1, 1, NULL, 2, 0, '', 0, '0000-00-00', '2017-12-16 19:04:07', '2018-03-22 22:13:22'),
(251, 'Prashant', 'Mishra', '$2y$10$BVOHL3SJU9hYMcnpo9iPn.1FikC9KbHxGBJ4O19Zt24gtT/Y98Ibi', 'pdshrmmrshdp@yopmail.com', '', NULL, NULL, 'noida', '', 'noida', 'Alabama', 'IN', 20301, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, NULL, 1, 1, 1, NULL, 2, 0, '', 0, '0000-00-00', '2017-12-16 19:06:03', '2018-03-22 22:13:22'),
(252, 'prashant', 'mishra', '$2y$10$fHvAXufgHJYs03bi52AXdeKUG.mHc3a8xw5GL51swp6/R2DKPw2qG', 'psdhrmpdshrm@yopmail.com', '', NULL, NULL, 'noida', '', 'noida', 'Alabama', 'IN', 201301, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, NULL, 1, 1, 1, NULL, 2, 0, '', 0, '0000-00-00', '2017-12-16 19:18:41', '2018-03-22 22:13:22'),
(253, 'Amit', 'mishra', '$2y$10$lmwYCjJohBttxHdiRuhsoOtnI8Jq/egJJclpo6X.k7qHLJxGtplbS', 'amit22@yopmail.com', '', NULL, NULL, 'noida', '', 'noida', 'Alabama', 'IN', 201301, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, NULL, 1, 1, 1, NULL, 2, 0, '', 0, '0000-00-00', '2017-12-16 20:31:41', '2018-03-22 22:13:22'),
(254, 'amit', 'Sharma', '$2y$10$K.8e9T3aPFfhjJaGsDBJiuLZ/1BKc.39AeSNTOWyAnUMUwO3hxqfO', 'amit25@yopmail.com', '', NULL, NULL, 'Noida', 'Noida', 'noida', 'Alabama', 'IN', 123456, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, NULL, 1, 1, 1, NULL, 2, 0, '', 0, '0000-00-00', '2017-12-16 20:33:14', '2018-03-22 22:13:22'),
(255, 'Ramesh', 'Singh', '$2y$10$C8opgp83EGTDoDuIHtUJKeVP6G.UPHea0Rtg7mHEvscsH0/8ukJiu', 'ramesh@yopmail.com', '', NULL, NULL, 'noida', '', 'noida', 'Alabama', 'IN', 201301, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, NULL, 1, 1, 1, NULL, 2, 0, '', 0, '0000-00-00', '2017-12-16 20:48:28', '2018-03-22 22:13:22'),
(256, 'Ankesh', 'Tripathi', '$2y$10$pPR0/Z5NWdQp5C7EMGtq4u4wkT3xPUx32OXLJy0pQml7HpNvcpWbS', 'ankesh@yopmail.com', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 252, 0, NULL, 1, 1, 0, NULL, 2, 0, '', 0, '0000-00-00', '2017-12-18 17:21:42', '2017-12-18 17:21:42'),
(257, 'Dharm', 'Singh', '$2y$10$32neUPFyGJR0rKbVSE5Oiu52YPaSK4fByYMQOFNTxhRocnB7Fkz6.', 'dharms206@yopmail.com', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 11, 0, NULL, 1, 1, 0, NULL, 2, 0, '', 0, '0000-00-00', '2017-12-18 17:40:48', '2017-12-18 17:40:48'),
(258, 'Dharm', 'Singh', '$2y$10$HKPN85tERj2U4EcXKdiKVOcb0EJei2ivQvzpHzvKyAc2vrG4vI4XS', 'dharms207@yopmail.com', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 11, 0, NULL, 1, 1, 0, NULL, 2, 0, '', 0, '0000-00-00', '2017-12-18 17:44:56', '2017-12-18 17:44:56'),
(259, 'Dharm', 'Singh', '$2y$10$aZsBARGfvICIxU78d8FxX.RyvqHtZ8qrhPSmfijEfjinFAv7QPIlm', 'dharms208@yopmail.com', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 11, 0, NULL, 1, 1, 0, NULL, 2, 0, '', 0, '0000-00-00', '2017-12-18 17:46:41', '2017-12-18 17:46:41'),
(260, 'Dharm', 'Singh', '$2y$10$tkJ5FnIvWlKkZ7QaWI2zlul56emHbOliRL.Sd.7xge1iWSaxdOImG', 'dharms209@yopmail.com', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 11, 0, NULL, 1, 1, 0, NULL, 2, 0, '', 0, '0000-00-00', '2017-12-18 17:48:32', '2017-12-18 17:48:32'),
(261, 'Matthew', 'Bate', '$2y$10$n/UxTWfbbgeRwvRUyDUb8er6Q5D37DVLEtoOxb/fkCKaUhDzIr15S', 'matthew1@yopmail.com', '', NULL, NULL, '1344 Goucher ST', '', 'Pacific Palisades', 'CA', 'US', 90272, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, NULL, 1, 1, 1, NULL, 1, 0, '', 0, '0000-00-00', '2017-12-20 23:03:48', '2018-03-22 22:13:22'),
(262, 'Matthew', 'Bate', '$2y$10$idxItaX/08fKGJu73HJ6keX4Wbg0ufA.YnJ5HmtH93IzrwM3ivVKi', 'matthew@yopmail.com', '', '+1-945-313-9942', NULL, '1344 Goucher ST', '', 'Pacific Palisades', 'CA', 'US', 90272, 'Chetu India', '+1-987-456-1230', 'A 186 Sector 63', '', 'Noida', 'UP', 'IN', 1234567, 2, 0, 0, NULL, 1, 1, 1, NULL, 1, 0, '', 0, '0000-00-00', '2017-12-20 23:10:09', '2018-03-22 22:13:22'),
(263, 'Sanda', 'Moldovan', '$2y$10$XWdSRYsuGgeeVE..3wEeRu7zQtCgdWH4abMQpB0.DTW7HNxtv.3T2', 'sanda@yopmail.com', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 262, 0, NULL, 1, 1, 1, NULL, 0, 0, '', 0, '0000-00-00', '2017-12-20 23:12:09', '2017-12-20 23:12:09'),
(264, 'Monu', 'kumar', '$2y$10$zT52rQjCfkopCNgitezPxO4jxbyX7Iwfjn199bwf1JVlInCeRtt16', 'monuk@yopmail.com', '', NULL, NULL, 'noida', 'noida', 'noida', 'UP', 'IN', 201301, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, NULL, 1, 1, 1, NULL, 1, 0, '', 0, '0000-00-00', '2017-12-20 23:27:52', '2018-03-22 22:13:22'),
(265, 'agent1', 'kumar', '$2y$10$umDgLPYtHI1t6Lt7h0McweWhPhp3syY5.jVLxz1FLXlbTIbzF9NPy', 'agent1@yopmail.com', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 264, 0, NULL, 1, 1, 1, NULL, 0, 0, '', 0, '0000-00-00', '2017-12-20 23:28:57', '2017-12-20 23:28:57'),
(266, 'Test', 'User', '$2y$10$s9Axf46y59Vx.meRRJdX9u1ISzmFJlveKIlVXO3IqnqGbF5HToOTS', 'test2017@yopmail.com', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 262, 0, NULL, 1, 1, 1, NULL, 0, 0, '', 0, '0000-00-00', '2017-12-21 20:55:39', '2017-12-21 20:55:39'),
(267, 'thomas', 'test', '$2y$10$Irs8Cz0Rp7uOfU2DGuYDju/WRtaCH4MiWJgaKy9yMbtwRY//sf6nC', 'thomas@yopmail.com', '', NULL, NULL, 'A-186, test123', 'test123', 'Noida', 'UP', 'IN', 201301, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, NULL, 1, 1, 1, NULL, 2, 0, '', 0, '0000-00-00', '2017-12-21 23:14:52', '2018-03-22 22:13:22'),
(268, 'thomasUser', 'test', '$2y$10$g4g2PnjcJM4lmgEEr1cUiO7FQCQuizgqfN/gqqGrIVvfugp7AXkMm', 'thomasUser@yopmail.com', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 267, 0, NULL, 1, 1, 1, NULL, 0, 0, '', 0, '0000-00-00', '2017-12-21 23:21:25', '2017-12-21 23:21:25'),
(269, 'prashant', 'mishra', '$2y$10$mtIe0VN68/YRsnhle.fX3epgn40Vk5etGBxjYSieKbMhlrmSkAmwy', 'prashant@yopmail.com', '', NULL, NULL, 'noida', '', 'noida', 'Alabama', 'IN', 201301, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, NULL, 1, 1, 1, NULL, 1, 0, '', 0, '0000-00-00', '2017-12-21 23:46:03', '2018-03-22 22:13:22'),
(270, 'prashant2', 'mishra', '$2y$10$O6hELmCQ4y.88wlcQcQGKu8QLx71.HsYt6rx/1G7zsIKgCy3dRU8W', 'prashantm@yopmail.com', '', '+1-954-706-3103', NULL, 'noida', '', 'noida', 'Alabama', 'IN', 201301, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, NULL, 1, 1, 1, NULL, 2, 0, '', 0, '0000-00-00', '2017-12-21 23:47:29', '2018-03-22 22:13:22'),
(271, 'mahesh', 'sharma', '$2y$10$NXEfrsn1CXPbmwkW89nY.eR2zcg1wP9FVu5/CprJGtx8TgkrRRaTa', 'mahesh@yopmail.com', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 269, 0, NULL, 1, 1, 1, NULL, 0, 0, '', 0, '0000-00-00', '2017-12-21 23:49:00', '2017-12-21 23:49:00'),
(272, 'Ravindra', 'Sharma', '$2y$10$rvGgrjNSEA7SZRHBMAce6.CeW6svqvzIdmgWtF.gnZjnvvoDKYlaK', 'ravindra@yopmail.com', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 270, 0, NULL, 0, 1, 1, NULL, 0, 0, '', 0, '0000-00-00', '2017-12-21 23:54:10', '2017-12-22 19:31:09'),
(273, 'Ravindra', 'Sharma', '$2y$10$3xvxQwJB71JxVOLnG3gkm.1LHy7Z2wNeniYNkEzRtRt8lWSg3wb4.', 'ravindra2@yopmail.com', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 270, 0, NULL, 1, 1, 1, NULL, 0, 0, '', 0, '0000-00-00', '2017-12-21 23:55:43', '2017-12-21 23:55:43'),
(274, 'Ravindra3', 'Mishra', '$2y$10$JCNf2myPYMoBK4F7ynwja.1epTjSPBjs/qeiL.H5GfUheh3WhrK3a', 'ravindra3@yopmail.com', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 270, 0, NULL, 1, 1, 1, NULL, 0, 0, '', 0, '0000-00-00', '2017-12-21 23:56:37', '2017-12-21 23:56:37'),
(275, 'Ravindra4', 'Sharma', '$2y$10$kntMmn7xdP4X.xly.rrrTeErZPpQb/21INugmLsHxg9CVTJIDVys2', 'ravindra4@yopmail.com', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 270, 0, NULL, 1, 1, 1, NULL, 0, 0, '', 0, '0000-00-00', '2017-12-21 23:57:35', '2017-12-21 23:57:35'),
(276, 'Dharm', 'Singh', '$2y$10$73GfPEpTZJwCRmJN7uPoYO.RcLZ0lO/oGEPhoKkhszLkJ.92C.FJu', 'singh2017@yopmail.com', '', NULL, NULL, '1344 Goucher ST', '1344 Goucher ST 2', 'Pacific Palisades', 'CA', 'US', 90272, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, NULL, 1, 1, 1, NULL, 1, 0, '', 0, '0000-00-00', '2017-12-21 23:57:37', '2018-03-22 22:13:22'),
(277, 'Ravindra5', 'Sharma', '$2y$10$mRZJ4/bnZ2FiG6mOqm7JeuYgMjwrMTn0uivqyEvc0Pz.zKFvcHzsu', 'ravindra5@yopmail.com', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 270, 0, NULL, 1, 1, 1, NULL, 0, 0, '', 0, '0000-00-00', '2017-12-21 23:58:20', '2017-12-21 23:58:20'),
(278, 'Ravindra6', 'Sharma', '$2y$10$ZLSrI9rxUw3XBPx0ceLNcuG.zq7fVvesmLJPa.L0UfsAZvFu2we22', 'ravindra6@yopmail.com', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 270, 0, NULL, 1, 1, 1, NULL, 0, 0, '', 0, '0000-00-00', '2017-12-21 23:59:11', '2017-12-21 23:59:11'),
(279, 'Dharm', 'Singh', '$2y$10$KBjjMKAo.XoWKFJUP/e2FOdfJlTpB3XoPqGgfORmva30u/1ZgpPKK', 'veer2018@yopmail.com', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 276, 0, NULL, 1, 1, 1, NULL, 0, 0, '', 0, '0000-00-00', '2017-12-21 23:59:13', '2017-12-21 23:59:13'),
(280, 'Ravindra7', 'Sharma', '$2y$10$b.BtMu6zcsnlWc7V6nZuBefOIGa6YfCOCMcBd5sEFbn9M667dEepm', 'ravindra7@yopmail.com', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 270, 0, NULL, 1, 1, 1, NULL, 0, 0, '', 0, '0000-00-00', '2017-12-22 00:00:06', '2017-12-22 00:00:06'),
(281, 'Ravindra8', 'Sharma', '$2y$10$WSfHea6AbSO7MIkOR8rpB.ZQGbauesPZi4s3bcgXlitusi3USlGoS', 'ravindra8@yopmail.com', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 270, 0, NULL, 1, 1, 1, NULL, 0, 0, '', 0, '0000-00-00', '2017-12-22 00:01:02', '2017-12-22 00:01:02'),
(282, 'Ravindra9', 'Sharma', '$2y$10$n2BlI0QAU9m3T1I2ThZm8uhzuC/tZOScHDKXoMiTqU1to6ejhOd16', 'ravindra9@yopmail.com', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 270, 0, NULL, 1, 1, 1, NULL, 0, 0, '', 0, '0000-00-00', '2017-12-22 00:01:51', '2017-12-22 00:01:51'),
(283, 'Ravindra10', 'Sharma', '$2y$10$NXQN51MYG05ta01ydY4H1OXPEm3Vo4u.vVjJM3S4L.45c2DueCPTG', 'ravindra10@yopmail.com', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 270, 0, NULL, 1, 1, 1, NULL, 0, 0, '', 0, '0000-00-00', '2017-12-22 00:02:48', '2017-12-22 18:41:10'),
(284, 'Company', 'Admin', '$2y$10$gRlFImc3Rr.JVwRASygN3elU.2CDD6l.2w39k2UlA9jUcPFd2CsPm', 'thomasu@yopmail.com', '', NULL, NULL, 'A-186, test123', 'test123', 'Noida', 'UP', 'IN', 201301, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, NULL, 1, 1, 1, NULL, 2, 0, '', 0, '0000-00-00', '2017-12-22 17:09:15', '2018-03-22 22:13:22'),
(285, 'Dharm', 'Singh', '$2y$10$QHLqYJJjuS4d1L7NbJL.oOWhUOLJH1ORY2VeqrH72kfPLY7ycuuKW', 'dharms301@chetu.com', '', NULL, NULL, '1344 Goucher ST', '1344 Goucher ST 2', 'Pacific Palisades', 'CA', 'US', 90272, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, NULL, 1, 1, 1, NULL, 2, 0, '', 0, '0000-00-00', '2017-12-22 17:21:58', '2018-03-22 22:13:22'),
(286, 'Dharm', 'Singh', '$2y$10$KfHi0pjKgnz/a0U5dquS9uGp5p3CGp8pxL9Br5SWynlGMo7.H1MIi', 'dharms41@chetu.com', '', NULL, NULL, '1344 Goucher ST', '1344 Goucher ST 2', 'Pacific Palisades', 'CA', 'US', 90272, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, NULL, 1, 1, 1, NULL, 2, 0, '', 0, '0000-00-00', '2017-12-22 17:22:26', '2018-03-22 22:13:22'),
(287, 'Dharm', 'Singh', '$2y$10$9QeO4i7wqwyP5hCC2yK9TesWqDQJbCuoIUUS8N/S/HkINDMvebpI.', 'dharms201cd@chetu.com', '', NULL, NULL, '1344 Goucher ST', '1344 Goucher ST 2', 'Pacific Palisades', 'CA', 'US', 90272, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, NULL, 1, 1, 1, NULL, 1, 0, '', 0, '0000-00-00', '2017-12-22 17:24:30', '2018-03-22 22:13:22'),
(288, 'Dharm', 'Singh', '$2y$10$7HnFpLADju4TsCsi71gd4OivEZmWdvnsnxLuWaSM47bn3g..3rEwi', 'dharmde@yopmail.com', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 287, 0, NULL, 1, 1, 1, NULL, 0, 0, '', 0, '0000-00-00', '2017-12-22 23:21:28', '2017-12-22 23:21:28'),
(289, 'Company', 'Admin', '$2y$10$7HxA3BWPZVcydr24oidXZOkFD4/MoQn4JO56P.qIlbKSG52YSvih.', 'meenah@chetu.com', '', '+1-213-212-4233', NULL, 'A-186, test123', 'test123', 'Noida', 'UP', 'IN', 201301, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, NULL, 1, 1, 1, NULL, 2, 0, '', 0, '0000-00-00', '2017-12-23 00:14:48', '2018-03-22 22:13:22'),
(290, 'brandan', 'kumar', '$2y$10$kH50A6SrMBz7oZn//yc/8uQV.zP3e284eOs8edhPIE/X1EWgzrtwO', 'brandan@yopmail.com', '', NULL, NULL, 'noida', '', 'noida', 'UP', 'IN', 201301, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, NULL, 1, 1, 1, NULL, 1, 0, '', 0, '0000-00-00', '2017-12-23 02:20:25', '2018-03-22 22:13:22'),
(291, 'Test', 'Account', '$2y$10$VVgs/m6UdgGAiAdgOsogkOrMl/0sGYqbzQm4GWUksr7HsnkPgfiCm', 'Support@powertestimonial.com', '', NULL, NULL, '11940 Business Blvd', '', 'Eagle River', 'AK', 'US', 99577, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 291, NULL, 1, 1, 1, NULL, 1, 0, '', 0, '0000-00-00', '2017-12-26 10:08:49', '2018-03-26 23:34:40'),
(292, 'Joe', 'Smith', '$2y$10$g10Jr67qQWhKWJ1DI3L.y.n7m.8jZJVy.6K917BltbdRqPN9iy95W', 'info@powertestimonial.com', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 291, 291, NULL, 0, 1, 1, NULL, 0, 1, '', 0, '0000-00-00', '2017-12-26 10:11:45', '2018-03-26 23:33:58'),
(293, 'Mickey', 'Mouse', '$2y$10$t.LXfVB/..8K1HeX6D.39uTp0NUJOZJbMP2AdaAPZN4yfdqLXT/m2', 'accounting@partnersre.com', '', NULL, NULL, '11940 Business Bvld', '', 'Eagle River', 'AK', 'US', 99577, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, NULL, 1, 1, 1, NULL, 1, 0, '', 0, '0000-00-00', '2017-12-27 00:39:52', '2018-03-22 22:13:22'),
(294, 'Company', 'Admin', '$2y$10$UWO/EGf9tBzG95dAbh1Fm.NbPWEtasvrynGcLNH9qp5j8NzU5.7rO', 'meenahaldher@gmail.com', '', NULL, NULL, 'A-186, test123', 'test123', 'Noida', 'UP', 'IN', 201301, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, NULL, 1, 1, 1, NULL, 2, 0, '', 0, '0000-00-00', '2017-12-27 00:48:16', '2018-03-22 22:13:22'),
(295, 'rizwaan', 'kumar', '$2y$10$NNioI7rMOcwh4gtvw6S1P.a8Pui2V/7qcvtdolAMuBI3p6y3lzVaS', 'rizwaank@yopmail.com', '', NULL, NULL, 'noida', 'noida', 'noida', 'UP', 'IN', 201301, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, NULL, 1, 1, 1, NULL, 1, 0, '', 0, '0000-00-00', '2017-12-27 01:09:55', '2018-03-22 22:13:22'),
(296, 'Matthew', 'Bate', '$2y$10$BCNMHxwwFOA/D1ycwlljXeCj2oZNKuBMPskul8IUZyx8NOKaADiRO', 'dharms2020@yopmail.com', '', NULL, NULL, '1344 Goucher ST', '', 'Pacific Palisades', 'CA', 'US', 90272, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, NULL, 1, 1, 1, NULL, 2, 0, '', 0, '0000-00-00', '2017-12-27 01:14:07', '2018-03-22 22:13:22'),
(297, 'Dharm', 'Singh', '$2y$10$wFFxuFVc3TB8/t1A3/I.Tuu2hZYOWbETZ/N7rPWxFj9DA0STwuIjW', 'dharmsingh1@yopmail.com', '', NULL, NULL, '452 Rivers Rd', '', 'Brisbane', 'Queensland', 'AU', 4000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, NULL, 1, 1, 1, NULL, 2, 0, '', 0, '0000-00-00', '2017-12-27 23:45:18', '2018-03-22 22:13:22'),
(298, 'Meena', 'Haldher', '$2y$10$qZh1DThouEt0zibxPw18J.xft4h60JqqmUk46MiIt4KkIsPtE2KS2', 'meenah@yopmail.com', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 0, 0, '', 1, 1, 1, NULL, 0, 0, '', 0, '0000-00-00', '2017-12-29 21:15:16', '2018-03-24 02:38:27'),
(299, 'Company', 'Admin', '$2y$10$9bUZlg7FFot8Ed58y6Dkv.Ax4IV1AuSYuIOQDBygHQkV.GGDmDCBC', 'meena@yopmail.com', '', NULL, NULL, 'A-186', 'test123', 'Noida', 'UP', 'IN', 201301, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, NULL, 1, 1, 1, NULL, 2, 0, 'TWVlbmExMjM=', 0, '0000-00-00', '2017-12-29 22:07:24', '2018-03-22 22:13:22'),
(300, 'vipin', 'kumar', '$2y$10$/rkBRpqhgWTfWRQv7mozhOIod7beYwun4hWPo168Vu4s96Q2MhNmO', 'vipink5@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 290, 0, NULL, 1, 1, 1, NULL, 0, 0, 'Q2hldHVAMTIz', 0, '0000-00-00', '2018-01-11 01:30:47', '2018-01-11 01:30:47'),
(301, 'Dharm', 'Singh', '$2y$10$C7hciopY5.r98AL/XkDx6uMaJ8IPy7ekegXBmEN32CJ2Nmq2XPso6', 'veersingh@yopmail.com', NULL, NULL, NULL, '1344 Goucher ST', '1344 Goucher ST 2', 'Pacific Palisades', 'CA', 'US', 90272, 'Chetu India', '+1-987-456-1230', 'A 186 Sector 63', '', 'Noida', 'UP', 'IN', 1234567, 2, 0, 0, NULL, 1, 1, 1, NULL, 3, 0, 'Q2hldHUxMjM=', 0, '2018-02-13', '2018-01-11 17:43:24', '2018-03-22 22:13:22'),
(302, 'Matthew', 'Bate', '$2y$10$4Y3HUpZvrDArONfAxqAIa.aTDtuwrWnfssqEvnsaDFCbSJF7V/9.C', 'veersingh2@yopmail.com', '', '+1-774-586-9532', NULL, 'C-467, Beta 1', '', 'Noida', 'UP', 'IN', 201301, 'Chetu', '+1-945-313-9942', 'A 154, Sector 63', '', 'Noida', 'UP', 'IN', 201301, 4, 301, 0, NULL, 1, 1, 1, NULL, 0, 0, 'Q2hldHUxMjM=', 1, '0000-00-00', '2018-01-11 17:46:58', '2018-02-24 00:37:05'),
(303, 'Company', 'Admin', '$2y$10$Q3iZ2QpWBLDa0oMtGy28T.8vjnWvkl4UnLJ7Jy4NDffeu1ZvN.Znu', 'meena13@gmail.com', NULL, NULL, NULL, 'A-186, test123', 'test123', 'Noida', 'UP', 'IN', 201301, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, NULL, 1, 1, 1, NULL, 2, 0, 'Q2hldHVAMTIz', 0, '0000-00-00', '2018-01-11 23:35:08', '2018-03-22 22:13:22'),
(304, 'Jam', 'User', '$2y$10$2qeT8eDSgo3IAkF4TsYVq.tvrivTjPFo8MdrkrqNhgn9O/lFFhfAi', 'jam1@yopmail.com', NULL, NULL, NULL, 'A-186, test123', 'test123', 'Noida', 'UP', 'IN', 201301, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, NULL, 1, 1, 1, NULL, 2, 0, 'Q2hldHVAMTIz', 0, '0000-00-00', '2018-01-11 23:41:31', '2018-03-22 22:13:22'),
(305, 'Jam', 'User', '$2y$10$PoQai/E0dOTFfQpDnbtSk.E9cQN/baSWoUdl5scGzD2oMHuDonIHm', 'jam2@yopmail.com', NULL, NULL, NULL, 'A-186', 'test123', 'Noida', 'UP', 'IN', 201301, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, NULL, 1, 1, 1, NULL, 2, 0, 'Q2hldHVAMTIz', 0, '0000-00-00', '2018-01-11 23:48:56', '2018-03-22 22:13:22'),
(306, 'Jenny', 'User', '$2y$10$ngraFV0cW90lKCZCwX7/6e2UcQn5YQ/LQZd0PNZHOXmKs5NvN769a', 'jenny@yopmail.com', NULL, NULL, NULL, 'A-186, test123', 'test123', 'Noida', 'UP', 'IN', 201301, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, NULL, 1, 1, 1, NULL, 2, 0, 'Q2hldHVAMTIz', 0, '0000-00-00', '2018-01-11 23:59:44', '2018-03-22 22:13:22'),
(307, 'Tim', 'Whitney', '$2y$10$uEJzU0LK5.G0njIeL60rl.WJVeKXnTpbWd8IJ7iEeepBWTpaKzW6O', 'tim.whitney@partnersre.com', NULL, NULL, NULL, '11940 Business Blvd', '', 'Eagle River', 'AK', 'US', 99577, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 307, NULL, 1, 1, 1, NULL, 2, 0, 'QWJjZDIxNTM=', 0, '0000-00-00', '2018-01-12 01:28:22', '2018-03-26 23:31:56'),
(308, 'Dharm', 'Singh', '$2y$10$GWi6ol5yj6Vbc34UpQGk4Onv0QTIhjYbLYLzEa9FqNi7YvwTv17C2', 'veersingh5@yopmail.com', NULL, NULL, NULL, '1344 Goucher ST', '1344 Goucher ST 2', 'Pacific Palisades', 'CA', 'US', 90272, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, NULL, 1, 1, 1, NULL, 1, 0, 'Q2hldHUxMjM=', 0, '0000-00-00', '2018-01-12 16:58:42', '2018-03-22 22:13:22'),
(309, 'Vipin', 'Kumar', '$2y$10$NJIhja2ASyvTQLVbJVr0PumTDxR2NcG3sbdV6oJYHx456/rD2IDmq', 'vipink6@yopmail.com', NULL, NULL, NULL, 'CHETU', '', 'NOIDA', 'DELHI', 'IN', 201301, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, NULL, 1, 1, 1, NULL, 3, 0, 'Q2hldHVAMTIz', 0, '0000-00-00', '2018-01-12 23:15:41', '2018-03-22 22:13:22'),
(310, 'Vipin', 'Kumar', '$2y$10$8CEO8f3JiqxmhOpPPwfcxuaWNlNrtWjLna6HnM.EcyxRMYRthncee', 'sumits2@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 309, 0, NULL, 1, 1, 1, NULL, 0, 0, 'Q2hldHVAMTIz', 0, '0000-00-00', '2018-01-12 23:20:41', '2018-01-12 23:20:41'),
(311, 'Dharm', 'Singh', '$2y$10$S6UGih5xRJCqzguCrcQdY.RUfccxnLcyUqEjDT82LZsZ1jkdn5NwO', 'dharms2@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 181, 0, NULL, 1, 1, 1, NULL, 0, 0, 'Q2hldHVAMTIz', 0, '0000-00-00', '2018-03-09 01:32:12', '2018-03-09 01:32:12'),
(312, 'Matthew', 'Bate', '$2y$10$mwDr90FBwYSxjyw20oWxwepUTSwdl2VtrCrBxQAsfTD4xP19nUhx.', 'matthewbate1@yopmail.com', NULL, NULL, NULL, '1344 Goucher ST', '', 'Pacific Palisades', 'CA', 'US', 90272, 'Chetu India', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 312, NULL, 1, 1, 1, NULL, 3, 0, 'Q2hldHUxMjM=', 0, '0000-00-00', '2018-03-22 23:20:58', '2018-03-22 23:21:11'),
(313, 'Matthew', 'Bate 2', '$2y$10$FKmT27ty13EHg8UCKReISuZlSikxo5/fMIfwfzirFsWVVBZGp9BpK', 'matthewbate2@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 312, 312, 'Alaska', 1, 1, 1, NULL, 0, 0, 'Q2hldHUxMjM=', 0, '0000-00-00', '2018-03-22 23:22:43', '2018-03-22 23:22:45'),
(314, 'Matthew', 'Bate 3', '$2y$10$ugwpCp0W5YQPthzBpECzyucc4KH9nXXVKJhipa6ZT8KImBgxx0JMi', 'matthewbate3@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 312, 312, 'New Jersey', 1, 1, 1, NULL, 0, 0, 'Q2hldHUxMjM=', 0, '0000-00-00', '2018-03-22 23:23:50', '2018-03-22 23:23:52'),
(315, 'Matthew', 'Bate 4', '$2y$10$jRspRMefnzO9auC8Uj7xj.LirFJmZa.kjXQYMRtxoObpkuFMpZSQ2', 'matthewbate4@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, 313, 312, '', 1, 1, 1, NULL, 0, 0, 'Q2hldHUxMjM=', 0, '0000-00-00', '2018-03-22 23:24:38', '2018-03-22 23:24:39'),
(316, 'Matthew', 'Bate 5', '$2y$10$311uLMshDub3QQKVjRMKn.nhFSM1AqtQ0i8sp88yKgTrDj6Yt114a', 'matthewbate5@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, 314, 312, '', 1, 1, 1, NULL, 0, 0, 'Q2hldHUxMjM=', 0, '0000-00-00', '2018-03-22 23:25:37', '2018-03-22 23:25:40');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `password`, `email`, `additional_email`, `phone`, `birth_date`, `address_line1`, `address_line2`, `city`, `state`, `country`, `zip_code`, `business_name`, `business_phone`, `business_address_line1`, `business_address_line2`, `business_city`, `business_state`, `business_country`, `business_zip_code`, `group_id`, `parent_id`, `company_id`, `location`, `is_active`, `billing_address`, `term_condition`, `token`, `plan_id`, `is_deleted`, `access_token`, `api_config`, `review_fetch_date`, `created`, `modified`) VALUES
(317, 'Matthew', 'Bate 6', '$2y$10$pQcZOacALhyaSdMsy9RTR.TZeq3tOIJo8sNGxT1jg3.2wuq55jH2i', 'matthewbate6@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 315, 312, '', 1, 1, 1, NULL, 0, 0, 'Q2hldHUxMjM=', 0, '0000-00-00', '2018-03-22 23:26:18', '2018-03-22 23:26:20'),
(318, 'Matthew', 'Bate 7', '$2y$10$KHxpjruO66b1d8VA.dl93.96XUA2zUv8YvCmFASB0pLdm3fKSrBty', 'matthewbate7@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 316, 312, '', 1, 1, 1, NULL, 0, 0, 'Q2hldHUxMjM=', 0, '0000-00-00', '2018-03-22 23:26:55', '2018-03-22 23:26:57'),
(319, 'Deepak', 'Test', '$2y$10$bEnUYm2wxwrwX1hCX3kHLe.RA/UvA5IZpZ0f/Q7Ck4ilR0giXwUhi', 'deepak@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 170, 170, 'Alaska', 0, 1, 1, NULL, 0, 1, 'Q2hldHVAMTIz', 0, '0000-00-00', '2018-03-24 21:34:46', '2018-03-24 21:43:44'),
(320, 'Monu', 'Test', '$2y$10$T0R1NXQvA4f9KhGlzFKkvu7NbLq/Y7Ew03/8fEeZ/2N8QAl7hx0M6', 'monu@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, 319, 170, NULL, 0, 1, 1, NULL, 0, 1, 'Q2hldHVAMTIz', 0, '0000-00-00', '2018-03-24 21:35:50', '2018-03-24 21:43:39'),
(321, 'Sanda', 'Moldovan', '$2y$10$tB7BHOIXjpc5/q2xp7FONOaRCuApPyrSOJSpqvBkyTE9ER.qDu2Ve', 'test234@yopmail.com', NULL, NULL, NULL, '1344 Goucher ST', '', 'Pacific Palisades', 'CA', 'US', 90272, 'Chetu India', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 321, NULL, 1, 1, 1, NULL, 1, 0, 'Q2hldHUxMjM=', 0, '0000-00-00', '2018-03-28 18:13:47', '2018-03-28 18:14:00'),
(322, 'Amit', 'Kumar', '$2y$10$h/XFgcn0s0aoANMO4HBMte4kYHIVnobOgaAyIUHpWQyFvXGvy4uQK', 'amitk5@yopmail.com', NULL, NULL, NULL, 'noida', 'noida', 'noida', 'UP', 'TL', 201301, 'Chetu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 322, NULL, 1, 1, 1, NULL, 2, 0, 'Q2hldHVAMTIz', 0, '0000-00-00', '2018-04-03 02:29:59', '2018-04-03 02:30:13'),
(323, 'Test', 'Kumar', '$2y$10$E/208opMQ8WQl9md9xMpC.MA2WZiGHsIIBnBAr4CD7/tm9fDGXF7u', 'test50@yopmail.com', NULL, NULL, NULL, 'noida', '123', 'Noida', 'UP', 'US', 44444, 'Microsoft', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 323, NULL, 1, 1, 1, NULL, 2, 0, 'Q2hldHVAMTIz', 0, '0000-00-00', '2018-04-08 02:50:54', '2018-04-08 02:51:04'),
(324, 'Test51', 'Kumar', '$2y$10$8/1ZtGsbWMyOSQLYaD.TS.5I9AbHYk5t.Ge/i2nPDMsbkRZFuMz6u', 'test51@yopmail.com', NULL, NULL, NULL, '1344 Goucher ST', '1344 Goucher ST 2', 'Pacific Palisades', 'CA', 'US', 90272, 'Chetu India', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 324, NULL, 1, 1, 1, NULL, 3, 0, 'Y0hFVFVAMTIz', 0, '0000-00-00', '2018-04-08 03:46:38', '2018-04-08 03:46:48'),
(325, 'TEST52', 'Kumar', '$2y$10$cIh2/JCdvuctvte0i9sETu7y4QOeesOy0UhdoRKbWPXeM.VXqEGOO', 'test52@yopmail.com', NULL, NULL, NULL, '1344 Goucher ST', '1344 Goucher ST 2', 'Pacific Palisades', 'CA', 'US', 90272, 'Chetu India', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 325, NULL, 1, 1, 1, NULL, 2, 0, 'Q2hldHVAMTIz', 0, '0000-00-00', '2018-04-08 03:50:02', '2018-04-08 03:50:12'),
(326, 'Test53', 'Kumar', '$2y$10$/L.daTqdK01C202Hiz2gA.Tw3R4E.oxfGLiHPGsGxwXxOJ9O.3ReK', 'test53@yopmail.com', NULL, NULL, NULL, 'noida', '123', 'Noida', 'UP', 'US', 44444, 'Microsoft', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 326, NULL, 1, 1, 1, NULL, 3, 0, 'Q2hldHVAMTIz', 0, '0000-00-00', '2018-04-08 03:52:42', '2018-04-08 03:52:53'),
(328, 'Test54', 'Kumar', '$2y$10$.i5wv5p2L7lBue0LKK20K.XnC64GyNuseJoBq5MUc2lhydcbyVN/O', 'test54@yopmail.com', NULL, NULL, NULL, 'noida', '', 'Noida', 'UP', 'US', 44444, 'Microsoft', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 328, NULL, 1, 1, 1, NULL, 3, 0, 'Q2hldHVAMTIz', 0, '0000-00-00', '2018-04-08 03:55:01', '2018-04-08 03:55:11'),
(329, 'Test55', 'Kumar', '$2y$10$WBx8dusR/cLHEJupzBEMP.u1LYXa69eYcR9Y3XtoN1vzOMrwXxt92', 'test55@yopmail.com', NULL, NULL, NULL, '1344 Goucher ST', '1344 Goucher ST 2', 'Pacific Palisades', 'CA', 'US', 90272, 'Chetu India', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 329, NULL, 1, 1, 1, NULL, 3, 0, 'Q2hldHVAMTIz', 0, '0000-00-00', '2018-04-08 03:57:23', '2018-04-08 03:57:33'),
(330, 'Test51', 'Kumar', '$2y$10$sy0t.QQL3XNicLiBSa5L8.LGf5/pQeGllzk1aOFhEef.ZapzH.qXG', 'test56@yopmail.com', NULL, NULL, NULL, '1344 Goucher ST', '1344 Goucher ST 2', 'Pacific Palisades', 'CA', 'US', 90272, 'Chetu India', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 330, NULL, 1, 1, 1, NULL, 3, 0, 'Q2hldHVAMTIz', 0, '0000-00-00', '2018-04-08 04:02:09', '2018-04-08 04:02:19'),
(331, 'Test', 'Kumar', '$2y$10$tq3g7SnSHDJUgTMYXZxf2.cBDyjqhezD7ZLrYbclb8yNToZD0mgTe', 'test57@yopmail.com', NULL, NULL, NULL, 'C-467, Beta 1', '123', 'Noida', 'UP', 'US', 44444, 'chetu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 331, NULL, 1, 1, 1, NULL, 3, 0, 'Q2hldHVAMTIz', 0, '0000-00-00', '2018-04-08 04:47:11', '2018-04-08 04:47:21'),
(332, 'Test58', 'Kumar', '$2y$10$wJmNAcNPFmagT1yCuhhUw.eUUYgfsribABul1ctmJmHePx6Sq3xbi', 'test58@yopmail.com', NULL, NULL, NULL, 'C-467, Beta 1', '123', 'Noida', 'UP', 'US', 44444, 'Microsoft', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 332, NULL, 1, 1, 1, NULL, 1, 0, 'Q2hldHVAMTIz', 0, '0000-00-00', '2018-04-08 05:41:20', '2018-04-08 05:41:30'),
(333, 'Test59', 'Kumar', '$2y$10$v6TIsQ2BNH2Th0/0pho7d.2iTV1WtQy5k.FDszgGSohkuFMJUxaP6', 'test59@yopmail.com', NULL, NULL, NULL, 'noida', '123', 'Noida', 'UP', 'US', 44444, 'Microsoft', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 333, NULL, 1, 1, 1, NULL, 1, 0, 'Q2hldHVAMTIz', 0, '0000-00-00', '2018-04-08 05:46:18', '2018-04-08 05:46:28'),
(334, 'Test', 'Kumar', '$2y$10$EH9Gv/RhYJaS4nh0Tf1Al.SPuUqw8uocbxIxo11ssAne2mRFf6XLG', 'test62@yopmail.com', NULL, NULL, NULL, 'noida', '123', 'Noida', 'UP', 'US', 44444, 'Microsoft', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 334, NULL, 1, 1, 1, NULL, 1, 0, 'Q2hldHVAMTIz', 0, '0000-00-00', '2018-04-08 05:47:43', '2018-04-08 05:47:53'),
(335, 'Test63', 'Kumar', '$2y$10$2uOZU52WDSvfXYVmJKd19u/9xntlAGxMrBcNmgj8nVncPRGKoQHOG', 'test63@yopmail.com', NULL, NULL, NULL, 'noida', '', 'Noida', 'UP', 'US', 44444, 'Microsoft', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 335, NULL, 1, 1, 1, NULL, 2, 0, 'Q2hldHVAMTIz', 0, '0000-00-00', '2018-04-08 05:49:08', '2018-04-08 05:49:20');

-- --------------------------------------------------------

--
-- Table structure for table `user_plans`
--

CREATE TABLE `user_plans` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `plan_id` int(11) NOT NULL,
  `start_dt` date NOT NULL DEFAULT '0000-00-00',
  `end_dt` date NOT NULL DEFAULT '0000-00-00',
  `amt` varchar(50) DEFAULT NULL,
  `trans_id` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1=Paid, 0=Pending',
  `plan_upgrade_req` int(11) NOT NULL DEFAULT '0',
  `request_dt` date NOT NULL DEFAULT '0000-00-00',
  `approved_dt` date NOT NULL DEFAULT '0000-00-00',
  `created` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_plans`
--

INSERT INTO `user_plans` (`id`, `user_id`, `plan_id`, `start_dt`, `end_dt`, `amt`, `trans_id`, `status`, `plan_upgrade_req`, `request_dt`, `approved_dt`, `created`, `modified`) VALUES
(1, 170, 2, '0000-00-00', '2018-01-11', '179.00', NULL, 1, 3, '2018-01-11', '2018-01-11', '0000-00-00 00:00:00', '2018-01-11 04:29:34'),
(2, 10, 2, '0000-00-00', '0000-00-00', '179.00', NULL, 0, 0, '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 11, 2, '0000-00-00', '0000-00-00', '179.00', NULL, 0, 0, '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 185, 2, '0000-00-00', '0000-00-00', '179.00', NULL, 0, 0, '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 223, 2, '0000-00-00', '0000-00-00', '179.00', NULL, 0, 0, '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 234, 2, '0000-00-00', '0000-00-00', '179.00', NULL, 0, 0, '0000-00-00', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 261, 1, '0000-00-00', '0000-00-00', '99.00', NULL, 0, 0, '0000-00-00', '0000-00-00', '2017-12-20 23:03:49', '2017-12-20 23:03:49'),
(8, 262, 1, '0000-00-00', '0000-00-00', '99.00', NULL, 0, 0, '0000-00-00', '0000-00-00', '2017-12-20 23:10:10', '2017-12-20 23:10:10'),
(9, 264, 1, '0000-00-00', '0000-00-00', '99.00', NULL, 0, 0, '0000-00-00', '0000-00-00', '2017-12-20 23:27:52', '2017-12-20 23:27:52'),
(10, 267, 2, '0000-00-00', '0000-00-00', '179.00', NULL, 0, 0, '0000-00-00', '0000-00-00', '2017-12-21 23:14:52', '2017-12-21 23:14:52'),
(11, 269, 1, '0000-00-00', '0000-00-00', '99.00', NULL, 0, 0, '0000-00-00', '0000-00-00', '2017-12-21 23:46:03', '2017-12-21 23:46:03'),
(12, 270, 2, '0000-00-00', '0000-00-00', '179.00', NULL, 0, 0, '0000-00-00', '0000-00-00', '2017-12-21 23:47:30', '2017-12-21 23:47:30'),
(13, 276, 1, '0000-00-00', '0000-00-00', '99.00', NULL, 0, 0, '0000-00-00', '0000-00-00', '2017-12-21 23:57:38', '2017-12-21 23:57:38'),
(14, 284, 2, '0000-00-00', '0000-00-00', '179.00', NULL, 0, 0, '0000-00-00', '0000-00-00', '2017-12-22 17:09:15', '2017-12-22 17:09:15'),
(15, 285, 2, '0000-00-00', '0000-00-00', '179.00', NULL, 0, 0, '0000-00-00', '0000-00-00', '2017-12-22 17:21:59', '2017-12-22 17:21:59'),
(16, 286, 2, '0000-00-00', '0000-00-00', '179.00', NULL, 0, 0, '0000-00-00', '0000-00-00', '2017-12-22 17:22:26', '2017-12-22 17:22:26'),
(17, 287, 1, '0000-00-00', '0000-00-00', '99.00', NULL, 0, 0, '0000-00-00', '0000-00-00', '2017-12-22 17:24:30', '2017-12-22 17:24:30'),
(18, 289, 2, '0000-00-00', '0000-00-00', '179.00', NULL, 0, 0, '0000-00-00', '0000-00-00', '2017-12-23 00:14:48', '2017-12-23 00:14:48'),
(19, 290, 1, '0000-00-00', '0000-00-00', '99.00', NULL, 0, 0, '0000-00-00', '0000-00-00', '2017-12-23 02:20:26', '2017-12-23 02:20:26'),
(20, 291, 1, '0000-00-00', '0000-00-00', '99.00', NULL, 0, 0, '0000-00-00', '0000-00-00', '2017-12-26 10:08:49', '2017-12-26 10:08:49'),
(21, 293, 1, '0000-00-00', '0000-00-00', '99.00', NULL, 0, 0, '0000-00-00', '0000-00-00', '2017-12-27 00:39:52', '2017-12-27 00:39:52'),
(22, 294, 2, '0000-00-00', '0000-00-00', '179.00', NULL, 0, 0, '0000-00-00', '0000-00-00', '2017-12-27 00:48:17', '2017-12-27 00:48:17'),
(23, 295, 1, '0000-00-00', '0000-00-00', '99.00', NULL, 0, 0, '0000-00-00', '0000-00-00', '2017-12-27 01:09:55', '2017-12-27 01:09:55'),
(24, 296, 2, '0000-00-00', '0000-00-00', '179.00', NULL, 0, 0, '0000-00-00', '0000-00-00', '2017-12-27 01:14:07', '2017-12-27 01:14:07'),
(25, 297, 1, '0000-00-00', '2018-01-04', '99.00', NULL, 1, 2, '0000-00-00', '0000-00-00', '2017-12-27 23:45:18', '2018-01-04 00:50:41'),
(26, 299, 2, '0000-00-00', '0000-00-00', '179.00', NULL, 0, 0, '0000-00-00', '0000-00-00', '2017-12-29 22:07:24', '2017-12-29 22:07:24'),
(27, 297, 2, '2018-01-04', '0000-00-00', '179.00', NULL, 0, 0, '0000-00-00', '0000-00-00', '2018-01-04 00:50:42', '2018-01-04 00:50:42'),
(28, 170, 3, '2018-01-11', '0000-00-00', '349.00', NULL, 0, 2, '2018-01-12', '0000-00-00', '2018-01-11 04:29:31', '2018-01-12 01:18:21'),
(29, 170, 3, '2018-01-11', '0000-00-00', '349.00', NULL, 0, 0, '0000-00-00', '0000-00-00', '2018-01-11 04:29:34', '2018-01-11 04:29:34'),
(30, 170, 3, '2018-01-11', '0000-00-00', '349.00', NULL, 0, 0, '0000-00-00', '0000-00-00', '2018-01-11 04:29:36', '2018-01-11 04:29:36'),
(31, 301, 1, '2018-01-11', '2018-01-12', '99.00', NULL, 1, 2, '2018-01-12', '2018-01-12', '2018-01-11 17:43:26', '2018-01-12 00:54:29'),
(32, 303, 2, '2018-01-11', '0000-00-00', '179.00', NULL, 0, 0, '0000-00-00', '0000-00-00', '2018-01-11 23:35:10', '2018-01-11 23:35:10'),
(33, 304, 2, '2018-01-11', '0000-00-00', '179.00', NULL, 0, 0, '0000-00-00', '0000-00-00', '2018-01-11 23:41:34', '2018-01-11 23:41:34'),
(34, 305, 2, '2018-01-11', '0000-00-00', '179.00', NULL, 0, 0, '0000-00-00', '0000-00-00', '2018-01-11 23:48:59', '2018-01-11 23:48:59'),
(35, 306, 2, '2018-01-11', '0000-00-00', '179.00', NULL, 0, 0, '0000-00-00', '0000-00-00', '2018-01-11 23:59:46', '2018-01-11 23:59:46'),
(36, 301, 2, '2018-01-12', '2018-01-12', '179.00', NULL, 1, 1, '2018-01-12', '2018-01-12', '2018-01-12 00:23:47', '2018-01-12 00:52:33'),
(37, 301, 1, '2018-01-12', '2018-01-12', '99.00', NULL, 1, 3, '2018-01-12', '2018-01-12', '2018-01-12 00:52:34', '2018-01-12 23:19:02'),
(38, 307, 2, '2018-01-12', '0000-00-00', '179.00', NULL, 0, 0, '0000-00-00', '0000-00-00', '2018-01-12 01:28:23', '2018-01-12 01:28:23'),
(39, 308, 1, '2018-01-12', '0000-00-00', '99.00', NULL, 0, 2, '2018-01-12', '0000-00-00', '2018-01-12 16:58:43', '2018-01-12 17:33:08'),
(40, 309, 2, '2018-01-12', '2018-01-12', '179.00', NULL, 1, 3, '2018-01-12', '2018-01-12', '2018-01-12 23:15:44', '2018-01-12 23:18:15'),
(41, 309, 3, '2018-01-12', '0000-00-00', '349.00', NULL, 0, 0, '0000-00-00', '0000-00-00', '2018-01-12 23:18:16', '2018-01-12 23:18:16'),
(42, 301, 3, '2018-01-12', '0000-00-00', '349.00', NULL, 0, 0, '0000-00-00', '0000-00-00', '2018-01-12 23:19:03', '2018-01-12 23:19:03'),
(43, 312, 3, '2018-03-22', '0000-00-00', '349.00', NULL, 0, 0, '0000-00-00', '0000-00-00', '2018-03-22 23:21:11', '2018-03-22 23:21:11'),
(44, 321, 1, '2018-03-28', '0000-00-00', '99.00', NULL, 0, 0, '0000-00-00', '0000-00-00', '2018-03-28 18:13:58', '2018-03-28 18:13:58'),
(45, 322, 2, '2018-04-03', '0000-00-00', '179.00', NULL, 0, 0, '0000-00-00', '0000-00-00', '2018-04-03 02:30:12', '2018-04-03 02:30:12'),
(46, 323, 2, '2018-04-08', '0000-00-00', '179.00', NULL, 0, 0, '0000-00-00', '0000-00-00', '2018-04-08 02:51:04', '2018-04-08 02:51:04'),
(47, 324, 3, '2018-04-08', '0000-00-00', '349.00', NULL, 0, 0, '0000-00-00', '0000-00-00', '2018-04-08 03:46:48', '2018-04-08 03:46:48'),
(48, 325, 2, '2018-04-08', '0000-00-00', '179.00', NULL, 0, 0, '0000-00-00', '0000-00-00', '2018-04-08 03:50:12', '2018-04-08 03:50:12'),
(49, 326, 3, '2018-04-08', '0000-00-00', '349.00', NULL, 0, 0, '0000-00-00', '0000-00-00', '2018-04-08 03:52:53', '2018-04-08 03:52:53'),
(50, 328, 3, '2018-04-08', '0000-00-00', '349.00', NULL, 0, 0, '0000-00-00', '0000-00-00', '2018-04-08 03:55:10', '2018-04-08 03:55:10'),
(51, 329, 3, '2018-04-08', '0000-00-00', '349.00', NULL, 0, 0, '0000-00-00', '0000-00-00', '2018-04-08 03:57:33', '2018-04-08 03:57:33'),
(52, 330, 3, '2018-04-08', '0000-00-00', '349.00', NULL, 0, 0, '0000-00-00', '0000-00-00', '2018-04-08 04:02:19', '2018-04-08 04:02:19'),
(53, 331, 3, '2018-04-08', '0000-00-00', '349.00', NULL, 0, 0, '0000-00-00', '0000-00-00', '2018-04-08 04:47:21', '2018-04-08 04:47:21'),
(54, 332, 1, '2018-04-08', '0000-00-00', '99.00', NULL, 0, 0, '0000-00-00', '0000-00-00', '2018-04-08 05:41:30', '2018-04-08 05:41:30'),
(55, 333, 1, '2018-04-08', '0000-00-00', '99.00', NULL, 0, 0, '0000-00-00', '0000-00-00', '2018-04-08 05:46:28', '2018-04-08 05:46:28'),
(56, 334, 1, '2018-04-08', '0000-00-00', '99.00', NULL, 0, 0, '0000-00-00', '0000-00-00', '2018-04-08 05:47:53', '2018-04-08 05:47:53'),
(57, 335, 2, '2018-04-08', '0000-00-00', '179.00', NULL, 0, 0, '0000-00-00', '0000-00-00', '2018-04-08 05:49:19', '2018-04-08 05:49:19');

-- --------------------------------------------------------

--
-- Table structure for table `yelp`
--

CREATE TABLE `yelp` (
  `id` int(10) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `business_id` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rating` decimal(3,2) DEFAULT NULL,
  `review_count` int(11) DEFAULT NULL,
  `display_phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image_url` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(1024) COLLATE utf8_unicode_ci DEFAULT NULL,
  `latitude` decimal(9,6) DEFAULT NULL,
  `longitude` decimal(9,6) DEFAULT NULL,
  `display_address` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `request_url` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `yelp`
--

INSERT INTO `yelp` (`id`, `user_id`, `business_id`, `name`, `rating`, `review_count`, `display_phone`, `image_url`, `url`, `latitude`, `longitude`, `display_address`, `request_url`, `created`, `modified`) VALUES
(2, 11, 'partners-real-estate-eagle-river', 'Partners Real Estate', '3.00', 7, '(907) 694-4994', 'https://s3-media3.fl.yelpcdn.com/bphoto/ziFlTe__ka_SV6A9WWPSMQ/o.jpg', 'https://www.yelp.com/biz/partners-real-estate-eagle-river?adjust_creative=yLRKI4b4orlxDvOUmYsS9A&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_lookup&utm_source=yLRKI4b4orlxDvOUmYsS9A', '61.328712', '-149.573242', '11940 Business Blvd Ste 202', '/writeareview/biz/2xITwIfbyn0N8Y1kekapmQ?return_url=%2Fbiz%2F2xITwIfbyn0N8Y1kekapmQ', '0000-00-00 00:00:00', '2018-02-15 18:00:05'),
(4, 170, 'partners-real-estate-eagle-river', 'Partners Real Estate', '3.00', 7, '(907) 694-4994', 'https://s3-media3.fl.yelpcdn.com/bphoto/ziFlTe__ka_SV6A9WWPSMQ/o.jpg', 'https://www.yelp.com/biz/partners-real-estate-eagle-river?adjust_creative=b3N5P3WED5QQaJIliGALXA&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_lookup&utm_source=b3N5P3WED5QQaJIliGALXA', '61.328712', '-149.573242', '11940 Business Blvd Ste 202', '/writeareview/biz/2xITwIfbyn0N8Y1kekapmQ?return_url=%2Fbiz%2F2xITwIfbyn0N8Y1kekapmQ', '2017-11-21 18:03:02', '2018-03-26 23:40:23'),
(5, 172, 'team-flores-real-estate-coldwell-banker-san-diego-2', 'Team Flores Real Estate-Coldwell Banker', '5.00', 2, '(858) 243-2143', 'https://s3-media3.fl.yelpcdn.com/bphoto/LMm3CbPUEup5ai05VHJZUA/o.jpg', 'https://www.yelp.com/biz/team-flores-real-estate-coldwell-banker-san-diego-2?adjust_creative=yLRKI4b4orlxDvOUmYsS9A&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_lookup&utm_source=yLRKI4b4orlxDvOUmYsS9A', '33.018858', '-117.075093', '16787 Bernardo Center Dr 6 San Diego, CA 92128', '/writeareview/biz/xTS5FgKSRFxtp907AJUjGg?return_url=%2Fbiz%2FxTS5FgKSRFxtp907AJUjGg', '2017-11-21 18:03:02', '2017-12-09 06:03:28'),
(6, 174, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-28 23:25:30', '2017-11-28 23:25:30'),
(7, 177, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-02 21:24:15', '2017-12-02 21:24:15'),
(8, 179, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-02 22:00:08', '2017-12-02 22:00:08'),
(9, 181, 'partners-real-estate-eagle-river', 'Partners Real Estate', '3.00', 7, '(907) 694-4994', 'https://s3-media3.fl.yelpcdn.com/bphoto/ziFlTe__ka_SV6A9WWPSMQ/o.jpg', 'https://www.yelp.com/biz/partners-real-estate-eagle-river?adjust_creative=yLRKI4b4orlxDvOUmYsS9A&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_lookup&utm_source=yLRKI4b4orlxDvOUmYsS9A', '61.328712', '-149.573242', '11940 Business Blvd Ste 202', '/writeareview/biz/2xITwIfbyn0N8Y1kekapmQ?return_url=%2Fbiz%2F2xITwIfbyn0N8Y1kekapmQ', '2017-12-04 19:00:57', '2018-02-14 01:41:58'),
(10, 182, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-04 23:01:48', '2017-12-04 23:01:48'),
(11, 184, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-05 00:48:30', '2017-12-05 00:48:30'),
(12, 185, 'partners-real-estate-eagle-river', 'Partners Real Estate', '3.00', 7, '(907) 694-4994', 'https://s3-media3.fl.yelpcdn.com/bphoto/ziFlTe__ka_SV6A9WWPSMQ/o.jpg', 'https://www.yelp.com/biz/partners-real-estate-eagle-river?adjust_creative=yLRKI4b4orlxDvOUmYsS9A&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_lookup&utm_source=yLRKI4b4orlxDvOUmYsS9A', '61.328712', '-149.573242', '11940 Business Blvd Ste 202', '/writeareview/biz/2xITwIfbyn0N8Y1kekapmQ?return_url=%2Fbiz%2F2xITwIfbyn0N8Y1kekapmQ', '2017-12-05 01:32:32', '2017-12-07 01:43:15'),
(13, 186, 'partners-real-estate-eagle-river', 'Partners Real Estate', '3.00', 7, '(907) 694-4994', 'https://s3-media3.fl.yelpcdn.com/bphoto/ziFlTe__ka_SV6A9WWPSMQ/o.jpg', 'https://www.yelp.com/biz/partners-real-estate-eagle-river?adjust_creative=yLRKI4b4orlxDvOUmYsS9A&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_lookup&utm_source=yLRKI4b4orlxDvOUmYsS9A', '61.328712', '-149.573242', '11940 Business Blvd Ste 202', '/writeareview/biz/2xITwIfbyn0N8Y1kekapmQ?return_url=%2Fbiz%2F2xITwIfbyn0N8Y1kekapmQ', '2017-12-06 13:30:58', '2017-12-06 16:04:09'),
(14, 187, 'partners-real-estate-eagle-river', 'Partners Real Estate', '3.00', 7, '(907) 694-4994', 'https://s3-media3.fl.yelpcdn.com/bphoto/ziFlTe__ka_SV6A9WWPSMQ/o.jpg', 'https://www.yelp.com/biz/partners-real-estate-eagle-river?adjust_creative=yLRKI4b4orlxDvOUmYsS9A&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_lookup&utm_source=yLRKI4b4orlxDvOUmYsS9A', '61.328712', '-149.573242', '11940 Business Blvd Ste 202', '/writeareview/biz/2xITwIfbyn0N8Y1kekapmQ?return_url=%2Fbiz%2F2xITwIfbyn0N8Y1kekapmQ', '2017-12-06 16:08:40', '2017-12-06 16:22:17'),
(15, 188, 'partners-real-estate-eagle-river', 'Partners Real Estate', '3.00', 7, '(907) 694-4994', 'https://s3-media3.fl.yelpcdn.com/bphoto/ziFlTe__ka_SV6A9WWPSMQ/o.jpg', 'https://www.yelp.com/biz/partners-real-estate-eagle-river?adjust_creative=yLRKI4b4orlxDvOUmYsS9A&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_lookup&utm_source=yLRKI4b4orlxDvOUmYsS9A', '61.328712', '-149.573242', '11940 Business Blvd Ste 202', '/writeareview/biz/2xITwIfbyn0N8Y1kekapmQ?return_url=%2Fbiz%2F2xITwIfbyn0N8Y1kekapmQ', '2017-12-06 17:31:54', '2017-12-06 17:49:38'),
(16, 189, 'partners-real-estate-eagle-river', 'Partners Real Estate', '3.00', 7, '(907) 694-4994', 'https://s3-media3.fl.yelpcdn.com/bphoto/ziFlTe__ka_SV6A9WWPSMQ/o.jpg', 'https://www.yelp.com/biz/partners-real-estate-eagle-river?adjust_creative=yLRKI4b4orlxDvOUmYsS9A&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_lookup&utm_source=yLRKI4b4orlxDvOUmYsS9A', '61.328712', '-149.573242', '11940 Business Blvd Ste 202', '/writeareview/biz/2xITwIfbyn0N8Y1kekapmQ?return_url=%2Fbiz%2F2xITwIfbyn0N8Y1kekapmQ', '2017-12-06 17:56:29', '2017-12-06 17:57:33'),
(17, 190, 'team-flores-real-estate-coldwell-banker-san-diego-2', 'Team Flores Real Estate-Coldwell Banker', '5.00', 2, '(858) 243-2143', 'https://s3-media3.fl.yelpcdn.com/bphoto/LMm3CbPUEup5ai05VHJZUA/o.jpg', 'https://www.yelp.com/biz/team-flores-real-estate-coldwell-banker-san-diego-2?adjust_creative=yLRKI4b4orlxDvOUmYsS9A&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_lookup&utm_source=yLRKI4b4orlxDvOUmYsS9A', '33.018858', '-117.075093', '16787 Bernardo Center Dr 6 San Diego, CA 92128', '/writeareview/biz/xTS5FgKSRFxtp907AJUjGg?return_url=%2Fbiz%2FxTS5FgKSRFxtp907AJUjGg', '2017-12-06 18:34:49', '2017-12-06 18:38:48'),
(18, 191, 'partners-real-estate-eagle-river', 'Partners Real Estate', '3.00', 7, '(907) 694-4994', 'https://s3-media3.fl.yelpcdn.com/bphoto/ziFlTe__ka_SV6A9WWPSMQ/o.jpg', 'https://www.yelp.com/biz/partners-real-estate-eagle-river?adjust_creative=yLRKI4b4orlxDvOUmYsS9A&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_lookup&utm_source=yLRKI4b4orlxDvOUmYsS9A', '61.328712', '-149.573242', '11940 Business Blvd Ste 202', '/writeareview/biz/2xITwIfbyn0N8Y1kekapmQ?return_url=%2Fbiz%2F2xITwIfbyn0N8Y1kekapmQ', '2017-12-06 18:39:39', '2017-12-06 18:41:30'),
(19, 192, 'partners-real-estate-eagle-river', 'Partners Real Estate', '3.00', 7, '(907) 694-4994', 'https://s3-media3.fl.yelpcdn.com/bphoto/ziFlTe__ka_SV6A9WWPSMQ/o.jpg', 'https://www.yelp.com/biz/partners-real-estate-eagle-river?adjust_creative=yLRKI4b4orlxDvOUmYsS9A&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_lookup&utm_source=yLRKI4b4orlxDvOUmYsS9A', '61.328712', '-149.573242', '11940 Business Blvd Ste 202', '/writeareview/biz/2xITwIfbyn0N8Y1kekapmQ?return_url=%2Fbiz%2F2xITwIfbyn0N8Y1kekapmQ', '2017-12-06 18:42:38', '2017-12-06 18:48:06'),
(20, 193, 'team-flores-real-estate-coldwell-banker-san-diego-2', 'Team Flores Real Estate-Coldwell Banker', '5.00', 2, '(858) 243-2143', 'https://s3-media3.fl.yelpcdn.com/bphoto/LMm3CbPUEup5ai05VHJZUA/o.jpg', 'https://www.yelp.com/biz/team-flores-real-estate-coldwell-banker-san-diego-2?adjust_creative=yLRKI4b4orlxDvOUmYsS9A&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_lookup&utm_source=yLRKI4b4orlxDvOUmYsS9A', '33.018858', '-117.075093', '16787 Bernardo Center Dr 6 San Diego, CA 92128', '/writeareview/biz/xTS5FgKSRFxtp907AJUjGg?return_url=%2Fbiz%2FxTS5FgKSRFxtp907AJUjGg', '2017-12-06 18:49:37', '2017-12-06 18:50:16'),
(21, 194, 'team-flores-real-estate-coldwell-banker-san-diego-2', 'Team Flores Real Estate-Coldwell Banker', '5.00', 2, '(858) 243-2143', 'https://s3-media3.fl.yelpcdn.com/bphoto/LMm3CbPUEup5ai05VHJZUA/o.jpg', 'https://www.yelp.com/biz/team-flores-real-estate-coldwell-banker-san-diego-2?adjust_creative=yLRKI4b4orlxDvOUmYsS9A&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_lookup&utm_source=yLRKI4b4orlxDvOUmYsS9A', '33.018858', '-117.075093', '16787 Bernardo Center Dr 6 San Diego, CA 92128', '/writeareview/biz/xTS5FgKSRFxtp907AJUjGg?return_url=%2Fbiz%2FxTS5FgKSRFxtp907AJUjGg', '2017-12-06 20:20:17', '2017-12-06 20:27:28'),
(22, 195, 'partners-real-estate-eagle-river', 'Partners Real Estate', '3.00', 7, '(907) 694-4994', 'https://s3-media3.fl.yelpcdn.com/bphoto/ziFlTe__ka_SV6A9WWPSMQ/o.jpg', 'https://www.yelp.com/biz/partners-real-estate-eagle-river?adjust_creative=yLRKI4b4orlxDvOUmYsS9A&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_lookup&utm_source=yLRKI4b4orlxDvOUmYsS9A', '61.328712', '-149.573242', '11940 Business Blvd Ste 202', '/writeareview/biz/2xITwIfbyn0N8Y1kekapmQ?return_url=%2Fbiz%2F2xITwIfbyn0N8Y1kekapmQ', '2017-12-06 20:35:00', '2017-12-06 20:44:40'),
(23, 196, 'team-flores-real-estate-coldwell-banker-san-diego-2', 'Team Flores Real Estate-Coldwell Banker', '5.00', 2, '(858) 243-2143', 'https://s3-media3.fl.yelpcdn.com/bphoto/LMm3CbPUEup5ai05VHJZUA/o.jpg', 'https://www.yelp.com/biz/team-flores-real-estate-coldwell-banker-san-diego-2?adjust_creative=yLRKI4b4orlxDvOUmYsS9A&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_lookup&utm_source=yLRKI4b4orlxDvOUmYsS9A', '33.018858', '-117.075093', '16787 Bernardo Center Dr 6 San Diego, CA 92128', '/writeareview/biz/xTS5FgKSRFxtp907AJUjGg?return_url=%2Fbiz%2FxTS5FgKSRFxtp907AJUjGg', '2017-12-06 20:49:38', '2017-12-06 20:53:22'),
(24, 197, 'team-flores-real-estate-coldwell-banker-san-diego-2', 'Team Flores Real Estate-Coldwell Banker', '5.00', 2, '(858) 243-2143', 'https://s3-media3.fl.yelpcdn.com/bphoto/LMm3CbPUEup5ai05VHJZUA/o.jpg', 'https://www.yelp.com/biz/team-flores-real-estate-coldwell-banker-san-diego-2?adjust_creative=yLRKI4b4orlxDvOUmYsS9A&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_lookup&utm_source=yLRKI4b4orlxDvOUmYsS9A', '33.018858', '-117.075093', '16787 Bernardo Center Dr 6 San Diego, CA 92128', '/writeareview/biz/xTS5FgKSRFxtp907AJUjGg?return_url=%2Fbiz%2FxTS5FgKSRFxtp907AJUjGg', '2017-12-06 20:54:09', '2017-12-06 20:57:36'),
(25, 198, 'pamir-kabob-house-san-diego', 'Pamir Kabob House', '5.00', 120, '(858) 798-5372', 'https://s3-media1.fl.yelpcdn.com/bphoto/G7xhAbWKApXxmaDgItHIbA/o.jpg', 'https://www.yelp.com/biz/pamir-kabob-house-san-diego?adjust_creative=yLRKI4b4orlxDvOUmYsS9A&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_lookup&utm_source=yLRKI4b4orlxDvOUmYsS9A', '33.018326', '-117.075280', '16769 Bernardo Center Dr Ste K10', '/writeareview/biz/y_jcr4Z43DgO7E0844uHSw?return_url=%2Fbiz%2Fy_jcr4Z43DgO7E0844uHSw', '2017-12-06 21:02:38', '2017-12-06 21:03:38'),
(26, 199, 'team-flores-real-estate-coldwell-banker-san-diego-2', 'Team Flores Real Estate-Coldwell Banker', '5.00', 2, '(858) 243-2143', 'https://s3-media3.fl.yelpcdn.com/bphoto/LMm3CbPUEup5ai05VHJZUA/o.jpg', 'https://www.yelp.com/biz/team-flores-real-estate-coldwell-banker-san-diego-2?adjust_creative=yLRKI4b4orlxDvOUmYsS9A&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_lookup&utm_source=yLRKI4b4orlxDvOUmYsS9A', '33.018858', '-117.075093', '16787 Bernardo Center Dr 6 San Diego, CA 92128', '/writeareview/biz/xTS5FgKSRFxtp907AJUjGg?return_url=%2Fbiz%2FxTS5FgKSRFxtp907AJUjGg', '2017-12-06 21:13:30', '2017-12-06 21:14:15'),
(27, 200, 'team-flores-real-estate-coldwell-banker-san-diego-2', 'Team Flores Real Estate-Coldwell Banker', '5.00', 2, '(858) 243-2143', 'https://s3-media3.fl.yelpcdn.com/bphoto/LMm3CbPUEup5ai05VHJZUA/o.jpg', 'https://www.yelp.com/biz/team-flores-real-estate-coldwell-banker-san-diego-2?adjust_creative=yLRKI4b4orlxDvOUmYsS9A&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_lookup&utm_source=yLRKI4b4orlxDvOUmYsS9A', '33.018858', '-117.075093', '16787 Bernardo Center Dr 6 San Diego, CA 92128', '/writeareview/biz/xTS5FgKSRFxtp907AJUjGg?return_url=%2Fbiz%2FxTS5FgKSRFxtp907AJUjGg', '2017-12-06 23:13:58', '2017-12-06 23:15:06'),
(28, 201, 'team-flores-real-estate-coldwell-banker-san-diego-2', 'Team Flores Real Estate-Coldwell Banker', '5.00', 2, '(858) 243-2143', 'https://s3-media3.fl.yelpcdn.com/bphoto/LMm3CbPUEup5ai05VHJZUA/o.jpg', 'https://www.yelp.com/biz/team-flores-real-estate-coldwell-banker-san-diego-2?adjust_creative=yLRKI4b4orlxDvOUmYsS9A&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_lookup&utm_source=yLRKI4b4orlxDvOUmYsS9A', '33.018858', '-117.075093', '16787 Bernardo Center Dr 6 San Diego, CA 92128', '/writeareview/biz/xTS5FgKSRFxtp907AJUjGg?return_url=%2Fbiz%2FxTS5FgKSRFxtp907AJUjGg', '2017-12-06 23:59:02', '2017-12-07 00:02:18'),
(29, 202, 'pamir-kabob-house-san-diego', 'Pamir Kabob House', '5.00', 120, '(858) 798-5372', 'https://s3-media1.fl.yelpcdn.com/bphoto/G7xhAbWKApXxmaDgItHIbA/o.jpg', 'https://www.yelp.com/biz/pamir-kabob-house-san-diego?adjust_creative=yLRKI4b4orlxDvOUmYsS9A&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_lookup&utm_source=yLRKI4b4orlxDvOUmYsS9A', '33.018326', '-117.075280', '16769 Bernardo Center Dr Ste K10', '/writeareview/biz/y_jcr4Z43DgO7E0844uHSw?return_url=%2Fbiz%2Fy_jcr4Z43DgO7E0844uHSw', '2017-12-07 18:51:59', '2017-12-07 23:55:18'),
(30, 204, 'team-flores-real-estate-coldwell-banker-san-diego-2', 'Team Flores Real Estate-Coldwell Banker', '5.00', 2, '(858) 243-2143', 'https://s3-media3.fl.yelpcdn.com/bphoto/LMm3CbPUEup5ai05VHJZUA/o.jpg', 'https://www.yelp.com/biz/team-flores-real-estate-coldwell-banker-san-diego-2?adjust_creative=yLRKI4b4orlxDvOUmYsS9A&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_lookup&utm_source=yLRKI4b4orlxDvOUmYsS9A', '33.018858', '-117.075093', '16787 Bernardo Center Dr 6 San Diego, CA 92128', '/writeareview/biz/xTS5FgKSRFxtp907AJUjGg?return_url=%2Fbiz%2FxTS5FgKSRFxtp907AJUjGg', '2017-12-07 19:40:38', '2017-12-07 19:42:41'),
(31, 208, 'pamir-kabob-house-san-diego', 'Pamir Kabob House', '5.00', 120, '(858) 798-5372', 'https://s3-media1.fl.yelpcdn.com/bphoto/G7xhAbWKApXxmaDgItHIbA/o.jpg', 'https://www.yelp.com/biz/pamir-kabob-house-san-diego?adjust_creative=yLRKI4b4orlxDvOUmYsS9A&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_lookup&utm_source=yLRKI4b4orlxDvOUmYsS9A', '33.018326', '-117.075280', '16769 Bernardo Center Dr Ste K10', '/writeareview/biz/y_jcr4Z43DgO7E0844uHSw?return_url=%2Fbiz%2Fy_jcr4Z43DgO7E0844uHSw', '2017-12-07 23:34:06', '2017-12-07 23:57:39'),
(32, 209, 'elite-event-dinner-with-the-chef-at-avant-san-diego', 'Elite event: Dinner with the Chef At AVANT', '5.00', 68, '(858) 522-9357', 'https://s3-media1.fl.yelpcdn.com/bphoto/GuSjvMLtJSenYgYczWbuAw/o.jpg', 'https://www.yelp.com/biz/elite-event-dinner-with-the-chef-at-avant-san-diego?adjust_creative=yLRKI4b4orlxDvOUmYsS9A&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_lookup&utm_source=yLRKI4b4orlxDvOUmYsS9A', '33.031765', '-117.067238', '17550 Bernardo Oaks Dr San Diego, CA 92128', '/writeareview/biz/2cZ-tDj5l7_7zXG7W2o2tg?return_url=%2Fbiz%2F2cZ-tDj5l7_7zXG7W2o2tg', '2017-12-07 23:58:55', '2017-12-08 16:43:59'),
(33, 210, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-08 00:10:37', '2017-12-08 00:10:37'),
(34, 211, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-08 00:27:25', '2017-12-08 00:27:25'),
(35, 212, 'elite-event-dinner-with-the-chef-at-avant-san-diego', 'Elite event: Dinner with the Chef At AVANT', '5.00', 68, '(858) 522-9357', 'https://s3-media1.fl.yelpcdn.com/bphoto/GuSjvMLtJSenYgYczWbuAw/o.jpg', 'https://www.yelp.com/biz/elite-event-dinner-with-the-chef-at-avant-san-diego?adjust_creative=yLRKI4b4orlxDvOUmYsS9A&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_lookup&utm_source=yLRKI4b4orlxDvOUmYsS9A', '33.031765', '-117.067238', '17550 Bernardo Oaks Dr San Diego, CA 92128', '/writeareview/biz/2cZ-tDj5l7_7zXG7W2o2tg?return_url=%2Fbiz%2F2cZ-tDj5l7_7zXG7W2o2tg', '2017-12-08 17:21:37', '2017-12-08 19:16:22'),
(36, 214, 'partners-real-estate-eagle-river', 'Partners Real Estate', '3.00', 7, '(907) 694-4994', 'https://s3-media3.fl.yelpcdn.com/bphoto/ziFlTe__ka_SV6A9WWPSMQ/o.jpg', 'https://www.yelp.com/biz/partners-real-estate-eagle-river?adjust_creative=yLRKI4b4orlxDvOUmYsS9A&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_lookup&utm_source=yLRKI4b4orlxDvOUmYsS9A', '61.328712', '-149.573242', '11940 Business Blvd Ste 202', '/writeareview/biz/2xITwIfbyn0N8Y1kekapmQ?return_url=%2Fbiz%2F2xITwIfbyn0N8Y1kekapmQ', '2017-12-09 00:48:44', '2017-12-09 00:51:11'),
(37, 215, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-09 00:53:09', '2017-12-09 00:53:09'),
(38, 218, 'team-flores-real-estate-coldwell-banker-san-diego-2', 'Team Flores Real Estate-Coldwell Banker', '5.00', 2, '(858) 243-2143', 'https://s3-media3.fl.yelpcdn.com/bphoto/LMm3CbPUEup5ai05VHJZUA/o.jpg', 'https://www.yelp.com/biz/team-flores-real-estate-coldwell-banker-san-diego-2?adjust_creative=yLRKI4b4orlxDvOUmYsS9A&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_lookup&utm_source=yLRKI4b4orlxDvOUmYsS9A', '33.018858', '-117.075093', '16787 Bernardo Center Dr 6 San Diego, CA 92128', '/writeareview/biz/xTS5FgKSRFxtp907AJUjGg?return_url=%2Fbiz%2FxTS5FgKSRFxtp907AJUjGg', '2017-12-09 02:06:32', '2017-12-09 04:11:09'),
(39, 220, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-09 03:00:51', '2017-12-09 03:00:51'),
(40, 221, 'team-flores-real-estate-coldwell-banker-san-diego-2', 'Team Flores Real Estate-Coldwell Banker', '5.00', 2, '(858) 243-2143', 'https://s3-media3.fl.yelpcdn.com/bphoto/LMm3CbPUEup5ai05VHJZUA/o.jpg', 'https://www.yelp.com/biz/team-flores-real-estate-coldwell-banker-san-diego-2?adjust_creative=yLRKI4b4orlxDvOUmYsS9A&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_lookup&utm_source=yLRKI4b4orlxDvOUmYsS9A', '33.018858', '-117.075093', '16787 Bernardo Center Dr 6 San Diego, CA 92128', '/writeareview/biz/xTS5FgKSRFxtp907AJUjGg?return_url=%2Fbiz%2FxTS5FgKSRFxtp907AJUjGg', '2017-12-09 03:03:48', '2017-12-09 03:06:24'),
(41, 223, 'class-act-property-management-salem', 'Class Act Property Management', '1.50', 4, '(971) 599-1440', 'https://s3-media4.fl.yelpcdn.com/bphoto/dM8y1e3Ubq5q6WoE58zyfA/o.jpg', 'https://www.yelp.com/biz/class-act-property-management-salem?adjust_creative=yLRKI4b4orlxDvOUmYsS9A&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_lookup&utm_source=yLRKI4b4orlxDvOUmYsS9A', '44.940967', '-123.038883', '189 Liberty St NE Ste 211A', '/writeareview/biz/PYMPhGBLtRSVWKkqmbBuSQ?return_url=%2Fbiz%2FPYMPhGBLtRSVWKkqmbBuSQ', '2017-12-14 00:55:17', '2017-12-14 01:07:20'),
(42, 218, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-14 03:14:09', '2017-12-14 03:14:09'),
(43, 229, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-14 03:45:07', '2017-12-14 03:45:07'),
(44, 230, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-14 03:55:07', '2017-12-14 03:55:07'),
(45, 231, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-14 22:56:28', '2017-12-14 22:56:28'),
(46, 232, 'partners-real-estate-eagle-river', 'Partners Real Estate', '3.00', 7, '(907) 694-4994', 'https://s3-media3.fl.yelpcdn.com/bphoto/ziFlTe__ka_SV6A9WWPSMQ/o.jpg', 'https://www.yelp.com/biz/partners-real-estate-eagle-river?adjust_creative=yLRKI4b4orlxDvOUmYsS9A&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_lookup&utm_source=yLRKI4b4orlxDvOUmYsS9A', '61.328712', '-149.573242', '11940 Business Blvd Ste 202', '/writeareview/biz/2xITwIfbyn0N8Y1kekapmQ?return_url=%2Fbiz%2F2xITwIfbyn0N8Y1kekapmQ', '2017-12-15 00:20:02', '2017-12-15 00:26:07'),
(47, 233, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-15 00:27:20', '2017-12-15 00:27:20'),
(48, 234, 't-square-properties-bothell', 'T-Square Properties', '2.00', 11, '(425) 485-1800', 'https://s3-media2.fl.yelpcdn.com/bphoto/4ulz8stNGnRtXdCrR-TFHA/o.jpg', 'https://www.yelp.com/biz/t-square-properties-bothell?adjust_creative=yLRKI4b4orlxDvOUmYsS9A&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_lookup&utm_source=yLRKI4b4orlxDvOUmYsS9A', '47.766815', '-122.187061', '19125 North Creek Pkwy Ste 208', '/writeareview/biz/aMtB1iYEZqABmFfh7ETAiw?return_url=%2Fbiz%2FaMtB1iYEZqABmFfh7ETAiw', '2017-12-15 01:03:25', '2017-12-15 01:05:40'),
(49, 235, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-15 03:10:14', '2017-12-15 03:10:14'),
(50, 236, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-15 05:55:16', '2017-12-15 05:55:16'),
(51, 237, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-15 05:56:31', '2017-12-15 05:56:31'),
(52, 238, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-15 05:57:23', '2017-12-15 05:57:23'),
(53, 239, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-15 06:12:00', '2017-12-15 06:12:00'),
(54, 240, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-15 06:12:30', '2017-12-15 06:12:30'),
(55, 241, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-15 19:52:16', '2017-12-15 19:52:16'),
(56, 242, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-15 22:26:04', '2017-12-15 22:26:04'),
(57, 243, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-15 22:27:16', '2017-12-15 22:27:16'),
(58, 244, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-15 23:20:26', '2017-12-15 23:20:26'),
(59, 245, 'partners-real-estate-eagle-river', 'Partners Real Estate', '3.00', 7, '(907) 694-4994', 'https://s3-media3.fl.yelpcdn.com/bphoto/ziFlTe__ka_SV6A9WWPSMQ/o.jpg', 'https://www.yelp.com/biz/partners-real-estate-eagle-river?adjust_creative=yLRKI4b4orlxDvOUmYsS9A&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_lookup&utm_source=yLRKI4b4orlxDvOUmYsS9A', '61.328712', '-149.573242', '11940 Business Blvd Ste 202', '/writeareview/biz/2xITwIfbyn0N8Y1kekapmQ?return_url=%2Fbiz%2F2xITwIfbyn0N8Y1kekapmQ', '2017-12-16 15:59:48', '2017-12-16 16:02:23'),
(60, 246, 'team-flores-real-estate-coldwell-banker-san-diego-2', 'Team Flores Real Estate-Coldwell Banker', '5.00', 2, '(858) 243-2143', 'https://s3-media3.fl.yelpcdn.com/bphoto/LMm3CbPUEup5ai05VHJZUA/o.jpg', 'https://www.yelp.com/biz/team-flores-real-estate-coldwell-banker-san-diego-2?adjust_creative=yLRKI4b4orlxDvOUmYsS9A&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_lookup&utm_source=yLRKI4b4orlxDvOUmYsS9A', '33.018858', '-117.075093', '16787 Bernardo Center Dr 6 San Diego, CA 92128', '/writeareview/biz/xTS5FgKSRFxtp907AJUjGg?return_url=%2Fbiz%2FxTS5FgKSRFxtp907AJUjGg', '2017-12-16 16:38:25', '2017-12-16 17:10:37'),
(61, 247, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-16 16:40:23', '2017-12-16 16:40:23'),
(62, 248, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-16 18:40:08', '2017-12-16 18:40:08'),
(63, 249, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-16 18:49:14', '2017-12-16 18:49:14'),
(64, 250, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-16 19:04:09', '2017-12-16 19:04:09'),
(65, 251, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-16 19:06:05', '2017-12-16 19:06:05'),
(66, 252, 'team-flores-real-estate-coldwell-banker-san-diego-2', 'Team Flores Real Estate-Coldwell Banker', '5.00', 2, '(858) 243-2143', 'https://s3-media3.fl.yelpcdn.com/bphoto/LMm3CbPUEup5ai05VHJZUA/o.jpg', 'https://www.yelp.com/biz/team-flores-real-estate-coldwell-banker-san-diego-2?adjust_creative=yLRKI4b4orlxDvOUmYsS9A&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_lookup&utm_source=yLRKI4b4orlxDvOUmYsS9A', '33.018858', '-117.075093', '16787 Bernardo Center Dr 6 San Diego, CA 92128', '/writeareview/biz/xTS5FgKSRFxtp907AJUjGg?return_url=%2Fbiz%2FxTS5FgKSRFxtp907AJUjGg', '2017-12-16 19:18:43', '2017-12-18 18:17:45'),
(67, 253, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-16 20:31:44', '2017-12-16 20:31:44'),
(68, 254, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-16 20:33:16', '2017-12-16 20:33:16'),
(69, 255, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-16 20:48:30', '2017-12-16 20:48:30'),
(70, 256, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-18 17:21:44', '2017-12-18 17:21:44'),
(71, 260, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-18 17:48:34', '2017-12-18 17:48:34'),
(72, 262, 'elite-event-dinner-with-the-chef-at-avant-san-diego', 'Elite event: Dinner with the Chef At AVANT', '5.00', 68, '(858) 522-9357', 'https://s3-media1.fl.yelpcdn.com/bphoto/GuSjvMLtJSenYgYczWbuAw/o.jpg', 'https://www.yelp.com/biz/elite-event-dinner-with-the-chef-at-avant-san-diego?adjust_creative=yLRKI4b4orlxDvOUmYsS9A&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_lookup&utm_source=yLRKI4b4orlxDvOUmYsS9A', '33.031765', '-117.067238', '17550 Bernardo Oaks Dr San Diego, CA 92128', '/writeareview/biz/2cZ-tDj5l7_7zXG7W2o2tg?return_url=%2Fbiz%2F2cZ-tDj5l7_7zXG7W2o2tg', '2017-12-20 23:10:14', '2017-12-20 23:16:52'),
(73, 263, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-20 23:12:10', '2017-12-20 23:12:10'),
(74, 264, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-20 23:27:54', '2017-12-20 23:27:54'),
(75, 265, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-20 23:28:58', '2017-12-20 23:28:58'),
(76, 266, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-21 20:55:41', '2017-12-21 20:55:41'),
(77, 267, 'partners-real-estate-eagle-river', 'Partners Real Estate', '3.00', 7, '(907) 694-4994', 'https://s3-media3.fl.yelpcdn.com/bphoto/ziFlTe__ka_SV6A9WWPSMQ/o.jpg', 'https://www.yelp.com/biz/partners-real-estate-eagle-river?adjust_creative=yLRKI4b4orlxDvOUmYsS9A&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_lookup&utm_source=yLRKI4b4orlxDvOUmYsS9A', '61.328712', '-149.573242', '11940 Business Blvd Ste 202', '/writeareview/biz/2xITwIfbyn0N8Y1kekapmQ?return_url=%2Fbiz%2F2xITwIfbyn0N8Y1kekapmQ', '2017-12-21 23:14:53', '2017-12-21 23:18:36'),
(78, 268, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-21 23:21:26', '2017-12-21 23:21:26'),
(79, 269, 'team-flores-real-estate-coldwell-banker-san-diego-2', 'Team Flores Real Estate-Coldwell Banker', '5.00', 2, '(858) 243-2143', 'https://s3-media3.fl.yelpcdn.com/bphoto/LMm3CbPUEup5ai05VHJZUA/o.jpg', 'https://www.yelp.com/biz/team-flores-real-estate-coldwell-banker-san-diego-2?adjust_creative=yLRKI4b4orlxDvOUmYsS9A&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_lookup&utm_source=yLRKI4b4orlxDvOUmYsS9A', '33.018858', '-117.075093', '16787 Bernardo Center Dr 6 San Diego, CA 92128', '/writeareview/biz/xTS5FgKSRFxtp907AJUjGg?return_url=%2Fbiz%2FxTS5FgKSRFxtp907AJUjGg', '2017-12-21 23:46:05', '2017-12-22 00:28:03'),
(80, 270, 'team-flores-real-estate-coldwell-banker-san-diego-2', 'Team Flores Real Estate-Coldwell Banker', '5.00', 2, '(858) 243-2143', 'https://s3-media3.fl.yelpcdn.com/bphoto/LMm3CbPUEup5ai05VHJZUA/o.jpg', 'https://www.yelp.com/biz/team-flores-real-estate-coldwell-banker-san-diego-2?adjust_creative=yLRKI4b4orlxDvOUmYsS9A&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_lookup&utm_source=yLRKI4b4orlxDvOUmYsS9A', '33.018858', '-117.075093', '16787 Bernardo Center Dr 6 San Diego, CA 92128', '/writeareview/biz/xTS5FgKSRFxtp907AJUjGg?return_url=%2Fbiz%2FxTS5FgKSRFxtp907AJUjGg', '2017-12-21 23:47:31', '2017-12-22 00:16:55'),
(81, 271, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-21 23:49:02', '2017-12-21 23:49:02'),
(82, 272, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-21 23:54:13', '2017-12-21 23:54:13'),
(83, 273, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-21 23:55:44', '2017-12-21 23:55:44'),
(84, 274, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-21 23:56:39', '2017-12-21 23:56:39'),
(85, 275, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-21 23:57:37', '2017-12-21 23:57:37'),
(86, 276, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-21 23:57:39', '2017-12-21 23:57:39'),
(87, 277, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-21 23:58:22', '2017-12-21 23:58:22'),
(88, 278, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-21 23:59:13', '2017-12-21 23:59:13'),
(89, 279, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-21 23:59:14', '2017-12-21 23:59:14'),
(90, 280, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-22 00:00:08', '2017-12-22 00:00:08'),
(91, 282, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-22 00:01:52', '2017-12-22 00:01:52'),
(92, 283, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-22 00:02:50', '2017-12-22 00:02:50'),
(93, 284, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-22 17:09:17', '2017-12-22 17:09:17'),
(94, 286, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-22 17:22:27', '2017-12-22 17:22:27'),
(95, 287, 'team-flores-real-estate-coldwell-banker-san-diego-2', 'Team Flores Real Estate-Coldwell Banker', '5.00', 2, '(858) 243-2143', 'https://s3-media3.fl.yelpcdn.com/bphoto/LMm3CbPUEup5ai05VHJZUA/o.jpg', 'https://www.yelp.com/biz/team-flores-real-estate-coldwell-banker-san-diego-2?adjust_creative=yLRKI4b4orlxDvOUmYsS9A&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_lookup&utm_source=yLRKI4b4orlxDvOUmYsS9A', '33.018858', '-117.075093', '16787 Bernardo Center Dr 6 San Diego, CA 92128', '/writeareview/biz/xTS5FgKSRFxtp907AJUjGg?return_url=%2Fbiz%2FxTS5FgKSRFxtp907AJUjGg', '2017-12-22 17:24:32', '2017-12-22 23:20:03'),
(96, 288, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-22 23:21:30', '2017-12-22 23:21:30'),
(97, 289, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-23 00:14:51', '2017-12-23 00:14:51'),
(98, 290, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-23 02:20:27', '2017-12-23 02:20:27'),
(99, 291, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-26 10:08:51', '2017-12-26 10:08:51'),
(100, 292, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-26 10:11:47', '2017-12-26 10:11:47'),
(101, 294, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-27 00:48:19', '2017-12-27 00:48:19'),
(102, 295, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-27 01:09:56', '2017-12-27 01:09:56'),
(103, 296, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-27 01:14:09', '2017-12-27 01:14:09'),
(104, 297, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-27 23:45:21', '2017-12-27 23:45:21'),
(105, 298, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-29 21:15:17', '2017-12-29 21:15:17'),
(106, 299, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-12-29 22:07:25', '2017-12-29 22:07:25'),
(107, 300, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-01-11 01:30:52', '2018-01-11 01:30:52'),
(108, 301, 'partners-real-estate-eagle-river', 'Partners Real Estate', '3.00', 7, '(907) 694-4994', 'https://s3-media3.fl.yelpcdn.com/bphoto/ziFlTe__ka_SV6A9WWPSMQ/o.jpg', 'https://www.yelp.com/biz/partners-real-estate-eagle-river?adjust_creative=yLRKI4b4orlxDvOUmYsS9A&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_lookup&utm_source=yLRKI4b4orlxDvOUmYsS9A', '61.328712', '-149.573242', '11940 Business Blvd Ste 202', '/writeareview/biz/2xITwIfbyn0N8Y1kekapmQ?return_url=%2Fbiz%2F2xITwIfbyn0N8Y1kekapmQ', '2018-01-11 17:43:40', '2018-02-13 01:17:56'),
(109, 302, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-01-11 17:47:05', '2018-01-11 17:47:05'),
(110, 303, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-01-11 23:35:17', '2018-01-11 23:35:17'),
(111, 304, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-01-11 23:41:44', '2018-01-11 23:41:44'),
(112, 305, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-01-11 23:49:09', '2018-01-11 23:49:09'),
(113, 306, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-01-11 23:59:56', '2018-01-11 23:59:56'),
(114, 307, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-01-12 01:28:37', '2018-01-12 01:28:37'),
(115, 308, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-01-12 16:58:54', '2018-01-12 16:58:54'),
(116, 309, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-01-12 23:15:53', '2018-01-12 23:15:53'),
(117, 310, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-01-12 23:20:45', '2018-01-12 23:20:45'),
(118, 311, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-03-09 01:32:15', '2018-03-09 01:32:15'),
(119, 312, 'partners-real-estate-eagle-river', 'Partners Real Estate', '3.00', 7, '(907) 694-4994', 'https://s3-media3.fl.yelpcdn.com/bphoto/ziFlTe__ka_SV6A9WWPSMQ/o.jpg', 'https://www.yelp.com/biz/partners-real-estate-eagle-river?adjust_creative=b3N5P3WED5QQaJIliGALXA&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_lookup&utm_source=b3N5P3WED5QQaJIliGALXA', '61.328712', '-149.573242', '11940 Business Blvd Ste 202', '/writeareview/biz/2xITwIfbyn0N8Y1kekapmQ?return_url=%2Fbiz%2F2xITwIfbyn0N8Y1kekapmQ', '2018-03-22 23:21:21', '2018-03-26 18:04:33'),
(120, 313, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-03-22 23:22:46', '2018-03-22 23:22:46'),
(121, 314, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-03-22 23:23:53', '2018-03-22 23:23:53'),
(122, 315, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-03-22 23:24:42', '2018-03-22 23:24:42'),
(123, 316, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-03-22 23:25:41', '2018-03-22 23:25:41'),
(124, 317, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-03-22 23:26:21', '2018-03-22 23:26:21'),
(125, 318, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-03-22 23:27:00', '2018-03-22 23:27:00'),
(126, 319, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-03-24 21:34:52', '2018-03-24 21:34:52'),
(127, 320, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-03-24 21:35:54', '2018-03-24 21:35:54'),
(128, 321, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-03-28 18:14:11', '2018-03-28 18:14:11'),
(129, 322, 'team-flores-real-estate-coldwell-banker-san-diego-2', 'Team Flores Real Estate-Coldwell Banker', '5.00', 2, '(858) 243-2143', 'https://s3-media3.fl.yelpcdn.com/bphoto/LMm3CbPUEup5ai05VHJZUA/o.jpg', 'https://www.yelp.com/biz/team-flores-real-estate-coldwell-banker-san-diego-2?adjust_creative=b3N5P3WED5QQaJIliGALXA&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_lookup&utm_source=b3N5P3WED5QQaJIliGALXA', '33.018858', '-117.075093', '16787 Bernardo Center Dr 6 San Diego, CA 92128', '/writeareview/biz/xTS5FgKSRFxtp907AJUjGg?return_url=%2Fbiz%2FxTS5FgKSRFxtp907AJUjGg', '2018-04-03 02:30:19', '2018-04-03 02:37:18'),
(130, 323, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-08 02:51:06', '2018-04-08 02:51:06'),
(131, 324, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-08 03:46:54', '2018-04-08 03:46:54'),
(132, 325, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-08 03:50:15', '2018-04-08 03:50:15'),
(133, 326, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-08 03:53:00', '2018-04-08 03:53:00'),
(134, 328, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-08 03:55:18', '2018-04-08 03:55:18'),
(135, 329, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-08 03:57:39', '2018-04-08 03:57:39'),
(136, 330, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-08 04:02:25', '2018-04-08 04:02:25'),
(137, 331, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-08 04:47:27', '2018-04-08 04:47:27'),
(138, 332, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-08 05:41:36', '2018-04-08 05:41:36'),
(139, 333, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-08 05:46:35', '2018-04-08 05:46:35'),
(140, 334, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-08 05:47:57', '2018-04-08 05:47:57'),
(141, 335, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-08 05:49:27', '2018-04-08 05:49:27');

-- --------------------------------------------------------

--
-- Table structure for table `zillow`
--

CREATE TABLE `zillow` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `review_write_id` varchar(500) DEFAULT NULL,
  `screen_name` varchar(500) DEFAULT NULL,
  `img_url` varchar(500) DEFAULT NULL,
  `profile_url` varchar(500) DEFAULT NULL,
  `business_name` varchar(500) DEFAULT NULL,
  `address` varchar(500) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `review_request_url` varchar(500) DEFAULT NULL,
  `review_count` int(11) DEFAULT NULL,
  `avg_rating` decimal(3,2) DEFAULT '0.00',
  `local_knowledge_rating` decimal(3,2) DEFAULT '0.00',
  `process_expertise_rating` decimal(3,2) DEFAULT '0.00',
  `responsiveness_rating` decimal(3,2) DEFAULT '0.00',
  `negotiation_skills_rating` decimal(3,2) DEFAULT '0.00',
  `created` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `zillow`
--

INSERT INTO `zillow` (`id`, `user_id`, `review_write_id`, `screen_name`, `img_url`, `profile_url`, `business_name`, `address`, `phone`, `review_request_url`, `review_count`, `avg_rating`, `local_knowledge_rating`, `process_expertise_rating`, `responsiveness_rating`, `negotiation_skills_rating`, `created`, `modified`) VALUES
(2, 11, 'X1-ZUykei3ftn4mbt_1acra', 'user19731134', 'https://photos.zillowstatic.com/h_g/IS6avgndzyww9x1000000000.jpg', 'http://www.zillow.com/profile/user19731134/', 'Partners Real Estate', '11940 Business Blvd Suite 202, Eagle River, AK 99577', '(907) 312-1962', 'http://www.zillow.com/reviews/write/?s=X1-ZUykei3ftn4mbt_1acra', 3, '5.00', '5.00', '5.00', '5.00', '5.00', '2017-10-31 18:17:49', '2018-02-15 18:00:02'),
(23, 170, 'X1-ZU11e55x6gua809_6sexv', 'PartnersRealEstate', 'https://photos.zillowstatic.com/h_g/ISq55d676mqnwg1000000000.jpg', 'http://www.zillow.com/profile/PartnersRealEstate/', 'Partners Real Estate', '11940 Business Blvd. Suite 202 , Eagle River, AK 99577', '(907) 312-1444', 'http://www.zillow.com/reviews/write/?s=X1-ZU11e55x6gua809_6sexv', 19, '5.00', '5.00', '5.00', '5.00', '5.00', '2017-11-21 18:03:02', '2018-02-15 18:00:09'),
(24, 172, 'X1-ZUysj1imolzwnd_7oq0q', 'tsquare1', 'https://photos.zillowstatic.com/h_g/ISpld2wr6ehw1p1000000000.jpg', 'http://www.zillow.com/profile/tsquare1/', 'T-Square Real Estate Services, Inc', '19125 North Creek Parkway, Ste 208, Bothell, WA 98011', '(425) 485-1800', 'http://www.zillow.com/reviews/write/?s=X1-ZUysj1imolzwnd_7oq0q', 3, '4.10', NULL, NULL, '4.30', NULL, '2017-11-21 18:03:02', '2018-01-16 18:01:16'),
(25, 174, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', '0.00', '2017-11-28 23:25:30', '2017-11-28 23:25:30'),
(26, 177, 'X1-ZUykei3ftn4mbt_1acra', 'user19731134', 'https://photos.zillowstatic.com/h_g/IS6avgndzyww9x1000000000.jpg', 'http://www.zillow.com/profile/user19731134/', 'Partners Real Estate', '11940 Business Blvd Suite 202, Eagle River, AK 99577', '(907) 312-1962', 'http://www.zillow.com/reviews/write/?s=X1-ZUykei3ftn4mbt_1acra', 3, '5.00', '5.00', '5.00', '5.00', '5.00', '2017-12-02 21:24:15', '2017-12-04 16:45:15'),
(27, 179, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', '0.00', '2017-12-02 22:00:08', '2017-12-02 22:00:08'),
(28, 181, 'X1-ZUysj1imolzwnd_7oq0q', 'tsquare1', 'https://photos.zillowstatic.com/h_g/ISpld2wr6ehw1p1000000000.jpg', 'http://www.zillow.com/profile/tsquare1/', 'T-Square Real Estate Services, Inc', '19125 North Creek Parkway, Ste 208, Bothell, WA 98011', '(425) 485-1800', 'http://www.zillow.com/reviews/write/?s=X1-ZUysj1imolzwnd_7oq0q', 3, '4.10', NULL, NULL, '4.30', NULL, '2017-12-04 19:00:57', '2018-02-14 01:41:53'),
(29, 182, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', '0.00', '2017-12-04 23:01:48', '2017-12-04 23:01:48'),
(30, 184, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', '0.00', '2017-12-05 00:48:30', '2017-12-05 00:48:30'),
(31, 185, 'X1-ZU11e55x6gua809_6sexv', 'PartnersRealEstate', 'https://photos.zillowstatic.com/h_g/ISq55d676mqnwg1000000000.jpg', 'http://www.zillow.com/profile/PartnersRealEstate/', 'Partners Real Estate', '11940 Business Blvd. Suite 202 , Eagle River, AK 99577', '(907) 312-1444', 'http://www.zillow.com/reviews/write/?s=X1-ZU11e55x6gua809_6sexv', 17, '5.00', '5.00', '5.00', '5.00', '5.00', '2017-12-05 01:32:32', '2017-12-07 02:01:17'),
(32, 186, 'X1-ZUwo22t6vmhu6h_282em', 'jeronrose', 'https://photos.zillowstatic.com/h_g/ISuomq06rokxy71000000000.jpg', 'http://www.zillow.com/profile/jeronrose/', 'Partners Real Estate', '11940 Business Blvd. Suite #202 Eagle River, Ak 99577, Eagle River, AK 99577', '(844) 857-1957', 'http://www.zillow.com/reviews/write/?s=X1-ZUwo22t6vmhu6h_282em', 2, '5.00', '5.00', '5.00', '5.00', '5.00', '2017-12-06 13:30:58', '2017-12-06 13:33:31'),
(33, 187, 'X1-ZU11eb8ydld4bnt_6plsx', 'tim7558', 'https://photos.zillowstatic.com/h_g/ISinx4imxyzlfx1000000000.jpg', 'http://www.zillow.com/profile/tim7558/', 'Partners Real Estate', '11940 Business Boulevard Suite 202, Eagle River, AK 99577', '(855) 997-0656', 'http://www.zillow.com/reviews/write/?s=X1-ZU11eb8ydld4bnt_6plsx', 4, '5.00', '5.00', '5.00', '5.00', '5.00', '2017-12-06 16:08:40', '2017-12-06 16:22:13'),
(34, 188, 'X1-ZU11e55x6gua809_6sexv', 'PartnersRealEstate', 'https://photos.zillowstatic.com/h_g/ISq55d676mqnwg1000000000.jpg', 'http://www.zillow.com/profile/PartnersRealEstate/', 'Partners Real Estate', '11940 Business Blvd. Suite 202 , Eagle River, AK 99577', '(907) 312-1444', 'http://www.zillow.com/reviews/write/?s=X1-ZU11e55x6gua809_6sexv', 17, '5.00', '5.00', '5.00', '5.00', '5.00', '2017-12-06 17:31:54', '2017-12-06 17:49:34'),
(35, 189, 'X1-ZUzj46f51zd2ix_3wgux', 'Team Flores', 'https://photos.zillowstatic.com/h_g/IS2bxv3klnb8w11000000000.jpg', 'http://www.zillow.com/profile/Team-Flores/', 'TEAM FLORES - Coldwell Banker Residential Brokerage', '32675 Temecula Pkwy Ste. A, Temecula, CA 92592', '(858) 243-2043', 'http://www.zillow.com/reviews/write/?s=X1-ZUzj46f51zd2ix_3wgux', 5, '5.00', '4.80', '5.00', '5.00', '5.00', '2017-12-06 17:56:29', '2017-12-06 17:57:31'),
(36, 190, 'X1-ZUykei3ftn4mbt_1acra', 'user19731134', 'https://photos.zillowstatic.com/h_g/IS6avgndzyww9x1000000000.jpg', 'http://www.zillow.com/profile/user19731134/', 'Partners Real Estate', '11940 Business Blvd Suite 202, Eagle River, AK 99577', '(907) 312-1962', 'http://www.zillow.com/reviews/write/?s=X1-ZUykei3ftn4mbt_1acra', 3, '5.00', '5.00', '5.00', '5.00', '5.00', '2017-12-06 18:34:49', '2017-12-06 18:38:49'),
(37, 191, 'X1-ZUykei3ftn4mbt_1acra', 'user19731134', 'https://photos.zillowstatic.com/h_g/IS6avgndzyww9x1000000000.jpg', 'http://www.zillow.com/profile/user19731134/', 'Partners Real Estate', '11940 Business Blvd Suite 202, Eagle River, AK 99577', '(907) 312-1962', 'http://www.zillow.com/reviews/write/?s=X1-ZUykei3ftn4mbt_1acra', 3, '5.00', '5.00', '5.00', '5.00', '5.00', '2017-12-06 18:39:39', '2017-12-06 18:41:31'),
(38, 192, 'X1-ZUykei3ftn4mbt_1acra', 'user19731134', 'https://photos.zillowstatic.com/h_g/IS6avgndzyww9x1000000000.jpg', 'http://www.zillow.com/profile/user19731134/', 'Partners Real Estate', '11940 Business Blvd Suite 202, Eagle River, AK 99577', '(907) 312-1962', 'http://www.zillow.com/reviews/write/?s=X1-ZUykei3ftn4mbt_1acra', 3, '5.00', '5.00', '5.00', '5.00', '5.00', '2017-12-06 18:42:38', '2017-12-06 18:48:07'),
(39, 193, 'X1-ZUykei3ftn4mbt_1acra', 'user19731134', 'https://photos.zillowstatic.com/h_g/IS6avgndzyww9x1000000000.jpg', 'http://www.zillow.com/profile/user19731134/', 'Partners Real Estate', '11940 Business Blvd Suite 202, Eagle River, AK 99577', '(907) 312-1962', 'http://www.zillow.com/reviews/write/?s=X1-ZUykei3ftn4mbt_1acra', 3, '5.00', '5.00', '5.00', '5.00', '5.00', '2017-12-06 18:49:37', '2017-12-06 18:50:17'),
(40, 194, 'X1-ZUykei3ftn4mbt_1acra', 'user19731134', 'https://photos.zillowstatic.com/h_g/IS6avgndzyww9x1000000000.jpg', 'http://www.zillow.com/profile/user19731134/', 'Partners Real Estate', '11940 Business Blvd Suite 202, Eagle River, AK 99577', '(907) 312-1962', 'http://www.zillow.com/reviews/write/?s=X1-ZUykei3ftn4mbt_1acra', 3, '5.00', '5.00', '5.00', '5.00', '5.00', '2017-12-06 20:20:17', '2017-12-06 20:20:41'),
(41, 195, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', '0.00', '2017-12-06 20:35:00', '2017-12-06 20:35:00'),
(42, 196, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', '0.00', '2017-12-06 20:49:38', '2017-12-06 20:49:38'),
(43, 197, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', '0.00', '2017-12-06 20:54:09', '2017-12-06 20:54:09'),
(44, 198, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', '0.00', '2017-12-06 21:02:38', '2017-12-06 21:02:38'),
(45, 199, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', '0.00', '2017-12-06 21:13:30', '2017-12-06 21:13:30'),
(46, 200, 'X1-ZUykei3ftn4mbt_1acra', 'user19731134', 'https://photos.zillowstatic.com/h_g/IS6avgndzyww9x1000000000.jpg', 'http://www.zillow.com/profile/user19731134/', 'Partners Real Estate', '11940 Business Blvd Suite 202, Eagle River, AK 99577', '(907) 312-1962', 'http://www.zillow.com/reviews/write/?s=X1-ZUykei3ftn4mbt_1acra', 3, '5.00', '5.00', '5.00', '5.00', '5.00', '2017-12-06 23:13:58', '2017-12-06 23:14:42'),
(47, 201, 'X1-ZU11eb8ydld4bnt_6plsx', 'tim7558', 'https://photos.zillowstatic.com/h_g/ISinx4imxyzlfx1000000000.jpg', 'http://www.zillow.com/profile/tim7558/', 'Partners Real Estate', '11940 Business Boulevard Suite 202, Eagle River, AK 99577', '(855) 997-0656', 'http://www.zillow.com/reviews/write/?s=X1-ZU11eb8ydld4bnt_6plsx', 4, '5.00', '5.00', '5.00', '5.00', '5.00', '2017-12-06 23:59:02', '2017-12-07 00:00:09'),
(48, 202, 'X1-ZUzk1m0jhrfea1_5jgqr', 'user27708862', 'https://photos.zillowstatic.com/h_g/ISd09n43g2nrbc0000000000.jpg', 'http://www.zillow.com/profile/user27708862/', 'Partners Real Estate- Your Partner For Life', 'P.O. Box 772782, Eagle River, AK 99577', '(844) 913-7595', 'http://www.zillow.com/reviews/write/?s=X1-ZUzk1m0jhrfea1_5jgqr', 3, '5.00', '5.00', '5.00', '5.00', '5.00', '2017-12-07 18:51:59', '2017-12-07 20:34:15'),
(49, 204, 'X1-ZU11e55x6gua809_6sexv', 'PartnersRealEstate', 'https://photos.zillowstatic.com/h_g/ISq55d676mqnwg1000000000.jpg', 'http://www.zillow.com/profile/PartnersRealEstate/', 'Partners Real Estate', '11940 Business Blvd. Suite 202 , Eagle River, AK 99577', '(907) 312-1444', 'http://www.zillow.com/reviews/write/?s=X1-ZU11e55x6gua809_6sexv', 17, '5.00', '5.00', '5.00', '5.00', '5.00', '2017-12-07 19:40:38', '2017-12-07 19:42:04'),
(50, 208, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', '0.00', '2017-12-07 23:34:05', '2017-12-07 23:34:05'),
(51, 209, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', '0.00', '2017-12-07 23:58:55', '2017-12-07 23:58:55'),
(52, 210, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', '0.00', '2017-12-08 00:10:37', '2017-12-08 00:10:37'),
(53, 211, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', '0.00', '2017-12-08 00:27:25', '2017-12-08 00:27:25'),
(54, 212, 'X1-ZU11eb8ydld4bnt_6plsx', 'tim7558', 'https://photos.zillowstatic.com/h_g/ISinx4imxyzlfx1000000000.jpg', 'http://www.zillow.com/profile/tim7558/', 'Partners Real Estate', '11940 Business Boulevard Suite 202, Eagle River, AK 99577', '(855) 997-0656', 'http://www.zillow.com/reviews/write/?s=X1-ZU11eb8ydld4bnt_6plsx', 4, '5.00', '5.00', '5.00', '5.00', '5.00', '2017-12-08 17:21:36', '2017-12-08 19:14:40'),
(55, 214, 'X1-ZUzk1m0jhrfea1_5jgqr', 'user27708862', 'https://photos.zillowstatic.com/h_g/ISd09n43g2nrbc0000000000.jpg', 'http://www.zillow.com/profile/user27708862/', 'Partners Real Estate- Your Partner For Life', 'P.O. Box 772782, Eagle River, AK 99577', '(844) 913-7595', 'http://www.zillow.com/reviews/write/?s=X1-ZUzk1m0jhrfea1_5jgqr', 3, '5.00', '5.00', '5.00', '5.00', '5.00', '2017-12-09 00:48:44', '2017-12-09 00:49:30'),
(56, 215, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', '0.00', '2017-12-09 00:53:09', '2017-12-09 00:53:09'),
(57, 218, 'X1-ZUykei3ftn4mbt_1acra', 'user19731134', 'https://photos.zillowstatic.com/h_g/IS6avgndzyww9x1000000000.jpg', 'http://www.zillow.com/profile/user19731134/', 'Partners Real Estate', '11940 Business Blvd Suite 202, Eagle River, AK 99577', '(907) 312-1962', 'http://www.zillow.com/reviews/write/?s=X1-ZUykei3ftn4mbt_1acra', 3, '5.00', '5.00', '5.00', '5.00', '5.00', '2017-12-09 02:06:31', '2017-12-14 03:19:05'),
(58, 220, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', '0.00', '2017-12-09 03:00:51', '2017-12-09 03:00:51'),
(59, 221, 'X1-ZU11eb8ydld4bnt_6plsx', 'tim7558', 'https://photos.zillowstatic.com/h_g/ISinx4imxyzlfx1000000000.jpg', 'http://www.zillow.com/profile/tim7558/', 'Partners Real Estate', '11940 Business Boulevard Suite 202, Eagle River, AK 99577', '(855) 997-0656', 'http://www.zillow.com/reviews/write/?s=X1-ZU11eb8ydld4bnt_6plsx', 4, '5.00', '5.00', '5.00', '5.00', '5.00', '2017-12-09 03:03:48', '2017-12-09 03:05:45'),
(60, 223, 'X1-ZUzalkjd9ism4p_5m9vp', 'Mark Bellamy', 'https://photos.zillowstatic.com/h_g/IS-b4uzu1waj5nh.jpg', 'http://www.zillow.com/profile/Mark-Bellamy/', 'Class Act Property Management, LLC', '189 Liberty St NE, Suite 307, Salem, OR 97301', '(971) 599-1440', 'http://www.zillow.com/reviews/write/?s=X1-ZUzalkjd9ism4p_5m9vp', 7, '2.00', NULL, NULL, '0.00', NULL, '2017-12-14 00:55:17', '2017-12-14 01:13:37'),
(61, 218, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', '0.00', '2017-12-14 03:14:09', '2017-12-14 03:14:09'),
(62, 229, 'X1-ZU11e55x6gua809_6sexv', 'PartnersRealEstate', 'https://photos.zillowstatic.com/h_g/ISq55d676mqnwg1000000000.jpg', 'http://www.zillow.com/profile/PartnersRealEstate/', 'Partners Real Estate', '11940 Business Blvd. Suite 202 , Eagle River, AK 99577', '(907) 312-1444', 'http://www.zillow.com/reviews/write/?s=X1-ZU11e55x6gua809_6sexv', 17, '5.00', '5.00', '5.00', '5.00', '5.00', '2017-12-14 03:45:07', '2017-12-14 03:47:07'),
(63, 230, 'X1-ZUykei3ftn4mbt_1acra', 'user19731134', 'https://photos.zillowstatic.com/h_g/IS6avgndzyww9x1000000000.jpg', 'http://www.zillow.com/profile/user19731134/', 'Partners Real Estate', '11940 Business Blvd Suite 202, Eagle River, AK 99577', '(907) 312-1962', 'http://www.zillow.com/reviews/write/?s=X1-ZUykei3ftn4mbt_1acra', 3, '5.00', '5.00', '5.00', '5.00', '5.00', '2017-12-14 03:55:07', '2017-12-14 03:55:51'),
(64, 231, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', '0.00', '2017-12-14 22:56:28', '2017-12-14 22:56:28'),
(65, 232, 'X1-ZU11e55x6gua809_6sexv', 'PartnersRealEstate', 'https://photos.zillowstatic.com/h_g/ISq55d676mqnwg1000000000.jpg', 'http://www.zillow.com/profile/PartnersRealEstate/', 'Partners Real Estate', '11940 Business Blvd. Suite 202 , Eagle River, AK 99577', '(907) 312-1444', 'http://www.zillow.com/reviews/write/?s=X1-ZU11e55x6gua809_6sexv', 17, '5.00', '5.00', '5.00', '5.00', '5.00', '2017-12-15 00:20:02', '2017-12-15 00:26:40'),
(66, 233, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', '0.00', '2017-12-15 00:27:20', '2017-12-15 00:27:20'),
(67, 234, 'X1-ZUysj1imolzwnd_7oq0q', 'Tsquare1', 'https://photos.zillowstatic.com/h_g/ISpld2wr6ehw1p1000000000.jpg', 'http://www.zillow.com/profile/tsquare1/', 'T-Square Real Estate Services, Inc', '19125 North Creek Parkway, Ste 208, Bothell, WA 98011', '(425) 485-1800', 'http://www.zillow.com/reviews/write/?s=X1-ZUysj1imolzwnd_7oq0q', 3, '4.10', NULL, NULL, '4.30', NULL, '2017-12-15 01:03:25', '2017-12-15 01:04:10'),
(68, 235, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', '0.00', '2017-12-15 03:10:14', '2017-12-15 03:10:14'),
(69, 236, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', '0.00', '2017-12-15 05:55:16', '2017-12-15 05:55:16'),
(70, 237, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', '0.00', '2017-12-15 05:56:31', '2017-12-15 05:56:31'),
(71, 238, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', '0.00', '2017-12-15 05:57:22', '2017-12-15 05:57:22'),
(72, 239, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', '0.00', '2017-12-15 06:12:00', '2017-12-15 06:12:00'),
(73, 240, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', '0.00', '2017-12-15 06:12:30', '2017-12-15 06:12:30'),
(74, 241, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', '0.00', '2017-12-15 19:52:16', '2017-12-15 19:52:16'),
(75, 242, 'X1-ZUykei3ftn4mbt_1acra', 'user19731134', 'https://photos.zillowstatic.com/h_g/IS6avgndzyww9x1000000000.jpg', 'http://www.zillow.com/profile/user19731134/', 'Partners Real Estate', '11940 Business Blvd Suite 202, Eagle River, AK 99577', '(907) 312-1962', 'http://www.zillow.com/reviews/write/?s=X1-ZUykei3ftn4mbt_1acra', 3, '5.00', '5.00', '5.00', '5.00', '5.00', '2017-12-15 22:26:03', '2017-12-15 22:30:26'),
(76, 243, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', '0.00', '2017-12-15 22:27:16', '2017-12-15 22:27:16'),
(77, 244, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', '0.00', '2017-12-15 23:20:26', '2017-12-15 23:20:26'),
(78, 245, 'X1-ZUysj1imolzwnd_7oq0q', 'tsquare1', 'https://photos.zillowstatic.com/h_g/ISpld2wr6ehw1p1000000000.jpg', 'http://www.zillow.com/profile/tsquare1/', 'T-Square Real Estate Services, Inc', '19125 North Creek Parkway, Ste 208, Bothell, WA 98011', '(425) 485-1800', 'http://www.zillow.com/reviews/write/?s=X1-ZUysj1imolzwnd_7oq0q', 3, '4.10', NULL, NULL, '4.30', NULL, '2017-12-16 15:59:48', '2017-12-16 16:01:25'),
(79, 246, 'X1-ZUykei3ftn4mbt_1acra', 'user19731134', 'https://photos.zillowstatic.com/h_g/IS6avgndzyww9x1000000000.jpg', 'http://www.zillow.com/profile/user19731134/', 'Partners Real Estate', '11940 Business Blvd Suite 202, Eagle River, AK 99577', '(907) 312-1962', 'http://www.zillow.com/reviews/write/?s=X1-ZUykei3ftn4mbt_1acra', 3, '5.00', '5.00', '5.00', '5.00', '5.00', '2017-12-16 16:38:25', '2017-12-16 17:09:05'),
(80, 247, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', '0.00', '2017-12-16 16:40:23', '2017-12-16 16:40:23'),
(81, 248, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', '0.00', '2017-12-16 18:40:08', '2017-12-16 18:40:08'),
(82, 249, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', '0.00', '2017-12-16 18:49:14', '2017-12-16 18:49:14'),
(83, 250, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', '0.00', '2017-12-16 19:04:09', '2017-12-16 19:04:09'),
(84, 251, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', '0.00', '2017-12-16 19:06:04', '2017-12-16 19:06:04'),
(85, 252, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', '0.00', '2017-12-16 19:18:43', '2017-12-16 19:18:43'),
(86, 253, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', '0.00', '2017-12-16 20:31:43', '2017-12-16 20:31:43'),
(87, 254, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', '0.00', '2017-12-16 20:33:16', '2017-12-16 20:33:16'),
(88, 255, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', '0.00', '2017-12-16 20:48:30', '2017-12-16 20:48:30'),
(89, 256, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', '0.00', '2017-12-18 17:21:44', '2017-12-18 17:21:44'),
(90, 260, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', '0.00', '2017-12-18 17:48:34', '2017-12-18 17:48:34'),
(91, 262, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', '0.00', '2017-12-20 23:10:14', '2017-12-20 23:10:14'),
(92, 263, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', '0.00', '2017-12-20 23:12:10', '2017-12-20 23:12:10'),
(93, 264, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', '0.00', '2017-12-20 23:27:54', '2017-12-20 23:27:54'),
(94, 265, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', '0.00', '2017-12-20 23:28:58', '2017-12-20 23:28:58'),
(95, 266, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', '0.00', '2017-12-21 20:55:41', '2017-12-21 20:55:41'),
(96, 267, 'X1-ZUzk1m0jhrfea1_5jgqr', 'user27708862', 'https://photos.zillowstatic.com/h_g/ISd09n43g2nrbc0000000000.jpg', 'http://www.zillow.com/profile/user27708862/', 'Partners Real Estate- Your Partner For Life', 'P.O. Box 772782, Eagle River, AK 99577', '(844) 913-7595', 'http://www.zillow.com/reviews/write/?s=X1-ZUzk1m0jhrfea1_5jgqr', 3, '5.00', '5.00', '5.00', '5.00', '5.00', '2017-12-21 23:14:53', '2017-12-21 23:17:43'),
(97, 268, 'X1-ZUzk1m0jhrfea1_5jgqr', 'user27708862', 'https://photos.zillowstatic.com/h_g/ISd09n43g2nrbc0000000000.jpg', 'http://www.zillow.com/profile/user27708862/', 'Partners Real Estate- Your Partner For Life', 'P.O. Box 772782, Eagle River, AK 99577', '(844) 913-7595', 'http://www.zillow.com/reviews/write/?s=X1-ZUzk1m0jhrfea1_5jgqr', 3, '5.00', '5.00', '5.00', '5.00', '5.00', '2017-12-21 23:21:26', '2017-12-21 23:24:50'),
(98, 269, 'X1-ZUykei3ftn4mbt_1acra', 'user19731134', 'https://photos.zillowstatic.com/h_g/IS6avgndzyww9x1000000000.jpg', 'http://www.zillow.com/profile/user19731134/', 'Partners Real Estate', '11940 Business Blvd Suite 202, Eagle River, AK 99577', '(907) 312-1962', 'http://www.zillow.com/reviews/write/?s=X1-ZUykei3ftn4mbt_1acra', 3, '5.00', '5.00', '5.00', '5.00', '5.00', '2017-12-21 23:46:05', '2017-12-22 00:20:14'),
(99, 270, 'X1-ZUykei3ftn4mbt_1acra', 'user19731134', 'https://photos.zillowstatic.com/h_g/IS6avgndzyww9x1000000000.jpg', 'http://www.zillow.com/profile/user19731134/', 'Partners Real Estate', '11940 Business Blvd Suite 202, Eagle River, AK 99577', '(907) 312-1962', 'http://www.zillow.com/reviews/write/?s=X1-ZUykei3ftn4mbt_1acra', 3, '5.00', '5.00', '5.00', '5.00', '5.00', '2017-12-21 23:47:31', '2017-12-22 00:07:15'),
(100, 271, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', '0.00', '2017-12-21 23:49:01', '2017-12-21 23:49:01'),
(101, 272, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', '0.00', '2017-12-21 23:54:12', '2017-12-21 23:54:12'),
(102, 273, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', '0.00', '2017-12-21 23:55:44', '2017-12-21 23:55:44'),
(103, 274, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', '0.00', '2017-12-21 23:56:38', '2017-12-21 23:56:38'),
(104, 275, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', '0.00', '2017-12-21 23:57:36', '2017-12-21 23:57:36'),
(105, 276, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', '0.00', '2017-12-21 23:57:39', '2017-12-21 23:57:39'),
(106, 277, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', '0.00', '2017-12-21 23:58:22', '2017-12-21 23:58:22'),
(107, 278, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', '0.00', '2017-12-21 23:59:13', '2017-12-21 23:59:13'),
(108, 279, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', '0.00', '2017-12-21 23:59:14', '2017-12-21 23:59:14'),
(109, 280, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', '0.00', '2017-12-22 00:00:08', '2017-12-22 00:00:08'),
(110, 282, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', '0.00', '2017-12-22 00:01:52', '2017-12-22 00:01:52'),
(111, 283, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', '0.00', '2017-12-22 00:02:50', '2017-12-22 00:02:50'),
(112, 284, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', '0.00', '2017-12-22 17:09:17', '2017-12-22 17:09:17'),
(113, 286, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', '0.00', '2017-12-22 17:22:27', '2017-12-22 17:22:27'),
(114, 287, 'X1-ZUykei3ftn4mbt_1acra', 'user19731134', 'https://photos.zillowstatic.com/h_g/IS6avgndzyww9x1000000000.jpg', 'http://www.zillow.com/profile/user19731134/', 'Partners Real Estate', '11940 Business Blvd Suite 202, Eagle River, AK 99577', '(907) 312-1962', 'http://www.zillow.com/reviews/write/?s=X1-ZUykei3ftn4mbt_1acra', 3, '5.00', '5.00', '5.00', '5.00', '5.00', '2017-12-22 17:24:32', '2017-12-22 23:23:49'),
(115, 288, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', '0.00', '2017-12-22 23:21:30', '2017-12-22 23:21:30'),
(116, 289, 'X1-ZUysj1imolzwnd_7oq0q', 'tsquare1', 'https://photos.zillowstatic.com/h_g/ISpld2wr6ehw1p1000000000.jpg', 'http://www.zillow.com/profile/tsquare1/', 'T-Square Real Estate Services, Inc', '19125 North Creek Parkway, Ste 208, Bothell, WA 98011', '(425) 485-1800', 'http://www.zillow.com/reviews/write/?s=X1-ZUysj1imolzwnd_7oq0q', 3, '4.10', NULL, NULL, '4.30', NULL, '2017-12-23 00:14:50', '2017-12-23 00:31:26'),
(117, 290, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', '0.00', '2017-12-23 02:20:27', '2017-12-23 02:20:27'),
(118, 291, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', '0.00', '2017-12-26 10:08:50', '2017-12-26 10:08:50'),
(119, 292, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', '0.00', '2017-12-26 10:11:47', '2017-12-26 10:11:47'),
(120, 294, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', '0.00', '2017-12-27 00:48:19', '2017-12-27 00:48:19'),
(121, 295, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', '0.00', '2017-12-27 01:09:56', '2017-12-27 01:09:56'),
(122, 296, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', '0.00', '2017-12-27 01:14:08', '2017-12-27 01:14:08'),
(123, 297, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', '0.00', '2017-12-27 23:45:21', '2017-12-27 23:45:21'),
(124, 298, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', '0.00', '2017-12-29 21:15:17', '2017-12-29 21:15:17'),
(125, 299, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', '0.00', '2017-12-29 22:07:25', '2017-12-29 22:07:25'),
(126, 300, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', '0.00', '2018-01-11 01:30:49', '2018-01-11 01:30:49'),
(127, 301, 'X1-ZU11eb8ydld4bnt_6plsx', 'tim7558', 'https://photos.zillowstatic.com/h_g/ISinx4imxyzlfx1000000000.jpg', 'http://www.zillow.com/profile/tim7558/', 'Partners Real Estate', '11940 Business Boulevard Suite 202, Eagle River, AK 99577', '(855) 997-0656', 'http://www.zillow.com/reviews/write/?s=X1-ZU11eb8ydld4bnt_6plsx', 6, '5.00', '5.00', '5.00', '5.00', '5.00', '2018-01-11 17:43:36', '2018-02-13 01:17:44'),
(128, 302, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', '0.00', '2018-01-11 17:47:00', '2018-01-11 17:47:00'),
(129, 303, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', '0.00', '2018-01-11 23:35:16', '2018-01-11 23:35:16'),
(130, 304, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', '0.00', '2018-01-11 23:41:43', '2018-01-11 23:41:43'),
(131, 305, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', '0.00', '2018-01-11 23:49:08', '2018-01-11 23:49:08'),
(132, 306, 'X1-ZUzk1m0jhrfea1_5jgqr', 'user27708862', 'https://photos.zillowstatic.com/h_g/ISd09n43g2nrbc0000000000.jpg', 'http://www.zillow.com/profile/user27708862/', 'Partners Real Estate- Your Partner For Life', 'P.O. Box 772782, Eagle River, AK 99577', '(844) 913-7595', 'http://www.zillow.com/reviews/write/?s=X1-ZUzk1m0jhrfea1_5jgqr', 3, '5.00', '5.00', '5.00', '5.00', '5.00', '2018-01-11 23:59:53', '2018-01-12 00:24:34'),
(133, 307, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', '0.00', '2018-01-12 01:28:35', '2018-01-12 01:28:35'),
(134, 308, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', '0.00', '2018-01-12 16:58:51', '2018-01-12 16:58:51'),
(135, 309, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', '0.00', '2018-01-12 23:15:51', '2018-01-12 23:15:51'),
(136, 310, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', '0.00', '2018-01-12 23:20:43', '2018-01-12 23:20:43'),
(137, 311, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', '0.00', '2018-03-09 01:32:14', '2018-03-09 01:32:14'),
(138, 312, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', '0.00', '2018-03-22 23:21:18', '2018-03-22 23:21:18'),
(139, 313, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', '0.00', '2018-03-22 23:22:46', '2018-03-22 23:22:46'),
(140, 314, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', '0.00', '2018-03-22 23:23:52', '2018-03-22 23:23:52'),
(141, 315, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', '0.00', '2018-03-22 23:24:41', '2018-03-22 23:24:41'),
(142, 316, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', '0.00', '2018-03-22 23:25:40', '2018-03-22 23:25:40'),
(143, 317, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', '0.00', '2018-03-22 23:26:20', '2018-03-22 23:26:20'),
(144, 318, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', '0.00', '2018-03-22 23:26:58', '2018-03-22 23:26:58'),
(145, 319, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', '0.00', '2018-03-24 21:34:51', '2018-03-24 21:34:51'),
(146, 320, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', '0.00', '2018-03-24 21:35:52', '2018-03-24 21:35:52'),
(147, 321, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', '0.00', '2018-03-28 18:14:09', '2018-03-28 18:14:09'),
(148, 322, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', '0.00', '2018-04-03 02:30:18', '2018-04-03 02:30:18'),
(149, 323, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', '0.00', '2018-04-08 02:51:05', '2018-04-08 02:51:05'),
(150, 324, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', '0.00', '2018-04-08 03:46:53', '2018-04-08 03:46:53'),
(151, 325, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', '0.00', '2018-04-08 03:50:15', '2018-04-08 03:50:15'),
(152, 326, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', '0.00', '2018-04-08 03:52:59', '2018-04-08 03:52:59'),
(153, 328, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', '0.00', '2018-04-08 03:55:17', '2018-04-08 03:55:17'),
(154, 329, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', '0.00', '2018-04-08 03:57:39', '2018-04-08 03:57:39'),
(155, 330, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', '0.00', '2018-04-08 04:02:25', '2018-04-08 04:02:25'),
(156, 331, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', '0.00', '2018-04-08 04:47:26', '2018-04-08 04:47:26'),
(157, 332, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', '0.00', '2018-04-08 05:41:35', '2018-04-08 05:41:35'),
(158, 333, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', '0.00', '2018-04-08 05:46:34', '2018-04-08 05:46:34'),
(159, 334, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', '0.00', '2018-04-08 05:47:57', '2018-04-08 05:47:57'),
(160, 335, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', '0.00', '2018-04-08 05:49:26', '2018-04-08 05:49:26');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `acl_phinxlog`
--
ALTER TABLE `acl_phinxlog`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `acos`
--
ALTER TABLE `acos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lft` (`lft`,`rght`),
  ADD KEY `alias` (`alias`);

--
-- Indexes for table `api_configurations`
--
ALTER TABLE `api_configurations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `api_reviews`
--
ALTER TABLE `api_reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `api_services`
--
ALTER TABLE `api_services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aros`
--
ALTER TABLE `aros`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lft` (`lft`,`rght`),
  ADD KEY `alias` (`alias`);

--
-- Indexes for table `aros_acos`
--
ALTER TABLE `aros_acos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `aro_id` (`aro_id`,`aco_id`),
  ADD KEY `aco_id` (`aco_id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`cty_iso_code`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `custom_email_templates`
--
ALTER TABLE `custom_email_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `facebook`
--
ALTER TABLE `facebook`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `google`
--
ALTER TABLE `google`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_google_users` (`user_id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_transactions`
--
ALTER TABLE `order_transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_details`
--
ALTER TABLE `payment_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_payment_details_users` (`user_id`);

--
-- Indexes for table `personal_site_reviews`
--
ALTER TABLE `personal_site_reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `plans`
--
ALTER TABLE `plans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `plan_features`
--
ALTER TABLE `plan_features`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `plan_features_xref`
--
ALTER TABLE `plan_features_xref`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_plan_features_xref_plans` (`plan_id`),
  ADD KEY `FK_plan_features_xref_plan_features` (`plan_features_id`);

--
-- Indexes for table `post_rating`
--
ALTER TABLE `post_rating`
  ADD PRIMARY KEY (`rating_id`);

--
-- Indexes for table `profile_images`
--
ALTER TABLE `profile_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_profile_images_users` (`user_id`);

--
-- Indexes for table `reviews_mgmt`
--
ALTER TABLE `reviews_mgmt`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_reviews_mgmt_users` (`user_id`),
  ADD KEY `FK_reviews_mgmt_survey_mgmt` (`survey_id`);

--
-- Indexes for table `survey_ans`
--
ALTER TABLE `survey_ans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_survey_ans_survey_mgmt` (`survey_mgmt_id`),
  ADD KEY `FK_survey_ans_survey_qus` (`survey_qus_id`);

--
-- Indexes for table `survey_category`
--
ALTER TABLE `survey_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `survey_mgmt`
--
ALTER TABLE `survey_mgmt`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `survey_question`
--
ALTER TABLE `survey_question`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `survey_templates`
--
ALTER TABLE `survey_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `survey_templates_question`
--
ALTER TABLE `survey_templates_question`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `survey_templates_question_logic`
--
ALTER TABLE `survey_templates_question_logic`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_transactions_users` (`user_id`),
  ADD KEY `FK_transactions_plans` (`plan_id`),
  ADD KEY `FK_transactions_payment_details` (`payment_details_id`);

--
-- Indexes for table `update_payment_log`
--
ALTER TABLE `update_payment_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `FK_users_groups` (`group_id`);

--
-- Indexes for table `user_plans`
--
ALTER TABLE `user_plans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_user_plans_users` (`user_id`),
  ADD KEY `FK_user_plans_plans` (`plan_id`),
  ADD KEY `FK_user_plans_transactions` (`trans_id`);

--
-- Indexes for table `yelp`
--
ALTER TABLE `yelp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zillow`
--
ALTER TABLE `zillow`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `acos`
--
ALTER TABLE `acos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=275;

--
-- AUTO_INCREMENT for table `api_configurations`
--
ALTER TABLE `api_configurations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT for table `api_reviews`
--
ALTER TABLE `api_reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=693;

--
-- AUTO_INCREMENT for table `api_services`
--
ALTER TABLE `api_services`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `aros`
--
ALTER TABLE `aros`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=342;

--
-- AUTO_INCREMENT for table `aros_acos`
--
ALTER TABLE `aros_acos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `custom_email_templates`
--
ALTER TABLE `custom_email_templates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `facebook`
--
ALTER TABLE `facebook`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=139;

--
-- AUTO_INCREMENT for table `google`
--
ALTER TABLE `google`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=145;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `order_transactions`
--
ALTER TABLE `order_transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `payment_details`
--
ALTER TABLE `payment_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_site_reviews`
--
ALTER TABLE `personal_site_reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `plans`
--
ALTER TABLE `plans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `plan_features`
--
ALTER TABLE `plan_features`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `plan_features_xref`
--
ALTER TABLE `plan_features_xref`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `post_rating`
--
ALTER TABLE `post_rating`
  MODIFY `rating_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `profile_images`
--
ALTER TABLE `profile_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `reviews_mgmt`
--
ALTER TABLE `reviews_mgmt`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=476;

--
-- AUTO_INCREMENT for table `survey_ans`
--
ALTER TABLE `survey_ans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=352;

--
-- AUTO_INCREMENT for table `survey_category`
--
ALTER TABLE `survey_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;

--
-- AUTO_INCREMENT for table `survey_mgmt`
--
ALTER TABLE `survey_mgmt`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=200;

--
-- AUTO_INCREMENT for table `survey_question`
--
ALTER TABLE `survey_question`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=189;

--
-- AUTO_INCREMENT for table `survey_templates`
--
ALTER TABLE `survey_templates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=148;

--
-- AUTO_INCREMENT for table `survey_templates_question`
--
ALTER TABLE `survey_templates_question`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=548;

--
-- AUTO_INCREMENT for table `survey_templates_question_logic`
--
ALTER TABLE `survey_templates_question_logic`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=156;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `update_payment_log`
--
ALTER TABLE `update_payment_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=336;

--
-- AUTO_INCREMENT for table `user_plans`
--
ALTER TABLE `user_plans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `yelp`
--
ALTER TABLE `yelp`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=142;

--
-- AUTO_INCREMENT for table `zillow`
--
ALTER TABLE `zillow`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=161;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `google`
--
ALTER TABLE `google`
  ADD CONSTRAINT `FK_google_users` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `payment_details`
--
ALTER TABLE `payment_details`
  ADD CONSTRAINT `FK_payment_details_users` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `plan_features_xref`
--
ALTER TABLE `plan_features_xref`
  ADD CONSTRAINT `FK_plan_features_xref_plan_features` FOREIGN KEY (`plan_features_id`) REFERENCES `plan_features` (`id`),
  ADD CONSTRAINT `FK_plan_features_xref_plans` FOREIGN KEY (`plan_id`) REFERENCES `plans` (`id`);

--
-- Constraints for table `profile_images`
--
ALTER TABLE `profile_images`
  ADD CONSTRAINT `FK_profile_images_users` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `reviews_mgmt`
--
ALTER TABLE `reviews_mgmt`
  ADD CONSTRAINT `FK_reviews_mgmt_survey_mgmt` FOREIGN KEY (`survey_id`) REFERENCES `survey_mgmt` (`id`),
  ADD CONSTRAINT `FK_reviews_mgmt_users` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `survey_ans`
--
ALTER TABLE `survey_ans`
  ADD CONSTRAINT `FK_survey_ans_survey_qus` FOREIGN KEY (`survey_qus_id`) REFERENCES `survey_question` (`id`);

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `FK_transactions_payment_details` FOREIGN KEY (`payment_details_id`) REFERENCES `payment_details` (`id`),
  ADD CONSTRAINT `FK_transactions_plans` FOREIGN KEY (`plan_id`) REFERENCES `plans` (`id`),
  ADD CONSTRAINT `FK_transactions_users` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `FK_users_groups` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`);

--
-- Constraints for table `user_plans`
--
ALTER TABLE `user_plans`
  ADD CONSTRAINT `FK_user_plans_plans` FOREIGN KEY (`plan_id`) REFERENCES `plans` (`id`),
  ADD CONSTRAINT `FK_user_plans_transactions` FOREIGN KEY (`trans_id`) REFERENCES `transactions` (`id`),
  ADD CONSTRAINT `FK_user_plans_users` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
