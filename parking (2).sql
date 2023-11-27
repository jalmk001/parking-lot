-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 21, 2022 at 08:46 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `parking`
--

-- --------------------------------------------------------

--
-- Table structure for table `arrival`
--

CREATE TABLE `arrival` (
  `a_id` int(11) NOT NULL,
  `u_id` int(11) NOT NULL,
  `type` varchar(100) NOT NULL,
  `entry_time` time(6) NOT NULL,
  `exit_time` time(6) NOT NULL,
  `vehicle_no` varchar(100) NOT NULL,
  `b_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add arrival', 7, 'add_arrival'),
(26, 'Can change arrival', 7, 'change_arrival'),
(27, 'Can delete arrival', 7, 'delete_arrival'),
(28, 'Can view arrival', 7, 'view_arrival'),
(29, 'Can add booking', 8, 'add_booking'),
(30, 'Can change booking', 8, 'change_booking'),
(31, 'Can delete booking', 8, 'delete_booking'),
(32, 'Can view booking', 8, 'view_booking'),
(33, 'Can add feedback', 9, 'add_feedback'),
(34, 'Can change feedback', 9, 'change_feedback'),
(35, 'Can delete feedback', 9, 'delete_feedback'),
(36, 'Can view feedback', 9, 'view_feedback'),
(37, 'Can add login', 10, 'add_login'),
(38, 'Can change login', 10, 'change_login'),
(39, 'Can delete login', 10, 'delete_login'),
(40, 'Can view login', 10, 'view_login'),
(41, 'Can add park', 11, 'add_park'),
(42, 'Can change park', 11, 'change_park'),
(43, 'Can delete park', 11, 'delete_park'),
(44, 'Can view park', 11, 'view_park'),
(45, 'Can add payment', 12, 'add_payment'),
(46, 'Can change payment', 12, 'change_payment'),
(47, 'Can delete payment', 12, 'delete_payment'),
(48, 'Can view payment', 12, 'view_payment'),
(49, 'Can add user', 13, 'add_user'),
(50, 'Can change user', 13, 'change_user'),
(51, 'Can delete user', 13, 'delete_user'),
(52, 'Can view user', 13, 'view_user');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `b_id` int(11) NOT NULL,
  `u_id` int(11) NOT NULL,
  `s_id` int(11) NOT NULL,
  `entry_time` time(6) NOT NULL,
  `exit_time` time(6) NOT NULL,
  `date` date NOT NULL,
  `vehicle_no` varchar(50) NOT NULL,
  `vehicle_type` varchar(50) NOT NULL,
  `status` varchar(122) NOT NULL,
  `timestatus` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`b_id`, `u_id`, `s_id`, `entry_time`, `exit_time`, `date`, `vehicle_no`, `vehicle_type`, `status`, `timestatus`) VALUES
(1, 1, 3, '13:04:00.000000', '14:04:00.000000', '2022-11-11', 'kl5761', '', '', ''),
(2, 1, 3, '13:07:00.000000', '13:07:00.000000', '2022-11-11', 'kl5761', '', '', ''),
(3, 1, 5, '12:42:00.000000', '13:43:00.000000', '2022-11-12', 'kl5742', '', '', ''),
(4, 1, 5, '12:50:00.000000', '14:50:00.000000', '2022-11-14', 'kl57001', '', '', ''),
(5, 1, 6, '17:37:00.000000', '18:37:00.000000', '2022-11-15', 'kl562323', '', '', ''),
(6, 2, 1, '10:06:00.000000', '11:06:00.000000', '2022-11-15', 'kLx3624', 'scooter', '', ''),
(7, 8, 2, '10:31:00.000000', '11:26:00.000000', '2022-11-15', 'klx3245', 'bike', '', ''),
(8, 1, 3, '17:48:00.000000', '18:48:00.000000', '2022-11-15', 'kl57003', 'car', '', ''),
(9, 1, 1, '18:00:00.000000', '20:00:00.000000', '2022-11-15', 'kl57618', 'buz', '', ''),
(10, 9, 6, '17:13:00.000000', '17:18:00.000000', '2022-11-15', 'kl57616', 'jeep', '', ''),
(11, 1, 10, '02:08:00.000000', '20:09:00.000000', '2022-11-17', 'kl57000', 'benz car', 'returned', ''),
(12, 1, 10, '13:25:00.000000', '14:25:00.241000', '2022-11-19', 'kl57000', 'bike', 'returned', ''),
(13, 1, 10, '17:07:00.000000', '18:07:00.000000', '2022-11-19', 'kl5742', 'bike', 'returned', ''),
(14, 1, 10, '16:07:00.000000', '17:07:00.000000', '2022-11-19', 'kl5742', 'jeep', 'returned', ''),
(15, 1, 10, '20:01:00.000000', '21:01:00.000000', '2022-11-19', 'kl57333', 'car', 'returned', ''),
(16, 9, 3, '10:00:00.000000', '11:40:00.000000', '2022-11-19', 'kl57990', 'car', 'returned', ''),
(17, 7, 3, '10:47:00.000000', '11:47:00.000000', '2022-11-19', 'kl57000', 'car', 'pending', '');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(7, 'arrival', 'arrival'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(8, 'booking', 'booking'),
(5, 'contenttypes', 'contenttype'),
(9, 'feedback', 'feedback'),
(10, 'login', 'login'),
(11, 'park', 'park'),
(12, 'payment', 'payment'),
(6, 'sessions', 'session'),
(13, 'user', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2022-11-10 09:29:56.970429'),
(2, 'auth', '0001_initial', '2022-11-10 09:29:57.664478'),
(3, 'admin', '0001_initial', '2022-11-10 09:29:57.795021'),
(4, 'admin', '0002_logentry_remove_auto_add', '2022-11-10 09:29:57.807163'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-11-10 09:29:57.817686'),
(6, 'arrival', '0001_initial', '2022-11-10 09:29:57.822334'),
(7, 'contenttypes', '0002_remove_content_type_name', '2022-11-10 09:29:57.886892'),
(8, 'auth', '0002_alter_permission_name_max_length', '2022-11-10 09:29:57.972922'),
(9, 'auth', '0003_alter_user_email_max_length', '2022-11-10 09:29:57.997902'),
(10, 'auth', '0004_alter_user_username_opts', '2022-11-10 09:29:58.009946'),
(11, 'auth', '0005_alter_user_last_login_null', '2022-11-10 09:29:58.050771'),
(12, 'auth', '0006_require_contenttypes_0002', '2022-11-10 09:29:58.053181'),
(13, 'auth', '0007_alter_validators_add_error_messages', '2022-11-10 09:29:58.056181'),
(14, 'auth', '0008_alter_user_username_max_length', '2022-11-10 09:29:58.079434'),
(15, 'auth', '0009_alter_user_last_name_max_length', '2022-11-10 09:29:58.100845'),
(16, 'auth', '0010_alter_group_name_max_length', '2022-11-10 09:29:58.126522'),
(17, 'auth', '0011_update_proxy_permissions', '2022-11-10 09:29:58.145833'),
(18, 'auth', '0012_alter_user_first_name_max_length', '2022-11-10 09:29:58.179116'),
(19, 'booking', '0001_initial', '2022-11-10 09:29:58.187209'),
(20, 'feedback', '0001_initial', '2022-11-10 09:29:58.195583'),
(21, 'login', '0001_initial', '2022-11-10 09:29:58.204701'),
(22, 'park', '0001_initial', '2022-11-10 09:29:58.214821'),
(23, 'payment', '0001_initial', '2022-11-10 09:29:58.224125'),
(24, 'sessions', '0001_initial', '2022-11-10 09:29:58.341009'),
(25, 'user', '0001_initial', '2022-11-10 09:29:58.352850');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('5u6upxnmsqawqcon0f7hu8qdp88bgecy', 'eyJ1X2lkIjowfQ:1owL6X:-4n91YG8-Zm115ShQ-nbvMmYu1C7Nzi48vx9yJU-jUM', '2022-12-03 10:29:45.248324'),
('aaq63pvuga86s23kerexc1fym7pz5fui', 'eyJ1X2lkIjowfQ:1otNw7:LOiRO69XnamV-vIpkYDdSx8QgOmGxCAVa-n6fC_7K40', '2022-11-25 06:54:47.766878'),
('o8lqff7d823t1mnz1v3ncgu7b720kqbb', 'eyJ1X2lkIjoxfQ:1otjbc:TDY77o3I96a7aOgHdlRYi92l8yhmOh-sXnL4bdFPIl0', '2022-11-26 06:03:04.102788'),
('wsp066ofbdgi4jpe7q95ourgfzigfl4e', 'eyJ1X2lkIjo5fQ:1ouuVZ:hR0IbavpD52qR4E0I_fAKrJVnjr1cid7NIdBuPw6Fsg', '2022-11-29 11:53:41.419278');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `f_id` int(11) NOT NULL,
  `feedback` varchar(200) NOT NULL,
  `date` date NOT NULL,
  `time` time(6) NOT NULL,
  `u_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`f_id`, `feedback`, `date`, `time`, `u_id`) VALUES
