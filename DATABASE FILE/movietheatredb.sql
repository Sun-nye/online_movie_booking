-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 14, 2024 at 04:17 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `movietheatredb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bookings`
--

CREATE TABLE `tbl_bookings` (
  `book_id` int(11) NOT NULL,
  `ticket_id` varchar(30) NOT NULL,
  `t_id` int(11) NOT NULL COMMENT 'theater id',
  `user_id` int(11) NOT NULL,
  `show_id` int(11) NOT NULL,
  `screen_id` int(11) NOT NULL,
  `no_seats` int(3) NOT NULL COMMENT 'number of seats',
  `amount` int(5) NOT NULL,
  `ticket_date` date NOT NULL,
  `date` date NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_bookings`
--

INSERT INTO `tbl_bookings` (`book_id`, `ticket_id`, `t_id`, `user_id`, `show_id`, `screen_id`, `no_seats`, `amount`, `ticket_date`, `date`, `status`) VALUES
(12, 'BKID6369842', 1, 4, 17, 3, 1, 380, '2021-04-15', '2021-04-15', 1),
(13, 'BKID2313964', 6, 5, 21, 6, 4, 2400, '2021-04-16', '2021-04-15', 1),
(14, 'BKID1766021', 6, 5, 22, 6, 2, 1200, '2021-04-16', '2021-04-16', 1),
(26, 'BKID1155430', 6, 6, 27, 6, 1, 7000, '2024-03-11', '2024-03-11', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_contact`
--

CREATE TABLE `tbl_contact` (
  `contact_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` int(11) NOT NULL,
  `subject` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_login`
--

CREATE TABLE `tbl_login` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL COMMENT 'email',
  `password` varchar(50) NOT NULL,
  `user_type` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_login`
--

INSERT INTO `tbl_login` (`id`, `user_id`, `username`, `password`, `user_type`) VALUES
(1, 0, 'admin', 'password', 0),
(2, 3, 'theatre', 'password', 1),
(3, 4, 'theatre2', 'password', 1),
(12, 2, 'harryden@gmail.com', 'password', 2),
(15, 14, 'USR295127', 'PWD195747', 1),
(17, 4, 'bruno@gmail.com', 'password', 2),
(18, 6, 'THR760801', 'PWD649976', 1),
(19, 5, 'james@gmail.com', 'password', 2),
(20, 6, 'hsusanwin@gmail.com', '46460000', 2),
(21, 7, 'hsusanwin@gmail.com', '0000', 2),
(22, 7, 'THR346957', 'PWD335570', 1),
(23, 8, 'thant@gmail.com', '1234567', 2),
(24, 9, 'thant@gmail.com', '1234567', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_movie`
--

CREATE TABLE `tbl_movie` (
  `movie_id` int(11) NOT NULL,
  `t_id` int(11) NOT NULL COMMENT 'theatre id',
  `movie_name` varchar(255) NOT NULL,
  `cast` varchar(500) NOT NULL,
  `desc` varchar(1000) NOT NULL,
  `release_date` date NOT NULL,
  `image` varchar(200) NOT NULL,
  `video_url` varchar(200) NOT NULL,
  `status` int(1) NOT NULL COMMENT '0 means active '
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_movie`
--

INSERT INTO `tbl_movie` (`movie_id`, `t_id`, `movie_name`, `cast`, `desc`, `release_date`, `image`, `video_url`, `status`) VALUES
(20, 6, 'Dune Part-II', 'Timothee Chalamet, Zendaya, Rebecca Ferguson, Javier Bardem, Josh Brolin,', 'This follow up film will explore the mythic journey of Paul Atreides as he unites with Chani and the Fremen while on a warpath of revenge against the conspirators who destroyed his family. Facing a choice between the love of his life and the fate of the known universe, he endeavors to prevent a terrible future only he can foresee.', '2024-02-29', 'images/dune.png', 'https://www.youtube.com/watch?v=U2Qp5pL3ovA', 0),
(21, 6, 'Kung Fu Panda 4', ' Jack BlackAwkwafinaViola Davis', 'After Po is tapped to become the Spiritual Leader of the Valley of Peace, he needs to find and train a new Dragon Warrior, while a wicked sorceress plans to re-summon all the master villains whom Po has vanquished to the spirit realm.', '2024-03-08', 'images/kung ful.jpg', 'https://www.youtube.com/watch?v=_inKs4eeHiI&t=5s', 0),
(23, 6, 'Drive away dolls', 'Margaret QualleyGeraldine ViswanathanBeanie Feldstein', 'Jamie regrets her breakup with her girlfriend, while Marian needs to relax. In search of a fresh start, they embark on an unexpected road trip to Tallahassee. Things quickly go awry when they cross paths with a group of inept criminals.', '2024-03-09', 'images/dolls.jpg', 'https://www.youtube.com/watch?v=_inKs4eeHiI', 0),
(24, 6, 'Mean Girls', ' Angourie Rice, Renee Rapp, Aulii Cravalho', 'Cady Heron is a hit with the Plastics, an A-list girl clique at her new school. But everything changes when she makes the mistake of falling for Aaron Samuels, the ex-boyfriend of alpha Plastic Regina George.', '2024-03-06', 'images/meangirl.png', 'https://www.youtube.com/watch?v=fFtdbEgnUOk', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_news`
--

CREATE TABLE `tbl_news` (
  `news_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `cast` varchar(100) NOT NULL,
  `news_date` date NOT NULL,
  `description` varchar(200) NOT NULL,
  `attachment` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_news`
--

INSERT INTO `tbl_news` (`news_id`, `name`, `cast`, `news_date`, `description`, `attachment`) VALUES
(3, 'Black Widow', 'Scarlett Johansson, Florence Pugh, David Harbour, Rachel Weisz', '2021-07-09', 'At birth the Black Widow (aka Natasha Romanova) is given to the KGB, which grooms her to become its ultimate operative.', 'news_images/blackwidow.jpg'),
(9, 'Shang-Chi and the Legend of the Ten Rings', 'Simu Liu, Awkwafina, Tony Leung, Fala Chen, Micheele Yeoh', '2021-09-14', 'Shang-Chi is a master of numerous unarmed and weaponry-based wushu styles, including the use of the gun, nunchaku, and jian.', 'news_images/shangchi.jpg'),
(10, 'The Eternals', 'Richard Madden, Salma Hayek, Angelina Jolie, Kit Harrington', '2021-11-04', 'The saga of the eternals, a race of immortal beings who lived on earth and shaped its history and civilizations.', 'news_images/eternals.jpg'),
(11, 'Inside out 2', 'Margaret QualleyGeraldine ViswanathanBeanie Feldstein', '2024-03-04', 'New Characters Involved', 'news_images/sw1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_otp_check`
--

CREATE TABLE `tbl_otp_check` (
  `id` int(11) NOT NULL,
  `otp` int(11) NOT NULL,
  `is_expired` tinyint(4) NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_otp_check`
--

INSERT INTO `tbl_otp_check` (`id`, `otp`, `is_expired`, `create_at`) VALUES
(1, 110886, 0, '2024-03-10 14:37:02'),
(2, 568391, 0, '2024-03-10 14:37:35'),
(3, 406591, 1, '2024-03-10 14:39:57'),
(4, 797938, 1, '2024-03-10 14:41:57'),
(5, 577884, 0, '2024-03-10 18:14:27'),
(6, 251118, 0, '2024-03-10 18:15:34'),
(7, 44532, 0, '2024-03-10 18:20:43'),
(8, 247121, 0, '2024-03-10 18:21:38'),
(9, 576664, 0, '2024-03-10 18:23:54'),
(10, 987250, 0, '2024-03-10 18:24:04'),
(11, 363073, 0, '2024-03-10 18:25:03'),
(12, 341446, 1, '2024-03-10 18:26:59'),
(13, 899836, 0, '2024-03-10 18:33:16'),
(14, 640280, 0, '2024-03-10 18:42:37'),
(15, 354308, 1, '2024-03-10 18:58:00'),
(16, 783065, 1, '2024-03-11 01:05:23'),
(17, 766035, 0, '2024-03-11 01:56:29'),
(18, 76946, 1, '2024-03-11 01:57:38'),
(19, 400846, 0, '2024-03-11 06:28:52'),
(20, 501942, 1, '2024-03-11 06:38:21'),
(21, 779055, 0, '2024-03-11 06:55:32'),
(22, 425499, 1, '2024-03-11 07:00:15'),
(23, 936875, 1, '2024-03-11 07:01:35'),
(24, 485845, 1, '2024-03-11 07:10:16'),
(25, 278890, 1, '2024-03-11 07:12:13'),
(26, 671758, 0, '2024-03-11 07:46:05'),
(27, 676949, 0, '2024-03-11 07:46:24'),
(28, 456140, 1, '2024-03-11 07:47:47');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_registration`
--

CREATE TABLE `tbl_registration` (
  `user_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `age` int(2) NOT NULL,
  `gender` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_registration`
--

INSERT INTO `tbl_registration` (`user_id`, `name`, `email`, `phone`, `age`, `gender`) VALUES
(2, 'Harry Den', 'harryden@gmail.com', '1247778540', 22, 'gender'),
(4, 'Bruno', 'bruno@gmail.com', '7451112450', 30, 'gender'),
(5, 'James', 'james@gmail.com', '7124445696', 25, 'gender'),
(6, 'Hsu San Win', 'hsusanwin@gmail.com', '', 18, 'gender'),
(7, 'Hsu San Win', 'hsusanwin@gmail.com', '9754834080', 18, 'gender'),
(8, 'thant', 'thant@gmail.com', '', 0, 'gender'),
(9, 'Thant', 'thant@gmail.com', '', 0, 'gender');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_screens`
--

CREATE TABLE `tbl_screens` (
  `screen_id` int(11) NOT NULL,
  `t_id` int(11) NOT NULL COMMENT 'theatre id',
  `screen_name` varchar(110) NOT NULL,
  `seats` int(11) NOT NULL COMMENT 'number of seats',
  `charge` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_screens`
--

INSERT INTO `tbl_screens` (`screen_id`, `t_id`, `screen_name`, `seats`, `charge`) VALUES
(5, 6, 'Room 1', 150, 8000),
(6, 6, 'Room 2', 200, 7000);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_shows`
--

CREATE TABLE `tbl_shows` (
  `s_id` int(11) NOT NULL,
  `st_id` int(11) NOT NULL COMMENT 'show time id',
  `theatre_id` int(11) NOT NULL,
  `movie_id` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `status` int(11) NOT NULL COMMENT '1 means show available',
  `r_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_shows`
--

INSERT INTO `tbl_shows` (`s_id`, `st_id`, `theatre_id`, `movie_id`, `start_date`, `status`, `r_status`) VALUES
(24, 15, 6, 20, '2024-03-10', 0, 0),
(25, 20, 6, 20, '2024-03-13', 0, 0),
(26, 16, 6, 21, '2024-03-12', 0, 0),
(27, 18, 6, 21, '2024-03-12', 0, 0),
(28, 17, 6, 24, '2024-03-12', 0, 0),
(29, 18, 6, 23, '2024-03-14', 0, 0),
(30, 22, 6, 24, '2024-03-13', 0, 0),
(31, 31, 6, 20, '2025-03-13', 0, 0),
(32, 18, 6, 20, '2025-03-12', 0, 0),
(33, 15, 6, 20, '2024-03-12', 0, 1),
(34, 20, 6, 21, '2024-03-12', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_show_time`
--

CREATE TABLE `tbl_show_time` (
  `st_id` int(11) NOT NULL,
  `screen_id` int(11) NOT NULL,
  `name` varchar(40) NOT NULL COMMENT 'noon,second,etc',
  `start_time` time NOT NULL,
  `show_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_show_time`
--

INSERT INTO `tbl_show_time` (`st_id`, `screen_id`, `name`, `start_time`, `show_date`) VALUES
(15, 5, 'First', '10:00:00', '2024-03-11'),
(16, 5, 'Second', '13:00:00', '2024-03-11'),
(17, 5, 'Third', '16:00:00', '2024-03-11'),
(18, 6, 'First', '10:00:00', '2024-03-11'),
(20, 6, 'Third', '16:00:00', '2024-03-11'),
(21, 5, 'First', '10:00:00', '2024-03-10'),
(22, 6, 'Second', '13:00:00', '2024-03-10'),
(31, 6, 'Fourth', '21:00:00', '2024-03-10');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_theatre`
--

CREATE TABLE `tbl_theatre` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `place` varchar(100) NOT NULL,
  `state` varchar(50) NOT NULL,
  `pin` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_theatre`
--

INSERT INTO `tbl_theatre` (`id`, `name`, `address`, `place`, `state`, `pin`) VALUES
(1, 'JCGV', 'Coner Of Kan Yeik Thar Road &, U Aung Myat Rd', 'Puzudaung', 'Ygn', 11041),
(2, 'Mingalar Ga Mone Pwint', 'Insein Rd', 'Insein', 'Ygn', 11041),
(3, 'Mingalar Mandalay', '73rd St., Bet. Thazin and Ngu Shwe Wah St', 'Chan Mya Thasi Tsp', 'Mdy', 5011);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_bookings`
--
ALTER TABLE `tbl_bookings`
  ADD PRIMARY KEY (`book_id`);

--
-- Indexes for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
  ADD PRIMARY KEY (`contact_id`);

--
-- Indexes for table `tbl_login`
--
ALTER TABLE `tbl_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_movie`
--
ALTER TABLE `tbl_movie`
  ADD PRIMARY KEY (`movie_id`);

--
-- Indexes for table `tbl_news`
--
ALTER TABLE `tbl_news`
  ADD PRIMARY KEY (`news_id`);

--
-- Indexes for table `tbl_otp_check`
--
ALTER TABLE `tbl_otp_check`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_registration`
--
ALTER TABLE `tbl_registration`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `tbl_screens`
--
ALTER TABLE `tbl_screens`
  ADD PRIMARY KEY (`screen_id`);

--
-- Indexes for table `tbl_shows`
--
ALTER TABLE `tbl_shows`
  ADD PRIMARY KEY (`s_id`);

--
-- Indexes for table `tbl_show_time`
--
ALTER TABLE `tbl_show_time`
  ADD PRIMARY KEY (`st_id`);

--
-- Indexes for table `tbl_theatre`
--
ALTER TABLE `tbl_theatre`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_bookings`
--
ALTER TABLE `tbl_bookings`
  MODIFY `book_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
  MODIFY `contact_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_login`
--
ALTER TABLE `tbl_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `tbl_movie`
--
ALTER TABLE `tbl_movie`
  MODIFY `movie_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `tbl_news`
--
ALTER TABLE `tbl_news`
  MODIFY `news_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_otp_check`
--
ALTER TABLE `tbl_otp_check`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `tbl_registration`
--
ALTER TABLE `tbl_registration`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_screens`
--
ALTER TABLE `tbl_screens`
  MODIFY `screen_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_shows`
--
ALTER TABLE `tbl_shows`
  MODIFY `s_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `tbl_show_time`
--
ALTER TABLE `tbl_show_time`
  MODIFY `st_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=211111113;

--
-- AUTO_INCREMENT for table `tbl_theatre`
--
ALTER TABLE `tbl_theatre`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
