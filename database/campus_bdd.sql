-- Adminer 4.8.1 MySQL 5.5.5-10.5.13-MariaDB-0ubuntu0.21.10.1 dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nom_UNIQUE` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `category` (`id`, `name`) VALUES
(1,	'Ecran'),
(2,	'Réseau'),
(3,	'Stockage');

DROP TABLE IF EXISTS `commande_has_produit`;
CREATE TABLE `commande_has_produit` (
  `commande_id` int(11) NOT NULL,
  `produit_id` int(11) NOT NULL,
  `quantite` int(11) NOT NULL,
  PRIMARY KEY (`commande_id`,`produit_id`),
  KEY `fk_commande_has_produit_produit1_idx` (`produit_id`),
  KEY `fk_commande_has_produit_commande1_idx` (`commande_id`),
  CONSTRAINT `fk_commande_has_produit_commande1` FOREIGN KEY (`commande_id`) REFERENCES `order` (`id`),
  CONSTRAINT `fk_commande_has_produit_produit1` FOREIGN KEY (`produit_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `commande_has_produit` (`commande_id`, `produit_id`, `quantite`) VALUES
(1,	7,	7),
(1,	14,	37),
(2,	11,	36),
(2,	17,	50),
(3,	17,	1),
(4,	17,	26),
(5,	2,	33),
(5,	8,	49),
(5,	11,	8),
(5,	17,	48),
(6,	5,	41),
(7,	1,	44),
(7,	9,	27),
(8,	13,	24),
(8,	16,	8),
(9,	1,	1),
(10,	16,	14),
(10,	17,	17),
(12,	4,	48),
(12,	6,	40),
(13,	16,	50),
(14,	9,	22),
(14,	10,	24),
(15,	6,	21),
(16,	6,	30),
(17,	10,	43),
(18,	9,	29),
(18,	11,	1),
(19,	10,	4),
(19,	17,	36),
(20,	12,	25),
(21,	6,	15),
(21,	14,	5),
(22,	2,	23),
(22,	8,	27),
(23,	15,	8),
(24,	13,	6),
(24,	16,	21),
(26,	1,	37),
(26,	3,	47),
(26,	7,	7),
(26,	8,	23),
(26,	12,	10),
(26,	13,	49),
(27,	14,	40),
(29,	9,	3),
(30,	12,	49),
(30,	13,	43),
(30,	14,	42),
(31,	12,	33),
(32,	4,	45),
(32,	6,	16),
(32,	7,	27),
(33,	12,	35),
(35,	4,	34),
(35,	8,	7),
(35,	14,	44),
(35,	15,	14),
(37,	1,	25),
(37,	10,	44),
(37,	12,	25),
(37,	13,	22),
(37,	14,	43),
(39,	2,	8),
(39,	5,	13),
(40,	5,	33),
(40,	7,	29),
(42,	1,	24),
(43,	3,	42),
(43,	8,	44),
(43,	9,	37),
(43,	14,	21),
(44,	2,	26),
(45,	5,	22),
(47,	16,	6),
(48,	11,	23),
(49,	11,	34),
(50,	3,	39),
(50,	14,	32),
(51,	13,	38),
(54,	10,	46),
(54,	16,	47),
(56,	1,	20),
(56,	14,	49),
(56,	17,	48),
(57,	9,	9),
(57,	12,	39),
(57,	14,	47),
(59,	9,	23),
(60,	5,	28),
(60,	16,	40),
(61,	7,	43),
(64,	1,	30),
(64,	14,	6),
(64,	16,	50),
(67,	10,	30),
(68,	1,	30),
(68,	9,	39),
(68,	13,	4),
(69,	4,	36),
(69,	5,	11),
(69,	7,	2),
(69,	13,	29),
(70,	13,	24),
(71,	2,	15),
(71,	13,	38),
(72,	1,	26),
(72,	14,	46),
(73,	11,	50),
(75,	6,	43),
(76,	11,	37),
(77,	7,	13),
(77,	11,	4),
(78,	5,	44),
(78,	14,	4),
(80,	11,	14),
(81,	8,	19),
(82,	2,	2),
(82,	8,	35),
(82,	9,	46),
(83,	2,	1),
(83,	3,	22),
(84,	5,	15),
(84,	16,	43),
(86,	7,	47),
(87,	5,	41),
(87,	9,	38),
(87,	13,	4),
(87,	14,	32),
(88,	8,	12),
(89,	1,	16),
(89,	11,	10),
(89,	12,	16),
(90,	5,	25),
(90,	15,	5),
(91,	11,	44),
(91,	14,	21),
(93,	7,	27),
(93,	12,	48),
(93,	14,	34),
(94,	13,	3),
(95,	1,	6),
(95,	12,	31),
(95,	17,	30),
(96,	1,	4),
(97,	14,	9),
(99,	2,	4),
(99,	10,	2),
(99,	15,	15),
(100,	14,	41);

DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lastName` varchar(45) NOT NULL,
  `firstName` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `customer` (`id`, `lastName`, `firstName`, `email`, `password`) VALUES
(1,	'Martin',	'',	'',	''),
(2,	'Bernard',	'',	'',	''),
(3,	'Dubois',	'',	'',	''),
(4,	'Thomas',	'',	'',	''),
(5,	'Robert',	'',	'',	''),
(6,	'Richard',	'',	'',	''),
(7,	'Petit',	'',	'',	''),
(8,	'Durand',	'',	'',	''),
(9,	'Martin',	'',	'',	''),
(10,	'Martin',	'',	'',	''),
(11,	'Martin',	'',	'',	''),
(12,	'Martin',	'',	'',	''),
(13,	'Martin',	'',	'',	''),
(14,	'Michel',	'',	'',	''),
(15,	'Garcia',	'',	'',	''),
(16,	'David',	'',	'',	''),
(17,	'Bertrand',	'',	'',	''),
(18,	'Roux',	'',	'',	''),
(19,	'Vincent',	'',	'',	''),
(20,	'Fournier',	'',	'',	''),
(21,	'Morel',	'',	'',	''),
(22,	'Girard',	'',	'',	''),
(23,	'Andre',	'',	'',	''),
(24,	'Lefevre',	'',	'',	''),
(25,	'Mercier',	'',	'',	''),
(26,	'Dupont',	'',	'',	''),
(27,	'Lambert',	'',	'',	''),
(28,	'Bonnet',	'',	'',	''),
(29,	'Francois',	'',	'',	''),
(30,	'Martinez',	'',	'',	''),
(31,	'Legrand',	'',	'',	''),
(32,	'Garnier',	'',	'',	''),
(33,	'Faure',	'',	'',	''),
(34,	'Rousseau',	'',	'',	''),
(35,	'Blanc',	'',	'',	''),
(36,	'Guerin',	'',	'',	''),
(37,	'Muller',	'',	'',	''),
(38,	'Henry',	'',	'',	''),
(39,	'Roussel',	'',	'',	''),
(40,	'Nicolas',	'',	'',	''),
(41,	'Perrin',	'',	'',	''),
(42,	'Morin',	'',	'',	''),
(43,	'Mathieu',	'',	'',	''),
(44,	'Clement',	'',	'',	''),
(45,	'Gauthier',	'',	'',	''),
(46,	'Dumont',	'',	'',	''),
(47,	'Lopez',	'',	'',	''),
(48,	'Fontaine',	'',	'',	''),
(49,	'Chevalier',	'',	'',	''),
(50,	'Robin',	'',	'',	'');

DROP TABLE IF EXISTS `order`;
CREATE TABLE `order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `numero` varchar(45) NOT NULL,
  `orderDate` datetime NOT NULL,
  `deliveryDate` datetime DEFAULT NULL,
  `customer_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `numero_UNIQUE` (`numero`),
  KEY `fk_commande_client1_idx` (`customer_id`),
  CONSTRAINT `fk_commande_client1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `order` (`id`, `numero`, `orderDate`, `deliveryDate`, `customer_id`) VALUES