(1, 'good', '2022-11-11', '10:22:17.948481', 1),
(2, 'very bad experience with security', '2022-11-15', '17:14:00.981183', 9);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `l_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `u_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`l_id`, `username`, `password`, `type`, `u_id`) VALUES
(1, 'emir', 'emir123', 'user', 1),
(2, 'admin', 'admin', 'admin', 0),
(4, 'sherin', 'sherin123', 'staff', 2),
(5, 'jalva', 'jalva@123', 'user', 2),
(9, 'arun', 'arun', 'user', 6),
(10, 'abc', 'abc', 'user', 7),
(11, 'killadi', '972', 'user', 8),
(12, 'riya', '123', 'staff', 3),
(13, 'riya', 'riya', 'user', 9),
(14, 'tina', 'tina', 'staff', 4);

-- --------------------------------------------------------

--
-- Table structure for table `park`
--

CREATE TABLE `park` (
  `s_id` int(11) NOT NULL,
  `slot` varchar(300) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `time` time(6) NOT NULL,
  `exit` time(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `park`
--

INSERT INTO `park` (`s_id`, `slot`, `amount`, `time`, `exit`) VALUES
(1, 'one.png', '200', '00:00:00.000000', '20:00:00.000000'),
(2, 'two.png', '150', '00:00:00.000000', '00:00:00.000000'),
(3, 'three.png', '250', '00:00:00.000000', '00:00:00.000000'),
(4, 'four.png', '200', '00:00:00.000000', '00:00:00.000000'),
(5, 'five.png', '300', '00:00:00.000000', '18:00:00.000000'),
(10, 'six.png', '200', '00:00:00.000000', '00:00:00.000000');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `py_id` int(11) NOT NULL,
  `s_id` int(11) NOT NULL,
  `u_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `time` time(6) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`py_id`, `s_id`, `u_id`, `date`, `time`, `amount`, `status`) VALUES
(1, 3, 1, '2022-11-11', '10:08:10.117355', '250', ''),
(2, 3, 1, '2022-11-11', '10:12:06.819786', '250', ''),
(3, 5, 1, '2022-11-12', '10:43:49.036475', '270', ''),
(4, 5, 1, '2022-11-14', '11:51:26.017348', '300', ''),
(5, 6, 1, '2022-11-15', '15:37:53.324022', '230', ''),
(6, 2, 8, '2022-11-15', '16:24:16.124134', '29', ''),
(7, 3, 1, '2022-11-15', '16:49:20.493967', '', ''),
(8, 1, 1, '2022-11-15', '17:01:20.717632', '', ''),
(9, 6, 9, '2022-11-15', '17:13:22.583282', '', ''),
(10, 10, 1, '2022-11-17', '17:09:31.418765', '', ''),
(11, 10, 1, '2022-11-17', '17:09:37.058643', '', ''),
(12, 10, 1, '2022-11-18', '09:26:15.458946', '', ''),
(13, 3, 9, '2022-11-19', '15:41:19.982341', '', ''),
(14, 3, 9, '2022-11-19', '15:41:40.895242', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `record`
--

CREATE TABLE `record` (
  `rec_id` int(11) NOT NULL,
  `b_id` int(11) NOT NULL,
  `entry_time` time(6) NOT NULL,
  `exit_time` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `record`
--

INSERT INTO `record` (`rec_id`, `b_id`, `entry_time`, `exit_time`) VALUES
(1, 3, '12:21:00.000000', '14:22:00.0'),
(2, 3, '13:30:00.000000', '13:30:00.0'),
(3, 5, '16:39:00.000000', '18:39:00.0'),
(4, 6, '10:58:00.000000', '11:58:00.0'),
(5, 10, '17:19:00.000000', '17:20:00.0'),
(6, 7, '10:30:00.000000', '12:00:00.0'),
(7, 11, '18:10:00.000000', '20:10:00.0'),
(8, 12, '09:27:00.000000', '11:27:00.0'),
(9, 13, '15:54:00.000000', 'pending'),
(10, 14, '18:57:00.000000', 'pending'),
(11, 15, '22:03:00.000000', '15:35'),
(13, 16, '10:33:00.000000', '11:46');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `staff_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`staff_id`, `username`, `password`, `gender`, `phone`, `email`) VALUES
(1, 'sherin', 'sherin123', 'female', '34267853421', 'sher@gmail.com'),
(2, 'sherin', 'sherin123', 'female', '34267853421', 'sher@gmail.com'),
(3, 'riya', '123', 'female', '455667888', 'kev@gmail.com'),
(4, 'tina', 'tina', 'female', '9098987678', 'tina@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `u_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `gender` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`u_id`, `username`, `password`, `gender`, `address`, `phone`, `email`, `type`) VALUES
(1, 'emir', 'emir123', 'male', 'calicut\r\nmedica colllege', '895413276', 'emir@gmail.com', ''),
(2, 'jalva', 'jalva@123', 'female', 'kmelwmplmlwanfkanfc', '87665555', 'jalvajebin001@gmail.com', ''),
(3, 'hgdfty', 'hjty', 'male', 'wayanad', '5698743625', 'kev@gmail.com', ''),
(4, 'gdfg', 'hjfty', 'female', 'wayanad', '5698743625', 'kev@gmail.com', ''),
(5, 'arun', 'arun', 'male', 'calicut', '5874963215', 'arun@gmail.com', ''),
(6, 'arun', 'arun', 'male', 'calicut', '5874963215', 'arun@gmail.com', ''),
(7, 'abc', 'abc', 'female', 'wayanad', '5698743625', 'kev@gmail.com', ''),
(8, 'killadi', '972', 'female', 'kmelwmplmlwanfkanfc', '67788999', 'jalvajebin001@gmail.com', ''),
(9, 'riya', 'riya', 'female', 'korath thadathil\r\nkuttiprm', '909876554', 'riya@gmail.com', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `arrival`
--
ALTER TABLE `arrival`
  ADD PRIMARY KEY (`a_id`);

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`b_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`f_id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`l_id`);

--
-- Indexes for table `park`
--
ALTER TABLE `park`
  ADD PRIMARY KEY (`s_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`py_id`);

--
-- Indexes for table `record`
--
ALTER TABLE `record`
  ADD PRIMARY KEY (`rec_id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`staff_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`u_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `arrival`
--
ALTER TABLE `arrival`
  MODIFY `a_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `b_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `f_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `l_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `park`
--
ALTER TABLE `park`
  MODIFY `s_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `py_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `record`
--
ALTER TABLE `record`
  MODIFY `rec_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `staff_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `u_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
