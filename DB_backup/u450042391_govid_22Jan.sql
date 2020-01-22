-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jan 22, 2020 at 12:41 AM
-- Server version: 10.2.30-MariaDB
-- PHP Version: 7.2.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u450042391_govid`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_table`
--

CREATE TABLE `admin_table` (
  `admin_id` int(255) NOT NULL,
  `admin_name` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `admin_email` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `admin_password` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `admin_status` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `admin_table`
--

INSERT INTO `admin_table` (`admin_id`, `admin_name`, `admin_email`, `admin_password`, `admin_status`) VALUES
(1, 'Pratik Shelar', 'pratik@goviddo.com', '12345', 1);

-- --------------------------------------------------------

--
-- Table structure for table `channel_list`
--

CREATE TABLE `channel_list` (
  `channel_id` int(255) NOT NULL,
  `channel_name` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `channel_logo_url` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `channel_list`
--

INSERT INTO `channel_list` (`channel_id`, `channel_name`, `channel_logo_url`, `status`) VALUES
(1, 'T-Series', 'https://upload.wikimedia.org/wikipedia/commons/thumb/7/7d/T-series-logo.svg/659px-T-series-logo.svg.png', 0),
(2, 'GoViddo', 'https://goviddo.com/appimg/ic_launcher_go_app.png', 1),
(3, 'BhaDiPa', 'https://goviddo.com/appimg/ic_launcher_go_app.png', 0),
(4, 'Indian Movie Friend', 'https://www.indianmoviefriend.com/images/front/31.png', 0),
(5, 'Zee Studios', 'https://goviddo.com/appimg/zz.jpg', 0),
(6, 'Great Maratha Entertainment', 'https://goviddo.com/appimg/ic_launcher_go_app.png', 0);

-- --------------------------------------------------------

--
-- Table structure for table `community`
--

CREATE TABLE `community` (
  `community_join_id` int(200) NOT NULL,
  `email_id_community_joiner` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `joining_as` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `updates_approval` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `community`
--

INSERT INTO `community` (`community_join_id`, `email_id_community_joiner`, `joining_as`, `updates_approval`) VALUES
(5, 'mulaniimran27@gmail.com', 'Inverster Producer ', 0),
(6, 'shelarpratik@icloud.com', 'Inverster ', 0),
(7, 'satkhachane@gmail.com', 'User ', 0),
(8, 'ni_80@rediffmail.com', 'User ', 0),
(9, 'ni_80@rediffmail.com', 'User ', 0),
(10, 'pravinshelar123@gmail.com', 'Inverster User ', 0),
(11, 'ajitnetwork@gmail.com', 'Advertiser ', 0),
(12, 'ajitnetwork@gmail.com', 'Advertiser ', 0),
(13, 'Donoso6780@hotmail.com', '', 0),
(14, 'Comparoni19465@hotmail.com', '', 0),
(15, 'prateek.nikhare21@gmail.com', 'User ', 0),
(16, 'prateek.nikhare21@gmail.com', 'User ', 0),
(17, 'prateek.nikhare21@gmail.com', 'Investor ', 0),
(18, 'Pravinshelar123@Gmail.con', '', 0),
(19, 'Pravinshelar123@Gmail.con', 'Investor User ', 0),
(20, 'Pravinshelar123@Gmail.con', 'Investor User ', 0),
(21, 'Pravinshelar123@Gmail.con', 'Investor User ', 0),
(22, 'SteinhoffRita@gmx.com', 'User ', 0),
(23, 'sneha19.singh@gmail.com', 'User ', 0),
(24, 'as@bluesapphirefilms.com', 'Producer ', 0),
(25, 'Delhoyo71585@yahoo.com', '', 0),
(26, '51135Finizio@hotmail.com', '', 0),
(27, '47919Searle@hotmail.com', '', 0),
(32, 'mulaniimran97@gmail.com', 'Viewer ', 0),
(33, 'mulaniimran97@gmail.com', '', 1),
(34, 'rachel@drop.studio', '', 1),
(35, '', '', 0),
(36, 'SarthakKolage@gmail.com', '', 1),
(37, '', '', 0),
(38, 'pankajthodsare@gmail.com', '', 1),
(39, 'pankajthodsare78@gmail.com', '', 1),
(40, 'prakashkumar76@gmail.com', '', 0),
(41, 'irina.georgieva@drop.studio', '', 1),
(42, '', '', 0),
(43, 'massimo.guasti@yahoo.it', '', 1),
(44, 'abhishekbhrt56@gmail.com', '', 1),
(45, 'saurabhpatilsam@gmail.com', '', 1),
(46, 'sonnemukesh@gmail.com', '', 1),
(47, 'sidvb13@gmail.com', '', 0),
(48, 'jindalharshal@gmail.com', '', 1),
(49, 'vijaydhabekar@hotmail.com', '', 0),
(50, 'vijaydhabekar@hotmail.com', '', 0),
(51, 'vijaydhabekar@hotmail.com', '', 0),
(52, 'mohanish58@gmail.com', '', 0),
(53, 'srajanpatel.9575@gmail.com', '', 1),
(54, 'bhuvan@latlontechnologies.com', '', 0),
(55, 'pankajthodsare78@gmail.com', '', 1),
(56, 'pankajthodsare78@gmail.com', '', 1),
(57, 'mailto.arahim@gmail.com', '', 0),
(58, 'agarwalakansh7@gmail.com', '', 1),
(59, 'skmknk09@gmail.com', '', 1),
(60, 'skmknk09@gmail.com', '', 1),
(61, 'hemantarole@gmail.com', '', 1),
(62, 'dipago6@gmail.com', '', 1),
(63, 'saketrk@gmail.com', '', 1),
(64, 'mayur.pathak1545@gmail.com', '', 1),
(65, 'mayur.pathak1545@gmail.com', '', 1),
(66, 'manishgo3366@gmail.com', '', 1),
(67, 'chsubbu33@gmail.com', '', 1),
(68, 'swapniljadhav720@gmail.com', '', 1),
(69, 'leenabhamare27@gmail.com', '', 1),
(70, 'satishkhachane@gmail.com', '', 1),
(71, 'satishkhachane@gmail.com', '', 1),
(72, '', '', 0),
(73, '', '', 0),
(74, 'numanuzun1983@gmail.com', '', 1),
(75, 'cufcuf46@hotmail.com', '', 1),
(76, 'cufcuf46@hotmail.com', '', 1),
(77, 'kimyacilar@hotmail.com', '', 1),
(78, 'kimyacilar@hotmail.com', '', 1),
(79, '', '', 0),
(80, 'vikasadsul38@gmail.com', '', 1),
(81, '', '', 0),
(82, 'pakasabe@gmail.com', '', 0),
(83, 'pakasabe@gmail.com', '', 1),
(84, 'pakasabe@gmail.com', '', 1),
(85, 'pakasabe@gmail.com', '', 1),
(86, 'satishkumar.musunuri@gmail.com', '', 1),
(87, '', '', 0),
(88, 'replygattu@gmail.com', '', 1),
(89, '', '', 0),
(90, '', '', 0),
(91, '', '', 0),
(92, '', '', 0),
(93, '', '', 0),
(94, '', '', 0),
(95, '', '', 0),
(96, '', '', 0),
(97, '', '', 0),
(98, '', '', 0),
(99, '', '', 0),
(100, '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `config_table`
--

CREATE TABLE `config_table` (
  `id` int(255) NOT NULL,
  `config_key` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `config_value` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `config_table`
--

INSERT INTO `config_table` (`id`, `config_key`, `config_value`) VALUES
(1, 'bannerImgCount', '5'),
(2, 'previewCount', '10'),
(3, 'popularCount', '5'),
(4, 'categories', '[{\'name\':\'Originals\', \'count\':10},{\'name\':\'Movies\', \'count\':10},{\'name\':\'Series\', \'count\':10},{\'name\':\'Documentries\', \'count\':10}]');

-- --------------------------------------------------------

--
-- Table structure for table `crowdfund_project_details`
--

CREATE TABLE `crowdfund_project_details` (
  `crowdfund_project_id` int(255) NOT NULL,
  `userid_given_by` int(255) NOT NULL,
  `crowdfund_project_title` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `crowdfund_short_description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `project_given_by` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `crowdfund_project_logo` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `crowdfund_project_banner_image` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `crowdfund_project_idea_description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `crowdfund_project_idea_video_url` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `crowdfund_teal_details_array` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `crowdfund_documents_pdf_list` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `crowdfund_total_target` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `crowdfund_total_raised` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `crowdfund_number_of_investors` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `crowdfund_project_category_details` int(255) NOT NULL,
  `crodfund_project_upload_date` datetime NOT NULL DEFAULT current_timestamp(),
  `crowdfund_project_approval` tinyint(4) NOT NULL DEFAULT 1,
  `crowdfund_project_status` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `crowdfund_project_details`
--

INSERT INTO `crowdfund_project_details` (`crowdfund_project_id`, `userid_given_by`, `crowdfund_project_title`, `crowdfund_short_description`, `project_given_by`, `crowdfund_project_logo`, `crowdfund_project_banner_image`, `crowdfund_project_idea_description`, `crowdfund_project_idea_video_url`, `crowdfund_teal_details_array`, `crowdfund_documents_pdf_list`, `crowdfund_total_target`, `crowdfund_total_raised`, `crowdfund_number_of_investors`, `crowdfund_project_category_details`, `crodfund_project_upload_date`, `crowdfund_project_approval`, `crowdfund_project_status`) VALUES
(1, 2, 'Happy', 'Happy is an extraordinary true story of a small town guy of becoming an entrepreneur. It is also a story of self-discovery, overcoming all the financial odds and stereotypes in the society. Happy is a lighthearted, feel-good, tearjerker drama.', 'organization', 'https://goviddo.com/crowdfund/img/happy_logo.jpeg', 'https://goviddo.com/crowdfund/project_images/81246_banner_1577044921.png', 'Happy is an extraordinary true story of a small town guy of becoming an entrepreneur. It is also a story of self-discovery, overcoming all the financial odds and stereotypes in the society. Happy is a lighthearted, feel-good, tearjerker drama.', 'https://vimeo.com/380886915', '[{\"url\":\"https://goviddo.com/crowdfund/project_related_team_list/team1g1.png\", \"name\":\"Manuella Nevoresky\", \"position\":\"Director\"},{\"url\":\"https://goviddo.com/crowdfund/project_related_team_list/team1g1.png\", \"name\":\"Manuella Nevoresky\", \"position\":\"Director\"},{\"url\":\"https://goviddo.com/crowdfund/project_related_team_list/team1g1.png\", \"name\":\"Manuella Nevoresky\", \"position\":\"Director\"},{\"url\":\"https://goviddo.com/crowdfund/project_related_team_list/team1g1.png\", \"name\":\"Manuella Nevoresky\", \"position\":\"Director\"},{\"url\":\"https://goviddo.com/crowdfund/project_related_team_list/team1g1.png\", \"name\":\"Manuella Nevoresky\", \"position\":\"Director\"},{\"url\":\"https://goviddo.com/crowdfund/project_related_team_list/team1g1.png\", \"name\":\"Manuella Nevoresky\", \"position\":\"Director\"},{\"url\":\"https://goviddo.com/crowdfund/project_related_team_list/team1g1.png\", \"name\":\"Manuella Nevoresky\", \"position\":\"Director\"},{\"url\":\"https://goviddo.com/crowdfund/project_related_team_list/team1g1.png\", \"name\":\"Manuella Nevoresky\", \"position\":\"Director\"}]', '[https://goviddo.com/crowdfund/project_related_pdf/goviddo_whitepaper%20copy.pdf, https://goviddo.com/crowdfund/project_related_pdf/goviddo_whitepaper%20copy.pdf, https://goviddo.com/crowdfund/project_related_pdf/goviddo_whitepaper%20copy.pdf, https://goviddo.com/crowdfund/project_related_pdf/goviddo_whitepaper%20copy.pdf, https://goviddo.com/crowdfund/project_related_pdf/goviddo_whitepaper%20copy.pdf, https://goviddo.com/crowdfund/project_related_pdf/goviddo_whitepaper%20copy.pdf, https://goviddo.com/crowdfund/project_related_pdf/goviddo_whitepaper%20copy.pdf]', '1900000', '1700000', '40', 2, '2019-12-10 19:16:26', 1, 1),
(2, 2, 'Happy', 'Happy is an extraordinary true story of a small town guy of becoming an entrepreneur. It is also a story of self-discovery, overcoming all the financial odds and stereotypes in the society. Happy is a lighthearted, feel-good, tearjerker drama.', 'organization', 'https://goviddo.com/crowdfund/img/happy_logo.jpeg', 'https://goviddo.com/crowdfund/project_images/81246_banner_1577044921.png', 'Happy is an extraordinary true story of a small town guy of becoming an entrepreneur. It is also a story of self-discovery, overcoming all the financial odds and stereotypes in the society. Happy is a lighthearted, feel-good, tearjerker drama.', 'https://vimeo.com/380886915', '[{\"url\":\"https://goviddo.com/crowdfund/project_related_team_list/team1g1.png\", \"name\":\"Manuella Nevoresky\", \"position\":\"Director\"},{\"url\":\"https://goviddo.com/crowdfund/project_related_team_list/team1g1.png\", \"name\":\"Manuella Nevoresky\", \"position\":\"Director\"},{\"url\":\"https://goviddo.com/crowdfund/project_related_team_list/team1g1.png\", \"name\":\"Manuella Nevoresky\", \"position\":\"Director\"},{\"url\":\"https://goviddo.com/crowdfund/project_related_team_list/team1g1.png\", \"name\":\"Manuella Nevoresky\", \"position\":\"Director\"},{\"url\":\"https://goviddo.com/crowdfund/project_related_team_list/team1g1.png\", \"name\":\"Manuella Nevoresky\", \"position\":\"Director\"},{\"url\":\"https://goviddo.com/crowdfund/project_related_team_list/team1g1.png\", \"name\":\"Manuella Nevoresky\", \"position\":\"Director\"},{\"url\":\"https://goviddo.com/crowdfund/project_related_team_list/team1g1.png\", \"name\":\"Manuella Nevoresky\", \"position\":\"Director\"},{\"url\":\"https://goviddo.com/crowdfund/project_related_team_list/team1g1.png\", \"name\":\"Manuella Nevoresky\", \"position\":\"Director\"}]', '[https://goviddo.com/crowdfund/project_related_pdf/goviddo_whitepaper%20copy.pdf, https://goviddo.com/crowdfund/project_related_pdf/goviddo_whitepaper%20copy.pdf, https://goviddo.com/crowdfund/project_related_pdf/goviddo_whitepaper%20copy.pdf, https://goviddo.com/crowdfund/project_related_pdf/goviddo_whitepaper%20copy.pdf, https://goviddo.com/crowdfund/project_related_pdf/goviddo_whitepaper%20copy.pdf, https://goviddo.com/crowdfund/project_related_pdf/goviddo_whitepaper%20copy.pdf, https://goviddo.com/crowdfund/project_related_pdf/goviddo_whitepaper%20copy.pdf]', '1900000', '1500057', '42', 1, '2019-12-10 19:16:26', 1, 1),
(3, 2, 'Happy', 'Happy is an extraordinary true story of a small town guy of becoming an entrepreneur. It is also a story of self-discovery, overcoming all the financial odds and stereotypes in the society. Happy is a lighthearted, feel-good, tearjerker drama.', 'organization', 'https://goviddo.com/crowdfund/img/happy_logo.jpeg', 'https://goviddo.com/crowdfund/project_images/81246_banner_1577044921.png', 'Happy is an extraordinary true story of a small town guy of becoming an entrepreneur. It is also a story of self-discovery, overcoming all the financial odds and stereotypes in the society. Happy is a lighthearted, feel-good, tearjerker drama.', 'https://vimeo.com/380886915', '[{\"url\":\"https://goviddo.com/crowdfund/project_related_team_list/team1g1.png\", \"name\":\"Manuella Nevoresky\", \"position\":\"Director\"},{\"url\":\"https://goviddo.com/crowdfund/project_related_team_list/team1g1.png\", \"name\":\"Manuella Nevoresky\", \"position\":\"Director\"},{\"url\":\"https://goviddo.com/crowdfund/project_related_team_list/team1g1.png\", \"name\":\"Manuella Nevoresky\", \"position\":\"Director\"},{\"url\":\"https://goviddo.com/crowdfund/project_related_team_list/team1g1.png\", \"name\":\"Manuella Nevoresky\", \"position\":\"Director\"},{\"url\":\"https://goviddo.com/crowdfund/project_related_team_list/team1g1.png\", \"name\":\"Manuella Nevoresky\", \"position\":\"Director\"},{\"url\":\"https://goviddo.com/crowdfund/project_related_team_list/team1g1.png\", \"name\":\"Manuella Nevoresky\", \"position\":\"Director\"},{\"url\":\"https://goviddo.com/crowdfund/project_related_team_list/team1g1.png\", \"name\":\"Manuella Nevoresky\", \"position\":\"Director\"},{\"url\":\"https://goviddo.com/crowdfund/project_related_team_list/team1g1.png\", \"name\":\"Manuella Nevoresky\", \"position\":\"Director\"}]', '[https://goviddo.com/crowdfund/project_related_pdf/goviddo_whitepaper%20copy.pdf, https://goviddo.com/crowdfund/project_related_pdf/goviddo_whitepaper%20copy.pdf, https://goviddo.com/crowdfund/project_related_pdf/goviddo_whitepaper%20copy.pdf, https://goviddo.com/crowdfund/project_related_pdf/goviddo_whitepaper%20copy.pdf, https://goviddo.com/crowdfund/project_related_pdf/goviddo_whitepaper%20copy.pdf, https://goviddo.com/crowdfund/project_related_pdf/goviddo_whitepaper%20copy.pdf, https://goviddo.com/crowdfund/project_related_pdf/goviddo_whitepaper%20copy.pdf]', '1900000', '1800000', '38', 1, '2019-12-10 19:16:26', 1, 1),
(4, 2, 'Happy', 'Happy is an extraordinary true story of a small town guy of becoming an entrepreneur. It is also a story of self-discovery, overcoming all the financial odds and stereotypes in the society. Happy is a lighthearted, feel-good, tearjerker drama.', 'organization', 'https://goviddo.com/crowdfund/img/happy_logo.jpeg', 'https://goviddo.com/crowdfund/project_images/81246_banner_1577044921.png', 'Happy is an extraordinary true story of a small town guy of becoming an entrepreneur. It is also a story of self-discovery, overcoming all the financial odds and stereotypes in the society. Happy is a lighthearted, feel-good, tearjerker drama.', 'https://vimeo.com/380886915', '[{\"url\":\"https://goviddo.com/crowdfund/project_related_team_list/team1g1.png\", \"name\":\"Manuella Nevoresky\", \"position\":\"Director\"},{\"url\":\"https://goviddo.com/crowdfund/project_related_team_list/team1g1.png\", \"name\":\"Manuella Nevoresky\", \"position\":\"Director\"},{\"url\":\"https://goviddo.com/crowdfund/project_related_team_list/team1g1.png\", \"name\":\"Manuella Nevoresky\", \"position\":\"Director\"},{\"url\":\"https://goviddo.com/crowdfund/project_related_team_list/team1g1.png\", \"name\":\"Manuella Nevoresky\", \"position\":\"Director\"},{\"url\":\"https://goviddo.com/crowdfund/project_related_team_list/team1g1.png\", \"name\":\"Manuella Nevoresky\", \"position\":\"Director\"},{\"url\":\"https://goviddo.com/crowdfund/project_related_team_list/team1g1.png\", \"name\":\"Manuella Nevoresky\", \"position\":\"Director\"},{\"url\":\"https://goviddo.com/crowdfund/project_related_team_list/team1g1.png\", \"name\":\"Manuella Nevoresky\", \"position\":\"Director\"},{\"url\":\"https://goviddo.com/crowdfund/project_related_team_list/team1g1.png\", \"name\":\"Manuella Nevoresky\", \"position\":\"Director\"}]', '[https://goviddo.com/crowdfund/project_related_pdf/goviddo_whitepaper%20copy.pdf, https://goviddo.com/crowdfund/project_related_pdf/goviddo_whitepaper%20copy.pdf, https://goviddo.com/crowdfund/project_related_pdf/goviddo_whitepaper%20copy.pdf, https://goviddo.com/crowdfund/project_related_pdf/goviddo_whitepaper%20copy.pdf, https://goviddo.com/crowdfund/project_related_pdf/goviddo_whitepaper%20copy.pdf, https://goviddo.com/crowdfund/project_related_pdf/goviddo_whitepaper%20copy.pdf, https://goviddo.com/crowdfund/project_related_pdf/goviddo_whitepaper%20copy.pdf]', '1900000', '1200000', '38', 2, '2019-12-10 19:16:26', 1, 1),
(5, 2, 'Happy', 'Happy is an extraordinary true story of a small town guy of becoming an entrepreneur. It is also a story of self-discovery, overcoming all the financial odds and stereotypes in the society. Happy is a lighthearted, feel-good, tearjerker drama.', 'organization', 'https://goviddo.com/crowdfund/img/happy_logo.jpeg', 'https://goviddo.com/crowdfund/project_images/81246_banner_1577044921.png', 'Happy is an extraordinary true story of a small town guy of becoming an entrepreneur. It is also a story of self-discovery, overcoming all the financial odds and stereotypes in the society. Happy is a lighthearted, feel-good, tearjerker drama.', 'https://vimeo.com/380886915', '[{\"url\":\"https://goviddo.com/crowdfund/project_related_team_list/team1g1.png\", \"name\":\"Manuella Nevoresky\", \"position\":\"Director\"},{\"url\":\"https://goviddo.com/crowdfund/project_related_team_list/team1g1.png\", \"name\":\"Manuella Nevoresky\", \"position\":\"Director\"},{\"url\":\"https://goviddo.com/crowdfund/project_related_team_list/team1g1.png\", \"name\":\"Manuella Nevoresky\", \"position\":\"Director\"},{\"url\":\"https://goviddo.com/crowdfund/project_related_team_list/team1g1.png\", \"name\":\"Manuella Nevoresky\", \"position\":\"Director\"},{\"url\":\"https://goviddo.com/crowdfund/project_related_team_list/team1g1.png\", \"name\":\"Manuella Nevoresky\", \"position\":\"Director\"},{\"url\":\"https://goviddo.com/crowdfund/project_related_team_list/team1g1.png\", \"name\":\"Manuella Nevoresky\", \"position\":\"Director\"},{\"url\":\"https://goviddo.com/crowdfund/project_related_team_list/team1g1.png\", \"name\":\"Manuella Nevoresky\", \"position\":\"Director\"},{\"url\":\"https://goviddo.com/crowdfund/project_related_team_list/team1g1.png\", \"name\":\"Manuella Nevoresky\", \"position\":\"Director\"}]', '[https://goviddo.com/crowdfund/project_related_pdf/goviddo_whitepaper%20copy.pdf, https://goviddo.com/crowdfund/project_related_pdf/goviddo_whitepaper%20copy.pdf, https://goviddo.com/crowdfund/project_related_pdf/goviddo_whitepaper%20copy.pdf, https://goviddo.com/crowdfund/project_related_pdf/goviddo_whitepaper%20copy.pdf, https://goviddo.com/crowdfund/project_related_pdf/goviddo_whitepaper%20copy.pdf, https://goviddo.com/crowdfund/project_related_pdf/goviddo_whitepaper%20copy.pdf, https://goviddo.com/crowdfund/project_related_pdf/goviddo_whitepaper%20copy.pdf]', '190000', '150000', '38', 1, '2019-12-10 19:16:26', 1, 1),
(6, 2, 'Happy', 'Happy is an extraordinary true story of a small town guy of becoming an entrepreneur. It is also a story of self-discovery, overcoming all the financial odds and stereotypes in the society. Happy is a lighthearted, feel-good, tearjerker drama.', 'bussiness', 'https://goviddo.com/crowdfund/img/happy_logo.jpeg', 'https://goviddo.com/crowdfund/project_images/81246_banner_1577044921.png', 'Happy is an extraordinary true story of a small town guy of becoming an entrepreneur. It is also a story of self-discovery, overcoming all the financial odds and stereotypes in the society. Happy is a lighthearted, feel-good, tearjerker drama.', 'https://vimeo.com/380886915', '[{\"url\":\"https://goviddo.com/crowdfund/project_related_team_list/team1g1.png\", \"name\":\"Manuella Nevoresky\", \"position\":\"Director\"},{\"url\":\"https://goviddo.com/crowdfund/project_related_team_list/team1g1.png\", \"name\":\"Manuella Nevoresky\", \"position\":\"Director\"},{\"url\":\"https://goviddo.com/crowdfund/project_related_team_list/team1g1.png\", \"name\":\"Manuella Nevoresky\", \"position\":\"Director\"},{\"url\":\"https://goviddo.com/crowdfund/project_related_team_list/team1g1.png\", \"name\":\"Manuella Nevoresky\", \"position\":\"Director\"},{\"url\":\"https://goviddo.com/crowdfund/project_related_team_list/team1g1.png\", \"name\":\"Manuella Nevoresky\", \"position\":\"Director\"},{\"url\":\"https://goviddo.com/crowdfund/project_related_team_list/team1g1.png\", \"name\":\"Manuella Nevoresky\", \"position\":\"Director\"},{\"url\":\"https://goviddo.com/crowdfund/project_related_team_list/team1g1.png\", \"name\":\"Manuella Nevoresky\", \"position\":\"Director\"},{\"url\":\"https://goviddo.com/crowdfund/project_related_team_list/team1g1.png\", \"name\":\"Manuella Nevoresky\", \"position\":\"Director\"}]', '[https://goviddo.com/crowdfund/project_related_pdf/goviddo_whitepaper%20copy.pdf, https://goviddo.com/crowdfund/project_related_pdf/goviddo_whitepaper%20copy.pdf, https://goviddo.com/crowdfund/project_related_pdf/goviddo_whitepaper%20copy.pdf, https://goviddo.com/crowdfund/project_related_pdf/goviddo_whitepaper%20copy.pdf, https://goviddo.com/crowdfund/project_related_pdf/goviddo_whitepaper%20copy.pdf, https://goviddo.com/crowdfund/project_related_pdf/goviddo_whitepaper%20copy.pdf, https://goviddo.com/crowdfund/project_related_pdf/goviddo_whitepaper%20copy.pdf]', '1900000', '1000000', '38', 1, '2019-12-10 19:16:26', 1, 1),
(7, 2, 'Happy', 'Happy is an extraordinary true story of a small town guy of becoming an entrepreneur. It is also a story of self-discovery, overcoming all the financial odds and stereotypes in the society. Happy is a lighthearted, feel-good, tearjerker drama.', 'bussiness', 'https://goviddo.com/crowdfund/img/happy_logo.jpeg', 'https://goviddo.com/crowdfund/project_images/81246_banner_1577044921.png', 'Happy is an extraordinary true story of a small town guy of becoming an entrepreneur. It is also a story of self-discovery, overcoming all the financial odds and stereotypes in the society. Happy is a lighthearted, feel-good, tearjerker drama.', 'https://vimeo.com/380886915', '[{\"url\":\"https://goviddo.com/crowdfund/project_related_team_list/team1g1.png\", \"name\":\"Manuella Nevoresky\", \"position\":\"Director\"},{\"url\":\"https://goviddo.com/crowdfund/project_related_team_list/team1g1.png\", \"name\":\"Manuella Nevoresky\", \"position\":\"Director\"},{\"url\":\"https://goviddo.com/crowdfund/project_related_team_list/team1g1.png\", \"name\":\"Manuella Nevoresky\", \"position\":\"Director\"},{\"url\":\"https://goviddo.com/crowdfund/project_related_team_list/team1g1.png\", \"name\":\"Manuella Nevoresky\", \"position\":\"Director\"},{\"url\":\"https://goviddo.com/crowdfund/project_related_team_list/team1g1.png\", \"name\":\"Manuella Nevoresky\", \"position\":\"Director\"},{\"url\":\"https://goviddo.com/crowdfund/project_related_team_list/team1g1.png\", \"name\":\"Manuella Nevoresky\", \"position\":\"Director\"},{\"url\":\"https://goviddo.com/crowdfund/project_related_team_list/team1g1.png\", \"name\":\"Manuella Nevoresky\", \"position\":\"Director\"},{\"url\":\"https://goviddo.com/crowdfund/project_related_team_list/team1g1.png\", \"name\":\"Manuella Nevoresky\", \"position\":\"Director\"}]', '[https://goviddo.com/crowdfund/project_related_pdf/goviddo_whitepaper%20copy.pdf, https://goviddo.com/crowdfund/project_related_pdf/goviddo_whitepaper%20copy.pdf, https://goviddo.com/crowdfund/project_related_pdf/goviddo_whitepaper%20copy.pdf, https://goviddo.com/crowdfund/project_related_pdf/goviddo_whitepaper%20copy.pdf, https://goviddo.com/crowdfund/project_related_pdf/goviddo_whitepaper%20copy.pdf, https://goviddo.com/crowdfund/project_related_pdf/goviddo_whitepaper%20copy.pdf, https://goviddo.com/crowdfund/project_related_pdf/goviddo_whitepaper%20copy.pdf]', '1900000', '1000000', '38', 1, '2019-12-10 19:16:26', 1, 1),
(8, 2, 'Happy', 'Happy is an extraordinary true story of a small town guy of becoming an entrepreneur. It is also a story of self-discovery, overcoming all the financial odds and stereotypes in the society. Happy is a lighthearted, feel-good, tearjerker drama.', 'bussiness', 'https://goviddo.com/crowdfund/img/happy_logo.jpeg', 'https://goviddo.com/crowdfund/project_images/81246_banner_1577044921.png', 'Happy is an extraordinary true story of a small town guy of becoming an entrepreneur. It is also a story of self-discovery, overcoming all the financial odds and stereotypes in the society. Happy is a lighthearted, feel-good, tearjerker drama.', 'https://vimeo.com/380886915', '[{\"url\":\"https://goviddo.com/crowdfund/project_related_team_list/team1g1.png\", \"name\":\"Manuella Nevoresky\", \"position\":\"Director\"},{\"url\":\"https://goviddo.com/crowdfund/project_related_team_list/team1g1.png\", \"name\":\"Manuella Nevoresky\", \"position\":\"Director\"},{\"url\":\"https://goviddo.com/crowdfund/project_related_team_list/team1g1.png\", \"name\":\"Manuella Nevoresky\", \"position\":\"Director\"},{\"url\":\"https://goviddo.com/crowdfund/project_related_team_list/team1g1.png\", \"name\":\"Manuella Nevoresky\", \"position\":\"Director\"},{\"url\":\"https://goviddo.com/crowdfund/project_related_team_list/team1g1.png\", \"name\":\"Manuella Nevoresky\", \"position\":\"Director\"},{\"url\":\"https://goviddo.com/crowdfund/project_related_team_list/team1g1.png\", \"name\":\"Manuella Nevoresky\", \"position\":\"Director\"},{\"url\":\"https://goviddo.com/crowdfund/project_related_team_list/team1g1.png\", \"name\":\"Manuella Nevoresky\", \"position\":\"Director\"},{\"url\":\"https://goviddo.com/crowdfund/project_related_team_list/team1g1.png\", \"name\":\"Manuella Nevoresky\", \"position\":\"Director\"}]', '[https://goviddo.com/crowdfund/project_related_pdf/goviddo_whitepaper%20copy.pdf, https://goviddo.com/crowdfund/project_related_pdf/goviddo_whitepaper%20copy.pdf, https://goviddo.com/crowdfund/project_related_pdf/goviddo_whitepaper%20copy.pdf, https://goviddo.com/crowdfund/project_related_pdf/goviddo_whitepaper%20copy.pdf, https://goviddo.com/crowdfund/project_related_pdf/goviddo_whitepaper%20copy.pdf, https://goviddo.com/crowdfund/project_related_pdf/goviddo_whitepaper%20copy.pdf, https://goviddo.com/crowdfund/project_related_pdf/goviddo_whitepaper%20copy.pdf]', '1900000', '1000000', '38', 3, '2019-12-10 19:16:26', 1, 1),
(9, 2, 'Happy', 'Happy is an extraordinary true story of a small town guy of becoming an entrepreneur. It is also a story of self-discovery, overcoming all the financial odds and stereotypes in the society. Happy is a lighthearted, feel-good, tearjerker drama.', 'bussiness', 'https://goviddo.com/crowdfund/img/happy_logo.jpeg', 'https://goviddo.com/crowdfund/project_images/81246_banner_1577044921.png', 'Happy is an extraordinary true story of a small town guy of becoming an entrepreneur. It is also a story of self-discovery, overcoming all the financial odds and stereotypes in the society. Happy is a lighthearted, feel-good, tearjerker drama.', 'https://vimeo.com/380886915', '[{\"url\":\"https://goviddo.com/crowdfund/project_related_team_list/team1g1.png\", \"name\":\"Manuella Nevoresky\", \"position\":\"Director\"},{\"url\":\"https://goviddo.com/crowdfund/project_related_team_list/team1g1.png\", \"name\":\"Manuella Nevoresky\", \"position\":\"Director\"},{\"url\":\"https://goviddo.com/crowdfund/project_related_team_list/team1g1.png\", \"name\":\"Manuella Nevoresky\", \"position\":\"Director\"},{\"url\":\"https://goviddo.com/crowdfund/project_related_team_list/team1g1.png\", \"name\":\"Manuella Nevoresky\", \"position\":\"Director\"},{\"url\":\"https://goviddo.com/crowdfund/project_related_team_list/team1g1.png\", \"name\":\"Manuella Nevoresky\", \"position\":\"Director\"},{\"url\":\"https://goviddo.com/crowdfund/project_related_team_list/team1g1.png\", \"name\":\"Manuella Nevoresky\", \"position\":\"Director\"},{\"url\":\"https://goviddo.com/crowdfund/project_related_team_list/team1g1.png\", \"name\":\"Manuella Nevoresky\", \"position\":\"Director\"},{\"url\":\"https://goviddo.com/crowdfund/project_related_team_list/team1g1.png\", \"name\":\"Manuella Nevoresky\", \"position\":\"Director\"}]', '[https://goviddo.com/crowdfund/project_related_pdf/goviddo_whitepaper%20copy.pdf, https://goviddo.com/crowdfund/project_related_pdf/goviddo_whitepaper%20copy.pdf, https://goviddo.com/crowdfund/project_related_pdf/goviddo_whitepaper%20copy.pdf, https://goviddo.com/crowdfund/project_related_pdf/goviddo_whitepaper%20copy.pdf, https://goviddo.com/crowdfund/project_related_pdf/goviddo_whitepaper%20copy.pdf, https://goviddo.com/crowdfund/project_related_pdf/goviddo_whitepaper%20copy.pdf, https://goviddo.com/crowdfund/project_related_pdf/goviddo_whitepaper%20copy.pdf]', '1900000', '1000000', '38', 2, '2019-12-10 19:16:26', 1, 1),
(10, 2, 'Happy', 'Happy is an extraordinary true story of a small town guy of becoming an entrepreneur. It is also a story of self-discovery, overcoming all the financial odds and stereotypes in the society. Happy is a lighthearted, feel-good, tearjerker drama.', 'bussiness', 'https://goviddo.com/crowdfund/img/happy_logo.jpeg', 'https://goviddo.com/crowdfund/project_images/81246_banner_1577044921.png', 'Happy is an extraordinary true story of a small town guy of becoming an entrepreneur. It is also a story of self-discovery, overcoming all the financial odds and stereotypes in the society. Happy is a lighthearted, feel-good, tearjerker drama.', 'https://vimeo.com/380886915', '[{\"url\":\"https://goviddo.com/crowdfund/project_related_team_list/team1g1.png\", \"name\":\"Manuella Nevoresky\", \"position\":\"Director\"},{\"url\":\"https://goviddo.com/crowdfund/project_related_team_list/team1g1.png\", \"name\":\"Manuella Nevoresky\", \"position\":\"Director\"},{\"url\":\"https://goviddo.com/crowdfund/project_related_team_list/team1g1.png\", \"name\":\"Manuella Nevoresky\", \"position\":\"Director\"},{\"url\":\"https://goviddo.com/crowdfund/project_related_team_list/team1g1.png\", \"name\":\"Manuella Nevoresky\", \"position\":\"Director\"},{\"url\":\"https://goviddo.com/crowdfund/project_related_team_list/team1g1.png\", \"name\":\"Manuella Nevoresky\", \"position\":\"Director\"},{\"url\":\"https://goviddo.com/crowdfund/project_related_team_list/team1g1.png\", \"name\":\"Manuella Nevoresky\", \"position\":\"Director\"},{\"url\":\"https://goviddo.com/crowdfund/project_related_team_list/team1g1.png\", \"name\":\"Manuella Nevoresky\", \"position\":\"Director\"},{\"url\":\"https://goviddo.com/crowdfund/project_related_team_list/team1g1.png\", \"name\":\"Manuella Nevoresky\", \"position\":\"Director\"}]', '[https://goviddo.com/crowdfund/project_related_pdf/goviddo_whitepaper%20copy.pdf, https://goviddo.com/crowdfund/project_related_pdf/goviddo_whitepaper%20copy.pdf, https://goviddo.com/crowdfund/project_related_pdf/goviddo_whitepaper%20copy.pdf, https://goviddo.com/crowdfund/project_related_pdf/goviddo_whitepaper%20copy.pdf, https://goviddo.com/crowdfund/project_related_pdf/goviddo_whitepaper%20copy.pdf, https://goviddo.com/crowdfund/project_related_pdf/goviddo_whitepaper%20copy.pdf, https://goviddo.com/crowdfund/project_related_pdf/goviddo_whitepaper%20copy.pdf]', '1900000', '1000000', '38', 1, '2019-12-10 19:16:26', 1, 1),
(11, 2, 'Happy', 'Happy is an extraordinary true story of a small town guy of becoming an entrepreneur. It is also a story of self-discovery, overcoming all the financial odds and stereotypes in the society. Happy is a lighthearted, feel-good, tearjerker drama.', 'bussiness', 'https://goviddo.com/crowdfund/img/happy_logo.jpeg', 'https://goviddo.com/crowdfund/project_images/81246_banner_1577044921.png', 'Happy is an extraordinary true story of a small town guy of becoming an entrepreneur. It is also a story of self-discovery, overcoming all the financial odds and stereotypes in the society. Happy is a lighthearted, feel-good, tearjerker drama.', 'https://vimeo.com/380886915', '[{\"url\":\"https://goviddo.com/crowdfund/project_related_team_list/team1g1.png\", \"name\":\"Manuella Nevoresky\", \"position\":\"Director\"},{\"url\":\"https://goviddo.com/crowdfund/project_related_team_list/team1g1.png\", \"name\":\"Manuella Nevoresky\", \"position\":\"Director\"},{\"url\":\"https://goviddo.com/crowdfund/project_related_team_list/team1g1.png\", \"name\":\"Manuella Nevoresky\", \"position\":\"Director\"},{\"url\":\"https://goviddo.com/crowdfund/project_related_team_list/team1g1.png\", \"name\":\"Manuella Nevoresky\", \"position\":\"Director\"},{\"url\":\"https://goviddo.com/crowdfund/project_related_team_list/team1g1.png\", \"name\":\"Manuella Nevoresky\", \"position\":\"Director\"},{\"url\":\"https://goviddo.com/crowdfund/project_related_team_list/team1g1.png\", \"name\":\"Manuella Nevoresky\", \"position\":\"Director\"},{\"url\":\"https://goviddo.com/crowdfund/project_related_team_list/team1g1.png\", \"name\":\"Manuella Nevoresky\", \"position\":\"Director\"},{\"url\":\"https://goviddo.com/crowdfund/project_related_team_list/team1g1.png\", \"name\":\"Manuella Nevoresky\", \"position\":\"Director\"}]', '[https://goviddo.com/crowdfund/project_related_pdf/goviddo_whitepaper%20copy.pdf, https://goviddo.com/crowdfund/project_related_pdf/goviddo_whitepaper%20copy.pdf, https://goviddo.com/crowdfund/project_related_pdf/goviddo_whitepaper%20copy.pdf, https://goviddo.com/crowdfund/project_related_pdf/goviddo_whitepaper%20copy.pdf, https://goviddo.com/crowdfund/project_related_pdf/goviddo_whitepaper%20copy.pdf, https://goviddo.com/crowdfund/project_related_pdf/goviddo_whitepaper%20copy.pdf, https://goviddo.com/crowdfund/project_related_pdf/goviddo_whitepaper%20copy.pdf]', '1900000', '1000000', '38', 1, '2019-12-10 19:16:26', 1, 1),
(12, 2, 'Happy', 'Happy is an extraordinary true story of a small town guy of becoming an entrepreneur. It is also a story of self-discovery, overcoming all the financial odds and stereotypes in the society. Happy is a lighthearted, feel-good, tearjerker drama.', 'individual', 'https://goviddo.com/crowdfund/img/happy_logo.jpeg', 'https://goviddo.com/crowdfund/project_images/81246_banner_1577044921.png', 'Happy is an extraordinary true story of a small town guy of becoming an entrepreneur. It is also a story of self-discovery, overcoming all the financial odds and stereotypes in the society. Happy is a lighthearted, feel-good, tearjerker drama.', 'https://vimeo.com/380886915', '[{\"url\":\"https://goviddo.com/crowdfund/project_related_team_list/team1g1.png\", \"name\":\"Manuella Nevoresky\", \"position\":\"Director\"},{\"url\":\"https://goviddo.com/crowdfund/project_related_team_list/team1g1.png\", \"name\":\"Manuella Nevoresky\", \"position\":\"Director\"},{\"url\":\"https://goviddo.com/crowdfund/project_related_team_list/team1g1.png\", \"name\":\"Manuella Nevoresky\", \"position\":\"Director\"},{\"url\":\"https://goviddo.com/crowdfund/project_related_team_list/team1g1.png\", \"name\":\"Manuella Nevoresky\", \"position\":\"Director\"},{\"url\":\"https://goviddo.com/crowdfund/project_related_team_list/team1g1.png\", \"name\":\"Manuella Nevoresky\", \"position\":\"Director\"},{\"url\":\"https://goviddo.com/crowdfund/project_related_team_list/team1g1.png\", \"name\":\"Manuella Nevoresky\", \"position\":\"Director\"},{\"url\":\"https://goviddo.com/crowdfund/project_related_team_list/team1g1.png\", \"name\":\"Manuella Nevoresky\", \"position\":\"Director\"},{\"url\":\"https://goviddo.com/crowdfund/project_related_team_list/team1g1.png\", \"name\":\"Manuella Nevoresky\", \"position\":\"Director\"}]', '[https://goviddo.com/crowdfund/project_related_pdf/goviddo_whitepaper%20copy.pdf, https://goviddo.com/crowdfund/project_related_pdf/goviddo_whitepaper%20copy.pdf, https://goviddo.com/crowdfund/project_related_pdf/goviddo_whitepaper%20copy.pdf, https://goviddo.com/crowdfund/project_related_pdf/goviddo_whitepaper%20copy.pdf, https://goviddo.com/crowdfund/project_related_pdf/goviddo_whitepaper%20copy.pdf, https://goviddo.com/crowdfund/project_related_pdf/goviddo_whitepaper%20copy.pdf, https://goviddo.com/crowdfund/project_related_pdf/goviddo_whitepaper%20copy.pdf]', '1900000', '1000000', '38', 3, '2019-12-10 19:16:26', 1, 1),
(13, 2, 'Happy', 'Happy is an extraordinary true story of a small town guy of becoming an entrepreneur. It is also a story of self-discovery, overcoming all the financial odds and stereotypes in the society. Happy is a lighthearted, feel-good, tearjerker drama.', 'individual', 'https://goviddo.com/crowdfund/img/happy_logo.jpeg', 'https://goviddo.com/crowdfund/project_images/81246_banner_1577044921.png', 'Happy is an extraordinary true story of a small town guy of becoming an entrepreneur. It is also a story of self-discovery, overcoming all the financial odds and stereotypes in the society. Happy is a lighthearted, feel-good, tearjerker drama.', 'https://vimeo.com/380886915', '[{\"url\":\"https://goviddo.com/crowdfund/project_related_team_list/team1g1.png\", \"name\":\"Manuella Nevoresky\", \"position\":\"Director\"},{\"url\":\"https://goviddo.com/crowdfund/project_related_team_list/team1g1.png\", \"name\":\"Manuella Nevoresky\", \"position\":\"Director\"},{\"url\":\"https://goviddo.com/crowdfund/project_related_team_list/team1g1.png\", \"name\":\"Manuella Nevoresky\", \"position\":\"Director\"},{\"url\":\"https://goviddo.com/crowdfund/project_related_team_list/team1g1.png\", \"name\":\"Manuella Nevoresky\", \"position\":\"Director\"},{\"url\":\"https://goviddo.com/crowdfund/project_related_team_list/team1g1.png\", \"name\":\"Manuella Nevoresky\", \"position\":\"Director\"},{\"url\":\"https://goviddo.com/crowdfund/project_related_team_list/team1g1.png\", \"name\":\"Manuella Nevoresky\", \"position\":\"Director\"},{\"url\":\"https://goviddo.com/crowdfund/project_related_team_list/team1g1.png\", \"name\":\"Manuella Nevoresky\", \"position\":\"Director\"},{\"url\":\"https://goviddo.com/crowdfund/project_related_team_list/team1g1.png\", \"name\":\"Manuella Nevoresky\", \"position\":\"Director\"}]', '[https://goviddo.com/crowdfund/project_related_pdf/goviddo_whitepaper%20copy.pdf, https://goviddo.com/crowdfund/project_related_pdf/goviddo_whitepaper%20copy.pdf, https://goviddo.com/crowdfund/project_related_pdf/goviddo_whitepaper%20copy.pdf, https://goviddo.com/crowdfund/project_related_pdf/goviddo_whitepaper%20copy.pdf, https://goviddo.com/crowdfund/project_related_pdf/goviddo_whitepaper%20copy.pdf, https://goviddo.com/crowdfund/project_related_pdf/goviddo_whitepaper%20copy.pdf, https://goviddo.com/crowdfund/project_related_pdf/goviddo_whitepaper%20copy.pdf]', '1900000', '1000000', '38', 1, '2019-12-10 19:16:26', 1, 1),
(14, 2, 'Happy', 'Happy is an extraordinary true story of a small town guy of becoming an entrepreneur. It is also a story of self-discovery, overcoming all the financial odds and stereotypes in the society. Happy is a lighthearted, feel-good, tearjerker drama.', 'individual', 'https://goviddo.com/crowdfund/img/happy_logo.jpeg', 'https://goviddo.com/crowdfund/project_images/81246_banner_1577044921.png', 'Happy is an extraordinary true story of a small town guy of becoming an entrepreneur. It is also a story of self-discovery, overcoming all the financial odds and stereotypes in the society. Happy is a lighthearted, feel-good, tearjerker drama.', 'https://vimeo.com/380886915', '[{\"url\":\"https://goviddo.com/crowdfund/project_related_team_list/team1g1.png\", \"name\":\"Manuella Nevoresky\", \"position\":\"Director\"},{\"url\":\"https://goviddo.com/crowdfund/project_related_team_list/team1g1.png\", \"name\":\"Manuella Nevoresky\", \"position\":\"Director\"},{\"url\":\"https://goviddo.com/crowdfund/project_related_team_list/team1g1.png\", \"name\":\"Manuella Nevoresky\", \"position\":\"Director\"},{\"url\":\"https://goviddo.com/crowdfund/project_related_team_list/team1g1.png\", \"name\":\"Manuella Nevoresky\", \"position\":\"Director\"},{\"url\":\"https://goviddo.com/crowdfund/project_related_team_list/team1g1.png\", \"name\":\"Manuella Nevoresky\", \"position\":\"Director\"},{\"url\":\"https://goviddo.com/crowdfund/project_related_team_list/team1g1.png\", \"name\":\"Manuella Nevoresky\", \"position\":\"Director\"},{\"url\":\"https://goviddo.com/crowdfund/project_related_team_list/team1g1.png\", \"name\":\"Manuella Nevoresky\", \"position\":\"Director\"},{\"url\":\"https://goviddo.com/crowdfund/project_related_team_list/team1g1.png\", \"name\":\"Manuella Nevoresky\", \"position\":\"Director\"}]', '[https://goviddo.com/crowdfund/project_related_pdf/goviddo_whitepaper%20copy.pdf, https://goviddo.com/crowdfund/project_related_pdf/goviddo_whitepaper%20copy.pdf, https://goviddo.com/crowdfund/project_related_pdf/goviddo_whitepaper%20copy.pdf, https://goviddo.com/crowdfund/project_related_pdf/goviddo_whitepaper%20copy.pdf, https://goviddo.com/crowdfund/project_related_pdf/goviddo_whitepaper%20copy.pdf, https://goviddo.com/crowdfund/project_related_pdf/goviddo_whitepaper%20copy.pdf, https://goviddo.com/crowdfund/project_related_pdf/goviddo_whitepaper%20copy.pdf]', '1900000', '1000000', '38', 1, '2019-12-10 19:16:26', 1, 1),
(15, 2, 'Happy', 'Happy is an extraordinary true story of a small town guy of becoming an entrepreneur. It is also a story of self-discovery, overcoming all the financial odds and stereotypes in the society. Happy is a lighthearted, feel-good, tearjerker drama.', 'organization', 'https://goviddo.com/crowdfund/img/happy_logo.jpeg', 'https://goviddo.com/crowdfund/project_images/81246_banner_1577044921.png', 'Happy is an extraordinary true story of a small town guy of becoming an entrepreneur. It is also a story of self-discovery, overcoming all the financial odds and stereotypes in the society. Happy is a lighthearted, feel-good, tearjerker drama.', 'https://vimeo.com/380886915', '[{\"url\":\"https://goviddo.com/crowdfund/project_related_team_list/team1g1.png\", \"name\":\"Manuella Nevoresky\", \"position\":\"Director\"},{\"url\":\"https://goviddo.com/crowdfund/project_related_team_list/team1g1.png\", \"name\":\"Manuella Nevoresky\", \"position\":\"Director\"},{\"url\":\"https://goviddo.com/crowdfund/project_related_team_list/team1g1.png\", \"name\":\"Manuella Nevoresky\", \"position\":\"Director\"},{\"url\":\"https://goviddo.com/crowdfund/project_related_team_list/team1g1.png\", \"name\":\"Manuella Nevoresky\", \"position\":\"Director\"},{\"url\":\"https://goviddo.com/crowdfund/project_related_team_list/team1g1.png\", \"name\":\"Manuella Nevoresky\", \"position\":\"Director\"},{\"url\":\"https://goviddo.com/crowdfund/project_related_team_list/team1g1.png\", \"name\":\"Manuella Nevoresky\", \"position\":\"Director\"},{\"url\":\"https://goviddo.com/crowdfund/project_related_team_list/team1g1.png\", \"name\":\"Manuella Nevoresky\", \"position\":\"Director\"},{\"url\":\"https://goviddo.com/crowdfund/project_related_team_list/team1g1.png\", \"name\":\"Manuella Nevoresky\", \"position\":\"Director\"}]', '[https://goviddo.com/crowdfund/project_related_pdf/goviddo_whitepaper%20copy.pdf, https://goviddo.com/crowdfund/project_related_pdf/goviddo_whitepaper%20copy.pdf, https://goviddo.com/crowdfund/project_related_pdf/goviddo_whitepaper%20copy.pdf, https://goviddo.com/crowdfund/project_related_pdf/goviddo_whitepaper%20copy.pdf, https://goviddo.com/crowdfund/project_related_pdf/goviddo_whitepaper%20copy.pdf, https://goviddo.com/crowdfund/project_related_pdf/goviddo_whitepaper%20copy.pdf, https://goviddo.com/crowdfund/project_related_pdf/goviddo_whitepaper%20copy.pdf]', '1900000', '1000000', '38', 1, '2019-12-10 19:16:26', 1, 1),
(16, 2, 'Happy', 'Happy is an extraordinary true story of a small town guy of becoming an entrepreneur. It is also a story of self-discovery, overcoming all the financial odds and stereotypes in the society. Happy is a lighthearted, feel-good, tearjerker drama.', 'bussiness', 'https://goviddo.com/crowdfund/img/happy_logo.jpeg', 'https://goviddo.com/crowdfund/project_images/81246_banner_1577044921.png', 'Happy is an extraordinary true story of a small town guy of becoming an entrepreneur. It is also a story of self-discovery, overcoming all the financial odds and stereotypes in the society. Happy is a lighthearted, feel-good, tearjerker drama.', 'https://vimeo.com/380886915', '[{\"url\":\"https://goviddo.com/crowdfund/project_related_team_list/team1g1.png\", \"name\":\"Manuella Nevoresky\", \"position\":\"Director\"},{\"url\":\"https://goviddo.com/crowdfund/project_related_team_list/team1g1.png\", \"name\":\"Manuella Nevoresky\", \"position\":\"Director\"},{\"url\":\"https://goviddo.com/crowdfund/project_related_team_list/team1g1.png\", \"name\":\"Manuella Nevoresky\", \"position\":\"Director\"},{\"url\":\"https://goviddo.com/crowdfund/project_related_team_list/team1g1.png\", \"name\":\"Manuella Nevoresky\", \"position\":\"Director\"},{\"url\":\"https://goviddo.com/crowdfund/project_related_team_list/team1g1.png\", \"name\":\"Manuella Nevoresky\", \"position\":\"Director\"},{\"url\":\"https://goviddo.com/crowdfund/project_related_team_list/team1g1.png\", \"name\":\"Manuella Nevoresky\", \"position\":\"Director\"},{\"url\":\"https://goviddo.com/crowdfund/project_related_team_list/team1g1.png\", \"name\":\"Manuella Nevoresky\", \"position\":\"Director\"},{\"url\":\"https://goviddo.com/crowdfund/project_related_team_list/team1g1.png\", \"name\":\"Manuella Nevoresky\", \"position\":\"Director\"}]', '[https://goviddo.com/crowdfund/project_related_pdf/goviddo_whitepaper%20copy.pdf, https://goviddo.com/crowdfund/project_related_pdf/goviddo_whitepaper%20copy.pdf, https://goviddo.com/crowdfund/project_related_pdf/goviddo_whitepaper%20copy.pdf, https://goviddo.com/crowdfund/project_related_pdf/goviddo_whitepaper%20copy.pdf, https://goviddo.com/crowdfund/project_related_pdf/goviddo_whitepaper%20copy.pdf, https://goviddo.com/crowdfund/project_related_pdf/goviddo_whitepaper%20copy.pdf, https://goviddo.com/crowdfund/project_related_pdf/goviddo_whitepaper%20copy.pdf]', '1900000', '1000000', '38', 1, '2019-12-10 19:16:26', 1, 1),
(30, 12, 'Test', 'Test', 'individual', 'https://goviddo.com/crowdfund/project_logos/89529_logo_1577533415.jpg', 'https://goviddo.com/crowdfund/project_images/84648_banner_1577533570.jpg', 'Test', 'test.com', '[{\"url\":\"https://goviddo.com/crowdfund/project_related_team_list/76072_team_1577533654.jpg\",\"name\":\"CL\",\"position\":\"Director\"}]', '[\"https://goviddo.com/crowdfund/project_related_pdf/39561_pitch_1577533495.pdf\"]', '50', '0', '0', 1, '2019-12-28 11:49:07', 1, 1),
(36, 10, 'The Great Maratha', 'The Great Maratha is story of Maratha Empire which was founded by Chatrapati Shivaji Raje Bhosale and came to rise in 18th century under Nanasaheb Peshva and collapsed in early 19th century after third battle of Panipat and after that British Raj rule established in Inda  ', 'organization', 'https://goviddo.com/crowdfund/project_logos/77710_logo_1578724151.jpg', 'https://goviddo.com/crowdfund/project_images/39405_banner_1578724335.jpg', 'The Great Maratha', 'https://vimeo.com/372988843', '[{\"url\":\"https://goviddo.com/crowdfund/project_related_team_list/28719_team_1578724522.jpg\",\"name\":\"Pratik Shelar\",\"position\":\"Director\"}]', '[\"https://goviddo.com/crowdfund/project_related_pdf/83623_pitch_1578724323.pdf\",\"https://goviddo.com/crowdfund/project_related_pdf/67328_pitch_1578724436.pdf\",\"https://goviddo.com/crowdfund/project_related_pdf/27453_pitch_1578724443.pdf\",\"https://goviddo.com/crowdfund/project_related_pdf/49436_pitch_1578724452.pdf\",\"https://goviddo.com/crowdfund/project_related_pdf/57972_pitch_1578724459.pdf\"]', '100000', '0', '0', 4, '2020-01-11 06:38:28', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `crowdfund_user_details`
--

CREATE TABLE `crowdfund_user_details` (
  `crowdfun_user_id` int(11) NOT NULL,
  `crowd_fund_user_full_name` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `crowdfund_user_email` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `crowdfund_user_password` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `crowdfund_user_dob` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `crowdfund_user_type` int(11) NOT NULL COMMENT '1 - project holder, 2 - invester',
  `eos_wallet_name` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `crowdfund_user_account_status` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `crowdfund_user_details`
--

INSERT INTO `crowdfund_user_details` (`crowdfun_user_id`, `crowd_fund_user_full_name`, `crowdfund_user_email`, `crowdfund_user_password`, `crowdfund_user_dob`, `crowdfund_user_type`, `eos_wallet_name`, `crowdfund_user_account_status`) VALUES
(2, 'Imran Mulani', 'imran2@goviddo.com', '123456', '1992-10-18', 1, NULL, 1),
(6, 'Ajit sabnis', 'ajitnetwork@gmail.com', 'Contact@GoViddo', '1977-03-29', 1, NULL, 1),
(7, 'Poonam Sarwagod', 'pakasabe@gmail.com', 'Poonam', '0023-12-18', 1, NULL, 1),
(8, 'Abhijit', 'paksabe@gmail.com', 'Poonam', '2004-12-31', 1, NULL, 1),
(10, 'Nathan', 'Pratik@GoViddo.com', 'Wasim12*', '2003-01-01', 1, NULL, 1),
(11, 'Imran Mulani', 'imrann1@gmail.com', '12345', '1992-10-18', 1, NULL, 1),
(12, 'Chitrarth', 'chitrarth@goviddo.com', 'Renau!t512GoViddo', '1992-12-05', 1, NULL, 1),
(13, 'Imran Mulani', 'imran1@goviddo.com', '123456', '1992-10-18', 1, 'abcd1234', 1),
(14, 'Imran', 'imran@goviddo.com', '123456', '1992-10-18', 1, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `crowd_funding_category_list`
--

CREATE TABLE `crowd_funding_category_list` (
  `crowd_fund_cat_id` int(255) NOT NULL,
  `crowd_funding_category_name` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `crowd_fund_cat_status` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `crowd_funding_category_list`
--

INSERT INTO `crowd_funding_category_list` (`crowd_fund_cat_id`, `crowd_funding_category_name`, `crowd_fund_cat_status`) VALUES
(1, 'Comedy', 1),
(2, 'Horror', 1),
(3, 'Thriller', 1),
(4, 'Adventure', 1),
(5, 'Science Fiction', 1),
(6, 'Documentary', 1),
(7, 'Animation', 1);

-- --------------------------------------------------------

--
-- Table structure for table `invested_in`
--

CREATE TABLE `invested_in` (
  `id` int(255) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(255) NOT NULL,
  `pitch_id` int(255) NOT NULL,
  `item_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `item_number` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `paid_amount` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `paid_amount_currency` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `txn_id` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `customer_id_from_paypal` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment_status` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `invested_in`
--

INSERT INTO `invested_in` (`id`, `name`, `email`, `user_id`, `pitch_id`, `item_name`, `item_number`, `paid_amount`, `paid_amount_currency`, `txn_id`, `customer_id_from_paypal`, `payment_status`, `created`, `modified`) VALUES
(1, 'Imran Mulani', 'imran@gmail.com', 2, 1, 'Invested in Pitch ID - 1', 'P123456', '150.00', 'GBP', '3BL15182A5805193C', NULL, 'SUCCESS', '2019-12-20 18:41:34', '2019-12-20 18:41:34'),
(2, 'Imran Mulani', 'imran@gmail.com', 2, 1, 'Invested in Pitch ID - 1', 'P123456', '15000.00', 'GBP', '6W613012JN840571C', NULL, 'SUCCESS', '2019-12-20 18:47:21', '2019-12-20 18:47:21'),
(3, 'Imran Mulani', 'imran@gmail.com', 2, 1, 'Invested in Pitch ID - 1', 'P123456', '15000.00', 'GBP', '40M43125T81431317', NULL, 'SUCCESS', '2019-12-20 18:48:25', '2019-12-20 18:48:25'),
(4, '', 'imran2@goviddo.com', 2, 2, 'Invested in Pitch ID - 2', 'P123456', '12', 'EUR', 'dgrqxzjk', NULL, 'Success', '2020-01-20 07:13:28', '2020-01-20 07:13:28'),
(5, 'Imran Mulani', 'imran2@goviddo.com', 2, 2, 'Invested in Pitch ID - 2', 'P123456', '15', 'EUR', 'hvgggv60', '840743391', 'Success', '2020-01-20 07:19:11', '2020-01-20 07:19:11'),
(6, 'Imran Mulani', 'imran2@goviddo.com', 2, 2, 'Invested in Pitch ID - 2', 'P123456', '15', 'EUR', '8fv6j5pa', '563396929', 'Success', '2020-01-20 07:21:03', '2020-01-20 07:21:03'),
(7, 'Imran Mulani', 'imran2@goviddo.com', 2, 2, 'Invested in Pitch ID - 2', 'P123456', '15', 'EUR', 'e9tc6aqb', '252619259', 'Success', '2020-01-20 07:22:57', '2020-01-20 07:22:57');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` int(11) NOT NULL,
  `item_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `item_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `payment_status` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `payment_amount` double(10,2) NOT NULL,
  `payment_currency` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `txn_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `series_details_table`
--

CREATE TABLE `series_details_table` (
  `series_id` int(255) NOT NULL,
  `series_name` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `series_description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `series_home_image` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `series_banner_image` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `series_launch_date` date DEFAULT NULL,
  `series_end_date` date DEFAULT NULL,
  `series_status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '0 - notvisible, 1- visible'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `series_details_table`
--

INSERT INTO `series_details_table` (`series_id`, `series_name`, `series_description`, `series_home_image`, `series_banner_image`, `series_launch_date`, `series_end_date`, `series_status`) VALUES
(1, 'GoViddo', 'Test', NULL, NULL, '2019-08-01', '2019-08-31', 1),
(2, 'GoViddo 2', 'Test2', NULL, NULL, '2019-08-01', '2019-08-28', 1);

-- --------------------------------------------------------

--
-- Table structure for table `series_season_details_table`
--

CREATE TABLE `series_season_details_table` (
  `season_table_id` int(255) NOT NULL,
  `series_number` int(255) NOT NULL,
  `season_name` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `season_home_image` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `season_number` int(255) NOT NULL,
  `season_description` text COLLATE utf8_unicode_ci NOT NULL,
  `season_launch_date` date DEFAULT NULL,
  `season_end_date` date DEFAULT NULL,
  `season_status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '0 - notvisible, 1- visible'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `series_season_details_table`
--

INSERT INTO `series_season_details_table` (`season_table_id`, `series_number`, `season_name`, `season_home_image`, `season_number`, `season_description`, `season_launch_date`, `season_end_date`, `season_status`) VALUES
(1, 1, 'GoViddo Season 1', NULL, 1, 'sifknjb', '2019-08-01', '2019-08-07', 1),
(2, 1, 'GoViddo Season 2', NULL, 2, 'kfnvkn s', '2019-08-02', '2019-08-21', 1);

-- --------------------------------------------------------

--
-- Table structure for table `share_table`
--

CREATE TABLE `share_table` (
  `sid` int(255) NOT NULL,
  `user_id` int(255) NOT NULL,
  `video_id` int(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `share_table`
--

INSERT INTO `share_table` (`sid`, `user_id`, `video_id`, `status`) VALUES
(21, 138, 62, 1),
(22, 107, 61, 1),
(23, 141, 63, 1),
(24, 106, 56, 1),
(25, 141, 10, 1),
(26, 106, 73, 1);

-- --------------------------------------------------------

--
-- Table structure for table `subscirption_list`
--

CREATE TABLE `subscirption_list` (
  `subsciption_id` int(255) NOT NULL,
  `subscription_channel_id` int(255) NOT NULL,
  `user_id` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `subscirption_list`
--

INSERT INTO `subscirption_list` (`subsciption_id`, `subscription_channel_id`, `user_id`) VALUES
(36, 2, 141),
(38, 2, 143),
(39, 2, 146),
(40, 2, 174),
(41, 2, 106);

-- --------------------------------------------------------

--
-- Table structure for table `user_table`
--

CREATE TABLE `user_table` (
  `user_id` int(255) NOT NULL,
  `first_name` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `email_id` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `eosio_account_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `phone_no` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `birth_date` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_video_choice` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_profile_picture` text COLLATE utf8_unicode_ci DEFAULT 'https://goviddo.com/app/images/go.png',
  `notification_token` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `register_as_advisor` tinyint(4) NOT NULL DEFAULT 0,
  `register_as_producer` tinyint(4) NOT NULL DEFAULT 0,
  `registration_date` datetime NOT NULL DEFAULT current_timestamp(),
  `status` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_table`
--

INSERT INTO `user_table` (`user_id`, `first_name`, `last_name`, `email_id`, `eosio_account_name`, `gender`, `password`, `phone_no`, `birth_date`, `address`, `country`, `user_video_choice`, `user_profile_picture`, `notification_token`, `register_as_advisor`, `register_as_producer`, `registration_date`, `status`) VALUES
(106, 'Imran', 'Mulani', 'imran@gmail.com', 'mulaniimran2', NULL, '1234567', NULL, NULL, NULL, NULL, NULL, 'https://goviddo.com/appimg/ic_launcher_go_app.png', NULL, 0, 0, '2019-03-19 09:27:05', 1),
(107, 'ajay', 'panchal', 'ajay@gmail.com', 'ajay98765432', NULL, 'test123', NULL, NULL, NULL, NULL, NULL, 'https://goviddo.com/appimg/ic_launcher_go_app.png', NULL, 0, 0, '2019-03-19 18:45:34', 1),
(108, 'Nuzha', 'Chanda', 'nuzhachanda@gmail.com', '1234567', NULL, '1234567', NULL, NULL, NULL, NULL, NULL, 'https://goviddo.com/appimg/ic_launcher_go_app.png', NULL, 0, 0, '2019-03-25 07:24:21', 1),
(112, 'shveta', 'khandekar', 'sk@mailinator.com', 'shvetashveta', NULL, 'test123', NULL, NULL, NULL, NULL, NULL, 'https://goviddo.com/appimg/ic_launcher_go_app.png', NULL, 0, 0, '2019-04-13 12:39:48', 1),
(114, 'shveta', 'khandekar', 'sk3@mailinator.com', 'shvetatestbb', NULL, 'test1234', NULL, NULL, NULL, NULL, NULL, 'https://goviddo.com/appimg/ic_launcher_go_app.png', NULL, 0, 0, '2019-04-13 13:52:30', 1),
(115, 'shveta', 'khandekar', 'sk5@mailinator.com', 'shvetatestdd', NULL, 'test1234', NULL, NULL, NULL, NULL, NULL, 'https://goviddo.com/appimg/ic_launcher_go_app.png', NULL, 0, 0, '2019-04-13 13:56:06', 1),
(116, 'shveta', 'khandekar', 'sk6@mailinator.com', 'shvetatestee', NULL, 'test1234', NULL, NULL, NULL, NULL, NULL, 'https://goviddo.com/appimg/ic_launcher_go_app.png', NULL, 0, 0, '2019-04-13 15:02:38', 1),
(119, 'Shveta', 'Khandekar', 'sk7@mailinator.com', 'shvetatestff', NULL, 'test1234', NULL, NULL, NULL, NULL, NULL, 'https://goviddo.com/appimg/ic_launcher_go_app.png', NULL, 0, 0, '2019-04-15 13:08:04', 1),
(138, 'Ajit', 'Sabnis', 'ajitnetwork@gmail.com', 'ajitsabnis12', NULL, 'ajit@goviddo', NULL, NULL, NULL, NULL, NULL, 'https://goviddo.com/appimg/ic_launcher_go_app.png', NULL, 0, 0, '2019-04-28 18:11:56', 1),
(139, 'Chitrarth', 'Lav', 'chitrarth@goviddo.com', 'testnetgmech', NULL, 'Renau!t512GoViddo', NULL, NULL, NULL, NULL, NULL, 'https://goviddo.com/appimg/ic_launcher_go_app.png', NULL, 0, 0, '2019-05-19 12:18:21', 1),
(140, 'Roman', 'Weier', 'romanweier70@gmail.com', 'weier 124382', NULL, 'Roman123', NULL, NULL, NULL, NULL, NULL, 'https://goviddo.com/appimg/ic_launcher_go_app.png', NULL, 0, 0, '2019-06-13 19:03:42', 1),
(141, 'pratik', 'shelar', 'pratik@goviddo.com', 'pratikshelar', NULL, 'pratikshelar', NULL, NULL, NULL, NULL, NULL, 'https://goviddo.com/appimg/ic_launcher_go_app.png', NULL, 0, 0, '2019-06-19 21:01:21', 1),
(142, 'Imran', 'Mulani', 'mulaniimran27@gmail.com', 'imranpower12', NULL, '1234567', NULL, NULL, NULL, NULL, NULL, 'https://goviddo.com/appimg/ic_launcher_go_app.png', NULL, 0, 0, '2019-06-20 03:55:40', 1),
(143, 'Akshay', 'Garje', 'ashgarje10@gmail.com', 'Akshay Garje', NULL, 'Aa@12345', NULL, NULL, NULL, NULL, NULL, 'https://goviddo.com/appimg/ic_launcher_go_app.png', NULL, 0, 0, '2019-06-20 11:50:16', 1),
(174, 'Neha ', 'Mulani', 'nehalmulani2414@gmail.com', 'nehanehaneha', NULL, 'neha2414', NULL, NULL, NULL, NULL, NULL, 'https://goviddo.com/app/images/go.png', NULL, 0, 0, '2019-06-26 10:26:40', 1),
(175, 'Imran', 'Mulani', 'imran97@gmail.com', 'goviddotest1', NULL, '1234567', NULL, NULL, NULL, NULL, NULL, 'https://goviddo.com/app/images/go.png', NULL, 0, 0, '2019-07-07 09:22:07', 1),
(176, 'imran', 'Mulani', 'imrantest1@gmail.com', 'goviddotest1', NULL, '1234567', NULL, NULL, NULL, NULL, NULL, 'https://goviddo.com/app/images/go.png', NULL, 0, 0, '2019-07-07 09:51:50', 1),
(177, 'imran', 'Mulani', 'imrantest2@gmail.com', 'goviddotest2', NULL, '1234567', NULL, NULL, NULL, NULL, NULL, 'https://goviddo.com/app/images/go.png', NULL, 0, 0, '2019-07-07 09:53:44', 1),
(178, 'imran', 'Mulani', 'imrantest3@gmail.com', 'goviddotest3', NULL, '1234567', NULL, NULL, NULL, NULL, NULL, 'https://goviddo.com/app/images/go.png', NULL, 0, 0, '2019-07-07 09:54:48', 1),
(179, 'Imran', 'Mulani', 'imrantest4@gmail.com', 'goviddotest4', NULL, '1234567', NULL, NULL, NULL, NULL, NULL, 'https://goviddo.com/app/images/go.png', NULL, 0, 0, '2019-07-07 10:00:43', 1),
(180, 'Imran', 'Mulani', 'imrantest5@gmail.com', 'goviddotest5', NULL, '1234567', NULL, NULL, NULL, NULL, NULL, 'https://goviddo.com/app/images/go.png', NULL, 0, 0, '2019-07-07 10:01:53', 1),
(181, 'Imran', 'Mulani', 'imrantest6@gmail.com', 'goviddotest6', NULL, '1234567', NULL, NULL, NULL, NULL, NULL, 'https://goviddo.com/app/images/go.png', NULL, 0, 0, '2019-07-07 10:05:22', 1),
(182, 'Imran', 'Mulani', 'imrantest7@gmail.com', 'goviddotest7', NULL, '1234567', NULL, NULL, NULL, NULL, NULL, 'https://goviddo.com/app/images/go.png', NULL, 0, 0, '2019-07-07 10:16:34', 1),
(183, 'Imran', 'Mulani', 'imrantest8@gmail.com', 'goviddotest8', NULL, '1234567', NULL, NULL, NULL, NULL, NULL, 'https://goviddo.com/app/images/go.png', NULL, 0, 0, '2019-07-07 10:17:48', 1),
(184, 'Imran', 'Mulani', 'imrantest9@gmail.com', 'goviddotest9', NULL, '1234567', NULL, NULL, NULL, NULL, NULL, 'https://goviddo.com/app/images/go.png', NULL, 0, 0, '2019-07-07 10:29:46', 1),
(185, 'Imran', 'Mulani', 'imrantest10@gmail.com', 'goviddotes10', NULL, '1234567', NULL, NULL, NULL, NULL, NULL, 'https://goviddo.com/app/images/go.png', NULL, 0, 0, '2019-07-07 10:34:45', 1),
(186, 'Imran', 'Mulani', 'imrantest11@gmail.com', 'goviddotes11', NULL, '1234567', NULL, NULL, NULL, NULL, NULL, 'https://goviddo.com/app/images/go.png', NULL, 0, 0, '2019-07-07 10:37:50', 1),
(187, 'Imran', 'Mulani', 'imrantest12@gmail.com', 'goviddotes12', NULL, '1234567', NULL, NULL, NULL, NULL, NULL, 'https://goviddo.com/app/images/go.png', NULL, 0, 0, '2019-07-07 10:44:51', 1),
(188, 'Imran', 'Mulani', 'imrantest13@gmail.com', 'goviddotes13', NULL, '1234567', NULL, NULL, NULL, NULL, NULL, 'https://goviddo.com/app/images/go.png', NULL, 0, 0, '2019-07-07 10:52:44', 1),
(189, 'Neha', 'Mulani', 'nehamulani2414@gmail.con', 'nehamulani24', NULL, 'neha2414', NULL, NULL, NULL, NULL, NULL, 'https://goviddo.com/app/images/go.png', NULL, 0, 0, '2019-07-22 06:28:24', 1),
(190, 'pramod', 'sinare', 'pramod.sinare@outlook.com', 'dnyandeo1234', NULL, '12345678', NULL, NULL, NULL, NULL, NULL, 'https://goviddo.com/app/images/go.png', NULL, 0, 0, '2019-07-23 08:43:51', 1),
(191, 'Shahid', 'Mulani', 'nehasmulani@gmail.con', 'shahidneha12', NULL, 'shahid123', NULL, NULL, NULL, NULL, NULL, 'https://goviddo.com/app/images/go.png', NULL, 0, 0, '2019-07-23 08:48:45', 1),
(192, 'Ne', 'Mu', 'nehamulani1424@gmail.com', 'nehamulani14', NULL, 'nehamulani', NULL, NULL, NULL, NULL, NULL, 'https://goviddo.com/app/images/go.png', NULL, 0, 0, '2019-08-09 10:42:38', 1),
(193, 'Imran', 'Mulani', 'imran@gov.com', 'imrannnn1234', NULL, '1234567', NULL, NULL, NULL, NULL, NULL, 'https://goviddo.com/app/images/go.png', NULL, 0, 0, '2019-08-16 20:47:03', 1),
(194, 'Imran', 'Mulani', 'imran1@gov.com', 'imrannnn4321', NULL, '1234567', NULL, NULL, NULL, NULL, NULL, 'https://goviddo.com/app/images/go.png', NULL, 0, 0, '2019-08-16 21:11:57', 1),
(195, 'Leena', 'Bhamare', 'leenabhamare2711@gmail.com', 'imrannnnnn12', NULL, '1234567', NULL, NULL, NULL, NULL, NULL, 'https://goviddo.com/app/images/go.png', NULL, 0, 0, '2019-08-16 21:15:53', 1),
(196, 'Pratik', 'Shelar', 'shelarpratik@icloud.com', 'pratikpravin', NULL, 'bulbul12', NULL, NULL, NULL, NULL, NULL, 'https://goviddo.com/app/images/go.png', NULL, 0, 0, '2019-08-17 00:38:02', 1),
(197, 'Bhakti', 'Pingale', 'Bhakti.pingale@gmail.com', 'pingtalksinc', NULL, 'pamela123', NULL, NULL, NULL, NULL, NULL, 'https://goviddo.com/app/images/go.png', NULL, 0, 0, '2019-08-17 18:07:39', 1),
(198, 'Numan', 'Uzun', 'numanuzun1983@gmail.com', 'goviddonuman', NULL, '99230010.Nu', NULL, NULL, NULL, NULL, NULL, 'https://goviddo.com/app/images/go.png', NULL, 0, 0, '2019-08-17 21:42:16', 1),
(199, 'Suat', 'Akpinar', 'cufcuf46@hotmail.com', 'emmiminoglii', NULL, 'Suat718191', NULL, NULL, NULL, NULL, NULL, 'https://goviddo.com/app/images/go.png', NULL, 0, 0, '2019-08-17 22:00:56', 1),
(200, 'byeiso', 'byeiso', 'byeiso11@gmail.com', 'nudonasukosu', NULL, 'Ib3013623g', NULL, NULL, NULL, NULL, NULL, 'https://goviddo.com/app/images/go.png', NULL, 0, 0, '2019-08-17 22:03:42', 1),
(201, 'Ahmet', 'Hayin', 'cikcik_94@hotmail.com', 'webdenolmirr', NULL, 'Suat718191', NULL, NULL, NULL, NULL, NULL, 'https://goviddo.com/app/images/go.png', NULL, 0, 0, '2019-08-17 22:09:00', 1),
(202, 'fevzi', 'fevzi', 'milmakirzi@desoz.com', 'sukonudonasu', NULL, 'Ib3013623g', NULL, NULL, NULL, NULL, NULL, 'https://goviddo.com/app/images/go.png', NULL, 0, 0, '2019-08-17 22:12:38', 1),
(203, 'Firat', 'Yanar', 'sonarcharls@gmail.com', 'suyabiseykoy', NULL, 'heyelan', NULL, NULL, NULL, NULL, NULL, 'https://goviddo.com/app/images/go.png', NULL, 0, 0, '2019-08-17 22:13:09', 1),
(204, 'Kemal', 'Bor', 'fragaja@gmail.com', 'kemalabiiimm', NULL, 'Suat7181', NULL, NULL, NULL, NULL, NULL, 'https://goviddo.com/app/images/go.png', NULL, 0, 0, '2019-08-17 22:15:36', 1),
(205, 'Peki', 'Abi', 'flayks@gmail.com', 'ayyildizteaw', NULL, 'Suat718191', NULL, NULL, NULL, NULL, NULL, 'https://goviddo.com/app/images/go.png', NULL, 0, 0, '2019-08-17 22:18:06', 1),
(206, 'ben', 'taylorgo', 'z5lkx7rz@besttempmail.com', 'gelvatandas1', NULL, 'Ib3013623g', NULL, NULL, NULL, NULL, NULL, 'https://goviddo.com/app/images/go.png', NULL, 0, 0, '2019-08-17 22:18:45', 1),
(207, 'Gaga', 'Guhu', 'Cagag@gmail.com', 'kralbaskan11', NULL, 'Suat718191', NULL, NULL, NULL, NULL, NULL, 'https://goviddo.com/app/images/go.png', NULL, 0, 0, '2019-08-17 22:19:48', 1),
(208, 'sony', 'kendi', 'z5lkx7rz@a4papersize.net', 'haydaahaydaa', NULL, 'Ib3013623g', NULL, NULL, NULL, NULL, NULL, 'https://goviddo.com/app/images/go.png', NULL, 0, 0, '2019-08-17 22:20:57', 1),
(209, 'Hshs', 'Ajaha', 'gaha@gmail.com', 'yalanimyokkk', NULL, 'Suat718191', NULL, NULL, NULL, NULL, NULL, 'https://goviddo.com/app/images/go.png', NULL, 0, 0, '2019-08-17 22:21:56', 1),
(210, 'Usjs', 'Shshs', 'hshshs@gmail.com', 'ehyaniidare1', NULL, 'Suat718191', NULL, NULL, NULL, NULL, NULL, 'https://goviddo.com/app/images/go.png', NULL, 0, 0, '2019-08-17 22:23:24', 1),
(211, 'Imran', 'Mulani', 'imrangm@gmail.com', 'mulaninimran', NULL, '1234567', NULL, NULL, NULL, NULL, NULL, 'https://goviddo.com/app/images/go.png', NULL, 0, 0, '2019-08-19 18:08:04', 1),
(212, 'Imran', 'Mulani', 'imrannn@gmail.com', 'mulaniimram2', NULL, '1234567', NULL, NULL, NULL, NULL, NULL, 'https://goviddo.com/app/images/go.png', NULL, 0, 0, '2019-08-20 04:36:26', 1),
(213, 'Imran', 'Mulani', 'imrannn1@gmail.com', 'nnimrann1234', NULL, '1234567', NULL, NULL, NULL, NULL, NULL, 'https://goviddo.com/app/images/go.png', NULL, 0, 0, '2019-08-20 04:40:02', 1),
(214, 'Imran', 'Mulani', 'imranm@gmail.com', 'nnimrannn123', NULL, '1234567', NULL, NULL, NULL, NULL, NULL, 'https://goviddo.com/app/images/go.png', NULL, 0, 0, '2019-08-20 04:49:25', 1),
(215, 'Imran', 'Mulani', 'imranmm@gmail.com', 'nnimrannnn12', NULL, '1234567', NULL, NULL, NULL, NULL, NULL, 'https://goviddo.com/app/images/go.png', NULL, 0, 0, '2019-08-20 04:51:36', 1),
(216, 'Imran', 'Mulani', 'imran20@gmail.com', 'imrannimran2', NULL, '1234567', NULL, NULL, NULL, NULL, NULL, 'https://goviddo.com/app/images/go.png', NULL, 0, 0, '2019-08-20 05:01:44', 1),
(217, 'Imran', 'Mulani', 'mulani1@gmail.com', 'mulaninnnn12', NULL, '1234567', NULL, NULL, NULL, NULL, NULL, 'https://goviddo.com/app/images/go.png', NULL, 0, 0, '2019-08-21 04:01:07', 1),
(218, 'Neha', 'Mulani', 'nehamulani24@gmail.com', 'shahidmulani', NULL, 'nehamulani24', NULL, NULL, NULL, NULL, NULL, 'https://goviddo.com/app/images/go.png', NULL, 0, 0, '2019-08-21 04:42:01', 1),
(219, 'poonam', 'kasabe', 'pakasabe@gmail.com', 'punamabhijit', NULL, 'goviddo19', NULL, NULL, NULL, NULL, NULL, 'https://goviddo.com/app/images/go.png', NULL, 0, 0, '2019-08-21 08:45:34', 1),
(220, 'Abhijit', 'Sarwgod', 'pabasabe@gmail.com', 'sarwgodabhij', NULL, 'abhijit', NULL, NULL, NULL, NULL, NULL, 'https://goviddo.com/app/images/go.png', NULL, 0, 0, '2019-08-21 08:50:55', 1),
(221, 'Imran', 'Mulani', 'imrand@gmail.com', 'imrantest321', NULL, '1234567', NULL, NULL, NULL, NULL, NULL, 'https://goviddo.com/app/images/go.png', NULL, 0, 0, '2019-08-21 13:43:18', 1),
(222, 'poonam', 'Sarwagod', 'pakabe@gmail.com', 'sarwagodpoon', NULL, '1234567', NULL, NULL, NULL, NULL, NULL, 'https://goviddo.com/app/images/go.png', NULL, 0, 0, '2019-08-22 14:09:05', 1),
(223, 'Pratik', 'Shelar', 'Pratikshelar12@yahoo.com', 'pratikshelar', NULL, 'dianapratik', NULL, NULL, NULL, NULL, NULL, 'https://goviddo.com/app/images/go.png', NULL, 0, 0, '2019-08-23 04:38:14', 1),
(225, 'Vishal ', 'Adsul', 'adsulvishals1@gmail.com', 'vishalads123', NULL, 'vvssaa135', NULL, NULL, NULL, NULL, NULL, 'https://goviddo.com/app/images/go.png', NULL, 0, 0, '2019-08-23 18:01:09', 1),
(226, 'Brahma', 'Peram', 'Smiledent7@hotmail.com', 'abcdef123456', NULL, 'angle77', NULL, NULL, NULL, NULL, NULL, 'https://goviddo.com/app/images/go.png', NULL, 0, 0, '2019-08-24 20:24:13', 1),
(230, 'Poonam', 'Sarwagod', 'Nirmohi@gmail.com', 'nirmohipunam', NULL, '1234567', NULL, NULL, NULL, NULL, NULL, 'https://goviddo.com/app/images/go.png', NULL, 0, 0, '2019-08-25 17:42:40', 1),
(231, 'Pradeep', 'Waghela ', 'waghelapradeep10@gmail.com', 'pradeep31104', NULL, 'pradeep@1994', NULL, NULL, NULL, NULL, NULL, 'https://goviddo.com/app/images/go.png', NULL, 0, 0, '2019-08-25 18:03:35', 1),
(232, 'Shveta', 'Khandekar', 'shveta26082018@mailinator.com', 'wallettestaa', NULL, 'test1234', NULL, NULL, NULL, NULL, NULL, 'https://goviddo.com/app/images/go.png', NULL, 0, 0, '2019-08-26 07:54:17', 1),
(233, 'Shveta', 'Khandekar', 'shveta26082019@mailinator.com', 'wallettestbb', NULL, 'test1234', NULL, NULL, NULL, NULL, NULL, 'https://goviddo.com/app/images/go.png', NULL, 0, 0, '2019-08-26 08:05:58', 1),
(235, 'Imu', 'Igm', 'imrantest12345@gmail.com', 'igmigmigmnn1', NULL, '1234567', NULL, NULL, NULL, NULL, NULL, 'https://goviddo.com/app/images/go.png', NULL, 0, 0, '2019-08-26 13:32:34', 1),
(237, 'Imran', 'Mulani', 'mulaniimran.entc@gmail.com', 'imranoct1234', NULL, '1234567', NULL, NULL, NULL, NULL, NULL, 'https://goviddo.com/app/images/go.png', NULL, 0, 0, '2019-08-26 13:51:24', 1),
(238, 'Imran', 'Mulani', 'mulaniimran.mpsc@gmail.com', 'imranoct1235', NULL, '1234567', NULL, NULL, NULL, NULL, NULL, 'https://goviddo.com/app/images/go.png', NULL, 0, 0, '2019-08-26 13:54:29', 1),
(243, 'Diana', 'Gaju', 'dianapratik@gmail.com', 'dianapratik1', NULL, 'dianapratik', NULL, NULL, NULL, NULL, NULL, 'https://goviddo.com/app/images/go.png', NULL, 0, 0, '2019-08-27 10:32:13', 1),
(244, 'Rahul', 'Hajare ', 'rahul.hajare@hotmail.com', 'rahulhajaree', NULL, 'Monash1331', NULL, NULL, NULL, NULL, NULL, 'https://goviddo.com/app/images/go.png', NULL, 0, 0, '2019-08-27 12:34:41', 1),
(245, 'Shrikant', 'Kinhikar ', 'shrikant.kinhikar@gmail.com', 'shrikantkins', NULL, 'ashrikins10$', NULL, NULL, NULL, NULL, NULL, 'https://goviddo.com/app/images/go.png', NULL, 0, 0, '2019-08-27 17:54:25', 1),
(246, 'Sagar', 'Patel', 'patelsagarv@gmail.com', 'sagarpatel23', NULL, 'Vista2312', NULL, NULL, NULL, NULL, NULL, 'https://goviddo.com/app/images/go.png', NULL, 0, 0, '2019-08-28 10:44:51', 1),
(247, 'Supriya', '1234', 'Supriya@yahoo.com', 'amanamanaman', NULL, '1234567', NULL, NULL, NULL, NULL, NULL, 'https://goviddo.com/app/images/go.png', NULL, 0, 0, '2019-08-28 11:33:11', 1),
(248, 'Poonam', '12345', 'Pooja@gmail.com', 'bmanbmanbman', NULL, '1234567', NULL, NULL, NULL, NULL, NULL, 'https://goviddo.com/app/images/go.png', NULL, 0, 0, '2019-08-28 11:36:04', 1),
(249, '12345', 'Pooja', 'Poojapatil@gmail.com', 'cmancmancman', NULL, '1234567', NULL, NULL, NULL, NULL, NULL, 'https://goviddo.com/app/images/go.png', NULL, 0, 0, '2019-08-28 11:38:49', 1),
(250, 'Anurag', 'Gupta', 'guptaanurag79@gmail.com', 'anuragguptaa', NULL, 'Khushi81', NULL, NULL, NULL, NULL, NULL, 'https://goviddo.com/app/images/go.png', NULL, 0, 0, '2019-08-29 20:34:24', 1),
(251, 'Satish', 'Khachane', 'Satkhachane@gmail.com', 'satishkhacha', NULL, 'Satish1@', NULL, NULL, NULL, NULL, NULL, 'https://goviddo.com/app/images/go.png', NULL, 0, 0, '2019-08-31 07:00:01', 1),
(252, 'Imran', 'Mulani', 'imrani1@gmail.com', 'imranimport1', NULL, '1234567', NULL, NULL, NULL, NULL, NULL, 'https://goviddo.com/app/images/go.png', NULL, 0, 0, '2019-09-07 12:29:08', 1),
(253, 'Imran', 'Mulani', 'imrani2@gmail.com', 'importimran1', NULL, '1234567', NULL, NULL, NULL, NULL, NULL, 'https://goviddo.com/app/images/go.png', NULL, 0, 0, '2019-09-07 12:32:03', 1),
(254, 'Imran', 'Mulani', 'imrani3@gmail.com', 'imranimport2', NULL, '1234567', NULL, NULL, NULL, NULL, NULL, 'https://goviddo.com/app/images/go.png', NULL, 0, 0, '2019-09-07 12:33:54', 1),
(255, 'Imran', 'Mulani', 'imrani4@gmail.com', 'imranimport4', NULL, '1234567', NULL, NULL, NULL, NULL, NULL, 'https://goviddo.com/app/images/go.png', NULL, 0, 0, '2019-09-07 12:48:24', 1),
(256, 'Shabana', 'Sarguro', 'ssarguro@yahoo.com', 'shabzsarguro', NULL, 'Brook123', NULL, NULL, NULL, NULL, NULL, 'https://goviddo.com/app/images/go.png', NULL, 0, 0, '2019-09-19 19:00:10', 1),
(257, 'Pankaj', 'Thodsare', 'pankajthodsare78@gmail.com', 'pankajthodsa', NULL, 'pankaj123', NULL, NULL, NULL, NULL, NULL, 'https://goviddo.com/app/images/go.png', NULL, 0, 0, '2019-09-22 03:58:01', 1),
(258, 'Rushikesh', 'Patil', 'rishipatil16@gmail.com', 'rushikeshapa', NULL, 'goviddo19', NULL, NULL, NULL, NULL, NULL, 'https://goviddo.com/app/images/go.png', NULL, 0, 0, '2019-10-14 06:06:10', 1),
(259, 'imran', 'mulani', 'imran1@goviddo.com', 'goviddoimunn', NULL, '1234567', NULL, NULL, NULL, NULL, NULL, 'https://goviddo.com/app/images/go.png', NULL, 0, 0, '2019-10-22 05:30:00', 1),
(260, 'Imran', 'Mulani', 'imran12@goviddo.com', 'goviddoimun1', NULL, '1234567', NULL, NULL, NULL, NULL, NULL, 'https://goviddo.com/app/images/go.png', NULL, 0, 0, '2019-10-22 05:32:40', 1),
(261, 'Kristian', 'KemeryToone', 'Kkemerytoone@me.com', '1z2x3c4v5b1n', NULL, 'FitnessGuru13', NULL, NULL, NULL, NULL, NULL, 'https://goviddo.com/app/images/go.png', NULL, 0, 0, '2019-10-23 17:45:18', 1),
(262, 'Saurabhy', 'Patil', 'saurabhpatilsam@gnail.com', 'saurabhpati1', NULL, '$Aurabh2695', NULL, NULL, NULL, NULL, NULL, 'https://goviddo.com/app/images/go.png', NULL, 0, 0, '2019-10-25 15:40:57', 1),
(263, 'Saurabh', 'Patil', 'saurabhpatilsam@gmail.com', 'saurabhsam11', NULL, '$Aurabh2695', NULL, NULL, NULL, NULL, NULL, 'https://goviddo.com/app/images/go.png', NULL, 0, 0, '2019-10-25 16:26:44', 1);

-- --------------------------------------------------------

--
-- Table structure for table `video_comments_table`
--

CREATE TABLE `video_comments_table` (
  `comment_id` int(255) NOT NULL,
  `user_id` int(255) NOT NULL,
  `video_id` int(255) NOT NULL,
  `comment` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `video_comments_table`
--

INSERT INTO `video_comments_table` (`comment_id`, `user_id`, `video_id`, `comment`) VALUES
(14, 106, 55, 'nice idea'),
(15, 106, 57, 'in gy'),
(16, 138, 57, 'best ...'),
(17, 141, 63, 'very good'),
(18, 143, 57, 'kadakk bhau'),
(19, 143, 63, 'Pratik Sir kadakk tribute ........pn application kadhi expand honar'),
(20, 146, 61, 'nice video'),
(21, 141, 68, 'hi goviddo'),
(22, 106, 73, 'Nice Video');

-- --------------------------------------------------------

--
-- Table structure for table `video_genere_table`
--

CREATE TABLE `video_genere_table` (
  `video_genere_id` int(255) NOT NULL,
  `video_genere_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `video_genere_table`
--

INSERT INTO `video_genere_table` (`video_genere_id`, `video_genere_name`, `status`) VALUES
(1, 'Movies', 1),
(2, 'Series', 1),
(3, 'Documentries', 1),
(4, 'Originals', 1);

-- --------------------------------------------------------

--
-- Table structure for table `video_like_table`
--

CREATE TABLE `video_like_table` (
  `video_like_id` int(255) NOT NULL,
  `video_id` int(255) NOT NULL,
  `user_id` int(255) NOT NULL,
  `like_status` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `video_like_table`
--

INSERT INTO `video_like_table` (`video_like_id`, `video_id`, `user_id`, `like_status`) VALUES
(24, 55, 107, 0),
(25, 61, 107, 0),
(26, 57, 140, 1),
(27, 65, 140, 1),
(28, 61, 140, 1),
(29, 55, 140, 1),
(30, 55, 106, 0),
(31, 63, 141, 1),
(32, 57, 141, 1),
(33, 61, 141, 1),
(34, 10, 141, 1),
(35, 10, 146, 1),
(36, 63, 146, 1),
(37, 62, 141, 1),
(38, 68, 141, 1),
(39, 73, 106, 1),
(40, 10, 106, 1),
(41, 63, 106, 0),
(42, 62, 106, 1),
(43, 55, 196, 0),
(44, 61, 106, 1),
(45, 55, 198, 1),
(46, 78, 198, 1),
(47, 10, 199, 1),
(48, 89, 199, 0),
(49, 56, 196, 0),
(50, 70, 106, 1),
(51, 89, 218, 1),
(52, 55, 220, 0),
(53, 70, 220, 0),
(54, 87, 220, 0),
(55, 83, 220, 0),
(56, 55, 219, 0),
(57, 55, 218, 1),
(58, 10, 218, 1),
(59, 85, 219, 0),
(60, 61, 219, 0),
(61, 86, 196, 1),
(62, 87, 196, 1),
(63, 89, 225, 1),
(64, 90, 225, 1),
(65, 89, 196, 1),
(66, 70, 196, 0),
(67, 89, 106, 0),
(68, 90, 230, 1),
(69, 55, 230, 1),
(70, 62, 230, 1),
(71, 70, 230, 1),
(72, 66, 230, 1),
(73, 75, 230, 1),
(74, 10, 230, 1),
(75, 56, 230, 1),
(76, 85, 230, 1),
(77, 68, 233, 1),
(78, 87, 230, 1),
(79, 86, 230, 1),
(80, 89, 230, 1),
(81, 89, 233, 1),
(82, 65, 230, 1),
(83, 58, 230, 1),
(84, 69, 230, 1),
(85, 68, 230, 1),
(86, 79, 230, 1),
(87, 10, 233, 0),
(88, 61, 245, 0),
(89, 85, 246, 1),
(90, 56, 246, 1),
(91, 55, 222, 1),
(92, 79, 222, 1),
(93, 56, 222, 1),
(94, 89, 222, 1),
(95, 62, 222, 1),
(96, 57, 222, 0),
(97, 87, 249, 1),
(98, 67, 249, 1),
(99, 85, 249, 1),
(100, 90, 249, 1),
(101, 61, 249, 1),
(102, 58, 249, 1),
(103, 58, 249, 1),
(104, 62, 249, 1),
(105, 57, 226, 1),
(106, 71, 251, 1),
(107, 90, 251, 1);

-- --------------------------------------------------------

--
-- Table structure for table `video_table`
--

CREATE TABLE `video_table` (
  `video_id` int(255) NOT NULL,
  `show_name` text COLLATE utf8_unicode_ci NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `director` text COLLATE utf8_unicode_ci NOT NULL,
  `duration` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `home_image` text COLLATE utf8_unicode_ci NOT NULL,
  `banner_image` text COLLATE utf8_unicode_ci NOT NULL,
  `producer` text COLLATE utf8_unicode_ci NOT NULL,
  `shorten_text` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `show_on_home_page` tinyint(4) NOT NULL,
  `slug` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `starring` text COLLATE utf8_unicode_ci NOT NULL,
  `vdo_cipher_id` text COLLATE utf8_unicode_ci NOT NULL,
  `jw_video_id` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `video_tags` text COLLATE utf8_unicode_ci NOT NULL,
  `video_description` text COLLATE utf8_unicode_ci NOT NULL,
  `video_genere_type` int(255) NOT NULL,
  `series_id` int(255) DEFAULT NULL,
  `season_id` int(255) DEFAULT NULL,
  `video_channel_name` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `production_name` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `video_views_count` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `video_earnings` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `video_table`
--

INSERT INTO `video_table` (`video_id`, `show_name`, `created_date`, `director`, `duration`, `home_image`, `banner_image`, `producer`, `shorten_text`, `show_on_home_page`, `slug`, `starring`, `vdo_cipher_id`, `jw_video_id`, `video_tags`, `video_description`, `video_genere_type`, `series_id`, `season_id`, `video_channel_name`, `production_name`, `video_views_count`, `video_earnings`, `status`) VALUES
(7, 'FU 2ND TRAILER', '2019-03-19 09:48:49', 'Mahesh Manjrekar', '60', 'https://goviddo.com/icon/7.png', '', 'Abhay Gadgil, Mahesh Patel, Dinesh Kirodian, Bhushan Kumar, Krishan Kumar', '', 4, '', 'Aakash Thosar, Satya Manjrekar, Boman Irani, Sachin Khedekar, Vaidehi Parshurami, Sanskruti Balgude', '380a4e044555c33c148047c610d8ddd8', 'VNeMJexy-787XgKwR.mp4', '', 'Friendship Unlimited FU is a story of 4 friends showcasing today\'s young generation\'s languages and lifestyle. FU is full of youthful energy and music portraying about a group of college friends who want to live their life on their own terms.', 4, NULL, NULL, 'GoViddo', '', '0', '0', 0),
(8, 'FU TRAILER', '2019-03-19 09:48:49', 'Mahesh Manjrekar', '60', 'https://www.indianmoviefriend.com/uploads/movie_img/home/size/42443d8-fu_poster.jpg', 'https://goviddo.com/icon/s1.png', 'Abhay Gadgil, Mahesh Patel, Dinesh Kirodian, Bhushan Kumar, Krishan Kumar', '', 4, '', 'Aakash Thosar, Satya Manjrekar, Boman Irani, Sachin Khedekar, Vaidehi Parshurami, Sanskruti Balgude', '4b14d2552425c0dda8a32ce68655276c', 'VNeMJexy-787XgKwR.mp4', '', 'Friendship Unlimited FU is a story of 4 friends showcasing today\'s young generation\'s languages and lifestyle. FU is full of youthful energy and music portraying about a group of college friends who want to live their life on their own terms.', 4, NULL, NULL, 'GoViddo', '', '0', '0', 0),
(9, 'Rajasinhgam', '2019-03-19 09:48:49', 'V. Vijyendra Prasad', '60', 'https://www.indianmoviefriend.com/uploads/movie_img/home/size/53c97f3-300x480.png', '', 'Akkineni Nagarjuna, Sneha, Swetha Menon', '', 4, '', '', '50a6ad17488c4b9a91a2a27e1c51fa95', 'VNeMJexy-HGI4EUOM.mp4', '', 'Rajanna (Akkineni Nagarjuna) is a freedom fighter, who fights against the British. After the freedom struggle, jameendars and some of the rich men, want to enslave people. Rajanna vows to abolish slavery in the country. Lakshmi (Sneha) is a woman who is saved by Rajanna from poverty and he marries her. They have a child named Ponniamma. In his battle to against slavery, Rajanna sacrifices his life for the people. Even though he is dead, his songs posthumously inspire the people to be brave enough to fight against slavery and Jameendhari. Doraiamma (Swetha Menon) treats people like dirt and tortures them. She wants to kill Ponniamma. Ponniamma escapes from the village and walks all the way to Delhi, to try to meet Prime Minister Jawaharlal Nehru to make him aware of the horrendous situation in her village. In Delhi, she participates in a song competition and wins. Pandit Nehru appreciates her and listens to her story. Upon hearing the sad state of affairs, he takes immediate action to take Duraiamma into police custody. People are now truly happy and feel the real freedom.', 3, NULL, NULL, 'GoViddo', '', '0', '0', 0),
(10, 'Kaul', '2019-03-19 09:48:49', 'Aadish Keluskar', '60', 'https://goviddo.com/appimg/1s.png', 'https://goviddo.com/icon/s2.png', 'Rohit Kokate, Deepak Parab, Makrand Kajrekar, Saudamini Tikle, Avani Kajrekar', '', 4, '', 'Chin2 Singh, Uma Mahesh Keluskar', '4ed41cbdc4d940deb094e1dad6c0f1a7', 'Jcc6Q70B-nMw5SfmY.mp4', '', 'An unknown man, commits a murder, leaves Mumbai, becomes a village schoolteacher,witnesses the Extraordinary, goes on a trip, to the Unknown.', 1, NULL, NULL, 'GoViddo', '', '0', '0', 1),
(11, 'Dhyani-Mani', '2019-03-19 09:48:49', 'Chandrakant Kulkarni', '60', 'https://www.indianmoviefriend.com/uploads/movie_img/home/size/f41b0eb-%5E35f6f9a985ac2d51ed1157d0e9103e900f6f39e6d96c82d6c7%5Epimgpsh_fullsize_distr.png', 'https://goviddo.com/icon/s3.png', 'Ashwini Bhave, Abhijeet Khandekar', '', 4, '', 'Aniruddh Deshpande, Medha Manjrekar', 'cd43679db689495b8966f2a09de89913', 'Jcc6Q70B-nMw5SfmY.mp4', '', 'What is the secret that has forced Sadanand and Shalan to stay away from the city, with their son Mohit. Why is Shalan so obsessive about the way her son Mohit is being raised. Yes they are happy in their own world, but something sinister has always lurked around the corner. The arrival of Sameer - A family friend and his wife into their house creates an upheaval, they never imagined. What is this secret Sadanand, Shalan and Mohit hold?&nbsp;DHYANIMANI a psychological thriller has all the answers.', 1, NULL, NULL, 'Great Maratha Entertainment', 'Great Maratha Entertainment', '0', '0', 0),
(12, 'Natsamrat Trailer', '2019-03-19 09:48:49', 'Mahesh Manjrekar', '60', 'https://www.indianmoviefriend.com/uploads/movie_img/home/size/d1d4fc8-300x480.png', 'https://goviddo.com/icon/s1.png', 'Vishwas Joshi, Nana Patekar', '', 4, '', 'Nana Patekar, Medha Manjrekar, Vikram Gokhale, Mrunmayee Deshpande, Sunil Barve, Ajit Parab', '1dd660913e2ed3d909069ea78a32a74e', 'VNeMJexy-HGI4EUOM.mp4', '', 'The film is about renowned Shakespearean actor, Ganpat Ramchandra Belwalkar (Nana Patekar), who has retired from the stage with the honorific Natsamrat (King of the Theater). He does not cope with retirement gracefully as his wife, Kaveri Ganpat Belwalkar/Sarkar (Medha Manjrekar), observes &quot;you have brought the theater home&quot;. As retirement unfolds with his wife and two married children, a son and a daughter, he reminisces about the various roles he has played in the past - among them Hamlet, Othello, Julius Caesar - but he fails to recognize his life deteriorating into a King Lear tragedy right before his eyes.', 3, NULL, NULL, 'Zee Studios', 'Zee Studios', '0', '0', 0),
(13, 'Rajasinhgam Trailer', '2019-03-19 09:48:49', 'V. Vijyendra Prasad', '60', 'https://www.indianmoviefriend.com/uploads/movie_img/home/size/53c97f3-300x480.png', '', 'Akkineni Nagarjuna', '', 4, '', 'Akkineni Nagarjuna, Sneha, Swetha Menon', 'd046ef1fe1d4c00e9e9316098c17306f', 'VNeMJexy-787XgKwR.mp4', '', 'Rajanna (Akkineni Nagarjuna) is a freedom fighter, who fights against the British. After the freedom struggle, jameendars and some of the rich men, want to enslave people. Rajanna vows to abolish slavery in the country. Lakshmi (Sneha) is a woman who is saved by Rajanna from poverty and he marries her. They have a child named Ponniamma. In his battle to against slavery, Rajanna sacrifices his life for the people. Even though he is dead, his songs posthumously inspire the people to be brave enough to fight against slavery and Jameendhari. Doraiamma (Swetha Menon) treats people like dirt and tortures them. She wants to kill Ponniamma. Ponniamma escapes from the village and walks all the way to Delhi, to try to meet Prime Minister Jawaharlal Nehru to make him aware of the horrendous situation in her village. In Delhi, she participates in a song competition and wins. Pandit Nehru appreciates her and listens to her story. Upon hearing the sad state of affairs, he takes immediate action to take Duraiamma into police custody. People are now truly happy and feel the real freedom.', 4, NULL, NULL, 'GoViddo', '', '0', '0', 0),
(14, 'IMF Garja Maharashtra  Majha', '2019-03-19 09:48:49', 'Pratik Shelar', '60', 'https://goviddo.com/icon/7.png', 'https://goviddo.com/icon/s2.png', 'Indian Movie Friend', 'garajamaha', 4, 'garajamaha', 'Ajit Parab, Anand Ingale, Sandeep Pathak, Vidyadhar Joshi, Uday Nene, Bhalchandra Kadam, Ajit Kelkar, Sunil Barve, Mahesh Manjrekar and Vikas Patil, Swapnil Bandodkar, Prarthana Behere, Vaishali Samant, Avadhoot Gupte & Sonali Kulkarni.', 'cf1fc11828714067af1f53aa31574dae', 'VNeMJexy-787XgKwR.mp4', 'IMF, Garaja Maharashtra Maza', 'Garja Maharashtra Maza 2016 was a historic event held at Indigo at The O2 on Sun, 22 May 2016. It was the biggest overseas Maharashtrian cultural event ever held.', 4, NULL, NULL, 'Indian Movie Friend', 'Indian Movie Friend', '0', '0', 0),
(55, 'GoViddo Content\r\n', '2019-04-20 10:27:00', 'Pratik Shelar\r\n', '120', 'https://goviddo.com/icon/7.png', '', '', '', 0, '', 'Pratik Shelar', 'e1c4c01db875415190b22d3aa5cc8986', 'VNeMJexy-787XgKwR.mp4', '', 'GoViddo MVP', 4, NULL, NULL, 'GoViddo', 'GoViddo', '', '', 1),
(56, 'GOVIDDO_COMMUNITY_ECOSYSTEM_ANIMATION_CUT02', '2019-04-20 10:29:50', 'Pratik Shelar', '120', 'https://goviddo.com/icon/3.png', '', 'Pratik Shelar', '', 0, '', 'Pratik Shelar', '540a9b88707c488c933cd41272892de7', 'VNeMJexy-787XgKwR.mp4', '', 'GoViddo Team Introduction', 4, NULL, NULL, 'GoViddo', 'GoViddo', '', '', 1),
(57, 'GO_VIDDO_TEAM_MEMBERS_VIDEO_EDIT_04', '2019-04-20 10:36:00', 'Pratik Shelar', '3600', 'https://goviddo.com/icon/7.png', '', 'Pratik Shelar', '', 0, '', 'Pratik Shelar', 'bc4659dbf36648a8ae5560e3bd3ccbbe', 'VNeMJexy-787XgKwR.mp4', '', 'GoViddo Team Intoduction', 4, NULL, NULL, 'GoViddo', 'GoViddo', '', '', 1),
(58, 'The_Eco_System', '2019-04-20 10:38:41', 'Pratik Shelar', '30', 'https://goviddo.com/icon/5.png', '', 'Pratik Shelar', '', 0, '', '', 'd6975e8e2f5a48d89bdcb0c66d4c1d19', 'VNeMJexy-787XgKwR.mp4', '', 'GoViddo Working in Animated Form', 4, NULL, NULL, 'GoViddo', 'GoViddo', '', '', 1),
(60, 'IMF Ek Vaitaglela Labharthi', '2019-04-20 10:49:38', 'John Varghese', '3000', 'https://www.indianmoviefriend.com/uploads/movie_img/home/size/f141d95-adi_koottamani.jpg', 'https://goviddo.com/icon/s3.png', 'Vijay Babu,Sandra Thomas', '', 0, '', '', '79bb00931f52b10d161d757c97114edb', 'VNeMJexy-787XgKwR.mp4', '', '', 4, NULL, NULL, 'Indian Movie Friend', 'Indian Movie Friend', '', '', 0),
(61, 'Rosebush_Shortfilm.mp4', '2019-04-20 10:56:14', 'Jayprad Desai', '4200', 'https://goviddo.com/icon/3.png', 'https://goviddo.com/icon/s1.png', 'Gajanan Enterprises', '', 0, '', 'Sunil Shende, Neelkanti Patekar', '66716a1da21fe0505670e784a343ba21', 'Jcc6Q70B-nMw5SfmY.mp4', '', 'A middle aged couple comes to terms with their life and relationship on the first death anniversary of their 22 year old son.', 1, NULL, NULL, 'GoViddo', 'Gajanan Enterprises', '', '', 1),
(62, 'Cycle Short Film', '2019-04-20 12:03:27', 'Harshal Wadkar', '60000', 'https://goviddo.com/icon/1g.png', '', 'Upendra Deglurkar and Dr. Shireesh Sathe', '', 0, '', 'Prasad More, Suhas Vedpathak', 'ecdd8a81b82e9bc43a92b1486c7cd287', 'Jcc6Q70B-nMw5SfmY.mp4', '', 'This is a recreation of the iconic song Yahoo! from the movie Junglee. A tribute to the legendary actor Shammi Kapoor from his diehard fans.', 1, NULL, NULL, 'GoViddo', 'GoViddo', '', '', 1),
(63, 'Yahoo', '2019-04-20 12:09:58', 'Gorakshanath Khande', '', 'https://goviddo.com/icon/7.png', 'https://goviddo.com/icon/s2.png', 'GoViddo', '', 0, '', 'Pratik Shelar', '32681eb69ae0c01277c67a13c7025c35', 'VNeMJexy-787XgKwR.mp4', '', 'This is a recreation of the iconic song Yahoo! from the movie Junglee. A tribute to the legendary actor Shammi Kapoor from his diehard fans.', 4, NULL, NULL, 'GoViddo', 'GoViddo', '', '', 1),
(65, 'Bashar_Nawaz_Documentry', '2019-04-20 12:23:29', 'Jayprad Desai', '3600', 'https://goviddo.com/icon/4.png', 'https://goviddo.com/icon/s3.png', 'Nilesh Raut', '', 0, '', 'Pooja Gaikwad', 'ee978827783cce400cacc76e7a18c2e8', 'Jcc6Q70B-nMw5SfmY.mp4', '', 'This is a recreation of the iconic song Yahoo! from the movie Junglee. A tribute to the legendary actor Shammi Kapoor from his diehard fans.', 1, NULL, NULL, 'GoViddo', 'GoViddo', '', '', 1),
(66, 'Yahoo', '2019-04-20 12:09:58', 'Gorakshanath Khande', '', 'https://goviddo.com/icon/2.png', '', 'GoViddo', '', 0, '', 'Pratik Shelar', '2ac3559eb57e4ce5a6e5424c566114fa', 'Jcc6Q70B-nMw5SfmY.mp4', '', 'This is a recreation of the iconic song Yahoo! from the movie Junglee. A tribute to the legendary actor Shammi Kapoor from his diehard fans.', 1, NULL, NULL, 'GoViddo', 'GoViddo', '', '', 1),
(67, 'Yahoo', '2019-04-20 12:09:58', 'Gorakshanath Khande', '', 'https://goviddo.com/icon/3.png', '', 'GoViddo', '', 0, '', 'Pratik Shelar', '90331ee0a047401f95706cf3ef0c21f1', 'Jcc6Q70B-nMw5SfmY.mp4', '', 'This is a recreation of the iconic song Yahoo! from the movie Junglee. A tribute to the legendary actor Shammi Kapoor from his diehard fans.', 1, NULL, NULL, 'GoViddo', 'GoViddo', '', '', 1),
(68, 'Yahoo', '2019-04-20 12:09:58', 'Gorakshanath Khande', '', 'https://goviddo.com/icon/4.png', '', 'GoViddo', '', 0, '', 'Pratik Shelar', '3ef6256db3fc4cdb8d94d3cafa870c08', 'Jcc6Q70B-nMw5SfmY.mp4', '', 'This is a recreation of the iconic song Yahoo! from the movie Junglee. A tribute to the legendary actor Shammi Kapoor from his diehard fans.', 1, NULL, NULL, 'GoViddo', 'GoViddo', '', '', 1),
(69, 'Yahoo', '2019-04-20 12:09:58', 'Gorakshanath Khande', '', 'https://goviddo.com/icon/5.png', '', 'GoViddo', '', 0, '', 'Pratik Shelar', '2ac3559eb57e4ce5a6e5424c566114fa', 'Jcc6Q70B-nMw5SfmY.mp4', '', 'This is a recreation of the iconic song Yahoo! from the movie Junglee. A tribute to the legendary actor Shammi Kapoor from his diehard fans.', 1, NULL, NULL, 'GoViddo', 'GoViddo', '', '', 1),
(70, 'Kaul', '2019-03-19 09:48:49', 'Aadish Keluskar', '60', 'https://goviddo.com/icon/4.png', 'https://goviddo.com/icon/s1.png', 'Rohit Kokate, Deepak Parab, Makrand Kajrekar, Saudamini Tikle, Avani Kajrekar', '', 1, '', 'Chin2 Singh, Uma Mahesh Keluskar', '4ed41cbdc4d940deb094e1dad6c0f1a7', 'hOqs931i-HGI4EUOM.mp4', '', 'An unknown man, commits a murder, leaves Mumbai, becomes a village schoolteacher,witnesses the Extraordinary, goes on a trip, to the Unknown.', 2, 2, NULL, 'GoViddo', '', '0', '0', 1),
(71, 'GoViddo Content\r\n', '2019-04-20 10:27:00', 'Pratik Shelar\r\n', '120', 'https://goviddo.com/icon/5.png', '', '', '', 0, '', 'Pratik Shelar', 'e1c4c01db875415190b22d3aa5cc8986', 'hOqs931i-HGI4EUOM.mp4', '', 'GoViddo MVP', 2, 2, NULL, 'GoViddo', 'GoViddo', '', '', 1),
(72, 'GOVIDDO_COMMUNITY_ECOSYSTEM_ANIMATION_CUT02', '2019-04-20 10:29:50', 'Pratik Shelar', '120', 'https://goviddo.com/icon/5.png', '', 'Pratik Shelar', '', 1, '', 'Pratik Shelar', '540a9b88707c488c933cd41272892de7', 'hOqs931i-HGI4EUOM.mp4', '', 'GoViddo Team Introduction', 2, 1, 1, 'GoViddo', 'GoViddo', '', '', 1),
(73, 'GO_VIDDO_TEAM_MEMBERS_VIDEO_EDIT_04', '2019-04-20 10:36:00', 'Pratik Shelar', '3600', 'https://goviddo.com/icon/4.png', '', 'Pratik Shelar', '', 1, '', 'Pratik Shelar', 'bc4659dbf36648a8ae5560e3bd3ccbbe', 'hOqs931i-HGI4EUOM.mp4', '', 'GoViddo Team Intoduction', 2, 1, 2, 'GoViddo', 'GoViddo', '', '', 1),
(74, 'The_Eco_System', '2019-04-20 10:38:41', 'Pratik Shelar', '30', 'https://goviddo.com/icon/2.png', '', 'Pratik Shelar', '', 0, '', '', 'd6975e8e2f5a48d89bdcb0c66d4c1d19', 'hOqs931i-HGI4EUOM.mp4', '', 'GoViddo Working in Animated Form', 2, NULL, NULL, 'GoViddo', 'GoViddo', '', '', 1),
(75, 'Cycle Short Film', '2019-04-20 12:03:27', 'Harshal Wadkar', '60000', 'https://goviddo.com/icon/1g.png', '', 'Upendra Deglurkar and Dr. Shireesh Sathe', '', 0, '', 'Prasad More, Suhas Vedpathak', 'ecdd8a81b82e9bc43a92b1486c7cd287', 'hOqs931i-HGI4EUOM.mp4', '', 'GoViddo MVP', 2, NULL, NULL, 'GoViddo', 'GoViddo', '', '', 1),
(76, 'Yahoo', '2019-04-20 12:09:58', 'Gorakshanath Khande', '', 'https://goviddo.com/icon/3.png', 'https://goviddo.com/icon/s3.png', 'GoViddo', '', 0, '', 'Pratik Shelar', '32681eb69ae0c01277c67a13c7025c35', 'hOqs931i-HGI4EUOM.mp4', '', 'This is a recreation of the iconic song Yahoo! from the movie Junglee. A tribute to the legendary actor Shammi Kapoor from his diehard fans.', 2, NULL, NULL, 'GoViddo', 'GoViddo', '', '', 1),
(77, 'Bashar_Nawaz_Documentry', '2019-04-20 12:23:29', 'Jayprad Desai', '3600', 'https://goviddo.com/icon/5.png', 'https://goviddo.com/icon/s1.png', 'Nilesh Raut', '', 0, '', 'Pooja Gaikwad', 'ee978827783cce400cacc76e7a18c2e8', 'hOqs931i-HGI4EUOM.mp4', '', 'GoViddo MVP', 2, NULL, NULL, 'GoViddo', 'GoViddo', '', '', 1),
(78, 'Kaul', '2019-03-19 09:48:49', 'Aadish Keluskar', '60', 'https://goviddo.com/icon/7.png', 'https://goviddo.com/icon/s2.png', 'Rohit Kokate, Deepak Parab, Makrand Kajrekar, Saudamini Tikle, Avani Kajrekar', '', 4, '', 'Chin2 Singh, Uma Mahesh Keluskar', '4ed41cbdc4d940deb094e1dad6c0f1a7', 'VNeMJexy-HGI4EUOM.mp4', '', 'An unknown man, commits a murder, leaves Mumbai, becomes a village schoolteacher,witnesses the Extraordinary, goes on a trip, to the Unknown.', 3, NULL, NULL, 'GoViddo', '', '0', '0', 1),
(79, 'GoViddo Content\r\n', '2019-04-20 10:27:00', 'Pratik Shelar\r\n', '120', 'https://goviddo.com/icon/1g.png', '', '', '', 0, '', 'Pratik Shelar', 'e1c4c01db875415190b22d3aa5cc8986', 'VNeMJexy-HGI4EUOM.mp4', '', 'GoViddo MVP', 3, NULL, NULL, 'GoViddo', 'GoViddo', '', '', 1),
(80, 'GOVIDDO_COMMUNITY_ECOSYSTEM_ANIMATION_CUT02', '2019-04-20 10:29:50', 'Pratik Shelar', '120', 'https://goviddo.com/icon/3.png', '', 'Pratik Shelar', '', 0, '', 'Pratik Shelar', '540a9b88707c488c933cd41272892de7', 'VNeMJexy-HGI4EUOM.mp4', '', 'GoViddo Team Introduction', 3, NULL, NULL, 'GoViddo', 'GoViddo', '', '', 1),
(81, 'GO_VIDDO_TEAM_MEMBERS_VIDEO_EDIT_04', '2019-04-20 10:36:00', 'Pratik Shelar', '3600', 'https://goviddo.com/icon/7.png', '', 'Pratik Shelar', '', 0, '', 'Pratik Shelar', 'bc4659dbf36648a8ae5560e3bd3ccbbe', 'VNeMJexy-HGI4EUOM.mp4', '', 'GoViddo Team Intoduction', 3, NULL, NULL, 'GoViddo', 'GoViddo', '', '', 1),
(82, 'The_Eco_System', '2019-04-20 10:38:41', 'Pratik Shelar', '30', 'https://goviddo.com/icon/1g.png', '', 'Pratik Shelar', '', 0, '', '', 'd6975e8e2f5a48d89bdcb0c66d4c1d19', 'VNeMJexy-HGI4EUOM.mp4', '', 'GoViddo Working in Animated Form', 3, NULL, NULL, 'GoViddo', 'GoViddo', '', '', 1),
(83, 'Rosebush_Shortfilm.mp4', '2019-04-20 10:56:14', 'Jayprad Desai', '4200', 'https://goviddo.com/icon/5.png', 'https://goviddo.com/icon/s3.png', 'Gajanan Enterprises', '', 0, '', 'Sunil Shende, Neelkanti Patekar', '66716a1da21fe0505670e784a343ba21', 'VNeMJexy-HGI4EUOM.mp4', '', 'A middle aged couple comes to terms with their life and relationship on the first death anniversary of their 22 year old son.', 3, NULL, NULL, 'GoViddo', 'Gajanan Enterprises', '', '', 1),
(84, 'Cycle Short Film', '2019-04-20 12:03:27', 'Harshal Wadkar', '60000', 'https://goviddo.com/icon/3.png', '', 'Upendra Deglurkar and Dr. Shireesh Sathe', '', 0, '', 'Prasad More, Suhas Vedpathak', 'ecdd8a81b82e9bc43a92b1486c7cd287', 'VNeMJexy-HGI4EUOM.mp4', '', 'GoViddo MVP', 3, NULL, NULL, 'GoViddo', 'GoViddo', '', '', 1),
(85, 'Yahoo', '2019-04-20 12:09:58', 'Gorakshanath Khande', '', 'https://goviddo.com/icon/4.png', 'https://goviddo.com/icon/s1.png', 'GoViddo', '', 0, '', 'Pratik Shelar', '32681eb69ae0c01277c67a13c7025c35', 'VNeMJexy-HGI4EUOM.mp4', '', 'This is a recreation of the iconic song Yahoo! from the movie Junglee. A tribute to the legendary actor Shammi Kapoor from his diehard fans.', 3, NULL, NULL, 'GoViddo', 'GoViddo', '', '', 1),
(86, 'Bashar_Nawaz_Documentry', '2019-04-20 12:23:29', 'Jayprad Desai', '3600', 'https://goviddo.com/icon/7.png', 'https://goviddo.com/icon/s1.png', 'Nilesh Raut', '', 0, '', 'Pooja Gaikwad', 'ee978827783cce400cacc76e7a18c2e8', 'VNeMJexy-HGI4EUOM.mp4', '', 'GoViddo MVP', 3, NULL, NULL, 'GoViddo', 'GoViddo', '', '', 1),
(87, 'Rosebush_Shortfilm.mp4', '2019-04-20 10:56:14', 'Jayprad Desai', '4200', 'https://goviddo.com/icon/5.png', 'https://goviddo.com/icon/s3.png', 'Gajanan Enterprises', '', 0, '', 'Sunil Shende, Neelkanti Patekar', '66716a1da21fe0505670e784a343ba21', 'VNeMJexy-HGI4EUOM.mp4', '', 'A middle aged couple comes to terms with their life and relationship on the first death anniversary of their 22 year old son.', 3, NULL, NULL, 'GoViddo', 'Gajanan Enterprises', '', '', 1),
(88, 'Cycle Short Film', '2019-04-20 12:03:27', 'Harshal Wadkar', '60000', 'https://goviddo.com/icon/1g.png', '', 'Upendra Deglurkar and Dr. Shireesh Sathe', '', 0, '', 'Prasad More, Suhas Vedpathak', 'ecdd8a81b82e9bc43a92b1486c7cd287', 'VNeMJexy-HGI4EUOM.mp4', '', 'A middle aged couple comes to terms with their life and relationship on the first death anniversary of their 22 year old son.', 3, NULL, NULL, 'GoViddo', 'GoViddo', '', '', 1),
(89, 'Yahoo', '2019-04-20 12:09:58', 'Gorakshanath Khande', '', 'https://goviddo.com/icon/4.png', 'https://goviddo.com/icon/s2.png', 'GoViddo', '', 0, '', 'Pratik Shelar', '32681eb69ae0c01277c67a13c7025c35', 'VNeMJexy-HGI4EUOM.mp4', '', 'This is a recreation of the iconic song Yahoo! from the movie Junglee. A tribute to the legendary actor Shammi Kapoor from his diehard fans.', 3, NULL, NULL, 'GoViddo', 'GoViddo', '', '', 1),
(90, 'Bashar_Nawaz_Documentry', '2019-04-20 12:23:29', 'Jayprad Desai', '3600', 'https://goviddo.com/icon/5.png', 'https://goviddo.com/icon/s3.png', 'Nilesh Raut', '', 0, '', 'Pooja Gaikwad', 'ee978827783cce400cacc76e7a18c2e8', 'VNeMJexy-HGI4EUOM.mp4', '', 'A middle aged couple comes to terms with their life and relationship on the first death anniversary of their 22 year old son.', 3, NULL, NULL, 'GoViddo', 'GoViddo', '', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `video_transactions`
--

CREATE TABLE `video_transactions` (
  `transaction_id` int(255) NOT NULL,
  `transaction_amount` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `transaction_user_id` int(255) NOT NULL,
  `transaction_memo` text COLLATE utf8_unicode_ci NOT NULL,
  `transaction_status` tinyint(4) NOT NULL DEFAULT 1,
  `transaction_from` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `transaction_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `video_transactions`
--

INSERT INTO `video_transactions` (`transaction_id`, `transaction_amount`, `transaction_user_id`, `transaction_memo`, `transaction_status`, `transaction_from`, `transaction_date`) VALUES
(21, '0.01 GOV', 121, 'Token for video GOVIDDO_COMMUNITY_ECOSYSTEM_ANIMATION_CUT02', 1, 'hellogoviddo', '2019-04-25 08:23:45'),
(22, '0.01 GOV', 121, 'Token for video Yahoo', 1, 'hellogoviddo', '2019-04-25 08:26:30'),
(23, '0.01 GOV', 121, 'Token for video id = GOVIDDO_COMMUNITY_ECOSYSTEM_ANIMATION_CUT02,video Yahoo', 1, 'hellogoviddo', '2019-04-25 08:27:16'),
(24, '0.01 GOV', 121, 'Token for video GOVIDDO_COMMUNITY_ECOSYSTEM_ANIMATION_CUT02, video GO_VIDDO_TEAM_MEMBERS_VIDEO_EDIT_04, video GoViddo Content\r\n, video Yahoo, video Yahoo, video Bashar_Nawaz_Documentry, video Cycle Short Film, video Rosebush_Shortfilm.mp4, video Kaul, video Yahoo', 1, 'hellogoviddo', '2019-04-25 08:33:06'),
(25, '0.01 GOV', 121, 'Token for unique video view for videos GOVIDDO_COMMUNITY_ECOSYSTEM_ANIMATION_CUT02, GO_VIDDO_TEAM_MEMBERS_VIDEO_EDIT_04, GoViddo Content\r\n, Yahoo, Yahoo, Bashar_Nawaz_Documentry, Cycle Short Film, Rosebush_Shortfilm.mp4, Kaul, Yahoo', 1, 'hellogoviddo', '2019-04-25 08:36:00'),
(26, '0.01 GOV', 138, 'For Registration of New User', 1, 'hellogoviddo', '2019-04-28 18:11:58'),
(27, '0.01 GOV', 107, '2 videos upvoting', 1, 'hellogoviddo', '2019-05-02 10:12:16'),
(28, '0.01 GOV', 139, 'For Registration of New User', 1, 'hellogoviddo', '2019-05-19 12:18:22'),
(29, '0.01 GOV', 140, 'For Registration of New User', 1, 'hellogoviddo', '2019-06-13 19:03:43'),
(30, '0.01 GOV', 140, '2 videos upvoting', 1, 'hellogoviddo', '2019-06-13 19:56:26'),
(31, '0.01 GOV', 140, '2 videos upvoting', 1, 'hellogoviddo', '2019-06-14 05:04:51'),
(32, '0.01 GOV', 141, 'For Registration of New User', 1, 'hellogoviddo', '2019-06-19 21:01:22'),
(33, '0.01 GOV', 142, 'For Registration of New User', 1, 'hellogoviddo', '2019-06-20 03:55:41'),
(34, '0.01 GOV', 143, 'For Registration of New User', 1, 'hellogoviddo', '2019-06-20 11:50:17'),
(35, '0.01 GOV', 141, '2 videos upvoting', 1, 'hellogoviddo', '2019-06-20 23:39:23'),
(36, '0.01 GOV', 141, '2 videos upvoting', 1, 'hellogoviddo', '2019-06-21 13:25:10'),
(37, '0.01 GOV', 144, 'For Registration of New User', 1, 'hellogoviddo', '2019-06-26 06:30:05'),
(38, '0.01 GOV', 145, 'For Registration of New User', 1, 'hellogoviddo', '2019-06-26 06:30:19'),
(39, '0.01 GOV', 146, 'For Registration of New User', 1, 'hellogoviddo', '2019-06-26 06:38:45'),
(40, '0.01 GOV', 147, 'For Registration of New User', 1, 'hellogoviddo', '2019-06-26 06:43:13'),
(41, '0.01 GOV', 146, '2 videos upvoting', 1, 'hellogoviddo', '2019-06-26 06:58:55'),
(42, '0.01 GOV', 148, 'For Registration of New User', 1, 'hellogoviddo', '2019-06-26 07:30:55'),
(43, '0.01 GOV', 149, 'For Registration of New User', 1, 'hellogoviddo', '2019-06-26 07:32:58'),
(44, '0.01 GOV', 150, 'For Registration of New User', 1, 'hellogoviddo', '2019-06-26 07:36:17'),
(45, '0.01 GOV', 151, 'For Registration of New User', 1, 'hellogoviddo', '2019-06-26 08:46:44'),
(46, '0.01 GOV', 152, 'For Registration of New User', 1, 'hellogoviddo', '2019-06-26 08:47:09'),
(47, '0.01 GOV', 153, 'For Registration of New User', 1, 'hellogoviddo', '2019-06-26 08:48:26'),
(48, '0.01 GOV', 154, 'For Registration of New User', 1, 'hellogoviddo', '2019-06-26 09:04:56'),
(49, '0.01 GOV', 155, 'For Registration of New User', 1, 'hellogoviddo', '2019-06-26 09:06:38'),
(50, '0.01 GOV', 156, 'For Registration of New User', 1, 'hellogoviddo', '2019-06-26 09:11:17'),
(51, '0.01 GOV', 157, 'For Registration of New User', 1, 'hellogoviddo', '2019-06-26 09:19:40'),
(52, '0.01 GOV', 158, 'For Registration of New User', 1, 'hellogoviddo', '2019-06-26 09:24:24'),
(53, '0.01 GOV', 159, 'For Registration of New User', 1, 'hellogoviddo', '2019-06-26 09:35:12'),
(54, '0.01 GOV', 160, 'For Registration of New User', 1, 'hellogoviddo', '2019-06-26 09:41:40'),
(55, '0.01 GOV', 161, 'For Registration of New User', 1, 'hellogoviddo', '2019-06-26 09:42:27'),
(56, '0.01 GOV', 162, 'For Registration of New User', 1, 'hellogoviddo', '2019-06-26 09:44:12'),
(57, '0.01 GOV', 164, 'For Registration of New User', 1, 'hellogoviddo', '2019-06-26 09:47:00'),
(58, '0.01 GOV', 165, 'For Registration of New User', 1, 'hellogoviddo', '2019-06-26 09:47:39'),
(59, '0.01 GOV', 167, 'For Registration of New User', 1, 'hellogoviddo', '2019-06-26 09:51:53'),
(60, '0.01 GOV', 169, 'For Registration of New User', 1, 'hellogoviddo', '2019-06-26 10:01:04'),
(61, '0.01 GOV', 171, 'For Registration of New User', 1, 'hellogoviddo', '2019-06-26 10:04:51'),
(62, '0.01 GOV', 172, 'For Registration of New User', 1, 'hellogoviddo', '2019-06-26 10:09:36'),
(63, '0.01 GOV', 173, 'For Registration of New User', 1, 'hellogoviddo', '2019-06-26 10:10:53'),
(64, '0.01 GOV', 174, 'For Registration of New User', 1, 'hellogoviddo', '2019-06-26 10:26:41'),
(65, '0.01 GOV', 175, 'For Registration of New User', 1, 'hellogoviddo', '2019-07-07 09:22:08'),
(66, '0.01 GOV', 176, 'For Registration of New User', 1, 'hellogoviddo', '2019-07-07 09:51:51'),
(67, '0.01 GOV', 177, 'For Registration of New User', 1, 'hellogoviddo', '2019-07-07 09:53:44'),
(68, '0.01 GOV', 178, 'For Registration of New User', 1, 'hellogoviddo', '2019-07-07 09:54:49'),
(69, '0.01 GOV', 179, 'For Registration of New User', 1, 'hellogoviddo', '2019-07-07 10:00:44'),
(70, '0.01 GOV', 180, 'For Registration of New User', 1, 'hellogoviddo', '2019-07-07 10:01:54'),
(71, '0.01 GOV', 181, 'For Registration of New User', 1, 'hellogoviddo', '2019-07-07 10:05:22'),
(72, '0.01 GOV', 182, 'For Registration of New User', 1, 'hellogoviddo', '2019-07-07 10:16:34'),
(73, '0.01 GOV', 183, 'For Registration of New User', 1, 'hellogoviddo', '2019-07-07 10:17:48'),
(74, '0.01 GOV', 184, 'For Registration of New User', 1, 'hellogoviddo', '2019-07-07 10:29:47'),
(75, '0.01 GOV', 185, 'For Registration of New User', 1, 'hellogoviddo', '2019-07-07 10:34:46'),
(76, '0.01 GOV', 186, 'For Registration of New User', 1, 'hellogoviddo', '2019-07-07 10:37:51'),
(77, '0.01 GOV', 187, 'For Registration of New User', 1, 'hellogoviddo', '2019-07-07 10:44:52'),
(78, '0.01 GOV', 188, 'For Registration of New User', 1, 'hellogoviddo', '2019-07-07 10:52:45'),
(79, '0.01 GOV', 141, '2 videos upvoting', 1, 'hellogoviddo', '2019-07-10 08:52:32'),
(80, '0.01 GOV', 189, 'For Registration of New User', 1, 'hellogoviddo', '2019-07-22 06:28:24'),
(81, '0.01 GOV', 190, 'For Registration of New User', 1, 'hellogoviddo', '2019-07-23 08:43:52'),
(82, '0.01 GOV', 191, 'For Registration of New User', 1, 'hellogoviddo', '2019-07-23 08:48:46'),
(83, '0.01 GOV', 106, '2 videos upvoting', 1, 'hellogoviddo', '2019-08-05 08:14:00'),
(84, '0.01 GOV', 192, 'For Registration of New User', 1, 'hellogoviddo', '2019-08-09 10:42:38'),
(85, '0.01 GOV', 106, '2 videos upvoting', 1, 'hellogoviddo', '2019-08-16 12:04:50'),
(86, '0.01 GOV', 193, 'For Registration of New User', 1, 'hellogoviddo', '2019-08-16 20:47:06'),
(87, '0.01 GOV', 194, 'For Registration of New User', 1, 'hellogoviddo', '2019-08-16 21:12:01'),
(88, '0.01 GOV', 195, 'For Registration of New User', 1, 'hellogoviddo', '2019-08-16 21:15:56'),
(89, '0.01 GOV', 196, 'For Registration of New User', 1, 'hellogoviddo', '2019-08-17 00:38:06'),
(90, '0.01 GOV', 106, '2 videos upvoting', 1, 'hellogoviddo', '2019-08-17 13:22:24'),
(91, '0.01 GOV', 197, 'For Registration of New User', 1, 'hellogoviddo', '2019-08-17 18:07:42'),
(92, '0.01 GOV', 198, 'For Registration of New User', 1, 'hellogoviddo', '2019-08-17 21:42:19'),
(93, '0.01 GOV', 198, '2 videos upvoting', 1, 'hellogoviddo', '2019-08-17 21:45:53'),
(94, '0.01 GOV', 199, 'For Registration of New User', 1, 'hellogoviddo', '2019-08-17 22:00:59'),
(95, '0.01 GOV', 200, 'For Registration of New User', 1, 'hellogoviddo', '2019-08-17 22:03:45'),
(96, '0.01 GOV', 199, '2 videos upvoting', 1, 'hellogoviddo', '2019-08-17 22:05:03'),
(97, '0.01 GOV', 201, 'For Registration of New User', 1, 'hellogoviddo', '2019-08-17 22:09:03'),
(98, '0.01 GOV', 202, 'For Registration of New User', 1, 'hellogoviddo', '2019-08-17 22:12:42'),
(99, '0.01 GOV', 203, 'For Registration of New User', 1, 'hellogoviddo', '2019-08-17 22:13:12'),
(100, '0.01 GOV', 204, 'For Registration of New User', 1, 'hellogoviddo', '2019-08-17 22:15:39'),
(101, '0.01 GOV', 205, 'For Registration of New User', 1, 'hellogoviddo', '2019-08-17 22:18:09'),
(102, '0.01 GOV', 206, 'For Registration of New User', 1, 'hellogoviddo', '2019-08-17 22:18:48'),
(103, '0.01 GOV', 207, 'For Registration of New User', 1, 'hellogoviddo', '2019-08-17 22:19:52'),
(104, '0.01 GOV', 208, 'For Registration of New User', 1, 'hellogoviddo', '2019-08-17 22:21:00'),
(105, '0.01 GOV', 209, 'For Registration of New User', 1, 'hellogoviddo', '2019-08-17 22:21:59'),
(106, '0.01 GOV', 210, 'For Registration of New User', 1, 'hellogoviddo', '2019-08-17 22:23:28'),
(107, '0.01 GOV', 196, '2 videos upvoting', 1, 'hellogoviddo', '2019-08-18 12:44:07'),
(108, '0.01 GOV', 211, 'For Registration of New User', 1, 'hellogoviddo', '2019-08-19 18:08:07'),
(109, '0.01 GOV', 212, 'For Registration of New User', 1, 'hellogoviddo', '2019-08-20 04:36:29'),
(110, '0.01 GOV', 213, 'For Registration of New User', 1, 'hellogoviddo', '2019-08-20 04:40:05'),
(111, '0.01 GOV', 214, 'For Registration of New User', 1, 'hellogoviddo', '2019-08-20 04:49:28'),
(112, '0.01 GOV', 215, 'For Registration of New User', 1, 'hellogoviddo', '2019-08-20 04:51:40'),
(113, '0.01 GOV', 216, 'For Registration of New User', 1, 'hellogoviddo', '2019-08-20 05:01:47'),
(114, '0.01 GOV', 217, 'For Registration of New User', 1, 'hellogoviddo', '2019-08-21 04:01:10'),
(115, '0.01 GOV', 218, 'For Registration of New User', 1, 'hellogoviddo', '2019-08-21 04:42:05'),
(116, '0.01 GOV', 219, 'For Registration of New User', 1, 'hellogoviddo', '2019-08-21 08:45:37'),
(117, '0.01 GOV', 220, 'For Registration of New User', 1, 'hellogoviddo', '2019-08-21 08:50:58'),
(118, '0.01 GOV', 220, '2 videos upvoting', 1, 'hellogoviddo', '2019-08-21 08:58:54'),
(119, '0.01 GOV', 220, '2 videos upvoting', 1, 'hellogoviddo', '2019-08-21 09:44:27'),
(120, '0.01 GOV', 221, 'For Registration of New User', 1, 'hellogoviddo', '2019-08-21 13:43:22'),
(121, '0.01 GOV', 218, '2 videos upvoting', 1, 'hellogoviddo', '2019-08-21 14:09:56'),
(122, '0.01 GOV', 219, '2 videos upvoting', 1, 'hellogoviddo', '2019-08-22 13:58:31'),
(123, '0.01 GOV', 222, 'For Registration of New User', 1, 'hellogoviddo', '2019-08-22 14:09:08'),
(124, '0.01 GOV', 196, '2 videos upvoting', 1, 'hellogoviddo', '2019-08-23 04:35:49'),
(125, '0.01 GOV', 223, 'For Registration of New User', 1, 'hellogoviddo', '2019-08-23 04:38:18'),
(126, '0.01 GOV', 224, 'For Registration of New User', 1, 'hellogoviddo', '2019-08-23 04:52:40'),
(127, '0.01 GOV', 225, 'For Registration of New User', 1, 'hellogoviddo', '2019-08-23 18:01:12'),
(128, '0.01 GOV', 225, '2 videos upvoting', 1, 'hellogoviddo', '2019-08-23 18:08:35'),
(129, '0.01 GOV', 226, 'For Registration of New User', 1, 'hellogoviddo', '2019-08-24 20:24:14'),
(130, '0.01 GOV', 196, '2 videos upvoting', 1, 'hellogoviddo', '2019-08-24 20:39:35'),
(131, '0.01 GOV', 106, '2 videos upvoting', 1, 'hellogoviddo', '2019-08-24 21:45:34'),
(132, '0.01 GOV', 227, 'For Registration of New User', 1, 'hellogoviddo', '2019-08-25 16:11:06'),
(133, '0.01 GOV', 228, 'For Registration of New User', 1, 'hellogoviddo', '2019-08-25 16:12:38'),
(134, '0.01 GOV', 229, 'For Registration of New User', 1, 'hellogoviddo', '2019-08-25 16:14:27'),
(135, '0.01 GOV', 230, 'For Registration of New User', 1, 'hellogoviddo', '2019-08-25 17:42:44'),
(136, '0.01 GOV', 231, 'For Registration of New User', 1, 'hellogoviddo', '2019-08-25 18:03:36'),
(137, '0.01 GOV', 230, '2 videos upvoting', 1, 'hellogoviddo', '2019-08-26 03:09:46'),
(138, '0.01 GOV', 230, '2 videos upvoting', 1, 'hellogoviddo', '2019-08-26 07:21:14'),
(139, '0.01 GOV', 230, '2 videos upvoting', 1, 'hellogoviddo', '2019-08-26 07:24:04'),
(140, '0.01 GOV', 230, '2 videos upvoting', 1, 'hellogoviddo', '2019-08-26 07:25:45'),
(141, '0.01 GOV', 232, 'For Registration of New User', 1, 'hellogoviddo', '2019-08-26 07:54:20'),
(142, '0.01 GOV', 233, 'For Registration of New User', 1, 'hellogoviddo', '2019-08-26 08:06:02'),
(143, '0.01 GOV', 230, '2 videos upvoting', 1, 'hellogoviddo', '2019-08-26 08:15:42'),
(144, '0.01 GOV', 230, '2 videos upvoting', 1, 'hellogoviddo', '2019-08-26 08:25:47'),
(145, '0.01 GOV', 233, '2 videos upvoting', 1, 'hellogoviddo', '2019-08-26 08:32:28'),
(146, '0.01 GOV', 230, '2 videos upvoting', 1, 'hellogoviddo', '2019-08-26 10:37:05'),
(147, '0.01 GOV', 230, '2 videos upvoting', 1, 'hellogoviddo', '2019-08-26 10:44:47'),
(148, '0.01 GOV', 234, 'For Registration of New User', 1, 'hellogoviddo', '2019-08-26 12:43:47'),
(149, '0.01 GOV', 235, 'For Registration of New User', 1, 'hellogoviddo', '2019-08-26 13:32:37'),
(150, '0.01 GOV', 236, 'For Registration of New User', 1, 'hellogoviddo', '2019-08-26 13:46:36'),
(151, '0.01 GOV', 237, 'For Registration of New User', 1, 'hellogoviddo', '2019-08-26 13:51:28'),
(152, '0.01 GOV', 238, 'For Registration of New User', 1, 'hellogoviddo', '2019-08-26 13:54:32'),
(153, '0.01 GOV', 239, 'For Registration of New User', 1, 'hellogoviddo', '2019-08-26 14:48:13'),
(154, '0.01 GOV', 241, 'For Registration of New User', 1, 'hellogoviddo', '2019-08-26 15:01:19'),
(155, '0.01 GOV', 242, 'For Registration of New User', 1, 'hellogoviddo', '2019-08-26 15:07:45'),
(156, '0.01 GOV', 243, 'For Registration of New User', 1, 'hellogoviddo', '2019-08-27 10:32:17'),
(157, '0.01 GOV', 244, 'For Registration of New User', 1, 'hellogoviddo', '2019-08-27 12:34:44'),
(158, '0.01 GOV', 245, 'For Registration of New User', 1, 'hellogoviddo', '2019-08-27 17:54:28'),
(159, '0.01 GOV', 246, 'For Registration of New User', 1, 'hellogoviddo', '2019-08-28 10:44:54'),
(160, '0.01 GOV', 246, '2 videos upvoting', 1, 'hellogoviddo', '2019-08-28 10:48:01'),
(161, '0.01 GOV', 222, '2 videos upvoting', 1, 'hellogoviddo', '2019-08-28 10:59:42'),
(162, '0.01 GOV', 222, '2 videos upvoting', 1, 'hellogoviddo', '2019-08-28 11:12:11'),
(163, '0.01 GOV', 222, '2 videos upvoting', 1, 'hellogoviddo', '2019-08-28 11:13:19'),
(164, '0.01 GOV', 247, 'For Registration of New User', 1, 'hellogoviddo', '2019-08-28 11:33:14'),
(165, '0.01 GOV', 248, 'For Registration of New User', 1, 'hellogoviddo', '2019-08-28 11:36:07'),
(166, '0.01 GOV', 249, 'For Registration of New User', 1, 'hellogoviddo', '2019-08-28 11:38:52'),
(167, '0.01 GOV', 249, '2 videos upvoting', 1, 'hellogoviddo', '2019-08-28 11:43:23'),
(168, '0.01 GOV', 249, '2 videos upvoting', 1, 'hellogoviddo', '2019-08-28 11:46:03'),
(169, '0.01 GOV', 249, '2 videos upvoting', 1, 'hellogoviddo', '2019-08-28 11:48:01'),
(170, '0.01 GOV', 250, 'For Registration of New User', 1, 'hellogoviddo', '2019-08-29 20:34:28'),
(171, '0.01 GOV', 251, 'For Registration of New User', 1, 'hellogoviddo', '2019-08-31 07:00:04'),
(172, '0.01 GOV', 252, 'For Registration of New User', 1, 'hellogoviddo', '2019-09-07 12:29:11'),
(173, '0.01 GOV', 253, 'For Registration of New User', 1, 'hellogoviddo', '2019-09-07 12:32:06'),
(174, '0.01 GOV', 254, 'For Registration of New User', 1, 'hellogoviddo', '2019-09-07 12:33:58'),
(175, '0.01 GOV', 255, 'For Registration of New User', 1, 'hellogoviddo', '2019-09-07 12:48:27'),
(176, '0.01 GOV', 256, 'For Registration of New User', 1, 'hellogoviddo', '2019-09-19 19:00:13'),
(177, '0.01 GOV', 257, 'For Registration of New User', 1, 'hellogoviddo', '2019-09-22 03:58:04'),
(178, '0.01 GOV', 258, 'For Registration of New User', 1, 'hellogoviddo', '2019-10-14 06:06:13'),
(179, '0.01 GOV', 259, 'For Registration of New User', 1, 'hellogoviddo', '2019-10-22 05:30:03'),
(180, '0.01 GOV', 260, 'For Registration of New User', 1, 'hellogoviddo', '2019-10-22 05:32:43'),
(181, '0.01 GOV', 261, 'For Registration of New User', 1, 'hellogoviddo', '2019-10-23 17:45:21'),
(182, '0.01 GOV', 262, 'For Registration of New User', 1, 'hellogoviddo', '2019-10-25 15:41:02'),
(183, '0.01 GOV', 263, 'For Registration of New User', 1, 'hellogoviddo', '2019-10-25 16:26:48'),
(184, '0.01 GOV', 251, '2 videos upvoting', 1, 'hellogoviddo', '2019-12-27 16:53:26');

-- --------------------------------------------------------

--
-- Table structure for table `video_views_table`
--

CREATE TABLE `video_views_table` (
  `view_id` int(255) NOT NULL,
  `view_time` datetime NOT NULL DEFAULT current_timestamp(),
  `view_user` int(255) NOT NULL,
  `video_id` int(255) NOT NULL,
  `video_name` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `total_video_played_time` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `view_from` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0 - Android App, 1 - Website, 2 - iOS App',
  `earnings_after_view` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `earning_added_account_status` tinyint(4) NOT NULL DEFAULT 0,
  `view_status` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `video_views_table`
--

INSERT INTO `video_views_table` (`view_id`, `view_time`, `view_user`, `video_id`, `video_name`, `total_video_played_time`, `view_from`, `earnings_after_view`, `earning_added_account_status`, `view_status`) VALUES
(253, '2019-04-25 08:21:56', 121, 10, 'Kaul', '0', 0, NULL, 0, 1),
(254, '2019-04-25 08:22:05', 121, 61, 'Rosebush_Shortfilm.mp4', '0', 0, NULL, 0, 1),
(255, '2019-04-25 08:22:15', 121, 62, 'Cycle Short Film', '0', 0, NULL, 0, 1),
(256, '2019-04-25 08:22:27', 121, 65, 'Bashar_Nawaz_Documentry', '0', 0, NULL, 0, 1),
(257, '2019-04-25 08:22:50', 121, 66, 'Yahoo', '0', 0, NULL, 0, 1),
(258, '2019-04-25 08:23:03', 121, 67, 'Yahoo', '535', 0, NULL, 0, 1),
(259, '2019-04-25 08:23:13', 121, 55, 'GoViddo Content\r\n', '0', 0, NULL, 0, 1),
(260, '2019-04-25 08:23:24', 121, 57, 'GO_VIDDO_TEAM_MEMBERS_VIDEO_EDIT_04', '2410', 0, NULL, 0, 1),
(262, '2019-04-25 08:23:44', 121, 56, 'GOVIDDO_COMMUNITY_ECOSYSTEM_ANIMATION_CUT02', '0', 0, NULL, 0, 1),
(266, '2019-04-25 08:35:59', 121, 63, 'Yahoo', '4482', 0, NULL, 0, 1),
(268, '2019-04-28 18:47:22', 138, 57, 'GO_VIDDO_TEAM_MEMBERS_VIDEO_EDIT_04', '0', 0, NULL, 0, 1),
(269, '2019-04-30 08:57:44', 121, 58, 'The_Eco_System', '0', 0, NULL, 0, 1),
(270, '2019-05-02 10:11:34', 107, 10, 'Kaul', '0', 0, NULL, 0, 1),
(271, '2019-05-19 12:21:13', 139, 10, 'Kaul', '0', 0, NULL, 0, 1),
(272, '2019-06-13 19:21:42', 140, 57, 'GO_VIDDO_TEAM_MEMBERS_VIDEO_EDIT_04', '6173', 0, NULL, 0, 1),
(273, '2019-06-19 21:05:10', 141, 63, 'Yahoo', '151345', 0, NULL, 0, 1),
(274, '2019-06-20 03:56:30', 142, 55, 'GoViddo Content\r\n', '0', 0, NULL, 0, 1),
(275, '2019-06-20 04:04:36', 142, 61, 'Rosebush_Shortfilm.mp4', '0', 0, NULL, 0, 1),
(276, '2019-06-20 04:08:22', 142, 62, 'Cycle Short Film', '8423', 0, NULL, 0, 1),
(277, '2019-06-20 07:47:02', 141, 66, 'Yahoo', '0', 0, NULL, 0, 1),
(278, '2019-06-20 10:46:19', 142, 10, 'Kaul', '0', 0, NULL, 0, 1),
(279, '2019-06-20 11:52:19', 143, 57, 'GO_VIDDO_TEAM_MEMBERS_VIDEO_EDIT_04', '30783', 0, NULL, 0, 1),
(280, '2019-06-20 11:54:39', 143, 55, 'GoViddo Content\r\n', '0', 0, NULL, 0, 1),
(281, '2019-06-20 11:57:00', 143, 63, 'Yahoo', '90234', 0, NULL, 0, 1),
(282, '2019-06-20 12:47:04', 143, 62, 'Cycle Short Film', '-182710', 0, NULL, 0, 1),
(283, '2019-06-20 12:59:03', 143, 56, 'GOVIDDO_COMMUNITY_ECOSYSTEM_ANIMATION_CUT02', '0', 0, NULL, 0, 1),
(284, '2019-06-20 14:45:02', 141, 56, 'GOVIDDO_COMMUNITY_ECOSYSTEM_ANIMATION_CUT02', '0', 0, NULL, 0, 1),
(285, '2019-06-20 14:45:15', 141, 57, 'GO_VIDDO_TEAM_MEMBERS_VIDEO_EDIT_04', '0', 0, NULL, 0, 1),
(286, '2019-06-20 21:26:24', 141, 55, 'GoViddo Content\r\n', '8966', 0, NULL, 0, 1),
(287, '2019-06-21 06:17:13', 142, 67, 'Yahoo', '4745', 0, NULL, 0, 1),
(294, '2019-06-21 09:19:28', 106, 56, 'GOVIDDO_COMMUNITY_ECOSYSTEM_ANIMATION_CUT02', '0', 0, NULL, 0, 1),
(295, '2019-06-21 09:19:28', 106, 55, 'GoViddo Content\r\n', '258.543', 0, NULL, 0, 1),
(296, '2019-06-21 09:32:54', 106, 57, 'GO_VIDDO_TEAM_MEMBERS_VIDEO_EDIT_04', '0', 0, NULL, 0, 1),
(297, '2019-06-21 09:32:57', 106, 58, 'The_Eco_System', '0', 0, NULL, 0, 1),
(298, '2019-06-21 09:32:58', 106, 63, 'Yahoo', '258.543', 0, NULL, 0, 1),
(299, '2019-06-21 09:33:58', 106, 62, 'Cycle Short Film', '9667', 0, NULL, 0, 1),
(300, '2019-06-21 11:59:12', 141, 61, 'Rosebush_Shortfilm.mp4', '0', 0, NULL, 0, 1),
(301, '2019-06-21 13:25:58', 141, 10, 'Kaul', '0', 0, NULL, 0, 1),
(302, '2019-06-26 06:52:04', 146, 10, 'Kaul', '0', 0, NULL, 0, 1),
(303, '2019-06-26 06:57:08', 146, 61, 'Rosebush_Shortfilm.mp4', '170694', 0, NULL, 0, 1),
(304, '2019-06-26 06:59:41', 146, 63, 'Yahoo', '66833', 0, NULL, 0, 1),
(305, '2019-06-27 06:57:29', 174, 10, 'Kaul', '0', 0, NULL, 0, 1),
(306, '2019-06-27 07:00:30', 174, 61, 'Rosebush_Shortfilm.mp4', '0', 0, NULL, 0, 1),
(307, '2019-06-27 07:00:44', 174, 63, 'Yahoo', '0', 0, NULL, 0, 1),
(308, '2019-06-27 07:00:58', 174, 65, 'Bashar_Nawaz_Documentry', '0', 0, NULL, 0, 1),
(309, '2019-06-28 13:04:18', 141, 58, 'The_Eco_System', '0', 0, NULL, 0, 1),
(310, '2019-07-02 00:42:57', 139, 61, 'Rosebush_Shortfilm.mp4', '0', 0, NULL, 0, 1),
(311, '2019-07-04 22:18:49', 141, 62, 'Cycle Short Film', '46221', 0, NULL, 0, 1),
(312, '2019-07-07 05:09:48', 106, 10, 'Kaul', '0', 0, NULL, 0, 1),
(313, '2019-07-07 09:39:14', 106, 65, 'Bashar_Nawaz_Documentry', '0', 0, NULL, 0, 1),
(314, '2019-07-10 08:52:58', 141, 68, 'Yahoo', '1833', 0, NULL, 0, 1),
(315, '2019-07-12 21:28:46', 141, 67, 'Yahoo', '0', 0, NULL, 0, 1),
(316, '2019-07-23 16:48:51', 190, 10, 'Kaul', '0', 0, NULL, 0, 1),
(317, '2019-08-05 08:08:19', 106, 73, 'GO_VIDDO_TEAM_MEMBERS_VIDEO_EDIT_04', '100', 0, NULL, 0, 1),
(318, '2019-08-10 12:16:19', 106, 61, 'Rosebush_Shortfilm.mp4', '46175', 0, NULL, 0, 1),
(319, '2019-08-21 10:24:18', 220, 55, 'GoViddo Content\r\n', '258.543', 0, NULL, 0, 1),
(320, '2019-08-21 13:48:29', 221, 55, 'GoViddo Content\r\n', '258.543', 0, NULL, 0, 1),
(321, '2019-08-22 13:57:09', 219, 63, 'Yahoo', '258.543', 0, NULL, 0, 1),
(322, '2019-08-22 14:19:22', 222, 55, 'GoViddo Content\r\n', '258.543', 0, NULL, 0, 1),
(323, '2019-08-23 18:07:30', 225, 89, 'Yahoo', '258.543', 0, NULL, 0, 1),
(324, '2019-08-25 17:46:56', 230, 90, 'Bashar_Nawaz_Documentry', '258.543', 0, NULL, 0, 1),
(325, '2019-08-25 18:31:07', 230, 55, 'GoViddo Content\r\n', '258.543', 0, NULL, 0, 1),
(326, '2019-08-26 07:21:26', 230, 70, 'Kaul', '55.13', 0, NULL, 0, 1),
(327, '2019-08-26 08:10:50', 233, 68, 'Yahoo', '266.96', 0, NULL, 0, 1),
(328, '2019-08-26 08:15:15', 230, 56, 'GOVIDDO_COMMUNITY_ECOSYSTEM_ANIMATION_CUT02', '258.543', 0, NULL, 0, 1),
(329, '2019-08-26 08:17:43', 230, 71, 'GoViddo Content\r\n', '55.13', 0, NULL, 0, 1),
(330, '2019-08-26 08:25:00', 230, 87, 'Rosebush_Shortfilm.mp4', '258.543', 0, NULL, 0, 1),
(331, '2019-08-26 08:26:28', 230, 89, 'Yahoo', '258.543', 0, NULL, 0, 1),
(332, '2019-08-26 08:27:04', 230, 86, 'Bashar_Nawaz_Documentry', '258.543', 0, NULL, 0, 1),
(333, '2019-08-26 08:27:32', 230, 85, 'Yahoo', '258.543', 0, NULL, 0, 1),
(334, '2019-08-26 10:37:33', 230, 58, 'The_Eco_System', '258.543', 0, NULL, 0, 1),
(335, '2019-08-26 10:44:13', 230, 69, 'Yahoo', '266.96', 0, NULL, 0, 1),
(336, '2019-08-26 10:45:02', 230, 68, 'Yahoo', '266.96', 0, NULL, 0, 1),
(337, '2019-08-28 11:13:33', 222, 57, 'GO_VIDDO_TEAM_MEMBERS_VIDEO_EDIT_04', '258.543', 0, NULL, 0, 1),
(338, '2019-08-28 11:14:46', 222, 89, 'Yahoo', '258.543', 0, NULL, 0, 1),
(339, '2019-08-28 11:18:26', 222, 87, 'Rosebush_Shortfilm.mp4', '258.543', 0, NULL, 0, 1),
(340, '2019-09-01 21:15:40', 250, 66, 'Yahoo', '266.96', 0, NULL, 0, 1),
(341, '2019-10-23 17:47:17', 261, 70, 'Kaul', '55.13', 0, NULL, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `watch_later`
--

CREATE TABLE `watch_later` (
  `watch_letter_id` int(255) NOT NULL,
  `watch_letter_video_id` int(255) NOT NULL,
  `watch_letter_user_id` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `watch_later`
--

INSERT INTO `watch_later` (`watch_letter_id`, `watch_letter_video_id`, `watch_letter_user_id`) VALUES
(6, 62, 138),
(7, 56, 106),
(8, 61, 121),
(9, 65, 121),
(10, 62, 121),
(11, 55, 106),
(12, 10, 106),
(13, 10, 139),
(14, 63, 141),
(15, 10, 146),
(16, 61, 174),
(17, 10, 174),
(18, 62, 141),
(19, 73, 106);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_table`
--
ALTER TABLE `admin_table`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `channel_list`
--
ALTER TABLE `channel_list`
  ADD PRIMARY KEY (`channel_id`);

--
-- Indexes for table `community`
--
ALTER TABLE `community`
  ADD PRIMARY KEY (`community_join_id`);

--
-- Indexes for table `config_table`
--
ALTER TABLE `config_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crowdfund_project_details`
--
ALTER TABLE `crowdfund_project_details`
  ADD PRIMARY KEY (`crowdfund_project_id`),
  ADD KEY `crowdfund_project_category_details` (`crowdfund_project_category_details`);

--
-- Indexes for table `crowdfund_user_details`
--
ALTER TABLE `crowdfund_user_details`
  ADD PRIMARY KEY (`crowdfun_user_id`);

--
-- Indexes for table `crowd_funding_category_list`
--
ALTER TABLE `crowd_funding_category_list`
  ADD PRIMARY KEY (`crowd_fund_cat_id`);

--
-- Indexes for table `invested_in`
--
ALTER TABLE `invested_in`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `series_details_table`
--
ALTER TABLE `series_details_table`
  ADD PRIMARY KEY (`series_id`);

--
-- Indexes for table `series_season_details_table`
--
ALTER TABLE `series_season_details_table`
  ADD PRIMARY KEY (`season_table_id`),
  ADD KEY `series_number` (`series_number`);

--
-- Indexes for table `share_table`
--
ALTER TABLE `share_table`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `subscirption_list`
--
ALTER TABLE `subscirption_list`
  ADD PRIMARY KEY (`subsciption_id`);

--
-- Indexes for table `user_table`
--
ALTER TABLE `user_table`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `email_id` (`email_id`);

--
-- Indexes for table `video_comments_table`
--
ALTER TABLE `video_comments_table`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `video_genere_table`
--
ALTER TABLE `video_genere_table`
  ADD PRIMARY KEY (`video_genere_id`);

--
-- Indexes for table `video_like_table`
--
ALTER TABLE `video_like_table`
  ADD PRIMARY KEY (`video_like_id`);

--
-- Indexes for table `video_table`
--
ALTER TABLE `video_table`
  ADD PRIMARY KEY (`video_id`),
  ADD KEY `video_genere_type` (`video_genere_type`);

--
-- Indexes for table `video_transactions`
--
ALTER TABLE `video_transactions`
  ADD PRIMARY KEY (`transaction_id`);

--
-- Indexes for table `video_views_table`
--
ALTER TABLE `video_views_table`
  ADD PRIMARY KEY (`view_id`);

--
-- Indexes for table `watch_later`
--
ALTER TABLE `watch_later`
  ADD PRIMARY KEY (`watch_letter_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_table`
--
ALTER TABLE `admin_table`
  MODIFY `admin_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `channel_list`
--
ALTER TABLE `channel_list`
  MODIFY `channel_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `community`
--
ALTER TABLE `community`
  MODIFY `community_join_id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `config_table`
--
ALTER TABLE `config_table`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `crowdfund_project_details`
--
ALTER TABLE `crowdfund_project_details`
  MODIFY `crowdfund_project_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `crowdfund_user_details`
--
ALTER TABLE `crowdfund_user_details`
  MODIFY `crowdfun_user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `crowd_funding_category_list`
--
ALTER TABLE `crowd_funding_category_list`
  MODIFY `crowd_fund_cat_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `invested_in`
--
ALTER TABLE `invested_in`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `series_details_table`
--
ALTER TABLE `series_details_table`
  MODIFY `series_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `series_season_details_table`
--
ALTER TABLE `series_season_details_table`
  MODIFY `season_table_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `share_table`
--
ALTER TABLE `share_table`
  MODIFY `sid` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `subscirption_list`
--
ALTER TABLE `subscirption_list`
  MODIFY `subsciption_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `user_table`
--
ALTER TABLE `user_table`
  MODIFY `user_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=264;

--
-- AUTO_INCREMENT for table `video_comments_table`
--
ALTER TABLE `video_comments_table`
  MODIFY `comment_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `video_genere_table`
--
ALTER TABLE `video_genere_table`
  MODIFY `video_genere_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `video_like_table`
--
ALTER TABLE `video_like_table`
  MODIFY `video_like_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT for table `video_table`
--
ALTER TABLE `video_table`
  MODIFY `video_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `video_transactions`
--
ALTER TABLE `video_transactions`
  MODIFY `transaction_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=185;

--
-- AUTO_INCREMENT for table `video_views_table`
--
ALTER TABLE `video_views_table`
  MODIFY `view_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=342;

--
-- AUTO_INCREMENT for table `watch_later`
--
ALTER TABLE `watch_later`
  MODIFY `watch_letter_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `crowdfund_project_details`
--
ALTER TABLE `crowdfund_project_details`
  ADD CONSTRAINT `crowdfund_project_details_ibfk_1` FOREIGN KEY (`crowdfund_project_category_details`) REFERENCES `crowd_funding_category_list` (`crowd_fund_cat_id`);

--
-- Constraints for table `series_season_details_table`
--
ALTER TABLE `series_season_details_table`
  ADD CONSTRAINT `series_season_details_table_ibfk_1` FOREIGN KEY (`series_number`) REFERENCES `series_details_table` (`series_id`);

--
-- Constraints for table `video_table`
--
ALTER TABLE `video_table`
  ADD CONSTRAINT `video_table_ibfk_1` FOREIGN KEY (`video_genere_type`) REFERENCES `video_genere_table` (`video_genere_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
