-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Фев 14 2024 г., 23:41
-- Версия сервера: 8.0.24
-- Версия PHP: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `bikov_vd_605-31`
--

-- --------------------------------------------------------

--
-- Структура таблицы `plumber-bomber_id-service`
--

CREATE TABLE `plumber-bomber_id-service` (
  `Number_service` int NOT NULL,
  `Name_service` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `TimeToWork_service` varchar(25) NOT NULL,
  `Price_service` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `plumber-bomber_id-service`
--

INSERT INTO `plumber-bomber_id-service` (`Number_service`, `Name_service`, `TimeToWork_service`, `Price_service`) VALUES
(1, 'Замена трубы.', '20 минут', '200 рублей'),
(2, 'Установка ванной, полотенцесушителей и душевой кабины.', '30 минут', '2000 рублей'),
(3, 'Монтаж унитаза и биде.', '10 минут', '300 рублей'),
(4, 'Установка стиральной машинки и кухонной мойки.', '50 минут', '400 рублей'),
(5, 'Подключение бойлера и фильтров для воды.', '15 минут', '500 рублей');

-- --------------------------------------------------------

--
-- Структура таблицы `plumber-bomber_schedule`
--

CREATE TABLE `plumber-bomber_schedule` (
  `id` int NOT NULL,
  `Day of the week` varchar(20) NOT NULL,
  `Schedule` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `plumber-bomber_schedule`
--

INSERT INTO `plumber-bomber_schedule` (`id`, `Day of the week`, `Schedule`) VALUES
(1, 'Понедельник', '8:00-20:00'),
(2, 'Вторник', '8:00-20:00'),
(3, 'Среда', '8:00-20:00'),
(4, 'Четверг', '8:00-20:00'),
(5, 'Пятница', '8:00-18:00'),
(6, 'Суббота', '12:00-18:00'),
(7, 'Воскресенье', 'Выходной');

-- --------------------------------------------------------

--
-- Структура таблицы `plumber-boomber_departurestoorder`
--

CREATE TABLE `plumber-boomber_departurestoorder` (
  `id` int NOT NULL,
  `Date` date NOT NULL,
  `Address` varchar(100) NOT NULL,
  `Service` int NOT NULL,
  `Tips` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `plumber-boomber_departurestoorder`
--

INSERT INTO `plumber-boomber_departurestoorder` (`id`, `Date`, `Address`, `Service`, `Tips`) VALUES
(1, '2024-02-02', 'Пушкина 5 кв 15', 2, '0 рублей'),
(2, '2024-02-06', 'Ленина 25 кв 7', 1, '0 рублей'),
(3, '2024-02-08', 'Чехова 8 кв 27', 5, '100 рублей'),
(4, '2024-02-14', 'Сибирская 11а кв 1', 2, '500 рублей');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `plumber-bomber_id-service`
--
ALTER TABLE `plumber-bomber_id-service`
  ADD PRIMARY KEY (`Number_service`);

--
-- Индексы таблицы `plumber-bomber_schedule`
--
ALTER TABLE `plumber-bomber_schedule`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `plumber-boomber_departurestoorder`
--
ALTER TABLE `plumber-boomber_departurestoorder`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Service` (`Service`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `plumber-bomber_id-service`
--
ALTER TABLE `plumber-bomber_id-service`
  MODIFY `Number_service` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `plumber-boomber_departurestoorder`
--
ALTER TABLE `plumber-boomber_departurestoorder`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `plumber-boomber_departurestoorder`
--
ALTER TABLE `plumber-boomber_departurestoorder`
  ADD CONSTRAINT `plumber-boomber_departurestoorder_ibfk_1` FOREIGN KEY (`Service`) REFERENCES `plumber-bomber_id-service` (`Number_service`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
