-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 21, 2018 at 06:38 AM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `moviedb`
--

-- --------------------------------------------------------

--
-- Table structure for table `cast`
--

CREATE TABLE `cast` (
  `MID` int(11) NOT NULL,
  `PID` int(11) NOT NULL,
  `CharacterName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cast`
--

INSERT INTO `cast` (`MID`, `PID`, `CharacterName`) VALUES
(1, 2, 'Joshua'),
(1, 15, 'Brooke'),
(2, 15, 'Zoe'),
(2, 19, 'Joseph'),
(3, 1, 'Sarah'),
(3, 4, 'Caleb'),
(3, 17, 'Alexander'),
(4, 13, 'Erin'),
(4, 14, 'Patrick'),
(4, 16, 'Breanna'),
(5, 12, 'Alexander'),
(5, 16, 'Abigail'),
(6, 4, 'Jose'),
(6, 6, 'Isabella'),
(6, 15, 'Alexis'),
(7, 3, 'Emma'),
(7, 13, 'Madeline'),
(7, 16, 'Nicole'),
(7, 18, 'Caitlin'),
(8, 5, 'Jack'),
(8, 20, 'Destiny'),
(9, 1, 'Kimberly'),
(9, 5, 'Jared'),
(9, 6, 'Brooke'),
(9, 7, 'Robert'),
(9, 15, 'Abigail'),
(9, 17, 'Sean'),
(10, 2, 'Christopher'),
(10, 13, 'Sydney'),
(11, 10, 'Natalie'),
(11, 17, 'Adam'),
(12, 1, 'Savannah'),
(12, 2, 'John'),
(12, 10, 'Jessica'),
(12, 16, 'Brittany'),
(12, 17, 'Elijah'),
(13, 3, 'Gabrielle'),
(13, 7, 'Cameron'),
(13, 13, 'Danielle'),
(14, 2, 'Isaiah'),
(14, 6, 'Chloe'),
(14, 15, 'Jasmine'),
(15, 6, 'Mariah'),
(15, 7, 'Richard'),
(15, 12, 'Jack'),
(16, 8, 'Angel'),
(17, 2, 'Ryan'),
(17, 5, 'Daniel'),
(17, 15, 'Shelby'),
(18, 7, 'Christian'),
(18, 15, 'Mackenzie'),
(19, 9, 'Nicole'),
(19, 12, 'Seth'),
(19, 14, 'Adam'),
(20, 1, 'Samantha'),
(20, 2, 'Juan'),
(20, 7, 'Daniel'),
(20, 9, 'Jada'),
(20, 14, 'Samuel'),
(20, 16, 'Amber');

-- --------------------------------------------------------

--
-- Table structure for table `createdby`
--

CREATE TABLE `createdby` (
  `PID` int(11) NOT NULL,
  `MID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `createdby`
--

INSERT INTO `createdby` (`PID`, `MID`) VALUES
(1, 2),
(1, 3),
(1, 9),
(1, 12),
(1, 18),
(1, 20),
(2, 1),
(2, 6),
(2, 10),
(2, 11),
(2, 12),
(2, 14),
(2, 17),
(2, 20),
(3, 3),
(3, 5),
(3, 7),
(3, 8),
(3, 12),
(3, 13),
(3, 19),
(3, 20),
(4, 2),
(4, 3),
(4, 4),
(4, 5),
(4, 6),
(4, 9),
(4, 10),
(4, 12),
(4, 14),
(4, 16),
(5, 4),
(5, 8),
(5, 9),
(5, 17),
(5, 18),
(6, 4),
(6, 6),
(6, 9),
(6, 11),
(6, 14),
(6, 15),
(6, 18),
(7, 7),
(7, 9),
(7, 13),
(7, 14),
(7, 15),
(7, 16),
(7, 18),
(7, 20),
(8, 10),
(8, 12),
(8, 16),
(8, 19),
(9, 1),
(9, 2),
(9, 5),
(9, 11),
(9, 13),
(9, 15),
(9, 19),
(9, 20),
(10, 2),
(10, 3),
(10, 9),
(10, 11),
(10, 12),
(10, 14),
(10, 19),
(10, 20),
(11, 6),
(11, 13),
(11, 18),
(12, 1),
(12, 5),
(12, 12),
(12, 15),
(12, 19),
(13, 1),
(13, 4),
(13, 7),
(13, 10),
(13, 11),
(13, 13),
(13, 16),
(13, 20),
(14, 4),
(14, 5),
(14, 16),
(14, 17),
(14, 18),
(14, 19),
(14, 20),
(15, 1),
(15, 2),
(15, 6),
(15, 7),
(15, 9),
(15, 12),
(15, 14),
(15, 17),
(15, 18),
(16, 1),
(16, 4),
(16, 5),
(16, 7),
(16, 10),
(16, 12),
(16, 19),
(16, 20),
(17, 1),
(17, 3),
(17, 4),
(17, 5),
(17, 9),
(17, 10),
(17, 11),
(17, 12),
(18, 7),
(18, 11),
(18, 13),
(18, 16),
(18, 17),
(19, 1),
(19, 2),
(19, 8),
(19, 10),
(19, 13),
(19, 14),
(20, 4),
(20, 8),
(20, 15),
(20, 17),
(20, 18);

-- --------------------------------------------------------

--
-- Table structure for table `crew`
--

CREATE TABLE `crew` (
  `MID` int(11) NOT NULL,
  `PID` int(11) NOT NULL,
  `Role` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `crew`
--

INSERT INTO `crew` (`MID`, `PID`, `Role`) VALUES
(2, 1, 'Editor'),
(18, 1, 'Director'),
(6, 2, 'Director'),
(11, 2, 'Costume Designer'),
(3, 3, 'Director'),
(5, 3, 'Director'),
(8, 3, 'Director'),
(12, 3, 'Editor'),
(19, 3, 'Director'),
(20, 3, 'Director'),
(2, 4, 'Cinematographer'),
(4, 4, 'Costume Designer'),
(5, 4, 'Costume Designer'),
(9, 4, 'Director'),
(10, 4, 'Costume Designer'),
(12, 4, 'Costume Designer'),
(14, 4, 'Cinematographer'),
(16, 4, 'Producer'),
(4, 5, 'Cinematographer'),
(18, 5, 'Cinematographer'),
(4, 6, 'Director'),
(11, 6, 'Cinematographer'),
(18, 6, 'Producer'),
(7, 7, 'Director'),
(14, 7, 'Director'),
(16, 7, 'Cinematographer'),
(10, 8, 'Producer'),
(12, 8, 'Cinematographer'),
(19, 8, 'Producer'),
(1, 9, 'Editor'),
(2, 9, 'Director'),
(5, 9, 'Cinematographer'),
(11, 9, 'Producer'),
(13, 9, 'Cinematographer'),
(15, 9, 'Director'),
(2, 10, 'Producer'),
(3, 10, 'Producer'),
(9, 10, 'Producer'),
(14, 10, 'Producer'),
(19, 10, 'Editor'),
(20, 10, 'Editor'),
(6, 11, 'Producer'),
(13, 11, 'Producer'),
(18, 11, 'Costume Designer'),
(1, 12, 'Executive Producer'),
(12, 12, 'Producer'),
(1, 13, 'Producer'),
(11, 13, 'Editor'),
(16, 13, 'Director'),
(20, 13, 'Producer'),
(5, 14, 'Producer'),
(16, 14, 'Editor'),
(17, 14, 'Director'),
(18, 14, 'Executive Producer'),
(7, 15, 'Producer'),
(12, 15, 'Director'),
(1, 16, 'Cinematographer'),
(10, 16, 'Cinematographer'),
(19, 16, 'Cinematographer'),
(1, 17, 'Director'),
(4, 17, 'Editor'),
(5, 17, 'Editor'),
(10, 17, 'Director'),
(11, 18, 'Director'),
(13, 18, 'Editor'),
(16, 18, 'Costume Designer'),
(17, 18, 'Editor'),
(1, 19, 'Costume Designer'),
(8, 19, 'Producer'),
(10, 19, 'Editor'),
(13, 19, 'Director'),
(14, 19, 'Editor'),
(4, 20, 'Producer'),
(15, 20, 'Producer'),
(17, 20, 'Producer'),
(18, 20, 'Editor');

-- --------------------------------------------------------

--
-- Table structure for table `favgenres`
--

CREATE TABLE `favgenres` (
  `UID` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `favgenres`
--

INSERT INTO `favgenres` (`UID`, `Name`) VALUES
(1, 'Horror'),
(1, 'Mystery'),
(2, 'Comedy'),
(2, 'Sci-Fi'),
(3, 'Action'),
(3, 'Thriller'),
(4, 'Action'),
(4, 'Drama'),
(4, 'Romance'),
(5, 'Horror'),
(5, 'Mystery'),
(6, 'Comedy'),
(6, 'Documentary'),
(6, 'Horror'),
(8, 'Fantasy'),
(8, 'Musical'),
(8, 'Mystery'),
(9, 'Fantasy'),
(9, 'Horror'),
(10, 'Drama'),
(11, 'Drama'),
(11, 'Fantasy'),
(13, 'Sci-Fi'),
(15, 'Horror'),
(15, 'Musical'),
(16, 'Documentary'),
(17, 'Comedy'),
(17, 'Fantasy'),
(18, 'Adventure'),
(18, 'Musical'),
(18, 'Sci-Fi'),
(19, 'Drama'),
(19, 'Thriller'),
(20, 'Horror');

-- --------------------------------------------------------

--
-- Table structure for table `genres`
--

CREATE TABLE `genres` (
  `MID` int(11) NOT NULL,
  `Name` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `genres`
--

INSERT INTO `genres` (`MID`, `Name`) VALUES
(1, 'Drama'),
(1, 'Horror'),
(2, 'Comedy'),
(2, 'Drama'),
(2, 'Horror'),
(3, 'Drama'),
(3, 'Mystery'),
(4, 'Documentary'),
(4, 'Musical'),
(5, 'Action'),
(5, 'Documentary'),
(6, 'Drama'),
(6, 'Thriller'),
(7, 'Drama'),
(7, 'War'),
(8, 'Comedy'),
(8, 'Romance'),
(9, 'Drama'),
(10, 'Action'),
(10, 'Horror'),
(10, 'Thriller'),
(11, 'Comedy'),
(12, 'Adventure'),
(12, 'Documentary'),
(13, 'Children'),
(13, 'Comedy'),
(14, 'Action'),
(14, 'Horror'),
(14, 'Thriller'),
(15, 'Comedy'),
(15, 'Fantasy'),
(16, 'Action'),
(16, 'Mystery'),
(16, 'Sci-Fi'),
(17, 'Crime'),
(17, 'Drama'),
(18, 'Drama'),
(18, 'Sci-Fi'),
(19, 'Comedy'),
(19, 'Fantasy'),
(20, 'Romance'),
(20, 'Sci-Fi');

-- --------------------------------------------------------

--
-- Table structure for table `liked`
--

CREATE TABLE `liked` (
  `UID` int(11) NOT NULL,
  `MID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `liked`
--

INSERT INTO `liked` (`UID`, `MID`) VALUES
(1, 3),
(1, 9),
(2, 14),
(3, 7),
(3, 14),
(3, 17),
(6, 13),
(6, 14),
(7, 6),
(7, 9),
(8, 4),
(8, 5),
(8, 6),
(8, 15),
(10, 2),
(10, 9),
(10, 16),
(11, 13),
(11, 14),
(12, 5),
(12, 14),
(13, 10),
(13, 13),
(13, 15),
(15, 2),
(15, 9),
(16, 2),
(16, 8),
(16, 11),
(18, 3),
(18, 17),
(18, 19),
(19, 7),
(20, 3),
(20, 5),
(20, 18);

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `MID` int(11) NOT NULL,
  `Title` varchar(255) NOT NULL,
  `ReleaseDate` date NOT NULL,
  `Plot` varchar(1023) DEFAULT NULL,
  `Runtime` smallint(6) DEFAULT NULL,
  `Type` varchar(255) DEFAULT NULL,
  `Certificate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`MID`, `Title`, `ReleaseDate`, `Plot`, `Runtime`, `Type`, `Certificate`) VALUES
(1, 'The Avengers', '2016-10-26', 'Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.', 139, 'Feature', 'PG-13'),
(2, 'The Secret Life', '2018-06-17', 'In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.', 120, 'Feature', 'R'),
(3, 'Trances', '2017-07-22', 'Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.', 91, 'Feature', 'PG-13'),
(4, 'Mr. Popper\'s Penguins', '2017-10-06', 'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.', 30, 'Short', 'PG-13'),
(5, 'Boy Who Could Fly', '2017-04-26', 'Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.', 126, 'Feature', 'NC-17'),
(6, 'Weekender', '2017-02-21', 'Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.', 146, 'Feature', 'R'),
(7, 'May in the Summer', '2017-07-02', 'In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.', 80, 'Feature', 'PG-13'),
(8, 'Night of the Demons 2', '2017-09-11', 'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.', 142, 'Feature', 'PG-13'),
(9, 'ZMD: Zombies of Mass Destruction', '2016-08-20', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.', 20, 'Short', 'PG-13'),
(10, 'Shepherd of the Hills, The', '2017-10-25', 'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.', 103, 'Feature', 'NC-17'),
(11, 'Modulations', '2018-09-28', 'In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.', 148, 'Feature', 'PG-13'),
(12, 'The Godfather', '2018-03-21', 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.', 145, 'Feature', 'PG-13'),
(13, 'American Pimp', '2017-11-27', 'Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.', 125, 'Feature', 'R'),
(14, 'GoldenEye', '2018-08-24', 'Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.', 97, 'Feature', 'PG'),
(15, 'Night Flight', '2016-03-02', 'Phasellus in felis. Donec semper sapien a libero. Nam dui.', 28, 'Short', 'PG'),
(16, 'New York, I Love You', '2018-01-27', 'In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.', 131, 'Feature', 'PG-13'),
(17, 'Desperate Journey', '2018-10-23', 'Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.', 143, 'Feature', 'R'),
(18, 'London Conspiracy', '2017-10-16', 'Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.', 35, 'Short', 'G'),
(19, 'Bewitched', '2016-03-05', 'Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.', 116, 'Feature', 'PG-13'),
(20, 'Jason X', '2017-10-08', 'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.', 101, 'Feature', 'R');

-- --------------------------------------------------------

--
-- Table structure for table `people`
--

CREATE TABLE `people` (
  `PID` int(11) NOT NULL,
  `FirstName` varchar(255) DEFAULT NULL,
  `LastName` varchar(255) DEFAULT NULL,
  `Gender` varchar(1) DEFAULT NULL,
  `DOB` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `people`
--

INSERT INTO `people` (`PID`, `FirstName`, `LastName`, `Gender`, `DOB`) VALUES
(1, 'Bonni', 'Shieldon', 'F', '1989-04-09'),
(2, 'Brocky', 'Kee', 'M', '1994-05-31'),
(3, 'Ardenia', 'Offell', 'F', '1971-11-22'),
(4, 'Kippy', 'Leggen', 'M', '1985-08-23'),
(5, 'De witt', 'Eltune', 'M', '1993-09-12'),
(6, 'Lucie', 'Sigmund', 'F', '1997-05-05'),
(7, 'Garfield', 'Philbin', 'M', '1978-05-15'),
(8, 'Jerad', 'Engelmann', 'M', '1990-11-10'),
(9, 'Adina', 'Murrill', 'F', '1981-12-09'),
(10, 'Sophronia', 'Antunez', 'F', '1996-06-26'),
(11, 'Wiatt', 'Dudlestone', 'M', '1973-01-01'),
(12, 'Toiboid', 'Lorrimer', 'M', '1990-09-19'),
(13, 'Ange', 'Cruz', 'F', '1991-07-28'),
(14, 'Wallis', 'Jakubowsky', 'M', '1999-07-18'),
(15, 'Winni', 'Warin', 'F', '1997-08-03'),
(16, 'Selinda', 'Leavey', 'F', '1999-08-07'),
(17, 'Ford', 'Franz', 'M', '1998-03-31'),
(18, 'Jaquenette', 'Wogan', 'F', '1985-02-20'),
(19, 'Oliver', 'Pedrol', 'M', '1982-10-14'),
(20, 'Gae', 'Aleveque', 'F', '1973-05-28');

-- --------------------------------------------------------

--
-- Table structure for table `photos`
--

CREATE TABLE `photos` (
  `PID` int(11) NOT NULL,
  `FileName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `photos`
--

INSERT INTO `photos` (`PID`, `FileName`) VALUES
(1, 'dVvC6FYupGDt69iV.jpg'),
(1, 'JRl5Ash7ioWrMrK5.jpg'),
(1, 'Pcg1CLV9aakEHjvs.jpg'),
(1, 'rtfVnMVse4Tj23lO.jpg'),
(1, 'tXH7mMbCVSJLqPd9.jpg'),
(1, 'wzUh2EDruHhHplDm.jpg'),
(1, 'YTGCH7eRMSI3gnHj.jpg'),
(2, '0HezPyTSigihXVUu.jpg'),
(2, 'LKJ0qrvyPIba3mbv.jpg'),
(2, 'ZrKsurpTx3y0iGZ3.jpg'),
(3, '2zkiOEFfUkwFlbYQ.jpg'),
(3, 'BcMSuKNZrrQuNkAV.jpg'),
(3, 'DeMcT857zmF6HZfY.jpg'),
(3, 'inL6IGlVL8kUCNWw.jpg'),
(3, 'lCd6KA1FTlq5X2zg.jpg'),
(3, 'nZXSijNXPbtKAldg.jpg'),
(4, 'JMVEk3k2Ken1sEFa.jpg'),
(4, 'pg49kpla8v2wCjzH.jpg'),
(4, 'v49dT7S9wtdARLEA.jpg'),
(4, 'v7xa3rlrwsgkfhc7.jpg'),
(5, 'fgGUuWysGe67SJnP.jpg'),
(5, 'N8pVFTm4EUwyNc4l.jpg'),
(5, 'wQkVDoRUgr3soYDU.jpg'),
(6, 'hEsp3teCpucPSagH.jpg'),
(6, 'JXVl8sA6DE49ZPoe.jpg'),
(6, 'W4LhjixTYZ1FBofC.jpg'),
(6, 'Whn4BuGBEsOr4jCe.jpg'),
(6, 'yMoQYAJPna0o9nic.jpg'),
(7, 'FO28VYEurvRtD1Gl.jpg'),
(7, 'IK6ZlaJUW0NWdmwW.jpg'),
(7, 'IQJFCzDdmr1tUU8e.jpg'),
(7, 'LtaH52uronokjMLo.jpg'),
(7, 'M1dmzq65kuF4f2lD.jpg'),
(7, 'QCgbN9rkTVcQm6Es.jpg'),
(8, 'dOH7OAkE4Y402z0W.jpg'),
(8, 'glLz0cMMhcT1AjgO.jpg'),
(8, 'pgHfv8bj2v8T1sSk.jpg'),
(8, 'TrffdcNTBS2dB572.jpg'),
(8, 'Xdwfal6HXiynTLwt.jpg'),
(8, 'zRoAxEMKhzmgn32J.jpg'),
(9, 'bFsAHlsFC96APaN7.jpg'),
(9, 'pLM579aHXDjuh4f0.jpg'),
(10, '4qBSPbGsQKZNq1KB.jpg'),
(10, 'HSrR3d650LwtdyKH.jpg'),
(10, 'sDg7oSLEVP4CbjQt.jpg'),
(11, 'ouOK1xGReNTHULrh.jpg'),
(11, 'uG4IvdBTTKFitq7N.jpg'),
(12, '5qTlspxVZAwmXIEk.jpg'),
(12, 'eqRxl7aBGj4co3IX.jpg'),
(12, 'LQcSgXVuRd8kKlt5.jpg'),
(12, 'r6fmnN3HU5UPtc01.jpg'),
(12, 'rx89qvkeW4FfJ1lP.jpg'),
(13, '4abGNMigMveL0n3I.jpg'),
(13, 'AliaesaYrFdR065C.jpg'),
(13, 'FmpSfqzgIq0G68RL.jpg'),
(13, 'sfa1uvvmmTa76FqU.jpg'),
(14, '1tDCADdlWsTznV6V.jpg'),
(14, 'AxhXpKzI4lqkvRP7.jpg'),
(14, 'IHg5xxdYnfT3uHyA.jpg'),
(14, 'wlL7ZxaGJpnsZjJo.jpg'),
(14, 'WYwb47ZK6jRsgsdM.jpg'),
(15, '66eshy1YojKYpFHB.jpg'),
(15, 'HZjhuGl5hoBxbLAT.jpg'),
(15, 'iEWrIc1VQQMp1vmV.jpg'),
(15, 'LzGn6vtnImdZrQH5.jpg'),
(15, 'TGxpfX84ym3XRiC5.jpg'),
(16, '3MFeOn3i3VMaXb5I.jpg'),
(16, 'Pf6kAjIX96ynPtOA.jpg'),
(16, 'whRMcLq7fIx8q7Ed.jpg'),
(17, '9TxbOS2Oa5t8Gzf9.jpg'),
(17, 'ahJkbKFsEwsYMonY.jpg'),
(17, 'aQPL9cgQX6Efqxnf.jpg'),
(17, 'jOWkmD3W8eCaVWNx.jpg'),
(17, 'tToFQOpdP5WOQd6p.jpg'),
(18, 'fmsdSlVrbvF8gPrU.jpg'),
(19, 'jdDRG0Ph0zFD9FLL.jpg'),
(20, '6re8mn45c8cCef81.jpg'),
(20, '7wCRwr0lmZb0iHmr.jpg'),
(20, 'NMZHJOYnnEqYg41g.jpg'),
(20, 'YxmNDI4oWRzNtP1P.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `posters`
--

CREATE TABLE `posters` (
  `MID` int(11) NOT NULL,
  `FileName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posters`
--

INSERT INTO `posters` (`MID`, `FileName`) VALUES
(1, 'dVvC6FYupGDt69iV.jpg'),
(1, 'JRl5Ash7ioWrMrK5.jpg'),
(1, 'Pcg1CLV9aakEHjvs.jpg'),
(1, 'rtfVnMVse4Tj23lO.jpg'),
(1, 'tXH7mMbCVSJLqPd9.jpg'),
(1, 'wzUh2EDruHhHplDm.jpg'),
(1, 'YTGCH7eRMSI3gnHj.jpg'),
(2, '0HezPyTSigihXVUu.jpg'),
(2, 'LKJ0qrvyPIba3mbv.jpg'),
(2, 'ZrKsurpTx3y0iGZ3.jpg'),
(3, '2zkiOEFfUkwFlbYQ.jpg'),
(3, 'BcMSuKNZrrQuNkAV.jpg'),
(3, 'DeMcT857zmF6HZfY.jpg'),
(3, 'inL6IGlVL8kUCNWw.jpg'),
(3, 'lCd6KA1FTlq5X2zg.jpg'),
(3, 'nZXSijNXPbtKAldg.jpg'),
(4, 'JMVEk3k2Ken1sEFa.jpg'),
(4, 'pg49kpla8v2wCjzH.jpg'),
(4, 'v49dT7S9wtdARLEA.jpg'),
(4, 'v7xa3rlrwsgkfhc7.jpg'),
(5, 'fgGUuWysGe67SJnP.jpg'),
(5, 'N8pVFTm4EUwyNc4l.jpg'),
(5, 'wQkVDoRUgr3soYDU.jpg'),
(6, 'hEsp3teCpucPSagH.jpg'),
(6, 'JXVl8sA6DE49ZPoe.jpg'),
(6, 'W4LhjixTYZ1FBofC.jpg'),
(6, 'Whn4BuGBEsOr4jCe.jpg'),
(6, 'yMoQYAJPna0o9nic.jpg'),
(7, 'FO28VYEurvRtD1Gl.jpg'),
(7, 'IK6ZlaJUW0NWdmwW.jpg'),
(7, 'IQJFCzDdmr1tUU8e.jpg'),
(7, 'LtaH52uronokjMLo.jpg'),
(7, 'M1dmzq65kuF4f2lD.jpg'),
(7, 'QCgbN9rkTVcQm6Es.jpg'),
(8, 'dOH7OAkE4Y402z0W.jpg'),
(8, 'glLz0cMMhcT1AjgO.jpg'),
(8, 'pgHfv8bj2v8T1sSk.jpg'),
(8, 'TrffdcNTBS2dB572.jpg'),
(8, 'Xdwfal6HXiynTLwt.jpg'),
(8, 'zRoAxEMKhzmgn32J.jpg'),
(9, 'bFsAHlsFC96APaN7.jpg'),
(9, 'pLM579aHXDjuh4f0.jpg'),
(10, '4qBSPbGsQKZNq1KB.jpg'),
(10, 'HSrR3d650LwtdyKH.jpg'),
(10, 'sDg7oSLEVP4CbjQt.jpg'),
(11, 'ouOK1xGReNTHULrh.jpg'),
(11, 'uG4IvdBTTKFitq7N.jpg'),
(12, '5qTlspxVZAwmXIEk.jpg'),
(12, 'eqRxl7aBGj4co3IX.jpg'),
(12, 'LQcSgXVuRd8kKlt5.jpg'),
(12, 'r6fmnN3HU5UPtc01.jpg'),
(12, 'rx89qvkeW4FfJ1lP.jpg'),
(13, '4abGNMigMveL0n3I.jpg'),
(13, 'AliaesaYrFdR065C.jpg'),
(13, 'FmpSfqzgIq0G68RL.jpg'),
(13, 'sfa1uvvmmTa76FqU.jpg'),
(14, '1tDCADdlWsTznV6V.jpg'),
(14, 'AxhXpKzI4lqkvRP7.jpg'),
(14, 'IHg5xxdYnfT3uHyA.jpg'),
(14, 'wlL7ZxaGJpnsZjJo.jpg'),
(14, 'WYwb47ZK6jRsgsdM.jpg'),
(15, '66eshy1YojKYpFHB.jpg'),
(15, 'HZjhuGl5hoBxbLAT.jpg'),
(15, 'iEWrIc1VQQMp1vmV.jpg'),
(15, 'LzGn6vtnImdZrQH5.jpg'),
(15, 'TGxpfX84ym3XRiC5.jpg'),
(16, '3MFeOn3i3VMaXb5I.jpg'),
(16, 'Pf6kAjIX96ynPtOA.jpg'),
(16, 'whRMcLq7fIx8q7Ed.jpg'),
(17, '9TxbOS2Oa5t8Gzf9.jpg'),
(17, 'ahJkbKFsEwsYMonY.jpg'),
(17, 'aQPL9cgQX6Efqxnf.jpg'),
(17, 'jOWkmD3W8eCaVWNx.jpg'),
(17, 'tToFQOpdP5WOQd6p.jpg'),
(18, 'fmsdSlVrbvF8gPrU.jpg'),
(19, 'jdDRG0Ph0zFD9FLL.jpg'),
(20, '6re8mn45c8cCef81.jpg'),
(20, '7wCRwr0lmZb0iHmr.jpg'),
(20, 'NMZHJOYnnEqYg41g.jpg'),
(20, 'YxmNDI4oWRzNtP1P.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `UID` int(11) NOT NULL,
  `MID` int(11) NOT NULL,
  `Date` date NOT NULL,
  `Stars` tinyint(4) NOT NULL,
  `Content` varchar(1023) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`UID`, `MID`, `Date`, `Stars`, `Content`) VALUES
(2, 4, '2018-08-06', 4, 'Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.'),
(2, 7, '2017-11-08', 3, 'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.'),
(2, 20, '2017-09-13', 4, 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.'),
(3, 6, '2018-01-16', 4, 'Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.'),
(3, 8, '2018-02-05', 2, 'Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.'),
(3, 10, '2018-04-24', 2, 'Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.'),
(3, 13, '2018-01-15', 1, 'Phasellus in felis. Donec semper sapien a libero. Nam dui.'),
(3, 14, '2017-09-29', 5, 'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.'),
(3, 15, '2018-07-14', 3, 'Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.'),
(4, 7, '2018-03-20', 2, 'In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.'),
(4, 8, '2017-09-27', 2, 'Fusce consequat. Nulla nisl. Nunc nisl.'),
(4, 9, '2018-06-19', 1, 'Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.'),
(4, 11, '2017-08-17', 3, 'Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.'),
(5, 4, '2017-12-06', 4, 'Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.'),
(5, 7, '2017-10-09', 4, 'Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.'),
(6, 6, '2018-08-12', 1, 'Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.'),
(6, 13, '2018-01-06', 5, 'Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.'),
(7, 6, '2018-01-30', 2, 'Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.'),
(7, 10, '2017-12-25', 3, 'In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.'),
(8, 2, '2017-09-17', 5, 'Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.'),
(8, 4, '2017-12-07', 2, 'Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.'),
(8, 5, '2018-05-11', 2, 'Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.'),
(8, 13, '2018-04-04', 3, 'Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.'),
(9, 9, '2017-10-13', 3, 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.'),
(11, 12, '2018-05-04', 2, 'Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.'),
(11, 18, '2017-11-16', 5, 'Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.'),
(12, 2, '2018-08-04', 1, 'Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.'),
(12, 15, '2018-02-07', 5, 'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.'),
(13, 4, '2017-10-20', 4, 'Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.'),
(13, 6, '2018-06-28', 1, 'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.'),
(13, 13, '2018-06-17', 5, 'Sed ante. Vivamus tortor. Duis mattis egestas metus.'),
(14, 3, '2018-04-05', 3, 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.'),
(14, 9, '2018-07-02', 5, 'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.'),
(15, 3, '2018-03-11', 3, 'Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.'),
(15, 5, '2017-11-25', 2, ''),
(15, 10, '2018-07-24', 3, 'In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.'),
(15, 15, '2018-08-12', 3, 'Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.'),
(15, 17, '2018-06-06', 4, 'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.'),
(15, 19, '2018-01-16', 4, 'Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.'),
(16, 11, '2018-02-28', 3, 'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.'),
(17, 10, '2017-11-05', 3, 'Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.'),
(17, 20, '2017-11-10', 5, 'Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.'),
(18, 12, '2017-08-29', 5, 'In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.'),
(18, 13, '2018-05-06', 4, 'Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.'),
(19, 3, '2018-01-29', 2, 'Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.'),
(20, 20, '2018-04-20', 5, 'Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `UID` int(11) NOT NULL,
  `FirstName` varchar(255) NOT NULL,
  `LastName` varchar(255) NOT NULL,
  `Country` varchar(2) DEFAULT NULL,
  `ProfilePicture` varchar(255) DEFAULT NULL,
  `Email` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `DOB` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`UID`, `FirstName`, `LastName`, `Country`, `ProfilePicture`, `Email`, `Password`, `DOB`) VALUES
(1, 'Ryan', 'Mollin', 'AL', 'dQc2XWyAFqxvlQXp.jpg', 'rmollin0@xrea.com', 'UBT65gm', '2002-01-16'),
(2, 'Cristine', 'Hansmann', 'BR', 'NMdS0R7ppq8n9ZrV.jpg', 'chansmann1@businessinsider.com', 'acLvJW2uM', '1999-05-18'),
(3, 'Karrie', 'Giacovazzo', 'UA', 'dfsgIMgC8DwUb9We.jpg', 'kgiacovazzo2@google.cn', 'ftGu2PL3oc', '2007-05-19'),
(4, 'Elly', 'Hilling', 'ZA', 'pfqAqUMkbd00ekGM.jpg', 'ehilling3@va.gov', 'my6tIuPro', '1999-07-20'),
(5, 'Dione', 'Harce', 'SE', 'ui76zYcW1a5OHiR6.jpg', 'dharce4@xinhuanet.com', 'koGLQ69R', '2002-07-22'),
(6, 'Willard', 'Rounce', 'BR', 'j9zM5m2JWPKjRZpz.jpg', 'wrounce5@soup.io', 'snU24jus6gVF', '1999-11-27'),
(7, 'Neddie', 'Trehearn', 'RU', 'o6V3xltapsoMHkB6.jpg', 'ntrehearn6@google.com.br', 'OqZItyQ38', '2005-11-19'),
(8, 'Desdemona', 'Delahunty', 'BY', 'x3ih8F64YqcaZkeD.jpg', 'ddelahunty7@friendfeed.com', 'V5S13WoD318Y', '2008-01-24'),
(9, 'Misti', 'Noquet', 'MA', 'KIlRB0qdzFpotiOi.jpg', 'mnoquet8@com.com', 'hAD1l6Keh', '2004-05-31'),
(10, 'Buffy', 'Girhard', 'AF', '06TNXTP8atZjYF6t.jpg', 'bgirhard9@ihg.com', 'OxssDvP', '1999-06-04'),
(11, 'Elmo', 'Lakeland', 'BR', 'RLmmtjR9NHKJC5jc.jpg', 'elakelanda@hugedomains.com', 'dkyTJ3fbe', '2004-07-09'),
(12, 'Guido', 'Schrir', 'GR', 'YnS9zWgFJzHfZpX3.jpg', 'gschrirb@yale.edu', 'jozzLsA', '2002-06-06'),
(13, 'Ricard', 'Farleigh', 'BR', '2JCMJ5cAjtbxV1of.jpg', 'rfarleighc@cargocollective.com', '7WKy9R6Je0Y', '2006-05-18'),
(14, 'Hildegarde', 'Stringfellow', 'ID', '1bsR2WmY0XVkP7mz.jpg', 'hstringfellowd@barnesandnoble.com', 'R249uVZ', '1998-05-23'),
(15, 'Gibby', 'Assante', 'CN', 'ORi9dY1FFRdINlsr.jpg', 'gassantee@businessinsider.com', 'zFUbhFc', '1998-01-24'),
(16, 'Boonie', 'Cromb', 'CN', 'kh2mavF3bz7CtYfh.jpg', 'bcrombf@mit.edu', 'gZoxbIg', '2003-03-26'),
(17, 'Woodie', 'Ayars', 'ID', 'HxW3bBbYzui0LLNp.jpg', 'wayarsg@webnode.com', 'Ojxewg', '2004-06-03'),
(18, 'Agretha', 'Batthew', 'UA', 'YbXUSeXX8EqxVW96.jpg', 'abatthewh@last.fm', 'pOTswSybjVzv', '2001-11-30'),
(19, 'Goraud', 'Caplen', 'GY', 'SDOaRuyGZQm4jIA9.jpg', 'gcapleni@sphinn.com', '4TjEIEK91F', '2000-02-18'),
(20, 'Welch', 'Feare', 'CN', 'N6C7JdWztCNwGTUm.jpg', 'wfearej@123-reg.co.uk', 'GvyMrz3meQK', '2006-01-04');

-- --------------------------------------------------------

--
-- Table structure for table `watched`
--

CREATE TABLE `watched` (
  `UID` int(11) NOT NULL,
  `MID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `watched`
--

INSERT INTO `watched` (`UID`, `MID`) VALUES
(1, 1),
(1, 3),
(1, 9),
(1, 17),
(2, 14),
(2, 20),
(3, 2),
(3, 7),
(3, 14),
(3, 17),
(3, 20),
(4, 1),
(4, 6),
(4, 7),
(4, 16),
(4, 17),
(5, 2),
(5, 3),
(5, 5),
(5, 9),
(5, 10),
(5, 11),
(5, 19),
(6, 2),
(6, 13),
(6, 14),
(7, 6),
(7, 7),
(7, 9),
(7, 14),
(7, 18),
(8, 4),
(8, 5),
(8, 6),
(8, 15),
(8, 17),
(9, 2),
(9, 5),
(9, 11),
(10, 2),
(10, 9),
(10, 16),
(11, 2),
(11, 3),
(11, 6),
(11, 7),
(11, 13),
(11, 14),
(12, 5),
(12, 14),
(12, 15),
(12, 16),
(12, 20),
(13, 10),
(13, 13),
(13, 15),
(13, 16),
(13, 19),
(14, 18),
(14, 20),
(15, 2),
(15, 9),
(15, 13),
(16, 2),
(16, 6),
(16, 8),
(16, 10),
(16, 11),
(17, 3),
(17, 7),
(17, 15),
(18, 3),
(18, 6),
(18, 10),
(18, 12),
(18, 17),
(18, 19),
(19, 7),
(19, 18),
(20, 3),
(20, 5),
(20, 15),
(20, 18),
(20, 20);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cast`
--
ALTER TABLE `cast`
  ADD PRIMARY KEY (`MID`,`PID`),
  ADD KEY `MID` (`MID`),
  ADD KEY `PID` (`PID`);

--
-- Indexes for table `createdby`
--
ALTER TABLE `createdby`
  ADD PRIMARY KEY (`PID`,`MID`),
  ADD KEY `PID` (`PID`),
  ADD KEY `MID` (`MID`);

--
-- Indexes for table `crew`
--
ALTER TABLE `crew`
  ADD PRIMARY KEY (`PID`,`MID`),
  ADD KEY `MID` (`MID`),
  ADD KEY `PID` (`PID`);

--
-- Indexes for table `favgenres`
--
ALTER TABLE `favgenres`
  ADD PRIMARY KEY (`UID`,`Name`),
  ADD KEY `UID` (`UID`);

--
-- Indexes for table `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`MID`,`Name`),
  ADD KEY `MID` (`MID`);

--
-- Indexes for table `liked`
--
ALTER TABLE `liked`
  ADD PRIMARY KEY (`UID`,`MID`),
  ADD KEY `UID` (`UID`),
  ADD KEY `MID` (`MID`);

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`MID`);

--
-- Indexes for table `people`
--
ALTER TABLE `people`
  ADD PRIMARY KEY (`PID`);

--
-- Indexes for table `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`PID`,`FileName`),
  ADD UNIQUE KEY `FileName` (`FileName`),
  ADD KEY `PID` (`PID`);

--
-- Indexes for table `posters`
--
ALTER TABLE `posters`
  ADD PRIMARY KEY (`MID`,`FileName`),
  ADD UNIQUE KEY `FileName` (`FileName`),
  ADD KEY `MID` (`MID`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`UID`,`MID`),
  ADD KEY `UID` (`UID`),
  ADD KEY `MID` (`MID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`UID`),
  ADD UNIQUE KEY `ProfilePicture` (`ProfilePicture`);

--
-- Indexes for table `watched`
--
ALTER TABLE `watched`
  ADD PRIMARY KEY (`UID`,`MID`),
  ADD KEY `UID` (`UID`),
  ADD KEY `MID` (`MID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cast`
--
ALTER TABLE `cast`
  ADD CONSTRAINT `cast_ibfk_1` FOREIGN KEY (`MID`) REFERENCES `movies` (`MID`),
  ADD CONSTRAINT `cast_ibfk_2` FOREIGN KEY (`PID`) REFERENCES `people` (`PID`);

--
-- Constraints for table `createdby`
--
ALTER TABLE `createdby`
  ADD CONSTRAINT `createdby_ibfk_1` FOREIGN KEY (`PID`) REFERENCES `people` (`PID`),
  ADD CONSTRAINT `createdby_ibfk_2` FOREIGN KEY (`MID`) REFERENCES `movies` (`MID`);

--
-- Constraints for table `crew`
--
ALTER TABLE `crew`
  ADD CONSTRAINT `crew_ibfk_1` FOREIGN KEY (`MID`) REFERENCES `movies` (`MID`),
  ADD CONSTRAINT `crew_ibfk_2` FOREIGN KEY (`PID`) REFERENCES `people` (`PID`);

--
-- Constraints for table `favgenres`
--
ALTER TABLE `favgenres`
  ADD CONSTRAINT `favgenres_ibfk_1` FOREIGN KEY (`UID`) REFERENCES `users` (`UID`);

--
-- Constraints for table `genres`
--
ALTER TABLE `genres`
  ADD CONSTRAINT `genres_ibfk_1` FOREIGN KEY (`MID`) REFERENCES `movies` (`MID`);

--
-- Constraints for table `liked`
--
ALTER TABLE `liked`
  ADD CONSTRAINT `liked_ibfk_1` FOREIGN KEY (`UID`) REFERENCES `users` (`UID`),
  ADD CONSTRAINT `liked_ibfk_2` FOREIGN KEY (`MID`) REFERENCES `movies` (`MID`);

--
-- Constraints for table `photos`
--
ALTER TABLE `photos`
  ADD CONSTRAINT `photos_ibfk_1` FOREIGN KEY (`PID`) REFERENCES `people` (`PID`);

--
-- Constraints for table `posters`
--
ALTER TABLE `posters`
  ADD CONSTRAINT `posters_ibfk_1` FOREIGN KEY (`MID`) REFERENCES `movies` (`MID`);

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_ibfk_1` FOREIGN KEY (`UID`) REFERENCES `users` (`UID`),
  ADD CONSTRAINT `reviews_ibfk_2` FOREIGN KEY (`MID`) REFERENCES `movies` (`MID`);

--
-- Constraints for table `watched`
--
ALTER TABLE `watched`
  ADD CONSTRAINT `watched_ibfk_1` FOREIGN KEY (`UID`) REFERENCES `users` (`UID`),
  ADD CONSTRAINT `watched_ibfk_2` FOREIGN KEY (`MID`) REFERENCES `movies` (`MID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
