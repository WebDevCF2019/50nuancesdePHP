-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  ven. 08 mars 2019 à 13:59
-- Version du serveur :  5.7.24
-- Version de PHP :  7.2.14

SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `nuancesdephp`
--

--
-- Déchargement des données de la table `article`
--

INSERT INTO `article` (`idarticle`, `thetitle`, `thetext`, `thedate`, `user_iduser`) VALUES
(1, 'Twilight, Tome 2 : Tentation', 'Avant toi, Bella, ma vie était une nuit sans lune. Très noire, même s\'il y avait des étoiles - des points de lumière et de raison... Et puis, tout à coup, tu as traversé mon ciel comme une météore. Soudain, tout brillait, tout brûlait, tout était beau. Quand tu as eu disparu, quand le météore est tombé derrière l\'horizon, tout s\'est de nouveau assombri. Rien n\'avait changé, sauf que mes yeux avaient été aveuglés par la lumière. Je ne distinguais plus les étoiles, et la raison ne signifiait plus rien.\r\n\r\nCes plaisirs violent,on des fins violente,dans leurs excès il meurent tel la poudre et le feu que leurs baiser consume.', '2019-03-08 14:53:54', 1),
(2, 'Trolldi : et si le philosophe Marc Aurèle était un développeur ?', 'La philosophie se définit de plusieurs façons, c’est une discipline qui propose à la fois une réflexion et un questionnement sur le monde et sur l’existence humaine. Depuis sa naissance, dans l’Antiquité, la philosophie s’est approprié un rôle particulier au sein des diverses sciences en participant à leur progression, notamment en posant les problèmes de base, pour ensuite élaborer des explications aux différents phénomènes.\r\n\r\nParmi les courants philosophiques figure le stoïcisme, qui a pour finalité le bonheur de l\'existence humaine obtenu grâce à une acceptation rationnelle de l\'ordre du monde et de son évolution. Il repose notamment sur la distinction centrale entre d\'un côté les choses qui dépendent de nous et sur lesquelles nous devons concentrer nos efforts, et d\'un autre côté les choses qui ne dépendent pas de nous, contre lesquelles il est vain de lutter et que nous devons au contraire supporter et accepter (principe de détachement).\r\n\r\nL’un de ses adeptes est Marc Aurèle, qui était également un empereur romain. Très tôt, il a été initié à la philosophie. C\'est notamment à l\'instigation d\'un de ses maîtres, Diognetus, qu\'il prit en avril 132 la tunique rêche du stoïcien et se mit à dormir à même le sol jusqu\'à ce que sa mère parvienne à le convaincre de dormir dans un lit.\r\n\r\nMatic Jurglič est un ingénieur qui est pratiquant du stoïcisme : « vivant ma vie de développeur de logiciels, j’ai récemment eu l’idée de transformer les paroles de sagesse de Marc en jargon de développeur. En reprenant cette philosophie générale et en la ramenant à mon environnement professionnel, je me suis aidée à renforcer ma vertu au travail. »\r\n\r\n\r\nCes paroles de sagesse, comme il les appelle, proviennent de Pensées pour moi-même\r\n\r\nCitation Envoyé par Marc Aurèle\r\nQuand vous vous réveillez le matin, dites-vous : les gens à qui j’aurais affaire aujourd\'hui seront fouineurs, ingrats, arrogants, malhonnêtes, jaloux et hargneux. Ils sont comme ça parce qu’ils ne peuvent pas distinguer le bien du mal. Mais j’ai vu la beauté du bien et la laideur du mal, et j’ai reconnu que le malfaiteur a une nature apparentée à la mienne - pas du même sang et de la même naissance, mais du même esprit et possédant une part du divin. Et donc aucun d\'entre eux ne peut me faire mal. Personne ne peut m\'impliquer dans la laideur. Je ne peux pas non plus me mettre en colère contre mon parent ou le haïr. Nous sommes nés pour travailler ensemble comme des pieds, des mains et des yeux, comme les deux rangées de dents, supérieure et inférieure. Se gêner mutuellement n\'est pas naturel. Sentir la colère contre quelqu\'un, lui tourner le dos: ce n\'est pas naturel.\r\nVoyons maintenant comment Matic l’a adapté à l’ère moderne, en tant qu’exercice matinal pour les développeurs stoïques.\r\n\r\nCitation Envoyé par Matic Jurglič\r\nAu réveil, dites-vous :\r\n\r\nLe logiciel et les processus que je traiterai aujourd’hui seront bogués, cassés, non documentés et écrits dans des contextes dont les traces ont été perdues à jamais. Je serai dirigé par des patrons déraisonnables qui ont perdu contact avec la réalité, et je traiterai des mises en œuvre abyssales contenant des failles de sécurité flagrantes. Tout en essayant de respecter des délais rigoureux, je me heurterai continuellement à des problèmes inexplicables, interrompant mes progrès. Les clients signaleront des problèmes relevant de la catégorie des cas extrêmes que je n\'aurais jamais imaginés.\r\n\r\nMon travail est comme ça parce que j\'ai choisi la vie d\'un résolveur de problèmes, et je suis capable d\'organiser et de résoudre les problèmes de manière calme et ciblée. De plus, j\'ai appris à prospérer dans ces conditions.\r\n', '2019-03-08 14:56:33', 1);

--
-- Déchargement des données de la table `categorie`
--

INSERT INTO `categorie` (`idcategorie`, `thetitle`) VALUES
(7, 'Action'),
(2, 'Aventure'),
(9, 'BDSM'),
(8, 'Biographique'),
(4, 'Drame'),
(6, 'Fantastique'),
(3, 'Historique'),
(1, 'Romance'),
(5, 'Thriller');

--
-- Déchargement des données de la table `categorie_has_article`
--

INSERT INTO `categorie_has_article` (`categorie_idcategorie`, `article_idarticle`) VALUES
(1, 1),
(3, 2);

--
-- Déchargement des données de la table `permission`
--

INSERT INTO `permission` (`idpermission`, `thename`, `theperm`) VALUES
(4, 'Administrateur', 0),
(5, 'Auteur actif', 1),
(6, 'Auteur inactif', 2);

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`iduser`, `thelogin`, `thepwd`, `thename`, `thebio`, `themail`, `permission_idpermission`) VALUES
(1, 'root', '123', 'Mia Khalifa', 'Mia Khalifa est née le 10 février 1993 à Beyrouth, la capitale du Liban. Mia Khalifa est née de deux parents chrétiens et se dit avoir été inspirée par cette religion', 'mia.khalifa@hotmail.com', 4),
(2, 'gravitation_universelle', 'laws_of_motion', 'Isaac Newton', 'Isaac Newton est un philosophe, mathématicien, physicien, alchimiste, astronome et théologien anglais, puis britannique.', 'manges_tes_pommes@yahoo.com', 5);
SET FOREIGN_KEY_CHECKS=1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
