-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Авг 14 2017 г., 12:17
-- Версия сервера: 5.5.53-log
-- Версия PHP: 5.6.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `phprun`
--

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `category` text NOT NULL,
  `name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `category`, `name`) VALUES
(1, 'milk', 'молоко'),
(2, 'love', 'Любовь'),
(3, 'offtop', 'Оффтоп'),
(4, 'games', 'Игры'),
(5, 'eat', 'Еда');

-- --------------------------------------------------------

--
-- Структура таблицы `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `comments`
--

INSERT INTO `comments` (`id`, `uid`, `pid`, `text`) VALUES
(4, 2, 1, '12 312 312 312 3 wewwwwww'),
(5, 2, 3, 'Вот такой хороший комментарий'),
(6, 2, 3, 'Найсовый коммент!'),
(7, 4, 3, 'Жёсткий коммент '),
(8, 3, 23, 'Первый коммент! ЕЕЕ'),
(22, 5, 27, 'Список комментариев не пуст !!!'),
(23, 3, 27, 'Дурацкий комм'),
(24, 5, 27, 'Сам ты дурацкий'),
(29, 3, 1, 'Оставлю нормальный комментарий'),
(30, 3, 48, 'Оставлю я комментарий на радость дедам!'),
(31, 3, 10, 'Оставлю наконец коментарий');

-- --------------------------------------------------------

--
-- Структура таблицы `dialog`
--

