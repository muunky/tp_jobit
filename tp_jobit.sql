SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;


CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` text NOT NULL,
  `roles` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `admin` (`id`, `username`, `password`, `roles`) VALUES
(1, 'pouet', '$argon2id$v=19$m=65536,t=4,p=1$VWFtQ0U0TkpoMWhCSnExMg$cTms/+aLq6dcpzW94KqXxz/7sMyt5tKWDZduImBp8sY', '[\"ROLE_ADMIN\"]');

CREATE TABLE `affiliate` (
  `id` int(11) NOT NULL,
  `url` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `active` tinyint(1) NOT NULL,
  `created` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `categorie` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `categorie` (`id`, `nom`) VALUES
(4, 'batiment'),
(2, 'botanique'),
(7, 'bureautique'),
(5, 'comptabiliter'),
(1, 'electronique\r\n'),
(6, 'jardinerie'),
(3, 'numerique');

CREATE TABLE `cat_aff` (
  `cat_id` int(11) NOT NULL,
  `affil_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `jobs` (
  `id` int(11) NOT NULL,
  `contrat` varchar(255) NOT NULL,
  `entreprise` varchar(255) NOT NULL,
  `logo` varchar(100) NOT NULL,
  `url` varchar(255) NOT NULL,
  `pays` varchar(255) NOT NULL,
  `lieu` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `active` tinyint(1) DEFAULT 0,
  `expire` date DEFAULT NULL,
  `created` date DEFAULT NULL,
  `updated` date DEFAULT NULL,
  `categorie` int(11) NOT NULL,
  `postuler` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `jobs` (`id`, `contrat`, `entreprise`, `logo`, `url`, `pays`, `lieu`, `description`, `token`, `email`, `active`, `expire`, `created`, `updated`, `categorie`, `postuler`) VALUES
(4, 'laveur', 'destruk', 'logo.jpg', 'https://youtu.be/XtitJ3_HcDY?t=132', 'france', 'ici', 'faite plein de belle chose !', '', 'hehe@hehe.com', 0, '0000-00-00', '2020-11-25', '0000-00-00', 2, 'nous recherchon des gens avec 60 ans d\'experience dans le domaine et de niveau debutant'),
(5, 'elageur', 'amour_des_arbre', 'logo.jpg', 'https://youtu.be/XtitJ3_HcDY?t=132', 'belgique', 'moek', 'couper des branche d\'arbre , parfois en escaladant l\'arbre lui meme', '', 'uliouiol@loiuiuio.com', 0, '0000-00-00', '2020-11-28', '0000-00-00', 6, 'nous cherche des debutant avec au moins 1 ans d\'experience , qui n\'ont pas le vertige\r\n\r\navantage pour ceux ayant deja pratiquer l\'escalade'),
(6, 'qze<srdg', 'Invictus Rutherfordium', 'logo.jpg', 'https://youtu.be/XtitJ3_HcDY?t=132', 'mozambique', 'berlin', 'fédétruk', '', 'hehe@hehe.com', 0, '0000-00-00', '2020-11-13', '0000-00-00', 3, 'nous cherche des debutant avec au moins 1 ans d\'experience , qui n\'ont pas le vertige'),
(7, 'inspiration', 'Invictus Rutherfordium', 'logo.jpg', 'https://youtu.be/XtitJ3_HcDY?t=132', 'mozambique', 'berlin', 'dtruk', '', 'hehe@hehe.com', 0, '0000-00-00', '2020-11-21', '0000-00-00', 6, 'nous cherche des debutant avec au moins 1 ans d\'experience , qui n\'ont pas le vertige'),
(8, 'carotte', 'Invictus Rutherfordium', 'logo.jpg', 'https://youtu.be/XtitJ3_HcDY?t=132', 'mozambique', 'berlin', 'dtruk', '', 'hehe@hehe.com', 0, '0000-00-00', '2020-11-21', '0000-00-00', 6, 'nous cherche des debutant avec au moins 1 ans d\'experience , qui n\'ont pas le vertige'),
(9, 'sysmographe', 'Invictus Rutherfordium', 'logo.jpg', 'https://youtu.be/XtitJ3_HcDY?t=132', 'mozambique', 'berlin', 'dtruk', '', 'hehe@hehe.com', 0, '0000-00-00', '2020-11-21', '0000-00-00', 6, 'nous cherche des debutant avec au moins 1 ans d\'experience , qui n\'ont pas le vertige'),
(10, 'Rutherfordium', 'ZBLE', 'logo.jpg', 'https://youtu.be/XtitJ3_HcDY?t=132', 'mozambique', 'berlin', 'dtruk', '', 'hehe@hehe.com', 0, '0000-00-00', '2020-11-21', '0000-00-00', 6, 'nous cherche des debutant avec au moins 1 ans d\'experience , qui n\'ont pas le vertige'),
(11, 'Nihonium', 'Invictus Rutherfordium', 'logo.jpg', 'https://youtu.be/XtitJ3_HcDY?t=132', 'mozambique', 'berlin', 'dtruk', '', 'hehe@hehe.com', 0, '0000-00-00', '2020-11-21', '0000-00-00', 6, 'nous cherche des debutant avec au moins 1 ans d\'experience , qui n\'ont pas le vertige'),
(12, 'Moscovium', 'Invictus Rutherfordium', 'logo.jpg', 'https://youtu.be/XtitJ3_HcDY?t=132', 'mozambique', 'berlin', 'dtruk', '', 'hehe@hehe.com', 0, '0000-00-00', '2020-11-21', '0000-00-00', 6, 'nous cherche des debutant avec au moins 1 ans d\'experience , qui n\'ont pas le vertige'),
(13, ' 	Francium', 'ZBLE', 'logo.jpg', 'https://youtu.be/XtitJ3_HcDY?t=132', 'mozambique', 'berlin', 'dtruk', '', 'hehe@hehe.com', 0, '0000-00-00', '2020-11-21', '0000-00-00', 6, 'nous cherche des debutant avec au moins 1 ans d\'experience , qui n\'ont pas le vertige'),
(14, ' 	Protactinium', 'Invictus Rutherfordium', 'logo.jpg', 'https://youtu.be/XtitJ3_HcDY?t=132', 'mozambique', 'berlin', 'dtruk', '', 'hehe@hehe.com', 0, '0000-00-00', '2020-11-21', '0000-00-00', 6, 'nous cherche des debutant avec au moins 1 ans d\'experience , qui n\'ont pas le vertige'),
(15, 'Erbium', '<zg', 'logo.jpg', 'https://youtu.be/XtitJ3_HcDY?t=132', 'mozambique', 'berlin', 'fédétruk', NULL, 'g<erg<e', 0, '2020-11-10', '2020-11-11', '2020-11-12', 1, 'nous cherche des debutant avec au moins 1 ans d\'experience , qui n\'ont pas le vertige');


ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `affiliate`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `categorie`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nom` (`nom`);

ALTER TABLE `cat_aff`
  ADD KEY `cat_id` (`cat_id`),
  ADD KEY `affil_id` (`affil_id`);

ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categorie_id` (`categorie`);


ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

ALTER TABLE `categorie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

ALTER TABLE `jobs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;


ALTER TABLE `cat_aff`
  ADD CONSTRAINT `cat_aff_ibfk_1` FOREIGN KEY (`cat_id`) REFERENCES `categorie` (`id`),
  ADD CONSTRAINT `cat_aff_ibfk_2` FOREIGN KEY (`affil_id`) REFERENCES `affiliate` (`id`);

ALTER TABLE `jobs`
  ADD CONSTRAINT `jobs_ibfk_1` FOREIGN KEY (`categorie`) REFERENCES `categorie` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
