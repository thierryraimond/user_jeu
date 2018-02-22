-- phpMyAdmin SQL Dump
-- version 4.5.5.1
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Jeu 22 Février 2018 à 21:15
-- Version du serveur :  5.7.11
-- Version de PHP :  5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `user_jeu`
--

-- --------------------------------------------------------

--
-- Structure de la table `adventure`
--

CREATE TABLE `adventure` (
  `adventureId` int(11) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `adventure`
--

INSERT INTO `adventure` (`adventureId`, `name`) VALUES
(1, 'classique'),
(2, 'nouvelle');

-- --------------------------------------------------------

--
-- Structure de la table `score`
--

CREATE TABLE `score` (
  `scoreId` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `score` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `adventureId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `score`
--

INSERT INTO `score` (`scoreId`, `level`, `score`, `userId`, `adventureId`) VALUES
(1, 1, -17, 2, 1),
(2, 2, 22, 2, 1),
(3, 1, 10, 7, 1),
(4, 1, 10, 7, 1),
(5, 1, 1, 16, 1),
(6, 2, 1, 16, 1),
(7, 3, 1, 16, 1),
(8, 4, 1, 16, 1),
(9, 5, 1, 16, 1),
(10, 6, 2, 16, 1),
(11, 7, 1, 16, 1),
(12, 8, 1, 16, 1),
(13, 9, 1, 16, 1),
(14, 10, 1, 16, 1),
(15, 11, 1, 16, 1),
(16, 12, 2, 16, 1),
(17, 13, 2, 16, 1),
(18, 14, 1, 16, 1),
(19, 15, 1, 16, 1),
(20, 1, 1, 18, 1),
(21, 1, 1, 19, 1),
(22, 2, 1, 19, 1),
(23, 3, 1, 19, 1),
(24, 1, 2, 6, 1),
(25, 2, 2, 6, 1),
(26, 3, 2, 6, 1),
(27, 4, 2, 6, 1),
(28, 5, 2, 6, 1),
(29, 6, 2, 6, 1),
(30, 7, 2, 6, 1),
(31, 8, 2, 6, 1),
(32, 9, 2, 6, 1),
(33, 10, 2, 6, 1),
(34, 11, 2, 6, 1),
(35, 12, 2, 6, 1),
(36, 13, 2, 6, 1),
(37, 14, 2, 6, 1),
(38, 15, 2, 6, 1),
(39, 2, 1, 18, 1),
(40, 1, 1, 1, 1),
(41, 2, 1, 1, 1),
(42, 1, 1, 17, 1),
(43, 2, 2, 6, 2),
(44, 1, 2, 6, 2),
(45, 3, 2, 6, 2),
(46, 1, 1, 16, 2),
(47, 2, 2, 16, 2),
(48, 3, 2, 16, 2),
(49, 1, 1, 17, 2),
(50, 2, 2, 17, 2),
(51, 3, 1, 17, 2),
(52, 1, 1, 20, 2),
(53, 1, 1, 20, 1),
(54, 2, 1, 20, 2),
(55, 2, 1, 20, 1),
(56, 1, 1, 21, 1),
(57, 2, 1, 21, 1),
(58, 1, 1, 21, 2),
(59, 2, 1, 21, 2);

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `userId` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `password` varchar(32) NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `user`
--

INSERT INTO `user` (`userId`, `name`, `password`, `date`) VALUES
(1, 'lol', '123', '2015-01-22 14:35:00'),
(2, 'Teddy', '123', '2015-01-22 14:35:53'),
(3, 'Teddyy', '1234', '2015-01-22 14:40:38'),
(4, 'Teddyyu', '1234569', '2015-01-22 14:57:29'),
(6, '', '', '2015-02-04 19:00:14'),
(7, 'Thalia', 'test', '2015-02-05 00:57:17'),
(8, 'Mystraht', 'test', '2015-02-05 01:14:56'),
(9, 'srgr', 'ze', '2015-02-05 01:22:20'),
(10, 'ert', 'ert', '2015-02-05 13:27:24'),
(11, 'jeanmichel', 'banana', '2015-02-05 13:46:43'),
(12, 'Thaliaa', 'testt', '2015-02-06 11:25:17'),
(13, 'thaliahha', 'toast', '2015-02-06 14:36:51'),
(14, 'thaliaheeeeeeeeeeeeeha', 'toast', '2015-02-06 14:38:55'),
(15, 'nicolas', 'hello', '2015-02-06 15:52:29'),
(16, 'thra', '1', '2017-05-19 20:17:23'),
(17, 'test', '1', '2017-05-24 11:49:59'),
(18, 'hg', '', '2017-05-24 18:27:01'),
(19, 'rtretretretert', '', '2017-05-29 00:50:21'),
(20, 'test2', '', '2017-06-10 20:53:52'),
(21, 'test3', '', '2017-06-11 01:31:39');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `adventure`
--
ALTER TABLE `adventure`
  ADD PRIMARY KEY (`adventureId`);

--
-- Index pour la table `score`
--
ALTER TABLE `score`
  ADD PRIMARY KEY (`scoreId`,`userId`),
  ADD KEY `fk_SCORE_USER_idx` (`userId`),
  ADD KEY `fk_SCORE_ADVENTURE1_idx` (`adventureId`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userId`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `adventure`
--
ALTER TABLE `adventure`
  MODIFY `adventureId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `score`
--
ALTER TABLE `score`
  MODIFY `scoreId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;
--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `score`
--
ALTER TABLE `score`
  ADD CONSTRAINT `fk_SCORE_ADVENTURE1` FOREIGN KEY (`adventureId`) REFERENCES `adventure` (`adventureId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_SCORE_USER` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
