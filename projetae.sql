-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : sam. 14 mai 2022 à 16:52
-- Version du serveur : 10.4.21-MariaDB
-- Version de PHP : 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `projetae`
--

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE `client` (
  `idClient` int(11) NOT NULL,
  `nom` varchar(250) NOT NULL,
  `mail` varchar(320) NOT NULL,
  `phone` int(10) NOT NULL,
  `codePostal` int(5) NOT NULL,
  `adresse` varchar(350) NOT NULL,
  `ville` varchar(100) NOT NULL,
  `pays` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `client`
--

INSERT INTO `client` (`idClient`, `nom`, `mail`, `phone`, `codePostal`, `adresse`, `ville`, `pays`) VALUES
(1, 'Jumbo Eagle Corp', 'jumboeagle@example.com', 607060706, 37000, 'Place plumereau', 'Tours', 'France'),
(2, 'Lorenzo Yvann', 'yvann.lorenzo@example.com', 607060707, 37000, 'avenue de l alouette', 'Tours', 'France');

-- --------------------------------------------------------

--
-- Structure de la table `commande`
--

CREATE TABLE `commande` (
  `idCommande` int(11) NOT NULL,
  `description` text NOT NULL,
  `idProduit` int(11) NOT NULL,
  `dateAchat` int(11) NOT NULL,
  `dateLivraison` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `commercant`
--

CREATE TABLE `commercant` (
  `idCommercant` int(11) NOT NULL,
  `ville` varchar(100) NOT NULL,
  `codePostal` int(5) NOT NULL,
  `addresse` varchar(250) NOT NULL,
  `pays` varchar(100) NOT NULL,
  `phone` int(10) NOT NULL,
  `nom` varchar(300) NOT NULL,
  `email` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `commercant`
--

INSERT INTO `commercant` (`idCommercant`, `ville`, `codePostal`, `addresse`, `pays`, `phone`, `nom`, `email`) VALUES
(1, 'Tours', 37000, 'avenue grammont', 'France', 606060606, 'Auchan', 'auchan.test@gmail.fr'),
(2, 'Tours', 37000, 'avenue grammont', 'France', 707070707, 'Leclerc', 'leclerc.test@gmail.fr');

-- --------------------------------------------------------

--
-- Structure de la table `produit`
--

CREATE TABLE `produit` (
  `idProduit` int(11) NOT NULL,
  `idCommercant` int(11) NOT NULL,
  `quantite` int(11) NOT NULL,
  `prix` int(11) NOT NULL,
  `codeProduit` int(11) NOT NULL,
  `available` text NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `produit`
--

INSERT INTO `produit` (`idProduit`, `idCommercant`, `quantite`, `prix`, `codeProduit`, `available`, `description`) VALUES
(1, 1, 3, 3, 0, 'oui', 'Panier Banane Pomme Orange'),
(2, 1, 5, 2, 0, 'oui', 'Panier Fraise Poire'),
(3, 2, 10, 4, 0, 'oui', 'Panier Pomme de terre Concombre');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`idClient`);

--
-- Index pour la table `commande`
--
ALTER TABLE `commande`
  ADD PRIMARY KEY (`idCommande`);

--
-- Index pour la table `commercant`
--
ALTER TABLE `commercant`
  ADD PRIMARY KEY (`idCommercant`);

--
-- Index pour la table `produit`
--
ALTER TABLE `produit`
  ADD PRIMARY KEY (`idProduit`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
