-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 15, 2024 at 02:59 PM
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
-- Database: `mvc_app_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `organization` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `profile_image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `first_name`, `last_name`, `email`, `phone`, `birthday`, `organization`, `location`, `profile_image`, `created_at`, `updated_at`) VALUES
(1, 'Hakim', '$2y$10$EaDEO4jbaXuA85OaZOVLDOglCMB7YThwL1DhjAlN/XtqJyVn2fJX2', 'Hakimuddin', 'Ratlam', 'cool786hakku@gmail.com', '+965 67625148', '2001-01-18', 'Company A', 'Kuwait', 'profile1.jpg', '2024-12-11 12:15:15', '2024-12-14 10:20:43'),
(2, 'Ammar', '$2y$10$t1fHpZCL.3poqUrVtBx1/e2UNfimvUoWPkBbdqUUIOs0Dwa/J6vTu', 'Ammar', 'Raj', 'ammarraj953@gmail.com', '+965  60049853', '2000-06-20', 'Company B', 'India', 'profile2.jpg', '2024-12-11 12:16:06', '2024-12-14 11:37:27'),
(3, 'Taher', '$2y$10$QzXJoKEro.sKgEoElIVBduo76qIJq0CtwkKzP6mWh20qCFoSG4rEK', 'Taher', 'Vakil', 'tahervakil53@gmail.com', '+965 65675051', '1999-10-10', 'Company C', 'Kuwait', 'profile3.jpg', '2024-12-11 12:17:52', '2024-12-14 11:27:54'),
(4, 'Idrees', '$2y$10$j8Kh8q72Gmm5eMk7f.ffFOuN/95EUrU1I/22tr5Rt2RsV.xBQguCi', 'Idrees', 'Barnagarwala', 'idrees786@gmail.com', '+965 98035403', '1999-09-09', 'Company D', 'India', 'profile4.jpg', '2024-12-11 12:19:00', '2024-12-14 11:27:54'),
(5, 'Abbas', '$2y$10$Ar2a/Us3ZRh91UumciSm7.h0COfTHeC9zaJ5HVts9/AcNd37GydXC', 'Abbas', 'Jamdar', 'abbasjamdar53@gmail.com', '+965 66234755', '2000-11-08', 'Company E', 'Kuwait', 'profile5.jpg', '2024-12-11 12:21:53', '2024-12-14 11:27:54'),
(6, 'Hussain', '$2y$10$WwHsAKgb1bUwU0JW.VV4VuPgIwypDiX10kGlF7145HqgGbFVBXNgi', 'Hussain', 'Bhinderwala', 'hussain786@gmail.com', '+965 60032353', '1999-08-08', 'Company F', 'India', 'profile6.jpg', '2024-12-11 12:22:53', '2024-12-14 11:27:54'),
(7, 'Mohammed', '$2y$10$J9j.OuwLCmak20vb0mWQNO.uYwWO9z24JKaHp3KGzYJmJjUpnkNJi', 'Mohammed', 'Shahpur', 'mohammed786@gmail.com', '+965 55438052', '2000-06-10', 'Company G', 'Kuwait', 'profile7.jpg', '2024-12-11 12:29:18', '2024-12-14 11:27:54'),
(8, 'Murtaza', '$2y$10$bZ/.1ZiAutw4q52nK.fWteh31KBTd5vFE.eQwcvs5ZsLWvs0uX762', 'Murtaza', 'Sandal', 'murtaza786@gmail.com', '+91 94240 38752', '2002-06-14', 'Company H', 'India', 'profile8.jpg', '2024-12-11 12:30:47', '2024-12-14 11:27:54'),
(9, 'Safder', '$2y$10$8/u5PY/QSlyjvgo7ARODrucnRQlTFJ2eVOnejL9kvosFcR8Qcb7KK', 'Safder', 'Husain', 'hakku010@yahoo.com', '+965 97264969', '1969-10-28', 'Company I', 'Kuwait', 'profile9.jpg', '2024-12-11 12:32:28', '2024-12-14 13:10:51'),
(10, 'Zahid', '$2y$10$P4Z4gKywsHCVB.ZcJBHPtOjIkWh/wP1q79PU.wFVuCYFnFkV54ory', 'Zahid', 'Husain', 'zahidratlamwala339@gmail.com', '+965 67052152', '1971-08-15', 'Company J', 'India', 'uploads/users/user_675d756f53ff94.81135880.png', '2024-12-11 12:33:55', '2024-12-14 12:52:54');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
