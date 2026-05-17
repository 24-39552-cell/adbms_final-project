-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: sql113.infinityfree.com
-- Generation Time: May 17, 2026 at 06:41 AM
-- Server version: 11.4.10-MariaDB
-- PHP Version: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `if0_41884758_quickattend`
--

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`id`, `session_id`, `student_name`, `date`, `subject`, `section`, `distance`, `status`, `timestamp`) VALUES
(31, '099171c56ba64c0cc8eb3434ec104d1a', 'Kendric  Justine Faz', '2026-05-17', 'ADBMS', '2207', 7.59564, 'present', '2026-05-17 11:49:25'),
(32, '099171c56ba64c0cc8eb3434ec104d1a', 'Glen Talban', '2026-05-17', 'ADBMS', '2207', 10.5416, 'present', '2026-05-17 11:51:20'),
(33, '099171c56ba64c0cc8eb3434ec104d1a', 'Steven Mercado', '2026-05-17', 'ADBMS', '2207', 1.27363, 'present', '2026-05-17 11:52:19'),
(34, '099171c56ba64c0cc8eb3434ec104d1a', 'Mico Lazo', '2026-05-17', 'ADBMS', '2207', 11.3413, 'present', '2026-05-17 11:53:57'),
(35, 'd0d74c6122371b7e3ee93660e5f14cd4', 'Kendric  Justine Faz', '2026-05-17', 'Information Management', '2207', 7.18532, 'present', '2026-05-17 11:55:30'),
(36, 'd0d74c6122371b7e3ee93660e5f14cd4', 'Shawn Tolentino', '2026-05-17', 'Information Management', '2207', 3.77462, 'present', '2026-05-17 11:55:49'),
(37, 'd0d74c6122371b7e3ee93660e5f14cd4', 'Tristan Jace Catibog', '2026-05-17', 'Information Management', '2207', 7.75416, 'present', '2026-05-17 11:55:56'),
(38, 'd0d74c6122371b7e3ee93660e5f14cd4', 'Louis Navarro', '2026-05-17', 'Information Management', '2207', 12.7193, 'present', '2026-05-17 11:56:11'),
(40, 'd0d74c6122371b7e3ee93660e5f14cd4', 'Steven Mercado', '2026-05-17', 'Information Management', '2207', 3.7782, 'present', '2026-05-17 11:56:45'),
(42, '28125b57745ad95281321a94ec496bb2', 'Talban, Glenford B.', '2026-05-17', 'ComNet', '2207', 5.60815, 'present', '2026-05-17 11:59:12'),
(43, '28125b57745ad95281321a94ec496bb2', 'John Denver Robles', '2026-05-17', 'ComNet', '2207', 4.79471, 'present', '2026-05-17 11:59:27'),
(52, 'ea8035312febf1ceb8a0967b140f2827', 'Glenford B Talban', '2026-05-17', 'ADBMS', 'BSIT 2207', 6.20472, 'present', '2026-05-17 14:39:41'),
(53, '4ba2b09b8a380349c7ff67dac46707a3', 'Glenford B Talban', '2026-05-17', 'ADBMS', 'BSIT 2207', 7.63647, 'present', '2026-05-17 14:43:39'),
(54, 'b2c08fd614698c33f2402b09a8178135', 'Iverson Torres', '2026-05-17', 'Physical Education 2', '2207', 9.41156, 'present', '2026-05-17 16:32:19'),
(55, 'b2c08fd614698c33f2402b09a8178135', 'Karl Petallo', '2026-05-17', 'Physical Education 2', '2207', 9.39622, 'present', '2026-05-17 16:32:37'),
(56, '69f755267ef7d421f39246562854c96d', 'Niel Patrick Mamiit', '2026-05-17', 'Data Analysis', '2207', 5.70296, 'present', '2026-05-17 16:34:24'),
(57, '69f755267ef7d421f39246562854c96d', 'Angela Therese Bunda', '2026-05-17', 'Data Analysis', '2207', 5.70296, 'present', '2026-05-17 16:34:44'),
(58, '69f755267ef7d421f39246562854c96d', 'Justin Rey Morota', '2026-05-17', 'Data Analysis', '2207', 6.35823, 'present', '2026-05-17 16:34:57'),
(59, '69f755267ef7d421f39246562854c96d', 'Julian Marl', '2026-05-17', 'Data Analysis', '2207', 4.87301, 'present', '2026-05-17 16:34:59'),
(60, '69f755267ef7d421f39246562854c96d', 'Rowena Mercado', '2026-05-17', 'Data Analysis', '2207', 5.70375, 'present', '2026-05-17 16:35:18'),
(61, '69f755267ef7d421f39246562854c96d', 'Johann Casapao', '2026-05-17', 'Data Analysis', '2207', 5.70059, 'present', '2026-05-17 16:35:42'),
(62, 'b8301d9f892b0c88d392a72d8604c7e0', 'Martin Ubalde', '2026-05-17', 'Purposive Communication', '2207', 12.0255, 'present', '2026-05-17 16:37:51'),
(63, 'b8301d9f892b0c88d392a72d8604c7e0', 'Lanz Ronan Cortez', '2026-05-17', 'Purposive Communication', '2207', 6.98628, 'present', '2026-05-17 16:38:09'),
(64, 'b8301d9f892b0c88d392a72d8604c7e0', 'Tristan Jace Catibog', '2026-05-17', 'Purposive Communication', '2207', 5.89565, 'present', '2026-05-17 16:38:11'),
(65, 'b8301d9f892b0c88d392a72d8604c7e0', 'Rafaelle Lazo', '2026-05-17', 'Purposive Communication', '2207', 12.0244, 'present', '2026-05-17 16:38:12'),
(66, 'b8301d9f892b0c88d392a72d8604c7e0', 'John Lloyd Mamiit', '2026-05-17', 'Purposive Communication', '2207', 7.40825, 'present', '2026-05-17 16:38:24'),
(67, 'b8301d9f892b0c88d392a72d8604c7e0', 'Luois Catibog', '2026-05-17', 'Purposive Communication', '2207', 12.0263, 'present', '2026-05-17 16:38:31'),
(68, 'b8301d9f892b0c88d392a72d8604c7e0', 'Kristian Pernia', '2026-05-17', 'Purposive Communication', '2207', 6.9559, 'present', '2026-05-17 16:38:40'),
(69, 'b8301d9f892b0c88d392a72d8604c7e0', 'Martin Gabriel Pamplona', '2026-05-17', 'Purposive Communication', '2207', 10.3531, 'present', '2026-05-17 16:38:56');

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `subject`, `section`, `professor_name`, `lat`, `lng`, `radius`, `status`, `created_at`) VALUES
('099171c56ba64c0cc8eb3434ec104d1a', 'ADBMS', '2207', 'Aileen Suarez', '13.97994750', '121.16419640', 50, 'completed', '2026-05-17 11:49:00'),
('28125b57745ad95281321a94ec496bb2', 'ComNet', '2207', 'Jonnah Melo', '13.97994270', '121.16415730', 50, 'completed', '2026-05-17 11:58:45'),
('4ba2b09b8a380349c7ff67dac46707a3', 'ADBMS', 'BSIT 2207', 'Aileen Suarez', '13.97991710', '121.16412930', 50, 'completed', '2026-05-17 14:43:03'),
('69f755267ef7d421f39246562854c96d', 'Data Analysis', '2207', 'Mikhael Cuenca', '13.97993830', '121.16414790', 50, 'completed', '2026-05-17 16:34:10'),
('b2c08fd614698c33f2402b09a8178135', 'Physical Education 2', '2207', 'Shiela Calvelo', '13.97995580', '121.16410950', 50, 'completed', '2026-05-17 16:31:06'),
('b8301d9f892b0c88d392a72d8604c7e0', 'Purposive Communication', '2207', 'Jeff Metrillo', '13.98004840', '121.16413490', 50, 'completed', '2026-05-17 16:37:40'),
('d0d74c6122371b7e3ee93660e5f14cd4', 'Information Management', '2207', 'Lovely Hernandez', '13.97992640', '121.16421000', 50, 'completed', '2026-05-17 11:55:22');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
