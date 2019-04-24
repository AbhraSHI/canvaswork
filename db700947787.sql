-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 14, 2018 at 03:47 PM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 7.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db700947787`
--

-- --------------------------------------------------------

--
-- Table structure for table `favorite`
--

CREATE TABLE `favorite` (
  `id` int(11) NOT NULL,
  `bid_id` int(11) NOT NULL,
  `paid_id` int(11) NOT NULL,
  `who_sent` int(11) NOT NULL,
  `curdate` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `payment_status` int(11) NOT NULL,
  `amount` varchar(255) NOT NULL,
  `order_id` varchar(255) NOT NULL,
  `transaction_id` varchar(255) NOT NULL,
  `order_status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `favorite`
--

INSERT INTO `favorite` (`id`, `bid_id`, `paid_id`, `who_sent`, `curdate`, `status`, `payment_status`, `amount`, `order_id`, `transaction_id`, `order_status`) VALUES
(1, 2, 3, 2, '02/02/2018', 0, 0, '', '', '', ''),
(2, 6, 3, 6, '05/02/2018', 1, 1, '11', '111', '11', '1'),
(3, 1, 4, 1, '05/02/2018', 1, 0, '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `layout`
--

CREATE TABLE `layout` (
  `id` int(11) NOT NULL,
  `colour` varchar(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `layout`
--

INSERT INTO `layout` (`id`, `colour`, `status`) VALUES
(1, 'black', 0),
(2, 'blue', 1),
(3, 'cafe', 0),
(4, 'facebook', 0),
(5, 'green', 0),
(6, 'purple', 0),
(7, 'red', 0),
(8, 'white', 0),
(9, 'yellow', 0);

-- --------------------------------------------------------

--
-- Table structure for table `lookingforcategories`
--

CREATE TABLE `lookingforcategories` (
  `id` int(10) NOT NULL,
  `category` varchar(255) NOT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lookingforcategories`
--

INSERT INTO `lookingforcategories` (`id`, `category`, `created`) VALUES
(1, 'Dating', '2018-08-14 01:03:05'),
(2, 'Friendship', '2018-08-14 00:11:11'),
(3, 'Long-term', '2018-08-14 00:08:08'),
(4, 'Discreet affair', '2018-08-14 00:00:08'),
(5, 'Casual', '2018-08-14 00:00:00'),
(6, 'Mentorship', '2018-08-14 00:11:19');

-- --------------------------------------------------------

--
-- Table structure for table `lookingfors`
--

CREATE TABLE `lookingfors` (
  `id` int(10) NOT NULL,
  `lookforcat_id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lookingfors`
--

INSERT INTO `lookingfors` (`id`, `lookforcat_id`, `user_id`, `created`) VALUES
(45, 1, 14, '2018-08-14 15:46:15'),
(46, 2, 14, '2018-08-14 15:46:15'),
(47, 3, 14, '2018-08-14 15:46:15'),
(48, 4, 14, '2018-08-14 15:46:15');

-- --------------------------------------------------------

--
-- Table structure for table `private_image`
--

CREATE TABLE `private_image` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `public_image`
--

CREATE TABLE `public_image` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `registration_user`
--

CREATE TABLE `registration_user` (
  `id` int(11) NOT NULL,
  `sex` varchar(255) NOT NULL,
  `whopaysdate` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `dob` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `ethnicity` varchar(255) NOT NULL,
  `body_type` varchar(255) NOT NULL,
  `height` varchar(255) NOT NULL,
  `relationship` varchar(255) NOT NULL,
  `interested_in` varchar(255) NOT NULL,
  `looking_for` varchar(255) NOT NULL,
  `where_do_you_live` varchar(255) NOT NULL,
  `education` varchar(255) NOT NULL,
  `religion` varchar(255) NOT NULL,
  `children` varchar(255) NOT NULL,
  `smoking` varchar(255) NOT NULL,
  `drinking` varchar(255) NOT NULL,
  `occupation` varchar(255) NOT NULL,
  `income` varchar(255) NOT NULL,
  `describe_yourself` varchar(255) NOT NULL,
  `your_ideal_first_date` text NOT NULL,
  `price` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registration_user`
--

INSERT INTO `registration_user` (`id`, `sex`, `whopaysdate`, `username`, `email`, `password`, `dob`, `location`, `ethnicity`, `body_type`, `height`, `relationship`, `interested_in`, `looking_for`, `where_do_you_live`, `education`, `religion`, `children`, `smoking`, `drinking`, `occupation`, `income`, `describe_yourself`, `your_ideal_first_date`, `price`, `status`, `created`) VALUES
(1, '1', '1', 'makarandra', 'seohunkmakarandra@gmail.com', 'seohunk@123', '15/9/1987', 'Albama,uk', 'Black / African Descent', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '0000-00-00 00:00:00'),
(2, '2', '1', 'rita', 'rita@test.com', 'seohunk@123', '12/8/1989', 'Bhubaneswar,orissa', 'Black / African Descent', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '0000-00-00 00:00:00'),
(3, '1', '2', 'rakes', 'rakes@test.com', 'seohunk@123', '10/6/1990', 'Albama,uk', 'Black / African Descent', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '200', 0, '0000-00-00 00:00:00'),
(4, '2', '2', 'mita', 'mita@test.com', 'seohunk@123', '14/9/1988', 'Delhi,India', 'Black / African Descent', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '34', 0, '0000-00-00 00:00:00'),
(5, '1', '1', 'bid1', 'bid1@test.com', 'seohunk@123', '12/10/1987', 'Cuttack,Orissa', 'Black / African Descent', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '0000-00-00 00:00:00'),
(6, '2', '1', 'jacky', 'jacky@test.com', 'seohunk@123', '12/8/1990', 'Cuttack,Orissa', 'Black / African Descent', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '0000-00-00 00:00:00'),
(7, '1', '2', 'raj', 'raj@test.com', 'seohunk@123', '14/10/1987', 'Cuttack,Orissa', 'Black / African Descent', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '100', 0, '0000-00-00 00:00:00'),
(8, '2', '2', 'sakshy', 'sakshy@test.com', 'seohunk@123', '14/6/1989', 'Sambalpur,Orissa', 'Black / African Descent', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '50', 0, '0000-00-00 00:00:00'),
(9, '1', '1', 'ABhrea', 'asd', 'asd', '18/2/1982', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '0000-00-00 00:00:00'),
(10, '1', '1', 'ABhrea', 'asd', 'asd', '18/2/1982', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '0000-00-00 00:00:00'),
(11, '1', '1', 'Abhra', 'abhra1@gmail.com', '76e4291d4f58f7ce231a81d3f76095bc', '17/9/1983', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '0000-00-00 00:00:00'),
(12, '1', '1', 'Abhra', 'abhrasarkar@yahoo.com', '4f0d7444419dc458b6550f0081e0cbb5', '15/5/1994', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '0000-00-00 00:00:00'),
(13, '1', '1', 'Chhabi Sir', 'chhabi@gmail.com', '6a40b49297ed801fb5176956ac8d9360', '16/7/1990', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '0000-00-00 00:00:00'),
(14, '1', '1', 'Abhra Sarkar', 'Abhra@gmail.com', '4f0d7444419dc458b6550f0081e0cbb5', '13/8/1931', 'Bhubaneswar', 'Asian', 'Curvy', '< 5\'0', 'Single', '2', '', '', 'High School', '6', 'No Children', 'Non-Smoker', '', 'Developer', '', '', '', '', 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `religion`
--

CREATE TABLE `religion` (
  `id` int(10) NOT NULL,
  `religion` varchar(255) NOT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `religion`
--

INSERT INTO `religion` (`id`, `religion`, `created`) VALUES
(1, 'Christian (Catholic)', '2018-08-14 00:11:11'),
(2, 'Christian (Orthodox)', '2018-08-14 00:00:18'),
(3, 'Christian (Protestant)', '2018-08-14 00:10:11'),
(4, 'Christian (Mormon)', '2018-08-14 00:29:15'),
(5, 'Christian (Other)', '2018-08-14 00:14:13'),
(6, 'Hindu', '2018-08-14 00:00:14'),
(7, 'Jewish', '2018-08-14 00:15:13'),
(8, 'Muslim', '2018-08-14 00:00:18'),
(9, 'New Age (Spiritual But Not Religious)', '2018-08-14 00:34:23'),
(10, 'Other Religion', '2018-08-14 00:00:26');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `user_group` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `birthdate` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `user_group`, `name`, `phone`, `birthdate`, `username`, `email`, `password`, `status`, `url`) VALUES
(1, 1, 'test', '7751027463', '11/11/2000', 'admin', 'test@test.com', '21232f297a57a5a743894a0e4a801fc3', 1, '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `favorite`
--
ALTER TABLE `favorite`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `layout`
--
ALTER TABLE `layout`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lookingforcategories`
--
ALTER TABLE `lookingforcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lookingfors`
--
ALTER TABLE `lookingfors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `private_image`
--
ALTER TABLE `private_image`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `public_image`
--
ALTER TABLE `public_image`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registration_user`
--
ALTER TABLE `registration_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `religion`
--
ALTER TABLE `religion`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `url` (`url`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `favorite`
--
ALTER TABLE `favorite`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `layout`
--
ALTER TABLE `layout`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `lookingforcategories`
--
ALTER TABLE `lookingforcategories`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `lookingfors`
--
ALTER TABLE `lookingfors`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `private_image`
--
ALTER TABLE `private_image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `public_image`
--
ALTER TABLE `public_image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `registration_user`
--
ALTER TABLE `registration_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `religion`
--
ALTER TABLE `religion`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
