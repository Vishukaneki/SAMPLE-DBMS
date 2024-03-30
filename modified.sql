-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 11, 2023 at 05:38 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Website`
--

-- --------------------------------------------------------

--
-- Table structure for table `Admins`
--

CREATE TABLE Admins (
  admin_id int(11) NOT NULL,
  username varchar(255) NOT NULL,
  password varchar(255) NOT NULL,
  name varchar(255) NOT NULL,
  dob date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table Admins
--

INSERT INTO Admins (admin_id, username, password, name, dob) VALUES
(1, '2022UIC3613', 'vishukaneki', 'Vishal', '2003-10-24');

-- --------------------------------------------------------

--
-- Table structure for table Complaints
--

CREATE TABLE Complaints (
  complaint_id int(11) NOT NULL,
  user_id int(11) DEFAULT NULL,
  complaint_text longtext DEFAULT NULL,
  photo_path varchar(255) DEFAULT NULL,
  complaint_date timestamp NOT NULL DEFAULT current_timestamp(),
  complaint_status varchar(255) DEFAULT NULL,
  response varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table Complaints
--

INSERT INTO Complaints (complaint_id, user_id, complaint_text, photo_path, complaint_date, complaint_status, response) VALUES
(1, 14, 'labs not good', 'uploads/nobara.png', '2022-01-21 15:42:45', 'green','ok'),
(2, 15, 'bad placements', 'uploads/itadori.jpg', '2024-02-12 16:04:22', 'yellow','ok'),
(3, 16, 'not enough time to rest', 'uploads/images.jpeg', '2024-02-30 16:16:44', 'yellow','ok');

-- --------------------------------------------------------

--
-- Table structure for table Email
--

CREATE TABLE Email (
  email_id int(11) NOT NULL,
  email_address varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table Email
--

INSERT INTO Email (email_id, email_address) VALUES
(13, 'vishalniranjan708@gmail.com'),
(14, 'pa14@gmail.com'),
(15, 'mc15@gmail.com'),
(16, 'dm16@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table Mobile
--

CREATE TABLE Mobile (
  mobile_id int(11) NOT NULL,
  mobile_number varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table Mobile
--

INSERT INTO Mobile (mobile_id, mobile_number) VALUES
(13, '9811847001'),
(14, '9717571739'),
(15, '8910361331'),
(16, '9821182683');

-- --------------------------------------------------------

--
-- Table structure for table Name
--

CREATE TABLE Name (
  name_id int(11) NOT NULL,
  first_name varchar(255) NOT NULL,
  middle_name varchar(255) DEFAULT NULL,
  last_name varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table Name
--

INSERT INTO Name (name_id, first_name, middle_name, last_name) VALUES
(13, 'Vishal', '', ''),
(14, 'Pratistha', NULL, 'Aggarwal'),
(15, 'Mayukh', NULL, 'Chakraborty'),
(16, 'Devansh', NULL, 'Manchanda');

-- --------------------------------------------------------

--
-- Table structure for table UserDetails
--

CREATE TABLE UserDetails (
  user_id int(11) NOT NULL,
  date_of_birth date DEFAULT NULL,
  last_login timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table UserDetails
--

INSERT INTO UserDetails (user_id, date_of_birth, last_login) VALUES
(13, '2003-10-24', '2024-02-04 05:08:23'),
(14, '2003-10-23', '2024-02-03 05:24:17'),
(15, '2000-10-22', '2024-02-02 07:50:53'),
(16, '2003-00-21', '2024-02-09 16:15:27');

-- --------------------------------------------------------

--
-- Table structure for table Users
--

CREATE TABLE Users (
  user_id int(11) NOT NULL,
  username varchar(50) NOT NULL,
  password varchar(255) NOT NULL,
  name_id int(11) DEFAULT NULL,
  email_id int(11) DEFAULT NULL,
  mobile_id int(11) DEFAULT NULL,
  profile_pic_id int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table Users
--

INSERT INTO Users (user_id, username, password, name_id, email_id, mobile_id, profile_pic_id) VALUES
(13, 'Vishal', 'vishukaneki', 13, 13, 13, NULL),
(14, 'Pratistha', '2022UIC3614', 14, 14, 14, NULL),
(15, 'Mayukh', '2022UIC3615', 15, 15, 15, NULL),
(16, 'Devansh', '2022UIC3616', 16, 16, 16, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table Admins
--
ALTER TABLE Admins
  ADD PRIMARY KEY (admin_id);

--
-- Indexes for table Complaints
--
ALTER TABLE Complaints
  ADD PRIMARY KEY (complaint_id),
  ADD KEY user_id (user_id);

--
-- Indexes for table Email
--
ALTER TABLE Email
  ADD PRIMARY KEY (email_id),
  ADD UNIQUE KEY unique_email (email_address);

--
-- Indexes for table Mobile
--
ALTER TABLE Mobile
  ADD PRIMARY KEY (mobile_id),
  ADD UNIQUE KEY unique_mobile (mobile_number);

--
-- Indexes for table Name
--
ALTER TABLE Name
  ADD PRIMARY KEY (name_id);

--
-- Indexes for table UserDetails
--
ALTER TABLE UserDetails
  ADD PRIMARY KEY (user_id);

--
-- Indexes for table Users
--
ALTER TABLE Users
  ADD PRIMARY KEY (user_id),
  ADD KEY name_id (name_id),
  ADD KEY email_id (email_id),
  ADD KEY mobile_id (mobile_id);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table Admins
--
ALTER TABLE Admins
  MODIFY admin_id int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table Complaints
--
ALTER TABLE Complaints
  MODIFY complaint_id int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table Email
--
ALTER TABLE Email
  MODIFY email_id int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table Mobile
--
ALTER TABLE Mobile
  MODIFY mobile_id int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table Name
--
ALTER TABLE Name
  MODIFY name_id int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table Users
--
ALTER TABLE Users
  MODIFY user_id int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- Constraints for dumped tables
--

--
-- Constraints for table Complaints
--
ALTER TABLE Complaints
  ADD CONSTRAINT complaints_ibfk_1 FOREIGN KEY (user_id) REFERENCES Users (user_id);

--
-- Constraints for table Users
--
ALTER TABLE Users
  ADD CONSTRAINT users_ibfk_1 FOREIGN KEY (name_id) REFERENCES Name (name_id),
  ADD CONSTRAINT users_ibfk_2 FOREIGN KEY (email_id) REFERENCES Email (email_id),
  ADD CONSTRAINT users_ibfk_3 FOREIGN KEY (mobile_id) REFERENCES Mobile (mobile_id);

COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
