-- phpMyAdmin SQL Dump
-- version 3.2.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 19, 2017 at 06:22 PM
-- Server version: 5.1.41
-- PHP Version: 5.3.1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `grecords`
--
CREATE DATABASE `grecords` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `grecords`;

-- --------------------------------------------------------

--
-- Table structure for table `details`
--

CREATE TABLE IF NOT EXISTS `details` (
  `id` varchar(20) NOT NULL,
  `did` int(10) NOT NULL,
  `company` varchar(20) NOT NULL,
  `date` date NOT NULL,
  `position` varchar(10) NOT NULL,
  `extra` varchar(200) NOT NULL,
  `phno` int(10) NOT NULL,
  `emailid` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `details`
--

INSERT INTO `details` (`id`, `did`, `company`, `date`, `position`, `extra`, `phno`, `emailid`) VALUES
('test2@m.com', 2, 'xtzy', '2017-06-15', 'se2', 'estra -------', 102365479, 'test2@m.com'),
('test1@m.com', 1, 'hero', '2017-06-13', 'hero', 'hero', 12345, 'asdads');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `name` varchar(20) NOT NULL,
  `id` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`name`, `id`, `password`) VALUES
('test1', 'test1@m.com', '12345'),
('test2', 'test2@mcom', '12345');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
