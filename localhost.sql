-- phpMyAdmin SQL Dump
-- version 4.2.12deb2+deb8u5
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Апр 21 2019 г., 05:21
-- Версия сервера: 5.5.62-0+deb8u1
-- Версия PHP: 7.2.16-1+0~20190307202206.17+jessie~1.gbpa7be82

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `gghack`
--

-- --------------------------------------------------------

--
-- Структура таблицы `event`
--

CREATE TABLE IF NOT EXISTS `event` (
`id` int(255) NOT NULL,
  `name_user` varchar(255) CHARACTER SET utf8 NOT NULL,
  `surname_user` varchar(255) CHARACTER SET utf8 NOT NULL,
  `id_event` varchar(255) NOT NULL,
  `pos_event` varchar(255) NOT NULL,
  `url_event` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `event`
--

INSERT INTO `event` (`id`, `name_user`, `surname_user`, `id_event`, `pos_event`, `url_event`) VALUES
(25, '11111111111', '11111111111', '11111111111', '11111111111', '11111111111'),
(26, '11111111111', '11111111111', '11111111111', '11111111111', '11111111111'),
(27, '11111111111', '11111111111', '11111111111', '11111111111', '11111111111'),
(28, '11111111111', '11111111111', '11111111111', '11111111111', '11111111111'),
(29, '11111111111', '11111111111', '11111111111', '11111111111', '11111111111'),
(30, '11111111111', '11111111111', '11111111111', '11111111111', '11111111111'),
(31, '11111111111', '11111111111', '11111111111', '11111111111', '11111111111');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `event`
--
ALTER TABLE `event`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `event`
--
ALTER TABLE `event`
MODIFY `id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=36;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
