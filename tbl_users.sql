-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Янв 16 2018 г., 11:18
-- Версия сервера: 10.1.28-MariaDB
-- Версия PHP: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `dbjson`
--

-- --------------------------------------------------------

--
-- Структура таблицы `tbl_users`
--

CREATE TABLE `tbl_users` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `lat` varchar(255) NOT NULL,
  `lng` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `tbl_users`
--

INSERT INTO `tbl_users` (`id`, `title`, `lat`, `lng`, `description`, `category`, `city`) VALUES
(5, 'Aksa Beach', '48.536613', '44.625778', 'hotel', 'hotel', 'volgograd'),
(6, 'Juhu Beach', '48.572971', '44.469223', 'store', 'store', 'volgograd'),
(7, 'Aksa Beach', '48.629276', '44.359360', 'restoran', 'restoran', 'volgograd'),
(8, 'Juhu Beach', '48.437401', '44.274216', 'store', 'store', 'volgograd'),
(9, 'Aksa Beach', '48.664211', '44.505615', 'hotel', 'hotel', 'volgograd'),
(10, 'Juhu Beach', '48.724491', '44.586639', 'restoran', 'restoran', 'volgograd'),
(11, 'Aksa Beach', '48.546616', '44.604492', 'store', 'store', 'volgograd'),
(12, 'Juhu Beach', '48.701839', '44.909363', 'hotel', 'hotel', 'volgograd'),
(13, 'Juhu Beach', '48.638809', '44.491196', 'restoran', 'restoran', 'volgograd'),
(14, 'Juhu Beach', '59.939880', '30.289307', 'store', 'store', 'piter'),
(15, 'Juhu Beach', '59.979754', '30.146484', 'store', 'store', 'piter'),
(16, 'Juhu Beach', '60.016835', '29.734497', 'restoran', 'restoran', 'piter'),
(17, 'Juhu Beach', '59.872398', '29.913025', 'restoran', 'restoran', 'piter'),
(18, 'Aksa Beach', '59.750861', '30.094299', 'hotel', 'hotel', 'piter'),
(19, 'Juhu Beach', '60.171574', '29.869080', 'hotel', 'hotel', 'piter');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
