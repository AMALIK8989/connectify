-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 23, 2025 at 05:25 PM
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
-- Table structure for table `hobbies_and_interests`
--

CREATE TABLE `hobbies_and_interests` (
  `ID` int(11) NOT NULL,
  `HOBBY_NAME` varchar(100) DEFAULT NULL,
  `HOBBY_EMOJI` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hobbies_and_interests`
--

INSERT INTO `hobbies_and_interests` (`ID`, `HOBBY_NAME`, `HOBBY_EMOJI`) VALUES
(1, 'Reading', '📚'),
(2, 'Gaming', '🎮'),
(3, 'Cooking', '👩‍🍳'),
(4, 'Photography', '📸'),
(5, 'Traveling', '✈️'),
(6, 'Swimming', '🏊‍♀️'),
(7, 'Cycling', '🚴‍♂️'),
(8, 'Hiking', '🥾'),
(9, 'Painting', '🎨'),
(10, 'Drawing', '✏️'),
(11, 'Writing', '📝'),
(12, 'Dancing', '💃'),
(13, 'Yoga', '🧘‍♀️'),
(14, 'Fitness', '🏋️‍♂️'),
(15, 'Running', '🏃‍♀️'),
(16, 'Fishing', '🎣'),
(17, 'Camping', '🏕️'),
(18, 'Birdwatching', '🦜'),
(19, 'Gardening', '🌱'),
(20, 'Knitting', '🧶'),
(21, 'Sewing', '🧵'),
(22, 'Pottery', '🏺'),
(23, 'Baking', '🍰'),
(24, 'Board Games', '🎲'),
(25, 'Puzzles', '🧩'),
(26, 'Chess', '♟️'),
(27, 'Video Editing', '🎬'),
(28, 'Music Production', '🎧'),
(29, 'Playing Guitar', '🎸'),
(30, 'Playing Piano', '🎹'),
(31, 'Singing', '🎤'),
(32, 'DJing', '🎛️'),
(33, 'Stand-Up Comedy', '🎙️'),
(34, 'Magic Tricks', '🪄'),
(35, 'Collecting Coins', '🪙'),
(36, 'Collecting Stamps', '📮'),
(37, 'Bird Watching', '🦉'),
(38, 'Astronomy', '🔭'),
(39, 'Geocaching', '🗺️'),
(40, 'Rock Climbing', '🧗‍♀️'),
(41, 'Surfing', '🏄‍♀️'),
(42, 'Skateboarding', '🛹'),
(43, 'Snowboarding', '🏂'),
(44, 'Skiing', '🎿'),
(45, 'Horseback Riding', '🐎'),
(46, 'Archery', '🏹'),
(47, 'Martial Arts', '🥋'),
(48, 'Boxing', '🥊'),
(49, 'Karate', '🥋'),
(50, 'Judo', '🥋'),
(51, 'Taekwondo', '🥋'),
(52, 'Fencing', '🤺'),
(53, 'Golf', '⛳'),
(54, 'Tennis', '🎾'),
(55, 'Badminton', '🏸'),
(56, 'Basketball', '🏀'),
(57, 'Football', '⚽'),
(58, 'Baseball', '⚾'),
(59, 'Volleyball', '🏐'),
(60, 'Rugby', '🏉'),
(61, 'Cricket', '🏏'),
(62, 'Table Tennis', '🏓'),
(63, 'Bowling', '🎳'),
(64, 'Darts', '🎯'),
(65, 'Billiards', '🎱'),
(66, 'Snooker', '🎱'),
(67, 'Curling', '🥌'),
(68, 'Lacrosse', '🥍'),
(69, 'Handball', '🤾‍♂️'),
(70, 'Water Polo', '🤽‍♂️'),
(71, 'Synchronized Swimming', '🤽‍♀️'),
(72, 'Canoeing', '🛶'),
(73, 'Kayaking', '🛶'),
(74, 'Rowing', '🚣‍♀️'),
(75, 'Scuba Diving', '🤿'),
(76, 'Snorkeling', '🤿'),
(77, 'Paragliding', '🪂'),
(78, 'Skydiving', '🪂'),
(79, 'Bungee Jumping', '🪂'),
(80, 'Hang Gliding', '🪂'),
(81, 'Zip Lining', '🪂'),
(82, 'Caving', '🧗‍♂️'),
(83, 'Caving', '🧗‍♀️'),
(84, 'Speleology', '🧗‍♂️'),
(85, 'Caving', '🧗‍♀️'),
(86, 'Geology', '🪨'),
(87, 'Meteorology', '🌦️'),
(88, 'Volunteering', '🤝'),
(89, 'Charity Work', '❤️'),
(90, 'Fundraising', '💰'),
(91, 'Community Service', '🏘️'),
(92, 'Social Work', '👥'),
(93, 'Animal Rescue', '🐶'),
(94, 'Environmental Activism', '🌍'),
(95, 'Political Activism', '🗳️'),
(96, 'Human Rights Advocacy', '✊'),
(97, 'LGBTQ+ Advocacy', '🏳️‍🌈'),
(98, 'Mental Health Advocacy', '🧠'),
(99, 'Disability Rights Advocacy', '♿'),
(100, 'Gender Equality Advocacy', '♀️'),
(101, 'Racial Justice Advocacy', '✊🏿'),
(102, 'Climate Change Advocacy', '🌡️'),
(103, 'Peacebuilding', '☮️'),
(104, 'Conflict Resolution', '🕊️'),
(105, 'International Relations', '🌐'),
(106, 'Diplomacy', '🤝'),
(107, 'Public Speaking', '🎙️'),
(108, 'Debate', '🗣️'),
(109, 'Negotiation', '🤝'),
(110, 'Leadership', '👔'),
(111, 'Entrepreneurship', '💼'),
(112, 'Business Strategy', '📈'),
(113, 'Marketing', '📊'),
(114, 'Sales', '💰'),
(115, 'Finance', '💵'),
(116, 'Accounting', '📚'),
(117, 'Human Resources', '👥'),
(118, 'Project Management', '📋'),
(119, 'Operations Management', '⚙️'),
(120, 'Supply Chain Management', '📦'),
(121, 'Logistics', '🚚'),
(122, 'Customer Service', '☎️'),
(123, 'Product Management', '📦'),
(124, 'Quality Assurance', '✅'),
(125, 'Risk Management', '⚠️'),
(126, 'Compliance', '📜'),
(127, 'Legal Affairs', '⚖️'),
(128, 'Intellectual Property', '📄'),
(129, 'Corporate Social Responsibility', '🌱'),
(130, 'Sustainability', '🌿'),
(131, 'Innovation', '💡'),
(132, 'Research and Development', '🔬'),
(133, 'Technology', '💻'),
(134, 'Software Development', '👨‍💻'),
(135, 'Web Development', '🌐'),
(136, 'App Development', '📱'),
(137, 'Game Development', '🎮'),
(138, 'Artificial Intelligence', '🤖'),
(139, 'Machine Learning', '🧠'),
(140, 'Blockchain', '🔗'),
(141, 'Cybersecurity', '🔐'),
(142, 'Data Science', '📊'),
(143, 'Cloud Computing', '☁️'),
(144, 'Internet of Things', '🌐'),
(145, 'Augmented Reality', '🕶️'),
(146, 'Virtual Reality', '🕶️'),
(147, 'Robotics', '🤖'),
(148, 'Automation', '🤖'),
(149, 'Big Data', '📊'),
(150, '5G Technology', '📶'),
(151, 'Quantum Computing', '⚛️'),
(152, 'Nanotechnology', '🔬'),
(153, 'Biotechnology', '🧬'),
(154, 'Genomics', '🧬'),
(155, 'Pharmacology', '💊'),
(156, 'Pharmacogenomics', '🧬'),
(157, 'Immunology', '🧬'),
(158, 'Neurology', '🧠'),
(159, 'Psychiatry', '🧠'),
(160, 'Psychology', '🧠'),
(161, 'Sociology', '👥'),
(162, 'Anthropology', '🧑‍🤝‍🧑'),
(163, 'Pole Dancing', '👠'),
(164, 'Burlesque', '👯‍♀️'),
(165, 'Erotic Dancing', '💃'),
(166, 'Tantric Practices', '🧘‍♂️'),
(167, 'Adult Roleplay', '🎭'),
(168, 'Bondage', '⛓️'),
(169, 'Fetish Exploration', '🖤'),
(170, 'Swinging', '🔁'),
(171, 'Sex Toy Collecting', '🍆'),
(172, 'Erotic Photography', '📸'),
(173, 'Boudoir Photography', '📷'),
(174, 'Watching Adult Films', '🎞️'),
(175, 'Cam Shows', '📹'),
(176, 'Writing Erotica', '📝'),
(177, 'Reading Erotica', '📖'),
(178, 'NSFW Art Creation', '🎨'),
(179, 'Cosplay (Adult)', '🧝‍♀️'),
(180, 'Exotic Massage', '💆‍♀️'),
(181, 'Adult Forums Participation', '💬'),
(182, 'NSFW Memes', '😏'),
(183, 'Online Sexting', '📱'),
(184, 'Phone Sex', '📞'),
(185, 'Adult Podcasts', '🎧'),
(186, 'Adult Comics Reading', '📚'),
(187, 'OnlyFans Content Creation', '📸'),
(188, 'NSFW VR Experiences', '🕶️'),
(189, 'Lingerie Modeling', '👙'),
(190, 'Sexual Wellness Blogging', '🖋️'),
(191, 'Striptease Practice', '🎶'),
(192, 'Body Worship', '💋'),
(193, 'Pet Play', '🐾'),
(194, 'Dom/Sub Roleplay', '🖤'),
(195, 'Kink Education', '📚'),
(196, 'BDSM Scene Planning', '🪢'),
(197, 'Sensual Dancing', '💃'),
(198, 'Erotic Massage Practice', '👐'),
(199, 'NSFW Gaming', '🎮'),
(200, 'Adult Toy Testing', '🧸'),
(201, 'Exhibitionism', '👀'),
(202, 'Voyeurism (Consensual)', '🔍'),
(203, 'Furry Roleplay', '🐺'),
(204, 'Adult Fanfiction Writing', '📝'),
(205, 'Spicy Content Creation', '🔥'),
(206, 'Body Painting (Erotic)', '🎨'),
(207, 'Latex Fashion', '🖤'),
(208, 'Leather Play', '🧥'),
(209, 'Foot Fetish Content', '🦶'),
(210, 'Lingerie Try-Ons', '🛍️'),
(211, 'Strip Poker', '🃏'),
(212, 'Erotic ASMR', '🎧'),
(213, 'Sexting Roleplay', '💬');

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
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `retype_email`, `date_of_birth`, `age`, `password`, `retype_password`, `content_type`, `nsfw`, `sfw`, `total_friends`, `hobbies_and_interests`, `total_subscribers`, `total_followers`, `status`, `verification_status`, `total_messages`, `last_message_timestamp`, `created_at`, `updated_at`) VALUES
(1, 'user tester', 'user2324', 'user@use.com', '', '2008-01-01', 17, '$2y$10$1eMKhgWO1WKFKTEFo4tpc.aZdaOTFK0kT3vvoAlC.k0THX6pLa0OG', '', 'SFW', 0, 1, 0, NULL, 0, 0, 'offline', 'unverified', 0, NULL, '2025-05-05 15:33:48', '2025-05-05 15:33:48'),
(2, 'user tester 1', 'usertester1354', 'usertester@user.com', '', '1999-01-09', 26, '$2y$10$3VwOxpKNp1BqpgsCzEKCqOdSocenUqx9x6iWT3GiHUTKswbf0qqxK', '', 'NSFW', 0, 1, 0, NULL, 0, 0, 'offline', 'unverified', 0, NULL, '2025-05-07 15:38:15', '2025-05-07 15:38:15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `hobbies_and_interests`
--
ALTER TABLE `hobbies_and_interests`
  ADD PRIMARY KEY (`ID`);

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
-- AUTO_INCREMENT for table `hobbies_and_interests`
--
ALTER TABLE `hobbies_and_interests`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=214;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
