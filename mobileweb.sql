-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 2020-08-19 09:39:21
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
(3, '匿名用户', '2020-05-13 08:00:00', '我家住在葫芦岛，大家都吃小汉堡，腐乳韭菜豆腐脑，你说老八好不好'),
(4, '匿名用户', '2020-06-09 21:33:27', '岳颖姐姐在线锤人'),
(5, '匿名用户', '2020-06-09 21:34:33', '你说什么就是什么'),
(6, '匿名用户', '2020-06-09 21:36:23', '小胖颖最可爱'),
(11, '匿名用户', '2020-06-09 21:39:38', '小胖颖最漂亮');

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
(4, 'Apple Watch Series 3智能手表', 'Apple Watch Series 3智能手表（GPS款 38毫米 深空灰色铝金属表壳 黑色运动型表带 MTF02CH/A）', '2020-05-07 14:36:00', 'http://127.0.0.1:3008/api/public/images/goods/004.jpg', 1399, 1599, 99, 999, '<h3>能存你爱听的歌，也能用 Apple Music,在线听上千万首歌。</h3><h3>体能训练数据随你所需，更精确到小数位。</h3><h3>来电不错过，真不错。</h3><h3>买咖啡，付餐费，刷公交，Apple Pay叮一声就好。</h3><h3>手表上的 App Store，开启一波新的可能。</h3><h3>用地图 app 导航，该转弯时会轻点手腕提醒你。</h3><h3>电话、信息、流媒体。有蜂窝网络，手机不在也可以。</h3><h3>用增强现实看看 Apple Watch Series 3 </h3><p>只需在你的 iPhone 或 iPad 上，用 Safari 浏览器打开此页面</p>'),
(5, 'Apple iPad Pro 11英寸 256GB WLAN FaceID', 'Apple iPad Pro 11英寸平板电脑 2020年新款(256G WLAN版/全面屏/A12Z/Face ID/MXDD2CH/A) 深空灰色', '2020-06-26 19:00:00', 'http://127.0.0.1:3008/api/public/images/goods/005.jpg', 6929, 7029, 99, 999, '<h3>你的下一台电脑，何必是电脑。</h3><p>它如同一片充满魔力的玻璃。它快到让很多笔记本电脑都眼红。它的 Pro 级摄像头打通了真实和虚拟的交界。它能让你用手、用笔、用键盘，还有触控板来互动。它，就是新款 iPad Pro。</p><h3>Liquid 视网膜显示技术</h3><p>全面屏设计的 Liquid 视网膜屏不仅有着引人入胜的视觉体验，更拥有 ProMotion 自适应刷新率、原彩显示和超高色彩精准度等先进技术，让 iPad Pro 上的一切都赏心悦目，互动灵敏。一句话，这样的技术整合能力，造就出我们最先进的移动设备显示屏。</p><h3>iPad 摄像头 能有多厉害？好好深入 了解一下。</h3><p>这款先进的摄像头，与宽大显示屏、超快性能和精密校准感应器的强强联合，为 iPad 赋予了非同寻常的实力。广角摄像头和全新的超广角摄像头，助你拍出画面精美的照片和视频，再加上录音棚级的麦克风和四扬声器系统，一套多镜头电影拍摄装备尽在你手。</p><p>激光雷达 (LiDAR 光探测和测距) 这项先进技术，是通过测量光触及物体并反射回来所需的时间，来确定距离。就连 NASA 也会在下次火星登陆任务中用到它。而现在，它经过精心设计，融入到了纤薄的 iPad Pro 之中。特制的激光雷达扫描仪利用直接飞行时间 (dToF)，测量室内或室外环境中从最远五米处反射回来的光。它可从光子层面进行探测，并能以纳秒速度运行，为增强现实及更广泛的领域开启无尽可能。</p><h3>说真的，真是快到让很多 PC 都眼红。</h3><p>有了 A12Z 仿生芯片，iPad Pro 的速度快到让很多笔记本电脑都羡慕。无论处理日常事务还是高图形性能要求的工作，各项操作都能快速流畅地进行。而配备 8 核图形处理器的意义，就是让那些靠性能出彩的 app 和游戏，有着更出色的表现和真实感。</p>'),
(6, 'MacBook Pro 13.3 i5 16G 512GB With Touchbar', 'Apple 2020新款 MacBook Pro 13.3【带触控栏】十代i5 16G 512G 2.0GHz 深空灰 笔记本电脑 轻薄本 MWP42CH/A', '2020-06-26 18:00:00', 'http://127.0.0.1:3008/api/public/images/goods/006.jpg', 12999, 14499, 12, 999, '<h3>随身的实力派。</h3><p>MacBook Pro 再一次提升笔记本电脑的性能和便携性。它将高性能的处理器和内存、先进的图形处理器、高速存储设备和众多强大配置，容纳于不足 3 斤的小巧机身中，助你加速实现心中创想，尽情天马行空。</p><h3>动力澎湃，正是核心所在。</h3><p>13 英寸 MacBook Pro 最高可选配第十代 4 核 Intel Core i7 处理器。即使是编写代码、层叠多条音轨或视频编码等高度专业的处理任务，你都能完成得更顺畅，更迅速。这次更可选配 32GB 内存，性能表现最高可提速 50% 之多。无论是在 Photoshop 中编辑十亿像素的大图，还是运行多个虚拟主机，你都能感受到异乎寻常的流畅。</p><h3>卓越的图形处理性能，令人眼界大开。</h3><p>可选配的第十代 Intel 处理器带来了强大的新款 Iris Plus 图形处理器，使图形处理速度与上一代相比最高可提升 80% 之多。令视频剪辑毫不费力，三维渲染游刃有余，游戏体验更是流畅自如。</p><h3>身手利落，做什么都快。</h3><p>13 英寸 MacBook Pro 采用速度惊人的固态硬盘，顺序读取速度最高可达 3.0GB/s10。标配容量是上一代的两倍，最高则可选配 4TB 的存储设备。无论你去哪里，都能随身携带海量视频。并且 Apple T2 安全芯片还会即时将一切数据自动加密。</p><h3>关键布局，全盘安排。</h3><p>MacBook Pro 设计精巧，能让你更快速、更高效地处理各项事务。新的内置妙控键盘采用优化的 1 毫米键程剪刀式结构，进一步提升了 Mac 笔记本电脑的输入体验。还有独立的 Esc 键，便于你快速切换各种模式和视图。此外，触控栏会整理好各种实用的快捷键，为你放置在醒目的居中位置；而触控 ID 则能助你快速完成身份验证。</p>');

