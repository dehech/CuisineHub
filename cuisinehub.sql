-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 12, 2024 at 11:50 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cuisinehub`
--

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `id_client` int(50) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `email` varchar(20) NOT NULL,
  `mdp` varchar(20) NOT NULL,
  `tel` varchar(20) NOT NULL,
  `adresse` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`id_client`, `nom`, `prenom`, `email`, `mdp`, `tel`, `adresse`) VALUES
(1, 'firas', 'df', 'fdehech.7@gmail.com', 'azerty', '92690450', 'bte'),
(2, 'ZAP', 'ZAP', 'foo-bar@example.com', 'ZAP', '1', 'ZAP'),
(3, 'ZAP', 'ZAP', 'c:/Windows/system.in', 'ZAP', '1', 'ZAP'),
(4, 'ZAP', 'ZAP', '../../../../../../..', 'ZAP', '1', 'ZAP'),
(5, 'ZAP', 'ZAP', 'c:Windowssystem.ini', 'ZAP', '1', 'ZAP'),
(6, 'ZAP', 'ZAP', '....................', 'ZAP', '1', 'ZAP'),
(7, 'ZAP', 'ZAP', '/etc/passwd', 'ZAP', '1', 'ZAP'),
(8, 'ZAP', 'ZAP', '../../../../../../..', 'ZAP', '1', 'ZAP'),
(9, 'ZAP', 'ZAP', 'c:/', 'ZAP', '1', 'ZAP'),
(10, 'ZAP', 'ZAP', '/', 'ZAP', '1', 'ZAP'),
(11, 'ZAP', 'ZAP', '../../../../../../..', 'ZAP', '1', 'ZAP'),
(12, 'ZAP', 'ZAP', 'WEB-INF/web.xml', 'ZAP', '1', 'ZAP'),
(13, 'ZAP', 'ZAP', 'WEB-INFweb.xml', 'ZAP', '1', 'ZAP'),
(14, 'ZAP', 'ZAP', '/WEB-INF/web.xml', 'ZAP', '1', 'ZAP'),
(15, 'ZAP', 'ZAP', 'thishouldnotexistand', 'ZAP', '1', 'ZAP'),
(16, 'ZAP', 'ZAP', 'remplir.php', 'ZAP', '1', 'ZAP'),
(17, 'ZAP', 'ZAP', '/remplir.php', 'ZAP', '1', 'ZAP'),
(18, 'ZAP', 'ZAP', '\remplir.php', 'ZAP', '1', 'ZAP'),
(19, 'ZAP', 'ZAP', 'http://www.google.co', 'ZAP', '1', 'ZAP'),
(20, 'ZAP', 'ZAP', 'http://www.google.co', 'ZAP', '1', 'ZAP'),
(21, 'ZAP', 'ZAP', 'http://www.google.co', 'ZAP', '1', 'ZAP'),
(22, 'ZAP', 'ZAP', 'http://www.google.co', 'ZAP', '1', 'ZAP'),
(23, 'ZAP', 'ZAP', 'http://www.google.co', 'ZAP', '1', 'ZAP'),
(24, 'ZAP', 'ZAP', 'www.google.com/', 'ZAP', '1', 'ZAP'),
(25, 'ZAP', 'ZAP', 'www.google.com:80/', 'ZAP', '1', 'ZAP'),
(26, 'ZAP', 'ZAP', 'www.google.com', 'ZAP', '1', 'ZAP'),
(27, 'ZAP', 'ZAP', 'www.google.com/searc', 'ZAP', '1', 'ZAP'),
(28, 'ZAP', 'ZAP', 'www.google.com:80/se', 'ZAP', '1', 'ZAP'),
(29, 'ZAP', 'ZAP', '5347631309375517767.', 'ZAP', '1', 'ZAP'),
(30, 'ZAP', 'ZAP', 'http://5347631309375', 'ZAP', '1', 'ZAP'),
(31, 'ZAP', 'ZAP', 'https://534763130937', 'ZAP', '1', 'ZAP'),
(32, 'ZAP', 'ZAP', 'https://534763130937', 'ZAP', '1', 'ZAP'),
(33, 'ZAP', 'ZAP', 'http://5347631309375', 'ZAP', '1', 'ZAP'),
(34, 'ZAP', 'ZAP', 'https://534763130937', 'ZAP', '1', 'ZAP'),
(35, 'ZAP', 'ZAP', '//534763130937551776', 'ZAP', '1', 'ZAP'),
(36, 'ZAP', 'ZAP', '<!--#EXEC cmd=\"ls /\"', 'ZAP', '1', 'ZAP'),
(37, 'ZAP', 'ZAP', '\"><!--#EXEC cmd=\"ls ', 'ZAP', '1', 'ZAP'),
(38, 'ZAP', 'ZAP', '<!--#EXEC cmd=\"dir \"', 'ZAP', '1', 'ZAP'),
(39, 'ZAP', 'ZAP', '\"><!--#EXEC cmd=\"dir', 'ZAP', '1', 'ZAP'),
(40, 'ZAP', 'ZAP', '0W45pz4p', 'ZAP', '1', 'ZAP'),
(41, 'ZAP', 'ZAP', 'foo-bar@example.com0', 'ZAP', '1', 'ZAP'),
(42, 'ZAP', 'ZAP', 'zApPX10sS', 'ZAP', '1', 'ZAP'),
(43, 'ZAP', 'ZAP', '\"', 'ZAP', '1', 'ZAP'),
(44, 'ZAP', 'ZAP', 'foo-bar@example.com\"', 'ZAP', '1', 'ZAP'),
(45, 'ZAP', 'ZAP', ';', 'ZAP', '1', 'ZAP'),
(46, 'ZAP', 'ZAP', 'foo-bar@example.com;', 'ZAP', '1', 'ZAP'),
(47, 'ZAP', 'ZAP', 'foo-bar@example.com ', 'ZAP', '1', 'ZAP'),
(48, 'ZAP', 'ZAP', 'foo-bar@example.com ', 'ZAP', '1', 'ZAP'),
(49, 'ZAP', 'ZAP', 'foo-bar@example.com ', 'ZAP', '1', 'ZAP'),
(50, 'ZAP', 'ZAP', 'foo-bar@example.com ', 'ZAP', '1', 'ZAP'),
(51, 'ZAP', 'ZAP', 'foo-bar@example.com ', 'ZAP', '1', 'ZAP'),
(52, 'ZAP', 'ZAP', 'foo-bar@example.com ', 'ZAP', '1', 'ZAP'),
(53, 'ZAP', 'ZAP', '\"java.lang.Thread.sl', 'ZAP', '1', 'ZAP'),
(54, 'ZAP', 'ZAP', 'case when cast(pg_sl', 'ZAP', '1', 'ZAP'),
(55, 'ZAP', 'ZAP', 'case when cast(pg_sl', 'ZAP', '1', 'ZAP'),
(56, 'ZAP', 'ZAP', '\"case when cast(pg_s', 'ZAP', '1', 'ZAP'),
(57, 'ZAP', 'ZAP', 'foo-bar@example.com ', 'ZAP', '1', 'ZAP'),
(58, 'ZAP', 'ZAP', 'case randomblob(1000', 'ZAP', '1', 'ZAP'),
(59, 'ZAP', 'ZAP', 'k4ic3sj2kmy4yj1nfps0', 'ZAP', '1', 'ZAP'),
(60, 'ZAP', 'ZAP', 'case randomblob(1000', 'ZAP', '1', 'ZAP'),
(61, 'ZAP', 'ZAP', 'case randomblob(1000', 'ZAP', '1', 'ZAP'),
(62, 'ZAP', 'ZAP', 'iyx4slhr71r4klzccvtk', 'ZAP', '1', 'ZAP'),
(63, 'ZAP', 'ZAP', 'case randomblob(1000', 'ZAP', '1', 'ZAP'),
(64, 'ZAP', 'ZAP', 'case randomblob(1000', 'ZAP', '1', 'ZAP'),
(65, 'ZAP', 'ZAP', '\";print(chr(122).chr', 'ZAP', '1', 'ZAP'),
(66, 'ZAP', 'ZAP', '${@print(chr(122).ch', 'ZAP', '1', 'ZAP'),
(67, 'ZAP', 'ZAP', ';print(chr(122).chr(', 'ZAP', '1', 'ZAP'),
(68, 'ZAP', 'ZAP', '\"+response.write(747', 'ZAP', '1', 'ZAP'),
(69, 'ZAP', 'ZAP', '+response.write({0}*', 'ZAP', '1', 'ZAP'),
(70, 'ZAP', 'ZAP', 'response.write(747,0', 'ZAP', '1', 'ZAP'),
(71, 'ZAP', 'ZAP', 'cat /etc/passwd', 'ZAP', '1', 'ZAP'),
(72, 'ZAP', 'ZAP', 'foo-bar@example.com&', 'ZAP', '1', 'ZAP'),
(73, 'ZAP', 'ZAP', 'foo-bar@example.com;', 'ZAP', '1', 'ZAP'),
(74, 'ZAP', 'ZAP', 'foo-bar@example.com\"', 'ZAP', '1', 'ZAP'),
(75, 'ZAP', 'ZAP', 'foo-bar@example.com\"', 'ZAP', '1', 'ZAP'),
(76, 'ZAP', 'ZAP', 'foo-bar@example.com&', 'ZAP', '1', 'ZAP'),
(77, 'ZAP', 'ZAP', 'foo-bar@example.com;', 'ZAP', '1', 'ZAP'),
(78, 'ZAP', 'ZAP', 'foo-bar@example.com\"', 'ZAP', '1', 'ZAP'),
(79, 'ZAP', 'ZAP', 'foo-bar@example.com\"', 'ZAP', '1', 'ZAP'),
(80, 'ZAP', 'ZAP', 'type %SYSTEMROOT%win', 'ZAP', '1', 'ZAP'),
(81, 'ZAP', 'ZAP', 'foo-bar@example.com&', 'ZAP', '1', 'ZAP'),
(82, 'ZAP', 'ZAP', 'foo-bar@example.com|', 'ZAP', '1', 'ZAP'),
(83, 'ZAP', 'ZAP', 'foo-bar@example.com\"', 'ZAP', '1', 'ZAP'),
(84, 'ZAP', 'ZAP', 'foo-bar@example.com\"', 'ZAP', '1', 'ZAP'),
(85, 'ZAP', 'ZAP', 'foo-bar@example.com&', 'ZAP', '1', 'ZAP'),
(86, 'ZAP', 'ZAP', 'foo-bar@example.com|', 'ZAP', '1', 'ZAP'),
(87, 'ZAP', 'ZAP', 'foo-bar@example.com\"', 'ZAP', '1', 'ZAP'),
(88, 'ZAP', 'ZAP', 'foo-bar@example.com\"', 'ZAP', '1', 'ZAP'),
(89, 'ZAP', 'ZAP', 'get-help', 'ZAP', '1', 'ZAP'),
(90, 'ZAP', 'ZAP', 'foo-bar@example.com;', 'ZAP', '1', 'ZAP'),
(91, 'ZAP', 'ZAP', 'foo-bar@example.com\"', 'ZAP', '1', 'ZAP'),
(92, 'ZAP', 'ZAP', 'foo-bar@example.com;', 'ZAP', '1', 'ZAP'),
(93, 'ZAP', 'ZAP', 'foo-bar@example.com;', 'ZAP', '1', 'ZAP'),
(94, 'ZAP', 'ZAP', 'foo-bar@example.com\"', 'ZAP', '1', 'ZAP'),
(95, 'ZAP', 'ZAP', 'foo-bar@example.com;', 'ZAP', '1', 'ZAP'),
(96, 'ZAP', 'ZAP', '<!--', 'ZAP', '1', 'ZAP'),
(97, 'ZAP', 'ZAP', ']]>', 'ZAP', '1', 'ZAP'),
(98, 'ZAP', 'ZAP', 'zj 4090*5627 zj', 'ZAP', '1', 'ZAP'),
(99, 'ZAP', 'ZAP', 'zj{9374*2157}zj', 'ZAP', '1', 'ZAP'),
(100, 'ZAP', 'ZAP', 'zj${1587*2111}zj', 'ZAP', '1', 'ZAP'),
(101, 'ZAP', 'ZAP', 'zj#{2924*8806}zj', 'ZAP', '1', 'ZAP'),
(102, 'ZAP', 'ZAP', 'zj{#7739*6084}zj', 'ZAP', '1', 'ZAP'),
(103, 'ZAP', 'ZAP', 'zj{@1117*6843}zj', 'ZAP', '1', 'ZAP'),
(104, 'ZAP', 'ZAP', 'zj{{5204*4937}}zj', 'ZAP', '1', 'ZAP'),
(105, 'ZAP', 'ZAP', 'zj{{=7124*2654}}zj', 'ZAP', '1', 'ZAP'),
(106, 'ZAP', 'ZAP', 'zj<%=1584*2468%>zj', 'ZAP', '1', 'ZAP'),
(107, 'ZAP', 'ZAP', 'zj#set($x=9700*4982)', 'ZAP', '1', 'ZAP'),
(108, 'ZAP', 'ZAP', 'zj<p th:text=\"${6051', 'ZAP', '1', 'ZAP'),
(109, 'ZAP', 'ZAP', 'zj{@math key=\"6296\" ', 'ZAP', '1', 'ZAP'),
(110, 'ZAP', 'ZAP', 'zj{{97330|add:52350}', 'ZAP', '1', 'ZAP'),
(111, 'ZAP', 'ZAP', 'zj{{print \"4187\" \"53', 'ZAP', '1', 'ZAP'),
(112, 'ZAP', 'ZAP', '<#assign ex=\"freemar', 'ZAP', '1', 'ZAP'),
(113, 'ZAP', 'ZAP', '#set($engine=\"\")\n#se', 'ZAP', '1', 'ZAP'),
(114, 'ZAP', 'ZAP', '{{\"\".__class__.__mro', 'ZAP', '1', 'ZAP'),
(115, 'ZAP', 'ZAP', '${__import__(\"subpro', 'ZAP', '1', 'ZAP'),
(116, 'ZAP', 'ZAP', '{{__import__(\"subpro', 'ZAP', '1', 'ZAP'),
(117, 'ZAP', 'ZAP', '<%=%x(sleep 2)%>', 'ZAP', '1', 'ZAP'),
(118, 'ZAP', 'ZAP', '#{%x(sleep 2)}', 'ZAP', '1', 'ZAP'),
(119, 'ZAP', 'ZAP', '{system(\"sleep 2\")}', 'ZAP', '1', 'ZAP'),
(120, 'ZAP', 'ZAP', 'aiHOUyZRdnCYRxPCmugC', 'ZAP', '1', 'ZAP'),
(121, 'ZAP', 'ZAP', 'ZAP', 'ZAP', '1', 'ZAP'),
(122, 'ZAP', 'ZAP', 'ZAP%n%s%n%s%n%s%n%s%', 'ZAP', '1', 'ZAP'),
(123, 'ZAP', 'ZAP', 'ZAP %1!s%2!s%3!s%4!s', 'ZAP', '1', 'ZAP'),
(124, 'ZAP', 'ZAP', 'Set-cookie: Tamper=0', 'ZAP', '1', 'ZAP'),
(125, 'ZAP', 'ZAP', 'any\r\nSet-cookie: Tam', 'ZAP', '1', 'ZAP'),
(126, 'ZAP', 'ZAP', 'any?\r\nSet-cookie: Ta', 'ZAP', '1', 'ZAP'),
(127, 'ZAP', 'ZAP', 'any\nSet-cookie: Tamp', 'ZAP', '1', 'ZAP'),
(128, 'ZAP', 'ZAP', 'any?\nSet-cookie: Tam', 'ZAP', '1', 'ZAP'),
(129, 'ZAP', 'ZAP', 'any\r\nSet-cookie: Tam', 'ZAP', '1', 'ZAP'),
(130, 'ZAP', 'ZAP', 'any?\r\nSet-cookie: Ta', 'ZAP', '1', 'ZAP'),
(131, 'ZAP', 'ZAP', '', 'ZAP', '1', 'ZAP'),
(132, 'ZAP', 'ZAP', '@', 'ZAP', '1', 'ZAP'),
(133, 'ZAP', 'ZAP', '+', 'ZAP', '1', 'ZAP'),
(134, 'ZAP', 'ZAP', '\0', 'ZAP', '1', 'ZAP'),
(135, 'ZAP', 'ZAP', '|', 'ZAP', '1', 'ZAP'),
(136, 'ZAP', 'ZAP', 'c:/Windows/system.in', 'ZAP', '1', 'ZAP'),
(137, 'ZAP', 'ZAP', '../../../../../../..', 'ZAP', '1', 'ZAP'),
(138, 'ZAP', 'ZAP', '....................', 'ZAP', '1', 'ZAP'),
(139, 'ZAP', 'ZAP', '../../../../../../..', 'ZAP', '1', 'ZAP'),
(140, 'ZAP', 'ZAP', '../../../../../../..', 'ZAP', '1', 'ZAP'),
(141, 'ZAP', 'ZAP', 'thishouldnotexistand', 'ZAP', '1', 'ZAP'),
(142, 'ZAP', 'ZAP', 'http://www.google.co', 'ZAP', '1', 'ZAP'),
(143, 'ZAP', 'ZAP', 'http://www.google.co', 'ZAP', '1', 'ZAP'),
(144, 'ZAP', 'ZAP', 'http://www.google.co', 'ZAP', '1', 'ZAP'),
(145, 'ZAP', 'ZAP', 'http://www.google.co', 'ZAP', '1', 'ZAP'),
(146, 'ZAP', 'ZAP', 'http://www.google.co', 'ZAP', '1', 'ZAP'),
(147, 'ZAP', 'ZAP', 'www.google.com/searc', 'ZAP', '1', 'ZAP'),
(148, 'ZAP', 'ZAP', 'www.google.com:80/se', 'ZAP', '1', 'ZAP'),
(149, 'ZAP', 'ZAP', '5347631309375517767.', 'ZAP', '1', 'ZAP'),
(150, 'ZAP', 'ZAP', 'http://5347631309375', 'ZAP', '1', 'ZAP'),
(151, 'ZAP', 'ZAP', 'https://534763130937', 'ZAP', '1', 'ZAP'),
(152, 'ZAP', 'ZAP', 'https://534763130937', 'ZAP', '1', 'ZAP'),
(153, 'ZAP', 'ZAP', 'http://5347631309375', 'ZAP', '1', 'ZAP'),
(154, 'ZAP', 'ZAP', 'https://534763130937', 'ZAP', '1', 'ZAP'),
(155, 'ZAP', 'ZAP', '//534763130937551776', 'ZAP', '1', 'ZAP'),
(156, 'ZAP', 'ZAP', '<!--#EXEC cmd=\"ls /\"', 'ZAP', '1', 'ZAP'),
(157, 'ZAP', 'ZAP', '\"><!--#EXEC cmd=\"ls ', 'ZAP', '1', 'ZAP'),
(158, 'ZAP', 'ZAP', '<!--#EXEC cmd=\"dir \"', 'ZAP', '1', 'ZAP'),
(159, 'ZAP', 'ZAP', '\"><!--#EXEC cmd=\"dir', 'ZAP', '1', 'ZAP'),
(160, 'ZAP', 'ZAP', 'foo-bar@example.com0', 'ZAP', '1', 'ZAP'),
(161, 'ZAP', 'ZAP', 'zApPX28sS', 'ZAP', '1', 'ZAP'),
(162, 'ZAP', 'ZAP', 'foo-bar@example.com ', 'ZAP', '1', 'ZAP'),
(163, 'ZAP', 'ZAP', 'foo-bar@example.com ', 'ZAP', '1', 'ZAP'),
(164, 'ZAP', 'ZAP', 'foo-bar@example.com ', 'ZAP', '1', 'ZAP'),
(165, 'ZAP', 'ZAP', 'foo-bar@example.com ', 'ZAP', '1', 'ZAP'),
(166, 'ZAP', 'ZAP', 'foo-bar@example.com ', 'ZAP', '1', 'ZAP'),
(167, 'ZAP', 'ZAP', 'foo-bar@example.com ', 'ZAP', '1', 'ZAP'),
(168, 'ZAP', 'ZAP', 'c:/Windows/system.in', 'ZAP', '1', 'ZAP'),
(169, 'ZAP', 'ZAP', '../../../../../../..', 'ZAP', '1', 'ZAP'),
(170, 'ZAP', 'ZAP', '....................', 'ZAP', '1', 'ZAP'),
(171, 'ZAP', 'ZAP', '../../../../../../..', 'ZAP', '1', 'ZAP'),
(172, 'ZAP', 'ZAP', '../../../../../../..', 'ZAP', '1', 'ZAP'),
(173, 'ZAP', 'ZAP', 'thishouldnotexistand', 'ZAP', '1', 'ZAP'),
(174, 'ZAP', 'ZAP', 'http://www.google.co', 'ZAP', '1', 'ZAP'),
(175, 'ZAP', 'ZAP', 'http://www.google.co', 'ZAP', '1', 'ZAP'),
(176, 'ZAP', 'ZAP', 'http://www.google.co', 'ZAP', '1', 'ZAP'),
(177, 'ZAP', 'ZAP', 'http://www.google.co', 'ZAP', '1', 'ZAP'),
(178, 'ZAP', 'ZAP', 'http://www.google.co', 'ZAP', '1', 'ZAP'),
(179, 'ZAP', 'ZAP', 'www.google.com/searc', 'ZAP', '1', 'ZAP'),
(180, 'ZAP', 'ZAP', 'www.google.com:80/se', 'ZAP', '1', 'ZAP'),
(181, 'ZAP', 'ZAP', '5347631309375517767.', 'ZAP', '1', 'ZAP'),
(182, 'ZAP', 'ZAP', 'http://5347631309375', 'ZAP', '1', 'ZAP'),
(183, 'ZAP', 'ZAP', 'https://534763130937', 'ZAP', '1', 'ZAP'),
(184, 'ZAP', 'ZAP', 'https://534763130937', 'ZAP', '1', 'ZAP'),
(185, 'ZAP', 'ZAP', 'http://5347631309375', 'ZAP', '1', 'ZAP'),
(186, 'ZAP', 'ZAP', 'https://534763130937', 'ZAP', '1', 'ZAP'),
(187, 'ZAP', 'ZAP', '//534763130937551776', 'ZAP', '1', 'ZAP'),
(188, 'ZAP', 'ZAP', '<!--#EXEC cmd=\"ls /\"', 'ZAP', '1', 'ZAP'),
(189, 'ZAP', 'ZAP', '\"><!--#EXEC cmd=\"ls ', 'ZAP', '1', 'ZAP'),
(190, 'ZAP', 'ZAP', '<!--#EXEC cmd=\"dir \"', 'ZAP', '1', 'ZAP'),
(191, 'ZAP', 'ZAP', '\"><!--#EXEC cmd=\"dir', 'ZAP', '1', 'ZAP'),
(192, 'ZAP', 'ZAP', 'foo-bar@example.com0', 'ZAP', '1', 'ZAP'),
(193, 'ZAP', 'ZAP', 'zApPX47sS', 'ZAP', '1', 'ZAP'),
(194, 'ZAP', 'ZAP', 'foo-bar@example.com ', 'ZAP', '1', 'ZAP'),
(195, 'ZAP', 'ZAP', 'foo-bar@example.com ', 'ZAP', '1', 'ZAP'),
(196, 'ZAP', 'ZAP', 'foo-bar@example.com ', 'ZAP', '1', 'ZAP'),
(197, 'ZAP', 'ZAP', 'foo-bar@example.com ', 'ZAP', '1', 'ZAP'),
(198, 'ZAP', 'ZAP', 'foo-bar@example.com ', 'ZAP', '1', 'ZAP'),
(199, 'ZAP', 'ZAP', 'foo-bar@example.com ', 'ZAP', '1', 'ZAP'),
(200, 'ZAP', 'ZAP', '\"java.lang.Thread.sl', 'ZAP', '1', 'ZAP'),
(201, 'ZAP', 'ZAP', 'case when cast(pg_sl', 'ZAP', '1', 'ZAP'),
(202, 'ZAP', 'ZAP', 'case when cast(pg_sl', 'ZAP', '1', 'ZAP'),
(203, 'ZAP', 'ZAP', '\"case when cast(pg_s', 'ZAP', '1', 'ZAP'),
(204, 'ZAP', 'ZAP', 'foo-bar@example.com ', 'ZAP', '1', 'ZAP'),
(205, 'ZAP', 'ZAP', 'case randomblob(1000', 'ZAP', '1', 'ZAP'),
(206, 'ZAP', 'ZAP', 'case randomblob(1000', 'ZAP', '1', 'ZAP'),
(207, 'ZAP', 'ZAP', 'case randomblob(1000', 'ZAP', '1', 'ZAP'),
(208, 'ZAP', 'ZAP', '20cwnfwrvts0t3m43n5l', 'ZAP', '1', 'ZAP'),
(209, 'ZAP', 'ZAP', 'case randomblob(1000', 'ZAP', '1', 'ZAP'),
(210, 'ZAP', 'ZAP', 'njyjb7ul7g81w1bwonnp', 'ZAP', '1', 'ZAP'),
(211, 'ZAP', 'ZAP', 'case randomblob(1000', 'ZAP', '1', 'ZAP'),
(212, 'ZAP', 'ZAP', '\";print(chr(122).chr', 'ZAP', '1', 'ZAP'),
(213, 'ZAP', 'ZAP', '${@print(chr(122).ch', 'ZAP', '1', 'ZAP'),
(214, 'ZAP', 'ZAP', ';print(chr(122).chr(', 'ZAP', '1', 'ZAP'),
(215, 'ZAP', 'ZAP', '\"+response.write(664', 'ZAP', '1', 'ZAP'),
(216, 'ZAP', 'ZAP', '+response.write({0}*', 'ZAP', '1', 'ZAP'),
(217, 'ZAP', 'ZAP', 'response.write(664,2', 'ZAP', '1', 'ZAP'),
(218, 'ZAP', 'ZAP', 'foo-bar@example.com&', 'ZAP', '1', 'ZAP'),
(219, 'ZAP', 'ZAP', 'foo-bar@example.com;', 'ZAP', '1', 'ZAP'),
(220, 'ZAP', 'ZAP', 'foo-bar@example.com\"', 'ZAP', '1', 'ZAP'),
(221, 'ZAP', 'ZAP', 'foo-bar@example.com\"', 'ZAP', '1', 'ZAP'),
(222, 'ZAP', 'ZAP', 'foo-bar@example.com&', 'ZAP', '1', 'ZAP'),
(223, 'ZAP', 'ZAP', 'foo-bar@example.com;', 'ZAP', '1', 'ZAP'),
(224, 'ZAP', 'ZAP', 'foo-bar@example.com\"', 'ZAP', '1', 'ZAP'),
(225, 'ZAP', 'ZAP', 'foo-bar@example.com\"', 'ZAP', '1', 'ZAP'),
(226, 'ZAP', 'ZAP', 'type %SYSTEMROOT%win', 'ZAP', '1', 'ZAP'),
(227, 'ZAP', 'ZAP', 'foo-bar@example.com&', 'ZAP', '1', 'ZAP'),
(228, 'ZAP', 'ZAP', 'foo-bar@example.com|', 'ZAP', '1', 'ZAP'),
(229, 'ZAP', 'ZAP', 'foo-bar@example.com\"', 'ZAP', '1', 'ZAP'),
(230, 'ZAP', 'ZAP', 'foo-bar@example.com\"', 'ZAP', '1', 'ZAP'),
(231, 'ZAP', 'ZAP', 'foo-bar@example.com&', 'ZAP', '1', 'ZAP'),
(232, 'ZAP', 'ZAP', 'foo-bar@example.com|', 'ZAP', '1', 'ZAP'),
(233, 'ZAP', 'ZAP', 'foo-bar@example.com\"', 'ZAP', '1', 'ZAP'),
(234, 'ZAP', 'ZAP', 'foo-bar@example.com\"', 'ZAP', '1', 'ZAP'),
(235, 'ZAP', 'ZAP', 'foo-bar@example.com;', 'ZAP', '1', 'ZAP'),
(236, 'ZAP', 'ZAP', 'foo-bar@example.com\"', 'ZAP', '1', 'ZAP'),
(237, 'ZAP', 'ZAP', 'foo-bar@example.com;', 'ZAP', '1', 'ZAP'),
(238, 'ZAP', 'ZAP', 'foo-bar@example.com;', 'ZAP', '1', 'ZAP'),
(239, 'ZAP', 'ZAP', 'foo-bar@example.com\"', 'ZAP', '1', 'ZAP'),
(240, 'ZAP', 'ZAP', 'foo-bar@example.com;', 'ZAP', '1', 'ZAP'),
(241, 'ZAP', 'ZAP', 'zj 5340*7695 zj', 'ZAP', '1', 'ZAP'),
(242, 'ZAP', 'ZAP', 'zj{6488*7896}zj', 'ZAP', '1', 'ZAP'),
(243, 'ZAP', 'ZAP', 'zj${4233*2394}zj', 'ZAP', '1', 'ZAP'),
(244, 'ZAP', 'ZAP', 'zj#{5574*9037}zj', 'ZAP', '1', 'ZAP'),
(245, 'ZAP', 'ZAP', 'zj{#1931*2648}zj', 'ZAP', '1', 'ZAP'),
(246, 'ZAP', 'ZAP', 'zj{@6935*9055}zj', 'ZAP', '1', 'ZAP'),
(247, 'ZAP', 'ZAP', 'zj{{6428*3876}}zj', 'ZAP', '1', 'ZAP'),
(248, 'ZAP', 'ZAP', 'zj{{=5961*3696}}zj', 'ZAP', '1', 'ZAP'),
(249, 'ZAP', 'ZAP', 'zj<%=6357*5125%>zj', 'ZAP', '1', 'ZAP'),
(250, 'ZAP', 'ZAP', 'zj#set($x=9528*4905)', 'ZAP', '1', 'ZAP'),
(251, 'ZAP', 'ZAP', 'zj<p th:text=\"${9435', 'ZAP', '1', 'ZAP'),
(252, 'ZAP', 'ZAP', 'zj{@math key=\"3328\" ', 'ZAP', '1', 'ZAP'),
(253, 'ZAP', 'ZAP', 'zj{{21750|add:53610}', 'ZAP', '1', 'ZAP'),
(254, 'ZAP', 'ZAP', 'zj{{print \"9452\" \"35', 'ZAP', '1', 'ZAP'),
(255, 'ZAP', 'ZAP', '<#assign ex=\"freemar', 'ZAP', '1', 'ZAP'),
(256, 'ZAP', 'ZAP', '#set($engine=\"\")\n#se', 'ZAP', '1', 'ZAP'),
(257, 'ZAP', 'ZAP', '{{\"\".__class__.__mro', 'ZAP', '1', 'ZAP'),
(258, 'ZAP', 'ZAP', '${__import__(\"subpro', 'ZAP', '1', 'ZAP'),
(259, 'ZAP', 'ZAP', '{{__import__(\"subpro', 'ZAP', '1', 'ZAP'),
(260, 'ZAP', 'ZAP', '<%=%x(sleep 0)%>', 'ZAP', '1', 'ZAP'),
(261, 'ZAP', 'ZAP', '<%=%x(sleep 23)%>', 'ZAP', '1', 'ZAP'),
(262, 'ZAP', 'ZAP', 'EWAQTpEltpLGurnHyNyd', 'ZAP', '1', 'ZAP'),
(263, 'ZAP', 'ZAP', 'ZAP%n%s%n%s%n%s%n%s%', 'ZAP', '1', 'ZAP'),
(264, 'ZAP', 'ZAP', 'ZAP %1!s%2!s%3!s%4!s', 'ZAP', '1', 'ZAP'),
(265, 'ZAP', 'ZAP', 'Set-cookie: Tamper=f', 'ZAP', '1', 'ZAP'),
(266, 'ZAP', 'ZAP', 'any\r\nSet-cookie: Tam', 'ZAP', '1', 'ZAP'),
(267, 'ZAP', 'ZAP', 'any?\r\nSet-cookie: Ta', 'ZAP', '1', 'ZAP'),
(268, 'ZAP', 'ZAP', 'any\nSet-cookie: Tamp', 'ZAP', '1', 'ZAP'),
(269, 'ZAP', 'ZAP', 'any?\nSet-cookie: Tam', 'ZAP', '1', 'ZAP'),
(270, 'ZAP', 'ZAP', 'any\r\nSet-cookie: Tam', 'ZAP', '1', 'ZAP'),
(271, 'ZAP', 'ZAP', 'any?\r\nSet-cookie: Ta', 'ZAP', '1', 'ZAP'),
(272, 'Romdhane', 'Ons', 'onsrm22@gmail.com', 'foufou32', '52109962', 'Metline');

-- --------------------------------------------------------

--
-- Table structure for table `commande`
--

CREATE TABLE `commande` (
  `id_commande` int(11) NOT NULL,
  `les_plats` varchar(20) NOT NULL,
  `id_client` varchar(20) NOT NULL,
  `montant` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `panier`
--

CREATE TABLE `panier` (
  `id_panier` int(11) NOT NULL,
  `id_client` int(11) NOT NULL,
  `carte_item` int(11) NOT NULL,
  `id_plat` int(11) NOT NULL,
  `id_produit` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `plats`
--

CREATE TABLE `plats` (
  `id_plat` int(11) NOT NULL,
  `description_plat` varchar(50) NOT NULL,
  `prix` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `plats`
--

INSERT INTO `plats` (`id_plat`, `description_plat`, `prix`) VALUES
(1, 'pizza', 32000);

-- --------------------------------------------------------

--
-- Table structure for table `reservation`
--

CREATE TABLE `reservation` (
  `id_reservation` int(11) NOT NULL,
  `id_cl` int(11) NOT NULL,
  `num_places` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reservation`
--

INSERT INTO `reservation` (`id_reservation`, `id_cl`, `num_places`) VALUES
(1, 1, 4),
(2, 0, 1),
(3, 0, 4),
(4, 0, 1),
(5, 0, 4),
(6, 0, 1),
(7, 0, 0);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
