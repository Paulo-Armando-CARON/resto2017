-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Mar 16 Janvier 2018 à 16:39
-- Version du serveur :  5.7.20-0ubuntu0.16.04.1
-- Version de PHP :  7.0.22-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `resto2017`
--

-- --------------------------------------------------------

--
-- Structure de la table `table_admin`
--

CREATE TABLE `table_admin` (
  `id_admin` int(10) UNSIGNED NOT NULL,
  `id_product` int(11) NOT NULL,
  `title` char(50) NOT NULL,
  `content` varchar(250) NOT NULL,
  `date` date NOT NULL,
  `price` int(11) NOT NULL,
  `image_product` mediumblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `table_order`
--

CREATE TABLE `table_order` (
  `id_order` int(10) UNSIGNED NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL,
  `id_product` int(10) UNSIGNED NOT NULL,
  `status` char(50) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `table_order_detail`
--

CREATE TABLE `table_order_detail` (
  `quantity` int(11) NOT NULL,
  `price-ttc` int(11) NOT NULL,
  `id_order` int(10) UNSIGNED NOT NULL,
  `id_product` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `table_product`
--

CREATE TABLE `table_product` (
  `id_product` int(10) UNSIGNED NOT NULL,
  `title_product` char(50) NOT NULL,
  `description` char(50) NOT NULL,
  `price_ht` int(11) NOT NULL,
  `price_ttc` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `extension` char(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `table_product`
--

INSERT INTO `table_product` (`id_product`, `title_product`, `description`, `price_ht`, `price_ttc`, `quantity`, `extension`) VALUES
(39, 'coca', 'yuiyui', 1, 3, 2, 'jpg'),
(41, 'cocas', '2', 1, 3, 2, 'jpg');

-- --------------------------------------------------------

--
-- Structure de la table `table_resa`
--

CREATE TABLE `table_resa` (
  `id_resa` int(10) UNSIGNED NOT NULL,
  `resa_date` int(11) NOT NULL,
  `number_resa` int(11) NOT NULL,
  `id_user` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `table_user`
--

CREATE TABLE `table_user` (
  `id_user` int(10) UNSIGNED NOT NULL,
  `name` char(50) NOT NULL,
  `lastname` char(50) NOT NULL,
  `birthdate` date NOT NULL,
  `adress` char(50) NOT NULL,
  `city` char(50) NOT NULL,
  `CP` int(11) NOT NULL,
  `tel` int(11) NOT NULL,
  `mail` char(50) NOT NULL,
  `password` char(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Index pour les tables exportées
--

--
-- Index pour la table `table_admin`
--
ALTER TABLE `table_admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Index pour la table `table_order`
--
ALTER TABLE `table_order`
  ADD PRIMARY KEY (`id_order`),
  ADD KEY `id_order` (`id_order`),
  ADD KEY `id_product` (`id_product`);

--
-- Index pour la table `table_order_detail`
--
ALTER TABLE `table_order_detail`
  ADD KEY `id_order` (`id_order`),
  ADD KEY `id_product` (`id_product`);

--
-- Index pour la table `table_product`
--
ALTER TABLE `table_product`
  ADD PRIMARY KEY (`id_product`),
  ADD UNIQUE KEY `title_product` (`title_product`);

--
-- Index pour la table `table_resa`
--
ALTER TABLE `table_resa`
  ADD PRIMARY KEY (`id_resa`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_resa` (`id_resa`);

--
-- Index pour la table `table_user`
--
ALTER TABLE `table_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `table_admin`
--
ALTER TABLE `table_admin`
  MODIFY `id_admin` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `table_order`
--
ALTER TABLE `table_order`
  MODIFY `id_order` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `table_product`
--
ALTER TABLE `table_product`
  MODIFY `id_product` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT pour la table `table_resa`
--
ALTER TABLE `table_resa`
  MODIFY `id_resa` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `table_user`
--
ALTER TABLE `table_user`
  MODIFY `id_user` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `table_order`
--
ALTER TABLE `table_order`
  ADD CONSTRAINT `id_product_fk` FOREIGN KEY (`id_product`) REFERENCES `table_product` (`id_product`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Contraintes pour la table `table_order_detail`
--
ALTER TABLE `table_order_detail`
  ADD CONSTRAINT `id_order_fkk` FOREIGN KEY (`id_order`) REFERENCES `table_order` (`id_order`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `id_product_fkk` FOREIGN KEY (`id_product`) REFERENCES `table_product` (`id_product`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Contraintes pour la table `table_resa`
--
ALTER TABLE `table_resa`
  ADD CONSTRAINT `id_user_fkk` FOREIGN KEY (`id_user`) REFERENCES `table_user` (`id_user`) ON DELETE NO ACTION ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
