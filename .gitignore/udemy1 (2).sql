-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 11, 2019 at 12:54 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `udemy1`
--

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `catid` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `userid`, `catid`, `createdAt`, `updatedAt`) VALUES
(2, 3, 4, '2019-06-05 11:56:29', '2019-06-05 11:56:29'),
(3, 2, 5, '2019-06-05 11:57:46', '2019-06-05 11:57:46'),
(4, 6, 1, '2019-06-06 07:48:57', '2019-06-06 07:48:57'),
(5, 6, 2, '2019-06-06 07:49:05', '2019-06-06 07:49:05'),
(6, 6, 32, '2019-06-06 07:49:07', '2019-06-06 07:49:07'),
(7, 6, 4, '2019-06-06 08:05:03', '2019-06-06 08:05:03');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `categoriesname` varchar(255) DEFAULT NULL,
  `categoriesicon` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `categoriesname`, `categoriesicon`, `createdAt`, `updatedAt`) VALUES
(1, 'Development', 'developer_mode', '2019-06-06 06:06:25', '2019-06-06 06:06:25'),
(2, 'Business', 'business_center', '2019-06-06 06:07:06', '2019-06-10 10:45:26'),
(3, 'It & Software', 'desktop_mac', '2019-06-06 06:07:30', '2019-06-06 06:07:30'),
(4, 'Music', 'music_note', '2019-06-06 06:07:57', '2019-06-06 06:07:57'),
(5, 'Office Productivity', 'insert_chart_outlined', '2019-06-06 06:08:10', '2019-06-06 06:08:10'),
(6, 'Design', 'edit', '2019-06-06 06:08:23', '2019-06-06 06:08:23'),
(7, 'Marketing', 'track_changes', '2019-06-06 06:08:37', '2019-06-06 06:08:37'),
(8, 'Health and fitness', 'sentiment_satisfied_alt', '2019-06-06 06:08:46', '2019-06-06 06:08:46'),
(9, 'Personal development', 'import_contacts', '2019-06-06 06:08:56', '2019-06-06 06:08:56'),
(10, 'Lifestyle', 'location_city', '2019-06-06 06:09:09', '2019-06-06 06:09:09'),
(11, 'Photography', 'add_a_photo', '2019-06-06 06:09:50', '2019-06-06 06:09:50');

-- --------------------------------------------------------

--
-- Table structure for table `signups`
--

