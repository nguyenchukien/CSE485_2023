-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 21, 2023 at 03:55 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `attendance`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `attendance_date` date NOT NULL,
  `sv_id` int(11) NOT NULL,
  `sv_name` varchar(100) NOT NULL,
  `course_id` int(11) NOT NULL,
  `course_name` varchar(100) NOT NULL,
  `status` enum('present','absent','late','') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `classes`
--

CREATE TABLE `classes` (
  `class_id` int(11) NOT NULL,
  `class_name` varchar(100) NOT NULL,
  `ins_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `starttime` date NOT NULL,
  `endtime` date NOT NULL,
  `semester` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `course_id` int(11) NOT NULL,
  `course_name` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `credits` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`course_id`, `course_name`, `description`, `credits`) VALUES
(1, 'Trí Tuệ Nhân Tạo', 'example text', 3),
(2, 'Kiến trúc máy tính', 'example text 2', 3),
(3, 'Lập trình Java', 'example text 3', 2),
(4, 'Mạng máy tính', 'example text 4', 3),
(5, 'Khai phá dữ liệu', 'example text 5', 4),
(6, 'Lập trình đồ họa 3D', 'example text 6', 4),
(7, 'Kiểm thử và đảm bảo chất lượng phần mềm', 'example text 7', 2);

-- --------------------------------------------------------

--
-- Table structure for table `instructors`
--

CREATE TABLE `instructors` (
  `ins_id` int(11) NOT NULL,
  `ins_name` varchar(100) NOT NULL,
  `ins_email` char(100) NOT NULL,
  `ins_phone` char(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `instructors`
--

INSERT INTO `instructors` (`ins_id`, `ins_name`, `ins_email`, `ins_phone`) VALUES
(1, 'Karpenya', 'dkarpenya0@zdnet.com', '990 121 38'),
(2, 'Fitzroy', 'rfitzroy1@posterous.com', '741 106 55'),
(3, 'Pyffe', 'rpyffe2@kickstarter.com', '780 612 28'),
(4, 'Hawtin', 'mhawtin3@pinterest.com', '950 201 88'),
(5, 'Tivolier', 'mtivolier4@oaic.gov.au', '371 172 57'),
(6, 'Chaves', 'gchaves5@wisc.edu', '409 914 74'),
(7, 'Sallarie', 'bsallarie6@cpanel.net', '723 198 19'),
(8, 'McDuall', 'bmcduall7@tripadvisor.com', '192 673 52'),
(9, 'Cracie', 'acracie8@earthlink.net', '105 855 29'),
(10, 'Mosten', 'dmosten9@slate.com', '815 541 28'),
(11, 'Saunt', 'bsaunta@wired.com', '167 636 41'),
(12, 'Clink', 'mclinkb@seesaa.net', '348 219 36'),
(13, 'Sambath', 'esambathc@jigsy.com', '612 659 10'),
(14, 'Dienes', 'ldienesd@statcounter.com', '391 133 94'),
(15, 'Pendre', 'apendree@taobao.com', '920 916 38'),
(16, 'Falla', 'afallaf@ask.com', '708 928 03'),
(17, 'Voss', 'evossg@ca.gov', '218 138 37'),
(18, 'Pucker', 'apuckerh@comcast.net', '863 281 07'),
(19, 'Perfitt', 'dperfitti@gizmodo.com', '759 648 12'),
(20, 'Daveren', 'jdaverenj@yelp.com', '103 330 68');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `sv_id` int(11) NOT NULL,
  `sv_name` varchar(100) NOT NULL,
  `sv_bdate` date DEFAULT NULL,
  `gender` enum('Female','Male') NOT NULL,
  `sv_email` varchar(100) NOT NULL,
  `sv_phone` char(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`sv_id`, `sv_name`, `sv_bdate`, `gender`, `sv_email`, `sv_phone`) VALUES
(1, 'Dang Ngoc Anh', NULL, 'Female', 'ngocanh2000@gmail.com', '096443576'),
(2, 'Lexine Paddington', '2001-05-14', 'Female', 'lpaddington0@cnet.com', '1139794091'),
(3, 'Maurise Eplett', '2000-11-12', 'Male', 'meplett1@google.nl', '5775202510'),
(4, 'Guthry Brigg', '2001-06-12', 'Male', 'gbrigg2@nps.gov', '4648747241'),
(5, 'Peyter Daymond', '2002-04-25', 'Male', 'pdaymond3@techcrunch.com', '3278543608'),
(6, 'Willow Olifaunt', '2001-03-08', 'Female', 'wolifaunt4@newsvine.com', '8427645223'),
(7, 'Humphrey Smidmore', '2002-09-29', 'Male', 'hsmidmore5@earthlink.net', '8821940685'),
(8, 'Shanie Skinley', '2001-03-02', 'Female', 'sskinley6@mit.edu', '5283492700'),
(9, 'Alina Hirche', '2003-11-18', 'Female', 'ahirche7@stanford.edu', '8313692540'),
(10, 'Hube Stealy', '2002-07-03', 'Male', 'hstealy8@myspace.com', '4872732112'),
(11, 'Evita Derwin', '2003-06-14', 'Female', 'ederwin9@aol.com', '2907203171'),
(12, 'Matthias Vanner', '2004-05-23', 'Male', 'mvannera@netvibes.com', '5578897932'),
(13, 'Felipe Jasik', '2000-09-18', 'Male', 'fjasikb@goo.gl', '2959470210'),
(14, 'Maritsa Lippitt', '2004-03-02', 'Female', 'mlippittc@flickr.com', '5105518795'),
(15, 'Ransom MacRonald', '2000-12-02', 'Male', 'rmacronaldd@biblegateway.com', '3553003529'),
(16, 'Doug Cuddy', '2003-07-18', 'Male', 'dcuddye@newsvine.com', '6068973278'),
(17, 'Wilt Denkin', '2002-07-23', 'Male', 'wdenkinf@behance.net', '9873106039'),
(18, 'Nolly Hovenden', '2003-02-14', 'Male', 'nhovendeng@taobao.com', '1834610381'),
(19, 'Casar Tams', '2000-11-13', 'Male', 'ctamsh@nasa.gov', '3496127910'),
(20, 'Lavinia Cafferky', '2000-09-16', 'Female', 'lcafferkyi@npr.org', '7181008891'),
(21, 'Worthy Mousley', '2001-06-12', 'Male', 'wmousleyj@statcounter.com', '2854777363');

-- --------------------------------------------------------

--
-- Table structure for table `students_courses`
--

CREATE TABLE `students_courses` (
  `sv_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `semester` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD KEY `fk_foreign_sv_id5` (`sv_id`),
  ADD KEY `fk_foreign_course_id4` (`course_id`);

--
-- Indexes for table `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`class_id`),
  ADD KEY `fk_foreign_ins_id1` (`ins_id`),
  ADD KEY `fk_foreign_course_id2` (`course_id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`course_id`);