(1,	'1258',	'2021-05-18 00:00:00',	'2021-06-29 00:00:00',	17),
(2,	'1288',	'2021-05-24 00:00:00',	'2021-06-01 00:00:00',	21),
(3,	'1940',	'2021-08-09 00:00:00',	'2021-08-12 00:00:00',	22),
(4,	'2485',	'2022-01-30 00:00:00',	'2022-02-07 00:00:00',	38),
(5,	'577',	'2021-11-09 00:00:00',	'2021-12-01 00:00:00',	29),
(6,	'1331',	'2021-12-07 00:00:00',	'2022-01-04 00:00:00',	38),
(7,	'1319',	'2021-10-14 00:00:00',	'2021-11-04 00:00:00',	24),
(8,	'17',	'2021-10-13 00:00:00',	'2021-11-06 00:00:00',	29),
(9,	'137',	'2021-05-28 00:00:00',	'2021-06-15 00:00:00',	25),
(10,	'1303',	'2021-06-30 00:00:00',	'2021-08-28 00:00:00',	25),
(12,	'1256',	'2021-03-25 00:00:00',	'2021-05-20 00:00:00',	4),
(13,	'2058',	'2021-10-10 00:00:00',	'2021-11-21 00:00:00',	29),
(14,	'217',	'2021-03-12 00:00:00',	'2021-03-25 00:00:00',	18),
(15,	'2023',	'2021-12-16 00:00:00',	'2022-02-08 00:00:00',	7),
(16,	'1506',	'2021-10-30 00:00:00',	'2021-12-17 00:00:00',	22),
(17,	'1650',	'2021-09-03 00:00:00',	'2021-10-05 00:00:00',	28),
(18,	'249',	'2021-08-28 00:00:00',	'2021-10-09 00:00:00',	1),
(19,	'2126',	'2021-02-28 00:00:00',	'2021-03-18 00:00:00',	31),
(20,	'1593',	'2021-02-01 00:00:00',	'2021-02-20 00:00:00',	26),
(21,	'512',	'2021-12-08 00:00:00',	'2021-12-24 00:00:00',	19),
(22,	'164',	'2021-09-08 00:00:00',	'2021-10-25 00:00:00',	37),
(23,	'1776',	'2021-05-03 00:00:00',	'2021-06-30 00:00:00',	11),
(24,	'489',	'2021-11-04 00:00:00',	'2021-11-20 00:00:00',	43),
(26,	'274',	'2021-04-02 00:00:00',	'2021-04-02 00:00:00',	48),
(27,	'2227',	'2021-06-15 00:00:00',	'2021-07-17 00:00:00',	1),
(29,	'2228',	'2021-10-22 00:00:00',	'2021-10-26 00:00:00',	26),
(30,	'910',	'2021-10-30 00:00:00',	'2021-12-24 00:00:00',	11),
(31,	'901',	'2021-01-31 00:00:00',	'2021-03-12 00:00:00',	44),
(32,	'244',	'2021-08-07 00:00:00',	'2021-09-23 00:00:00',	12),
(33,	'1658',	'2021-08-11 00:00:00',	'2021-08-14 00:00:00',	34),
(35,	'480',	'2021-11-03 00:00:00',	'2021-12-29 00:00:00',	50),
(37,	'1079',	'2021-03-25 00:00:00',	'2021-04-20 00:00:00',	1),
(39,	'810',	'2021-12-20 00:00:00',	'2022-01-23 00:00:00',	13),
(40,	'11',	'2021-02-28 00:00:00',	'2021-04-25 00:00:00',	4),
(42,	'692',	'2021-03-10 00:00:00',	'2021-05-06 00:00:00',	23),
(43,	'2343',	'2021-03-28 00:00:00',	'2021-04-03 00:00:00',	36),
(44,	'1022',	'2021-09-11 00:00:00',	'2021-09-28 00:00:00',	45),
(45,	'1422',	'2021-06-29 00:00:00',	'2021-08-28 00:00:00',	14),
(47,	'1311',	'2021-08-29 00:00:00',	'2021-10-25 00:00:00',	2),
(48,	'2152',	'2021-10-08 00:00:00',	'2021-11-03 00:00:00',	18),
(49,	'1386',	'2021-10-05 00:00:00',	'2021-10-31 00:00:00',	48),
(50,	'2076',	'2021-12-21 00:00:00',	'2022-01-02 00:00:00',	4),
(51,	'26',	'2021-01-24 00:00:00',	'2021-03-16 00:00:00',	20),
(54,	'1296',	'2021-03-17 00:00:00',	'2021-03-21 00:00:00',	28),
(56,	'1354',	'2021-09-02 00:00:00',	'2021-10-25 00:00:00',	32),
(57,	'1512',	'2022-01-02 00:00:00',	'2022-01-05 00:00:00',	46),
(59,	'2101',	'2021-09-08 00:00:00',	'2021-10-31 00:00:00',	35),
(60,	'183',	'2021-03-09 00:00:00',	'2021-03-22 00:00:00',	13),
(61,	'1215',	'2021-03-15 00:00:00',	'2021-05-10 00:00:00',	8),
(64,	'763',	'2021-01-21 00:00:00',	'2021-01-24 00:00:00',	37),
(67,	'1963',	'2021-11-29 00:00:00',	'2021-12-24 00:00:00',	13),
(68,	'602',	'2021-01-16 00:00:00',	'2021-01-22 00:00:00',	8),
(69,	'2158',	'2021-10-25 00:00:00',	'2021-12-22 00:00:00',	18),
(70,	'2163',	'2021-02-11 00:00:00',	'2021-02-27 00:00:00',	24),
(71,	'317',	'2021-03-08 00:00:00',	'2021-04-05 00:00:00',	19),
(72,	'2488',	'2021-01-13 00:00:00',	'2021-01-30 00:00:00',	1),
(73,	'1229',	'2021-03-20 00:00:00',	'2021-04-30 00:00:00',	20),
(75,	'629',	'2021-05-30 00:00:00',	'2021-06-24 00:00:00',	48),
(76,	'395',	'2021-08-16 00:00:00',	'2021-09-18 00:00:00',	31),
(77,	'327',	'2021-01-03 00:00:00',	'2021-02-23 00:00:00',	19),
(78,	'1371',	'2021-09-04 00:00:00',	'2021-10-16 00:00:00',	33),
(80,	'1197',	'2021-08-28 00:00:00',	'2021-10-25 00:00:00',	18),
(81,	'1516',	'2021-06-18 00:00:00',	'2021-07-31 00:00:00',	44),
(82,	'1478',	'2021-07-29 00:00:00',	'2021-09-12 00:00:00',	39),
(83,	'1042',	'2021-11-15 00:00:00',	'2021-12-04 00:00:00',	15),
(84,	'770',	'2021-11-15 00:00:00',	'2021-11-19 00:00:00',	7),
(86,	'1233',	'2021-11-10 00:00:00',	'2021-11-17 00:00:00',	48),
(87,	'2293',	'2022-01-28 00:00:00',	'2022-03-05 00:00:00',	19),
(88,	'1835',	'2021-09-06 00:00:00',	'2021-10-09 00:00:00',	5),
(89,	'1942',	'2021-01-15 00:00:00',	'2021-03-04 00:00:00',	23),
(90,	'371',	'2022-02-10 00:00:00',	'2022-02-17 00:00:00',	28),
(91,	'1969',	'2021-11-07 00:00:00',	'2021-12-25 00:00:00',	12),
(93,	'1687',	'2021-01-31 00:00:00',	'2021-04-01 00:00:00',	8),
(94,	'1429',	'2022-02-10 00:00:00',	'2022-02-14 00:00:00',	45),
(95,	'1781',	'2021-02-10 00:00:00',	'2021-03-10 00:00:00',	45),
(96,	'467',	'2021-06-28 00:00:00',	'2021-07-24 00:00:00',	13),
(97,	'1922',	'2021-05-18 00:00:00',	'2021-06-19 00:00:00',	22),
(99,	'798',	'2022-02-10 00:00:00',	'2022-02-14 00:00:00',	7),
(100,	'452',	'2022-02-10 00:00:00',	'2022-02-15 00:00:00',	46);

DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) NOT NULL,
  `description` varchar(45) DEFAULT NULL,
  `price` decimal(10,2) NOT NULL,
  `stock` int(11) NOT NULL DEFAULT 0,
  `tva` int(11) NOT NULL,
  `weight` int(11) NOT NULL,
  `categorie_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_produit_categorie_idx` (`categorie_id`),
  CONSTRAINT `fk_produit_categorie` FOREIGN KEY (`categorie_id`) REFERENCES `category` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `products` (`id`, `title`, `description`, `price`, `stock`, `tva`, `weight`, `categorie_id`) VALUES
(1,	'Philips 21.5\" LED - 221B8LHEB',	NULL,	94.13,	225,	0,	0,	1),
(2,	'LG 19\" LED - 19M38A-B',	NULL,	95.76,	0,	0,	0,	1),
(3,	'ASUS 18.5\" LED - VS197DE',	NULL,	123.69,	360,	0,	0,	1),
(4,	'Philips 21.5\" LED - 223V5LSB2',	NULL,	98.91,	20,	0,	0,	1),
(5,	'ASUS DSL-AC88U',	NULL,	287.95,	50,	0,	0,	2),
(6,	'Synology RT2600ac',	NULL,	452.50,	20,	0,	0,	2),
(7,	'TP-LINK TL-MR6400',	NULL,	78.00,	0,	0,	0,	2),
(8,	'ASUS DSL-AC68U',	NULL,	85.63,	0,	0,	0,	2),
(9,	'LaCie SSD Portable 1 To',	NULL,	412.11,	85,	0,	0,	3),
(10,	'ASUS RT-AC52U B1',	NULL,	410.00,	20,	0,	0,	2),
(11,	'Netgear D7000 Nighthawk',	NULL,	142.85,	22,	0,	0,	2),
(12,	'Netgear LB2120',	NULL,	74.65,	33,	0,	0,	2),
(13,	'Seagate Portable Expansion 2 To',	NULL,	145.65,	56,	0,	0,	3),
(14,	'WD Elements Portable 2 To Noir (USB 3.0)',	NULL,	452.12,	440,	0,	0,	3),
(15,	'SanDisk Extreme Portable SSD 500 Go',	NULL,	23.56,	230,	0,	0,	3),
(16,	'Seagate Expansion Desktop 4 To',	NULL,	234.78,	96,	0,	0,	3),
(17,	'Toshiba Canvio Ready 4 To Noir',	NULL,	45.14,	56,	0,	0,	3);

-- 2022-02-11 13:22:06
