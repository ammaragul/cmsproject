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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_commentmeta`
--

LOCK TABLES `wp_commentmeta` WRITE;
/*!40000 ALTER TABLE `wp_commentmeta` DISABLE KEYS */;
INSERT INTO `wp_commentmeta` VALUES (1,6,'_wp_trash_meta_status','1');
INSERT INTO `wp_commentmeta` VALUES (2,6,'_wp_trash_meta_time','1604886205');
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_comments`
--

LOCK TABLES `wp_comments` WRITE;
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;
INSERT INTO `wp_comments` VALUES (1,1,'A WordPress Commenter','wapuu@wordpress.example','https://wordpress.org/','','2020-10-26 22:15:13','2020-10-26 22:15:13','Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.',0,'post-trashed','','comment',0,0);
INSERT INTO `wp_comments` VALUES (2,136,'ammara_gul','dev-email@flywheel.local','http://cmsproject.local','127.0.0.1','2020-11-01 22:52:45','2020-11-01 22:52:45','hhhhhhh',0,'1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36','comment',0,1);
INSERT INTO `wp_comments` VALUES (3,136,'ammara_gul','dev-email@flywheel.local','http://cmsproject.local','127.0.0.1','2020-11-01 22:55:57','2020-11-01 22:55:57','bbbbbbbbbbbbbbbbbbb',0,'1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36','comment',0,1);
INSERT INTO `wp_comments` VALUES (4,136,'ammara_gul','dev-email@flywheel.local','http://cmsproject.local','127.0.0.1','2020-11-01 22:56:32','2020-11-01 22:56:32','bbbbbbbbbbbbbb',0,'1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36','comment',0,1);
INSERT INTO `wp_comments` VALUES (5,136,'ammara_gul','dev-email@flywheel.local','http://cmsproject.local','127.0.0.1','2020-11-01 22:57:29','2020-11-01 22:57:29','hhhhhhhhhhhhhhhhhhh',0,'1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36','comment',2,1);
INSERT INTO `wp_comments` VALUES (6,136,'ammara_gul','dev-email@flywheel.local','http://cmsproject.local','127.0.0.1','2020-11-01 22:57:43','2020-11-01 22:57:43','mmmmmmmmmmmmmmmmmmmmmmmm',0,'trash','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36','comment',4,1);
INSERT INTO `wp_comments` VALUES (7,136,'ammara_gul','dev-email@flywheel.local','http://cmsproject.local','127.0.0.1','2020-11-01 22:57:56','2020-11-01 22:57:56','nnnnnnnnnnnnnnnnnn',0,'1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36','comment',6,1);
INSERT INTO `wp_comments` VALUES (8,136,'ammara_gul','dev-email@flywheel.local','http://cmsproject.local','127.0.0.1','2020-11-01 22:59:40','2020-11-01 22:59:40','mmmmmmmmmmmmmmm',0,'1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36','comment',4,1);
INSERT INTO `wp_comments` VALUES (9,136,'ammara_gul','dev-email@flywheel.local','http://cmsproject.local','127.0.0.1','2020-11-02 00:27:04','2020-11-02 00:27:04','hhhhhhhhhhhh',0,'1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36','comment',0,1);
INSERT INTO `wp_comments` VALUES (10,154,'ammara gul','ammaragul2002@hotmail.com','http://amm','127.0.0.1','2020-11-02 02:34:08','2020-11-02 02:34:08','bbbbbbbbbbbbbb',0,'post-trashed','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36','comment',0,0);
INSERT INTO `wp_comments` VALUES (11,116,'Ammara','ammaragul2002@hotmail.com','http://site21.wdd.francistuttle.edu/portfolio/index.php','127.0.0.1','2020-11-02 02:35:24','2020-11-02 02:35:24','jjjjjjjjjjj',0,'1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36','comment',0,0);
INSERT INTO `wp_comments` VALUES (12,136,'ammara_gul','dev-email@flywheel.local','http://cmsproject.local','127.0.0.1','2020-11-02 03:05:51','2020-11-02 03:05:51','nnnnnnn',0,'1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36','comment',0,1);
INSERT INTO `wp_comments` VALUES (13,136,'ammara_gul','dev-email@flywheel.local','http://cmsproject.local','127.0.0.1','2020-11-02 03:10:53','2020-11-02 03:10:53','i m trying',0,'1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36','comment',0,1);
INSERT INTO `wp_comments` VALUES (14,136,'ammara_gul','dev-email@flywheel.local','http://cmsproject.local','127.0.0.1','2020-11-02 03:12:54','2020-11-02 03:12:54','mm',0,'1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36','comment',0,1);
INSERT INTO `wp_comments` VALUES (15,116,'ammara_gul','dev-email@flywheel.local','http://cmsproject.local','127.0.0.1','2020-11-02 03:14:38','2020-11-02 03:14:38','i m tryinh',0,'1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36','comment',0,1);
INSERT INTO `wp_comments` VALUES (16,116,'ammara_gul','dev-email@flywheel.local','http://cmsproject.local','127.0.0.1','2020-11-02 03:20:26','2020-11-02 03:20:26','ok',0,'1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36','comment',15,1);
INSERT INTO `wp_comments` VALUES (17,116,'ammara gul','ammaragul2002@hotmail.com','','127.0.0.1','2020-11-03 01:23:44','2020-11-03 01:23:44','hello',0,'1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36','comment',0,0);
INSERT INTO `wp_comments` VALUES (18,193,'ammara_gul','dev-email@flywheel.local','http://cmsproject.local','127.0.0.1','2020-11-03 21:30:33','2020-11-03 21:30:33','hi',0,'1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36','comment',0,1);
INSERT INTO `wp_comments` VALUES (19,116,'ammara_gul','dev-email@flywheel.local','http://cmsproject.local','127.0.0.1','2020-11-04 17:33:17','2020-11-04 23:33:17','hiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiii',0,'1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36','comment',0,1);
INSERT INTO `wp_comments` VALUES (20,116,'ammara_gul','dev-email@flywheel.local','http://cmsproject.local','127.0.0.1','2020-11-04 17:34:35','2020-11-04 23:34:35','do i know you',0,'1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36','comment',0,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=679 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_options`
--

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` VALUES (1,'siteurl','http://cmsproject.local','yes');
INSERT INTO `wp_options` VALUES (2,'home','http://cmsproject.local','yes');
INSERT INTO `wp_options` VALUES (3,'blogname','Quotes','yes');
INSERT INTO `wp_options` VALUES (4,'blogdescription','changing an static site into wordpress','yes');
INSERT INTO `wp_options` VALUES (5,'users_can_register','1','yes');
INSERT INTO `wp_options` VALUES (6,'admin_email','dev-email@flywheel.local','yes');
INSERT INTO `wp_options` VALUES (7,'start_of_week','1','yes');
INSERT INTO `wp_options` VALUES (8,'use_balanceTags','0','yes');
INSERT INTO `wp_options` VALUES (9,'use_smilies','1','yes');
INSERT INTO `wp_options` VALUES (10,'require_name_email','1','yes');
INSERT INTO `wp_options` VALUES (11,'comments_notify','1','yes');
INSERT INTO `wp_options` VALUES (12,'posts_per_rss','10','yes');
INSERT INTO `wp_options` VALUES (13,'rss_use_excerpt','0','yes');
INSERT INTO `wp_options` VALUES (14,'mailserver_url','mail.example.com','yes');
INSERT INTO `wp_options` VALUES (15,'mailserver_login','login@example.com','yes');
INSERT INTO `wp_options` VALUES (16,'mailserver_pass','password','yes');
INSERT INTO `wp_options` VALUES (17,'mailserver_port','110','yes');
INSERT INTO `wp_options` VALUES (18,'default_category','1','yes');
INSERT INTO `wp_options` VALUES (19,'default_comment_status','open','yes');
INSERT INTO `wp_options` VALUES (20,'default_ping_status','open','yes');
INSERT INTO `wp_options` VALUES (21,'default_pingback_flag','1','yes');
INSERT INTO `wp_options` VALUES (22,'posts_per_page','10','yes');
INSERT INTO `wp_options` VALUES (23,'date_format','F j, Y','yes');
INSERT INTO `wp_options` VALUES (24,'time_format','g:i A','yes');
INSERT INTO `wp_options` VALUES (25,'links_updated_date_format','F j, Y g:i a','yes');
INSERT INTO `wp_options` VALUES (26,'comment_moderation','','yes');
INSERT INTO `wp_options` VALUES (27,'moderation_notify','1','yes');
INSERT INTO `wp_options` VALUES (28,'permalink_structure','/%postname%/','yes');
INSERT INTO `wp_options` VALUES (29,'rewrite_rules','a:94:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:40:\"index.php?&page_id=188&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}','yes');
INSERT INTO `wp_options` VALUES (30,'hack_file','0','yes');
INSERT INTO `wp_options` VALUES (31,'blog_charset','UTF-8','yes');
INSERT INTO `wp_options` VALUES (32,'moderation_keys','','no');
INSERT INTO `wp_options` VALUES (33,'active_plugins','a:1:{i:0;s:51:\"display-posts-shortcode/display-posts-shortcode.php\";}','yes');
INSERT INTO `wp_options` VALUES (34,'category_base','','yes');
INSERT INTO `wp_options` VALUES (35,'ping_sites','http://rpc.pingomatic.com/','yes');
INSERT INTO `wp_options` VALUES (36,'comment_max_links','2','yes');
INSERT INTO `wp_options` VALUES (37,'gmt_offset','-6','yes');
INSERT INTO `wp_options` VALUES (38,'default_email_category','1','yes');
INSERT INTO `wp_options` VALUES (39,'recently_edited','a:5:{i:0;s:105:\"C:\\Users\\ammar\\Local Sites\\cmsproject\\app\\public/wp-content/themes/firsttheme/includes/section-header.php\";i:1;s:88:\"C:\\Users\\ammar\\Local Sites\\cmsproject\\app\\public/wp-content/themes/firsttheme/header.php\";i:2;s:87:\"C:\\Users\\ammar\\Local Sites\\cmsproject\\app\\public/wp-content/themes/firsttheme/style.css\";i:3;s:86:\"C:\\Users\\ammar\\Local Sites\\cmsproject\\app\\public/wp-content/themes/firsttheme/page.php\";i:4;s:91:\"C:\\Users\\ammar\\Local Sites\\cmsproject\\app\\public/wp-content/themes/firsttheme/functions.php\";}','no');
INSERT INTO `wp_options` VALUES (40,'template','firsttheme','yes');
INSERT INTO `wp_options` VALUES (41,'stylesheet','firsttheme','yes');
INSERT INTO `wp_options` VALUES (42,'comment_registration','','yes');
INSERT INTO `wp_options` VALUES (43,'html_type','text/html','yes');
INSERT INTO `wp_options` VALUES (44,'use_trackback','0','yes');
INSERT INTO `wp_options` VALUES (45,'default_role','subscriber','yes');
INSERT INTO `wp_options` VALUES (46,'db_version','48748','yes');
INSERT INTO `wp_options` VALUES (47,'uploads_use_yearmonth_folders','1','yes');
INSERT INTO `wp_options` VALUES (48,'upload_path','','yes');
INSERT INTO `wp_options` VALUES (49,'blog_public','1','yes');
INSERT INTO `wp_options` VALUES (50,'default_link_category','0','yes');
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
INSERT INTO `wp_options` VALUES (71,'page_comments','1','yes');
INSERT INTO `wp_options` VALUES (72,'comments_per_page','50','yes');
INSERT INTO `wp_options` VALUES (73,'default_comments_page','newest','yes');
INSERT INTO `wp_options` VALUES (74,'comment_order','asc','yes');
INSERT INTO `wp_options` VALUES (75,'sticky_posts','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (76,'widget_categories','a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (77,'widget_text','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (78,'widget_rss','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (79,'uninstall_plugins','a:1:{s:33:\"import-html-pages/html-import.php\";s:26:\"html_import_remove_options\";}','no');
INSERT INTO `wp_options` VALUES (80,'timezone_string','','yes');
INSERT INTO `wp_options` VALUES (81,'page_for_posts','193','yes');
INSERT INTO `wp_options` VALUES (82,'page_on_front','188','yes');
INSERT INTO `wp_options` VALUES (83,'default_post_format','0','yes');
INSERT INTO `wp_options` VALUES (84,'link_manager_enabled','0','yes');
INSERT INTO `wp_options` VALUES (85,'finished_splitting_shared_terms','1','yes');
INSERT INTO `wp_options` VALUES (86,'site_icon','0','yes');
INSERT INTO `wp_options` VALUES (87,'medium_large_size_w','768','yes');
INSERT INTO `wp_options` VALUES (88,'medium_large_size_h','0','yes');
INSERT INTO `wp_options` VALUES (89,'wp_page_for_privacy_policy','3','yes');
INSERT INTO `wp_options` VALUES (90,'show_comments_cookies_opt_in','1','yes');
INSERT INTO `wp_options` VALUES (91,'admin_email_lifespan','1619302511','yes');
INSERT INTO `wp_options` VALUES (92,'disallowed_keys','','no');
INSERT INTO `wp_options` VALUES (93,'comment_previously_approved','1','yes');
INSERT INTO `wp_options` VALUES (94,'auto_plugin_theme_update_emails','a:0:{}','no');
INSERT INTO `wp_options` VALUES (95,'initial_db_version','48748','yes');
INSERT INTO `wp_options` VALUES (96,'wp_user_roles','a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}','yes');
INSERT INTO `wp_options` VALUES (97,'fresh_site','0','yes');
INSERT INTO `wp_options` VALUES (98,'widget_search','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (99,'widget_recent-posts','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (100,'widget_recent-comments','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (101,'widget_archives','a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (102,'widget_meta','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (103,'sidebars_widgets','a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}','yes');
INSERT INTO `wp_options` VALUES (104,'cron','a:6:{i:1604974515;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1605003315;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1605046515;a:2:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1605047567;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1605047568;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}','yes');
INSERT INTO `wp_options` VALUES (105,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (106,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (107,'widget_media_audio','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (108,'widget_media_image','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (109,'widget_media_gallery','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (110,'widget_media_video','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (111,'nonce_key','/T$~ofC<%W4|0-dd1,,-32pPJeD0ki^vf_jr_pfE;HnkHqnOVCE(Ykfz @IYC`ar','no');
INSERT INTO `wp_options` VALUES (112,'nonce_salt','?nEVDh{.X2I5r8RT.~7#VpZczDn`(3mF$rmFqI@Q5Dz+,nX?aKwz~(`z`k^zgR:=','no');
INSERT INTO `wp_options` VALUES (113,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (114,'widget_nav_menu','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (115,'widget_custom_html','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (117,'recovery_keys','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (125,'theme_mods_twentytwenty','a:3:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1604264663;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}s:18:\"nav_menu_locations\";a:0:{}}','yes');
INSERT INTO `wp_options` VALUES (143,'can_compress_scripts','1','no');
INSERT INTO `wp_options` VALUES (148,'finished_updating_comment_type','1','yes');
INSERT INTO `wp_options` VALUES (159,'current_theme','firsttheme','yes');
INSERT INTO `wp_options` VALUES (160,'theme_mods_tewntytwenty-child','a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1604015152;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}','yes');
INSERT INTO `wp_options` VALUES (161,'theme_switched','','yes');
INSERT INTO `wp_options` VALUES (162,'recently_activated','a:4:{s:51:\"header-footer-elementor/header-footer-elementor.php\";i:1604265275;s:39:\"simple-custom-css/simple-custom-css.php\";i:1604198105;s:42:\"beaver-builder-lite-version/fl-builder.php\";i:1604198103;s:35:\"insert-headers-and-footers/ihaf.php\";i:1604093639;}','yes');
INSERT INTO `wp_options` VALUES (177,'recovery_mode_email_last_sent','1604200809','yes');
INSERT INTO `wp_options` VALUES (185,'_transient_health-check-site-status-result','{\"good\":\"15\",\"recommended\":\"4\",\"critical\":\"1\"}','yes');
INSERT INTO `wp_options` VALUES (209,'theme_mods_ammara\'s theme','a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1604037822;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}','yes');
INSERT INTO `wp_options` VALUES (220,'theme_switched_via_customizer','','yes');
INSERT INTO `wp_options` VALUES (221,'customize_stashed_theme_mods','a:0:{}','no');
INSERT INTO `wp_options` VALUES (232,'ihaf_insert_header','','yes');
INSERT INTO `wp_options` VALUES (233,'ihaf_insert_footer','','yes');
INSERT INTO `wp_options` VALUES (234,'ihaf_insert_body','','yes');
INSERT INTO `wp_options` VALUES (235,'insert-headers-and-footers_welcome_dismissed_key','1','yes');
INSERT INTO `wp_options` VALUES (239,'theme_mods_twentynineteen','a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1604039888;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}','yes');
INSERT INTO `wp_options` VALUES (252,'theme_mods_firsttheme','a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1604264572;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}','yes');
INSERT INTO `wp_options` VALUES (284,'_site_transient_update_themes','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1604970947;s:7:\"checked\";a:4:{s:10:\"firsttheme\";s:3:\"1.0\";s:14:\"twentynineteen\";s:3:\"1.7\";s:15:\"twentyseventeen\";s:3:\"2.4\";s:12:\"twentytwenty\";s:3:\"1.5\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:3:{s:14:\"twentynineteen\";a:6:{s:5:\"theme\";s:14:\"twentynineteen\";s:11:\"new_version\";s:3:\"1.7\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentynineteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentynineteen.1.7.zip\";s:8:\"requires\";s:5:\"4.9.6\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentyseventeen\";a:6:{s:5:\"theme\";s:15:\"twentyseventeen\";s:11:\"new_version\";s:3:\"2.4\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentyseventeen/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentyseventeen.2.4.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"1.5\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.1.5.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}}s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (296,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.5.3.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.5.3.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.5.3-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.5.3-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.5.3\";s:7:\"version\";s:5:\"5.5.3\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1604970946;s:15:\"version_checked\";s:5:\"5.5.3\";s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (367,'_fl_builder_version','2.4.0.5','no');
INSERT INTO `wp_options` VALUES (368,'fl_builder_usage_enabled','0','no');
INSERT INTO `wp_options` VALUES (426,'auto_update_plugins','a:1:{i:1;s:51:\"display-posts-shortcode/display-posts-shortcode.php\";}','no');
INSERT INTO `wp_options` VALUES (429,'nav_menu_options','a:1:{s:8:\"auto_add\";a:1:{i:0;i:4;}}','yes');
INSERT INTO `wp_options` VALUES (455,'_site_transient_timeout_browser_3a39a1d66137823f367d0482940bd7b8','1604971479','no');
INSERT INTO `wp_options` VALUES (456,'_site_transient_browser_3a39a1d66137823f367d0482940bd7b8','a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"86.0.4240.111\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}','no');
INSERT INTO `wp_options` VALUES (457,'_site_transient_timeout_php_check_472f71d2a071d463a95f84346288dc89','1604971479','no');
INSERT INTO `wp_options` VALUES (458,'_site_transient_php_check_472f71d2a071d463a95f84346288dc89','a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}','no');
INSERT INTO `wp_options` VALUES (519,'WPLANG','','yes');
INSERT INTO `wp_options` VALUES (520,'new_admin_email','dev-email@flywheel.local','yes');
INSERT INTO `wp_options` VALUES (521,'adminhash','a:2:{s:4:\"hash\";s:32:\"4be95d4688ce6ac29a94b451e99b16cc\";s:8:\"newemail\";s:25:\"ammaragul2002@hotmail.com\";}','yes');
INSERT INTO `wp_options` VALUES (534,'category_children','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (575,'_site_transient_update_plugins','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1604970947;s:7:\"checked\";a:1:{s:51:\"display-posts-shortcode/display-posts-shortcode.php\";s:5:\"3.0.2\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:1:{s:51:\"display-posts-shortcode/display-posts-shortcode.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:37:\"w.org/plugins/display-posts-shortcode\";s:4:\"slug\";s:23:\"display-posts-shortcode\";s:6:\"plugin\";s:51:\"display-posts-shortcode/display-posts-shortcode.php\";s:11:\"new_version\";s:5:\"3.0.2\";s:3:\"url\";s:54:\"https://wordpress.org/plugins/display-posts-shortcode/\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/plugin/display-posts-shortcode.3.0.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:76:\"https://ps.w.org/display-posts-shortcode/assets/icon-256x256.jpg?rev=2006522\";s:2:\"1x\";s:76:\"https://ps.w.org/display-posts-shortcode/assets/icon-128x128.jpg?rev=2006522\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:79:\"https://ps.w.org/display-posts-shortcode/assets/banner-1544x500.jpg?rev=2006522\";s:2:\"1x\";s:78:\"https://ps.w.org/display-posts-shortcode/assets/banner-772x250.jpg?rev=2006522\";}s:11:\"banners_rtl\";a:0:{}}}}','no');
INSERT INTO `wp_options` VALUES (586,'_site_transient_timeout_browser_8a3b4a31367a295021c4b74b47e91fb7','1605153934','no');
INSERT INTO `wp_options` VALUES (587,'_site_transient_browser_8a3b4a31367a295021c4b74b47e91fb7','a:10:{s:4:\"name\";s:7:\"unknown\";s:7:\"version\";s:0:\"\";s:8:\"platform\";s:0:\"\";s:10:\"update_url\";s:0:\"\";s:7:\"img_src\";s:0:\"\";s:11:\"img_src_ssl\";s:0:\"\";s:15:\"current_version\";s:0:\"\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}','no');
INSERT INTO `wp_options` VALUES (614,'_site_transient_timeout_browser_46abf0d68e56d79f1380ffaab81adce5','1605315041','no');
INSERT INTO `wp_options` VALUES (615,'_site_transient_browser_46abf0d68e56d79f1380ffaab81adce5','a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"86.0.4240.183\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}','no');
INSERT INTO `wp_options` VALUES (677,'_site_transient_timeout_theme_roots','1604972746','no');
INSERT INTO `wp_options` VALUES (678,'_site_transient_theme_roots','a:4:{s:10:\"firsttheme\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";}','no');
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
) ENGINE=InnoDB AUTO_INCREMENT=570 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_postmeta`
--

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES (1,2,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (2,3,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (15,11,'URL_before_HTML_Import','C:/Users/ammar/Local Sites/cmsproject/app/public/cmsproject/cmsproject/5thQtrProject');
INSERT INTO `wp_postmeta` VALUES (16,13,'URL_before_HTML_Import','C:/Users/ammar/Local Sites/cmsproject/app/public/cmsproject/cmsproject');
INSERT INTO `wp_postmeta` VALUES (17,14,'URL_before_HTML_Import','C:/Users/ammar/Local Sites/cmsproject/app/public/cmsproject/cmsproject/5thQtrProject');
INSERT INTO `wp_postmeta` VALUES (20,18,'_wp_attached_file','2020/10/banner.jpg');
INSERT INTO `wp_postmeta` VALUES (21,18,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1500;s:6:\"height\";i:865;s:4:\"file\";s:18:\"2020/10/banner.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"banner-300x173.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:173;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"banner-1024x591.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:591;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"banner-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"banner-768x443.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:443;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:19:\"banner-1200x692.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:692;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (22,19,'_wp_attached_file','2020/10/banner1.jpg');
INSERT INTO `wp_postmeta` VALUES (23,19,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1600;s:6:\"height\";i:998;s:4:\"file\";s:19:\"2020/10/banner1.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"banner1-300x187.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:187;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"banner1-1024x639.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:639;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"banner1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"banner1-768x479.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:479;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:20:\"banner1-1536x958.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:958;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:20:\"banner1-1200x749.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:749;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (24,20,'_wp_attached_file','2020/10/banner2.jpg');
INSERT INTO `wp_postmeta` VALUES (25,20,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1600;s:6:\"height\";i:659;s:4:\"file\";s:19:\"2020/10/banner2.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"banner2-300x124.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:124;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"banner2-1024x422.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:422;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"banner2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"banner2-768x316.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:316;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:20:\"banner2-1536x633.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:633;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:20:\"banner2-1200x494.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:494;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (28,22,'_wp_attached_file','2020/10/close.png');
INSERT INTO `wp_postmeta` VALUES (29,22,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:55;s:6:\"height\";i:36;s:4:\"file\";s:17:\"2020/10/close.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (30,23,'_wp_attached_file','2020/10/controls.png');
INSERT INTO `wp_postmeta` VALUES (31,23,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:96;s:6:\"height\";i:63;s:4:\"file\";s:20:\"2020/10/controls.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (32,24,'_wp_attached_file','2020/10/logo.png');
INSERT INTO `wp_postmeta` VALUES (33,24,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:200;s:6:\"height\";i:80;s:4:\"file\";s:16:\"2020/10/logo.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"logo-150x80.png\";s:5:\"width\";i:150;s:6:\"height\";i:80;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (34,25,'_wp_attached_file','2020/10/menu.png');
INSERT INTO `wp_postmeta` VALUES (35,25,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:51;s:6:\"height\";i:36;s:4:\"file\";s:16:\"2020/10/menu.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (36,26,'_wp_attached_file','2020/10/poster1.jpg');
INSERT INTO `wp_postmeta` VALUES (37,26,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:562;s:6:\"height\";i:760;s:4:\"file\";s:19:\"2020/10/poster1.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"poster1-222x300.jpg\";s:5:\"width\";i:222;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"poster1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (40,28,'_wp_attached_file','2020/10/poster2.jpg');
INSERT INTO `wp_postmeta` VALUES (41,28,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:740;s:6:\"height\";i:370;s:4:\"file\";s:19:\"2020/10/poster2.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"poster2-300x150.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"poster2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (42,29,'_wp_attached_file','2020/10/poster3.jpg');
INSERT INTO `wp_postmeta` VALUES (43,29,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:330;s:6:\"height\";i:340;s:4:\"file\";s:19:\"2020/10/poster3.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"poster3-291x300.jpg\";s:5:\"width\";i:291;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"poster3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (44,30,'_wp_attached_file','2020/10/poster4.jpg');
INSERT INTO `wp_postmeta` VALUES (45,30,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:330;s:6:\"height\";i:340;s:4:\"file\";s:19:\"2020/10/poster4.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"poster4-291x300.jpg\";s:5:\"width\";i:291;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"poster4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (46,31,'_wp_attached_file','2020/10/slide1.jpg');
INSERT INTO `wp_postmeta` VALUES (47,31,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:798;s:6:\"height\";i:650;s:4:\"file\";s:18:\"2020/10/slide1.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"slide1-300x244.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:244;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"slide1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"slide1-768x626.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:626;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (48,1,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (49,1,'_wp_trash_meta_time','1603759899');
INSERT INTO `wp_postmeta` VALUES (50,1,'_wp_desired_post_slug','hello-world');
INSERT INTO `wp_postmeta` VALUES (51,1,'_wp_trash_meta_comments_status','a:1:{i:1;s:1:\"1\";}');
INSERT INTO `wp_postmeta` VALUES (58,14,'_edit_lock','1603760059:1');
INSERT INTO `wp_postmeta` VALUES (71,37,'_edit_lock','1603761295:1');
INSERT INTO `wp_postmeta` VALUES (73,39,'_edit_lock','1604091473:1');
INSERT INTO `wp_postmeta` VALUES (75,42,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (76,42,'_wp_trash_meta_time','1604023633');
INSERT INTO `wp_postmeta` VALUES (87,13,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (88,13,'_wp_trash_meta_time','1604091814');
INSERT INTO `wp_postmeta` VALUES (89,13,'_wp_desired_post_slug','cmsproject');
INSERT INTO `wp_postmeta` VALUES (90,11,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (91,11,'_wp_trash_meta_time','1604091814');
INSERT INTO `wp_postmeta` VALUES (92,11,'_wp_desired_post_slug','5thqtrproject');
INSERT INTO `wp_postmeta` VALUES (93,3,'_wp_trash_meta_status','draft');
INSERT INTO `wp_postmeta` VALUES (94,3,'_wp_trash_meta_time','1604091815');
INSERT INTO `wp_postmeta` VALUES (95,3,'_wp_desired_post_slug','privacy-policy');
INSERT INTO `wp_postmeta` VALUES (96,14,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (97,14,'_wp_trash_meta_time','1604091815');
INSERT INTO `wp_postmeta` VALUES (98,14,'_wp_desired_post_slug','5thqtrproject');
INSERT INTO `wp_postmeta` VALUES (99,17,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (100,17,'_wp_trash_meta_time','1604091815');
INSERT INTO `wp_postmeta` VALUES (101,17,'_wp_desired_post_slug','quotes');
INSERT INTO `wp_postmeta` VALUES (102,2,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (103,2,'_wp_trash_meta_time','1604091815');
INSERT INTO `wp_postmeta` VALUES (104,2,'_wp_desired_post_slug','sample-page');
INSERT INTO `wp_postmeta` VALUES (120,57,'_wp_attached_file','2020/10/close-1.png');
INSERT INTO `wp_postmeta` VALUES (121,57,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:55;s:6:\"height\";i:36;s:4:\"file\";s:19:\"2020/10/close-1.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (126,60,'_wp_attached_file','2020/10/menu-1.png');
INSERT INTO `wp_postmeta` VALUES (127,60,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:51;s:6:\"height\";i:36;s:4:\"file\";s:18:\"2020/10/menu-1.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (130,62,'_wp_attached_file','2020/10/controls-1.png');
INSERT INTO `wp_postmeta` VALUES (131,62,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:96;s:6:\"height\";i:63;s:4:\"file\";s:22:\"2020/10/controls-1.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (134,64,'_wp_attached_file','2020/10/poster4-1.jpg');
INSERT INTO `wp_postmeta` VALUES (135,64,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:330;s:6:\"height\";i:340;s:4:\"file\";s:21:\"2020/10/poster4-1.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"poster4-1-291x300.jpg\";s:5:\"width\";i:291;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"poster4-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (136,65,'_wp_attached_file','2020/10/poster3-1.jpg');
INSERT INTO `wp_postmeta` VALUES (137,65,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:330;s:6:\"height\";i:340;s:4:\"file\";s:21:\"2020/10/poster3-1.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"poster3-1-291x300.jpg\";s:5:\"width\";i:291;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"poster3-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (143,69,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (144,69,'_wp_trash_meta_time','1604189495');
INSERT INTO `wp_postmeta` VALUES (146,39,'_wp_trash_meta_status','draft');
INSERT INTO `wp_postmeta` VALUES (147,39,'_wp_trash_meta_time','1604192273');
INSERT INTO `wp_postmeta` VALUES (148,39,'_wp_desired_post_slug','');
INSERT INTO `wp_postmeta` VALUES (149,37,'_wp_trash_meta_status','draft');
INSERT INTO `wp_postmeta` VALUES (150,37,'_wp_trash_meta_time','1604192273');
INSERT INTO `wp_postmeta` VALUES (151,37,'_wp_desired_post_slug','');
INSERT INTO `wp_postmeta` VALUES (152,72,'_edit_lock','1604192353:1');
INSERT INTO `wp_postmeta` VALUES (153,74,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (154,74,'_wp_trash_meta_time','1604192600');
INSERT INTO `wp_postmeta` VALUES (155,75,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (156,75,'_wp_trash_meta_time','1604192649');
INSERT INTO `wp_postmeta` VALUES (157,76,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (158,76,'_wp_trash_meta_time','1604192696');
INSERT INTO `wp_postmeta` VALUES (159,72,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (160,72,'_wp_trash_meta_time','1604192746');
INSERT INTO `wp_postmeta` VALUES (161,72,'_wp_desired_post_slug','comments');
INSERT INTO `wp_postmeta` VALUES (162,77,'_edit_lock','1604195064:1');
INSERT INTO `wp_postmeta` VALUES (163,79,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (164,79,'_wp_trash_meta_time','1604194700');
INSERT INTO `wp_postmeta` VALUES (165,80,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (166,80,'_wp_trash_meta_time','1604195095');
INSERT INTO `wp_postmeta` VALUES (167,77,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (168,77,'_wp_trash_meta_time','1604195208');
INSERT INTO `wp_postmeta` VALUES (169,77,'_wp_desired_post_slug','comments');
INSERT INTO `wp_postmeta` VALUES (170,81,'_edit_lock','1604195436:1');
INSERT INTO `wp_postmeta` VALUES (173,83,'_edit_lock','1604195510:1');
INSERT INTO `wp_postmeta` VALUES (174,85,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (175,85,'_wp_trash_meta_time','1604195690');
INSERT INTO `wp_postmeta` VALUES (176,83,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (177,83,'_wp_trash_meta_time','1604195728');
INSERT INTO `wp_postmeta` VALUES (178,83,'_wp_desired_post_slug','hello');
INSERT INTO `wp_postmeta` VALUES (179,81,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (180,81,'_wp_trash_meta_time','1604195740');
INSERT INTO `wp_postmeta` VALUES (181,81,'_wp_desired_post_slug','hello');
INSERT INTO `wp_postmeta` VALUES (190,94,'_edit_lock','1604263667:1');
INSERT INTO `wp_postmeta` VALUES (191,94,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (192,94,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (194,104,'_edit_lock','1604264087:1');
INSERT INTO `wp_postmeta` VALUES (200,110,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (201,110,'_wp_trash_meta_time','1604262726');
INSERT INTO `wp_postmeta` VALUES (202,112,'_edit_lock','1604263193:1');
INSERT INTO `wp_postmeta` VALUES (203,114,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (204,114,'_wp_trash_meta_time','1604263435');
INSERT INTO `wp_postmeta` VALUES (205,112,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (206,112,'_wp_trash_meta_time','1604263488');
INSERT INTO `wp_postmeta` VALUES (207,112,'_wp_desired_post_slug','index-php');
INSERT INTO `wp_postmeta` VALUES (210,104,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (211,104,'_wp_trash_meta_time','1604263761');
INSERT INTO `wp_postmeta` VALUES (212,104,'_wp_desired_post_slug','104-2');
INSERT INTO `wp_postmeta` VALUES (213,94,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (214,94,'_wp_trash_meta_time','1604263824');
INSERT INTO `wp_postmeta` VALUES (215,94,'_wp_desired_post_slug','page-php');
INSERT INTO `wp_postmeta` VALUES (216,116,'_edit_lock','1604887288:1');
INSERT INTO `wp_postmeta` VALUES (217,116,'_wp_page_template','page.php');
INSERT INTO `wp_postmeta` VALUES (226,120,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (227,120,'_wp_trash_meta_time','1604268623');
INSERT INTO `wp_postmeta` VALUES (228,122,'_edit_lock','1604268745:1');
INSERT INTO `wp_postmeta` VALUES (237,122,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (238,122,'_wp_trash_meta_time','1604268753');
INSERT INTO `wp_postmeta` VALUES (239,124,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (240,124,'_wp_trash_meta_time','1604268817');
INSERT INTO `wp_postmeta` VALUES (249,125,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (250,125,'_wp_trash_meta_time','1604268866');
INSERT INTO `wp_postmeta` VALUES (251,127,'_edit_lock','1604268984:1');
INSERT INTO `wp_postmeta` VALUES (252,128,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (253,128,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (254,128,'_menu_item_object_id','116');
INSERT INTO `wp_postmeta` VALUES (255,128,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (256,128,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (257,128,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (258,128,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (259,128,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (260,127,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (261,127,'_wp_trash_meta_time','1604269005');
INSERT INTO `wp_postmeta` VALUES (262,129,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (263,129,'_wp_trash_meta_time','1604269013');
INSERT INTO `wp_postmeta` VALUES (264,130,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (265,130,'_wp_trash_meta_time','1604269091');
INSERT INTO `wp_postmeta` VALUES (266,131,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (267,131,'_wp_trash_meta_time','1604269131');
INSERT INTO `wp_postmeta` VALUES (268,132,'_edit_lock','1604534905:1');
INSERT INTO `wp_postmeta` VALUES (272,136,'_edit_lock','1604884791:1');
INSERT INTO `wp_postmeta` VALUES (273,137,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (274,137,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (275,137,'_menu_item_object_id','136');
INSERT INTO `wp_postmeta` VALUES (276,137,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (277,137,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (278,137,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (279,137,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (280,137,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (281,136,'_wp_page_template','single.php');
INSERT INTO `wp_postmeta` VALUES (286,144,'_edit_lock','1604275552:1');
INSERT INTO `wp_postmeta` VALUES (287,145,'_edit_lock','1604275576:1');
INSERT INTO `wp_postmeta` VALUES (288,146,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (289,146,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (290,146,'_menu_item_object_id','145');
INSERT INTO `wp_postmeta` VALUES (291,146,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (292,146,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (293,146,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (294,146,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (295,146,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (296,144,'_wp_trash_meta_status','draft');
INSERT INTO `wp_postmeta` VALUES (297,144,'_wp_trash_meta_time','1604275702');
INSERT INTO `wp_postmeta` VALUES (298,144,'_wp_desired_post_slug','');
INSERT INTO `wp_postmeta` VALUES (299,145,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (300,145,'_wp_trash_meta_time','1604275729');
INSERT INTO `wp_postmeta` VALUES (301,145,'_wp_desired_post_slug','search-php');
INSERT INTO `wp_postmeta` VALUES (302,149,'_edit_lock','1604437824:1');
INSERT INTO `wp_postmeta` VALUES (303,150,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (304,150,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (305,150,'_menu_item_object_id','149');
INSERT INTO `wp_postmeta` VALUES (306,150,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (307,150,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (308,150,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (309,150,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (310,150,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (311,149,'_wp_page_template','search.php');
INSERT INTO `wp_postmeta` VALUES (317,132,'_wp_old_slug','http-cmsproject-local-single-page');
INSERT INTO `wp_postmeta` VALUES (318,154,'_edit_lock','1604285154:1');
INSERT INTO `wp_postmeta` VALUES (319,155,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (320,155,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (321,155,'_menu_item_object_id','154');
INSERT INTO `wp_postmeta` VALUES (322,155,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (323,155,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (324,155,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (325,155,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (326,155,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (327,154,'_wp_page_template','comments1.php');
INSERT INTO `wp_postmeta` VALUES (328,158,'_edit_lock','1604285218:1');
INSERT INTO `wp_postmeta` VALUES (329,159,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (330,159,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (331,159,'_menu_item_object_id','158');
INSERT INTO `wp_postmeta` VALUES (332,159,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (333,159,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (334,159,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (335,159,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (336,159,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (337,158,'_wp_page_template','comments1.php');
INSERT INTO `wp_postmeta` VALUES (338,158,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (339,158,'_wp_trash_meta_time','1604285423');
INSERT INTO `wp_postmeta` VALUES (340,158,'_wp_desired_post_slug','comments');
INSERT INTO `wp_postmeta` VALUES (341,154,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (342,154,'_wp_trash_meta_time','1604285429');
INSERT INTO `wp_postmeta` VALUES (343,154,'_wp_desired_post_slug','comments-php');
INSERT INTO `wp_postmeta` VALUES (344,154,'_wp_trash_meta_comments_status','a:1:{i:10;s:1:\"0\";}');
INSERT INTO `wp_postmeta` VALUES (345,161,'_edit_lock','1604285901:1');
INSERT INTO `wp_postmeta` VALUES (346,162,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (347,162,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (348,162,'_menu_item_object_id','161');
INSERT INTO `wp_postmeta` VALUES (349,162,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (350,162,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (351,162,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (352,162,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (353,162,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (354,161,'_wp_page_template','comments1.php');
INSERT INTO `wp_postmeta` VALUES (355,161,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (356,161,'_wp_trash_meta_time','1604286054');
INSERT INTO `wp_postmeta` VALUES (357,161,'_wp_desired_post_slug','comments');
INSERT INTO `wp_postmeta` VALUES (358,165,'_edit_lock','1604532869:1');
INSERT INTO `wp_postmeta` VALUES (359,166,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (360,166,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (361,166,'_menu_item_object_id','165');
INSERT INTO `wp_postmeta` VALUES (362,166,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (363,166,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (364,166,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (365,166,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (366,166,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (367,165,'_wp_page_template','comments1.php');
INSERT INTO `wp_postmeta` VALUES (368,174,'_edit_lock','1604369682:1');
INSERT INTO `wp_postmeta` VALUES (369,175,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (370,175,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (371,175,'_menu_item_object_id','174');
INSERT INTO `wp_postmeta` VALUES (372,175,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (373,175,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (374,175,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (375,175,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (376,175,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (377,174,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (378,174,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (379,174,'_wp_trash_meta_time','1604370449');
INSERT INTO `wp_postmeta` VALUES (380,174,'_wp_desired_post_slug','search-2');
INSERT INTO `wp_postmeta` VALUES (381,179,'_edit_lock','1604373820:1');
INSERT INTO `wp_postmeta` VALUES (382,180,'_edit_lock','1604373861:1');
INSERT INTO `wp_postmeta` VALUES (383,181,'_edit_lock','1604437681:1');
INSERT INTO `wp_postmeta` VALUES (384,182,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (385,182,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (386,182,'_menu_item_object_id','181');
INSERT INTO `wp_postmeta` VALUES (387,182,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (388,182,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (389,182,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (390,182,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (391,182,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (392,181,'_wp_page_template','404.php');
INSERT INTO `wp_postmeta` VALUES (393,184,'_edit_lock','1604437734:1');
INSERT INTO `wp_postmeta` VALUES (394,185,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (395,185,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (396,185,'_menu_item_object_id','184');
INSERT INTO `wp_postmeta` VALUES (397,185,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (398,185,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (399,185,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (400,185,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (401,185,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (402,184,'_wp_page_template','index.php');
INSERT INTO `wp_postmeta` VALUES (403,188,'_edit_lock','1604536585:1');
INSERT INTO `wp_postmeta` VALUES (404,189,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (405,189,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (406,189,'_menu_item_object_id','188');
INSERT INTO `wp_postmeta` VALUES (407,189,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (408,189,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (409,189,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (410,189,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (411,189,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (412,116,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (413,191,'_edit_lock','1604437888:1');
INSERT INTO `wp_postmeta` VALUES (416,193,'_edit_lock','1604441829:1');
INSERT INTO `wp_postmeta` VALUES (417,194,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (418,194,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (419,194,'_menu_item_object_id','193');
INSERT INTO `wp_postmeta` VALUES (420,194,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (421,194,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (422,194,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (423,194,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (424,194,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (425,193,'_wp_page_template','home.php');
INSERT INTO `wp_postmeta` VALUES (426,201,'_edit_lock','1604442786:1');
INSERT INTO `wp_postmeta` VALUES (435,208,'_edit_lock','1604534226:1');
INSERT INTO `wp_postmeta` VALUES (440,213,'_edit_lock','1604548545:1');
INSERT INTO `wp_postmeta` VALUES (441,214,'_edit_lock','1604631582:1');
INSERT INTO `wp_postmeta` VALUES (442,215,'_edit_lock','1604631718:1');
INSERT INTO `wp_postmeta` VALUES (443,216,'_edit_lock','1604632793:1');
INSERT INTO `wp_postmeta` VALUES (444,217,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (445,217,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (446,217,'_menu_item_object_id','216');
INSERT INTO `wp_postmeta` VALUES (447,217,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (448,217,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (449,217,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (450,217,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (451,217,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (452,216,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (453,219,'_wp_attached_file','2020/11/rosegold.jpg');
INSERT INTO `wp_postmeta` VALUES (454,219,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1080;s:6:\"height\";i:1920;s:4:\"file\";s:20:\"2020/11/rosegold.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"rosegold-169x300.jpg\";s:5:\"width\";i:169;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"rosegold-576x1024.jpg\";s:5:\"width\";i:576;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"rosegold-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"rosegold-768x1365.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1365;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:21:\"rosegold-864x1536.jpg\";s:5:\"width\";i:864;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (455,219,'_wp_attachment_image_alt','Rose Gold Background');
INSERT INTO `wp_postmeta` VALUES (456,220,'_wp_attached_file','2020/11/pink.jpg');
INSERT INTO `wp_postmeta` VALUES (457,220,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1242;s:6:\"height\";i:2089;s:4:\"file\";s:16:\"2020/11/pink.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"pink-178x300.jpg\";s:5:\"width\";i:178;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:17:\"pink-609x1024.jpg\";s:5:\"width\";i:609;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"pink-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"pink-768x1292.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1292;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:17:\"pink-913x1536.jpg\";s:5:\"width\";i:913;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:18:\"pink-1218x2048.jpg\";s:5:\"width\";i:1218;s:6:\"height\";i:2048;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (458,220,'_edit_lock','1604715949:1');
INSERT INTO `wp_postmeta` VALUES (459,220,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (460,221,'_edit_lock','1604805726:1');
INSERT INTO `wp_postmeta` VALUES (461,222,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (462,222,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (463,222,'_menu_item_object_id','221');
INSERT INTO `wp_postmeta` VALUES (464,222,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (465,222,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (466,222,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (467,222,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (468,222,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (469,221,'_wp_page_template','BuyNow.php');
INSERT INTO `wp_postmeta` VALUES (470,224,'_edit_lock','1604806240:1');
INSERT INTO `wp_postmeta` VALUES (471,225,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (472,225,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (473,225,'_menu_item_object_id','224');
INSERT INTO `wp_postmeta` VALUES (474,225,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (475,225,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (476,225,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (477,225,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (478,225,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (479,224,'_wp_page_template','ShareUs.php');
INSERT INTO `wp_postmeta` VALUES (480,227,'_edit_lock','1604808365:1');
INSERT INTO `wp_postmeta` VALUES (481,228,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (482,228,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (483,228,'_menu_item_object_id','227');
INSERT INTO `wp_postmeta` VALUES (484,228,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (485,228,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (486,228,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (487,228,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (488,228,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (489,227,'_wp_page_template','info.php');
INSERT INTO `wp_postmeta` VALUES (490,230,'_edit_lock','1604808536:1');
INSERT INTO `wp_postmeta` VALUES (491,231,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (492,231,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (493,231,'_menu_item_object_id','230');
INSERT INTO `wp_postmeta` VALUES (494,231,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (495,231,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (496,231,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (497,231,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (498,231,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (499,230,'_wp_page_template','services.php');
INSERT INTO `wp_postmeta` VALUES (500,233,'_edit_lock','1604808882:1');
INSERT INTO `wp_postmeta` VALUES (501,234,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (502,234,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (503,234,'_menu_item_object_id','233');
INSERT INTO `wp_postmeta` VALUES (504,234,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (505,234,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (506,234,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (507,234,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (508,234,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (509,233,'_wp_page_template','account.php');
INSERT INTO `wp_postmeta` VALUES (510,236,'_edit_lock','1604809147:1');
INSERT INTO `wp_postmeta` VALUES (511,237,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (512,237,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (513,237,'_menu_item_object_id','236');
INSERT INTO `wp_postmeta` VALUES (514,237,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (515,237,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (516,237,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (517,237,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (518,237,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (519,236,'_wp_page_template','helpandguide.php');
INSERT INTO `wp_postmeta` VALUES (520,239,'_edit_lock','1604809377:1');
INSERT INTO `wp_postmeta` VALUES (521,240,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (522,240,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (523,240,'_menu_item_object_id','239');
INSERT INTO `wp_postmeta` VALUES (524,240,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (525,240,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (526,240,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (527,240,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (528,240,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (529,239,'_wp_page_template','shippingandreturns.php');
INSERT INTO `wp_postmeta` VALUES (530,242,'_edit_lock','1604809627:1');
INSERT INTO `wp_postmeta` VALUES (531,243,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (532,243,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (533,243,'_menu_item_object_id','242');
INSERT INTO `wp_postmeta` VALUES (534,243,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (535,243,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (536,243,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (537,243,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (538,243,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (539,242,'_wp_page_template','FAQ.php');
INSERT INTO `wp_postmeta` VALUES (540,220,'_wp_attachment_image_alt','smile background');
INSERT INTO `wp_postmeta` VALUES (543,65,'_wp_attachment_image_alt','Make work fun and play poster');
INSERT INTO `wp_postmeta` VALUES (544,29,'_wp_attachment_image_alt','Make work fun and play poster');
INSERT INTO `wp_postmeta` VALUES (545,64,'_wp_attachment_image_alt','Silence is golden poster');
INSERT INTO `wp_postmeta` VALUES (546,30,'_wp_attachment_image_alt','Silence is golden poster');
INSERT INTO `wp_postmeta` VALUES (548,28,'_wp_attachment_image_alt','Poster Print Muse');
INSERT INTO `wp_postmeta` VALUES (550,31,'_wp_attachment_image_alt','boy and girl slide 1');
INSERT INTO `wp_postmeta` VALUES (551,24,'_wp_attachment_image_alt','logo of quotes');
INSERT INTO `wp_postmeta` VALUES (552,19,'_wp_attachment_image_alt','banner smiley bear');
INSERT INTO `wp_postmeta` VALUES (553,20,'_wp_attachment_image_alt','hands');
INSERT INTO `wp_postmeta` VALUES (554,214,'_wp_trash_meta_status','draft');
INSERT INTO `wp_postmeta` VALUES (555,214,'_wp_trash_meta_time','1604812386');
INSERT INTO `wp_postmeta` VALUES (556,214,'_wp_desired_post_slug','');
INSERT INTO `wp_postmeta` VALUES (557,216,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (558,216,'_wp_trash_meta_time','1604812392');
INSERT INTO `wp_postmeta` VALUES (559,216,'_wp_desired_post_slug','love-quotes');
INSERT INTO `wp_postmeta` VALUES (560,246,'_edit_lock','1604812291:1');
INSERT INTO `wp_postmeta` VALUES (561,247,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (562,247,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (563,247,'_menu_item_object_id','246');
INSERT INTO `wp_postmeta` VALUES (564,247,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (565,247,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (566,247,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (567,247,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (568,247,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (569,246,'_wp_page_template','lovequotes.php');
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
) ENGINE=InnoDB AUTO_INCREMENT=251 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_posts`
--

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES (1,1,'2020-10-26 22:15:13','2020-10-26 22:15:13','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Hello world!','','trash','open','open','','hello-world__trashed','','','2020-10-27 00:51:39','2020-10-27 00:51:39','',0,'http://cmsproject.local/?p=1',0,'post','',1);
INSERT INTO `wp_posts` VALUES (2,1,'2020-10-26 22:15:13','2020-10-26 22:15:13','<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://cmsproject.local/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','Sample Page','','trash','closed','open','','sample-page__trashed','','','2020-10-30 21:03:35','2020-10-30 21:03:35','',0,'http://cmsproject.local/?page_id=2',0,'page','',0);
INSERT INTO `wp_posts` VALUES (3,1,'2020-10-26 22:15:13','2020-10-26 22:15:13','<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://cmsproject.local.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->','Privacy Policy','','trash','closed','open','','privacy-policy__trashed','','','2020-10-30 21:03:35','2020-10-30 21:03:35','',0,'http://cmsproject.local/?page_id=3',0,'page','',0);
INSERT INTO `wp_posts` VALUES (11,1,'2020-10-26 21:26:32','2020-10-26 21:26:32','<body>&#13;\n	<div class=\"se-pre-con\">&#13;\n		<div id=\"spinningTextG\"><div id=\"spinningTextG_1\" class=\"spinningTextG\">L</div><div id=\"spinningTextG_2\" class=\"spinningTextG\">o</div><div id=\"spinningTextG_3\" class=\"spinningTextG\">a</div><div id=\"spinningTextG_4\" class=\"spinningTextG\">d</div><div id=\"spinningTextG_5\" class=\"spinningTextG\">i</div><div id=\"spinningTextG_6\" class=\"spinningTextG\">n</div><div id=\"spinningTextG_7\" class=\"spinningTextG\">g</div></div>&#13;\n	</div>&#13;\n	<header id=\"home\">&#13;\n		<div class=\"container\">			&#13;\n			<div class=\"row\">				&#13;\n				<div class=\"col-lg-12 col-md-12 col-sm-12 col-xs-12\">					&#13;\n					<div class=\"logo\">&#13;\n						<a href=\"#home\" data-scroll=\"\"><img src=\"img/logo.png\" alt=\"\"/></a>					&#13;\n					</div>									&#13;\n					<nav class=\"nav-collapse\"> &#13;\n						<ul>     &#13;\n							<li class=\"menu-item active\"><a href=\"#banner\" data-scroll=\"\">HOME</a></li>    &#13;\n							<li class=\"menu-item\"><a href=\"#about\" data-scroll=\"\">ABOUT US</a></li>&#13;\n							<li class=\"menu-item\"><a href=\"#slidenew\" data-scroll=\"\">CATEGORIES</a></li>&#13;\n							<li class=\"menu-item\"><a href=\"#gallery\" data-scroll=\"\">GALLERY</a></li>&#13;\n							<li class=\"menu-item\"><a href=\"#event\" data-scroll=\"\">EVENTS</a></li>&#13;\n							<li class=\"menu-item\"><a href=\"#contact\" data-scroll=\"\">BLOG</a></li>&#13;\n							<li class=\"menu-item\"><a href=\"#contact\" data-scroll=\"\">CONTACT US</a></li>&#13;\n						</ul>&#13;\n					</nav> &#13;\n				</div>&#13;\n			</div>			&#13;\n		</div>&#13;\n	</header>	&#13;\n&#13;\n	<div id=\"banner\">	&#13;\n		<ul class=\"bxslider\">&#13;\n			<li>		&#13;\n				<div class=\"oneslide\">&#13;\n					<img src=\"img/banner1.jpg\" alt=\"\"/>&#13;\n					<div class=\"maincontent\">&#13;\n						<h1 class=\"os-animation\" data-os-animation=\"zoomIn\" data-os-animation-delay=\"0.3s\">SMILE</h1>&#13;\n						<h2 class=\"os-animation\" data-os-animation=\"fadeInRight\" data-os-animation-delay=\"0.4s\">it costs you nothing</h2>&#13;\n					</div>&#13;\n				</div>&#13;\n			</li>&#13;\n			<li>&#13;\n				<div class=\"oneslide\">&#13;\n					<img src=\"img/banner1.jpg\" alt=\"\"/>&#13;\n					<div class=\"maincontent\">&#13;\n						<h1>SMILE</h1>&#13;\n						<h2>it costs you nothing</h2>&#13;\n					</div>&#13;\n				</div>&#13;\n			</li>	&#13;\n			<li>&#13;\n				<div class=\"oneslide\">&#13;\n					<img src=\"img/banner1.jpg\" alt=\"\"/>&#13;\n					<div class=\"maincontent\">&#13;\n						<h1>SMILE</h1>&#13;\n						<h2>it costs you nothing</h2>&#13;\n					</div>&#13;\n				</div>&#13;\n			</li>	&#13;\n			<li>&#13;\n				<div class=\"oneslide\">&#13;\n					<img src=\"img/banner1.jpg\" alt=\"\"/>&#13;\n					<div class=\"maincontent\">&#13;\n						<h1>SMILE</h1>&#13;\n						<h2>it costs you nothing</h2>&#13;\n					</div>&#13;\n				</div>&#13;\n			</li>	&#13;\n			<li>&#13;\n				<div class=\"oneslide\">&#13;\n					<img src=\"img/banner1.jpg\" alt=\"\"/>&#13;\n					<div class=\"maincontent\">&#13;\n						<h1>SMILE</h1>&#13;\n						<h2>it costs you nothing</h2>&#13;\n					</div>&#13;\n				</div>&#13;\n			</li>				&#13;\n		</ul>&#13;\n	</div>&#13;\n&#13;\n	<section id=\"about\">&#13;\n		<div class=\"container\">			&#13;\n			<div class=\"row\">				&#13;\n				<div class=\"col-lg-12 col-md-12 col-sm-12 col-xs-12\">	&#13;\n					<h2 class=\"os-animation\" data-os-animation=\"fadeInLeft\" data-os-animation-delay=\"0.3s\">The most inclusive</h2>&#13;\n					<h3 class=\"os-animation\" data-os-animation=\"fadeInRight\" data-os-animation-delay=\"0.4s\">Free PSD Template</h3>&#13;\n					<p class=\"boldp os-animation\" data-os-animation=\"zoomIn\" data-os-animation-delay=\"0.5s\">Free for commercial and personal use.<br/> You can easily edit its contents and code it for yourself or your client!</p>&#13;\n					<span class=\"line os-animation\" data-os-animation=\"rollIn\" data-os-animation-delay=\"0.6s\"/>&#13;\n					<p class=\"innerp os-animation\" data-os-animation=\"fadeIn\" data-os-animation-delay=\"0.7s\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec eget nisi eget tortor iaculis tristique. Aliquam tincidunt posuere tortor hendrerit elementum. Nunc laoreet lorem a sem auctor fringilla. Pellentesque dignissim accumsan lobortis. Sed pharetra erat vitae dui imperdiet quis commodo orci dapibus.</p>&#13;\n					<p class=\"innerp os-animation\" data-os-animation=\"fadeIn\" data-os-animation-delay=\"0.8s\">Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Fusce at nunc libero. Nam metus lorem, rhoncus ac mattis ornare, blandit vel risus.</p>&#13;\n				</div>&#13;\n			</div>&#13;\n		</div>&#13;\n	</section>&#13;\n&#13;\n	<div id=\"slidenew\">&#13;\n		<ul class=\"bxslider2\">&#13;\n			<li>&#13;\n				<div class=\"container\">			&#13;\n					<div class=\"row\">				&#13;\n						<div class=\"col-lg-6 col-md-6 col-sm-5 col-xs-12\">	&#13;\n							<article class=\"os-animation\" data-os-animation=\"fadeInDown\" data-os-animation-delay=\"0.3s\">&#13;\n								<h3>I love people who make me laugh. I honestly think it’s the thing I like most, to laugh. It cures a multitude of ills. It\'s probably the most important thing in a person.</h3>&#13;\n								<span class=\"lighted\">Audrey Hepburn</span>&#13;\n							</article>&#13;\n						</div>&#13;\n						<div class=\"col-lg-6 col-md-6 col-sm-7 col-xs-12\">	&#13;\n							<img src=\"img/slide1.jpg\" alt=\"\" class=\"os-animation\" data-os-animation=\"fadeInRight\" data-os-animation-delay=\"0.4s\"/>&#13;\n						</div>&#13;\n					</div>&#13;\n				</div>&#13;\n			</li>&#13;\n			<li>&#13;\n				<div class=\"container\">			&#13;\n					<div class=\"row\">				&#13;\n						<div class=\"col-lg-6 col-md-6 col-sm-5 col-xs-12\">	&#13;\n							<article>&#13;\n								<h3>I love people who make me laugh. I honestly think it’s the thing I like most, to laugh. It cures a multitude of ills. It\'s probably the most important thing in a person.</h3>&#13;\n								<span class=\"lighted\">Audrey Hepburn</span>&#13;\n							</article>&#13;\n						</div>&#13;\n						<div class=\"col-lg-6 col-md-6 col-sm-7 col-xs-12\">	&#13;\n							<img src=\"img/slide1.jpg\" alt=\"\"/>&#13;\n						</div>&#13;\n					</div>&#13;\n				</div>&#13;\n			</li>&#13;\n			<li>&#13;\n				<div class=\"container\">			&#13;\n					<div class=\"row\">				&#13;\n						<div class=\"col-lg-6 col-md-6 col-sm-5 col-xs-12\">	&#13;\n							<article>&#13;\n								<h3>I love people who make me laugh. I honestly think it’s the thing I like most, to laugh. It cures a multitude of ills. It\'s probably the most important thing in a person.</h3>&#13;\n								<span class=\"lighted\">Audrey Hepburn</span>&#13;\n							</article>&#13;\n						</div>&#13;\n						<div class=\"col-lg-6 col-md-6 col-sm-7 col-xs-12\">	&#13;\n							<img src=\"img/slide1.jpg\" alt=\"\"/>&#13;\n						</div>&#13;\n					</div>&#13;\n				</div>&#13;\n			</li>&#13;\n			<li>&#13;\n				<div class=\"container\">			&#13;\n					<div class=\"row\">				&#13;\n						<div class=\"col-lg-6 col-md-6 col-sm-5 col-xs-12\">	&#13;\n							<article>&#13;\n								<h3>I love people who make me laugh. I honestly think it’s the thing I like most, to laugh. It cures a multitude of ills. It\'s probably the most important thing in a person.</h3>&#13;\n								<span class=\"lighted\">Audrey Hepburn</span>&#13;\n							</article>&#13;\n						</div>&#13;\n						<div class=\"col-lg-6 col-md-6 col-sm-7 col-xs-12\">	&#13;\n							<img src=\"img/slide1.jpg\" alt=\"\"/>&#13;\n						</div>&#13;\n					</div>&#13;\n				</div>&#13;\n			</li>&#13;\n		</ul>&#13;\n	</div>&#13;\n	<section id=\"category\">&#13;\n		<div class=\"container\">			&#13;\n			<div class=\"row\">				&#13;\n				<div class=\"col-lg-12 col-md-12 col-sm-12 col-xs-12\">&#13;\n					<h3 class=\"os-animation\" data-os-animation=\"zoomIn\" data-os-animation-delay=\"0.3s\">Reasons to be happy</h3>&#13;\n					<span class=\"line os-animation\" data-os-animation=\"rollIn\" data-os-animation-delay=\"0.4s\"/>&#13;\n				</div>&#13;\n			</div>&#13;\n			<div class=\"row\">				&#13;\n				<div class=\"col-lg-12 col-md-12 col-sm-12 col-xs-12\">&#13;\n					<div class=\"clearfix\">&#13;\n						<article class=\"os-animation\" data-os-animation=\"fadeInDown\" data-os-animation-delay=\"0.5s\">&#13;\n							<h4>you are alive</h4>&#13;\n							<p class=\"innerp\">Waking up to see another day is a blessing. Don\'t take it for granted. Make it count and be happy that you\'re alive.</p>&#13;\n							<span class=\"naming\">Anonymous</span>&#13;\n						</article>			&#13;\n						<article class=\"os-animation\" data-os-animation=\"fadeInRight\" data-os-animation-delay=\"0.5s\">&#13;\n							<h4>someone loves you</h4>&#13;\n							<p class=\"innerp\">Someone who really loves you sees what a mess you can be, how moody you can get, how hard you are to handle, but still wants you in their life.</p>&#13;\n							<span class=\"naming\">Anonymous</span>&#13;\n						</article>			&#13;\n						<article class=\"os-animation\" data-os-animation=\"fadeInUp\" data-os-animation-delay=\"0.5s\">&#13;\n							<h4>Enjoy the moment</h4>&#13;\n							<p class=\"innerp\">Sometimes you will never know the true value of a moment until it becomes a memory. </p>&#13;\n							<span class=\"naming\">Anonymous</span>&#13;\n						</article>&#13;\n						<article class=\"os-animation\" data-os-animation=\"fadeInRight\" data-os-animation-delay=\"0.5s\">&#13;\n							<h4>health is wealth</h4>&#13;\n							<p class=\"innerp\">It is health that is real wealth and not pieces of gold and silver. </p>&#13;\n							<span class=\"naming\">Mahatma Gandhi</span>&#13;\n						</article>&#13;\n					</div>&#13;\n					<div>&#13;\n						<button class=\"reason os-animation\" data-os-animation=\"zoomIn\" data-os-animation-delay=\"0.5s\">MORE REASONS</button>&#13;\n					</div>&#13;\n				</div>&#13;\n			</div>&#13;\n		</div>&#13;\n	</section>&#13;\n&#13;\n	<section id=\"event\">&#13;\n		<div class=\"container\">			&#13;\n			<div class=\"row\">				&#13;\n				<div class=\"col-lg-12 col-md-12 col-sm-12 col-xs-12\">&#13;\n					<h3 class=\"os-animation\" data-os-animation=\"zoomIn\" data-os-animation-delay=\"0.3s\">I love you for all that you are,<br/> all that you have been,<br/> and all you\'re yet to be.</h3>&#13;\n					<p class=\"regular os-animation\" data-os-animation=\"fadeInRight\" data-os-animation-delay=\"0.4s\">Quote of the day, from <a class=\"addborder\" href=\"#\">Love Quotes</a></p>&#13;\n				</div>&#13;\n			</div>&#13;\n		</div>&#13;\n	</section>&#13;\n&#13;\n	<section id=\"gallery\">&#13;\n		<div class=\"container\">			&#13;\n			<div class=\"row\">				&#13;\n				<div class=\"col-lg-12 col-md-12 col-sm-12 col-xs-12\">&#13;\n					<h3 class=\"os-animation\" data-os-animation=\"zoomIn\" data-os-animation-delay=\"0.3s\">Buy Poster Prints</h3>&#13;\n					<span class=\"line os-animation\" data-os-animation=\"rollIn\" data-os-animation-delay=\"0.4s\"/>&#13;\n				</div>&#13;\n			</div>&#13;\n			<div class=\"maincontentnew\">&#13;\n				<div class=\"row\">				&#13;\n					<div class=\"col-lg-5 col-md-5 col-sm-5 col-xs-12\">&#13;\n						<div class=\"imgdivleft\">&#13;\n							<img src=\"img/poster1.jpg\" alt=\"\" class=\"os-animation\" data-os-animation=\"pulse\" data-os-animation-delay=\"0.5s\"/>						&#13;\n							<div class=\"innercontent\">&#13;\n								<div class=\"bottom-text\">&#13;\n									<p class=\"innerp\"><a href=\"#\">BUY NOW</a></p>&#13;\n									<p class=\"innerp\"><a href=\"#\">SHARE <i class=\"fa fa-share\" aria-hidden=\"true\"/></a></p>&#13;\n								</div>&#13;\n							</div>&#13;\n						</div>&#13;\n					</div>&#13;\n					<div class=\"col-lg-7 col-md-7 col-sm-7 col-xs-12\">&#13;\n						<div class=\"row\">				&#13;\n							<div class=\"col-lg-12 col-md-12 col-sm-12 col-xs-12\">					&#13;\n								<div class=\"imgdivright\">&#13;\n									<img src=\"img/poster2.jpg\" alt=\"\" class=\"os-animation\" data-os-animation=\"pulse\" data-os-animation-delay=\"0.6s\"/>&#13;\n								</div>&#13;\n							</div>&#13;\n						</div>					&#13;\n						<div class=\"row\">				&#13;\n							<div class=\"col-lg-6 col-md-6 col-sm-6 col-xs-12\">&#13;\n								<div class=\"imgdivrightinner\">					&#13;\n									<img src=\"img/poster3.jpg\" alt=\"\" class=\"os-animation\" data-os-animation=\"pulse\" data-os-animation-delay=\"0.7s\"/>		&#13;\n								</div>				&#13;\n							</div>&#13;\n							<div class=\"col-lg-6 col-md-6 col-sm-6 col-xs-12\">&#13;\n								<div class=\"imgdivrightinner\">					&#13;\n									<img src=\"img/poster4.jpg\" alt=\"\" class=\"os-animation\" data-os-animation=\"pulse\" data-os-animation-delay=\"0.8s\"/>	&#13;\n								</div>				&#13;\n							</div>&#13;\n						</div>&#13;\n					</div>&#13;\n				</div>&#13;\n			</div>&#13;\n			<div class=\"row\">				&#13;\n				<div class=\"col-lg-12 col-md-12 col-sm-12 col-xs-12\">&#13;\n					<button class=\"reason os-animation\" data-os-animation=\"zoomIn\" data-os-animation-delay=\"0.7s\">BROWSE POSTERS</button>&#13;\n				</div>&#13;\n			</div>&#13;\n		</div>&#13;\n	</section>&#13;\n	<div id=\"contact\">&#13;\n		<div class=\"container\">			&#13;\n			<div class=\"row\">				&#13;\n				<div class=\"col-lg-3 col-md-2 col-sm-2 col-xs-6\">&#13;\n					<article class=\"os-animation\" data-os-animation=\"rollIn\" data-os-animation-delay=\"0.3s\">&#13;\n						<h5>BROWSE</h5>&#13;\n						<a href=\"#\">Home</a>&#13;\n						<a href=\"#\">About US</a>&#13;\n						<a href=\"#\">Category</a>&#13;\n						<a href=\"#\">Info</a>&#13;\n						<a href=\"#\">Services</a>&#13;\n					</article>&#13;\n				</div>&#13;\n				<div class=\"col-lg-3 col-md-2 col-sm-2 col-xs-6\">&#13;\n					<article class=\"os-animation\" data-os-animation=\"rollIn\" data-os-animation-delay=\"0.4s\">&#13;\n						<h5>SHOP</h5>&#13;\n						<a href=\"#\">Account</a>&#13;\n						<a href=\"#\">Help &amp; Guide</a>&#13;\n						<a href=\"#\">Shipping &amp; Returns</a>&#13;\n						<a href=\"#\">FAQs</a>&#13;\n					</article>&#13;\n				</div>&#13;\n				<div class=\"col-lg-3 col-md-4 col-sm-4 col-xs-12\">&#13;\n					<article class=\"contactsend os-animation\" data-os-animation=\"rollIn\" data-os-animation-delay=\"0.5s\">&#13;\n						<h5>CONTACT</h5>&#13;\n						<address>&#13;\n							<p class=\"addressp\">Quotes PSD Template<br/> Rudra Street, 12354 Villa<br/> My State - My Country<br/> 987658</p>&#13;\n							<p class=\"addressp\">Phone: + 01 234 567 890<br/> Fax: + 01 234 567 890<br/> graphicsfuel@gmail.com</p>&#13;\n						</address>&#13;\n					</article>&#13;\n				</div>&#13;\n				<div class=\"col-lg-3 col-md-4 col-sm-4 col-xs-12\">&#13;\n					<article class=\"mailsend os-animation\" data-os-animation=\"rollIn\" data-os-animation-delay=\"0.6s\">&#13;\n						<h5>SUBSCRIBE NOW</h5>&#13;\n						<p class=\"addressp\">Get our latest news and product updates daily</p>&#13;\n						<input type=\"email\" name=\"email\" placeholder=\"Email Address\"/>&#13;\n						<button class=\"reason\">SUBSCRIBE</button>&#13;\n					</article>&#13;\n				</div>&#13;\n			</div>&#13;\n		</div>&#13;\n	</div>&#13;\n	<footer>&#13;\n		<div class=\"container\">			&#13;\n			<div class=\"row\">				&#13;\n				<div class=\"col-lg-7 col-md-7 col-sm-7 col-xs-12\">&#13;\n					<p class=\"footerp\">2016 © Copyright - Quotes PSD Templates. All rights reserved.</p>&#13;\n					<p class=\"footerp\">Free Template by <a href=\"https://freetemplates.pro/\">FreeTemplates.pro</a></p>&#13;\n				</div>&#13;\n				<div class=\"col-lg-5 col-md-5 col-sm-5 col-xs-12\">&#13;\n					<div class=\"social\">&#13;\n						<a href=\"#\"><i class=\"fa fa-facebook\" aria-hidden=\"true\"/></a>&#13;\n						<a href=\"#\"><i class=\"fa fa-twitter\" aria-hidden=\"true\"/></a>&#13;\n						<a href=\"#\"><i class=\"fa fa-linkedin\" aria-hidden=\"true\"/></a>&#13;\n						<a href=\"#\"><i class=\"fa fa-youtube-play\" aria-hidden=\"true\"/></a>&#13;\n						<a href=\"#\"><i class=\"fa fa-google-plus\" aria-hidden=\"true\"/></a>&#13;\n						<a href=\"#\"><i class=\"fa fa-pinterest-p\" aria-hidden=\"true\"/></a>&#13;\n						<a href=\"#\"><i class=\"fa fa-instagram\" aria-hidden=\"true\"/></a>&#13;\n						<a href=\"#\"><i class=\"fa fa-envelope\" aria-hidden=\"true\"/></a>&#13;\n					</div>&#13;\n				</div>&#13;\n			</div>&#13;\n		</div>&#13;\n	</footer>&#13;\n&#13;\n	<script src=\"https://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js\"/>&#13;\n	<script type=\"text/javascript\" src=\"js/fixed-responsive-nav.js\"/>	&#13;\n	<script type=\"text/javascript\" src=\"js/script.js\"/>      &#13;\n	<script src=\"js/jquery.bxslider.js\"/>	&#13;\n	<script type=\"text/javascript\" src=\"js/waypoints.min.js\"/>&#13;\n</body>','Quotes','','trash','closed','closed','','5thqtrproject__trashed','','','2020-10-30 21:03:34','2020-10-30 21:03:34','',13,'http://cmsproject.local/5thqtrproject/',0,'page','',0);
INSERT INTO `wp_posts` VALUES (12,1,'2020-10-27 00:20:53','2020-10-27 00:20:53','<body>&#13;\n	<div class=\"se-pre-con\">&#13;\n		<div id=\"spinningTextG\"><div id=\"spinningTextG_1\" class=\"spinningTextG\">L</div><div id=\"spinningTextG_2\" class=\"spinningTextG\">o</div><div id=\"spinningTextG_3\" class=\"spinningTextG\">a</div><div id=\"spinningTextG_4\" class=\"spinningTextG\">d</div><div id=\"spinningTextG_5\" class=\"spinningTextG\">i</div><div id=\"spinningTextG_6\" class=\"spinningTextG\">n</div><div id=\"spinningTextG_7\" class=\"spinningTextG\">g</div></div>&#13;\n	</div>&#13;\n	<header id=\"home\">&#13;\n		<div class=\"container\">			&#13;\n			<div class=\"row\">				&#13;\n				<div class=\"col-lg-12 col-md-12 col-sm-12 col-xs-12\">					&#13;\n					<div class=\"logo\">&#13;\n						<a href=\"#home\" data-scroll=\"\"><img src=\"img/logo.png\" alt=\"\"/></a>					&#13;\n					</div>									&#13;\n					<nav class=\"nav-collapse\"> &#13;\n						<ul>     &#13;\n							<li class=\"menu-item active\"><a href=\"#banner\" data-scroll=\"\">HOME</a></li>    &#13;\n							<li class=\"menu-item\"><a href=\"#about\" data-scroll=\"\">ABOUT US</a></li>&#13;\n							<li class=\"menu-item\"><a href=\"#slidenew\" data-scroll=\"\">CATEGORIES</a></li>&#13;\n							<li class=\"menu-item\"><a href=\"#gallery\" data-scroll=\"\">GALLERY</a></li>&#13;\n							<li class=\"menu-item\"><a href=\"#event\" data-scroll=\"\">EVENTS</a></li>&#13;\n							<li class=\"menu-item\"><a href=\"#contact\" data-scroll=\"\">BLOG</a></li>&#13;\n							<li class=\"menu-item\"><a href=\"#contact\" data-scroll=\"\">CONTACT US</a></li>&#13;\n						</ul>&#13;\n					</nav> &#13;\n				</div>&#13;\n			</div>			&#13;\n		</div>&#13;\n	</header>	&#13;\n&#13;\n	<div id=\"banner\">	&#13;\n		<ul class=\"bxslider\">&#13;\n			<li>		&#13;\n				<div class=\"oneslide\">&#13;\n					<img src=\"img/banner1.jpg\" alt=\"\"/>&#13;\n					<div class=\"maincontent\">&#13;\n						<h1 class=\"os-animation\" data-os-animation=\"zoomIn\" data-os-animation-delay=\"0.3s\">SMILE</h1>&#13;\n						<h2 class=\"os-animation\" data-os-animation=\"fadeInRight\" data-os-animation-delay=\"0.4s\">it costs you nothing</h2>&#13;\n					</div>&#13;\n				</div>&#13;\n			</li>&#13;\n			<li>&#13;\n				<div class=\"oneslide\">&#13;\n					<img src=\"img/banner1.jpg\" alt=\"\"/>&#13;\n					<div class=\"maincontent\">&#13;\n						<h1>SMILE</h1>&#13;\n						<h2>it costs you nothing</h2>&#13;\n					</div>&#13;\n				</div>&#13;\n			</li>	&#13;\n			<li>&#13;\n				<div class=\"oneslide\">&#13;\n					<img src=\"img/banner1.jpg\" alt=\"\"/>&#13;\n					<div class=\"maincontent\">&#13;\n						<h1>SMILE</h1>&#13;\n						<h2>it costs you nothing</h2>&#13;\n					</div>&#13;\n				</div>&#13;\n			</li>	&#13;\n			<li>&#13;\n				<div class=\"oneslide\">&#13;\n					<img src=\"img/banner1.jpg\" alt=\"\"/>&#13;\n					<div class=\"maincontent\">&#13;\n						<h1>SMILE</h1>&#13;\n						<h2>it costs you nothing</h2>&#13;\n					</div>&#13;\n				</div>&#13;\n			</li>	&#13;\n			<li>&#13;\n				<div class=\"oneslide\">&#13;\n					<img src=\"img/banner1.jpg\" alt=\"\"/>&#13;\n					<div class=\"maincontent\">&#13;\n						<h1>SMILE</h1>&#13;\n						<h2>it costs you nothing</h2>&#13;\n					</div>&#13;\n				</div>&#13;\n			</li>				&#13;\n		</ul>&#13;\n	</div>&#13;\n&#13;\n	<section id=\"about\">&#13;\n		<div class=\"container\">			&#13;\n			<div class=\"row\">				&#13;\n				<div class=\"col-lg-12 col-md-12 col-sm-12 col-xs-12\">	&#13;\n					<h2 class=\"os-animation\" data-os-animation=\"fadeInLeft\" data-os-animation-delay=\"0.3s\">The most inclusive</h2>&#13;\n					<h3 class=\"os-animation\" data-os-animation=\"fadeInRight\" data-os-animation-delay=\"0.4s\">Free PSD Template</h3>&#13;\n					<p class=\"boldp os-animation\" data-os-animation=\"zoomIn\" data-os-animation-delay=\"0.5s\">Free for commercial and personal use.<br/> You can easily edit its contents and code it for yourself or your client!</p>&#13;\n					<span class=\"line os-animation\" data-os-animation=\"rollIn\" data-os-animation-delay=\"0.6s\"/>&#13;\n					<p class=\"innerp os-animation\" data-os-animation=\"fadeIn\" data-os-animation-delay=\"0.7s\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec eget nisi eget tortor iaculis tristique. Aliquam tincidunt posuere tortor hendrerit elementum. Nunc laoreet lorem a sem auctor fringilla. Pellentesque dignissim accumsan lobortis. Sed pharetra erat vitae dui imperdiet quis commodo orci dapibus.</p>&#13;\n					<p class=\"innerp os-animation\" data-os-animation=\"fadeIn\" data-os-animation-delay=\"0.8s\">Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Fusce at nunc libero. Nam metus lorem, rhoncus ac mattis ornare, blandit vel risus.</p>&#13;\n				</div>&#13;\n			</div>&#13;\n		</div>&#13;\n	</section>&#13;\n&#13;\n	<div id=\"slidenew\">&#13;\n		<ul class=\"bxslider2\">&#13;\n			<li>&#13;\n				<div class=\"container\">			&#13;\n					<div class=\"row\">				&#13;\n						<div class=\"col-lg-6 col-md-6 col-sm-5 col-xs-12\">	&#13;\n							<article class=\"os-animation\" data-os-animation=\"fadeInDown\" data-os-animation-delay=\"0.3s\">&#13;\n								<h3>I love people who make me laugh. I honestly think it’s the thing I like most, to laugh. It cures a multitude of ills. It\'s probably the most important thing in a person.</h3>&#13;\n								<span class=\"lighted\">Audrey Hepburn</span>&#13;\n							</article>&#13;\n						</div>&#13;\n						<div class=\"col-lg-6 col-md-6 col-sm-7 col-xs-12\">	&#13;\n							<img src=\"img/slide1.jpg\" alt=\"\" class=\"os-animation\" data-os-animation=\"fadeInRight\" data-os-animation-delay=\"0.4s\"/>&#13;\n						</div>&#13;\n					</div>&#13;\n				</div>&#13;\n			</li>&#13;\n			<li>&#13;\n				<div class=\"container\">			&#13;\n					<div class=\"row\">				&#13;\n						<div class=\"col-lg-6 col-md-6 col-sm-5 col-xs-12\">	&#13;\n							<article>&#13;\n								<h3>I love people who make me laugh. I honestly think it’s the thing I like most, to laugh. It cures a multitude of ills. It\'s probably the most important thing in a person.</h3>&#13;\n								<span class=\"lighted\">Audrey Hepburn</span>&#13;\n							</article>&#13;\n						</div>&#13;\n						<div class=\"col-lg-6 col-md-6 col-sm-7 col-xs-12\">	&#13;\n							<img src=\"img/slide1.jpg\" alt=\"\"/>&#13;\n						</div>&#13;\n					</div>&#13;\n				</div>&#13;\n			</li>&#13;\n			<li>&#13;\n				<div class=\"container\">			&#13;\n					<div class=\"row\">				&#13;\n						<div class=\"col-lg-6 col-md-6 col-sm-5 col-xs-12\">	&#13;\n							<article>&#13;\n								<h3>I love people who make me laugh. I honestly think it’s the thing I like most, to laugh. It cures a multitude of ills. It\'s probably the most important thing in a person.</h3>&#13;\n								<span class=\"lighted\">Audrey Hepburn</span>&#13;\n							</article>&#13;\n						</div>&#13;\n						<div class=\"col-lg-6 col-md-6 col-sm-7 col-xs-12\">	&#13;\n							<img src=\"img/slide1.jpg\" alt=\"\"/>&#13;\n						</div>&#13;\n					</div>&#13;\n				</div>&#13;\n			</li>&#13;\n			<li>&#13;\n				<div class=\"container\">			&#13;\n					<div class=\"row\">				&#13;\n						<div class=\"col-lg-6 col-md-6 col-sm-5 col-xs-12\">	&#13;\n							<article>&#13;\n								<h3>I love people who make me laugh. I honestly think it’s the thing I like most, to laugh. It cures a multitude of ills. It\'s probably the most important thing in a person.</h3>&#13;\n								<span class=\"lighted\">Audrey Hepburn</span>&#13;\n							</article>&#13;\n						</div>&#13;\n						<div class=\"col-lg-6 col-md-6 col-sm-7 col-xs-12\">	&#13;\n							<img src=\"img/slide1.jpg\" alt=\"\"/>&#13;\n						</div>&#13;\n					</div>&#13;\n				</div>&#13;\n			</li>&#13;\n		</ul>&#13;\n	</div>&#13;\n	<section id=\"category\">&#13;\n		<div class=\"container\">			&#13;\n			<div class=\"row\">				&#13;\n				<div class=\"col-lg-12 col-md-12 col-sm-12 col-xs-12\">&#13;\n					<h3 class=\"os-animation\" data-os-animation=\"zoomIn\" data-os-animation-delay=\"0.3s\">Reasons to be happy</h3>&#13;\n					<span class=\"line os-animation\" data-os-animation=\"rollIn\" data-os-animation-delay=\"0.4s\"/>&#13;\n				</div>&#13;\n			</div>&#13;\n			<div class=\"row\">				&#13;\n				<div class=\"col-lg-12 col-md-12 col-sm-12 col-xs-12\">&#13;\n					<div class=\"clearfix\">&#13;\n						<article class=\"os-animation\" data-os-animation=\"fadeInDown\" data-os-animation-delay=\"0.5s\">&#13;\n							<h4>you are alive</h4>&#13;\n							<p class=\"innerp\">Waking up to see another day is a blessing. Don\'t take it for granted. Make it count and be happy that you\'re alive.</p>&#13;\n							<span class=\"naming\">Anonymous</span>&#13;\n						</article>			&#13;\n						<article class=\"os-animation\" data-os-animation=\"fadeInRight\" data-os-animation-delay=\"0.5s\">&#13;\n							<h4>someone loves you</h4>&#13;\n							<p class=\"innerp\">Someone who really loves you sees what a mess you can be, how moody you can get, how hard you are to handle, but still wants you in their life.</p>&#13;\n							<span class=\"naming\">Anonymous</span>&#13;\n						</article>			&#13;\n						<article class=\"os-animation\" data-os-animation=\"fadeInUp\" data-os-animation-delay=\"0.5s\">&#13;\n							<h4>Enjoy the moment</h4>&#13;\n							<p class=\"innerp\">Sometimes you will never know the true value of a moment until it becomes a memory. </p>&#13;\n							<span class=\"naming\">Anonymous</span>&#13;\n						</article>&#13;\n						<article class=\"os-animation\" data-os-animation=\"fadeInRight\" data-os-animation-delay=\"0.5s\">&#13;\n							<h4>health is wealth</h4>&#13;\n							<p class=\"innerp\">It is health that is real wealth and not pieces of gold and silver. </p>&#13;\n							<span class=\"naming\">Mahatma Gandhi</span>&#13;\n						</article>&#13;\n					</div>&#13;\n					<div>&#13;\n						<button class=\"reason os-animation\" data-os-animation=\"zoomIn\" data-os-animation-delay=\"0.5s\">MORE REASONS</button>&#13;\n					</div>&#13;\n				</div>&#13;\n			</div>&#13;\n		</div>&#13;\n	</section>&#13;\n&#13;\n	<section id=\"event\">&#13;\n		<div class=\"container\">			&#13;\n			<div class=\"row\">				&#13;\n				<div class=\"col-lg-12 col-md-12 col-sm-12 col-xs-12\">&#13;\n					<h3 class=\"os-animation\" data-os-animation=\"zoomIn\" data-os-animation-delay=\"0.3s\">I love you for all that you are,<br/> all that you have been,<br/> and all you\'re yet to be.</h3>&#13;\n					<p class=\"regular os-animation\" data-os-animation=\"fadeInRight\" data-os-animation-delay=\"0.4s\">Quote of the day, from <a class=\"addborder\" href=\"#\">Love Quotes</a></p>&#13;\n				</div>&#13;\n			</div>&#13;\n		</div>&#13;\n	</section>&#13;\n&#13;\n	<section id=\"gallery\">&#13;\n		<div class=\"container\">			&#13;\n			<div class=\"row\">				&#13;\n				<div class=\"col-lg-12 col-md-12 col-sm-12 col-xs-12\">&#13;\n					<h3 class=\"os-animation\" data-os-animation=\"zoomIn\" data-os-animation-delay=\"0.3s\">Buy Poster Prints</h3>&#13;\n					<span class=\"line os-animation\" data-os-animation=\"rollIn\" data-os-animation-delay=\"0.4s\"/>&#13;\n				</div>&#13;\n			</div>&#13;\n			<div class=\"maincontentnew\">&#13;\n				<div class=\"row\">				&#13;\n					<div class=\"col-lg-5 col-md-5 col-sm-5 col-xs-12\">&#13;\n						<div class=\"imgdivleft\">&#13;\n							<img src=\"img/poster1.jpg\" alt=\"\" class=\"os-animation\" data-os-animation=\"pulse\" data-os-animation-delay=\"0.5s\"/>						&#13;\n							<div class=\"innercontent\">&#13;\n								<div class=\"bottom-text\">&#13;\n									<p class=\"innerp\"><a href=\"#\">BUY NOW</a></p>&#13;\n									<p class=\"innerp\"><a href=\"#\">SHARE <i class=\"fa fa-share\" aria-hidden=\"true\"/></a></p>&#13;\n								</div>&#13;\n							</div>&#13;\n						</div>&#13;\n					</div>&#13;\n					<div class=\"col-lg-7 col-md-7 col-sm-7 col-xs-12\">&#13;\n						<div class=\"row\">				&#13;\n							<div class=\"col-lg-12 col-md-12 col-sm-12 col-xs-12\">					&#13;\n								<div class=\"imgdivright\">&#13;\n									<img src=\"img/poster2.jpg\" alt=\"\" class=\"os-animation\" data-os-animation=\"pulse\" data-os-animation-delay=\"0.6s\"/>&#13;\n								</div>&#13;\n							</div>&#13;\n						</div>					&#13;\n						<div class=\"row\">				&#13;\n							<div class=\"col-lg-6 col-md-6 col-sm-6 col-xs-12\">&#13;\n								<div class=\"imgdivrightinner\">					&#13;\n									<img src=\"img/poster3.jpg\" alt=\"\" class=\"os-animation\" data-os-animation=\"pulse\" data-os-animation-delay=\"0.7s\"/>		&#13;\n								</div>				&#13;\n							</div>&#13;\n							<div class=\"col-lg-6 col-md-6 col-sm-6 col-xs-12\">&#13;\n								<div class=\"imgdivrightinner\">					&#13;\n									<img src=\"img/poster4.jpg\" alt=\"\" class=\"os-animation\" data-os-animation=\"pulse\" data-os-animation-delay=\"0.8s\"/>	&#13;\n								</div>				&#13;\n							</div>&#13;\n						</div>&#13;\n					</div>&#13;\n				</div>&#13;\n			</div>&#13;\n			<div class=\"row\">				&#13;\n				<div class=\"col-lg-12 col-md-12 col-sm-12 col-xs-12\">&#13;\n					<button class=\"reason os-animation\" data-os-animation=\"zoomIn\" data-os-animation-delay=\"0.7s\">BROWSE POSTERS</button>&#13;\n				</div>&#13;\n			</div>&#13;\n		</div>&#13;\n	</section>&#13;\n	<div id=\"contact\">&#13;\n		<div class=\"container\">			&#13;\n			<div class=\"row\">				&#13;\n				<div class=\"col-lg-3 col-md-2 col-sm-2 col-xs-6\">&#13;\n					<article class=\"os-animation\" data-os-animation=\"rollIn\" data-os-animation-delay=\"0.3s\">&#13;\n						<h5>BROWSE</h5>&#13;\n						<a href=\"#\">Home</a>&#13;\n						<a href=\"#\">About US</a>&#13;\n						<a href=\"#\">Category</a>&#13;\n						<a href=\"#\">Info</a>&#13;\n						<a href=\"#\">Services</a>&#13;\n					</article>&#13;\n				</div>&#13;\n				<div class=\"col-lg-3 col-md-2 col-sm-2 col-xs-6\">&#13;\n					<article class=\"os-animation\" data-os-animation=\"rollIn\" data-os-animation-delay=\"0.4s\">&#13;\n						<h5>SHOP</h5>&#13;\n						<a href=\"#\">Account</a>&#13;\n						<a href=\"#\">Help &amp; Guide</a>&#13;\n						<a href=\"#\">Shipping &amp; Returns</a>&#13;\n						<a href=\"#\">FAQs</a>&#13;\n					</article>&#13;\n				</div>&#13;\n				<div class=\"col-lg-3 col-md-4 col-sm-4 col-xs-12\">&#13;\n					<article class=\"contactsend os-animation\" data-os-animation=\"rollIn\" data-os-animation-delay=\"0.5s\">&#13;\n						<h5>CONTACT</h5>&#13;\n						<address>&#13;\n							<p class=\"addressp\">Quotes PSD Template<br/> Rudra Street, 12354 Villa<br/> My State - My Country<br/> 987658</p>&#13;\n							<p class=\"addressp\">Phone: + 01 234 567 890<br/> Fax: + 01 234 567 890<br/> graphicsfuel@gmail.com</p>&#13;\n						</address>&#13;\n					</article>&#13;\n				</div>&#13;\n				<div class=\"col-lg-3 col-md-4 col-sm-4 col-xs-12\">&#13;\n					<article class=\"mailsend os-animation\" data-os-animation=\"rollIn\" data-os-animation-delay=\"0.6s\">&#13;\n						<h5>SUBSCRIBE NOW</h5>&#13;\n						<p class=\"addressp\">Get our latest news and product updates daily</p>&#13;\n						<input type=\"email\" name=\"email\" placeholder=\"Email Address\"/>&#13;\n						<button class=\"reason\">SUBSCRIBE</button>&#13;\n					</article>&#13;\n				</div>&#13;\n			</div>&#13;\n		</div>&#13;\n	</div>&#13;\n	<footer>&#13;\n		<div class=\"container\">			&#13;\n			<div class=\"row\">				&#13;\n				<div class=\"col-lg-7 col-md-7 col-sm-7 col-xs-12\">&#13;\n					<p class=\"footerp\">2016 © Copyright - Quotes PSD Templates. All rights reserved.</p>&#13;\n					<p class=\"footerp\">Free Template by <a href=\"https://freetemplates.pro/\">FreeTemplates.pro</a></p>&#13;\n				</div>&#13;\n				<div class=\"col-lg-5 col-md-5 col-sm-5 col-xs-12\">&#13;\n					<div class=\"social\">&#13;\n						<a href=\"#\"><i class=\"fa fa-facebook\" aria-hidden=\"true\"/></a>&#13;\n						<a href=\"#\"><i class=\"fa fa-twitter\" aria-hidden=\"true\"/></a>&#13;\n						<a href=\"#\"><i class=\"fa fa-linkedin\" aria-hidden=\"true\"/></a>&#13;\n						<a href=\"#\"><i class=\"fa fa-youtube-play\" aria-hidden=\"true\"/></a>&#13;\n						<a href=\"#\"><i class=\"fa fa-google-plus\" aria-hidden=\"true\"/></a>&#13;\n						<a href=\"#\"><i class=\"fa fa-pinterest-p\" aria-hidden=\"true\"/></a>&#13;\n						<a href=\"#\"><i class=\"fa fa-instagram\" aria-hidden=\"true\"/></a>&#13;\n						<a href=\"#\"><i class=\"fa fa-envelope\" aria-hidden=\"true\"/></a>&#13;\n					</div>&#13;\n				</div>&#13;\n			</div>&#13;\n		</div>&#13;\n	</footer>&#13;\n&#13;\n	<script src=\"https://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js\"/>&#13;\n	<script type=\"text/javascript\" src=\"js/fixed-responsive-nav.js\"/>	&#13;\n	<script type=\"text/javascript\" src=\"js/script.js\"/>      &#13;\n	<script src=\"js/jquery.bxslider.js\"/>	&#13;\n	<script type=\"text/javascript\" src=\"js/waypoints.min.js\"/>&#13;\n</body>','Quotes','','inherit','closed','closed','','11-revision-v1','','','2020-10-27 00:20:53','2020-10-27 00:20:53','',11,'http://cmsproject.local/11-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (13,1,'2020-10-27 00:19:20','2020-10-27 00:19:20','<!-- placeholder -->','Cmsproject','','trash','closed','closed','','cmsproject__trashed','','','2020-10-30 21:03:34','2020-10-30 21:03:34','',0,'http://cmsproject.local/cmsproject/',0,'page','',0);
INSERT INTO `wp_posts` VALUES (14,1,'2020-10-26 21:26:32','2020-10-26 21:26:32','  Loading       <a href=\"#home\" data-scroll=\"\"><img src=\"img/logo.png\" alt=\"\"/></a>    <ul>      <li class=\"menu-item active\"><a href=\"#banner\" data-scroll=\"\">HOME</a></li>     <li class=\"menu-item\"><a href=\"#about\" data-scroll=\"\">ABOUT US</a></li> <li class=\"menu-item\"><a href=\"#slidenew\" data-scroll=\"\">CATEGORIES</a></li> <li class=\"menu-item\"><a href=\"#gallery\" data-scroll=\"\">GALLERY</a></li> <li class=\"menu-item\"><a href=\"#event\" data-scroll=\"\">EVENTS</a></li> <li class=\"menu-item\"><a href=\"#contact\" data-scroll=\"\">BLOG</a></li> <li class=\"menu-item\"><a href=\"#contact\" data-scroll=\"\">CONTACT US</a></li> </ul>         <ul class=\"bxslider\"> <li>  <img src=\"img/banner1.jpg\" alt=\"\"/>  SMILE <h2 class=\"os-animation\" data-os-animation=\"fadeInRight\" data-os-animation-delay=\"0.4s\">it costs you nothing</h2>   </li> <li>  <img src=\"img/banner1.jpg\" alt=\"\"/>  SMILE <h2>it costs you nothing</h2>   </li> <li>  <img src=\"img/banner1.jpg\" alt=\"\"/>  SMILE <h2>it costs you nothing</h2>   </li> <li>  <img src=\"img/banner1.jpg\" alt=\"\"/>  SMILE <h2>it costs you nothing</h2>   </li> <li>  <img src=\"img/banner1.jpg\" alt=\"\"/>  SMILE <h2>it costs you nothing</h2>   </li> </ul>       <h2 class=\"os-animation\" data-os-animation=\"fadeInLeft\" data-os-animation-delay=\"0.3s\">The most inclusive</h2> <h3 class=\"os-animation\" data-os-animation=\"fadeInRight\" data-os-animation-delay=\"0.4s\">Free PSD Template</h3> <p class=\"boldp os-animation\" data-os-animation=\"zoomIn\" data-os-animation-delay=\"0.5s\">Free for commercial and personal use.<br/> You can easily edit its contents and code it for yourself or your client!</p>  <p class=\"innerp os-animation\" data-os-animation=\"fadeIn\" data-os-animation-delay=\"0.7s\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec eget nisi eget tortor iaculis tristique. Aliquam tincidunt posuere tortor hendrerit elementum. Nunc laoreet lorem a sem auctor fringilla. Pellentesque dignissim accumsan lobortis. Sed pharetra erat vitae dui imperdiet quis commodo orci dapibus.</p> <p class=\"innerp os-animation\" data-os-animation=\"fadeIn\" data-os-animation-delay=\"0.8s\">Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Fusce at nunc libero. Nam metus lorem, rhoncus ac mattis ornare, blandit vel risus.</p>       <ul class=\"bxslider2\"> <li>     <h3>I love people who make me laugh. I honestly think it’s the thing I like most, to laugh. It cures a multitude of ills. It\'s probably the most important thing in a person.</h3> Audrey Hepburn    <img src=\"img/slide1.jpg\" alt=\"\" class=\"os-animation\" data-os-animation=\"fadeInRight\" data-os-animation-delay=\"0.4s\"/>    </li> <li>     <h3>I love people who make me laugh. I honestly think it’s the thing I like most, to laugh. It cures a multitude of ills. It\'s probably the most important thing in a person.</h3> Audrey Hepburn    <img src=\"img/slide1.jpg\" alt=\"\"/>    </li> <li>     <h3>I love people who make me laugh. I honestly think it’s the thing I like most, to laugh. It cures a multitude of ills. It\'s probably the most important thing in a person.</h3> Audrey Hepburn    <img src=\"img/slide1.jpg\" alt=\"\"/>    </li> <li>     <h3>I love people who make me laugh. I honestly think it’s the thing I like most, to laugh. It cures a multitude of ills. It\'s probably the most important thing in a person.</h3> Audrey Hepburn    <img src=\"img/slide1.jpg\" alt=\"\"/>    </li> </ul>      <h3 class=\"os-animation\" data-os-animation=\"zoomIn\" data-os-animation-delay=\"0.3s\">Reasons to be happy</h3>        <h4>you are alive</h4> <p class=\"innerp\">Waking up to see another day is a blessing. Don\'t take it for granted. Make it count and be happy that you\'re alive.</p> Anonymous   <h4>someone loves you</h4> <p class=\"innerp\">Someone who really loves you sees what a mess you can be, how moody you can get, how hard you are to handle, but still wants you in their life.</p> Anonymous   <h4>Enjoy the moment</h4> <p class=\"innerp\">Sometimes you will never know the true value of a moment until it becomes a memory. </p> Anonymous   <h4>health is wealth</h4> <p class=\"innerp\">It is health that is real wealth and not pieces of gold and silver. </p> Mahatma Gandhi    MORE REASONS           <h3 class=\"os-animation\" data-os-animation=\"zoomIn\" data-os-animation-delay=\"0.3s\">I love you for all that you are,<br/> all that you have been,<br/> and all you\'re yet to be.</h3> <p class=\"regular os-animation\" data-os-animation=\"fadeInRight\" data-os-animation-delay=\"0.4s\">Quote of the day, from <a class=\"addborder\" href=\"#\">Love Quotes</a></p>          <h3 class=\"os-animation\" data-os-animation=\"zoomIn\" data-os-animation-delay=\"0.3s\">Buy Poster Prints</h3>        <img src=\"img/poster1.jpg\" alt=\"\" class=\"os-animation\" data-os-animation=\"pulse\" data-os-animation-delay=\"0.5s\"/>   <p class=\"innerp\"><a href=\"#\">BUY NOW</a></p> <p class=\"innerp\"><a href=\"#\">SHARE <i class=\"fa fa-share\" aria-hidden=\"true\"/></a></p>         <img src=\"img/poster2.jpg\" alt=\"\" class=\"os-animation\" data-os-animation=\"pulse\" data-os-animation-delay=\"0.6s\"/>       <img src=\"img/poster3.jpg\" alt=\"\" class=\"os-animation\" data-os-animation=\"pulse\" data-os-animation-delay=\"0.7s\"/>     <img src=\"img/poster4.jpg\" alt=\"\" class=\"os-animation\" data-os-animation=\"pulse\" data-os-animation-delay=\"0.8s\"/>         BROWSE POSTERS          <h5>BROWSE</h5> <a href=\"#\">Home</a> <a href=\"#\">About US</a> <a href=\"#\">Category</a> <a href=\"#\">Info</a> <a href=\"#\">Services</a>     <h5>SHOP</h5> <a href=\"#\">Account</a> <a href=\"#\">Help &amp; Guide</a> <a href=\"#\">Shipping &amp; Returns</a> <a href=\"#\">FAQs</a>     <h5>CONTACT</h5>  <p class=\"addressp\">Quotes PSD Template<br/> Rudra Street, 12354 Villa<br/> My State - My Country<br/> 987658</p> <p class=\"addressp\">Phone: + 01 234 567 890<br/> Fax: + 01 234 567 890<br/> graphicsfuel@gmail.com</p>      <h5>SUBSCRIBE NOW</h5> <p class=\"addressp\">Get our latest news and product updates daily</p>  SUBSCRIBE          <p class=\"footerp\">2016 © Copyright - Quotes PSD Templates. All rights reserved.</p> <p class=\"footerp\">Free Template by <a href=\"https://freetemplates.pro/\">FreeTemplates.pro</a></p>    <a href=\"#\"><i class=\"fa fa-facebook\" aria-hidden=\"true\"/></a> <a href=\"#\"><i class=\"fa fa-twitter\" aria-hidden=\"true\"/></a> <a href=\"#\"><i class=\"fa fa-linkedin\" aria-hidden=\"true\"/></a> <a href=\"#\"><i class=\"fa fa-youtube-play\" aria-hidden=\"true\"/></a> <a href=\"#\"><i class=\"fa fa-google-plus\" aria-hidden=\"true\"/></a> <a href=\"#\"><i class=\"fa fa-pinterest-p\" aria-hidden=\"true\"/></a> <a href=\"#\"><i class=\"fa fa-instagram\" aria-hidden=\"true\"/></a> <a href=\"#\"><i class=\"fa fa-envelope\" aria-hidden=\"true\"/></a>                  ','Quotes','','trash','closed','closed','','5thqtrproject__trashed','','','2020-10-30 21:03:35','2020-10-30 21:03:35','',0,'http://cmsproject.local/5thqtrproject/',0,'page','',0);
INSERT INTO `wp_posts` VALUES (15,1,'2020-10-27 00:27:07','2020-10-27 00:27:07','  Loading       <a href=\"#home\" data-scroll=\"\"><img src=\"img/logo.png\" alt=\"\"/></a>    <ul>      <li class=\"menu-item active\"><a href=\"#banner\" data-scroll=\"\">HOME</a></li>     <li class=\"menu-item\"><a href=\"#about\" data-scroll=\"\">ABOUT US</a></li> <li class=\"menu-item\"><a href=\"#slidenew\" data-scroll=\"\">CATEGORIES</a></li> <li class=\"menu-item\"><a href=\"#gallery\" data-scroll=\"\">GALLERY</a></li> <li class=\"menu-item\"><a href=\"#event\" data-scroll=\"\">EVENTS</a></li> <li class=\"menu-item\"><a href=\"#contact\" data-scroll=\"\">BLOG</a></li> <li class=\"menu-item\"><a href=\"#contact\" data-scroll=\"\">CONTACT US</a></li> </ul>         <ul class=\"bxslider\"> <li>  <img src=\"img/banner1.jpg\" alt=\"\"/>  SMILE <h2 class=\"os-animation\" data-os-animation=\"fadeInRight\" data-os-animation-delay=\"0.4s\">it costs you nothing</h2>   </li> <li>  <img src=\"img/banner1.jpg\" alt=\"\"/>  SMILE <h2>it costs you nothing</h2>   </li> <li>  <img src=\"img/banner1.jpg\" alt=\"\"/>  SMILE <h2>it costs you nothing</h2>   </li> <li>  <img src=\"img/banner1.jpg\" alt=\"\"/>  SMILE <h2>it costs you nothing</h2>   </li> <li>  <img src=\"img/banner1.jpg\" alt=\"\"/>  SMILE <h2>it costs you nothing</h2>   </li> </ul>       <h2 class=\"os-animation\" data-os-animation=\"fadeInLeft\" data-os-animation-delay=\"0.3s\">The most inclusive</h2> <h3 class=\"os-animation\" data-os-animation=\"fadeInRight\" data-os-animation-delay=\"0.4s\">Free PSD Template</h3> <p class=\"boldp os-animation\" data-os-animation=\"zoomIn\" data-os-animation-delay=\"0.5s\">Free for commercial and personal use.<br/> You can easily edit its contents and code it for yourself or your client!</p>  <p class=\"innerp os-animation\" data-os-animation=\"fadeIn\" data-os-animation-delay=\"0.7s\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec eget nisi eget tortor iaculis tristique. Aliquam tincidunt posuere tortor hendrerit elementum. Nunc laoreet lorem a sem auctor fringilla. Pellentesque dignissim accumsan lobortis. Sed pharetra erat vitae dui imperdiet quis commodo orci dapibus.</p> <p class=\"innerp os-animation\" data-os-animation=\"fadeIn\" data-os-animation-delay=\"0.8s\">Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Fusce at nunc libero. Nam metus lorem, rhoncus ac mattis ornare, blandit vel risus.</p>       <ul class=\"bxslider2\"> <li>     <h3>I love people who make me laugh. I honestly think it’s the thing I like most, to laugh. It cures a multitude of ills. It\'s probably the most important thing in a person.</h3> Audrey Hepburn    <img src=\"img/slide1.jpg\" alt=\"\" class=\"os-animation\" data-os-animation=\"fadeInRight\" data-os-animation-delay=\"0.4s\"/>    </li> <li>     <h3>I love people who make me laugh. I honestly think it’s the thing I like most, to laugh. It cures a multitude of ills. It\'s probably the most important thing in a person.</h3> Audrey Hepburn    <img src=\"img/slide1.jpg\" alt=\"\"/>    </li> <li>     <h3>I love people who make me laugh. I honestly think it’s the thing I like most, to laugh. It cures a multitude of ills. It\'s probably the most important thing in a person.</h3> Audrey Hepburn    <img src=\"img/slide1.jpg\" alt=\"\"/>    </li> <li>     <h3>I love people who make me laugh. I honestly think it’s the thing I like most, to laugh. It cures a multitude of ills. It\'s probably the most important thing in a person.</h3> Audrey Hepburn    <img src=\"img/slide1.jpg\" alt=\"\"/>    </li> </ul>      <h3 class=\"os-animation\" data-os-animation=\"zoomIn\" data-os-animation-delay=\"0.3s\">Reasons to be happy</h3>        <h4>you are alive</h4> <p class=\"innerp\">Waking up to see another day is a blessing. Don\'t take it for granted. Make it count and be happy that you\'re alive.</p> Anonymous   <h4>someone loves you</h4> <p class=\"innerp\">Someone who really loves you sees what a mess you can be, how moody you can get, how hard you are to handle, but still wants you in their life.</p> Anonymous   <h4>Enjoy the moment</h4> <p class=\"innerp\">Sometimes you will never know the true value of a moment until it becomes a memory. </p> Anonymous   <h4>health is wealth</h4> <p class=\"innerp\">It is health that is real wealth and not pieces of gold and silver. </p> Mahatma Gandhi    MORE REASONS           <h3 class=\"os-animation\" data-os-animation=\"zoomIn\" data-os-animation-delay=\"0.3s\">I love you for all that you are,<br/> all that you have been,<br/> and all you\'re yet to be.</h3> <p class=\"regular os-animation\" data-os-animation=\"fadeInRight\" data-os-animation-delay=\"0.4s\">Quote of the day, from <a class=\"addborder\" href=\"#\">Love Quotes</a></p>          <h3 class=\"os-animation\" data-os-animation=\"zoomIn\" data-os-animation-delay=\"0.3s\">Buy Poster Prints</h3>        <img src=\"img/poster1.jpg\" alt=\"\" class=\"os-animation\" data-os-animation=\"pulse\" data-os-animation-delay=\"0.5s\"/>   <p class=\"innerp\"><a href=\"#\">BUY NOW</a></p> <p class=\"innerp\"><a href=\"#\">SHARE <i class=\"fa fa-share\" aria-hidden=\"true\"/></a></p>         <img src=\"img/poster2.jpg\" alt=\"\" class=\"os-animation\" data-os-animation=\"pulse\" data-os-animation-delay=\"0.6s\"/>       <img src=\"img/poster3.jpg\" alt=\"\" class=\"os-animation\" data-os-animation=\"pulse\" data-os-animation-delay=\"0.7s\"/>     <img src=\"img/poster4.jpg\" alt=\"\" class=\"os-animation\" data-os-animation=\"pulse\" data-os-animation-delay=\"0.8s\"/>         BROWSE POSTERS          <h5>BROWSE</h5> <a href=\"#\">Home</a> <a href=\"#\">About US</a> <a href=\"#\">Category</a> <a href=\"#\">Info</a> <a href=\"#\">Services</a>     <h5>SHOP</h5> <a href=\"#\">Account</a> <a href=\"#\">Help &amp; Guide</a> <a href=\"#\">Shipping &amp; Returns</a> <a href=\"#\">FAQs</a>     <h5>CONTACT</h5>  <p class=\"addressp\">Quotes PSD Template<br/> Rudra Street, 12354 Villa<br/> My State - My Country<br/> 987658</p> <p class=\"addressp\">Phone: + 01 234 567 890<br/> Fax: + 01 234 567 890<br/> graphicsfuel@gmail.com</p>      <h5>SUBSCRIBE NOW</h5> <p class=\"addressp\">Get our latest news and product updates daily</p>  SUBSCRIBE          <p class=\"footerp\">2016 © Copyright - Quotes PSD Templates. All rights reserved.</p> <p class=\"footerp\">Free Template by <a href=\"https://freetemplates.pro/\">FreeTemplates.pro</a></p>    <a href=\"#\"><i class=\"fa fa-facebook\" aria-hidden=\"true\"/></a> <a href=\"#\"><i class=\"fa fa-twitter\" aria-hidden=\"true\"/></a> <a href=\"#\"><i class=\"fa fa-linkedin\" aria-hidden=\"true\"/></a> <a href=\"#\"><i class=\"fa fa-youtube-play\" aria-hidden=\"true\"/></a> <a href=\"#\"><i class=\"fa fa-google-plus\" aria-hidden=\"true\"/></a> <a href=\"#\"><i class=\"fa fa-pinterest-p\" aria-hidden=\"true\"/></a> <a href=\"#\"><i class=\"fa fa-instagram\" aria-hidden=\"true\"/></a> <a href=\"#\"><i class=\"fa fa-envelope\" aria-hidden=\"true\"/></a>                  ','Quotes','','inherit','closed','closed','','14-revision-v1','','','2020-10-27 00:27:07','2020-10-27 00:27:07','',14,'http://cmsproject.local/14-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (17,1,'2020-10-27 00:28:05','2020-10-27 00:28:05','  Loading       <a href=\"#home\" data-scroll=\"\"><img src=\"img/logo.png\" alt=\"\"/></a>    <ul>      <li class=\"menu-item active\"><a href=\"#banner\" data-scroll=\"\">HOME</a></li>     <li class=\"menu-item\"><a href=\"#about\" data-scroll=\"\">ABOUT US</a></li> <li class=\"menu-item\"><a href=\"#slidenew\" data-scroll=\"\">CATEGORIES</a></li> <li class=\"menu-item\"><a href=\"#gallery\" data-scroll=\"\">GALLERY</a></li> <li class=\"menu-item\"><a href=\"#event\" data-scroll=\"\">EVENTS</a></li> <li class=\"menu-item\"><a href=\"#contact\" data-scroll=\"\">BLOG</a></li> <li class=\"menu-item\"><a href=\"#contact\" data-scroll=\"\">CONTACT US</a></li> </ul>         <ul class=\"bxslider\"> <li>  <img src=\"img/banner1.jpg\" alt=\"\"/>  SMILE <h2 class=\"os-animation\" data-os-animation=\"fadeInRight\" data-os-animation-delay=\"0.4s\">it costs you nothing</h2>   </li> <li>  <img src=\"img/banner1.jpg\" alt=\"\"/>  SMILE <h2>it costs you nothing</h2>   </li> <li>  <img src=\"img/banner1.jpg\" alt=\"\"/>  SMILE <h2>it costs you nothing</h2>   </li> <li>  <img src=\"img/banner1.jpg\" alt=\"\"/>  SMILE <h2>it costs you nothing</h2>   </li> <li>  <img src=\"img/banner1.jpg\" alt=\"\"/>  SMILE <h2>it costs you nothing</h2>   </li> </ul>       <h2 class=\"os-animation\" data-os-animation=\"fadeInLeft\" data-os-animation-delay=\"0.3s\">The most inclusive</h2> <h3 class=\"os-animation\" data-os-animation=\"fadeInRight\" data-os-animation-delay=\"0.4s\">Free PSD Template</h3> <p class=\"boldp os-animation\" data-os-animation=\"zoomIn\" data-os-animation-delay=\"0.5s\">Free for commercial and personal use.<br/> You can easily edit its contents and code it for yourself or your client!</p>  <p class=\"innerp os-animation\" data-os-animation=\"fadeIn\" data-os-animation-delay=\"0.7s\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec eget nisi eget tortor iaculis tristique. Aliquam tincidunt posuere tortor hendrerit elementum. Nunc laoreet lorem a sem auctor fringilla. Pellentesque dignissim accumsan lobortis. Sed pharetra erat vitae dui imperdiet quis commodo orci dapibus.</p> <p class=\"innerp os-animation\" data-os-animation=\"fadeIn\" data-os-animation-delay=\"0.8s\">Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Fusce at nunc libero. Nam metus lorem, rhoncus ac mattis ornare, blandit vel risus.</p>       <ul class=\"bxslider2\"> <li>     <h3>I love people who make me laugh. I honestly think it’s the thing I like most, to laugh. It cures a multitude of ills. It\'s probably the most important thing in a person.</h3> Audrey Hepburn    <img src=\"img/slide1.jpg\" alt=\"\" class=\"os-animation\" data-os-animation=\"fadeInRight\" data-os-animation-delay=\"0.4s\"/>    </li> <li>     <h3>I love people who make me laugh. I honestly think it’s the thing I like most, to laugh. It cures a multitude of ills. It\'s probably the most important thing in a person.</h3> Audrey Hepburn    <img src=\"img/slide1.jpg\" alt=\"\"/>    </li> <li>     <h3>I love people who make me laugh. I honestly think it’s the thing I like most, to laugh. It cures a multitude of ills. It\'s probably the most important thing in a person.</h3> Audrey Hepburn    <img src=\"img/slide1.jpg\" alt=\"\"/>    </li> <li>     <h3>I love people who make me laugh. I honestly think it’s the thing I like most, to laugh. It cures a multitude of ills. It\'s probably the most important thing in a person.</h3> Audrey Hepburn    <img src=\"img/slide1.jpg\" alt=\"\"/>    </li> </ul>      <h3 class=\"os-animation\" data-os-animation=\"zoomIn\" data-os-animation-delay=\"0.3s\">Reasons to be happy</h3>        <h4>you are alive</h4> <p class=\"innerp\">Waking up to see another day is a blessing. Don\'t take it for granted. Make it count and be happy that you\'re alive.</p> Anonymous   <h4>someone loves you</h4> <p class=\"innerp\">Someone who really loves you sees what a mess you can be, how moody you can get, how hard you are to handle, but still wants you in their life.</p> Anonymous   <h4>Enjoy the moment</h4> <p class=\"innerp\">Sometimes you will never know the true value of a moment until it becomes a memory. </p> Anonymous   <h4>health is wealth</h4> <p class=\"innerp\">It is health that is real wealth and not pieces of gold and silver. </p> Mahatma Gandhi    MORE REASONS           <h3 class=\"os-animation\" data-os-animation=\"zoomIn\" data-os-animation-delay=\"0.3s\">I love you for all that you are,<br/> all that you have been,<br/> and all you\'re yet to be.</h3> <p class=\"regular os-animation\" data-os-animation=\"fadeInRight\" data-os-animation-delay=\"0.4s\">Quote of the day, from <a class=\"addborder\" href=\"#\">Love Quotes</a></p>          <h3 class=\"os-animation\" data-os-animation=\"zoomIn\" data-os-animation-delay=\"0.3s\">Buy Poster Prints</h3>        <img src=\"img/poster1.jpg\" alt=\"\" class=\"os-animation\" data-os-animation=\"pulse\" data-os-animation-delay=\"0.5s\"/>   <p class=\"innerp\"><a href=\"#\">BUY NOW</a></p> <p class=\"innerp\"><a href=\"#\">SHARE <i class=\"fa fa-share\" aria-hidden=\"true\"/></a></p>         <img src=\"img/poster2.jpg\" alt=\"\" class=\"os-animation\" data-os-animation=\"pulse\" data-os-animation-delay=\"0.6s\"/>       <img src=\"img/poster3.jpg\" alt=\"\" class=\"os-animation\" data-os-animation=\"pulse\" data-os-animation-delay=\"0.7s\"/>     <img src=\"img/poster4.jpg\" alt=\"\" class=\"os-animation\" data-os-animation=\"pulse\" data-os-animation-delay=\"0.8s\"/>         BROWSE POSTERS          <h5>BROWSE</h5> <a href=\"#\">Home</a> <a href=\"#\">About US</a> <a href=\"#\">Category</a> <a href=\"#\">Info</a> <a href=\"#\">Services</a>     <h5>SHOP</h5> <a href=\"#\">Account</a> <a href=\"#\">Help &amp; Guide</a> <a href=\"#\">Shipping &amp; Returns</a> <a href=\"#\">FAQs</a>     <h5>CONTACT</h5>  <p class=\"addressp\">Quotes PSD Template<br/> Rudra Street, 12354 Villa<br/> My State - My Country<br/> 987658</p> <p class=\"addressp\">Phone: + 01 234 567 890<br/> Fax: + 01 234 567 890<br/> graphicsfuel@gmail.com</p>      <h5>SUBSCRIBE NOW</h5> <p class=\"addressp\">Get our latest news and product updates daily</p>  SUBSCRIBE          <p class=\"footerp\">2016 © Copyright - Quotes PSD Templates. All rights reserved.</p> <p class=\"footerp\">Free Template by <a href=\"https://freetemplates.pro/\">FreeTemplates.pro</a></p>    <a href=\"#\"><i class=\"fa fa-facebook\" aria-hidden=\"true\"/></a> <a href=\"#\"><i class=\"fa fa-twitter\" aria-hidden=\"true\"/></a> <a href=\"#\"><i class=\"fa fa-linkedin\" aria-hidden=\"true\"/></a> <a href=\"#\"><i class=\"fa fa-youtube-play\" aria-hidden=\"true\"/></a> <a href=\"#\"><i class=\"fa fa-google-plus\" aria-hidden=\"true\"/></a> <a href=\"#\"><i class=\"fa fa-pinterest-p\" aria-hidden=\"true\"/></a> <a href=\"#\"><i class=\"fa fa-instagram\" aria-hidden=\"true\"/></a> <a href=\"#\"><i class=\"fa fa-envelope\" aria-hidden=\"true\"/></a>                  ','Quotes','','trash','closed','closed','','quotes__trashed','','','2020-10-30 21:03:35','2020-10-30 21:03:35','',0,'http://cmsproject.local/quotes/',0,'page','',0);
INSERT INTO `wp_posts` VALUES (18,1,'2020-10-27 00:30:09','2020-10-27 00:30:09','','banner','','inherit','open','closed','','banner','','','2020-10-27 00:30:09','2020-10-27 00:30:09','',0,'http://cmsproject.local/wp-content/uploads/2020/10/banner.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (19,1,'2020-10-27 00:30:10','2020-10-27 00:30:10','','banner1','','inherit','open','closed','','banner1','','','2020-11-07 22:55:01','2020-11-08 04:55:01','',0,'http://cmsproject.local/wp-content/uploads/2020/10/banner1.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (20,1,'2020-10-27 00:30:13','2020-10-27 00:30:13','','banner2','','inherit','open','closed','','banner2','','','2020-11-07 22:58:25','2020-11-08 04:58:25','',0,'http://cmsproject.local/wp-content/uploads/2020/10/banner2.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (22,1,'2020-10-27 00:30:15','2020-10-27 00:30:15','','close','','inherit','open','closed','','close','','','2020-10-27 00:30:15','2020-10-27 00:30:15','',0,'http://cmsproject.local/wp-content/uploads/2020/10/close.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (23,1,'2020-10-27 00:30:15','2020-10-27 00:30:15','','controls','','inherit','open','closed','','controls','','','2020-10-27 00:30:15','2020-10-27 00:30:15','',0,'http://cmsproject.local/wp-content/uploads/2020/10/controls.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (24,1,'2020-10-27 00:30:16','2020-10-27 00:30:16','','logo','','inherit','open','closed','','logo','','','2020-11-07 22:52:20','2020-11-08 04:52:20','',0,'http://cmsproject.local/wp-content/uploads/2020/10/logo.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (25,1,'2020-10-27 00:30:16','2020-10-27 00:30:16','','menu','','inherit','open','closed','','menu','','','2020-10-27 00:30:16','2020-10-27 00:30:16','',0,'http://cmsproject.local/wp-content/uploads/2020/10/menu.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (26,1,'2020-10-27 00:30:17','2020-10-27 00:30:17','','poster1','','inherit','open','closed','','poster1','','','2020-10-27 00:30:17','2020-10-27 00:30:17','',0,'http://cmsproject.local/wp-content/uploads/2020/10/poster1.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (28,1,'2020-10-27 00:30:18','2020-10-27 00:30:18','','poster2','','inherit','open','closed','','poster2','','','2020-11-07 22:45:24','2020-11-08 04:45:24','',0,'http://cmsproject.local/wp-content/uploads/2020/10/poster2.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (29,1,'2020-10-27 00:30:18','2020-10-27 00:30:18','','poster3','','inherit','open','closed','','poster3','','','2020-11-07 22:40:14','2020-11-08 04:40:14','',0,'http://cmsproject.local/wp-content/uploads/2020/10/poster3.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (30,1,'2020-10-27 00:30:19','2020-10-27 00:30:19','','poster4','','inherit','open','closed','','poster4','','','2020-11-07 22:41:07','2020-11-08 04:41:07','',0,'http://cmsproject.local/wp-content/uploads/2020/10/poster4.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (31,1,'2020-10-27 00:30:19','2020-10-27 00:30:19','','slide1','','inherit','open','closed','','slide1','','','2020-11-07 22:46:27','2020-11-08 04:46:27','',0,'http://cmsproject.local/wp-content/uploads/2020/10/slide1.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (32,1,'2020-10-27 00:51:39','2020-10-27 00:51:39','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Hello world!','','inherit','closed','closed','','1-revision-v1','','','2020-10-27 00:51:39','2020-10-27 00:51:39','',1,'http://cmsproject.local/1-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (33,1,'2020-10-27 00:54:20','2020-10-27 00:54:20','<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://cmsproject.local/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','Sample Page','','inherit','closed','closed','','2-revision-v1','','','2020-10-27 00:54:20','2020-10-27 00:54:20','',2,'http://cmsproject.local/2-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (34,1,'2020-10-27 00:54:50','2020-10-27 00:54:50','<!-- placeholder -->','Cmsproject','','inherit','closed','closed','','13-revision-v1','','','2020-10-27 00:54:50','2020-10-27 00:54:50','',13,'http://cmsproject.local/13-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (35,1,'2020-10-27 00:58:15','2020-10-27 00:58:15','<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://cmsproject.local.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->','Privacy Policy','','inherit','closed','closed','','3-revision-v1','','','2020-10-27 00:58:15','2020-10-27 00:58:15','',3,'http://cmsproject.local/3-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (36,1,'2020-10-27 00:58:15','2020-10-27 00:58:15','  Loading       <a href=\"#home\" data-scroll=\"\"><img src=\"img/logo.png\" alt=\"\"/></a>    <ul>      <li class=\"menu-item active\"><a href=\"#banner\" data-scroll=\"\">HOME</a></li>     <li class=\"menu-item\"><a href=\"#about\" data-scroll=\"\">ABOUT US</a></li> <li class=\"menu-item\"><a href=\"#slidenew\" data-scroll=\"\">CATEGORIES</a></li> <li class=\"menu-item\"><a href=\"#gallery\" data-scroll=\"\">GALLERY</a></li> <li class=\"menu-item\"><a href=\"#event\" data-scroll=\"\">EVENTS</a></li> <li class=\"menu-item\"><a href=\"#contact\" data-scroll=\"\">BLOG</a></li> <li class=\"menu-item\"><a href=\"#contact\" data-scroll=\"\">CONTACT US</a></li> </ul>         <ul class=\"bxslider\"> <li>  <img src=\"img/banner1.jpg\" alt=\"\"/>  SMILE <h2 class=\"os-animation\" data-os-animation=\"fadeInRight\" data-os-animation-delay=\"0.4s\">it costs you nothing</h2>   </li> <li>  <img src=\"img/banner1.jpg\" alt=\"\"/>  SMILE <h2>it costs you nothing</h2>   </li> <li>  <img src=\"img/banner1.jpg\" alt=\"\"/>  SMILE <h2>it costs you nothing</h2>   </li> <li>  <img src=\"img/banner1.jpg\" alt=\"\"/>  SMILE <h2>it costs you nothing</h2>   </li> <li>  <img src=\"img/banner1.jpg\" alt=\"\"/>  SMILE <h2>it costs you nothing</h2>   </li> </ul>       <h2 class=\"os-animation\" data-os-animation=\"fadeInLeft\" data-os-animation-delay=\"0.3s\">The most inclusive</h2> <h3 class=\"os-animation\" data-os-animation=\"fadeInRight\" data-os-animation-delay=\"0.4s\">Free PSD Template</h3> <p class=\"boldp os-animation\" data-os-animation=\"zoomIn\" data-os-animation-delay=\"0.5s\">Free for commercial and personal use.<br/> You can easily edit its contents and code it for yourself or your client!</p>  <p class=\"innerp os-animation\" data-os-animation=\"fadeIn\" data-os-animation-delay=\"0.7s\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec eget nisi eget tortor iaculis tristique. Aliquam tincidunt posuere tortor hendrerit elementum. Nunc laoreet lorem a sem auctor fringilla. Pellentesque dignissim accumsan lobortis. Sed pharetra erat vitae dui imperdiet quis commodo orci dapibus.</p> <p class=\"innerp os-animation\" data-os-animation=\"fadeIn\" data-os-animation-delay=\"0.8s\">Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Fusce at nunc libero. Nam metus lorem, rhoncus ac mattis ornare, blandit vel risus.</p>       <ul class=\"bxslider2\"> <li>     <h3>I love people who make me laugh. I honestly think it’s the thing I like most, to laugh. It cures a multitude of ills. It\'s probably the most important thing in a person.</h3> Audrey Hepburn    <img src=\"img/slide1.jpg\" alt=\"\" class=\"os-animation\" data-os-animation=\"fadeInRight\" data-os-animation-delay=\"0.4s\"/>    </li> <li>     <h3>I love people who make me laugh. I honestly think it’s the thing I like most, to laugh. It cures a multitude of ills. It\'s probably the most important thing in a person.</h3> Audrey Hepburn    <img src=\"img/slide1.jpg\" alt=\"\"/>    </li> <li>     <h3>I love people who make me laugh. I honestly think it’s the thing I like most, to laugh. It cures a multitude of ills. It\'s probably the most important thing in a person.</h3> Audrey Hepburn    <img src=\"img/slide1.jpg\" alt=\"\"/>    </li> <li>     <h3>I love people who make me laugh. I honestly think it’s the thing I like most, to laugh. It cures a multitude of ills. It\'s probably the most important thing in a person.</h3> Audrey Hepburn    <img src=\"img/slide1.jpg\" alt=\"\"/>    </li> </ul>      <h3 class=\"os-animation\" data-os-animation=\"zoomIn\" data-os-animation-delay=\"0.3s\">Reasons to be happy</h3>        <h4>you are alive</h4> <p class=\"innerp\">Waking up to see another day is a blessing. Don\'t take it for granted. Make it count and be happy that you\'re alive.</p> Anonymous   <h4>someone loves you</h4> <p class=\"innerp\">Someone who really loves you sees what a mess you can be, how moody you can get, how hard you are to handle, but still wants you in their life.</p> Anonymous   <h4>Enjoy the moment</h4> <p class=\"innerp\">Sometimes you will never know the true value of a moment until it becomes a memory. </p> Anonymous   <h4>health is wealth</h4> <p class=\"innerp\">It is health that is real wealth and not pieces of gold and silver. </p> Mahatma Gandhi    MORE REASONS           <h3 class=\"os-animation\" data-os-animation=\"zoomIn\" data-os-animation-delay=\"0.3s\">I love you for all that you are,<br/> all that you have been,<br/> and all you\'re yet to be.</h3> <p class=\"regular os-animation\" data-os-animation=\"fadeInRight\" data-os-animation-delay=\"0.4s\">Quote of the day, from <a class=\"addborder\" href=\"#\">Love Quotes</a></p>          <h3 class=\"os-animation\" data-os-animation=\"zoomIn\" data-os-animation-delay=\"0.3s\">Buy Poster Prints</h3>        <img src=\"img/poster1.jpg\" alt=\"\" class=\"os-animation\" data-os-animation=\"pulse\" data-os-animation-delay=\"0.5s\"/>   <p class=\"innerp\"><a href=\"#\">BUY NOW</a></p> <p class=\"innerp\"><a href=\"#\">SHARE <i class=\"fa fa-share\" aria-hidden=\"true\"/></a></p>         <img src=\"img/poster2.jpg\" alt=\"\" class=\"os-animation\" data-os-animation=\"pulse\" data-os-animation-delay=\"0.6s\"/>       <img src=\"img/poster3.jpg\" alt=\"\" class=\"os-animation\" data-os-animation=\"pulse\" data-os-animation-delay=\"0.7s\"/>     <img src=\"img/poster4.jpg\" alt=\"\" class=\"os-animation\" data-os-animation=\"pulse\" data-os-animation-delay=\"0.8s\"/>         BROWSE POSTERS          <h5>BROWSE</h5> <a href=\"#\">Home</a> <a href=\"#\">About US</a> <a href=\"#\">Category</a> <a href=\"#\">Info</a> <a href=\"#\">Services</a>     <h5>SHOP</h5> <a href=\"#\">Account</a> <a href=\"#\">Help &amp; Guide</a> <a href=\"#\">Shipping &amp; Returns</a> <a href=\"#\">FAQs</a>     <h5>CONTACT</h5>  <p class=\"addressp\">Quotes PSD Template<br/> Rudra Street, 12354 Villa<br/> My State - My Country<br/> 987658</p> <p class=\"addressp\">Phone: + 01 234 567 890<br/> Fax: + 01 234 567 890<br/> graphicsfuel@gmail.com</p>      <h5>SUBSCRIBE NOW</h5> <p class=\"addressp\">Get our latest news and product updates daily</p>  SUBSCRIBE          <p class=\"footerp\">2016 © Copyright - Quotes PSD Templates. All rights reserved.</p> <p class=\"footerp\">Free Template by <a href=\"https://freetemplates.pro/\">FreeTemplates.pro</a></p>    <a href=\"#\"><i class=\"fa fa-facebook\" aria-hidden=\"true\"/></a> <a href=\"#\"><i class=\"fa fa-twitter\" aria-hidden=\"true\"/></a> <a href=\"#\"><i class=\"fa fa-linkedin\" aria-hidden=\"true\"/></a> <a href=\"#\"><i class=\"fa fa-youtube-play\" aria-hidden=\"true\"/></a> <a href=\"#\"><i class=\"fa fa-google-plus\" aria-hidden=\"true\"/></a> <a href=\"#\"><i class=\"fa fa-pinterest-p\" aria-hidden=\"true\"/></a> <a href=\"#\"><i class=\"fa fa-instagram\" aria-hidden=\"true\"/></a> <a href=\"#\"><i class=\"fa fa-envelope\" aria-hidden=\"true\"/></a>                  ','Quotes','','inherit','closed','closed','','17-revision-v1','','','2020-10-27 00:58:15','2020-10-27 00:58:15','',17,'http://cmsproject.local/17-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (37,1,'2020-11-01 00:57:53','2020-11-01 00:57:53','<!-- wp:media-text -->\n<div class=\"wp-block-media-text alignwide is-stacked-on-mobile\"><figure class=\"wp-block-media-text__media\"></figure><div class=\"wp-block-media-text__content\"><!-- wp:paragraph {\"placeholder\":\"Content…\",\"fontSize\":\"large\"} -->\n<p class=\"has-large-font-size\"></p>\n<!-- /wp:paragraph --></div></div>\n<!-- /wp:media-text -->','','','trash','open','open','','__trashed-2','','','2020-11-01 00:57:53','2020-11-01 00:57:53','',0,'http://cmsproject.local/?p=37',0,'post','',0);
INSERT INTO `wp_posts` VALUES (39,1,'2020-11-01 00:57:53','2020-11-01 00:57:53','<!-- wp:file {\"id\":40,\"href\":\"http://cmsproject.local/wp-content/uploads/2020/10/index-1.html\"} -->\n<div class=\"wp-block-file\"><a href=\"http://cmsproject.local/wp-content/uploads/2020/10/index-1.html\">index-1</a><a href=\"http://cmsproject.local/wp-content/uploads/2020/10/index-1.html\" class=\"wp-block-file__button\" download>Download</a></div>\n<!-- /wp:file -->','','','trash','open','open','','__trashed','','','2020-11-01 00:57:53','2020-11-01 00:57:53','',0,'http://cmsproject.local/?p=39',0,'post','',0);
INSERT INTO `wp_posts` VALUES (41,1,'2020-10-27 01:20:16','2020-10-27 01:20:16','<!-- wp:file {\"id\":40,\"href\":\"http://cmsproject.local/wp-content/uploads/2020/10/index-1.html\"} -->\n<div class=\"wp-block-file\"><a href=\"http://cmsproject.local/wp-content/uploads/2020/10/index-1.html\">index-1</a><a href=\"http://cmsproject.local/wp-content/uploads/2020/10/index-1.html\" class=\"wp-block-file__button\" download>Download</a></div>\n<!-- /wp:file -->','','','inherit','closed','closed','','39-revision-v1','','','2020-10-27 01:20:16','2020-10-27 01:20:16','',39,'http://cmsproject.local/39-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (42,1,'2020-10-30 02:07:13','2020-10-30 02:07:13','{\n    \"old_sidebars_widgets_data\": {\n        \"value\": {\n            \"wp_inactive_widgets\": [],\n            \"sidebar-1\": [\n                \"search-2\",\n                \"recent-posts-2\",\n                \"recent-comments-2\"\n            ],\n            \"sidebar-2\": [\n                \"archives-2\",\n                \"categories-2\",\n                \"meta-2\"\n            ]\n        },\n        \"type\": \"global_variable\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-10-30 02:07:12\"\n    }\n}','','','trash','closed','closed','','01733b6f-beae-4eb1-bc38-83fd44d45b36','','','2020-10-30 02:07:13','2020-10-30 02:07:13','',0,'http://cmsproject.local/01733b6f-beae-4eb1-bc38-83fd44d45b36/',0,'customize_changeset','',0);
INSERT INTO `wp_posts` VALUES (57,1,'2020-10-31 01:08:34','2020-10-31 01:08:34','','close','','inherit','open','closed','','close-2','','','2020-10-31 01:08:34','2020-10-31 01:08:34','',0,'http://cmsproject.local/wp-content/uploads/2020/10/close-1.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (60,1,'2020-10-31 01:08:38','2020-10-31 01:08:38','','menu','','inherit','open','closed','','menu-2','','','2020-10-31 01:08:38','2020-10-31 01:08:38','',0,'http://cmsproject.local/wp-content/uploads/2020/10/menu-1.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (62,1,'2020-10-31 01:08:41','2020-10-31 01:08:41','','controls','','inherit','open','closed','','controls-2','','','2020-10-31 01:08:41','2020-10-31 01:08:41','',0,'http://cmsproject.local/wp-content/uploads/2020/10/controls-1.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (64,1,'2020-10-31 01:08:46','2020-10-31 01:08:46','','poster4','','inherit','open','closed','','poster4-2','','','2020-11-07 22:40:54','2020-11-08 04:40:54','',0,'http://cmsproject.local/wp-content/uploads/2020/10/poster4-1.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (65,1,'2020-10-31 01:09:16','2020-10-31 01:09:16','','poster3','','inherit','open','closed','','poster3-2','','','2020-11-07 22:40:02','2020-11-08 04:40:02','',0,'http://cmsproject.local/wp-content/uploads/2020/10/poster3-1.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (69,1,'2020-11-01 00:11:35','2020-11-01 00:11:35','{\n    \"blogdescription\": {\n        \"value\": \"changing an static site into wordpress\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-11-01 00:11:35\"\n    }\n}','','','trash','closed','closed','','415b0f3f-9944-4886-949f-15096f433808','','','2020-11-01 00:11:35','2020-11-01 00:11:35','',0,'http://cmsproject.local/415b0f3f-9944-4886-949f-15096f433808/',0,'customize_changeset','',0);
INSERT INTO `wp_posts` VALUES (71,1,'2020-11-01 00:57:53','2020-11-01 00:57:53','<!-- wp:media-text -->\n<div class=\"wp-block-media-text alignwide is-stacked-on-mobile\"><figure class=\"wp-block-media-text__media\"></figure><div class=\"wp-block-media-text__content\"><!-- wp:paragraph {\"placeholder\":\"Content…\",\"fontSize\":\"large\"} -->\n<p class=\"has-large-font-size\"></p>\n<!-- /wp:paragraph --></div></div>\n<!-- /wp:media-text -->','','','inherit','closed','closed','','37-revision-v1','','','2020-11-01 00:57:53','2020-11-01 00:57:53','',37,'http://cmsproject.local/37-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (72,1,'2020-11-01 00:59:42','2020-11-01 00:59:42','','comments','','trash','open','closed','','comments__trashed','','','2020-11-01 01:05:46','2020-11-01 01:05:46','',0,'http://cmsproject.local/?page_id=72',0,'page','',0);
INSERT INTO `wp_posts` VALUES (73,1,'2020-11-01 00:59:42','2020-11-01 00:59:42','','comments','','inherit','closed','closed','','72-revision-v1','','','2020-11-01 00:59:42','2020-11-01 00:59:42','',72,'http://cmsproject.local/72-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (74,1,'2020-11-01 01:03:20','2020-11-01 01:03:20','{\n    \"show_on_front\": {\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-11-01 01:03:20\"\n    }\n}','','','trash','closed','closed','','a6ac5d04-7f40-4a1f-aae9-b754d4399a47','','','2020-11-01 01:03:20','2020-11-01 01:03:20','',0,'http://cmsproject.local/a6ac5d04-7f40-4a1f-aae9-b754d4399a47/',0,'customize_changeset','',0);
INSERT INTO `wp_posts` VALUES (75,1,'2020-11-01 01:04:09','2020-11-01 01:04:09','{\n    \"show_on_front\": {\n        \"value\": \"posts\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-11-01 01:04:09\"\n    }\n}','','','trash','closed','closed','','47bddb3d-dcee-41ee-ac7b-238cdff9e7de','','','2020-11-01 01:04:09','2020-11-01 01:04:09','',0,'http://cmsproject.local/47bddb3d-dcee-41ee-ac7b-238cdff9e7de/',0,'customize_changeset','',0);
INSERT INTO `wp_posts` VALUES (76,1,'2020-11-01 01:04:56','2020-11-01 01:04:56','{\n    \"show_on_front\": {\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-11-01 01:04:56\"\n    }\n}','','','trash','closed','closed','','543dc84d-3d2b-422f-8ced-bdca61976753','','','2020-11-01 01:04:56','2020-11-01 01:04:56','',0,'http://cmsproject.local/543dc84d-3d2b-422f-8ced-bdca61976753/',0,'customize_changeset','',0);
INSERT INTO `wp_posts` VALUES (77,1,'2020-11-01 01:37:29','2020-11-01 01:37:29','','Comments','','trash','open','closed','','comments__trashed-2','','','2020-11-01 01:46:48','2020-11-01 01:46:48','',0,'http://cmsproject.local/?page_id=77',2,'page','',0);
INSERT INTO `wp_posts` VALUES (78,1,'2020-11-01 01:37:29','2020-11-01 01:37:29','','Comments','','inherit','closed','closed','','77-revision-v1','','','2020-11-01 01:37:29','2020-11-01 01:37:29','',77,'http://cmsproject.local/?p=78',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (79,1,'2020-11-01 01:38:20','2020-11-01 01:38:20','{\n    \"show_on_front\": {\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-11-01 01:38:20\"\n    }\n}','','','trash','closed','closed','','1e1e85f7-ad2e-4b85-b8c0-418b67380a77','','','2020-11-01 01:38:20','2020-11-01 01:38:20','',0,'http://cmsproject.local/?p=79',0,'customize_changeset','',0);
INSERT INTO `wp_posts` VALUES (80,1,'2020-11-01 01:44:55','2020-11-01 01:44:55','{\n    \"page_for_posts\": {\n        \"value\": \"77\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-11-01 01:44:55\"\n    }\n}','','','trash','closed','closed','','489456c6-181c-4a2a-acb0-36219275538a','','','2020-11-01 01:44:55','2020-11-01 01:44:55','',0,'http://cmsproject.local/489456c6-181c-4a2a-acb0-36219275538a/',0,'customize_changeset','',0);
INSERT INTO `wp_posts` VALUES (81,1,'2020-11-01 01:52:57','2020-11-01 01:52:57','<!-- wp:paragraph -->\n<p>.....</p>\n<!-- /wp:paragraph -->','hello','','trash','open','open','','hello__trashed','','','2020-11-01 01:55:40','2020-11-01 01:55:40','',0,'http://cmsproject.local/?p=81',0,'post','',0);
INSERT INTO `wp_posts` VALUES (82,1,'2020-11-01 01:52:57','2020-11-01 01:52:57','<!-- wp:paragraph -->\n<p>.....</p>\n<!-- /wp:paragraph -->','hello','','inherit','closed','closed','','81-revision-v1','','','2020-11-01 01:52:57','2020-11-01 01:52:57','',81,'http://cmsproject.local/81-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (83,1,'2020-11-01 01:54:10','2020-11-01 01:54:10','','hello','','trash','closed','closed','','hello__trashed','','','2020-11-01 01:55:28','2020-11-01 01:55:28','',0,'http://cmsproject.local/?page_id=83',0,'page','',0);
INSERT INTO `wp_posts` VALUES (84,1,'2020-11-01 01:54:10','2020-11-01 01:54:10','','hello','','inherit','closed','closed','','83-revision-v1','','','2020-11-01 01:54:10','2020-11-01 01:54:10','',83,'http://cmsproject.local/83-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (85,1,'2020-11-01 01:54:50','2020-11-01 01:54:50','{\n    \"page_for_posts\": {\n        \"value\": \"83\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-11-01 01:54:50\"\n    }\n}','','','trash','closed','closed','','a1e81dbf-3909-410d-ac9e-1bae57f124ff','','','2020-11-01 01:54:50','2020-11-01 01:54:50','',0,'http://cmsproject.local/a1e81dbf-3909-410d-ac9e-1bae57f124ff/',0,'customize_changeset','',0);
INSERT INTO `wp_posts` VALUES (94,1,'2020-11-01 03:02:20','2020-11-01 03:02:20','<!-- wp:paragraph -->\n<p>..........</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Ammara</p>\n<!-- /wp:paragraph -->','page.php','','trash','open','closed','','page-php__trashed','','','2020-11-01 20:50:24','2020-11-01 20:50:24','',0,'http://cmsproject.local/?page_id=94',0,'page','',0);
INSERT INTO `wp_posts` VALUES (95,1,'2020-11-01 03:02:20','2020-11-01 03:02:20','','.','','inherit','closed','closed','','94-revision-v1','','','2020-11-01 03:02:20','2020-11-01 03:02:20','',94,'http://cmsproject.local/94-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (96,1,'2020-11-01 03:08:13','2020-11-01 03:08:13','','page.','','inherit','closed','closed','','94-revision-v1','','','2020-11-01 03:08:13','2020-11-01 03:08:13','',94,'http://cmsproject.local/94-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (97,1,'2020-11-01 03:15:43','2020-11-01 03:15:43','','.','','inherit','closed','closed','','94-revision-v1','','','2020-11-01 03:15:43','2020-11-01 03:15:43','',94,'http://cmsproject.local/94-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (98,1,'2020-11-01 03:25:14','2020-11-01 03:25:14','','.page.php','','inherit','closed','closed','','94-revision-v1','','','2020-11-01 03:25:14','2020-11-01 03:25:14','',94,'http://cmsproject.local/94-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (99,1,'2020-11-01 03:25:20','2020-11-01 03:25:20','','page.php','','inherit','closed','closed','','94-revision-v1','','','2020-11-01 03:25:20','2020-11-01 03:25:20','',94,'http://cmsproject.local/94-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (101,1,'2020-11-01 06:09:38','2020-11-01 06:09:38','<!-- wp:paragraph -->\n<p>.....................</p>\n<!-- /wp:paragraph -->','page.php','','inherit','closed','closed','','94-revision-v1','','','2020-11-01 06:09:38','2020-11-01 06:09:38','',94,'http://cmsproject.local/94-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (102,1,'2020-11-01 06:12:05','2020-11-01 06:12:05','','page.php','','inherit','closed','closed','','94-revision-v1','','','2020-11-01 06:12:05','2020-11-01 06:12:05','',94,'http://cmsproject.local/94-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (103,1,'2020-11-01 06:25:32','2020-11-01 06:25:32','<!-- wp:paragraph -->\n<p>..........</p>\n<!-- /wp:paragraph -->','page.php','','inherit','closed','closed','','94-revision-v1','','','2020-11-01 06:25:32','2020-11-01 06:25:32','',94,'http://cmsproject.local/94-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (104,1,'2020-11-01 20:47:55','2020-11-01 20:47:55','<!-- wp:paragraph -->\n<p>hello</p>\n<!-- /wp:paragraph -->','','','trash','open','open','','104-2__trashed','','','2020-11-01 20:49:21','2020-11-01 20:49:21','',0,'http://cmsproject.local/?p=104',0,'post','',0);
INSERT INTO `wp_posts` VALUES (110,1,'2020-11-01 20:32:06','2020-11-01 20:32:06','{\n    \"show_on_front\": {\n        \"value\": \"posts\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-11-01 20:32:06\"\n    }\n}','','','trash','closed','closed','','4d503f31-1feb-448e-bc4f-d87f91142fcc','','','2020-11-01 20:32:06','2020-11-01 20:32:06','',0,'http://cmsproject.local/4d503f31-1feb-448e-bc4f-d87f91142fcc/',0,'customize_changeset','',0);
INSERT INTO `wp_posts` VALUES (111,1,'2020-11-01 20:35:26','2020-11-01 20:35:26','<!-- wp:paragraph -->\n<p>..........</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Ammara</p>\n<!-- /wp:paragraph -->','page.php','','inherit','closed','closed','','94-revision-v1','','','2020-11-01 20:35:26','2020-11-01 20:35:26','',94,'http://cmsproject.local/94-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (112,1,'2020-11-01 20:37:17','2020-11-01 20:37:17','','index.php','','trash','closed','closed','','index-php__trashed','','','2020-11-01 20:44:48','2020-11-01 20:44:48','',0,'http://cmsproject.local/?page_id=112',0,'page','',0);
INSERT INTO `wp_posts` VALUES (113,1,'2020-11-01 20:37:17','2020-11-01 20:37:17','','index.php','','inherit','closed','closed','','112-revision-v1','','','2020-11-01 20:37:17','2020-11-01 20:37:17','',112,'http://cmsproject.local/112-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (114,1,'2020-11-01 20:43:55','2020-11-01 20:43:55','{\n    \"show_on_front\": {\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-11-01 20:43:55\"\n    },\n    \"page_on_front\": {\n        \"value\": \"112\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-11-01 20:43:55\"\n    },\n    \"page_for_posts\": {\n        \"value\": \"94\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-11-01 20:43:55\"\n    }\n}','','','trash','closed','closed','','995defee-b314-4718-980e-d5cfe226248f','','','2020-11-01 20:43:55','2020-11-01 20:43:55','',0,'http://cmsproject.local/995defee-b314-4718-980e-d5cfe226248f/',0,'customize_changeset','',0);
INSERT INTO `wp_posts` VALUES (115,1,'2020-11-01 20:47:55','2020-11-01 20:47:55','<!-- wp:paragraph -->\n<p>hello</p>\n<!-- /wp:paragraph -->','','','inherit','closed','closed','','104-revision-v1','','','2020-11-01 20:47:55','2020-11-01 20:47:55','',104,'http://cmsproject.local/104-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (116,1,'2020-11-01 20:52:07','2020-11-01 20:52:07','<!-- wp:paragraph -->\n<p>&nbsp;[display-posts&nbsp;posts_per_page=\"1000\"&nbsp;order=\"DESC\"]</p>\n<!-- /wp:paragraph -->','page','','publish','open','closed','','page','','','2020-11-08 20:03:50','2020-11-09 02:03:50','',0,'http://cmsproject.local/?page_id=116',0,'page','',6);
INSERT INTO `wp_posts` VALUES (117,1,'2020-11-01 20:52:07','2020-11-01 20:52:07','','page.php','','inherit','closed','closed','','116-revision-v1','','','2020-11-01 20:52:07','2020-11-01 20:52:07','',116,'http://cmsproject.local/116-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (118,1,'2020-11-01 20:52:28','2020-11-01 20:52:28','<!-- wp:paragraph -->\n<p>......</p>\n<!-- /wp:paragraph -->','page.php','','inherit','closed','closed','','116-revision-v1','','','2020-11-01 20:52:28','2020-11-01 20:52:28','',116,'http://cmsproject.local/116-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (119,1,'2020-11-01 22:09:31','2020-11-01 22:09:31','<!-- wp:paragraph -->\n<p>All posts will come here.</p>\n<!-- /wp:paragraph -->','page.php','','inherit','closed','closed','','116-revision-v1','','','2020-11-01 22:09:31','2020-11-01 22:09:31','',116,'http://cmsproject.local/116-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (120,1,'2020-11-01 22:10:23','2020-11-01 22:10:23','{\n    \"nav_menu[-4932806528308226000]\": {\n        \"value\": {\n            \"name\": \"submenu\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": false\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-11-01 22:10:23\"\n    },\n    \"nav_menu_item[-8226705229135493000]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 1,\n            \"type\": \"custom\",\n            \"title\": \"Home\",\n            \"url\": \"http://cmsproject.local\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Home\",\n            \"nav_menu_term_id\": -4932806528308226000,\n            \"_invalid\": false,\n            \"type_label\": \"Custom Link\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-11-01 22:10:23\"\n    }\n}','','','trash','closed','closed','','85dd425c-13dc-45cc-9fce-346ac4a34493','','','2020-11-01 22:10:23','2020-11-01 22:10:23','',0,'http://cmsproject.local/85dd425c-13dc-45cc-9fce-346ac4a34493/',0,'customize_changeset','',0);
INSERT INTO `wp_posts` VALUES (122,1,'2020-11-01 22:12:32','2020-11-01 22:12:32','{\n    \"nav_menu_item[-1180707133160708000]\": {\n        \"value\": false,\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-11-01 22:12:25\"\n    },\n    \"nav_menu_item[-2511593297637658600]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"custom\",\n            \"menu_item_parent\": 0,\n            \"position\": 2,\n            \"type\": \"custom\",\n            \"title\": \"Home\",\n            \"url\": \"http://cmsproject.local/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Home\",\n            \"nav_menu_term_id\": 2,\n            \"_invalid\": false,\n            \"type_label\": \"Custom Link\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-11-01 22:12:32\"\n    }\n}','','','trash','closed','closed','','f5308ba8-1525-47c1-851f-13069330f679','','','2020-11-01 22:12:32','2020-11-01 22:12:32','',0,'http://cmsproject.local/?p=122',0,'customize_changeset','',0);
INSERT INTO `wp_posts` VALUES (124,1,'2020-11-01 22:13:36','2020-11-01 22:13:36','{\n    \"nav_menu[2]\": {\n        \"value\": false,\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-11-01 22:13:36\"\n    }\n}','','','trash','closed','closed','','79911404-336f-4645-9c38-9baf83581ef2','','','2020-11-01 22:13:36','2020-11-01 22:13:36','',0,'http://cmsproject.local/79911404-336f-4645-9c38-9baf83581ef2/',0,'customize_changeset','',0);
INSERT INTO `wp_posts` VALUES (125,1,'2020-11-01 22:14:26','2020-11-01 22:14:26','{\n    \"nav_menu[-2799017814625337300]\": {\n        \"value\": {\n            \"name\": \"submenu\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": false\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-11-01 22:14:26\"\n    },\n    \"nav_menu_item[-8567183807222231000]\": {\n        \"value\": {\n            \"object_id\": 116,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 1,\n            \"type\": \"post_type\",\n            \"title\": \"page.php\",\n            \"url\": \"http://cmsproject.local/page-php/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"page.php\",\n            \"nav_menu_term_id\": -2799017814625337300,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-11-01 22:14:26\"\n    }\n}','','','trash','closed','closed','','7f85ef45-52e8-4919-bd72-1a9bb733d1b4','','','2020-11-01 22:14:26','2020-11-01 22:14:26','',0,'http://cmsproject.local/7f85ef45-52e8-4919-bd72-1a9bb733d1b4/',0,'customize_changeset','',0);
INSERT INTO `wp_posts` VALUES (127,1,'2020-11-01 22:16:45','2020-11-01 22:16:45','{\n    \"nav_menu[3]\": {\n        \"value\": false,\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-11-01 22:16:24\"\n    },\n    \"nav_menu[-3061653983365073000]\": {\n        \"value\": {\n            \"name\": \"menu\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": false\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-11-01 22:16:24\"\n    },\n    \"nav_menu_item[-2739529446033615000]\": {\n        \"value\": {\n            \"object_id\": 116,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 1,\n            \"type\": \"post_type\",\n            \"title\": \"page.php\",\n            \"url\": \"http://cmsproject.local/page-php/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"page.php\",\n            \"nav_menu_term_id\": -3061653983365073000,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-11-01 22:16:45\"\n    }\n}','','','trash','closed','closed','','6bf06a22-9902-48cd-a9b6-0b4ff0639fae','','','2020-11-01 22:16:45','2020-11-01 22:16:45','',0,'http://cmsproject.local/?p=127',0,'customize_changeset','',0);
INSERT INTO `wp_posts` VALUES (128,1,'2020-11-01 22:16:45','2020-11-01 22:16:45',' ','','','publish','closed','closed','','128','','','2020-11-01 22:16:45','2020-11-01 22:16:45','',0,'http://cmsproject.local/128/',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (129,1,'2020-11-01 22:16:53','2020-11-01 22:16:53','{\n    \"nav_menu[4]\": {\n        \"value\": {\n            \"name\": \"menu\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": true\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-11-01 22:16:53\"\n    }\n}','','','trash','closed','closed','','8ac43e7f-264c-4653-9324-6a3c11ecc7aa','','','2020-11-01 22:16:53','2020-11-01 22:16:53','',0,'http://cmsproject.local/8ac43e7f-264c-4653-9324-6a3c11ecc7aa/',0,'customize_changeset','',0);
INSERT INTO `wp_posts` VALUES (130,1,'2020-11-01 22:18:11','2020-11-01 22:18:11','{\n    \"show_on_front\": {\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-11-01 22:18:11\"\n    },\n    \"page_on_front\": {\n        \"value\": \"116\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-11-01 22:18:11\"\n    },\n    \"page_for_posts\": {\n        \"value\": \"0\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-11-01 22:18:11\"\n    }\n}','','','trash','closed','closed','','67f8fc48-1484-47bf-aeb9-30ab20bb7fb8','','','2020-11-01 22:18:11','2020-11-01 22:18:11','',0,'http://cmsproject.local/67f8fc48-1484-47bf-aeb9-30ab20bb7fb8/',0,'customize_changeset','',0);
INSERT INTO `wp_posts` VALUES (131,1,'2020-11-01 22:18:51','2020-11-01 22:18:51','{\n    \"show_on_front\": {\n        \"value\": \"posts\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-11-01 22:18:51\"\n    }\n}','','','trash','closed','closed','','86537288-a2d5-4b94-9023-bd2d8c0145d1','','','2020-11-01 22:18:51','2020-11-01 22:18:51','',0,'http://cmsproject.local/86537288-a2d5-4b94-9023-bd2d8c0145d1/',0,'customize_changeset','',0);
INSERT INTO `wp_posts` VALUES (132,1,'2020-11-01 22:23:20','2020-11-01 22:23:20','','hi','','publish','open','open','','hi','','','2020-11-04 17:47:31','2020-11-04 23:47:31','',0,'http://cmsproject.local/?p=132',0,'post','',0);
INSERT INTO `wp_posts` VALUES (133,1,'2020-11-01 22:23:20','2020-11-01 22:23:20','','hi','','inherit','closed','closed','','132-revision-v1','','','2020-11-01 22:23:20','2020-11-01 22:23:20','',132,'http://cmsproject.local/132-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (134,1,'2020-11-01 22:24:08','2020-11-01 22:24:08','<!-- wp:paragraph -->\n<p>All posts will come here.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>hello</p></blockquote>\n<!-- /wp:quote -->','page.php','','inherit','closed','closed','','116-revision-v1','','','2020-11-01 22:24:08','2020-11-01 22:24:08','',116,'http://cmsproject.local/116-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (136,1,'2020-11-01 22:46:15','2020-11-01 22:46:15','<!-- wp:paragraph -->\n<p>how are you</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->','Single Posts','','publish','open','closed','','single','','','2020-11-08 19:22:06','2020-11-09 01:22:06','',0,'http://cmsproject.local/?page_id=136',0,'page','',10);
INSERT INTO `wp_posts` VALUES (137,1,'2020-11-01 22:46:15','2020-11-01 22:46:15',' ','','','publish','closed','closed','','137','','','2020-11-01 22:46:15','2020-11-01 22:46:15','',0,'http://cmsproject.local/137/',2,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (138,1,'2020-11-01 22:46:15','2020-11-01 22:46:15','','single.php','','inherit','closed','closed','','136-revision-v1','','','2020-11-01 22:46:15','2020-11-01 22:46:15','',136,'http://cmsproject.local/136-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (139,1,'2020-11-01 22:47:05','2020-11-01 22:47:05','<!-- wp:paragraph -->\n<p>nnnnn</p>\n<!-- /wp:paragraph -->','single.php','','inherit','closed','closed','','136-revision-v1','','','2020-11-01 22:47:05','2020-11-01 22:47:05','',136,'http://cmsproject.local/136-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (144,1,'2020-11-02 00:08:22','2020-11-02 00:08:22','','search.php','','trash','closed','closed','','__trashed','','','2020-11-02 00:08:22','2020-11-02 00:08:22','',0,'http://cmsproject.local/?page_id=144',0,'page','',0);
INSERT INTO `wp_posts` VALUES (145,1,'2020-11-02 00:03:02','2020-11-02 00:03:02','','search.php','','trash','closed','closed','','search-php__trashed','','','2020-11-02 00:08:49','2020-11-02 00:08:49','',0,'http://cmsproject.local/?page_id=145',0,'page','',0);
INSERT INTO `wp_posts` VALUES (146,1,'2020-11-02 00:03:02','2020-11-02 00:03:02',' ','','','publish','closed','closed','','146','','','2020-11-02 00:03:02','2020-11-02 00:03:02','',0,'http://cmsproject.local/146/',3,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (147,1,'2020-11-02 00:03:02','2020-11-02 00:03:02','','search.php','','inherit','closed','closed','','145-revision-v1','','','2020-11-02 00:03:02','2020-11-02 00:03:02','',145,'http://cmsproject.local/145-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (148,1,'2020-11-02 00:08:22','2020-11-02 00:08:22','','search.php','','inherit','closed','closed','','144-revision-v1','','','2020-11-02 00:08:22','2020-11-02 00:08:22','',144,'http://cmsproject.local/144-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (149,1,'2020-11-02 00:17:29','2020-11-02 00:17:29','','search','','publish','closed','closed','','search','','','2020-11-03 21:12:37','2020-11-03 21:12:37','',0,'http://cmsproject.local/?page_id=149',0,'page','',0);
INSERT INTO `wp_posts` VALUES (150,1,'2020-11-02 00:17:29','2020-11-02 00:17:29',' ','','','publish','closed','closed','','150','','','2020-11-02 00:17:29','2020-11-02 00:17:29','',0,'http://cmsproject.local/150/',3,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (151,1,'2020-11-02 00:17:29','2020-11-02 00:17:29','','search','','inherit','closed','closed','','149-revision-v1','','','2020-11-02 00:17:29','2020-11-02 00:17:29','',149,'http://cmsproject.local/149-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (153,1,'2020-11-02 01:17:13','2020-11-02 01:17:13','','single.php','','inherit','closed','closed','','136-revision-v1','','','2020-11-02 01:17:13','2020-11-02 01:17:13','',136,'http://cmsproject.local/136-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (154,1,'2020-11-02 01:25:54','2020-11-02 01:25:54','<!-- wp:paragraph -->\n<p>....</p>\n<!-- /wp:paragraph -->','comments.php','','trash','open','closed','','comments-php__trashed','','','2020-11-02 02:50:29','2020-11-02 02:50:29','',0,'http://cmsproject.local/?page_id=154',0,'page','',0);
INSERT INTO `wp_posts` VALUES (155,1,'2020-11-02 01:25:54','2020-11-02 01:25:54',' ','','','publish','closed','closed','','155','','','2020-11-02 01:25:54','2020-11-02 01:25:54','',0,'http://cmsproject.local/155/',4,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (156,1,'2020-11-02 01:25:54','2020-11-02 01:25:54','','comments.php','','inherit','closed','closed','','154-revision-v1','','','2020-11-02 01:25:54','2020-11-02 01:25:54','',154,'http://cmsproject.local/154-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (157,1,'2020-11-02 01:36:46','2020-11-02 01:36:46','<!-- wp:paragraph -->\n<p>....</p>\n<!-- /wp:paragraph -->','comments.php','','inherit','closed','closed','','154-revision-v1','','','2020-11-02 01:36:46','2020-11-02 01:36:46','',154,'http://cmsproject.local/154-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (158,1,'2020-11-02 02:31:15','2020-11-02 02:31:15','','Comments','','trash','closed','closed','','comments__trashed-3','','','2020-11-02 02:50:23','2020-11-02 02:50:23','',0,'http://cmsproject.local/?page_id=158',0,'page','',0);
INSERT INTO `wp_posts` VALUES (159,1,'2020-11-02 02:31:15','2020-11-02 02:31:15',' ','','','publish','closed','closed','','159','','','2020-11-02 02:31:15','2020-11-02 02:31:15','',0,'http://cmsproject.local/159/',5,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (160,1,'2020-11-02 02:31:15','2020-11-02 02:31:15','','Comments','','inherit','closed','closed','','158-revision-v1','','','2020-11-02 02:31:15','2020-11-02 02:31:15','',158,'http://cmsproject.local/158-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (161,1,'2020-11-02 02:51:52','2020-11-02 02:51:52','','Comments.php','','trash','closed','closed','','comments__trashed-4','','','2020-11-02 03:00:54','2020-11-02 03:00:54','',0,'http://cmsproject.local/?page_id=161',0,'page','',0);
INSERT INTO `wp_posts` VALUES (162,1,'2020-11-02 02:51:52','2020-11-02 02:51:52',' ','','','publish','closed','closed','','162','','','2020-11-02 02:51:52','2020-11-02 02:51:52','',0,'http://cmsproject.local/162/',4,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (163,1,'2020-11-02 02:51:52','2020-11-02 02:51:52','','Comments','','inherit','closed','closed','','161-revision-v1','','','2020-11-02 02:51:52','2020-11-02 02:51:52','',161,'http://cmsproject.local/161-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (164,1,'2020-11-02 02:56:18','2020-11-02 02:56:18','','Comments.php','','inherit','closed','closed','','161-revision-v1','','','2020-11-02 02:56:18','2020-11-02 02:56:18','',161,'http://cmsproject.local/161-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (165,1,'2020-11-02 03:01:16','2020-11-02 03:01:16','','Comments','','publish','open','closed','','comments','','','2020-11-04 17:31:22','2020-11-04 23:31:22','',0,'http://cmsproject.local/?page_id=165',0,'page','',0);
INSERT INTO `wp_posts` VALUES (166,1,'2020-11-02 03:01:16','2020-11-02 03:01:16',' ','','','publish','closed','closed','','166','','','2020-11-02 03:01:16','2020-11-02 03:01:16','',0,'http://cmsproject.local/166/',4,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (167,1,'2020-11-02 03:01:16','2020-11-02 03:01:16','','Enter Your Comments','','inherit','closed','closed','','165-revision-v1','','','2020-11-02 03:01:16','2020-11-02 03:01:16','',165,'http://cmsproject.local/165-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (168,1,'2020-11-02 03:04:29','2020-11-02 03:04:29','','Comments','','inherit','closed','closed','','165-revision-v1','','','2020-11-02 03:04:29','2020-11-02 03:04:29','',165,'http://cmsproject.local/165-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (170,1,'2020-11-02 03:19:03','2020-11-02 03:19:03','','page.php','','inherit','closed','closed','','116-revision-v1','','','2020-11-02 03:19:03','2020-11-02 03:19:03','',116,'http://cmsproject.local/116-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (171,1,'2020-11-02 03:27:38','2020-11-02 03:27:38','<!-- wp:paragraph -->\n<p>hi</p>\n<!-- /wp:paragraph -->','single.php','','inherit','closed','closed','','136-revision-v1','','','2020-11-02 03:27:38','2020-11-02 03:27:38','',136,'http://cmsproject.local/136-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (172,1,'2020-11-02 03:32:22','2020-11-02 03:32:22','<!-- wp:paragraph -->\n<p>hello</p>\n<!-- /wp:paragraph -->','page.php','','inherit','closed','closed','','116-revision-v1','','','2020-11-02 03:32:22','2020-11-02 03:32:22','',116,'http://cmsproject.local/116-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (173,1,'2020-11-03 01:31:21','2020-11-03 01:31:21','','page.php','','inherit','closed','closed','','116-revision-v1','','','2020-11-03 01:31:21','2020-11-03 01:31:21','',116,'http://cmsproject.local/116-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (174,1,'2020-11-03 02:17:04','2020-11-03 02:17:04','','Search','','trash','closed','closed','','search-2__trashed','','','2020-11-03 02:27:29','2020-11-03 02:27:29','',0,'http://cmsproject.local/?page_id=174',0,'page','',0);
INSERT INTO `wp_posts` VALUES (175,1,'2020-11-03 02:17:05','2020-11-03 02:17:05',' ','','','publish','closed','closed','','175','','','2020-11-03 02:17:05','2020-11-03 02:17:05','',0,'http://cmsproject.local/175/',5,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (176,1,'2020-11-03 02:17:04','2020-11-03 02:17:04','','Search','','inherit','closed','closed','','174-revision-v1','','','2020-11-03 02:17:04','2020-11-03 02:17:04','',174,'http://cmsproject.local/174-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (177,1,'2020-11-03 02:40:26','2020-11-03 02:40:26','<!-- wp:paragraph -->\n<p>hi</p>\n<!-- /wp:paragraph -->','single','','inherit','closed','closed','','136-revision-v1','','','2020-11-03 02:40:26','2020-11-03 02:40:26','',136,'http://cmsproject.local/136-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (178,1,'2020-11-03 02:41:08','2020-11-03 02:41:08','','page','','inherit','closed','closed','','116-revision-v1','','','2020-11-03 02:41:08','2020-11-03 02:41:08','',116,'http://cmsproject.local/116-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (179,1,'2020-11-03 03:25:47','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2020-11-03 03:25:47','0000-00-00 00:00:00','',0,'http://cmsproject.local/?page_id=179',0,'page','',0);
INSERT INTO `wp_posts` VALUES (180,1,'2020-11-03 03:26:07','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2020-11-03 03:26:07','0000-00-00 00:00:00','',0,'http://cmsproject.local/?page_id=180',0,'page','',0);
INSERT INTO `wp_posts` VALUES (181,1,'2020-11-03 03:27:45','2020-11-03 03:27:45','','404','','publish','closed','closed','','404-2','','','2020-11-03 21:10:13','2020-11-03 21:10:13','',0,'http://cmsproject.local/?page_id=181',0,'page','',0);
INSERT INTO `wp_posts` VALUES (182,1,'2020-11-03 03:27:46','2020-11-03 03:27:46',' ','','','publish','closed','closed','','182','','','2020-11-03 03:27:46','2020-11-03 03:27:46','',0,'http://cmsproject.local/182/',5,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (183,1,'2020-11-03 03:27:45','2020-11-03 03:27:45','','404','','inherit','closed','closed','','181-revision-v1','','','2020-11-03 03:27:45','2020-11-03 03:27:45','',181,'http://cmsproject.local/181-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (184,1,'2020-11-03 04:08:01','2020-11-03 04:08:01','','index','','publish','closed','closed','','index','','','2020-11-03 16:29:56','2020-11-03 16:29:56','',0,'http://cmsproject.local/?page_id=184',0,'page','',0);
INSERT INTO `wp_posts` VALUES (185,1,'2020-11-03 04:08:01','2020-11-03 04:08:01',' ','','','publish','closed','closed','','185','','','2020-11-03 04:08:01','2020-11-03 04:08:01','',0,'http://cmsproject.local/185/',6,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (186,1,'2020-11-03 04:08:01','2020-11-03 04:08:01','','index','','inherit','closed','closed','','184-revision-v1','','','2020-11-03 04:08:01','2020-11-03 04:08:01','',184,'http://cmsproject.local/184-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (188,1,'2020-11-03 16:55:55','2020-11-03 16:55:55','','Quotes','','publish','closed','closed','','front-page','','','2020-11-04 18:38:48','2020-11-05 00:38:48','',0,'http://cmsproject.local/?page_id=188',0,'page','',0);
INSERT INTO `wp_posts` VALUES (189,1,'2020-11-03 16:55:55','2020-11-03 16:55:55',' ','','','publish','closed','closed','','189','','','2020-11-03 16:55:55','2020-11-03 16:55:55','',0,'http://cmsproject.local/189/',7,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (190,1,'2020-11-03 16:55:55','2020-11-03 16:55:55','','Front-page','','inherit','closed','closed','','188-revision-v1','','','2020-11-03 16:55:55','2020-11-03 16:55:55','',188,'http://cmsproject.local/188-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (191,1,'2020-11-03 21:13:48','2020-11-03 21:13:48','','hi','','publish','open','open','','hi-2','','','2020-11-03 21:13:48','2020-11-03 21:13:48','',0,'http://cmsproject.local/?p=191',0,'post','',0);
INSERT INTO `wp_posts` VALUES (192,1,'2020-11-03 21:13:48','2020-11-03 21:13:48','','hi','','inherit','closed','closed','','191-revision-v1','','','2020-11-03 21:13:48','2020-11-03 21:13:48','',191,'http://cmsproject.local/191-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (193,1,'2020-11-03 21:24:52','2020-11-03 21:24:52','','Home','','publish','open','closed','','home','','','2020-11-03 16:18:57','2020-11-03 22:18:57','',0,'http://cmsproject.local/?page_id=193',0,'page','',1);
INSERT INTO `wp_posts` VALUES (194,1,'2020-11-03 21:24:52','2020-11-03 21:24:52',' ','','','publish','closed','closed','','194','','','2020-11-03 21:24:52','2020-11-03 21:24:52','',0,'http://cmsproject.local/194/',8,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (195,1,'2020-11-03 21:24:52','2020-11-03 21:24:52','','home','','inherit','closed','closed','','193-revision-v1','','','2020-11-03 21:24:52','2020-11-03 21:24:52','',193,'http://cmsproject.local/193-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (196,1,'2020-11-03 21:27:05','2020-11-03 21:27:05','','Home','','inherit','closed','closed','','193-revision-v1','','','2020-11-03 21:27:05','2020-11-03 21:27:05','',193,'http://cmsproject.local/193-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (197,1,'2020-11-03 21:30:08','2020-11-03 21:30:08','<!-- wp:paragraph -->\n<p>Hello!h r u</p>\n<!-- /wp:paragraph -->','Home','','inherit','closed','closed','','193-revision-v1','','','2020-11-03 21:30:08','2020-11-03 21:30:08','',193,'http://cmsproject.local/193-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (198,1,'2020-11-03 21:35:20','2020-11-03 21:35:20','<!-- wp:paragraph -->\n<p>Hello! h r</p>\n<!-- /wp:paragraph -->','Home','','inherit','closed','closed','','193-revision-v1','','','2020-11-03 21:35:20','2020-11-03 21:35:20','',193,'http://cmsproject.local/193-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (199,1,'2020-11-03 16:18:31','2020-11-03 22:18:31','<!-- wp:paragraph -->\n<p>Hello! h r u</p>\n<!-- /wp:paragraph -->','Home','','inherit','closed','closed','','193-revision-v1','','','2020-11-03 16:18:31','2020-11-03 22:18:31','',193,'http://cmsproject.local/193-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (200,1,'2020-11-03 16:18:57','2020-11-03 22:18:57','','Home','','inherit','closed','closed','','193-revision-v1','','','2020-11-03 16:18:57','2020-11-03 22:18:57','',193,'http://cmsproject.local/193-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (201,1,'2020-11-03 16:33:22','2020-11-03 22:33:22','<!-- wp:paragraph -->\n<p>reasons to</p>\n<!-- /wp:paragraph -->','Reasons to be Happy','','publish','open','open','','reasons-to-be-happy','','','2020-11-03 16:35:28','2020-11-03 22:35:28','',0,'http://cmsproject.local/?p=201',0,'post','',0);
INSERT INTO `wp_posts` VALUES (202,1,'2020-11-03 16:33:22','2020-11-03 22:33:22','','Reasons to be Happy','','inherit','closed','closed','','201-revision-v1','','','2020-11-03 16:33:22','2020-11-03 22:33:22','',201,'http://cmsproject.local/201-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (203,1,'2020-11-03 16:34:15','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2020-11-03 16:34:15','0000-00-00 00:00:00','',0,'http://cmsproject.local/?p=203',0,'post','',0);
INSERT INTO `wp_posts` VALUES (204,1,'2020-11-03 16:35:28','2020-11-03 22:35:28','<!-- wp:paragraph -->\n<p>reasons to</p>\n<!-- /wp:paragraph -->','Reasons to be Happy','','inherit','closed','closed','','201-revision-v1','','','2020-11-03 16:35:28','2020-11-03 22:35:28','',201,'http://cmsproject.local/201-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (205,1,'2020-11-03 16:43:49','2020-11-03 22:43:49','<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->','Single','','inherit','closed','closed','','136-revision-v1','','','2020-11-03 16:43:49','2020-11-03 22:43:49','',136,'http://cmsproject.local/136-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (206,1,'2020-11-03 16:44:30','2020-11-03 22:44:30','<!-- wp:paragraph -->\n<p>hi</p>\n<!-- /wp:paragraph -->','hi','','inherit','closed','closed','','132-revision-v1','','','2020-11-03 16:44:30','2020-11-03 22:44:30','',132,'http://cmsproject.local/132-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (207,1,'2020-11-04 17:47:31','2020-11-04 23:47:31','','hi','','inherit','closed','closed','','132-revision-v1','','','2020-11-04 17:47:31','2020-11-04 23:47:31','',132,'http://cmsproject.local/132-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (208,1,'2020-11-04 17:57:23','2020-11-04 23:57:23','<!-- wp:paragraph -->\n<p>bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb</p>\n<!-- /wp:paragraph -->','Blog Post','','publish','open','open','','blog-post','','','2020-11-04 17:59:27','2020-11-04 23:59:27','',0,'http://cmsproject.local/?p=208',0,'post','',0);
INSERT INTO `wp_posts` VALUES (209,1,'2020-11-04 17:57:23','2020-11-04 23:57:23','','Blog Post','','inherit','closed','closed','','208-revision-v1','','','2020-11-04 17:57:23','2020-11-04 23:57:23','',208,'http://cmsproject.local/208-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (210,1,'2020-11-04 17:59:27','2020-11-04 23:59:27','<!-- wp:paragraph -->\n<p>bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb</p>\n<!-- /wp:paragraph -->','Blog Post','','inherit','closed','closed','','208-revision-v1','','','2020-11-04 17:59:27','2020-11-04 23:59:27','',208,'http://cmsproject.local/208-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (211,1,'2020-11-04 18:15:12','2020-11-05 00:15:12','<!-- wp:paragraph -->\n<p>&nbsp;[display-posts&nbsp;posts_per_page=\"1000\"&nbsp;order=\"DESC\"]</p>\n<!-- /wp:paragraph -->','page','','inherit','closed','closed','','116-revision-v1','','','2020-11-04 18:15:12','2020-11-05 00:15:12','',116,'http://cmsproject.local/116-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (212,1,'2020-11-04 18:38:48','2020-11-05 00:38:48','','Quotes','','inherit','closed','closed','','188-revision-v1','','','2020-11-04 18:38:48','2020-11-05 00:38:48','',188,'http://cmsproject.local/188-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (213,1,'2020-11-04 21:58:04','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2020-11-04 21:58:04','0000-00-00 00:00:00','',0,'http://cmsproject.local/?page_id=213',0,'page','',0);
INSERT INTO `wp_posts` VALUES (214,1,'2020-11-07 23:13:06','2020-11-08 05:13:06','','Love Quotes','','trash','closed','closed','','__trashed-2','','','2020-11-07 23:13:06','2020-11-08 05:13:06','',0,'http://cmsproject.local/?page_id=214',0,'page','',0);
INSERT INTO `wp_posts` VALUES (215,1,'2020-11-05 20:59:43','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2020-11-05 20:59:43','0000-00-00 00:00:00','',0,'http://cmsproject.local/?page_id=215',0,'page','',0);
INSERT INTO `wp_posts` VALUES (216,1,'2020-11-05 21:02:37','2020-11-06 03:02:37','','Love Quotes','','trash','closed','closed','','love-quotes__trashed','','','2020-11-07 23:13:12','2020-11-08 05:13:12','',0,'http://cmsproject.local/?page_id=216',0,'page','',0);
INSERT INTO `wp_posts` VALUES (217,1,'2020-11-05 21:02:37','2020-11-06 03:02:37',' ','','','publish','closed','closed','','217','','','2020-11-05 21:02:37','2020-11-06 03:02:37','',0,'http://cmsproject.local/217/',9,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (218,1,'2020-11-05 21:02:37','2020-11-06 03:02:37','','Love Quotes','','inherit','closed','closed','','216-revision-v1','','','2020-11-05 21:02:37','2020-11-06 03:02:37','',216,'http://cmsproject.local/216-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (219,1,'2020-11-06 19:51:57','2020-11-07 01:51:57','','rosegold','','inherit','open','closed','','rosegold','','','2020-11-06 19:53:00','2020-11-07 01:53:00','',0,'http://cmsproject.local/wp-content/uploads/2020/11/rosegold.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (220,1,'2020-11-06 20:18:54','2020-11-07 02:18:54','','pink','','inherit','open','closed','','pink','','','2020-11-07 22:34:38','2020-11-08 04:34:38','',0,'http://cmsproject.local/wp-content/uploads/2020/11/pink.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (221,1,'2020-11-07 21:24:28','2020-11-08 03:24:28','','buy-now','','publish','closed','closed','','buy-now','','','2020-11-07 21:24:28','2020-11-08 03:24:28','',0,'http://cmsproject.local/?page_id=221',0,'page','',0);
INSERT INTO `wp_posts` VALUES (222,1,'2020-11-07 21:24:28','2020-11-08 03:24:28',' ','','','publish','closed','closed','','222','','','2020-11-07 21:24:28','2020-11-08 03:24:28','',0,'http://cmsproject.local/222/',10,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (223,1,'2020-11-07 21:24:28','2020-11-08 03:24:28','','buy-now','','inherit','closed','closed','','221-revision-v1','','','2020-11-07 21:24:28','2020-11-08 03:24:28','',221,'http://cmsproject.local/221-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (224,1,'2020-11-07 21:33:01','2020-11-08 03:33:01','','share-us','','publish','closed','closed','','share-us','','','2020-11-07 21:33:01','2020-11-08 03:33:01','',0,'http://cmsproject.local/?page_id=224',0,'page','',0);
INSERT INTO `wp_posts` VALUES (225,1,'2020-11-07 21:33:02','2020-11-08 03:33:02',' ','','','publish','closed','closed','','225','','','2020-11-07 21:33:02','2020-11-08 03:33:02','',0,'http://cmsproject.local/225/',11,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (226,1,'2020-11-07 21:33:01','2020-11-08 03:33:01','','share-us','','inherit','closed','closed','','224-revision-v1','','','2020-11-07 21:33:01','2020-11-08 03:33:01','',224,'http://cmsproject.local/224-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (227,1,'2020-11-07 22:08:23','2020-11-08 04:08:23','','info','','publish','closed','closed','','info','','','2020-11-07 22:08:23','2020-11-08 04:08:23','',0,'http://cmsproject.local/?page_id=227',0,'page','',0);
INSERT INTO `wp_posts` VALUES (228,1,'2020-11-07 22:08:24','2020-11-08 04:08:24',' ','','','publish','closed','closed','','228','','','2020-11-07 22:08:24','2020-11-08 04:08:24','',0,'http://cmsproject.local/228/',12,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (229,1,'2020-11-07 22:08:23','2020-11-08 04:08:23','','info','','inherit','closed','closed','','227-revision-v1','','','2020-11-07 22:08:23','2020-11-08 04:08:23','',227,'http://cmsproject.local/227-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (230,1,'2020-11-07 22:11:17','2020-11-08 04:11:17','','Services','','publish','closed','closed','','services','','','2020-11-07 22:11:17','2020-11-08 04:11:17','',0,'http://cmsproject.local/?page_id=230',0,'page','',0);
INSERT INTO `wp_posts` VALUES (231,1,'2020-11-07 22:11:17','2020-11-08 04:11:17',' ','','','publish','closed','closed','','231','','','2020-11-07 22:11:17','2020-11-08 04:11:17','',0,'http://cmsproject.local/231/',13,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (232,1,'2020-11-07 22:11:17','2020-11-08 04:11:17','','Services','','inherit','closed','closed','','230-revision-v1','','','2020-11-07 22:11:17','2020-11-08 04:11:17','',230,'http://cmsproject.local/230-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (233,1,'2020-11-07 22:16:58','2020-11-08 04:16:58','','account','','publish','closed','closed','','account','','','2020-11-07 22:16:58','2020-11-08 04:16:58','',0,'http://cmsproject.local/?page_id=233',0,'page','',0);
INSERT INTO `wp_posts` VALUES (234,1,'2020-11-07 22:16:59','2020-11-08 04:16:59',' ','','','publish','closed','closed','','234','','','2020-11-07 22:16:59','2020-11-08 04:16:59','',0,'http://cmsproject.local/234/',14,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (235,1,'2020-11-07 22:16:58','2020-11-08 04:16:58','','account','','inherit','closed','closed','','233-revision-v1','','','2020-11-07 22:16:58','2020-11-08 04:16:58','',233,'http://cmsproject.local/233-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (236,1,'2020-11-07 22:21:29','2020-11-08 04:21:29','','help and guide','','publish','closed','closed','','help-and-guide','','','2020-11-07 22:21:29','2020-11-08 04:21:29','',0,'http://cmsproject.local/?page_id=236',0,'page','',0);
INSERT INTO `wp_posts` VALUES (237,1,'2020-11-07 22:21:30','2020-11-08 04:21:30',' ','','','publish','closed','closed','','237','','','2020-11-07 22:21:30','2020-11-08 04:21:30','',0,'http://cmsproject.local/237/',15,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (238,1,'2020-11-07 22:21:29','2020-11-08 04:21:29','','help and guide','','inherit','closed','closed','','236-revision-v1','','','2020-11-07 22:21:29','2020-11-08 04:21:29','',236,'http://cmsproject.local/236-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (239,1,'2020-11-07 22:25:17','2020-11-08 04:25:17','','Shipping and Returns','','publish','closed','closed','','shipping-and-returns','','','2020-11-07 22:25:17','2020-11-08 04:25:17','',0,'http://cmsproject.local/?page_id=239',0,'page','',0);
INSERT INTO `wp_posts` VALUES (240,1,'2020-11-07 22:25:17','2020-11-08 04:25:17',' ','','','publish','closed','closed','','240','','','2020-11-07 22:25:17','2020-11-08 04:25:17','',0,'http://cmsproject.local/240/',16,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (241,1,'2020-11-07 22:25:17','2020-11-08 04:25:17','','Shipping and Returns','','inherit','closed','closed','','239-revision-v1','','','2020-11-07 22:25:17','2020-11-08 04:25:17','',239,'http://cmsproject.local/239-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (242,1,'2020-11-07 22:29:24','2020-11-08 04:29:24','','faq','','publish','closed','closed','','faq','','','2020-11-07 22:29:24','2020-11-08 04:29:24','',0,'http://cmsproject.local/?page_id=242',0,'page','',0);
INSERT INTO `wp_posts` VALUES (243,1,'2020-11-07 22:29:25','2020-11-08 04:29:25',' ','','','publish','closed','closed','','243','','','2020-11-07 22:29:25','2020-11-08 04:29:25','',0,'http://cmsproject.local/243/',17,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (244,1,'2020-11-07 22:29:24','2020-11-08 04:29:24','','faq','','inherit','closed','closed','','242-revision-v1','','','2020-11-07 22:29:24','2020-11-08 04:29:24','',242,'http://cmsproject.local/242-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (245,1,'2020-11-07 23:13:06','2020-11-08 05:13:06','','Love Quotes','','inherit','closed','closed','','214-revision-v1','','','2020-11-07 23:13:06','2020-11-08 05:13:06','',214,'http://cmsproject.local/214-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (246,1,'2020-11-07 23:13:53','2020-11-08 05:13:53','','love-quotes','','publish','closed','closed','','love-quotes','','','2020-11-07 23:13:53','2020-11-08 05:13:53','',0,'http://cmsproject.local/?page_id=246',0,'page','',0);
INSERT INTO `wp_posts` VALUES (247,1,'2020-11-07 23:13:53','2020-11-08 05:13:53',' ','','','publish','closed','closed','','247','','','2020-11-07 23:13:53','2020-11-08 05:13:53','',0,'http://cmsproject.local/247/',17,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (248,1,'2020-11-07 23:13:53','2020-11-08 05:13:53','','love-quotes','','inherit','closed','closed','','246-revision-v1','','','2020-11-07 23:13:53','2020-11-08 05:13:53','',246,'http://cmsproject.local/246-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (249,1,'2020-11-08 19:21:28','2020-11-09 01:21:28','<!-- wp:paragraph -->\n<p>how are you</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->','Single','','inherit','closed','closed','','136-revision-v1','','','2020-11-08 19:21:28','2020-11-09 01:21:28','',136,'http://cmsproject.local/136-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (250,1,'2020-11-08 19:22:06','2020-11-09 01:22:06','<!-- wp:paragraph -->\n<p>how are you</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->','Single Posts','','inherit','closed','closed','','136-revision-v1','','','2020-11-08 19:22:06','2020-11-09 01:22:06','',136,'http://cmsproject.local/136-revision-v1/',0,'revision','',0);
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
INSERT INTO `wp_term_relationships` VALUES (37,1,0);
INSERT INTO `wp_term_relationships` VALUES (39,1,0);
INSERT INTO `wp_term_relationships` VALUES (81,1,0);
INSERT INTO `wp_term_relationships` VALUES (104,1,0);
INSERT INTO `wp_term_relationships` VALUES (128,4,0);
INSERT INTO `wp_term_relationships` VALUES (132,1,0);
INSERT INTO `wp_term_relationships` VALUES (137,4,0);
INSERT INTO `wp_term_relationships` VALUES (146,4,0);
INSERT INTO `wp_term_relationships` VALUES (150,4,0);
INSERT INTO `wp_term_relationships` VALUES (155,4,0);
INSERT INTO `wp_term_relationships` VALUES (159,4,0);
INSERT INTO `wp_term_relationships` VALUES (162,4,0);
INSERT INTO `wp_term_relationships` VALUES (166,4,0);
INSERT INTO `wp_term_relationships` VALUES (175,4,0);
INSERT INTO `wp_term_relationships` VALUES (182,4,0);
INSERT INTO `wp_term_relationships` VALUES (185,4,0);
INSERT INTO `wp_term_relationships` VALUES (189,4,0);
INSERT INTO `wp_term_relationships` VALUES (191,1,0);
INSERT INTO `wp_term_relationships` VALUES (194,4,0);
INSERT INTO `wp_term_relationships` VALUES (201,5,0);
INSERT INTO `wp_term_relationships` VALUES (201,6,0);
INSERT INTO `wp_term_relationships` VALUES (208,5,0);
INSERT INTO `wp_term_relationships` VALUES (217,4,0);
INSERT INTO `wp_term_relationships` VALUES (222,4,0);
INSERT INTO `wp_term_relationships` VALUES (225,4,0);
INSERT INTO `wp_term_relationships` VALUES (228,4,0);
INSERT INTO `wp_term_relationships` VALUES (231,4,0);
INSERT INTO `wp_term_relationships` VALUES (234,4,0);
INSERT INTO `wp_term_relationships` VALUES (237,4,0);
INSERT INTO `wp_term_relationships` VALUES (240,4,0);
INSERT INTO `wp_term_relationships` VALUES (243,4,0);
INSERT INTO `wp_term_relationships` VALUES (247,4,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_taxonomy`
--

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` VALUES (1,1,'category','',0,2);
INSERT INTO `wp_term_taxonomy` VALUES (4,4,'nav_menu','',0,23);
INSERT INTO `wp_term_taxonomy` VALUES (5,5,'category','',0,2);
INSERT INTO `wp_term_taxonomy` VALUES (6,6,'post_tag','',0,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_terms`
--

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` VALUES (1,'Uncategorized','uncategorized',0);
INSERT INTO `wp_terms` VALUES (4,'menu','menu',0);
INSERT INTO `wp_terms` VALUES (5,'reasons to be happy','reasons-to-be-happy',0);
INSERT INTO `wp_terms` VALUES (6,'reasons','reasons',0);
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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_usermeta`
--

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` VALUES (1,1,'nickname','ammara_gul');
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
INSERT INTO `wp_usermeta` VALUES (14,1,'dismissed_wp_pointers','theme_editor_notice');
INSERT INTO `wp_usermeta` VALUES (15,1,'show_welcome_panel','1');
INSERT INTO `wp_usermeta` VALUES (16,1,'session_tokens','a:8:{s:64:\"e6b4eec264831ed32b555dbebb07574a1973f70fc2ae7190615ecb915679922e\";a:4:{s:10:\"expiration\";i:1605226775;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\";s:5:\"login\";i:1604017175;}s:64:\"8432a90134e0db7b84cb25c9ef766bcd4428d27b508368256f3c627adad8a032\";a:4:{s:10:\"expiration\";i:1605233176;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\";s:5:\"login\";i:1604023576;}s:64:\"714fab280170fde88192ebbf8459f6eb88ed27d46eeafb23ed72800fcf2b9ef2\";a:4:{s:10:\"expiration\";i:1605233223;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\";s:5:\"login\";i:1604023623;}s:64:\"75e856be744eabfd761051f021ac73606b74e29b13a557e33b688c2358445668\";a:4:{s:10:\"expiration\";i:1605325394;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\";s:5:\"login\";i:1604115794;}s:64:\"76de892172ad763f9694eedce95ae97e3dded1966fe43b5234a8fbf82b6dfcc3\";a:4:{s:10:\"expiration\";i:1605474148;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\";s:5:\"login\";i:1604264548;}s:64:\"260877e7f8323ffbb00369af92a33c3f7feb41406803df6e2c30a801d54b5b87\";a:4:{s:10:\"expiration\";i:1604886687;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.183 Safari/537.36\";s:5:\"login\";i:1604713887;}s:64:\"0cdb5a308d517b058079969eccaa73167fe1f5c0f0928a3d49464fc68f18ede9\";a:4:{s:10:\"expiration\";i:1604985128;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.183 Safari/537.36\";s:5:\"login\";i:1604812328;}s:64:\"a3e241c8d3dd602e3aeb5d91cebe47e62d3d424a3e151bb73db43f5a133eac74\";a:4:{s:10:\"expiration\";i:1605058984;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.183 Safari/537.36\";s:5:\"login\";i:1604886184;}}');
INSERT INTO `wp_usermeta` VALUES (17,1,'wp_dashboard_quick_press_last_post_id','203');
INSERT INTO `wp_usermeta` VALUES (18,1,'wp_user-settings','libraryContent=browse&mfold=o&posts_list_mode=list');
INSERT INTO `wp_usermeta` VALUES (19,1,'wp_user-settings-time','1604264073');
INSERT INTO `wp_usermeta` VALUES (20,1,'edit_page_per_page','20');
INSERT INTO `wp_usermeta` VALUES (21,1,'closedpostboxes_page','a:1:{i:0;s:13:\"pageparentdiv\";}');
INSERT INTO `wp_usermeta` VALUES (22,1,'metaboxhidden_page','a:6:{i:0;s:12:\"revisionsdiv\";i:1;s:10:\"postcustom\";i:2;s:16:\"commentstatusdiv\";i:3;s:11:\"commentsdiv\";i:4;s:7:\"slugdiv\";i:5;s:9:\"authordiv\";}');
INSERT INTO `wp_usermeta` VALUES (23,1,'community-events-location','a:4:{s:11:\"description\";s:6:\"Dallas\";s:8:\"latitude\";s:10:\"32.7830600\";s:9:\"longitude\";s:11:\"-96.8066700\";s:7:\"country\";s:2:\"US\";}');
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
INSERT INTO `wp_users` VALUES (1,'ammara_gul','$P$BXNNMOpXZYwctOPPE5dpCJ7xYNseq7.','ammara_gul','dev-email@flywheel.local','http://cmsproject.local','2020-10-26 22:15:12','',0,'ammara_gul');
/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-09 19:40:46
