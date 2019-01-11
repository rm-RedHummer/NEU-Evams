-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 10, 2019 at 12:16 PM
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
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `username` varchar(256) NOT NULL,
  `password` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `password`) VALUES
('neuadmin', 'ccsadmin');

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

-- --------------------------------------------------------

--
-- Table structure for table `event_attendees`
--

CREATE TABLE `event_attendees` (
  `index` int(11) NOT NULL,
  `date_scanned` varchar(256) NOT NULL,
  `attended_ticket_number` varchar(256) NOT NULL,
  `event_code` varchar(256) NOT NULL,
  `event_title` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `event_attendees`
--

INSERT INTO `event_attendees` (`index`, `date_scanned`, `attended_ticket_number`, `event_code`, `event_title`) VALUES
(1, '12/26/2018', 'LAWRDD0905001', '04', 'FLOAT PARADE'),
(2, '12/26/2018', 'EMCENFA0504004', '04', 'FLOAT PARADE'),
(3, '12/26/2018', 'ELTCLGCC0805001', '04', 'FLOAT PARADE'),
(4, '12/26/2018', 'COMSCIRTV0503005', '04', 'FLOAT PARADE'),
(5, '12/26/2018', 'COMSCIMPCO0503001', '04', 'FLOAT PARADE'),
(6, '12/26/2018', 'COMSCIJRE0503002', '04', 'FLOAT PARADE'),
(7, '12/26/2018', 'COMSCIAYQL0504003', '04', 'FLOAT PARADE'),
(8, '12/26/2018', 'COMEC0403001', '04', 'FLOAT PARADE'),
(9, '12/26/2018', 'ACCMCO0102002', '04', 'FLOAT PARADE'),
(10, '12/26/2018', 'ACCASCO0104001', '04', 'FLOAT PARADE'),
(21, '12/26/2018', 'LAWRDD0905001', '10', 'DEBATE'),
(22, '12/26/2018', 'EMCENFA0504004', '10', 'DEBATE'),
(23, '12/26/2018', 'ELTCLGCC0805001', '10', 'DEBATE'),
(24, '12/26/2018', 'COMSCIRTV0503005', '10', 'DEBATE'),
(25, '12/26/2018', 'COMSCIMPCO0503001', '10', 'DEBATE'),
(27, '12/26/2018', 'COMSCIAYQL0504003', '10', 'DEBATE'),
(28, '12/26/2018', 'COMEC0403001', '10', 'DEBATE'),
(29, '12/26/2018', 'ACCMCO0102002', '10', 'DEBATE'),
(30, '12/26/2018', 'ACCASCO0104001', '10', 'DEBATE');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendance_registration`
--
ALTER TABLE `attendance_registration`
  ADD UNIQUE KEY `ticket_number` (`ticket_number`);

--
-- Indexes for table `event_attendees`
--
ALTER TABLE `event_attendees`
  ADD PRIMARY KEY (`index`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `event_attendees`
--
ALTER TABLE `event_attendees`
  MODIFY `index` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
