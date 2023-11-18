-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : sam. 18 nov. 2023 à 19:07
-- Version du serveur : 10.4.25-MariaDB
-- Version de PHP : 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `world-cup`
--

-- --------------------------------------------------------

--
-- Structure de la table `group`
--

CREATE TABLE `group` (
  `GroupId` int(11) NOT NULL,
  `GroupName` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `group`
--

INSERT INTO `group` (`GroupId`, `GroupName`) VALUES
(1, 'Group A'),
(2, 'Group B'),
(3, 'Group C'),
(4, 'Group D'),
(5, 'Group E'),
(6, 'Group F'),
(7, 'Group G'),
(8, 'Group H');

-- --------------------------------------------------------

--
-- Structure de la table `stadium`
--

CREATE TABLE `stadium` (
  `StadiumId` int(11) NOT NULL,
  `StadiumName` varchar(100) NOT NULL,
  `Adress` varchar(100) NOT NULL,
  `StadiumImg` varchar(100) NOT NULL,
  `IdGroup` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `stadium`
--

INSERT INTO `stadium` (`StadiumId`, `StadiumName`, `Adress`, `StadiumImg`, `IdGroup`) VALUES
(1, 'Lusail', 'The venue itself is less than 20 km from the centre of the capital', './assets/images/bg-stadium9.jfif', 1),
(2, 'Al Bayt', 'Doha (less than 50 km north of its centre)', './assets/images/bg-stadium2.jfif', 2),
(3, 'Khalifa International', 'Al Waab St, Doha, Qatar', './assets/images/bg-stadium3.jfif', 3),
(4, 'Ahmad Bin Ali', 'more than 20km from the centre of the capital\'s metropolitan area', './assets/images/bg-stadium4.jfif', 4),
(5, 'Education City', 'Gurshaiganj، Qatar', './assets/images/bg-stadium5.jfif', 5),
(6, 'Al Thumama', '6GPJ+8X4, Doha, Qatar', './assets/images/bg-stadium6.jfif', 6),
(7, 'Al Janoub', '5H5F+WJ Al Wukair, Qatar', './assets/images/bg-stadium7.jfif', 7),
(8, '974', 'Ras Abu Aboud, Doha, Qatar', './assets/images/bg-stadium8.jfif', 8);

-- --------------------------------------------------------

--
-- Structure de la table `team`
--

CREATE TABLE `team` (
  `TeamId` int(11) NOT NULL,
  `TeamName` varchar(50) NOT NULL,
  `NumPlayers` int(11) NOT NULL,
  `Capital` varchar(50) NOT NULL,
  `Continent` varchar(50) NOT NULL,
  `TeamImg` varchar(100) NOT NULL,
  `IdGroup` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `team`
--

INSERT INTO `team` (`TeamId`, `TeamName`, `NumPlayers`, `Capital`, `Continent`, `TeamImg`, `IdGroup`) VALUES
(1, 'morocco', 26, 'rabat', 'africa', './assets/images/morocco.png', 1),
(2, 'Argentina', 26, 'Buenos Aires', 'South America', './assets/images/Argentina.png', 1),
(3, 'Australia', 24, 'Canberra', 'Oceania', './assets/images/Australia.png', 1),
(4, 'Belgium', 25, 'Brussels', 'Europe', './assets/images/Belgium.png', 1),
(5, 'Brazil', 23, 'Brasília', 'South America', './assets/images/Brazil.png', 2),
(6, 'Cameroon', 24, 'Yaoundé', 'Africa', './assets/images/Cameroon.png', 2),
(7, 'Canada', 24, 'Ottawa', 'North America', './assets/images/Canada.png', 2),
(8, 'Chile', 25, 'Santiago', 'South America', './assets/images/Chile.png', 2),
(9, 'Colombia', 26, 'Bogotá', 'South America', './assets/images/Colombia.png', 3),
(10, 'CostaRica', 26, 'San José', 'North America', './assets/images/CostaRica.png', 3),
(11, 'Croatia', 24, 'Zagreb', 'Europe', './assets/images/Croatia.png', 3),
(12, 'Egypt', 23, 'Cairo', 'Africa', './assets/images/Egypt.png', 3),
(13, 'England', 24, 'London', 'Europe', './assets/images/England.png', 4),
(14, 'France', 25, 'Paris', 'Europe', './assets/images/France.png', 4),
(15, 'Germany', 26, 'Berlin', 'Europe', './assets/images/Germany.png', 4),
(16, 'Iran', 25, 'Tehran', 'Asia', './assets/images/Iran.png', 4),
(17, 'Italy', 24, 'Rome', 'Europe', './assets/images/Italy.png', 5),
(18, 'IvoryCoast', 26, 'Yamoussoukro', 'Africa', './assets/images/IvoryCoast.png', 5),
(19, 'Japan', 25, 'Tokyo', 'Asia', './assets/images/Japan.png', 5),
(20, 'Mexico', 25, 'Mexico City', 'North America', './assets/images/Mexico.png', 5),
(21, 'Netherlands', 24, 'Amsterdam', 'Europe', './assets/images/Netherlands.png', 8),
(22, 'Nigeria', 26, 'Abuja', 'Africa', './assets/images/Nigeria.png', 8),
(23, 'Peru', 26, 'Lima', 'South America', './assets/images/Peru.png', 8),
(24, 'Portugal', 25, 'Lisbon', 'Europe', './assets/images/Portugal.png', 6),
(25, 'Qatar', 24, 'Doha', 'Asia', './assets/images/Qatar.png', 8),
(26, 'SaudiArabia', 25, 'Riyadh', 'Asia', './assets/images/SaudiArabia.png', 6),
(27, 'Senegal', 25, 'Dakar', 'Africa', './assets/images/Senegal.png', 7),
(28, 'SouthKorea', 24, 'Seoul', 'Asia', './assets/images/SouthKorea.png', 6),
(29, 'Spain', 26, 'Madrid', 'Europe', './assets/images/Spain.png', 6),
(30, 'Switzerland', 26, 'Bern', 'Europe', './assets/images/Switzerland.png', 7),
(31, 'UnitedStates', 25, 'Washington D.C.', 'North America', './assets/images/UnitedStates.png', 7),
(32, 'Uruguay', 24, 'Montevideo', 'South America', './assets/images/Uruguay.png', 7);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `group`
--
ALTER TABLE `group`
  ADD PRIMARY KEY (`GroupId`);

--
-- Index pour la table `stadium`
--
ALTER TABLE `stadium`
  ADD PRIMARY KEY (`StadiumId`),
  ADD KEY `IdGroup` (`IdGroup`);

--
-- Index pour la table `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`TeamId`),
  ADD KEY `IdGroup` (`IdGroup`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `group`
--
ALTER TABLE `group`
  MODIFY `GroupId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `stadium`
--
ALTER TABLE `stadium`
  MODIFY `StadiumId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `team`
--
ALTER TABLE `team`
  MODIFY `TeamId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `stadium`
--
ALTER TABLE `stadium`
  ADD CONSTRAINT `stadium_ibfk_1` FOREIGN KEY (`IdGroup`) REFERENCES `group` (`GroupId`);

--
-- Contraintes pour la table `team`
--
ALTER TABLE `team`
  ADD CONSTRAINT `team_ibfk_1` FOREIGN KEY (`IdGroup`) REFERENCES `group` (`GroupId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
