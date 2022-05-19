-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Май 19 2022 г., 14:53
-- Версия сервера: 10.3.22-MariaDB
-- Версия PHP: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `steam`
--

-- --------------------------------------------------------

--
-- Структура таблицы `store`
--

CREATE TABLE `store` (
  `game_id` int(11) NOT NULL,
  `game_name` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `game_cat` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `game_price` int(11) NOT NULL,
  `game_photo` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `store`
--

INSERT INTO `store` (`game_id`, `game_name`, `game_cat`, `game_price`, `game_photo`) VALUES
(1, 'Source of Madness', 'Упрощённый рогалик, Лавкрафт, Экшен, Ролевой экшен', 435, 'https://cdn.akamai.steamstatic.com/steam/apps/1315610/capsule_184x69.jpg?t=1652285057'),
(2, 'Soundfall', 'Ритм-игра, Лутер-шутер, Подземелья, Для нескольких игроков', 515, 'https://cdn.akamai.steamstatic.com/steam/apps/1608700/capsule_184x69.jpg?t=1652714628'),
(3, 'We Were Here Forever', 'Исследования, Головоломка, Сетевой кооператив, Квест', 399, 'https://cdn.akamai.steamstatic.com/steam/apps/1341290/capsule_184x69.jpg?t=1652436547'),
(4, 'Retrowave', 'Гонки, Инди, Казуальная игра, Симулятор', 41, '	https://cdn.akamai.steamstatic.com/steam/apps/1239690/capsule_184x69.jpg?t=1651902316'),
(5, 'Ravenous Devils', 'Менеджмент, Кулинария, Злодей-протагонист, Управление ресурсами', 133, 'https://cdn.akamai.steamstatic.com/steam/apps/1615290/capsule_184x69.jpg?t=1652946213'),
(6, 'V Rising', 'Ранний доступ, Выживание, Крафтинг, Игрок против игрока', 435, 'https://cdn.akamai.steamstatic.com/steam/apps/1604030/capsule_184x69.jpg?t=1652814350'),
(7, 'Arma Reforger', 'Ранний доступ, Экшен, Симулятор, Стратегия', 1499, 'https://cdn.akamai.steamstatic.com/steam/apps/1874880/capsule_184x69.jpg?t=1652819381'),
(8, 'CS:GO Prime Status Upgrade', 'Шутер от первого лица, Шутер, Для нескольких игроков, Соревновательная', 1080, 'https://cdn.akamai.steamstatic.com/steam/subs/54029/capsule_184x69.jpg?t=1622831949'),
(9, 'Phasmophobia', 'Хоррор, Сетевой кооператив, Для нескольких игроков, Психологический хоррор', 309, 'https://cdn.akamai.steamstatic.com/steam/apps/739630/capsule_184x69.jpg?t=1638041534\r\n'),
(10, 'The Stanley Parable: Ultra Deluxe', 'Несколько концовок, Юмор, Решения с последствиями, Симулятор ходьбы', 465, 'https://cdn.akamai.steamstatic.com/steam/apps/1703340/capsule_184x69.jpg?t=1652303715'),
(11, 'Tin Can', 'Симулятор, Инди, Космос, Выживание', 282, 'https://cdn.akamai.steamstatic.com/steam/apps/1315980/capsule_184x69.jpg?t=1652805212'),
(12, 'Old World', 'Стратегия, Глобальная стратегия, Пошаговая стратегия, 4X', 1349, 'https://cdn.akamai.steamstatic.com/steam/apps/597180/capsule_184x69.jpg?t=1652943591'),
(13, 'DEATH STRANDING DIRECTOR\'S CUT', 'Экшен, Приключение, Симулятор ходьбы, Глубокий сюжет', 2639, 'https://cdn.akamai.steamstatic.com/steam/apps/1850570/capsule_184x69.jpg?t=1649438096'),
(14, 'Insurgency: Sandstorm', 'Шутер от первого лица, Реализм, Шутер, Военные действия', 499, 'https://cdn.akamai.steamstatic.com/steam/apps/581320/capsule_184x69.jpg?t=1652718826'),
(15, 'Squad', 'Военные действия, Реализм, Шутер от первого лица, Для нескольких игроков', 824, 'https://cdn.akamai.steamstatic.com/steam/apps/393380/capsule_184x69.jpg?t=1649877267');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `store`
--
ALTER TABLE `store`
  ADD PRIMARY KEY (`game_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `store`
--
ALTER TABLE `store`
  MODIFY `game_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
