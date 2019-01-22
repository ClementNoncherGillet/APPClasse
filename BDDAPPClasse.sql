-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  mar. 22 jan. 2019 à 10:42
-- Version du serveur :  5.7.23
-- Version de PHP :  7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `profil`
--

-- --------------------------------------------------------

--
-- Structure de la table `envoyer`
--

DROP TABLE IF EXISTS `envoyer`;
CREATE TABLE IF NOT EXISTS `envoyer` (
  `idMessage` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  KEY `idMessage` (`idMessage`),
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `message`
--

DROP TABLE IF EXISTS `message`;
CREATE TABLE IF NOT EXISTS `message` (
  `idMessage` int(11) NOT NULL AUTO_INCREMENT,
  `contenuMessage` text NOT NULL,
  `pseudo` varchar(254) NOT NULL,
  PRIMARY KEY (`idMessage`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `message`
--

INSERT INTO `message` (`idMessage`, `contenuMessage`, `pseudo`) VALUES
(1, 'clement', 'ET JE ROULE UN DRAGON!!!'),
(2, 'tos', 'lol'),
(3, 'j\'adore', 'dior'),
(4, 'salut sa va', 'clement'),
(5, 'sa m\'interesse pas pour le moment', 'clement'),
(6, 'tu me casse les couilles', 'clement nc'),
(7, '', 'zsjkfhzekj'),
(8, '', 'je suis blanc'),
(9, '', 'je suis noir'),
(10, '', 'je suis rouge');

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

DROP TABLE IF EXISTS `utilisateur`;
CREATE TABLE IF NOT EXISTS `utilisateur` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `mail` varchar(98) NOT NULL,
  `pass` varchar(98) NOT NULL,
  `article` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `utilisateur`
--

INSERT INTO `utilisateur` (`id`, `nom`, `prenom`, `mail`, `pass`, `article`) VALUES
(1, 'chevreuil', 'clement', 'clement.chevreuil2000@gmail.com', 'mp', 'ntm'),
(2, 'basora', 'gregory', 'gregory.basora@gmail.com', 'motdepasse', 'aa'),
(7, 'tos', 'night', 'tos.night2000@gmail.com', 'tn', 'a'),
(8, 'sql', 'sql', 'sql', 'sql', 'a'),
(9, 'miel', 'miel', 'miel', 'miel', 'g'),
(10, 'a', 'a', 'a', 'a', 'salut sa va comment sa marche?'),
(11, 'noncher-gillet', 'clément', 'ng-clement@gmail.com', 'fdp', 'je m\'appelle trou du cu et je vais me faire enculer'),
(12, 'de', 'lol', 'debile', 'mp', 'po'),
(13, 'ch', 'ch', 'ch', 'ch', 'rentrer text'),
(14, 'alexis', 'ce fils de pute', 'alexis.fdp@gmail.com', 'ntm', 'je suis un putain de fils de pute et je suce des grosses bites de tchoin.'),
(15, 'guimier', 'nikAlexis', 'nikAlexis.guimier@gmail.com', 'ntm', 'rentrer text'),
(16, 'tim', '', 'clement.chevreuil2000@gmail.com', 'mot de passe', 'enorme');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