CREATE TABLE `signups` (
  `userid` int(11) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` int(11) DEFAULT '2',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `signups`
--

INSERT INTO `signups` (`userid`, `fullname`, `email`, `password`, `role`, `createdAt`, `updatedAt`) VALUES
(1, 'jay', 'jay@gmail.com', 'j@1234', 3, '2019-06-05 12:42:05', '2019-06-05 12:42:05'),
(2, 'mit', 'mit@gmail.com', 'm@1234', 3, '2019-06-05 12:51:17', '2019-06-05 12:51:17'),
(3, 'mite', 'mite@gmail.com', 'm@1234', 3, '2019-06-05 13:03:12', '2019-06-05 13:03:12'),
(4, 'reena', 'reena@gmail.com', 'r@1234', 3, '2019-06-06 04:56:34', '2019-06-06 04:56:34'),
(5, 'rinkal', 'rinkal@gmail.com', 'r@1234', 1, '2019-06-06 05:01:21', '2019-06-06 05:01:21'),
(6, 'yash', 'yash@gmail.com', 'y@1234', 3, '2019-06-06 05:57:32', '2019-06-06 05:57:32');

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `id` int(11) NOT NULL,
  `catname` varchar(255) NOT NULL,
  `allsubtosub` varchar(255) NOT NULL,
  `populartopic` varchar(255) NOT NULL,
  `topicimage` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `price` double NOT NULL,
  `videos` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`id`, `catname`, `allsubtosub`, `populartopic`, `topicimage`, `description`, `author`, `price`, `videos`, `createdAt`, `updatedAt`) VALUES
(1, 'development', 'Web Development', 'JavaScript', '1559801968820-javascript.jpg', 'The Complete JavaScript', 'john schiedman', 830, '1559801968821-ademovideo.mp4', '2019-06-06 06:19:28', '2019-06-06 06:19:28'),
(2, 'development', 'Web Development', 'Angular', '1559802236540-angular.jpg', 'The Complete Angular', 'john nikol', 500, '1559802236541-ademovideo.mp4', '2019-06-06 06:23:56', '2019-06-06 06:23:56'),
(3, 'development', 'Web Development', 'React', '1559802299171-react.jpg', 'The Complete React course', 'nikolus', 845, '1559802299172-ademovideo.mp4', '2019-06-06 06:24:59', '2019-06-06 06:24:59'),
(4, 'development', 'Mobile Apps', 'Ios Development', '1559802378175-ios.jpg', 'The Complete Ios course', 'me. devid', 851, '1559802378175-ademovideo.mp4', '2019-06-06 06:26:18', '2019-06-06 06:26:18'),
(5, 'development', 'Mobile Apps', 'Android Development', '1559802522698-android.jpg', 'The Complete Android course', 'me. hellon', 325.25, '1559802522699-ademovideo.mp4', '2019-06-06 06:28:42', '2019-06-06 06:28:42'),
(6, 'development', 'Mobile Apps', 'Swift', '1559802637493-swift.jpg', 'The Complete swiftcourse', 'me. ram', 586, '1559802637494-ademovideo.mp4', '2019-06-06 06:30:37', '2019-06-06 06:30:37'),
(7, 'business', 'Finance', 'Finance Analysis', '1559802736276-financialanalysis.jpg', 'The Complete Finance Course', 'ms. himani', 253, '1559802736277-ademovideo.mp4', '2019-06-06 06:32:16', '2019-06-06 06:32:16'),
(8, 'business', 'Finance', 'Investing', '1559802789534-investing.jpg', 'The Complete Course of Investing', 'john ramji', 956, '1559802789536-ademovideo.mp4', '2019-06-06 06:33:09', '2019-06-06 06:33:09'),
(9, 'business', 'Enterpreneurship', 'Business Fundamental', '1559802907728-businessfundamental.jpg', 'The complete course of business fundamental', 'rubina', 325, '1559802907729-ademovideo.mp4', '2019-06-06 06:35:07', '2019-06-06 06:35:07'),
(10, 'business', 'Enterpreneurship', 'Startup', '1559802950445-startup.jpg', 'The complete course of Startup', 'shikha', 555, '1559802950446-ademovideo.mp4', '2019-06-06 06:35:50', '2019-06-06 06:35:50'),
(11, 'it & software', 'It Certification', 'Amazon AWS', '1559803074574-amazonaws.jpg', 'The complete course of Amazon Aws', 'jon abraham', 956, '1559803074575-ademovideo.mp4', '2019-06-06 06:37:54', '2019-06-06 06:37:54'),
(12, 'it & software', 'It Certification', 'Cisco CCNA', '1559803135113-ciscoccna.jpg', 'The complete course of cisco', 'jon bash', 753, '1559803135114-ademovideo.mp4', '2019-06-06 06:38:55', '2019-06-06 06:38:55'),
(13, 'it & software', 'Network and Security', 'Ethical hacking', '1559803216795-ethicalhacking.jpg', 'The complete course of ethical hacking', 'Lnconsh', 356, '1559803216796-ademovideo.mp4', '2019-06-06 06:40:16', '2019-06-06 06:40:16'),
(14, 'it & software', 'Network and Security', 'Cyber Security', '1559803264741-cybersecurity.jpg', 'The complete course of cyber security', 'Obama', 852, '1559803264742-ademovideo.mp4', '2019-06-06 06:41:04', '2019-06-06 06:41:04'),
(15, 'it & software', 'Hardware', 'Arduino', '1559803356453-arduino.jpg', 'The complete course of Arduino', 'trump', 421, '1559803356454-ademovideo.mp4', '2019-06-06 06:42:36', '2019-06-06 06:42:36'),
(16, 'office productivity', 'Apple', 'Apple keynote', '1559803415908-applekeynote.jpg', 'The complete course of apple keynote', 'trump', 252, '1559803415909-ademovideo.mp4', '2019-06-06 06:43:36', '2019-06-06 06:43:36'),
(17, 'office productivity', 'Apple', 'Mac Basic', '1559803476333-macbasic.jpg', 'The complete course of Mac Basic', 'zara', 652, '1559803476334-ademovideo.mp4', '2019-06-06 06:44:36', '2019-06-06 06:44:36'),
(18, 'office productivity', 'Google', 'Google sheets', '1559803539904-googlesheet.jpg', 'The complete course of Google sheets', 'zubir', 564, '1559803539905-ademovideo.mp4', '2019-06-06 06:45:40', '2019-06-06 06:45:40'),
(19, 'office productivity', 'Google', 'Excel', '1559803575709-excel.jpg', 'The complete course of Excel', 'zinnat', 754, '1559803575710-ademovideo.mp4', '2019-06-06 06:46:15', '2019-06-06 06:46:15'),
(20, 'personal development', 'Productivity', 'Goal Setting', '1559803632606-goalsetting.jpg', 'The complete course of Goal Setting', 'mr. johnson', 421, '1559803632607-ademovideo.mp4', '2019-06-06 06:47:12', '2019-06-06 06:47:12'),
(21, 'personal development', 'Productivity', 'Time Mangement\",', '1559803667831-timemgt.jpg', 'The complete course of Time Mangement\",', 'mr. john', 154, '1559803667832-ademovideo.mp4', '2019-06-06 06:47:47', '2019-06-06 06:47:47'),
(22, 'personal development', 'Leadership', 'couching', '1559803724677-couching.jpg', 'The complete course of couching', 'mr. hen', 325, '1559803724678-ademovideo.mp4', '2019-06-06 06:48:44', '2019-06-06 06:48:44'),
(23, 'personal development', 'Leadership', 'communication skill', '1559803877156-communicationskills.jpg', 'The complete course of communication skill', 'mr. henoi', 568, '1559803877157-ademovideo.mp4', '2019-06-06 06:51:17', '2019-06-06 06:51:17'),
(24, 'Design', 'Web Design', 'wordpress', '1559803954384-wordpress.jpg', 'The complete course of wordpress', 'mr. magan', 656, '1559803954385-ademovideo.mp4', '2019-06-06 06:52:34', '2019-06-06 06:52:34'),
(25, 'Design', 'Web Design', 'css', '1559804018060-css.jpg', 'The complete course of css stylesheet', 'mr. chhagan', 956, '1559804018061-ademovideo.mp4', '2019-06-06 06:53:38', '2019-06-06 06:53:38'),
(26, 'Design', 'Graphic Design', 'cartoon drawing', '1559804060032-cartoondrawing.jpg', 'The complete course of cartoon drawing', 'maher', 95, '1559804060033-ademovideo.mp4', '2019-06-06 06:54:20', '2019-06-06 06:54:20'),
(27, 'Design', 'Design Tool', 'photoshop', '1559804111075-photoshop.jpg', 'The complete course of photoshop', 'mohtarma', 562, '1559804111076-ademovideo.mp4', '2019-06-06 06:55:11', '2019-06-06 06:55:11'),
(28, 'Marketing', 'Digital Marketing', 'Google Ads', '1559804165147-googleads.jpg', 'The complete course of Google Ads', 'mahir', 568, '1559804165148-ademovideo.mp4', '2019-06-06 06:56:05', '2019-06-06 06:56:05'),
(29, 'Marketing', 'Branding', 'Blogging', '1559804220902-blogging.jpg', 'The complete course of Blogging', 'mihir', 258, '1559804220903-ademovideo.mp4', '2019-06-06 06:57:01', '2019-06-06 06:57:01'),
(30, 'Marketing', 'Advertizing', 'youtube marketing', '1559804263870-youtubemarketing.jpg', 'The complete course of youtube marketing', 'john devid', 478, '1559804263870-ademovideo.mp4', '2019-06-06 06:57:43', '2019-06-06 06:57:43'),
(31, 'Marketing', 'Advertizing', 'copy writing', '1559804296646-copywriting.jpg', 'The complete course of copy writing', 'john devidon', 847, '1559804296647-ademovideo.mp4', '2019-06-06 06:58:16', '2019-06-06 06:58:16'),
(32, 'development', 'Web Development', 'Vue js', '1559804374460-vuejs.jpg', 'Vue Essensial 3- complete description', 'anthony jyprge', 485, '1559804374461-ademovideo.mp4', '2019-06-06 06:59:34', '2019-06-06 06:59:34'),
(33, 'Music', 'Vocal', 'Singing', '1559804539041-singing.jpg', 'The Fast-Track to Singing Like a Pro', 'sunidhi chauhan', 451, '1559804539042-ademovideo.mp4', '2019-06-06 07:02:19', '2019-06-06 07:02:19'),
(34, 'Music', 'Vocal', 'Voice Training', '1559806882058-voicetraining.jpg', 'Proven Methods to Improve Your Vocal Skills', 'peter baker', 475, '1559806882058-ademovideo.mp4', '2019-06-06 07:41:22', '2019-06-06 07:41:22'),
(35, 'Music', 'Vocal', 'Rapping', '1559806946750-rapping.jpg', 'Freestyle Rap, Rap Like A Pro, And Write Lyrics', 'pat para', 785, '1559806946751-ademovideo.mp4', '2019-06-06 07:42:26', '2019-06-06 07:42:26'),
(36, 'Music', 'Music Software', 'FL Studio', '1559807116372-flstudio.jpg', 'Music Production In FL Studio for Mac & PC', 'Martin Sevenssos', 248, '1559807116373-ademovideo.mp4', '2019-06-06 07:45:16', '2019-06-06 07:45:16'),
(37, 'Music', 'Music Software', 'Logic Pro X\",', '1559807185992-logicprox.jpg', 'Music Production in Logic Pro X - The Complete Course!', 'thomas gyorge', 852, '1559807185992-ademovideo.mp4', '2019-06-06 07:46:26', '2019-06-06 07:46:26'),
(38, 'Music', 'Music Software', 'DJ', '1559807234705-dj.jpg', 'DJ School: I Worked at Armada Music', 'thomas gyorgere', 749, '1559807234706-ademovideo.mp4', '2019-06-06 07:47:14', '2019-06-06 07:47:14');

-- --------------------------------------------------------

--
-- Table structure for table `subcatsnames`
--

CREATE TABLE `subcatsnames` (
  `id` int(11) NOT NULL,
  `catname` varchar(255) NOT NULL,
  `subcategories` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcatsnames`
--

INSERT INTO `subcatsnames` (`id`, `catname`, `subcategories`, `createdAt`, `updatedAt`) VALUES
(1, 'Development', 'Web Development', '2019-06-11 08:44:52', '2019-06-11 08:44:52'),
(2, 'Development', 'Mobile Apps', '2019-06-11 08:45:25', '2019-06-11 08:45:25'),
(3, 'Business', 'Finance', '2019-06-11 08:45:53', '2019-06-11 08:45:53'),
(4, 'Business', 'Enterpreneurship', '2019-06-11 08:46:25', '2019-06-11 08:46:25'),
(5, 'It & Software', 'It Certification', '2019-06-11 08:48:51', '2019-06-11 08:48:51'),
(6, 'It & Software', 'Network and Security', '2019-06-11 08:49:02', '2019-06-11 08:49:02'),
(7, 'It & Software', 'Hardware', '2019-06-11 08:49:16', '2019-06-11 08:49:16'),
(8, 'Office Productivity', 'Apple', '2019-06-11 08:52:47', '2019-06-11 08:52:47'),
(9, 'Office Productivity', 'Google', '2019-06-11 08:53:01', '2019-06-11 08:53:01'),
(10, 'Personal development', 'Productivity', '2019-06-11 08:54:00', '2019-06-11 08:54:00'),
(11, 'Personal development', 'Leadership', '2019-06-11 08:54:13', '2019-06-11 08:54:13'),
(12, 'Design', 'Web Design', '2019-06-11 08:55:02', '2019-06-11 08:55:02'),
(13, 'Design', 'Graphic Design', '2019-06-11 08:55:14', '2019-06-11 08:55:14'),
(14, 'Design', 'Design Tool', '2019-06-11 09:08:08', '2019-06-11 09:08:08'),
(15, 'Marketing', 'Digital Marketing', '2019-06-11 09:09:25', '2019-06-11 09:09:25'),
(16, 'Marketing', 'Branding', '2019-06-11 09:09:40', '2019-06-11 09:09:40'),
(17, 'Marketing', 'Advertizing', '2019-06-11 09:09:57', '2019-06-11 09:09:57'),
(18, 'Music', 'Vocal', '2019-06-11 09:24:23', '2019-06-11 09:24:23'),
(19, 'Music', 'Music Software', '2019-06-11 09:24:47', '2019-06-11 09:24:47');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categoriesname` (`categoriesname`);

--
-- Indexes for table `signups`
--
ALTER TABLE `signups`
  ADD PRIMARY KEY (`userid`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcatsnames`
--
ALTER TABLE `subcatsnames`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `signups`
--
ALTER TABLE `signups`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `subcatsnames`
--
ALTER TABLE `subcatsnames`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
