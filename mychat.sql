-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 01, 2020 at 03:20 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mychat`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `user_pass` varchar(100) NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `user_profile` varchar(255) NOT NULL,
  `user_country` text NOT NULL,
  `user_gender` text NOT NULL,
  `forgotten_answer` varchar(100) NOT NULL,
  `log_in` varchar(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `user_pass`, `user_email`, `user_profile`, `user_country`, `user_gender`, `forgotten_answer`, `log_in`) VALUES
(3, 'paul', 'paulpaul1', 'paul@paul', 'images/user2.png.74', 'Lithuania', 'Male', 'bro', 'Offline'),
(4, 'tom', 'pualpaul', 'tom@tom', 'images/user.png', 'Lithuania', 'Male', '', 'Offline'),
(5, 'hulk', 'Julius2008', 'juliusjonasomg@gmail.com', 'images/user2.png.7', 'Lithuania', 'Male', '', 'Offline'),
(6, 'rick', 'asasasas', 'as@as', 'images/user.png', 'USA', 'Male', 'rick', 'Online');

-- --------------------------------------------------------

--
-- Table structure for table `users_chat`
--

CREATE TABLE `users_chat` (
  `msg_id` int(11) NOT NULL,
  `sender_username` varchar(100) NOT NULL,
  `receiver_username` varchar(100) NOT NULL,
  `msg_content` varchar(255) NOT NULL,
  `msg_status` text NOT NULL,
  `msg_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users_chat`
--

INSERT INTO `users_chat` (`msg_id`, `sender_username`, `receiver_username`, `msg_content`, `msg_status`, `msg_date`) VALUES
(1, 'paul', 'paul', 'k', 'read', '2020-05-21 23:23:45'),
(2, 'paul', 'paul', 'k', 'read', '2020-05-21 23:23:57'),
(3, 'paul', 'paul', 'y', 'read', '2020-05-21 23:24:04'),
(4, 'paul', 'paul', 'hey', 'read', '2020-05-21 23:47:58'),
(5, 'paul', 'tom', 'yoo', 'read', '2020-05-21 23:49:25'),
(6, 'paul', 'tom', 'yoo', 'read', '2020-05-21 23:49:32'),
(7, 'tom', 'paul', 'yo', 'read', '2020-05-22 13:02:28'),
(8, 'hulk', 'paul', 'joke', 'read', '2020-05-24 12:05:50'),
(9, 'hulk', 'tom', 'uch', 'unread', '2020-05-24 12:06:34'),
(10, 'hulk', 'hulk', 'nan', 'read', '2020-05-24 12:06:54'),
(11, 'rick', 'rick', 'hello', 'read', '2020-05-29 00:31:13');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `users_chat`
--
ALTER TABLE `users_chat`
  ADD PRIMARY KEY (`msg_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users_chat`
--
ALTER TABLE `users_chat`
  MODIFY `msg_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
