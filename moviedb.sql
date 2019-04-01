-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 31, 2019 at 10:59 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `moviedb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `id` int(11) NOT NULL,
  `type` varchar(200) NOT NULL,
  `value` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`id`, `type`, `value`) VALUES
(1, 'Language', 'English'),
(2, 'Genre', 'Action'),
(3, 'Language', 'Hindi'),
(4, 'Genre', 'Comedy');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_movies`
--

CREATE TABLE `tbl_movies` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `featured_img` varchar(200) NOT NULL,
  `length` int(11) NOT NULL,
  `release_date` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_movies`
--

INSERT INTO `tbl_movies` (`id`, `title`, `description`, `featured_img`, `length`, `release_date`) VALUES
(1, 'Jurassic World', 'A movie about dinosaurs', 'jurassic-world.jpg', 90, '2015-06-14'),
(2, 'The Interview', 'Comedy movie on Kim Jong-un', 'the-interview.jpg', 143, '2014-12-24'),
(3, 'Kick', 'Salman Khan movie', 'kick.jpg', 120, '2014-04-20'),
(4, 'Judwaa 2', 'Twin brothers comedy movie', 'judwaa-2.jpg', 161, '2017-09-29'),
(5, 'Jurassic World', 'A movie about dinosaurs', 'jurassic-world.jpg', 90, '2015-06-14'),
(6, 'The Interview', 'Comedy movie on Kim Jong-un', 'the-interview.jpg', 143, '2014-12-24'),
(7, 'Kick', 'Salman Khan movie', 'kick.jpg', 120, '2014-04-20'),
(8, 'Judwaa 2', 'Twin brothers comedy movie', 'judwaa-2.jpg', 161, '2017-09-29'),
(9, 'Jurassic World', 'A movie about dinosaurs', 'jurassic-world.jpg', 90, '2015-06-14'),
(10, 'The Interview', 'Comedy movie on Kim Jong-un', 'the-interview.jpg', 143, '2014-12-24'),
(11, 'Kick', 'Salman Khan movie', 'kick.jpg', 120, '2014-04-20'),
(12, 'Judwaa 2', 'Twin brothers comedy movie', 'judwaa-2.jpg', 161, '2017-09-29'),
(13, 'Jurassic World', 'A movie about dinosaurs', 'jurassic-world.jpg', 90, '2015-06-14'),
(14, 'The Interview', 'Comedy movie on Kim Jong-un', 'the-interview.jpg', 143, '2014-12-24'),
(15, 'Kick', 'Salman Khan movie', 'kick.jpg', 120, '2014-04-20'),
(16, 'Judwaa 2', 'Twin brothers comedy movie', 'judwaa-2.jpg', 161, '2017-09-29'),
(17, 'Jurassic World', 'A movie about dinosaurs', 'jurassic-world.jpg', 90, '2015-06-14'),
(18, 'The Interview', 'Comedy movie on Kim Jong-un', 'the-interview.jpg', 143, '2014-12-24'),
(19, 'Kick', 'Salman Khan movie', 'kick.jpg', 120, '2014-04-20'),
(20, 'Judwaa 2', 'Twin brothers comedy movie', 'judwaa-2.jpg', 161, '2017-09-29'),
(21, 'Jurassic World', 'A movie about dinosaurs', 'jurassic-world.jpg', 90, '2015-06-14'),
(22, 'The Interview', 'Comedy movie on Kim Jong-un', 'the-interview.jpg', 143, '2014-12-24'),
(23, 'Kick', 'Salman Khan movie', 'kick.jpg', 120, '2014-04-20'),
(24, 'Judwaa 2', 'Twin brothers comedy movie', 'judwaa-2.jpg', 161, '2017-09-29'),
(25, 'Jurassic World', 'A movie about dinosaurs', 'jurassic-world.jpg', 90, '2015-06-14'),
(26, 'The Interview', 'Comedy movie on Kim Jong-un', 'the-interview.jpg', 143, '2014-12-24'),
(27, 'Kick', 'Salman Khan movie', 'kick.jpg', 120, '2014-04-20'),
(28, 'Judwaa 2', 'Twin brothers comedy movie', 'judwaa-2.jpg', 161, '2017-09-29'),
(29, 'Jurassic World', 'A movie about dinosaurs', 'jurassic-world.jpg', 90, '2015-06-14'),
(30, 'The Interview', 'Comedy movie on Kim Jong-un', 'the-interview.jpg', 143, '2014-12-24'),
(31, 'Kick', 'Salman Khan movie', 'kick.jpg', 120, '2014-04-20'),
(32, 'Judwaa 2', 'Twin brothers comedy movie', 'judwaa-2.jpg', 161, '2017-09-29'),
(33, 'Jurassic World', 'A movie about dinosaurs', 'jurassic-world.jpg', 90, '2015-06-14'),
(34, 'The Interview', 'Comedy movie on Kim Jong-un', 'the-interview.jpg', 143, '2014-12-24'),
(35, 'Kick', 'Salman Khan movie', 'kick.jpg', 120, '2014-04-20'),
(36, 'Judwaa 2', 'Twin brothers comedy movie', 'judwaa-2.jpg', 161, '2017-09-29'),
(37, 'Jurassic World', 'A movie about dinosaurs', 'jurassic-world.jpg', 90, '2015-06-14'),
(38, 'The Interview', 'Comedy movie on Kim Jong-un', 'the-interview.jpg', 143, '2014-12-24'),
(39, 'Kick', 'Salman Khan movie', 'kick.jpg', 120, '2014-04-20'),
(40, 'Judwaa 2', 'Twin brothers comedy movie', 'judwaa-2.jpg', 161, '2017-09-29'),
(41, 'Jurassic World', 'A movie about dinosaurs', 'jurassic-world.jpg', 90, '2015-06-14'),
(42, 'The Interview', 'Comedy movie on Kim Jong-un', 'the-interview.jpg', 143, '2014-12-24'),
(43, 'Kick', 'Salman Khan movie', 'kick.jpg', 120, '2014-04-20'),
(44, 'Judwaa 2', 'Twin brothers comedy movie', 'judwaa-2.jpg', 161, '2017-09-29'),
(45, 'Jurassic World', 'A movie about dinosaurs', 'jurassic-world.jpg', 90, '2015-06-14'),
(46, 'The Interview', 'Comedy movie on Kim Jong-un', 'the-interview.jpg', 143, '2014-12-24'),
(47, 'Kick', 'Salman Khan movie', 'kick.jpg', 120, '2014-04-20'),
(48, 'Judwaa 2', 'Twin brothers comedy movie', 'judwaa-2.jpg', 161, '2017-09-29'),
(49, 'Jurassic World', 'A movie about dinosaurs', 'jurassic-world.jpg', 90, '2015-06-14'),
(50, 'The Interview', 'Comedy movie on Kim Jong-un', 'the-interview.jpg', 143, '2014-12-24'),
(51, 'Kick', 'Salman Khan movie', 'kick.jpg', 120, '2014-04-20'),
(52, 'Judwaa 2', 'Twin brothers comedy movie', 'judwaa-2.jpg', 161, '2017-09-29'),
(53, 'Jurassic World', 'A movie about dinosaurs', 'jurassic-world.jpg', 90, '2015-06-14'),
(54, 'The Interview', 'Comedy movie on Kim Jong-un', 'the-interview.jpg', 143, '2014-12-24'),
(55, 'Kick', 'Salman Khan movie', 'kick.jpg', 120, '2014-04-20'),
(56, 'Judwaa 2', 'Twin brothers comedy movie', 'judwaa-2.jpg', 161, '2017-09-29'),
(57, 'Jurassic World', 'A movie about dinosaurs', 'jurassic-world.jpg', 90, '2015-06-14'),
(58, 'The Interview', 'Comedy movie on Kim Jong-un', 'the-interview.jpg', 143, '2014-12-24'),
(59, 'Kick', 'Salman Khan movie', 'kick.jpg', 120, '2014-04-20'),
(60, 'Judwaa 2', 'Twin brothers comedy movie', 'judwaa-2.jpg', 161, '2017-09-29'),
(61, 'Jurassic World', 'A movie about dinosaurs', 'jurassic-world.jpg', 90, '2015-06-14'),
(62, 'The Interview', 'Comedy movie on Kim Jong-un', 'the-interview.jpg', 143, '2014-12-24'),
(63, 'Kick', 'Salman Khan movie', 'kick.jpg', 120, '2014-04-20'),
(64, 'Judwaa 2', 'Twin brothers comedy movie', 'judwaa-2.jpg', 161, '2017-09-29'),
(65, 'Jurassic World', 'A movie about dinosaurs', 'jurassic-world.jpg', 90, '2015-06-14'),
(66, 'The Interview', 'Comedy movie on Kim Jong-un', 'the-interview.jpg', 143, '2014-12-24'),
(67, 'Kick', 'Salman Khan movie', 'kick.jpg', 120, '2014-04-20'),
(68, 'Judwaa 2', 'Twin brothers comedy movie', 'judwaa-2.jpg', 161, '2017-09-29'),
(69, 'Jurassic World', 'A movie about dinosaurs', 'jurassic-world.jpg', 90, '2015-06-14'),
(70, 'The Interview', 'Comedy movie on Kim Jong-un', 'the-interview.jpg', 143, '2014-12-24'),
(71, 'Kick', 'Salman Khan movie', 'kick.jpg', 120, '2014-04-20'),
(72, 'Judwaa 2', 'Twin brothers comedy movie', 'judwaa-2.jpg', 161, '2017-09-29'),
(73, 'Jurassic World', 'A movie about dinosaurs', 'jurassic-world.jpg', 90, '2015-06-14'),
(74, 'The Interview', 'Comedy movie on Kim Jong-un', 'the-interview.jpg', 143, '2014-12-24'),
(75, 'Kick', 'Salman Khan movie', 'kick.jpg', 120, '2014-04-20'),
(76, 'Judwaa 2', 'Twin brothers comedy movie', 'judwaa-2.jpg', 161, '2017-09-29'),
(77, 'Jurassic World', 'A movie about dinosaurs', 'jurassic-world.jpg', 90, '2015-06-14'),
(78, 'The Interview', 'Comedy movie on Kim Jong-un', 'the-interview.jpg', 143, '2014-12-24'),
(79, 'Kick', 'Salman Khan movie', 'kick.jpg', 120, '2014-04-20'),
(80, 'Judwaa 2', 'Twin brothers comedy movie', 'judwaa-2.jpg', 161, '2017-09-29'),
(81, 'Jurassic World', 'A movie about dinosaurs', 'jurassic-world.jpg', 90, '2015-06-14'),
(82, 'The Interview', 'Comedy movie on Kim Jong-un', 'the-interview.jpg', 143, '2014-12-24'),
(83, 'Kick', 'Salman Khan movie', 'kick.jpg', 120, '2014-04-20'),
(84, 'Judwaa 2', 'Twin brothers comedy movie', 'judwaa-2.jpg', 161, '2017-09-29'),
(85, 'Jurassic World', 'A movie about dinosaurs', 'jurassic-world.jpg', 90, '2015-06-14'),
(86, 'The Interview', 'Comedy movie on Kim Jong-un', 'the-interview.jpg', 143, '2014-12-24'),
(87, 'Kick', 'Salman Khan movie', 'kick.jpg', 120, '2014-04-20'),
(88, 'Judwaa 2', 'Twin brothers comedy movie', 'judwaa-2.jpg', 161, '2017-09-29'),
(89, 'Jurassic World', 'A movie about dinosaurs', 'jurassic-world.jpg', 90, '2015-06-14'),
(90, 'The Interview', 'Comedy movie on Kim Jong-un', 'the-interview.jpg', 143, '2014-12-24'),
(91, 'Kick', 'Salman Khan movie', 'kick.jpg', 120, '2014-04-20'),
(92, 'Judwaa 2', 'Twin brothers comedy movie', 'judwaa-2.jpg', 161, '2017-09-29'),
(93, 'Jurassic World', 'A movie about dinosaurs', 'jurassic-world.jpg', 90, '2015-06-14'),
(94, 'The Interview', 'Comedy movie on Kim Jong-un', 'the-interview.jpg', 143, '2014-12-24'),
(95, 'Kick', 'Salman Khan movie', 'kick.jpg', 120, '2014-04-20'),
(96, 'Judwaa 2', 'Twin brothers comedy movie', 'judwaa-2.jpg', 161, '2017-09-29'),
(97, 'Jurassic World', 'A movie about dinosaurs', 'jurassic-world.jpg', 90, '2015-06-14'),
(98, 'The Interview', 'Comedy movie on Kim Jong-un', 'the-interview.jpg', 143, '2014-12-24'),
(99, 'Kick', 'Salman Khan movie', 'kick.jpg', 120, '2014-04-20'),
(100, 'Judwaa 2', 'Twin brothers comedy movie', 'judwaa-2.jpg', 161, '2017-09-29'),
(101, 'Jurassic World', 'A movie about dinosaurs', 'jurassic-world.jpg', 90, '2015-06-14'),
(102, 'The Interview', 'Comedy movie on Kim Jong-un', 'the-interview.jpg', 143, '2014-12-24'),
(103, 'Kick', 'Salman Khan movie', 'kick.jpg', 120, '2014-04-20'),
(104, 'Judwaa 2', 'Twin brothers comedy movie', 'judwaa-2.jpg', 161, '2017-09-29');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_movie_relation`
--

