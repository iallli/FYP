-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3307
-- Generation Time: Oct 22, 2022 at 09:54 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */
;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */
;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */
;
/*!40101 SET NAMES utf8mb4 */
;
--
-- Database: `mediamonitoringtool`
--

-- --------------------------------------------------------
--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(11) NOT NULL,
  `brand_name` varchar(100) NOT NULL,
  `competitor_name` varchar(100) NOT NULL,
  `hashtag` varchar(100) NOT NULL,
  `creation_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` date DEFAULT NULL,
  `account_type` varchar(50) DEFAULT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;
--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (
    `id`,
    `brand_name`,
    `competitor_name`,
    `hashtag`,
    `creation_at`,
    `updated_at`,
    `deleted_at`,
    `account_type`
  )
VALUES (
    1,
    'Burger king',
    ' Burgerking',
    ' burgerking',
    '2022-10-12 03:20:57',
    NULL,
    NULL,
    NULL
  ),
  (
    2,
    'Burger king',
    ' Burgerking',
    ' burgerking',
    '2022-10-12 03:26:43',
    NULL,
    NULL,
    NULL
  ),
  (
    3,
    'Burger king',
    ' Burgerking',
    ' burgerking',
    '2022-10-12 03:30:47',
    NULL,
    NULL,
    NULL
  ),
  (
    4,
    'Burger king',
    'Burgerking',
    'burgerking',
    '2022-10-12 03:34:27',
    NULL,
    NULL,
    NULL
  ),
  (
    5,
    'fdd',
    'gggg',
    'vvvvv',
    '2022-10-12 12:52:22',
    NULL,
    NULL,
    NULL
  ),
  (
    6,
    'fdd',
    'gggg',
    'vvvvv',
    '2022-10-12 12:53:09',
    NULL,
    NULL,
    NULL
  ),
  (
    7,
    'fdd',
    'gggg',
    'vvvvv',
    '2022-10-12 12:55:41',
    NULL,
    NULL,
    NULL
  ),
  (
    8,
    'fdd',
    ' gggg',
    ' vvvvv',
    '2022-10-12 12:56:03',
    NULL,
    NULL,
    NULL
  ),
  (
    9,
    'fdd',
    'gggg',
    'vvvvv',
    '2022-10-12 12:57:25',
    NULL,
    NULL,
    NULL
  ),
  (
    10,
    'fdd',
    ' gggg',
    ' vvvvv',
    '2022-10-12 12:58:03',
    NULL,
    NULL,
    NULL
  ),
  (
    11,
    'fdd',
    ' gggg',
    ' vvvvv',
    '2022-10-12 13:00:36',
    NULL,
    NULL,
    NULL
  ),
  (
    12,
    'fdd',
    ' gggg',
    ' vvvvv',
    '2022-10-12 13:00:58',
    NULL,
    NULL,
    NULL
  ),
  (
    13,
    'fdd',
    ' gggg',
    ' vvvvv',
    '2022-10-12 13:01:07',
    NULL,
    NULL,
    'trial'
  ),
  (
    14,
    'food',
    'foodpanda',
    'fastfood',
    '2022-10-12 13:03:57',
    NULL,
    NULL,
    'trial'
  ),
  (
    15,
    'test',
    'hello',
    'hi',
    '2022-10-12 17:09:10',
    NULL,
    NULL,
    'trial'
  );
-- --------------------------------------------------------
--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `creation_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `password` varchar(200) NOT NULL,
  `last_login` datetime DEFAULT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;
--
-- Dumping data for table `users`
--

INSERT INTO `users` (
    `id`,
    `email`,
    `creation_at`,
    `updated_at`,
    `deleted_at`,
    `password`,
    `last_login`
  )
VALUES (
    1,
    'mrashid@mailinator.com',
    '2022-10-03 18:58:57',
    NULL,
    NULL,
    '1H?????@}wcv???^-?ɍ[4V?	?`~?k?-?J?V;@???lP*?,?j+?m?^zb',
    NULL
  ),
  (
    2,
    'mrashid@mailinator.com',
    '2022-10-03 18:59:38',
    NULL,
    NULL,
    '	p?????\0???\n?m>=?p??\\????؀8??\"aG|??5׃??A??Z???Gd2??0z',
    NULL
  ),
  (
    3,
    'mrashid@mailinator.com',
    '2022-10-03 19:20:58',
    NULL,
    NULL,
    '$2b$10$K5r.54qS165.CNKPUgGsB.rKRmdSf/pSCY3.PyNNkz.NduicxYX0O',
    NULL
  ),
  (
    4,
    'mrashid@mailinator.com',
    '2022-10-03 19:21:57',
    NULL,
    NULL,
    'Hello@123',
    NULL
  ),
  (
    5,
    'mrashid@mailinator.com',
    '2022-10-03 19:22:10',
    NULL,
    NULL,
    'Hello@123',
    NULL
  ),
  (
    6,
    'mrashid@mailinator.com',
    '2022-10-03 19:24:59',
    NULL,
    NULL,
    'Hello@123',
    NULL
  ),
  (
    7,
    'mrashid44@mailinator.com',
    '2022-10-03 19:25:44',
    NULL,
    NULL,
    'Hello@123',
    NULL
  ),
  (
    8,
    'mrashid44@mailinator.com',
    '2022-10-03 19:26:21',
    NULL,
    NULL,
    '$2b$10$J1wzhZ4QxZ9PImRTG49T5ePS9JxVwK.4AAhvEqTj5B7KSZ4DIATJi',
    NULL
  ),
  (
    9,
    'ali@mailinator.com',
    '2022-10-03 21:41:42',
    NULL,
    NULL,
    '$2b$10$4E4GGr6NFPViRJgh90sizu6nwfbgXnHXSDTf/AJPsQxH8tTFc5Z56',
    NULL
  ),
  (
    10,
    'ali67@mailinator.com',
    '2022-10-03 21:58:57',
    NULL,
    NULL,
    'gAAAAABjO1shuR317mEZ6pmYETps4OF9PePdHCFJG2O_fFIblq75FNQYMfy3A99TlIp4nVtt5yJL83IC1AXCDZL3ecEskJWE2Q==',
    '2022-10-03 22:09:12'
  ),
  (
    11,
    'rabia77@mailinator.com',
    '2022-10-12 17:06:03',
    NULL,
    NULL,
    'gAAAAABjRvP7VdXY_7hE_XqV3NXnGGyHzkNLl4crTEuF2bji11XkZGhvqBHcVAS6UqH8pK28JGKKmx99iyaneGdU82dwBefZ_w==',
    '2022-10-12 17:07:20'
  );
--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
ADD PRIMARY KEY (`id`);
--
-- Indexes for table `users`
--
ALTER TABLE `users`
ADD PRIMARY KEY (`id`);
--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,
  AUTO_INCREMENT = 16;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,
  AUTO_INCREMENT = 12;
COMMIT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */
;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */
;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */
;