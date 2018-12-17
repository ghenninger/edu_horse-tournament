-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Värd: localhost
-- Tid vid skapande: 17 dec 2018 kl 11:23
-- Serverversion: 10.1.36-MariaDB
-- PHP-version: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Databas: `guhe0006`
--

-- --------------------------------------------------------

--
-- Tabellstruktur `arena`
--

CREATE TABLE `arena` (
  `id` int(11) NOT NULL,
  `arena_name` varchar(30) DEFAULT NULL,
  `capacity` int(11) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `zip_code` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumpning av Data i tabell `arena`
--

INSERT INTO `arena` (`id`, `arena_name`, `capacity`, `city`, `zip_code`) VALUES
(1, 'Ullevi', 56000, 'Göteborg', 41111),
(3, 'Scandinavium', 30000, 'Göteborg', 41112),
(4, 'Friends Arena', 70000, 'Stockholm', 11234),
(5, 'Örjans Vall', 19000, 'Halmstad', 31223),
(6, 'Slottskogsvallen', 25000, 'Göteborg', 43212);

-- --------------------------------------------------------

--
-- Tabellstruktur `carriage`
--

CREATE TABLE `carriage` (
  `id` int(11) NOT NULL,
  `rider_id` int(11) NOT NULL,
  `horse_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumpning av Data i tabell `carriage`
--

INSERT INTO `carriage` (`id`, `rider_id`, `horse_id`) VALUES
(1, 1, 2),
(2, 2, 1),
(3, 3, 3),
(4, 4, 6),
(5, 5, 4),
(6, 6, 5),
(7, 7, 9),
(8, 8, 7),
(9, 9, 10);

-- --------------------------------------------------------

--
-- Tabellstruktur `course`
--

CREATE TABLE `course` (
  `id` int(11) NOT NULL,
  `difficulty_level` varchar(1) NOT NULL,
  `arena_id` int(11) NOT NULL,
  `course_designer_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumpning av Data i tabell `course`
--

INSERT INTO `course` (`id`, `difficulty_level`, `arena_id`, `course_designer_id`) VALUES
(1, 'A', 1, 1),
(2, 'B', 3, 2),
(3, 'B', 5, 2),
(4, 'A', 4, 3),
(5, 'B', 6, 5),
(6, 'A', 5, 4),
(7, 'B', 3, 5);

-- --------------------------------------------------------

--
-- Tabellstruktur `course_designer`
--

CREATE TABLE `course_designer` (
  `course_designer_id` int(11) NOT NULL,
  `certification` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumpning av Data i tabell `course_designer`
--

INSERT INTO `course_designer` (`course_designer_id`, `certification`) VALUES
(1, 'A'),
(2, 'B'),
(3, 'A'),
(4, 'A'),
(5, 'B');

-- --------------------------------------------------------

--
-- Tabellstruktur `employee`
--

CREATE TABLE `employee` (
  `id` int(11) NOT NULL,
  `birth_date` date NOT NULL,
  `given_name` varchar(50) NOT NULL,
  `sur_name` varchar(50) NOT NULL,
  `city` varchar(30) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `email` varchar(40) NOT NULL,
  `picture` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumpning av Data i tabell `employee`
--

INSERT INTO `employee` (`id`, `birth_date`, `given_name`, `sur_name`, `city`, `phone`, `email`, `picture`) VALUES
(1, '1991-04-26', 'Gustav', 'Henninger', 'Göteborg', '0730123121', 'gustavhenninger@hotmail.com', 'https://webbkurs.ei.hv.se/~guhe0006/img/course-design.jpg'),
(2, '1992-01-03', 'Jules', 'McDonald', 'Halmstad', '0712312332', 'jules@fastmail.com', NULL),
(3, '1998-11-11', 'Harry', 'Potter', 'London', '071234566', 'harry.potter@gmail.com', NULL),
(4, '1992-01-05', 'Hermione', 'Granger', 'Göteborg', '0743215463', 'mail2@gmail.com', NULL),
(5, '1996-01-21', 'Ron', 'Weasly', 'Göteborg', '0756456789', 'ronron@mail.com', NULL),
(6, '1989-09-11', 'Tom', 'Riddle', 'Borås', '0765101010', 'voldemort@boraskommun.se', 'https://webbkurs.ei.hv.se/~guhe0006/img/judge-referee.jpg'),
(7, '2000-01-01', 'Larry', 'Notter', 'Stockholm', '0745698745', 'simmalugntlarry@mail.com', NULL),
(8, '1989-09-30', 'Minerva', 'McDonald', 'Göteborg', '0741236548', 'minervawhat@gmail.com', NULL),
(9, '1978-05-05', 'Severus', 'Snape', 'Laholm', '0748459687', 'snapewasnice@gmail.com', NULL),
(10, '1900-06-12', 'Albus', 'Dumleklubba', 'London', '024 1546 4566', 'dumbledore@hogwarts.com', NULL),
(11, '1934-12-12', 'Malfoy', 'Svensson', 'Göteborg', '031456789', 'malfoyissnel@harrypotter.com', NULL);

-- --------------------------------------------------------

--
-- Tabellstruktur `equestrian_club`
--

CREATE TABLE `equestrian_club` (
  `id` int(11) NOT NULL,
  `club_name` varchar(40) NOT NULL,
  `city` varchar(30) NOT NULL,
  `mascot` varchar(30) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `email` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumpning av Data i tabell `equestrian_club`
--

INSERT INTO `equestrian_club` (`id`, `club_name`, `city`, `mascot`, `phone`, `email`) VALUES
(1, 'HalmstadRiders', 'Halmstad', 'Utter', '035101010', 'halmstadriders@gmail.com'),
(2, 'GöteborgKlubben', 'Göteborg', 'Lejon', '0756894689', 'gbgriders@gmail.com'),
(3, 'LillebrorBorås', 'Borås', 'Zebra', '046101215', 'borasryttare@gmail.com'),
(4, 'Stockholm08', 'Stockholm', 'Gris', '08010101', 'sthlmftw@sthlm.com'),
(5, 'Starks', 'Kiruna', 'Varg', '0759895623', 'Norrlandminns@mail.com'),
(6, 'Närmast Kontinenten', 'Malmö', 'Tiger', '013564879', 'malmolikamedbast@mail.com'),
(7, 'RonnebyRiders', 'Ronneby', 'Älg', '0789451245', 'ronnebysmail@mail.com'),
(8, 'WestWins', 'Västervik', 'Hund', '0745124578', 'vastervik@hast.se'),
(9, 'EastSideRiders', 'Kalmar', 'Katt', '0714141414', 'kattenlever@gmail.com'),
(10, 'HejaSunne', 'Sundsvall', 'Björn', '0765324516', 'sundsvallhastochhund@mail.com');

-- --------------------------------------------------------

--
-- Tabellstruktur `horse`
--

CREATE TABLE `horse` (
  `id` int(11) NOT NULL,
  `horse_name` varchar(40) NOT NULL,
  `birth_year` varchar(4) NOT NULL,
  `withers_height` int(11) NOT NULL,
  `picture` varchar(150) DEFAULT NULL,
  `club_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumpning av Data i tabell `horse`
--

INSERT INTO `horse` (`id`, `horse_name`, `birth_year`, `withers_height`, `picture`, `club_id`) VALUES
(1, 'Stallion', '2000', 170, 'https://webbkurs.ei.hv.se/~guhe0006/img/horse-img.jpeg', 1),
(2, 'Rambo', '2005', 165, NULL, 1),
(3, 'Rocky', '2014', 155, NULL, 1),
(4, 'Clubber', '2012', 149, NULL, 2),
(5, 'Drago', '2008', 160, NULL, 2),
(6, 'Apollo', '2013', 168, NULL, 2),
(7, 'Adonis', '2014', 165, NULL, 3),
(9, 'Hästbäst', '1999', 160, NULL, 3),
(10, 'Gurra', '2010', 170, 'https://webbkurs.ei.hv.se/~guhe0006/img/horse-img.jpeg', 3);

-- --------------------------------------------------------

--
-- Tabellstruktur `judge`
--

CREATE TABLE `judge` (
  `judge_id` int(11) NOT NULL,
  `judge_type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumpning av Data i tabell `judge`
--

INSERT INTO `judge` (`judge_id`, `judge_type`) VALUES
(6, 'Main Official'),
(7, 'Jump Official'),
(8, 'Jump Official'),
(9, 'Main Official'),
(10, 'Jump Official'),
(11, 'Jump Official');

-- --------------------------------------------------------

--
-- Ersättningsstruktur för vy `resultat_ranking`
-- (See below for the actual view)
--
CREATE TABLE `resultat_ranking` (
`round_type` varchar(20)
,`faults` int(11)
,`time` varchar(10)
,`carriage_nr` int(11)
,`rider_name` varchar(81)
,`horse_name` varchar(40)
,`arena_name` varchar(30)
,`course_nr` int(11)
,`difficulty_level` varchar(1)
,`judge_name` varchar(101)
,`tournament_name` varchar(50)
);

-- --------------------------------------------------------

--
-- Tabellstruktur `rider`
--

CREATE TABLE `rider` (
  `id` int(11) NOT NULL,
  `birth_date` date DEFAULT NULL,
  `given_name` varchar(40) NOT NULL,
  `sur_name` varchar(40) NOT NULL,
  `world_ranking` int(11) NOT NULL,
  `picture` varchar(150) DEFAULT NULL,
  `club_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumpning av Data i tabell `rider`
--

INSERT INTO `rider` (`id`, `birth_date`, `given_name`, `sur_name`, `world_ranking`, `picture`, `club_id`) VALUES
(1, '1992-01-13', 'Al', 'Simmons', 6, 'https://webbkurs.ei.hv.se/~guhe0006/img/rider-img.jpg', 1),
(2, '1993-01-21', 'Peter', 'Parker', 14, '', 1),
(3, '1999-05-05', 'Clark', 'Kent', 1, '', 1),
(4, '1995-12-24', 'Barry', 'Lyndon', 97, '', 2),
(5, '1999-04-09', 'Lisa', 'Labbson', 15, '', 2),
(6, '1995-01-31', 'Johan', 'Karlsson', 3, '', 2),
(7, '1997-07-14', 'Eddie', 'Brock', 65, '', 3),
(8, '1992-09-11', 'Deandra', 'Adams', 42, '', 3),
(9, '1991-04-26', 'Maria', 'Databas', 10, '', 3);

-- --------------------------------------------------------

--
-- Tabellstruktur `round`
--

CREATE TABLE `round` (
  `id` int(11) NOT NULL,
  `round_type` varchar(20) NOT NULL,
  `time` varchar(10) NOT NULL,
  `faults` int(11) NOT NULL,
  `carriage_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `judge_id` int(11) NOT NULL,
  `tournament_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumpning av Data i tabell `round`
--

INSERT INTO `round` (`id`, `round_type`, `time`, `faults`, `carriage_id`, `course_id`, `judge_id`, `tournament_id`) VALUES
(1, 'First round', '2:35', 12, 1, 7, 7, 5),
(2, 'First round', '1:55', 16, 3, 2, 7, 5),
(3, 'First round', '2:20', 0, 2, 2, 7, 5),
(4, 'First round', '2:03', 0, 4, 7, 8, 5),
(5, 'Jump Off', '1:35', 4, 4, 1, 11, 5),
(6, 'Jump Off', '1:23', 4, 2, 1, 11, 5),
(7, 'First round', '1:59', 0, 8, 7, 7, 5),
(8, 'Jump Off', '2:01', 12, 8, 1, 11, 5);

-- --------------------------------------------------------

--
-- Tabellstruktur `subscriber`
--

CREATE TABLE `subscriber` (
  `id` int(11) NOT NULL,
  `given_name` varchar(50) NOT NULL,
  `sur_name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumpning av Data i tabell `subscriber`
--

INSERT INTO `subscriber` (`id`, `given_name`, `sur_name`, `email`) VALUES
(1, 'Alf', 'Svensson', 'alfen@alf.se'),
(2, 'Gudrun', 'Svensson', 'stormengudrun@gudrun.se'),
(3, 'Larry', 'Charles', 'seinfeld@bestshowever.no'),
(4, 'Jason', 'Alexander', 'biffloman@gmai.com'),
(5, 'Elaine', 'Whatshername', 'elaine@seinfeld.com');

-- --------------------------------------------------------

--
-- Tabellstruktur `subscribing_carriage`
--

CREATE TABLE `subscribing_carriage` (
  `subscriber_id` int(11) NOT NULL,
  `carriage_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumpning av Data i tabell `subscribing_carriage`
--

INSERT INTO `subscribing_carriage` (`subscriber_id`, `carriage_id`) VALUES
(1, 3),
(2, 1),
(3, 7),
(4, 4),
(5, 9);

-- --------------------------------------------------------

--
-- Tabellstruktur `subscribing_round`
--

CREATE TABLE `subscribing_round` (
  `subscriber_id` int(11) NOT NULL,
  `round_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumpning av Data i tabell `subscribing_round`
--

INSERT INTO `subscribing_round` (`subscriber_id`, `round_id`) VALUES
(1, 1),
(2, 2),
(2, 5),
(3, 2),
(3, 6),
(4, 5);

-- --------------------------------------------------------

--
-- Tabellstruktur `subscribing_tournament`
--

CREATE TABLE `subscribing_tournament` (
  `subscriber_id` int(11) NOT NULL,
  `tournament_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumpning av Data i tabell `subscribing_tournament`
--

INSERT INTO `subscribing_tournament` (`subscriber_id`, `tournament_id`) VALUES
(1, 5),
(2, 6),
(3, 5),
(4, 3),
(5, 5);

-- --------------------------------------------------------

--
-- Tabellstruktur `tournament`
--

CREATE TABLE `tournament` (
  `id` int(11) NOT NULL,
  `tournament_name` varchar(50) NOT NULL,
  `date` date NOT NULL,
  `judge_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumpning av Data i tabell `tournament`
--

INSERT INTO `tournament` (`id`, `tournament_name`, `date`, `judge_id`) VALUES
(1, 'OneHorse2017', '2017-08-10', 6),
(2, 'OneHorse2018', '2016-08-12', 6),
(3, 'Horses For Charity', '2018-04-26', 9),
(4, 'Horses For Charity (Again)', '2018-06-15', 9),
(5, 'Horses For Charity (YetAgain)', '2018-09-11', 9),
(6, 'HorsesLove2001', '2001-12-12', 6);

-- --------------------------------------------------------

--
-- Struktur för vy `resultat_ranking`
--
DROP TABLE IF EXISTS `resultat_ranking`;

CREATE ALGORITHM=UNDEFINED DEFINER=`guhe0006`@`localhost` SQL SECURITY DEFINER VIEW `resultat_ranking`  AS  select `round`.`round_type` AS `round_type`,`round`.`faults` AS `faults`,`round`.`time` AS `time`,`carriage`.`id` AS `carriage_nr`,concat(`rider`.`given_name`,' ',`rider`.`sur_name`) AS `rider_name`,`horse`.`horse_name` AS `horse_name`,`arena`.`arena_name` AS `arena_name`,`course`.`id` AS `course_nr`,`course`.`difficulty_level` AS `difficulty_level`,concat(`employee`.`given_name`,' ',`employee`.`sur_name`) AS `judge_name`,`tournament`.`tournament_name` AS `tournament_name` from (((((((`carriage` join `rider` on((`carriage`.`rider_id` = `rider`.`id`))) join `horse` on((`carriage`.`horse_id` = `horse`.`id`))) join `round` on((`round`.`id` = (select `round`.`id` from `round` where (`round`.`carriage_id` = `carriage`.`id`) order by `round`.`round_type` desc,`round`.`faults`,`round`.`time` limit 1)))) join `course` on((`round`.`course_id` = `course`.`id`))) join `arena` on((`course`.`arena_id` = `arena`.`id`))) join `employee` on((`round`.`judge_id` = `employee`.`id`))) join `tournament` on((`round`.`tournament_id` = `tournament`.`id`))) where (`tournament`.`id` = 5) ;

--
-- Index för dumpade tabeller
--

--
-- Index för tabell `arena`
--
ALTER TABLE `arena`
  ADD PRIMARY KEY (`id`);

--
-- Index för tabell `carriage`
--
ALTER TABLE `carriage`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rider_id_fk` (`rider_id`),
  ADD KEY `horse_id_fk` (`horse_id`);

--
-- Index för tabell `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`id`),
  ADD KEY `arena_id` (`arena_id`),
  ADD KEY `employee_id` (`course_designer_id`);

--
-- Index för tabell `course_designer`
--
ALTER TABLE `course_designer`
  ADD PRIMARY KEY (`course_designer_id`),
  ADD KEY `course_designer_id` (`course_designer_id`);

--
-- Index för tabell `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`);

--
-- Index för tabell `equestrian_club`
--
ALTER TABLE `equestrian_club`
  ADD PRIMARY KEY (`id`);

--
-- Index för tabell `horse`
--
ALTER TABLE `horse`
  ADD PRIMARY KEY (`id`),
  ADD KEY `club_id` (`club_id`);

--
-- Index för tabell `judge`
--
ALTER TABLE `judge`
  ADD PRIMARY KEY (`judge_id`),
  ADD KEY `employee_id` (`judge_id`),
  ADD KEY `judge_id` (`judge_id`);

--
-- Index för tabell `rider`
--
ALTER TABLE `rider`
  ADD PRIMARY KEY (`id`),
  ADD KEY `club_id` (`club_id`);

--
-- Index för tabell `round`
--
ALTER TABLE `round`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carriage_id` (`carriage_id`),
  ADD KEY `course_id` (`course_id`),
  ADD KEY `judge_id` (`judge_id`),
  ADD KEY `tournament_id` (`tournament_id`);

--
-- Index för tabell `subscriber`
--
ALTER TABLE `subscriber`
  ADD PRIMARY KEY (`id`);

--
-- Index för tabell `subscribing_carriage`
--
ALTER TABLE `subscribing_carriage`
  ADD PRIMARY KEY (`subscriber_id`,`carriage_id`),
  ADD KEY `subscriber_id` (`subscriber_id`),
  ADD KEY `carriage_id` (`carriage_id`);

--
-- Index för tabell `subscribing_round`
--
ALTER TABLE `subscribing_round`
  ADD PRIMARY KEY (`subscriber_id`,`round_id`),
  ADD KEY `subscriber_id` (`subscriber_id`),
  ADD KEY `round_id` (`round_id`);

--
-- Index för tabell `subscribing_tournament`
--
ALTER TABLE `subscribing_tournament`
  ADD PRIMARY KEY (`subscriber_id`,`tournament_id`),
  ADD KEY `subscriber_id` (`subscriber_id`),
  ADD KEY `tournament_id` (`tournament_id`);

--
-- Index för tabell `tournament`
--
ALTER TABLE `tournament`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employee_id` (`judge_id`);

--
-- AUTO_INCREMENT för dumpade tabeller
--

--
-- AUTO_INCREMENT för tabell `arena`
--
ALTER TABLE `arena`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT för tabell `carriage`
--
ALTER TABLE `carriage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT för tabell `course`
--
ALTER TABLE `course`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT för tabell `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT för tabell `equestrian_club`
--
ALTER TABLE `equestrian_club`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT för tabell `horse`
--
ALTER TABLE `horse`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT för tabell `rider`
--
ALTER TABLE `rider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT för tabell `round`
--
ALTER TABLE `round`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT för tabell `subscriber`
--
ALTER TABLE `subscriber`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT för tabell `tournament`
--
ALTER TABLE `tournament`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Restriktioner för dumpade tabeller
--

--
-- Restriktioner för tabell `carriage`
--
ALTER TABLE `carriage`
  ADD CONSTRAINT `horse_id_fk` FOREIGN KEY (`horse_id`) REFERENCES `horse` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `rider_id_fk` FOREIGN KEY (`rider_id`) REFERENCES `rider` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Restriktioner för tabell `course`
--
ALTER TABLE `course`
  ADD CONSTRAINT `arena_id_fk` FOREIGN KEY (`arena_id`) REFERENCES `arena` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `employee_id_fk` FOREIGN KEY (`course_designer_id`) REFERENCES `employee` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Restriktioner för tabell `course_designer`
--
ALTER TABLE `course_designer`
  ADD CONSTRAINT `course_designer_id_fk` FOREIGN KEY (`course_designer_id`) REFERENCES `employee` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Restriktioner för tabell `horse`
--
ALTER TABLE `horse`
  ADD CONSTRAINT `club_id_fk` FOREIGN KEY (`club_id`) REFERENCES `equestrian_club` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Restriktioner för tabell `judge`
--
ALTER TABLE `judge`
  ADD CONSTRAINT `judge_ibfk_1` FOREIGN KEY (`judge_id`) REFERENCES `employee` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Restriktioner för tabell `rider`
--
ALTER TABLE `rider`
  ADD CONSTRAINT `club_id_fk(rider)` FOREIGN KEY (`club_id`) REFERENCES `equestrian_club` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Restriktioner för tabell `round`
--
ALTER TABLE `round`
  ADD CONSTRAINT `round_ibfk_1` FOREIGN KEY (`carriage_id`) REFERENCES `carriage` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `round_ibfk_2` FOREIGN KEY (`course_id`) REFERENCES `course` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `round_ibfk_3` FOREIGN KEY (`judge_id`) REFERENCES `employee` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `round_ibfk_4` FOREIGN KEY (`tournament_id`) REFERENCES `tournament` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Restriktioner för tabell `subscribing_carriage`
--
ALTER TABLE `subscribing_carriage`
  ADD CONSTRAINT `carriage_id_fk` FOREIGN KEY (`carriage_id`) REFERENCES `carriage` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `subscriber_id_fk(carriage)` FOREIGN KEY (`subscriber_id`) REFERENCES `subscriber` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Restriktioner för tabell `subscribing_round`
--
ALTER TABLE `subscribing_round`
  ADD CONSTRAINT `round_id_fk` FOREIGN KEY (`round_id`) REFERENCES `round` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `subscriber_id_fk(round)` FOREIGN KEY (`subscriber_id`) REFERENCES `subscriber` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Restriktioner för tabell `subscribing_tournament`
--
ALTER TABLE `subscribing_tournament`
  ADD CONSTRAINT `subscriber_id_fk(tournament)` FOREIGN KEY (`subscriber_id`) REFERENCES `subscriber` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `tournamen_id` FOREIGN KEY (`tournament_id`) REFERENCES `tournament` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Restriktioner för tabell `tournament`
--
ALTER TABLE `tournament`
  ADD CONSTRAINT `tournament_ibfk_1` FOREIGN KEY (`judge_id`) REFERENCES `employee` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
