-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 03, 2022 at 06:47 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `emp`
--

-- --------------------------------------------------------

--
-- Table structure for table `alogin`
--

CREATE TABLE `alogin` (
  `id` int(11) NOT NULL,
  `email` tinytext NOT NULL,
  `password` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `alogin`
--

INSERT INTO `alogin` (`id`, `email`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` int(11) NOT NULL,
  `firstName` varchar(100) NOT NULL,
  `lastName` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` text NOT NULL,
  `birthday` date NOT NULL,
  `gender` varchar(10) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `nid` int(20) NOT NULL,
  `address` varchar(100) DEFAULT NULL,
  `dept` varchar(100) NOT NULL,
  `degree` varchar(100) NOT NULL,
  `pic` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `firstName`, `lastName`, `email`, `password`, `birthday`, `gender`, `contact`, `nid`, `address`, `dept`, `degree`, `pic`) VALUES
(101, 'Mehadi', 'Hassan', 'mehadi@gmail.com', '5678', '1997-08-13', 'Male', '019195', 12121, 'Razarbagh', 'IT', 'BSc', 'images/no.jpg'),
(102, 'Asif', 'Islam', 'asifislam@gmail.com', '1234', '1999-01-01', 'Male', '01875878997', 303, 'Savar', 'CSE', 'MSc', 'images/no.jpg'),
(103, 'Selim', 'Sarder', 'selimsarder@gmail.com', '1234', '1990-02-02', 'Male', '5252', 6262, 'Thames, UK', 'Management', 'MSc', 'images/no.jpg'),
(104, 'Sumaia', 'Afrin', 'sumaiaafrin@xyz.corp', '1234', '1971-12-01', 'Female', '9595', 5959, 'Chemsford, USA', 'Creative', 'MSc', 'images/no.jpg'),
(105, 'Sagor', 'Hossain', 'sagorhossain@gmail.com', '1234', '1971-06-28', 'Male', '8585', 5858, 'Dhaka', 'Accounting', 'BSc', 'images/no.jpg'),
(106, 'Setu', 'Akter', 'setuakter@gmail.com', '1234', '1990-02-02', 'Female', '7575', 5757, 'Dhaka', 'Management', 'MSc', 'images/no.jpg'),
(107, 'Soomit', 'Das', 'soomitdas@gmail.com', '1234', '1993-03-03', 'Male', '4545', 5454, 'Dhaka', 'CSE', 'MSc', 'images/no.jpg'),
(108, 'Asadul', 'Islam', 'asadulislam@gmail.com', '1234', '1985-04-16', 'Male', '758758', 857857, 'Dhaka', 'CSE', 'PhD', 'images/no.jpg'),
(109, 'Saiful ', 'Islam', 'saifulislam@gmail.com', '1234', '1985-01-01', 'Male', '852852', 258258, 'Dhaka', 'CSE', 'PhD', 'images/no.jpg'),
(110, 'Emon', 'Khan', 'emonkhan@gmail.com', '1234', '1987-09-18', 'Male', '147147', 741741, 'USA', 'Accounting', 'PhD', 'images/no.jpg'),
(111, 'Hamim', 'Khan', 'hamimkhan@gmail.com', '1234', '2000-02-01', 'Male', '0187282', 112233, 'Dhaka', 'Management', 'BSc.', 'images/no.jpg'),
(113, 'Hridoy', 'Ahammed', 'hridoy345@gmail.com', '1234', '1999-10-07', 'Male', '01856948745', 2147483647, 'Dhaka', 'CSE', 'BSc', 'images/no.jpg'),
(118, 'slkddsf', 'skdfhkd', 'skdhfdh@gmail.com', '1234', '1995-01-01', 'Female', '01952941231', 987564668, 'Dhaka', 'Sales Managing', 'BSc', 'images/no.jpg'),
(120, 'Laboni', 'Akter', 'labonicsejnu@gmail.com', '1234', '2000-01-01', 'Female', '0173866963', 2147483647, 'Madaripur', 'CSE', 'BSc', 'images/no.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `employee_leave`
--

CREATE TABLE `employee_leave` (
  `id` int(11) DEFAULT NULL,
  `token` int(11) NOT NULL,
  `start` date DEFAULT NULL,
  `end` date DEFAULT NULL,
  `reason` char(100) DEFAULT NULL,
  `status` char(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee_leave`
--

INSERT INTO `employee_leave` (`id`, `token`, `start`, `end`, `reason`, `status`) VALUES
(101, 301, '2021-04-07', '2021-04-08', 'Sick Leave', 'Approved'),
(102, 305, '2021-04-07', '2021-04-08', 'Urgent Family Cause', 'Cancelled'),
(103, 306, '2021-04-08', '2021-04-08', 'Concert Tour', 'Approved'),
(101, 307, '2021-04-14', '2021-04-30', 'Emergency leave', 'Approved'),
(105, 308, '2021-04-26', '2021-04-30', 'Emergency leave', 'Cancelled'),
(111, 309, '2021-04-09', '2021-04-13', 'Visit to Village', 'Cancelled'),
(104, 310, '2021-04-08', '2021-04-09', 'Emergency Leave', 'Cancelled'),
(101, 311, '2022-03-25', '2022-03-29', 'sick', 'Pending'),
(102, 312, '2022-04-15', '2022-04-20', 'urgent cause', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE `project` (
  `pid` int(11) NOT NULL,
  `eid` int(11) DEFAULT NULL,
  `pname` varchar(100) DEFAULT NULL,
  `duedate` date DEFAULT NULL,
  `subdate` date DEFAULT '0000-00-00',
  `mark` int(11) NOT NULL,
  `status` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`pid`, `eid`, `pname`, `duedate`, `subdate`, `mark`, `status`) VALUES
(213, 101, 'Database', '2021-04-07', '2022-03-25', 10, 'Submitted'),
(214, 102, 'Test', '2021-04-10', '0000-00-00', 0, 'Due'),
(215, 105, 'Tesla Model Y', '2021-04-19', '2021-04-06', 10, 'Submitted'),
(216, 106, 'Hack', '2021-05-04', '2021-04-05', 10, 'Submitted'),
(217, 111, 'Do Nothing', '2021-04-02', '2021-04-01', 10, 'Submitted'),
(218, 105, 'Tesla Model X', '2021-04-03', '2021-04-03', 10, 'Submitted'),
(219, 101, 'PHP', '2021-04-07', '2022-02-18', 10, 'Submitted'),
(220, 110, 'Data Analysis', '2021-04-16', '2021-04-04', 8, 'Submitted'),
(221, 110, 'Data Analysis', '2021-04-16', '2021-04-04', 7, 'Submitted'),
(222, 103, 'Statistical', '2021-04-19', '2021-04-04', 6, 'Submitted'),
(223, 108, 'Software Scema', '2021-04-09', '2021-04-02', 3, 'Submitted'),
(224, 107, 'Security Check', '2021-04-26', '2021-04-05', 9, 'Due'),
(225, 109, 'ML', '2021-04-03', '2021-04-04', 6, 'Due'),
(226, 101, 'Data analysis', '2021-10-10', '2022-03-25', 0, 'Submitted'),
(227, 113, 'Data analysis', '2021-10-25', '0000-00-00', 0, 'Due'),
(233, 118, 'Data analysis', '2021-10-30', '0000-00-00', 0, 'Due'),
(234, 102, 'Cheking data', '2022-04-21', '0000-00-00', 0, 'Due');

-- --------------------------------------------------------

--
-- Table structure for table `rank`
--

CREATE TABLE `rank` (
  `eid` int(11) NOT NULL,
  `points` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rank`
--

INSERT INTO `rank` (`eid`, `points`) VALUES
(101, 10),
(102, 0),
(103, 0),
(104, 0),
(105, 0),
(106, 0),
(107, 0),
(108, 0),
(109, 0),
(110, 0),
(111, 10),
(113, 0),
(118, 0),
(120, 0);

-- --------------------------------------------------------

--
-- Table structure for table `salary`
--

CREATE TABLE `salary` (
  `id` int(11) NOT NULL,
  `base` int(11) NOT NULL,
  `bonus` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `salary`
--

INSERT INTO `salary` (`id`, `base`, `bonus`, `total`) VALUES
(101, 55000, 10, 60500),
(102, 16500, 0, 16500),
(103, 65000, 0, 65000),
(104, 78000, 0, 78000),
(105, 105000, 0, 105000),
(106, 60000, 0, 60000),
(107, 77000, 0, 77000),
(108, 50000, 0, 50000),
(109, 85000, 0, 85000),
(110, 47000, 0, 47000),
(111, 45000, 10, 49500),
(113, 70000, 0, 70000),
(118, 40000, 0, 40000),
(120, 20000, 0, 20000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alogin`
--
ALTER TABLE `alogin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `employee_leave`
--
ALTER TABLE `employee_leave`
  ADD PRIMARY KEY (`token`),
  ADD KEY `employee_leave_ibfk_1` (`id`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`pid`),
  ADD KEY `project_ibfk_1` (`eid`);

--
-- Indexes for table `rank`
--
ALTER TABLE `rank`
  ADD PRIMARY KEY (`eid`);

--
-- Indexes for table `salary`
--
ALTER TABLE `salary`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `alogin`
--
ALTER TABLE `alogin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT for table `employee_leave`
--
ALTER TABLE `employee_leave`
  MODIFY `token` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=313;

--
-- AUTO_INCREMENT for table `project`
--
ALTER TABLE `project`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=235;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `employee_leave`
--
ALTER TABLE `employee_leave`
  ADD CONSTRAINT `employee_leave_ibfk_1` FOREIGN KEY (`id`) REFERENCES `employee` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `project`
--
ALTER TABLE `project`
  ADD CONSTRAINT `project_ibfk_1` FOREIGN KEY (`eid`) REFERENCES `employee` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `rank`
--
ALTER TABLE `rank`
  ADD CONSTRAINT `rank_ibfk_1` FOREIGN KEY (`eid`) REFERENCES `employee` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `salary`
--
ALTER TABLE `salary`
  ADD CONSTRAINT `salary_ibfk_1` FOREIGN KEY (`id`) REFERENCES `employee` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
