-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 2020-05-01 07:24:09
-- 服务器版本： 10.1.26-MariaDB
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mobileweb`
--

-- --------------------------------------------------------

--
-- 表的结构 `photoinfo`
--

CREATE TABLE `photoinfo` (
  `id` int(4) NOT NULL,
  `title` varchar(20) COLLATE utf8mb4_bin NOT NULL,
  `content` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `url` varchar(80) COLLATE utf8mb4_bin NOT NULL,
  `class` int(5) NOT NULL,
  `count` int(5) NOT NULL DEFAULT '0',
  `addtime` datetime(6) NOT NULL DEFAULT '2008-08-08 08:08:08.000000'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- 转存表中的数据 `photoinfo`
--

INSERT INTO `photoinfo` (`id`, `title`, `content`, `url`, `class`, `count`, `addtime`) VALUES
(1, '标题1', '内容1', 'http://127.0.0.1:3008/api/public/images/photo/1.jpg', 1, 88, '2018-08-08 08:08:08.000000'),
(2, '标题2', '内容2', 'http://127.0.0.1:3008/api/public/images/photo/2.jpg', 1, 99, '2020-04-30 22:22:08.000000'),
(3, '标题3', '内容3', 'http://127.0.0.1:3008/api/public/images/photo/3.jpg', 2, 434, '2019-09-08 21:09:08.000000'),
(4, '标题4', '内容4', 'http://127.0.0.1:3008/api/public/images/photo/4.jpg', 2, 1008, '2017-03-28 20:18:00.000000'),
(5, '标题5', '内容5', 'http://127.0.0.1:3008/api/public/images/photo/5.jpg', 3, 2343, '2018-05-12 20:20:00.000000'),
(6, '标题6', '内容6', 'http://127.0.0.1:3008/api/public/images/photo/6.jpg', 3, 9999, '2018-05-25 12:52:00.000000'),
(7, '标题7', '内容7', 'http://127.0.0.1:3008/api/public/images/photo/7.jpg', 4, 343, '2019-01-21 07:00:00.000000'),
(8, '标题8', '内容8', 'http://127.0.0.1:3008/api/public/images/photo/8.jpg', 4, 1234, '2020-01-25 09:00:00.000000'),
(9, '标题9', '内容9', 'http://127.0.0.1:3008/api/public/images/photo/9.jpg', 5, 6821, '2018-06-02 12:26:00.000000'),
(10, '标题10', '内容10', 'http://127.0.0.1:3008/api/public/images/photo/10.jpg', 5, 2333, '2000-10-07 00:00:00.000000');

-- --------------------------------------------------------

--
-- 表的结构 `webusers`
--

CREATE TABLE `webusers` (
  `id` int(10) NOT NULL,
  `username` varchar(25) COLLATE utf8mb4_bin NOT NULL,
  `password` varchar(25) COLLATE utf8mb4_bin NOT NULL,
  `isroot` int(1) NOT NULL DEFAULT '0',
  `class` varchar(16) COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- 转存表中的数据 `webusers`
--

INSERT INTO `webusers` (`id`, `username`, `password`, `isroot`, `class`) VALUES
(10001, 'abo1007', 'yangbo', 1, '研发一组'),
(10002, 'yhx000881', 'yangbo', 0, '研发一组');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `photoinfo`
--
ALTER TABLE `photoinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `webusers`
--
ALTER TABLE `webusers`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `photoinfo`
--
ALTER TABLE `photoinfo`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- 使用表AUTO_INCREMENT `webusers`
--
ALTER TABLE `webusers`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10003;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
