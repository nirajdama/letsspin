-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 20, 2015 at 11:39 AM
-- Server version: 5.5.24-log
-- PHP Version: 5.4.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `letsspin`
--

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE IF NOT EXISTS `ci_sessions` (
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `user_agent` varchar(120) NOT NULL,
  `last_activity` int(10) unsigned NOT NULL DEFAULT '0',
  `user_data` text NOT NULL,
  PRIMARY KEY (`session_id`),
  KEY `last_activity_idx` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `image`
--

CREATE TABLE IF NOT EXISTS `image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image_location` varchar(1024) NOT NULL,
  `alt` varchar(1024) NOT NULL,
  `last_updated_by` int(11) NOT NULL,
  `last_updated_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `status` int(2) NOT NULL DEFAULT '1' COMMENT '1- active 2-deleted',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `image`
--

INSERT INTO `image` (`id`, `image_location`, `alt`, `last_updated_by`, `last_updated_at`, `created_by`, `created_at`, `status`) VALUES
(1, 'assets/images/spin_images/1.png', '1', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 1),
(2, 'assets/images/spin_images/2.png', '2', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 1),
(3, 'assets/images/spin_images/3.png', '3', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 1),
(4, 'assets/images/spin_images/4.png', '4', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 1),
(5, 'assets/images/spin_images/5.png', '5', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `meta`
--

CREATE TABLE IF NOT EXISTS `meta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `meta_name` varchar(255) NOT NULL,
  `meta_value` varchar(255) NOT NULL,
  `last_updated_by` int(11) NOT NULL,
  `last_updated_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `status` int(2) NOT NULL DEFAULT '1' COMMENT '1-active 2-deleted',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `meta`
--

INSERT INTO `meta` (`id`, `meta_name`, `meta_value`, `last_updated_by`, `last_updated_at`, `created_by`, `created_at`, `status`) VALUES
(1, 'total_images', '3', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 1),
(2, 'maximum_attempts', '3', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 1),
(3, 'interval_minutes', '30', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 1),
(4, 'two_size_array', '200', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 1),
(5, 'one_size_array', '500', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE IF NOT EXISTS `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(255) NOT NULL,
  `product_image_location` varchar(255) NOT NULL,
  `product_description` text NOT NULL,
  `points_required` int(11) NOT NULL,
  `last_updated_by` int(11) NOT NULL,
  `last_updated_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `status` int(2) NOT NULL DEFAULT '1' COMMENT '1-active 2-deleted',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `product_name`, `product_image_location`, `product_description`, `points_required`, `last_updated_by`, `last_updated_at`, `created_by`, `created_at`, `status`) VALUES
(1, 'P1', 'assets/images/product_images/p1.png', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 100, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 1),
(2, 'P2', 'assets/images/product_images/p2.png', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 200, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 1),
(3, 'P3', 'assets/images/product_images/p3.png', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 300, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `spin`
--

CREATE TABLE IF NOT EXISTS `spin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `points_earned` int(11) NOT NULL,
  `last_updated_by` int(11) NOT NULL,
  `last_updated_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `status` int(2) NOT NULL DEFAULT '1' COMMENT '1-active 2-deleted',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `spin`
--

INSERT INTO `spin` (`id`, `user_id`, `points_earned`, `last_updated_by`, `last_updated_at`, `created_by`, `created_at`, `status`) VALUES
(1, 1, 0, 0, '0000-00-00 00:00:00', 1, '2015-02-20 13:51:45', 1),
(2, 1, 0, 0, '0000-00-00 00:00:00', 1, '2015-02-20 13:51:55', 1),
(3, 1, 0, 0, '0000-00-00 00:00:00', 1, '2015-02-20 14:21:21', 1),
(4, 1, 200, 0, '0000-00-00 00:00:00', 1, '2015-02-20 14:26:46', 1),
(5, 1, 200, 0, '0000-00-00 00:00:00', 1, '2015-02-20 16:18:23', 1),
(6, 1, 0, 0, '0000-00-00 00:00:00', 1, '2015-02-20 16:20:27', 1),
(7, 1, 0, 0, '0000-00-00 00:00:00', 1, '2015-02-20 16:30:05', 1),
(8, 1, 0, 0, '0000-00-00 00:00:00', 1, '2015-02-20 17:09:12', 1),
(9, 1, 500, 0, '0000-00-00 00:00:00', 1, '2015-02-20 17:09:18', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email_address` varchar(255) NOT NULL,
  `password` varchar(40) NOT NULL,
  `total_points` int(11) NOT NULL,
  `last_updated_by` int(11) NOT NULL,
  `last_updated_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `status` int(2) NOT NULL DEFAULT '1' COMMENT '1-active 2-deleted',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email_address` (`email_address`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email_address`, `password`, `total_points`, `last_updated_by`, `last_updated_at`, `created_by`, `created_at`, `status`) VALUES
(1, 'Niraj', 'nirajdama123@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e', 500, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_product`
--

CREATE TABLE IF NOT EXISTS `user_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `last_updated_by` int(11) NOT NULL,
  `last_updated_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `status` int(2) NOT NULL DEFAULT '1' COMMENT '1-active 2-deleted',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=26 ;

--
-- Dumping data for table `user_product`
--

INSERT INTO `user_product` (`id`, `user_id`, `product_id`, `last_updated_by`, `last_updated_at`, `created_by`, `created_at`, `status`) VALUES
(1, 1, 1, 0, '0000-00-00 00:00:00', 1, '2015-02-20 15:35:39', 1),
(2, 1, 1, 0, '0000-00-00 00:00:00', 1, '2015-02-20 16:17:39', 1),
(3, 1, 1, 0, '0000-00-00 00:00:00', 1, '2015-02-20 16:21:35', 1),
(4, 1, 1, 0, '0000-00-00 00:00:00', 1, '2015-02-20 16:23:35', 1),
(5, 1, 1, 0, '0000-00-00 00:00:00', 1, '2015-02-20 16:24:13', 1),
(6, 1, 1, 0, '0000-00-00 00:00:00', 1, '2015-02-20 16:24:16', 1),
(7, 1, 1, 0, '0000-00-00 00:00:00', 1, '2015-02-20 16:25:08', 1),
(8, 1, 1, 0, '0000-00-00 00:00:00', 1, '2015-02-20 16:26:21', 1),
(9, 1, 1, 0, '0000-00-00 00:00:00', 1, '2015-02-20 16:26:38', 1),
(10, 1, 1, 0, '0000-00-00 00:00:00', 1, '2015-02-20 16:27:04', 1),
(11, 1, 1, 0, '0000-00-00 00:00:00', 1, '2015-02-20 16:27:38', 1),
(12, 1, 1, 0, '0000-00-00 00:00:00', 1, '2015-02-20 16:28:04', 1),
(13, 1, 1, 0, '0000-00-00 00:00:00', 1, '2015-02-20 16:28:27', 1),
(14, 1, 2, 0, '0000-00-00 00:00:00', 1, '2015-02-20 16:28:28', 1),
(15, 1, 3, 0, '0000-00-00 00:00:00', 1, '2015-02-20 16:28:30', 1),
(16, 1, 3, 0, '0000-00-00 00:00:00', 1, '2015-02-20 16:28:32', 1),
(17, 1, 3, 0, '0000-00-00 00:00:00', 1, '2015-02-20 16:28:40', 1),
(18, 1, 3, 0, '0000-00-00 00:00:00', 1, '2015-02-20 16:28:40', 1),
(19, 1, 2, 0, '0000-00-00 00:00:00', 1, '2015-02-20 16:29:23', 1),
(20, 1, 2, 0, '0000-00-00 00:00:00', 1, '2015-02-20 16:29:25', 1),
(21, 1, 2, 0, '0000-00-00 00:00:00', 1, '2015-02-20 16:29:26', 1),
(22, 1, 2, 0, '0000-00-00 00:00:00', 1, '2015-02-20 16:29:27', 1),
(23, 1, 1, 0, '0000-00-00 00:00:00', 1, '2015-02-20 16:29:30', 1),
(24, 1, 1, 0, '0000-00-00 00:00:00', 1, '2015-02-20 16:29:32', 1),
(25, 1, 2, 0, '0000-00-00 00:00:00', 1, '2015-02-20 16:29:52', 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
