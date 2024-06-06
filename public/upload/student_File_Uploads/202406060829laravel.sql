-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 06, 2024 at 10:11 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `filename` varchar(255) NOT NULL,
  `path` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `listofapplicants`
--

CREATE TABLE `listofapplicants` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_no` varchar(255) DEFAULT NULL,
  `student_plm_email` varchar(255) NOT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `middle_name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `college` varchar(255) NOT NULL,
  `course` enum('BSCS','BSIT','BS ECE','BSCE') NOT NULL DEFAULT 'BSCS',
  `year_level` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `current_gwa` decimal(4,2) DEFAULT NULL,
  `household_income` decimal(10,2) DEFAULT NULL,
  `grade_file` varchar(255) DEFAULT NULL,
  `form_with_pic` varchar(255) DEFAULT NULL,
  `gmc_cert` varchar(255) DEFAULT NULL,
  `tax` varchar(255) DEFAULT NULL,
  `reason_letter` varchar(255) DEFAULT NULL,
  `id_reg_form` varchar(255) DEFAULT NULL,
  `brg_cert` varchar(255) DEFAULT NULL,
  `single_parent_id` varchar(255) DEFAULT NULL,
  `remarks` enum('pending','resubmission','approved','scholar') NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `listofapplicants`
--

INSERT INTO `listofapplicants` (`id`, `student_no`, `student_plm_email`, `last_name`, `first_name`, `middle_name`, `address`, `age`, `college`, `course`, `year_level`, `gender`, `phone`, `photo`, `current_gwa`, `household_income`, `grade_file`, `form_with_pic`, `gmc_cert`, `tax`, `reason_letter`, `id_reg_form`, `brg_cert`, `single_parent_id`, `remarks`, `created_at`, `updated_at`) VALUES
(1, '2021-07641', 'dicki.kenneth@example.com', 'Welch', 'Estrella', 'Jacobs', '14355 Twila Hollow Apt. 921\nStuartton, LA 74822-4142', 21, 'sunt', 'BS ECE', '4th Year', 'Female', '(+63)984 170 5992', 'https://via.placeholder.com/640x480.png/006622?text=people+sunt', 1.18, 80455.21, 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak4700.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak4701.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak4702.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak4703.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak4704.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak4714.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak4715.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak4716.tmp', 'scholar', '2024-06-06 00:06:12', '2024-06-06 00:06:12'),
(2, '2007-71570', 'minerva98@example.org', 'Mraz', 'Bradly', 'Lesch', '9632 Sheila Wells\nIdashire, VA 84063', 26, 'rerum', 'BS ECE', '3rd Year', 'Male', '(+63)903 044 7413', 'https://via.placeholder.com/640x480.png/009900?text=people+molestias', 1.74, 63241.91, 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak4717.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak4718.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak4719.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak471A.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak471B.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak471C.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak471D.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak471E.tmp', 'scholar', '2024-06-06 00:06:12', '2024-06-06 00:06:12'),
(3, '2094-75991', 'oconner.danielle@example.net', 'Stehr', 'Octavia', 'Bauch', '493 Dietrich Points Apt. 639\nSouth Laviniashire, ID 28990', 18, 'aut', 'BSIT', '1st Year', 'Male', '(+63)975 943 2307', 'https://via.placeholder.com/640x480.png/009933?text=people+cumque', 4.09, 86790.06, 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak471F.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak4720.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak4721.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak4722.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak4723.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak4724.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak4725.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak4736.tmp', 'scholar', '2024-06-06 00:06:12', '2024-06-06 00:06:12'),
(4, '2060-08056', 'ricardo.lind@example.net', 'Kutch', 'Andres', 'Wolf', '29457 Schaefer Drive\nLake Annalise, SD 29101-6351', 18, 'rerum', 'BSCS', '2nd Year', 'Male', '(+63)977 120 9422', 'https://via.placeholder.com/640x480.png/0044bb?text=people+dicta', 4.50, 83400.73, 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak4737.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak4738.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak4739.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak473A.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak473B.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak473C.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak473D.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak473E.tmp', 'resubmission', '2024-06-06 00:06:12', '2024-06-06 00:06:12'),
(5, '2027-14277', 'corine84@example.org', 'White', 'Muriel', 'McGlynn', '6922 Lucio Street Apt. 497\nNew Briceview, NY 17044', 26, 'similique', 'BS ECE', '1st Year', 'Male', '(+63)988 958 6101', 'https://via.placeholder.com/640x480.png/001188?text=people+delectus', 3.68, 15135.47, 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak473F.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak4740.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak4741.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak4742.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak4743.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak4744.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak4745.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak4746.tmp', 'pending', '2024-06-06 00:06:12', '2024-06-06 00:06:12'),
(6, '2074-52841', 'green.anne@example.com', 'King', 'Elsa', 'King', '58581 Mariela Flats\nHaroldstad, UT 44073', 18, 'accusamus', 'BS ECE', '3rd Year', 'Male', '(+63)925 010 0237', 'https://via.placeholder.com/640x480.png/00bb33?text=people+inventore', 2.99, 85866.41, 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak4756.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak4757.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak4758.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak4759.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak475A.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak475B.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak475C.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak475D.tmp', 'scholar', '2024-06-06 00:06:12', '2024-06-06 00:06:12'),
(7, '2008-87197', 'gordon.emmerich@example.com', 'Predovic', 'Mckenna', 'Streich', '5444 Edmond Mission Suite 088\nFordland, CT 84565-2581', 23, 'repudiandae', 'BSCS', '2nd Year', 'Male', '(+63)984 315 1431', 'https://via.placeholder.com/640x480.png/00cc99?text=people+ut', 4.09, 27632.18, 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak475E.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak475F.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak4760.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak4761.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak4762.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak4763.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak4764.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak4765.tmp', 'pending', '2024-06-06 00:06:12', '2024-06-06 00:06:12'),
(8, '2066-58132', 'vpaucek@example.com', 'Morar', 'Adonis', 'Bahringer', '251 Palma Center Apt. 682\nEbertmouth, MA 85484-7557', 23, 'distinctio', 'BSIT', '1st Year', 'Male', '(+63)968 301 1055', 'https://via.placeholder.com/640x480.png/009988?text=people+architecto', 1.62, 29010.27, 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak4776.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak4777.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak4778.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak4779.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak477A.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak477B.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak477C.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak477D.tmp', 'approved', '2024-06-06 00:06:12', '2024-06-06 00:06:12'),
(9, '2011-37718', 'jcorwin@example.org', 'Gerhold', 'Bert', 'Hayes', '9856 Ada Trail Apt. 162\nEichmannland, ID 06752-2940', 23, 'architecto', 'BSCE', '2nd Year', 'Female', '(+63)941 922 9239', 'https://via.placeholder.com/640x480.png/0033ff?text=people+atque', 4.68, 10665.99, 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak477E.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak477F.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak4780.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak4781.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak4782.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak4783.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak4784.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak4785.tmp', 'scholar', '2024-06-06 00:06:12', '2024-06-06 00:06:12'),
(10, '2003-44249', 'kaden.schroeder@example.net', 'Kunde', 'Jessica', 'Hermiston', '559 Fisher Rue\nMurphyhaven, CT 68380', 27, 'dolor', 'BSCS', '3rd Year', 'Male', '(+63)942 973 4352', 'https://via.placeholder.com/640x480.png/0066cc?text=people+vel', 4.76, 25124.29, 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak4786.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak4797.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak4798.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak4799.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak479A.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak479B.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak479C.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak479D.tmp', 'pending', '2024-06-06 00:06:12', '2024-06-06 00:06:12'),
(11, '2048-23359', 'dayton84@example.org', 'Prohaska', 'Rafael', 'Breitenberg', '6607 Mossie Overpass Apt. 450\nGideonmouth, KY 39391-3338', 22, 'optio', 'BSCS', '2nd Year', 'Male', '(+63)947 384 6789', 'https://via.placeholder.com/640x480.png/00dd00?text=people+voluptatum', 2.56, 54722.16, 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak479E.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak479F.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak47A0.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak47A1.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak47A2.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak47A3.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak47A4.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak47A5.tmp', 'pending', '2024-06-06 00:06:12', '2024-06-06 00:06:12'),
(12, '2065-11045', 'jprosacco@example.net', 'Jast', 'Elsie', 'Marquardt', '627 Albert Crest\nEast Ronny, ME 91934', 21, 'reiciendis', 'BSIT', '4th Year', 'Female', '(+63)979 935 4285', 'https://via.placeholder.com/640x480.png/0099ee?text=people+natus', 1.53, 54447.05, 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak47A6.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak47A7.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak47A8.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak47A9.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak47B9.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak47BA.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak47BB.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak47BC.tmp', 'pending', '2024-06-06 00:06:12', '2024-06-06 00:06:12'),
(13, '2073-99937', 'kenyon88@example.org', 'Kuvalis', 'Reggie', 'Hilpert', '11945 McClure Motorway Suite 909\nJaycebury, DE 19511-8037', 25, 'tempora', 'BS ECE', '3rd Year', 'Male', '(+63)985 345 2393', 'https://via.placeholder.com/640x480.png/003322?text=people+neque', 4.49, 31707.32, 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak47BD.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak47BE.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak47BF.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak47C0.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak47C1.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak47C2.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak47C3.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak47C4.tmp', 'resubmission', '2024-06-06 00:06:12', '2024-06-06 00:06:12'),
(14, '2011-76994', 'carmel57@example.org', 'Christiansen', 'Trent', 'Fisher', '212 Okuneva Street Apt. 818\nJaskolskishire, MT 96194', 26, 'maiores', 'BSCS', '2nd Year', 'Male', '(+63)945 697 8586', 'https://via.placeholder.com/640x480.png/004411?text=people+qui', 3.45, 61781.69, 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak47C5.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak47C6.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak47C7.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak47C8.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak47C9.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak47CA.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak47CB.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak47DC.tmp', 'pending', '2024-06-06 00:06:12', '2024-06-06 00:06:12'),
(15, '2060-97224', 'sgrimes@example.com', 'Satterfield', 'Missouri', 'Lesch', '5080 Schoen Forest Suite 883\nEast Ron, AZ 36034-2889', 20, 'sint', 'BSCE', '4th Year', 'Male', '(+63)929 733 4116', 'https://via.placeholder.com/640x480.png/00cc88?text=people+rerum', 2.59, 17320.14, 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak47DD.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak47DE.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak47DF.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak47E0.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak47E1.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak47E2.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak47E3.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak47E4.tmp', 'approved', '2024-06-06 00:06:12', '2024-06-06 00:06:12'),
(16, '2081-32981', 'jackeline40@example.com', 'Abshire', 'Danielle', 'Mraz', '8887 Fadel Rapids\nWest Judyborough, MO 02531-0097', 26, 'alias', 'BSCE', '1st Year', 'Male', '(+63)965 691 3730', 'https://via.placeholder.com/640x480.png/0044aa?text=people+unde', 3.66, 26652.95, 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak47E5.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak47E6.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak47E7.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak47E8.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak47E9.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak47EA.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak47EB.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak47EC.tmp', 'approved', '2024-06-06 00:06:12', '2024-06-06 00:06:12'),
(17, '2038-25753', 'delfina88@example.com', 'Littel', 'Marilou', 'Marquardt', '916 Kaley Avenue\nAntwonland, GA 87743', 24, 'et', 'BS ECE', '3rd Year', 'Male', '(+63)987 625 8681', 'https://via.placeholder.com/640x480.png/000033?text=people+repellat', 1.75, 95736.96, 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak47ED.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak47EE.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak47FF.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak4800.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak4801.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak4802.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak4803.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak4804.tmp', 'scholar', '2024-06-06 00:06:12', '2024-06-06 00:06:12'),
(18, '2054-25396', 'allen.sipes@example.com', 'Rice', 'Jan', 'Windler', '22698 Moore Estate Apt. 514\nNew Avismouth, LA 64101', 20, 'quia', 'BSCE', '1st Year', 'Male', '(+63)940 164 7785', 'https://via.placeholder.com/640x480.png/009988?text=people+repudiandae', 4.05, 99749.60, 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak4805.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak4806.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak4807.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak4808.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak4809.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak480A.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak480B.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak480C.tmp', 'pending', '2024-06-06 00:06:12', '2024-06-06 00:06:12'),
(19, '2084-48611', 'luz.boehm@example.net', 'Cole', 'Kelton', 'Lubowitz', '36380 Walker Springs\nGraycemouth, MD 86675-1296', 27, 'repudiandae', 'BS ECE', '3rd Year', 'Male', '(+63)971 508 4363', 'https://via.placeholder.com/640x480.png/00ffff?text=people+alias', 2.89, 81674.07, 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak480D.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak480E.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak480F.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak4810.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak4820.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak4821.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak4822.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak4823.tmp', 'approved', '2024-06-06 00:06:12', '2024-06-06 00:06:12'),
(20, '2009-86482', 'earnestine.jacobi@example.com', 'Keebler', 'Matilda', 'Cummings', '917 Jenkins Drive Apt. 377\nEast Graysonton, CA 52949-2574', 28, 'quia', 'BSCS', '4th Year', 'Female', '(+63)921 278 9011', 'https://via.placeholder.com/640x480.png/0055dd?text=people+soluta', 1.93, 18031.30, 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak4824.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak4825.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak4826.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak4827.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak4828.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak4829.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak482A.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak482B.tmp', 'resubmission', '2024-06-06 00:06:12', '2024-06-06 00:06:12'),
(21, '2011-57808', 'geoffrey.torphy@example.net', 'Beahan', 'Jerrold', 'Johnson', '925 Zoie Curve Suite 766\nSouth Osvaldo, DC 28008-7624', 18, 'vero', 'BSIT', '3rd Year', 'Male', '(+63)993 627 5465', 'https://via.placeholder.com/640x480.png/00dd99?text=people+quo', 3.46, 94224.52, 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak482C.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak482D.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak482E.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak482F.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak4830.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak4831.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak4832.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak4833.tmp', 'resubmission', '2024-06-06 00:06:12', '2024-06-06 00:06:12'),
(22, '2096-37046', 'kcole@example.com', 'Runte', 'Dena', 'King', '385 Johnathon Mission Suite 126\nSchillerfurt, DC 24766', 20, 'non', 'BS ECE', '4th Year', 'Female', '(+63)995 902 8144', 'https://via.placeholder.com/640x480.png/00cccc?text=people+voluptate', 4.89, 98621.10, 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak4844.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak4845.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak4846.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak4847.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak4848.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak4849.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak484A.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak484B.tmp', 'resubmission', '2024-06-06 00:06:12', '2024-06-06 00:06:12'),
(23, '2032-08685', 'jmraz@example.net', 'Quigley', 'Lenny', 'Bahringer', '783 Tillman Pike\nSouth Alicia, MN 84363-9900', 28, 'fugit', 'BSCS', '1st Year', 'Female', '(+63)974 106 6787', 'https://via.placeholder.com/640x480.png/008855?text=people+ut', 3.65, 10279.85, 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak484C.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak484D.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak484E.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak484F.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak4850.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak4851.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak4852.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak4853.tmp', 'pending', '2024-06-06 00:06:12', '2024-06-06 00:06:12'),
(24, '2022-61936', 'samara.hartmann@example.com', 'Brakus', 'Deshawn', 'Wolf', '450 Murazik Villages\nLegrosburgh, DE 50068-2093', 30, 'iure', 'BSIT', '4th Year', 'Male', '(+63)948 424 1183', 'https://via.placeholder.com/640x480.png/00ff22?text=people+velit', 4.63, 67273.48, 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak4854.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak4855.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak4865.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak4866.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak4867.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak4868.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak4869.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak486A.tmp', 'pending', '2024-06-06 00:06:12', '2024-06-06 00:06:12'),
(25, '2024-56926', 'chaya38@example.com', 'Watsica', 'Dexter', 'Hills', '30293 Erdman Neck Suite 582\nGroverfort, MA 73744-2622', 24, 'odio', 'BS ECE', '1st Year', 'Male', '(+63)921 238 5158', 'https://via.placeholder.com/640x480.png/0077aa?text=people+dignissimos', 1.03, 56207.85, 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak486B.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak486C.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak486D.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak486E.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak486F.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak4870.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak4871.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak4872.tmp', 'resubmission', '2024-06-06 00:06:12', '2024-06-06 00:06:12'),
(26, '2037-59449', 'romaine05@example.com', 'Stamm', 'Adell', 'Swaniawski', '5580 Freida Springs\nSantosville, CO 11589', 23, 'sint', 'BSIT', '4th Year', 'Male', '(+63)942 649 6488', 'https://via.placeholder.com/640x480.png/00ff99?text=people+quasi', 4.80, 55562.26, 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak4873.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak4874.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak4875.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak4876.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak4877.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak4888.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak4889.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak488A.tmp', 'pending', '2024-06-06 00:06:12', '2024-06-06 00:06:12'),
(27, '2035-08199', 'crau@example.org', 'West', 'Antone', 'Leffler', '38393 Hessel Avenue\nRobbmouth, OH 96876', 18, 'sed', 'BSIT', '2nd Year', 'Female', '(+63)997 039 7576', 'https://via.placeholder.com/640x480.png/0077bb?text=people+quisquam', 1.81, 44489.62, 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak488B.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak488C.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak488D.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak488E.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak488F.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak4890.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak4891.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak4892.tmp', 'resubmission', '2024-06-06 00:06:12', '2024-06-06 00:06:12'),
(28, '2088-19311', 'haleigh.kilback@example.com', 'Gottlieb', 'Arnold', 'Ziemann', '117 Evelyn Extension Apt. 415\nPort Nona, NC 63487', 19, 'voluptas', 'BSCS', '3rd Year', 'Female', '(+63)951 942 5930', 'https://via.placeholder.com/640x480.png/0011ff?text=people+dolores', 4.80, 91488.94, 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak4893.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak4894.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak4895.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak4896.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak4897.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak4898.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak48A9.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak48AA.tmp', 'approved', '2024-06-06 00:06:12', '2024-06-06 00:06:12'),
(29, '2050-67466', 'wilber73@example.org', 'Emard', 'Caleigh', 'Cassin', '691 Lindgren Lake\nNorth Zetta, AR 37583-7981', 22, 'aperiam', 'BS ECE', '4th Year', 'Male', '(+63)913 352 5815', 'https://via.placeholder.com/640x480.png/0099dd?text=people+et', 2.53, 91328.90, 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak48AB.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak48AC.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak48AD.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak48AE.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak48AF.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak48B0.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak48B1.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak48B2.tmp', 'resubmission', '2024-06-06 00:06:12', '2024-06-06 00:06:12'),
(30, '2082-64381', 'shanie11@example.com', 'Bogisich', 'Anita', 'Gulgowski', '9300 Emiliano Village\nLockmanmouth, VT 37650-9408', 24, 'consequatur', 'BSCS', '3rd Year', 'Male', '(+63)997 961 0062', 'https://via.placeholder.com/640x480.png/003388?text=people+esse', 2.80, 90826.09, 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak48B3.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak48B4.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak48B5.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak48B6.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak48B7.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak48B8.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak48B9.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak48BA.tmp', 'scholar', '2024-06-06 00:06:12', '2024-06-06 00:06:12'),
(31, '2041-36093', 'kpurdy@example.net', 'Abernathy', 'Domenick', 'Lueilwitz', '5335 Kessler Isle\nOrloport, VA 12244', 29, 'aspernatur', 'BSCS', '4th Year', 'Male', '(+63)989 401 9751', 'https://via.placeholder.com/640x480.png/00dd33?text=people+quo', 2.39, 22521.54, 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak48CA.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak48CB.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak48CC.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak48CD.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak48CE.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak48CF.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak48D0.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak48D1.tmp', 'scholar', '2024-06-06 00:06:12', '2024-06-06 00:06:12'),
(32, '2036-21490', 'blick.kirstin@example.com', 'Streich', 'Candace', 'Hilpert', '48785 Upton Plaza\nLednerstad, AL 46828-9039', 25, 'maxime', 'BSCE', '3rd Year', 'Male', '(+63)936 743 2812', 'https://via.placeholder.com/640x480.png/007733?text=people+qui', 1.88, 62654.42, 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak48D2.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak48D3.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak48D4.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak48D5.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak48D6.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak48D7.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak48D8.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak48D9.tmp', 'approved', '2024-06-06 00:06:12', '2024-06-06 00:06:12'),
(33, '2039-62311', 'patrick84@example.com', 'Connelly', 'General', 'Little', '688 Desmond Courts\nEast Stephania, OR 13024', 19, 'commodi', 'BSIT', '4th Year', 'Female', '(+63)947 094 0822', 'https://via.placeholder.com/640x480.png/002222?text=people+culpa', 1.60, 74814.27, 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak48DA.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak48DB.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak48DC.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak48DD.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak48EE.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak48EF.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak48F0.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak48F1.tmp', 'scholar', '2024-06-06 00:06:12', '2024-06-06 00:06:12'),
(34, '2014-87228', 'erdman.harrison@example.com', 'Ward', 'Felton', 'McLaughlin', '54136 Verna Gardens Apt. 047\nSouth Earnest, NC 13389-0737', 19, 'rem', 'BSIT', '4th Year', 'Female', '(+63)911 530 6792', 'https://via.placeholder.com/640x480.png/00cc22?text=people+laborum', 2.43, 36068.34, 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak48F2.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak48F3.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak48F4.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak48F5.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak48F6.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak48F7.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak48F8.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak48F9.tmp', 'pending', '2024-06-06 00:06:12', '2024-06-06 00:06:12'),
(35, '2030-85264', 'shanie88@example.net', 'Dicki', 'Jonathan', 'Bednar', '8248 Kobe Views Suite 799\nLake Crawford, ID 64588-2639', 23, 'natus', 'BSCE', '3rd Year', 'Male', '(+63)957 730 5115', 'https://via.placeholder.com/640x480.png/0033cc?text=people+aut', 4.92, 99244.40, 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak48FA.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak48FB.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak48FC.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak48FD.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak48FE.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak48FF.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak4910.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak4911.tmp', 'approved', '2024-06-06 00:06:12', '2024-06-06 00:06:12'),
(36, '2022-80040', 'streich.juana@example.org', 'Franecki', 'Jewel', 'Fahey', '9244 Swift Port\nPort Jedediah, NV 06728', 25, 'quo', 'BS ECE', '2nd Year', 'Female', '(+63)982 047 1963', 'https://via.placeholder.com/640x480.png/000000?text=people+non', 4.62, 64036.96, 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak4912.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak4913.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak4914.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak4915.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak4916.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak4917.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak4918.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak4919.tmp', 'resubmission', '2024-06-06 00:06:12', '2024-06-06 00:06:12'),
(37, '2021-87472', 'mueller.martina@example.net', 'Nader', 'Flo', 'Spencer', '982 Williamson Fords Suite 384\nBodeborough, AL 32593', 24, 'cupiditate', 'BSIT', '1st Year', 'Male', '(+63)902 589 6892', 'https://via.placeholder.com/640x480.png/00dd11?text=people+vel', 4.78, 38997.93, 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak491A.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak491B.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak491C.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak491D.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak491E.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak491F.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak4920.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak4921.tmp', 'resubmission', '2024-06-06 00:06:12', '2024-06-06 00:06:12'),
(38, '2085-76488', 'arjun44@example.org', 'Ondricka', 'Jonatan', 'Wilkinson', '8114 DuBuque Views\nVidalport, AR 40684', 22, 'dolores', 'BSCS', '3rd Year', 'Female', '(+63)914 533 6313', 'https://via.placeholder.com/640x480.png/00cc88?text=people+quo', 3.72, 14037.53, 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak4922.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak4932.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak4933.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak4934.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak4935.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak4936.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak4937.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak4938.tmp', 'pending', '2024-06-06 00:06:12', '2024-06-06 00:06:12'),
(39, '2085-33322', 'damore.ahmad@example.net', 'Schoen', 'Leanne', 'West', '635 Durgan Points\nWest Tracyville, OK 40477-0716', 20, 'consectetur', 'BSCE', '4th Year', 'Male', '(+63)995 749 3403', 'https://via.placeholder.com/640x480.png/008866?text=people+odit', 2.39, 41334.87, 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak4939.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak493A.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak493B.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak493C.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak493D.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak493E.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak493F.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak4940.tmp', 'resubmission', '2024-06-06 00:06:12', '2024-06-06 00:06:12'),
(40, '2098-73164', 'nikolaus.anthony@example.org', 'Pollich', 'Pascale', 'Stokes', '6326 Kendrick Isle Apt. 902\nMedhursthaven, DC 05985-1881', 21, 'ad', 'BSCS', '4th Year', 'Male', '(+63)968 570 7886', 'https://via.placeholder.com/640x480.png/006655?text=people+ut', 4.48, 68120.70, 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak4941.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak4942.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak4943.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak4944.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak4955.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak4956.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak4957.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak4958.tmp', 'approved', '2024-06-06 00:06:12', '2024-06-06 00:06:12'),
(41, '2040-57300', 'mireya.cummerata@example.com', 'Fritsch', 'Kathlyn', 'Roob', '57019 Tyree Roads Apt. 313\nNew Zoey, NJ 47101', 21, 'officiis', 'BSCS', '3rd Year', 'Male', '(+63)904 316 9264', 'https://via.placeholder.com/640x480.png/008833?text=people+at', 2.75, 97575.50, 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak4959.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak495A.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak495B.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak495C.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak495D.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak495E.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak495F.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak4960.tmp', 'scholar', '2024-06-06 00:06:12', '2024-06-06 00:06:12'),
(42, '2055-63045', 'uromaguera@example.net', 'Davis', 'Casandra', 'Lebsack', '9200 Favian Vista\nNorth Assunta, MT 84601', 22, 'quos', 'BSCE', '4th Year', 'Male', '(+63)904 781 0082', 'https://via.placeholder.com/640x480.png/0000aa?text=people+magnam', 1.16, 75604.35, 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak4961.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak4962.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak4963.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak4964.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak4965.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak4966.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak4967.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak4968.tmp', 'pending', '2024-06-06 00:06:12', '2024-06-06 00:06:12'),
(43, '2062-32433', 'ecrooks@example.net', 'Mueller', 'Webster', 'Kihn', '56480 Eveline Curve\nSouth Darrickstad, AL 91052-9739', 23, 'quia', 'BS ECE', '1st Year', 'Female', '(+63)994 621 0093', 'https://via.placeholder.com/640x480.png/000066?text=people+nostrum', 4.14, 19567.33, 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak4978.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak4979.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak497A.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak497B.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak497C.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak497D.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak497E.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak497F.tmp', 'scholar', '2024-06-06 00:06:12', '2024-06-06 00:06:12'),
(44, '2059-49284', 'rupert06@example.org', 'Blanda', 'Khalid', 'Beatty', '1725 Kali Drives\nRaynorchester, RI 40545', 19, 'eos', 'BSCE', '1st Year', 'Male', '(+63)969 350 0012', 'https://via.placeholder.com/640x480.png/00dd66?text=people+alias', 1.52, 14436.20, 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak4980.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak4981.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak4982.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak4983.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak4984.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak4985.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak4986.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak4987.tmp', 'approved', '2024-06-06 00:06:12', '2024-06-06 00:06:12'),
(45, '2038-95843', 'kulas.antonetta@example.net', 'Schultz', 'Ferne', 'Torphy', '6263 Buckridge Plaza\nNew Jamarcus, MN 75703-6337', 26, 'saepe', 'BSIT', '1st Year', 'Female', '(+63)942 525 5269', 'https://via.placeholder.com/640x480.png/00ccbb?text=people+consequatur', 3.95, 81358.09, 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak4998.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak4999.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak499A.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak499B.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak499C.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak499D.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak499E.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak499F.tmp', 'scholar', '2024-06-06 00:06:12', '2024-06-06 00:06:12'),
(46, '2022-63273', 'wiza.parker@example.org', 'Windler', 'Junius', 'Fay', '9986 Camryn Inlet\nHammesport, MA 82422', 26, 'nostrum', 'BSCE', '2nd Year', 'Male', '(+63)954 967 5415', 'https://via.placeholder.com/640x480.png/0055dd?text=people+quo', 4.02, 43382.57, 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak49A0.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak49A1.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak49A2.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak49A3.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak49A4.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak49A5.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak49A6.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak49A7.tmp', 'scholar', '2024-06-06 00:06:12', '2024-06-06 00:06:12'),
(47, '2066-02552', 'ardella.schuster@example.org', 'Boehm', 'Merle', 'Corkery', '92834 Lyric Rapid Suite 154\nWest Rickieview, GA 65798', 18, 'deserunt', 'BS ECE', '4th Year', 'Male', '(+63)917 035 1895', 'https://via.placeholder.com/640x480.png/000055?text=people+quisquam', 4.41, 18526.93, 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak49A8.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak49A9.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak49AA.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak49BB.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak49BC.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak49BD.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak49BE.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak49BF.tmp', 'approved', '2024-06-06 00:06:12', '2024-06-06 00:06:12'),
(48, '2037-04157', 'mante.maureen@example.net', 'Sporer', 'Nelson', 'Konopelski', '53375 Watson Avenue Apt. 748\nLazarostad, IL 74838', 24, 'consequatur', 'BSCS', '2nd Year', 'Female', '(+63)918 818 4576', 'https://via.placeholder.com/640x480.png/004488?text=people+perspiciatis', 3.48, 68317.35, 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak49C0.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak49C1.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak49C2.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak49C3.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak49C4.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak49C5.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak49C6.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak49C7.tmp', 'approved', '2024-06-06 00:06:12', '2024-06-06 00:06:12'),
(49, '2090-23299', 'uheidenreich@example.org', 'Kemmer', 'Kaylee', 'Barrows', '3547 Gilberto Ports\nLake Rosalinda, WI 97386', 30, 'minus', 'BSCE', '4th Year', 'Female', '(+63)925 044 2004', 'https://via.placeholder.com/640x480.png/002244?text=people+veniam', 2.41, 40550.53, 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak49C8.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak49C9.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak49CA.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak49CB.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak49DB.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak49DC.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak49DD.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak49DE.tmp', 'scholar', '2024-06-06 00:06:12', '2024-06-06 00:06:12'),
(50, '2081-43867', 'blaise91@example.com', 'Toy', 'Javier', 'Kautzer', '974 Cartwright Parkway Suite 393\nBirdiestad, UT 39711', 20, 'praesentium', 'BSCE', '1st Year', 'Male', '(+63)974 039 9959', 'https://via.placeholder.com/640x480.png/002288?text=people+doloribus', 2.66, 95099.21, 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak49DF.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak49E0.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak49E1.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak49E2.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak49E3.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak49E4.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak49E5.tmp', 'C:\\Users\\pchri\\AppData\\Local\\Temp\\fak49E6.tmp', 'resubmission', '2024-06-06 00:06:12', '2024-06-06 00:06:12');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(4, '2024_03_28_180654_create_files_table', 1),
(5, '2024_05_26_172053_create_users_table', 1),
(6, '2024_05_30_065253_create_scholarship_other_files', 1),
(7, '2024_06_04_165238_create_listofapplicants_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `scholarship_other_files`
--

CREATE TABLE `scholarship_other_files` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `grade_file` varchar(255) DEFAULT NULL,
  `tax` varchar(255) DEFAULT NULL,
  `id_reg_form` varchar(255) DEFAULT NULL,
  `single_parent_id` varchar(255) DEFAULT NULL,
  `form_with_pic` varchar(255) DEFAULT NULL,
  `gmc_cert` varchar(255) DEFAULT NULL,
  `reason_letter` varchar(255) DEFAULT NULL,
  `brg_cert` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `scholarship_users`
--

CREATE TABLE `scholarship_users` (
  `student_no` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `middle_name` varchar(255) DEFAULT NULL,
  `biological_sex` varchar(255) DEFAULT NULL,
  `age` varchar(255) DEFAULT NULL,
  `college` varchar(255) DEFAULT NULL,
  `degree_program_id` varchar(255) DEFAULT NULL,
  `academic_year` varchar(255) DEFAULT NULL,
  `plm_email` varchar(255) DEFAULT NULL,
  `mobile_no` varchar(255) DEFAULT NULL,
  `grades` decimal(4,2) DEFAULT NULL,
  `annual_family_income` decimal(10,2) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `grade_file` varchar(255) DEFAULT NULL,
  `tax` varchar(255) DEFAULT NULL,
  `id_reg_form` varchar(255) DEFAULT NULL,
  `single_parent_id` varchar(255) DEFAULT NULL,
  `form_with_pic` varchar(255) DEFAULT NULL,
  `gmc_cert` varchar(255) DEFAULT NULL,
  `reason_letter` varchar(255) DEFAULT NULL,
  `brg_cert` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `role` enum('admin','agent','opa','user','student') NOT NULL DEFAULT 'user',
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `scholarship_users`
--

INSERT INTO `scholarship_users` (`student_no`, `last_name`, `first_name`, `middle_name`, `biological_sex`, `age`, `college`, `degree_program_id`, `academic_year`, `plm_email`, `mobile_no`, `grades`, `annual_family_income`, `address`, `grade_file`, `tax`, `id_reg_form`, `single_parent_id`, `form_with_pic`, `gmc_cert`, `reason_letter`, `brg_cert`, `photo`, `id`, `name`, `username`, `email`, `password`, `email_verified_at`, `role`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'Admin', 'admin', 'admin@plm.edu.ph', '$2y$12$oT.aJyBksNRlPhqRCM9CxOH0zBlG8vWDHSqbu0BRhFg.H4aBrZ6gC', NULL, 'agent', 'active', NULL, NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 'User', 'user', 'user@gmail.com', '$2y$12$YGtdPQMsQurLwEKee/HiGuEBSj0oXRrmhvQMv/dH625WIOSeSGxZW', NULL, 'user', 'active', NULL, NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 'Student', 'student', 'student@plm.edu.ph', '$2y$12$fEi2YfXw0g.J.BU0AUES/uPKo.MoWzV.VDAn/lthk68hHlzcb83kG', NULL, 'student', 'active', NULL, NULL, NULL),
(NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 'Opa', 'opa', 'opa@plm.edu.ph', '$2y$12$QHdZtfwb/ihi5XFCCm98euL5E7V0itrXoSK5a45y3S9zD/.geuN16', NULL, 'opa', 'active', NULL, NULL, NULL),
('2038-31191', 'Kunze', 'Ila', 'Collins', 'Female', '27', 'qui', '3', '4th Year', 'ickunze2038@plm.edu.ph', '(+63)972 875 1895', 1.63, 138170.53, '25488 Blanda Mountains Apt. 717\nNew Gabrielton, AZ 22732', 'grade.pdf', 'tax.pdf', 'id_reg_form.doc', 'single_parent_id.doc', 'gform_with_pic.png', 'gmc_cert.doc', 'reason_letter.doc', 'brgy_cert.doc', 'https://via.placeholder.com/60x60.png/00ffbb?text=nemo', 5, 'Ila Collins Kunze', 'ickunze', 'ickunze2038@plm.edu.ph', '$2y$12$pvuy/ZdXyC4ZdAA8d9CmA.3ex5TP85ptOy9GBsLcr8LoIVyUAQdRi', '2024-06-06 00:06:12', 'admin', 'inactive', 'HPWoWuog8p', '2024-06-06 00:06:12', '2024-06-06 00:06:12'),
('2002-27571', 'Bartoletti', 'Sammie', 'Reilly', 'Female', '20', 'eveniet', '36', '1st Year', 'srbartoletti2002@plm.edu.ph', '(+63)984 269 6814', 1.02, 100537.26, '88997 Grace Crossing Apt. 331\nAldenborough, UT 96457', 'grade.doc', 'tax.pdf', 'id_reg_form.pdf', 'single_parent_id.doc', 'gform_with_pic.png', 'gmc_cert.pdf', 'reason_letter.doc', 'brgy_cert.pdf', 'https://via.placeholder.com/60x60.png/00aadd?text=quae', 6, 'Sammie Reilly Bartoletti', 'srbartoletti', 'srbartoletti2002@plm.edu.ph', '$2y$12$pvuy/ZdXyC4ZdAA8d9CmA.3ex5TP85ptOy9GBsLcr8LoIVyUAQdRi', '2024-06-06 00:06:12', 'admin', 'active', 'cjLP0drHsD', '2024-06-06 00:06:12', '2024-06-06 00:06:12'),
('2068-69791', 'Blanda', 'Kelli', 'Towne', 'Female', '25', 'et', '16', '4th Year', 'ktblanda2068@plm.edu.ph', '(+63)923 613 6389', 1.41, 149574.06, '71527 Reichel River Apt. 929\nLemketon, TX 90144', 'grade.doc', 'tax.doc', 'id_reg_form.pdf', 'single_parent_id.doc', 'gform_with_pic.png', 'gmc_cert.pdf', 'reason_letter.pdf', 'brgy_cert.pdf', 'https://via.placeholder.com/60x60.png/007788?text=in', 7, 'Kelli Towne Blanda', 'ktblanda', 'ktblanda2068@plm.edu.ph', '$2y$12$pvuy/ZdXyC4ZdAA8d9CmA.3ex5TP85ptOy9GBsLcr8LoIVyUAQdRi', '2024-06-06 00:06:12', 'agent', 'inactive', 'cVCJ41PCoi', '2024-06-06 00:06:12', '2024-06-06 00:06:12'),
('2014-05229', 'Dach', 'Brooks', 'Okuneva', 'Female', '19', 'illo', '26', '4th Year', 'bodach2014@plm.edu.ph', '(+63)929 633 0859', 2.09, 79059.47, '46742 Eulalia Plain Apt. 402\nLake Leratown, MD 17021-0173', 'grade.doc', 'tax.pdf', 'id_reg_form.doc', 'single_parent_id.doc', 'form_with_pic.jpg', 'gmc_cert.pdf', 'reason_letter.doc', 'brgy_cert.pdf', 'https://via.placeholder.com/60x60.png/00ccbb?text=aliquid', 8, 'Brooks Okuneva Dach', 'bodach', 'bodach2014@plm.edu.ph', '$2y$12$pvuy/ZdXyC4ZdAA8d9CmA.3ex5TP85ptOy9GBsLcr8LoIVyUAQdRi', '2024-06-06 00:06:12', 'user', 'active', 'axmvVyfISJ', '2024-06-06 00:06:12', '2024-06-06 00:06:12'),
('2041-53828', 'Lubowitz', 'Titus', 'Schuster', 'Female', '26', 'consequatur', '34', '2nd Year', 'tslubowitz2041@plm.edu.ph', '(+63)951 567 4503', 1.16, 94192.63, '63465 Kelton Freeway\nBrettmouth, AR 12214', 'grade.pdf', 'tax.pdf', 'id_reg_form.pdf', 'single_parent_id.doc', 'gform_with_pic.png', 'gmc_cert.doc', 'reason_letter.doc', 'brgy_cert.doc', 'https://via.placeholder.com/60x60.png/0088bb?text=accusantium', 9, 'Titus Schuster Lubowitz', 'tslubowitz', 'tslubowitz2041@plm.edu.ph', '$2y$12$pvuy/ZdXyC4ZdAA8d9CmA.3ex5TP85ptOy9GBsLcr8LoIVyUAQdRi', '2024-06-06 00:06:12', 'admin', 'inactive', 'unrCFZRBV5', '2024-06-06 00:06:12', '2024-06-06 00:06:12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `listofapplicants`
--
ALTER TABLE `listofapplicants`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `listofapplicants_student_plm_email_unique` (`student_plm_email`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `scholarship_other_files`
--
ALTER TABLE `scholarship_other_files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `scholarship_users`
--
ALTER TABLE `scholarship_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `scholarship_users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `listofapplicants`
--
ALTER TABLE `listofapplicants`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

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
-- AUTO_INCREMENT for table `scholarship_other_files`
--
ALTER TABLE `scholarship_other_files`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `scholarship_users`
--
ALTER TABLE `scholarship_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
