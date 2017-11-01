-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Окт 28 2017 г., 18:31
-- Версия сервера: 5.7.16
-- Версия PHP: 7.1.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `users`
--

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `login` varchar(32) NOT NULL,
  `password` varchar(32) NOT NULL,
  `salt` varchar(32) NOT NULL,
  `cookie` varchar(32) NOT NULL,
  `status` int(32) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `login`, `password`, `salt`, `cookie`, `status`) VALUES
(12, 'ded', 'd', '', '', NULL),
(13, 'kekss', 'lol', '', '', NULL),
(14, 'саша', '968da976a92593b8ba155d8692bb643c', '=', '', NULL),
(15, 'aaaaa', 'de057e0eb12651ac54921bb0b100cf73', '%', '', NULL),
(16, 'ssd', 'c5eceba3bbdbeb0550f0884ddbc9171d', 'i!*9S4#+', '', NULL),
(17, 'masa', '05bb58c3fec33f2864db59c679163477', 'f*?S6xp~', '', NULL),
(18, 'curi', 'a81202338f3f73152ca2cebaf9b575f3', '--E6~J.b', '', NULL),
(19, 'kik', 'e6f0e2b901ee9889e6fb25758d2e937b', 'sO2^Z?bV', 'lJO`d*GI', NULL),
(20, 'батя', 'af2c6b241b16726b09796c812a723953', '&g!}-R#v', '', NULL),
(21, 'ffd', '9d362c7de753c690614c3de63241ec80', '|#)TR)p#', '', NULL),
(22, 'aas', 'b906ecfd680dceb8142fbcf3b8126483', '#,.gP}Z)', '', NULL),
(23, 'heh', '9cb514302b23f93b65e7721ece98fc3f', 'weTA[bod', '', NULL),
(24, 'lolik', '23672817355415b862c6eecd8b38f7ba', 'M|vC1l?+', '', NULL),
(25, 'd', '7337bd74f188023755a41cba5a1da6ef', '}z2zK=%}', '', NULL),
(26, 'huh', '0d60bfe35145ee2d286281612997a5e4', '`0Qvkr!T', '', NULL),
(27, 'fg', '2ede516dcfbc0ccae24fa04b9590609e', ';', '', NULL),
(28, 'dc', '84e2232944f379979206d226def9489e', 'q%a9W[F_', '', NULL),
(29, 'kkk', '143832706970a9fced8b9dbc3989c64c', 'c2l9{yyU', '', NULL),
(30, 'root', '6cfa5c260898d6ee50fe1f4ac683ddd8', '5Peg8(7<', '', NULL),
(31, 'f', '10cfb11ec065cd42c4eb86c6a133e5b5', '06{YaeT', '', NULL),
(32, 'v', '0fde8c33e8ad1085eab8b7b866d51011', 'F!DSC.!j', '', NULL),
(33, 'iko', 'de02352189c143db89b681d536ec4b60', 'x]Vo;Hwk', 'topkek', NULL),
(34, 'topkok', '6e448356d53c3f4039f528407f93fae2', 'EiTtD&lf', 'topkek', NULL),
(35, 'bn', '64340766355c48d8b46403ddb0ae3b3b', 'CQyEU{2M', '', NULL),
(36, 'lolkek', '857edf6cbfd358304fb9ca2199bf0dbf', '\'NwcE^L', '', NULL),
(37, 'pp', '45fda8710450e2d127eff91070e5a92f', '$sMBDn!?', '_Zc\'+ddx', NULL),
(38, 'ff', 'edc6a5acc3904cab444887c4cfbaace4', '*V%#t2@V', ',lV!=pex', NULL),
(39, 'x', '17af23dc993fc938efb0e7f7546bfcf5', 'VfgiU;Fe', 'p0apJg,]', NULL),
(40, 'lp', 'bd4bef6bd95b5460bcc409e7354839ed', 'U,v]%J&W', 'Q:Vd%^;Y', NULL),
(41, 'lo', '3d6c350d87d4966da97ef54f6d57cdc3', 'XGwc^l-h', 'W@{sZ]Qj', NULL),
(42, 'klk', '281cca6f9b884579c870600cf1446cc9', '/QJ0;bVf', 'H}Up!I+n', NULL),
(43, 'ppp', 'c22aba6be2111f7d0e24604a6afd68c6', ',NxaS[|.', '', NULL),
(44, 'ccc', 'dd132877410e0b8cf85b075f84165113', '#$IBo!MT', 'hGoxz]`#', NULL),
(45, 'nnn', 'eabb4161c03d8cd079345730845ef674', '8I2De^.b', '', NULL),
(46, 'non', '003329d611b30c85ae63295c0f3d5c6b', 'kt-nL\'-h', '2}gV#z1w', NULL),
(47, 'tan', 'd88f90887edb435a1d0cdbc01021c1df', 'jYQra)-Y', '>YzS[q,3', NULL),
(48, 'kok', 'fb585941d20a0f2bdd26cf3a520d62cb', 's%.d.ds', '', NULL),
(49, 'lolipop', '56857206e74151e3d4a4768803ecbafa', '.6dE/3Rw', '`/_M7`t', NULL),
(50, 'fh', '8f528e9d63af81b7411f728615236ad1', '$vIiL>CF', 'c&A-374r', NULL),
(51, 'jjj', '08922989c71f93a731624a15e52c3892', 'oC%8R[f%', 'u:xL+163', NULL),
(52, 'qwe', 'be996f28fe8125ed92404426270ad436', ']k}Ov5$|', 'b^4N}D:y', NULL),
(53, '123', '2d39b501db89ece714c90a597fb9bd2a', '|BnY2em>', 't1({(+>%', NULL),
(54, 'ghgh', 'cd9139834c4535885de244baadc807fd', '5`sF2p>V', '(|H&\'2D(', NULL),
(55, '1', '9b44c0b1542ec470c96d601f34b97a5a', 'MzMOG9>Z', 'At300)\'_', NULL),
(56, '2', 'e112ddb3f445408aca26a4beebdfa78b', 'Q{kA0$,}', 'z#]U`;^x', NULL),
(57, '5', '76dbd7681966d57049f5e94422d7ce2d', 'TP==cRaV', 'cNL4rAAD', NULL),
(58, 'mm', '3e16c915a6e39c6f14ac71d30264a3ff', 'L=nu~&j1', '', NULL),
(59, 'login', '7b3c66c489ebb5324798f0c0ffc86459', '\'><N9#{f', '', NULL),
(60, 'gg', '57aac8680f70045fb0f0dfae6b83687f', 'bb3M`v]9', '', NULL),
(61, '3', 'c2543152ac5877540c2d9cd989fdbc6e', 't>EX%&HR', 'geA3s&lB', 3),
(62, 'kekermaker', '8741206222caf34ef7338a4e0db93def', '?(Yz.o^k', '', 1),
(63, 'kokix', '38a44cb8fe0b96099c1b3b0bf8ca5f9a', 't5L]e[81', 'yY,uA?C8', 1);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
