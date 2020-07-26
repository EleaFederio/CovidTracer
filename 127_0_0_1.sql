-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 26, 2020 at 04:53 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ajax`
--
CREATE DATABASE IF NOT EXISTS `ajax` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `ajax`;
--
-- Database: `api`
--
CREATE DATABASE IF NOT EXISTS `api` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `api`;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
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
(3, '2018_09_26_163300_student_register', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `student_academic_record`
--

CREATE TABLE `student_academic_record` (
  `id` int(10) UNSIGNED NOT NULL,
  `student_id` int(10) UNSIGNED NOT NULL,
  `academic_session_id` int(10) UNSIGNED NOT NULL,
  `grade_id` int(10) UNSIGNED NOT NULL,
  `section_id` int(10) UNSIGNED NOT NULL,
  `house_id` int(10) UNSIGNED NOT NULL,
  `entry` enum('N','D','P') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` int(10) UNSIGNED NOT NULL,
  `register_by` int(10) UNSIGNED NOT NULL,
  `modified` int(10) UNSIGNED NOT NULL,
  `modified_by` int(10) UNSIGNED NOT NULL,
  `record_deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `student_emergency_contact`
--

CREATE TABLE `student_emergency_contact` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(49) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `family_id` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `relationship_id` int(10) UNSIGNED NOT NULL,
  `address_type_id` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `address_id` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `created` int(10) UNSIGNED NOT NULL,
  `register_by` int(10) UNSIGNED NOT NULL,
  `modified` int(10) UNSIGNED NOT NULL,
  `modified_by` int(10) UNSIGNED NOT NULL,
  `record_deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_emergency_contact`
--

INSERT INTO `student_emergency_contact` (`id`, `name`, `family_id`, `relationship_id`, `address_type_id`, `address_id`, `created`, `register_by`, `modified`, `modified_by`, `record_deleted`) VALUES
(1, 'Atif Naseem', 1, 2, 1, 1, 1582961324, 1, 1582961324, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `student_family`
--

CREATE TABLE `student_family` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(99) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(49) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `last_name` varchar(49) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `relationship_id` int(10) UNSIGNED NOT NULL,
  `marital_status_id` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `nationality` varchar(99) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `family_id` int(10) UNSIGNED NOT NULL,
  `mobile_phone` varchar(99) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(99) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `nic` varchar(99) COLLATE utf8mb4_unicode_ci NOT NULL,
  `card_code` varchar(99) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(99) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `profession_id` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `q1` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `q2` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `w1` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `created` int(10) UNSIGNED NOT NULL,
  `register_by` int(10) UNSIGNED NOT NULL,
  `modified` int(10) UNSIGNED NOT NULL,
  `modified_by` int(10) UNSIGNED NOT NULL,
  `record_deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_family`
--

INSERT INTO `student_family` (`id`, `name`, `first_name`, `last_name`, `relationship_id`, `marital_status_id`, `nationality`, `family_id`, `mobile_phone`, `email`, `nic`, `card_code`, `image`, `profession_id`, `q1`, `q2`, `w1`, `created`, `register_by`, `modified`, `modified_by`, `record_deleted`) VALUES
(1, 'Atif Naseem', '', '', 2, 2, '', 1, '', '', '42101-1666', '1', '', 1, 1, 1, 1, 1582961324, 1, 1582961324, 1, 0),
(2, 'Hina Atif', '', '', 3, 2, '', 1, '', '', '42101-1677', '2', '', 1, 1, 1, 1, 1582961324, 1, 1582961324, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `student_family_id`
--

CREATE TABLE `student_family_id` (
  `id` int(10) UNSIGNED NOT NULL,
  `family_code` int(10) UNSIGNED NOT NULL,
  `address_type_id` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `address_id` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `created` int(10) UNSIGNED NOT NULL,
  `register_by` int(10) UNSIGNED NOT NULL,
  `modified` int(10) UNSIGNED NOT NULL,
  `modified_by` int(10) UNSIGNED NOT NULL,
  `record_deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_family_id`
--

INSERT INTO `student_family_id` (`id`, `family_code`, `address_type_id`, `address_id`, `created`, `register_by`, `modified`, `modified_by`, `record_deleted`) VALUES
(1, 180001, 1, 1, 1582961324, 1, 1582961324, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `student_register`
--

CREATE TABLE `student_register` (
  `id` int(10) UNSIGNED NOT NULL,
  `reg_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(99) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abridged_name` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `call_name` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `first_name` varchar(49) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `last_name` varchar(49) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `gender` enum('g','b') COLLATE utf8mb4_unicode_ci NOT NULL,
  `dob` date NOT NULL,
  `nationality` varchar(99) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `religion_id` int(10) UNSIGNED NOT NULL DEFAULT 2,
  `academic_session_id` int(10) UNSIGNED NOT NULL,
  `academic_grade_id` int(10) UNSIGNED NOT NULL,
  `previous_school_name` varchar(49) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `image` varchar(99) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `mobile_phone` varchar(99) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(99) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `facebook` varchar(99) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `linkedin` varchar(99) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `family_id` int(10) UNSIGNED NOT NULL,
  `status_id` int(10) UNSIGNED NOT NULL DEFAULT 2,
  `sibling_no` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `active_sibling_no` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `card_code` varchar(99) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` int(10) UNSIGNED NOT NULL,
  `register_by` int(10) UNSIGNED NOT NULL,
  `modified` int(10) UNSIGNED NOT NULL,
  `modified_by` int(10) UNSIGNED NOT NULL,
  `record_deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_register`
--

INSERT INTO `student_register` (`id`, `reg_id`, `name`, `abridged_name`, `call_name`, `first_name`, `last_name`, `gender`, `dob`, `nationality`, `religion_id`, `academic_session_id`, `academic_grade_id`, `previous_school_name`, `image`, `mobile_phone`, `email`, `facebook`, `linkedin`, `family_id`, `status_id`, `sibling_no`, `active_sibling_no`, `card_code`, `created`, `register_by`, `modified`, `modified_by`, `record_deleted`) VALUES
(1, 180001, 'S Atif', 'S Atif', 'S', '', '', 'b', '2013-11-20', '', 2, 1, 7, '', '', '', '', '', '', 1, 2, 0, 0, '18-0001', 1582961324, 1, 1582961324, 1, 0),
(2, 180002, 'D Atif', 'D Atif', 'D', '', '', 'b', '2017-05-20', '', 2, 1, 6, '', '', '', '', '', '', 1, 2, 0, 0, '18-0002', 1582961324, 1, 1582961324, 1, 0);

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
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `_z_address`
--