CREATE TABLE `dialog` (
  `id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `send` int(11) NOT NULL,
  `recive` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `dialog`
--

INSERT INTO `dialog` (`id`, `status`, `send`, `recive`) VALUES
(1, 1, 2, 1),
(2, 0, 3, 2),
(3, 0, 3, 4),
(4, 0, 5, 3),
(5, 1, 8, 3);

-- --------------------------------------------------------

--
-- Структура таблицы `friends`
--

CREATE TABLE `friends` (
  `id` int(11) NOT NULL,
  `ffri` int(11) NOT NULL,
  `sfri` int(11) NOT NULL,
  `active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `friends`
--

INSERT INTO `friends` (`id`, `ffri`, `sfri`, `active`) VALUES
(5, 3, 2, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `likes`
--

CREATE TABLE `likes` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `post` int(11) NOT NULL,
  `date` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `likes`
--

INSERT INTO `likes` (`id`, `uid`, `post`, `date`) VALUES
(2, 1, 23, ''),
(3, 2, 27, ''),
(8, 3, 27, ''),
(16, 3, 3, ''),
(26, 3, 15, ''),
(28, 5, 27, '21.05.17'),
(48, 3, 10, '26.06.17'),
(52, 3, 28, '27.06.17'),
(59, 3, 40, '02.07.17'),
(60, 3, 1, '03.07.17'),
(76, 3, 48, '06.08.17');

-- --------------------------------------------------------

--
-- Структура таблицы `loader`
--

CREATE TABLE `loader` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `readf` int(11) NOT NULL,
  `download` int(11) NOT NULL,
  `added` text NOT NULL,
  `text` text NOT NULL,
  `date` text NOT NULL,
  `active` int(11) NOT NULL,
  `dimg` int(11) NOT NULL,
  `dfile` int(11) NOT NULL,
  `cut` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `loader`
--

INSERT INTO `loader` (`id`, `name`, `readf`, `download`, `added`, `text`, `date`, `active`, `dimg`, `dfile`, `cut`) VALUES
(1, 'qweqwe', 1, 2, '3', '4', '2017-07-19 00:00:00', 6, 7, 8, 9),
(2, '', 0, 0, '3', '', '', 0, 0, 0, 0),
(3, '', 0, 0, '2', '', '', 0, 0, 1, 0),
(4, '', 0, 0, '3', '', '', 0, 0, 0, 0),
(5, '', 0, 0, '3', '', '', 0, 1, 0, 0),
(6, '', 0, 0, '3', '', '', 0, 1, 0, 0),
(7, '', 0, 0, '3', '', '', 0, 1, 0, 0),
(8, '', 0, 0, '3', '', '', 0, 1, 0, 0),
(9, '', 0, 0, '3', '', '', 0, 1, 0, 0),
(10, '', 0, 0, '3', '', '', 0, 1, 0, 0),
(11, '', 0, 0, '3', '', '', 0, 1, 1, 0),
(12, '', 0, 0, '3', '', '', 0, 1, 1, 0),
(13, '', 0, 0, '3', '', '', 0, 1, 0, 0),
(14, '', 0, 0, '3', '', '', 0, 1, 0, 0),
(15, '', 0, 0, '3', '', '', 0, 2, 0, 0),
(16, '', 0, 0, '3', '', '', 0, 1, 0, 0),
(17, '', 0, 0, '3', '', '', 0, 1, 0, 0),
(18, '', 0, 0, '3', '', '', 0, 1, 0, 0),
(19, '', 0, 0, '3', '', '', 0, 1, 0, 0),
(20, '', 0, 0, '3', '', '', 0, 1, 0, 0),
(21, '', 0, 0, '3', '', '', 0, 1, 1, 0),
(22, '', 0, 0, '3', '', '', 0, 1, 0, 0),
(23, '', 0, 0, '3', '', '', 0, 1, 0, 0),
(24, '', 0, 0, '3', '', '', 0, 1, 0, 0),
(25, '', 0, 0, '3', '', '', 0, 0, 1, 0),
(26, '', 0, 0, '3', '', '', 0, 0, 1, 0),
(27, '', 0, 0, '3', '', '', 0, 0, 1, 0),
(28, '', 0, 0, '3', '', '', 0, 1, 1, 0),
(29, '', 0, 0, '3', '', '', 0, 1, 1, 0),
(30, '', 0, 0, '3', '', '', 0, 1, 1, 0),
(31, '', 0, 0, '3', '', '', 0, 1, 1, 0),
(32, '', 0, 0, '3', '', '', 0, 0, 1, 0),
(33, '', 0, 0, '3', '', '', 0, 1, 0, 0),
(34, '', 0, 0, '3', '', '', 0, 1, 1, 0),
(35, '', 0, 0, '3', '', '', 0, 1, 0, 0),
(36, '', 0, 0, '3', '', '', 0, 1, 0, 0),
(37, '', 0, 0, '3', '', '', 0, 1, 0, 0),
(38, '', 0, 0, '3', '', '', 0, 1, 0, 0),
(39, '', 0, 0, '3', '', '', 0, 1, 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `mailsubscribers`
--

CREATE TABLE `mailsubscribers` (
  `id` int(11) NOT NULL,
  `mail` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `mailsubscribers`
--

INSERT INTO `mailsubscribers` (`id`, `mail`) VALUES
(10, 'mandarin.tolik.99@gmail.ru');

-- --------------------------------------------------------

--
-- Структура таблицы `message`
--

CREATE TABLE `message` (
  `id` int(11) NOT NULL,
  `did` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `text` text NOT NULL,
  `date` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `message`
--

INSERT INTO `message` (`id`, `did`, `user`, `text`, `date`) VALUES
(1, 1, 2, '--Начат диалог--', '2017-01-31 00:13:12'),
(2, 1, 1, 'Привет!', '2017-01-31 00:14:04'),
(3, 1, 2, 'И тебе привет!', '2017-01-31 00:14:20'),
(4, 1, 2, '123123', '2017-01-31 00:14:33'),
(5, 1, 2, '123123', '2017-01-31 00:14:35'),
(6, 1, 2, '1', '2017-01-31 00:28:42'),
(7, 2, 2, '--Начат диалог--', '2017-01-31 20:32:27'),
(8, 2, 3, 'Привет', '2017-01-31 20:36:40'),
(9, 2, 2, 'Да, привет', '2017-01-31 20:36:52'),
(10, 2, 2, '123123', '2017-01-31 20:37:02'),
(11, 2, 3, 'Ты чё мне пишешь?\n', '2017-01-31 20:37:13'),
(12, 2, 2, 'Прост', '2017-01-31 20:37:29'),
(13, 2, 2, '123123', '2017-01-31 20:42:55'),
(14, 2, 3, 'привет!', '2017-01-31 20:43:16'),
(15, 2, 3, 'привет!\n', '2017-01-31 20:43:36'),
(16, 2, 2, '123123', '2017-01-31 21:21:35'),
(17, 2, 2, 'Hello', '2017-02-01 01:57:22'),
(18, 2, 2, 'tr', '2017-02-01 02:00:40'),
(19, 2, 3, 'Hi', '2017-02-01 02:02:48'),
(20, 2, 3, 'hi', '2017-02-01 02:03:05'),
(21, 2, 2, 'hello', '2017-02-01 02:16:26'),
(22, 2, 3, '123123', '2017-02-01 02:18:23'),
(23, 2, 3, '123123', '2017-02-01 02:21:36'),
(24, 2, 2, '123123', '2017-02-01 02:22:22'),
(25, 2, 2, 'Чё не спишь?', '2017-02-01 02:24:49'),
(26, 2, 3, 'А ты чё не спишь?', '2017-02-01 22:53:45'),
(27, 2, 2, 'Hello', '2017-02-02 21:40:01'),
(28, 2, 3, 'Hi', '2017-02-02 21:40:16'),
(29, 2, 3, 'Еее у нас есть аватарки!', '2017-02-08 23:20:04'),
(30, 2, 3, '1', '2017-02-09 01:25:07'),
(31, 2, 3, 'Да, чувак!', '2017-02-09 01:25:20'),
(32, 2, 2, 'Пока', '2017-02-09 01:33:48'),
(33, 2, 2, 'Привет\n', '2017-02-10 14:31:34'),
(34, 2, 3, 'Здарова', '2017-02-10 14:32:28'),
(35, 3, 4, '--Начат диалог--', '2017-02-18 13:30:04'),
(36, 3, 4, 'Привет!', '2017-02-18 13:30:11'),
(37, 3, 3, 'Да пошёл ты', '2017-02-18 13:31:26'),
(38, 3, 4, 'Сам иди', '2017-02-18 13:31:38'),
(39, 4, 5, '--Начат диалог--', '2017-05-19 12:36:08'),
(40, 4, 3, 'Ты чё пишешь пидор?', '2017-05-19 12:36:37'),
(41, 4, 5, 'Сам ты пидор', '2017-05-19 12:36:44'),
(42, 4, 3, 'Хули пасёшь?', '2017-05-19 12:36:58'),
(43, 4, 5, 'Отъебись ', '2017-05-19 12:37:06'),
(44, 4, 3, '123', '2017-06-18 14:51:36'),
(45, 3, 3, '321', '2017-06-27 02:26:48'),
(46, 5, 8, '--Начат диалог--', '2017-07-03 01:36:38'),
(47, 3, 3, 'Ты чё сучара?', '2017-07-06 13:06:42'),
(48, 5, 3, 'Привет', '2017-08-06 12:23:23'),
(49, 5, 8, 'Hi', '2017-08-06 12:23:38');

-- --------------------------------------------------------

--
-- Структура таблицы `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `category` varchar(50) NOT NULL,
  `title` text NOT NULL,
  `text` text NOT NULL,
  `description` text NOT NULL,
  `views` int(11) NOT NULL,
  `img` text NOT NULL,
  `author` int(50) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `posts`
--

INSERT INTO `posts` (`id`, `active`, `category`, `title`, `text`, `description`, `views`, `img`, `author`, `date`) VALUES
(1, 2, 'games', 'Статья №1', 'Lorem ipsum dolor sit amet, tritani persius voluptatum vel cu, in eos eruditi civibus. In dolore perpetua temporibus eam, quas veritus at cum. Mei latine lucilius ea, purto vivendum mea et. Verear omnesque sea ex, ex melius ullamcorper mediocritatem ius. Eius mazim recteque vis eu, qui aeque impetus at. Alia solum nam in, periculis suscipiantur nec cu, nam cu dicunt vivendum expetenda.asdasdasdasd<br>\n&lt;h2&gt;Dynamic Tabs&lt;/h2&gt;<br>\n[slider][slide][img]http://phprun1/assets/img/finn312.jpg[/img][/slide][slide][img]http://phprun1/assets/img/screen.png[/img][/slide][slide][img]http://phprun1/assets/img/finn312.jpg[/img][/slide][slide][img]http://phprun1/assets/img/screen.png[/img][/slide][/slider][video]F7cpd32ms-c[/video]<br>\n<br>\n<br>\n[i]qweqweqweqweqweqweqweqw[/i]', 'Описание Описание Описание Описание Описание ОписаниеОписание Описание ОписаниеОписаниеОписаниеОписаниеОписание', 2, 'http://inetru.net/wp-content/uploads/2014/06/как-написать-полезную-статью-для-сайта.jpg', 3, '0000-00-00'),
(2, 1, 'offtop', 'Статья №2', 'Lorem ipsum dolor sit amet, tritani persius voluptatum vel cu, in eos eruditi civibus. In dolore perpetua temporibus eam, quas veritus at cum. Mei latine lucilius ea, purto vivendum mea et. Verear omnesque sea ex, ex melius ullamcorper mediocritatem ius. Eius mazim recteque vis eu, qui aeque impetus at. Alia solum nam in, periculis suscipiantur nec cu, nam cu dicunt vivendum expetenda. &lt;b&gt;123&lt;/b&gt; &lt;i&gt;33333&lt;/i&gt; [url=http://htmlbook.ru/html/u]name=http://htmlbook.ru/html/u<br>\n[/url]﻿<br>\n[header]Вот такой Заголовок[/header][quote]﻿Цитата жёсткая<br>\nОчень<br>\nОчень<br>\n<br>\nАга![/quote]<br>\n[list][*]1 item[/*][*]2 item[/*][*]3 item<br>\n[/*][/list][list=1][*]123[/*][*]345[/*][*]567[/*][/list=1]', 'Lorem ipsum dolor sit amet, tritani persius voluptatum vel cu, in eos eruditi civibus. In dolore perpetua temporibus eam, quas veritus at cum. Mei latine lucilius ea, purto vivendum mea et. Verear omnesque sea ex, ex melius ullamcorper mediocritatem ius. Eius mazim recteque vis eu, qui aeque impetus at. Alia solum nam in, periculis suscipiantur nec cu, nam cu dicunt vivendum expetenda.<br>\n<br>\nLorem ipsum dolor sit amet, tritani persius voluptatum vel cu, in eos eruditi civibus. In dolore perpetua temporibus eam, quas veritus at cum. Mei latine lucilius ea, purto vivendum mea et. Verear omnesque sea ex, ex melius ullamcorper mediocritatem ius. Eius mazim recteque vis eu, qui aeque impetus at. Alia solum nam in, periculis suscipiantur nec cu, nam cu dicunt vivendum expetenda.', 17, 'https://habrastorage.org/files/9df/d1d/90d/9dfd1d90dbeb42aaa492085e51cff6f1.png', 8, '0000-00-00'),
(3, 0, 'milk', 'Статья №3', 'Lorem ipsum dolor sit amet, tritani persius voluptatum vel cu, in eos eruditi civibus. In dolore perpetua temporibus eam, quas veritus at cum. Mei latine lucilius ea, purto vivendum mea et. Verear omnesque sea ex, ex melius ullamcorper mediocritatem ius. Eius mazim recteque vis eu, qui aeque impetus at. Alia solum nam in, periculis suscipiantur nec cu, nam cu dicunt vivendum expetenda.', '', 2, 'http://mustic.ru/wp-content/uploads/2014/11/Kak-pravilno-pisat-stati-dlya-sajta-..jpg', 8, '0000-00-00'),
(4, 0, '', 'Статья №4', 'Lorem ipsum dolor sit amet, tritani persius voluptatum vel cu, in eos eruditi civibus. In dolore perpetua temporibus eam, quas veritus at cum. Mei latine lucilius ea, purto vivendum mea et. Verear omnesque sea ex, ex melius ullamcorper mediocritatem ius. Eius mazim recteque vis eu, qui aeque impetus at. Alia solum nam in, periculis suscipiantur nec cu, nam cu dicunt vivendum expetenda.', '', 1, 'https://habrastorage.org/getpro/geektimes/post_images/d30/3d5/b32/d303d5b32b669b8246d73b1a361f267b.jpg', 0, '0000-00-00'),
(5, 0, 'milk', 'Статья №5', 'Lorem ipsum dolor sit amet, tritani persius voluptatum vel cu, in eos eruditi civibus. In dolore perpetua temporibus eam, quas veritus at cum. Mei latine lucilius ea, purto vivendum mea et. Verear omnesque sea ex, ex melius ullamcorper mediocritatem ius. Eius mazim recteque vis eu, qui aeque impetus at. Alia solum nam in, periculis suscipiantur nec cu, nam cu dicunt vivendum expetenda.', '', 1, 'https://sites.google.com/site/analogsynthdiy/_/rsrc/1272300906581/imitatory-zvukov/melodicnyj-zvonok-s-generatorom-slucajnyh-cisel/1.PNG', 0, '0000-00-00'),
(6, 0, 'milk', 'Статья №6', 'Lorem ipsum dolor sit amet, tritani persius voluptatum vel cu, in eos eruditi civibus. In dolore perpetua temporibus eam, quas veritus at cum. Mei latine lucilius ea, purto vivendum mea et. Verear omnesque sea ex, ex melius ullamcorper mediocritatem ius. Eius mazim recteque vis eu, qui aeque impetus at. Alia solum nam in, periculis suscipiantur nec cu, nam cu dicunt vivendum expetenda.', '', 0, 'https://i.ytimg.com/vi/abiNs-p7Ttw/maxresdefault.jpg', 0, '0000-00-00'),
(7, 0, 'milk', 'Статья №7', 'Lorem ipsum dolor sit amet, tritani persius voluptatum vel cu, in eos eruditi civibus. In dolore perpetua temporibus eam, quas veritus at cum. Mei latine lucilius ea, purto vivendum mea et. Verear omnesque sea ex, ex melius ullamcorper mediocritatem ius. Eius mazim recteque vis eu, qui aeque impetus at. Alia solum nam in, periculis suscipiantur nec cu, nam cu dicunt vivendum expetenda.', '', 0, '', 0, '0000-00-00'),
(8, 0, 'milk', 'Статья №8', 'Lorem ipsum dolor sit amet, tritani persius voluptatum vel cu, in eos eruditi civibus. In dolore perpetua temporibus eam, quas veritus at cum. Mei latine lucilius ea, purto vivendum mea et. Verear omnesque sea ex, ex melius ullamcorper mediocritatem ius. Eius mazim recteque vis eu, qui aeque impetus at. Alia solum nam in, periculis suscipiantur nec cu, nam cu dicunt vivendum expetenda.', '', 0, '', 0, '0000-00-00'),
(9, 0, 'milk', 'Статья №9', 'Libris corpora ad vim, pri audiam suscipiantur ne. Vix no veniam iriure deserunt, et fabulas gloriatur adipiscing sea. Pri no docendi qualisque constituto. Ut justo nullam urbanitas eum, case alterum sit ad. Id imperdiet mnesarchum ius, eos amet sanctus eu. Ei iudico everti est, usu autem paulo dictas ad.\r\n', '', 4, '', 0, '0000-00-00'),
(10, 1, 'milk', 'Статья №10', 'Libris corpora ad vim, pri audiam suscipiantur ne. Vix no veniam iriure deserunt, et fabulas gloriatur adipiscing sea. Pri no docendi qualisque constituto. Ut justo nullam urbanitas eum, case alterum sit ad. Id imperdiet mnesarchum ius, eos amet sanctus eu. Ei iudico everti est, usu autem paulo dictas ad.\r\n', '', 37, '', 0, '0000-00-00'),
(11, 0, '', 'Статья №11', 'Libris corpora ad vim, pri audiam suscipiantur ne. Vix no veniam iriure deserunt, et fabulas gloriatur adipiscing sea. Pri no docendi qualisque constituto. Ut justo nullam urbanitas eum, case alterum sit ad. Id imperdiet mnesarchum ius, eos amet sanctus eu. Ei iudico everti est, usu autem paulo dictas ad.\r\n', '', 0, '', 0, '0000-00-00'),
(12, 0, '', 'Статья №12', 'Libris corpora ad vim, pri audiam suscipiantur ne. Vix no veniam iriure deserunt, et fabulas gloriatur adipiscing sea. Pri no docendi qualisque constituto. Ut justo nullam urbanitas eum, case alterum sit ad. Id imperdiet mnesarchum ius, eos amet sanctus eu. Ei iudico everti est, usu autem paulo dictas ad.\r\n', '', 0, '', 0, '0000-00-00'),
(13, 0, '', 'Статья №13', 'Lorem ipsum dolor sit amet, sonet vocent nec at, utroque epicuri vix ei. Pro no impetus tacimates, meis prompta te usu, pro eu quidam postulant scriptorem. Vitae reprimique reprehendunt sed te, eu vim nostrud maiorum. Ex nec vivendo gloriatur definitiones, probo aeque an nec, pri id dolores periculis consequat. Eu amet homero duo, quis aliquid posidonium quo in, dolores gloriatur consetetur sed in. At quot abhorreant pri, eum id admodum salutandi ocurreret, quod ignota vim no.\r\n\r\nAn viris choro alienum per, cibo nihil neglegentur ad vel. Sumo case an sit, enim sensibus mei ut. Mundi atomorum accusamus vim te. Habeo persecuti adversarium ne est, nam ea dolorum tractatos, eirmod iudicabit at per. Cu nec nibh facilisis, semper nusquam cum no.', '', 0, '', 0, '0000-00-00'),
(14, 0, '', 'Статья №14', 'Lorem ipsum dolor sit amet, sonet vocent nec at, utroque epicuri vix ei. Pro no impetus tacimates, meis prompta te usu, pro eu quidam postulant scriptorem. Vitae reprimique reprehendunt sed te, eu vim nostrud maiorum. Ex nec vivendo gloriatur definitiones, probo aeque an nec, pri id dolores periculis consequat. Eu amet homero duo, quis aliquid posidonium quo in, dolores gloriatur consetetur sed in. At quot abhorreant pri, eum id admodum salutandi ocurreret, quod ignota vim no.\r\n\r\nAn viris choro alienum per, cibo nihil neglegentur ad vel. Sumo case an sit, enim sensibus mei ut. Mundi atomorum accusamus vim te. Habeo persecuti adversarium ne est, nam ea dolorum tractatos, eirmod iudicabit at per. Cu nec nibh facilisis, semper nusquam cum no.', '', 0, '', 0, '0000-00-00'),
(15, 0, '', 'Статья №15', 'Nec fugit saepe commune no. Ad duo quodsi senserit maiestatis, ut illum consul maiestatis has, soleat vocent noluisse ei vix. Iudico aperiam contentiones cu mea. Qui ad dicta dolorem imperdiet. Cetero explicari consulatu qui ea, ea autem appellantur per.\r\n\r\nId quidam docendi eos, te munere docendi his. Ut ius impedit nonumes placerat, nostrud elaboraret mea ut. Eu sed esse postulant disputando. Sea ex duis signiferumque. Aeterno corrumpit cu usu, cum tempor appetere honestatis ea.', '', 0, '', 0, '0000-00-00'),
(16, 0, '', 'Статья №16', 'Nec fugit saepe commune no. Ad duo quodsi senserit maiestatis, ut illum consul maiestatis has, soleat vocent noluisse ei vix. Iudico aperiam contentiones cu mea. Qui ad dicta dolorem imperdiet. Cetero explicari consulatu qui ea, ea autem appellantur per.\r\n\r\nId quidam docendi eos, te munere docendi his. Ut ius impedit nonumes placerat, nostrud elaboraret mea ut. Eu sed esse postulant disputando. Sea ex duis signiferumque. Aeterno corrumpit cu usu, cum tempor appetere honestatis ea.', '', 0, '', 0, '0000-00-00'),
(17, 0, '', 'Статья №17', 'Nec fugit saepe commune no. Ad duo quodsi senserit maiestatis, ut illum consul maiestatis has, soleat vocent noluisse ei vix. Iudico aperiam contentiones cu mea. Qui ad dicta dolorem imperdiet. Cetero explicari consulatu qui ea, ea autem appellantur per.\r\n\r\nId quidam docendi eos, te munere docendi his. Ut ius impedit nonumes placerat, nostrud elaboraret mea ut. Eu sed esse postulant disputando. Sea ex duis signiferumque. Aeterno corrumpit cu usu, cum tempor appetere honestatis ea.', '', 0, '', 0, '0000-00-00'),
(18, 0, '', 'Статья №18', 'Nec fugit saepe commune no. Ad duo quodsi senserit maiestatis, ut illum consul maiestatis has, soleat vocent noluisse ei vix. Iudico aperiam contentiones cu mea. Qui ad dicta dolorem imperdiet. Cetero explicari consulatu qui ea, ea autem appellantur per.\r\n\r\nId quidam docendi eos, te munere docendi his. Ut ius impedit nonumes placerat, nostrud elaboraret mea ut. Eu sed esse postulant disputando. Sea ex duis signiferumque. Aeterno corrumpit cu usu, cum tempor appetere honestatis ea.', '', 0, '', 0, '0000-00-00'),
(19, 0, '', 'Статья №19', 'Nec fugit saepe commune no. Ad duo quodsi senserit maiestatis, ut illum consul maiestatis has, soleat vocent noluisse ei vix. Iudico aperiam contentiones cu mea. Qui ad dicta dolorem imperdiet. Cetero explicari consulatu qui ea, ea autem appellantur per.\r\n\r\nId quidam docendi eos, te munere docendi his. Ut ius impedit nonumes placerat, nostrud elaboraret mea ut. Eu sed esse postulant disputando. Sea ex duis signiferumque. Aeterno corrumpit cu usu, cum tempor appetere honestatis ea.', '', 0, '', 0, '0000-00-00'),
(20, 0, '', 'Статья №20', 'Nec fugit saepe commune no. Ad duo quodsi senserit maiestatis, ut illum consul maiestatis has, soleat vocent noluisse ei vix. Iudico aperiam contentiones cu mea. Qui ad dicta dolorem imperdiet. Cetero explicari consulatu qui ea, ea autem appellantur per.\r\n\r\nId quidam docendi eos, te munere docendi his. Ut ius impedit nonumes placerat, nostrud elaboraret mea ut. Eu sed esse postulant disputando. Sea ex duis signiferumque. Aeterno corrumpit cu usu, cum tempor appetere honestatis ea.', '', 0, '', 0, '0000-00-00'),
(21, 0, '', 'Статья №21', 'Nec fugit saepe commune no. Ad duo quodsi senserit maiestatis, ut illum consul maiestatis has, soleat vocent noluisse ei vix. Iudico aperiam contentiones cu mea. Qui ad dicta dolorem imperdiet. Cetero explicari consulatu qui ea, ea autem appellantur per.\r\n\r\nId quidam docendi eos, te munere docendi his. Ut ius impedit nonumes placerat, nostrud elaboraret mea ut. Eu sed esse postulant disputando. Sea ex duis signiferumque. Aeterno corrumpit cu usu, cum tempor appetere honestatis ea.', '', 0, '', 0, '0000-00-00'),
(22, 0, '', 'Статья №22', 'Nec fugit saepe commune no. Ad duo quodsi senserit maiestatis, ut illum consul maiestatis has, soleat vocent noluisse ei vix. Iudico aperiam contentiones cu mea. Qui ad dicta dolorem imperdiet. Cetero explicari consulatu qui ea, ea autem appellantur per.\r\n\r\nId quidam docendi eos, te munere docendi his. Ut ius impedit nonumes placerat, nostrud elaboraret mea ut. Eu sed esse postulant disputando. Sea ex duis signiferumque. Aeterno corrumpit cu usu, cum tempor appetere honestatis ea.', '', 0, '', 0, '0000-00-00'),
(23, 0, '', 'Статья №23', 'Nec fugit saepe commune no. Ad duo quodsi senserit maiestatis, ut illum consul maiestatis has, soleat vocent noluisse ei vix. Iudico aperiam contentiones cu mea. Qui ad dicta dolorem imperdiet. Cetero explicari consulatu qui ea, ea autem appellantur per.\r\n\r\nId quidam docendi eos, te munere docendi his. Ut ius impedit nonumes placerat, nostrud elaboraret mea ut. Eu sed esse postulant disputando. Sea ex duis signiferumque. Aeterno corrumpit cu usu, cum tempor appetere honestatis ea.', '', 1, '', 0, '0000-00-00'),
(24, 0, '', 'Статья №24', 'Nec fugit saepe commune no. Ad duo quodsi senserit maiestatis, ut illum consul maiestatis has, soleat vocent noluisse ei vix. Iudico aperiam contentiones cu mea. Qui ad dicta dolorem imperdiet. Cetero explicari consulatu qui ea, ea autem appellantur per.\r\n\r\nId quidam docendi eos, te munere docendi his. Ut ius impedit nonumes placerat, nostrud elaboraret mea ut. Eu sed esse postulant disputando. Sea ex duis signiferumque. Aeterno corrumpit cu usu, cum tempor appetere honestatis ea.', '', 0, '', 0, '0000-00-00'),
(25, 0, '', 'Статья №25', 'Nec fugit saepe commune no. Ad duo quodsi senserit maiestatis, ut illum consul maiestatis has, soleat vocent noluisse ei vix. Iudico aperiam contentiones cu mea. Qui ad dicta dolorem imperdiet. Cetero explicari consulatu qui ea, ea autem appellantur per.\r\n\r\nId quidam docendi eos, te munere docendi his. Ut ius impedit nonumes placerat, nostrud elaboraret mea ut. Eu sed esse postulant disputando. Sea ex duis signiferumque. Aeterno corrumpit cu usu, cum tempor appetere honestatis ea.', '', 0, '', 0, '0000-00-00'),
(26, 1, '', 'Статья №26', 'Nec fugit saepe commune no. Ad duo quodsi senserit maiestatis, ut illum consul maiestatis has, soleat vocent noluisse ei vix. Iudico aperiam contentiones cu mea. Qui ad dicta dolorem imperdiet. Cetero explicari consulatu qui ea, ea autem appellantur per.\r\n\r\nId quidam docendi eos, te munere docendi his. Ut ius impedit nonumes placerat, nostrud elaboraret mea ut. Eu sed esse postulant disputando. Sea ex duis signiferumque. Aeterno corrumpit cu usu, cum tempor appetere honestatis ea.', '', 102, '', 0, '0000-00-00'),
(27, 1, '', 'Статья №27', 'Nec fugit saepe commune no. Ad duo quodsi senserit maiestatis, ut illum consul maiestatis has, soleat vocent noluisse ei vix. Iudico aperiam contentiones cu mea. Qui ad dicta dolorem imperdiet. Cetero explicari consulatu qui ea, ea autem appellantur per.\n\nId quidam docendi eos, te munere docendi his. Ut ius impedit nonumes placerat, nostrud elaboraret mea ut. Eu sed esse postulant disputando. Sea ex duis signiferumque. Aeterno corrumpit cu usu, cum tempor appetere honestatis ea.', '', 4, '', 0, '0000-00-00'),
(28, 0, '', 'Статья №28', 'Nec fugit saepe commune no. Ad duo quodsi senserit maiestatis, ut illum consul maiestatis has, soleat vocent noluisse ei vix. Iudico aperiam contentiones cu mea. Qui ad dicta dolorem imperdiet. Cetero explicari consulatu qui ea, ea autem appellantur per.\r\n\r\nId quidam docendi eos, te munere docendi his. Ut ius impedit nonumes placerat, nostrud elaboraret mea ut. Eu sed esse postulant disputando. Sea ex duis signiferumque. Aeterno corrumpit cu usu, cum tempor appetere honestatis ea.', '', 1, '', 0, '0000-00-00'),
(38, 1, 'games', 'Оперативная память kingston HyperX KHX1866C9D3 8гб', 'undefined', '', 1, '', 0, '0000-00-00'),
(39, 0, 'milk', 'Оперативная ass kingston HyperX KHX1866C9D3 8гб', 'Lorem ipsum dolor sit amet, consectetur<br>\n<br>\n adipisicing elit. Pariatur quaerat <br>\n<br>\nrepudiandae ratione laudantium libero, animi enim optio ut facere ducimus! Est <br>\nneque porro optio. Quo ducimus pariatur <br>\n<br>\n<br>\n<br>\n3<br>\nerror accusamus provident!', '', 1, '', 0, '0000-00-00'),
(40, 0, 'milk', 'Статья №100', '&lt;?<br>\nif ( $_POST[&#039;addpost_f&#039;] ) {<br>\n    captcha_valid();<br>\n    $title = FormChars($_POST[&#039;title&#039;]);<br>\n    $text = FormChars($_POST[&#039;subject&#039;]);<br>\n    $category = $_POST[&#039;category&#039;];<br>\n    $time = date(&quot;d.m.Y&quot;);<br>\n    $author = $_SESSION[&#039;id&#039;];<br>\n    if (strlen($_POST[&#039;subject&#039;]) &lt; 150 or strlen($_POST[&#039;subject&#039;]) &gt; 5000 ) <br>\n        message(&quot;Длина сообшения должна быть от 150 до 5000 символов!&quot;);<br>\n    mysql_query(&#039;INSERT INTO posts (`category`, `title`, `text`, `author`, `date`) VALUES (&quot;&#039;.$category.&#039;&quot;, &quot;&#039;.$title.&#039;&quot;, &quot;&#039;.$text.&#039;&quot;, &quot;&#039;.$author.&#039;&quot;, &quot;&#039;.$time.&#039;&quot;)&#039;) or die(mysql_error());<br>\n    go(&#039;news/id/&#039;.$_POST[id].&#039;&#039;);<br>\n} else if ( $_POST[&#039;editpost_f&#039;] ) {<br>\n    captcha_valid();<br>\n    if (strlen($_POST[&#039;subject&#039;]) &lt; 150 or strlen($_POST[&#039;subject&#039;]) &gt; 5000 ) <br>\n        message(&quot;Длина сообшения должна быть от 150 до 5000 символов!&quot;);<br>\n    $title = FormChars($_POST[&#039;title&#039;]);<br>\n    $text = FormChars($_POST[&#039;subject&#039;]);<br>\n    $category = $_POST[&#039;category&#039;];<br>\n<br>\n    mysql_query(&#039;UPDATE `posts` SET `category` = &quot;&#039;.$category.&#039;&quot;, `title` = &quot;&#039;.$title.&#039;&quot;, `text` = &quot;&#039;.$text.&#039;&quot; WHERE `id` = &quot;&#039;.$_POST[&#039;id&#039;].&#039;&quot;&#039;);<br>\n    go(&#039;news/id/&#039;.$_POST[id].&#039;&#039;);<br>\n} else if ( $_POST[&#039;deletepost_f&#039;] ) {<br>\n<br>\n}<br>\n?&gt;', '', 1, '', 3, '2002-07-20'),
(41, 1, 'offtop', 'Статья №101', 'Короче жопа жопная даже ничего путного  <br>\nне ввести, а то партос и Арамис попутают рамсы и всё будет у них хорошо вот так вот бебе бе бе я не знаю что ещё написать', '', 12, '', 3, '2002-07-20'),
(42, 0, 'offtop', 'Как сделать кнопку назад или как вернуться на предыдущую страницу? HTML и JS', '[b]Код HTML и JS[/b]<br>\n[quote]<br>\n&lt;!-- вариант с кнопкой --&gt;&lt;input type=&quot;button&quot; onclick=&quot;history.back();&quot; value=&quot;Назад&quot;/&gt;&lt;!-- вариант ссылкой --&gt;&lt;a onclick=&quot;javascript:history.back(); return false;&quot;&gt;Назад&lt;/a&gt;[/quote]<br>\n<br>\n[header]Как сделать кнопку, которая вернёт на 2 и более страниц назад?[/header]<br>\nУ функции back есть значение. Например, указав, &#039;-2&#039; - пользователь возвращается на 2 страницы назад. Смотрим пример:<br>\n<br>\n[b]Код HTML и JS[/b]<br>\n<br>\n[quote]&lt;!-- вариант с кнопкой --&gt;&lt;input type=&quot;button&quot; onclick=&quot;history.back(-2); return false;&quot; value=&quot;Назад&quot;/&gt;&lt;!-- вариант ссылкой --&gt;&lt;a onclick=&quot;javascript:history.back(-2); return false;&quot;&gt;Назад&lt;/a&gt;[/quote]<br>\n<br>\nИ да - ссылкой может быть и изображение, и блок и тд.<br>\n<br>\n[b]Код HTML и JS[/b]<br>\n<br>\n[quote]&lt;a onclick=&quot;javascript:history.back();return false;&quot;&gt;     &lt;img src=&quot;image.png&quot; alt=&quot;Картинка&quot;/&gt;&lt;/a&gt;[/quote]<br>\n<br>\n[header]Как автоматически переслать пользователя назад? JS[/header]<br>\nДля этого достаточно перед закрывающим head написать<br>\n<br>\n[b]Код HTML и JS[/b]<br>\n<br>\n[quote]...&lt;script&gt;history.go(-1)&lt;/script&gt;&lt;/head&gt;[/quote]<br>\n<br>\n[header]Другие функции с history в js[/header]<br>\nОбновить, назад, вперёд.<br>\n<br>\n[b]Код HTML и JS[/b]<br>\n<br>\n[quote]&lt;a onclick=&quot;javascript:location.reload(); return false;&quot;&gt;Обновить&lt;/a&gt;&lt;a onclick=&quot;javascript:history.go(1); return false;&quot;&gt;Вперёд&lt;/a&gt;&lt;a onclick=&quot;javascript:history.back(); return false;&quot;&gt;Назад&lt;/a&gt;&lt;a onclick=&quot;javascript:history.forward(); return false;&quot;&gt;Вперёд&lt;/a&gt;[/quote]', 'Как сделать кнопку, которая вернёт на 2 и более страниц назад?<br>\n<br>\n<br>\nУ функции back есть значение. Например, указав, &#039;-2&#039; - пользователь возвращается на 2 страницы назад. Смотрим пример:', 2, 'http://www.sunhome.ru/i/wallpapers/31/gomer-simpson-kartinka.orig.jpg', 8, '2017-07-05'),
(43, 0, 'milk', '1', 'Nec fugit saepe commune no. Ad duo quodsi senserit maiestatis, ut illum consul maiestatis has, soleat vocent noluisse ei vix. Iudico aperiam contentiones cu mea. Qui ad dicta dolorem imperdiet. Cetero explicari consulatu qui ea, ea autem appellantur per.<br>\nId quidam docendi eos, te munere docendi his. Ut ius impedit nonumes placerat, nostrud elaboraret mea ut. Eu sed esse postulant disputando. Sea ex duis signiferumque. Aeterno corrumpit cu usu, cum tempor appetere honestatis ea.Nec fugit saepe commune no. Ad duo quodsi senserit maiestatis, ut illum consul maiestatis has, soleat vocent noluisse ei vix. Iudico aperiam contentiones cu mea. Qui ad dicta dolorem imperdiet. Cetero explicari consulatu qui ea, ea autem appellantur per.<br>\nId quidam docendi eos, te munere docendi his. Ut ius impedit nonumes placerat, nostrud elaboraret mea ut. Eu sed esse postulant disputando. Sea ex duis signiferumque. Aeterno corrumpit cu usu, cum tempor appetere honestatis ea.Nec fugit saepe commune no. Ad duo quodsi senserit maiestatis, ut illum consul maiestatis has, soleat vocent noluisse ei vix. Iudico aperiam contentiones cu mea. Qui ad dicta dolorem imperdiet. Cetero explicari consulatu qui ea, ea autem appellantur per.<br>\nId quidam docendi eos, te munere docendi his. Ut ius impedit nonumes placerat, nostrud elaboraret mea ut. Eu sed esse postulant disputando. Sea ex duis signiferumque. Aeterno corrumpit cu usu, cum tempor appetere honestatis ea.', '', 0, '', 8, '2017-07-05'),
(44, 0, 'milk', '2', '21 &quot;&#039;.$description.&#039;&quot; &quot;&#039;.$description.&#039;&quot; &quot;&#039;.$description.&#039;&quot; &quot;&#039;.$description.&#039;&quot; &quot;&#039;.$description.&#039;&quot; &quot;&#039;.$description.&#039;&quot; &quot;&#039;.$description.&#039;&quot; &quot;&#039;.$description.&#039;&quot; &quot;&#039;.$description.&#039;&quot; &quot;&#039;.$description.&#039;&quot; &quot;&#039;.$description.&#039;&quot; &quot;&#039;.$description.&#039;&quot; &quot;&#039;.$description.&#039;&quot; &quot;&#039;.$description.&#039;&quot; &quot;&#039;.$description.&#039;&quot; &quot;&#039;.$description.&#039;&quot; &quot;&#039;.$description.&#039;&quot; &quot;&#039;.$description.&#039;&quot;', '', 1, '', 8, '2017-07-05'),
(45, 0, 'offtop', 'Целочисленное деление в пхп - Серверные технологии', '&lt;?<br>\nif ( $_POST[&#039;addpost_f&#039;] ) {//Добавление<br>\n    captcha_valid();<br>\n    if (strlen($_POST[&#039;subject&#039;]) &lt; 150 or strlen($_POST[&#039;subject&#039;]) &gt; 5000 ) <br>\n        message(&quot;Длина сообшения должна быть от 150 до 5000 символов!&quot;);<br>\n    $title = FormChars($_POST[&#039;title&#039;]);<br>\n    $text = FormChars($_POST[&#039;subject&#039;]);<br>\n    $category = $_POST[&#039;category&#039;];<br>\n    $time = date(&quot;d.m.Y&quot;);<br>\n    $author = $_SESSION[&#039;id&#039;];<br>\n    $description = FormChars($_POST[&#039;description&#039;]);<br>\n    check_bbcode ($text);<br>\n    mysql_query(&#039;INSERT INTO posts (`category`, `title`, `text`, `author`, `description`, `date`) VALUES (&quot;&#039;.$category.&#039;&quot;, &quot;&#039;.$title.&#039;&quot;, &quot;&#039;.$text.&#039;&quot;, &quot;&#039;.$author.&#039;&quot;, &quot;&#039;.$description.&#039;&quot;, NOW())&#039;) or die(mysql_error());<br>\n    //go(&#039;post/list&#039;);<br>\n} else if ( $_POST[&#039;editpost_f&#039;] ) {//Редактирование<br>\n    captcha_valid();<br>\n    $posts = mysql_query(&quot;SELECT * FROM `posts` WHERE `author` = $_SESSION[id] AND `id` = $_POST[id]&quot;);<br>\n    if ( !mysql_num_rows($posts) AND $_SESSION[&#039;group_u&#039;]!=2) message(&quot;Ошибка!&quot;);<br>\n    else {<br>\n    if (strlen($_POST[&#039;subject&#039;]) &lt; 150 or strlen($_POST[&#039;subject&#039;]) &gt; 5000 ) <br>\n        message(&quot;Длина сообшения должна быть от 150 до 5000 символов!&quot;);<br>\n    $title = FormChars($_POST[&#039;title&#039;]);<br>\n    $text = FormChars($_POST[&#039;subject&#039;]);<br>\n    $category = $_POST[&#039;category&#039;];<br>\n    $desc = FormChars($_POST[&#039;description&#039;]);<br>\n    check_bbcode ($text);<br>\n    mysql_query(&#039;UPDATE `posts` SET `category` = &quot;&#039;.$category.&#039;&quot;, `title` = &quot;&#039;.$title.&#039;&quot;, `text` = &quot;&#039;.$text.&#039;&quot;, `description` = &quot;&#039;.$desc.&#039;&quot; WHERE `id` = &quot;&#039;.$_POST[&#039;id&#039;].&#039;&quot;&#039;);<br>\n    go(&#039;news/id/&#039;.$_POST[id].&#039;&#039;);<br>\n    }<br>\n} else if ($_POST[&#039;activepost_f&#039;]) {//Активация<br>\n    if($_SESSION[&#039;group_u&#039;]==2 OR $_SESSION[&#039;group_u&#039;]==1) {<br>\n        $active_post = mysql_fetch_assoc(mysql_query(&quot;SELECT `active` FROM `posts` WHERE  `id` = $_POST[id]&quot;));<br>\n        if ($active_post[active]==0 OR $active_post[active]==2) {<br>\n        mysql_query(&#039;UPDATE `posts` SET `active` = 1 WHERE `id` = &quot;&#039;.$_POST[&#039;id&#039;].&#039;&quot;&#039;);<br>\n        MessageSend(2, &#039;Статья #&#039;.$_POST[id].&#039; опубликованна&#039;, &#039;&#039;, 0);<br>\n        go(&#039;post/list&#039;);<br>\n        } else {<br>\n        mysql_query(&#039;UPDATE `posts` SET `active` = 2 WHERE `id` = &quot;&#039;.$_POST[&#039;id&#039;].&#039;&quot;&#039;);<br>\n        MessageSend(2, &#039;Статья #&#039;.$_POST[id].&#039; скрыта&#039;, &#039;&#039;, 0);<br>\n        go(&#039;post/list&#039;);<br>\n        }<br>\n    } else message(&#039;Ошибка&#039;);<br>\n} else if ( $_POST[&#039;deletepost_f&#039;] ) {<br>\n    $qpost = mysql_query(&quot;SELECT * FROM `posts` WHERE `author` = $_SESSION[id] AND `id` = $_POST[id]&quot;);<br>\n    if ( mysql_num_rows($qpost) OR $_SESSION[&#039;group_u&#039;]==2) {<br>\n        $sql = &quot;DELETE FROM posts WHERE id=$_POST[id]&quot;; <br>\n        mysql_query($sql) or die (mysql_error()); <br>\n        MessageSend(2, &#039;Статья #&#039;.$_POST[id].&#039; удалена&#039;, &#039;&#039;, 0);<br>\n        go(&#039;post/list&#039;);<br>\n    } else {<br>\n        message(&quot;Ошибка&quot;);<br>\n    }<br>\n}<br>\n?&gt;', 'else if ($_POST[&#039;activepost_f&#039;]) {//Активация<br>\n    if($_SESSION[&#039;group_u&#039;]==2 OR $_SESSION[&#039;group_u&#039;]==1) {<br>\n        $active_post = mysql_fetch_assoc(mysql_query(&quot;SELECT `active` FROM `posts` WHERE  `id` = $_POST[id]&quot;));<br>\n        if ($active_post[active]==0 OR $active_post[active]==2) {<br>\n        mysql_query(&#039;UPDATE `posts` SET `active` = 1 WHERE `id` = &quot;&#039;.$_POST[&#039;id&#039;].&#039;&quot;&#039;);<br>\n        MessageSend(2, &#039;Статья #&#039;.$_POST[id].&#039; опубликованна&#039;, &#039;&#039;, 0);<br>\n        go(&#039;post/list&#039;);<br>\n        } else {<br>\n        mysql_query(&#039;UPDATE `posts` SET `active` = 2 WHERE `id` = &quot;&#039;.$_POST[&#039;id&#039;].&#039;&quot;&#039;);<br>\n        MessageSend(2, &#039;Статья #&#039;.$_POST[id].&#039; скрыта&#039;, &#039;&#039;, 0);<br>\n        go(&#039;post/list&#039;);<br>\n        }', 1, 'http://www.sunhome.ru/i/wallpapers/31/gomer-simpson-kartinka.orig.jpg', 8, '2017-07-05'),
(46, 0, 'offtop', 'Тень блока (свойство box-shadow) | CSS — Примеры', '&lt;?<br>\nif ( $_POST[&#039;addpost_f&#039;] ) {//Добавление<br>\n    captcha_valid();<br>\n    if (strlen($_POST[&#039;subject&#039;]) &lt; 150 or strlen($_POST[&#039;subject&#039;]) &gt; 5000 ) <br>\n        message(&quot;Длина сообшения должна быть от 150 до 5000 символов!&quot;);<br>\n    $title = FormChars($_POST[&#039;title&#039;]);<br>\n    $text = FormChars($_POST[&#039;subject&#039;]);<br>\n    $category = $_POST[&#039;category&#039;];<br>\n    $time = date(&quot;d.m.Y&quot;);<br>\n    $author = $_SESSION[&#039;id&#039;];<br>\n    $description = FormChars($_POST[&#039;description&#039;]);<br>\n    check_bbcode ($text);<br>\n    mysql_query(&#039;INSERT INTO posts (`category`, `title`, `text`, `author`, `description`, `date`) VALUES (&quot;&#039;.$category.&#039;&quot;, &quot;&#039;.$title.&#039;&quot;, &quot;&#039;.$text.&#039;&quot;, &quot;&#039;.$author.&#039;&quot;, &quot;&#039;.$description.&#039;&quot;, NOW())&#039;) or die(mysql_error());<br>\n    //go(&#039;post/list&#039;);<br>\n} else if ( $_POST[&#039;editpost_f&#039;] ) {//Редактирование<br>\n    captcha_valid();<br>\n    $posts = mysql_query(&quot;SELECT * FROM `posts` WHERE `author` = $_SESSION[id] AND `id` = $_POST[id]&quot;);<br>\n    if ( !mysql_num_rows($posts) AND $_SESSION[&#039;group_u&#039;]!=2) message(&quot;Ошибка!&quot;);<br>\n    else {<br>\n    if (strlen($_POST[&#039;subject&#039;]) &lt; 150 or strlen($_POST[&#039;subject&#039;]) &gt; 5000 ) <br>\n        message(&quot;Длина сообшения должна быть от 150 до 5000 символов!&quot;);<br>\n    $title = FormChars($_POST[&#039;title&#039;]);<br>\n    $text = FormChars($_POST[&#039;subject&#039;]);<br>\n    $category = $_POST[&#039;category&#039;];<br>\n    $desc = FormChars($_POST[&#039;description&#039;]);<br>\n    check_bbcode ($text);<br>\n    mysql_query(&#039;UPDATE `posts` SET `category` = &quot;&#039;.$category.&#039;&quot;, `title` = &quot;&#039;.$title.&#039;&quot;, `text` = &quot;&#039;.$text.&#039;&quot;, `description` = &quot;&#039;.$desc.&#039;&quot; WHERE `id` = &quot;&#039;.$_POST[&#039;id&#039;].&#039;&quot;&#039;);<br>\n    go(&#039;news/id/&#039;.$_POST[id].&#039;&#039;);<br>\n    }<br>\n} else if ($_POST[&#039;activepost_f&#039;]) {//Активация<br>\n    if($_SESSION[&#039;group_u&#039;]==2 OR $_SESSION[&#039;group_u&#039;]==1) {<br>\n        $active_post = mysql_fetch_assoc(mysql_query(&quot;SELECT `active` FROM `posts` WHERE  `id` = $_POST[id]&quot;));<br>\n        if ($active_post[active]==0 OR $active_post[active]==2) {<br>\n        mysql_query(&#039;UPDATE `posts` SET `active` = 1 WHERE `id` = &quot;&#039;.$_POST[&#039;id&#039;].&#039;&quot;&#039;);<br>\n        MessageSend(2, &#039;Статья #&#039;.$_POST[id].&#039; опубликованна&#039;, &#039;&#039;, 0);<br>\n        go(&#039;post/list&#039;);<br>\n        } else {<br>\n        mysql_query(&#039;UPDATE `posts` SET `active` = 2 WHERE `id` = &quot;&#039;.$_POST[&#039;id&#039;].&#039;&quot;&#039;);<br>\n        MessageSend(2, &#039;Статья #&#039;.$_POST[id].&#039; скрыта&#039;, &#039;&#039;, 0);<br>\n        go(&#039;post/list&#039;);<br>\n        }<br>\n    } else message(&#039;Ошибка&#039;);<br>\n} else if ( $_POST[&#039;deletepost_f&#039;] ) {<br>\n    $qpost = mysql_query(&quot;SELECT * FROM `posts` WHERE `author` = $_SESSION[id] AND `id` = $_POST[id]&quot;);<br>\n    if ( mysql_num_rows($qpost) OR $_SESSION[&#039;group_u&#039;]==2) {<br>\n        $sql = &quot;DELETE FROM posts WHERE id=$_POST[id]&quot;; <br>\n        mysql_query($sql) or die (mysql_error()); <br>\n        MessageSend(2, &#039;Статья #&#039;.$_POST[id].&#039; удалена&#039;, &#039;&#039;, 0);<br>\n        go(&#039;post/list&#039;);<br>\n    } else {<br>\n        message(&quot;Ошибка&quot;);<br>\n    }<br>\n}<br>\n?&gt;', '&lt;?<br>\nif ( $_POST[&#039;addpost_f&#039;] ) {//Добавление<br>\n    captcha_valid();<br>\n    if (strlen($_POST[&#039;subject&#039;]) &lt; 150 or strlen($_POST[&#039;subject&#039;]) &gt; 5000 ) <br>\n        message(&quot;Длина сообшения должна быть от 150 до 5000 символов!&quot;);<br>\n    $title = FormChars($_POST[&#039;title&#039;]);<br>\n    $text = FormChars($_POST[&#039;subject&#039;]);<br>\n    $category = $_POST[&#039;category&#039;];<br>\n    $time = date(&quot;d.m.Y&quot;);<br>\n    $author = $_SESSION[&#039;id&#039;];<br>\n    $description = FormChars($_POST[&#039;description&#039;]);<br>\n    check_bbcode ($text);<br>\n    mysql_query(&#039;INSERT INTO posts (`category`, `title`, `text`, `author`, `description`, `date`) VALUES (&quot;&#039;.$category.&#039;&quot;, &quot;&#039;.$title.&#039;&quot;, &quot;&#039;.$text.&#039;&quot;, &quot;&#039;.$author.&#039;&quot;, &quot;&#039;.$description.&#039;&quot;, NOW())&#039;) or die(mysql_error());<br>\n    //go(&#039;post/list&#039;);<br>\n} else if ( $_POST[&#039;editpost_f&#039;] ) {//Редактирование<br>\n    captcha_valid();<br>\n    check_bbcode ($text);<br>\n<br>\n<br>\n        mysql_query($sql) or die (mysql_error()); <br>\n        MessageSend(2, &#039;Статья #&#039;.$_POST[id].&#039; удалена&#039;, &#039;&#039;, 0);<br>\n        go(&#039;post/list&#039;);<br>\n    } else {<br>\n        message(&quot;Ошибка&quot;);<br>\n    }<br>\n}<br>\n?&gt;', 1, 'https://mdn.mozillademos.org/files/9461/css-declaration-small.png', 8, '2017-07-05'),
(47, 0, 'eat', 'The value property contains the default value OR the value a user types in (or a value set by a script).', 'else if ($_POST[&#039;activepost_f&#039;]) {//Активация<br>\n    if($_SESSION[&#039;group_u&#039;]==2 OR $_SESSION[&#039;group_u&#039;]==1) {<br>\n        $active_post = mysql_fetch_assoc(mysql_query(&quot;SELECT `active` FROM `posts` WHERE  `id` = $_POST[id]&quot;));<br>\n        if ($active_post[active]==0 OR $active_post[active]==2) {<br>\n        mysql_query(&#039;UPDATE `posts` SET `active` = 1 WHERE `id` = &quot;&#039;.$_POST[&#039;id&#039;].&#039;&quot;&#039;);<br>\n        MessageSend(2, &#039;Статья #&#039;.$_POST[id].&#039; опубликованна&#039;, &#039;&#039;, 0);<br>\n        go(&#039;post/list&#039;);<br>\n        } else {<br>\n        mysql_query(&#039;UPDATE `posts` SET `active` = 2 WHERE `id` = &quot;&#039;.$_POST[&#039;id&#039;].&#039;&quot;&#039;);<br>\n        MessageSend(2, &#039;Статья #&#039;.$_POST[id].&#039; скрыта&#039;, &#039;&#039;, 0);<br>\n        go(&#039;post/list&#039;);<br>\n        ', 'else if ($_POST[&#039;activepost_f&#039;]) {//Активация<br>\n    if($_SESSION[&#039;group_u&#039;]==2 OR $_SESSION[&#039;group_u&#039;]==1) {<br>\n        $active_post = mysql_fetch_assoc(mysql_query(&quot;SELECT `active` FROM `posts` WHERE  `id` = $_POST[id]&quot;));<br>\n        if ($active_post[active]==0 OR $active_post[active]==2) {<br>\n        mysql_query(&#039;UPDATE `posts` SET `active` = 1 WHERE `id` = &quot;&#039;.$_POST[&#039;id&#039;].&#039;&quot;&#039;);<br>\n        MessageSend(2, &#039;Статья #&#039;.$_POST[id].&#039; опубликованна&#039;, &#039;&#039;, 0);<br>\n        go(&#039;post/list&#039;);<br>\n        } else {<br>\n        mysql_query(&#039;UPDATE `posts` SET `active` = 2 WHERE `id` = &quot;&#039;.$_POST[&#039;id&#039;].&#039;&quot;&#039;);<br>\n        MessageSend(2, &#039;Статья #&#039;.$_POST[id].&#039; скрыта&#039;, &#039;&#039;, 0);<br>\n        go(&#039;post/list&#039;);<br>\n        }', 1, 'http://podnimu-site.ru/wp-content/uploads/2014/01/заказать-статьи-для-сайта-7.jpg', 8, '2017-07-05'),
(48, 1, 'offtop', 'Привожу в пример мой код написанный для обработки страницы  редактирования PHP', '[quote]&lt;?<br>\nif ( $_POST[&#039;addpost_f&#039;] ) {//Добавление<br>\n    captcha_valid();<br>\n    if (strlen($_POST[&#039;subject&#039;]) &lt; 150 or strlen($_POST[&#039;subject&#039;]) &gt; 5000 ) <br>\n        message(&quot;Длина сообшения должна быть от 150 до 5000 символов!&quot;);<br>\n    $title = FormChars($_POST[&#039;title&#039;]);<br>\n    $text = FormChars($_POST[&#039;subject&#039;]);<br>\n    $category = $_POST[&#039;category&#039;];<br>\n    $time = date(&quot;d.m.Y&quot;);<br>\n    $author = $_SESSION[&#039;id&#039;];<br>\n    $description = FormChars($_POST[&#039;description&#039;]);<br>\n    check_bbcode ($text);<br>\n    mysql_query(&#039;INSERT INTO posts (`category`, `title`, `text`, `author`, `description`, `date`) VALUES (&quot;&#039;.$category.&#039;&quot;, &quot;&#039;.$title.&#039;&quot;, &quot;&#039;.$text.&#039;&quot;, &quot;&#039;.$author.&#039;&quot;, &quot;&#039;.$description.&#039;&quot;, NOW())&#039;) or die(mysql_error());<br>\n    go(&#039;post/list&#039;);<br>\n} else if ( $_POST[&#039;editpost_f&#039;] ) {//Редактирование<br>\n    captcha_valid();<br>\n    $posts = mysql_query(&quot;SELECT * FROM `posts` WHERE `author` = $_SESSION[id] AND `id` = $_POST[id]&quot;);<br>\n    if ( !mysql_num_rows($posts) AND $_SESSION[&#039;group_u&#039;]!=2) message(&quot;Ошибка!&quot;);<br>\n    else {<br>\n    if (strlen($_POST[&#039;subject&#039;]) &lt; 150 or strlen($_POST[&#039;subject&#039;]) &gt; 5000 ) <br>\n        message(&quot;Длина сообшения должна быть от 150 до 5000 символов!&quot;);<br>\n    $title = FormChars($_POST[&#039;title&#039;]);<br>\n    $text = FormChars($_POST[&#039;subject&#039;]);<br>\n    $category = $_POST[&#039;category&#039;];<br>\n    $desc = FormChars($_POST[&#039;description&#039;]);<br>\n    check_bbcode ($text);<br>\n    mysql_query(&#039;UPDATE `posts` SET `category` = &quot;&#039;.$category.&#039;&quot;, `title` = &quot;&#039;.$title.&#039;&quot;, `text` = &quot;&#039;.$text.&#039;&quot;, `description` = &quot;&#039;.$desc.&#039;&quot; WHERE `id` = &quot;&#039;.$_POST[&#039;id&#039;].&#039;&quot;&#039;);<br>\n    go(&#039;news/id/&#039;.$_POST[id].&#039;&#039;);<br>\n    }<br>\n} else if ($_POST[&#039;activepost_f&#039;]) {//Активация<br>\n    if($_SESSION[&#039;group_u&#039;]==2 OR $_SESSION[&#039;group_u&#039;]==1) {<br>\n        $active_post = mysql_fetch_assoc(mysql_query(&quot;SELECT `active` FROM `posts` WHERE  `id` = $_POST[id]&quot;));<br>\n        if ($active_post[active]==0 OR $active_post[active]==2) {<br>\n        mysql_query(&#039;UPDATE `posts` SET `active` = 1 WHERE `id` = &quot;&#039;.$_POST[&#039;id&#039;].&#039;&quot;&#039;);<br>\n        MessageSend(2, &#039;Статья #&#039;.$_POST[id].&#039; опубликованна&#039;, &#039;&#039;, 0);<br>\n        go(&#039;post/list&#039;);<br>\n        } else {<br>\n        mysql_query(&#039;UPDATE `posts` SET `active` = 2 WHERE `id` = &quot;&#039;.$_POST[&#039;id&#039;].&#039;&quot;&#039;);<br>\n        MessageSend(2, &#039;Статья #&#039;.$_POST[id].&#039; скрыта&#039;, &#039;&#039;, 0);<br>\n        go(&#039;post/list&#039;);<br>\n        }<br>\n    } else message(&#039;Ошибка&#039;);<br>\n} else if ( $_POST[&#039;deletepost_f&#039;] ) {<br>\n    $qpost = mysql_query(&quot;SELECT * FROM `posts` WHERE `author` = $_SESSION[id] AND `id` = $_POST[id]&quot;);<br>\n    if ( mysql_num_rows($qpost) OR $_SESSION[&#039;group_u&#039;]==2) {<br>\n        $sql = &quot;DELETE FROM posts WHERE id=$_POST[id]&quot;; <br>\n        mysql_query($sql) or die (mysql_error()); <br>\n        MessageSend(2, &#039;Статья #&#039;.$_POST[id].&#039; удалена&#039;, &#039;&#039;, 0);<br>\n        go(&#039;post/list&#039;);<br>\n    } else {<br>\n        message(&quot;Ошибка&quot;);<br>\n    }<br>\n}<br>\n?&gt;[/quote]', 'if (strlen($_POST[&#039;subject&#039;]) &lt; 150 or strlen($_POST[&#039;subject&#039;]) &gt; 5000 ) <br>\n        message(&quot;Длина сообшения должна быть от 150 до 5000 символов!&quot;);<br>\n    $title = FormChars($_POST[&#039;title&#039;]);<br>\n    $text = FormChars($_POST[&#039;subject&#039;]);<br>\n    $category = $_POST[&#039;category&#039;];<br>\n    $desc = FormChars($_POST[&#039;description&#039;]);<br>\n    check_bbcode ($text);<br>\n    mysql_query(&#039;UPDATE `posts` SET `category` = &quot;&#039;.$category.&#039;&quot;, `title` = &quot;&#039;.$title.&#039;&quot;, `text` = &quot;&#039;.$text.&#039;&quot;, `description` = &quot;&#039;.$desc.&#039;&quot; WHERE `id` = &quot;&#039;.$_POST[&#039;id&#039;].&#039;&quot;&#039;);<br>\n    go(&#039;news/id/&#039;.$_POST[id].&#039;&#039;);', 119, 'https://habrastorage.org/files/69a/ba5/d2f/69aba5d2f86b4100a49ea71dfafb190e.jpg', 8, '2017-07-05'),
(49, 2, 'love', 'Rsync - молниеносный деплой средних и крупных проектов (gulp-rsync)', '1. Настройка gulp-rsync в MacOS и Linux1.1 Настройка Gulp таскаНастройка gulp-rsync в системах MacOS и Linux довольно проста и заключается в выполнении нескольких несложных инструкций.<br>\nДля начала убедитесь, что у вас установлена последняя стабильная версия Node.js и установлен gulp глобально.<br>\nПодключите к вашему Gulp-проекту rsync:<br>\n[list][*]code[/*][*]source[/*][/list][list=1][*]npm i gulp-rsync gulp --save-dev[/*][/list=1]<br>\nИ создайте новый таск &quot;deploy&quot;<br>\n[list][*]code[/*][*]source[/*][/list][list=1][*]var gulp  = require(&#039;gulp&#039;),[/*][*]        rsync = require(&#039;gulp-rsync&#039;);[/*][*][/*][*]gulp.task(&#039;deploy&#039;, [&#039;deploy&#039;],function() {[/*][*]    return gulp.src(&#039;yousite/**&#039;)[/*][*]    .pipe(rsync({[/*][*]        root: &#039;yousite/&#039;,[/*][*]        hostname: &#039;sshusername@yousite.com&#039;,[/*][*]        destination: &#039;yousite/public_html/&#039;,[/*][*]        archive: true,[/*][*]        silent: false,[/*][*]        compress: true[/*][*]    }));[/*][*]});[/*][/list=1][img]http://webdesign-master.ru/img/blog/tools/gulp-rsync/windows-preferences.png[/img]<br>\n1.2 Настройка SSH Аутентификации по открытому ключуГенерация ключа на локальном компьютере:<br>\nСоздайте директорию для SSH, в том случае, если она ещё не создана (знак доллара копировать не нужно):<br>\n[list][*]code[/*][*]source[/*][/list][list=1][*]$ mkdir -p ~/.ssh[/*][*]$ chmod 700 ~/.ssh[/*][/list=1]<br>\nЗайдите в созданную папку и сгенерируйте ключ (на все вопросы - жмём Enter):<br>\n[list][*]code[/*][*]source[/*][/list][list=1][*]$ cd ~/.ssh[/*][*]$ ssh-keygen[/*][/list=1]<br>\nСкопируйте получившийся ключ id_rsa.pub на ваш хостинг или сервер:<br>\n[list][*]code[/*][*]source[/*][/list][list=1][*]$ scp -p id_rsa.pub sshusername@yousite.com:~[/*][/list=1]', '', 1, 'http://webdesign-master.ru/img/blog/tools/gulp-rsync/gulp-rsync.jpg', 3, '2017-07-08');

-- --------------------------------------------------------

--
-- Структура таблицы `reviews`
--

CREATE TABLE `reviews` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `reviews`
--

INSERT INTO `reviews` (`id`, `uid`, `text`) VALUES
(1, 2, 'Это вот такой отзыв!\n'),
(2, 3, 'Всё супер!\n'),
(3, 3, 'отзыв купленный'),
(6, 3, 'Вот разработчики добавили счётчик букв'),
(10, 3, '[url=irer.qwe]name=dawew.ew][/url]'),
(11, 3, '<a href=\"/123123\"> 123123</a>'),
(15, 3, '//////////////'),
(16, 3, '[audio]/123/123/123[/audio]'),
(17, 3, '[b]/12/123/12[/b]'),
(18, 3, '[url=http://phprun1/reviews1]name=http://phprun1/reviews[/url]'),
(19, 3, '[url=http://phprun1/reviews1]name=http://phprun1/reviews343][/url]');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `nickname` varchar(20) NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL,
  `protected` int(11) NOT NULL,
  `name` text NOT NULL,
  `sur_name` text NOT NULL,
  `avatar` text NOT NULL,
  `country` text NOT NULL,
  `year_birth` text NOT NULL,
  `group_u` int(1) NOT NULL,
  `reg_date` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `nickname`, `email`, `password`, `protected`, `name`, `sur_name`, `avatar`, `country`, `year_birth`, `group_u`, `reg_date`) VALUES
(1, 'blueKIT', 'tolik-tolik-99@mail.ru', '1a9058647f28ac1402a12963d9aa58b3', 0, '', '', '', '', '', 0, ''),
(2, 'joskyPasan', 'ya.tolik-a@yandex.ru', '4297f44b13955235245b2497399d7a93', 0, 'Толяша', 'Антоненко', '/1/2', 'Russian', '1999', 1, ''),
(3, 'mymandarinchik', 'mandarin.tolik.99@gmail.ru', '4297f44b13955235245b2497399d7a93', 0, 'Анатолий', 'Антоненко', '/1/3', 'Канада', '1999', 2, ''),
(4, 'anko', 'qweqwe@qweqw.qwe', '4297f44b13955235245b2497399d7a93', 0, 'Егор', '', '', '', '', 0, '2017-02-04 14:01:45'),
(5, 'InShala', 'a.tolik-aa@yanadex.ru', 'ad2c5a7094b9388c982df7649a44a637', 0, '', '', '', '', '', 0, '2017-05-14 02:19:09'),
(8, 'panchoVilla', 'dolby.crack@fail.com', '4297f44b13955235245b2497399d7a93', 0, '', '', '', '', '', 0, '2017-07-02 14:12:10');

-- --------------------------------------------------------

--
-- Структура таблицы `u_blog`
--

CREATE TABLE `u_blog` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `text` text NOT NULL,
  `date` text NOT NULL,
  `likes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `u_blog`
--

INSERT INTO `u_blog` (`id`, `uid`, `text`, `date`, `likes`) VALUES
(5, 3, 'Вот такой пост в блог. Тест блога\n', '26.01.17', 0),
(6, 2, 'Вот такая запись в блоге. Тест инъекций: <b>123</b> ', '26.01.17', 0),
(7, 2, 'Статья в блог 2', '10.02.17', 0),
(9, 5, '1 запись добавленна', '16.05.17', 0),
(10, 3, 'Юху! Работы продолжаются ! Сделана нормальное удаление постов/комментариев ', '18.05.17', 0),
(11, 3, 'Работа идёт над просмотрами', '19.05.17', 0),
(12, 3, 'Готовы функции добавление/редактирование статей. /post\nа также сделаны фишки для админов и модераторов ', '03.07.17', 0),
(13, 3, 'Идёт работа надо дизайном. Полностью готовы страницы: Статьи, Просмотр статей, Вход/регистрация.', '15.07.17', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `views`
--

CREATE TABLE `views` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `date` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `views`
--

INSERT INTO `views` (`id`, `uid`, `pid`, `date`) VALUES
(19, 3, 28, '27.06.17'),
(20, 3, 27, '27.06.17'),
(21, 3, 23, '27.06.17'),
(22, 3, 39, '02.07.17'),
(23, 3, 1, '02.07.17'),
(24, 3, 41, '02.07.17'),
(25, 3, 2, '02.07.17'),
(26, 3, 40, '02.07.17'),
(27, 3, 38, '03.07.17'),
(28, 3, 3, '05.07.17'),
(29, 8, 2, '05.07.17'),
(30, 8, 3, '05.07.17'),
(31, 8, 41, '05.07.17'),
(32, 8, 42, '05.07.17'),
(33, 8, 48, '05.07.17'),
(34, 3, 46, '05.07.17'),
(35, 3, 48, '05.07.17'),
(36, 3, 47, '05.07.17'),
(37, 3, 42, '05.07.17'),
(38, 3, 45, '05.07.17'),
(39, 3, 44, '08.07.17'),
(40, 3, 49, '08.07.17'),
(41, 3, 9, '15.07.17'),
(42, 3, 10, '15.07.17'),
(43, 3, 4, '16.07.17'),
(44, 3, 50, '27.07.17');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `dialog`
--
ALTER TABLE `dialog`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `friends`
--
ALTER TABLE `friends`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `loader`
--
ALTER TABLE `loader`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `mailsubscribers`
--
ALTER TABLE `mailsubscribers`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `u_blog`
--
ALTER TABLE `u_blog`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `views`
--
ALTER TABLE `views`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT для таблицы `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT для таблицы `dialog`
--
ALTER TABLE `dialog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT для таблицы `friends`
--
ALTER TABLE `friends`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT для таблицы `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;
--
-- AUTO_INCREMENT для таблицы `loader`
--
ALTER TABLE `loader`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
--
-- AUTO_INCREMENT для таблицы `mailsubscribers`
--
ALTER TABLE `mailsubscribers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT для таблицы `message`
--
ALTER TABLE `message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
--
-- AUTO_INCREMENT для таблицы `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
--
-- AUTO_INCREMENT для таблицы `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT для таблицы `u_blog`
--
ALTER TABLE `u_blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT для таблицы `views`
--
ALTER TABLE `views`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
