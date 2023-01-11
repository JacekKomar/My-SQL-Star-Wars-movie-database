-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: db
-- Czas generowania: 11 Sty 2023, 13:26
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
(0, 1, 'George Lucas', 'Live action', 2),
(0, 2, 'George Lucas', 'Live action', 2),
(0, 3, 'George Lucas', 'Live action', 2),
(0, 4, 'George Lucas', 'Live action', 1),
(0, 5, 'George Lucas', 'Live action', 1),
(0, 6, 'George Lucas', 'Live action', 1),
(0, 7, 'J.J. Abrams', 'Live action', 3),
(0, 8, 'Rian Johnson', 'Live action', 3),
(0, 9, 'J.J. Abrams', 'Live action', 3),
(0, 10, 'Gareth Edwards', 'Live action', NULL),
(0, 11, 'Ron Howard', 'Live action', NULL),
(0, 12, 'Jon Favreau', 'Live action series', NULL),
(0, 13, 'Jon Favreau', 'Live action series', NULL),
(0, 14, 'Deborah Chow', 'Live action series', NULL),
(0, 15, 'Tony Gilroy', 'Live action series', NULL),
(0, 16, 'Dave Filoni', 'Animation series', NULL),
(0, 17, 'Dave Filoni', 'Animation series', NULL),
(0, 18, 'Dave Filoni', 'Animation series', NULL),
(0, 19, 'Dave Filoni', 'Animation series', NULL);

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
