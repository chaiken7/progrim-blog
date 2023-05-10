-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: ::1    Database: local
-- ------------------------------------------------------
-- Server version	8.0.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_commentmeta`
--

LOCK TABLES `wp_commentmeta` WRITE;
/*!40000 ALTER TABLE `wp_commentmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_commentmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_comments`
--

LOCK TABLES `wp_comments` WRITE;
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;
INSERT INTO `wp_comments` VALUES (1,1,'A WordPress Commenter','wapuu@wordpress.example','https://wordpress.org/','','2023-01-06 21:40:22','2023-01-06 21:40:22','Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://en.gravatar.com/\">Gravatar</a>.',0,'1','','comment',0,0);
INSERT INTO `wp_comments` VALUES (2,31,'progrim','fedeagrimaldi@gmail.com','http://progrim.local','127.0.0.1','2023-02-18 22:33:11','2023-02-19 01:33:11','Muy bueno!!',0,'1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36','comment',0,1);
INSERT INTO `wp_comments` VALUES (3,31,'progrim','fedeagrimaldi@gmail.com','http://progrim.local','127.0.0.1','2023-02-18 22:37:27','2023-02-19 01:37:27','aAKCMlaksmcasc',0,'1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36','comment',0,1);
INSERT INTO `wp_comments` VALUES (4,30,'progrim','fedeagrimaldi@gmail.com','http://progrim.local','127.0.0.1','2023-02-18 22:44:32','2023-02-19 01:44:32','xvxcv',0,'1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36','comment',0,1);
/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_links`
--

