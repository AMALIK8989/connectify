-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 23, 2025 at 05:59 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `connectify`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL COMMENT 'Full Name of the user',
  `username` varchar(50) NOT NULL COMMENT 'Unique username',
  `email` varchar(100) NOT NULL COMMENT 'Email address',
  `retype_email` varchar(100) NOT NULL COMMENT 'Retyped email for confirmation',
  `date_of_birth` date NOT NULL COMMENT 'User''s date of birth',
  `age` tinyint(3) UNSIGNED NOT NULL COMMENT 'User''s age',
  `password` varchar(255) NOT NULL COMMENT 'Hashed password',
  `retype_password` varchar(255) NOT NULL COMMENT 'Retyped password (for frontend verification only)',
  `content_type` enum('SFW','NSFW') NOT NULL COMMENT 'Content type preference',
  `nsfw` tinyint(1) DEFAULT 0 COMMENT 'If user can post/view NSFW content',
  `sfw` tinyint(1) DEFAULT 1 COMMENT 'If user can post/view SFW content',
  `total_friends` int(10) UNSIGNED DEFAULT 0 COMMENT 'Total number of friends',
  `hobbies_and_interests` text DEFAULT NULL COMMENT 'Comma-separated list of hobbies & interests',
  `total_subscribers` int(10) UNSIGNED DEFAULT 0 COMMENT 'Total channel/page subscribers',
  `total_followers` int(10) UNSIGNED DEFAULT 0 COMMENT 'Total followers on profile',
  `status` enum('online','offline') DEFAULT 'offline' COMMENT 'User current status',
  `verification_status` enum('verified','unverified') DEFAULT 'unverified' COMMENT 'Whether user is verified',
  `total_messages` int(10) UNSIGNED DEFAULT 0 COMMENT 'Total messages sent or received',
  `last_message_timestamp` datetime DEFAULT NULL COMMENT 'Last message timestamp',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'Profile creation timestamp',
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Last updated timestamp'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
