-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 09, 2019 at 10:28 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `attendance_registration`
--
CREATE DATABASE IF NOT EXISTS `attendance_registration` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `attendance_registration`;

-- --------------------------------------------------------

--
-- Table structure for table `attendance_registration`
--

CREATE TABLE `attendance_registration` (
  `initials` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `college` varchar(255) NOT NULL,
  `course` varchar(255) NOT NULL,
  `year_level` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `ticket_number` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attendance_registration`
--

INSERT INTO `attendance_registration` (`initials`, `name`, `college`, `course`, `year_level`, `email`, `ticket_number`) VALUES
('RJ', 'Reymark Jarvs', '01', 'ACC', '01', 'goodmage019@gmail.com', 'ACCRJ0101001'),
('RA', 'Reymark Arsenio', '05', 'COMSCI', '04', 'goodmage019@gmail.com', 'COMSCIRA0504001'),
('RA', 'Reymark Arsenio', '05', 'COMSCI', '04', 'goodmage019@gmail.com', 'COMSCIRA0504002');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendance_registration`
--
ALTER TABLE `attendance_registration`
  ADD PRIMARY KEY (`ticket_number`);
--
-- Database: `enrollment_database`
--
CREATE DATABASE IF NOT EXISTS `enrollment_database` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `enrollment_database`;

-- --------------------------------------------------------

--
-- Table structure for table `enrollment_table`
--

CREATE TABLE `enrollment_table` (
  `user_id` int(11) NOT NULL,
  `course` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `middle_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `age` varchar(255) NOT NULL,
  `phone_number` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `student_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `enrollment_table`
--

INSERT INTO `enrollment_table` (`user_id`, `course`, `first_name`, `middle_name`, `last_name`, `gender`, `age`, `phone_number`, `email`, `student_id`) VALUES
(1, 'BS in Computer Science (BSCS)', 'Marfred Paul', 'Calpe', 'Orilla', 'Male', '19', '09953604087', 'mpcorilla@neu.edu.ph', '47-5310-0895'),
(5, 'BS in Information Technology (BSIT)', 'Kiana', 'Valkyrie', 'Kaslana', 'Female', '15', '64541232789', 'kaslana_kiana@email.com', '93-6027-7230'),
(9, 'BS in Information Technology (BSIT)', 'Mei', 'R.', 'Raiden', 'Female', '19', '01234567891', 'raidenmei@email.com', '98-6853-5716');

-- --------------------------------------------------------

--
-- Table structure for table `registration_table`
--

CREATE TABLE `registration_table` (
  `registration_id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `middle_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `phone_number` varchar(255) NOT NULL,
  `attempt` varchar(255) NOT NULL,
  `log_time` varchar(255) NOT NULL,
  `account_type` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registration_table`
--

INSERT INTO `registration_table` (`registration_id`, `first_name`, `middle_name`, `last_name`, `email`, `password`, `gender`, `phone_number`, `attempt`, `log_time`, `account_type`) VALUES
(3, 'Marfred Paul', 'Calpe', 'Orilla', 'mpcorilla@neu.edu.ph', 'YurI09953604087', 'Male', '09953604087', '', '', '1'),
(4, 'Allina Shayne', 'Calpe', 'Orilla', 'allinashayneorilla@ymail.com', 'yurigoodboy', 'Female', '09090909090', '', '', '2'),
(5, 'user', 'user', 'user', 'user@user.com', 'useruseruser', 'Male', '11111111111', '', '', '2');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `enrollment_table`
--
ALTER TABLE `enrollment_table`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `registration_table`
--
ALTER TABLE `registration_table`
  ADD PRIMARY KEY (`registration_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `enrollment_table`
--
ALTER TABLE `enrollment_table`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `registration_table`
--
ALTER TABLE `registration_table`
  MODIFY `registration_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;--
-- Database: `my_database`
--
CREATE DATABASE IF NOT EXISTS `my_database` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `my_database`;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id_user` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `middle_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `preffix` varchar(255) NOT NULL,
  `seven_digit` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `attempt` varchar(255) NOT NULL,
  `log_time` varchar(255) NOT NULL,
  `account_type` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id_user`, `first_name`, `middle_name`, `last_name`, `gender`, `preffix`, `seven_digit`, `email`, `password`, `attempt`, `log_time`, `account_type`) VALUES
(1, 'Marfred', 'Calpe', 'Orilla', 'Male', '0907', '1234567', 'sample@sample.com', 'av64qlJX', '', '', '2'),
(5, 'Marfred Paul', 'Calpe', 'Orilla', 'Male', '0907', '3604087', 'mpcorilla@neu.edu.ph', 'vmyIw7oa', '3', '08:38 PM', '2'),
(7, 'Juan', 'Dela', 'Cruz', 'Male', '0906', '1234567', 'test@email.com', 'wMXit3oj', '', '', '2'),
(11, 'Maria', 'Clara', 'Rizal', 'Female', '0817', '6543123', 'anothertest@email.com', 'pm7IK3wk', '', '', '2'),
(12, 'sample', 'sample', 'sample', 'Female', '0813', '0813', 'db_email', 'zXOjEl0H', '', '', '2'),
(13, '', '', '', '', '', '', 'admin@phplord.com', 'admin', '', '', '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;--
-- Database: `mydb`
--
CREATE DATABASE IF NOT EXISTS `mydb` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `mydb`;

-- --------------------------------------------------------

--
-- Table structure for table `mytbl`
--

CREATE TABLE `mytbl` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `account_type` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mytbl`
--

INSERT INTO `mytbl` (`id`, `name`, `address`, `email`, `password`, `account_type`) VALUES
(1, 'Orilla, Marfred Paul C.', '7043 Avocado St. Comembo, Makati City', 'mpcorilla@neu.edu.ph', 'gwapo', '2'),
(8, 'shimishimi', 'shimishimi', 'shimishimi', 'shimishimi', '2'),
(9, 'Marfred', 'Avocado', 'my_newemail@gmail.com', '11', '2'),
(10, 'Poging Admin', '', 'admin@pogi.com', 'admin', '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mytbl`
--
ALTER TABLE `mytbl`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mytbl`
--
ALTER TABLE `mytbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;--
-- Database: `neu_event_attendance`
--
CREATE DATABASE IF NOT EXISTS `neu_event_attendance` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `neu_event_attendance`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_first_name` varchar(256) NOT NULL,
  `admin_last_name` varchar(256) NOT NULL,
  `instructorID` varchar(256) NOT NULL,
  `phoneNumber` varchar(256) NOT NULL,
  `emailAddress` varchar(256) NOT NULL,
  `registration_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `event_attendees`
--

CREATE TABLE `event_attendees` (
  `id` int(11) NOT NULL,
  `timestamp` varchar(255) NOT NULL,
  `student_id` varchar(255) NOT NULL,
  `event_attended` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `event_attendees`
--

INSERT INTO `event_attendees` (`id`, `timestamp`, `student_id`, `event_attended`) VALUES
(51, '23-10-2018  10:58', '1749238304', '29'),
(52, '23-10-2018  10:58', '1683399327', '29'),
(53, '23-10-2018  10:58', '1412005310', '29'),
(54, '23-10-2018  10:57', '1409724572', '29'),
(55, '23-10-2018  10:57', '1402846681', '29'),
(56, '23-10-2018  10:57', '1399848122', '29'),
(57, '23-10-2018  10:57', '1188103812', '29'),
(58, '23-10-2018  10:56', '1116714440', '29'),
(59, '23-10-2018  10:55', '1660457986', '29'),
(60, '23-10-2018  10:48', '1385474085', '29'),
(61, '23-10-2018  11:00', '1794754728', '29'),
(62, '23-10-2018  10:59', '1751293559', '29'),
(63, '23-10-2018  10:58', '1749238304', '29'),
(64, '23-10-2018  10:58', '1683399327', '29'),
(65, '23-10-2018  10:58', '1412005310', '29'),
(66, '23-10-2018  10:57', '1409724572', '29'),
(67, '23-10-2018  10:57', '1402846681', '29'),
(68, '23-10-2018  10:57', '1399848122', '29'),
(69, '23-10-2018  10:57', '1188103812', '29'),
(70, '23-10-2018  10:56', '1116714440', '29'),
(71, '23-10-2018  10:55', '1660457986', '29'),
(72, '23-10-2018  10:48', '1385474085', '29'),
(73, '23-10-2018  11:00', '1794754728', '29'),
(74, '23-10-2018  10:59', '1751293559', '29'),
(75, '23-10-2018  10:58', '1749238304', '29'),
(76, '23-10-2018  10:58', '1683399327', '29'),
(77, '23-10-2018  10:58', '1412005310', '29'),
(78, '23-10-2018  10:57', '1409724572', '29'),
(79, '23-10-2018  10:57', '1402846681', '29'),
(80, '23-10-2018  10:57', '1399848122', '29'),
(81, '23-10-2018  10:57', '1188103812', '29'),
(82, '23-10-2018  10:56', '1116714440', '29'),
(83, '23-10-2018  10:55', '1660457986', '29'),
(84, '23-10-2018  10:48', '1385474085', '29'),
(85, '23-10-2018  11:00', '1794754728', '29'),
(86, '23-10-2018  10:59', '1751293559', '29'),
(87, '23-10-2018  10:58', '1749238304', '29'),
(88, '23-10-2018  10:58', '1683399327', '29'),
(89, '23-10-2018  10:58', '1412005310', '29'),
(90, '23-10-2018  10:57', '1409724572', '29'),
(91, '23-10-2018  10:57', '1402846681', '29'),
(92, '23-10-2018  10:57', '1399848122', '29'),
(93, '23-10-2018  10:57', '1188103812', '29'),
(94, '23-10-2018  10:56', '1116714440', '29'),
(95, '23-10-2018  10:55', '1660457986', '29'),
(96, '23-10-2018  10:48', '1385474085', '29'),
(97, '23-10-2018  11:00', '1794754728', '29'),
(98, '23-10-2018  10:59', '1751293559', '29'),
(99, '23-10-2018  10:58', '1749238304', '29'),
(100, '23-10-2018  10:58', '1683399327', '29'),
(101, '23-10-2018  10:58', '1412005310', '29'),
(102, '23-10-2018  10:57', '1409724572', '29'),
(103, '23-10-2018  10:57', '1402846681', '29'),
(104, '23-10-2018  10:57', '1399848122', '29'),
(105, '23-10-2018  10:57', '1188103812', '29'),
(106, '23-10-2018  10:56', '1116714440', '29'),
(107, '23-10-2018  10:55', '1660457986', '29'),
(108, '23-10-2018  10:48', '1385474085', '29'),
(109, '23-10-2018  11:00', '1794754728', '29'),
(110, '23-10-2018  10:59', '1751293559', '29'),
(111, '23-10-2018  10:58', '1749238304', '29'),
(112, '23-10-2018  10:58', '1683399327', '29'),
(113, '23-10-2018  10:58', '1412005310', '29'),
(114, '23-10-2018  10:57', '1409724572', '29'),
(115, '23-10-2018  10:57', '1402846681', '29'),
(116, '23-10-2018  10:57', '1399848122', '29'),
(117, '23-10-2018  10:57', '1188103812', '29'),
(118, '23-10-2018  10:56', '1116714440', '29'),
(119, '23-10-2018  10:55', '1660457986', '29'),
(120, '23-10-2018  10:48', '1385474085', '29'),
(121, '23-10-2018  11:00', '1794754728', '29'),
(122, '23-10-2018  10:59', '1751293559', '29'),
(123, '23-10-2018  10:58', '1749238304', '29'),
(124, '23-10-2018  10:58', '1683399327', '29'),
(125, '23-10-2018  10:58', '1412005310', '29'),
(126, '23-10-2018  10:57', '1409724572', '29'),
(127, '23-10-2018  10:57', '1402846681', '29'),
(128, '23-10-2018  10:57', '1399848122', '29'),
(129, '23-10-2018  10:57', '1188103812', '29'),
(130, '23-10-2018  10:56', '1116714440', '29'),
(131, '23-10-2018  10:55', '1660457986', '29'),
(132, '23-10-2018  10:48', '1385474085', '29'),
(133, '23-10-2018  11:00', '1794754728', '29'),
(134, '23-10-2018  10:59', '1751293559', '29'),
(135, '23-10-2018  10:58', '1749238304', '29'),
(136, '23-10-2018  10:58', '1683399327', '29'),
(137, '23-10-2018  10:58', '1412005310', '29'),
(138, '23-10-2018  10:57', '1409724572', '29'),
(139, '23-10-2018  10:57', '1402846681', '29'),
(140, '23-10-2018  10:57', '1399848122', '29'),
(141, '23-10-2018  10:57', '1188103812', '29'),
(142, '23-10-2018  10:56', '1116714440', '29'),
(143, '23-10-2018  10:55', '1660457986', '29'),
(144, '23-10-2018  10:48', '1385474085', '29'),
(145, '23-10-2018  11:00', '1794754728', '29'),
(146, '23-10-2018  10:59', '1751293559', '29'),
(147, '23-10-2018  10:58', '1749238304', '29'),
(148, '23-10-2018  10:58', '1683399327', '29'),
(149, '23-10-2018  10:58', '1412005310', '29'),
(150, '23-10-2018  10:57', '1409724572', '29'),
(151, '23-10-2018  10:57', '1402846681', '29'),
(152, '23-10-2018  10:57', '1399848122', '29'),
(153, '23-10-2018  10:57', '1188103812', '29'),
(154, '23-10-2018  10:56', '1116714440', '29'),
(155, '23-10-2018  10:55', '1660457986', '29'),
(156, '23-10-2018  10:48', '1385474085', '29'),
(157, '23-10-2018  11:00', '1794754728', '29'),
(158, '23-10-2018  10:59', '1751293559', '29'),
(159, '23-10-2018  10:58', '1749238304', '29'),
(160, '23-10-2018  10:58', '1683399327', '29'),
(161, '23-10-2018  10:58', '1412005310', '29'),
(162, '23-10-2018  10:57', '1409724572', '29'),
(163, '23-10-2018  10:57', '1402846681', '29'),
(164, '23-10-2018  10:57', '1399848122', '29'),
(165, '23-10-2018  10:57', '1188103812', '29'),
(166, '23-10-2018  10:56', '1116714440', '29'),
(167, '23-10-2018  10:55', '1660457986', '29'),
(168, '23-10-2018  10:48', '1385474085', '29');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `event_id` int(100) NOT NULL,
  `event_title` varchar(256) NOT NULL,
  `event_description` varchar(256) NOT NULL,
  `event_venue` varchar(256) NOT NULL,
  `event_image` varchar(256) NOT NULL,
  `event_date` text NOT NULL,
  `event_posted` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`event_id`, `event_title`, `event_description`, `event_venue`, `event_image`, `event_date`, `event_posted`) VALUES
(13, 'NEU Science Fair', 'Happy', 'University Hall', 'UHall3.jpg.100', '2018-10-22', '2018-10-16 03:54:57'),
(15, 'Seminar', 'Seminar sa UHall', 'University Hall', 'UHall2.jpg.71', '2018-10-27', '2018-10-16 04:04:05'),
(17, 'NEU Tagis Lakas', 'The New Era University established the TAGIS LAKAS. This TAGIS LAKAS is a sports \r\nCompetition made for different department in all colleges in the University. Tagis lakas is composing of juniors and seniors division', 'NEU Field', 'photo.jpg.21', '2018-09-19', '2018-10-23 05:35:13'),
(18, 'NEU Career Fair', 'NEU Career Fair is job opportunity for students who wants to employed.', 'NEU Covered Court', '42780518_1575261092573460_4913816003965616128_n.jpg.73', '2018-09-29', '2018-10-23 05:39:17'),
(19, 'Hapi ang Buhay: The Musical Special Screenings', 'Hapi ang Buhay is a Philippine television sitcom on Net 25. It is the first sitcom to be produced by Net 25 of the Eagle Broadcasting Corporation, in cooperation with INCinema Productions', 'University Hall', 'Screen Shot 2018-09-21 at 4.01.02 PM.png.82', '2018-10-03', '2018-10-23 05:46:22'),
(20, 'Philippine Law School Admission Test', 'The Philippine Law School Admission Test (PhiLSAT) is a nationwide uniform admission test to be administered under the control and supervision of the Legal Education Board to improve the quality of Legal Education and all those seeking admission to the bas', 'NEW Era Univesity, HS BLDG', 'PhiLSAT_poster_2018-09-06-01_(1).png.71', '2018-09-23', '2018-10-23 05:51:08'),
(21, 'NEU HOLDS FORUM ON THE COLD WAR AND CURRENT EVENTS', 'New Era University hosted a global current affairs forum, titled &ldquo;Is the Cold War over?&rdquo; Held on September 6, 2018 at the University Hall, the forum featured a presentation by a distinguished guest from the Moscow Institute of International Rel', 'University Hall', '.32', '2018-09-07', '2018-10-23 05:58:04'),
(22, 'THE INC SYMPHONY ORCHESTRA', 'symphony orchestra performing college of music in New Era University', 'The performing arts theater', '43580094_1587739554658947_5298946868154204160_n.jpg.97', '2018-10-09', '2018-10-23 06:03:50'),
(23, 'The Five S''s (5S) of Good Housekeeping', '\r\nThe first workshop session on &quot;The Five S''s (5S) of Good Housekeeping&quot; was held last Oct. 20, 2018 at Multimedia Room B led by Dr. Mercedes R. Esmade and Bro. Marco B. Nasol, head of the Building Administration.', 'NEU Main Bldg, Multimedia Room B', '44574727_1601943613238541_3052850633599090688_n.jpg.80', '2018-10-20', '2018-10-23 06:07:25'),
(24, 'CSD 5th Year Anniversary Special Premier Screening of the CSD Show on INCTV', 'The First Ever Program for the Deaf on Philippine Television', 'NEU Hall', '44300762_2313610955533474_2642220522804346880_n.jpg.87', '2018-10-19', '2018-10-23 06:10:26'),
(25, ' RAISE AWAWRENESS CONCERNING ISSUES RELATED TO MENTAL HEALTH', 'in cooperation with the NEU Psychology Society, New Era Psychreview Group, and the NEU Sight Camera Club, launched a series of events to raise awareness concerning issues related to mental health. The highlight of these activities is the seminar entitled, ', 'University Hall', '43576850_1586278738138362_4704481647305687040_n.jpg.99', '2018-10-04', '2018-10-23 09:04:40'),
(26, 'Orientation on Human Resource Management and Development, System and Practices', 'New Era University\r\nSeptember 28 at 7:12 AM &middot; \r\nNEU-HRD staff members attend Orientation on Human Resource Management and Development, System and Practices on Sept. 28, 2018 at the Multipurpose Hall, Professional Schools Building.', 'Multi Purpose Hall, Prof. BLDG', '42738771_1574147999351436_528098342513672192_n.jpg.76', '2018-09-28', '2018-10-23 09:08:37'),
(27, 'Graduation of the 3rd Batch of the Certificate Program in International Relations and ASEAN Studies', 'Graduation of the 3rd Batch of the Certificate Program in International Relations and ASEAN Studies held in PSB, Room 201 on September 29, 2018.', 'PSB Room 201', '42723493_1575244839241752_5742386122453942272_n.jpg.32', '2018-09-28', '2018-10-23 09:30:58'),
(28, 'Steps in Qualitative and Quantitative Research Conceptualization and Writing ', 'The NEU Graduate School of Education conducted a whole-day seminar on Steps in Qualitative and Quantitative Research Conceptualization and Writing last September 22, 2018 at the University Hall. Philippine Educational Measurement and Evaluation Association', 'University Hall', '42428981_1570579336374969_3055863682006253568_n.jpg.13', '2018-09-22', '2018-10-23 09:34:34'),
(29, '1st PSME NCR Student Conference', 'The 1st PSME NCR Student Conference happened at the New Era University on September 8, 2018 with the theme &ldquo;Strengthening Capabilities and Competence Towards Professional World of Tomorrow&rdquo; participated by 421 delegates from different universit', 'University Hall', '41497346_1554942697938633_8225114104168185856_n.jpg.23', '2018-10-08', '2018-10-23 09:37:54');

-- --------------------------------------------------------

--
-- Table structure for table `registeredattendees`
--

CREATE TABLE `registeredattendees` (
  `regFirstName` varchar(256) NOT NULL,
  `regLastName` varchar(256) NOT NULL,
  `regStudentID` varchar(256) NOT NULL,
  `regPhoneNumber` varchar(256) NOT NULL,
  `regEmailAdress` varchar(256) NOT NULL,
  `department` varchar(256) NOT NULL,
  `courses` varchar(256) NOT NULL,
  `registration_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `registered_event_id` varchar(256) NOT NULL,
  `registered_event_venue` varchar(256) NOT NULL,
  `registered_event_date` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registeredattendees`
--

INSERT INTO `registeredattendees` (`regFirstName`, `regLastName`, `regStudentID`, `regPhoneNumber`, `regEmailAdress`, `department`, `courses`, `registration_date`, `registered_event_id`, `registered_event_venue`, `registered_event_date`) VALUES
('Shaan ', 'Rankin', '1116714440', '09246213778', 'ShaanRankin@email.com', 'College of Accountancy', 'Bachelor of Science in Accountancy', '2018-10-23 14:24:13', '29', 'University Hall', '2018-10-08'),
('Iris ', 'Charles', '1188103812', '09484201235', 'IrisCharles@email.com', 'College of Accountancy', 'Bachelor of Science in Accountancy', '2018-10-23 14:15:50', '29', 'University Hall', '2018-10-08'),
('Aneesa ', 'Eastwood', '1385474085', '09610473120', 'AneesaEastwood@email.com', 'College of Medical Technology', 'Bachelor of Science in Medical Technology', '2018-10-23 14:27:35', '27', 'PSB Room 201', '2018-09-28'),
('Maira ', 'Driscoll', '1399848122', '09033087010', 'MairaDriscoll@email.com', 'College of Accountancy', 'Bachelor of Science in Accountancy', '2018-10-23 14:20:25', '29', 'University Hall', '2018-10-08'),
('Adriana ', 'Baker', '1402846681', '09161136912', 'AdrianaBaker@email.com', 'College of Law', 'Bachelor of Laws', '2018-10-23 14:25:09', '29', 'University Hall', '2018-10-08'),
('Kamile ', 'Keeling', '1409724572', '09478918316', 'KamileKeeling@email.com', 'College of Midwifery', 'Two-year Diploma in Midwifery Education', '2018-10-23 14:21:33', '29', 'University Hall', '2018-10-08'),
('Meg ', 'Silva', '1412005310', '09196271775', 'MegSilva@email.com', 'College of Engineering and Architecture', 'Bachelor of Science in Mechanical Engineering', '2018-10-23 14:23:22', '29', 'University Hall', '2018-10-08'),
('Anis ', 'Clay', '1660457986', '09214664412', 'AnisClay@email.com', 'College of Criminology', 'Bachelor of Criminology', '2018-10-23 14:26:18', '28', 'University Hall', '2018-09-22'),
('Xena ', 'Franklin', '1683399327', '09171883877', 'XenaFranklin@email.com', 'College of Nursing', 'Bachelor of Science in Nursing', '2018-10-23 14:22:30', '29', 'University Hall', '2018-10-08'),
('Daisy-May ', 'Jenkins', '1749238304', '09755967759', 'Daisy-MayJenkins@email.com', 'College of Accountancy', 'Bachelor of Science in Accountancy', '2018-10-23 14:12:18', '29', 'University Hall', '2018-10-08'),
('Veronica', ' Conroy', '1751293559', '09798834008', 'VeronicaConroy@email.com', 'College of Computer Studies', 'Bachelor of Science in Entertainment and Multimedia Computing major in Game Development', '2018-10-23 14:16:46', '29', 'University Hall', '2018-10-08'),
('Candice ', 'Novak', '1794754728', '09001282264', 'CandiceNovak@email.com', 'College of Education', 'Bachelor of Secondary Education Major in Social Studies', '2018-10-23 14:14:45', '29', 'University Hall', '2018-10-08');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`instructorID`);

--
-- Indexes for table `event_attendees`
--
ALTER TABLE `event_attendees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`event_id`);

--
-- Indexes for table `registeredattendees`
--
ALTER TABLE `registeredattendees`
  ADD PRIMARY KEY (`regStudentID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `event_attendees`
--
ALTER TABLE `event_attendees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=169;
--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `event_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;--
-- Database: `neu_fair_attendance`
--
CREATE DATABASE IF NOT EXISTS `neu_fair_attendance` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `neu_fair_attendance`;

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
  MODIFY `index` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;--
-- Database: `neueventattendance`
--
CREATE DATABASE IF NOT EXISTS `neueventattendance` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `neueventattendance`;
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
  `id` int(11) NOT NULL,
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
  `col_length` text COLLATE utf8_bin,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin
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

--
-- Dumping data for table `pma__export_templates`
--

INSERT INTO `pma__export_templates` (`id`, `username`, `export_type`, `template_name`, `template_data`) VALUES
(1, 'root', 'server', 'sns', '{"quick_or_custom":"quick","what":"sql","db_select[]":["enrollment_database","my_database","mydb","phpmyadmin","registration","registration_pdo","social_media","social_network","test"],"output_format":"sendit","filename_template":"@SERVER@","remember_template":"on","charset":"utf-8","compression":"none","maxsize":"","codegen_structure_or_data":"data","codegen_format":"0","csv_separator":",","csv_enclosed":"\\"","csv_escaped":"\\"","csv_terminated":"AUTO","csv_null":"NULL","csv_structure_or_data":"data","excel_null":"NULL","excel_edition":"win","excel_structure_or_data":"data","htmlword_structure_or_data":"structure_and_data","htmlword_null":"NULL","json_structure_or_data":"data","latex_caption":"something","latex_structure_or_data":"structure_and_data","latex_structure_caption":"Structure of table @TABLE@","latex_structure_continued_caption":"Structure of table @TABLE@ (continued)","latex_structure_label":"tab:@TABLE@-structure","latex_relation":"something","latex_comments":"something","latex_mime":"something","latex_columns":"something","latex_data_caption":"Content of table @TABLE@","latex_data_continued_caption":"Content of table @TABLE@ (continued)","latex_data_label":"tab:@TABLE@-data","latex_null":"\\\\textit{NULL}","mediawiki_structure_or_data":"data","mediawiki_caption":"something","mediawiki_headers":"something","ods_null":"NULL","ods_structure_or_data":"data","odt_structure_or_data":"structure_and_data","odt_relation":"something","odt_comments":"something","odt_mime":"something","odt_columns":"something","odt_null":"NULL","pdf_report_title":"","pdf_structure_or_data":"data","phparray_structure_or_data":"data","sql_include_comments":"something","sql_header_comment":"","sql_compatibility":"NONE","sql_structure_or_data":"structure_and_data","sql_create_table":"something","sql_auto_increment":"something","sql_create_view":"something","sql_procedure_function":"something","sql_create_trigger":"something","sql_backquotes":"something","sql_type":"INSERT","sql_insert_syntax":"both","sql_max_query_size":"50000","sql_hex_for_binary":"something","sql_utc_time":"something","texytext_structure_or_data":"structure_and_data","texytext_null":"NULL","yaml_structure_or_data":"data","":null,"as_separate_files":null,"csv_removeCRLF":null,"csv_columns":null,"excel_removeCRLF":null,"excel_columns":null,"htmlword_columns":null,"json_pretty_print":null,"ods_columns":null,"sql_dates":null,"sql_relation":null,"sql_mime":null,"sql_use_transaction":null,"sql_disable_fk":null,"sql_views_as_tables":null,"sql_metadata":null,"sql_drop_database":null,"sql_drop_table":null,"sql_if_not_exists":null,"sql_truncate":null,"sql_delayed":null,"sql_ignore":null,"texytext_columns":null}');

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
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
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
('root', '[{"db":"neu_fair_attendance","table":"attendance_registration"},{"db":"attendance_registration","table":"attendance_registration"},{"db":"neu_fair_attendance","table":"event_attendees"},{"db":"neu_fair_attendance","table":"event_attended"},{"db":"neu_fair_attendance","table":"admin"},{"db":"tutorial","table":"images"},{"db":"neu_event_attendance","table":"event_attendees"},{"db":"neu_event_attendance","table":"events"},{"db":"neu_event_attendance","table":"registeredattendees"},{"db":"neu_event_attendance","table":"registeredusers"}]');

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
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float UNSIGNED NOT NULL DEFAULT '0',
  `y` float UNSIGNED NOT NULL DEFAULT '0'
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
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Dumping data for table `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'enrollment_database', 'registration_table', '{"sorted_col":"`registration_table`.`phone_number` ASC"}', '2018-10-09 15:28:53'),
('root', 'my_database', 'tbl_user', '{"sorted_col":"`tbl_user`.`account_type` ASC"}', '2018-03-25 15:58:53'),
('root', 'neu_event_attendance', 'events', '{"sorted_col":"`events`.`event_id` ASC"}', '2018-10-23 18:26:56'),
('root', 'neu_event_attendance', 'registeredattendees', '{"sorted_col":"`registeredattendees`.`registration_date`  ASC"}', '2018-10-23 17:50:08'),
('root', 'registration', 'tbl_user', '{"sorted_col":"`tbl_user`.`id_user` ASC"}', '2018-08-15 11:32:56'),
('root', 'social_media', 'timeline', '[]', '2018-08-22 11:39:13'),
('root', 'social_network', 'posts', '{"sorted_col":"`posts`.`post_id`  DESC"}', '2018-09-06 08:24:33'),
('root', 'social_network', 'users', '{"sorted_col":"`users`.`user_id`  ASC"}', '2018-08-29 10:17:02');

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
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2018-03-21 14:17:13', '{"collation_connection":"utf8mb4_unicode_ci"}');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
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
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;--
-- Database: `registration`
--
CREATE DATABASE IF NOT EXISTS `registration` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `registration`;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id_user` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `middle_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `attempt` varchar(255) NOT NULL,
  `log_time` varchar(255) NOT NULL,
  `account_type` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id_user`, `first_name`, `middle_name`, `last_name`, `gender`, `email`, `password`, `attempt`, `log_time`, `account_type`) VALUES
(3, 'Marfred Paul', 'Calpe', 'Orilla', 'Male', 'mpcorilla@neu.edu.ph', 'admin', '', '', '1'),
(6, 'Yuri', 'Muriyama', 'Suzuki', 'Female', 'ymsuzuki@email.com', 'LasyZADh', '', '', '2'),
(29, 'user', 'user', 'user', 'Others', 'user', 'user', '', '', '2'),
(30, 'Rodrigo', 'Roa', 'Duterte', 'Male', 'rodrigo.duterte@malacanang.gov.ph', 'ihatedrugs', '', '', '2');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;--
-- Database: `registration_pdo`
--
CREATE DATABASE IF NOT EXISTS `registration_pdo` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `registration_pdo`;

-- --------------------------------------------------------

--
-- Table structure for table `user_registration`
--

CREATE TABLE `user_registration` (
  `user_id` int(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_registration`
--

INSERT INTO `user_registration` (`user_id`, `first_name`, `last_name`, `user_name`, `password`) VALUES
(1, 'Jane', 'Doe', 'jane24', 'doe23jd'),
(2, 'John', 'Doe', 'john43', 'john_doe325kh'),
(3, 'Sarah', 'Geronimow', 'sarahGero', 'geronimow243'),
(4, 'Super', 'Man', 'returns', 'superman_returns');
--
-- Database: `social_media`
--
CREATE DATABASE IF NOT EXISTS `social_media` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `social_media`;

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `id_user` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `middle_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `attempt` varchar(255) NOT NULL,
  `log_time` varchar(255) NOT NULL,
  `account_type` varchar(255) NOT NULL,
  `verification_code` varchar(255) NOT NULL,
  `isVerified` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`id_user`, `first_name`, `middle_name`, `last_name`, `email`, `password`, `gender`, `attempt`, `log_time`, `account_type`, `verification_code`, `isVerified`) VALUES
(8, 'Marfred Paul', 'Calpe', 'Orilla', 'mpcorilla@neu.edu.ph', 'redvelvet', 'Male', '', '', '2', 'kjTD61xl', 'YES'),
(9, 'Rodrigo', 'Roa', 'Duterte', 'rrduterte@malacanang.gov.ph', 'ihatedrugs', 'Male', '', '', '2', 'G3keVbXc', 'YES'),
(10, 'Andres', 'Bonifacio', 'de Castro', 'andres.bonifacio@tagalog.republic.ph', 'supremokkk', 'Male', '', '', '2', 'xEzkdFbr', 'YES'),
(11, 'Manuel', 'Luis', 'Quezon', 'manuel.quezon@ust.ph', 'commonwealth', 'Male', '', '', '2', 'xNW3pBzY', 'NO');

-- --------------------------------------------------------

--
-- Table structure for table `timeline`
--

CREATE TABLE `timeline` (
  `id_user` int(11) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `post_id` int(11) NOT NULL,
  `posts` text NOT NULL,
  `likes` varchar(999) NOT NULL,
  `comments` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `timeline`
--

INSERT INTO `timeline` (`id_user`, `full_name`, `post_id`, `posts`, `likes`, `comments`) VALUES
(10, 'Andres B. de Castro', 1, '', '', ''),
(11, 'Manuel L. Quezon', 2, '', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `timeline`
--
ALTER TABLE `timeline`
  ADD PRIMARY KEY (`post_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `timeline`
--
ALTER TABLE `timeline`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;--
-- Database: `social_network`
--
CREATE DATABASE IF NOT EXISTS `social_network` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `social_network`;

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `com_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `comment_author` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`com_id`, `post_id`, `user_id`, `comment`, `comment_author`, `date`) VALUES
(3, 33, 12, 'Hi, Ez!', 'Marfred Paul Orilla', '2018-09-03 15:38:07');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `post_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `post_content` varchar(255) NOT NULL,
  `upload_image` varchar(255) NOT NULL,
  `post_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `user_id`, `post_content`, `upload_image`, `post_date`) VALUES
(9, 3, 'Converse Photo with Seulgi', 'M35uoni.jpg.13', '2018-08-24 12:27:35'),
(11, 3, 'No', 'GjrgVrh.png.78', '2018-08-24 12:28:17'),
(17, 3, 'HI', 'M35uoni.jpg.2', '2018-08-24 12:38:39'),
(20, 3, 'No', 'JSIZrPC.png.5', '2018-08-24 12:40:42'),
(21, 3, 'No', 'aLuHBBV.png.24', '2018-08-24 12:40:57'),
(24, 3, 'lets power up!', '', '2018-08-26 10:20:41'),
(26, 6, 'Peek-a-boo', 'InstaSave(13).jpg.80', '2018-08-26 13:20:30'),
(27, 3, 'No', 'InstaSave(5).jpg.44', '2018-08-27 13:49:03'),
(29, 12, 'Mathew 23:12 - For those who exalt themselves will be humbled, and those who humble themselves will be exalted.', '', '2018-08-29 10:18:09'),
(32, 12, 'No', 'forecast_janna_by_tsuaii-d85ip5v.jpg.11', '2018-09-03 12:32:46'),
(33, 12, 'Ezreal &amp; Lux', 'Lux and Ezreal Drawing.jpg.10', '2018-09-03 13:40:04'),
(34, 6, '180817', 'IApoE1t.jpg.13', '2018-09-06 09:57:48'),
(35, 6, 'No', 'F6969Hz.jpg.68', '2018-09-06 09:57:57'),
(36, 6, 'No', 'CHyOzAK.jpg.84', '2018-09-06 09:58:06'),
(37, 6, 'Hello', '', '2018-09-06 09:58:12');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `first_name` text NOT NULL,
  `last_name` text NOT NULL,
  `user_name` text NOT NULL,
  `describe_user` varchar(255) NOT NULL,
  `Relationship` text NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_pass` varchar(255) NOT NULL,
  `user_country` text NOT NULL,
  `user_gender` text NOT NULL,
  `user_birthday` text NOT NULL,
  `user_image` varchar(255) NOT NULL,
  `user_cover` varchar(255) NOT NULL,
  `user_reg_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` text NOT NULL,
  `posts` text NOT NULL,
  `recovery_account` varchar(255) NOT NULL,
  `verification_code` varchar(255) NOT NULL,
  `isVerified` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `first_name`, `last_name`, `user_name`, `describe_user`, `Relationship`, `user_email`, `user_pass`, `user_country`, `user_gender`, `user_birthday`, `user_image`, `user_cover`, `user_reg_date`, `status`, `posts`, `recovery_account`, `verification_code`, `isVerified`) VALUES
(3, 'Seulgi', 'Kang', 'seulgi_kang_876770', 'Pawa Up! This is my default status!', '...', 'kang.seulgi@email.com', 'babybear', 'Korea, Republic of', 'Female', '1994-02-10', 'seulgibaechu___BluIVCGhkRM___.jpg.16', 'summer_magic.jpg', '2018-08-22 15:23:40', 'verified', 'yes', 'Matthew23:12', '', ''),
(6, 'Joo-hyun', 'Bae', 'bae.joohyun', 'Pawa Up! This is my default status!', '...', 'bae.joohyun@email.com', 'seulrene', 'Korea, Republic of', 'Female', '1991-03-29', 'irene.redvelvet___BluJKzfl10K___.jpg.41', 'EcVK50m.png.97', '2018-08-26 13:12:46', 'verified', 'yes', 'Matthew23:12', '', ''),
(12, 'Marfred Paul', 'Orilla', 'mpcorilla', 'I love ice cream!', 'Single', 'paulmarfred@gmail.com', 'redvelvet', 'Philippines', 'Male', '1998-05-01', 'Lux little cute.jpg.56', 'Ashe, The Queen of Freljord.jpg.6', '2018-08-26 14:14:01', 'verified', 'yes', 'Matthew23:12', '5VbSh03E', 'YES'),
(13, 'Marfred Paul', 'Orilla', 'mpcorilla', 'Pawa Up! This is my default status!', '...', 'mpcorilla@gmail.com', '123456789', 'Philippines', 'Male', '1998-05-01', 'user.png', 'Flag_of_the_Philippines.svg', '2018-09-12 05:35:58', 'verified', 'no', 'Matthew23:12', 'xqKhseWy', 'NO');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`com_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `com_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
--
-- Database: `tutorial`
--
CREATE DATABASE IF NOT EXISTS `tutorial` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `tutorial`;

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `image` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `name`, `image`) VALUES
(1, 'sofia-metro-map-compact-bulgarian.png', 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAABlIAAAG+CAIAAABnCg7CAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAA4BpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuNS1jMDIxIDc5LjE1NTc3MiwgMjAxNC8wMS8xMy0xOTo0NDowMCAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wTU09Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9tbS8iIHhtbG5zOnN0UmVmPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvc1R5cGUvUmVzb3VyY2VSZWYjIiB4bWxuczp4bXA9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC8iIHhtcE1NOk9yaWdpbmFsRG9jdW1lbnRJRD0ieG1wLmRpZDpBQTc4NTAyNEMzRUVFMTExQUEwOEE1NjFFRjYzODI0OSIgeG1wTU06RG9jdW1lbnRJRD0ieG1wLmRpZDozRjRFNzFEQjRFOTYxMUU2OTFGNkRERkEwNTUyM0E4QyIgeG1wTU06SW5zdGFuY2VJRD0ieG1wLmlpZDozRjRFNzFEQTRFOTYxMUU2OTFGNkRERkEwNTUyM0E4QyIgeG1wOkNyZWF0b3JUb29sPSJBZG9iZSBQaG90b3Nob3AgQ0MgMjAxNCAoV2luZG93cykiPiA8eG1wTU06RGVyaXZlZEZyb20gc3RSZWY6aW5zdGFuY2VJRD0ieG1wLmlpZDoyZTkxMGVmNC1hZjgyLTljNDctODQ5My00MDMzODQ5YWY3Y2MiIHN0UmVmOmRvY3VtZW50SUQ9ImFkb2JlOmRvY2lkOnBob3Rvc2hvcDpmZTYzNTNhMS00ZTg3LTExZTYtODI1NC04M2Rj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');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