LOCK TABLES `wp_links` WRITE;
/*!40000 ALTER TABLE `wp_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB AUTO_INCREMENT=2033 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_options`
--

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` VALUES (1,'siteurl','http://progrim.local','yes');
INSERT INTO `wp_options` VALUES (2,'home','http://progrim.local','yes');
INSERT INTO `wp_options` VALUES (3,'blogname','ProGrim','yes');
INSERT INTO `wp_options` VALUES (4,'blogdescription','Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas &quot;Letraset&quot;, las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.&lt;br&gt;¿Por qué lo usamos?&lt;br&gt;Es un hecho establecido hace demasiado tiempo que un lector se distraerá con el contenido del texto de un sitio mientras que mira su diseño. El punto de usar Lorem Ipsum es que tiene una distribución más o menos normal de las letras, al contrario de usar textos como por ejemplo &quot;Contenido aquí, contenido aquí&quot;. Estos textos hacen parecerlo un español que se puede leer. Muchos paquetes de autoedición y editores de páginas web usan el Lorem Ipsum como su texto por defecto, y al hacer una búsqueda de &quot;Lorem Ipsum&quot; va a dar por resultado muchos sitios web que usan este texto si se encuentran en estado de desarrollo. Muchas versiones han evolucionado a través de los años, algunas veces por accidente, otras veces a propósito (por ejemplo insertándole humor y cosas por el estilo).','yes');
INSERT INTO `wp_options` VALUES (5,'users_can_register','0','yes');
INSERT INTO `wp_options` VALUES (6,'admin_email','fedeagrimaldi@gmail.com','yes');
INSERT INTO `wp_options` VALUES (7,'start_of_week','1','yes');
INSERT INTO `wp_options` VALUES (8,'use_balanceTags','0','yes');
INSERT INTO `wp_options` VALUES (9,'use_smilies','1','yes');
INSERT INTO `wp_options` VALUES (10,'require_name_email','1','yes');
INSERT INTO `wp_options` VALUES (11,'comments_notify','1','yes');
INSERT INTO `wp_options` VALUES (12,'posts_per_rss','15','yes');
INSERT INTO `wp_options` VALUES (13,'rss_use_excerpt','0','yes');
INSERT INTO `wp_options` VALUES (14,'mailserver_url','mail.example.com','yes');
INSERT INTO `wp_options` VALUES (15,'mailserver_login','login@example.com','yes');
INSERT INTO `wp_options` VALUES (16,'mailserver_pass','password','yes');
INSERT INTO `wp_options` VALUES (17,'mailserver_port','110','yes');
INSERT INTO `wp_options` VALUES (18,'default_category','1','yes');
INSERT INTO `wp_options` VALUES (19,'default_comment_status','open','yes');
INSERT INTO `wp_options` VALUES (20,'default_ping_status','open','yes');
INSERT INTO `wp_options` VALUES (21,'default_pingback_flag','1','yes');
INSERT INTO `wp_options` VALUES (22,'posts_per_page','15','yes');
INSERT INTO `wp_options` VALUES (23,'date_format','d/m/Y','yes');
INSERT INTO `wp_options` VALUES (24,'time_format','H:i','yes');
INSERT INTO `wp_options` VALUES (25,'links_updated_date_format','F j, Y g:i a','yes');
INSERT INTO `wp_options` VALUES (26,'comment_moderation','','yes');
INSERT INTO `wp_options` VALUES (27,'moderation_notify','1','yes');
INSERT INTO `wp_options` VALUES (28,'permalink_structure','/%postname%/','yes');
INSERT INTO `wp_options` VALUES (29,'rewrite_rules','a:120:{s:19:\"sitemap_index\\.xml$\";s:19:\"index.php?sitemap=1\";s:31:\"([^/]+?)-sitemap([0-9]+)?\\.xml$\";s:51:\"index.php?sitemap=$matches[1]&sitemap_n=$matches[2]\";s:24:\"([a-z]+)?-?sitemap\\.xsl$\";s:39:\"index.php?yoast-sitemap-xsl=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:11:\"articulo/?$\";s:28:\"index.php?post_type=articulo\";s:41:\"articulo/feed/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?post_type=articulo&feed=$matches[1]\";s:36:\"articulo/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?post_type=articulo&feed=$matches[1]\";s:28:\"articulo/page/([0-9]{1,})/?$\";s:46:\"index.php?post_type=articulo&paged=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:36:\"articulo/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:46:\"articulo/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\"articulo/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"articulo/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"articulo/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:42:\"articulo/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:25:\"articulo/([^/]+)/embed/?$\";s:41:\"index.php?articulo=$matches[1]&embed=true\";s:29:\"articulo/([^/]+)/trackback/?$\";s:35:\"index.php?articulo=$matches[1]&tb=1\";s:49:\"articulo/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?articulo=$matches[1]&feed=$matches[2]\";s:44:\"articulo/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?articulo=$matches[1]&feed=$matches[2]\";s:37:\"articulo/([^/]+)/page/?([0-9]{1,})/?$\";s:48:\"index.php?articulo=$matches[1]&paged=$matches[2]\";s:44:\"articulo/([^/]+)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?articulo=$matches[1]&cpage=$matches[2]\";s:33:\"articulo/([^/]+)(?:/([0-9]+))?/?$\";s:47:\"index.php?articulo=$matches[1]&page=$matches[2]\";s:25:\"articulo/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:35:\"articulo/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:55:\"articulo/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"articulo/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"articulo/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:31:\"articulo/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=5&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}','yes');
INSERT INTO `wp_options` VALUES (30,'hack_file','0','yes');
INSERT INTO `wp_options` VALUES (31,'blog_charset','UTF-8','yes');
INSERT INTO `wp_options` VALUES (32,'moderation_keys','','no');
INSERT INTO `wp_options` VALUES (33,'active_plugins','a:2:{i:0;s:23:\"enlighter/Enlighter.php\";i:1;s:24:\"wordpress-seo/wp-seo.php\";}','yes');
INSERT INTO `wp_options` VALUES (34,'category_base','','yes');
INSERT INTO `wp_options` VALUES (35,'ping_sites','http://rpc.pingomatic.com/','yes');
INSERT INTO `wp_options` VALUES (36,'comment_max_links','2','yes');
INSERT INTO `wp_options` VALUES (37,'gmt_offset','','yes');
INSERT INTO `wp_options` VALUES (38,'default_email_category','1','yes');
INSERT INTO `wp_options` VALUES (39,'recently_edited','','no');
INSERT INTO `wp_options` VALUES (40,'template','progrim','yes');
INSERT INTO `wp_options` VALUES (41,'stylesheet','progrim','yes');
INSERT INTO `wp_options` VALUES (42,'comment_registration','','yes');
INSERT INTO `wp_options` VALUES (43,'html_type','text/html','yes');
INSERT INTO `wp_options` VALUES (44,'use_trackback','0','yes');
INSERT INTO `wp_options` VALUES (45,'default_role','subscriber','yes');
INSERT INTO `wp_options` VALUES (46,'db_version','53496','yes');
INSERT INTO `wp_options` VALUES (47,'uploads_use_yearmonth_folders','1','yes');
INSERT INTO `wp_options` VALUES (48,'upload_path','','yes');
INSERT INTO `wp_options` VALUES (49,'blog_public','1','yes');
INSERT INTO `wp_options` VALUES (50,'default_link_category','2','yes');
INSERT INTO `wp_options` VALUES (51,'show_on_front','page','yes');
INSERT INTO `wp_options` VALUES (52,'tag_base','','yes');
INSERT INTO `wp_options` VALUES (53,'show_avatars','1','yes');
INSERT INTO `wp_options` VALUES (54,'avatar_rating','G','yes');
INSERT INTO `wp_options` VALUES (55,'upload_url_path','','yes');
INSERT INTO `wp_options` VALUES (56,'thumbnail_size_w','150','yes');
INSERT INTO `wp_options` VALUES (57,'thumbnail_size_h','150','yes');
INSERT INTO `wp_options` VALUES (58,'thumbnail_crop','1','yes');
INSERT INTO `wp_options` VALUES (59,'medium_size_w','300','yes');
INSERT INTO `wp_options` VALUES (60,'medium_size_h','300','yes');
INSERT INTO `wp_options` VALUES (61,'avatar_default','mystery','yes');
INSERT INTO `wp_options` VALUES (62,'large_size_w','1024','yes');
INSERT INTO `wp_options` VALUES (63,'large_size_h','1024','yes');
INSERT INTO `wp_options` VALUES (64,'image_default_link_type','none','yes');
INSERT INTO `wp_options` VALUES (65,'image_default_size','','yes');
INSERT INTO `wp_options` VALUES (66,'image_default_align','','yes');
INSERT INTO `wp_options` VALUES (67,'close_comments_for_old_posts','','yes');
INSERT INTO `wp_options` VALUES (68,'close_comments_days_old','14','yes');
INSERT INTO `wp_options` VALUES (69,'thread_comments','1','yes');
INSERT INTO `wp_options` VALUES (70,'thread_comments_depth','5','yes');
INSERT INTO `wp_options` VALUES (71,'page_comments','','yes');
INSERT INTO `wp_options` VALUES (72,'comments_per_page','50','yes');
INSERT INTO `wp_options` VALUES (73,'default_comments_page','newest','yes');
INSERT INTO `wp_options` VALUES (74,'comment_order','asc','yes');
INSERT INTO `wp_options` VALUES (75,'sticky_posts','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (76,'widget_categories','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (77,'widget_text','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (78,'widget_rss','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (79,'uninstall_plugins','a:1:{s:24:\"wordpress-seo/wp-seo.php\";s:14:\"__return_false\";}','no');
INSERT INTO `wp_options` VALUES (80,'timezone_string','America/Argentina/Buenos_Aires','yes');
INSERT INTO `wp_options` VALUES (81,'page_for_posts','0','yes');
INSERT INTO `wp_options` VALUES (82,'page_on_front','5','yes');
INSERT INTO `wp_options` VALUES (83,'default_post_format','0','yes');
INSERT INTO `wp_options` VALUES (84,'link_manager_enabled','0','yes');
INSERT INTO `wp_options` VALUES (85,'finished_splitting_shared_terms','1','yes');
INSERT INTO `wp_options` VALUES (86,'site_icon','0','yes');
INSERT INTO `wp_options` VALUES (87,'medium_large_size_w','768','yes');
INSERT INTO `wp_options` VALUES (88,'medium_large_size_h','0','yes');
INSERT INTO `wp_options` VALUES (89,'wp_page_for_privacy_policy','3','yes');
INSERT INTO `wp_options` VALUES (90,'show_comments_cookies_opt_in','1','yes');
INSERT INTO `wp_options` VALUES (91,'admin_email_lifespan','1688593221','yes');
INSERT INTO `wp_options` VALUES (92,'disallowed_keys','','no');
INSERT INTO `wp_options` VALUES (93,'comment_previously_approved','1','yes');
INSERT INTO `wp_options` VALUES (94,'auto_plugin_theme_update_emails','a:0:{}','no');
INSERT INTO `wp_options` VALUES (95,'auto_update_core_dev','enabled','yes');
INSERT INTO `wp_options` VALUES (96,'auto_update_core_minor','enabled','yes');
INSERT INTO `wp_options` VALUES (97,'auto_update_core_major','enabled','yes');
INSERT INTO `wp_options` VALUES (98,'wp_force_deactivated_plugins','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (99,'initial_db_version','53496','yes');
INSERT INTO `wp_options` VALUES (100,'wp_user_roles','a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:62:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:20:\"wpseo_manage_options\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:36:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;s:28:\"wpseo_edit_advanced_metadata\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:13:\"wpseo_manager\";a:2:{s:4:\"name\";s:11:\"SEO Manager\";s:12:\"capabilities\";a:38:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;s:28:\"wpseo_edit_advanced_metadata\";b:1;s:20:\"wpseo_manage_options\";b:1;s:23:\"view_site_health_checks\";b:1;}}s:12:\"wpseo_editor\";a:2:{s:4:\"name\";s:10:\"SEO Editor\";s:12:\"capabilities\";a:36:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;s:28:\"wpseo_edit_advanced_metadata\";b:1;}}}','yes');
INSERT INTO `wp_options` VALUES (101,'fresh_site','0','yes');
INSERT INTO `wp_options` VALUES (102,'user_count','1','no');
INSERT INTO `wp_options` VALUES (103,'widget_block','a:7:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:227:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}i:7;a:1:{s:7:\"content\";s:106:\"<!-- wp:tag-cloud {\"smallestFontSize\":\"15pt\",\"largestFontSize\":\"30pt\",\"className\":\"is-style-outline\"} /-->\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (104,'sidebars_widgets','a:3:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:10:\"pie-pagina\";a:1:{i:0;s:7:\"block-7\";}s:13:\"array_version\";i:3;}','yes');
INSERT INTO `wp_options` VALUES (105,'cron','a:7:{i:1680885623;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1680903623;a:5:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1680904134;a:3:{s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1680904135;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1680905836;a:2:{s:13:\"wpseo-reindex\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:31:\"wpseo_permalink_structure_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1680990023;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}','yes');
INSERT INTO `wp_options` VALUES (106,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (107,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (108,'widget_archives','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (109,'widget_media_audio','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (110,'widget_media_image','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (111,'widget_media_gallery','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (112,'widget_media_video','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (113,'widget_meta','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (114,'widget_search','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (115,'nonce_key','_%zCQl/7Wgp=o[N>+B{<IpKuL#o(|t0&z0_7RDR{o__sJIF; lEBO|u$2B`B2|T]','no');
INSERT INTO `wp_options` VALUES (116,'nonce_salt','5eQKuOtu+oP-&!h@oI8[y~yW!&AJk6Q_;}i3}+7)(,(<ze 8j^jzSxB06W*bD+[l','no');
INSERT INTO `wp_options` VALUES (117,'widget_recent-posts','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (118,'widget_recent-comments','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (119,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (120,'widget_nav_menu','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (121,'widget_custom_html','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (123,'recovery_keys','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (126,'theme_mods_twentytwentythree','a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1673057217;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}','yes');
INSERT INTO `wp_options` VALUES (129,'https_detection_errors','a:1:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:26:\"Verificación SSL fallida.\";}}','yes');
INSERT INTO `wp_options` VALUES (136,'auth_key','r4Y=W>quohC*2cRoO@8cd]fDzH,@h=!4]e{ YU)J+nExd)m/:|1TpWj)JRrI3?r`','no');
INSERT INTO `wp_options` VALUES (137,'auth_salt','~+e@ZrV2ORG3eo9OyiQ>!t-nsSk(Ujj;E6p3.PvEI#K8mEqB9UD6Amql;X;Gj9,W','no');
INSERT INTO `wp_options` VALUES (138,'logged_in_key','tmNoJNI/cscf)[k.fi5=gd} n./ynBwWM EXbnQGrdc9R%g>Ngl`h!YB4q)Mx2n>','no');
INSERT INTO `wp_options` VALUES (139,'logged_in_salt','?$qZFS)Gx>#w*L)qfdi5nZ0fgS^{dg<U(J.$n(hterb ScSex`wt.#Q%`Y[}a.NX','no');
INSERT INTO `wp_options` VALUES (157,'can_compress_scripts','1','no');
INSERT INTO `wp_options` VALUES (160,'finished_updating_comment_type','1','yes');
INSERT INTO `wp_options` VALUES (170,'current_theme','ProGrim','yes');
INSERT INTO `wp_options` VALUES (171,'theme_mods_progrim','a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:2:{s:14:\"menu-principal\";i:2;s:15:\"menu-responsive\";i:2;}s:18:\"custom_css_post_id\";i:-1;}','yes');
INSERT INTO `wp_options` VALUES (172,'theme_switched','','yes');
INSERT INTO `wp_options` VALUES (214,'_transient_health-check-site-status-result','{\"good\":16,\"recommended\":2,\"critical\":0}','yes');
INSERT INTO `wp_options` VALUES (237,'WPLANG','es_ES','yes');
INSERT INTO `wp_options` VALUES (238,'new_admin_email','fedeagrimaldi@gmail.com','yes');
INSERT INTO `wp_options` VALUES (289,'nav_menu_options','a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}','yes');
INSERT INTO `wp_options` VALUES (812,'wp_calendar_block_has_published_posts','1','yes');
INSERT INTO `wp_options` VALUES (1234,'genero_children','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (1251,'recovery_mode_email_last_sent','1675210342','yes');
INSERT INTO `wp_options` VALUES (1430,'recently_activated','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (1441,'yoast_migrations_free','a:1:{s:7:\"version\";s:4:\"20.1\";}','yes');
INSERT INTO `wp_options` VALUES (1442,'wpseo','a:100:{s:8:\"tracking\";b:0;s:22:\"license_server_version\";b:0;s:15:\"ms_defaults_set\";b:0;s:40:\"ignore_search_engines_discouraged_notice\";b:0;s:19:\"indexing_first_time\";b:1;s:16:\"indexing_started\";b:0;s:15:\"indexing_reason\";s:26:\"permalink_settings_changed\";s:29:\"indexables_indexing_completed\";b:0;s:13:\"index_now_key\";s:0:\"\";s:7:\"version\";s:4:\"20.1\";s:16:\"previous_version\";s:4:\"20.0\";s:20:\"disableadvanced_meta\";b:1;s:30:\"enable_headless_rest_endpoints\";b:1;s:17:\"ryte_indexability\";b:0;s:11:\"baiduverify\";s:0:\"\";s:12:\"googleverify\";s:0:\"\";s:8:\"msverify\";s:0:\"\";s:12:\"yandexverify\";s:0:\"\";s:9:\"site_type\";s:0:\"\";s:20:\"has_multiple_authors\";s:0:\"\";s:16:\"environment_type\";s:0:\"\";s:23:\"content_analysis_active\";b:1;s:23:\"keyword_analysis_active\";b:1;s:34:\"inclusive_language_analysis_active\";b:0;s:21:\"enable_admin_bar_menu\";b:1;s:26:\"enable_cornerstone_content\";b:1;s:18:\"enable_xml_sitemap\";b:1;s:24:\"enable_text_link_counter\";b:1;s:16:\"enable_index_now\";b:1;s:22:\"show_onboarding_notice\";b:1;s:18:\"first_activated_on\";i:1675289836;s:13:\"myyoast-oauth\";b:0;s:26:\"semrush_integration_active\";b:1;s:14:\"semrush_tokens\";a:0:{}s:20:\"semrush_country_code\";s:2:\"us\";s:19:\"permalink_structure\";s:12:\"/%postname%/\";s:8:\"home_url\";s:20:\"http://progrim.local\";s:18:\"dynamic_permalinks\";b:0;s:17:\"category_base_url\";s:0:\"\";s:12:\"tag_base_url\";s:0:\"\";s:21:\"custom_taxonomy_slugs\";a:0:{}s:29:\"enable_enhanced_slack_sharing\";b:1;s:25:\"zapier_integration_active\";b:0;s:19:\"zapier_subscription\";a:0:{}s:14:\"zapier_api_key\";s:0:\"\";s:23:\"enable_metabox_insights\";b:1;s:23:\"enable_link_suggestions\";b:1;s:26:\"algolia_integration_active\";b:0;s:14:\"import_cursors\";a:0:{}s:13:\"workouts_data\";a:1:{s:13:\"configuration\";a:1:{s:13:\"finishedSteps\";a:0:{}}}s:28:\"configuration_finished_steps\";a:0:{}s:36:\"dismiss_configuration_workout_notice\";b:0;s:34:\"dismiss_premium_deactivated_notice\";b:0;s:34:\"dismiss_old_premium_version_notice\";s:0:\"\";s:19:\"importing_completed\";a:0:{}s:26:\"wincher_integration_active\";b:1;s:14:\"wincher_tokens\";a:0:{}s:36:\"wincher_automatically_add_keyphrases\";b:0;s:18:\"wincher_website_id\";s:0:\"\";s:28:\"wordproof_integration_active\";b:0;s:29:\"wordproof_integration_changed\";b:0;s:18:\"first_time_install\";b:1;s:34:\"should_redirect_after_install_free\";b:0;s:34:\"activation_redirect_timestamp_free\";i:1675289836;s:18:\"remove_feed_global\";b:0;s:27:\"remove_feed_global_comments\";b:0;s:25:\"remove_feed_post_comments\";b:0;s:19:\"remove_feed_authors\";b:0;s:22:\"remove_feed_categories\";b:0;s:16:\"remove_feed_tags\";b:0;s:29:\"remove_feed_custom_taxonomies\";b:0;s:22:\"remove_feed_post_types\";b:0;s:18:\"remove_feed_search\";b:0;s:21:\"remove_atom_rdf_feeds\";b:0;s:17:\"remove_shortlinks\";b:0;s:21:\"remove_rest_api_links\";b:0;s:20:\"remove_rsd_wlw_links\";b:0;s:19:\"remove_oembed_links\";b:0;s:16:\"remove_generator\";b:0;s:20:\"remove_emoji_scripts\";b:0;s:24:\"remove_powered_by_header\";b:0;s:22:\"remove_pingback_header\";b:0;s:28:\"clean_campaign_tracking_urls\";b:0;s:16:\"clean_permalinks\";b:0;s:32:\"clean_permalinks_extra_variables\";s:0:\"\";s:14:\"search_cleanup\";b:0;s:20:\"search_cleanup_emoji\";b:0;s:23:\"search_cleanup_patterns\";b:0;s:22:\"search_character_limit\";i:50;s:20:\"deny_search_crawling\";b:0;s:21:\"deny_wp_json_crawling\";b:0;s:27:\"redirect_search_pretty_urls\";b:0;s:29:\"least_readability_ignore_list\";a:0:{}s:27:\"least_seo_score_ignore_list\";a:0:{}s:23:\"most_linked_ignore_list\";a:0:{}s:24:\"least_linked_ignore_list\";a:0:{}s:28:\"indexables_page_reading_list\";a:5:{i:0;b:0;i:1;b:0;i:2;b:0;i:3;b:0;i:4;b:0;}s:25:\"indexables_overview_state\";s:21:\"dashboard-not-visited\";s:28:\"last_known_public_post_types\";a:4:{i:0;s:4:\"post\";i:1;s:4:\"page\";i:2;s:10:\"attachment\";i:3;s:8:\"articulo\";}s:28:\"last_known_public_taxonomies\";a:3:{i:0;s:8:\"category\";i:1;s:8:\"post_tag\";i:2;s:11:\"post_format\";}}','yes');
INSERT INTO `wp_options` VALUES (1443,'wpseo_titles','a:129:{s:17:\"forcerewritetitle\";b:0;s:9:\"separator\";s:7:\"sc-dash\";s:16:\"title-home-wpseo\";s:42:\"%%sitename%% %%page%% %%sep%% %%sitedesc%%\";s:18:\"title-author-wpseo\";s:40:\"%%name%%, autor en %%sitename%% %%page%%\";s:19:\"title-archive-wpseo\";s:38:\"%%date%% %%page%% %%sep%% %%sitename%%\";s:18:\"title-search-wpseo\";s:58:\"Has buscado %%searchphrase%% %%page%% %%sep%% %%sitename%%\";s:15:\"title-404-wpseo\";s:42:\"Página no encontrada %%sep%% %%sitename%%\";s:25:\"social-title-author-wpseo\";s:8:\"%%name%%\";s:26:\"social-title-archive-wpseo\";s:8:\"%%date%%\";s:31:\"social-description-author-wpseo\";s:0:\"\";s:32:\"social-description-archive-wpseo\";s:0:\"\";s:29:\"social-image-url-author-wpseo\";s:0:\"\";s:30:\"social-image-url-archive-wpseo\";s:0:\"\";s:28:\"social-image-id-author-wpseo\";i:0;s:29:\"social-image-id-archive-wpseo\";i:0;s:19:\"metadesc-home-wpseo\";s:0:\"\";s:21:\"metadesc-author-wpseo\";s:0:\"\";s:22:\"metadesc-archive-wpseo\";s:0:\"\";s:9:\"rssbefore\";s:0:\"\";s:8:\"rssafter\";s:60:\"La entrada %%POSTLINK%% se publicó primero en %%BLOGLINK%%.\";s:20:\"noindex-author-wpseo\";b:0;s:28:\"noindex-author-noposts-wpseo\";b:1;s:21:\"noindex-archive-wpseo\";b:1;s:14:\"disable-author\";b:0;s:12:\"disable-date\";b:0;s:19:\"disable-post_format\";b:0;s:18:\"disable-attachment\";b:1;s:20:\"breadcrumbs-404crumb\";s:32:\"Error 404: Página no encontrada\";s:29:\"breadcrumbs-display-blog-page\";b:1;s:20:\"breadcrumbs-boldlast\";b:0;s:25:\"breadcrumbs-archiveprefix\";s:10:\"Archivo de\";s:18:\"breadcrumbs-enable\";b:1;s:16:\"breadcrumbs-home\";s:7:\"Portada\";s:18:\"breadcrumbs-prefix\";s:0:\"\";s:24:\"breadcrumbs-searchprefix\";s:15:\"Has buscado por\";s:15:\"breadcrumbs-sep\";s:2:\"»\";s:12:\"website_name\";s:0:\"\";s:11:\"person_name\";s:0:\"\";s:11:\"person_logo\";s:0:\"\";s:22:\"alternate_website_name\";s:0:\"\";s:12:\"company_logo\";s:0:\"\";s:12:\"company_name\";s:0:\"\";s:22:\"company_alternate_name\";s:0:\"\";s:17:\"company_or_person\";s:7:\"company\";s:25:\"company_or_person_user_id\";b:0;s:17:\"stripcategorybase\";b:0;s:26:\"open_graph_frontpage_title\";s:12:\"%%sitename%%\";s:25:\"open_graph_frontpage_desc\";s:0:\"\";s:26:\"open_graph_frontpage_image\";s:0:\"\";s:10:\"title-post\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-post\";s:0:\"\";s:12:\"noindex-post\";b:0;s:23:\"display-metabox-pt-post\";b:1;s:23:\"post_types-post-maintax\";i:0;s:21:\"schema-page-type-post\";s:7:\"WebPage\";s:24:\"schema-article-type-post\";s:7:\"Article\";s:17:\"social-title-post\";s:9:\"%%title%%\";s:23:\"social-description-post\";s:0:\"\";s:21:\"social-image-url-post\";s:0:\"\";s:20:\"social-image-id-post\";i:0;s:10:\"title-page\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-page\";s:0:\"\";s:12:\"noindex-page\";b:0;s:23:\"display-metabox-pt-page\";b:1;s:23:\"post_types-page-maintax\";i:0;s:21:\"schema-page-type-page\";s:7:\"WebPage\";s:24:\"schema-article-type-page\";s:4:\"None\";s:17:\"social-title-page\";s:9:\"%%title%%\";s:23:\"social-description-page\";s:0:\"\";s:21:\"social-image-url-page\";s:0:\"\";s:20:\"social-image-id-page\";i:0;s:16:\"title-attachment\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:19:\"metadesc-attachment\";s:0:\"\";s:18:\"noindex-attachment\";b:0;s:29:\"display-metabox-pt-attachment\";b:1;s:29:\"post_types-attachment-maintax\";i:0;s:27:\"schema-page-type-attachment\";s:7:\"WebPage\";s:30:\"schema-article-type-attachment\";s:4:\"None\";s:14:\"title-articulo\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:17:\"metadesc-articulo\";s:0:\"\";s:16:\"noindex-articulo\";b:0;s:27:\"display-metabox-pt-articulo\";b:1;s:27:\"post_types-articulo-maintax\";i:0;s:25:\"schema-page-type-articulo\";s:7:\"WebPage\";s:28:\"schema-article-type-articulo\";s:4:\"None\";s:21:\"social-title-articulo\";s:9:\"%%title%%\";s:27:\"social-description-articulo\";s:0:\"\";s:25:\"social-image-url-articulo\";s:0:\"\";s:24:\"social-image-id-articulo\";i:0;s:24:\"title-ptarchive-articulo\";s:51:\"%%pt_plural%% archivo %%page%% %%sep%% %%sitename%%\";s:27:\"metadesc-ptarchive-articulo\";s:0:\"\";s:26:\"bctitle-ptarchive-articulo\";s:0:\"\";s:26:\"noindex-ptarchive-articulo\";b:0;s:31:\"social-title-ptarchive-articulo\";s:21:\"%%pt_plural%% archivo\";s:37:\"social-description-ptarchive-articulo\";s:0:\"\";s:35:\"social-image-url-ptarchive-articulo\";s:0:\"\";s:34:\"social-image-id-ptarchive-articulo\";i:0;s:18:\"title-tax-category\";s:53:\"%%term_title%% archivos %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-category\";s:0:\"\";s:28:\"display-metabox-tax-category\";b:1;s:20:\"noindex-tax-category\";b:0;s:25:\"social-title-tax-category\";s:23:\"%%term_title%% archivos\";s:31:\"social-description-tax-category\";s:0:\"\";s:29:\"social-image-url-tax-category\";s:0:\"\";s:28:\"social-image-id-tax-category\";i:0;s:26:\"taxonomy-category-ptparent\";i:0;s:18:\"title-tax-post_tag\";s:53:\"%%term_title%% archivos %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-post_tag\";s:0:\"\";s:28:\"display-metabox-tax-post_tag\";b:1;s:20:\"noindex-tax-post_tag\";b:0;s:25:\"social-title-tax-post_tag\";s:23:\"%%term_title%% archivos\";s:31:\"social-description-tax-post_tag\";s:0:\"\";s:29:\"social-image-url-tax-post_tag\";s:0:\"\";s:28:\"social-image-id-tax-post_tag\";i:0;s:26:\"taxonomy-post_tag-ptparent\";i:0;s:21:\"title-tax-post_format\";s:53:\"%%term_title%% archivos %%page%% %%sep%% %%sitename%%\";s:24:\"metadesc-tax-post_format\";s:0:\"\";s:31:\"display-metabox-tax-post_format\";b:1;s:23:\"noindex-tax-post_format\";b:1;s:28:\"social-title-tax-post_format\";s:23:\"%%term_title%% archivos\";s:34:\"social-description-tax-post_format\";s:0:\"\";s:32:\"social-image-url-tax-post_format\";s:0:\"\";s:31:\"social-image-id-tax-post_format\";i:0;s:29:\"taxonomy-post_format-ptparent\";i:0;s:14:\"person_logo_id\";i:0;s:15:\"company_logo_id\";i:0;s:17:\"company_logo_meta\";b:0;s:16:\"person_logo_meta\";b:0;s:29:\"open_graph_frontpage_image_id\";i:0;}','yes');
INSERT INTO `wp_options` VALUES (1444,'wpseo_social','a:19:{s:13:\"facebook_site\";s:0:\"\";s:13:\"instagram_url\";s:0:\"\";s:12:\"linkedin_url\";s:0:\"\";s:11:\"myspace_url\";s:0:\"\";s:16:\"og_default_image\";s:0:\"\";s:19:\"og_default_image_id\";s:0:\"\";s:18:\"og_frontpage_title\";s:0:\"\";s:17:\"og_frontpage_desc\";s:0:\"\";s:18:\"og_frontpage_image\";s:0:\"\";s:21:\"og_frontpage_image_id\";s:0:\"\";s:9:\"opengraph\";b:1;s:13:\"pinterest_url\";s:0:\"\";s:15:\"pinterestverify\";s:0:\"\";s:7:\"twitter\";b:1;s:12:\"twitter_site\";s:0:\"\";s:17:\"twitter_card_type\";s:19:\"summary_large_image\";s:11:\"youtube_url\";s:0:\"\";s:13:\"wikipedia_url\";s:0:\"\";s:17:\"other_social_urls\";a:0:{}}','yes');
INSERT INTO `wp_options` VALUES (1541,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:3:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:63:\"https://downloads.wordpress.org/release/es_ES/wordpress-6.2.zip\";s:6:\"locale\";s:5:\"es_ES\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:63:\"https://downloads.wordpress.org/release/es_ES/wordpress-6.2.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:3:\"6.2\";s:7:\"version\";s:3:\"6.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.1\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:57:\"https://downloads.wordpress.org/release/wordpress-6.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:57:\"https://downloads.wordpress.org/release/wordpress-6.2.zip\";s:10:\"no_content\";s:68:\"https://downloads.wordpress.org/release/wordpress-6.2-no-content.zip\";s:11:\"new_bundled\";s:69:\"https://downloads.wordpress.org/release/wordpress-6.2-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:3:\"6.2\";s:7:\"version\";s:3:\"6.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.1\";s:15:\"partial_version\";s:0:\"\";}i:2;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:57:\"https://downloads.wordpress.org/release/wordpress-6.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:57:\"https://downloads.wordpress.org/release/wordpress-6.2.zip\";s:10:\"no_content\";s:68:\"https://downloads.wordpress.org/release/wordpress-6.2-no-content.zip\";s:11:\"new_bundled\";s:69:\"https://downloads.wordpress.org/release/wordpress-6.2-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:3:\"6.2\";s:7:\"version\";s:3:\"6.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.1\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}}s:12:\"last_checked\";i:1680884504;s:15:\"version_checked\";s:5:\"6.1.1\";s:12:\"translations\";a:1:{i:0;a:7:{s:4:\"type\";s:4:\"core\";s:4:\"slug\";s:7:\"default\";s:8:\"language\";s:5:\"es_ES\";s:7:\"version\";s:5:\"6.1.1\";s:7:\"updated\";s:19:\"2023-02-27 22:40:37\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.1.1/es_ES.zip\";s:10:\"autoupdate\";b:1;}}}','no');
INSERT INTO `wp_options` VALUES (1542,'_site_transient_update_plugins','O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1680884505;s:8:\"response\";a:1:{s:24:\"wordpress-seo/wp-seo.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:27:\"w.org/plugins/wordpress-seo\";s:4:\"slug\";s:13:\"wordpress-seo\";s:6:\"plugin\";s:24:\"wordpress-seo/wp-seo.php\";s:11:\"new_version\";s:4:\"20.4\";s:3:\"url\";s:44:\"https://wordpress.org/plugins/wordpress-seo/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/wordpress-seo.20.4.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:58:\"https://ps.w.org/wordpress-seo/assets/icon.svg?rev=2363699\";s:3:\"svg\";s:58:\"https://ps.w.org/wordpress-seo/assets/icon.svg?rev=2363699\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/wordpress-seo/assets/banner-1544x500.png?rev=2643727\";s:2:\"1x\";s:68:\"https://ps.w.org/wordpress-seo/assets/banner-772x250.png?rev=2643727\";}s:11:\"banners_rtl\";a:2:{s:2:\"2x\";s:73:\"https://ps.w.org/wordpress-seo/assets/banner-1544x500-rtl.png?rev=2643727\";s:2:\"1x\";s:72:\"https://ps.w.org/wordpress-seo/assets/banner-772x250-rtl.png?rev=2643727\";}s:8:\"requires\";s:3:\"6.0\";s:6:\"tested\";s:3:\"6.2\";s:12:\"requires_php\";s:6:\"5.6.20\";}}s:12:\"translations\";a:1:{i:0;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:13:\"wordpress-seo\";s:8:\"language\";s:5:\"es_ES\";s:7:\"version\";s:4:\"20.1\";s:7:\"updated\";s:19:\"2023-02-27 17:31:45\";s:7:\"package\";s:79:\"https://downloads.wordpress.org/translation/plugin/wordpress-seo/20.1/es_ES.zip\";s:10:\"autoupdate\";b:1;}}s:9:\"no_update\";a:1:{s:23:\"enlighter/Enlighter.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:23:\"w.org/plugins/enlighter\";s:4:\"slug\";s:9:\"enlighter\";s:6:\"plugin\";s:23:\"enlighter/Enlighter.php\";s:11:\"new_version\";s:5:\"4.6.1\";s:3:\"url\";s:40:\"https://wordpress.org/plugins/enlighter/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/enlighter.4.6.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:62:\"https://ps.w.org/enlighter/assets/icon-256x256.png?rev=1215872\";s:2:\"1x\";s:62:\"https://ps.w.org/enlighter/assets/icon-128x128.png?rev=1215872\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:64:\"https://ps.w.org/enlighter/assets/banner-772x250.png?rev=1396006\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"6.0\";}}}','no');
INSERT INTO `wp_options` VALUES (1543,'_site_transient_update_themes','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1680884506;s:7:\"checked\";a:5:{s:7:\"progrim\";s:3:\"1.3\";s:15:\"twentytwentyone\";s:3:\"1.7\";s:17:\"twentytwentythree\";s:3:\"1.0\";s:15:\"twentytwentytwo\";s:3:\"1.3\";s:7:\"xooblog\";s:5:\"2.0.5\";}s:8:\"response\";a:3:{s:15:\"twentytwentyone\";a:6:{s:5:\"theme\";s:15:\"twentytwentyone\";s:11:\"new_version\";s:3:\"1.8\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentyone/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentyone.1.8.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.6\";}s:17:\"twentytwentythree\";a:6:{s:5:\"theme\";s:17:\"twentytwentythree\";s:11:\"new_version\";s:3:\"1.1\";s:3:\"url\";s:47:\"https://wordpress.org/themes/twentytwentythree/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/theme/twentytwentythree.1.1.zip\";s:8:\"requires\";s:3:\"6.1\";s:12:\"requires_php\";s:3:\"5.6\";}s:15:\"twentytwentytwo\";a:6:{s:5:\"theme\";s:15:\"twentytwentytwo\";s:11:\"new_version\";s:3:\"1.4\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentytwo/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentytwo.1.4.zip\";s:8:\"requires\";s:3:\"5.9\";s:12:\"requires_php\";s:3:\"5.6\";}}s:9:\"no_update\";a:1:{s:7:\"xooblog\";a:6:{s:5:\"theme\";s:7:\"xooblog\";s:11:\"new_version\";s:5:\"2.0.5\";s:3:\"url\";s:37:\"https://wordpress.org/themes/xooblog/\";s:7:\"package\";s:55:\"https://downloads.wordpress.org/theme/xooblog.2.0.5.zip\";s:8:\"requires\";b:0;s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:1:{i:0;a:7:{s:4:\"type\";s:5:\"theme\";s:4:\"slug\";s:15:\"twentytwentyone\";s:8:\"language\";s:5:\"es_ES\";s:7:\"version\";s:3:\"1.0\";s:7:\"updated\";s:19:\"2023-03-30 11:21:48\";s:7:\"package\";s:79:\"https://downloads.wordpress.org/translation/theme/twentytwentyone/1.0/es_ES.zip\";s:10:\"autoupdate\";b:1;}}}','no');
INSERT INTO `wp_options` VALUES (1548,'enlighter-version','4.6.1','yes');
INSERT INTO `wp_options` VALUES (1552,'enlighter-customizer','/*@BASETHEME:monokai*/\r\n\r\n.enlighter-t-wpcustom{\r\n	font-family: \"Source Code Pro\",\"Liberation Mono\",\"Courier New\",Courier,monospace;\r\n	line-height: 106px;\r\n}\r\n.enlighter-t-wpcustom .enlighter-toolbar{\r\n	top: 10px;\r\n	right: 10px;\r\n}\r\n.enlighter-t-wpcustom .enlighter-btn{\r\n	background-image: none;\r\n	padding: 2px 8px 2px 8px;\r\n	margin: 0 5px 0 5px;\r\n	border: solid 1px #1e1f1c;\r\n}\r\n.enlighter-t-wpcustom .enlighter-btn:hover{\r\n	background-color: #4e5145;\r\n}\r\n.enlighter-t-wpcustom .enlighter-toolbar .enlighter-btn-raw{\r\n	background-image: none;\r\n}\r\n.enlighter-t-wpcustom .enlighter-toolbar .enlighter-btn-raw:after{\r\n	content: \'Raw\';\r\n}\r\n.enlighter-t-wpcustom .enlighter-toolbar .enlighter-btn-copy{\r\n	background-image: none;\r\n}\r\n.enlighter-t-wpcustom .enlighter-toolbar .enlighter-btn-copy:after{\r\n	content: \'Copy\';\r\n}\r\n.enlighter-t-wpcustom .enlighter-toolbar .enlighter-btn-window{\r\n	background-image: none;\r\n}\r\n.enlighter-t-wpcustom .enlighter-toolbar .enlighter-btn-window:after{\r\n	content: \'Extern\';\r\n}\r\n.enlighter-t-wpcustom .enlighter-toolbar .enlighter-btn-website{\r\n	background-image: none;\r\n}\r\n.enlighter-t-wpcustom .enlighter-toolbar .enlighter-btn-website:after{\r\n	content: \'EnlighterJS\';\r\n}\r\n.enlighter-t-wpcustom.enlighter-hover div.enlighter>div:hover{\r\n}\r\n.enlighter-t-wpcustom .enlighter-raw{\r\n	padding: 4px 5px 4px 55px;\r\n}\r\n.enlighter-t-wpcustom div.enlighter>div{\r\n	padding: 1px 5px 1px 14px;\r\n	line-height: 1.6em;\r\n}\r\n.enlighter-t-wpcustom div.enlighter>div:FIRST-CHILD{\r\n	padding-top: 5px;\r\n}\r\n.enlighter-t-wpcustom div.enlighter>div:LAST-CHILD{\r\n	padding-bottom: 5px;\r\n}\r\n.enlighter-t-wpcustom div.enlighter>div:AFTER{\r\n	content: \' \';\r\n}\r\n.enlighter-t-wpcustom div.enlighter>div.enlighter-special{\r\n}\r\n.enlighter-t-wpcustom.enlighter-linenumbers div.enlighter>div::before{\r\n}\r\n.enlighter-t-wpcustom .enlighter span{\r\n}\r\n.enlighter-t-wpcustom .enlighter-text{\r\n	color: #f8f8f2;\r\n}\r\n.enlighter-t-wpcustom .enlighter-c0{\r\n}\r\n.enlighter-t-wpcustom .enlighter-c1{\r\n}\r\n.enlighter-t-wpcustom .enlighter-c2{\r\n}\r\n.enlighter-t-wpcustom .enlighter-c9{\r\n}\r\n.enlighter-t-wpcustom .enlighter-k0{\r\n}\r\n.enlighter-t-wpcustom .enlighter-k1{\r\n}\r\n.enlighter-t-wpcustom .enlighter-k2{\r\n}\r\n.enlighter-t-wpcustom .enlighter-k3{\r\n}\r\n.enlighter-t-wpcustom .enlighter-k4{\r\n}\r\n.enlighter-t-wpcustom .enlighter-k5{\r\n}\r\n.enlighter-t-wpcustom .enlighter-k6{\r\n}\r\n.enlighter-t-wpcustom .enlighter-k7{\r\n}\r\n.enlighter-t-wpcustom .enlighter-k8{\r\n}\r\n.enlighter-t-wpcustom .enlighter-k9{\r\n}\r\n.enlighter-t-wpcustom .enlighter-k10{\r\n}\r\n.enlighter-t-wpcustom .enlighter-k11{\r\n}\r\n.enlighter-t-wpcustom .enlighter-e0{\r\n}\r\n.enlighter-t-wpcustom .enlighter-e1{\r\n}\r\n.enlighter-t-wpcustom .enlighter-e2{\r\n}\r\n.enlighter-t-wpcustom .enlighter-e3{\r\n}\r\n.enlighter-t-wpcustom .enlighter-e4{\r\n}\r\n.enlighter-t-wpcustom .enlighter-s0{\r\n}\r\n.enlighter-t-wpcustom .enlighter-s1{\r\n}\r\n.enlighter-t-wpcustom .enlighter-s2{\r\n}\r\n.enlighter-t-wpcustom .enlighter-s3{\r\n}\r\n.enlighter-t-wpcustom .enlighter-s4{\r\n}\r\n.enlighter-t-wpcustom .enlighter-s5{\r\n}\r\n.enlighter-t-wpcustom .enlighter-n0{\r\n}\r\n.enlighter-t-wpcustom .enlighter-n1{\r\n}\r\n.enlighter-t-wpcustom .enlighter-n2{\r\n}\r\n.enlighter-t-wpcustom .enlighter-n3{\r\n}\r\n.enlighter-t-wpcustom .enlighter-n4{\r\n}\r\n.enlighter-t-wpcustom .enlighter-n5{\r\n}\r\n.enlighter-t-wpcustom .enlighter-m0{\r\n}\r\n.enlighter-t-wpcustom .enlighter-m1{\r\n}\r\n.enlighter-t-wpcustom .enlighter-m2{\r\n}\r\n.enlighter-t-wpcustom .enlighter-m3{\r\n}\r\n.enlighter-t-wpcustom .enlighter-g0{\r\n}\r\n.enlighter-t-wpcustom .enlighter-g1{\r\n}\r\n.enlighter-t-wpcustom .enlighter-t0{\r\n}\r\n.enlighter-t-wpcustom .enlighter-t1{\r\n}\r\n.enlighter-t-wpcustom .enlighter-t2{\r\n}\r\n.enlighter-t-wpcustom .enlighter-t3{\r\n}\r\n.enlighter-t-wpcustom .enlighter-t4{\r\n}\r\n.enlighter-t-wpcustom .enlighter-t5{\r\n}\r\n.enlighter-t-wpcustom .enlighter-t6{\r\n}\r\n.enlighter-t-wpcustom .enlighter-t7{\r\n}\r\n.enlighter-t-wpcustom .enlighter-t8{\r\n}\r\n.enlighter-t-wpcustom .enlighter-x1{\r\n}\r\n.enlighter-t-wpcustom .enlighter-x2{\r\n}\r\n.enlighter-t-wpcustom .enlighter-x10{\r\n}\r\n.enlighter-t-wpcustom .enlighter-x11{\r\n}\r\n.enlighter-t-wpcustom .enlighter-x12{\r\n}\r\n.enlighter-t-wpcustom .enlighter-x13{\r\n}\r\n.enlighter-t-wpcustom .enlighter-x14{\r\n}\r\n.enlighter-t-wpcustom .enlighter-x15{\r\n}\r\n.enlighter-t-wpcustom.enlighter-v-codegroup .enlighter-codegroup-switch{\r\n	background-color: #414339;\r\n	padding: 10px 10px 0 30px;\r\n}\r\n.enlighter-t-wpcustom.enlighter-v-codegroup .enlighter-codegroup-switch .enlighter-btn{\r\n	background-image: none;\r\n	padding: 2px 8px 2px 8px;\r\n	margin: 0 10px 0 10px;\r\n	border: none;\r\n	border-radius: 0;\r\n}\r\n.enlighter-t-wpcustom.enlighter-v-codegroup .enlighter-codegroup-switch .enlighter-btn.enlighter-active{\r\n	background-color: #272822;\r\n	color: #f8f8f2;\r\n	font-weight: 700;\r\n	font-style: normal;\r\n}\r\n.enlighter-t-wpcustom div.enlighter>div.enlighter-special:hover{\r\n}\r\n.enlighter-t-wpcustom .enlighter-x16{\r\n}','no');
INSERT INTO `wp_options` VALUES (1555,'enlighter-options','a:73:{s:19:\"translation-enabled\";b:1;s:16:\"enlighterjs-init\";s:6:\"inline\";s:21:\"enlighterjs-assets-js\";b:1;s:25:\"enlighterjs-assets-themes\";b:1;s:34:\"enlighterjs-assets-themes-external\";b:0;s:26:\"enlighterjs-selector-block\";s:18:\"pre.EnlighterJSRAW\";s:27:\"enlighterjs-selector-inline\";s:19:\"code.EnlighterJSRAW\";s:18:\"enlighterjs-indent\";i:4;s:28:\"enlighterjs-ampersandcleanup\";b:1;s:21:\"enlighterjs-linehover\";b:1;s:26:\"enlighterjs-rawcodedbclick\";b:0;s:24:\"enlighterjs-textoverflow\";s:6:\"scroll\";s:23:\"enlighterjs-linenumbers\";b:1;s:17:\"enlighterjs-theme\";s:7:\"monokai\";s:21:\"enlighterjs-retaincss\";b:0;s:20:\"enlighterjs-language\";s:7:\"generic\";s:18:\"toolbar-visibility\";s:7:\"default\";s:18:\"toolbar-button-raw\";b:1;s:19:\"toolbar-button-copy\";b:1;s:21:\"toolbar-button-window\";b:1;s:26:\"toolbar-button-enlighterjs\";b:1;s:15:\"tinymce-backend\";b:1;s:16:\"tinymce-frontend\";b:0;s:15:\"tinymce-formats\";b:1;s:17:\"tinymce-autowidth\";b:0;s:22:\"tinymce-tabindentation\";b:0;s:25:\"tinymce-keyboardshortcuts\";b:0;s:12:\"tinymce-font\";s:13:\"sourcecodepro\";s:16:\"tinymce-fontsize\";s:5:\"0.7em\";s:18:\"tinymce-lineheight\";s:5:\"1.4em\";s:13:\"tinymce-color\";s:7:\"#000000\";s:15:\"tinymce-bgcolor\";s:7:\"#f9f9f9\";s:17:\"gutenberg-backend\";b:1;s:16:\"quicktag-backend\";b:0;s:17:\"quicktag-frontend\";b:0;s:13:\"quicktag-mode\";s:4:\"html\";s:14:\"shortcode-mode\";s:8:\"disabled\";s:16:\"shortcode-inline\";b:1;s:22:\"shortcode-type-generic\";b:1;s:23:\"shortcode-type-language\";b:0;s:20:\"shortcode-type-group\";b:0;s:24:\"shortcode-filter-content\";b:1;s:24:\"shortcode-filter-excerpt\";b:1;s:23:\"shortcode-filter-widget\";b:0;s:24:\"shortcode-filter-comment\";b:0;s:31:\"shortcode-filter-commentexcerpt\";b:0;s:11:\"gfm-enabled\";b:0;s:10:\"gfm-inline\";b:1;s:12:\"gfm-language\";s:3:\"raw\";s:18:\"gfm-filter-content\";b:1;s:18:\"gfm-filter-excerpt\";b:1;s:17:\"gfm-filter-widget\";b:0;s:18:\"gfm-filter-comment\";b:0;s:25:\"gfm-filter-commentexcerpt\";b:0;s:14:\"compat-enabled\";b:0;s:13:\"compat-crayon\";b:0;s:18:\"compat-codecolorer\";b:0;s:12:\"compat-type1\";b:0;s:12:\"compat-type2\";b:0;s:21:\"compat-filter-content\";b:1;s:21:\"compat-filter-excerpt\";b:1;s:20:\"compat-filter-widget\";b:0;s:21:\"compat-filter-comment\";b:0;s:28:\"compat-filter-commentexcerpt\";b:0;s:12:\"cache-custom\";b:0;s:10:\"cache-path\";s:0:\"\";s:9:\"cache-url\";s:0:\"\";s:27:\"dynamic-resource-invocation\";b:0;s:19:\"ext-infinite-scroll\";b:0;s:16:\"jetpack-gfm-code\";b:0;s:16:\"ext-ajaxcomplete\";b:0;s:17:\"bbpress-shortcode\";b:0;s:16:\"bbpress-markdown\";b:0;}','yes');
INSERT INTO `wp_options` VALUES (1558,'enlighter-cache-hash','lhl2YiccIUDlMRq','yes');
INSERT INTO `wp_options` VALUES (1937,'category_children','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (2023,'_transient_doing_cron','1680884503.3161621093750000000000','yes');
INSERT INTO `wp_options` VALUES (2025,'_transient_timeout_global_styles_progrim','1680884565','no');
INSERT INTO `wp_options` VALUES (2026,'_transient_global_styles_progrim','body{--wp--preset--color--black: #000000;--wp--preset--color--cyan-bluish-gray: #abb8c3;--wp--preset--color--white: #ffffff;--wp--preset--color--pale-pink: #f78da7;--wp--preset--color--vivid-red: #cf2e2e;--wp--preset--color--luminous-vivid-orange: #ff6900;--wp--preset--color--luminous-vivid-amber: #fcb900;--wp--preset--color--light-green-cyan: #7bdcb5;--wp--preset--color--vivid-green-cyan: #00d084;--wp--preset--color--pale-cyan-blue: #8ed1fc;--wp--preset--color--vivid-cyan-blue: #0693e3;--wp--preset--color--vivid-purple: #9b51e0;--wp--preset--gradient--vivid-cyan-blue-to-vivid-purple: linear-gradient(135deg,rgba(6,147,227,1) 0%,rgb(155,81,224) 100%);--wp--preset--gradient--light-green-cyan-to-vivid-green-cyan: linear-gradient(135deg,rgb(122,220,180) 0%,rgb(0,208,130) 100%);--wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange: linear-gradient(135deg,rgba(252,185,0,1) 0%,rgba(255,105,0,1) 100%);--wp--preset--gradient--luminous-vivid-orange-to-vivid-red: linear-gradient(135deg,rgba(255,105,0,1) 0%,rgb(207,46,46) 100%);--wp--preset--gradient--very-light-gray-to-cyan-bluish-gray: linear-gradient(135deg,rgb(238,238,238) 0%,rgb(169,184,195) 100%);--wp--preset--gradient--cool-to-warm-spectrum: linear-gradient(135deg,rgb(74,234,220) 0%,rgb(151,120,209) 20%,rgb(207,42,186) 40%,rgb(238,44,130) 60%,rgb(251,105,98) 80%,rgb(254,248,76) 100%);--wp--preset--gradient--blush-light-purple: linear-gradient(135deg,rgb(255,206,236) 0%,rgb(152,150,240) 100%);--wp--preset--gradient--blush-bordeaux: linear-gradient(135deg,rgb(254,205,165) 0%,rgb(254,45,45) 50%,rgb(107,0,62) 100%);--wp--preset--gradient--luminous-dusk: linear-gradient(135deg,rgb(255,203,112) 0%,rgb(199,81,192) 50%,rgb(65,88,208) 100%);--wp--preset--gradient--pale-ocean: linear-gradient(135deg,rgb(255,245,203) 0%,rgb(182,227,212) 50%,rgb(51,167,181) 100%);--wp--preset--gradient--electric-grass: linear-gradient(135deg,rgb(202,248,128) 0%,rgb(113,206,126) 100%);--wp--preset--gradient--midnight: linear-gradient(135deg,rgb(2,3,129) 0%,rgb(40,116,252) 100%);--wp--preset--duotone--dark-grayscale: url(\'#wp-duotone-dark-grayscale\');--wp--preset--duotone--grayscale: url(\'#wp-duotone-grayscale\');--wp--preset--duotone--purple-yellow: url(\'#wp-duotone-purple-yellow\');--wp--preset--duotone--blue-red: url(\'#wp-duotone-blue-red\');--wp--preset--duotone--midnight: url(\'#wp-duotone-midnight\');--wp--preset--duotone--magenta-yellow: url(\'#wp-duotone-magenta-yellow\');--wp--preset--duotone--purple-green: url(\'#wp-duotone-purple-green\');--wp--preset--duotone--blue-orange: url(\'#wp-duotone-blue-orange\');--wp--preset--font-size--small: 13px;--wp--preset--font-size--medium: 20px;--wp--preset--font-size--large: 36px;--wp--preset--font-size--x-large: 42px;--wp--preset--spacing--20: 0.44rem;--wp--preset--spacing--30: 0.67rem;--wp--preset--spacing--40: 1rem;--wp--preset--spacing--50: 1.5rem;--wp--preset--spacing--60: 2.25rem;--wp--preset--spacing--70: 3.38rem;--wp--preset--spacing--80: 5.06rem;}:where(.is-layout-flex){gap: 0.5em;}body .is-layout-flow > .alignleft{float: left;margin-inline-start: 0;margin-inline-end: 2em;}body .is-layout-flow > .alignright{float: right;margin-inline-start: 2em;margin-inline-end: 0;}body .is-layout-flow > .aligncenter{margin-left: auto !important;margin-right: auto !important;}body .is-layout-constrained > .alignleft{float: left;margin-inline-start: 0;margin-inline-end: 2em;}body .is-layout-constrained > .alignright{float: right;margin-inline-start: 2em;margin-inline-end: 0;}body .is-layout-constrained > .aligncenter{margin-left: auto !important;margin-right: auto !important;}body .is-layout-constrained > :where(:not(.alignleft):not(.alignright):not(.alignfull)){max-width: var(--wp--style--global--content-size);margin-left: auto !important;margin-right: auto !important;}body .is-layout-constrained > .alignwide{max-width: var(--wp--style--global--wide-size);}body .is-layout-flex{display: flex;}body .is-layout-flex{flex-wrap: wrap;align-items: center;}body .is-layout-flex > *{margin: 0;}:where(.wp-block-columns.is-layout-flex){gap: 2em;}.has-black-color{color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-color{color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-color{color: var(--wp--preset--color--white) !important;}.has-pale-pink-color{color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-color{color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-color{color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-color{color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-color{color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-color{color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-color{color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-color{color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-color{color: var(--wp--preset--color--vivid-purple) !important;}.has-black-background-color{background-color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-background-color{background-color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-background-color{background-color: var(--wp--preset--color--white) !important;}.has-pale-pink-background-color{background-color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-background-color{background-color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-background-color{background-color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-background-color{background-color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-background-color{background-color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-background-color{background-color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-background-color{background-color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-background-color{background-color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-background-color{background-color: var(--wp--preset--color--vivid-purple) !important;}.has-black-border-color{border-color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-border-color{border-color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-border-color{border-color: var(--wp--preset--color--white) !important;}.has-pale-pink-border-color{border-color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-border-color{border-color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-border-color{border-color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-border-color{border-color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-border-color{border-color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-border-color{border-color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-border-color{border-color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-border-color{border-color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-border-color{border-color: var(--wp--preset--color--vivid-purple) !important;}.has-vivid-cyan-blue-to-vivid-purple-gradient-background{background: var(--wp--preset--gradient--vivid-cyan-blue-to-vivid-purple) !important;}.has-light-green-cyan-to-vivid-green-cyan-gradient-background{background: var(--wp--preset--gradient--light-green-cyan-to-vivid-green-cyan) !important;}.has-luminous-vivid-amber-to-luminous-vivid-orange-gradient-background{background: var(--wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange) !important;}.has-luminous-vivid-orange-to-vivid-red-gradient-background{background: var(--wp--preset--gradient--luminous-vivid-orange-to-vivid-red) !important;}.has-very-light-gray-to-cyan-bluish-gray-gradient-background{background: var(--wp--preset--gradient--very-light-gray-to-cyan-bluish-gray) !important;}.has-cool-to-warm-spectrum-gradient-background{background: var(--wp--preset--gradient--cool-to-warm-spectrum) !important;}.has-blush-light-purple-gradient-background{background: var(--wp--preset--gradient--blush-light-purple) !important;}.has-blush-bordeaux-gradient-background{background: var(--wp--preset--gradient--blush-bordeaux) !important;}.has-luminous-dusk-gradient-background{background: var(--wp--preset--gradient--luminous-dusk) !important;}.has-pale-ocean-gradient-background{background: var(--wp--preset--gradient--pale-ocean) !important;}.has-electric-grass-gradient-background{background: var(--wp--preset--gradient--electric-grass) !important;}.has-midnight-gradient-background{background: var(--wp--preset--gradient--midnight) !important;}.has-small-font-size{font-size: var(--wp--preset--font-size--small) !important;}.has-medium-font-size{font-size: var(--wp--preset--font-size--medium) !important;}.has-large-font-size{font-size: var(--wp--preset--font-size--large) !important;}.has-x-large-font-size{font-size: var(--wp--preset--font-size--x-large) !important;}','no');
INSERT INTO `wp_options` VALUES (2027,'_transient_timeout_global_styles_svg_filters_progrim','1680884565','no');
INSERT INTO `wp_options` VALUES (2028,'_transient_global_styles_svg_filters_progrim','<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-dark-grayscale\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0 0.49803921568627\" /><feFuncG type=\"table\" tableValues=\"0 0.49803921568627\" /><feFuncB type=\"table\" tableValues=\"0 0.49803921568627\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-grayscale\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0 1\" /><feFuncG type=\"table\" tableValues=\"0 1\" /><feFuncB type=\"table\" tableValues=\"0 1\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-purple-yellow\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0.54901960784314 0.98823529411765\" /><feFuncG type=\"table\" tableValues=\"0 1\" /><feFuncB type=\"table\" tableValues=\"0.71764705882353 0.25490196078431\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-blue-red\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0 1\" /><feFuncG type=\"table\" tableValues=\"0 0.27843137254902\" /><feFuncB type=\"table\" tableValues=\"0.5921568627451 0.27843137254902\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-midnight\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0 0\" /><feFuncG type=\"table\" tableValues=\"0 0.64705882352941\" /><feFuncB type=\"table\" tableValues=\"0 1\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-magenta-yellow\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0.78039215686275 1\" /><feFuncG type=\"table\" tableValues=\"0 0.94901960784314\" /><feFuncB type=\"table\" tableValues=\"0.35294117647059 0.47058823529412\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-purple-green\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0.65098039215686 0.40392156862745\" /><feFuncG type=\"table\" tableValues=\"0 1\" /><feFuncB type=\"table\" tableValues=\"0.44705882352941 0.4\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-blue-orange\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0.098039215686275 1\" /><feFuncG type=\"table\" tableValues=\"0 0.66274509803922\" /><feFuncB type=\"table\" tableValues=\"0.84705882352941 0.41960784313725\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg>','no');
INSERT INTO `wp_options` VALUES (2029,'_site_transient_timeout_theme_roots','1680886306','no');
INSERT INTO `wp_options` VALUES (2030,'_site_transient_theme_roots','a:5:{s:7:\"progrim\";s:7:\"/themes\";s:15:\"twentytwentyone\";s:7:\"/themes\";s:17:\"twentytwentythree\";s:7:\"/themes\";s:15:\"twentytwentytwo\";s:7:\"/themes\";s:7:\"xooblog\";s:7:\"/themes\";}','no');
INSERT INTO `wp_options` VALUES (2031,'_site_transient_timeout_php_check_9522db31646a2e4672d744b6f556967b','1681489307','no');
INSERT INTO `wp_options` VALUES (2032,'_site_transient_php_check_9522db31646a2e4672d744b6f556967b','a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}','no');
/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_postmeta`
--

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES (1,2,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (2,3,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (3,5,'_edit_lock','1673304804:1');
INSERT INTO `wp_postmeta` VALUES (4,7,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (5,7,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (6,7,'_menu_item_object_id','5');
INSERT INTO `wp_postmeta` VALUES (7,7,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (8,7,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (9,7,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (10,7,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (11,7,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (13,8,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (14,8,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (15,8,'_menu_item_object_id','2');
INSERT INTO `wp_postmeta` VALUES (16,8,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (17,8,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (18,8,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (19,8,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (20,8,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (22,9,'_edit_lock','1676587071:1');
INSERT INTO `wp_postmeta` VALUES (23,10,'_wp_attached_file','2023/01/Cuesta_del_obispo_01.jpg');
INSERT INTO `wp_postmeta` VALUES (24,10,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:640;s:6:\"height\";i:480;s:4:\"file\";s:32:\"2023/01/Cuesta_del_obispo_01.jpg\";s:8:\"filesize\";i:64359;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:32:\"Cuesta_del_obispo_01-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:15611;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:32:\"Cuesta_del_obispo_01-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:5979;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (25,9,'_thumbnail_id','10');
INSERT INTO `wp_postmeta` VALUES (26,11,'_edit_lock','1675204605:1');
INSERT INTO `wp_postmeta` VALUES (27,12,'_wp_attached_file','2023/01/pexels-photo-1619317.jpeg');
INSERT INTO `wp_postmeta` VALUES (28,12,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:500;s:6:\"height\";i:332;s:4:\"file\";s:33:\"2023/01/pexels-photo-1619317.jpeg\";s:8:\"filesize\";i:28196;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:33:\"pexels-photo-1619317-300x199.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:199;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:14424;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:33:\"pexels-photo-1619317-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6357;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (31,14,'_wp_attached_file','2023/01/oddle-1-ksRC-1350x900@El-Comercio.jpg');
INSERT INTO `wp_postmeta` VALUES (32,14,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:1350;s:6:\"height\";i:900;s:4:\"file\";s:45:\"2023/01/oddle-1-ksRC-1350x900@El-Comercio.jpg\";s:8:\"filesize\";i:247375;s:5:\"sizes\";a:4:{s:6:\"medium\";a:5:{s:4:\"file\";s:45:\"oddle-1-ksRC-1350x900@El-Comercio-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:19200;}s:5:\"large\";a:5:{s:4:\"file\";s:46:\"oddle-1-ksRC-1350x900@El-Comercio-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:167453;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:45:\"oddle-1-ksRC-1350x900@El-Comercio-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:8419;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:45:\"oddle-1-ksRC-1350x900@El-Comercio-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:101049;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (33,11,'_thumbnail_id','14');
INSERT INTO `wp_postmeta` VALUES (34,15,'_edit_lock','1675204604:1');
INSERT INTO `wp_postmeta` VALUES (35,15,'_thumbnail_id','12');
INSERT INTO `wp_postmeta` VALUES (36,16,'_edit_lock','1675204604:1');
INSERT INTO `wp_postmeta` VALUES (37,16,'_thumbnail_id','10');
INSERT INTO `wp_postmeta` VALUES (38,17,'_edit_lock','1675204604:1');
INSERT INTO `wp_postmeta` VALUES (39,17,'_thumbnail_id','12');
INSERT INTO `wp_postmeta` VALUES (40,18,'_edit_lock','1675204603:1');
INSERT INTO `wp_postmeta` VALUES (41,18,'_thumbnail_id','10');
INSERT INTO `wp_postmeta` VALUES (42,19,'_edit_lock','1675204600:1');
INSERT INTO `wp_postmeta` VALUES (43,19,'_thumbnail_id','12');
INSERT INTO `wp_postmeta` VALUES (44,20,'_edit_lock','1675204599:1');
INSERT INTO `wp_postmeta` VALUES (45,20,'_thumbnail_id','14');
INSERT INTO `wp_postmeta` VALUES (46,21,'_edit_lock','1675204596:1');
INSERT INTO `wp_postmeta` VALUES (47,21,'_thumbnail_id','10');
INSERT INTO `wp_postmeta` VALUES (48,22,'_edit_lock','1675204596:1');
INSERT INTO `wp_postmeta` VALUES (49,22,'_thumbnail_id','14');
INSERT INTO `wp_postmeta` VALUES (50,23,'_edit_lock','1675204594:1');
INSERT INTO `wp_postmeta` VALUES (51,23,'_thumbnail_id','10');
INSERT INTO `wp_postmeta` VALUES (52,24,'_edit_lock','1675204593:1');
INSERT INTO `wp_postmeta` VALUES (53,24,'_thumbnail_id','12');
INSERT INTO `wp_postmeta` VALUES (54,25,'_edit_lock','1675204592:1');
INSERT INTO `wp_postmeta` VALUES (55,25,'_thumbnail_id','14');
INSERT INTO `wp_postmeta` VALUES (56,26,'_edit_lock','1675204590:1');
INSERT INTO `wp_postmeta` VALUES (57,26,'_thumbnail_id','10');
INSERT INTO `wp_postmeta` VALUES (60,26,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (61,25,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (62,24,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (63,23,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (64,22,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (65,20,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (66,30,'_edit_lock','1676771133:1');
INSERT INTO `wp_postmeta` VALUES (67,31,'_edit_lock','1677195853:1');
INSERT INTO `wp_postmeta` VALUES (68,31,'_thumbnail_id','14');
INSERT INTO `wp_postmeta` VALUES (75,31,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (76,30,'_thumbnail_id','12');
INSERT INTO `wp_postmeta` VALUES (79,1,'_edit_lock','1675208855:1');
INSERT INTO `wp_postmeta` VALUES (81,2,'_edit_lock','1675215323:1');
INSERT INTO `wp_postmeta` VALUES (83,31,'_yoast_wpseo_content_score','90');
INSERT INTO `wp_postmeta` VALUES (84,31,'_yoast_wpseo_estimated-reading-time-minutes','2');
INSERT INTO `wp_postmeta` VALUES (85,31,'_yoast_wpseo_wordproof_timestamp','');
INSERT INTO `wp_postmeta` VALUES (86,30,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (87,30,'_yoast_wpseo_content_score','90');
INSERT INTO `wp_postmeta` VALUES (88,30,'_yoast_wpseo_estimated-reading-time-minutes','1');
INSERT INTO `wp_postmeta` VALUES (89,30,'_yoast_wpseo_wordproof_timestamp','');
INSERT INTO `wp_postmeta` VALUES (90,51,'_edit_lock','1677196216:1');
INSERT INTO `wp_postmeta` VALUES (93,53,'_wp_attached_file','2023/02/Introduccion-html.jpg');
INSERT INTO `wp_postmeta` VALUES (94,53,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:1000;s:6:\"height\";i:667;s:4:\"file\";s:29:\"2023/02/Introduccion-html.jpg\";s:8:\"filesize\";i:856335;s:5:\"sizes\";a:3:{s:6:\"medium\";a:5:{s:4:\"file\";s:29:\"Introduccion-html-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:14867;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:29:\"Introduccion-html-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6667;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:29:\"Introduccion-html-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:66609;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:12:\"Shutterstock\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:73:\"Copyright (c) 2016 Melody Smart/Shutterstock.  No use without permission.\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:68:\"Html5,Main,Menu,In,Code,Editor,For,Website,Development,,Implementing\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:1:{i:0;s:343:\"css,metadata,data,html5,screen,language,program,optimization,www,xml,html,tag,text,net,programming,stylesheet,tech,development,serp,script,closeup,meta,letter,style,css3,internet,code,line,document,link,coding,computer,hypertext,web,browser,design,seo,close,digital,htm,editor,macro,website,monitor,technology,menu,layout,site,php8,information\";}}}');
INSERT INTO `wp_postmeta` VALUES (95,53,'_wp_attachment_image_alt','que es html');
INSERT INTO `wp_postmeta` VALUES (96,54,'_wp_attached_file','2023/02/Introduccion-html-1.jpg');
INSERT INTO `wp_postmeta` VALUES (97,54,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:1000;s:6:\"height\";i:667;s:4:\"file\";s:31:\"2023/02/Introduccion-html-1.jpg\";s:8:\"filesize\";i:856335;s:5:\"sizes\";a:3:{s:6:\"medium\";a:5:{s:4:\"file\";s:31:\"Introduccion-html-1-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:14867;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:31:\"Introduccion-html-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6667;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:31:\"Introduccion-html-1-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:66609;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:12:\"Shutterstock\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:73:\"Copyright (c) 2016 Melody Smart/Shutterstock.  No use without permission.\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:68:\"Html5,Main,Menu,In,Code,Editor,For,Website,Development,,Implementing\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:1:{i:0;s:343:\"css,metadata,data,html5,screen,language,program,optimization,www,xml,html,tag,text,net,programming,stylesheet,tech,development,serp,script,closeup,meta,letter,style,css3,internet,code,line,document,link,coding,computer,hypertext,web,browser,design,seo,close,digital,htm,editor,macro,website,monitor,technology,menu,layout,site,php8,information\";}}}');
INSERT INTO `wp_postmeta` VALUES (98,55,'_wp_attached_file','2023/02/Test-HTML.png');
INSERT INTO `wp_postmeta` VALUES (99,55,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:534;s:6:\"height\";i:232;s:4:\"file\";s:21:\"2023/02/Test-HTML.png\";s:8:\"filesize\";i:10500;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:21:\"Test-HTML-300x130.png\";s:5:\"width\";i:300;s:6:\"height\";i:130;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:10488;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:21:\"Test-HTML-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:4481;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (100,51,'_thumbnail_id','53');
INSERT INTO `wp_postmeta` VALUES (101,51,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (102,51,'_yoast_wpseo_content_score','90');
INSERT INTO `wp_postmeta` VALUES (103,51,'_yoast_wpseo_estimated-reading-time-minutes','5');
INSERT INTO `wp_postmeta` VALUES (104,51,'_yoast_wpseo_wordproof_timestamp','');
/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_posts`
--

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES (1,1,'2023-01-06 21:40:22','2023-01-06 21:40:22','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Hello world!','','publish','open','open','','hello-world','','','2023-01-06 21:40:22','2023-01-06 21:40:22','',0,'http://progrim.local/?p=1',0,'post','',1);
INSERT INTO `wp_posts` VALUES (2,1,'2023-01-06 21:40:22','2023-01-06 21:40:22','<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://progrim.local/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','Sample Page','','publish','closed','open','','sample-page','','','2023-01-06 21:40:22','2023-01-06 21:40:22','',0,'http://progrim.local/?page_id=2',0,'page','',0);
INSERT INTO `wp_posts` VALUES (3,1,'2023-01-06 21:40:22','2023-01-06 21:40:22','<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://progrim.local.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where your data is sent</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->','Privacy Policy','','draft','closed','open','','privacy-policy','','','2023-01-06 21:40:22','2023-01-06 21:40:22','',0,'http://progrim.local/?page_id=3',0,'page','',0);
INSERT INTO `wp_posts` VALUES (5,1,'2023-01-09 19:37:20','2023-01-09 22:37:20','<!-- wp:heading {\"textAlign\":\"center\"} -->\n<h2 class=\"has-text-align-center\">Te damos la bienvenida a ProGrim</h2>\n<!-- /wp:heading -->','Home','','publish','closed','closed','','home','','','2023-01-09 19:37:20','2023-01-09 22:37:20','',0,'http://progrim.local/?page_id=5',0,'page','',0);
INSERT INTO `wp_posts` VALUES (6,1,'2023-01-09 19:37:20','2023-01-09 22:37:20','<!-- wp:heading {\"textAlign\":\"center\"} -->\n<h2 class=\"has-text-align-center\">Te damos la bienvenida a ProGrim</h2>\n<!-- /wp:heading -->','Home','','inherit','closed','closed','','5-revision-v1','','','2023-01-09 19:37:20','2023-01-09 22:37:20','',5,'http://progrim.local/?p=6',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (7,1,'2023-01-09 20:26:28','2023-01-09 23:26:27',' ','','','publish','closed','closed','','7','','','2023-01-09 20:26:28','2023-01-09 23:26:28','',0,'http://progrim.local/?p=7',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (8,1,'2023-01-09 20:26:28','2023-01-09 23:26:27',' ','','','publish','closed','closed','','8','','','2023-01-09 20:26:28','2023-01-09 23:26:28','',0,'http://progrim.local/?p=8',2,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (9,1,'2023-01-10 20:27:16','2023-01-10 23:27:16','<!-- wp:paragraph -->\n<p>Listed motivator, would man, a to been too then now, soon monitors that brains lady trusted it god, of something titled sport. Be in day that is the in the mouth. An postage off do tried would, social sitting frequency believed though, his a at of acquired be have</p>\n<!-- /wp:paragraph -->','Articulo numero 1','','publish','closed','closed','','articulo-numero-1','','','2023-01-31 19:36:48','2023-01-31 22:36:48','',0,'http://progrim.local/?post_type=articulo&#038;p=9',0,'articulo','',0);
INSERT INTO `wp_posts` VALUES (10,1,'2023-01-10 20:27:10','2023-01-10 23:27:10','','Cuesta_del_obispo_01','','inherit','open','closed','','cuesta_del_obispo_01','','','2023-01-10 20:27:10','2023-01-10 23:27:10','',9,'http://progrim.local/wp-content/uploads/2023/01/Cuesta_del_obispo_01.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (11,1,'2023-01-10 20:31:04','2023-01-10 23:31:04','<!-- wp:paragraph -->\n<p>Listed motivator, would man, a to been too then now, soon monitors that brains lady trusted it god, of something titled sport. Be in day that is the in the mouth. An postage off do tried would, social sitting frequency believed though, his a at of acquired be have</p>\n<!-- /wp:paragraph -->','Articulo N°2','','publish','closed','closed','','articulo-n2','','','2023-01-31 19:36:43','2023-01-31 22:36:43','',0,'http://progrim.local/?post_type=articulo&#038;p=11',0,'articulo','',0);
INSERT INTO `wp_posts` VALUES (12,1,'2023-01-10 20:30:39','2023-01-10 23:30:39','','pexels-photo-1619317','','inherit','open','closed','','pexels-photo-1619317','','','2023-01-10 20:30:39','2023-01-10 23:30:39','',11,'http://progrim.local/wp-content/uploads/2023/01/pexels-photo-1619317.jpeg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (14,1,'2023-01-10 20:30:54','2023-01-10 23:30:54','','oddle-1-ksRC--1350x900@El Comercio','','inherit','open','closed','','oddle-1-ksrc-1350x900el-comercio','','','2023-01-10 20:30:54','2023-01-10 23:30:54','',11,'http://progrim.local/wp-content/uploads/2023/01/oddle-1-ksRC-1350x900@El-Comercio.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (15,1,'2023-01-10 20:31:43','2023-01-10 23:31:43','<!-- wp:paragraph -->\n<p>Listed motivator, would man, a to been too then now, soon monitors that brains lady trusted it god, of something titled sport. Be in day that is the in the mouth. An postage off do tried would, social sitting frequency believed though, his a at of acquired be have</p>\n<!-- /wp:paragraph -->','Articulo N°3','','publish','closed','closed','','articulo-n3','','','2023-01-31 19:36:38','2023-01-31 22:36:38','',0,'http://progrim.local/?post_type=articulo&#038;p=15',0,'articulo','',0);
INSERT INTO `wp_posts` VALUES (16,1,'2023-01-10 20:32:01','2023-01-10 23:32:01','<!-- wp:paragraph -->\n<p>Listed motivator, would man, a to been too then now, soon monitors that brains lady trusted it god, of something titled sport. Be in day that is the in the mouth. An postage off do tried would, social sitting frequency believed though, his a at of acquired be have</p>\n<!-- /wp:paragraph -->','Articulo N°4','','publish','closed','closed','','articulo-n4','','','2023-01-31 19:36:33','2023-01-31 22:36:33','',0,'http://progrim.local/?post_type=articulo&#038;p=16',0,'articulo','',0);
INSERT INTO `wp_posts` VALUES (17,1,'2023-01-10 20:32:18','2023-01-10 23:32:18','<!-- wp:paragraph -->\n<p>Listed motivator, would man, a to been too then now, soon monitors that brains lady trusted it god, of something titled sport. Be in day that is the in the mouth. An postage off do tried would, social sitting frequency believed though, his a at of acquired be have</p>\n<!-- /wp:paragraph -->','Articulo N°5','','publish','closed','closed','','articulo-n5','','','2023-01-31 19:36:28','2023-01-31 22:36:28','',0,'http://progrim.local/?post_type=articulo&#038;p=17',0,'articulo','',0);
INSERT INTO `wp_posts` VALUES (18,1,'2023-01-11 18:41:04','2023-01-11 21:41:04','<!-- wp:paragraph -->\n<p>Listed motivator, would man, a to been too then now, soon monitors that brains lady trusted it god, of something titled sport. Be in day that is the in the mouth. An postage off do tried would, social sitting frequency believed though, his a at of acquired be have</p>\n<!-- /wp:paragraph -->','Articulo N°6','','publish','closed','closed','','articulo-n6','','','2023-01-31 19:36:21','2023-01-31 22:36:21','',0,'http://progrim.local/?post_type=articulo&#038;p=18',0,'articulo','',0);
INSERT INTO `wp_posts` VALUES (19,1,'2023-01-11 18:41:19','2023-01-11 21:41:19','<!-- wp:paragraph -->\n<p>Listed motivator, would man, a to been too then now, soon monitors that brains lady trusted it god, of something titled sport. Be in day that is the in the mouth. An postage off do tried would, social sitting frequency believed though, his a at of acquired be have</p>\n<!-- /wp:paragraph -->','Articulo N°7','','publish','closed','closed','','articulo-n7','','','2023-01-31 19:36:15','2023-01-31 22:36:15','',0,'http://progrim.local/?post_type=articulo&#038;p=19',0,'articulo','',0);
INSERT INTO `wp_posts` VALUES (20,1,'2023-01-11 18:41:31','2023-01-11 21:41:31','<!-- wp:paragraph -->\n<p>Listed motivator, would man, a to been too then now, soon monitors that brains lady trusted it god, of something titled sport. Be in day that is the in the mouth. An postage off do tried would, social sitting frequency believed though, his a at of acquired be have</p>\n<!-- /wp:paragraph -->','Articulo N°8','','publish','closed','closed','','articulo-n8','','','2023-01-31 19:36:09','2023-01-31 22:36:09','',0,'http://progrim.local/?post_type=articulo&#038;p=20',0,'articulo','',0);
INSERT INTO `wp_posts` VALUES (21,1,'2023-01-11 18:41:51','2023-01-11 21:41:51','<!-- wp:paragraph -->\n<p>Listed motivator, would man, a to been too then now, soon monitors that brains lady trusted it god, of something titled sport. Be in day that is the in the mouth. An postage off do tried would, social sitting frequency believed though, his a at of acquired be have</p>\n<!-- /wp:paragraph -->','Articulo N°9','','publish','closed','closed','','articulo-n9','','','2023-01-31 19:36:04','2023-01-31 22:36:04','',0,'http://progrim.local/?post_type=articulo&#038;p=21',0,'articulo','',0);
INSERT INTO `wp_posts` VALUES (22,1,'2023-01-11 18:42:05','2023-01-11 21:42:05','<!-- wp:paragraph -->\n<p>Listed motivator, would man, a to been too then now, soon monitors that brains lady trusted it god, of something titled sport. Be in day that is the in the mouth. An postage off do tried would, social sitting frequency believed though, his a at of acquired be have</p>\n<!-- /wp:paragraph -->','Articulo N°10','','publish','closed','closed','','articulo-n10','','','2023-01-31 19:35:58','2023-01-31 22:35:58','',0,'http://progrim.local/?post_type=articulo&#038;p=22',0,'articulo','',0);
INSERT INTO `wp_posts` VALUES (23,1,'2023-01-11 19:38:11','2023-01-11 22:38:11','<!-- wp:paragraph -->\n<p>Listed motivator, would man, a to been too then now, soon monitors that brains lady trusted it god, of something titled sport. Be in day that is the in the mouth. An postage off do tried would, social sitting frequency believed though, his a at of acquired be have</p>\n<!-- /wp:paragraph -->','Articulo 11','','publish','closed','closed','','articulo-11','','','2023-01-31 19:35:56','2023-01-31 22:35:56','',0,'http://progrim.local/?post_type=articulo&#038;p=23',0,'articulo','',0);
INSERT INTO `wp_posts` VALUES (24,1,'2023-01-11 19:38:40','2023-01-11 22:38:40','<!-- wp:paragraph -->\n<p>Listed motivator, would man, a to been too then now, soon monitors that brains lady trusted it god, of something titled sport. Be in day that is the in the mouth. An postage off do tried would, social sitting frequency believed though, his a at of acquired be have</p>\n<!-- /wp:paragraph -->','Articulo 12','','publish','closed','closed','','articulo-12','','','2023-01-31 19:35:53','2023-01-31 22:35:53','',0,'http://progrim.local/?post_type=articulo&#038;p=24',0,'articulo','',0);
INSERT INTO `wp_posts` VALUES (25,1,'2023-01-11 19:38:52','2023-01-11 22:38:52','<!-- wp:paragraph -->\n<p>Listed motivator, would man, a to been too then now, soon monitors that brains lady trusted it god, of something titled sport. Be in day that is the in the mouth. An postage off do tried would, social sitting frequency believed though, his a at of acquired be have</p>\n<!-- /wp:paragraph -->','Articulo 13','','publish','closed','closed','','articulo-13','','','2023-01-31 19:35:50','2023-01-31 22:35:50','',0,'http://progrim.local/?post_type=articulo&#038;p=25',0,'articulo','',0);
INSERT INTO `wp_posts` VALUES (26,1,'2023-01-11 19:39:12','2023-01-11 22:39:12','<!-- wp:paragraph -->\n<p>Listed motivator, would man, a to been too then now, soon monitors that brains lady trusted it god, of something titled sport. Be in day that is the in the mouth. An postage off do tried would, social sitting frequency believed though, his a at of acquired be have</p>\n<!-- /wp:paragraph -->','Articulo 14','','publish','closed','closed','','articulo-14','','','2023-01-31 19:35:47','2023-01-31 22:35:47','',0,'http://progrim.local/?post_type=articulo&#038;p=26',0,'articulo','',0);
INSERT INTO `wp_posts` VALUES (30,1,'2023-01-24 20:37:55','2023-01-24 23:37:55','<!-- wp:paragraph -->\n<p>Listed motivator, would man, a to been too then now, soon monitors that brains lady trusted it god, of something titled sport. Be in day that is the in the mouth. An postage off do tried would, social sitting frequency believed though, his a at of acquired be have</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:comments -->\n<div class=\"wp-block-comments\"><!-- wp:comments-title /-->\n\n<!-- wp:comment-template -->\n<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column {\"width\":\"40px\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:40px\"><!-- wp:avatar {\"size\":40,\"style\":{\"border\":{\"radius\":\"20px\"}}} /--></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:comment-author-name {\"fontSize\":\"small\"} /-->\n\n<!-- wp:group {\"style\":{\"spacing\":{\"margin\":{\"top\":\"0px\",\"bottom\":\"0px\"}}},\"layout\":{\"type\":\"flex\"}} -->\n<div class=\"wp-block-group\" style=\"margin-top:0px;margin-bottom:0px\"><!-- wp:comment-date {\"fontSize\":\"small\"} /-->\n\n<!-- wp:comment-edit-link {\"fontSize\":\"small\"} /--></div>\n<!-- /wp:group -->\n\n<!-- wp:comment-content /-->\n\n<!-- wp:comment-reply-link {\"fontSize\":\"small\"} /--></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n<!-- /wp:comment-template -->\n\n<!-- wp:comments-pagination -->\n<!-- wp:comments-pagination-previous /-->\n\n<!-- wp:comments-pagination-numbers /-->\n\n<!-- wp:comments-pagination-next /-->\n<!-- /wp:comments-pagination -->\n\n<!-- wp:post-comments-form /--></div>\n<!-- /wp:comments -->','Articulo 15','','publish','open','closed','','articulo-15','','','2023-02-18 22:44:28','2023-02-19 01:44:28','',0,'http://progrim.local/?post_type=articulo&#038;p=30',0,'articulo','',1);
INSERT INTO `wp_posts` VALUES (31,1,'2023-01-24 20:38:03','2023-01-24 23:38:03','<!-- wp:paragraph {\"fontSize\":\"medium\"} -->\n<p class=\"has-medium-font-size\">Lorem ipsum, dolor sit amet consectetur adipisicing elit. Quam sit eos iure rerum, labore dignissimos vero, laudantium voluptatibus assumenda illo non. Nostrum voluptatibus nobis error!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:post-date {\"format\":\"j \\\\d\\\\e F \\\\d\\\\e Y\",\"displayType\":\"modified\",\"style\":{\"typography\":{\"fontStyle\":\"normal\",\"fontWeight\":\"300\",\"fontSize\":\"14px\"}}} /-->\n\n<!-- wp:spacer {\"height\":\"16px\"} -->\n<div style=\"height:16px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:image {\"id\":14,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://progrim.local/wp-content/uploads/2023/01/oddle-1-ksRC-1350x900@El-Comercio-1024x683.jpg\" alt=\"\" class=\"wp-image-14\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:site-tagline /-->\n\n<!-- wp:quote {\"style\":{\"color\":{\"background\":\"#f5f5f5\"}}} -->\n<blockquote class=\"wp-block-quote has-background\" style=\"background-color:#f5f5f5\"><!-- wp:paragraph -->\n<p><em>Códigos o textos importantes. Lorem ipsum, dolor sit amet consectetur adipisicing elit. Corporis obcaecati numquam, mollitia delectus quam sint nostrum ipsum expedita libero ullam.</em></p>\n<!-- /wp:paragraph --></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>O también...</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote {\"style\":{\"color\":{\"background\":\"#f5f5f5\"}},\"textColor\":\"black\",\"className\":\"is-style-default\"} -->\n<blockquote class=\"wp-block-quote is-style-default has-black-color has-text-color has-background\" style=\"background-color:#f5f5f5\"><!-- wp:paragraph -->\n<p><em>The&nbsp;</em><strong>HTML&nbsp;<code>&lt;blockquote&gt;</code>&nbsp;Element</strong><em>&nbsp;(or&nbsp;HTML Block Quotation Element) indicates that the enclosed text is an extended quotation. Usually, this is rendered visually by indentation (see&nbsp;</em><a href=\"https://developer.mozilla.org/en-US/docs/HTML/Element/blockquote#Notes\">Notes</a><em>&nbsp;for how to change it). A URL for the source of the quotation may be given using the&nbsp;</em><strong>cite</strong><em>&nbsp;attribute, while a text representation of the source can be given using the&nbsp;</em><a href=\"https://developer.mozilla.org/en-US/docs/Web/HTML/Element/cite\"><code>&lt;cite&gt;</code></a><em>&nbsp;element.</em></p>\n<!-- /wp:paragraph --></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:heading -->\n<h2>Tablas</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eaque eveniet totam exercitationem? Magnam aliquam ad eius distinctio facilis labore animi similique corporis aperiam, nihil ducimus, omnis, unde commodi? Voluptatum esse eveniet excepturi error, laudantium in facilis sit et qui nihil saepe deleniti nemo necessitatibus dignissimos itaque adipisci iusto beatae aut?</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:enlighter/codeblock {\"language\":\"php\",\"theme\":\"monokai\"} -->\n<pre class=\"EnlighterJSRAW\" data-enlighter-language=\"php\" data-enlighter-theme=\"monokai\" data-enlighter-highlight=\"\" data-enlighter-linenumbers=\"\" data-enlighter-lineoffset=\"\" data-enlighter-title=\"\" data-enlighter-group=\"\">function pg_assets()\n{\n\n    wp_register_style(\"google-font\", \"https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,500&amp;display=swap\", array(), false, \'all\');\n    wp_register_style(\"bootstrap\", \"https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css\", array(), \"5-2-3\", \'all\');\n\n    wp_enqueue_style(\"estilos\", get_template_directory_uri() . \"/assets/css/style.css\", array(\"google-font\", \"bootstrap\"));\n\n\n    wp_register_script(\"isotope\", \"https://cdnout.com/jquery.isotope\", array(), \"j-query\", \"all\");\n    wp_register_script(\"bootstrap-js\", \"https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js\", array(), \"5-2-3\", \"all\");\n    wp_register_script(\"j-query\", \"https://cdnjs.cloudflare.com/ajax/libs/jquery/2.2.2/jquery.min.js\", array(), false, \"all\");\n    wp_register_script(\"awesome\", \"https://kit.fontawesome.com/353e32dfd1.js\", array(), \"false\", \'all\');\n\n\n    wp_enqueue_script(\"progrim-js\", get_template_directory_uri() . \"/assets/js/script.js\", array(\"isotope\", \"j-query\", \"bootstrap-js\", \"awesome\"));\n}\n\nadd_action(\"wp_enqueue_scripts\", \"pg_assets\");\n\nfunction pg_theme_supports()\n{</pre>\n<!-- /wp:enlighter/codeblock -->\n\n<!-- wp:spacer -->\n<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:comments {\"backgroundColor\":\"white\"} -->\n<div class=\"wp-block-comments has-white-background-color has-background\"><!-- wp:comments-title /-->\n\n<!-- wp:comment-template -->\n<!-- wp:columns {\"style\":{\"color\":{\"background\":\"#f0f0f0\"}}} -->\n<div class=\"wp-block-columns has-background\" style=\"background-color:#f0f0f0\"><!-- wp:column {\"width\":\"40px\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:40px\"><!-- wp:avatar {\"size\":40,\"style\":{\"border\":{\"radius\":\"20px\"}}} /--></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:comment-author-name {\"fontSize\":\"small\"} /-->\n\n<!-- wp:group {\"style\":{\"spacing\":{\"margin\":{\"top\":\"0px\",\"bottom\":\"0px\"}}},\"layout\":{\"type\":\"flex\"}} -->\n<div class=\"wp-block-group\" style=\"margin-top:0px;margin-bottom:0px\"><!-- wp:comment-date {\"fontSize\":\"small\"} /-->\n\n<!-- wp:comment-edit-link {\"fontSize\":\"small\"} /--></div>\n<!-- /wp:group -->\n\n<!-- wp:comment-content /-->\n\n<!-- wp:comment-reply-link {\"fontSize\":\"small\"} /--></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n<!-- /wp:comment-template -->\n\n<!-- wp:comments-pagination -->\n<!-- wp:comments-pagination-previous /-->\n\n<!-- wp:comments-pagination-numbers /-->\n\n<!-- wp:comments-pagination-next /-->\n<!-- /wp:comments-pagination -->\n\n<!-- wp:post-comments-form /--></div>\n<!-- /wp:comments -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:columns -->\n<div class=\"wp-block-columns\"></div>\n<!-- /wp:columns -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->','Articulo 16','','publish','open','closed','','articulo-16','','','2023-02-18 22:59:31','2023-02-19 01:59:31','',0,'http://progrim.local/?post_type=articulo&#038;p=31',0,'articulo','',2);
INSERT INTO `wp_posts` VALUES (51,1,'2023-02-23 20:09:09','2023-02-23 23:09:09','<!-- wp:paragraph {\"textColor\":\"black\",\"fontSize\":\"medium\"} -->\n<p class=\"has-black-color has-text-color has-medium-font-size\">La gran mayoría de las personas han interactuado con cientos de páginas que utilizan <strong>HTML</strong>, incluso prácticamente la totalidad de los sitios web de hoy en día utilizan este lenguaje ¿Pero que es <strong>HTML</strong>? ¿Para qué se usa? Estas preguntas y más las abarcaremos a continuación.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:post-date {\"format\":\"j \\\\d\\\\e F \\\\d\\\\e Y\",\"displayType\":\"modified\",\"style\":{\"typography\":{\"fontSize\":\"14px\",\"fontStyle\":\"normal\",\"fontWeight\":\"300\"}}} /-->\n\n<!-- wp:spacer {\"height\":\"16px\"} -->\n<div style=\"height:16px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:image {\"id\":54,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://progrim.local/wp-content/uploads/2023/02/Introduccion-html-1.jpg\" alt=\"\" class=\"wp-image-54\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph {\"style\":{\"typography\":{\"fontSize\":\"17px\"}}} -->\n<p style=\"font-size:17px\">Comencemos con explicar que significan las siglas “<strong>HTML</strong>”. Estas siglas corresponden a <strong>“HyperText Markup Language”</strong>, lo que en español significa <strong>“Lenguaje de Marcado de Hipertexto”</strong>. Pero claro, como el significado de sus siglas es un poco técnico vamos a explicar de una forma sencilla y clara que es <strong>HTML</strong>:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:spacer {\"height\":\"20px\"} -->\n<div style=\"height:20px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:quote {\"style\":{\"color\":{\"background\":\"#f5f5f5\"}},\"textColor\":\"black\"} -->\n<blockquote class=\"wp-block-quote has-black-color has-text-color has-background\" style=\"background-color:#f5f5f5\"><!-- wp:paragraph {\"style\":{\"color\":{\"text\":\"#545454\"},\"typography\":{\"fontSize\":\"17px\"}}} -->\n<p class=\"has-text-color\" style=\"color:#545454;font-size:17px\"><em><strong>HTML </strong>es el lenguaje con el que se define la <strong>estructura </strong>y <strong>contenido </strong>de una página web utilizando <strong>etiquetas </strong>(también llamadas tags). Es uno de los primeros lenguajes (por no decir el primero) que cualquier aspirante a programador suele aprender debido a que es muy fácil de entender.</em></p>\n<!-- /wp:paragraph --></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:spacer {\"height\":\"20px\"} -->\n<div style=\"height:20px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:paragraph {\"style\":{\"typography\":{\"fontSize\":\"17px\"}}} -->\n<p style=\"font-size:17px\">Tan simple como eso, con <strong>HTML </strong>se define toda la estructura de la página web, pero ¿A que nos referimos con estructura? Con estructura nos referimos a todos los componentes que forman el sitio web, por ejemplo, el título, los párrafos, los enlaces, el encabezado, entre otros. Pero eso no es todo, hay una forma en particular para referirse a cada componente, por ejemplo, para referirnos a un título principal usamos <strong>&lt;h1></strong>, o bien para referirnos a un párrafo se usa <strong>&lt;p></strong> y así con cada componente que existe.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:spacer {\"height\":\"20px\"} -->\n<div style=\"height:20px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:paragraph {\"style\":{\"typography\":{\"fontSize\":\"17px\"}}} -->\n<p style=\"font-size:17px\">Estos componentes, como te habrás dado cuenta, se representan por medio de etiquetas que van encerradas dentro de los caracteres “menor que” <strong>&lt; </strong>y “mayor que” <strong>></strong>. Por ejemplo <strong>&lt;<em>Acá adentro va la etiqueta</em>></strong>.  Casi todas las etiquetas tienen una etiqueta de cierre, que indica que hasta ahí llega ese componente. Las etiquetas de cierre se representan igual que cualquier otra etiqueta solo que agregamos el siguiente carácter <strong>/</strong> justo antes del carácter “mayor que” (<strong>></strong>). Por ejemplo <strong>&lt;<em>Esta es la etiqueta de cierre</em>/>.</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:spacer {\"height\":\"20px\"} -->\n<div style=\"height:20px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:paragraph {\"style\":{\"typography\":{\"fontSize\":\"17px\"}}} -->\n<p style=\"font-size:17px\">Vamos con un ejemplo práctico para que se entienda mejor. Supongamos que queremos un título junto con un párrafo, en este caso lo haríamos de la siguiente manera:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"style\":{\"color\":{\"background\":\"#878787\"}}} -->\n<p class=\"has-background\" style=\"background-color:#878787\">&lt;h1&gt;Este es el título&lt;h1/&gt;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"style\":{\"color\":{\"background\":\"#878787\"}}} -->\n<p class=\"has-background\" style=\"background-color:#878787\">&lt;p&gt; Este es el párrafo&lt;p/&gt;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"style\":{\"typography\":{\"fontSize\":\"17px\"}}} -->\n<p style=\"font-size:17px\">Fíjate que cuando finaliza el titulo usamos la etiqueta de cierre que mencionamos anteriormente, lo mismo cuando finaliza el párrafo.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:spacer {\"height\":\"20px\"} -->\n<div style=\"height:20px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:paragraph {\"style\":{\"typography\":{\"fontSize\":\"17px\"}}} -->\n<p style=\"font-size:17px\">Hay ciertas excepciones con respecto a las etiquetas de cierre ya que hay algunos componentes que no las necesitan, como por ejemplo la etiqueta <strong>&lt;BR></strong> (salto de línea) o <strong>&lt;IMG></strong> (imagen). Pero eso lo veremos más adelante en otro artículo del blog.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:spacer {\"height\":\"20px\"} -->\n<div style=\"height:20px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:paragraph {\"style\":{\"typography\":{\"fontSize\":\"17px\"}}} -->\n<p style=\"font-size:17px\">Ya comprendimos lo más básico de <strong>HTML</strong>, solo nos falta aprender de qué forma podemos traducir esto para que se pueda visualizar en la web. Para comenzar, el código siempre debe empezar con la etiqueta <strong>&lt;html></strong> seguido por la etiqueta <strong>&lt;head></strong> y <strong>&lt;body></strong>. Dentro de la etiqueta <strong>&lt;head></strong> podemos encontrar la etiqueta <strong>&lt;title></strong> (que se usa para escribir el título del sitio), entre otras más. Dentro de la etiqueta <strong>&lt;body></strong> se encuentra todo el contenido de nuestra página como puede ser la etiqueta <strong>&lt;h1></strong> o <strong>&lt;p></strong> que ya vimos anteriormente. Probablemente en esta parte te encuentres un poco perdido/a con lo que te acabo de explicar, pero no te preocupes, la práctica es mucho más fácil que la teoría, así que acá te dejo un ejemplo y verás que lo vas a entender muy rápidamente.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:enlighter/codeblock {\"language\":\"html\",\"theme\":\"monokai\"} -->\n<pre class=\"EnlighterJSRAW\" data-enlighter-language=\"html\" data-enlighter-theme=\"monokai\" data-enlighter-highlight=\"\" data-enlighter-linenumbers=\"\" data-enlighter-lineoffset=\"\" data-enlighter-title=\"\" data-enlighter-group=\"\">&lt;!DOCTYPE html>\n&lt;html lang=\"es\">\n\n&lt;head>\n    &lt;title>Introducción html&lt;/title>\n&lt;/head>\n\n&lt;body>\n    &lt;h1>Este es el título principal&lt;/h1>\n\n    &lt;p>Acá van los párrafos&lt;/p>\n\n    &lt;h2>Este es un subtítulo&lt;/h2>\n    &lt;ul>\n        &lt;li>Item 1&lt;/li>\n        &lt;li>Item 2&lt;/li>\n        &lt;li>Item 3&lt;/li>\n    &lt;/ul>\n&lt;/body>\n\n&lt;/html>\n</pre>\n<!-- /wp:enlighter/codeblock -->\n\n<!-- wp:paragraph {\"style\":{\"typography\":{\"fontSize\":\"17px\"}}} -->\n<p style=\"font-size:17px\">Si lo abrimos en nuestro navegador veremos algo como esto:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":55,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://progrim.local/wp-content/uploads/2023/02/Test-HTML.png\" alt=\"\" class=\"wp-image-55\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:spacer {\"height\":\"20px\"} -->\n<div style=\"height:20px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:paragraph {\"style\":{\"typography\":{\"fontSize\":\"17px\"}}} -->\n<p style=\"font-size:17px\">Así se ve en nuestro navegador lo que hacemos con <strong>HTML</strong>. Seguramente te parezca que ver esto es algo aburrido, incluso poco estético, ya que no tiene ningún estilo ni animación. Ahí es cuando entra en juego <strong>CSS </strong>y <strong>JavaScript</strong>. <strong>CSS </strong>es el lenguaje encargado de dar <strong>estilo </strong>a la página, como por ejemplo el color de los textos, el fondo, modificar la ubicación de los componentes, entre otras miles de opciones más. Por su parte <strong>JavaScript </strong>se utiliza para añadir interactividad y funciones que mejoren la experiencia del usuario. Tanto en <strong>CSS </strong>como en <strong>JavaScript </strong>vamos a profundizar en otro artículo.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:spacer {\"height\":\"20px\"} -->\n<div style=\"height:20px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:paragraph {\"style\":{\"typography\":{\"fontSize\":\"17px\"}}} -->\n<p style=\"font-size:17px\">Por ultimo solo resta saber en dónde escribir este código para poder visualizarlo, para eso es necesario un editor de texto. El editor de texto que tenemos todos al alcance de nuestra mano es el bloc de notas. Con el vamos a poder crear un documento <strong>HTML</strong>. Aunque yo te recomiendo que te descargues <strong>“Visual Studio Code”</strong>, este es uno de los editores de texto más usados entre los programadores y es el que yo suelo usar. Te dejo un enlace para que lo puedas descargar: <a href=\"https://code.visualstudio.com/download\" target=\"_blank\" rel=\"noreferrer noopener\">https://code.visualstudio.com/download</a></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:spacer {\"height\":\"20px\"} -->\n<div style=\"height:20px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:paragraph {\"style\":{\"typography\":{\"fontSize\":\"17px\"}}} -->\n<p style=\"font-size:17px\">Bien, con esto llegamos al final del artículo, espero que te haya servido para introducirte aunque sea un poco en el mundo de <strong>HTML </strong>y por supuesto te recomiendo que sigas practicando y profundizando en el lenguaje para comprenderlo cada vez más.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:comments -->\n<div class=\"wp-block-comments\"><!-- wp:comments-title /-->\n\n<!-- wp:comment-template -->\n<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column {\"width\":\"40px\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:40px\"><!-- wp:avatar {\"size\":40,\"style\":{\"border\":{\"radius\":\"20px\"}}} /--></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:comment-author-name {\"fontSize\":\"small\"} /-->\n\n<!-- wp:group {\"style\":{\"spacing\":{\"margin\":{\"top\":\"0px\",\"bottom\":\"0px\"}}},\"layout\":{\"type\":\"flex\"}} -->\n<div class=\"wp-block-group\" style=\"margin-top:0px;margin-bottom:0px\"><!-- wp:comment-date {\"fontSize\":\"small\"} /-->\n\n<!-- wp:comment-edit-link {\"fontSize\":\"small\"} /--></div>\n<!-- /wp:group -->\n\n<!-- wp:comment-content /-->\n\n<!-- wp:comment-reply-link {\"fontSize\":\"small\"} /--></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n<!-- /wp:comment-template -->\n\n<!-- wp:comments-pagination /-->\n\n<!-- wp:post-comments-form /--></div>\n<!-- /wp:comments -->','¿Que es y como empezar a usar HTML?','','publish','open','closed','','borrador-auto','','','2023-02-23 20:49:55','2023-02-23 23:49:55','',0,'http://progrim.local/?post_type=articulo&#038;p=51',0,'articulo','',0);
INSERT INTO `wp_posts` VALUES (53,1,'2023-02-23 19:56:23','2023-02-23 22:56:23','','Html5,Main,Menu,In,Code,Editor,For,Website,Development,,Implementing','','inherit','open','closed','','html5mainmenuincodeeditorforwebsitedevelopmentimplementing','','','2023-02-23 19:56:44','2023-02-23 22:56:44','',51,'http://progrim.local/wp-content/uploads/2023/02/Introduccion-html.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (54,1,'2023-02-23 19:57:02','2023-02-23 22:57:02','','Html5,Main,Menu,In,Code,Editor,For,Website,Development,,Implementing','','inherit','open','closed','','html5mainmenuincodeeditorforwebsitedevelopmentimplementing-2','','','2023-02-23 19:57:02','2023-02-23 22:57:02','',51,'http://progrim.local/wp-content/uploads/2023/02/Introduccion-html-1.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (55,1,'2023-02-23 20:03:33','2023-02-23 23:03:33','','Test-HTML','','inherit','open','closed','','test-html','','','2023-02-23 20:03:33','2023-02-23 23:03:33','',51,'http://progrim.local/wp-content/uploads/2023/02/Test-HTML.png',0,'attachment','image/png',0);
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_relationships`
--

LOCK TABLES `wp_term_relationships` WRITE;
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;
INSERT INTO `wp_term_relationships` VALUES (1,1,0);
INSERT INTO `wp_term_relationships` VALUES (7,2,0);
INSERT INTO `wp_term_relationships` VALUES (8,2,0);
INSERT INTO `wp_term_relationships` VALUES (9,3,0);
INSERT INTO `wp_term_relationships` VALUES (11,3,0);
INSERT INTO `wp_term_relationships` VALUES (15,4,0);
INSERT INTO `wp_term_relationships` VALUES (16,4,0);
INSERT INTO `wp_term_relationships` VALUES (17,3,0);
INSERT INTO `wp_term_relationships` VALUES (18,3,0);
INSERT INTO `wp_term_relationships` VALUES (19,3,0);
INSERT INTO `wp_term_relationships` VALUES (20,3,0);
INSERT INTO `wp_term_relationships` VALUES (21,4,0);
INSERT INTO `wp_term_relationships` VALUES (22,4,0);
INSERT INTO `wp_term_relationships` VALUES (23,3,0);
INSERT INTO `wp_term_relationships` VALUES (24,4,0);
INSERT INTO `wp_term_relationships` VALUES (25,3,0);
INSERT INTO `wp_term_relationships` VALUES (26,4,0);
INSERT INTO `wp_term_relationships` VALUES (30,11,0);
INSERT INTO `wp_term_relationships` VALUES (30,12,0);
INSERT INTO `wp_term_relationships` VALUES (30,17,0);
INSERT INTO `wp_term_relationships` VALUES (30,18,0);
INSERT INTO `wp_term_relationships` VALUES (31,3,0);
INSERT INTO `wp_term_relationships` VALUES (31,11,0);
INSERT INTO `wp_term_relationships` VALUES (31,12,0);
INSERT INTO `wp_term_relationships` VALUES (31,16,0);
INSERT INTO `wp_term_relationships` VALUES (31,17,0);
INSERT INTO `wp_term_relationships` VALUES (31,18,0);
INSERT INTO `wp_term_relationships` VALUES (31,19,0);
INSERT INTO `wp_term_relationships` VALUES (31,20,0);
INSERT INTO `wp_term_relationships` VALUES (31,21,0);
INSERT INTO `wp_term_relationships` VALUES (31,22,0);
INSERT INTO `wp_term_relationships` VALUES (31,24,0);
INSERT INTO `wp_term_relationships` VALUES (31,25,0);
INSERT INTO `wp_term_relationships` VALUES (31,26,0);
INSERT INTO `wp_term_relationships` VALUES (31,27,0);
INSERT INTO `wp_term_relationships` VALUES (51,29,0);
INSERT INTO `wp_term_relationships` VALUES (51,30,0);
/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_taxonomy`
--

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` VALUES (1,1,'category','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (2,2,'nav_menu','',0,2);
INSERT INTO `wp_term_taxonomy` VALUES (3,3,'category','',0,9);
INSERT INTO `wp_term_taxonomy` VALUES (4,4,'category','',0,6);
INSERT INTO `wp_term_taxonomy` VALUES (5,5,'genero','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (6,6,'genero','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (9,9,'post_tag','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (10,10,'post_tag','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (11,11,'post_tag','',0,2);
INSERT INTO `wp_term_taxonomy` VALUES (12,12,'post_tag','',0,2);
INSERT INTO `wp_term_taxonomy` VALUES (13,13,'post_tag','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (14,14,'post_tag','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (15,15,'post_tag','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (16,16,'post_tag','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (17,17,'post_tag','',0,2);
INSERT INTO `wp_term_taxonomy` VALUES (18,18,'post_tag','',0,2);
INSERT INTO `wp_term_taxonomy` VALUES (19,19,'post_tag','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (20,20,'post_tag','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (21,21,'post_tag','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (22,22,'post_tag','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (23,23,'post_tag','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (24,24,'post_tag','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (25,25,'post_tag','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (26,26,'post_tag','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (27,27,'post_tag','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (28,28,'category','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (29,29,'category','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (30,30,'post_tag','',0,1);
/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_termmeta`
--

LOCK TABLES `wp_termmeta` WRITE;
/*!40000 ALTER TABLE `wp_termmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_termmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_terms`
--

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` VALUES (1,'Uncategorized','uncategorized',0);
INSERT INTO `wp_terms` VALUES (2,'Menu Principal','menu-principal',0);
INSERT INTO `wp_terms` VALUES (3,'Tecnologia','tecnologia',0);
INSERT INTO `wp_terms` VALUES (4,'Historia','historia',0);
INSERT INTO `wp_terms` VALUES (5,'Node Js','node-js',0);
INSERT INTO `wp_terms` VALUES (6,'Python','python',0);
INSERT INTO `wp_terms` VALUES (9,'hola','hola',0);
INSERT INTO `wp_terms` VALUES (10,'etiqueta','etiqueta',0);
INSERT INTO `wp_terms` VALUES (11,'d','d',0);
INSERT INTO `wp_terms` VALUES (12,'das','das',0);
INSERT INTO `wp_terms` VALUES (13,'AASF','aasf',0);
INSERT INTO `wp_terms` VALUES (14,'SF','sf',0);
INSERT INTO `wp_terms` VALUES (15,'DFAS','dfas',0);
INSERT INTO `wp_terms` VALUES (16,'asdas','asdas',0);
INSERT INTO `wp_terms` VALUES (17,'ads','ads',0);
INSERT INTO `wp_terms` VALUES (18,'ff','ff',0);
INSERT INTO `wp_terms` VALUES (19,'s','s',0);
INSERT INTO `wp_terms` VALUES (20,'fa','fa',0);
INSERT INTO `wp_terms` VALUES (21,'g','g',0);
INSERT INTO `wp_terms` VALUES (22,'dfg','dfg',0);
INSERT INTO `wp_terms` VALUES (23,'shg','shg',0);
INSERT INTO `wp_terms` VALUES (24,'dfh','dfh',0);
INSERT INTO `wp_terms` VALUES (25,'h','h',0);
INSERT INTO `wp_terms` VALUES (26,'trh','trh',0);
INSERT INTO `wp_terms` VALUES (27,'rt','rt',0);
INSERT INTO `wp_terms` VALUES (28,'HTML','html',0);
INSERT INTO `wp_terms` VALUES (29,'Programación','programacion',0);
INSERT INTO `wp_terms` VALUES (30,'HTML','html',0);
/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_usermeta`
--

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` VALUES (1,1,'nickname','progrim');
INSERT INTO `wp_usermeta` VALUES (2,1,'first_name','');
INSERT INTO `wp_usermeta` VALUES (3,1,'last_name','');
INSERT INTO `wp_usermeta` VALUES (4,1,'description','');
INSERT INTO `wp_usermeta` VALUES (5,1,'rich_editing','true');
INSERT INTO `wp_usermeta` VALUES (6,1,'syntax_highlighting','true');
INSERT INTO `wp_usermeta` VALUES (7,1,'comment_shortcuts','false');
INSERT INTO `wp_usermeta` VALUES (8,1,'admin_color','fresh');
INSERT INTO `wp_usermeta` VALUES (9,1,'use_ssl','0');
INSERT INTO `wp_usermeta` VALUES (10,1,'show_admin_bar_front','true');
INSERT INTO `wp_usermeta` VALUES (11,1,'locale','');
INSERT INTO `wp_usermeta` VALUES (12,1,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (13,1,'wp_user_level','10');
INSERT INTO `wp_usermeta` VALUES (14,1,'dismissed_wp_pointers','');
INSERT INTO `wp_usermeta` VALUES (15,1,'show_welcome_panel','1');
INSERT INTO `wp_usermeta` VALUES (16,1,'session_tokens','a:1:{s:64:\"9d58c56c0722d548286094334fb5a63bead96d3e12df67c8a779c8eab799d0c5\";a:4:{s:10:\"expiration\";i:1677365533;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36\";s:5:\"login\";i:1677192733;}}');
INSERT INTO `wp_usermeta` VALUES (17,1,'wp_dashboard_quick_press_last_post_id','50');
INSERT INTO `wp_usermeta` VALUES (18,1,'wp_persisted_preferences','a:3:{s:14:\"core/edit-post\";a:3:{s:26:\"isComplementaryAreaVisible\";b:1;s:12:\"welcomeGuide\";b:0;s:10:\"openPanels\";a:2:{i:0;s:15:\"page-attributes\";i:1;s:24:\"yoast-seo/document-panel\";}}s:9:\"_modified\";s:24:\"2023-02-23T23:28:35.267Z\";s:17:\"core/edit-widgets\";a:2:{s:26:\"isComplementaryAreaVisible\";b:1;s:12:\"welcomeGuide\";b:0;}}');
INSERT INTO `wp_usermeta` VALUES (19,1,'managenav-menuscolumnshidden','a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}');
INSERT INTO `wp_usermeta` VALUES (20,1,'metaboxhidden_nav-menus','a:1:{i:0;s:12:\"add-post_tag\";}');
INSERT INTO `wp_usermeta` VALUES (21,1,'nav_menu_recently_edited','2');
INSERT INTO `wp_usermeta` VALUES (22,1,'wp_user-settings','libraryContent=browse');
INSERT INTO `wp_usermeta` VALUES (23,1,'wp_user-settings-time','1673393295');
INSERT INTO `wp_usermeta` VALUES (24,1,'closedpostboxes_articulo','a:0:{}');
INSERT INTO `wp_usermeta` VALUES (25,1,'metaboxhidden_articulo','a:0:{}');
INSERT INTO `wp_usermeta` VALUES (26,1,'meta-box-order_articulo','a:3:{s:6:\"normal\";s:0:\"\";s:8:\"advanced\";s:10:\"wpseo_meta\";s:4:\"side\";s:0:\"\";}');
/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_users`
--

LOCK TABLES `wp_users` WRITE;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;
INSERT INTO `wp_users` VALUES (1,'progrim','$P$Bs7.M/A3FJ4/./m3L7CDzb8/OZxFLk1','progrim','fedeagrimaldi@gmail.com','http://progrim.local','2023-01-06 21:40:21','',0,'progrim');
/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_yoast_indexable`
--

DROP TABLE IF EXISTS `wp_yoast_indexable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_yoast_indexable` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `permalink` longtext COLLATE utf8mb4_unicode_520_ci,
  `permalink_hash` varchar(40) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `object_id` bigint(20) DEFAULT NULL,
  `object_type` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `object_sub_type` varchar(32) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `author_id` bigint(20) DEFAULT NULL,
  `post_parent` bigint(20) DEFAULT NULL,
  `title` text COLLATE utf8mb4_unicode_520_ci,
  `description` mediumtext COLLATE utf8mb4_unicode_520_ci,
  `breadcrumb_title` text COLLATE utf8mb4_unicode_520_ci,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `is_public` tinyint(1) DEFAULT NULL,
  `is_protected` tinyint(1) DEFAULT '0',
  `has_public_posts` tinyint(1) DEFAULT NULL,
  `number_of_pages` int(11) unsigned DEFAULT NULL,
  `canonical` longtext COLLATE utf8mb4_unicode_520_ci,
  `primary_focus_keyword` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `primary_focus_keyword_score` int(3) DEFAULT NULL,
  `readability_score` int(3) DEFAULT NULL,
  `is_cornerstone` tinyint(1) DEFAULT '0',
  `is_robots_noindex` tinyint(1) DEFAULT '0',
  `is_robots_nofollow` tinyint(1) DEFAULT '0',
  `is_robots_noarchive` tinyint(1) DEFAULT '0',
  `is_robots_noimageindex` tinyint(1) DEFAULT '0',
  `is_robots_nosnippet` tinyint(1) DEFAULT '0',
  `twitter_title` text COLLATE utf8mb4_unicode_520_ci,
  `twitter_image` longtext COLLATE utf8mb4_unicode_520_ci,
  `twitter_description` longtext COLLATE utf8mb4_unicode_520_ci,
  `twitter_image_id` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `twitter_image_source` text COLLATE utf8mb4_unicode_520_ci,
  `open_graph_title` text COLLATE utf8mb4_unicode_520_ci,
  `open_graph_description` longtext COLLATE utf8mb4_unicode_520_ci,
  `open_graph_image` longtext COLLATE utf8mb4_unicode_520_ci,
  `open_graph_image_id` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `open_graph_image_source` text COLLATE utf8mb4_unicode_520_ci,
  `open_graph_image_meta` mediumtext COLLATE utf8mb4_unicode_520_ci,
  `link_count` int(11) DEFAULT NULL,
  `incoming_link_count` int(11) DEFAULT NULL,
  `prominent_words_version` int(11) unsigned DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `blog_id` bigint(20) NOT NULL DEFAULT '1',
  `language` varchar(32) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `region` varchar(32) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `schema_page_type` varchar(64) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `schema_article_type` varchar(64) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `has_ancestors` tinyint(1) DEFAULT '0',
  `estimated_reading_time_minutes` int(11) DEFAULT NULL,
  `version` int(11) DEFAULT '1',
  `object_last_modified` datetime DEFAULT NULL,
  `object_published_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `object_type_and_sub_type` (`object_type`,`object_sub_type`),
  KEY `object_id_and_type` (`object_id`,`object_type`),
  KEY `permalink_hash_and_object_type` (`permalink_hash`,`object_type`),
  KEY `subpages` (`post_parent`,`object_type`,`post_status`,`object_id`),
  KEY `prominent_words` (`prominent_words_version`,`object_type`,`object_sub_type`,`post_status`),
  KEY `published_sitemap_index` (`object_published_at`,`is_robots_noindex`,`object_type`,`object_sub_type`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_yoast_indexable`
--

LOCK TABLES `wp_yoast_indexable` WRITE;
/*!40000 ALTER TABLE `wp_yoast_indexable` DISABLE KEYS */;
INSERT INTO `wp_yoast_indexable` VALUES (1,'http://progrim.local/author/progrim/','36:46f695bc345f97e0b2d5b3b0390423cd',1,'user',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,'https://0.gravatar.com/avatar/c7d3d24e790c386ff4793bb4edfd95c7?s=500&d=mm&r=g',NULL,NULL,'gravatar-image',NULL,NULL,'https://0.gravatar.com/avatar/c7d3d24e790c386ff4793bb4edfd95c7?s=500&d=mm&r=g',NULL,'gravatar-image',NULL,NULL,NULL,NULL,'2023-02-16 22:40:10','2023-02-24 02:49:55',1,NULL,NULL,NULL,NULL,0,NULL,2,'2023-02-23 23:49:55','2023-01-06 21:40:22');
INSERT INTO `wp_yoast_indexable` VALUES (2,'http://progrim.local/articulo/articulo-16/','42:51da65b40a05dd5a4a5fb0653b9b30aa',31,'post','articulo',1,0,NULL,NULL,'Articulo 16','publish',NULL,0,NULL,NULL,NULL,NULL,NULL,90,0,NULL,0,NULL,NULL,NULL,NULL,'http://progrim.local/wp-content/uploads/2023/01/oddle-1-ksRC-1350x900@El-Comercio.jpg',NULL,'14','featured-image',NULL,NULL,'http://progrim.local/wp-content/uploads/2023/01/oddle-1-ksRC-1350x900@El-Comercio.jpg','14','featured-image','{\"width\":1350,\"height\":900,\"filesize\":247375,\"url\":\"http://progrim.local/wp-content/uploads/2023/01/oddle-1-ksRC-1350x900@El-Comercio.jpg\",\"path\":\"C:\\\\Users\\\\Fede\\\\Local Sites\\\\progrim\\\\app\\\\public/wp-content/uploads/2023/01/oddle-1-ksRC-1350x900@El-Comercio.jpg\",\"size\":\"full\",\"id\":14,\"alt\":\"\",\"pixels\":1215000,\"type\":\"image/jpeg\"}',7,NULL,NULL,'2023-02-16 22:51:05','2023-02-19 04:59:31',1,NULL,NULL,NULL,NULL,0,2,2,'2023-02-19 01:59:31','2023-01-24 23:38:03');
INSERT INTO `wp_yoast_indexable` VALUES (3,'http://progrim.local/articulo/articulo-15/','42:f371c92e3abec61a2e5f0d32fa297813',30,'post','articulo',1,0,NULL,NULL,'Articulo 15','publish',NULL,0,NULL,NULL,NULL,NULL,NULL,90,0,NULL,0,NULL,NULL,NULL,NULL,'http://progrim.local/wp-content/uploads/2023/01/pexels-photo-1619317.jpeg',NULL,'12','featured-image',NULL,NULL,'http://progrim.local/wp-content/uploads/2023/01/pexels-photo-1619317.jpeg','12','featured-image','{\"width\":500,\"height\":332,\"filesize\":28196,\"url\":\"http://progrim.local/wp-content/uploads/2023/01/pexels-photo-1619317.jpeg\",\"path\":\"C:\\\\Users\\\\Fede\\\\Local Sites\\\\progrim\\\\app\\\\public/wp-content/uploads/2023/01/pexels-photo-1619317.jpeg\",\"size\":\"full\",\"id\":12,\"alt\":\"\",\"pixels\":166000,\"type\":\"image/jpeg\"}',3,NULL,NULL,'2023-02-19 00:53:34','2023-02-19 04:44:28',1,NULL,NULL,NULL,NULL,0,1,2,'2023-02-19 01:44:28','2023-01-24 23:37:55');
INSERT INTO `wp_yoast_indexable` VALUES (4,'http://progrim.local/articulo/borrador-auto/','44:942bc8a946ef65b79ea750a86712be4b',51,'post','articulo',1,0,NULL,NULL,'¿Que es y como empezar a usar HTML?','publish',NULL,0,NULL,NULL,NULL,NULL,NULL,90,0,NULL,0,NULL,NULL,NULL,NULL,'http://progrim.local/wp-content/uploads/2023/02/Introduccion-html.jpg',NULL,'53','featured-image',NULL,NULL,'http://progrim.local/wp-content/uploads/2023/02/Introduccion-html.jpg','53','featured-image','{\"width\":1000,\"height\":667,\"filesize\":856335,\"url\":\"http://progrim.local/wp-content/uploads/2023/02/Introduccion-html.jpg\",\"path\":\"C:\\\\Users\\\\Fede\\\\Local Sites\\\\progrim\\\\app\\\\public/wp-content/uploads/2023/02/Introduccion-html.jpg\",\"size\":\"full\",\"id\":53,\"alt\":\"que es html\",\"pixels\":667000,\"type\":\"image/jpeg\"}',3,NULL,NULL,'2023-02-23 23:09:09','2023-02-24 02:49:55',1,NULL,NULL,NULL,NULL,0,5,2,'2023-02-23 23:49:55','2023-02-23 23:09:09');
INSERT INTO `wp_yoast_indexable` VALUES (5,'http://progrim.local/category/html/','35:807ab0c39eb8c3ab52df991cc7b92c78',28,'term','category',NULL,NULL,NULL,NULL,'HTML',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'2023-02-23 23:12:03','2023-02-24 02:13:15',1,NULL,NULL,NULL,NULL,0,NULL,2,'2023-02-23 23:13:15',NULL);
INSERT INTO `wp_yoast_indexable` VALUES (6,'http://progrim.local/category/programacion/','43:5580aeac98bde2a70e6651a9c87334ce',29,'term','category',NULL,NULL,NULL,NULL,'Programación',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'2023-02-23 23:12:12','2023-02-24 02:49:55',1,NULL,NULL,NULL,NULL,0,NULL,2,'2023-02-23 23:49:55',NULL);
INSERT INTO `wp_yoast_indexable` VALUES (7,'http://progrim.local/tag/html/','30:5651a60e5d03e5548f1ac9f3f0c035aa',30,'term','post_tag',NULL,NULL,NULL,NULL,'HTML',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'2023-02-23 23:12:38','2023-02-24 02:49:55',1,NULL,NULL,NULL,NULL,0,NULL,2,'2023-02-23 23:49:55',NULL);
/*!40000 ALTER TABLE `wp_yoast_indexable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_yoast_indexable_hierarchy`
--

DROP TABLE IF EXISTS `wp_yoast_indexable_hierarchy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_yoast_indexable_hierarchy` (
  `indexable_id` int(11) unsigned NOT NULL,
  `ancestor_id` int(11) unsigned NOT NULL,
  `depth` int(11) unsigned DEFAULT NULL,
  `blog_id` bigint(20) NOT NULL DEFAULT '1',
  PRIMARY KEY (`indexable_id`,`ancestor_id`),
  KEY `indexable_id` (`indexable_id`),
  KEY `ancestor_id` (`ancestor_id`),
  KEY `depth` (`depth`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_yoast_indexable_hierarchy`
--

LOCK TABLES `wp_yoast_indexable_hierarchy` WRITE;
/*!40000 ALTER TABLE `wp_yoast_indexable_hierarchy` DISABLE KEYS */;
INSERT INTO `wp_yoast_indexable_hierarchy` VALUES (1,0,0,1);
INSERT INTO `wp_yoast_indexable_hierarchy` VALUES (2,0,0,1);
INSERT INTO `wp_yoast_indexable_hierarchy` VALUES (3,0,0,1);
INSERT INTO `wp_yoast_indexable_hierarchy` VALUES (4,0,0,1);
INSERT INTO `wp_yoast_indexable_hierarchy` VALUES (5,0,0,1);
INSERT INTO `wp_yoast_indexable_hierarchy` VALUES (6,0,0,1);
INSERT INTO `wp_yoast_indexable_hierarchy` VALUES (7,0,0,1);
/*!40000 ALTER TABLE `wp_yoast_indexable_hierarchy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_yoast_migrations`
--

DROP TABLE IF EXISTS `wp_yoast_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_yoast_migrations` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `version` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `wp_yoast_migrations_version` (`version`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_yoast_migrations`
--

LOCK TABLES `wp_yoast_migrations` WRITE;
/*!40000 ALTER TABLE `wp_yoast_migrations` DISABLE KEYS */;
INSERT INTO `wp_yoast_migrations` VALUES (1,'20171228151840');
INSERT INTO `wp_yoast_migrations` VALUES (2,'20171228151841');
INSERT INTO `wp_yoast_migrations` VALUES (3,'20190529075038');
INSERT INTO `wp_yoast_migrations` VALUES (4,'20191011111109');
INSERT INTO `wp_yoast_migrations` VALUES (5,'20200408101900');
INSERT INTO `wp_yoast_migrations` VALUES (6,'20200420073606');
INSERT INTO `wp_yoast_migrations` VALUES (7,'20200428123747');
INSERT INTO `wp_yoast_migrations` VALUES (8,'20200428194858');
INSERT INTO `wp_yoast_migrations` VALUES (9,'20200429105310');
INSERT INTO `wp_yoast_migrations` VALUES (10,'20200430075614');
INSERT INTO `wp_yoast_migrations` VALUES (11,'20200430150130');
INSERT INTO `wp_yoast_migrations` VALUES (12,'20200507054848');
INSERT INTO `wp_yoast_migrations` VALUES (13,'20200513133401');
INSERT INTO `wp_yoast_migrations` VALUES (14,'20200609154515');
INSERT INTO `wp_yoast_migrations` VALUES (15,'20200616130143');
INSERT INTO `wp_yoast_migrations` VALUES (16,'20200617122511');
INSERT INTO `wp_yoast_migrations` VALUES (17,'20200702141921');
INSERT INTO `wp_yoast_migrations` VALUES (18,'20200728095334');
INSERT INTO `wp_yoast_migrations` VALUES (19,'20201202144329');
INSERT INTO `wp_yoast_migrations` VALUES (20,'20201216124002');
INSERT INTO `wp_yoast_migrations` VALUES (21,'20201216141134');
INSERT INTO `wp_yoast_migrations` VALUES (22,'20210817092415');
INSERT INTO `wp_yoast_migrations` VALUES (23,'20211020091404');
/*!40000 ALTER TABLE `wp_yoast_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_yoast_primary_term`
--

DROP TABLE IF EXISTS `wp_yoast_primary_term`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_yoast_primary_term` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) DEFAULT NULL,
  `term_id` bigint(20) DEFAULT NULL,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `blog_id` bigint(20) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `post_taxonomy` (`post_id`,`taxonomy`),
  KEY `post_term` (`post_id`,`term_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_yoast_primary_term`
--

LOCK TABLES `wp_yoast_primary_term` WRITE;
/*!40000 ALTER TABLE `wp_yoast_primary_term` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_yoast_primary_term` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_yoast_seo_links`
--

DROP TABLE IF EXISTS `wp_yoast_seo_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_yoast_seo_links` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) DEFAULT NULL,
  `post_id` bigint(20) unsigned DEFAULT NULL,
  `target_post_id` bigint(20) unsigned DEFAULT NULL,
  `type` varchar(8) DEFAULT NULL,
  `indexable_id` int(11) unsigned DEFAULT NULL,
  `target_indexable_id` int(11) unsigned DEFAULT NULL,
  `height` int(11) unsigned DEFAULT NULL,
  `width` int(11) unsigned DEFAULT NULL,
  `size` int(11) unsigned DEFAULT NULL,
  `language` varchar(32) DEFAULT NULL,
  `region` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `link_direction` (`post_id`,`type`),
  KEY `indexable_link_direction` (`indexable_id`,`type`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_yoast_seo_links`
--

LOCK TABLES `wp_yoast_seo_links` WRITE;
/*!40000 ALTER TABLE `wp_yoast_seo_links` DISABLE KEYS */;
INSERT INTO `wp_yoast_seo_links` VALUES (4,'https://developer.mozilla.org/en-US/docs/HTML/Element/blockquote#Notes',31,NULL,'external',2,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `wp_yoast_seo_links` VALUES (5,'https://developer.mozilla.org/en-US/docs/Web/HTML/Element/cite',31,NULL,'external',2,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `wp_yoast_seo_links` VALUES (6,'http://progrim.local/wp-content/uploads/2023/01/oddle-1-ksRC-1350x900@El-Comercio-1024x683.jpg',31,14,'image-in',2,NULL,900,1350,247375,NULL,NULL);
INSERT INTO `wp_yoast_seo_links` VALUES (8,'http://progrim.local/wp-admin/profile.php',31,NULL,'internal',2,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `wp_yoast_seo_links` VALUES (9,'http://progrim.local/wp-login.php?action=logout&amp;redirect_to=http%3A%2F%2Fprogrim.local%2Farticulo%2Farticulo-16%2F&amp;_wpnonce=4c9488cc00',31,NULL,'internal',2,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `wp_yoast_seo_links` VALUES (11,'http://progrim.local',31,5,'internal',2,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `wp_yoast_seo_links` VALUES (12,'http://progrim.local/wp-admin/comment.php?action=editcomment&#038;c=2',31,NULL,'internal',2,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `wp_yoast_seo_links` VALUES (13,'http://progrim.local',31,5,'internal',2,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `wp_yoast_seo_links` VALUES (14,'http://progrim.local/wp-admin/comment.php?action=editcomment&#038;c=3',31,NULL,'internal',2,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `wp_yoast_seo_links` VALUES (16,'http://0.gravatar.com/avatar/c7d3d24e790c386ff4793bb4edfd95c7?s=40&#038;d=mm&#038;r=g',31,NULL,'image-ex',2,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `wp_yoast_seo_links` VALUES (17,'http://0.gravatar.com/avatar/c7d3d24e790c386ff4793bb4edfd95c7?s=40&#038;d=mm&#038;r=g',31,NULL,'image-ex',2,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `wp_yoast_seo_links` VALUES (20,'http://progrim.local/wp-admin/profile.php',30,NULL,'internal',3,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `wp_yoast_seo_links` VALUES (21,'http://progrim.local/wp-login.php?action=logout&amp;redirect_to=http%3A%2F%2Fprogrim.local%2Farticulo%2Farticulo-15%2F&amp;_wpnonce=4c9488cc00',30,NULL,'internal',3,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `wp_yoast_seo_links` VALUES (22,'/wp-admin/post.php?post=30&amp;action=edit&amp;meta-box-loader=1&amp;meta-box-loader-nonce=24384507d6&amp;_locale=user#respond',30,NULL,'internal',3,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `wp_yoast_seo_links` VALUES (24,'/wp-admin/post.php?post=31&amp;action=edit&amp;meta-box-loader=1&amp;meta-box-loader-nonce=24384507d6&amp;_locale=user#respond',31,NULL,'internal',2,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `wp_yoast_seo_links` VALUES (28,'https://code.visualstudio.com/download',51,NULL,'external',4,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `wp_yoast_seo_links` VALUES (29,'http://progrim.local/wp-content/uploads/2023/02/Introduccion-html-1.jpg',51,54,'image-in',4,NULL,667,1000,856335,NULL,NULL);
INSERT INTO `wp_yoast_seo_links` VALUES (30,'http://progrim.local/wp-content/uploads/2023/02/Test-HTML.png',51,55,'image-in',4,NULL,232,534,10500,NULL,NULL);
INSERT INTO `wp_yoast_seo_links` VALUES (32,'http://progrim.local/wp-admin/profile.php',51,NULL,'internal',4,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `wp_yoast_seo_links` VALUES (33,'http://progrim.local/wp-login.php?action=logout&amp;redirect_to=http%3A%2F%2Fprogrim.local%2Farticulo%2Fborrador-auto%2F&amp;_wpnonce=5b449f822f',51,NULL,'internal',4,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `wp_yoast_seo_links` VALUES (74,'/wp-admin/post.php?post=51&amp;action=edit&amp;meta-box-loader=1&amp;meta-box-loader-nonce=0d79c476e2&amp;_locale=user#respond',51,NULL,'internal',4,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `wp_yoast_seo_links` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-07 13:21:59
