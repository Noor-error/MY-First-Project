-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 26, 2024 at 06:00 AM
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
-- Database: `teacher_jobs`
--

-- --------------------------------------------------------

--
-- Table structure for table `applications`
--

CREATE TABLE `applications` (
  `id` int(11) NOT NULL,
  `job_id` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `resume` varchar(255) DEFAULT NULL,
  `apply_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `applications`
--

INSERT INTO `applications` (`id`, `job_id`, `name`, `email`, `phone`, `resume`, `apply_date`) VALUES
(1, 2, 'Kalim', 'noorallashaiks@gmail.com', '9892673042', 'admin_style.css', NULL),
(2, 1, 'Amay', 'noorallashaiks@gmail.com', '9892673041', 'index.html', NULL),
(3, 2, 'Abcd', 'noorallashaiks@gmail.com', '9892673042', 'INS_WriteUps_Practicals.pdf', NULL),
(4, 1, 'Chirag', 'noorallashaiks@gmail.com', '9892673041', 'INS_WriteUps_Practicals.pdf', NULL),
(5, 1, 'Prathamesh', 'noorallashaiks@gmail.com', '8652238978', 'INS_WriteUps_Practicals.pdf', NULL),
(6, 3, 'Nooralla', 'noorallashaiks@gmail.com', '9892673042', 'Ruqyah Table.pdf', NULL),
(7, 11, 'Mehta', 'noorallashaikh.20@gmail.com', '9892673041', 'Ruqyah Table.pdf', NULL),
(8, 3, 'Chirag1', 'noorallashaiks@gmail.com', '9892673041', 'Ruqyah Table.pdf', NULL),
(9, 3, 'ansu', 'elkje8u@gmail.com', '13213', 'Nooralla shh.pdf', NULL),
(10, 11, 'rohit', 'noor@gmail.com', '1232323', 'Nooralla shh.pdf', NULL),
(11, 15, 'shivam', 'elkje8u@gmail.com', '13213', 'Nooralla BLACKBOOK.pdf', NULL),
(12, 13, 'mghda', 'elkje8u@gmail.com', '13213', 'INS_Journal_04.pdf', NULL),
(13, 19, 'Mohammad', 'elkje8u@gmail.com', '13213', 'AnshuMishra (2)v2.pdf', NULL),
(14, 15, 'Mohammad', 'elkje8u@gmail.com', '13213', 'AnshuMishra (2)v2.pdf', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` int(11) NOT NULL,
  `school_id` int(11) DEFAULT NULL,
  `job_title` varchar(100) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `qualifications` varchar(255) DEFAULT NULL,
  `posted_date` date DEFAULT NULL,
  `closing_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `school_id`, `job_title`, `description`, `qualifications`, `posted_date`, `closing_date`) VALUES
(1, 1, 'Math ', 'Teach high school math', 'Degree in Math', '2024-09-16', '2024-10-01'),
(2, 2, 'Science ', 'Teach science to middle school students', 'Science degree with teaching experience', '2024-09-16', '2024-09-30'),
(3, 3, 'English Teacher', 'Teach English literature', 'Degree in English, teaching experience', '2024-09-16', '2024-11-15'),
(10, 3, 'Physics Teacher ', 'Need a high qualified teacher ', 'Degree needed in science field.', NULL, '2024-10-31'),
(11, 3, 'Maths teachers', 'Nooralla', 'Should be fit.', NULL, '2024-10-31'),
(12, 2, 'P.T Sir needed', 'Bdjsjsbs', 'Hdjsjsbsjs', NULL, '2024-10-31'),
(13, 2, 'COMPUTER TEACHER NEEDED', 'NEEDED URGENTLY', 'COMPUTER DEGREE NEEDED', NULL, '2024-10-31'),
(14, 2, 'COMPUTER TEACHER NEEDED', 'NEEDED URGENTLY', 'COMPUTER DEGREE NEEDED', NULL, '2024-10-31'),
(15, 1, 'COMPUTER', ' HDH2DNN238', 'EWDE23', NULL, '2024-11-08'),
(16, 1, 'HINDU TEACHER ', '342EDS', '3E23E3', NULL, '2024-10-14'),
(17, 1, 'HINDU TEACHER ', '342EDS', '3E23E3', NULL, '2024-10-14'),
(19, 3, 'social science', 'urgentlu needed', 'B.ED', NULL, '2024-11-06'),
(20, 2, 'driver123', 'driver', 'needed', NULL, '2024-11-07');

-- --------------------------------------------------------

--
-- Table structure for table `schools`
--

CREATE TABLE `schools` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL,
  `contact` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `schools`
--

INSERT INTO `schools` (`id`, `name`, `location`, `contact`) VALUES
(1, 'Gurukul School', 'Malvani', '222-3333'),
(2, 'Ismail Yusuf College', 'Jogeshwari ', '555-6666'),
(3, 'Khan Academy ', 'Malad', '555-7777');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `applications`
--
ALTER TABLE `applications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `job_id` (`job_id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `school_id` (`school_id`);

--
-- Indexes for table `schools`
--
ALTER TABLE `schools`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `applications`
--
ALTER TABLE `applications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `schools`
--
ALTER TABLE `schools`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `applications`
--
ALTER TABLE `applications`
  ADD CONSTRAINT `applications_ibfk_1` FOREIGN KEY (`job_id`) REFERENCES `jobs` (`id`);

--
-- Constraints for table `jobs`
--
ALTER TABLE `jobs`
  ADD CONSTRAINT `jobs_ibfk_1` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
