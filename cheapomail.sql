-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 10, 2013 at 03:45 PM
-- Server version: 5.5.24-log
-- PHP Version: 5.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `cheapomail`
--
--
CREATE DATABASE IF NOT EXISTS `cheapo` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `cheapomail`;

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE IF NOT EXISTS `message` (
  `id` int(25) NOT NULL AUTO_INCREMENT,
  `body` text NOT NULL,
  `subject` varchar(100) NOT NULL,
  `user_id` int(25) NOT NULL,
  `recipient_ids` int(25) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- Dumping data for table `message`

INSERT INTO `message` (`id`, `body`, `subject`, `user_id`, `recipient_ids`) VALUES
(12, 'Welcome to CheapoMail!!!', 'Welcome!', 9, 9);

-- --------------------------------------------------------

--
-- Table structure for table `message_read`
--

CREATE TABLE IF NOT EXISTS `message_read` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `message_id` int(11) NOT NULL,
  `reader_id` int(11) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;
--
-- Dumping data for table 'message_read'

INSERT INTO `message_read`(`id`, `message_id`, `reader_id`,`date`) VALUES
(34, 14, 7, '03/12/2015')

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(25) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(30) NOT NULL DEFAULT '''''',
  `lastname` varchar(30) NOT NULL DEFAULT '''''',
  `password` varchar(30) NOT NULL,
  `username` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;


INSERT INTO users (firstname, lastname, password, username) VALUES ('Shomari','Dillon','Shomari876','Captain');
INSERT INTO users (firstname, lastname, password, username) VALUES ('Dayreon','Mitchell','Dayreon868','DJ');
INSERT INTO users (firstname, lastname, password, username) VALUES ('Dale','Gayle','Spaniard4','Spaniard');
INSERT INTO users (firstname, lastname, password, username) VALUES ('Jerome','Gaal','Jroots14','Jerome');
INSERT INTO users (firstname, lastname, password, username) VALUES ('Tevin','Phillips','TevVinc8','Vision');
INSERT INTO users (firstname, lastname, password, username) VALUES ('Winston','Lindsay','Webdevelopment1','Administrator');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
SHOW TABLES;
SELECT * FROM users;
SELECT * FROM message_read;
SELECT * FROM message;
