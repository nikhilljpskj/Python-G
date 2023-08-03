-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 03, 2023 at 11:49 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bank_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add districts', 1, 'add_districts'),
(2, 'Can change districts', 1, 'change_districts'),
(3, 'Can delete districts', 1, 'delete_districts'),
(4, 'Can view districts', 1, 'view_districts'),
(5, 'Can add branches', 2, 'add_branches'),
(6, 'Can change branches', 2, 'change_branches'),
(7, 'Can delete branches', 2, 'delete_branches'),
(8, 'Can view branches', 2, 'view_branches'),
(9, 'Can add log entry', 3, 'add_logentry'),
(10, 'Can change log entry', 3, 'change_logentry'),
(11, 'Can delete log entry', 3, 'delete_logentry'),
(12, 'Can view log entry', 3, 'view_logentry'),
(13, 'Can add permission', 4, 'add_permission'),
(14, 'Can change permission', 4, 'change_permission'),
(15, 'Can delete permission', 4, 'delete_permission'),
(16, 'Can view permission', 4, 'view_permission'),
(17, 'Can add group', 5, 'add_group'),
(18, 'Can change group', 5, 'change_group'),
(19, 'Can delete group', 5, 'delete_group'),
(20, 'Can view group', 5, 'view_group'),
(21, 'Can add user', 6, 'add_user'),
(22, 'Can change user', 6, 'change_user'),
(23, 'Can delete user', 6, 'delete_user'),
(24, 'Can view user', 6, 'view_user'),
(25, 'Can add content type', 7, 'add_contenttype'),
(26, 'Can change content type', 7, 'change_contenttype'),
(27, 'Can delete content type', 7, 'delete_contenttype'),
(28, 'Can view content type', 7, 'view_contenttype'),
(29, 'Can add session', 8, 'add_session'),
(30, 'Can change session', 8, 'change_session'),
(31, 'Can delete session', 8, 'delete_session'),
(32, 'Can view session', 8, 'view_session');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$600000$QDmMDecuHF32yyif0Ka7PD$/9eKxocqe4tER6uG0o0L/w7+d0/v2Nt4lEuNdEAS608=', '2023-08-03 09:21:00.068576', 1, 'bank', '', '', 'bank@gmail.com', 1, 1, '2023-07-31 10:28:52.172143'),
(3, 'pbkdf2_sha256$600000$CpaoPIQhqAWN2uy3ob5OCq$7GnoRlGE/yG7l76io4g8zfqF5IaD1gxsQCM8RIYKEMI=', NULL, 0, 'wwwwwwwwww', '', '', '', 0, 1, '2023-08-02 18:19:09.283800'),
(5, 'pbkdf2_sha256$600000$O4VJMsSBER8NSppmkp0Z5J$fd4wKiszDeKk4gRCZtXWahfQC/ab66W2WCveAo+/+jQ=', NULL, 0, 'nikhil', '', '', '', 0, 1, '2023-08-02 19:00:29.624564'),
(6, 'pbkdf2_sha256$600000$q0PWimscZMA0FBxDZ9ba8M$ZuGoFDovK46+J27U03NukQAsVQcAUzjpOgluuuI6FyI=', '2023-08-02 19:17:37.844368', 0, 'greeshma', '', '', '', 0, 1, '2023-08-02 19:00:51.817188'),
(7, 'pbkdf2_sha256$600000$rgi9WOiPGA1JLOzKhSL2vd$J/72D9vuV+274msmZUaa7CKEQlZzDdvkyC1jIObwqCY=', NULL, 0, 'huhuhuhuuuuu', '', '', '', 0, 1, '2023-08-02 19:01:21.575150'),
(8, 'pbkdf2_sha256$600000$rZaJ6UuNT6vvUP1ntyM8rI$O8zxZ4FrG2XiqQ7o794EYikFJ+BDHUXCbY/ft7MqB3c=', NULL, 0, 'Nikhil Prakash', '', '', '', 0, 1, '2023-08-03 07:21:06.267871');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2023-07-31 10:29:27.278832', '1', 'Trivandrum', 1, '[{\"added\": {}}]', 1, 1),
(2, '2023-07-31 10:29:32.725954', '2', 'Kollam', 1, '[{\"added\": {}}]', 1, 1),
(3, '2023-07-31 10:29:37.303709', '3', 'Pathanamthitta', 1, '[{\"added\": {}}]', 1, 1),
(4, '2023-07-31 10:29:41.834080', '4', 'Alappuzha', 1, '[{\"added\": {}}]', 1, 1),
(5, '2023-07-31 10:29:47.501128', '5', 'Ernakulam', 1, '[{\"added\": {}}]', 1, 1),
(6, '2023-07-31 10:30:01.754655', '1', 'Kilimanoor', 1, '[{\"added\": {}}]', 2, 1),
(7, '2023-07-31 10:30:07.898299', '2', 'Attingal', 1, '[{\"added\": {}}]', 2, 1),
(8, '2023-07-31 10:30:16.274363', '3', 'Pattom', 1, '[{\"added\": {}}]', 2, 1),
(9, '2023-07-31 10:30:22.848929', '4', 'Ayoor', 1, '[{\"added\": {}}]', 2, 1),
(10, '2023-07-31 10:30:31.259179', '5', 'Anchal', 1, '[{\"added\": {}}]', 2, 1),
(11, '2023-07-31 10:30:40.463412', '6', 'Chadayamangalam', 1, '[{\"added\": {}}]', 2, 1),
(12, '2023-07-31 10:30:51.436653', '7', 'Adoor', 1, '[{\"added\": {}}]', 2, 1),
(13, '2023-07-31 10:30:58.259449', '8', 'Thiruvalla', 1, '[{\"added\": {}}]', 2, 1),
(14, '2023-07-31 10:31:07.447258', '9', 'Pandalam', 1, '[{\"added\": {}}]', 2, 1),
(15, '2023-07-31 10:31:14.645551', '10', 'Harippad', 1, '[{\"added\": {}}]', 2, 1),
(16, '2023-07-31 10:31:24.366069', '11', 'Cherthala', 1, '[{\"added\": {}}]', 2, 1),
(17, '2023-07-31 10:31:35.901262', '12', 'Pallippuram', 1, '[{\"added\": {}}]', 2, 1),
(18, '2023-07-31 10:31:46.307698', '13', 'Vytila', 1, '[{\"added\": {}}]', 2, 1),
(19, '2023-07-31 10:32:09.940816', '14', 'Kakkanad', 1, '[{\"added\": {}}]', 2, 1),
(20, '2023-07-31 10:32:18.137392', '15', 'Kalady', 1, '[{\"added\": {}}]', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(3, 'admin', 'logentry'),
(5, 'auth', 'group'),
(4, 'auth', 'permission'),
(6, 'auth', 'user'),
(7, 'contenttypes', 'contenttype'),
(8, 'sessions', 'session'),
(2, 'task_app', 'branches'),
(1, 'task_app', 'districts');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-07-31 06:10:51.696291'),
(2, 'auth', '0001_initial', '2023-07-31 06:10:51.977626'),
(3, 'admin', '0001_initial', '2023-07-31 06:10:52.054130'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-07-31 06:10:52.054130'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-07-31 06:10:52.069775'),
(6, 'contenttypes', '0002_remove_content_type_name', '2023-07-31 06:10:52.116664'),
(7, 'auth', '0002_alter_permission_name_max_length', '2023-07-31 06:10:52.179262'),
(8, 'auth', '0003_alter_user_email_max_length', '2023-07-31 06:10:52.194813'),
(9, 'auth', '0004_alter_user_username_opts', '2023-07-31 06:10:52.210445'),
(10, 'auth', '0005_alter_user_last_login_null', '2023-07-31 06:10:52.241701'),
(11, 'auth', '0006_require_contenttypes_0002', '2023-07-31 06:10:52.241701'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2023-07-31 06:10:52.257331'),
(13, 'auth', '0008_alter_user_username_max_length', '2023-07-31 06:10:52.272961'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2023-07-31 06:10:52.288592'),
(15, 'auth', '0010_alter_group_name_max_length', '2023-07-31 06:10:52.304221'),
(16, 'auth', '0011_update_proxy_permissions', '2023-07-31 06:10:52.319850'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2023-07-31 06:10:52.335481'),
(18, 'sessions', '0001_initial', '2023-07-31 06:10:52.366740'),
(19, 'task_app', '0001_initial', '2023-07-31 06:10:52.382369'),
(20, 'task_app', '0002_auto_20230730_1002', '2023-07-31 06:10:52.476148'),
(21, 'task_app', '0003_auto_20230730_1007', '2023-07-31 06:10:52.554297');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('9bnuq8249m713hxhhrrvdzehfkmvqw5k', '.eJxVjMsOwiAQRf-FtSG8Cy7d-w1kYAapGkhKuzL-uzbpQrf3nHNfLMK21rgNWuKM7MwkO_1uCfKD2g7wDu3Wee5tXebEd4UfdPBrR3peDvfvoMKo37p4q1Nw6EJxWinS1tgpUFFJEIissCAQGA0TJIvGBtQCbUleSokZPHt_AO7bOI8:1qRDiA:oTfLd-B6xZ0qMJCP3geK3GS-yLJ9OV03wVCzivT9PyY', '2023-08-16 15:24:30.460224'),
('epuy3wb4vg8tt976fyg16pbo27q1dy4p', '.eJxVjEEOgjAURO_StWn6S4utS_ecgfT_DoKaklBYGe-uJCx0O--9eak-bevYbxVLP2V1UaROvxsneaDsIN9Tuc1a5rIuE-td0QetupszntfD_TsYUx2_dQtnghhIC3jrjI0sZxdgAxmiBoxEUdhIGBjtYKOXDD84zw3Ek1XvD-kSOFc:1qRUVw:WoDO2M6n2sWqb7eGFFZE4rpZ5_qGQ8BiZbzim68jT88', '2023-08-17 09:21:00.072579'),
('xwxphlfx6kca4lv6a9zuwvxq29351jje', '.eJxVjMsOwiAQRf-FtSG8Cy7d-w1kYAapGkhKuzL-uzbpQrf3nHNfLMK21rgNWuKM7MwkO_1uCfKD2g7wDu3Wee5tXebEd4UfdPBrR3peDvfvoMKo37p4q1Nw6EJxWinS1tgpUFFJEIissCAQGA0TJIvGBtQCbUleSokZPHt_AO7bOI8:1qQiME:o1sYckpL0RIq19JNVyIwXLxhuMyeyWDD4KRA9KWGuR4', '2023-08-15 05:55:46.579801'),
('xx4xc13lqy0mk6pxjb095s2vzw4dcn99', '.eJxVjMsOwiAQRf-FtSG8Cy7d-w1kYAapGkhKuzL-uzbpQrf3nHNfLMK21rgNWuKM7MwkO_1uCfKD2g7wDu3Wee5tXebEd4UfdPBrR3peDvfvoMKo37p4q1Nw6EJxWinS1tgpUFFJEIissCAQGA0TJIvGBtQCbUleSokZPHt_AO7bOI8:1qR5aU:jKZAhYWoRIYxXIeqRODIUvpBGRzo9D6K4Fq4Sac5vB8', '2023-08-16 06:44:02.195725'),
('yho2c2wx7ifgbzym2o4yuycifyk9gxs6', '.eJxVjMsOwiAQRf-FtSG8Cy7d-w1kYAapGkhKuzL-uzbpQrf3nHNfLMK21rgNWuKM7MwkO_1uCfKD2g7wDu3Wee5tXebEd4UfdPBrR3peDvfvoMKo37p4q1Nw6EJxWinS1tgpUFFJEIissCAQGA0TJIvGBtQCbUleSokZPHt_AO7bOI8:1qQQ9L:0M4oAOXBmFOqUu7hYxFdIB1GQNy9R3jlQK3J5B27D_0', '2023-08-14 10:29:15.985395');

-- --------------------------------------------------------

--
-- Table structure for table `task_app_branches`
--

CREATE TABLE `task_app_branches` (
  `id` bigint(20) NOT NULL,
  `branch` varchar(250) NOT NULL,
  `district_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `task_app_branches`
--

INSERT INTO `task_app_branches` (`id`, `branch`, `district_id`) VALUES
(1, 'Kilimanoor', 1),
(2, 'Attingal', 1),
(3, 'Pattom', 1),
(4, 'Ayoor', 2),
(5, 'Anchal', 2),
(6, 'Chadayamangalam', 2),
(7, 'Adoor', 3),
(8, 'Thiruvalla', 3),
(9, 'Pandalam', 3),
(10, 'Harippad', 4),
(11, 'Cherthala', 4),
(12, 'Pallippuram', 4),
(13, 'Vytila', 5),
(14, 'Kakkanad', 5),
(15, 'Kalady', 5);

-- --------------------------------------------------------

--
-- Table structure for table `task_app_districts`
--

CREATE TABLE `task_app_districts` (
  `id` bigint(20) NOT NULL,
  `district` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `task_app_districts`
--

INSERT INTO `task_app_districts` (`id`, `district`) VALUES
(1, 'Trivandrum'),
(2, 'Kollam'),
(3, 'Pathanamthitta'),
(4, 'Alappuzha'),
(5, 'Ernakulam');

-- --------------------------------------------------------

--
-- Table structure for table `task_app_registration`
--

CREATE TABLE `task_app_registration` (
  `id` bigint(20) NOT NULL,
  `name` varchar(250) NOT NULL,
  `dob` date NOT NULL,
  `age` int(11) NOT NULL,
  `gender` varchar(250) NOT NULL,
  `email` varchar(254) NOT NULL,
  `address` varchar(250) NOT NULL,
  `account` varchar(250) NOT NULL,
  `branches_list` varchar(250) NOT NULL,
  `districts_list` varchar(250) NOT NULL,
  `phonenumber` varchar(250) NOT NULL,
  `materials_req` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `task_app_registration`
--

INSERT INTO `task_app_registration` (`id`, `name`, `dob`, `age`, `gender`, `email`, `address`, `account`, `branches_list`, `districts_list`, `phonenumber`, `materials_req`) VALUES
(1, 'Nikhil PRAKASH', '2023-08-11', 22, 'male', 'nikhilkodumon@gmail.com', 'Prakash Bhavanam, Aickadu, Kodumon P.O', '', '11', '4', '07560879155', ''),
(2, 'Nikhil prakash', '2023-08-05', 22, 'male', 'nikhiljp.skj@gmail.com', 'Prakash Bhavanam\r\nAickadu', 'Savings', '0', '0', '7560879155', 'Debit Card'),
(3, 'Nikhil prakash', '2023-08-05', 22, 'male', 'nikhiljp.skj@gmail.com', 'Prakash Bhavanam\r\nAickadu', 'Savings', '0', '0', '7560879155', 'Debit Card'),
(4, 'Nikhil PRAKASH', '2023-08-11', 22, 'male', 'nikhilkodumon@gmail.com', 'Prakash Bhavanam, Aickadu, Kodumon P.O', '', '11', '4', '07560879155', ''),
(5, 'Nikhil PRAKASH', '2023-08-05', 24, 'male', 'nikhilkodumon@gmail.com', 'Prakash Bhavanam, Aickadu, Kodumon P.O', 'Current', '1', '1', '07560879155', 'Debit Card'),
(6, 'Greeshma', '2023-08-12', 22, 'female', 'jvhsdjhs', 'Nil\r\nNil', 'Savings', '10', '4', '235535', 'Credit Card'),
(7, 'fhwg', '2023-08-12', 223, 'male', 'nikhiljp.skj@gmail.com', 'Nil\r\nNil', 'Savings', '1', '1', '32441654561', 'Credit Card'),
(8, 'fhwg', '2023-08-12', 223, 'male', 'nikhiljp.skj@gmail.com', 'Nil\r\nNil', 'Savings', '4', '2', '32441654561', 'Credit Card'),
(9, 'Greeshma', '2023-08-05', 22, 'female', 'nikhilkodumon@gmail.com', 'Prakash Bhavanam, Aickadu, Kodumon P.O', 'Fixed', '8', '3', '07560879155', 'Credit Card');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `task_app_branches`
--
ALTER TABLE `task_app_branches`
  ADD PRIMARY KEY (`id`),
  ADD KEY `task_app_branches_district_id_dfdb1228_fk_task_app_districts_id` (`district_id`);

--
-- Indexes for table `task_app_districts`
--
ALTER TABLE `task_app_districts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `task_app_registration`
--
ALTER TABLE `task_app_registration`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

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
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `task_app_branches`
--
ALTER TABLE `task_app_branches`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `task_app_districts`
--
ALTER TABLE `task_app_districts`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `task_app_registration`
--
ALTER TABLE `task_app_registration`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

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

--
-- Constraints for table `task_app_branches`
--
ALTER TABLE `task_app_branches`
  ADD CONSTRAINT `task_app_branches_district_id_dfdb1228_fk_task_app_districts_id` FOREIGN KEY (`district_id`) REFERENCES `task_app_districts` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
