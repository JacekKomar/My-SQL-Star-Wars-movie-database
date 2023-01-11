-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: db
-- Czas generowania: 11 Sty 2023, 12:39
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
-- Struktura tabeli dla tabeli `InformationAboutMovie`
--

CREATE TABLE `InformationAboutMovie` (
  `Id` int(11) NOT NULL,
  `Director` text COLLATE ucs2_polish_ci NOT NULL,
  `Genre` text COLLATE ucs2_polish_ci NOT NULL,
  `Trilogy` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=ucs2 COLLATE=ucs2_polish_ci;

--
-- Zrzut danych tabeli `InformationAboutMovie`
--

INSERT INTO `InformationAboutMovie` (`Id`, `Director`, `Genre`, `Trilogy`) VALUES
(1, 'George Lucas', 'Live action', 2),
(2, 'George Lucas', 'Live action', 2),
(3, 'George Lucas', 'Live action', 2),
(4, 'George Lucas', 'Live action', 1),
(5, 'George Lucas', 'Live action', 1),
(6, 'George Lucas', 'Live action', 1),
(7, 'J.J. Abrams', 'Live action', 3),
(8, 'Rian Johnson', 'Live action', 3),
(9, 'J.J. Abrams', 'Live action', 3),
(10, 'Gareth Edwards', 'Live action', NULL),
(11, 'Ron Howard', 'Live action', NULL),
(12, 'Jon Favreau', 'Live action series', NULL),
(13, 'Jon Favreau', 'Live action series', NULL),
(14, 'Deborah Chow', 'Live action series', NULL),
(15, 'Tony Gilroy', 'Live action series', NULL),
(16, 'Dave Filoni', 'Animation series', NULL),
(17, 'Dave Filoni', 'Animation series', NULL),
(18, 'Dave Filoni', 'Animation series', NULL),
(19, 'Dave Filoni', 'Animation series', NULL);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `InformationAboutMovie`
--
ALTER TABLE `InformationAboutMovie`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `InformationAboutMovie`
--
ALTER TABLE `InformationAboutMovie`
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
