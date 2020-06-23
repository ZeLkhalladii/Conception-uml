-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : jeu. 23 avr. 2020 à 00:28
-- Version du serveur :  10.4.11-MariaDB
-- Version de PHP : 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `test`
--

-- --------------------------------------------------------

--
-- Structure de la table `administration`
--

CREATE TABLE `administration` (
  `name` int(11) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `localisation` varchar(50) DEFAULT NULL,
  `shipinginfo` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `fournisseur`
--

CREATE TABLE `fournisseur` (
  `id` int(11) NOT NULL,
  `coast` float DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `products` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `order details`
--

CREATE TABLE `order details` (
  `order_id` int(11) DEFAULT NULL,
  `quantité` int(11) DEFAULT NULL,
  `product_id` varchar(50) NOT NULL,
  `subtotal` float DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `administrator_id` int(11) DEFAULT NULL,
  `shiping_date` date DEFAULT NULL,
  `date_order` date DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `company_name` varchar(50) DEFAULT NULL,
  `tracking_number` varchar(50) DEFAULT NULL,
  `payement_methode` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `payement`
--

CREATE TABLE `payement` (
  `with_cash` varchar(50) DEFAULT NULL,
  `with_card` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `products`
--

CREATE TABLE `products` (
  `products_id` int(11) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `unit_coast` float DEFAULT NULL,
  `product_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `rayon`
--

CREATE TABLE `rayon` (
  `rayon_id` int(11) NOT NULL,
  `rayon_name` varchar(50) DEFAULT NULL,
  `rayon_product` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `fournisseur`
--
ALTER TABLE `fournisseur`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `order details`
--
ALTER TABLE `order details`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `FK` (`order_id`);

--
-- Index pour la table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Index pour la table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`products_id`);

--
-- Index pour la table `rayon`
--
ALTER TABLE `rayon`
  ADD PRIMARY KEY (`rayon_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
