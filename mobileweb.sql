-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 2020-05-15 15:41:52
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
-- 表的结构 `feedback`
--

CREATE TABLE `feedback` (
  `id` int(5) NOT NULL,
  `username` varchar(30) COLLATE utf8_bin NOT NULL,
  `addtime` datetime NOT NULL,
  `content` varchar(100) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- 转存表中的数据 `feedback`
--

INSERT INTO `feedback` (`id`, `username`, `addtime`, `content`) VALUES
(1, '匿名用户', '2020-05-11 12:00:00', '这软件太垃圾了，居然都没人发红包？垃圾！'),
(2, '匿名用户', '2020-05-13 06:00:00', '楼上吃粑粑了吧？楼下吃老八秘制小汉堡，既实惠还管饱'),
(3, '匿名用户', '2020-05-13 08:00:00', '我家住在葫芦岛，大家都吃小汉堡，腐乳韭菜豆腐脑，你说老八好不好');

-- --------------------------------------------------------

--
-- 表的结构 `goods`
--

CREATE TABLE `goods` (
  `id` int(5) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `content` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `addtime` datetime NOT NULL,
  `imgurl` varchar(70) COLLATE utf8mb4_bin NOT NULL,
  `price` int(10) NOT NULL,
  `old_price` int(10) NOT NULL,
  `count` int(5) NOT NULL,
  `click_count` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- 转存表中的数据 `goods`
--

INSERT INTO `goods` (`id`, `name`, `content`, `addtime`, `imgurl`, `price`, `old_price`, `count`, `click_count`) VALUES
(1, 'DJI 大疆灵眸osmo pocket 口袋云台相机', 'DJI 大疆灵眸osmo pocket 口袋云台相机 高清增稳vlog摄像机 大疆手持云台 官方旗舰店', '2020-05-07 00:00:00', 'http://127.0.0.1:3008/api/public/images/goods/001.jpg', 2499, 3347, 99, 1),
(2, 'iPhone 11 Pro 64GB', '全新iphone11pro，三镜头超广角设计', '2020-05-07 15:00:00', 'http://127.0.0.1:3008/api/public/images/goods/002.jpg', 7599, 8899, 99, 999),
(3, 'Apple AirPods Pro 主动降噪无线蓝牙耳机', '企业购更优惠 Apple AirPods Pro 主动降噪无线蓝牙耳机 适用iPhone/iPad/Apple Watch ', '2020-05-07 16:23:15', 'http://127.0.0.1:3008/api/public/images/goods/003.jpg', 1999, 2999, 99, 999),
(4, 'Apple Watch Series 3智能手表', 'Apple Watch Series 3智能手表（GPS款 38毫米 深空灰色铝金属表壳 黑色运动型表带 MTF02CH/A）', '2020-05-07 14:36:00', 'http://127.0.0.1:3008/api/public/images/goods/004.jpg', 1399, 1599, 99, 999);

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
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `goods`
--
ALTER TABLE `goods`
  ADD PRIMARY KEY (`id`);

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
-- 使用表AUTO_INCREMENT `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- 使用表AUTO_INCREMENT `goods`
--
ALTER TABLE `goods`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
