-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 22, 2017 at 01:58 PM
-- Server version: 10.0.29-MariaDB-0ubuntu0.16.04.1
-- PHP Version: 7.0.15-0ubuntu0.16.04.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `technolovers`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `title` varchar(30) NOT NULL,
  `description` varchar(500) NOT NULL,
  `pic` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`, `description`, `pic`) VALUES
(1, 'Web designing', '', ''),
(2, 'Web Development', '', ''),
(3, 'Java', '', ''),
(4, 'C++', '', ''),
(5, 'Science', '', ''),
(6, 'Mathematics', '', ''),
(7, 'Phones', '', ''),
(8, 'HyperText Preprocessor', '', ''),
(9, 'AJAX', '', ''),
(10, 'biology', '', ''),
(11, 'geography', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

CREATE TABLE `quiz` (
  `id` int(11) NOT NULL,
  `question` varchar(500) NOT NULL,
  `options` varchar(500) NOT NULL,
  `answer` int(11) NOT NULL,
  `category` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quiz`
--

INSERT INTO `quiz` (`id`, `question`, `options`, `answer`, `category`) VALUES
(1, 'Who is the father of computer?', 'Charles Babbage$$Bill Gates$$Steve Jobs$$Dennis Ritchie', 1, 1),
(2, 'Here are you without Me?', 'yes$$no', 1, 2),
(3, 'President of India ?', 'Pranav Mukharjee$$Pratibha Patil$$Narendra Modi$$Manmohan singh', 1, 1),
(4, 'Who is the founder of Apple Inc.?', 'Tim Cook$$Steve Jobs$$Bill Gates$$Barack Obama', 2, 1),
(5, 'Who is the developer of C programming language ?', 'Lokesh$$Bill Gates$$Dennis Ritchie$$Larry Wall$$Sergey Brin', 3, 0),
(6, 'HEllo world', 'l', 1, 0),
(7, 'Who is the founder of world wide web?', 'Aaron Swartz$$Tim Berners Lee$$Sergey Brin$$Tim Cook', 2, 0),
(8, 'what the hell are you waiting for?', 'me$$you', 2, 0),
(9, 'WHO ARE YOU?', 'nobody$$me$$you', 1, 0),
(10, 'what is the name of largest gland in our body?', 'lungs$$liver$$endocrine gland', 2, 0),
(11, 'how many states are present in india at present time? ', '28$$29$$27', 2, 0),
(12, 'what is the name of largest cell in our body?', 'nerve cell$$prokaryotic cell', 1, 0),
(13, 'which state of our country had bang on living permanently?', 'jharkhand$$j&k$$kerla', 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `quiz_category`
--

CREATE TABLE `quiz_category` (
  `id` int(11) NOT NULL,
  `qid` int(11) NOT NULL,
  `cid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quiz_category`
--

INSERT INTO `quiz_category` (`id`, `qid`, `cid`) VALUES
(5, 3, 2),
(6, 4, 3),
(7, 5, 1),
(10, 7, 3),
(11, 7, 4),
(19, 8, 1),
(20, 8, 5),
(21, 6, 1),
(22, 2, 1),
(23, 9, 1),
(24, 9, 3),
(25, 1, 3),
(26, 10, 10),
(27, 12, 10),
(28, 11, 11);

-- --------------------------------------------------------

--
-- Table structure for table `quiz_scores`
--

CREATE TABLE `quiz_scores` (
  `id` int(11) NOT NULL,
  `nick` varchar(20) NOT NULL,
  `user` varchar(20) NOT NULL,
  `correct` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `score` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quiz`
--
ALTER TABLE `quiz`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quiz_category`
--
ALTER TABLE `quiz_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quiz_scores`
--
ALTER TABLE `quiz_scores`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `quiz`
--
ALTER TABLE `quiz`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `quiz_category`
--
ALTER TABLE `quiz_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `quiz_scores`
--
ALTER TABLE `quiz_scores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
