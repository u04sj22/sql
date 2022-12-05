-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 29, 2022 at 02:25 PM
-- Server version: 8.0.31
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `geology`
--

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `c_id` int DEFAULT NULL,
  `c_name` varchar(50) NOT NULL,
  `c_address` varchar(50) NOT NULL,
  `area_of_activity` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`c_id`, `c_name`, `c_address`, `area_of_activity`) VALUES
(1, 'nescom', 'Newyork', '20 miles'),
(1, 'nescom', 'Newyork', '20 miles'),
(2, 'Descom', 'denmark', '10 miles'),
(3, 'xcom', 'Newyork', '20 miles'),
(4, 'CivilTraders', 'Newyork', '20 miles'),
(5, 'Flexco', 'Los Angeles', '10 miles'),
(6, 'sesmico', 'Mexico', '10 miles'),
(7, 'Geomotor', 'Moscow', '30 miles'),
(8, 'Sescom', 'Newyork', '40 miles');

-- --------------------------------------------------------

--
-- Table structure for table `contracts`
--

CREATE TABLE `contracts` (
  `contract_id` int DEFAULT NULL,
  `contract_date` varchar(50) NOT NULL,
  `contracted_companies` varchar(50) NOT NULL,
  `cancelled_contracts` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `contracts`
--

INSERT INTO `contracts` (`contract_id`, `contract_date`, `contracted_companies`, `cancelled_contracts`) VALUES
(1, '10 Nov 2022', 'Sescom', '1'),
(1, '10 Nov 2022', 'Sescom', '1'),
(2, '11 Nov 2022', 'descom', '9'),
(3, '15 Nov 2022', 'nescom', '6'),
(4, '17 Nov 2022', 'sesmico', '12'),
(5, '24 Nov 2022', 'geomotor', '3'),
(6, '30 Nov 2022', 'xcom', '4'),
(7, '20 Nov 2022', 'Sescom', '12'),
(8, '15 Nov 2022', 'geomotor', '14');

-- --------------------------------------------------------

--
-- Table structure for table `disaster`
--

CREATE TABLE `disaster` (
  `disaster_id` int DEFAULT NULL,
  `no_of_earthquakes` int NOT NULL,
  `daily_earthquakes` int NOT NULL,
  `weekly_earthquakes` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `disaster`
--

INSERT INTO `disaster` (`disaster_id`, `no_of_earthquakes`, `daily_earthquakes`, `weekly_earthquakes`) VALUES
(1, 5, 3, 2),
(1, 5, 3, 2),
(2, 3, 9, 7),
(3, 10, 13, 5),
(4, 12, 10, 6),
(5, 8, 5, 42),
(6, 4, 5, 12),
(7, 3, 33, 25),
(8, 2, 32, 21);

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `location_id` int DEFAULT NULL,
  `longitude` varchar(50) NOT NULL,
  `latitude` varchar(50) NOT NULL,
  `source` varchar(50) NOT NULL,
  `place` varchar(50) NOT NULL,
  `time` varchar(50) NOT NULL,
  `depth` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`location_id`, `longitude`, `latitude`, `source`, `place`, `time`, `depth`) VALUES
(1, '-122.80867', '38.8339996', 'nc', '8km W of Cobb, CA', '2022-11-29T06:24:45.480Z', '2.22'),
(1, '-122.80867', '38.8339996', 'nc', '8km W of Cobb, CA', '2022-11-29T06:24:45.480Z', '2.22'),
(2, '-118.4843333', '34.3338333', 'ci', '4km NW of Sylmar, CA', '2022-11-29T06:23:25.910Z', '9.06'),
(1, '-122.80867', '38.8339996', 'nc', '8km W of Cobb, CA', '2022-11-29T06:24:45.480Z', '2.22'),
(3, '-122.8170013', '38.833168', 'nc', '8km NW of The Geysers, CA', '2022-11-29T06:19:34.380Z', '1.61'),
(4, '-122.8154984', '38.8313332', 'nc', '8km NW of The Geysers, CA', '2022-11-29T06:19:24.720Z', '1.45'),
(5, '-151.6814', '61.2001', 'ak', 'Southern Alaska', '2022-11-29T06:12:39.364Z', '76.4'),
(6, '-155.54167175293', '19.4771671295166', 'hv', '31 km NNW of Pāhala, Hawaii', '2022-11-29T05:50:42.860Z', '-2.66'),
(7, '-155.532166666667', '19.4881666666667', 'hv', '31 km W of Volcano, Hawaii', '2022-11-29T05:48:59.490Z', '-2.36'),
(8, '-150.7468', '60.5147', 'ak', '1 km NNE of Funny River, Alaska', '2022-11-29T05:43:15.167Z', '34.2');

-- --------------------------------------------------------

--
-- Table structure for table `mag`
--

CREATE TABLE `mag` (
  `mag_id` int DEFAULT NULL,
  `mag` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `mag_source` varchar(50) NOT NULL,
  `mag_error` varchar(50) NOT NULL,
  `depth_error` varchar(50) NOT NULL,
  `horizontal_error` varchar(50) NOT NULL,
  `dmin` varchar(50) NOT NULL,
  `rms` varchar(50) NOT NULL,
  `net` varchar(50) NOT NULL,
  `gap` varchar(50) NOT NULL,
  `nst` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `mag`
--

INSERT INTO `mag` (`mag_id`, `mag`, `type`, `mag_source`, `mag_error`, `depth_error`, `horizontal_error`, `dmin`, `rms`, `net`, `gap`, `nst`) VALUES
(1, '0.85', 'md', 'nc', '', '1.4', '0.49', '0.01065', '0.01', 'nc', '118', '8'),
(1, '0.85', 'md', 'nc', '', '1.4', '0.49', '0.01065', '0.01', 'nc', '118', '8'),
(2, '1.02', 'ml', 'ci', '0.285', '1.02', '0.58', '0.02864', '0.25', 'ci', '90', '19'),
(3, '0.36', 'md', 'nc', '', '0.92', '0.33', '0.01116', '0.01', 'nc', '58', '11'),
(4, '1.02', 'md', 'nc', '', '0.49', '0.18', '0.008988', '0.03', 'nc', '50', '20'),
(5, '1.8', 'ml', 'ak', '', '0.5', '', '', '0.25', 'ak', '', ''),
(6, '2.55', 'md', 'hv', '0.1', '0.36', '0.41', '', '0.35', 'hv', '60', '24'),
(7, '1.52', 'md', 'hv', '', '0.4', '5.04', '', '0.18', 'hv', '183', '8'),
(8, '1.3', 'ml', 'ak', '', '0.3', '', '', '0.38', 'ak', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `staff_id` int DEFAULT NULL,
  `name` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `contact` varchar(50) NOT NULL,
  `analyst` varchar(50) NOT NULL,
  `oversee_companies` varchar(50) NOT NULL,
  `supervising_analyst` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`staff_id`, `name`, `address`, `contact`, `analyst`, `oversee_companies`, `supervising_analyst`) VALUES
(1, 'john', 'Newyork', '111-222-333', 'Mike', 'Mike', 'John'),
(1, 'john', 'Newyork', '111-222-333', 'Mike', 'Mike', 'John'),
(2, 'Helen', 'Denmark', '21-122-353', 'Helen', 'Mike', 'John'),
(3, 'Alice', 'Los Angeles', '55-222-111', 'Mike', 'Sarah', 'Alison'),
(4, 'Henry', 'Mexico', '111-222-333', 'Rick', 'John', 'Sarah'),
(5, 'Bruce', 'Washington', '111-222-333', 'Clark', 'Alice', 'Alison'),
(6, 'Rick', 'Newyork', '111-222-333', 'Alice', 'John', 'Mark'),
(7, 'Matt', 'Newyork', '111-222-333', 'Danny', 'Luke', 'Jessica'),
(8, 'Tony', 'Newyork', '111-222-333', 'Steve', 'Clint', 'Mark');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
