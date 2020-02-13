-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- 主机： localhost
-- 生成日期： 2020-02-13 14:38:58
-- 服务器版本： 8.0.19
-- PHP 版本： 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `photos`
--

-- --------------------------------------------------------

--
-- 表的结构 `p_about`
--

CREATE TABLE `p_about` (
  `id` int NOT NULL,
  `pic` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `create_time` int NOT NULL,
  `update_time` int DEFAULT NULL,
  `delete_time` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `p_admin`
--

CREATE TABLE `p_admin` (
  `id` int NOT NULL,
  `username` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `create_time` int NOT NULL,
  `update_time` int DEFAULT NULL,
  `delete_time` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `p_admin`
--

INSERT INTO `p_admin` (`id`, `username`, `password`, `create_time`, `update_time`, `delete_time`) VALUES
(1, 'admin', 'admin', 1581501272, 1581501272, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `p_photos`
--

CREATE TABLE `p_photos` (
  `id` int NOT NULL,
  `pic` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `create_time` int NOT NULL,
  `update_time` int DEFAULT NULL,
  `delete_time` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `p_photos`
--

INSERT INTO `p_photos` (`id`, `pic`, `create_time`, `update_time`, `delete_time`) VALUES
(6, '20200213/308d6c39180785e2794e77022be44c64.jpg', 1581589175, 1581591465, 1581591465),
(7, '20200213/0a73b128f9bc64dbb7cdece3dad8f540.jpg', 1581591548, 1581594288, 1581594288),
(8, '20200213/9034f4cb481a432bbb8ef47c935d9e95.jpg', 1581592337, 1581594341, 1581594341),
(9, '20200213/687d2618eee2fa1d2531b90b295907fb.jpg', 1581592385, 1581595356, 1581595356),
(10, '20200213/402ab1e066d0679c8b52ee17f5265c59.jpg', 1581592396, 1581595681, 1581595681),
(11, '20200213/4d321692308b5fffe6efce9c5303f126.jpg', 1581592417, 1581595693, 1581595693),
(12, '20200213/a839df71a6d6d5e5340e179cb81632c0.jpg', 1581592426, 1581595757, 1581595757),
(13, '20200213/a953cb4add8983b3a339d542c827349b.jpg', 1581592436, 1581595761, 1581595761),
(14, '20200213/7ec7bb8766408641983a2466c4bbb3e6.jpg', 1581592450, 1581595764, 1581595764),
(15, '20200213/e5c268df1c7505fbc7a33b3d166e2e1d.jpg', 1581595379, 1581595767, 1581595767),
(16, '20200213/c7d8289a7b19114e32fac4a5b67dd8fd.jpg', 1581595798, 1581595798, NULL),
(17, '20200213/aaebb94e486966dfd60c2f1458ad8c3a.jpg', 1581595804, 1581595804, NULL),
(18, '20200213/6e9ce4ab673260010814d88189d94843.jpg', 1581595809, 1581602442, NULL),
(19, '20200213/5a3093ae8bbfe2ba281518e3f98537f4.jpg', 1581595814, 1581595814, NULL),
(20, '20200213/f470951efa19e7de347c95c319b898a2.jpg', 1581595819, 1581595819, NULL),
(21, '20200213/7639a5a359fdfab010d3b208c7a7bfd5.jpg', 1581595824, 1581595824, NULL),
(22, '20200213/a4efe2b155d2d60df1d21425a79ec6b7.jpg', 1581595832, 1581595832, NULL),
(23, '20200213/bf62a8de5c4425e6927533aa9f44c027.jpg', 1581595841, 1581595841, NULL),
(24, '20200213/111fa5bf5c20e7972f25a9d03a8c0959.jpg', 1581595875, 1581595875, NULL),
(25, '20200213/d0284aff64241e0711565a0e7951254b.jpg', 1581600407, 1581600407, NULL),
(26, '20200213/cb8da5be42393482dabbdb0d18220f4e.jpg', 1581601834, 1581601834, NULL);

--
-- 转储表的索引
--

--
-- 表的索引 `p_about`
--
ALTER TABLE `p_about`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `p_admin`
--
ALTER TABLE `p_admin`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `p_photos`
--
ALTER TABLE `p_photos`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `p_about`
--
ALTER TABLE `p_about`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `p_admin`
--
ALTER TABLE `p_admin`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用表AUTO_INCREMENT `p_photos`
--
ALTER TABLE `p_photos`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
