-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 09, 2016 at 02:27 PM
-- Server version: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `threadizzy`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
`id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `id_user`, `nama`) VALUES
(1, 1, 'Hobby'),
(3, 7, 'tes'),
(4, 5, 'testasda'),
(5, 8, 'Kisah');

-- --------------------------------------------------------

--
-- Table structure for table `comment_status`
--

CREATE TABLE IF NOT EXISTS `comment_status` (
`id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_status` int(11) NOT NULL,
  `isi` text NOT NULL,
  `datel` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `comment_thread`
--

CREATE TABLE IF NOT EXISTS `comment_thread` (
`id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_thread` int(11) NOT NULL,
  `isi` text NOT NULL,
  `datel` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE IF NOT EXISTS `post` (
`id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_thread` int(11) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `isi` text NOT NULL,
  `datel` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`id`, `id_user`, `id_thread`, `judul`, `isi`, `datel`) VALUES
(1, 7, 2, 'tes', '', '2016-05-09 07:58:30'),
(2, 5, 5, 'sadsadd', '', '2016-05-09 09:29:46'),
(3, 5, 5, 'adssdsad', '', '2016-05-09 09:40:43'),
(4, 5, 5, 'asdasdas', '', '2016-05-09 09:44:39'),
(5, 5, 5, 'asdasda', '', '2016-05-09 09:52:47'),
(6, 5, 5, 'asdsds', '', '2016-05-09 09:55:58'),
(7, 5, 5, 'dasdasdas', '', '2016-05-09 09:56:38'),
(8, 5, 5, 'sdasdasd', '', '2016-05-09 10:02:06'),
(9, 8, 9, 'sadasdasdas', '', '2016-05-09 10:47:51'),
(10, 8, 9, 'asdasdsdadadasdas', '', '2016-05-09 10:48:12');

-- --------------------------------------------------------

--
-- Table structure for table `rate`
--

CREATE TABLE IF NOT EXISTS `rate` (
  `id_user` int(11) NOT NULL,
  `id_thread` int(11) NOT NULL,
  `jumlah_bintang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE IF NOT EXISTS `status` (
`id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `isi` text NOT NULL,
  `datel` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`id`, `id_user`, `isi`, `datel`) VALUES
(1, 7, 'asd', '2016-05-09 08:19:13');

-- --------------------------------------------------------

--
-- Table structure for table `thread`
--

CREATE TABLE IF NOT EXISTS `thread` (
`id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_category` int(11) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `datel` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `thread`
--

INSERT INTO `thread` (`id`, `id_user`, `id_category`, `judul`, `datel`, `status`) VALUES
(1, 1, 1, 'testing', '2016-05-08 08:24:04', 1),
(2, 7, 1, 'tes', '2016-05-09 07:56:02', 1),
(5, 5, 1, 'asd', '2016-05-09 09:27:42', 2),
(8, 5, 3, 'sadsad', '2016-05-09 09:29:25', 1),
(9, 8, 4, 'Kisah cinta', '2016-05-09 10:46:33', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
`id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `nama`, `image`, `email`, `password`, `gender`) VALUES
(1, 'Arrianda', 'test', 'test', 'test', 'test'),
(2, 'Saufi Rahman', '', 'saufi.rahman@threadizzy.dev', '1234', 'Male'),
(3, 'Saufi Rahman', '', 'saufi.rahman2@threadizzy.dev', '1234', 'Male'),
(5, 'Saufi Rahman', '', 'saufi.rahman@threadizzy.dev', '1234', 'Male'),
(6, 'Arr', '', 'tes@a.a', 'aa', 'Male'),
(7, 'tes', '', 'testes@a.a', 'tesa', 'Male'),
(8, 'demo', '', 'demo@a.a', '1234', 'Male');

-- --------------------------------------------------------

--
-- Table structure for table `user_followers`
--

CREATE TABLE IF NOT EXISTS `user_followers` (
`id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_followers` int(11) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `user_followers`
--

INSERT INTO `user_followers` (`id`, `id_user`, `id_followers`) VALUES
(1, 1, 5),
(2, 1, 8);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
 ADD PRIMARY KEY (`id`,`id_user`), ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `comment_status`
--
ALTER TABLE `comment_status`
 ADD PRIMARY KEY (`id`), ADD KEY `id_user` (`id_user`), ADD KEY `id_status` (`id_status`);

--
-- Indexes for table `comment_thread`
--
ALTER TABLE `comment_thread`
 ADD PRIMARY KEY (`id`), ADD KEY `id_user` (`id_user`), ADD KEY `id_thread` (`id_thread`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
 ADD PRIMARY KEY (`id`), ADD KEY `id_user` (`id_user`), ADD KEY `id_thread` (`id_thread`);

--
-- Indexes for table `rate`
--
ALTER TABLE `rate`
 ADD PRIMARY KEY (`id_user`,`id_thread`), ADD KEY `id_thread` (`id_thread`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
 ADD PRIMARY KEY (`id`), ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `thread`
--
ALTER TABLE `thread`
 ADD PRIMARY KEY (`id`), ADD KEY `id_user` (`id_user`), ADD KEY `id_category` (`id_category`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_followers`
--
ALTER TABLE `user_followers`
 ADD PRIMARY KEY (`id`), ADD KEY `id_user` (`id_user`), ADD KEY `id_followers` (`id_followers`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `comment_status`
--
ALTER TABLE `comment_status`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `comment_thread`
--
ALTER TABLE `comment_thread`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `status`
--
ALTER TABLE `status`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `thread`
--
ALTER TABLE `thread`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `user_followers`
--
ALTER TABLE `user_followers`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `category`
--
ALTER TABLE `category`
ADD CONSTRAINT `category_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`);

--
-- Constraints for table `comment_status`
--
ALTER TABLE `comment_status`
ADD CONSTRAINT `comment_status_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`),
ADD CONSTRAINT `comment_status_ibfk_2` FOREIGN KEY (`id_status`) REFERENCES `status` (`id`);

--
-- Constraints for table `comment_thread`
--
ALTER TABLE `comment_thread`
ADD CONSTRAINT `comment_thread_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`),
ADD CONSTRAINT `comment_thread_ibfk_2` FOREIGN KEY (`id_thread`) REFERENCES `thread` (`id`);

--
-- Constraints for table `post`
--
ALTER TABLE `post`
ADD CONSTRAINT `post_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`),
ADD CONSTRAINT `post_ibfk_2` FOREIGN KEY (`id_thread`) REFERENCES `thread` (`id`);

--
-- Constraints for table `rate`
--
ALTER TABLE `rate`
ADD CONSTRAINT `rate_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`),
ADD CONSTRAINT `rate_ibfk_2` FOREIGN KEY (`id_thread`) REFERENCES `thread` (`id`);

--
-- Constraints for table `status`
--
ALTER TABLE `status`
ADD CONSTRAINT `status_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`);

--
-- Constraints for table `thread`
--
ALTER TABLE `thread`
ADD CONSTRAINT `thread_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`),
ADD CONSTRAINT `thread_ibfk_2` FOREIGN KEY (`id_category`) REFERENCES `category` (`id`);

--
-- Constraints for table `user_followers`
--
ALTER TABLE `user_followers`
ADD CONSTRAINT `user_followers_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`),
ADD CONSTRAINT `user_followers_ibfk_2` FOREIGN KEY (`id_followers`) REFERENCES `user` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
