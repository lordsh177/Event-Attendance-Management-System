-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 27, 2025 at 01:51 PM
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
-- Database: `event_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `reg_id` varchar(20) DEFAULT NULL,
  `event_id` int(11) DEFAULT NULL,
  `check_in` datetime DEFAULT NULL,
  `check_out` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`id`, `user_id`, `reg_id`, `event_id`, `check_in`, `check_out`) VALUES
(30, 40, NULL, 7, '2025-10-29 01:05:51', '2025-10-29 01:05:52'),
(31, 42, NULL, 3, '2025-10-29 02:41:20', '2025-10-29 02:42:21'),
(32, 39, NULL, 7, '2025-10-29 12:10:38', '2025-10-29 12:10:54'),
(33, 43, NULL, 3, '2025-10-29 12:13:09', '2025-10-29 12:13:17'),
(34, 43, NULL, 1, '2025-10-29 12:58:22', '2025-10-29 12:58:22'),
(35, 43, NULL, 7, '2025-10-29 13:02:15', '2025-10-29 13:02:15'),
(36, 43, NULL, 2, '2025-10-29 13:02:35', '2025-10-29 13:02:37'),
(37, 43, NULL, 4, '2025-10-29 13:06:43', '2025-10-29 13:06:46'),
(40, 40, NULL, 1, '2025-10-30 22:11:16', '2025-10-30 22:18:51'),
(41, 42, NULL, 1, '2025-10-30 22:15:09', '2025-10-30 22:21:38'),
(42, 42, NULL, 2, '2025-10-30 22:24:27', '2025-10-30 22:25:00'),
(43, 42, NULL, 4, '2025-10-30 22:29:06', '2025-10-30 22:29:54'),
(44, 42, NULL, 7, '2025-10-30 22:32:44', '2025-10-30 22:33:38'),
(45, 40, NULL, 4, '2025-10-30 22:34:58', '2025-10-30 22:36:23'),
(46, 45, NULL, 8, '2025-10-30 22:54:44', '2025-10-30 22:55:14'),
(47, 40, NULL, 2, '2025-11-24 03:12:29', '2025-11-24 03:13:03'),
(48, 52, NULL, 1, '2025-11-26 23:12:40', '2025-11-26 23:12:51'),
(49, 52, NULL, 4, '2025-11-27 08:54:12', '2025-11-27 08:54:12'),
(50, 52, NULL, 3, '2025-11-27 08:55:57', '2025-11-27 08:55:59'),
(51, 52, NULL, 7, '2025-11-27 08:56:08', '2025-11-27 08:56:09'),
(52, 52, NULL, 8, '2025-11-27 09:07:08', '2025-11-27 09:07:16'),
(53, 52, NULL, 2, '2025-11-27 12:32:09', '2025-11-27 12:32:21'),
(54, 62, NULL, 7, '2025-11-27 20:04:44', '2025-11-27 20:04:53'),
(55, 62, NULL, 8, '2025-11-27 20:09:05', '2025-11-27 20:09:17'),
(56, 62, NULL, 4, '2025-11-27 20:33:09', '2025-11-27 20:33:10'),
(57, 62, NULL, 1, '2025-11-27 20:36:43', '2025-11-27 20:36:43'),
(58, 62, NULL, 2, '2025-11-27 20:37:35', '2025-11-27 20:37:42');

-- --------------------------------------------------------

--
-- Table structure for table `audit_logs`
--

CREATE TABLE `audit_logs` (
  `id` int(11) NOT NULL,
  `user` varchar(255) DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `audit_logs`
--

INSERT INTO `audit_logs` (`id`, `user`, `action`, `timestamp`) VALUES
(2, 'Admin', 'Created event: Sci-Math', '2025-10-22 15:12:12'),
(5, 'Admin', 'Created event: Moglooween USTP', '2025-10-22 16:51:54'),
(7, 'Admin', 'Created event: TrailBlazers', '2025-10-24 05:18:12'),
(21, 'Admin', 'Created event Earthquake Drill', '2025-10-26 05:12:14'),
(22, 'Juan Dela Cruz', 'Created user REG0467', '2025-10-26 11:58:14'),
(24, 'Admin', 'Created event A Small Tourna Event', '2025-10-26 14:59:01'),
(25, 'Admin', 'Updated event: A Small Tournament of dota 2', '2025-10-26 15:01:47'),
(27, 'Admin', 'Updated event: Earthquake Drill', '2025-10-26 15:02:26'),
(32, 'Admin', 'Created event: Misamis Oriental E-Sports Organization', '2025-10-26 15:05:53'),
(33, 'Admin', 'Updated event: Misamis Oriental E-Sports Organization', '2025-10-26 15:07:13'),
(45, 'Angelie Garcia', 'Created user REG6034 with QR code', '2025-10-28 16:50:11'),
(47, 'Clark Lomopog', 'Created user REG9437 with QR code', '2025-10-28 17:05:03'),
(48, 'Juan Dela Cruz', 'Created user REG8739 with QR code', '2025-10-28 18:25:19'),
(49, 'Admin', 'Deleted User 41', '2025-10-28 18:25:51'),
(50, 'Jerriel Cuizon', 'Created user REG3156 with QR code', '2025-10-28 18:33:35'),
(51, 'Admin', 'Updated event: Earthquake Drill', '2025-10-28 18:37:50'),
(52, 'Angelie Garcia', 'Updated user', '2025-10-28 18:39:56'),
(53, 'Christzyl Ann Casiño', 'Created user REG0685 with QR code', '2025-10-29 04:11:46'),
(54, 'Kristel Joy Seno', 'Created user REG4241 with QR code', '2025-10-30 14:38:56'),
(55, 'Admin', 'Created event: Acquintance Party', '2025-10-30 14:39:58'),
(56, 'Admin', 'Updated event: Acquintance Party', '2025-10-30 14:40:10'),
(57, 'Xyrel Valledor', 'Created user REG9815 with QR code', '2025-10-30 14:53:34'),
(70, 'System', 'Created new event: Trial for email notification and sent email notifications.', '2025-10-30 15:37:40'),
(71, 'System', 'Created new event: Example Event and sent email notifications.', '2025-11-23 17:28:17'),
(72, 'Admin', 'Deleted event id: 15', '2025-11-23 17:28:54'),
(73, 'Juan Dela Cruz', 'Created user REG2956 with QR code', '2025-11-23 17:44:47'),
(74, 'Juan Dela Cruz', 'Updated user', '2025-11-23 17:56:40'),
(75, 'Admin', 'Deleted User 46', '2025-11-23 17:57:25'),
(76, 'Juan Dela Cruz', 'Created user REG3878 with QR code', '2025-11-23 17:57:47'),
(77, 'Admin', 'Deleted User 47', '2025-11-23 17:59:42'),
(78, 'Juan Dela Cruz', 'Created user REG8771 with QR code', '2025-11-23 18:00:04'),
(79, 'Admin', 'Deleted User 48', '2025-11-23 18:00:38'),
(80, 'Juan Dela Cruz', 'Created user REG1448 with QR code', '2025-11-23 18:33:39'),
(81, 'Juan Dela Cruz 2', 'Created user REG9900 with QR code', '2025-11-23 18:41:34'),
(82, 'Clark Lomopog', 'Updated user', '2025-11-23 19:07:57'),
(83, 'System', 'Created new event: Example Event and sent email notifications.', '2025-11-23 19:11:27'),
(84, 'Admin', 'Deleted event id: 16', '2025-11-23 19:11:56'),
(85, 'Admin', 'Deleted event id: 14', '2025-11-23 19:19:08'),
(86, 'Admin', 'Updated event: Sci-Math', '2025-11-23 19:19:23'),
(87, 'Admin', 'Updated event: TrailBlazers', '2025-11-23 19:19:43'),
(88, 'System', 'Created new event: Example Event and sent email notifications.', '2025-11-25 06:14:35'),
(89, 'Admin', 'Deleted event id: 17', '2025-11-25 06:15:36'),
(90, 'System', 'Created new event: Example Event and sent email notifications.', '2025-11-25 06:17:08'),
(91, 'Admin', 'Deleted event id: 18', '2025-11-25 06:17:51'),
(92, 'System', 'Created new event: Example Event and sent email notifications.', '2025-11-25 06:18:12'),
(93, 'Admin', 'Updated event: Example Event', '2025-11-25 06:19:30'),
(94, 'Admin', 'Deleted event id: 19', '2025-11-25 06:19:33'),
(95, 'System', 'Created new event: Example Event and sent email notifications.', '2025-11-25 06:26:31'),
(96, 'Admin', 'Deleted event id: 20', '2025-11-25 06:27:58'),
(97, 'System', 'Created new event: Example Event and sent email notifications.', '2025-11-25 06:28:15');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `location` varchar(150) DEFAULT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `name`, `date`, `location`, `description`) VALUES
(1, 'Sci-Math', '2025-10-24', 'USTP-Villanueva', 'Science and Mathematics month celebration.'),
(2, 'Moglooween USTP', '2025-11-02', 'USTP-Villanuva Campus', 'come and watch horror films'),
(3, 'TrailBlazers', '2025-10-25', 'USTP-Villanueva', 'Lorem Ipsum dolor'),
(4, 'Earthquake Drill', '2025-10-25', 'USTP-Villanueva Unity Building 3rd Floor', 'A brief comprehension to assist student what to do during earthquake.'),
(7, 'Misamis Oriental E-Sports Organization', '2025-10-28', 'LGU - Villanuva SK', 'Open to all players Around Misamis Oriental.'),
(8, 'Acquintance Party', '2025-10-29', 'Villanueva Gymnasium', 'A USTP event open to all levels.');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `code` varchar(10) NOT NULL,
  `expires_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`id`, `email`, `code`, `expires_at`) VALUES
