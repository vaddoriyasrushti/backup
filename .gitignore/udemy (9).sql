-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 30, 2019 at 06:29 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `udemy`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `catid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `userid`, `catid`) VALUES
(35, 3, 17),
(62, 2, 4),
(76, 3, 2),
(77, 3, 3),
(80, 2, 2),
(83, 3, 36),
(84, 3, 38),
(85, 3, 37),
(87, 2, 1),
(88, 2, 10);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `categoriesname` varchar(45) NOT NULL,
  `categoriesicon` varchar(45) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `categoriesname`, `categoriesicon`) VALUES
(1, 'Development', 'developer_mode'),
(2, 'Business', 'business_center'),
(3, 'It & Software', 'desktop_mac'),
(4, 'Music', 'music_note'),
(5, 'Office Productivity', 'insert_chart_outlined'),
(6, 'Design', 'edit'),
(7, 'Marketing', 'track_changes'),
(8, 'Health and fitness', 'sentiment_satisfied_alt'),
(9, 'Personal development', 'import_contacts'),
(10, 'Lifestyle', 'location_city'),
(12, 'Photography', 'add_a_photo');

-- --------------------------------------------------------

--
-- Table structure for table `signup`
--

CREATE TABLE `signup` (
  `userid` int(11) NOT NULL,
  `fullname` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `role` int(11) DEFAULT '2'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `signup`
--

INSERT INTO `signup` (`userid`, `fullname`, `email`, `password`, `role`) VALUES
(1, 'srushti vaddoriya', 'srushti@gmail.com', 's@1234', 2),
(2, 'rinkal khatrani', 'r@gmail.com', 'r@1234', 2),
(3, 'nisha', 'n@gmail.com', 'n@1234', 2),
(4, 'mansijiyani', 'mansi@gmail.com', 'm@1234', 2),
(5, 'reena', 'reena@gmail.com', 'r@1234', 2),
(6, 'nilu', 'nilu@gmail.com', 'n@1234', 2),
(7, 'siddhu', 'siddu@gmail.com', 's@1234', 2),
(8, 'madhu', 'madhu@gmail.com', 'm@1234', 2);

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `id` int(11) NOT NULL,
  `catname` varchar(45) NOT NULL,
  `subcatid` int(11) DEFAULT NULL,
  `allsubtosub` varchar(45) NOT NULL,
  `topicid` int(11) NOT NULL,
  `populartopic` varchar(45) NOT NULL,
  `topicimage` varchar(45) DEFAULT NULL,
  `description` varchar(200) NOT NULL,
  `author` varchar(45) NOT NULL,
  `price` double NOT NULL,
  `videos` varchar(500) DEFAULT 'JavaScript and HTML.mp4'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`id`, `catname`, `subcatid`, `allsubtosub`, `topicid`, `populartopic`, `topicimage`, `description`, `author`, `price`, `videos`) VALUES
(1, 'development', 1, 'Web Development', 1, 'JavaScript', '364426_2991_5.jpg', 'The Complete JavaScript', 'john schiedman', 830, 'JavaScript and HTML.mp4'),
(2, 'development', 1, 'Web Development', 2, 'Angular', '756150_c033_2.jpg', 'The complete Angular', 'john nikol', 500, 'JavaScript and HTML.mp4'),
(3, 'development', 1, 'Web Development', 3, 'React', 'react.jpg', 'The complete react course', 'nikolaus', 846, 'JavaScript and HTML.mp4'),
(4, 'development', 2, 'Mobile Apps', 1, 'ios development', 'ios.jpg', 'The complete ios course', 'mr. devid', 851, 'JavaScript and HTML.mp4'),
(5, 'development', 2, 'Mobile Apps', 2, 'android development', 'android.jpg', 'The complete android ', 'mrs. healon', 325.32, 'JavaScript and HTML.mp4'),
(6, 'development', 2, 'Mobile Apps', 3, 'Swift', 'swift.jpg', 'The complete swift course', 'mr. john', 452, 'JavaScript and HTML.mp4'),
(7, 'business', 1, 'Finance', 1, 'Financial Analysis', 'financialanalysis.jpg', 'The complete Financial Analysis', 'lisa', 322, 'JavaScript and HTML.mp4'),
(8, 'business', 1, 'Finance', 2, 'investing', 'investing.jpg', 'The complete course of investing', 'robbin', 656, 'JavaScript and HTML.mp4'),
(9, 'business', 2, 'Enterpreneurship', 1, 'business fundamental', 'businessfundamental.jpg', 'The complete course of business fundamental dfffffffffffffd', 'rubinna', 356, 'JavaScript and HTML.mp4'),
(10, 'business', 2, 'Enterpreneurship', 2, 'startup', 'startup.jpg', 'The complete course of startup', 'shikha', 988, 'JavaScript and HTML.mp4'),
(11, 'it & software', 1, 'It Certification', 1, 'Amazon AWS', 'amazonaws.jpg', 'The complete course of Amazon Aws', 'jon abraham', 852, 'JavaScript and HTML.mp4'),
(12, 'it & software', 1, 'It Certification', 2, 'Cisco CCNA', 'ciscoccna.jpg', 'The complete course of cisco', 'jon bash', 956, 'JavaScript and HTML.mp4'),
(13, 'it & software', 2, 'Network and Security', 1, 'Ethical hacking', 'ethical_hacking.jpg', 'The complete course of ethical hacking', 'Lncon', 265, 'JavaScript and HTML.mp4'),
(14, 'it & software', 2, 'Network and Security', 2, 'Cyber Security', 'cybersecurity.jpg', 'The complete course of cyber security', 'Obama', 856, 'JavaScript and HTML.mp4'),
(15, 'it & software', 3, 'Hardware', 1, 'Arduino', 'arduino.jpg', 'The complete course of Arduino', 'mr. drump', 552, 'JavaScript and HTML.mp4'),
(16, 'office productivity', 1, 'Apple', 1, 'Apple keynote', 'applekeynote.jpg', 'The complete course of apple keynote', 'john Zahen', 562, 'JavaScript and HTML.mp4'),
(17, 'office productivity', 1, 'Apple', 2, 'mac basic', 'macbasic.jpg', 'The complete course of mac basic', 'zara', 652, 'JavaScript and HTML.mp4'),
(18, 'office productivity', 2, 'Google', 1, 'Google sheets', 'googlesheet.jpg', 'The complete course of Google sheet', 'jinaat', 564, 'JavaScript and HTML.mp4'),
(19, 'office productivity', 2, 'Google', 2, 'excel', 'excel.jpg', 'The complete course of Excel sheets', 'john zubir', 545, 'JavaScript and HTML.mp4'),
(20, 'personal development', 1, 'Productivity', 1, 'Goal Setting', 'goalsetting.jpg', 'The complete course of Goalsetting', 'jon kitty', 98, 'JavaScript and HTML.mp4'),
(21, 'personal development', 1, 'Productivity', 2, 'Time Mangement', 'timemgt.jpg', 'The complete course of Time management', 'john party', 797, 'JavaScript and HTML.mp4'),
(22, 'personal development', 2, 'Leadership', 1, 'couching', 'couching.jpg', 'The complete course of Couching', 'chiman', 6549, 'JavaScript and HTML.mp4'),
(23, 'personal development', 3, 'Leadership', 2, 'communication skill', 'communicationskills.jpg', 'The complete course of communication skill', 'chhagan', 6454, 'JavaScript and HTML.mp4'),
(24, 'Design', 1, 'Web Design', 1, 'wordpress', 'wordpress.jpg', 'The complete course of wordpress', 'mr. magan', 656, 'JavaScript and HTML.mp4'),
(25, 'Design', 1, 'Web Design', 2, 'css', 'css.jpg', 'The complete course of css stylesheet', 'ms. mannt', 232, 'JavaScript and HTML.mp4'),
(26, 'Design', 2, 'Graphic Design', 1, 'cartoon drawing', 'cartoondrawing.jpg', 'The complete course of cartoon drawing', 'maher', 65, 'JavaScript and HTML.mp4'),
(27, 'Design', 3, 'Design Tool', 1, 'photoshop', 'photoshop.jpg', 'The complete course of photoshop', 'mohtarma', 656, 'JavaScript and HTML.mp4'),
(28, 'Marketing', 1, 'Digital Marketing', 1, 'Google Ads', 'googleads.jpg', 'The complete course of Google Ads', 'mahir', 565, 'JavaScript and HTML.mp4'),
(29, 'Marketing', 2, 'Branding', 1, 'Blogging', 'blogging.jpg', 'The complete course of Blogging', 'mihir', 656, 'JavaScript and HTML.mp4'),
(30, 'Marketing', 3, 'Advertizing', 1, 'youtube marketing', 'youtubemarketing.jpg', 'The complete course of Youtube marketing', 'swits', 23, 'JavaScript and HTML.mp4'),
(31, 'Marketing', 3, 'Advertizing', 2, 'copy writing', 'copywriting.jpg', 'The complete course of copy writing', 'chinin', 565, 'JavaScript and HTML.mp4'),
(32, 'development', 1, 'Web Development', 4, 'Vue js', 'vuejs.jpg', 'Vue Essensial 3- complete description', 'anthony jyprge', 956, 'JavaScript and HTML.mp4'),
(36, 'Music', 1, 'Vocal', 1, 'Singing', 'singing.jpg', 'The Fast-Track to Singing Like a Pro', 'sunidhi chauhan', 451, 'JavaScript and HTML.mp4'),
(37, 'Music', 1, 'Vocal', 2, 'Voice Training', 'voicetraining.jpg', 'Proven Methods to Improve Your Vocal Skills', 'peter baker', 958, 'JavaScript and HTML.mp4'),
(38, 'Music', 1, 'Vocal', 3, 'Rapping', 'rapping.jpg', 'Freestyle Rap, Rap Like A Pro, And Write Lyrics', 'pat para', 658, 'JavaScript and HTML.mp4'),
(39, 'Music', 2, 'Music Software', 1, 'FL Studio', 'flstudio.jpg', 'Music Production In FL Studio for Mac & PC', 'Martin Sevenssos', 785, 'JavaScript and HTML.mp4'),
(40, 'Music', 2, 'Music Software', 2, 'Logic Pro X', 'logicprox.jpg', 'Music Production in Logic Pro X - The Complete Course!', 'thomas gyorge', 852, 'JavaScript and HTML.mp4'),
(41, 'Music', 2, 'Music Software', 3, 'DJ', 'dj.jpg', 'DJ School: I Worked at Armada Music', 'Ross palmeer', 753, 'JavaScript and HTML.mp4');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categoriesname_UNIQUE` (`categoriesname`);

--
-- Indexes for table `signup`
--
ALTER TABLE `signup`
  ADD PRIMARY KEY (`userid`),
  ADD UNIQUE KEY `email_UNIQUE` (`email`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `signup`
--
ALTER TABLE `signup`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