CREATE TABLE `_z_address` (
  `id` int(10) UNSIGNED NOT NULL,
  `line_1` varchar(99) COLLATE utf8mb4_unicode_ci NOT NULL,
  `line_2` varchar(99) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `line_3` varchar(99) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `apartment_no` varchar(99) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `building_name` varchar(99) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `plot_no` varchar(99) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `street_name` varchar(99) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `country_id` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `province_id` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `city_id` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `region_id` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `subregion_id` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `zip_or_postal` varchar(9) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `phone` varchar(99) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `note` varchar(99) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created` int(10) UNSIGNED NOT NULL,
  `register_by` int(10) UNSIGNED NOT NULL,
  `modified` int(10) UNSIGNED NOT NULL,
  `modified_by` int(10) UNSIGNED NOT NULL,
  `record_deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `_z_address`
--

INSERT INTO `_z_address` (`id`, `line_1`, `line_2`, `line_3`, `apartment_no`, `building_name`, `plot_no`, `street_name`, `country_id`, `province_id`, `city_id`, `region_id`, `subregion_id`, `zip_or_postal`, `phone`, `note`, `created`, `register_by`, `modified`, `modified_by`, `record_deleted`) VALUES
(1, '', '', '', '', '', '', '', 1, 1, 1, 1, 1, '', '', '', 1582961324, 1, 1582961324, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `_z_address_type`
--

CREATE TABLE `_z_address_type` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(99) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `position` int(10) UNSIGNED NOT NULL,
  `created` int(10) UNSIGNED NOT NULL,
  `register_by` int(10) UNSIGNED NOT NULL,
  `modified` int(10) UNSIGNED NOT NULL,
  `modified_by` int(10) UNSIGNED NOT NULL,
  `record_deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `_z_address_type`
--

INSERT INTO `_z_address_type` (`id`, `name`, `description`, `position`, `created`, `register_by`, `modified`, `modified_by`, `record_deleted`) VALUES
(1, 'Residential', '', 1, 1582961324, 1, 1582961324, 1, 0),
(2, 'Work', '', 2, 1582961324, 1, 1582961324, 1, 0),
(3, 'Billing', '', 3, 1582961324, 1, 1582961324, 1, 0),
(4, 'Delivery', '', 4, 1582961324, 1, 1582961324, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `_z_country`
--

CREATE TABLE `_z_country` (
  `id` int(10) UNSIGNED NOT NULL,
  `iso` varchar(6) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(99) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `dname` varchar(99) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `iso3` varchar(9) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` int(10) UNSIGNED NOT NULL,
  `numcode` smallint(6) NOT NULL,
  `phonecode` mediumint(9) NOT NULL,
  `created` int(10) UNSIGNED NOT NULL,
  `register_by` int(10) UNSIGNED NOT NULL,
  `modified` int(10) UNSIGNED NOT NULL,
  `modified_by` int(10) UNSIGNED NOT NULL,
  `record_deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `_z_country`
--

INSERT INTO `_z_country` (`id`, `iso`, `name`, `dname`, `iso3`, `position`, `numcode`, `phonecode`, `created`, `register_by`, `modified`, `modified_by`, `record_deleted`) VALUES
(1, 'XX', 'The Power', 'Unknown', 'XX', 1, 0, 0, 1582961324, 1, 1582961324, 1, 0),
(2, 'AF', 'AFGHANISTAN', 'Afghanistan', 'AFG', 2, 4, 93, 1582961324, 1, 1582961324, 1, 0),
(3, 'AL', 'ALBANIA', 'Albania', 'ALB', 3, 8, 355, 1582961324, 1, 1582961324, 1, 0),
(4, 'DZ', 'ALGERIA', 'Algeria', 'DZA', 4, 12, 213, 1582961324, 1, 1582961324, 1, 0),
(5, 'AS', 'AMERICAN SAMOA', 'American Samoa', 'ASM', 5, 16, 1684, 1582961324, 1, 1582961324, 1, 0),
(6, 'AD', 'ANDORRA', 'Andorra', 'AND', 6, 20, 376, 1582961324, 1, 1582961324, 1, 0),
(7, 'AO', 'ANGOLA', 'Angola', 'AGO', 7, 24, 244, 1582961324, 1, 1582961324, 1, 0),
(8, 'AI', 'ANGUILLA', 'Anguilla', 'AIA', 8, 660, 1264, 1582961324, 1, 1582961324, 1, 0),
(9, 'AQ', 'ANTARCTICA', 'Antarctica', 'AQ', 9, 0, 0, 1582961324, 1, 1582961324, 1, 0),
(10, 'AG', 'ANTIGUA AND BARBUDA', 'Antigua and Barbuda', 'ATG', 10, 28, 1268, 1582961324, 1, 1582961324, 1, 0),
(11, 'AR', 'ARGENTINA', 'Argentina', 'ARG', 11, 32, 54, 1582961324, 1, 1582961324, 1, 0),
(12, 'AM', 'ARMENIA', 'Armenia', 'ARM', 12, 51, 374, 1582961324, 1, 1582961324, 1, 0),
(13, 'AW', 'ARUBA', 'Aruba', 'ABW', 13, 533, 297, 1582961324, 1, 1582961324, 1, 0),
(14, 'AU', 'AUSTRALIA', 'Australia', 'AUS', 14, 36, 61, 1582961324, 1, 1582961324, 1, 0),
(15, 'AT', 'AUSTRIA', 'Austria', 'AUT', 15, 40, 43, 1582961324, 1, 1582961324, 1, 0),
(16, 'AZ', 'AZERBAIJAN', 'Azerbaijan', 'AZE', 16, 31, 994, 1582961324, 1, 1582961324, 1, 0),
(17, 'BS', 'BAHAMAS', 'Bahamas', 'BHS', 17, 44, 1242, 1582961324, 1, 1582961324, 1, 0),
(18, 'BH', 'BAHRAIN', 'Bahrain', 'BHR', 18, 48, 973, 1582961324, 1, 1582961324, 1, 0),
(19, 'BD', 'BANGLADESH', 'Bangladesh', 'BGD', 19, 50, 880, 1582961324, 1, 1582961324, 1, 0),
(20, 'BB', 'BARBADOS', 'Barbados', 'BRB', 20, 52, 1246, 1582961324, 1, 1582961324, 1, 0),
(21, 'BY', 'BELARUS', 'Belarus', 'BLR', 21, 112, 375, 1582961324, 1, 1582961324, 1, 0),
(22, 'BE', 'BELGIUM', 'Belgium', 'BEL', 22, 56, 32, 1582961324, 1, 1582961324, 1, 0),
(23, 'BZ', 'BELIZE', 'Belize', 'BLZ', 23, 84, 501, 1582961324, 1, 1582961324, 1, 0),
(24, 'BJ', 'BENIN', 'Benin', 'BEN', 24, 204, 229, 1582961324, 1, 1582961324, 1, 0),
(25, 'BM', 'BERMUDA', 'Bermuda', 'BMU', 25, 60, 1441, 1582961324, 1, 1582961324, 1, 0),
(26, 'BT', 'BHUTAN', 'Bhutan', 'BTN', 26, 64, 975, 1582961324, 1, 1582961324, 1, 0),
(27, 'BO', 'BOLIVIA', 'Bolivia', 'BOL', 27, 68, 591, 1582961324, 1, 1582961324, 1, 0),
(28, 'BA', 'BOSNIA AND HERZEGOVINA', 'Bosnia and Herzegovina', 'BIH', 28, 70, 387, 1582961324, 1, 1582961324, 1, 0),
(29, 'BW', 'BOTSWANA', 'Botswana', 'BWA', 29, 72, 267, 1582961324, 1, 1582961324, 1, 0),
(30, 'BV', 'BOUVET ISLAND', 'Bouvet Island', 'BV', 30, 0, 0, 1582961324, 1, 1582961324, 1, 0),
(31, 'BR', 'BRAZIL', 'Brazil', 'BRA', 31, 76, 55, 1582961324, 1, 1582961324, 1, 0),
(32, 'IO', 'BRITISH INDIAN OCEAN TERRITORY', 'British Indian Ocean Territory', 'IO', 32, 0, 246, 1582961324, 1, 1582961324, 1, 0),
(33, 'BN', 'BRUNEI DARUSSALAM', 'Brunei Darussalam', 'BRN', 33, 96, 673, 1582961324, 1, 1582961324, 1, 0),
(34, 'BG', 'BULGARIA', 'Bulgaria', 'BGR', 34, 100, 359, 1582961324, 1, 1582961324, 1, 0),
(35, 'BF', 'BURKINA FASO', 'Burkina Faso', 'BFA', 35, 854, 226, 1582961324, 1, 1582961324, 1, 0),
(36, 'BI', 'BURUNDI', 'Burundi', 'BDI', 36, 108, 257, 1582961324, 1, 1582961324, 1, 0),
(37, 'KH', 'CAMBODIA', 'Cambodia', 'KHM', 37, 116, 855, 1582961324, 1, 1582961324, 1, 0),
(38, 'CM', 'CAMEROON', 'Cameroon', 'CMR', 38, 120, 237, 1582961324, 1, 1582961324, 1, 0),
(39, 'CA', 'CANADA', 'Canada', 'CAN', 39, 124, 1, 1582961324, 1, 1582961324, 1, 0),
(40, 'CV', 'CAPE VERDE', 'Cape Verde', 'CPV', 40, 132, 238, 1582961324, 1, 1582961324, 1, 0),
(41, 'KY', 'CAYMAN ISLANDS', 'Cayman Islands', 'CYM', 41, 136, 1345, 1582961324, 1, 1582961324, 1, 0),
(42, 'CF', 'CENTRAL AFRICAN REPUBLIC', 'Central African Republic', 'CAF', 42, 140, 236, 1582961324, 1, 1582961324, 1, 0),
(43, 'TD', 'CHAD', 'Chad', 'TCD', 43, 148, 235, 1582961324, 1, 1582961324, 1, 0),
(44, 'CL', 'CHILE', 'Chile', 'CHL', 44, 152, 56, 1582961324, 1, 1582961324, 1, 0),
(45, 'CN', 'CHINA', 'China', 'CHN', 45, 156, 86, 1582961324, 1, 1582961324, 1, 0),
(46, 'CX', 'CHRISTMAS ISLAND', 'Christmas Island', 'CX', 46, 0, 61, 1582961324, 1, 1582961324, 1, 0),
(47, 'CC', 'COCOS (KEELING) ISLANDS', 'Cocos (Keeling) Islands', 'CC', 47, 0, 672, 1582961324, 1, 1582961324, 1, 0),
(48, 'CO', 'COLOMBIA', 'Colombia', 'COL', 48, 170, 57, 1582961324, 1, 1582961324, 1, 0),
(49, 'KM', 'COMOROS', 'Comoros', 'COM', 49, 174, 269, 1582961324, 1, 1582961324, 1, 0),
(50, 'CG', 'CONGO', 'Congo', 'COG', 50, 178, 242, 1582961324, 1, 1582961324, 1, 0),
(51, 'CD', 'CONGO', 'Congo', 'CD', 51, 0, 0, 1582961324, 1, 1582961324, 1, 0),
(52, 'CK', 'COOK ISLANDS', 'Cook Islands', 'COK', 52, 184, 682, 1582961324, 1, 1582961324, 1, 0),
(53, 'CR', 'COSTA RICA', 'Costa Rica', 'CRI', 53, 188, 506, 1582961324, 1, 1582961324, 1, 0),
(54, 'CI', 'COTE DIVOIRE', 'Cote DIvoire', 'CIV', 54, 384, 225, 1582961324, 1, 1582961324, 1, 0),
(55, 'HR', 'CROATIA', 'Croatia', 'HRV', 55, 191, 385, 1582961324, 1, 1582961324, 1, 0),
(56, 'CU', 'CUBA', 'Cuba', 'CUB', 56, 192, 53, 1582961324, 1, 1582961324, 1, 0),
(57, 'CY', 'CYPRUS', 'Cyprus', 'CYP', 57, 196, 357, 1582961324, 1, 1582961324, 1, 0),
(58, 'CZ', 'CZECH REPUBLIC', 'Czech Republic', 'CZE', 58, 203, 420, 1582961324, 1, 1582961324, 1, 0),
(59, 'DK', 'DENMARK', 'Denmark', 'DNK', 59, 208, 45, 1582961324, 1, 1582961324, 1, 0),
(60, 'DJ', 'DJIBOUTI', 'Djibouti', 'DJI', 60, 262, 253, 1582961324, 1, 1582961324, 1, 0),
(61, 'DM', 'DOMINICA', 'Dominica', 'DMA', 61, 212, 1767, 1582961324, 1, 1582961324, 1, 0),
(62, 'DO', 'DOMINICAN REPUBLIC', 'Dominican Republic', 'DOM', 62, 214, 1809, 1582961324, 1, 1582961324, 1, 0),
(63, 'EC', 'ECUADOR', 'Ecuador', 'ECU', 63, 218, 593, 1582961324, 1, 1582961324, 1, 0),
(64, 'EG', 'EGYPT', 'Egypt', 'EGY', 64, 818, 20, 1582961324, 1, 1582961324, 1, 0),
(65, 'SV', 'EL SALVADOR', 'El Salvador', 'SLV', 65, 222, 503, 1582961324, 1, 1582961324, 1, 0),
(66, 'GQ', 'EQUATORIAL GUINEA', 'Equatorial Guinea', 'GNQ', 66, 226, 240, 1582961324, 1, 1582961324, 1, 0),
(67, 'ER', 'ERITREA', 'Eritrea', 'ERI', 67, 232, 291, 1582961324, 1, 1582961324, 1, 0),
(68, 'EE', 'ESTONIA', 'Estonia', 'EST', 68, 233, 372, 1582961324, 1, 1582961324, 1, 0),
(69, 'ET', 'ETHIOPIA', 'Ethiopia', 'ETH', 69, 231, 251, 1582961324, 1, 1582961324, 1, 0),
(70, 'FK', 'FALKLAND ISLANDS (MALVINAS)', 'Falkland Islands (Malvinas)', 'FLK', 70, 238, 500, 1582961324, 1, 1582961324, 1, 0),
(71, 'FO', 'FAROE ISLANDS', 'Faroe Islands', 'FRO', 71, 234, 298, 1582961324, 1, 1582961324, 1, 0),
(72, 'FJ', 'FIJI', 'Fiji', 'FJI', 72, 242, 679, 1582961324, 1, 1582961324, 1, 0),
(73, 'FI', 'FINLAND', 'Finland', 'FIN', 73, 246, 358, 1582961324, 1, 1582961324, 1, 0),
(74, 'FR', 'FRANCE', 'France', 'FRA', 74, 250, 33, 1582961324, 1, 1582961324, 1, 0),
(75, 'GF', 'FRENCH GUIANA', 'French Guiana', 'GUF', 75, 254, 594, 1582961324, 1, 1582961324, 1, 0),
(76, 'PF', 'FRENCH POLYNESIA', 'French Polynesia', 'PYF', 76, 258, 689, 1582961324, 1, 1582961324, 1, 0),
(77, 'TF', 'FRENCH SOUTHERN TERRITORIES', 'French Southern Territories', 'TF', 77, 0, 0, 1582961324, 1, 1582961324, 1, 0),
(78, 'GA', 'GABON', 'Gabon', 'GAB', 78, 266, 241, 1582961324, 1, 1582961324, 1, 0),
(79, 'GM', 'GAMBIA', 'Gambia', 'GMB', 79, 270, 220, 1582961324, 1, 1582961324, 1, 0),
(80, 'GE', 'GEORGIA', 'Georgia', 'GEO', 80, 268, 995, 1582961324, 1, 1582961324, 1, 0),
(81, 'DE', 'GERMANY', 'Germany', 'DEU', 81, 276, 49, 1582961324, 1, 1582961324, 1, 0),
(82, 'GH', 'GHANA', 'Ghana', 'GHA', 82, 288, 233, 1582961324, 1, 1582961324, 1, 0),
(83, 'GI', 'GIBRALTAR', 'Gibraltar', 'GIB', 83, 292, 350, 1582961324, 1, 1582961324, 1, 0),
(84, 'GR', 'GREECE', 'Greece', 'GRC', 84, 300, 30, 1582961324, 1, 1582961324, 1, 0),
(85, 'GL', 'GREENLAND', 'Greenland', 'GRL', 85, 304, 299, 1582961324, 1, 1582961324, 1, 0),
(86, 'GD', 'GRENADA', 'Grenada', 'GRD', 86, 308, 1473, 1582961324, 1, 1582961324, 1, 0),
(87, 'GP', 'GUADELOUPE', 'Guadeloupe', 'GLP', 87, 312, 590, 1582961324, 1, 1582961324, 1, 0),
(88, 'GU', 'GUAM', 'Guam', 'GUM', 88, 316, 1671, 1582961324, 1, 1582961324, 1, 0),
(89, 'GT', 'GUATEMALA', 'Guatemala', 'GTM', 89, 320, 502, 1582961324, 1, 1582961324, 1, 0),
(90, 'GN', 'GUINEA', 'Guinea', 'GIN', 90, 324, 224, 1582961324, 1, 1582961324, 1, 0),
(91, 'GW', 'GUINEA-BISSAU', 'Guinea-Bissau', 'GNB', 91, 624, 245, 1582961324, 1, 1582961324, 1, 0),
(92, 'GY', 'GUYANA', 'Guyana', 'GUY', 92, 328, 592, 1582961324, 1, 1582961324, 1, 0),
(93, 'HT', 'HAITI', 'Haiti', 'HTI', 93, 332, 509, 1582961324, 1, 1582961324, 1, 0),
(94, 'HM', 'HEARD ISLAND AND MCDONALD ISLANDS', 'Heard Island and Mcdonald Islands', 'HM', 94, 0, 0, 1582961324, 1, 1582961324, 1, 0),
(95, 'VA', 'HOLY SEE (VATICAN CITY STATE)', 'Holy See (Vatican City State)', 'VAT', 95, 336, 39, 1582961324, 1, 1582961324, 1, 0),
(96, 'HN', 'HONDURAS', 'Honduras', 'HND', 96, 340, 504, 1582961324, 1, 1582961324, 1, 0),
(97, 'HK', 'HONG KONG', 'Hong Kong', 'HKG', 97, 344, 852, 1582961324, 1, 1582961324, 1, 0),
(98, 'HU', 'HUNGARY', 'Hungary', 'HUN', 98, 348, 36, 1582961324, 1, 1582961324, 1, 0),
(99, 'IS', 'ICELAND', 'Iceland', 'ISL', 99, 352, 354, 1582961324, 1, 1582961324, 1, 0),
(100, 'IN', 'INDIA', 'India', 'IND', 100, 356, 91, 1582961324, 1, 1582961324, 1, 0),
(101, 'ID', 'INDONESIA', 'Indonesia', 'IDN', 101, 360, 62, 1582961324, 1, 1582961324, 1, 0),
(102, 'IR', 'IRAN', 'Iran', 'IR', 102, 0, 0, 1582961324, 1, 1582961324, 1, 0),
(103, 'IQ', 'IRAQ', 'Iraq', 'IRQ', 103, 368, 964, 1582961324, 1, 1582961324, 1, 0),
(104, 'IE', 'IRELAND', 'Ireland', 'IRL', 104, 372, 353, 1582961324, 1, 1582961324, 1, 0),
(105, 'IL', 'ISRAEL', 'Israel', 'ISR', 105, 376, 972, 1582961324, 1, 1582961324, 1, 0),
(106, 'IT', 'ITALY', 'Italy', 'ITA', 106, 380, 39, 1582961324, 1, 1582961324, 1, 0),
(107, 'JM', 'JAMAICA', 'Jamaica', 'JAM', 107, 388, 1876, 1582961324, 1, 1582961324, 1, 0),
(108, 'JP', 'JAPAN', 'Japan', 'JPN', 108, 392, 81, 1582961324, 1, 1582961324, 1, 0),
(109, 'JO', 'JORDAN', 'Jordan', 'JOR', 109, 400, 962, 1582961324, 1, 1582961324, 1, 0),
(110, 'KZ', 'KAZAKHSTAN', 'Kazakhstan', 'KAZ', 110, 398, 7, 1582961324, 1, 1582961324, 1, 0),
(111, 'KE', 'KENYA', 'Kenya', 'KEN', 111, 404, 254, 1582961324, 1, 1582961324, 1, 0),
(112, 'KI', 'KIRIBATI', 'Kiribati', 'KIR', 112, 296, 686, 1582961324, 1, 1582961324, 1, 0),
(113, 'KP', 'KOREA', 'Korea', 'KP', 113, 0, 0, 1582961324, 1, 1582961324, 1, 0),
(114, 'KR', 'KOREA', 'Korea', 'KR', 114, 0, 0, 1582961324, 1, 1582961324, 1, 0),
(115, 'KW', 'KUWAIT', 'Kuwait', 'KWT', 115, 414, 965, 1582961324, 1, 1582961324, 1, 0),
(116, 'KG', 'KYRGYZSTAN', 'Kyrgyzstan', 'KGZ', 116, 417, 996, 1582961324, 1, 1582961324, 1, 0),
(117, 'LA', 'LAO PEOPLES DEMOCRATIC REPUBLIC', 'Lao Peoples Democratic Republic', 'LAO', 117, 418, 856, 1582961324, 1, 1582961324, 1, 0),
(118, 'LV', 'LATVIA', 'Latvia', 'LVA', 118, 428, 371, 1582961324, 1, 1582961324, 1, 0),
(119, 'LB', 'LEBANON', 'Lebanon', 'LBN', 119, 422, 961, 1582961324, 1, 1582961324, 1, 0),
(120, 'LS', 'LESOTHO', 'Lesotho', 'LSO', 120, 426, 266, 1582961324, 1, 1582961324, 1, 0),
(121, 'LR', 'LIBERIA', 'Liberia', 'LBR', 121, 430, 231, 1582961324, 1, 1582961324, 1, 0),
(122, 'LY', 'LIBYAN ARAB JAMAHIRIYA', 'Libyan Arab Jamahiriya', 'LBY', 122, 434, 218, 1582961324, 1, 1582961324, 1, 0),
(123, 'LI', 'LIECHTENSTEIN', 'Liechtenstein', 'LIE', 123, 438, 423, 1582961324, 1, 1582961324, 1, 0),
(124, 'LT', 'LITHUANIA', 'Lithuania', 'LTU', 124, 440, 370, 1582961324, 1, 1582961324, 1, 0),
(125, 'LU', 'LUXEMBOURG', 'Luxembourg', 'LUX', 125, 442, 352, 1582961324, 1, 1582961324, 1, 0),
(126, 'MO', 'MACAO', 'Macao', 'MAC', 126, 446, 853, 1582961324, 1, 1582961324, 1, 0),
(127, 'MK', 'MACEDONIA', 'Macedonia', 'MK', 127, 0, 0, 1582961324, 1, 1582961324, 1, 0),
(128, 'MG', 'MADAGASCAR', 'Madagascar', 'MDG', 128, 450, 261, 1582961324, 1, 1582961324, 1, 0),
(129, 'MW', 'MALAWI', 'Malawi', 'MWI', 129, 454, 265, 1582961324, 1, 1582961324, 1, 0),
(130, 'MY', 'MALAYSIA', 'Malaysia', 'MYS', 130, 458, 60, 1582961324, 1, 1582961324, 1, 0),
(131, 'MV', 'MALDIVES', 'Maldives', 'MDV', 131, 462, 960, 1582961324, 1, 1582961324, 1, 0),
(132, 'ML', 'MALI', 'Mali', 'MLI', 132, 466, 223, 1582961324, 1, 1582961324, 1, 0),
(133, 'MT', 'MALTA', 'Malta', 'MLT', 133, 470, 356, 1582961324, 1, 1582961324, 1, 0),
(134, 'MH', 'MARSHALL ISLANDS', 'Marshall Islands', 'MHL', 134, 584, 692, 1582961324, 1, 1582961324, 1, 0),
(135, 'MQ', 'MARTINIQUE', 'Martinique', 'MTQ', 135, 474, 596, 1582961324, 1, 1582961324, 1, 0),
(136, 'MR', 'MAURITANIA', 'Mauritania', 'MRT', 136, 478, 222, 1582961324, 1, 1582961324, 1, 0),
(137, 'MU', 'MAURITIUS', 'Mauritius', 'MUS', 137, 480, 230, 1582961324, 1, 1582961324, 1, 0),
(138, 'YT', 'MAYOTTE', 'Mayotte', 'YT', 138, 0, 269, 1582961324, 1, 1582961324, 1, 0),
(139, 'MX', 'MEXICO', 'Mexico', 'MEX', 139, 484, 52, 1582961324, 1, 1582961324, 1, 0),
(140, 'FM', 'MICRONESIA', 'Micronesia', 'FM', 140, 0, 0, 1582961324, 1, 1582961324, 1, 0),
(141, 'MD', 'MOLDOVA', 'Moldova', 'MD', 141, 0, 0, 1582961324, 1, 1582961324, 1, 0),
(142, 'MC', 'MONACO', 'Monaco', 'MCO', 142, 492, 377, 1582961324, 1, 1582961324, 1, 0),
(143, 'MN', 'MONGOLIA', 'Mongolia', 'MNG', 143, 496, 976, 1582961324, 1, 1582961324, 1, 0),
(144, 'MS', 'MONTSERRAT', 'Montserrat', 'MSR', 144, 500, 1664, 1582961324, 1, 1582961324, 1, 0),
(145, 'MA', 'MOROCCO', 'Morocco', 'MAR', 145, 504, 212, 1582961324, 1, 1582961324, 1, 0),
(146, 'MZ', 'MOZAMBIQUE', 'Mozambique', 'MOZ', 146, 508, 258, 1582961324, 1, 1582961324, 1, 0),
(147, 'MM', 'MYANMAR', 'Myanmar', 'MMR', 147, 104, 95, 1582961324, 1, 1582961324, 1, 0),
(148, 'NA', 'NAMIBIA', 'Namibia', 'NAM', 148, 516, 264, 1582961324, 1, 1582961324, 1, 0),
(149, 'NR', 'NAURU', 'Nauru', 'NRU', 149, 520, 674, 1582961324, 1, 1582961324, 1, 0),
(150, 'NP', 'NEPAL', 'Nepal', 'NPL', 150, 524, 977, 1582961324, 1, 1582961324, 1, 0),
(151, 'NL', 'NETHERLANDS', 'Netherlands', 'NLD', 151, 528, 31, 1582961324, 1, 1582961324, 1, 0),
(152, 'AN', 'NETHERLANDS ANTILLES', 'Netherlands Antilles', 'ANT', 152, 530, 599, 1582961324, 1, 1582961324, 1, 0),
(153, 'NC', 'NEW CALEDONIA', 'New Caledonia', 'NCL', 153, 540, 687, 1582961324, 1, 1582961324, 1, 0),
(154, 'NZ', 'NEW ZEALAND', 'New Zealand', 'NZL', 154, 554, 64, 1582961324, 1, 1582961324, 1, 0),
(155, 'NI', 'NICARAGUA', 'Nicaragua', 'NIC', 155, 558, 505, 1582961324, 1, 1582961324, 1, 0),
(156, 'NE', 'NIGER', 'Niger', 'NER', 156, 562, 227, 1582961324, 1, 1582961324, 1, 0),
(157, 'NG', 'NIGERIA', 'Nigeria', 'NGA', 157, 566, 234, 1582961324, 1, 1582961324, 1, 0),
(158, 'NU', 'NIUE', 'Niue', 'NIU', 158, 570, 683, 1582961324, 1, 1582961324, 1, 0),
(159, 'NF', 'NORFOLK ISLAND', 'Norfolk Island', 'NFK', 159, 574, 672, 1582961324, 1, 1582961324, 1, 0),
(160, 'MP', 'NORTHERN MARIANA ISLANDS', 'Northern Mariana Islands', 'MNP', 160, 580, 1670, 1582961324, 1, 1582961324, 1, 0),
(161, 'NO', 'NORWAY', 'Norway', 'NOR', 161, 578, 47, 1582961324, 1, 1582961324, 1, 0),
(162, 'OM', 'OMAN', 'Oman', 'OMN', 162, 512, 968, 1582961324, 1, 1582961324, 1, 0),
(163, 'PK', 'PAKISTAN', 'Pakistan', 'PAK', 163, 586, 92, 1582961324, 1, 1582961324, 1, 0),
(164, 'PW', 'PALAU', 'Palau', 'PLW', 164, 585, 680, 1582961324, 1, 1582961324, 1, 0),
(165, 'PS', 'PALESTINIAN TERRITORY', 'Palestinian Territory', 'PS', 165, 0, 0, 1582961324, 1, 1582961324, 1, 0),
(166, 'PA', 'PANAMA', 'Panama', 'PAN', 166, 591, 507, 1582961324, 1, 1582961324, 1, 0),
(167, 'PG', 'PAPUA NEW GUINEA', 'Papua New Guinea', 'PNG', 167, 598, 675, 1582961324, 1, 1582961324, 1, 0),
(168, 'PY', 'PARAGUAY', 'Paraguay', 'PRY', 168, 600, 595, 1582961324, 1, 1582961324, 1, 0),
(169, 'PE', 'PERU', 'Peru', 'PER', 169, 604, 51, 1582961324, 1, 1582961324, 1, 0),
(170, 'PH', 'PHILIPPINES', 'Philippines', 'PHL', 170, 608, 63, 1582961324, 1, 1582961324, 1, 0),
(171, 'PN', 'PITCAIRN', 'Pitcairn', 'PCN', 171, 612, 0, 1582961324, 1, 1582961324, 1, 0),
(172, 'PL', 'POLAND', 'Poland', 'POL', 172, 616, 48, 1582961324, 1, 1582961324, 1, 0),
(173, 'PT', 'PORTUGAL', 'Portugal', 'PRT', 173, 620, 351, 1582961324, 1, 1582961324, 1, 0),
(174, 'PR', 'PUERTO RICO', 'Puerto Rico', 'PRI', 174, 630, 1787, 1582961324, 1, 1582961324, 1, 0),
(175, 'QA', 'QATAR', 'Qatar', 'QAT', 175, 634, 974, 1582961324, 1, 1582961324, 1, 0),
(176, 'RE', 'REUNION', 'Reunion', 'REU', 176, 638, 262, 1582961324, 1, 1582961324, 1, 0),
(177, 'RO', 'ROMANIA', 'Romania', 'ROM', 177, 642, 40, 1582961324, 1, 1582961324, 1, 0),
(178, 'RU', 'RUSSIAN FEDERATION', 'Russian Federation', 'RUS', 178, 643, 70, 1582961324, 1, 1582961324, 1, 0),
(179, 'RW', 'RWANDA', 'Rwanda', 'RWA', 179, 646, 250, 1582961324, 1, 1582961324, 1, 0),
(180, 'SH', 'SAINT HELENA', 'Saint Helena', 'SHN', 180, 654, 290, 1582961324, 1, 1582961324, 1, 0),
(181, 'KN', 'SAINT KITTS AND NEVIS', 'Saint Kitts and Nevis', 'KNA', 181, 659, 1869, 1582961324, 1, 1582961324, 1, 0),
(182, 'LC', 'SAINT LUCIA', 'Saint Lucia', 'LCA', 182, 662, 1758, 1582961324, 1, 1582961324, 1, 0),
(183, 'PM', 'SAINT PIERRE AND MIQUELON', 'Saint Pierre and Miquelon', 'SPM', 183, 666, 508, 1582961324, 1, 1582961324, 1, 0),
(184, 'VC', 'SAINT VINCENT AND THE GRENADINES', 'Saint Vincent and the Grenadines', 'VCT', 184, 670, 1784, 1582961324, 1, 1582961324, 1, 0),
(185, 'WS', 'SAMOA', 'Samoa', 'WSM', 185, 882, 684, 1582961324, 1, 1582961324, 1, 0),
(186, 'SM', 'SAN MARINO', 'San Marino', 'SMR', 186, 674, 378, 1582961324, 1, 1582961324, 1, 0),
(187, 'ST', 'SAO TOME AND PRINCIPE', 'Sao Tome and Principe', 'STP', 187, 678, 239, 1582961324, 1, 1582961324, 1, 0),
(188, 'SA', 'SAUDI ARABIA', 'Saudi Arabia', 'SAU', 188, 682, 966, 1582961324, 1, 1582961324, 1, 0),
(189, 'SN', 'SENEGAL', 'Senegal', 'SEN', 189, 686, 221, 1582961324, 1, 1582961324, 1, 0),
(190, 'CS', 'SERBIA AND MONTENEGRO', 'Serbia and Montenegro', 'CS', 190, 0, 381, 1582961324, 1, 1582961324, 1, 0),
(191, 'SC', 'SEYCHELLES', 'Seychelles', 'SYC', 191, 690, 248, 1582961324, 1, 1582961324, 1, 0),
(192, 'SL', 'SIERRA LEONE', 'Sierra Leone', 'SLE', 192, 694, 232, 1582961324, 1, 1582961324, 1, 0),
(193, 'SG', 'SINGAPORE', 'Singapore', 'SGP', 193, 702, 65, 1582961324, 1, 1582961324, 1, 0),
(194, 'SK', 'SLOVAKIA', 'Slovakia', 'SVK', 194, 703, 421, 1582961324, 1, 1582961324, 1, 0),
(195, 'SI', 'SLOVENIA', 'Slovenia', 'SVN', 195, 705, 386, 1582961324, 1, 1582961324, 1, 0),
(196, 'SB', 'SOLOMON ISLANDS', 'Solomon Islands', 'SLB', 196, 90, 677, 1582961324, 1, 1582961324, 1, 0),
(197, 'SO', 'SOMALIA', 'Somalia', 'SOM', 197, 706, 252, 1582961324, 1, 1582961324, 1, 0),
(198, 'ZA', 'SOUTH AFRICA', 'South Africa', 'ZAF', 198, 710, 27, 1582961324, 1, 1582961324, 1, 0),
(199, 'GS', 'SOUTH GEORGIA AND THE SOUTH SANDWICH ISLANDS', 'South Georgia and the South Sandwich Islands', 'GS', 199, 0, 0, 1582961324, 1, 1582961324, 1, 0),
(200, 'ES', 'SPAIN', 'Spain', 'ESP', 200, 724, 34, 1582961324, 1, 1582961324, 1, 0),
(201, 'LK', 'SRI LANKA', 'Sri Lanka', 'LKA', 201, 144, 94, 1582961324, 1, 1582961324, 1, 0),
(202, 'SD', 'SUDAN', 'Sudan', 'SDN', 202, 736, 249, 1582961324, 1, 1582961324, 1, 0),
(203, 'SR', 'SURINAME', 'Suriname', 'SUR', 203, 740, 597, 1582961324, 1, 1582961324, 1, 0),
(204, 'SJ', 'SVALBARD AND JAN MAYEN', 'Svalbard and Jan Mayen', 'SJM', 204, 744, 47, 1582961324, 1, 1582961324, 1, 0),
(205, 'SZ', 'SWAZILAND', 'Swaziland', 'SWZ', 205, 748, 268, 1582961324, 1, 1582961324, 1, 0),
(206, 'SE', 'SWEDEN', 'Sweden', 'SWE', 206, 752, 46, 1582961324, 1, 1582961324, 1, 0),
(207, 'CH', 'SWITZERLAND', 'Switzerland', 'CHE', 207, 756, 41, 1582961324, 1, 1582961324, 1, 0),
(208, 'SY', 'SYRIAN ARAB REPUBLIC', 'Syrian Arab Republic', 'SYR', 208, 760, 963, 1582961324, 1, 1582961324, 1, 0),
(209, 'TW', 'TAIWAN', 'Taiwan', 'TW', 209, 0, 0, 1582961324, 1, 1582961324, 1, 0),
(210, 'TJ', 'TAJIKISTAN', 'Tajikistan', 'TJK', 210, 762, 992, 1582961324, 1, 1582961324, 1, 0),
(211, 'TZ', 'TANZANIA', 'Tanzania', 'TZ', 211, 0, 0, 1582961324, 1, 1582961324, 1, 0),
(212, 'TH', 'THAILAND', 'Thailand', 'THA', 212, 764, 66, 1582961324, 1, 1582961324, 1, 0),
(213, 'TL', 'TIMOR-LESTE', 'Timor-Leste', 'TL', 213, 0, 670, 1582961324, 1, 1582961324, 1, 0),
(214, 'TG', 'TOGO', 'Togo', 'TGO', 214, 768, 228, 1582961324, 1, 1582961324, 1, 0),
(215, 'TK', 'TOKELAU', 'Tokelau', 'TKL', 215, 772, 690, 1582961324, 1, 1582961324, 1, 0),
(216, 'TO', 'TONGA', 'Tonga', 'TON', 216, 776, 676, 1582961324, 1, 1582961324, 1, 0),
(217, 'TT', 'TRINIDAD AND TOBAGO', 'Trinidad and Tobago', 'TTO', 217, 780, 1868, 1582961324, 1, 1582961324, 1, 0),
(218, 'TN', 'TUNISIA', 'Tunisia', 'TUN', 218, 788, 216, 1582961324, 1, 1582961324, 1, 0),
(219, 'TR', 'TURKEY', 'Turkey', 'TUR', 219, 792, 90, 1582961324, 1, 1582961324, 1, 0),
(220, 'TM', 'TURKMENISTAN', 'Turkmenistan', 'TKM', 220, 795, 7370, 1582961324, 1, 1582961324, 1, 0),
(221, 'TC', 'TURKS AND CAICOS ISLANDS', 'Turks and Caicos Islands', 'TCA', 221, 796, 1649, 1582961324, 1, 1582961324, 1, 0),
(222, 'TV', 'TUVALU', 'Tuvalu', 'TUV', 222, 798, 688, 1582961324, 1, 1582961324, 1, 0),
(223, 'UG', 'UGANDA', 'Uganda', 'UGA', 223, 800, 256, 1582961324, 1, 1582961324, 1, 0),
(224, 'UA', 'UKRAINE', 'Ukraine', 'UKR', 224, 804, 380, 1582961324, 1, 1582961324, 1, 0),
(225, 'AE', 'UNITED ARAB EMIRATES', 'United Arab Emirates', 'ARE', 225, 784, 971, 1582961324, 1, 1582961324, 1, 0),
(226, 'GB', 'UNITED KINGDOM', 'United Kingdom', 'GBR', 226, 826, 44, 1582961324, 1, 1582961324, 1, 0),
(227, 'US', 'UNITED STATES', 'United States', 'USA', 227, 840, 1, 1582961324, 1, 1582961324, 1, 0),
(228, 'UM', 'UNITED STATES MINOR OUTLYING ISLANDS', 'United States Minor Outlying Islands', 'UM', 228, 0, 1, 1582961324, 1, 1582961324, 1, 0),
(229, 'UY', 'URUGUAY', 'Uruguay', 'URY', 229, 858, 598, 1582961324, 1, 1582961324, 1, 0),
(230, 'UZ', 'UZBEKISTAN', 'Uzbekistan', 'UZB', 230, 860, 998, 1582961324, 1, 1582961324, 1, 0),
(231, 'VU', 'VANUATU', 'Vanuatu', 'VUT', 231, 548, 678, 1582961324, 1, 1582961324, 1, 0),
(232, 'VE', 'VENEZUELA', 'Venezuela', 'VEN', 232, 862, 58, 1582961324, 1, 1582961324, 1, 0),
(233, 'VN', 'VIET NAM', 'Viet Nam', 'VNM', 233, 704, 84, 1582961324, 1, 1582961324, 1, 0),
(234, 'VG', 'VIRGIN ISLANDS', 'Virgin Islands', 'VG', 234, 0, 0, 1582961324, 1, 1582961324, 1, 0),
(235, 'VI', 'VIRGIN ISLANDS', 'Virgin Islands', 'VI', 235, 0, 0, 1582961324, 1, 1582961324, 1, 0),
(236, 'WF', 'WALLIS AND FUTUNA', 'Wallis and Futuna', 'WLF', 236, 876, 681, 1582961324, 1, 1582961324, 1, 0),
(237, 'EH', 'WESTERN SAHARA', 'Western Sahara', 'ESH', 237, 732, 212, 1582961324, 1, 1582961324, 1, 0),
(238, 'YE', 'YEMEN', 'Yemen', 'YEM', 238, 887, 967, 1582961324, 1, 1582961324, 1, 0),
(239, 'ZM', 'ZAMBIA', 'Zambia', 'ZMB', 239, 894, 260, 1582961324, 1, 1582961324, 1, 0),
(240, 'ZW', 'ZIMBABWE', 'Zimbabwe', 'ZWE', 240, 716, 263, 1582961324, 1, 1582961324, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `_z_country_city`
--

CREATE TABLE `_z_country_city` (
  `id` int(10) UNSIGNED NOT NULL,
  `province_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(99) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'xx',
  `position` int(10) UNSIGNED NOT NULL,
  `created` int(10) UNSIGNED NOT NULL,
  `register_by` int(10) UNSIGNED NOT NULL,
  `modified` int(10) UNSIGNED NOT NULL,
  `modified_by` int(10) UNSIGNED NOT NULL,
  `record_deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `_z_country_city`
--

INSERT INTO `_z_country_city` (`id`, `province_id`, `name`, `code`, `position`, `created`, `register_by`, `modified`, `modified_by`, `record_deleted`) VALUES
(1, 1, 'Unknown', 'xx', 1, 1582961324, 1, 1582961324, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `_z_country_province`
--

CREATE TABLE `_z_country_province` (
  `id` int(10) UNSIGNED NOT NULL,
  `country_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(99) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'xx',
  `position` int(10) UNSIGNED NOT NULL,
  `created` int(10) UNSIGNED NOT NULL,
  `register_by` int(10) UNSIGNED NOT NULL,
  `modified` int(10) UNSIGNED NOT NULL,
  `modified_by` int(10) UNSIGNED NOT NULL,
  `record_deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `_z_country_province`
--

INSERT INTO `_z_country_province` (`id`, `country_id`, `name`, `code`, `position`, `created`, `register_by`, `modified`, `modified_by`, `record_deleted`) VALUES
(1, 1, 'Unknown', 'xx', 1, 1582961324, 1, 1582961324, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `_z_country_region`
--

CREATE TABLE `_z_country_region` (
  `id` int(10) UNSIGNED NOT NULL,
  `city_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(99) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'xx',
  `position` int(10) UNSIGNED NOT NULL,
  `created` int(10) UNSIGNED NOT NULL,
  `register_by` int(10) UNSIGNED NOT NULL,
  `modified` int(10) UNSIGNED NOT NULL,
  `modified_by` int(10) UNSIGNED NOT NULL,
  `record_deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `_z_country_region`
--

INSERT INTO `_z_country_region` (`id`, `city_id`, `name`, `code`, `position`, `created`, `register_by`, `modified`, `modified_by`, `record_deleted`) VALUES
(1, 1, 'Unknown', 'xx', 1, 1582961324, 1, 1582961324, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `_z_country_subregion`
--

CREATE TABLE `_z_country_subregion` (
  `id` int(10) UNSIGNED NOT NULL,
  `region_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(99) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'xx',
  `position` int(10) UNSIGNED NOT NULL,
  `created` int(10) UNSIGNED NOT NULL,
  `register_by` int(10) UNSIGNED NOT NULL,
  `modified` int(10) UNSIGNED NOT NULL,
  `modified_by` int(10) UNSIGNED NOT NULL,
  `record_deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `_z_country_subregion`
--

INSERT INTO `_z_country_subregion` (`id`, `region_id`, `name`, `code`, `position`, `created`, `register_by`, `modified`, `modified_by`, `record_deleted`) VALUES
(1, 1, 'Unknown', 'xx', 1, 1582961324, 1, 1582961324, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `_z_family_relationship`
--

CREATE TABLE `_z_family_relationship` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(99) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `position` int(10) UNSIGNED NOT NULL,
  `created` int(10) UNSIGNED NOT NULL,
  `register_by` int(10) UNSIGNED NOT NULL,
  `modified` int(10) UNSIGNED NOT NULL,
  `modified_by` int(10) UNSIGNED NOT NULL,
  `record_deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `_z_family_relationship`
--

INSERT INTO `_z_family_relationship` (`id`, `name`, `description`, `position`, `created`, `register_by`, `modified`, `modified_by`, `record_deleted`) VALUES
(1, 'Undefined', '', 1, 1582961324, 1, 1582961324, 1, 0),
(2, 'Father', '', 2, 1582961324, 1, 1582961324, 1, 0),
(3, 'Mother', '', 3, 1582961324, 1, 1582961324, 1, 0),
(4, 'Guardian', '', 4, 1582961324, 1, 1582961324, 1, 0),
(5, 'Grandfather', '', 5, 1582961324, 1, 1582961324, 1, 0),
(6, 'Grandmother', '', 6, 1582961324, 1, 1582961324, 1, 0),
(7, 'Uncle', '', 7, 1582961324, 1, 1582961324, 1, 0),
(8, 'Aunt', '', 8, 1582961324, 1, 1582961324, 1, 0),
(9, 'Brother', '', 9, 1582961324, 1, 1582961324, 1, 0),
(10, 'Sister', '', 10, 1582961324, 1, 1582961324, 1, 0),
(11, 'Brother-in-law', '', 11, 1582961324, 1, 1582961324, 1, 0),
(12, 'Sister-in-law', '', 12, 1582961324, 1, 1582961324, 1, 0),
(13, 'Niece', '', 13, 1582961324, 1, 1582961324, 1, 0),
(14, 'Nephew', '', 14, 1582961324, 1, 1582961324, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `_z_marital_status`
--

CREATE TABLE `_z_marital_status` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(99) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` int(10) UNSIGNED NOT NULL,
  `created` int(10) UNSIGNED NOT NULL,
  `register_by` int(10) UNSIGNED NOT NULL,
  `modified` int(10) UNSIGNED NOT NULL,
  `modified_by` int(10) UNSIGNED NOT NULL,
  `record_deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `_z_marital_status`
--

INSERT INTO `_z_marital_status` (`id`, `name`, `description`, `position`, `created`, `register_by`, `modified`, `modified_by`, `record_deleted`) VALUES
(1, 'Undefined', '', 1, 1582961324, 1, 1582961324, 1, 0),
(2, 'Married', 'This category includes persons whose opposite- or same-sex spouse is living, unless the couple is separated or a divorce has been obtained. Also included are persons in civil unions.', 2, 1582961324, 1, 1582961324, 1, 0),
(3, 'Widowed', 'This category includes persons who have lost their legally-married spouse through death and have not remarried. Those who live with a common-law partner are included in this category.', 3, 1582961324, 1, 1582961324, 1, 0),
(4, 'Separated', 'This category includes persons currently legally married but who are no longer living with their spouse (for any reason other than illness, work or school) and have not obtained a divorce. Those who live with a common-law partner are included in this category.', 4, 1582961324, 1, 1582961324, 1, 0),
(5, 'Divorced', 'This category includes persons who have obtained a legal divorce and have not remarried. Those who live with a common-law partner are included in this category.', 5, 1582961324, 1, 1582961324, 1, 0),
(6, 'Single', 'This category includes persons who have never married (including all persons less than 15 years of age). It also includes persons whose marriage has been legally annulled who were single before the annulled marriage and who have not remarried. Those who live with a common-law partner are included in this category.', 6, 1582961324, 1, 1582961324, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `_z_qualification`
--

CREATE TABLE `_z_qualification` (
  `id` int(10) UNSIGNED NOT NULL,
  `level_id` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `title_id` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `institute_id` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `completed` varchar(4) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created` int(10) UNSIGNED NOT NULL,
  `register_by` int(10) UNSIGNED NOT NULL,
  `modified` int(10) UNSIGNED NOT NULL,
  `modified_by` int(10) UNSIGNED NOT NULL,
  `record_deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `_z_qualification`
--

INSERT INTO `_z_qualification` (`id`, `level_id`, `title_id`, `institute_id`, `completed`, `created`, `register_by`, `modified`, `modified_by`, `record_deleted`) VALUES
(1, 1, 1, 1, NULL, 1582961324, 1, 1582961324, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `_z_single_category`
--

CREATE TABLE `_z_single_category` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(99) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` int(10) UNSIGNED NOT NULL,
  `created` int(10) UNSIGNED NOT NULL,
  `register_by` int(10) UNSIGNED NOT NULL,
  `modified` int(10) UNSIGNED NOT NULL,
  `modified_by` int(10) UNSIGNED NOT NULL,
  `record_deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `_z_single_category`
--

INSERT INTO `_z_single_category` (`id`, `name`, `position`, `created`, `register_by`, `modified`, `modified_by`, `record_deleted`) VALUES
(1, 'Religion', 1, 1582961324, 1, 1582961324, 1, 0),
(2, 'Profession', 2, 1582961324, 1, 1582961324, 1, 0),
(3, 'Speciality', 3, 1582961324, 1, 1582961324, 1, 0),
(4, 'Qualification Level', 4, 1582961324, 1, 1582961324, 1, 0),
(5, 'Qualification Title', 5, 1582961324, 1, 1582961324, 1, 0),
(6, 'Institute', 6, 1582961324, 1, 1582961324, 1, 0),
(7, 'Organization', 7, 1582961324, 1, 1582961324, 1, 0),
(8, 'Department', 8, 1582961324, 1, 1582961324, 1, 0),
(9, 'Designation', 9, 1582961324, 1, 1582961324, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `_z_single_data`
--

CREATE TABLE `_z_single_data` (
  `id` int(10) UNSIGNED NOT NULL,
  `single_category_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(99) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` int(10) UNSIGNED NOT NULL,
  `created` int(10) UNSIGNED NOT NULL,
  `register_by` int(10) UNSIGNED NOT NULL,
  `modified` int(10) UNSIGNED NOT NULL,
  `modified_by` int(10) UNSIGNED NOT NULL,
  `record_deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `_z_single_data`
--

INSERT INTO `_z_single_data` (`id`, `single_category_id`, `name`, `position`, `created`, `register_by`, `modified`, `modified_by`, `record_deleted`) VALUES
(1, 1, 'Undefined', 1, 1582961324, 1, 1582961324, 1, 0),
(2, 1, 'Islam', 1, 1582961324, 1, 1582961324, 1, 0),
(3, 1, 'Christian', 2, 1582961324, 1, 1582961324, 1, 0),
(4, 1, 'Hindu', 3, 1582961324, 1, 1582961324, 1, 0),
(5, 1, 'Jew', 4, 1582961324, 1, 1582961324, 1, 0),
(6, 2, 'Abstractor', 1, 1582961324, 1, 1582961324, 1, 0),
(7, 2, 'Accounting Technician', 2, 1582961324, 1, 1582961324, 1, 0),
(8, 2, 'Actor/Actress', 3, 1582961324, 1, 1582961324, 1, 0),
(9, 2, 'Actuary', 4, 1582961324, 1, 1582961324, 1, 0),
(10, 2, 'Acupuncturist', 5, 1582961324, 1, 1582961324, 1, 0),
(11, 2, 'Advertising Account Manager', 6, 1582961324, 1, 1582961324, 1, 0),
(12, 2, 'Advertising Copywriter', 7, 1582961324, 1, 1582961324, 1, 0),
(13, 2, 'Advice Worker', 8, 1582961324, 1, 1582961324, 1, 0),
(14, 2, 'Aeronautical Engineer', 9, 1582961324, 1, 1582961324, 1, 0),
(15, 2, 'Agricultural Consultant/Adviser', 10, 1582961324, 1, 1582961324, 1, 0),
(16, 2, 'Aid Worker/Humanitarian Worker', 11, 1582961324, 1, 1582961324, 1, 0),
(17, 2, 'Air Cabin Crew', 12, 1582961324, 1, 1582961324, 1, 0),
(18, 2, 'Air Traffic Controller', 13, 1582961324, 1, 1582961324, 1, 0),
(19, 2, 'Airline Pilot', 14, 1582961324, 1, 1582961324, 1, 0),
(20, 2, 'Analytical Chemist', 15, 1582961324, 1, 1582961324, 1, 0),
(21, 2, 'Animal Breeder', 16, 1582961324, 1, 1582961324, 1, 0),
(22, 2, 'Animator', 17, 1582961324, 1, 1582961324, 1, 0),
(23, 2, 'Antiques Dealer', 18, 1582961324, 1, 1582961324, 1, 0),
(24, 2, 'Arboriculturalist', 19, 1582961324, 1, 1582961324, 1, 0),
(25, 2, 'Archaeologist', 20, 1582961324, 1, 1582961324, 1, 0),
(26, 2, 'Architect', 21, 1582961324, 1, 1582961324, 1, 0),
(27, 2, 'Archivist', 22, 1582961324, 1, 1582961324, 1, 0),
(28, 2, 'Aromatherapist', 23, 1582961324, 1, 1582961324, 1, 0),
(29, 2, 'Art Gallery Manager', 24, 1582961324, 1, 1582961324, 1, 0),
(30, 2, 'Arts Administrator', 25, 1582961324, 1, 1582961324, 1, 0),
(31, 2, 'Arts Agent/Promoter', 26, 1582961324, 1, 1582961324, 1, 0),
(32, 2, 'Arts Therapist', 27, 1582961324, 1, 1582961324, 1, 0),
(33, 2, 'Audiologist', 28, 1582961324, 1, 1582961324, 1, 0),
(34, 2, 'Auditor', 29, 1582961324, 1, 1582961324, 1, 0),
(35, 2, 'Automotive Engineer', 30, 1582961324, 1, 1582961324, 1, 0),
(36, 2, 'Banker, Commercial/Corporate Lending', 31, 1582961324, 1, 1582961324, 1, 0),
(37, 2, 'Banker, Investment, Corporate Finance', 32, 1582961324, 1, 1582961324, 1, 0),
(38, 2, 'Barrister', 33, 1582961324, 1, 1582961324, 1, 0),
(39, 2, 'Betting Shop Manager', 34, 1582961324, 1, 1582961324, 1, 0),
(40, 2, 'Bilingual Secretary', 35, 1582961324, 1, 1582961324, 1, 0),
(41, 2, 'Biochemical Engineer', 36, 1582961324, 1, 1582961324, 1, 0),
(42, 2, 'Biochemist', 37, 1582961324, 1, 1582961324, 1, 0),
(43, 2, 'Biomedical Engineer', 38, 1582961324, 1, 1582961324, 1, 0),
(44, 2, 'Biomedical Scientist', 39, 1582961324, 1, 1582961324, 1, 0),
(45, 2, 'Biotechnologist', 40, 1582961324, 1, 1582961324, 1, 0),
(46, 2, 'Bookseller', 41, 1582961324, 1, 1582961324, 1, 0),
(47, 2, 'Broadcaster', 42, 1582961324, 1, 1582961324, 1, 0),
(48, 2, 'Building Services Engineer', 43, 1582961324, 1, 1582961324, 1, 0),
(49, 2, 'Building Surveyor', 44, 1582961324, 1, 1582961324, 1, 0),
(50, 2, 'Call Centre Manager', 45, 1582961324, 1, 1582961324, 1, 0),
(51, 2, 'Careers Adviser', 46, 1582961324, 1, 1582961324, 1, 0),
(52, 2, 'Cartographer', 47, 1582961324, 1, 1582961324, 1, 0),
(53, 2, 'Catering Manager', 48, 1582961324, 1, 1582961324, 1, 0),
(54, 2, 'Charity Officer', 49, 1582961324, 1, 1582961324, 1, 0),
(55, 2, 'Chartered Accountant', 50, 1582961324, 1, 1582961324, 1, 0),
(56, 2, 'Chartered Loss Adjuster', 51, 1582961324, 1, 1582961324, 1, 0),
(57, 2, 'Chemical Development Engineer', 52, 1582961324, 1, 1582961324, 1, 0),
(58, 2, 'Chiropractor', 53, 1582961324, 1, 1582961324, 1, 0),
(59, 2, 'Choreographer', 54, 1582961324, 1, 1582961324, 1, 0),
(60, 2, 'Cinema Manager', 55, 1582961324, 1, 1582961324, 1, 0),
(61, 2, 'Civil Engineer', 56, 1582961324, 1, 1582961324, 1, 0),
(62, 2, 'Civil Service Administrator/Manager', 57, 1582961324, 1, 1582961324, 1, 0),
(63, 2, 'Clerical Assistant', 58, 1582961324, 1, 1582961324, 1, 0),
(64, 2, 'Clinical Cytogeneticist', 59, 1582961324, 1, 1582961324, 1, 0),
(65, 2, 'Clinical Researcher', 60, 1582961324, 1, 1582961324, 1, 0),
(66, 2, 'Clothing/Textile Technologist', 61, 1582961324, 1, 1582961324, 1, 0),
(67, 2, 'Commissioning Engineer', 62, 1582961324, 1, 1582961324, 1, 0),
(68, 2, 'Commodity Broker', 63, 1582961324, 1, 1582961324, 1, 0),
(69, 2, 'Communications Engineer', 64, 1582961324, 1, 1582961324, 1, 0),
(70, 2, 'Community Arts Worker', 65, 1582961324, 1, 1582961324, 1, 0),
(71, 2, 'Community Education Officer', 66, 1582961324, 1, 1582961324, 1, 0),
(72, 2, 'Community Welfare Officer', 67, 1582961324, 1, 1582961324, 1, 0),
(73, 2, 'Community Worker/Community Development Worker', 68, 1582961324, 1, 1582961324, 1, 0),
(74, 2, 'Community/Retail Pharmacist', 69, 1582961324, 1, 1582961324, 1, 0),
(75, 2, 'Company Secretary', 70, 1582961324, 1, 1582961324, 1, 0),
(76, 2, 'Composer', 71, 1582961324, 1, 1582961324, 1, 0),
(77, 2, 'Conference/Event Organiser', 72, 1582961324, 1, 1582961324, 1, 0),
(78, 2, 'Conservator/Restorer', 73, 1582961324, 1, 1582961324, 1, 0),
(79, 2, 'Consulting Engineer', 74, 1582961324, 1, 1582961324, 1, 0),
(80, 2, 'Counsellor', 75, 1582961324, 1, 1582961324, 1, 0),
(81, 2, 'Credit Analyst', 76, 1582961324, 1, 1582961324, 1, 0),
(82, 2, 'Curator', 77, 1582961324, 1, 1582961324, 1, 0),
(83, 2, 'Customs Officer', 78, 1582961324, 1, 1582961324, 1, 0),
(84, 2, 'Database Administrator', 79, 1582961324, 1, 1582961324, 1, 0),
(85, 2, 'Defence Forces', 80, 1582961324, 1, 1582961324, 1, 0),
(86, 2, 'Dentist', 81, 1582961324, 1, 1582961324, 1, 0),
(87, 2, 'Designer, Industrial Products', 82, 1582961324, 1, 1582961324, 1, 0),
(88, 2, 'Designer/Maker', 83, 1582961324, 1, 1582961324, 1, 0),
(89, 2, 'Dietician/Nutritionist', 84, 1582961324, 1, 1582961324, 1, 0),
(90, 2, 'Diplomat', 85, 1582961324, 1, 1582961324, 1, 0),
(91, 2, 'Doctor/Gp', 86, 1582961324, 1, 1582961324, 1, 0),
(92, 2, 'Economist', 87, 1582961324, 1, 1582961324, 1, 0),
(93, 2, 'Editor', 88, 1582961324, 1, 1582961324, 1, 0),
(94, 2, 'Electrical Engineer', 89, 1582961324, 1, 1582961324, 1, 0),
(95, 2, 'Electronic Engineer', 90, 1582961324, 1, 1582961324, 1, 0),
(96, 2, 'Emergency Medical Technician (Paramedic)', 91, 1582961324, 1, 1582961324, 1, 0),
(97, 2, 'Engineer, Manufacturing And Production', 92, 1582961324, 1, 1582961324, 1, 0),
(98, 2, 'Engineer, Quality', 93, 1582961324, 1, 1582961324, 1, 0),
(99, 2, 'Environmental Health Officer', 94, 1582961324, 1, 1582961324, 1, 0),
(100, 2, 'Ergonomist', 95, 1582961324, 1, 1582961324, 1, 0),
(101, 2, 'Estate Agent', 96, 1582961324, 1, 1582961324, 1, 0),
(102, 2, 'Exhibition Organiser/Event Manager', 97, 1582961324, 1, 1582961324, 1, 0),
(103, 2, 'Farm Manager', 98, 1582961324, 1, 1582961324, 1, 0),
(104, 2, 'Fashion Designer', 99, 1582961324, 1, 1582961324, 1, 0),
(105, 2, 'Field Trials Officer', 100, 1582961324, 1, 1582961324, 1, 0),
(106, 2, 'Film/Tv Producer', 101, 1582961324, 1, 1582961324, 1, 0),
(107, 2, 'Financial Accountant', 102, 1582961324, 1, 1582961324, 1, 0),
(108, 2, 'Financial Regulator', 103, 1582961324, 1, 1582961324, 1, 0),
(109, 2, 'Fine Artist', 104, 1582961324, 1, 1582961324, 1, 0),
(110, 2, 'Firefighter', 105, 1582961324, 1, 1582961324, 1, 0),
(111, 2, 'Fitness/Leisure Centre Manager', 106, 1582961324, 1, 1582961324, 1, 0),
(112, 2, 'Forensic Scientist', 107, 1582961324, 1, 1582961324, 1, 0),
(113, 2, 'Forestry Management', 108, 1582961324, 1, 1582961324, 1, 0),
(114, 2, 'Fundraising Manager (Charity)', 109, 1582961324, 1, 1582961324, 1, 0),
(115, 2, 'Furniture Designer', 110, 1582961324, 1, 1582961324, 1, 0),
(116, 2, 'Geologist, Engineering', 111, 1582961324, 1, 1582961324, 1, 0),
(117, 2, 'Geophysicist, Exploration', 112, 1582961324, 1, 1582961324, 1, 0),
(118, 2, 'Graphic Designer', 113, 1582961324, 1, 1582961324, 1, 0),
(119, 2, 'Guidance Counsellor, Second Level', 114, 1582961324, 1, 1582961324, 1, 0),
(120, 2, 'Health And Safety Inspector', 115, 1582961324, 1, 1582961324, 1, 0),
(121, 2, 'Health Education/Promotion Officer', 116, 1582961324, 1, 1582961324, 1, 0),
(122, 2, 'Horticultural Consultant', 117, 1582961324, 1, 1582961324, 1, 0),
(123, 2, 'Hotel Manager', 118, 1582961324, 1, 1582961324, 1, 0),
(124, 2, 'Housing Manager/Officer', 119, 1582961324, 1, 1582961324, 1, 0),
(125, 2, 'Human Resources Manager', 120, 1582961324, 1, 1582961324, 1, 0),
(126, 2, 'Illustrator', 121, 1582961324, 1, 1582961324, 1, 0),
(127, 2, 'Immigration Officer, Passport Control', 122, 1582961324, 1, 1582961324, 1, 0),
(128, 2, 'Information Officer', 123, 1582961324, 1, 1582961324, 1, 0),
(129, 2, 'Insurance Broker, Sales', 124, 1582961324, 1, 1582961324, 1, 0),
(130, 2, 'Interior Designer', 125, 1582961324, 1, 1582961324, 1, 0),
(131, 2, 'Interpreter', 126, 1582961324, 1, 1582961324, 1, 0),
(132, 2, 'Investment Fund Administrator', 127, 1582961324, 1, 1582961324, 1, 0),
(133, 2, 'Investment Fund Manager', 128, 1582961324, 1, 1582961324, 1, 0),
(134, 2, 'It Project Manager', 129, 1582961324, 1, 1582961324, 1, 0),
(135, 2, 'Journalist', 130, 1582961324, 1, 1582961324, 1, 0),
(136, 2, 'Lecturer, Third Level', 131, 1582961324, 1, 1582961324, 1, 0),
(137, 2, 'Legal Executive', 132, 1582961324, 1, 1582961324, 1, 0),
(138, 2, 'Librarian', 133, 1582961324, 1, 1582961324, 1, 0),
(139, 2, 'Loss Adjuster, Chartered', 134, 1582961324, 1, 1582961324, 1, 0),
(140, 2, 'Make-Up Artist', 135, 1582961324, 1, 1582961324, 1, 0),
(141, 2, 'Management Accountant', 136, 1582961324, 1, 1582961324, 1, 0),
(142, 2, 'Management Consultant', 137, 1582961324, 1, 1582961324, 1, 0),
(143, 2, 'Manager, Health Service', 138, 1582961324, 1, 1582961324, 1, 0),
(144, 2, 'Market Researcher', 139, 1582961324, 1, 1582961324, 1, 0),
(145, 2, 'Marketing Executive', 140, 1582961324, 1, 1582961324, 1, 0),
(146, 2, 'Mechanical Engineer', 141, 1582961324, 1, 1582961324, 1, 0),
(147, 2, 'Media Buyer/Planner', 142, 1582961324, 1, 1582961324, 1, 0),
(148, 2, 'Medical Laboratory Scientist', 143, 1582961324, 1, 1582961324, 1, 0),
(149, 2, 'Meteorologist', 144, 1582961324, 1, 1582961324, 1, 0),
(150, 2, 'Microbiologist, Clinical', 145, 1582961324, 1, 1582961324, 1, 0),
(151, 2, 'Midwife', 146, 1582961324, 1, 1582961324, 1, 0),
(152, 2, 'Multimedia Designer', 147, 1582961324, 1, 1582961324, 1, 0),
(153, 2, 'Museum Education Officer', 148, 1582961324, 1, 1582961324, 1, 0),
(154, 2, 'Nature Conservation Officer', 149, 1582961324, 1, 1582961324, 1, 0),
(155, 2, 'Network Engineer', 150, 1582961324, 1, 1582961324, 1, 0),
(156, 2, 'Nurse', 151, 1582961324, 1, 1582961324, 1, 0),
(157, 2, 'Occupational Hygienist', 152, 1582961324, 1, 1582961324, 1, 0),
(158, 2, 'Occupational Psychologist', 153, 1582961324, 1, 1582961324, 1, 0),
(159, 2, 'Occupational Therapist', 154, 1582961324, 1, 1582961324, 1, 0),
(160, 2, 'Oceanographer', 155, 1582961324, 1, 1582961324, 1, 0),
(161, 2, 'Optometrist', 156, 1582961324, 1, 1582961324, 1, 0),
(162, 2, 'Patent Agent/Examiner', 157, 1582961324, 1, 1582961324, 1, 0),
(163, 2, 'Personal Assistant/Secretary', 158, 1582961324, 1, 1582961324, 1, 0),
(164, 2, 'Petroleum Engineer', 159, 1582961324, 1, 1582961324, 1, 0),
(165, 2, 'Pharmacist (Hospital)', 160, 1582961324, 1, 1582961324, 1, 0),
(166, 2, 'Pharmacologist', 161, 1582961324, 1, 1582961324, 1, 0),
(167, 2, 'Photographer', 162, 1582961324, 1, 1582961324, 1, 0),
(168, 2, 'Physicist', 163, 1582961324, 1, 1582961324, 1, 0),
(169, 2, 'Physiotherapist', 164, 1582961324, 1, 1582961324, 1, 0),
(170, 2, 'Picture Researcher/Editor', 165, 1582961324, 1, 1582961324, 1, 0),
(171, 2, 'Police Officer/An Garda Síochána', 166, 1582961324, 1, 1582961324, 1, 0),
(172, 2, 'Political Lobbyist', 167, 1582961324, 1, 1582961324, 1, 0),
(173, 2, 'Presenter, Radio And Television', 168, 1582961324, 1, 1582961324, 1, 0),
(174, 2, 'Print Production Manager/Assistant', 169, 1582961324, 1, 1582961324, 1, 0),
(175, 2, 'Printmaker', 170, 1582961324, 1, 1582961324, 1, 0),
(176, 2, 'Prison Officer', 171, 1582961324, 1, 1582961324, 1, 0),
(177, 2, 'Probation And Welfare Officer', 172, 1582961324, 1, 1582961324, 1, 0),
(178, 2, 'Production Manager/Planner', 173, 1582961324, 1, 1582961324, 1, 0),
(179, 2, 'Programmer/Software Developer', 174, 1582961324, 1, 1582961324, 1, 0),
(180, 2, 'Psychologist, Clinical', 175, 1582961324, 1, 1582961324, 1, 0),
(181, 2, 'Psychologist, Educational', 176, 1582961324, 1, 1582961324, 1, 0),
(182, 2, 'Psychologist, Sports', 177, 1582961324, 1, 1582961324, 1, 0),
(183, 2, 'Psychotherapist', 178, 1582961324, 1, 1582961324, 1, 0),
(184, 2, 'Public Relations Officer', 179, 1582961324, 1, 1582961324, 1, 0),
(185, 2, 'Quality Assurance Manager', 180, 1582961324, 1, 1582961324, 1, 0),
(186, 2, 'Quantity Surveyor', 181, 1582961324, 1, 1582961324, 1, 0),
(187, 2, 'Radio Production', 182, 1582961324, 1, 1582961324, 1, 0),
(188, 2, 'Radiographer, Diagnostic', 183, 1582961324, 1, 1582961324, 1, 0),
(189, 2, 'Radiographer, Therapeutic', 184, 1582961324, 1, 1582961324, 1, 0),
(190, 2, 'Records Manager', 185, 1582961324, 1, 1582961324, 1, 0),
(191, 2, 'Recruitment Consultant', 186, 1582961324, 1, 1582961324, 1, 0),
(192, 2, 'Recycling/Waste Disposal Officer', 187, 1582961324, 1, 1582961324, 1, 0),
(193, 2, 'Retail Banker', 188, 1582961324, 1, 1582961324, 1, 0),
(194, 2, 'Retail Buyer', 189, 1582961324, 1, 1582961324, 1, 0),
(195, 2, 'Retail Manager', 190, 1582961324, 1, 1582961324, 1, 0),
(196, 2, 'Retail Merchandiser', 191, 1582961324, 1, 1582961324, 1, 0),
(197, 2, 'Risk Manager', 192, 1582961324, 1, 1582961324, 1, 0),
(198, 2, 'Sales Executive', 193, 1582961324, 1, 1582961324, 1, 0),
(199, 2, 'Scientist, Industrial R&D', 194, 1582961324, 1, 1582961324, 1, 0),
(200, 2, 'Scientist, Quality Control', 195, 1582961324, 1, 1582961324, 1, 0),
(201, 2, 'Scientist, Research', 196, 1582961324, 1, 1582961324, 1, 0),
(202, 2, 'Social Researcher', 197, 1582961324, 1, 1582961324, 1, 0),
(203, 2, 'Social Worker', 198, 1582961324, 1, 1582961324, 1, 0),
(204, 2, 'Soil Scientist', 199, 1582961324, 1, 1582961324, 1, 0),
(205, 2, 'Solicitor', 200, 1582961324, 1, 1582961324, 1, 0),
(206, 2, 'Speech And Language Therapist', 201, 1582961324, 1, 1582961324, 1, 0),
(207, 2, 'Sports Development Officer', 202, 1582961324, 1, 1582961324, 1, 0),
(208, 2, 'Stage Manager, Theatre', 203, 1582961324, 1, 1582961324, 1, 0),
(209, 2, 'Statistician', 204, 1582961324, 1, 1582961324, 1, 0),
(210, 2, 'Stockbroker/Portfolio Manager', 205, 1582961324, 1, 1582961324, 1, 0),
(211, 2, 'Structural Engineer', 206, 1582961324, 1, 1582961324, 1, 0),
(212, 2, 'Systems Analyst/Business Analyst', 207, 1582961324, 1, 1582961324, 1, 0),
(213, 2, 'Tax Adviser/Consultant', 208, 1582961324, 1, 1582961324, 1, 0),
(214, 2, 'Tax Officer/Inspector', 209, 1582961324, 1, 1582961324, 1, 0),
(215, 2, 'Teacher', 210, 1582961324, 1, 1582961324, 1, 0),
(216, 2, 'Teacher, English As A Foreign Language', 211, 1582961324, 1, 1582961324, 1, 0),
(217, 2, 'Teacher, Learning Support', 212, 1582961324, 1, 1582961324, 1, 0),
(218, 2, 'Teacher, Primary Level', 213, 1582961324, 1, 1582961324, 1, 0),
(219, 2, 'Teacher, Second Level', 214, 1582961324, 1, 1582961324, 1, 0),
(220, 2, 'Teacher, Special Education', 215, 1582961324, 1, 1582961324, 1, 0),
(221, 2, 'Technical Sales', 216, 1582961324, 1, 1582961324, 1, 0),
(222, 2, 'Technical Sales Engineer', 217, 1582961324, 1, 1582961324, 1, 0),
(223, 2, 'Technical Support', 218, 1582961324, 1, 1582961324, 1, 0),
(224, 2, 'Telecommunications Engineer', 219, 1582961324, 1, 1582961324, 1, 0),
(225, 2, 'Theatre Lighting Technician', 220, 1582961324, 1, 1582961324, 1, 0),
(226, 2, 'Tourism Officer', 221, 1582961324, 1, 1582961324, 1, 0),
(227, 2, 'Town Planner', 222, 1582961324, 1, 1582961324, 1, 0),
(228, 2, 'Toxicologist', 223, 1582961324, 1, 1582961324, 1, 0),
(229, 2, 'Training And Development Officer/Manager', 224, 1582961324, 1, 1582961324, 1, 0),
(230, 2, 'Translator', 225, 1582961324, 1, 1582961324, 1, 0),
(231, 2, 'Transport/Logistics Manager', 226, 1582961324, 1, 1582961324, 1, 0),
(232, 2, 'Travel Agent', 227, 1582961324, 1, 1582961324, 1, 0),
(233, 2, 'Veterinary Surgeon/Nurse', 228, 1582961324, 1, 1582961324, 1, 0),
(234, 2, 'Web Developer', 229, 1582961324, 1, 1582961324, 1, 0),
(235, 2, 'Writer, Radio/Tv/Film', 230, 1582961324, 1, 1582961324, 1, 0),
(236, 2, 'Youth Worker', 231, 1582961324, 1, 1582961324, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `_z_work_detail`
--

CREATE TABLE `_z_work_detail` (
  `id` int(10) UNSIGNED NOT NULL,
  `organization_id` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `department_id` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `designation_id` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `from` varchar(4) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_id` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `created` int(10) UNSIGNED NOT NULL,
  `register_by` int(10) UNSIGNED NOT NULL,
  `modified` int(10) UNSIGNED NOT NULL,
  `modified_by` int(10) UNSIGNED NOT NULL,
  `record_deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `_z_work_detail`
--

INSERT INTO `_z_work_detail` (`id`, `organization_id`, `department_id`, `designation_id`, `from`, `address_id`, `created`, `register_by`, `modified`, `modified_by`, `record_deleted`) VALUES
(1, 1, 1, 1, NULL, 1, 1582961324, 1, 1582961324, 1, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `student_academic_record`
--
ALTER TABLE `student_academic_record`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `student_academic_record_student_id_academic_session_id_unique` (`student_id`,`academic_session_id`);

--
-- Indexes for table `student_emergency_contact`
--
ALTER TABLE `student_emergency_contact`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_emergency_contact_family_id_foreign` (`family_id`),
  ADD KEY `student_emergency_contact_relationship_id_foreign` (`relationship_id`),
  ADD KEY `student_emergency_contact_address_type_id_foreign` (`address_type_id`),
  ADD KEY `student_emergency_contact_address_id_foreign` (`address_id`);

--
-- Indexes for table `student_family`
--
ALTER TABLE `student_family`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `student_family_nic_unique` (`nic`),
  ADD UNIQUE KEY `student_family_card_code_unique` (`card_code`),
  ADD KEY `student_family_relationship_id_foreign` (`relationship_id`),
  ADD KEY `student_family_marital_status_id_foreign` (`marital_status_id`),
  ADD KEY `student_family_family_id_foreign` (`family_id`),
  ADD KEY `student_family_profession_id_foreign` (`profession_id`),
  ADD KEY `student_family_q1_foreign` (`q1`),
  ADD KEY `student_family_q2_foreign` (`q2`),
  ADD KEY `student_family_w1_foreign` (`w1`);

--
-- Indexes for table `student_family_id`
--
ALTER TABLE `student_family_id`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `student_family_id_family_code_unique` (`family_code`),
  ADD KEY `student_family_id_address_type_id_foreign` (`address_type_id`),
  ADD KEY `student_family_id_address_id_foreign` (`address_id`);

--
-- Indexes for table `student_register`
--
ALTER TABLE `student_register`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `student_register_reg_id_unique` (`reg_id`),
  ADD UNIQUE KEY `student_register_card_code_unique` (`card_code`),
  ADD KEY `student_register_family_id_foreign` (`family_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `_z_address`
--
ALTER TABLE `_z_address`
  ADD PRIMARY KEY (`id`),
  ADD KEY `_z_address_country_id_foreign` (`country_id`);

--
-- Indexes for table `_z_address_type`
--
ALTER TABLE `_z_address_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `_z_country`
--
ALTER TABLE `_z_country`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `_z_country_iso_unique` (`iso`),
  ADD UNIQUE KEY `_z_country_iso3_unique` (`iso3`);

--
-- Indexes for table `_z_country_city`
--
ALTER TABLE `_z_country_city`
  ADD PRIMARY KEY (`id`),
  ADD KEY `_z_country_city_province_id_foreign` (`province_id`);

--
-- Indexes for table `_z_country_province`
--
ALTER TABLE `_z_country_province`
  ADD PRIMARY KEY (`id`),
  ADD KEY `_z_country_province_country_id_foreign` (`country_id`);

--
-- Indexes for table `_z_country_region`
--
ALTER TABLE `_z_country_region`
  ADD PRIMARY KEY (`id`),
  ADD KEY `_z_country_region_city_id_foreign` (`city_id`);

--
-- Indexes for table `_z_country_subregion`
--
ALTER TABLE `_z_country_subregion`
  ADD PRIMARY KEY (`id`),
  ADD KEY `_z_country_subregion_region_id_foreign` (`region_id`);

--
-- Indexes for table `_z_family_relationship`
--
ALTER TABLE `_z_family_relationship`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `_z_marital_status`
--
ALTER TABLE `_z_marital_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `_z_qualification`
--
ALTER TABLE `_z_qualification`
  ADD PRIMARY KEY (`id`),
  ADD KEY `_z_qualification_level_id_foreign` (`level_id`),
  ADD KEY `_z_qualification_title_id_foreign` (`title_id`),
  ADD KEY `_z_qualification_institute_id_foreign` (`institute_id`);

--
-- Indexes for table `_z_single_category`
--
ALTER TABLE `_z_single_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `_z_single_data`
--
ALTER TABLE `_z_single_data`
  ADD PRIMARY KEY (`id`),
  ADD KEY `_z_single_data_single_category_id_foreign` (`single_category_id`);

--
-- Indexes for table `_z_work_detail`
--
ALTER TABLE `_z_work_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `_z_work_detail_address_id_foreign` (`address_id`),
  ADD KEY `_z_work_detail_organization_id_foreign` (`organization_id`),
  ADD KEY `_z_work_detail_department_id_foreign` (`department_id`),
  ADD KEY `_z_work_detail_designation_id_foreign` (`designation_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `student_academic_record`
--
ALTER TABLE `student_academic_record`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student_emergency_contact`
--
ALTER TABLE `student_emergency_contact`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `student_family`
--
ALTER TABLE `student_family`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `student_family_id`
--
ALTER TABLE `student_family_id`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `student_register`
--
ALTER TABLE `student_register`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `_z_address`
--
ALTER TABLE `_z_address`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `_z_address_type`
--
ALTER TABLE `_z_address_type`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `_z_country`
--
ALTER TABLE `_z_country`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=242;

--
-- AUTO_INCREMENT for table `_z_country_city`
--
ALTER TABLE `_z_country_city`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `_z_country_province`
--
ALTER TABLE `_z_country_province`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `_z_country_region`
--
ALTER TABLE `_z_country_region`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `_z_country_subregion`
--
ALTER TABLE `_z_country_subregion`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `_z_family_relationship`
--
ALTER TABLE `_z_family_relationship`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `_z_marital_status`
--
ALTER TABLE `_z_marital_status`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `_z_qualification`
--
ALTER TABLE `_z_qualification`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `_z_single_category`
--
ALTER TABLE `_z_single_category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `_z_single_data`
--
ALTER TABLE `_z_single_data`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=237;

--
-- AUTO_INCREMENT for table `_z_work_detail`
--
ALTER TABLE `_z_work_detail`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `student_academic_record`
--
ALTER TABLE `student_academic_record`
  ADD CONSTRAINT `student_academic_record_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `student_register` (`id`);

--
-- Constraints for table `student_emergency_contact`
--
ALTER TABLE `student_emergency_contact`
  ADD CONSTRAINT `student_emergency_contact_address_id_foreign` FOREIGN KEY (`address_id`) REFERENCES `_z_address` (`id`),
  ADD CONSTRAINT `student_emergency_contact_address_type_id_foreign` FOREIGN KEY (`address_type_id`) REFERENCES `_z_address_type` (`id`),
  ADD CONSTRAINT `student_emergency_contact_family_id_foreign` FOREIGN KEY (`family_id`) REFERENCES `student_family_id` (`id`),
  ADD CONSTRAINT `student_emergency_contact_relationship_id_foreign` FOREIGN KEY (`relationship_id`) REFERENCES `_z_family_relationship` (`id`);

--
-- Constraints for table `student_family`
--
ALTER TABLE `student_family`
  ADD CONSTRAINT `student_family_family_id_foreign` FOREIGN KEY (`family_id`) REFERENCES `student_family_id` (`id`),
  ADD CONSTRAINT `student_family_marital_status_id_foreign` FOREIGN KEY (`marital_status_id`) REFERENCES `_z_marital_status` (`id`),
  ADD CONSTRAINT `student_family_profession_id_foreign` FOREIGN KEY (`profession_id`) REFERENCES `_z_single_data` (`id`),
  ADD CONSTRAINT `student_family_q1_foreign` FOREIGN KEY (`q1`) REFERENCES `_z_qualification` (`id`),
  ADD CONSTRAINT `student_family_q2_foreign` FOREIGN KEY (`q2`) REFERENCES `_z_qualification` (`id`),
  ADD CONSTRAINT `student_family_relationship_id_foreign` FOREIGN KEY (`relationship_id`) REFERENCES `_z_family_relationship` (`id`),
  ADD CONSTRAINT `student_family_w1_foreign` FOREIGN KEY (`w1`) REFERENCES `_z_work_detail` (`id`);

--
-- Constraints for table `student_family_id`
--
ALTER TABLE `student_family_id`
  ADD CONSTRAINT `student_family_id_address_id_foreign` FOREIGN KEY (`address_id`) REFERENCES `_z_address` (`id`),
  ADD CONSTRAINT `student_family_id_address_type_id_foreign` FOREIGN KEY (`address_type_id`) REFERENCES `_z_address_type` (`id`);

--
-- Constraints for table `student_register`
--
ALTER TABLE `student_register`
  ADD CONSTRAINT `student_register_family_id_foreign` FOREIGN KEY (`family_id`) REFERENCES `student_family_id` (`id`);

--
-- Constraints for table `_z_address`
--
ALTER TABLE `_z_address`
  ADD CONSTRAINT `_z_address_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `_z_country` (`id`);

--
-- Constraints for table `_z_country_city`
--
ALTER TABLE `_z_country_city`
  ADD CONSTRAINT `_z_country_city_province_id_foreign` FOREIGN KEY (`province_id`) REFERENCES `_z_country_province` (`id`);

--
-- Constraints for table `_z_country_province`
--
ALTER TABLE `_z_country_province`
  ADD CONSTRAINT `_z_country_province_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `_z_country` (`id`);

--
-- Constraints for table `_z_country_region`
--
ALTER TABLE `_z_country_region`
  ADD CONSTRAINT `_z_country_region_city_id_foreign` FOREIGN KEY (`city_id`) REFERENCES `_z_country_city` (`id`);

--
-- Constraints for table `_z_country_subregion`
--
ALTER TABLE `_z_country_subregion`
  ADD CONSTRAINT `_z_country_subregion_region_id_foreign` FOREIGN KEY (`region_id`) REFERENCES `_z_country_region` (`id`);

--
-- Constraints for table `_z_qualification`
--
ALTER TABLE `_z_qualification`
  ADD CONSTRAINT `_z_qualification_institute_id_foreign` FOREIGN KEY (`institute_id`) REFERENCES `_z_single_data` (`id`),
  ADD CONSTRAINT `_z_qualification_level_id_foreign` FOREIGN KEY (`level_id`) REFERENCES `_z_single_data` (`id`),
  ADD CONSTRAINT `_z_qualification_title_id_foreign` FOREIGN KEY (`title_id`) REFERENCES `_z_single_data` (`id`);

--
-- Constraints for table `_z_single_data`
--
ALTER TABLE `_z_single_data`
  ADD CONSTRAINT `_z_single_data_single_category_id_foreign` FOREIGN KEY (`single_category_id`) REFERENCES `_z_single_category` (`id`);

--
-- Constraints for table `_z_work_detail`
--
ALTER TABLE `_z_work_detail`
  ADD CONSTRAINT `_z_work_detail_address_id_foreign` FOREIGN KEY (`address_id`) REFERENCES `_z_address` (`id`),
  ADD CONSTRAINT `_z_work_detail_department_id_foreign` FOREIGN KEY (`department_id`) REFERENCES `_z_single_data` (`id`),
  ADD CONSTRAINT `_z_work_detail_designation_id_foreign` FOREIGN KEY (`designation_id`) REFERENCES `_z_single_data` (`id`),
  ADD CONSTRAINT `_z_work_detail_organization_id_foreign` FOREIGN KEY (`organization_id`) REFERENCES `_z_single_data` (`id`);
--
-- Database: `api_remake`
--
CREATE DATABASE IF NOT EXISTS `api_remake` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `api_remake`;
--
-- Database: `auth`
--
CREATE DATABASE IF NOT EXISTS `auth` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `auth`;

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_super` tinyint(1) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `is_super`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'ELEAZAR ORENDAIN FEDERIO', 'admin@rocketmail.com', '$2y$10$OU10fX5b/jTAfxnV5ArFROL.wf9JAC68YeaXh79hkikVzZ94ngG1e', 0, NULL, '2020-03-29 08:24:58', '2020-03-29 08:24:58'),
(3, 'admin', 'admin@admin.com', '$2y$10$speICe5fh1W9fa0kZcGqkuClGyNnlzy5gzA6uZnLKUSeT0L4MDvHO', 0, NULL, '2020-03-29 08:26:58', '2020-03-29 08:26:58');

-- --------------------------------------------------------

--
-- Table structure for table `bloggers`
--

CREATE TABLE `bloggers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_editor` tinyint(1) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bloggers`
--

INSERT INTO `bloggers` (`id`, `name`, `email`, `password`, `is_editor`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'blogger', 'blogger@blogger.com', '$2y$10$fJa9MIv4KbTE15tZJmVQFOK6HM1A0W7SIj87aIEobqCJ9Fe.OsIKy', 0, NULL, '2020-03-29 08:31:01', '2020-03-29 08:31:01');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
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
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2020_03_28_143122_create_admins_table', 1),
(4, '2020_03_28_143656_create_bloggers_table', 1);

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
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'ELEAZAR ORENDAIN FEDERIO', 'eleazarfederio@rocketmail.com', NULL, '$2y$10$Y/uQWPYAHyP7D23PVuAYauvAVgDCz8b82t8soJxaSgpckH9yxlwRC', NULL, '2020-03-29 08:16:03', '2020-03-29 08:16:03');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `bloggers`
--
ALTER TABLE `bloggers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `bloggers_email_unique` (`email`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `bloggers`
--
ALTER TABLE `bloggers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Database: `bugc`
--
CREATE DATABASE IF NOT EXISTS `bugc` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `bugc`;
--
-- Database: `bu_gubat`
--
CREATE DATABASE IF NOT EXISTS `bu_gubat` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `bu_gubat`;

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `publisher` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `call_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `isbn` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `edition` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `year` year(4) DEFAULT NULL,
  `pages` int(11) DEFAULT NULL,
  `copies` int(11) DEFAULT NULL,
  `remarks` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `title`, `author`, `publisher`, `call_number`, `isbn`, `edition`, `year`, `pages`, `copies`, `remarks`, `image_url`, `created_at`, `updated_at`) VALUES
(1, 'Purpose Driven Life', 'Rick Warren', 'Zondervan Publishing House', '444.14', '231534548784129', '1st', 2008, 251, 5, 'Goods', '20200407_114439-25709536.jpg', '2020-04-07 03:34:51', '2020-04-07 03:44:39'),
(2, 'Noli Me Tanghere', 'Dr. Jose Rizal', 'Rex Publishing House', '450.21', '231534548784121', '3rd', 1961, 251, 5, 'Good', '20200420_093431-82896916.jpg', '2020-04-20 01:34:31', '2020-04-20 01:34:31');

-- --------------------------------------------------------

--
-- Table structure for table `book_student`
--

CREATE TABLE `book_student` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `book_student`
--

INSERT INTO `book_student` (`id`, `student_id`, `book_id`, `created_at`, `updated_at`) VALUES
(20, 2, 1, '2020-04-20 00:57:03', '2020-04-20 00:57:03'),
(21, 2, 2, '2020-04-20 01:34:57', '2020-04-20 01:34:57'),
(22, 3, 2, '2020-04-21 03:00:06', '2020-04-21 03:00:06'),
(23, 3, 1, '2020-04-21 03:00:26', '2020-04-21 03:00:26');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
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
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2020_02_19_125652_create_students_table', 1),
(10, '2020_02_21_085303_create_books_table', 1),
(11, '2019_12_14_000001_create_personal_access_tokens_table', 2),
(12, '2020_04_15_054422_create_book_student_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Student', 2, 'my-app-token', '32ed617bed0a06bbba5ab4cec64a6c5ba015d69246b625d26e19a9aa882a8e22', '[\"*\"]', NULL, '2020-04-07 03:27:54', '2020-04-07 03:27:54'),
(2, 'App\\Student', 3, 'my-app-token', 'd020895667db6bd74a6373290dda4f1d309560841ffdfe524df3e3e125f17a27', '[\"*\"]', NULL, '2020-04-07 03:41:35', '2020-04-07 03:41:35'),
(3, 'App\\Student', 2, 'my-app-token', 'b2b516d2332a2b8e0492acf3f09a7f2e7b25c7809dac23b0f7c79955bbab0c4b', '[\"*\"]', NULL, '2020-04-07 04:39:20', '2020-04-07 04:39:20'),
(4, 'App\\Student', 2, 'my-app-token', '98c29a6bce24ddd473f6eb1bd2f11acec836d76650f19ee77fdeefce2d194656', '[\"*\"]', NULL, '2020-04-07 04:39:59', '2020-04-07 04:39:59'),
(5, 'App\\Student', 2, 'my-app-token', 'f6d4f71cb0f185d6c60c354d0d33a5929bea1102062ea663d4b7ad8052858b32', '[\"*\"]', NULL, '2020-04-07 04:55:51', '2020-04-07 04:55:51'),
(6, 'App\\Student', 2, 'my-app-token', '0745b4774adc9ec0bdcc53f9eddafbdc71896e5b8361b97a608bfa8c3d9a7aab', '[\"*\"]', NULL, '2020-04-07 05:02:17', '2020-04-07 05:02:17'),
(7, 'App\\Student', 3, 'my-app-token', 'ba2c4773a7f31777fbcac60c9332463f40c549a44d580917d965e74b9e9eab33', '[\"*\"]', NULL, '2020-04-07 05:03:22', '2020-04-07 05:03:22'),
(8, 'App\\Student', 2, 'my-app-token', '198ed04602d9578aabca134025488056a97d56d227caaf03daa548d9a7529652', '[\"*\"]', NULL, '2020-04-07 05:13:40', '2020-04-07 05:13:40'),
(9, 'App\\Student', 2, 'my-app-token', '4ee154d126ecb528054ab48eec432423a148837a9f0c0313411955a93fb97ede', '[\"*\"]', NULL, '2020-04-07 05:17:20', '2020-04-07 05:17:20'),
(10, 'App\\Student', 2, 'my-app-token', '221bd09b8139e9fd1e41618dc0f8eb4447e1501b01db46196ce0e702b2d670d8', '[\"*\"]', NULL, '2020-04-07 05:17:56', '2020-04-07 05:17:56'),
(11, 'App\\Student', 2, 'my-app-token', '60cf7f3c980cffa08273d7b5ac87c649e28fde7808b8627011daccac5f0682e1', '[\"*\"]', NULL, '2020-04-07 05:18:24', '2020-04-07 05:18:24'),
(12, 'App\\Student', 3, 'my-app-token', '873474c1bcfd63a0b3f14dae09701612c3405a5549ec8ec73dc4f41c725fa5d9', '[\"*\"]', NULL, '2020-04-07 05:24:05', '2020-04-07 05:24:05'),
(13, 'App\\Student', 3, 'my-app-token', '4b5edeb8aa93d7ff6e5add206cd7a77c7cbe3e3ab18bd8e088f0bfbd9eaab663', '[\"*\"]', NULL, '2020-04-07 05:25:00', '2020-04-07 05:25:00'),
(14, 'App\\Student', 2, 'my-app-token', '78e6e737fe53069fe02d396eaa24314a158edacda72345f951842d7833b96e24', '[\"*\"]', NULL, '2020-04-17 08:35:02', '2020-04-17 08:35:02'),
(15, 'App\\Student', 2, 'my-app-token', '60e9658619b421083cdd0752841e90733dbcfa85520dbbfdf4644cc747b0518a', '[\"*\"]', NULL, '2020-04-17 18:14:26', '2020-04-17 18:14:26'),
(16, 'App\\Student', 2, 'my-app-token', 'c0c4f2e563582071b22df8cbf1c7bd9f401b1f503d048b24d285bc6584af1cb1', '[\"*\"]', NULL, '2020-04-17 18:34:46', '2020-04-17 18:34:46'),
(17, 'App\\Student', 2, 'my-app-token', '1c8d3de7f0f42d71466cc64e497ca9820068b6ce4b8ba215c308519181379062', '[\"*\"]', NULL, '2020-04-17 18:37:58', '2020-04-17 18:37:58'),
(18, 'App\\Student', 2, 'my-app-token', '9afc28b06f51fb2936f76feaa6cc45034920e2af48084fae75bcd5cd26abf820', '[\"*\"]', NULL, '2020-04-17 18:48:18', '2020-04-17 18:48:18'),
(19, 'App\\Student', 2, 'my-app-token', 'f5d5d567ef730b7efbb28b080d604fa81207f6a6712d6ed661060e075bbe6a80', '[\"*\"]', NULL, '2020-04-17 18:54:27', '2020-04-17 18:54:27'),
(20, 'App\\Student', 3, 'my-app-token', '4766feb8319ba58fb2af2e56cb9df6792b60c26f91127b4db445f4058e097aca', '[\"*\"]', NULL, '2020-04-21 02:49:20', '2020-04-21 02:49:20'),
(21, 'App\\Student', 3, 'my-app-token', '6d64467a0d8cf8383a9b61df5e07a8fe5635ceaa5c83ed6a8a3828456e20148a', '[\"*\"]', NULL, '2020-04-21 02:56:38', '2020-04-21 02:56:38');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `firstname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `middlename` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `street_brgy` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `student_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `town` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `province` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `b_day` date DEFAULT NULL,
  `course` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` int(11) NOT NULL,
  `block` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `major` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profile_img` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hash` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `biometics` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `firstname`, `middlename`, `lastname`, `street_brgy`, `student_id`, `town`, `province`, `zip_code`, `b_day`, `course`, `year`, `block`, `major`, `phone`, `profile_img`, `email`, `email_verified_at`, `remember_token`, `hash`, `password`, `biometics`, `created_at`, `updated_at`) VALUES
(1, 'Apolinario', 'Benitez', 'Mabini', NULL, '2019-GC-103333', NULL, NULL, NULL, NULL, 'BSCS', 4, NULL, NULL, NULL, NULL, 'apo@rocketmail.com', NULL, NULL, NULL, '$2y$10$6GezrIamYkhf3JWXeLvsKOV1iui20ETetsz5J81hcS/aNaTyYtrP.', NULL, '2020-03-28 02:00:56', '2020-04-15 01:10:15'),
(2, 'Eleazar', 'Orendain', 'Federio', NULL, '2019-GC-100001', NULL, NULL, NULL, NULL, 'BSCS', 4, NULL, NULL, NULL, NULL, 'eleazarfederio@rocketmail.com', NULL, NULL, NULL, '$2y$10$Zf2dnNXkybJU.9SVkU7ch.5QIfEbnVUbCnYkoCsENWKNscBwYUpYC', NULL, '2020-04-07 03:18:18', '2020-04-07 03:18:18'),
(3, 'Kish', 'Orendain', 'Federio', 'MANOOK', '2019-GC-100002', 'GUBAT', 'SORSOGON', '4710', NULL, 'BSE', 4, 'B', NULL, '09385784607', NULL, 'kishfederio@rocketmail.com', NULL, NULL, NULL, '$2y$10$6O8SDuiFBoO3r0bcJWi66.u63Q4C1WIMVcIfRUbSALBMx.vacIlnO', NULL, '2020-04-07 03:41:35', '2020-04-07 05:22:22');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@admin.com', NULL, '$2y$10$rAHr4SfQIife1HLVDR6DfObn5jRMWKRvMGXbhpuELDA77Em6Iitzq', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `book_student`
--
ALTER TABLE `book_student`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `students_email_unique` (`email`);

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
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `book_student`
--
ALTER TABLE `book_student`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Database: `covid_tacker`
--
CREATE DATABASE IF NOT EXISTS `covid_tacker` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `covid_tacker`;

-- --------------------------------------------------------

--
-- Table structure for table `establishments`
--

CREATE TABLE `establishments` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone_number` varchar(13) NOT NULL,
  `town` varchar(100) NOT NULL,
  `barangay` varchar(50) NOT NULL,
  `location_details` varchar(255) NOT NULL,
  `establishment_id` varchar(100) NOT NULL,
  `details` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `persons`
--

CREATE TABLE `persons` (
  `id` int(11) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `middle_name` varchar(100) NOT NULL,
  `traveler_id` varchar(100) NOT NULL,
  `phone_number` varchar(13) NOT NULL,
  `town` varchar(50) NOT NULL,
  `barangay` varchar(50) NOT NULL,
  `location_details` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `travel_history`
--

CREATE TABLE `travel_history` (
  `id` int(11) NOT NULL,
  `person_id` int(11) NOT NULL,
  `establishment_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `establishments`
--
ALTER TABLE `establishments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `persons`
--
ALTER TABLE `persons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `travel_history`
--
ALTER TABLE `travel_history`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `establishments`
--
ALTER TABLE `establishments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `persons`
--
ALTER TABLE `persons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `travel_history`
--
ALTER TABLE `travel_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;
--
-- Database: `craftable`
--
CREATE DATABASE IF NOT EXISTS `craftable` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `craftable`;

-- --------------------------------------------------------

--
-- Table structure for table `activations`
--

CREATE TABLE `activations` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `used` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `admin_activations`
--

CREATE TABLE `admin_activations` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `used` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `admin_password_resets`
--

CREATE TABLE `admin_password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `activated` tinyint(1) NOT NULL DEFAULT 0,
  `forbidden` tinyint(1) NOT NULL DEFAULT 0,
  `language` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'en',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`id`, `first_name`, `last_name`, `email`, `password`, `remember_token`, `activated`, `forbidden`, `language`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'Administrator', 'administrator@brackets.sk', '$2y$10$wlp7ZZCvuKjymWdMhuorlOoIUJzQyoITbYe1uY/Bq8yL7IgIRqcNW', NULL, 1, 0, 'en', NULL, '2020-02-15 09:08:37', '2020-02-15 09:08:37');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL,
  `collection_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mime_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` bigint(20) UNSIGNED NOT NULL,
  `manipulations` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`manipulations`)),
  `custom_properties` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`custom_properties`)),
  `responsive_images` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`responsive_images`)),
  `order_column` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`id`, `model_type`, `model_id`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `size`, `manipulations`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES
(1, 'Brackets\\AdminAuth\\Models\\AdminUser', 1, 'avatar', 'avatar', 'avatar.png', 'image/png', 'media', 23924, '[]', '{\"generated_conversions\":{\"thumb_200\":true,\"thumb_75\":true,\"thumb_150\":true}}', '[]', 1, '2020-02-15 09:08:37', '2020-02-15 09:08:38');

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
(4, '2017_08_24_000000_create_activations_table', 2),
(5, '2017_08_24_000000_create_admin_activations_table', 2),
(6, '2017_08_24_000000_create_admin_password_resets_table', 2),
(7, '2017_08_24_000000_create_admin_users_table', 2),
(8, '2018_07_18_000000_create_wysiwyg_media_table', 2),
(9, '2020_02_15_170835_create_media_table', 2),
(10, '2020_02_15_170835_create_permission_tables', 2),
(11, '2020_02_15_170840_fill_default_admin_user_and_permissions', 2),
(12, '2020_02_15_170835_create_translations_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'Brackets\\AdminAuth\\Models\\AdminUser', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin', '2020-02-15 09:08:37', '2020-02-15 09:08:37'),
(2, 'admin.translation.index', 'admin', '2020-02-15 09:08:37', '2020-02-15 09:08:37'),
(3, 'admin.translation.edit', 'admin', '2020-02-15 09:08:37', '2020-02-15 09:08:37'),
(4, 'admin.translation.rescan', 'admin', '2020-02-15 09:08:37', '2020-02-15 09:08:37'),
(5, 'admin.admin-user.index', 'admin', '2020-02-15 09:08:37', '2020-02-15 09:08:37'),
(6, 'admin.admin-user.create', 'admin', '2020-02-15 09:08:37', '2020-02-15 09:08:37'),
(7, 'admin.admin-user.edit', 'admin', '2020-02-15 09:08:37', '2020-02-15 09:08:37'),
(8, 'admin.admin-user.delete', 'admin', '2020-02-15 09:08:37', '2020-02-15 09:08:37'),
(9, 'admin.upload', 'admin', '2020-02-15 09:08:37', '2020-02-15 09:08:37');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'admin', '2020-02-15 09:08:37', '2020-02-15 09:08:37');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1);

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `namespace` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '*',
  `group` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`text`)),
  `metadata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`metadata`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `translations`
--

INSERT INTO `translations` (`id`, `namespace`, `group`, `key`, `text`, `metadata`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'brackets/admin-ui', 'admin', 'operation.succeeded', '[]', NULL, '2020-02-15 09:09:39', '2020-02-15 09:09:39', NULL),
(2, 'brackets/admin-ui', 'admin', 'operation.failed', '[]', NULL, '2020-02-15 09:09:39', '2020-02-15 09:09:39', NULL),
(3, 'brackets/admin-ui', 'admin', 'operation.not_allowed', '[]', NULL, '2020-02-15 09:09:39', '2020-02-15 09:09:39', NULL),
(4, '*', 'admin', 'admin-user.columns.first_name', '[]', NULL, '2020-02-15 09:09:39', '2020-02-15 09:09:39', NULL),
(5, '*', 'admin', 'admin-user.columns.last_name', '[]', NULL, '2020-02-15 09:09:39', '2020-02-15 09:09:39', NULL),
(6, '*', 'admin', 'admin-user.columns.email', '[]', NULL, '2020-02-15 09:09:39', '2020-02-15 09:09:39', NULL),
(7, '*', 'admin', 'admin-user.columns.password', '[]', NULL, '2020-02-15 09:09:39', '2020-02-15 09:09:39', NULL),
(8, '*', 'admin', 'admin-user.columns.password_repeat', '[]', NULL, '2020-02-15 09:09:39', '2020-02-15 09:09:39', NULL),
(9, '*', 'admin', 'admin-user.columns.activated', '[]', NULL, '2020-02-15 09:09:39', '2020-02-15 09:09:39', NULL),
(10, '*', 'admin', 'admin-user.columns.forbidden', '[]', NULL, '2020-02-15 09:09:39', '2020-02-15 09:09:39', NULL),
(11, '*', 'admin', 'admin-user.columns.language', '[]', NULL, '2020-02-15 09:09:39', '2020-02-15 09:09:39', NULL),
(12, 'brackets/admin-ui', 'admin', 'forms.select_an_option', '[]', NULL, '2020-02-15 09:09:39', '2020-02-15 09:09:39', NULL),
(13, '*', 'admin', 'admin-user.columns.roles', '[]', NULL, '2020-02-15 09:09:39', '2020-02-15 09:09:39', NULL),
(14, 'brackets/admin-ui', 'admin', 'forms.select_options', '[]', NULL, '2020-02-15 09:09:39', '2020-02-15 09:09:39', NULL),
(15, '*', 'admin', 'admin-user.actions.create', '[]', NULL, '2020-02-15 09:09:39', '2020-02-15 09:09:39', NULL),
(16, 'brackets/admin-ui', 'admin', 'btn.save', '[]', NULL, '2020-02-15 09:09:39', '2020-02-15 09:09:39', NULL),
(17, '*', 'admin', 'admin-user.actions.edit', '[]', NULL, '2020-02-15 09:09:39', '2020-02-15 09:09:39', NULL),
(18, '*', 'admin', 'admin-user.actions.index', '[]', NULL, '2020-02-15 09:09:39', '2020-02-15 09:09:39', NULL),
(19, 'brackets/admin-ui', 'admin', 'placeholder.search', '[]', NULL, '2020-02-15 09:09:39', '2020-02-15 09:09:39', NULL),
(20, 'brackets/admin-ui', 'admin', 'btn.search', '[]', NULL, '2020-02-15 09:09:39', '2020-02-15 09:09:39', NULL),
(21, '*', 'admin', 'admin-user.columns.id', '[]', NULL, '2020-02-15 09:09:39', '2020-02-15 09:09:39', NULL),
(22, 'brackets/admin-ui', 'admin', 'btn.edit', '[]', NULL, '2020-02-15 09:09:39', '2020-02-15 09:09:39', NULL),
(23, 'brackets/admin-ui', 'admin', 'btn.delete', '[]', NULL, '2020-02-15 09:09:39', '2020-02-15 09:09:39', NULL),
(24, 'brackets/admin-ui', 'admin', 'pagination.overview', '[]', NULL, '2020-02-15 09:09:39', '2020-02-15 09:09:39', NULL),
(25, 'brackets/admin-ui', 'admin', 'index.no_items', '[]', NULL, '2020-02-15 09:09:39', '2020-02-15 09:09:39', NULL),
(26, 'brackets/admin-ui', 'admin', 'index.try_changing_items', '[]', NULL, '2020-02-15 09:09:39', '2020-02-15 09:09:39', NULL),
(27, 'brackets/admin-ui', 'admin', 'btn.new', '[]', NULL, '2020-02-15 09:09:39', '2020-02-15 09:09:39', NULL),
(28, 'brackets/admin-ui', 'admin', 'profile_dropdown.account', '[]', NULL, '2020-02-15 09:09:39', '2020-02-15 09:09:39', NULL),
(29, 'brackets/admin-auth', 'admin', 'profile_dropdown.logout', '[]', NULL, '2020-02-15 09:09:39', '2020-02-15 09:09:39', NULL),
(30, 'brackets/admin-ui', 'admin', 'sidebar.content', '[]', NULL, '2020-02-15 09:09:39', '2020-02-15 09:09:39', NULL),
(31, 'brackets/admin-ui', 'admin', 'sidebar.settings', '[]', NULL, '2020-02-15 09:09:39', '2020-02-15 09:09:39', NULL),
(32, '*', 'admin', 'admin-user.actions.edit_password', '[]', NULL, '2020-02-15 09:09:39', '2020-02-15 09:09:39', NULL),
(33, '*', 'admin', 'admin-user.actions.edit_profile', '[]', NULL, '2020-02-15 09:09:39', '2020-02-15 09:09:39', NULL),
(34, 'brackets/admin-auth', 'activations', 'email.line', '[]', NULL, '2020-02-15 09:09:39', '2020-02-15 09:09:39', NULL),
(35, 'brackets/admin-auth', 'activations', 'email.action', '[]', NULL, '2020-02-15 09:09:39', '2020-02-15 09:09:39', NULL),
(36, 'brackets/admin-auth', 'activations', 'email.notRequested', '[]', NULL, '2020-02-15 09:09:39', '2020-02-15 09:09:39', NULL),
(37, 'brackets/admin-auth', 'admin', 'activations.activated', '[]', NULL, '2020-02-15 09:09:39', '2020-02-15 09:09:39', NULL),
(38, 'brackets/admin-auth', 'admin', 'activations.invalid_request', '[]', NULL, '2020-02-15 09:09:39', '2020-02-15 09:09:39', NULL),
(39, 'brackets/admin-auth', 'admin', 'activations.disabled', '[]', NULL, '2020-02-15 09:09:39', '2020-02-15 09:09:39', NULL),
(40, 'brackets/admin-auth', 'admin', 'activations.sent', '[]', NULL, '2020-02-15 09:09:39', '2020-02-15 09:09:39', NULL),
(41, 'brackets/admin-auth', 'admin', 'passwords.sent', '[]', NULL, '2020-02-15 09:09:39', '2020-02-15 09:09:39', NULL),
(42, 'brackets/admin-auth', 'admin', 'passwords.reset', '[]', NULL, '2020-02-15 09:09:39', '2020-02-15 09:09:39', NULL),
(43, 'brackets/admin-auth', 'admin', 'passwords.invalid_token', '[]', NULL, '2020-02-15 09:09:39', '2020-02-15 09:09:39', NULL),
(44, 'brackets/admin-auth', 'admin', 'passwords.invalid_user', '[]', NULL, '2020-02-15 09:09:39', '2020-02-15 09:09:39', NULL),
(45, 'brackets/admin-auth', 'admin', 'passwords.invalid_password', '[]', NULL, '2020-02-15 09:09:39', '2020-02-15 09:09:39', NULL),
(46, 'brackets/admin-auth', 'admin', 'activation_form.title', '[]', NULL, '2020-02-15 09:09:39', '2020-02-15 09:09:39', NULL),
(47, 'brackets/admin-auth', 'admin', 'activation_form.note', '[]', NULL, '2020-02-15 09:09:39', '2020-02-15 09:09:39', NULL),
(48, 'brackets/admin-auth', 'admin', 'auth_global.email', '[]', NULL, '2020-02-15 09:09:39', '2020-02-15 09:09:39', NULL),
(49, 'brackets/admin-auth', 'admin', 'activation_form.button', '[]', NULL, '2020-02-15 09:09:39', '2020-02-15 09:09:39', NULL),
(50, 'brackets/admin-auth', 'admin', 'login.title', '[]', NULL, '2020-02-15 09:09:39', '2020-02-15 09:09:39', NULL),
(51, 'brackets/admin-auth', 'admin', 'login.sign_in_text', '[]', NULL, '2020-02-15 09:09:39', '2020-02-15 09:09:39', NULL),
(52, 'brackets/admin-auth', 'admin', 'auth_global.password', '[]', NULL, '2020-02-15 09:09:39', '2020-02-15 09:09:39', NULL),
(53, 'brackets/admin-auth', 'admin', 'login.button', '[]', NULL, '2020-02-15 09:09:39', '2020-02-15 09:09:39', NULL),
(54, 'brackets/admin-auth', 'admin', 'login.forgot_password', '[]', NULL, '2020-02-15 09:09:39', '2020-02-15 09:09:39', NULL),
(55, 'brackets/admin-auth', 'admin', 'forgot_password.title', '[]', NULL, '2020-02-15 09:09:39', '2020-02-15 09:09:39', NULL),
(56, 'brackets/admin-auth', 'admin', 'forgot_password.note', '[]', NULL, '2020-02-15 09:09:39', '2020-02-15 09:09:39', NULL),
(57, 'brackets/admin-auth', 'admin', 'forgot_password.button', '[]', NULL, '2020-02-15 09:09:39', '2020-02-15 09:09:39', NULL),
(58, 'brackets/admin-auth', 'admin', 'password_reset.title', '[]', NULL, '2020-02-15 09:09:39', '2020-02-15 09:09:39', NULL),
(59, 'brackets/admin-auth', 'admin', 'password_reset.note', '[]', NULL, '2020-02-15 09:09:39', '2020-02-15 09:09:39', NULL),
(60, 'brackets/admin-auth', 'admin', 'auth_global.password_confirm', '[]', NULL, '2020-02-15 09:09:39', '2020-02-15 09:09:39', NULL),
(61, 'brackets/admin-auth', 'admin', 'password_reset.button', '[]', NULL, '2020-02-15 09:09:39', '2020-02-15 09:09:39', NULL),
(62, '*', '*', 'Manage access', '[]', NULL, '2020-02-15 09:09:40', '2020-02-15 09:09:40', NULL),
(63, '*', '*', 'Translations', '[]', NULL, '2020-02-15 09:09:40', '2020-02-15 09:09:40', NULL),
(64, '*', '*', 'Configuration', '[]', NULL, '2020-02-15 09:09:40', '2020-02-15 09:09:40', NULL);

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
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wysiwyg_media`
--

CREATE TABLE `wysiwyg_media` (
  `id` int(10) UNSIGNED NOT NULL,
  `file_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `wysiwygable_id` int(10) UNSIGNED DEFAULT NULL,
  `wysiwygable_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activations`
--
ALTER TABLE `activations`
  ADD KEY `activations_email_index` (`email`);

--
-- Indexes for table `admin_activations`
--
ALTER TABLE `admin_activations`
  ADD KEY `admin_activations_email_index` (`email`);

--
-- Indexes for table `admin_password_resets`
--
ALTER TABLE `admin_password_resets`
  ADD KEY `admin_password_resets_email_index` (`email`);

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_users_email_deleted_at_unique` (`email`,`deleted_at`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_model_type_model_id_index` (`model_type`,`model_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `translations_namespace_index` (`namespace`),
  ADD KEY `translations_group_index` (`group`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `wysiwyg_media`
--
ALTER TABLE `wysiwyg_media`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wysiwyg_media_wysiwygable_id_index` (`wysiwygable_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wysiwyg_media`
--
ALTER TABLE `wysiwyg_media`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
--
-- Database: `db_crud`
--
CREATE DATABASE IF NOT EXISTS `db_crud` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `db_crud`;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_code` varchar(15) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_price` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_code`);
--
-- Database: `food_delivery`
--
CREATE DATABASE IF NOT EXISTS `food_delivery` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `food_delivery`;

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `food_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `food_id`, `user_id`, `quantity`, `created_at`, `updated_at`) VALUES
(1, 14, 8, 1, '2020-05-10 01:12:27', '2020-05-10 01:12:27'),
(2, 10, 1, 5, '2020-05-10 01:12:27', '2020-05-10 01:12:27'),
(3, 34, 4, 4, '2020-05-10 01:12:27', '2020-05-10 01:12:27'),
(4, 46, 6, 2, '2020-05-10 01:12:27', '2020-05-10 01:12:27'),
(5, 32, 5, 5, '2020-05-10 01:12:27', '2020-05-10 01:12:27'),
(6, 47, 7, 3, '2020-05-10 01:12:27', '2020-05-10 01:12:27'),
(7, 2, 8, 2, '2020-05-10 01:12:27', '2020-05-10 01:12:27'),
(8, 7, 8, 5, '2020-05-10 01:12:27', '2020-05-10 01:12:27'),
(9, 20, 7, 4, '2020-05-10 01:12:28', '2020-05-10 01:12:28'),
(10, 28, 9, 4, '2020-05-10 01:12:28', '2020-05-10 01:12:28'),
(11, 40, 2, 1, '2020-05-10 01:12:28', '2020-05-10 01:12:28'),
(12, 15, 7, 3, '2020-05-10 01:12:28', '2020-05-10 01:12:28'),
(13, 31, 8, 1, '2020-05-10 01:12:28', '2020-05-10 01:12:28'),
(14, 46, 9, 4, '2020-05-10 01:12:28', '2020-05-10 01:12:28'),
(15, 30, 8, 3, '2020-05-10 01:12:28', '2020-05-10 01:12:28'),
(16, 25, 2, 2, '2020-05-10 01:12:28', '2020-05-10 01:12:28'),
(17, 9, 5, 4, '2020-05-10 01:12:28', '2020-05-10 01:12:28'),
(18, 26, 6, 1, '2020-05-10 01:12:28', '2020-05-10 01:12:28'),
(19, 12, 6, 5, '2020-05-10 01:12:28', '2020-05-10 01:12:28'),
(20, 41, 9, 1, '2020-05-10 01:12:28', '2020-05-10 01:12:28'),
(21, 2, 1, 1, '2020-05-10 01:58:42', '2020-05-10 01:58:42'),
(22, 2, 1, 5, '2020-05-10 01:59:31', '2020-05-10 01:59:31'),
(23, 2, 1, 5, '2020-05-10 02:04:11', '2020-05-10 02:04:11'),
(24, 1, 11, 5, '2020-05-10 03:18:07', '2020-05-11 23:08:51'),
(25, 5, 11, 7, '2020-05-10 03:19:12', '2020-05-11 06:34:11'),
(26, 10, 11, 2, '2020-05-10 03:19:34', '2020-05-11 23:09:48'),
(27, 10, 11, 1, '2020-05-10 03:19:54', '2020-05-10 03:19:54'),
(28, 1, 11, 1, '2020-05-10 06:47:15', '2020-05-10 06:47:15'),
(29, 1, 11, 1, '2020-05-11 05:21:18', '2020-05-11 05:21:18'),
(30, 2, 1, 5, '2020-05-11 05:48:37', '2020-05-11 05:48:37'),
(31, 2, 1, 5, '2020-05-11 05:52:42', '2020-05-11 05:52:42'),
(32, 2, 1, 5, '2020-05-11 05:52:46', '2020-05-11 05:52:46'),
(33, 2, 1, 5, '2020-05-11 05:53:15', '2020-05-11 05:53:15'),
(34, 2, 1, 5, '2020-05-11 05:54:01', '2020-05-11 05:54:01'),
(35, 2, 1, 5, '2020-05-11 05:55:03', '2020-05-11 05:55:03'),
(36, 2, 1, 5, '2020-05-11 05:56:37', '2020-05-11 05:56:37'),
(37, 2, 1, 5, '2020-05-11 05:56:39', '2020-05-11 05:56:39'),
(38, 2, 1, 5, '2020-05-11 05:56:40', '2020-05-11 05:56:40'),
(39, 2, 1, 5, '2020-05-11 05:57:30', '2020-05-11 05:57:30'),
(40, 2, 1, 5, '2020-05-11 05:59:21', '2020-05-11 05:59:21'),
(41, 2, 1, 5, '2020-05-11 06:00:05', '2020-05-11 06:00:05'),
(42, 2, 1, 5, '2020-05-11 06:00:07', '2020-05-11 06:00:07'),
(43, 2, 1, 5, '2020-05-11 06:00:08', '2020-05-11 06:00:08'),
(44, 2, 1, 5, '2020-05-11 06:00:58', '2020-05-11 06:00:58'),
(45, 2, 11, 6, '2020-05-11 06:03:23', '2020-05-11 23:13:06'),
(46, 3, 11, 20, '2020-05-11 06:06:28', '2020-05-11 06:21:22'),
(47, 8, 11, 14, '2020-05-11 06:21:34', '2020-05-11 23:16:57'),
(48, 7, 11, 9, '2020-05-11 06:24:56', '2020-05-16 18:34:20'),
(49, 6, 11, 6, '2020-05-11 06:25:15', '2020-05-11 06:26:17'),
(50, 9, 11, 10, '2020-05-11 06:26:26', '2020-05-11 06:32:30'),
(51, 1, 12, 3, '2020-05-11 23:39:24', '2020-05-11 23:39:55'),
(52, 3, 12, 2, '2020-05-11 23:39:40', '2020-05-11 23:40:15'),
(53, 6, 12, 5, '2020-05-11 23:41:25', '2020-05-11 23:42:05'),
(54, 6, 14, 3, '2020-05-11 23:44:38', '2020-05-11 23:44:51'),
(55, 3, 14, 1, '2020-05-11 23:44:57', '2020-05-11 23:44:57'),
(56, 2, 14, 2, '2020-05-11 23:49:00', '2020-05-11 23:49:03'),
(57, 4, 12, 1, '2020-05-12 00:53:46', '2020-05-12 00:53:46'),
(58, 7, 12, 1, '2020-05-13 07:03:26', '2020-05-13 07:03:26'),
(59, 7, 17, 2, '2020-05-16 18:41:04', '2020-05-16 18:41:18'),
(60, 7, 18, 3, '2020-05-16 18:43:06', '2020-05-16 19:06:33'),
(61, 8, 18, 4, '2020-05-16 18:43:23', '2020-05-16 20:12:54'),
(62, 3, 18, 1, '2020-05-16 19:29:31', '2020-05-16 19:29:31');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'itaque', '2020-05-10 01:12:27', '2020-05-10 01:12:27'),
(2, 'architecto', '2020-05-10 01:12:27', '2020-05-10 01:12:27'),
(3, 'exercitationem', '2020-05-10 01:12:27', '2020-05-10 01:12:27'),
(4, 'rerum', '2020-05-10 01:12:27', '2020-05-10 01:12:27'),
(5, 'delectus', '2020-05-10 01:12:27', '2020-05-10 01:12:27'),
(6, 'est', '2020-05-10 01:12:27', '2020-05-10 01:12:27'),
(7, 'voluptates', '2020-05-10 01:12:27', '2020-05-10 01:12:27'),
(8, 'explicabo', '2020-05-10 01:12:27', '2020-05-10 01:12:27');

-- --------------------------------------------------------

--
-- Table structure for table `drivers`
--

CREATE TABLE `drivers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `firstName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `middleName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profilePicture` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phoneNumber` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `long` decimal(11,8) NOT NULL,
  `lat` decimal(10,8) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `drivers`
--

INSERT INTO `drivers` (`id`, `firstName`, `lastName`, `middleName`, `profilePicture`, `email`, `password`, `phoneNumber`, `address`, `long`, `lat`, `created_at`, `updated_at`) VALUES
(1, 'Percy', 'Kilback', 'Batz', 'aperiam', 'lelia43@hotmail.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1-848-374-3405', '8868 Lang Estate\nRoobside, IL 94060-4318', '152.25021500', '45.02608100', '2020-05-10 01:12:27', '2020-05-10 01:12:27'),
(2, 'Ismael', 'Beatty', 'Mann', 'fugit', 'becker.alverta@roob.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '431-452-5306', '750 Franecki Forest Apt. 369\nPort Brendenton, WA 12854-6776', '129.68504100', '5.20612300', '2020-05-10 01:12:27', '2020-05-10 01:12:27'),
(3, 'Raymundo', 'Kuvalis', 'Schneider', 'accusantium', 'amelia.koss@rodriguez.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '+1.908.918.1402', '59398 Metz Haven Suite 660\nWeimannport, WA 79386-0756', '109.93476000', '17.79654200', '2020-05-10 01:12:27', '2020-05-10 01:12:27'),
(4, 'Carissa', 'Anderson', 'Windler', 'quia', 'demetrius54@hotmail.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '493-853-5737', '44572 Hagenes Point Apt. 950\nEphraimton, AZ 03133-3948', '-31.97393000', '-38.06859200', '2020-05-10 01:12:27', '2020-05-10 01:12:27'),
(5, 'Howard', 'Stoltenberg', 'Wehner', 'tempora', 'zterry@hotmail.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '332-413-3772 x442', '417 Salma Views\nNikolashaven, PA 28520-1252', '-90.01764400', '38.09323000', '2020-05-10 01:12:27', '2020-05-10 01:12:27');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `foods`
--

CREATE TABLE `foods` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `foodPicture` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seller_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `price` decimal(6,2) NOT NULL,
  `stock` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `foods`
--

INSERT INTO `foods` (`id`, `name`, `detail`, `foodPicture`, `seller_id`, `category_id`, `price`, `stock`, `created_at`, `updated_at`) VALUES
(1, 'molestiae', 'Cumque eos veniam unde hic. Non at corporis praesentium qui eveniet in porro. Qui in nemo occaecati enim.', 'magni', 3, 7, '0.00', 6, '2020-05-10 01:12:27', '2020-05-10 01:12:27'),
(2, 'iste', 'Sed magni consectetur id doloremque et at et. Sit voluptas est ab quibusdam dicta. Atque eum nihil et accusantium occaecati. Beatae est ex autem qui nulla inventore.', 'est', 2, 1, '6.00', 8, '2020-05-10 01:12:27', '2020-05-10 01:12:27'),
(3, 'reiciendis', 'Est iure expedita fugit ab quas. Animi eveniet accusantium exercitationem ullam ut rerum. Adipisci et consequuntur quia repudiandae nobis et fugit.', 'eaque', 1, 7, '7.00', 2, '2020-05-10 01:12:27', '2020-05-10 01:12:27'),
(4, 'distinctio', 'Quia beatae quas eos ducimus reprehenderit. Velit quibusdam assumenda deleniti ex dolores. Est quia ab ut. Et animi et quia ullam ab.', 'incidunt', 1, 3, '1.00', 5, '2020-05-10 01:12:27', '2020-05-10 01:12:27'),
(5, 'sunt', 'Numquam dicta perspiciatis rerum sit harum. Praesentium excepturi aut et ipsa. Cupiditate enim fugit quo aliquam quod error magnam.', 'distinctio', 3, 3, '6.00', 6, '2020-05-10 01:12:27', '2020-05-10 01:12:27'),
(6, 'necessitatibus', 'Ipsa aliquid nihil expedita et ea nisi. At debitis suscipit enim corporis fugit non. Perspiciatis qui aut non non.', 'consectetur', 2, 6, '9.00', 6, '2020-05-10 01:12:27', '2020-05-10 01:12:27'),
(7, 'fuga', 'Nihil dolores et reprehenderit laborum. Tempore accusamus facilis vel porro.', 'in', 3, 8, '9.00', 9, '2020-05-10 01:12:27', '2020-05-10 01:12:27'),
(8, 'animi', 'Ab facilis impedit exercitationem accusamus dolore. Animi quia dolorem tempora quaerat. Officia vero repellat distinctio sit aut et. Magni explicabo vitae aut modi.', 'vel', 1, 1, '4.00', 7, '2020-05-10 01:12:27', '2020-05-10 01:12:27'),
(9, 'molestiae', 'Blanditiis id doloremque nobis est rem error. Suscipit fugiat velit aut perspiciatis perferendis. Ex dignissimos omnis molestiae maiores architecto. Rerum aut aut possimus rerum.', 'qui', 4, 3, '6.00', 7, '2020-05-10 01:12:27', '2020-05-10 01:12:27'),
(10, 'aliquid', 'Consequuntur maxime eligendi cumque cupiditate in dicta. Quo enim omnis provident consequatur. Rerum ipsum quia quo vel. Dolorem vel laboriosam repellendus qui nemo omnis.', 'exercitationem', 2, 2, '4.00', 5, '2020-05-10 01:12:27', '2020-05-10 01:12:27'),
(11, 'adipisci', 'Autem qui at dignissimos animi ipsum fugiat. Quaerat ipsam dolor consectetur magnam accusamus sed.', 'aperiam', 3, 4, '6.00', 5, '2020-05-10 01:12:27', '2020-05-10 01:12:27'),
(12, 'qui', 'Quas molestiae quia omnis quaerat quam. Unde quis aut atque et ratione consequatur. Sed explicabo deleniti nihil quibusdam maiores et. Iusto dolorum voluptatem repellendus inventore error.', 'sunt', 3, 5, '9.00', 2, '2020-05-10 01:12:27', '2020-05-10 01:12:27'),
(13, 'reprehenderit', 'Harum ea est eligendi temporibus magni blanditiis. Cumque eos ad consectetur ea voluptatem. Exercitationem sunt ut accusantium qui eaque ipsa. Harum officia qui excepturi.', 'quia', 5, 1, '8.00', 9, '2020-05-10 01:12:27', '2020-05-10 01:12:27'),
(14, 'aspernatur', 'Non quasi facere aut sint labore eum sapiente sit. Repellendus vel et a et aut omnis praesentium. Qui sint illum quos ad iusto ut.', 'consequatur', 1, 7, '1.00', 8, '2020-05-10 01:12:27', '2020-05-10 01:12:27'),
(15, 'nemo', 'Eveniet fugiat dolore modi voluptates dolor et. Praesentium itaque praesentium tempora corrupti doloremque aliquid molestias. Et sit voluptatum voluptatem suscipit repudiandae.', 'impedit', 2, 8, '2.00', 4, '2020-05-10 01:12:27', '2020-05-10 01:12:27'),
(16, 'autem', 'Facilis nesciunt suscipit architecto architecto et. Culpa ea quos rerum qui. Rerum repellendus tempora quasi aliquid expedita ut qui.', 'recusandae', 3, 4, '1.00', 9, '2020-05-10 01:12:27', '2020-05-10 01:12:27'),
(17, 'dolorem', 'Aut at ullam exercitationem animi sapiente exercitationem. Tempora sed est quibusdam odit assumenda inventore assumenda autem. Et atque ut non dignissimos dicta quisquam odit. Ut quae incidunt voluptas.', 'quas', 1, 3, '8.00', 9, '2020-05-10 01:12:27', '2020-05-10 01:12:27'),
(18, 'nesciunt', 'Nobis laborum officiis sunt nihil occaecati cum. Excepturi facere eum accusamus eveniet. Deleniti ratione incidunt natus commodi ratione.', 'natus', 1, 6, '9.00', 8, '2020-05-10 01:12:27', '2020-05-10 01:12:27'),
(19, 'sequi', 'Excepturi molestiae unde laudantium et nostrum. Alias impedit modi rerum officia. Sapiente velit placeat est modi nobis velit eos expedita. Qui maxime ratione sit aut accusantium perferendis.', 'quam', 4, 6, '4.00', 9, '2020-05-10 01:12:27', '2020-05-10 01:12:27'),
(20, 'ut', 'Est voluptas tempora non earum sit commodi. Voluptate eum omnis qui odit error. Excepturi minima ullam sit iusto quia voluptatem nihil.', 'consequatur', 3, 7, '5.00', 1, '2020-05-10 01:12:27', '2020-05-10 01:12:27'),
(21, 'placeat', 'Labore qui sequi voluptatem pariatur tempora dolorem. Enim odit unde consequatur quae rerum incidunt ratione. Labore id omnis ipsa quos natus ipsam. Cupiditate veniam ut id aut quasi.', 'iure', 3, 3, '4.00', 4, '2020-05-10 01:12:27', '2020-05-10 01:12:27'),
(22, 'reiciendis', 'Eum quaerat sed quaerat eos et totam nemo. Itaque distinctio id est voluptatem ut suscipit.', 'hic', 1, 8, '6.00', 8, '2020-05-10 01:12:27', '2020-05-10 01:12:27'),
(23, 'ipsa', 'Architecto reiciendis qui nulla et. Qui inventore distinctio libero alias. Exercitationem officiis maiores quis eligendi. Sit ullam aut perferendis vel quisquam architecto quisquam.', 'ipsa', 3, 1, '5.00', 1, '2020-05-10 01:12:27', '2020-05-10 01:12:27'),
(24, 'voluptatem', 'Fugit sint et consequatur ipsa esse sequi. Sed et aut qui repudiandae suscipit quia. Sint optio laudantium voluptatum rem.', 'ab', 1, 4, '5.00', 2, '2020-05-10 01:12:27', '2020-05-10 01:12:27'),
(25, 'sint', 'Labore maiores fuga consequatur soluta. Nihil doloribus numquam non accusantium quibusdam. Quae consequatur ut quam quis ex. Ut voluptatem nam minima quod in rerum.', 'sed', 2, 8, '6.00', 5, '2020-05-10 01:12:27', '2020-05-10 01:12:27'),
(26, 'debitis', 'Quia architecto alias libero iste reprehenderit qui. Dolores quos accusamus et harum est. Expedita est perspiciatis molestiae aliquam distinctio.', 'aspernatur', 3, 2, '8.00', 4, '2020-05-10 01:12:27', '2020-05-10 01:12:27'),
(27, 'sint', 'Fugiat quia quisquam repellendus saepe et fugiat ipsum. Iste expedita possimus sed dolorum sed dolorum. Beatae ut minus expedita dolores dignissimos doloribus repellat nobis. Et officia consequatur iusto dolores assumenda.', 'magnam', 4, 6, '3.00', 8, '2020-05-10 01:12:27', '2020-05-10 01:12:27'),
(28, 'et', 'Recusandae ipsam earum enim. Maiores recusandae impedit deserunt quos. Dolorem rerum dolores est aut voluptas.', 'numquam', 4, 4, '9.00', 0, '2020-05-10 01:12:27', '2020-05-10 01:12:27'),
(29, 'laborum', 'Illo laborum repudiandae delectus esse ut odit aut. Voluptatum maiores blanditiis eum laudantium laudantium quia vel consequatur. Ab repudiandae tenetur necessitatibus quae dolor vero.', 'rem', 5, 1, '2.00', 8, '2020-05-10 01:12:27', '2020-05-10 01:12:27'),
(30, 'eveniet', 'Delectus perspiciatis aut dolores et. Sunt quia nesciunt dolores beatae laudantium voluptatibus autem odio. Possimus qui corporis non dolor culpa id eum. Maiores voluptates laudantium numquam et aut qui laudantium veniam.', 'et', 3, 4, '6.00', 1, '2020-05-10 01:12:27', '2020-05-10 01:12:27'),
(31, 'quasi', 'Aliquid et accusamus est iure animi ea. Ea tempore dicta similique et earum non incidunt. Earum aliquid tenetur ut asperiores porro.', 'quas', 4, 8, '4.00', 4, '2020-05-10 01:12:27', '2020-05-10 01:12:27'),
(32, 'neque', 'Qui saepe quo nisi quia in sit cumque similique. Aut commodi asperiores dolores accusantium qui doloribus velit. Fugit architecto voluptatem quam aut quo expedita ipsa.', 'nulla', 2, 6, '0.00', 3, '2020-05-10 01:12:27', '2020-05-10 01:12:27'),
(33, 'possimus', 'Odio cum doloribus voluptatum quia blanditiis qui. Ipsum exercitationem molestiae ipsum.', 'praesentium', 1, 8, '7.00', 9, '2020-05-10 01:12:27', '2020-05-10 01:12:27'),
(34, 'et', 'Exercitationem consectetur eius ea officia voluptate. Qui sint sit ad tempora consequatur nostrum omnis. Dolores sed aut autem ducimus aut fugiat ipsa esse. Amet enim voluptatem optio illum. Qui minus veritatis quia est qui.', 'distinctio', 4, 3, '5.00', 8, '2020-05-10 01:12:27', '2020-05-10 01:12:27'),
(35, 'aut', 'Quas omnis a est. Maiores aut at error aliquid accusantium iusto qui. Ea nesciunt id quo nostrum nobis consequatur est.', 'odio', 2, 4, '8.00', 9, '2020-05-10 01:12:27', '2020-05-10 01:12:27'),
(36, 'quod', 'Ea repudiandae in ea corrupti quia molestiae. Eos quo sunt omnis ipsum quae doloremque. Aspernatur quo eos ducimus est dolore quod ea. In ad quod animi quia. Aut accusantium cupiditate sit itaque aut quia.', 'maiores', 4, 3, '6.00', 6, '2020-05-10 01:12:27', '2020-05-10 01:12:27'),
(37, 'ea', 'Aspernatur est autem quod perferendis nihil sed sunt. Consequuntur ut adipisci est nulla est voluptatem. Quod eaque quas itaque quibusdam.', 'temporibus', 3, 4, '0.00', 7, '2020-05-10 01:12:27', '2020-05-10 01:12:27'),
(38, 'eaque', 'Aut molestiae rerum debitis et quae sapiente est. Autem debitis reiciendis nam esse dolorum. Qui libero neque iste officia sint doloremque quibusdam aut. Ipsam et tempore sunt accusamus similique.', 'laborum', 2, 5, '4.00', 8, '2020-05-10 01:12:27', '2020-05-10 01:12:27'),
(39, 'numquam', 'Sed aliquid velit quo modi itaque consequatur qui ut. Quia autem aut dolorem laborum molestias rerum. Et tempora atque voluptatem consequuntur repudiandae nisi.', 'quidem', 1, 3, '2.00', 1, '2020-05-10 01:12:27', '2020-05-10 01:12:27'),
(40, 'et', 'Dolores minus enim excepturi ipsa quia. Unde quia et repellendus nisi. Cum ea corporis alias ut.', 'illo', 2, 6, '5.00', 3, '2020-05-10 01:12:27', '2020-05-10 01:12:27'),
(41, 'reiciendis', 'Laboriosam voluptas dolores debitis culpa. Excepturi id deleniti vero sint. Voluptates iusto repudiandae nihil molestiae aut non. Illum qui suscipit atque ea.', 'praesentium', 2, 2, '3.00', 4, '2020-05-10 01:12:27', '2020-05-10 01:12:27'),
(42, 'tempora', 'Dolor aut autem harum quia. Eaque repudiandae quidem omnis ea omnis. Saepe accusantium et quos qui aut a labore. Quae enim dolor labore facilis vel dolores qui.', 'sed', 1, 4, '5.00', 2, '2020-05-10 01:12:27', '2020-05-10 01:12:27'),
(43, 'voluptatem', 'Exercitationem hic corporis deleniti quia aut vel. Ea voluptatem ut saepe sequi necessitatibus sit. Maiores tenetur ex assumenda harum.', 'est', 1, 8, '6.00', 8, '2020-05-10 01:12:27', '2020-05-10 01:12:27'),
(44, 'fuga', 'Sed necessitatibus similique quasi dolorum asperiores. Cumque in ipsam quo voluptatem maiores aut mollitia.', 'non', 1, 1, '0.00', 5, '2020-05-10 01:12:27', '2020-05-10 01:12:27'),
(45, 'praesentium', 'Et iure facere voluptatem aut. Provident voluptatem voluptate sint aut et aut esse. Maxime odio autem nobis atque sed est.', 'at', 2, 4, '7.00', 1, '2020-05-10 01:12:27', '2020-05-10 01:12:27'),
(46, 'tempore', 'Maxime quia aut fuga aut ut vel. Dignissimos ex porro aut ex assumenda. Quisquam debitis nisi quod laborum similique corrupti in.', 'dolore', 2, 3, '2.00', 6, '2020-05-10 01:12:27', '2020-05-10 01:12:27'),
(47, 'corporis', 'Eligendi ab in voluptatem provident nostrum atque. Sequi hic ut reiciendis vitae. Cupiditate eum quae voluptas in et voluptatibus.', 'modi', 5, 1, '5.00', 2, '2020-05-10 01:12:27', '2020-05-10 01:12:27'),
(48, 'dolorem', 'Labore consequatur autem maxime sapiente quisquam dolorum corporis. Magnam distinctio esse nesciunt sed ipsa. Ut iusto in cum voluptas ad soluta officia sunt.', 'deleniti', 3, 3, '7.00', 1, '2020-05-10 01:12:27', '2020-05-10 01:12:27'),
(49, 'dignissimos', 'Omnis et earum non necessitatibus. Consectetur et a amet cum praesentium ut autem. Modi enim maxime consequatur aliquid inventore non earum amet. A nesciunt minima nesciunt aspernatur maiores minima odio.', 'non', 5, 3, '0.00', 1, '2020-05-10 01:12:27', '2020-05-10 01:12:27'),
(50, 'quos', 'Dicta odit blanditiis rerum sint sit laudantium quas. Incidunt reprehenderit sit nulla corrupti veniam ipsam. Voluptatem soluta soluta officia nam ipsum sint.', 'beatae', 4, 1, '2.00', 0, '2020-05-10 01:12:27', '2020-05-10 01:12:27');

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
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(4, '2020_05_03_055402_create_sellers_table', 1),
(5, '2020_05_03_055428_create_categories_table', 1),
(6, '2020_05_03_055458_create_drivers_table', 1),
(7, '2020_05_03_055529_create_foods_table', 1),
(8, '2020_05_03_055551_create_carts_table', 1),
(9, '2020_05_04_032625_create_reviews_table', 1);

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

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\User', 11, '43481c3dd34654de', 'dd0fd7c81ba3bacba10dbc4562d6d09c80615df57cf50fc8df8d602d4603e12f', '[\"*\"]', NULL, '2020-05-10 01:14:23', '2020-05-10 01:14:23'),
(2, 'App\\User', 11, 'xxxx', '4a199b62ad3e887adba80d1868777e9909b2a84157c31a785d07d21c7c166bd7', '[\"*\"]', NULL, '2020-05-10 01:16:14', '2020-05-10 01:16:14'),
(3, 'App\\User', 11, 'xxxx', '92e55990ab6f1ceb17a99cbbbb6ab440ef8f7115f14e5a45129ada95ce1d2b61', '[\"*\"]', NULL, '2020-05-10 03:10:15', '2020-05-10 03:10:15'),
(4, 'App\\User', 12, '43481c3dd34654de', '9be988932d0f9012e67e698051b1854565fc2ade6da722ba6e622d62d902775f', '[\"*\"]', NULL, '2020-05-11 23:28:57', '2020-05-11 23:28:57'),
(5, 'App\\User', 13, '43481c3dd34654de', '2a1543b73d512a429adfc228375caa72f92e1bce709a3deea397ac1371abab7a', '[\"*\"]', NULL, '2020-05-11 23:31:06', '2020-05-11 23:31:06'),
(6, 'App\\User', 12, 'xxxx', '1f72cb6b7b8a4405828f85a0c7d5a99128c09b5bc501387ec25e4262d8c8a632', '[\"*\"]', NULL, '2020-05-11 23:34:42', '2020-05-11 23:34:42'),
(7, 'App\\User', 14, '43481c3dd34654de', '7b50d42e344dd082a14962397345019b1e6aece785fb12332b619a892e56e068', '[\"*\"]', NULL, '2020-05-11 23:44:22', '2020-05-11 23:44:22'),
(8, 'App\\User', 12, 'xxxx', '1195926072381c56b679a18562a2899c8c8d8b927f1630d334fb028e41e917bd', '[\"*\"]', NULL, '2020-05-12 00:49:37', '2020-05-12 00:49:37'),
(9, 'App\\User', 12, 'xxxx', 'b55b6d9fc7b2015c6de9a44bf7c110c41d8075870c9894b5a34b9e0eb298cac9', '[\"*\"]', NULL, '2020-05-12 00:56:58', '2020-05-12 00:56:58'),
(10, 'App\\User', 11, 'xxxx', 'b516b7cb83d49b959b7bb3d4153618c1b6f0ff9106ea6b4aced48c7ca04e32b0', '[\"*\"]', NULL, '2020-05-13 07:16:59', '2020-05-13 07:16:59'),
(11, 'App\\User', 11, 'xxxx', '395cd4a07280642b1c8fb0f5c503a12d0d6163c10596ab3b9cdbc588ca337706', '[\"*\"]', NULL, '2020-05-16 18:34:08', '2020-05-16 18:34:08'),
(12, 'App\\User', 17, '43481c3dd34654de', '8e6a1c6e8f86b108652b7c9a507194d1680e35de02799bb75f04b0b772abbe7e', '[\"*\"]', NULL, '2020-05-16 18:40:48', '2020-05-16 18:40:48'),
(13, 'App\\User', 18, '43481c3dd34654de', 'd1ded9618a767438dd5563a5510936e9713345e662a5ef6ab1e4c4f4808534c7', '[\"*\"]', NULL, '2020-05-16 18:42:52', '2020-05-16 18:42:52');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `food_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `star` int(11) NOT NULL,
  `review` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `food_id`, `user_id`, `star`, `review`, `created_at`, `updated_at`) VALUES
(1, 7, 5, 5, 'Suscipit quia explicabo autem similique debitis quo nemo. Nostrum et deserunt labore repellendus nobis. Numquam dolores autem magnam autem. Dolor amet consequatur ut quaerat.', '2020-05-10 01:12:28', '2020-05-10 01:12:28'),
(2, 11, 4, 1, 'Soluta repellendus incidunt suscipit placeat. Modi est et eligendi autem qui labore porro totam. Cum saepe quia impedit provident qui vel praesentium.', '2020-05-10 01:12:28', '2020-05-10 01:12:28'),
(3, 25, 8, 3, 'Repudiandae sit sunt et sunt saepe temporibus et. Inventore eaque quia temporibus nostrum. Praesentium qui eius et voluptas et. Eaque nam quibusdam esse ex provident quas quo autem.', '2020-05-10 01:12:28', '2020-05-10 01:12:28'),
(4, 10, 4, 8, 'Quod alias quo facilis qui. Animi aspernatur assumenda et quisquam quod. Et et commodi eligendi cumque delectus vero laborum. Est veniam dolore blanditiis voluptate. Sit debitis est consequatur aut.', '2020-05-10 01:12:28', '2020-05-10 01:12:28'),
(5, 50, 4, 1, 'Ad quasi recusandae dolore. Sunt illo qui sint neque molestias. Sint rerum vitae eligendi itaque repellat possimus et. Repudiandae occaecati voluptatum nihil tempore.', '2020-05-10 01:12:28', '2020-05-10 01:12:28'),
(6, 33, 9, 7, 'Et maiores numquam nobis perferendis laudantium. Odio modi harum dolores eius qui possimus.', '2020-05-10 01:12:28', '2020-05-10 01:12:28'),
(7, 8, 4, 9, 'Id provident voluptatem omnis. Dolorem sunt sint sunt sit adipisci eos. Et ratione quaerat soluta qui nihil omnis rerum.', '2020-05-10 01:12:28', '2020-05-10 01:12:28'),
(8, 37, 10, 0, 'Itaque sit ab dolores excepturi ratione velit eum. Soluta et nobis pariatur voluptatem iusto eveniet quod. Sequi itaque a ratione quasi eos reiciendis occaecati quia.', '2020-05-10 01:12:28', '2020-05-10 01:12:28'),
(9, 33, 9, 3, 'Mollitia suscipit molestiae recusandae cupiditate fugit mollitia. Accusamus delectus qui omnis repellat ducimus exercitationem. Aspernatur neque ea asperiores quis dolore et exercitationem. Reprehenderit praesentium dolorem autem amet atque.', '2020-05-10 01:12:28', '2020-05-10 01:12:28'),
(10, 9, 4, 0, 'In officiis possimus rerum perspiciatis ut consequuntur. Assumenda et aliquam ab. Natus modi alias corporis aut nihil. Qui quo et consequuntur.', '2020-05-10 01:12:28', '2020-05-10 01:12:28'),
(11, 45, 1, 4, 'Dolores et quas sint molestiae possimus unde illo neque. Tempore minima est ab eius voluptatem. Odio nihil nam perferendis voluptate libero saepe.', '2020-05-10 01:12:28', '2020-05-10 01:12:28'),
(12, 6, 7, 9, 'Recusandae nesciunt sed pariatur impedit. Quidem pariatur et esse ut qui dolore fuga mollitia. Animi sit voluptatem voluptatum recusandae.', '2020-05-10 01:12:28', '2020-05-10 01:12:28'),
(13, 43, 8, 8, 'Perspiciatis amet soluta vel odit. Quia sint veritatis architecto sunt qui delectus velit. Ipsum est tenetur ea ipsa rerum ut voluptas.', '2020-05-10 01:12:28', '2020-05-10 01:12:28'),
(14, 44, 10, 8, 'Pariatur officiis atque quia eaque est aliquid. Vitae nesciunt excepturi repellat voluptatem nihil id nisi. Quo iure porro provident ipsam corrupti. Odit sint recusandae rerum quia sint.', '2020-05-10 01:12:28', '2020-05-10 01:12:28'),
(15, 41, 1, 5, 'Debitis facere est provident libero. Natus illo aliquid totam maiores ab. Dolorem quia natus nemo voluptas nostrum quia et.', '2020-05-10 01:12:28', '2020-05-10 01:12:28'),
(16, 7, 1, 2, 'Harum quia facilis qui dolores doloribus quae. Officia libero veritatis nobis ab rerum est. Nihil dolore fugiat vel quis facere. A sit eaque voluptatem molestias deserunt magni earum.', '2020-05-10 01:12:28', '2020-05-10 01:12:28'),
(17, 25, 5, 1, 'Ut molestiae pariatur aliquam. A numquam et ut vero facere earum accusantium cupiditate. In eos quis reprehenderit fuga ut.', '2020-05-10 01:12:28', '2020-05-10 01:12:28'),
(18, 18, 6, 5, 'Adipisci consequatur totam quia voluptatem aut dolore expedita non. Et voluptas neque ut voluptas corporis. Et deleniti totam quaerat est optio omnis. Sint necessitatibus dolorum excepturi cum sint qui possimus.', '2020-05-10 01:12:28', '2020-05-10 01:12:28'),
(19, 27, 7, 1, 'Maiores corrupti facilis qui. Et ea rem et mollitia nulla. Aut iusto molestiae officia ab.', '2020-05-10 01:12:28', '2020-05-10 01:12:28'),
(20, 50, 3, 5, 'Rem sit quo ut. Ea id ut consequatur quo earum animi. Iste vero dolor sequi est minus.', '2020-05-10 01:12:28', '2020-05-10 01:12:28'),
(21, 17, 6, 7, 'Quia corporis mollitia minus repudiandae ducimus reprehenderit eligendi. Corporis enim repellendus commodi perferendis eos tenetur inventore. Rerum recusandae perferendis sequi et.', '2020-05-10 01:12:28', '2020-05-10 01:12:28'),
(22, 25, 5, 6, 'Soluta praesentium cum eum et delectus saepe beatae. Ut neque et blanditiis deserunt provident repudiandae dolor commodi. Sequi natus suscipit ut sint qui velit expedita necessitatibus. At minima eum ratione et.', '2020-05-10 01:12:28', '2020-05-10 01:12:28'),
(23, 16, 3, 4, 'Natus voluptatem dolores eligendi. Voluptates et architecto minima ea. Nihil eos et vel molestiae ad facilis reprehenderit.', '2020-05-10 01:12:28', '2020-05-10 01:12:28'),
(24, 14, 3, 2, 'Eius non quis suscipit sapiente quam sit voluptate. Et eligendi laborum quia qui eos. Exercitationem et nihil id accusantium at.', '2020-05-10 01:12:28', '2020-05-10 01:12:28'),
(25, 2, 3, 7, 'Pariatur aperiam rerum sit quos quibusdam aliquam. Expedita magnam quia officia est. Repellat earum sapiente blanditiis doloremque unde quo ipsa. Et est hic provident impedit quis.', '2020-05-10 01:12:28', '2020-05-10 01:12:28'),
(26, 42, 8, 8, 'Quidem et quod excepturi voluptas dolor et. Perferendis reprehenderit eos culpa odit voluptates sed. Nihil impedit nulla quia aut animi assumenda.', '2020-05-10 01:12:28', '2020-05-10 01:12:28'),
(27, 36, 10, 4, 'Nihil officia ut tempora. Animi qui necessitatibus tempore molestias optio impedit.', '2020-05-10 01:12:28', '2020-05-10 01:12:28'),
(28, 25, 3, 8, 'Vero et nam enim saepe iure eaque incidunt ut. Praesentium magni voluptas molestiae et. Magni blanditiis hic consectetur corrupti iusto. Fugit nulla sunt reprehenderit recusandae rerum.', '2020-05-10 01:12:28', '2020-05-10 01:12:28'),
(29, 7, 6, 9, 'Tempore soluta vel inventore recusandae repellendus quos magni voluptate. Ut voluptatem repellendus quo sapiente voluptate. Fuga officia illo ut.', '2020-05-10 01:12:28', '2020-05-10 01:12:28'),
(30, 36, 7, 2, 'Voluptatem nam vel sunt. Ut rem ipsum rerum eius quisquam. Sed consectetur delectus esse earum.', '2020-05-10 01:12:28', '2020-05-10 01:12:28'),
(31, 32, 8, 0, 'Hic ipsam rem quis voluptatum unde repellendus culpa laborum. Quia debitis libero tempora. Ut quibusdam quidem atque id. Qui possimus nesciunt et aliquam pariatur itaque libero.', '2020-05-10 01:12:28', '2020-05-10 01:12:28'),
(32, 12, 6, 9, 'Ratione minus aut molestiae consequatur. Doloribus natus ut debitis placeat odit quia.', '2020-05-10 01:12:28', '2020-05-10 01:12:28'),
(33, 50, 4, 4, 'Inventore eveniet est sit aut modi. Praesentium dicta ut dolores eos qui. Quam libero ut necessitatibus aliquid. Consequatur saepe magni enim quia quisquam consectetur.', '2020-05-10 01:12:28', '2020-05-10 01:12:28'),
(34, 13, 2, 7, 'Facilis qui reiciendis unde praesentium voluptate. Odio temporibus sed aut. Pariatur et vel et voluptatem odio quia quo. Aut voluptas distinctio eum earum optio.', '2020-05-10 01:12:28', '2020-05-10 01:12:28'),
(35, 47, 8, 6, 'Ipsa dicta quam qui et qui recusandae. Dicta veritatis maiores repellat. Sunt perferendis omnis quia dolorem nisi. Accusantium fugit voluptas tenetur ullam.', '2020-05-10 01:12:28', '2020-05-10 01:12:28'),
(36, 15, 7, 2, 'Voluptatem sunt recusandae quia dolore atque. Error minima est est totam. Ad debitis qui sed.', '2020-05-10 01:12:28', '2020-05-10 01:12:28'),
(37, 28, 10, 8, 'Qui ad recusandae atque aperiam. Aut sed id explicabo aut perspiciatis quisquam laudantium.', '2020-05-10 01:12:28', '2020-05-10 01:12:28'),
(38, 14, 4, 7, 'Repellendus est nihil aut sint vel eligendi est qui. Unde ut adipisci sed sapiente. Dolorum quo harum quaerat cum excepturi nobis doloribus.', '2020-05-10 01:12:28', '2020-05-10 01:12:28'),
(39, 5, 7, 7, 'Aut et architecto praesentium laudantium quis qui. Et consequatur quaerat odio necessitatibus eaque officia accusantium. Eum doloribus aut minus mollitia inventore aut. Voluptatibus cum molestiae sunt ut dolore.', '2020-05-10 01:12:28', '2020-05-10 01:12:28'),
(40, 38, 9, 8, 'Harum illum non recusandae molestias cupiditate magni reprehenderit. Enim accusantium explicabo deleniti explicabo nulla fugiat. Deleniti mollitia fuga quas nemo eaque minus labore. Distinctio vitae earum voluptate et ut sint.', '2020-05-10 01:12:28', '2020-05-10 01:12:28'),
(41, 1, 7, 3, 'Tempore dolore quo sit corporis non. Veniam inventore magnam iste ut.', '2020-05-10 01:12:28', '2020-05-10 01:12:28'),
(42, 10, 6, 8, 'Quisquam omnis optio qui. Iure molestias dolorem sed molestias ullam voluptas. At ut assumenda voluptatem aut a sed ullam molestiae. Qui odio qui voluptatum numquam.', '2020-05-10 01:12:28', '2020-05-10 01:12:28'),
(43, 34, 3, 4, 'Nostrum quia nemo omnis. Eius iure nisi vel. Fugit laborum corrupti necessitatibus minus. Iusto sequi ut qui est.', '2020-05-10 01:12:28', '2020-05-10 01:12:28'),
(44, 38, 5, 0, 'Cupiditate rerum nulla esse autem nobis nesciunt velit. Et vero omnis aut aut aperiam. Vitae et vel laborum atque facilis debitis non. Eius consequatur assumenda qui nesciunt consequatur ut recusandae.', '2020-05-10 01:12:28', '2020-05-10 01:12:28'),
(45, 23, 8, 9, 'Est culpa qui velit et repellat blanditiis voluptatem. Iste sed porro quisquam pariatur quas. Voluptas et ex dolor architecto aut magnam exercitationem. Vel doloribus esse harum quisquam nihil dolorem.', '2020-05-10 01:12:28', '2020-05-10 01:12:28'),
(46, 29, 9, 8, 'Assumenda nesciunt veritatis ut unde. Earum blanditiis aliquam qui pariatur. Corrupti quis enim atque aliquid consectetur culpa. Quo repellat dolorem eveniet et nihil.', '2020-05-10 01:12:28', '2020-05-10 01:12:28'),
(47, 8, 7, 6, 'Ex culpa fugiat dolorem ut deserunt dolor. Eos possimus reprehenderit sint eos. Nam et nisi et rerum. Nisi sint voluptates repellendus distinctio.', '2020-05-10 01:12:28', '2020-05-10 01:12:28'),
(48, 11, 1, 4, 'Ullam pariatur consequuntur cupiditate beatae eum. Deleniti eius et ullam eaque non earum dolorem. Libero similique labore nihil. Voluptate voluptatem non labore praesentium. Ipsa rem voluptatem earum laboriosam occaecati.', '2020-05-10 01:12:28', '2020-05-10 01:12:28'),
(49, 2, 3, 4, 'Ipsam qui aut reprehenderit nisi sed facere. Tenetur nulla aspernatur et deserunt. Eaque sint quaerat ut inventore voluptas iusto aut.', '2020-05-10 01:12:28', '2020-05-10 01:12:28'),
(50, 47, 7, 0, 'Rerum dolor impedit porro saepe. Voluptates voluptatem iure nihil provident et. Quod consequuntur fugiat dolore nam sit. Quos est expedita veritatis praesentium nihil recusandae soluta. Ut rerum non rerum eos.', '2020-05-10 01:12:28', '2020-05-10 01:12:28'),
(51, 14, 7, 9, 'Eius provident velit non assumenda maxime et totam. Ipsum fugiat maiores soluta voluptate totam iste est sint.', '2020-05-10 01:12:28', '2020-05-10 01:12:28'),
(52, 13, 3, 9, 'Et voluptates vero tempora amet. Fugit dolores quidem consequatur quo eveniet exercitationem tempora aut. Dolorem atque maxime cumque sed quidem beatae omnis.', '2020-05-10 01:12:28', '2020-05-10 01:12:28'),
(53, 42, 8, 7, 'Architecto nesciunt quos et quia odit repudiandae similique. Id magnam qui non magnam provident.', '2020-05-10 01:12:28', '2020-05-10 01:12:28'),
(54, 26, 8, 6, 'Aut nam quidem cum quaerat et nulla. Deleniti excepturi est quia ut fuga.', '2020-05-10 01:12:28', '2020-05-10 01:12:28'),
(55, 31, 10, 4, 'Error labore ut non velit. Fugiat ut possimus culpa et perspiciatis placeat minus. Molestiae quia enim sit eos aperiam. Illo deserunt nam sunt doloribus accusantium perferendis.', '2020-05-10 01:12:28', '2020-05-10 01:12:28'),
(56, 18, 4, 0, 'In et aut molestiae quia. Dolor repellat hic magnam ut. Quibusdam est sunt eaque veniam perspiciatis iusto magni.', '2020-05-10 01:12:28', '2020-05-10 01:12:28'),
(57, 15, 4, 8, 'Voluptas mollitia sit similique. Sit repellendus numquam delectus rem voluptatem voluptates rerum nostrum. Ab omnis ad eum cumque illum et asperiores asperiores. Dolor sint necessitatibus officia est quisquam quas ipsum.', '2020-05-10 01:12:28', '2020-05-10 01:12:28'),
(58, 40, 4, 3, 'Temporibus quam ut repellat ipsam in unde. Quia laudantium non exercitationem expedita. Dolores aut placeat odit aperiam alias.', '2020-05-10 01:12:28', '2020-05-10 01:12:28'),
(59, 22, 7, 9, 'Autem quos voluptates necessitatibus officiis dolor et iusto rem. Provident itaque et dicta veritatis. Nam ut molestias praesentium.', '2020-05-10 01:12:28', '2020-05-10 01:12:28'),
(60, 7, 9, 6, 'Dolorem sequi saepe et ullam. Sit explicabo architecto ipsam. Voluptas distinctio itaque ut. Fuga aut corporis ut dolore earum qui aut.', '2020-05-10 01:12:28', '2020-05-10 01:12:28'),
(61, 21, 9, 6, 'Distinctio dolor suscipit eaque quo. Deleniti voluptates fugit id accusamus quia. Facere voluptate velit sint iure voluptates dolorem. Quae delectus delectus amet voluptas dignissimos et. Ratione sed aliquid et delectus provident aut.', '2020-05-10 01:12:28', '2020-05-10 01:12:28'),
(62, 16, 7, 0, 'Enim harum sed ducimus sunt. Minus quo sit quia et quaerat eum. Omnis incidunt doloremque quasi temporibus beatae.', '2020-05-10 01:12:28', '2020-05-10 01:12:28'),
(63, 18, 6, 0, 'Ipsum distinctio libero consequatur quaerat expedita illum nobis. Natus ut quaerat rerum ea consequatur et dolor.', '2020-05-10 01:12:28', '2020-05-10 01:12:28'),
(64, 41, 8, 3, 'Aliquid dolores ut dolorem nemo quia ipsa. Veniam tenetur alias laborum quis fugit et. Rerum tempore molestiae rem officia quibusdam. Eveniet vitae inventore voluptates temporibus.', '2020-05-10 01:12:28', '2020-05-10 01:12:28'),
(65, 23, 6, 9, 'A assumenda laboriosam iusto ut nemo. Deleniti enim maiores praesentium corrupti culpa. Vitae omnis delectus sunt necessitatibus recusandae autem. Voluptates omnis vel error facere.', '2020-05-10 01:12:28', '2020-05-10 01:12:28'),
(66, 36, 4, 8, 'Quibusdam aut saepe distinctio qui harum in. Animi aspernatur voluptatem sunt soluta. Non ullam nobis ut ab qui. Deleniti optio ad officiis distinctio veritatis.', '2020-05-10 01:12:28', '2020-05-10 01:12:28'),
(67, 21, 7, 5, 'Dolores enim qui soluta qui autem vel non corporis. Molestiae cumque ut non. Eligendi omnis ea velit repellendus sint enim.', '2020-05-10 01:12:28', '2020-05-10 01:12:28'),
(68, 33, 10, 7, 'Maxime facilis delectus non eum id voluptatem qui blanditiis. Officiis culpa quis laudantium odit. Aliquam temporibus architecto dolor mollitia commodi. Molestias quisquam id ad rerum.', '2020-05-10 01:12:28', '2020-05-10 01:12:28'),
(69, 10, 1, 1, 'Perferendis incidunt consectetur sit et tempore repudiandae rerum. Quas quia eos nostrum sequi iusto earum. Id et doloremque autem.', '2020-05-10 01:12:28', '2020-05-10 01:12:28'),
(70, 43, 5, 6, 'Eligendi qui a sunt animi maxime ex id. Ut facere ratione consectetur molestiae eum ipsa eligendi. Dolorem tempora dolorem voluptates excepturi qui quis aspernatur.', '2020-05-10 01:12:28', '2020-05-10 01:12:28'),
(71, 15, 7, 0, 'Dolorum expedita nisi vitae magni ut provident. Quae qui est esse non atque. Illum sunt officiis voluptatem dolore neque minima.', '2020-05-10 01:12:28', '2020-05-10 01:12:28'),
(72, 17, 10, 4, 'Numquam aut libero laudantium possimus. Et harum itaque est molestiae molestiae voluptatem natus vitae. Eligendi occaecati cum qui sit.', '2020-05-10 01:12:28', '2020-05-10 01:12:28'),
(73, 11, 1, 7, 'Qui explicabo voluptate dicta consequatur laborum numquam. Non natus nisi veniam debitis rerum eaque. Minus consequatur voluptates qui.', '2020-05-10 01:12:28', '2020-05-10 01:12:28'),
(74, 45, 6, 3, 'Illum suscipit sed laboriosam labore. Accusantium maiores quia earum occaecati voluptatem. Illo impedit quibusdam quis inventore non veniam consectetur. Ex tenetur inventore adipisci sunt aspernatur.', '2020-05-10 01:12:28', '2020-05-10 01:12:28'),
(75, 11, 8, 2, 'Omnis nesciunt atque est quis. Culpa aut pariatur perferendis qui. Velit doloremque ut laudantium tenetur. Sit illo enim delectus consequatur optio.', '2020-05-10 01:12:28', '2020-05-10 01:12:28'),
(76, 47, 4, 4, 'Quo sed nesciunt deserunt et. Qui blanditiis et totam enim dolores. Velit omnis iure aliquam sequi provident eaque itaque.', '2020-05-10 01:12:28', '2020-05-10 01:12:28'),
(77, 16, 7, 0, 'Eum qui quia sequi natus. Ut et corrupti id id. Facere ratione dignissimos ut eos dolore architecto. Ut vel voluptatem sit.', '2020-05-10 01:12:28', '2020-05-10 01:12:28'),
(78, 27, 1, 6, 'Soluta architecto odit enim incidunt possimus accusamus nemo. Libero nam aperiam iste provident. Nemo velit harum est fuga iure ut est. Fuga quia minima modi optio ratione dolorum accusamus aut.', '2020-05-10 01:12:28', '2020-05-10 01:12:28'),
(79, 9, 1, 7, 'Consequatur voluptates consequatur sint alias. A sed ut dolores aut aliquam. Nam sit eos repellat quae quis sunt. Tempora distinctio iusto aut culpa eos suscipit dolor.', '2020-05-10 01:12:28', '2020-05-10 01:12:28'),
(80, 37, 9, 5, 'Et et quis quae reprehenderit. Laborum aut pariatur numquam dolorem maiores hic est. Occaecati est ipsa reprehenderit consequatur.', '2020-05-10 01:12:28', '2020-05-10 01:12:28'),
(81, 47, 7, 9, 'Quia eveniet quia minus placeat accusantium dolorum. Quasi voluptatem illo reprehenderit illo. Et aliquam qui officia ab iure velit unde. Et cupiditate velit sed. Accusantium suscipit eligendi quibusdam nam.', '2020-05-10 01:12:28', '2020-05-10 01:12:28'),
(82, 49, 3, 7, 'Ipsum aut dolore cum occaecati. Et tenetur velit rerum vitae. Ipsam voluptatum qui molestiae et omnis autem. Sed incidunt est quam nihil commodi consequatur.', '2020-05-10 01:12:28', '2020-05-10 01:12:28'),
(83, 18, 5, 6, 'A aut repellat accusantium nobis saepe. Harum laudantium dolorem corrupti et aut. Voluptatem hic tempore ea quod non. Quia quo fuga animi corrupti fuga. Et eos rerum ad voluptatibus incidunt.', '2020-05-10 01:12:28', '2020-05-10 01:12:28'),
(84, 35, 7, 9, 'Qui est et rerum. Aspernatur ut ullam id quae.', '2020-05-10 01:12:28', '2020-05-10 01:12:28'),
(85, 41, 7, 6, 'Omnis possimus est esse deserunt ab eius corrupti deserunt. Ex assumenda aut dolor facere. Soluta veritatis aspernatur asperiores. Eveniet in quos hic aliquid magnam.', '2020-05-10 01:12:28', '2020-05-10 01:12:28'),
(86, 14, 7, 7, 'Sed error odio saepe quisquam sunt dolore corporis officiis. Eum consectetur modi quaerat natus. Et qui et commodi qui. Ipsam ducimus sit placeat illo culpa est.', '2020-05-10 01:12:28', '2020-05-10 01:12:28'),
(87, 27, 5, 8, 'Numquam incidunt praesentium laborum hic accusantium placeat ipsa. Aliquid temporibus amet eum voluptas. Explicabo id minus ab vel rerum quis nobis.', '2020-05-10 01:12:28', '2020-05-10 01:12:28'),
(88, 31, 4, 0, 'Vel ut nostrum ipsum quo. Beatae aut voluptatibus ut cumque. Nostrum nihil aut accusantium quia.', '2020-05-10 01:12:28', '2020-05-10 01:12:28'),
(89, 20, 10, 7, 'Sed alias placeat tempora necessitatibus aperiam. Sint eum modi perferendis accusantium sit.', '2020-05-10 01:12:28', '2020-05-10 01:12:28'),
(90, 35, 10, 8, 'Ducimus quae et corporis et. Pariatur sed dolores sed quia. Incidunt ipsam non quaerat.', '2020-05-10 01:12:28', '2020-05-10 01:12:28');

-- --------------------------------------------------------

--
-- Table structure for table `sellers`
--

CREATE TABLE `sellers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `businessName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `firstName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `middleName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `businessLogo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profilePicture` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phoneNumber` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `long` decimal(11,8) DEFAULT NULL,
  `lat` decimal(10,8) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sellers`
--

INSERT INTO `sellers` (`id`, `businessName`, `description`, `firstName`, `lastName`, `middleName`, `businessLogo`, `profilePicture`, `email`, `phoneNumber`, `password`, `address`, `long`, `lat`, `created_at`, `updated_at`) VALUES
(1, 'Batz-Padberg', 'Mollitia temporibus officiis sequi dolores sit dolor. Modi doloremque ut ducimus distinctio cupiditate qui aut autem. Ipsum rem tempora voluptatum et qui. Harum excepturi et molestias ratione et.', 'Kelley', 'Windler', 'Krajcik', 'incidunt', 'at', 'frank07@nolan.com', '(334) 428-6848 x59974', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '35184 Hermann Viaduct Suite 052\nChristinachester, NM 33938', '-10.33418500', '-23.24265800', '2020-05-10 01:12:27', '2020-05-10 01:12:27'),
(2, 'Waters-Crona', 'Neque cumque officiis sit ut. Blanditiis pariatur quidem voluptatem voluptatibus sequi ut. Voluptate blanditiis eaque sunt quibusdam recusandae doloremque. Eveniet dolore dolorum ex accusamus sunt libero blanditiis.', 'Katharina', 'Gislason', 'Kovacek', 'adipisci', 'asperiores', 'genesis86@schiller.com', '(240) 842-1966 x70019', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '6977 Windler Loop Apt. 388\nSipesshire, FL 54544', '151.69021900', '55.10133000', '2020-05-10 01:12:27', '2020-05-10 01:12:27'),
(3, 'Wuckert, Thiel and Mertz', 'Libero qui quia quidem neque impedit ipsa eligendi. Repellendus ad optio odio aperiam molestiae. Repellendus quia recusandae ut distinctio tempora aut aliquid. Aut veniam error eum ut neque vel est.', 'Rafael', 'Grant', 'McDermott', 'molestiae', 'temporibus', 'adolph51@lang.com', '+1-731-533-5294', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '3502 Bradtke Route\nSouth Eddie, OK 75997', '140.20282100', '30.54910400', '2020-05-10 01:12:27', '2020-05-10 01:12:27'),
(4, 'Crist, Klein and Durgan', 'Rerum soluta aut neque dolor est dicta. Voluptas illo omnis qui expedita voluptatum. Totam qui velit quis necessitatibus eligendi.', 'Christy', 'Block', 'O\'Hara', 'eum', 'incidunt', 'pat.daugherty@mclaughlin.org', '935-479-4066 x8585', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '9658 Bartoletti Islands Apt. 256\nLebsackton, WA 62373-5527', '76.77361100', '46.18518200', '2020-05-10 01:12:27', '2020-05-10 01:12:27'),
(5, 'Gottlieb, Kautzer and Larson', 'Laudantium officia fuga sint dolorem. Amet quibusdam ipsa enim nulla nihil nemo. Est qui dicta est voluptates. Deleniti deleniti at ut velit quas.', 'Luis', 'Cormier', 'Romaguera', 'animi', 'eius', 'jackson07@bradtke.info', '+1-976-372-2334', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '3361 Susan Neck Apt. 281\nLefflermouth, KS 13410', '-40.73749700', '-14.55391500', '2020-05-10 01:12:27', '2020-05-10 01:12:27');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `firstName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `middleName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profilePicture` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phoneNumber` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `long` decimal(11,8) DEFAULT NULL,
  `lat` decimal(10,8) DEFAULT NULL,
  `dateOfBirth` date DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstName`, `lastName`, `middleName`, `profilePicture`, `email`, `phoneNumber`, `address`, `long`, `lat`, `dateOfBirth`, `email_verified_at`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Palma', 'Howell', 'O\'Conner', 'modi', 'mdach@example.com', '515.544.1789', '9784 Senger Ports\nLake Claraland, NV 85566-5467', '68.95781000', '-28.85138000', '1978-09-08', '2020-05-10 01:12:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2020-05-10 01:12:27', '2020-05-10 01:12:27'),
(2, 'Junior', 'Mraz', 'Gulgowski', 'molestias', 'vlehner@example.org', '(718) 313-3754 x780', '809 Katlynn Lakes Apt. 056\nReingertown, DE 85994', '7.51581900', '-43.48399900', '2010-10-20', '2020-05-10 01:12:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2020-05-10 01:12:27', '2020-05-10 01:12:27'),
(3, 'Vernie', 'Ruecker', 'Vandervort', 'adipisci', 'hdoyle@example.org', '369.556.1830 x576', '952 Royce Oval Suite 230\nLake Tess, GA 03918', '-45.53204200', '-73.15069300', '1981-03-22', '2020-05-10 01:12:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2020-05-10 01:12:27', '2020-05-10 01:12:27'),
(4, 'Presley', 'Lubowitz', 'Swift', 'voluptas', 'ericka58@example.com', '(901) 215-4826', '185 Alessandra Crescent Suite 535\nCorkerychester, NE 79166-5204', '-74.65906600', '67.00623500', '2012-03-11', '2020-05-10 01:12:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2020-05-10 01:12:27', '2020-05-10 01:12:27'),
(5, 'Kamille', 'Rau', 'Kutch', 'reiciendis', 'ima.stoltenberg@example.com', '571-786-8929 x4278', '3749 Quigley Keys\nJedchester, TX 57049', '-68.67922000', '-3.89310300', '1988-02-16', '2020-05-10 01:12:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2020-05-10 01:12:27', '2020-05-10 01:12:27'),
(6, 'Glenna', 'Wolff', 'Fadel', 'quo', 'patrick.feest@example.org', '523.205.2620 x4584', '81257 Boyle Rest\nMertzton, MI 92275', '-7.38235300', '-8.84311200', '2003-04-27', '2020-05-10 01:12:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2020-05-10 01:12:27', '2020-05-10 01:12:27'),
(7, 'Jamal', 'Bogan', 'Herzog', 'nam', 'uheller@example.net', '1-639-625-6147 x3806', '80826 Meagan Mount\nTyresechester, NH 53430-6690', '-37.19814800', '59.88768000', '2016-08-05', '2020-05-10 01:12:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2020-05-10 01:12:27', '2020-05-10 01:12:27'),
(8, 'Earl', 'Gusikowski', 'Pagac', 'voluptatem', 'daphnee70@example.org', '281-595-3830', '2491 Danial Ranch\nWest Merle, CA 54814-4803', '33.70199900', '88.81693700', '2010-06-12', '2020-05-10 01:12:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2020-05-10 01:12:27', '2020-05-10 01:12:27'),
(9, 'Gilda', 'Nader', 'Grady', 'alias', 'toy.orval@example.net', '647.459.9411 x35530', '48401 Laisha Junctions Suite 254\nJosefort, WA 29820', '2.76266500', '40.61118600', '2019-02-09', '2020-05-10 01:12:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2020-05-10 01:12:27', '2020-05-10 01:12:27'),
(10, 'Christiana', 'Witting', 'O\'Keefe', 'fugiat', 'raina.corkery@example.net', '531.851.8195 x0269', '8822 VonRueden Islands Suite 399\nNorth Meda, HI 49421', '-74.37674700', '5.25084100', '1995-07-18', '2020-05-10 01:12:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2020-05-10 01:12:27', '2020-05-10 01:12:27'),
(11, 'Eleazar', 'Federio', NULL, NULL, NULL, '09301649765', NULL, NULL, NULL, NULL, NULL, '$2y$10$AZTxX7JX5fKNIrq9vdHCz.Jnosmbmpce6pFZUf/xbbo34xvvs.sAm', '2020-05-10 01:14:23', '2020-05-10 01:14:23'),
(12, 'Milyn', 'Calipay', NULL, NULL, NULL, '09294242881', NULL, NULL, NULL, NULL, NULL, '$2y$10$HNXUBseDpmFyle1k84FuQ.G1QtpUlZUJ/CWcCu810st5uCvwTh5Xm', '2020-05-11 23:28:57', '2020-05-11 23:28:57'),
(13, 'Milyn', 'Calipay', NULL, NULL, NULL, '0929414181', NULL, NULL, NULL, NULL, NULL, '$2y$10$lBEFjTKPVdkpsYIQO8en1OB01Dlboja8B8DGR2wTOM79xEhIWBDT2', '2020-05-11 23:31:06', '2020-05-11 23:31:06'),
(14, 'Juan', 'de la Cruz', NULL, NULL, NULL, '09123456789', NULL, NULL, NULL, NULL, NULL, '$2y$10$1CfkjjcG98O2lO.hlN8P1OjB5Gk8ufHViaqnt95IUNY3EK9hyOW.C', '2020-05-11 23:44:22', '2020-05-11 23:44:22'),
(17, 'Aaaaa', 'Bbbbb', NULL, NULL, NULL, '09987654321', NULL, NULL, NULL, NULL, NULL, '$2y$10$nXy6K5TObxlXbxyx13JwsuYk/ptXG5hewWf2QbZR3KMH2I3gZ8AFG', '2020-05-16 18:40:48', '2020-05-16 18:40:48'),
(18, 'Sssssss', 'Llllllllll', NULL, NULL, NULL, '09999888777', NULL, NULL, NULL, NULL, NULL, '$2y$10$COckzN5C7EpSXLE3FJdgsepZUk9qs6nMkXSOHg8zc4EZKsU5eXHf2', '2020-05-16 18:42:52', '2020-05-16 18:42:52');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carts_food_id_index` (`food_id`),
  ADD KEY `carts_user_id_index` (`user_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `drivers`
--
ALTER TABLE `drivers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `drivers_email_unique` (`email`),
  ADD UNIQUE KEY `drivers_phonenumber_unique` (`phoneNumber`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `foods`
--
ALTER TABLE `foods`
  ADD PRIMARY KEY (`id`),
  ADD KEY `foods_category_id_foreign` (`category_id`),
  ADD KEY `foods_seller_id_index` (`seller_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_food_id_index` (`food_id`),
  ADD KEY `reviews_user_id_index` (`user_id`);

--
-- Indexes for table `sellers`
--
ALTER TABLE `sellers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sellers_phonenumber_unique` (`phoneNumber`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_phonenumber_unique` (`phoneNumber`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `drivers`
--
ALTER TABLE `drivers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `foods`
--
ALTER TABLE `foods`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `sellers`
--
ALTER TABLE `sellers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_food_id_foreign` FOREIGN KEY (`food_id`) REFERENCES `foods` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `carts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `foods`
--
ALTER TABLE `foods`
  ADD CONSTRAINT `foods_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `foods_seller_id_foreign` FOREIGN KEY (`seller_id`) REFERENCES `sellers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_food_id_foreign` FOREIGN KEY (`food_id`) REFERENCES `foods` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reviews_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
--
-- Database: `invasion`
--
CREATE DATABASE IF NOT EXISTS `invasion` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `invasion`;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `middle_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fb_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `province` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `town` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `barangay` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zip_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location_details` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `first_name`, `last_name`, `middle_name`, `fb_name`, `phone_number`, `email`, `company_name`, `province`, `town`, `barangay`, `zip_code`, `location_details`, `created_at`, `updated_at`) VALUES
(1, 'ELEAZAR', 'FEDERIO', NULL, 'ELEAZAR ORENDAIN FEDERIO', '09129724342', NULL, 'BUGC', 'SORSOGON', 'GUBAT', 'MANOOK', NULL, 'At the corner of bonifacio & aquinaldo Street', '2020-06-01 03:56:41', '2020-06-01 03:56:41');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `full_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
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
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(4, '2020_05_13_153017_create_customers_table', 1),
(5, '2020_05_24_114707_create_employees_table', 1),
(6, '2020_05_24_114732_create_products_table', 1),
(7, '2020_05_24_114757_create_processes_table', 1),
(8, '2020_05_25_074424_create_statuses_table', 1);

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
-- Table structure for table `processes`
--

CREATE TABLE `processes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `print` tinyint(1) NOT NULL DEFAULT 0,
  `cut_paper` tinyint(1) NOT NULL DEFAULT 0,
  `heat_press` tinyint(1) NOT NULL DEFAULT 0,
  `cut_print` tinyint(1) NOT NULL DEFAULT 0,
  `edging` tinyint(1) NOT NULL DEFAULT 0,
  `pip_side` tinyint(1) NOT NULL DEFAULT 0,
  `cut_edge` tinyint(1) NOT NULL DEFAULT 0,
  `pip_strap` tinyint(1) NOT NULL DEFAULT 0,
  `lock_strap` tinyint(1) NOT NULL DEFAULT 0,
  `cut_strap` tinyint(1) NOT NULL DEFAULT 0,
  `pic_pack` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `details` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 0,
  `price` double NOT NULL DEFAULT 0,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `picture` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `details`, `quantity`, `price`, `category`, `customer_id`, `picture`, `due_date`, `status`, `created_at`, `updated_at`) VALUES
(1, 'dsdsd', 22, 40, 'Printed', 1, '20200601_115709-93876015.jpg', NULL, NULL, '2020-06-01 03:57:09', '2020-06-01 03:57:09'),
(2, 'gygh gfgf', 22, 40, 'Printed', 1, '20200601_121743-77360658.jpg', '0000-00-00', NULL, '2020-06-01 04:17:43', '2020-06-01 04:17:43'),
(3, 'gygh gfgf', 600, 40, 'Printed', 1, '20200601_122008-8927150.jpg', '0000-00-00', NULL, '2020-06-01 04:20:08', '2020-06-01 04:20:08'),
(4, 'gygh gfgf', 22, 40, 'Printed', 1, '20200601_124657-48637665.jpg', '2020-06-08', NULL, '2020-06-01 04:46:57', '2020-06-01 04:46:57'),
(5, 'dsdsd', 22, 40, 'Printed', 1, '20200601_124738-68694863.jpg', '2020-06-30', NULL, '2020-06-01 04:47:38', '2020-06-01 04:47:38');

-- --------------------------------------------------------

--
-- Table structure for table `statuses`
--

CREATE TABLE `statuses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint(20) UNSIGNED DEFAULT NULL,
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
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `employees_phone_number_unique` (`phone_number`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `processes`
--
ALTER TABLE `processes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `processes_employee_id_index` (`employee_id`),
  ADD KEY `processes_product_id_index` (`product_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_customer_id_index` (`customer_id`);

--
-- Indexes for table `statuses`
--
ALTER TABLE `statuses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `statuses_product_id_index` (`product_id`);

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
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `processes`
--
ALTER TABLE `processes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `statuses`
--
ALTER TABLE `statuses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `processes`
--
ALTER TABLE `processes`
  ADD CONSTRAINT `processes_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `processes_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `statuses`
--
ALTER TABLE `statuses`
  ADD CONSTRAINT `statuses_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;
--
-- Database: `invisions`
--
CREATE DATABASE IF NOT EXISTS `invisions` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `invisions`;

-- --------------------------------------------------------

--
-- Table structure for table `itemtype`
--

CREATE TABLE `itemtype` (
  `Item_Type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `itemtype`
--

INSERT INTO `itemtype` (`Item_Type`) VALUES
('Inks'),
('Jersey'),
('Mugs'),
('Photo Paper'),
('Shirt'),
('Sticker'),
('Tarpaulin');

-- --------------------------------------------------------

--
-- Table structure for table `itemtypecategory`
--

CREATE TABLE `itemtypecategory` (
  `Item_Type` varchar(50) NOT NULL,
  `Item_Type_Cat` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `itemtypecategory`
--

INSERT INTO `itemtypecategory` (`Item_Type`, `Item_Type_Cat`) VALUES
('Jersey', 'Full Max'),
('Jersey', 'Polydex'),
('Jersey', 'Sports Max'),
('Jersey', 'Lytex'),
('Shirt', 'Cotton'),
('Shirt', 'Dry Fit'),
('Shirt', 'Polo Shirt'),
('Shirt', 'Long Sleeves'),
('Mugs', 'Magic Mug'),
('Mugs', 'Inner Colored Mug'),
('Mugs', 'White Mug'),
('Mugs', 'Clear Mug'),
('Mugs', 'Neon Colored Mug'),
('Inks', 'Pigment ink'),
('Inks', 'Dye ink'),
('Inks', 'Sublimation ink'),
('Sticker', 'Photo Sticker'),
('Sticker', 'Vinyl Sticker'),
('Photo Paper', 'Large Format'),
('Photo Paper', 'Digital Print');

-- --------------------------------------------------------

--
-- Table structure for table `loginrecord`
--

CREATE TABLE `loginrecord` (
  `Ctr` int(11) NOT NULL,
  `Eno` int(11) NOT NULL,
  `Username` varchar(50) NOT NULL,
  `ip` varchar(50) NOT NULL,
  `DateTime` varchar(50) NOT NULL,
  `Status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `loginrecord`
--

INSERT INTO `loginrecord` (`Ctr`, `Eno`, `Username`, `ip`, `DateTime`, `Status`) VALUES
(1, 1, 'admin', '192.168.254.124', '01/15/2019 10:43:08 am', 'Success'),
(2, 3, 'graphics1', '192.168.254.124', '01/15/2019 10:43:34 am', 'Success'),
(3, 1, 'admin', '192.168.254.124', '01/15/2019 10:45:40 am', 'Success'),
(4, 3, 'graphics1', '192.168.254.124', '01/15/2019 11:07:33 am', 'Success'),
(5, 1, 'admin', '192.168.254.124', '01/15/2019 11:07:39 am', 'Success'),
(6, 6, 'admin', '192.168.254.124', '01/15/2019 11:41:00 am', 'Success'),
(7, 6, 'admin', '192.168.254.124', '01/15/2019 12:54:22 pm', 'Success'),
(8, 6, 'admin', '192.168.254.124', '01/15/2019 12:54:48 pm', 'Success'),
(9, 6, 'admin', '192.168.254.124', '01/15/2019 04:36:35 pm', 'Success'),
(10, 6, 'admin', '192.168.254.124', '01/15/2019 04:37:13 pm', 'Success'),
(11, 6, 'admin', '192.168.254.124', '01/15/2019 04:37:53 pm', 'Success'),
(12, 3, 'graphics1', '192.168.254.124', '01/15/2019 04:38:07 pm', 'Success'),
(13, 3, 'graphics1', '192.168.254.124', '01/15/2019 04:38:35 pm', 'Success'),
(14, 6, 'admin', '192.168.254.124', '01/15/2019 04:40:28 pm', 'Success'),
(15, 4, 'cashier1', '192.168.254.124', '01/15/2019 04:51:34 pm', 'Success'),
(16, 3, 'graphics1', '192.168.254.124', '01/15/2019 04:52:12 pm', 'Success'),
(17, 6, 'admin', '192.168.254.124', '01/15/2019 04:52:30 pm', 'Success'),
(18, 6, 'admin', '192.168.254.124', '01/15/2019 05:07:35 pm', 'Success'),
(19, 6, 'admin', '192.168.254.124', '01/16/2019 08:08:02 am', 'Success'),
(20, 6, 'admin', '192.168.254.124', '01/16/2019 08:08:02 am', 'Success'),
(21, 6, 'admin', '192.168.254.124', '01/16/2019 09:19:41', 'Success'),
(22, 6, 'admin', '192.168.254.124', '01/16/2019 11:14:15', 'Success'),
(23, 8, 'trial', '192.168.254.124', '01/16/2019 11:29:18', 'Success'),
(24, 6, 'admin', '192.168.254.124', '2019-01-16 13:09:41', 'Success'),
(25, 3, 'graphics1', '192.168.254.124', '2019-01-16 13:09:51', 'Success'),
(26, 6, 'admin', '192.168.254.124', '2019-01-16 13:09:56', 'Success'),
(27, 4, 'cashier1', '192.168.254.124', '2019-01-16 13:15:55', 'Success'),
(28, 4, 'cashier1', '192.168.254.124', '2019-01-16 13:18:30', 'Success'),
(29, 6, 'admin', '192.168.254.124', '2019-01-16 13:18:50', 'Success'),
(30, 3, 'graphics1', '192.168.254.124', '2019-01-16 13:21:30', 'Success'),
(31, 6, 'admin', '192.168.254.124', '2019-01-16 13:22:11', 'Success'),
(32, 6, 'admin', '192.168.254.124', '2019-01-16 16:48:16', 'Success'),
(33, 6, 'admin', '192.168.254.124', '01/17/2019 08:20:28', 'Success'),
(34, 6, 'admin', '192.168.254.124', '01/17/2019 10:48:21', 'Success'),
(35, 4, 'cashier1', '192.168.254.124', '01/17/2019 10:48:29', 'Success'),
(36, 6, 'admin', '192.168.254.124', '01/17/2019 11:04:21', 'Success'),
(37, 6, 'admin', '192.168.254.124', '01/17/2019 11:55:43', 'Success'),
(38, 6, 'admin', '192.168.254.124', '01/17/2019 11:56:02', 'Success'),
(39, 6, 'admin', '192.168.254.124', '2019-01-17 13:17:53', 'Success'),
(40, 6, 'admin', '192.168.254.124', '2019-01-17 13:53:58', 'Success'),
(41, 6, 'admin', '192.168.254.124', '2019-01-17 15:18:35', 'Success'),
(42, 6, 'admin', '192.168.254.124', '2019-01-17 15:18:40', 'Success'),
(43, 3, 'graphics1', '192.168.254.124', '2019-01-17 15:24:24', 'Success'),
(44, 4, 'cashier1', '192.168.254.124', '2019-01-17 15:37:24', 'Success'),
(50, 6, 'admin', '192.168.254.124', '2019-01-17 15:40:08', 'Success'),
(51, 3, 'graphics1', '192.168.254.124', '2019-01-17 15:47:22', 'Success'),
(52, 6, 'admin', '192.168.254.124', '2019-01-17 15:47:47', 'Success'),
(55, 6, 'admin', '192.168.254.124', '2019-01-17 16:08:43', 'Failed'),
(56, 3, 'graphics1', '192.168.254.124', '2019-01-17 16:08:52', 'Success'),
(57, 4, 'cashier1', '192.168.254.124', '2019-01-17 16:11:29', 'Failed'),
(58, 6, 'admin', '192.168.254.124', '2019-01-17 16:25:39', 'Failed'),
(59, 4, 'cashier1', '192.168.254.124', '2019-01-17 16:25:48', 'Success'),
(60, 6, 'admin', '127.0.0.1', '2020-06-04 23:49:17', 'Success');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `JO` varchar(50) NOT NULL,
  `DateReceived` varchar(50) NOT NULL,
  `ClientName` varchar(100) NOT NULL,
  `Contact` varchar(50) NOT NULL,
  `TypeReceipt` varchar(50) NOT NULL,
  `DateNeeded` varchar(50) NOT NULL,
  `PaymentAmount` float NOT NULL,
  `Balance` float NOT NULL,
  `TotalCost` float NOT NULL,
  `Status` varchar(20) NOT NULL DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`JO`, `DateReceived`, `ClientName`, `Contact`, `TypeReceipt`, `DateNeeded`, `PaymentAmount`, `Balance`, `TotalCost`, `Status`) VALUES
('1', '2019-01-17 13:19:10', 'Raj Mercado', '09123456789', 'T', '2019-01-31', 10000, 0, 7250, 'Pending'),
('2', '2019-01-17 13:19:54', 'Raj Mercado', '09123456789', 'TT', '2019-01-19', 1000, 0, 1000, 'Cancelled'),
('3', '2019-01-17 13:20:50', 'Juan Dela Cruz', '0912394956', 'TT', '2019-01-23', 1500, 250, 1750, 'Cancelled'),
('4', '2019-01-17 13:22:15', 'Juan Dela Cruz', '0912394956', 'TO', '2019-01-21', 1500, 0, 1200, 'Pending'),
('5', '2019-01-17 13:55:47', 'Dian Floranda', '0995684594', 'RR', '2019-01-22', 8000, 0, 8000, 'Pending'),
('6', '2019-01-17 15:16:47', 'Pat Azurin', '0959930495', '55', '2019-01-22', 2500, 500, 3000, 'Pending'),
('7', '2019-01-17 15:19:33', 'Edward Gile', '0945886970', 'RRR', '2019-01-18', 1000, 0, 1000, 'Cancelled'),
('8', '2019-01-17 15:22:17', 'Maria Fedeliza Azurin', '0950994938', 'PO', '2019-02-02', 1000, 0, 1000, 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `transactiondetails`
--

CREATE TABLE `transactiondetails` (
  `JO` varchar(50) NOT NULL,
  `itemtype` varchar(50) NOT NULL,
  `itemcategory` varchar(50) NOT NULL,
  `itemsubcategory` varchar(50) NOT NULL,
  `color` varchar(50) NOT NULL,
  `thickness` varchar(50) NOT NULL,
  `size` varchar(50) NOT NULL,
  `UOM` varchar(10) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `costperpiece` float NOT NULL,
  `quantity` float NOT NULL,
  `cost` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transactiondetails`
--

INSERT INTO `transactiondetails` (`JO`, `itemtype`, `itemcategory`, `itemsubcategory`, `color`, `thickness`, `size`, `UOM`, `gender`, `costperpiece`, `quantity`, `cost`) VALUES
('1', 'Sticker', 'Vinyl Sticker', '', '', '', '', '', '', 50, 5, 250),
('1', 'Shirt', 'Dry Fit', '', 'Red', '', 'S', '', '', 200, 10, 2000),
('1', 'Shirt', 'Dry Fit', '', 'Red', '', 'M', '', '', 200, 15, 3000),
('1', 'Photo Paper', 'Digital Print', '', '', '', 'A4', '', '', 20, 100, 2000),
('2', 'Tarpaulin', '', '', '', 'Makapal', '10x15', 'ft', '', 1000, 1, 1000),
('3', 'Jersey', 'Long Sleeves', 'Polydex', 'Red', '', 'M', '', 'Female', 250, 5, 1250),
('3', 'Mugs', 'Inner Colored Mug', '', '', '', '', '', '', 100, 5, 500),
('4', 'Tarpaulin', '', '', '', 'Makapal', '10x9', 'ft', '', 950, 1, 950),
('4', 'Inks', 'Pigment ink', 'Yellow', '', '', '', 'ml', '', 50, 5, 250),
('5', 'Jersey', 'Sando', 'Full Max', 'White', '', 'M', '', 'Female', 500, 10, 5000),
('5', 'Jersey', 'Shorts', 'Full Max', 'Red', '', 'M', '', 'Female', 300, 10, 3000),
('6', 'Sticker', 'Vinyl Sticker', '', '', '', 'A4', '', '', 25, 100, 2500),
('6', 'Tarpaulin', '', '', '', 'Manipis', '5x9', 'ft', '', 500, 1, 500),
('7', 'Mugs', 'Neon Colored Mug', '', '', '', '', '', '', 200, 5, 1000),
('8', 'Jersey', 'Hoody', 'Full Max', 'Red', '', 'S', '', 'Female', 1000, 1, 1000);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `Eno` int(11) NOT NULL,
  `Username` varchar(50) NOT NULL,
  `Password` text NOT NULL,
  `Permission` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`Eno`, `Username`, `Password`, `Permission`) VALUES
(3, 'graphics1', '$2y$10$lpilHk99zu0su3kl2sEcTueaXcd7wSgh3qx51XQpYivYXnEgmCARe', 'Graphic Artist'),
(4, 'cashier1', '$2y$10$jvjeMsl5abhJDLrROg2Yb.hculBWEiYODzHFYUGux/VeQ7C8pYjI.', 'Cashier'),
(6, 'admin', '$2y$10$U/ozRQKYT.7E.2rDXmSqiegJ80TWnV23j/Lc4jE6hqjUOVmTZtOly', 'Administrator'),
(9, 'trial', '$2y$10$wWfzeiz9q.PGl5jwp7qcRe0C33p5y459dwMVmpWvXsySGBAwk0UsW', 'Graphic Artist'),
(10, 'root', '$2y$10$Raf83PIrul3IDNT1gcg5fuG1CdkaffByUmGIwlS8HHZ3b7.utmL1m', 'Graphic Artist'),
(11, 'powers', '$2y$10$KG9MjMbcCBclE.VKpiHCt.KlTS4lMhbEdEzcWksAsjeFkEK3QCYI2', 'Graphic Artist');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `itemtype`
--
ALTER TABLE `itemtype`
  ADD PRIMARY KEY (`Item_Type`);

--
-- Indexes for table `itemtypecategory`
--
ALTER TABLE `itemtypecategory`
  ADD KEY `Item_Type` (`Item_Type`);

--
-- Indexes for table `loginrecord`
--
ALTER TABLE `loginrecord`
  ADD PRIMARY KEY (`Ctr`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`JO`);

--
-- Indexes for table `transactiondetails`
--
ALTER TABLE `transactiondetails`
  ADD KEY `JO` (`JO`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`Eno`),
  ADD UNIQUE KEY `Username` (`Username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `loginrecord`
--
ALTER TABLE `loginrecord`
  MODIFY `Ctr` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `Eno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `itemtypecategory`
--
ALTER TABLE `itemtypecategory`
  ADD CONSTRAINT `itemtypecategory_ibfk_1` FOREIGN KEY (`Item_Type`) REFERENCES `itemtype` (`Item_Type`);

--
-- Constraints for table `transactiondetails`
--
ALTER TABLE `transactiondetails`
  ADD CONSTRAINT `transactiondetails_ibfk_1` FOREIGN KEY (`JO`) REFERENCES `transaction` (`JO`);
--
-- Database: `laravel`
--
CREATE DATABASE IF NOT EXISTS `laravel` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `laravel`;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
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
(4, '2020_07_05_095638_create_motors_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `motors`
--

CREATE TABLE `motors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `motor_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `light` tinyint(1) NOT NULL,
  `key_switch` tinyint(1) NOT NULL,
  `ignition` tinyint(1) NOT NULL,
  `alarm` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `motors`
--

INSERT INTO `motors` (`id`, `motor_name`, `light`, `key_switch`, `ignition`, `alarm`, `created_at`, `updated_at`) VALUES
(1, 'Rusi Chariot', 0, 0, 1, 0, NULL, '2020-07-14 03:04:42');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
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
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `motors`
--
ALTER TABLE `motors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `motors`
--
ALTER TABLE `motors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `multiauth`
--
CREATE DATABASE IF NOT EXISTS `multiauth` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `multiauth`;

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bloggers`
--

CREATE TABLE `bloggers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
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
(4, '2020_06_04_124926_create_admins_table', 1),
(5, '2020_06_04_125134_create_bloggers_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
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
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bloggers`
--
ALTER TABLE `bloggers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

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
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bloggers`
--
ALTER TABLE `bloggers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `mulyijoin`
--
CREATE DATABASE IF NOT EXISTS `mulyijoin` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `mulyijoin`;

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `name`, `phone`, `created_at`, `updated_at`) VALUES
(1, 'BUGC', '09385784607', '2020-04-10 07:27:14', '2020-04-10 07:27:14'),
(2, 'USC', '09385784608', '2020-04-10 07:28:24', '2020-04-10 07:28:24');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `address`, `email`, `company_id`, `created_at`, `updated_at`) VALUES
(1, 'Eleazar Federio', 'Manook, Gubat, Sorsogon', 'eleazarfederio@rocketmail.com', 1, '2020-04-10 07:35:55', '2020-04-10 07:35:55'),
(2, 'Kish Federio', 'Manook, Gubat, Sorsogon', 'kishfederio@rocketmail.com', 2, '2020-04-10 07:36:27', '2020-04-10 07:36:27');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
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
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2020_04_10_145024_create_companies_table', 1),
(4, '2020_04_10_152013_create_customers_table', 1),
(5, '2020_04_11_133351_create_roles_table', 2),
(6, '2020_04_11_133459_create_role_user_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'delete_user', NULL, NULL),
(2, 'add_user', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`id`, `role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(2, 2, 1, NULL, NULL);

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
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Meredith Gorczany', 'okub@example.net', '2020-04-11 05:41:59', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'q680JxcZi7', '2020-04-11 05:41:59', '2020-04-11 05:41:59'),
(2, 'Stone Cremin', 'frida52@example.net', '2020-04-11 05:42:00', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'me7YFJ8EwB', '2020-04-11 05:42:00', '2020-04-11 05:42:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Database: `onlineshop`
--
CREATE DATABASE IF NOT EXISTS `onlineshop` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `onlineshop`;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
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
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2020_04_28_100547_create_products_table', 1),
(10, '2020_04_28_100618_create_reviews_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `discount` int(11) NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `customer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `review` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `star` int(11) NOT NULL,
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
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_user_id_index` (`user_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_product_id_index` (`product_id`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

--
-- Dumping data for table `pma__designer_settings`
--

INSERT INTO `pma__designer_settings` (`username`, `settings_data`) VALUES
('root', '{\"relation_lines\":\"true\",\"angular_direct\":\"direct\",\"snap_to_grid\":\"off\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"covid_tacker\",\"table\":\"establishments\"},{\"db\":\"covid_tacker\",\"table\":\"travel_history\"},{\"db\":\"covid_tacker\",\"table\":\"persons\"},{\"db\":\"laravel\",\"table\":\"motors\"},{\"db\":\"db_crud\",\"table\":\"product\"},{\"db\":\"tracer\",\"table\":\"people\"},{\"db\":\"laravel\",\"table\":\"users\"},{\"db\":\"laravel\",\"table\":\"products\"},{\"db\":\"sorsogon_invisions\",\"table\":\"products\"},{\"db\":\"sorsogon_invisions\",\"table\":\"customers\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Dumping data for table `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'bu_gubat', 'students', '{\"sorted_col\":\"`students`.`student_id`  ASC\",\"CREATE_TIME\":\"2020-03-28 17:32:20\",\"col_order\":[0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23],\"col_visib\":[1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]}', '2020-04-21 09:20:28'),
('root', 'covid_tacker', 'persons', '{\"sorted_col\":\"`traveler_id` ASC\"}', '2020-07-26 14:51:54'),
('root', 'invasion', 'products', '{\"sorted_col\":\"`products`.`due_date` DESC\"}', '2020-06-01 12:36:30'),
('root', 'laravel', 'products', '{\"sorted_col\":\"`products`.`customer_id`  DESC\"}', '2020-06-03 16:07:50'),
('root', 'progress_app', 'processes', '{\"sorted_col\":\"`processes`.`edging` ASC\"}', '2020-05-25 00:12:10');

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2020-07-26 14:50:39', '{\"Console\\/Mode\":\"collapse\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `pivotjoin`
--
CREATE DATABASE IF NOT EXISTS `pivotjoin` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `pivotjoin`;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `firstname`, `lastname`, `email`, `created_at`, `updated_at`) VALUES
(1, 'Eleazar', 'Federio', 'eleazarfederio@rocketmail.com', '2020-04-13 07:10:48', '2020-04-13 07:10:48'),
(2, 'Milyn', 'Calipay', 'milyncalipay@rocketmail.com', '2020-04-13 07:12:03', '2020-04-13 07:12:03');

-- --------------------------------------------------------

--
-- Table structure for table `customer_product`
--

CREATE TABLE `customer_product` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customer_product`
--

INSERT INTO `customer_product` (`id`, `customer_id`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(2, 1, 1, NULL, NULL),
(3, 1, 1, NULL, NULL),
(4, 1, 1, NULL, NULL),
(5, 1, 1, NULL, NULL),
(6, 2, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
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
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2020_04_13_144357_create_products_table', 2),
(4, '2020_04_13_144649_create_customers_table', 2),
(5, '2020_04_13_150049_create_customer_product_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_name`, `product_price`, `created_at`, `updated_at`) VALUES
(1, 'Safe Guard', 'P15', '2020-04-13 07:14:01', '2020-04-13 07:14:01'),
(2, 'Dove', 'P55', '2020-04-13 07:14:44', '2020-04-13 07:14:44');

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
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_product`
--
ALTER TABLE `customer_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `customer_product`
--
ALTER TABLE `customer_product`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `power_db`
--
CREATE DATABASE IF NOT EXISTS `power_db` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `power_db`;

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
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
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(4, '2020_05_21_063714_create_employees_table', 1),
(5, '2020_05_21_063942_create_products_table', 1),
(6, '2020_05_21_064004_create_processes_table', 1),
(7, '2020_05_21_064028_create_work_table', 1);

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
-- Table structure for table `processes`
--

CREATE TABLE `processes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `process_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `picture` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_name`, `details`, `customer`, `picture`, `created_at`, `updated_at`) VALUES
(2, 'Sumbrero', 'dsd df fg f  fdf  df  dfdf dgd', 'Captain Barbel', '20200521_105547-76316823.jpg', '2020-05-21 02:55:47', '2020-05-21 02:55:47'),
(3, 'Jersey Short', 'sjdh jhoeu Wdac  hjdioi', 'Somebody', '20200521_112636-70493882.jpg', '2020-05-21 03:26:36', '2020-05-21 03:26:36');

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
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `work`
--

CREATE TABLE `work` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `process_id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `employees_phone_number_unique` (`phone_number`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `processes`
--
ALTER TABLE `processes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `processes_product_id_index` (`product_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `work`
--
ALTER TABLE `work`
  ADD PRIMARY KEY (`id`),
  ADD KEY `work_process_id_index` (`process_id`),
  ADD KEY `work_employee_id_index` (`employee_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `processes`
--
ALTER TABLE `processes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `work`
--
ALTER TABLE `work`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `processes`
--
ALTER TABLE `processes`
  ADD CONSTRAINT `processes_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `work`
--
ALTER TABLE `work`
  ADD CONSTRAINT `work_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `work_process_id_foreign` FOREIGN KEY (`process_id`) REFERENCES `processes` (`id`) ON DELETE CASCADE;
--
-- Database: `progress_app`
--
CREATE DATABASE IF NOT EXISTS `progress_app` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `progress_app`;

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `process_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `middle_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fb_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `province` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `town` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `barangay` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zip_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location_details` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `first_name`, `last_name`, `middle_name`, `fb_name`, `phone_number`, `email`, `company_name`, `province`, `town`, `barangay`, `zip_code`, `location_details`, `created_at`, `updated_at`) VALUES
(1, 'Juan', 'de la Cruz', NULL, 'juanDelaCruz', '09123456789', NULL, 'Amazing Company', 'Sorsogon', 'Gubat', 'Manook', NULL, 'Near Caltex Gasoline Station', '2020-05-26 08:13:30', '2020-05-26 08:13:30'),
(2, 'Kish', 'Federio', NULL, 'kish.federio', '09987654321', NULL, 'The Company', 'Sorsogon', 'Barcelona', 'Poblacion', NULL, 'Near Bakery', '2020-05-26 08:44:07', '2020-05-26 08:44:07'),
(3, 'Reymart', 'Ramos', NULL, 'reymart', '09392817456', NULL, 'Power', 'SORSOGON', 'GUBAT', 'COGON', NULL, 'Near car welding shop', '2020-05-26 08:47:15', '2020-05-26 08:47:15'),
(4, 'ELEAZAR', 'FEDERIO', NULL, 'eleazar.federio', '09129724342', NULL, 'BUGC', 'SORSOGON', 'GUBAT', 'Manook', NULL, 'Near car welding shop', '2020-05-26 08:52:19', '2020-05-26 08:52:19');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `full_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
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
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(4, '2020_05_23_102317_create_customers_table', 1),
(5, '2020_05_24_114707_create_employees_table', 1),
(6, '2020_05_24_114732_create_products_table', 1),
(7, '2020_05_24_114757_create_processes_table', 1),
(8, '2020_05_26_103636_create_comments_table', 1);

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
-- Table structure for table `processes`
--

CREATE TABLE `processes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `print` tinyint(1) NOT NULL DEFAULT 0,
  `cut_paper` tinyint(1) NOT NULL DEFAULT 0,
  `heat_press` tinyint(1) NOT NULL DEFAULT 0,
  `cut_print` tinyint(1) NOT NULL DEFAULT 0,
  `edging` tinyint(1) NOT NULL DEFAULT 0,
  `pip_side` tinyint(1) NOT NULL DEFAULT 0,
  `cut_edge` tinyint(1) NOT NULL DEFAULT 0,
  `pip_strap` tinyint(1) NOT NULL DEFAULT 0,
  `lock_strap` tinyint(1) NOT NULL DEFAULT 0,
  `cut_strap` tinyint(1) NOT NULL DEFAULT 0,
  `pic_pack` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `picture` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_process_id_index` (`process_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `employees_phone_number_unique` (`phone_number`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `processes`
--
ALTER TABLE `processes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `processes_employee_id_index` (`employee_id`),
  ADD KEY `processes_product_id_index` (`product_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_customer_id_index` (`customer_id`);

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
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `processes`
--
ALTER TABLE `processes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_process_id_foreign` FOREIGN KEY (`process_id`) REFERENCES `processes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `processes`
--
ALTER TABLE `processes`
  ADD CONSTRAINT `processes_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `processes_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE;
--
-- Database: `que`
--
CREATE DATABASE IF NOT EXISTS `que` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `que`;

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `id` int(11) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `email` varchar(13) NOT NULL,
  `procced` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`id`, `firstname`, `lastname`, `email`, `procced`) VALUES
(27, 'ELEAZAR', 'FEDERIO', '09385784607', 1),
(28, 'Juan', 'de la Cruz', '09123456789', 1),
(29, 'Jose ', 'Rizal', '0999999999', 1),
(30, 'Spider', 'Man', '09321654987', 1),
(31, 'ELEAZAR', 'FEDERIO', '09385784607', 1),
(32, 'ELEAZAR', 'FEDERIO', '09385784607', 1),
(33, 'Kish', 'Federio', '09888777666', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- Database: `relations`
--
CREATE DATABASE IF NOT EXISTS `relations` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `relations`;

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `name`, `address`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'BUGC', 'Pinotingan, Gubat, Sorsogon', 1, '2020-02-27 05:57:27', '2020-02-27 05:57:27'),
(2, 'Villa Caceres', 'Naga City', 2, '2020-02-27 05:57:51', '2020-02-27 05:57:51'),
(3, 'Columbian Tech Inc.', 'Ligao City, Albay', 1, '2020-02-27 05:58:21', '2020-02-27 05:58:21');

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
(1, '2020_02_27_134406_create_users_table', 1),
(2, '2020_02_27_134441_create_companies_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `address`, `created_at`, `updated_at`) VALUES
(1, 'Eleazar Federio', 'eleazarfederio@email.com', 'Manook, Gubat, Sorsogon', '2020-02-27 05:51:24', '2020-02-27 05:51:24'),
(2, 'Milyn Calipay', 'eleazarfederio@email.com', 'Magallanes, Sorsogon', '2020-02-27 05:55:09', '2020-02-27 05:55:09');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Database: `sorsogon_invisions`
--
CREATE DATABASE IF NOT EXISTS `sorsogon_invisions` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `sorsogon_invisions`;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `middle_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fb_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `province` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `town` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `barangay` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zip_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location_details` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `first_name`, `last_name`, `middle_name`, `fb_name`, `phone_number`, `email`, `company_name`, `province`, `town`, `barangay`, `zip_code`, `location_details`, `created_at`, `updated_at`) VALUES
(1, 'ELEAZAR', 'FEDERIO', NULL, 'ELEAZAR ORENDAIN FEDERIO', '09129724342', NULL, 'BUGC', 'SORSOGON', 'GUBAT', 'MANOOK', NULL, 'Near car welding shop', '2020-06-08 06:42:00', '2020-06-08 06:42:00');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `full_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
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
(5, '2020_05_13_153017_create_customers_table', 1),
(6, '2020_05_24_114707_create_employees_table', 1),
(7, '2020_05_24_114732_create_products_table', 1),
(8, '2020_05_24_114757_create_processes_table', 1),
(9, '2020_05_25_074424_create_statuses_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `processes`
--

CREATE TABLE `processes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `print` tinyint(1) NOT NULL DEFAULT 0,
  `cut_paper` tinyint(1) NOT NULL DEFAULT 0,
  `heat_press` tinyint(1) NOT NULL DEFAULT 0,
  `cut_print` tinyint(1) NOT NULL DEFAULT 0,
  `edging` tinyint(1) NOT NULL DEFAULT 0,
  `pip_side` tinyint(1) NOT NULL DEFAULT 0,
  `cut_edge` tinyint(1) NOT NULL DEFAULT 0,
  `pip_strap` tinyint(1) NOT NULL DEFAULT 0,
  `lock_strap` tinyint(1) NOT NULL DEFAULT 0,
  `cut_strap` tinyint(1) NOT NULL DEFAULT 0,
  `pic_pack` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `details` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 0,
  `price` double NOT NULL DEFAULT 0,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `picture` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `details`, `quantity`, `price`, `category`, `customer_id`, `picture`, `due_date`, `status`, `created_at`, `updated_at`) VALUES
(1, 'lklkl', 50, 50, 'Printed', 1, '20200608_144221-51418380.jpg', '2020-06-11', 'For Design', '2020-06-08 06:42:24', '2020-06-08 06:42:24'),
(2, 'sdfssd dfdf dfdf', 200, 40, 'Printed', 1, 'app-upload/20200609_122410-96070234.jpg', '2020-06-12', 'For Design', '2020-06-09 04:24:14', '2020-06-09 04:24:14'),
(3, 'sdsds', 900, 20, 'Printed', 1, 'app-upload/20200609_163753-98977588.jpg', '2020-06-12', 'For Design', '2020-06-09 08:37:56', '2020-06-09 08:37:56');

-- --------------------------------------------------------

--
-- Table structure for table `statuses`
--

CREATE TABLE `statuses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint(20) UNSIGNED DEFAULT NULL,
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
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Eleazar Federio', 'eleazarfederio@rocketmail.com', NULL, '$2y$10$zbiyEPCg75x2Th6ING2N1.deotdahVRjpTn1TZt4FMmB9Fj3vOm8y', NULL, '2020-06-05 15:59:04', '2020-06-05 15:59:04'),
(2, 'Eleazar Federio', 'eleafederiojava24@gmail.com', NULL, '$2y$10$Z2XTlIx0k9VBlzN/I/db7evQztBg.uz9w0QuWXeHPIUqnSoNvXkwK', NULL, '2020-06-05 16:00:57', '2020-06-05 16:00:57');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `employees_phone_number_unique` (`phone_number`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `processes`
--
ALTER TABLE `processes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `processes_employee_id_index` (`employee_id`),
  ADD KEY `processes_product_id_index` (`product_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_customer_id_index` (`customer_id`);

--
-- Indexes for table `statuses`
--
ALTER TABLE `statuses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `statuses_product_id_index` (`product_id`);

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
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

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
-- AUTO_INCREMENT for table `processes`
--
ALTER TABLE `processes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `statuses`
--
ALTER TABLE `statuses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `processes`
--
ALTER TABLE `processes`
  ADD CONSTRAINT `processes_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `processes_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `statuses`
--
ALTER TABLE `statuses`
  ADD CONSTRAINT `statuses_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;
--
-- Database: `spa`
--
CREATE DATABASE IF NOT EXISTS `spa` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `spa`;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
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
(4, '2020_07_11_154221_create_secrets_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `secrets`
--

CREATE TABLE `secrets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `secret` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `secrets`
--

INSERT INTO `secrets` (`id`, `user_id`, `secret`, `created_at`, `updated_at`) VALUES
(1, 1, 'Molestias inventore eos sequi minima dolore enim. Officia ut delectus dicta illo quis est quasi. Adipisci fuga quisquam soluta perspiciatis et nisi labore.', '2020-07-11 08:57:02', '2020-07-11 08:57:02'),
(2, 1, 'Voluptatem voluptatem porro ullam illum eos ut numquam. Voluptatem sint fugit deserunt error. Culpa quia voluptate eum et in eos deleniti.', '2020-07-11 08:57:03', '2020-07-11 08:57:03'),
(3, 2, 'Suscipit et qui et numquam sunt sed. Sint id vel quaerat vel iure et expedita. Excepturi omnis debitis excepturi voluptas sed inventore qui.', '2020-07-11 08:57:46', '2020-07-11 08:57:46'),
(4, 2, 'Unde voluptatem qui quo unde voluptatem repellendus quo nesciunt. Aut amet quam aliquid adipisci. Fugit voluptatum quas ut quia veniam aut alias quisquam. Saepe consequatur sunt et aut.', '2020-07-11 08:57:48', '2020-07-11 08:57:48');

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
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Manuel Zboncak', 'franz.cremin@example.com', '2020-07-11 08:56:24', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ScOYL0RN31', '2020-07-11 08:56:24', '2020-07-11 08:56:24'),
(2, 'Oleta Watsica', 'nolan.terry@example.org', '2020-07-11 08:56:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '3p7CTKo3DG', '2020-07-11 08:56:42', '2020-07-11 08:56:42');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `secrets`
--
ALTER TABLE `secrets`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `secrets`
--
ALTER TABLE `secrets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
--
-- Database: `tracer`
--
CREATE DATABASE IF NOT EXISTS `tracer` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `tracer`;

-- --------------------------------------------------------

--
-- Table structure for table `establishments`
--

CREATE TABLE `establishments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `middleName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phoneNumber` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `town` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `barangay` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `locationDetails` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_place` tinyint(1) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
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
(4, '2020_06_29_132141_create_people_table', 1),
(5, '2020_06_29_132209_create_establishments_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `people`
--

CREATE TABLE `people` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `middleName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phoneNumber` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `town` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `barangay` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `locationDetails` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_traveler` tinyint(1) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `establishments`
--
ALTER TABLE `establishments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `establishments_phonenumber_unique` (`phoneNumber`),
  ADD UNIQUE KEY `establishments_email_unique` (`email`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `people`
--
ALTER TABLE `people`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `people_phonenumber_unique` (`phoneNumber`),
  ADD UNIQUE KEY `people_email_unique` (`email`);

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
-- AUTO_INCREMENT for table `establishments`
--
ALTER TABLE `establishments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `people`
--
ALTER TABLE `people`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `votes`
--
CREATE DATABASE IF NOT EXISTS `votes` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `votes`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