(8, 'christzylcasino@gmail.com', '649013', '2025-11-25 14:57:43'),
(11, 'mavisiw388@gamepec.com', '105452', '2025-11-27 20:52:59');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `reg_id` varchar(10) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `gender` varchar(20) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `password` varchar(255) NOT NULL DEFAULT '81dc9bdb52d04dc20036dbd8313ed055',
  `reg_code` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `qr_code` varchar(255) DEFAULT NULL,
  `role` varchar(20) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `reg_id`, `name`, `email`, `contact`, `gender`, `address`, `state`, `country`, `password`, `reg_code`, `created_at`, `qr_code`, `role`) VALUES
(1, NULL, 'Administrator', 'admin@eventsystem.com', '09123456789', 'Male', 'Admin Office', 'Misamis Oriental', 'Philippines', 'e88df8596ff8847e232b1e4b1b5ffde2', 'REG-ADMIN', '2025-10-21 18:35:47', NULL, 'admin'),
(39, 'REG6034', 'Angelie Garcia', 'garciaangelie04@gmail.com', '09361614119', 'Female', 'Purok 18-Lower, Dayawan', 'Misamis Oriental', 'Villanueva', '482c811da5d5b4bc6d497ffa98491e38', '', '2025-10-28 16:50:11', 'qrcodes/REG6034.png', 'user'),
(40, 'REG9437', 'Clark Lomopog', 'lomopog.clark777@gmail.com', '09656106443', 'Male', 'Brgy. Poblacion 2 Mutya', 'Misamis Oriental', 'Villanueva', '052facee2cc55f79d6737d4aec7574a6', '', '2025-10-28 17:05:03', 'qrcodes/REG9437.png', 'organizer'),
(42, 'REG3156', 'Jerriel Cuizon', 'cuizon.jerriel@gmail.com', '09972439107', 'Male', 'bgry. Katipunan Zone 4', 'Misamis Oriental', 'Villanueva', '482c811da5d5b4bc6d497ffa98491e38', '', '2025-10-28 18:33:35', 'qrcodes/REG3156.png', 'user'),
(43, 'REG0685', 'Christzyl Ann A. Casiño', 'christzylcasino@gmail.com', '09517072294', 'Female', 'Zone 2 St.Ana', 'Misamis Oriental', 'Tagoloan', '9cc59149d01114f18ad03b908a6dc1a3', '', '2025-10-29 04:11:46', 'qrcodes/REG0685.png', 'user'),
(44, 'REG4241', 'Kristel Joy Seno', 'senokristeljoy9@gmail.com', '09816173852', 'Male', 'Zone 8, Poblacion', 'Misamis Oriental', 'Tagoloan', '482c811da5d5b4bc6d497ffa98491e38', '', '2025-10-30 14:38:56', 'qrcodes/REG4241.png', 'user'),
(45, 'REG9815', 'Xyrell Valledor', 'xyrellevalledorr@gmail.com', '09654957707', 'Male', 'Poblacion 1', 'Misamis Oriental', 'Villanueva', '482c811da5d5b4bc6d497ffa98491e38', '', '2025-10-30 14:53:34', 'qrcodes/REG9815.png', 'user'),
(52, 'REG3576', 'clarky san', 'clarklomopog02@gmail.com', '09761775410', 'Male', 'Brgy. Poblacion 2 Mutya', 'Misamis Oriental', 'Villanueva', '369bc2e57c5c9377f69c53d068a0320a', '', '2025-11-26 15:08:53', 'qrcodes/REG3576.png', 'user'),
(62, 'REG5703', 'Jascent Saguba', 'jascentsaguba619@gmail.com', '09852251574', 'Male', 'Zone 5, Sta.Ana', 'Misamis Oriental', 'Tagoloan', '482c811da5d5b4bc6d497ffa98491e38', '', '2025-11-27 11:40:54', 'qrcodes/REG5703.png', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `attendance_event_fk` (`event_id`);

--
-- Indexes for table `audit_logs`
--
ALTER TABLE `audit_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `reg_id` (`reg_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `audit_logs`
--
ALTER TABLE `audit_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=161;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `password_resets`
--
ALTER TABLE `password_resets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attendance`
--
ALTER TABLE `attendance`
  ADD CONSTRAINT `attendance_event_fk` FOREIGN KEY (`event_id`) REFERENCES `events` (`id`),
  ADD CONSTRAINT `attendance_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
