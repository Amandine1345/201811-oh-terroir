-- MySQL dump 10.13  Distrib 5.7.24, for Linux (x86_64)
--
-- Host: localhost    Database: 201811-oh_terroir
-- ------------------------------------------------------
-- Server version	5.7.24-0ubuntu0.18.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `contactDetails`
--

DROP TABLE IF EXISTS `contactDetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contactDetails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) NOT NULL,
  `zipCode` varchar(5) NOT NULL,
  `city` varchar(80) NOT NULL,
  `phoneNumber` varchar(10) NOT NULL,
  `emailAddress` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Table contact_details';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contactDetails`
--

LOCK TABLES `contactDetails` WRITE;
/*!40000 ALTER TABLE `contactDetails` DISABLE KEYS */;
INSERT INTO `contactDetails` VALUES (1,'3 rue des Halles','45000','Orléans','0238757126','monadresse@mondomaine.fr');
/*!40000 ALTER TABLE `contactDetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dish`
--

DROP TABLE IF EXISTS `dish`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dish` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(125) NOT NULL,
  `price` float NOT NULL,
  `composition` varchar(255) DEFAULT NULL,
  `isActive` tinyint(1) NOT NULL,
  `dishSubcategoryId` int(11) NOT NULL,
  PRIMARY KEY (`id`,`dishSubcategoryId`),
  KEY `fk_dish_dishSubcategory1_idx` (`dishSubcategoryId`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dish`
--

LOCK TABLES `dish` WRITE;
/*!40000 ALTER TABLE `dish` DISABLE KEYS */;
INSERT INTO `dish` VALUES (4,'BBQ',13.9,'Sauce barbecue, oignons confits au miel du gâtinais local',1,1),(5,'Béarnais',13.9,'Sauce Béarnaise, tartare de tomates séchées',1,1),(6,'Roquefort',13.9,'Sauce roquefort AOP, oignons confits au miel du gâtinais local',1,1),(7,'Basque',13.9,'Sauce ketchup au piment d\'espelette et chorizo basque',1,1),(8,'Miel Moutarde',13.9,'Sauce au miel et à la moutarde, ventreche basque',1,1),(9,'Carbonara',9.9,'Crème bio et petits lardons fumés',1,3),(10,'Poumo d\'Amour',8.9,'Tomate, oignons, ail, gingembre',1,3),(11,'Provenço',9.9,'Tomate, oignons, ail, gingembre, achard de légumes',1,3),(12,'Basquaise',10.6,'Tomate, oignons, ail, gingembre, chorizo basque',1,3),(13,'Tourangelle',10.6,'Crème bio, champignons et cèpes avec jambon blanc artisanal du Jura',1,3),(14,'Tourangelle Végétarienne',8.9,'Crème bio, champignons et cèpes avec achard de légumes',1,3),(15,'Orléanaise',10.6,'Crème bio, moutarde Orléans avec jambon blanc artisanal du Jura',1,3),(16,'Orléanaise Végétarienne',8.9,'Crème bio, moutarde Orléans avec achard de légumes',1,3),(17,'Douce Curry Jaune',10.6,'Sans lactose : lait de coco avec blanc de poulet local',1,3),(18,'Douce Curry Jaune Végétarienne',8.9,'Sans lactose : lait de coco avec achard de légumes',1,3),(19,'Caesar',11.9,'Sauce caesar, salade, croutons, poulet de la ferme, fromage Gran Leo, oeuf bio mollet',1,4),(20,'Route des Indes',12.9,'Sauce maison et sauce curry, tomates confites, achards de légumes, raisins sec, poulet de la ferme',1,4),(21,'Luberon',12.9,'Sauce maison, jambon fumé, melon, concombre, tomate, feta doc, oignons émincés',1,4),(22,'Tzatziki',12.9,'Sauce tzatziki maison, concombre, tomate, feta doc, oignons émincés',1,4),(23,'Freschezza',11.9,'Sauce maison, tomates, mozzarella doc, olives, pesto au basilic',1,4),(24,'Des Îles',11.9,'Sauce maison et rougail, tomates, concombre, achards de légumes',1,4),(25,'Basque',12.9,'Sauce maison et rougail, tomates, courgettes, achards de légumes, chorizo et oeuf bio',1,4),(26,'Quiche - Flan',11.9,'Chaud, sans gluten, avec légumes de saison et salade (sur demande portion de frites bio ou 25cl de soupe bio)',1,4),(27,'Gaspacho Maison',6.9,'Maxi bol',1,4),(28,'Pizzi',10.9,'Tartines accompagnées d\'une salade, avec viande ou sans viande',1,4),(29,'Faisselle bio fraise',2.5,'',1,5),(30,'Crème vanille bio sans lactose',2.5,'',1,5),(31,'Riz au lait de Camargue',2.5,'',1,5),(32,'Faisselle bio aux pralines mazet de Montargis',2.5,'',1,5),(33,'Panier crumble fruits rouge',3.5,'',1,5),(34,'Verrine mousse au chocolat sans gluten',3.5,'',1,5),(35,'Pot de glace',4.5,'',1,5),(36,'Crème praliné bio sans lactose',2.5,'',1,5),(37,'Crème chocolat bio sans lactose',2.5,'',1,5),(38,'Cheesecake spéculoos',3.9,'',1,5),(39,'Fondant chocolat sans gluten',3.5,'',1,5);
/*!40000 ALTER TABLE `dish` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dishCategory`
--

DROP TABLE IF EXISTS `dishCategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dishCategory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `namePageHome` varchar(45) NOT NULL,
  `namePageDish` varchar(125) NOT NULL,
  `description` text,
  `complementaryInformation` text,
  `urlPictureForPageHome` varchar(255) NOT NULL,
  `urlPictureForPageDish` varchar(255) DEFAULT NULL,
  `isActive` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dishCategory`
--

LOCK TABLES `dishCategory` WRITE;
/*!40000 ALTER TABLE `dishCategory` DISABLE KEYS */;
INSERT INTO `dishCategory` VALUES (1,'BURGERS','Nos Burgers','Pain Bio, Fromage Cantal AOP, Salade de Roquette, Sauces fabriquées par un chef étoilé, Frites à base de pommes de terre Bio locales.','Nos viandes de boeuf locales et bio, de race Aberdeen Angus. Nos pommes de terre à frites sont locales et bio. Toutes nos sauces à burgers sont confectionnées par un chef étoilé.','/assets/images/categories/1.jpg','/assets/images/categories/fullsize/1-fs.jpg',1),(2,'PLATS CHAUDS','Nos plats chauds','Pâtes fermières locales, petit épeautre bio local en risotto, Quinoa bio, Lentilles bio locales...','Pâtes fabriquées à base de crème fraîche bio, Sauce tomate fabriquée au coeur de la provence etc...','/assets/images/categories/2.jpg','/assets/images/categories/fullsize/2-fs.jpg',1),(3,'SALADES','Nos salades maison','Salades fraîches maison','Nos salades composées sont préparées uniquement au moment de la commande devant vous.','/assets/images/categories/3.jpg','/assets/images/categories/fullsize/3-fs.jpg',1),(4,'DESSERTS','Nos desserts','Faisselle bio, riz au lait, pot de glace ...','La compote bio fabriquée à Amilly, ou encore la faiselle bio de la Ferme des Grands Champs à Lorris , et bien d’autres desserts','/assets/images/categories/4.jpg','/assets/images/categories/fullsize/4-fs.jpg',1);
/*!40000 ALTER TABLE `dishCategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dishSubcategory`
--

DROP TABLE IF EXISTS `dishSubcategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dishSubcategory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `categoryName` varchar(255) NOT NULL,
  `isActive` tinyint(1) NOT NULL,
  `dishCategoryId` int(11) NOT NULL,
  PRIMARY KEY (`id`,`dishCategoryId`),
  KEY `fk_dishSubcategory_dishCategory1_idx` (`dishCategoryId`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dishSubcategory`
--

LOCK TABLES `dishSubcategory` WRITE;
/*!40000 ALTER TABLE `dishSubcategory` DISABLE KEYS */;
INSERT INTO `dishSubcategory` VALUES (1,'Sauces',1,1),(2,'Steaks',1,1),(3,'Sauces',1,2),(4,'Sauces',1,3),(5,'Desserts',1,4);
/*!40000 ALTER TABLE `dishSubcategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grower`
--

DROP TABLE IF EXISTS `grower`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grower` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(125) NOT NULL,
  `description` varchar(100) NOT NULL,
  `localisation` varchar(255) DEFAULT NULL,
  `isActive` tinyint(1) NOT NULL,
  `siteInternet` varchar(200) DEFAULT NULL,
  `picture` varchar(200) NOT NULL DEFAULT 'https://i0.wp.com/hifadhiafrica.org/wp-content/uploads/2017/01/default-placeholder.png',
  `growerCategoriesId` int(11) NOT NULL,
  PRIMARY KEY (`id`,`growerCategoriesId`),
  KEY `fk_grower_growerCategories1_idx` (`growerCategoriesId`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grower`
--

LOCK TABLES `grower` WRITE;
/*!40000 ALTER TABLE `grower` DISABLE KEYS */;
INSERT INTO `grower` VALUES (1,'Maison Martin Pouret','Vinaigre et moutarde','Orléans - 45',1,'https://www.martin-pouret.com/','https://www.martin-pouret.com/images/martin-pouret.png',6),(2,'Yves de Rochefort','Quinoa','Patay - 45',1,NULL,'https://cdn-image.foodandwine.com/sites/default/files/styles/medium_2x/public/2014-r-xl-quinoa-salad-with-sumac-and-preserved-lemon-dressing.jpg?itok=yJtLbw2u',8),(3,'Ferme de Lutheau ','Poulets','Toury - 28 et Beaune la Rollande - 45',1,NULL,'https://www.metro.ca/userfiles/image/recipes/poitrines-poulet-yoghourt-moutarde-erable-7219.jpg',1),(4,'M. Leprince','Petit Epeautre','Greneville en beauce - 45',1,NULL,'https://www.palmiloire.fr/wp-content/uploads/2018/07/petit-epeautre.jpg',8),(5,'Ferme des grands champs','Faisselle et fromage frais','Lorris - 45',1,'http://gatinais.amapp.fr/spip.php?rubrique24','https://scontent-cdt1-1.xx.fbcdn.net/v/t1.0-9/18921871_440529912985873_7217771958355772930_n.png?_nc_cat=108&_nc_ht=scontent-cdt1-1.xx&oh=27a314d087635bb35f9c8ec85cee15b5&oe=5C415C4E',4),(6,'Jean Batiste Drouin, Ferme de la petite Brosse','Eleveur de Boeuf, Abeerden angnus','Girolles - 45',1,'http://chevrerieandcow.com/','https://scontent-cdt1-1.xx.fbcdn.net/v/t1.0-9/37377005_1726502357457972_3331182205350182912_n.jpg?_nc_cat=104&_nc_ht=scontent-cdt1-1.xx&oh=0b7df339a6929502f4bbcd342ae9c509&oe=5C76315E',1),(7,'Pizza Line & Big Terroir','Sauces maison','Montargis - 45',1,'http://www.ohterroir.com/','https://ugc.zenchef.com/3/4/5/0/5/0/1/0/0/5/2/1444732434_427/9c9d6e61ff09c4b34b5a2dd8bedb06ea.jpg',6),(8,'Confiserie de Luxe','Pralines Mazet ','Montargis - 45',1,'https://www.mazetconfiseur.com/','https://www.mazetconfiseur.com/timthumb/h=200&w=200&zc=2&LG=x&src=pralines-nouvelle-orleans-150g.pec150.png',7),(9,'Famille Rivière, Ferme des Fouets','Huiles de colza','Courtenay - 45',1,'http://www.huileriedesfouets.com/pages/des-huiles-artisanales-en-premiere-pression-a-froid-dans-le-loiret-45.html','http://www.huileriedesfouets.com/medias/images/bienvenue-a-la-ferme.jpg',6),(10,'Coopérative Ouvrière TPC','Compotes et confitures','Amilly - 45',1,NULL,'https://static.cuisineaz.com/240x192/i50514-confiture-de-framboises.jpg',7),(11,'Les jeunes pousses de Cortrat','Légumes','Cortrat - 45',1,NULL,'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSXqupLmM8WzUDi7Gv04KNqCuQdtjO3NHHT7ucr-nvRVFl1KrJG',3),(12,'Olivier Chaloche Agriculteur','Pommes de terres spéciales frites','Cortrat - 45',1,NULL,'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT_r1mrLflFSiurV1QubhTiQAOEk_0zoGtgMRaNrpgQWeNetfK9',3),(13,'Jean Michel Pingot','Lentilles','Oussoy en Gatinais - 45',1,'gatinais.amapp.fr/?-Oeufs','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTZJEFZAgA0vUUvSCcFMPUNvWmLar-ODP1xFUnd3PF17P1oGqf9',3),(14,'Philippe Legrelle','Oeufs','Ouzouer sur Loire - 45',1,NULL,'https://www.atelierdeschefs.com/media/ingredient-e686-l-oeuf.jpg',4),(15,'Brasserie des Ecluses','Bière artisanale','St Hilaire St Mesmin - 45',1,NULL,'https://www.media12.fr/wp-content/uploads/2017/01/Media12-Bie%CC%80re.jpg',5),(16,'Famille Lonqueu ','Pates fermières locales','Mauves - 41',1,NULL,'https://www.mamanpourlavie.com/uploads/images/articles.cache/2013/01/15/file_main_image_7670_1_pates_sauces_7670_01_1500X1000_cache_640x360.jpg',8),(17,'Producteur/Récoltant, Famille Javoy','Vins d\'Orléans','Mezieres les Clery - 45',1,'https://locavor.fr/presentation/369-javoy-pere-et-fils','https://locavor.fr/data/produits/47647/square300/47647-aoc-orleans-clery-2015-rouge-vieilli-fut-de-chene-1.jpg',5),(18,'Isabelle Gallier, Boulangerie O Levain','Tartines et patiseries','Ouzouer les champs - 45',1,'http://olevain.fr/','https://scontent-cdt1-1.xx.fbcdn.net/v/t1.0-9/10647226_941247529235905_2601756659621230394_n.jpg?_nc_cat=102&_nc_ht=scontent-cdt1-1.xx&oh=0d659cef1bbc1ebcee6364e4893bfc5c&oe=5C7EBEC6',7),(19,'Etik&Bio','Legumes et fruits bio','Orléans - 45',1,'http://solembio.org/','http://solembio.org/wp-content/uploads/2012/04/jardins-logo-e1334847926337.gif',2),(20,'Gran Leo et Cantal AOP','Fromage de vache affiné','Lozère - 48',1,'http://www.aop-cantal.com/le-fromage-cantal','https://upload.wikimedia.org/wikipedia/commons/thumb/3/3c/Wikicheese-XX_-_Cantal_entre-deux_-_20180601_-_002.jpg/1200px-Wikicheese-XX_-_Cantal_entre-deux_-_20180601_-_002.jpg',4),(21,'Maison Bioviver','Purées de fruits, pour les faisselles','Lot et Garonne',1,NULL,'https://leanature.com/wp-content/uploads/2016/08/LOGO-BIOVIVER-web.png',7),(22,'Bionatis','Buns Burger','Rhone',1,'http://www.bionatis.com/','http://www.bionatis.com/wp-content/uploads/2012/05/logo1.png',8),(23,'Maison Meneau - St Loubès','Sirops','Bordeaux',1,'http://www.meneau.com/','https://scontent-cdt1-1.xx.fbcdn.net/v/t1.0-9/22552716_1612743745448633_1791832873235371066_n.jpg?_nc_cat=101&_nc_ht=scontent-cdt1-1.xx&oh=c9b5556c019287ebbbd2b2337522e06a&oe=5C759361',5),(24,'Chef Roellinger','Epices pour les sauces','Cancale',1,NULL,'https://i0.wp.com/hifadhiafrica.org/wp-content/uploads/2017/01/default-placeholder.png',6),(25,'Chorizo et Ventreche','Charcuteries artisanales basque','Pierre Oteiza - aux Aldudes',1,'https://www.decreuse.com/','https://www.decreuse.com/img/prestashop-logo-1541086863.jpg',1),(26,'Brasserie de Vezelay','Bière sans gluten','Vezelay - 89',1,'http://brasseriedevezelay.fr/','http://brasseriedevezelay.fr/assets/img/prod/25clBlanche@2x.png',5);
/*!40000 ALTER TABLE `grower` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `growerCategory`
--

DROP TABLE IF EXISTS `growerCategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `growerCategory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `isActive` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `growerCategory`
--

LOCK TABLES `growerCategory` WRITE;
/*!40000 ALTER TABLE `growerCategory` DISABLE KEYS */;
INSERT INTO `growerCategory` VALUES (1,'Viandes',1),(2,'Fruits',1),(3,'Legumes',1),(4,'Produits laitiers / Oeufs',1),(5,'Boissons',1),(6,'Sauces',1),(7,'Desserts',1);
/*!40000 ALTER TABLE `growerCategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `opinionTripAdvisor`
--

DROP TABLE IF EXISTS `opinionTripAdvisor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `opinionTripAdvisor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pseudo` varchar(45) NOT NULL,
  `title` varchar(50) NOT NULL,
  `comment` varchar(800) NOT NULL,
  `dateOpinion` date NOT NULL,
  `note` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `opinionTripAdvisor`
--

LOCK TABLES `opinionTripAdvisor` WRITE;
/*!40000 ALTER TABLE `opinionTripAdvisor` DISABLE KEYS */;
INSERT INTO `opinionTripAdvisor` VALUES (1,'JFSO','Concept sympa/cuisine délicieuse ','Concept très sympa. Enfin un lieu où l’on peut manger rapidement de la cuisine de qualité avec des producteurs locaux. A quand une ouverture en banlieue parisienne ?','2018-10-16','5'),(2,'VBAMS','Très bien','Nous avons découvert ce restaurant avec un concept très simple et très sympa. On y mange bien et rapidement pour un prix tout a fait convenable.','2018-05-20','4'),(3,'martial m','Excellent','Je recommande +++++,tout est bio et local ,très très bon de la boisson au dessert !concept extra! Dommage qu\'il n\'y en ai pas un par chez nous ...','2018-10-15','5'),(4,'alexlapelle','Humm','Super resto-fast-food-pas comme les autres. Les plats sont super bon, allez ici plutôt que les autres géants du fast-food. Le proprio privilégie les circuits courts !','2018-09-29','5'),(5,'Damien R','Repas du soir sur le pouce de qualité ','Produits locaux, frais, préparés rapidement. Il y a un large choix. Un rapport qualité / prix excellent. Idéal pour un repas qualitatif rapide. Le décor est agréable et en harmonie avec le cadre extérieur','2018-09-18','4');
/*!40000 ALTER TABLE `opinionTripAdvisor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schedule`
--

DROP TABLE IF EXISTS `schedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schedule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `openingHour1` varchar(5) NOT NULL,
  `openingHour2` varchar(5) NOT NULL,
  `weekdaysId` int(11) NOT NULL,
  PRIMARY KEY (`id`,`weekdaysId`),
  KEY `fk_opening_time_weekdays_idx` (`weekdaysId`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schedule`
--

LOCK TABLES `schedule` WRITE;
/*!40000 ALTER TABLE `schedule` DISABLE KEYS */;
INSERT INTO `schedule` VALUES (1,'11:30','15:00',1),(2,'18:30','22:00',1),(3,'11:30','15:00',2),(4,'18:30','22:00',2),(5,'11:30','15:00',3),(6,'18:30','22:00',3),(7,'11:30','15:00',4),(8,'18:30','22:00',4),(9,'11:30','15:00',5),(10,'18:30','22:30',5),(11,'11:30','22:30',6),(12,'00:00','00:00',7);
/*!40000 ALTER TABLE `schedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `specialOffer`
--

DROP TABLE IF EXISTS `specialOffer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `specialOffer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(180) NOT NULL,
  `description` text,
  `startDate` date DEFAULT NULL,
  `finishDate` date DEFAULT NULL,
  `imgLink` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `specialOffer`
--

LOCK TABLES `specialOffer` WRITE;
/*!40000 ALTER TABLE `specialOffer` DISABLE KEYS */;
INSERT INTO `specialOffer` VALUES (1,'Offre Cinéma','Un dessert offert (hors gourmandise) sur présentation de votre place de cinéma','2018-10-17','2018-12-31','/assets/images/ticket.png'),(2,'Offre Etudiant','Un dessert offert (hors gourmandise) sur présentation de votre carte étudiante',NULL,NULL,'/assets/images/id-card.png');
/*!40000 ALTER TABLE `specialOffer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `weekdays`
--

DROP TABLE IF EXISTS `weekdays`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weekdays` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dayName` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weekdays`
--

LOCK TABLES `weekdays` WRITE;
/*!40000 ALTER TABLE `weekdays` DISABLE KEYS */;
INSERT INTO `weekdays` VALUES (1,'Lundi'),(2,'Mardi'),(3,'Mercredi'),(4,'Jeudi'),(5,'Vendredi'),(6,'Samedi'),(7,'Dimanche');
/*!40000 ALTER TABLE `weekdays` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-12-03 10:53:41