CREATE TABLE `tbl_movie_relation` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `movie_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_movie_relation`
--

INSERT INTO `tbl_movie_relation` (`id`, `category_id`, `movie_id`) VALUES
(1, 1, 1),
(2, 1, 5),
(3, 1, 9),
(4, 1, 13),
(5, 1, 17),
(6, 1, 21),
(7, 1, 25),
(8, 1, 29),
(9, 1, 33),
(10, 1, 37),
(11, 1, 41),
(12, 1, 45),
(13, 1, 49),
(14, 1, 53),
(15, 1, 57),
(16, 1, 61),
(17, 1, 65),
(18, 1, 69),
(19, 1, 73),
(20, 1, 77),
(21, 1, 81),
(22, 1, 85),
(23, 1, 89),
(24, 1, 93),
(25, 1, 97),
(26, 1, 101),
(27, 2, 1),
(28, 2, 5),
(29, 2, 9),
(30, 2, 13),
(31, 2, 17),
(32, 2, 21),
(33, 2, 25),
(34, 2, 29),
(35, 2, 33),
(36, 2, 37),
(37, 2, 41),
(38, 2, 45),
(39, 2, 49),
(40, 2, 53),
(41, 2, 57),
(42, 2, 61),
(43, 2, 65),
(44, 2, 69),
(45, 2, 73),
(46, 2, 77),
(47, 2, 81),
(48, 2, 85),
(49, 2, 89),
(50, 2, 93),
(51, 2, 97),
(52, 2, 101),
(53, 3, 3),
(54, 3, 7),
(55, 3, 11),
(56, 3, 15),
(57, 3, 19),
(58, 3, 23),
(59, 3, 27),
(60, 3, 31),
(61, 3, 35),
(62, 3, 39),
(63, 3, 43),
(64, 3, 47),
(65, 3, 51),
(66, 3, 55),
(67, 3, 59),
(68, 3, 63),
(69, 3, 67),
(70, 3, 71),
(71, 3, 75),
(72, 3, 79),
(73, 3, 83),
(74, 3, 87),
(75, 3, 91),
(76, 3, 95),
(77, 3, 99),
(78, 3, 103),
(79, 2, 3),
(80, 2, 7),
(81, 2, 11),
(82, 2, 15),
(83, 2, 19),
(84, 2, 23),
(85, 2, 27),
(86, 2, 31),
(87, 2, 35),
(88, 2, 39),
(89, 2, 43),
(90, 2, 47),
(91, 2, 51),
(92, 2, 55),
(93, 2, 59),
(94, 2, 63),
(95, 2, 67),
(96, 2, 71),
(97, 2, 75),
(98, 2, 79),
(99, 2, 83),
(100, 2, 87),
(101, 2, 91),
(102, 2, 95),
(103, 2, 99),
(104, 2, 103),
(105, 1, 2),
(106, 1, 6),
(107, 1, 10),
(108, 1, 14),
(109, 1, 18),
(110, 1, 22),
(111, 1, 26),
(112, 1, 30),
(113, 1, 34),
(114, 1, 38),
(115, 1, 42),
(116, 1, 46),
(117, 1, 50),
(118, 1, 54),
(119, 1, 58),
(120, 1, 62),
(121, 1, 66),
(122, 1, 70),
(123, 1, 74),
(124, 1, 78),
(125, 1, 82),
(126, 1, 86),
(127, 1, 90),
(128, 1, 94),
(129, 1, 98),
(130, 1, 102),
(131, 4, 2),
(132, 4, 6),
(133, 4, 10),
(134, 4, 14),
(135, 4, 18),
(136, 4, 22),
(137, 4, 26),
(138, 4, 30),
(139, 4, 34),
(140, 4, 38),
(141, 4, 42),
(142, 4, 46),
(143, 4, 50),
(144, 4, 54),
(145, 4, 58),
(146, 4, 62),
(147, 4, 66),
(148, 4, 70),
(149, 4, 74),
(150, 4, 78),
(151, 4, 82),
(152, 4, 86),
(153, 4, 90),
(154, 4, 94),
(155, 4, 98),
(156, 4, 102),
(157, 3, 4),
(158, 3, 8),
(159, 3, 12),
(160, 3, 16),
(161, 3, 20),
(162, 3, 24),
(163, 3, 28),
(164, 3, 32),
(165, 3, 36),
(166, 3, 40),
(167, 3, 44),
(168, 3, 48),
(169, 3, 52),
(170, 3, 56),
(171, 3, 60),
(172, 3, 64),
(173, 3, 68),
(174, 3, 72),
(175, 3, 76),
(176, 3, 80),
(177, 3, 84),
(178, 3, 88),
(179, 3, 92),
(180, 3, 96),
(181, 3, 100),
(182, 3, 104),
(183, 4, 4),
(184, 4, 8),
(185, 4, 12),
(186, 4, 16),
(187, 4, 20),
(188, 4, 24),
(189, 4, 28),
(190, 4, 32),
(191, 4, 36),
(192, 4, 40),
(193, 4, 44),
(194, 4, 48),
(195, 4, 52),
(196, 4, 56),
(197, 4, 60),
(198, 4, 64),
(199, 4, 68),
(200, 4, 72),
(201, 4, 76),
(202, 4, 80),
(203, 4, 84),
(204, 4, 88),
(205, 4, 92),
(206, 4, 96),
(207, 4, 100),
(208, 4, 104);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_movies`
--
ALTER TABLE `tbl_movies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_movie_relation`
--
ALTER TABLE `tbl_movie_relation`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tbl_movies`
--
ALTER TABLE `tbl_movies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;
--
-- AUTO_INCREMENT for table `tbl_movie_relation`
--
ALTER TABLE `tbl_movie_relation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=209;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
