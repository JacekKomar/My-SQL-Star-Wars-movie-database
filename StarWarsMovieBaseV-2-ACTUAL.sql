-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: db
-- Czas generowania: 11 Sty 2023, 15:50
-- Wersja serwera: 5.7.40
-- Wersja PHP: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `StarWarsMovieBase`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `Era`
--

CREATE TABLE `Era` (
  `Id` int(11) NOT NULL,
  `Title` text COLLATE ucs2_polish_ci NOT NULL,
  `Era` text COLLATE ucs2_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=ucs2 COLLATE=ucs2_polish_ci;

--
-- Zrzut danych tabeli `Era`
--

INSERT INTO `Era` (`Id`, `Title`, `Era`) VALUES
(1, 'The Phantom Menace', 'Fall of the Jedi'),
(2, 'Attack of the Clones', 'Fall of the Jedi'),
(3, 'Revenge of the Sith', 'Fall of the Jedi'),
(4, 'A New Hope', 'Rebellion era'),
(5, 'The Empire Strikes Back', 'Rebellion era'),
(6, 'Return of the Jedi', 'Rebellion era'),
(7, 'The Force Awakens', 'Rise of the First Order'),
(8, 'The Last Jedi', 'Rise of the First Order'),
(9, 'The Rise of Skywalker', 'Rise of the First Order'),
(10, 'Rogue One', 'Rebellion era'),
(11, 'Solo', 'Reign of the Empire'),
(12, 'The Mandalorian', 'The New Republic'),
(13, 'The Book of Boba Fett', 'The New Republic'),
(14, 'Obi-Wan Kenobi', 'Reign of the Empire'),
(15, 'Andor', 'Rebellion era'),
(16, 'The Clone Wars', 'Fall of the Jedi'),
(17, 'Rebels', 'Rebellion era'),
(18, 'The Bad Batch', 'Reign of the Empire'),
(19, 'Tales of the Jedi', 'Fall of the Jedi');

-- --------------------------------------------------------

--
-- Zastąpiona struktura widoku `GalacticEmpireMovies`
-- (Zobacz poniżej rzeczywisty widok)
--
CREATE TABLE `GalacticEmpireMovies` (
`Title` varchar(200)
,`Genre` text
,`Director` text
,`Era` text
,`Trilogy` int(11)
);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `InformationAboutMovie`
--

CREATE TABLE `InformationAboutMovie` (
  `LocalId` int(11) NOT NULL,
  `Id` int(11) NOT NULL,
  `Director` text COLLATE ucs2_polish_ci NOT NULL,
  `Genre` text COLLATE ucs2_polish_ci NOT NULL,
  `Trilogy` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=ucs2 COLLATE=ucs2_polish_ci;

--
-- Zrzut danych tabeli `InformationAboutMovie`
--

INSERT INTO `InformationAboutMovie` (`LocalId`, `Id`, `Director`, `Genre`, `Trilogy`) VALUES
(1, 1, 'George Lucas', 'Live action', 2),
(2, 2, 'George Lucas', 'Live action', 2),
(3, 3, 'George Lucas', 'Live action', 2),
(4, 4, 'George Lucas', 'Live action', 1),
(5, 5, 'George Lucas', 'Live action', 1),
(6, 6, 'George Lucas', 'Live action', 1),
(7, 7, 'J.J. Abrams', 'Live action', 3),
(8, 8, 'Rian Johnson', 'Live action', 3),
(9, 9, 'J.J. Abrams', 'Live action', 3),
(10, 10, 'Gareth Edwards', 'Live action', NULL),
(11, 11, 'Ron Howard', 'Live action', NULL),
(12, 12, 'Jon Favreau', 'Live action series', NULL),
(13, 13, 'Jon Favreau', 'Live action series', NULL),
(14, 14, 'Deborah Chow', 'Live action series', NULL),
(15, 15, 'Tony Gilroy', 'Live action series', NULL),
(16, 16, 'Dave Filoni', 'Animation series', NULL),
(17, 17, 'Dave Filoni', 'Animation series', NULL),
(18, 18, 'Dave Filoni', 'Animation series', NULL),
(19, 19, 'Dave Filoni', 'Animation series', NULL);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `Movie`
--

CREATE TABLE `Movie` (
  `Id` int(11) NOT NULL,
  `Title` varchar(200) COLLATE ucs2_polish_ci NOT NULL,
  `Date` int(11) NOT NULL,
  `InDisneyPlus` text COLLATE ucs2_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=ucs2 COLLATE=ucs2_polish_ci;

--
-- Zrzut danych tabeli `Movie`
--

INSERT INTO `Movie` (`Id`, `Title`, `Date`, `InDisneyPlus`) VALUES
(1, 'The Phantom Menace', 1999, 'Available'),
(2, 'Attack of the Clones', 2002, 'Available'),
(3, 'Revenge of the Sith', 2005, 'Available'),
(4, 'A New Hope', 1977, 'Available'),
(5, 'The Empire Strikes Back', 1980, 'available'),
(6, 'Return of the Jedi', 1983, 'Available'),
(7, 'The Force Awakens', 2015, 'Available'),
(8, 'The Last Jedi', 2017, 'Available'),
(9, 'The Rise of Skywalker', 2019, 'Available'),
(10, 'Rogue One', 2016, 'Available'),
(11, 'Solo', 2018, 'Available'),
(12, 'The Mandalorian', 2019, 'Available'),
(13, 'The Book of Boba Fett', 2021, 'Available'),
(14, 'Obi-Wan Kenobi', 2022, 'Available'),
(15, 'Andor', 2022, 'Available'),
(16, 'The Clone Wars', 2008, 'Unavailable'),
(17, 'Rebels', 2014, 'Unavailable'),
(18, 'The Bad Batch', 2021, 'Available'),
(19, 'Tales of the Jedi', 2022, 'Available');

-- --------------------------------------------------------

--
-- Zastąpiona struktura widoku `MoviesCreatedByDaveFiloni`
-- (Zobacz poniżej rzeczywisty widok)
--
CREATE TABLE `MoviesCreatedByDaveFiloni` (
`Title` varchar(200)
,`Era` text
,`Date` int(11)
,`InDisneyPlus` text
);

-- --------------------------------------------------------

--
-- Zastąpiona struktura widoku `OnlyTrilogyMovie`
-- (Zobacz poniżej rzeczywisty widok)
--
CREATE TABLE `OnlyTrilogyMovie` (
`Title` varchar(200)
,`Date` int(11)
,`Director` text
,`Era` text
,`Trilogy` int(11)
);

-- --------------------------------------------------------

--
-- Zastąpiona struktura widoku `SeriesAvailableOnDisneyPlus`
-- (Zobacz poniżej rzeczywisty widok)
--
CREATE TABLE `SeriesAvailableOnDisneyPlus` (
`Title` varchar(200)
,`InDisneyPlus` text
,`Era` text
,`Genre` text
);

-- --------------------------------------------------------

--
-- Struktura widoku `GalacticEmpireMovies`
--
DROP TABLE IF EXISTS `GalacticEmpireMovies`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `GalacticEmpireMovies`  AS SELECT `Movie`.`Title` AS `Title`, `InformationAboutMovie`.`Genre` AS `Genre`, `InformationAboutMovie`.`Director` AS `Director`, `Era`.`Era` AS `Era`, `InformationAboutMovie`.`Trilogy` AS `Trilogy` FROM ((`Movie` join `InformationAboutMovie` on((`Movie`.`Id` = `InformationAboutMovie`.`Id`))) join `Era` on((`Movie`.`Id` = `Era`.`Id`))) WHERE (`Era`.`Era` in ('Rebellion era','Reign of the Empire')) ORDER BY `Era`.`Era` AS `DESCdesc` ASC  ;

-- --------------------------------------------------------

--
-- Struktura widoku `MoviesCreatedByDaveFiloni`
--
DROP TABLE IF EXISTS `MoviesCreatedByDaveFiloni`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `MoviesCreatedByDaveFiloni`  AS SELECT `Movie`.`Title` AS `Title`, `Era`.`Era` AS `Era`, `Movie`.`Date` AS `Date`, `Movie`.`InDisneyPlus` AS `InDisneyPlus` FROM ((`Movie` join `Era` on((`Movie`.`Id` = `Era`.`Id`))) join `InformationAboutMovie` on((`Movie`.`Id` = `InformationAboutMovie`.`Id`))) WHERE (`InformationAboutMovie`.`Director` = 'Dave Filoni') ORDER BY `Movie`.`Date` ASC  ;

-- --------------------------------------------------------

--
-- Struktura widoku `OnlyTrilogyMovie`
--
DROP TABLE IF EXISTS `OnlyTrilogyMovie`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `OnlyTrilogyMovie`  AS SELECT `Movie`.`Title` AS `Title`, `Movie`.`Date` AS `Date`, `InformationAboutMovie`.`Director` AS `Director`, `Era`.`Era` AS `Era`, `InformationAboutMovie`.`Trilogy` AS `Trilogy` FROM ((`Movie` join `Era` on((`Movie`.`Title` = `Era`.`Title`))) join `InformationAboutMovie` on((`Movie`.`Id` = `InformationAboutMovie`.`Id`))) WHERE (`InformationAboutMovie`.`Trilogy` is not null) ORDER BY `InformationAboutMovie`.`Trilogy` ASC  ;

-- --------------------------------------------------------

--
-- Struktura widoku `SeriesAvailableOnDisneyPlus`
--
DROP TABLE IF EXISTS `SeriesAvailableOnDisneyPlus`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `SeriesAvailableOnDisneyPlus`  AS SELECT `Movie`.`Title` AS `Title`, `Movie`.`InDisneyPlus` AS `InDisneyPlus`, `Era`.`Era` AS `Era`, `InformationAboutMovie`.`Genre` AS `Genre` FROM ((`Movie` join `Era` on((`Movie`.`Id` = `Era`.`Id`))) join `InformationAboutMovie` on((`Movie`.`Id` = `InformationAboutMovie`.`Id`))) WHERE (`InformationAboutMovie`.`Genre` in ('Live action series','Animation series')) HAVING (`Movie`.`InDisneyPlus` = 'Available') ORDER BY `InformationAboutMovie`.`Genre` AS `DESCdesc` ASC  ;

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `Era`
--
ALTER TABLE `Era`
  ADD PRIMARY KEY (`Id`);

--
-- Indeksy dla tabeli `InformationAboutMovie`
--
ALTER TABLE `InformationAboutMovie`
  ADD PRIMARY KEY (`Id`);

--
-- Indeksy dla tabeli `Movie`
--
ALTER TABLE `Movie`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `Era`
--
ALTER TABLE `Era`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT dla tabeli `InformationAboutMovie`
--
ALTER TABLE `InformationAboutMovie`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT dla tabeli `Movie`
--
ALTER TABLE `Movie`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `InformationAboutMovie`
--
ALTER TABLE `InformationAboutMovie`
  ADD CONSTRAINT `InformationAboutMovie_ibfk_1` FOREIGN KEY (`Id`) REFERENCES `Movie` (`Id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