-- --------------------------------------------------------

--
-- 表的结构 `newsinfo`
--

CREATE TABLE `newsinfo` (
  `id` int(11) NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `addtime` datetime NOT NULL,
  `content` varchar(500) COLLATE utf8mb4_bin NOT NULL,
  `click` int(11) NOT NULL,
  `imgUrl` varchar(100) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- 转存表中的数据 `newsinfo`
--

INSERT INTO `newsinfo` (`id`, `title`, `addtime`, `content`, `click`, `imgUrl`) VALUES
(1, '震惊，已近5月，带专院校竟还不开学', '2020-04-23 00:00:00', '一是严格执行教育部学费（保教费）收费规定。各地各学校不得跨学年或学期预收学费（保教费），未开学或未开课不得提前收取学费（保教费）。二是严格落实住宿费退费要求。住宿费每学年按10个月（每学期按5个月）计算。疫情防控期间，学校应根据学生实际在校住宿时间计收住宿费。在校住宿时间不足一个月的，15天（含15天）以上的按一个月计算，15天以下的按半个月计算。多余部分退还学生。（上述规定仅限于疫情防控期间）三是严肃查处违规违纪乱收费问题。各级教育、发改、财政等行政管理部门要严肃查处疫情防控期间学校违反预警规定乱收费问题。一经查实，除对相关责任人进行严肃处理外，还要追究有关负责人的领导责任，并在全省进行公开通报。教育部：疫情防控期间不得提前收取学费住宿费', 888, 'http://127.0.0.1:3008/api/public/images/news/new1.jpg'),
(2, '窃格瓦拉将出狱，你的电瓶，锁好了吗？', '2020-04-30 10:00:00', '司法部：将持续关注', 66, 'http://127.0.0.1:3008/api/public/images/news/new2.jpg'),
(3, '世界还能不能好了？大白天的手脚冰凉，眼泪不争气的...', '2020-05-01 07:00:00', '该团伙曾经收受境外势力的资金，现已被抓获', 99, 'http://127.0.0.1:3008/api/public/images/news/new3.jpg'),
(4, '定了！这所大学的毕业生将包分配高薪就业！', '2020-05-04 02:40:00', '据悉，该校毕业生已被分配至富土康流水线高薪就业！', 999, 'http://127.0.0.1:3008/api/public/images/news/new3.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `newslist`
--

CREATE TABLE `newslist` (
  `id` int(11) NOT NULL,
  `title` varchar(200) COLLATE utf8mb4_bin NOT NULL,
  `addtime` datetime NOT NULL,
  `zhaiyao` varchar(400) COLLATE utf8mb4_bin NOT NULL,
  `click` int(4) NOT NULL,
  `imgUrl` varchar(100) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- 转存表中的数据 `newslist`
--

INSERT INTO `newslist` (`id`, `title`, `addtime`, `zhaiyao`, `click`, `imgUrl`) VALUES
(1, '震惊，已近5月，带专院校竟还不开学', '2020-04-23 08:00:00', '带专人，带专混，带专都是人上人！', 888, 'http://127.0.0.1:3008/api/public/images/news/new1.jpg'),
(2, '窃格瓦拉将出狱，你的电瓶，锁好了吗？', '2020-04-30 18:00:00', '司法部：将持续关注', 66, 'http://127.0.0.1:3008/api/public/images/news/new2.jpg'),
(3, '世界还能不能好了？大白天的手脚冰凉，眼泪不争气的...', '2020-05-01 15:00:00', '该团伙曾经收受境外势力的资金，现已被抓获', 99, 'http://127.0.0.1:3008/api/public/images/news/new3.jpg'),
(4, '定了！这所大学的毕业生将包分配高薪就业！', '2020-05-04 10:40:00', '据悉，该校毕业生已被分配至富土康流水线高薪就业！', 999, 'http://127.0.0.1:3008/api/public/images/news/new3.jpg');

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
-- 表的结构 `videolist`
--

CREATE TABLE `videolist` (
  `id` int(11) NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `author` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `playnum` int(11) NOT NULL,
  `time` datetime NOT NULL,
  `url` varchar(100) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- 转存表中的数据 `videolist`
--

INSERT INTO `videolist` (`id`, `title`, `author`, `playnum`, `time`, `url`) VALUES
(1, '[北京]北漂为了什么？只是因为理想吗', '北漂指北', 4081020, '2020-08-17 00:00:00', 'http://127.0.0.1:3008/api/public/images/video/peking.jpg'),
(2, '[雄安]大家一直挂念的雄安 现在怎么样呢？', '京津冀身边事儿', 120023, '2020-08-17 00:00:00', 'http://127.0.0.1:3008/api/public/images/video/xiongan.png'),
(3, '[成都]2020年度报告 成都是年轻人最喜欢的城市之一', '营销号', 9999, '2020-08-17 00:00:00', 'http://127.0.0.1:3008/api/public/images/video/chengdu.jpg'),
(4, '[深圳]来了就是深圳人 早已沦为空谈？', '深漂小美', 2201778, '2020-08-11 11:00:00', 'http://127.0.0.1:3008/api/public/images/video/shenzhen.jpg'),
(5, '[纽约]世界最发达的城市 在疫情的笼罩之下变成了什么样', '我是陈杰森', 99999, '2020-08-01 05:00:00', 'http://127.0.0.1:3008/api/public/images/video/newyork.jpg');

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
-- Indexes for table `newsinfo`
--
ALTER TABLE `newsinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newslist`
--
ALTER TABLE `newslist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `photoinfo`
--
ALTER TABLE `photoinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `videolist`
--
ALTER TABLE `videolist`
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
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- 使用表AUTO_INCREMENT `goods`
--
ALTER TABLE `goods`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- 使用表AUTO_INCREMENT `newsinfo`
--
ALTER TABLE `newsinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- 使用表AUTO_INCREMENT `newslist`
--
ALTER TABLE `newslist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- 使用表AUTO_INCREMENT `photoinfo`
--
ALTER TABLE `photoinfo`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- 使用表AUTO_INCREMENT `videolist`
--
ALTER TABLE `videolist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- 使用表AUTO_INCREMENT `webusers`
--
ALTER TABLE `webusers`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10003;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
