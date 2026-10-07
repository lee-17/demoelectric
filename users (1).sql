-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 06, 2026 at 12:18 PM
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
-- Database: `electriccompany`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `zip_code` varchar(10) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `user_type` enum('customer','admin') DEFAULT 'customer',
  `is_active` tinyint(1) DEFAULT 1,
  `email_verified` tinyint(1) DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `address`, `city`, `state`, `zip_code`, `password`, `user_type`, `is_active`, `email_verified`, `created_at`, `updated_at`) VALUES
(1, 'Ilya', 'Romanov', 'ir@gmail.com', '(091) 234-56780', '124 hehehe', 'Quezon City', 'GA', '45678', '$2y$10$QcCSFoT29KYhbycE98ZQheyUuc4yMwKvb0tDGzab89zye58w3ESAG', 'customer', 1, 0, '2026-09-27 09:19:54', '2026-09-27 09:19:54'),
(2, 'Arby', 'Puno', 'boogie@gmail.com', '(092) 222-22222', '124 antipolo', 'Caloocan', 'GA', '56789', '$2y$10$C8kzsdqivd0sXWWv60JqZOgfIyKEWgdS9hCU//.FvR8R1ywi8QM1y', 'customer', 1, 0, '2026-09-29 10:05:51', '2026-09-29 10:05:51'),
(3, 'aki', 'lee', 'al@gmail.com', '(092) 323-23232', '143 ILY STREET', 'Manila', 'FL', '45679', '$2y$10$lAjXJTBU7hPIhVOrduSlRuxoATx8UlmR8XLEq4y81R7/9At3rmcx.', 'customer', 1, 0, '2026-09-29 11:02:27', '2026-09-29 11:02:27'),
(4, 'Jeon', 'Jungkook', 'jk@gmail.com', '(091) 111-11111', '143 Purple Street', 'Makati City', 'AL', '14348', '$2y$10$Tl4/IKaGT/Jbq0TLwm9PE.IXnUIEFosSnxMMlPRm5KrOaiGVRWcUK', 'customer', 1, 0, '2026-10-06 09:46:36', '2026-10-06 09:46:36'),
(5, 'kiera', 'lim', 'kl@gmail.com', '(094) 545-45454', '234 haha', 'Makati', 'FL', '45678', '$2y$10$ZXtLvGmToXw0O8Nf7sCO3.cAKK4UNHsk16akQ5myiFOYFcRlsEG9a', 'customer', 1, 0, '2026-10-06 09:51:31', '2026-10-06 09:51:31');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
