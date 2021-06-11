-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 11, 2021 at 01:23 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `trail5`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `name` varchar(50) NOT NULL,
  `mailid` varchar(100) NOT NULL,
  `no` int(5) NOT NULL,
  `event` varchar(100) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`name`, `mailid`, `no`, `event`, `status`) VALUES
('Arun', 'arun@gmail.com', 5, 'BAS KAR BASSI- Anubhav Singh Bassi Live', 1),
('Ajay', 'ajay@hotmail.com', 2, 'NIT Delhi Convocation 2020', 1),
('Pranav sharma', 'ps939919@gmail.com', 3, 'BAS KAR BASSI- Anubhav Singh Bassi Live', 1);

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `name` varchar(100) NOT NULL,
  `mailid` varchar(100) NOT NULL,
  `message` varchar(5000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`name`, `mailid`, `message`) VALUES
('Anil', 'anil@rediffmail.com', 'May be little better....:('),
('Anurag Soni', 'anurag@gmail.com', 'Crazy !!!!!'),
('Arjun', 'arjun@yahoo.com', 'Great!!'),
('Arun', 'raghb@gamil.com', 'Wonderful experience!!'),
('jbws', 'kdnc', 'knsknsdn\r\n'),
('Mohit Kumar', 'mohit@nitdelhi.ac.in', 'mohit');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `EventID` int(11) NOT NULL,
  `Title` varchar(255) NOT NULL,
  `Description` varchar(255) NOT NULL,
  `StartTime` datetime NOT NULL,
  `EndTime` datetime NOT NULL,
  `Cost` int(11) NOT NULL,
  `LocationID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`EventID`, `Title`, `Description`, `StartTime`, `EndTime`, `Cost`, `LocationID`) VALUES
(1, '07-03-2021 NIGHT', 'All India Warning Bulletin (Night) Dated 07-03-2021_0', '2020-11-20 20:00:00', '2020-11-20 22:00:00', 500, 1),
(2, '07-03-2021 MORNING', 'All India Warning Bulletin (Morning) Dated 07-03-2021', '2020-11-21 20:00:00', '2020-11-21 20:00:00', 300, 2),
(3, '06-03-2021 NIGHT', 'All India Warning Bulletin (Night) Dated 06-03-2021_0', '2020-11-22 20:00:00', '2020-11-22 22:00:00', 250, 3),
(4, '06-03-2021 MORNING', 'All India Warning Bulletin (Morning) Dated 06-03-2021', '2020-11-23 20:00:00', '2020-11-19 21:00:00', 450, 1);

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE `locations` (
  `LocationID` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `ManagerFName` varchar(255) NOT NULL,
  `ManagerLName` varchar(255) NOT NULL,
  `ManagerEmail` varchar(255) NOT NULL,
  `ManagerNumber` int(11) NOT NULL,
  `MaxCapacity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`LocationID`, `Name`, `Address`, `ManagerFName`, `ManagerLName`, `ManagerEmail`, `ManagerNumber`, `MaxCapacity`) VALUES
(1, 'THE WALL AUDITORIUM', 'Connaught Place ,New Delhi,110001', 'Aditya', 'Sharma', 'aditya2@gmail.com', 4611, 3500),
(2, 'Movie Under The Stars', 'Tilak Nagar, New Delhi, 110018', 'Pranav', 'sharma', 'ps939919@yahoo.com', 4527, 1000),
(3, 'The Rock Vibe', 'Saket, New Delhi,110017', 'Siddhant', 'rajpoot', 'sid@gmail.com', 37813, 3000),
(4, 'A DREAM', 'RK Puram, New Delhi,110022', 'ram krishna', 'mishra', 'its_r_k@gmail.com', 487254, 300);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(50) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `role`) VALUES
(1, 'user', 'user', 'user'),
(2, 'test', '1234', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `venuebookings`
--

CREATE TABLE `venuebookings` (
  `name` varchar(50) NOT NULL,
  `mailid` varchar(100) NOT NULL,
  `eventname` varchar(50) NOT NULL,
  `venue` varchar(50) NOT NULL,
  `eventdescription` varchar(200) NOT NULL,
  `artistinfo` varchar(100) NOT NULL,
  `start` datetime NOT NULL,
  `end` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `venuebookings`
--

INSERT INTO `venuebookings` (`name`, `mailid`, `eventname`, `venue`, `eventdescription`, `artistinfo`, `start`, `end`) VALUES
('/kehlk', 'jnedn', 'nknd', 'THE WALL - Auditorium', 'kndkljacn', 'jnjnjlden', '2020-11-30 01:00:00', '2021-03-02 13:00:00'),
('Ajay', 'ajay@hotmail.com', 'Theatre Play - JULIUS CAESAR', 'Movie Under The Stars - Open Air Theatre', 'Watch the play based on the life of Julius Caesar derived by the play JULIUS CEASAR by William Shakespeare', 'Adharsh Jain, Kannan Gill, Kunaal Rao & many more', '2020-11-29 16:00:00', '2020-11-29 20:30:00'),
('aman', '123@gmail', 'ddre', 'Movie Under The Stars - Open Air Theatre', 'live show', 'prakhar', '2020-11-20 13:09:00', '2020-11-17 16:11:00'),
('Anil', 'anil@rediffmail.com', 'Live musical Show by Sonu Nigam & Shaan', 'The Rock Vibe - Concert Arena', 'Enjoy some soulful performances by Sonu Nigam & Shaan', 'Sonu Nigam , Shaan', '2020-11-28 18:00:00', '2020-11-28 22:00:00'),
('Arun', 'arun@gmail.com', 'Abhishek Upmanyu - Jealous of Sabajiwala', 'THE WALL - Auditorium', 'Live Stand-up Comedy Show by Abhishek Upmanyu', 'Abhishek Upmanyu', '2020-11-27 18:00:00', '2020-11-27 20:00:00'),
('karan', 'karan@gmail.com', 'karan gaye ga', 'The Rock Vibe - Concert Arena', 'karan ga raha hai', 'karan', '2021-03-20 16:04:00', '2021-03-28 16:04:00'),
('Mohit Kumar', 'mohit@nitdelhi.ac.in', 'Live Concert by Mohit Kumar', 'The Rock Vibe - Concert Arena', 'Get ready to groove on the hits of Mohit Kumar', 'Mohit Kumar, Anurag Soni', '2020-12-31 22:00:00', '2021-01-01 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`EventID`),
  ADD KEY `LocationID` (`LocationID`);

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`LocationID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `venuebookings`
--
ALTER TABLE `venuebookings`
  ADD UNIQUE KEY `name` (`name`),
  ADD UNIQUE KEY `eventname` (`eventname`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `EventID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `locations`
--
ALTER TABLE `locations`
  MODIFY `LocationID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `events`
--
ALTER TABLE `events`
  ADD CONSTRAINT `events_ibfk_1` FOREIGN KEY (`LocationID`) REFERENCES `locations` (`LocationID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
