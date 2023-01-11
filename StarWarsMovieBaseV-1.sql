-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: db
-- Czas generowania: 11 Sty 2023, 11:11
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
-- Struktura tabeli dla tabeli `Movie`
--

CREATE TABLE `Movie` (
  `Id` int(11) NOT NULL,
  `Title` varchar(200) COLLATE ucs2_polish_ci NOT NULL,
  `Date` int(11) NOT NULL,
  `Era` text COLLATE ucs2_polish_ci NOT NULL,
  `InDisneyPlus` text COLLATE ucs2_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=ucs2 COLLATE=ucs2_polish_ci;

--
-- Zrzut danych tabeli `Movie`
--

INSERT INTO `Movie` (`Id`, `Title`, `Date`, `Era`, `InDisneyPlus`) VALUES
(1, 'The Phantom Menace', 1999, 'Fall of the Jedi', 'Available'),
(2, 'Attack of the Clones', 2002, 'Fall of the Jedi', 'Available'),
(3, 'Revenge of the Sith', 2005, 'Fall of the Jedi', 'Available'),
(4, 'A New Hope', 1977, 'Rebellion era', 'Available'),
(5, 'The Empire Strikes Back', 1980, 'Rebellion era', 'available'),
(6, 'Return of the Jedi', 1983, 'Rebellion era', 'Available'),
(7, 'The Force Awakens', 2015, 'Rise of the First Order', 'Available'),
(8, 'The Last Jedi', 2017, 'Rise of the First Order', 'Available'),
(9, 'The Rise of Skywalker', 2019, 'Rise of the First Order', 'Available'),
(10, 'Rogue One', 2016, 'Rebellion era', 'Available'),
(11, 'Solo', 2018, 'Reign of the Empire', 'Available'),
(12, 'The Mandalorian', 2019, 'The New Republic', 'Available'),
(13, 'The Book of Boba Fett', 2021, 'The New Republic', 'Available'),
(14, 'Obi-Wan Kenobi', 2022, 'Reign of the Empire', 'Available'),
(15, 'Andor', 2022, 'Rebellion era', 'Available'),
(16, 'The Clone Wars', 2008, 'Fall of the Jedi', 'Unavailable'),
(17, 'Rebels', 2014, 'Rebellion era', 'Unavailable'),
(18, 'The Bad Batch', 2021, 'Reign of the Empire', 'Available'),
(19, 'Tales of the Jedi', 2022, 'Fall of the Jedi', 'Available');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `Movie`
--
ALTER TABLE `Movie`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `Movie`
--
ALTER TABLE `Movie`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
