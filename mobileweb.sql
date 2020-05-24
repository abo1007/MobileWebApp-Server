-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 2020-05-24 13:42:45
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
  `click_count` int(5) NOT NULL,
  `goods_desc` varchar(1000) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- 转存表中的数据 `goods`
--

INSERT INTO `goods` (`id`, `name`, `content`, `addtime`, `imgurl`, `price`, `old_price`, `count`, `click_count`, `goods_desc`) VALUES
(1, 'DJI 大疆灵眸osmo pocket 口袋云台相机', 'DJI 大疆灵眸osmo pocket 口袋云台相机 高清增稳vlog摄像机 大疆手持云台 官方旗舰店', '2020-05-07 00:00:00', 'http://127.0.0.1:3008/api/public/images/goods/001.jpg', 2499, 3347, 99, 1, '<h3>转动随心，灵感不停</h3><p>这是大疆迄今为止最小的三轴机械增稳云台相机。轻巧，便携，智能且配备独立屏幕，轻松拍摄，记录生活从此变得简单又好玩。</p><h3>三轴机械增稳云台</h3><p>传统影像设备在手持拍摄时画面晃动影响观感，电子防抖会裁切画幅并降低画质。机械增稳云台实时控制无刷电机，根据相机姿态进行高精度调整和补偿，实现大幅度无损防抖，随手拍摄就能获得电影般流畅稳定画面</p><h3>小身材，大有可为</h3><p>口袋灵眸拥有 1200 万像素 1/2.3 英寸传感器，拍摄 4K/60fps 超高清视频，码流高达 100 Mbps，1080p/120fps四倍慢动作，为你捕捉每一个微小细节。单像素尺寸达 1.55μm，80° 广角镜头，f/2.0 大光圈，强大性能超乎想象。</p><h3>影像新次元</h3><p>口袋灵眸是对传统相机形态的一次颠覆，云台相机一体化，结构简洁紧凑，线条流畅优雅。对技术与工艺不断探索，开启全新影像维度，拥抱非凡拍摄体验。</p><h3>智能拍摄新体验</h3><p>配备三轴机械增稳云台的口袋灵眸，可轻松完成传统影像设备难以做到的智能跟随、轨迹延时、自动全景等多种效果，点燃你的无限创意。</p><h3>轻松打造你的故事</h3><p>全新的 Story 模式，可自动完成云台控制、拍摄动作，搭配精心挑选的音乐和转场特效，零基础也能快速创作精彩短视频！更有视频实时动态美颜，让你拥有细致平滑的柔亮肌肤。</p><h3>高级模式，专业玩法</h3><p>高级模式下可手动调节相机参数，使用长曝光来记录夜景旖旎。强大的影像功能还能拍摄 RAW 格式照片和 D-Cinelike 视频，保留丰富细节，预留更多后期处理空间。</p><h3>快拍快剪，精彩即现</h3><p>自由风格，由你定义。丰富的模板、滤镜、音乐和贴纸，让剪辑变得简单，让视频充满趣味。或开启 My Story 视频模版，选择喜爱的模版和素材，一键成片，高效完成视频剪辑。</p><h3>丰富配件，丰富场景</h3><p>搭配百变配件，实现扩展功能。与你的口袋灵眸一起记录美好旅途。探索更多玩法，让你尽情创作。</p>'),
(2, 'iPhone 11 Pro 64GB', '全新iphone11pro，三镜头超广角设计', '2020-05-07 15:00:00', 'http://127.0.0.1:3008/api/public/images/goods/002.jpg', 7599, 8899, 99, 999, '<h3>一切都刚刚好。</h3><p>全新双摄系统取景范围更大，可将你的所见所爱尽收画面之中。iPhone 迄今最快的芯片和从早用到晚的电池续航，让你能做的事更多，却无需频频充电。而有了 iPhone 最高的视频画质，你所记录的那些美好时分，也会更加鲜活。</p><h3>说真的，想拍失手还真不容易。</h3><p>崭崭新的双摄系统。 让你不仅能拍广角的，更能拍超广角的照片。界面也经过重新设计，借助全新超广角摄像头的特性，你现在不仅能看到取景框外的画面，还能同时拍下来。录制和剪辑视频，也变得像拍摄和编辑照片一样简单。这部早已深受人们喜爱的相机，现在，有了全然一新的视野。</p><h3>玩出视频的大手笔，一丝一毫都出彩。</h3><p>拍摄和剪辑 iPhone 最高画质的视频。 iPhone 11 的前后摄像头均能以 60 fps 的帧率拍摄锐利、精美的 4K 视频。超广角摄像头具有四倍的取景范围，非常适合拍摄小狗追咬飞盘这样的动态画面。如果你正在拍摄演出，比如自家宝贝的钢琴独奏，当你放大画面时，声音也会随之拉近。而且你现在还可以像编辑照片那样轻松剪辑视频。</p><h3>“来，大家再散开一点。”</h3><p>全新超广角摄像头。 四倍的取景范围，让你一出手就是大作，这就是全新超广角摄像头的厉害之处。你可以捕捉一望无际的壮丽风景，在音乐节把整个舞台和涌动的人潮一起拍下来，也可以在和全家人外出度假时，拍张一家老小和所在美景同框的全家福。</p><h3>不够亮?不是问题。</h3><p>夜间模式登场。 在很暗的光线下拍照，也能光彩照人。全新推出的夜间模式会在弱光环境下自动打开，让夜拍照片更亮眼。不需要开闪光灯，拍出的颜色照样自然，画面照样亮丽。</p><h3>人像，好上相。</h3><p>人像照有了新面貌。 结合新的人像表现形式和更多光效控制，iPhone 11 上的双摄像头可密切配合以拍出令人惊艳的照片。而且，你现在可以用人像模式拍各种主题，无论是亲朋好友还是心爱宠物，都没问题。</p><h3>iPhone 迄今最坚固的玻璃面板。</h3><p>前后玻璃面板都运用双离子交换工艺进行了强化。</p><h3>抗水深度翻倍。</h3><p>iPhone 11 具有出色的抗水性能，最多可在 2 米水深停留 30 分钟，抗水深度达到了 iPhone XR 的两倍。</p>'),
(3, 'Apple AirPods Pro 主动降噪无线蓝牙耳机', '企业购更优惠 Apple AirPods Pro 主动降噪无线蓝牙耳机 适用iPhone/iPad/Apple Watch ', '2020-05-07 16:23:15', 'http://127.0.0.1:3008/api/public/images/goods/003.jpg', 1999, 2999, 99, 999, '<h3>妙出新境界。</h3><p>AirPods 现支持更长的通话时间，可通过语音激活Siri，并可搭配无线充电盒。它是如此与众不同，开启了无线耳机的新境界：只要从盒中一取出，就可与你的各种设备配合使用；在入耳的瞬间，就能完成连接，随时让你在丰富动听的音质中沉浸不已。听，妙不可言，无需多言。</p><h3>Siri，你的左右手。</h3><p>需要个帮手？只需说声“嘿 Siri”，就能获得帮助，连 iPhone 都不用掏出来。借助信息播报功能，Siri 还能为你自动播报新收到的信息。你可以决定收听哪些联系人的信息，如果你正在打电话或共享歌曲，Siri 还会知趣地懂得不来打搅你。</p><h3>性能表现，听起来好极了。</h3> <p>AirPods 配备Apple H1耳机芯片，可与你的设备建立更快速、更稳定的无线连接，在关联设备间的切换最快达以往 2 倍，接打电话时的连接最快达以往 1.5 倍。此外，H1芯片还支持用语音激活Siri，并可将游戏时的延迟最多降低30%。因此，无论你是玩游戏、欣赏音乐还是听播客，都能尽享出色的音质。</p><h3>一放下，就充上。</h3><p>有了无线充电盒，只需将 AirPods 充电盒放在兼容 Qi 标准的充电器上，即可轻松充电，易如反掌。充电盒正面的LED指示灯能显示AirPods的充电状态。如果无线充电器没在身边，你也可以通过闪电端口充电。</p><h3>强大电力储备，长达 24 小时。</h3><p>AirPods 具备卓越的电池续航表现，一次充电不仅能让你尽情聆听5小时，现在更可提供最长达3小时的通话时间。另外，充电盒存储的电量还能为耳机充电多次，使AirPods总共的聆听时间可超过24小时，时刻与你相伴。需要快速充电？只需将AirPods放回充电盒中充电 15 分钟，便可获得最长达3小时的聆听时间，或最长达2小时的通话时间。要查看电池电量，只要将 AirPods 靠近你的iPhone，或者问问 Siri “AirPods 还剩多少电”就好。</p>'),
(4, 'Apple Watch Series 3智能手表', 'Apple Watch Series 3智能手表（GPS款 38毫米 深空灰色铝金属表壳 黑色运动型表带 MTF02CH/A）', '2020-05-07 14:36:00', 'http://127.0.0.1:3008/api/public/images/goods/004.jpg', 1399, 1599, 99, 999, '<h3>能存你爱听的歌，也能用 Apple Music,在线听上千万首歌。</h3><h3>体能训练数据随你所需，更精确到小数位。</h3><h3>来电不错过，真不错。</h3><h3>买咖啡，付餐费，刷公交，Apple Pay叮一声就好。</h3><h3>手表上的 App Store，开启一波新的可能。</h3><h3>用地图 app 导航，该转弯时会轻点手腕提醒你。</h3><h3>电话、信息、流媒体。有蜂窝网络，手机不在也可以。</h3><h3>用增强现实看看 Apple Watch Series 3 </h3><p>只需在你的 iPhone 或 iPad 上，用 Safari 浏览器打开此页面</p>');

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
