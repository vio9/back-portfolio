-- MySQL dump 10.13  Distrib 8.0.25, for Linux (x86_64)
--
-- Host: localhost    Database: vio_infos
-- ------------------------------------------------------
-- Server version	8.0.25-0ubuntu0.20.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `basic_infos`
--

DROP TABLE IF EXISTS `basic_infos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `basic_infos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `presentation` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `basic_infos`
--

LOCK TABLES `basic_infos` WRITE;
/*!40000 ALTER TABLE `basic_infos` DISABLE KEYS */;
INSERT INTO `basic_infos` VALUES (1,'Violaine','Ernotte','e.violaine@yahoo.fr','Paris','Bonjour à tous, je suis Violaine, développeur web front junior à la recherche de nouvelles aventures professionnelles!');
/*!40000 ALTER TABLE `basic_infos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `experiences`
--

DROP TABLE IF EXISTS `experiences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `experiences` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `entreprise` varchar(255) NOT NULL,
  `subtitle` varchar(255) DEFAULT NULL,
  `description` text,
  `period` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `experiences`
--

LOCK TABLES `experiences` WRITE;
/*!40000 ALTER TABLE `experiences` DISABLE KEYS */;
INSERT INTO `experiences` VALUES (1,'Webmaster','Nespresso France','Paris','Création de contenus digitaux sur le site et l’application mobile via CMS et en HTML – CSS – JS : pages, composants, landing pages, emails','mai 2019- mars 2020','https://logo-marque.com/wp-content/uploads/2021/01/Nespresso-Logo.png'),(2,'Chef de projet communication IT marketing','ENGIE Cofely','La Défense','Développement de la stratégie de communication interne de la DSI: creation de vidéos, d\'un intranet, bilans d\'activités, Création et mise en place du site intranet Sharepoint de la DSI couplé à PowerBI pour présentant les projets, les applis, KPI et les actualités de la DSI','aout 2017- février 2019','https://www.energie3-prowatt.fr/wp-content/uploads/2016/06/logo-engie-cofely.png'),(3,'Chargée de projet Web','BNP Paribas – Retail developpement & Distribution','Paris','Accompagnement au changement de plateforme web (CMS) : suivi et participation au RFI - RFP : création d\'outils d\'audit, de questionnaires, recueil des besoins, organisation de sessions orales avec les éditeurs de solutions CMS ,formation des utilisateurs au CMS TeamSite','janvier 2016 - avril 2017','https://upload.wikimedia.org/wikipedia/fr/thumb/d/d9/BNP_Paribas_2009.svg/2560px-BNP_Paribas_2009.svg.png'),(4,'Webmaster','Gares & Connexions - SNCF','Paris','Création du site https://www.gares-sncf.com/ : conception graphique, gestion éditoriale, formation aux rédacteurs en région à l\'utilisation du CMS Drupal','novembre 2014 - décembre 2015','https://upload.wikimedia.org/wikipedia/fr/thumb/b/b4/Logo_SNCF_Gares_%26_Connexions_-_2016.svg/1280px-Logo_SNCF_Gares_%26_Connexions_-_2016.svg.png'),(6,'Intégrateur Web - Webmaster','','','Creation de sites, mises à jour ','2012 - 2014','https://www.people4impact.com/files/logo-efires-5f4bacfb42977165589669.png');
/*!40000 ALTER TABLE `experiences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `formation`
--

DROP TABLE IF EXISTS `formation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `formation` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `adress` varchar(255) NOT NULL,
  `period` varchar(255) NOT NULL,
  `school` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `formation`
--

LOCK TABLES `formation` WRITE;
/*!40000 ALTER TABLE `formation` DISABLE KEYS */;
INSERT INTO `formation` VALUES (1,'Formation Développeur Web / Web mobile','remote','Mars à juillet 2021','Wild Code School'),(2,'Formation Webmaster','Paris','2011-2012','Ecole Multimédia'),(3,'Master 2 Industries Créatives communication médias web art','Paris','2010','Université Paris 8');
/*!40000 ALTER TABLE `formation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects`
--

DROP TABLE IF EXISTS `projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `projects` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `description` text,
  `period` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects`
--

LOCK TABLES `projects` WRITE;
/*!40000 ALTER TABLE `projects` DISABLE KEYS */;
INSERT INTO `projects` VALUES (1,'Mascarpade','https://marscapade-app.netlify.app/static/media/header.5db014b2.jpg','https://marscapade-app.netlify.app/',' Mascarpade, application visant à proposer des activités pour lutter contre la solitude pour les habitants de Mars > Projet gagnant du Hackaton 1 Wild Code School ! : React.js, MySQL, Node.js','30 heures'),(2,'Mood_Mixtape','https://cdns-images.dzcdn.net/images/cover/b2fc0059d0e8919fbc54f7b60f25760c/250x250-000000-80-0-0.jpg','https://moodmixtape.netlify.app/','Réalisation d\'une application musicale utilisant l\'API publique Deezer : react.js, HTML, CSS (5 semaines)','5 semaines'),(3,'Twenty-five','https://twentyfive.netlify.app/static/media/workers.363c2f6c.png','https://twentyfive.netlify.app/',' Creation d\'une App de bien être : React JS, styled-components, MySQL, Node, Express JS','72 heures');
/*!40000 ALTER TABLE `projects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skills`
--

DROP TABLE IF EXISTS `skills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `skills` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skills`
--

LOCK TABLES `skills` WRITE;
/*!40000 ALTER TABLE `skills` DISABLE KEYS */;
INSERT INTO `skills` VALUES (1,'Langages / framework','HTML5 CSS3 JavaScript React.js Styled-Component Node.js Express.js, Context API, MySQL'),(2,'CMS','Adobe CQ5, SharePoint Online, Hybris, Drupal, WordPress, Ez Publish'),(3,'Gestion de projets','GIT, Github, Jira, Trello, Agile, Scrum'),(4,'Communication web','création de vidéos (format court web / intranet), Newsletters, articles, illustrations, logos'),(5,'Refonte site e-commerce web et mobile','contenus éditorial, intégration HTML CSS, graphisme web'),(6,'Logiciels','VS Code, Photoshop, Premiere');
/*!40000 ALTER TABLE `skills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `socials`
--

DROP TABLE IF EXISTS `socials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `socials` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `link` varchar(100) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `socials`
--

LOCK TABLES `socials` WRITE;
/*!40000 ALTER TABLE `socials` DISABLE KEYS */;
INSERT INTO `socials` VALUES (26,'Github','https://github.com/vio9','https://image.flaticon.com/icons/png/512/25/25231.png'),(28,'Linkedin','','https://upload.wikimedia.org/wikipedia/commons/thumb/c/ca/LinkedIn_logo_initials.png/600px-LinkedIn_logo_initials.png');
/*!40000 ALTER TABLE `socials` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-07-22 17:09:35