--
-- Indexes for table `instructors`
--
ALTER TABLE `instructors`
  ADD PRIMARY KEY (`ins_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`sv_id`);

--
-- Indexes for table `students_courses`
--
ALTER TABLE `students_courses`
  ADD KEY `fk_foreign_sv_id3` (`sv_id`),
  ADD KEY `fk_foreign_course_id3` (`course_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `classes`
--
ALTER TABLE `classes`
  MODIFY `class_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `instructors`
--
ALTER TABLE `instructors`
  MODIFY `ins_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `sv_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attendance`
--
ALTER TABLE `attendance`
  ADD CONSTRAINT `fk_foreign_course_id4` FOREIGN KEY (`course_id`) REFERENCES `courses` (`course_id`),
  ADD CONSTRAINT `fk_foreign_sv_id4` FOREIGN KEY (`sv_id`) REFERENCES `students` (`sv_id`),
  ADD CONSTRAINT `fk_foreign_sv_id5` FOREIGN KEY (`sv_id`) REFERENCES `students` (`sv_id`);

--
-- Constraints for table `classes`
--
ALTER TABLE `classes`
  ADD CONSTRAINT `fk_foreign_course_id2` FOREIGN KEY (`course_id`) REFERENCES `courses` (`course_id`),
  ADD CONSTRAINT `fk_foreign_ins_id1` FOREIGN KEY (`ins_id`) REFERENCES `instructors` (`ins_id`);

--
-- Constraints for table `students_courses`
--
ALTER TABLE `students_courses`
  ADD CONSTRAINT `fk_foreign_course_id1` FOREIGN KEY (`course_id`) REFERENCES `courses` (`course_id`),
  ADD CONSTRAINT `fk_foreign_course_id3` FOREIGN KEY (`course_id`) REFERENCES `courses` (`course_id`),
  ADD CONSTRAINT `fk_foreign_sv_id1` FOREIGN KEY (`sv_id`) REFERENCES `students` (`sv_id`),
  ADD CONSTRAINT `fk_foreign_sv_id3` FOREIGN KEY (`sv_id`) REFERENCES `students` (`sv_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
