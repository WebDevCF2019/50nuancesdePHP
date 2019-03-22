-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  jeu. 21 mars 2019 à 15:10
-- Version du serveur :  5.7.24
-- Version de PHP :  7.3.1

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

-- --------------------------------------------------------

--
-- Structure de la table `article`
--

DROP TABLE IF EXISTS `article`;
CREATE TABLE IF NOT EXISTS `article` (
  `idarticle` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `thetitle` varchar(200) NOT NULL,
  `thetext` text NOT NULL,
  `thedate` datetime DEFAULT CURRENT_TIMESTAMP,
  `user_iduser` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`idarticle`),
  KEY `fk_article_user_idx` (`user_iduser`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `article`
--

INSERT INTO `article` (`idarticle`, `thetitle`, `thetext`, `thedate`, `user_iduser`) VALUES
(1, 'Twilight, Tome 2 : Tentation', 'Avant toi, Bella, ma vie était une nuit sans lune. Très noire, même s\'il y avait des étoiles - des points de lumière et de raison... Et puis, tout à coup, tu as traversé mon ciel comme une météore. Soudain, tout brillait, tout brûlait, tout était beau. Quand tu as eu disparu, quand le météore est tombé derrière l\'horizon, tout s\'est de nouveau assombri. Rien n\'avait changé, sauf que mes yeux avaient été aveuglés par la lumière. Je ne distinguais plus les étoiles, et la raison ne signifiait plus rien.\r\n\r\nCes plaisirs violent,on des fins violente,dans leurs excès il meurent tel la poudre et le feu que leurs baiser consume.', '2019-03-08 14:53:54', 1),
(2, 'Trolldi : et si le philosophe Marc Aurèle était un développeur ?', 'La philosophie se définit de plusieurs façons, c’est une discipline qui propose à la fois une réflexion et un questionnement sur le monde et sur l’existence humaine. Depuis sa naissance, dans l’Antiquité, la philosophie s’est approprié un rôle particulier au sein des diverses sciences en participant à leur progression, notamment en posant les problèmes de base, pour ensuite élaborer des explications aux différents phénomènes.\r\n\r\nParmi les courants philosophiques figure le stoïcisme, qui a pour finalité le bonheur de l\'existence humaine obtenu grâce à une acceptation rationnelle de l\'ordre du monde et de son évolution. Il repose notamment sur la distinction centrale entre d\'un côté les choses qui dépendent de nous et sur lesquelles nous devons concentrer nos efforts, et d\'un autre côté les choses qui ne dépendent pas de nous, contre lesquelles il est vain de lutter et que nous devons au contraire supporter et accepter (principe de détachement).\r\n\r\nL’un de ses adeptes est Marc Aurèle, qui était également un empereur romain. Très tôt, il a été initié à la philosophie. C\'est notamment à l\'instigation d\'un de ses maîtres, Diognetus, qu\'il prit en avril 132 la tunique rêche du stoïcien et se mit à dormir à même le sol jusqu\'à ce que sa mère parvienne à le convaincre de dormir dans un lit.\r\n\r\nMatic Jurglič est un ingénieur qui est pratiquant du stoïcisme : « vivant ma vie de développeur de logiciels, j’ai récemment eu l’idée de transformer les paroles de sagesse de Marc en jargon de développeur. En reprenant cette philosophie générale et en la ramenant à mon environnement professionnel, je me suis aidée à renforcer ma vertu au travail. »\r\n\r\n\r\nCes paroles de sagesse, comme il les appelle, proviennent de Pensées pour moi-même\r\n\r\nCitation Envoyé par Marc Aurèle\r\nQuand vous vous réveillez le matin, dites-vous : les gens à qui j’aurais affaire aujourd\'hui seront fouineurs, ingrats, arrogants, malhonnêtes, jaloux et hargneux. Ils sont comme ça parce qu’ils ne peuvent pas distinguer le bien du mal. Mais j’ai vu la beauté du bien et la laideur du mal, et j’ai reconnu que le malfaiteur a une nature apparentée à la mienne - pas du même sang et de la même naissance, mais du même esprit et possédant une part du divin. Et donc aucun d\'entre eux ne peut me faire mal. Personne ne peut m\'impliquer dans la laideur. Je ne peux pas non plus me mettre en colère contre mon parent ou le haïr. Nous sommes nés pour travailler ensemble comme des pieds, des mains et des yeux, comme les deux rangées de dents, supérieure et inférieure. Se gêner mutuellement n\'est pas naturel. Sentir la colère contre quelqu\'un, lui tourner le dos: ce n\'est pas naturel.\r\nVoyons maintenant comment Matic l’a adapté à l’ère moderne, en tant qu’exercice matinal pour les développeurs stoïques.\r\n\r\nCitation Envoyé par Matic Jurglič\r\nAu réveil, dites-vous :\r\n\r\nLe logiciel et les processus que je traiterai aujourd’hui seront bogués, cassés, non documentés et écrits dans des contextes dont les traces ont été perdues à jamais. Je serai dirigé par des patrons déraisonnables qui ont perdu contact avec la réalité, et je traiterai des mises en œuvre abyssales contenant des failles de sécurité flagrantes. Tout en essayant de respecter des délais rigoureux, je me heurterai continuellement à des problèmes inexplicables, interrompant mes progrès. Les clients signaleront des problèmes relevant de la catégorie des cas extrêmes que je n\'aurais jamais imaginés.\r\n\r\nMon travail est comme ça parce que j\'ai choisi la vie d\'un résolveur de problèmes, et je suis capable d\'organiser et de résoudre les problèmes de manière calme et ciblée. De plus, j\'ai appris à prospérer dans ces conditions.\r\n', '2019-03-08 14:56:33', 1),
(3, 'Le pari', 'Vincent montra son badge et se dirigea vers le petit pavillon en préfabriqué attenant au bâtiment principal. \r\n  - Salut Pierrot. \r\n  Pierrot regarda par-dessus ses lunettes.  \r\n  - Salut. \r\n  Ils étaient les premiers.  Pierrot avait la quarantaine mais on lui aurait donné au moins quinze ans de plus.  Il arrivait tôt le matin pour faire du rabe et se libérer en avance en fin de semaine.  Il avait déjà trois moteurs d\'assemblés.  Il pipait pas un mot et enfilait les rotors dans les stators, vissait le bloc cylindre, posait trois points de soudure et envoyait une giclée de graisse avec la burette.  Entre deux moteurs, il lissait sa moustache, jetait un coup d’œil par la vitre en plastique et passait au suivant. \r\nA neuf heures, il allumerait son poste pour écouter les informations et peut-être se lèverait pour aller pisser. \r\n  La pièce puait la graisse, le lubrifiant, les copeaux métalliques et la crasse incrustée dans chaque parcelle de chaque chose. \r\n  Vincent accrocha son blouson à la place de la blouse grise et vint s\'asseoir à son poste de montage.  Le chariot débordait de carcasses.  Il avait accumulé des jours entiers de retard.  Il allait vite bâcler tout ça.  De toutes façons, les moteurs d\'avions, il en avait rien à foutre.  Il avait jamais mis les pieds dans un aéroport. \r\n  Bébert et Jo allaient plus tarder à se pointer.  En fait, Jo s\'appelait pas Jo, mais il trouvait ça plus chic, il y tenait vraiment.  Vincent connaissait pas son vrai nom.  Peut-être qu\'il s\'appelait Georges, mais il aurait rien pu affirmer. \r\n  Tous les matins, Jo se ramenait avec un nouveau bouquin de cul.  Il le feuilletait avec des yeux ronds, le regard en alerte et puis le passait aux autres.  Les autres crachaient pas dessus, ils faisaient des commentaires sur les nanas, leur valeur respective.  Ils s\'étaient même constitués en jury et régulièrement on élisait la préférée. \r\n  Pierrot participait pas aux débats, il parcourait la revue comme un journal d\'annonces et la refilait à la table voisine. \r\n  Des fois, Jo retirait du mur une vieille photo et la remplaçait par une pin-up toute fraîche qui avait recueilli son enthousiasme.  Il la quittait plus des yeux pendant deux ou trois jours et puis brusquement, il se toquait d\'une nouvelle. \r\n  Souvent, il retrouvait dans un numéro, une fille qu\'il connaissait d\'une autre série de photos.  Et c\'était comme s\'il avait eu des nouvelles d\'une ancienne maîtresse.  Elle avait changé de coupe, les fringues étaient différentes et le lieu aussi.  Ou alors elles étaient deux, l\'autre lui caressait la chatte avec des yeux fiévreux ou lui écartait les lèvres en approchant son visage. Ca le rendait fou, Jo. \r\n  La porte du cabanon s\'ouvrit et les deux derniers entrèrent. \r\n  - Salut ! cria Jo. \r\n  Pierrot jeta un œil sans s\'arrêter de visser.  Jo lança : \r\n  - T\'arrête pas Pierrot, la baraque pourrait couler… \r\n  - P\'tit con, rétorqua-t-il. \r\n  Depuis vingt ans qu\'il était dans la place, Pierrot les avait vus défiler les petits jeunes.  Ils traînaient pas longtemps.  Ils se barraient ailleurs en espérant dégoter mieux, chercher la poule aux œufs d\'or, comme il leur disait.  Ils ricanaient, ils faisaient les fiers, ils trouvaient jamais mieux.  Lui, maintenant, il vissait comme un chef.  Dans le même temps qu\'eux, il débitait le double de moteurs et ça lui libérait sa dernière demi-journée.  Après le réfectoire, il glissait sa carte dans la pointeuse, il leur lançait un petit salut accompagné d\'un sourire en coin et il rentrait chez lui. \r\n  Vincent fit un signe aux retardataires et serra la dernière vis.  Le truc tournait pas.  Il l\'avait bloqué.  Il le posa proprement dans le chariot à droite de son poste et repiocha à gauche.  Les deux autres enfilèrent leur blouse et allèrent s\'asseoir en roulant les bras. \r\n  A l\'écart du bâtiment central, ils se sentaient dans un monde à part, un monde clos, une sorte d’îlot perdu et autonome.  L\'hiver, il gelait; l\'été c\'était un four.  Pendant quelques jours seulement, aux mi-saisons, la température redevenait normale. \r\nC\'était un truc de fou ce boulot.  Toute la journée dans ce réduit avec ces trois cinglés lui donnait l\'impression de vivre enfermé dans une cellule d\'aliénés.  Jo qui louchait du matin au soir sur des sexes de femmes, l\'autre qui décrochait pas un mot derrière ses moustaches grises dégueulasses et Bébert qu\'était plus con qu\'un cheval. \r\n  Celui-là, son truc, c\'était les paris.  Il pariait n\'importe quoi; plus c\'était ahurissant et scabreux, plus il jubilait.  Il faisait trembler son gros torse avec ses bras comme des ailes de pingouin et il riait remuant sa chique et ses glaires au fond de la gorge. \r\nDepuis quelques temps, Vincent les sentait tous complètement excités. Jo avait emmené sa collection de revues qui pesait sacrément lourd et les moteurs en pièces détachées s’amoncelaient dans des chariots supplémentaires. \r\n  La porte du cabanon merdeux vint claquer la paroi en tôle et un autre chariot vint s\'encadrer dans l\'ouverture. \r\n  - Eh !  Salut Merlu ! gueula Bébert. \r\n  Ils l\'avaient surnommé Merlu parce qu\'il sifflait tout le temps et qu\'il avait sur la tête une fine couche de cheveux bouclés.  La contraction de Merle et tondu avait donné Merlu.  On lui voyait que les dents parce qu\'il souriait toujours et le blanc des yeux qu\'il roulait quand il était content. \r\n  En voyant débarquer son copain Merlu, une chouette idée venait de germer dans la caboche de Bébert. \r\n  - Merlu, viens voir les gonzesses. \r\n  Merlu vint se pencher sur la table de Bébert qui fit défiler les pages.  De temps en temps, Merlu hochait la tête et émettait un petit \"hum !\" approbateur.  Bébert s\'arrêta à l\'endroit où une infirmière habilement dévêtue trottinait derrière une table roulante.      Bébert grimaça, se gratta la tête et dit : \r\n  - Tiens, ça me rappelle quelque chose... Ouais, tu vois mon vieux, c\'te nana, elle fait la même chose que toi sauf qu\'elle est à poil. \r\n  Merlu le dévisagea d\'un air vide qui signifiait qu\'il voyait pas où il voulait en venir.     L\'autre enchaîna : \r\n  - Et ben, j\'te parie dix sacs que t\'en fais pas autant. \r\n  Merlu rajouta son rire aux autres. \r\n  - Quoi ? Dix sacs, c\'est tout ? \r\n  - Et alors ? T\'es pudique ? \r\n  - Oui Monsieur. \r\n  - Tu te dégonfles, Merlu, puis s\'adressant à la cantonade.  Allez les gars, faut rallonger la sauce. \r\n  Jo balança un billet qui vint tournoyer sur la table de Bébert.  Pierrot parut réfléchir un instant, puis, précautionneusement sortit lui aussi une coupure de son portefeuille.  Vincent fit oui de la tête et se dirigea vers son blouson.  Merlu considéra la monnaie et ses yeux roulèrent.  La partie était presque gagnée. \r\n  - Bon, reprit Bébert, pour toucher le paquet, tu dois, en partant du magasin d\'où tu viens, à poil, nous ramener le chariot en passant sous les fenêtres du bureau d\'étude et de la direction. \r\n  Vincent se balançait sur sa chaise.  Merlu tourna les talons et les trois autres se collèrent au carreau. \r\n  - Dans trois secondes, on va rigoler, affirma Bébert. \r\n  En effet, le chariot réapparut poussé par Merlu nu comme un vers.  La cour était déserte.  Les vêtements du type étaient roulés en boule sur l\'avant de la cargaison.  Il fit quelques pas en soufflant un peu.  Le chariot était bourré à craquer.  Arrivé au niveau du bureau d\'étude, il jeta un regard rapide.  Les fenêtres étaient vides, il avait parcouru la moitié du chemin.  Les autres, dans la cabane, retenaient leur souffle.  Merlu continuait sa progression.  Maintenant, le truc faisait une tonne.  Il fixa de ses yeux blancs la porte d\'entrée du cabanon qui symbolisait sa victoire et accéléra l\'allure.  Il n\'était plus qu\'à cent mètres de l\'arrivée. \r\n  Soudain, le chariot émit une plainte et se mit à peser deux tonnes. Une roue venait de se démettre et immobilisait presque le chargement.  Réalisant la situation, Merlu se peigna un rictus d\'effroi et de désespoir mélangés.  Les compères trépignaient d\'excitation et d\'impatience.  Merlu s\'arc-bouta de toute sa force et poussa tant qu\'il put sur les roulettes.  La roue couina et le chariot se remit en mouvement.  Jo quittait plus des yeux les fenêtres supérieures.  Le rugissement de la folle cargaison redoublait comme un train d\'enfer lancé à toute vapeur. \r\n  Brusquement, Jo avisa l\'ombre.  Là-haut, une silhouette se pencha derrière la paroi de verre. \r\n  La porte du cabanon se fracassa contre la cloison et Merlu, écumant, surgit dans l\'atelier.  Il se revêtit, rafla les billets et les enfouit dans sa poche. \r\n  - Merlu, on t\'offre l\'apéro ! hurla Bébert.\r\n  Merlu fut convoqué le lendemain.  Il franchit les couloirs moquettés bordés de salles climatisées qu\'il avait parcourus le jour de son embauche puis les redescendit quelques minutes après. \r\n  Merlu ne revint pas.  Ni le lendemain, ni les jours suivants, et Bébert abandonna un moment sa lubie des paris.', '2019-03-15 13:32:11', 1),
(4, 'sdgt', 'sdfqgvchgh', '2019-03-20 14:26:02', 2),
(5, 'Le petit père du peuple', 'En russe, les termes « petit père » et « père » sont bien différents. Le diminutif affectueux « petit père » était utilisé pour les tsars, qui furent appelés tsar-petit-père (царь-батюшка), littéralement dérivé de « mon père » ou « petit père » (батюшка), appellation des curés (popes), tandis que Pierre Ier de Russie a eu le titre de Père de la Nation (отец отечества), décerné en 1721 par le Sénat de Russie. Le familier « petit » (pour « petit père des peuples » fut utilisé notamment pour le dernier tsar, Nicolas II.\r\n\r\nPar la suite, le terme fut appliqué à Joseph Staline, chef soviétique. Pour rester exact, il convient d\'éviter le diminutif « petit » en français, que l\'on retrouve dans certaines traductions erronées (seulement en langue française). Son véritable surnom donné par les Russes est grand guide des peuples (великий вождь народов) ou encore père des peuples (отец народов), ou père des nations, sans le diminutif « petit ». Le diminutif est une erreur de traduction dans la lettre (sur-traduction) et dans l\'esprit.', '2019-03-21 14:26:30', 3);

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

DROP TABLE IF EXISTS `categorie`;
CREATE TABLE IF NOT EXISTS `categorie` (
  `idcategorie` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `thetitle` varchar(120) NOT NULL,
  PRIMARY KEY (`idcategorie`),
  UNIQUE KEY `thetitle_UNIQUE` (`thetitle`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

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

-- --------------------------------------------------------

--
-- Structure de la table `categorie_has_article`
--

DROP TABLE IF EXISTS `categorie_has_article`;
CREATE TABLE IF NOT EXISTS `categorie_has_article` (
  `categorie_idcategorie` int(10) UNSIGNED NOT NULL,
  `article_idarticle` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`categorie_idcategorie`,`article_idarticle`),
  KEY `fk_categorie_has_article_article1_idx` (`article_idarticle`),
  KEY `fk_categorie_has_article_categorie1_idx` (`categorie_idcategorie`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `categorie_has_article`
--

INSERT INTO `categorie_has_article` (`categorie_idcategorie`, `article_idarticle`) VALUES
(1, 1),
(1, 2),
(2, 2),
(3, 2),
(9, 2),
(1, 3),
(2, 3),
(5, 3),
(6, 3),
(7, 3);

-- --------------------------------------------------------

--
-- Structure de la table `images`
--

DROP TABLE IF EXISTS `images`;
CREATE TABLE IF NOT EXISTS `images` (
  `idimages` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `theurl` varchar(128) NOT NULL,
  `thedate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_iduser` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`idimages`,`user_iduser`),
  UNIQUE KEY `user_iduser_UNIQUE` (`user_iduser`),
  KEY `fk_images_user1_idx` (`user_iduser`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `images`
--

INSERT INTO `images` (`idimages`, `theurl`, `thedate`, `user_iduser`) VALUES
(1, 'http://www.bleu-citron.eu/maisonnette.jpg', '2019-03-20 14:34:52', 2),
(3, 'http://www.bleu-citron.eu/Textes/avion.jpg', '2019-03-20 14:36:08', 1);

-- --------------------------------------------------------

--
-- Structure de la table `permission`
--

DROP TABLE IF EXISTS `permission`;
CREATE TABLE IF NOT EXISTS `permission` (
  `idpermission` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `thename` varchar(60) NOT NULL,
  `theperm` tinyint(3) UNSIGNED DEFAULT '2' COMMENT '2 -> non actif\n1 -> auteur actif\n0 -> administrateur',
  PRIMARY KEY (`idpermission`),
  UNIQUE KEY `thename_UNIQUE` (`thename`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `permission`
--

INSERT INTO `permission` (`idpermission`, `thename`, `theperm`) VALUES
(4, 'Administrateur', 0),
(5, 'Auteur actif', 1),
(6, 'Auteur inactif', 2),
(7, 'Anonyme', 3);

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `iduser` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `thelogin` varchar(80) NOT NULL,
  `thepwd` char(64) NOT NULL COMMENT 'sha-256',
  `thename` varchar(200) NOT NULL,
  `thebio` text,
  `themail` varchar(200) NOT NULL,
  `permission_idpermission` smallint(5) UNSIGNED NOT NULL,
  PRIMARY KEY (`iduser`),
  UNIQUE KEY `thelogin_UNIQUE` (`thelogin`),
  KEY `fk_user_permission1_idx` (`permission_idpermission`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`iduser`, `thelogin`, `thepwd`, `thename`, `thebio`, `themail`, `permission_idpermission`) VALUES
(1, 'root', '123', 'Mia Khalifa', 'Mia Khalifa est née le 10 février 1993 à Beyrouth, la capitale du Liban. Mia Khalifa est née de deux parents chrétiens et se dit avoir été inspirée par cette religion', 'mia.khalifa@hotmail.com', 4),
(2, 'gravitation_universelle', 'laws_of_motion', 'Isaac Newton', 'Isaac Newton est un philosophe, mathématicien, physicien, alchimiste, astronome et théologien anglais, puis britannique.', 'manges_tes_pommes@yahoo.com', 5),
(3, 'TheEnd', 'TheEnd', 'The End', 'The End. This is The End. This is The End. This is The End. This is The End. This is The End. This is The End. This is The End. This is The End. This is The End. This is The End. This is The End. This is The End. This is The End. This is The End. This is The End. This is The End. This is The End. This is The End. This is The End. This is ', 'mail@theend.com', 6);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `article`
--
ALTER TABLE `article`
  ADD CONSTRAINT `fk_article_user` FOREIGN KEY (`user_iduser`) REFERENCES `user` (`iduser`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `categorie_has_article`
--
ALTER TABLE `categorie_has_article`
  ADD CONSTRAINT `fk_categorie_has_article_article1` FOREIGN KEY (`article_idarticle`) REFERENCES `article` (`idarticle`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_categorie_has_article_categorie1` FOREIGN KEY (`categorie_idcategorie`) REFERENCES `categorie` (`idcategorie`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `fk_images_user1` FOREIGN KEY (`user_iduser`) REFERENCES `user` (`iduser`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `fk_user_permission1` FOREIGN KEY (`permission_idpermission`) REFERENCES `permission` (`idpermission`) ON DELETE NO ACTION ON UPDATE NO ACTION;
SET FOREIGN_KEY_CHECKS=1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
