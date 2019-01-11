-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 10, 2019 at 10:33 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `neu_fair_attendance`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendance_registration`
--

CREATE TABLE `attendance_registration` (
  `initials` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `college` varchar(255) NOT NULL,
  `course` varchar(255) NOT NULL,
  `year_level` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `ticket_number` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attendance_registration`
--

INSERT INTO `attendance_registration` (`initials`, `name`, `college`, `course`, `year_level`, `email`, `ticket_number`) VALUES
('ASCO', '', '01', 'ACC', 4, 'allina.orilla@gmail.com', 'ACCASCO0104001'),
('MCO', '', '01', 'ACC', 2, 'marcelina.orilla@gmail.com', 'ACCMCO0102002'),
('TEST', '', '08', 'ASTRO', 1, 'mpcorilla@neu.edu.ph', 'ASTROTEST0801002'),
('EC', '', '04', 'COM', 3, 'emiliaclarke@email.com', 'COMEC0403001'),
('AYQL', '', '05', 'COMSCI', 4, 'alliciaysabellopez@gmail.com', 'COMSCIAYQL0504003'),
('JRE', '', '05', 'COMSCI', 3, 'erjingco@neu.edu.ph', 'COMSCIJRE0503002'),
('MPCO', '', '05', 'COMSCI', 3, 'mpcorilla@neu.edu.ph', 'COMSCIMPCO0503001'),
('RTV', '', '05', 'COMSCI', 3, 'rtvelasco@neu.edu.ph', 'COMSCIRTV0503005'),
('KIKI', '', '02', 'ECO', 2, 'mpcorilla@neu.edu.ph', 'ECOKIKI0202001'),
('GCC', '', '08', 'ELTCL', 5, 'gccaramancion@email.com', 'ELTCLGCC0805001'),
('ENFA', '', '05', 'EMC', 4, 'enfa@email.com', 'EMCENFA0504004'),
('YO', 'Yuri Orilla', '17', 'G12', 0, 'mpcorilla@neu.edu.ph', 'G12YO17G12001'),
('RDD', '', '09', 'LAW', 5, 'rodrigoduterte@email.com', 'LAWRDD0905001'),
('ANF', '', '11', 'MEDN', 1, 'mpcorilla@neu.edu.ph', 'MEDNANF1101001');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendance_registration`
--
ALTER TABLE `attendance_registration`
  ADD UNIQUE KEY `ticket_number` (`ticket_number`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
