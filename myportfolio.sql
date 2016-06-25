-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 25, 2016 at 02:07 PM
-- Server version: 5.5.49-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `myportfolio`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_01ab375a_uniq` (`content_type_id`,`codename`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=86 ;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add project', 1, 'add_project'),
(2, 'Can change project', 1, 'change_project'),
(3, 'Can delete project', 1, 'delete_project'),
(4, 'Can add site meta seo', 2, 'add_sitemetaseo'),
(5, 'Can change site meta seo', 2, 'change_sitemetaseo'),
(6, 'Can delete site meta seo', 2, 'delete_sitemetaseo'),
(7, 'Can add programming languge', 3, 'add_programminglanguge'),
(8, 'Can change programming languge', 3, 'change_programminglanguge'),
(9, 'Can delete programming languge', 3, 'delete_programminglanguge'),
(13, 'Can add social', 5, 'add_social'),
(14, 'Can change social', 5, 'change_social'),
(15, 'Can delete social', 5, 'delete_social'),
(16, 'Can add header cover', 6, 'add_headercover'),
(17, 'Can change header cover', 6, 'change_headercover'),
(18, 'Can delete header cover', 6, 'delete_headercover'),
(19, 'Can add front cover', 7, 'add_frontcover'),
(20, 'Can change front cover', 7, 'change_frontcover'),
(21, 'Can delete front cover', 7, 'delete_frontcover'),
(22, 'Can add log entry', 8, 'add_logentry'),
(23, 'Can change log entry', 8, 'change_logentry'),
(24, 'Can delete log entry', 8, 'delete_logentry'),
(25, 'Can add permission', 9, 'add_permission'),
(26, 'Can change permission', 9, 'change_permission'),
(27, 'Can delete permission', 9, 'delete_permission'),
(28, 'Can add group', 10, 'add_group'),
(29, 'Can change group', 10, 'change_group'),
(30, 'Can delete group', 10, 'delete_group'),
(31, 'Can add user', 11, 'add_user'),
(32, 'Can change user', 11, 'change_user'),
(33, 'Can delete user', 11, 'delete_user'),
(34, 'Can add content type', 12, 'add_contenttype'),
(35, 'Can change content type', 12, 'change_contenttype'),
(36, 'Can delete content type', 12, 'delete_contenttype'),
(37, 'Can add session', 13, 'add_session'),
(38, 'Can change session', 13, 'change_session'),
(39, 'Can delete session', 13, 'delete_session'),
(40, 'Can add subscriber', 14, 'add_subscriber'),
(41, 'Can change subscriber', 14, 'change_subscriber'),
(42, 'Can delete subscriber', 14, 'delete_subscriber'),
(43, 'Can add resume', 15, 'add_resume'),
(44, 'Can change resume', 15, 'change_resume'),
(45, 'Can delete resume', 15, 'delete_resume'),
(46, 'Can add about', 16, 'add_about'),
(47, 'Can change about', 16, 'change_about'),
(48, 'Can delete about', 16, 'delete_about'),
(61, 'Can add category', 21, 'add_category'),
(62, 'Can change category', 21, 'change_category'),
(63, 'Can delete category', 21, 'delete_category'),
(64, 'Can add tag', 22, 'add_tag'),
(65, 'Can change tag', 22, 'change_tag'),
(66, 'Can delete tag', 22, 'delete_tag'),
(67, 'Can add post', 23, 'add_post'),
(68, 'Can change post', 23, 'change_post'),
(69, 'Can delete post', 23, 'delete_post'),
(73, 'Can add author', 25, 'add_author'),
(74, 'Can change author', 25, 'change_author'),
(75, 'Can delete author', 25, 'delete_author'),
(76, 'Can add comment', 26, 'add_comment'),
(77, 'Can change comment', 26, 'change_comment'),
(78, 'Can delete comment', 26, 'delete_comment'),
(79, 'Can moderate comments', 26, 'can_moderate'),
(80, 'Can add comment flag', 27, 'add_commentflag'),
(81, 'Can change comment flag', 27, 'change_commentflag'),
(82, 'Can delete comment flag', 27, 'delete_commentflag'),
(83, 'Can add site', 28, 'add_site'),
(84, 'Can change site', 28, 'change_site'),
(85, 'Can delete site', 28, 'delete_site');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$24000$2emd2kHerued$jzu3Sr1jqx6jgyam8VGtes6pCTMDLYwcFl+bfrluOMs=', '2016-05-29 06:05:33', 1, 'ryandingle09', 'Ryan', 'Dingle', 'ryandingle09@gmail.com', 1, 1, '2016-04-24 09:59:20'),
(2, 'pbkdf2_sha256$24000$lGW8i4JbQJC3$FMEpRirw8MGImj1P2x1yS/NuFKIvwpq3bdnSSWBnbx0=', '2016-05-08 16:03:35', 0, 'rldwebshop', 'RLD', 'WEBSHOP', 'rldwebshop@gmail.com', 0, 1, '2016-05-08 16:02:07');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id` (`permission_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=40 ;

--
-- Dumping data for table `auth_user_user_permissions`
--

INSERT INTO `auth_user_user_permissions` (`id`, `user_id`, `permission_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 1, 5),
(6, 1, 6),
(7, 1, 7),
(8, 1, 8),
(9, 1, 9),
(13, 1, 13),
(14, 1, 14),
(15, 1, 15),
(16, 1, 16),
(17, 1, 17),
(18, 1, 18),
(19, 1, 19),
(20, 1, 20),
(21, 1, 21),
(22, 1, 22),
(23, 1, 23),
(24, 1, 24),
(25, 1, 25),
(26, 1, 26),
(27, 1, 27),
(28, 1, 28),
(29, 1, 29),
(30, 1, 30),
(31, 1, 31),
(32, 1, 32),
(33, 1, 33),
(34, 1, 34),
(35, 1, 35),
(36, 1, 36),
(37, 1, 37),
(38, 1, 38),
(39, 1, 39);

-- --------------------------------------------------------

--
-- Table structure for table `blog_author`
--

CREATE TABLE IF NOT EXISTS `blog_author` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(254) NOT NULL,
  `bio` longtext NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `blog_author`
--

INSERT INTO `blog_author` (`id`, `name`, `email`, `bio`) VALUES
(1, 'Ryan Dingle', 'ryandingle09@gmail.com', 'The simplest things are the most beautiful');

-- --------------------------------------------------------

--
-- Table structure for table `blog_category`
--

CREATE TABLE IF NOT EXISTS `blog_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `description` varchar(255) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `pub_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `image_cover` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `blog_category_2dbcba41` (`slug`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `blog_category`
--

INSERT INTO `blog_category` (`id`, `name`, `description`, `slug`, `pub_date`, `updated_date`, `image_cover`) VALUES
(1, 'Test 1', 'test 1', 'test-1', NULL, '2016-05-08 06:13:09', 'blog/Life-of-Pix-free-stock-photos-new-york-crosswalk-nabeel-1440x960.jpg'),
(2, 'test 2', 'test 2', 'test-2', NULL, '2016-05-08 06:12:59', 'blog/Life-of-Pix-free-stock-photos-clothes-exotic-travel-nabeel-1440x960.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `blog_post`
--

CREATE TABLE IF NOT EXISTS `blog_post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `body` longtext NOT NULL,
  `image_cover` varchar(100) NOT NULL,
  `pub_date` datetime NOT NULL,
  `updated_date` datetime NOT NULL,
  `creator_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `blog_post_2dbcba41` (`slug`),
  KEY `blog_post_creator_id_abbfd968_fk_blog_author_id` (`creator_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `blog_post`
--

INSERT INTO `blog_post` (`id`, `title`, `slug`, `body`, `image_cover`, `pub_date`, `updated_date`, `creator_id`) VALUES
(1, 'Lorem Ipsum', 'lorem-ipsum', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer id mauris nec nulla dapibus varius sit amet id mauris. Etiam pellentesque metus vitae tristique tempus. Duis fringilla diam eget augue consectetur, a tempor ante ultricies. Nulla varius libero nec elit ultricies, vel venenatis nulla ultricies. Nunc quis erat quis libero posuere molestie. Integer rhoncus magna ac metus tincidunt consequat. Nunc quis gravida eros. Proin vehicula sem mauris, sed sollicitudin lorem imperdiet vitae. Integer ultricies facilisis lacus, et dignissim massa. Maecenas blandit blandit orci in vehicula.</p>\r\n\r\n<p>Donec nec tempus massa. Nam eu bibendum nunc. Suspendisse imperdiet est nec metus fermentum venenatis. Nunc orci felis, vulputate vel elit et, ultricies efficitur enim. Aliquam maximus felis sed nisi lobortis rhoncus. Phasellus dictum, nulla vel feugiat venenatis, mauris justo iaculis orci, ut convallis erat orci eget erat. Integer ac felis quam. Sed tincidunt rutrum faucibus. Interdum et malesuada fames ac ante ipsum primis in faucibus.</p>\r\n\r\n<p>Fusce maximus ante sit amet felis fermentum interdum et eu nulla. Sed fringilla est ut velit viverra venenatis. Nam quis turpis in velit convallis venenatis. Ut a rutrum orci. Vivamus tincidunt at sem sit amet molestie. Fusce congue aliquet consequat. Donec luctus neque eleifend ullamcorper lobortis. Aenean lectus diam, lobortis at pellentesque sit amet, semper et magna. Fusce finibus quis sapien in dictum. Quisque scelerisque risus lacinia, suscipit lorem ac, varius dolor. Suspendisse potenti. Proin ornare urna est, sit amet porttitor magna tempor et. Nulla facilisi.</p>\r\n\r\n<p>Nulla a nisl felis. Vestibulum lacinia neque eget neque tempus, at lobortis dui cursus. Aliquam dignissim sem a nunc pulvinar fermentum. Suspendisse et tempus erat, quis facilisis massa. Quisque urna tortor, aliquam at viverra id, auctor ut nulla. Cras sit amet nulla eu leo luctus tempus nec sed ipsum. Curabitur quis vestibulum nisl, at tincidunt urna. Integer sed sodales nulla, et vulputate sem. Donec hendrerit ipsum efficitur nibh aliquet blandit.</p>\r\n\r\n<p>Ut at commodo purus, id pharetra odio. Proin ullamcorper lacus quis finibus commodo. Etiam sodales in est at blandit. Suspendisse mauris nisi, faucibus quis massa eget, viverra venenatis felis. Maecenas sit amet ligula a ante auctor posuere. Sed ullamcorper nec magna et suscipit. Curabitur tincidunt turpis vitae ligula dignissim sodales. Duis quam lacus, elementum eget leo non, lobortis sagittis urna. Morbi quis lectus maximus, sollicitudin urna in, suscipit lectus. Sed eget nibh aliquet, lacinia nisi quis, ultricies odio. Pellentesque et augue eget ligula congue consectetur eget ut nisl.</p>', 'blog/anniversary-flowers.jpg', '2016-05-03 17:13:38', '2016-05-03 17:28:40', 1),
(2, 'Lorem Ipsum-2', 'lorem-ipsum-2', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer id mauris nec nulla dapibus varius sit amet id mauris. Etiam pellentesque metus vitae tristique tempus. Duis fringilla diam eget augue consectetur, a tempor ante ultricies. Nulla varius libero nec elit ultricies, vel venenatis nulla ultricies. Nunc quis erat quis libero posuere molestie. Integer rhoncus magna ac metus tincidunt consequat. Nunc quis gravida eros. Proin vehicula sem mauris, sed sollicitudin lorem imperdiet vitae. Integer ultricies facilisis lacus, et dignissim massa. Maecenas blandit blandit orci in vehicula.</p>\r\n\r\n<p>Donec nec tempus massa. Nam eu bibendum nunc. Suspendisse imperdiet est nec metus fermentum venenatis. Nunc orci felis, vulputate vel elit et, ultricies efficitur enim. Aliquam maximus felis sed nisi lobortis rhoncus. Phasellus dictum, nulla vel feugiat venenatis, mauris justo iaculis orci, ut convallis erat orci eget erat. Integer ac felis quam. Sed tincidunt rutrum faucibus. Interdum et malesuada fames ac ante ipsum primis in faucibus.</p>\r\n\r\n<p>Fusce maximus ante sit amet felis fermentum interdum et eu nulla. Sed fringilla est ut velit viverra venenatis. Nam quis turpis in velit convallis venenatis. Ut a rutrum orci. Vivamus tincidunt at sem sit amet molestie. Fusce congue aliquet consequat. Donec luctus neque eleifend ullamcorper lobortis. Aenean lectus diam, lobortis at pellentesque sit amet, semper et magna. Fusce finibus quis sapien in dictum. Quisque scelerisque risus lacinia, suscipit lorem ac, varius dolor. Suspendisse potenti. Proin ornare urna est, sit amet porttitor magna tempor et. Nulla facilisi.</p>\r\n\r\n<p>Nulla a nisl felis. Vestibulum lacinia neque eget neque tempus, at lobortis dui cursus. Aliquam dignissim sem a nunc pulvinar fermentum. Suspendisse et tempus erat, quis facilisis massa. Quisque urna tortor, aliquam at viverra id, auctor ut nulla. Cras sit amet nulla eu leo luctus tempus nec sed ipsum. Curabitur quis vestibulum nisl, at tincidunt urna. Integer sed sodales nulla, et vulputate sem. Donec hendrerit ipsum efficitur nibh aliquet blandit.</p>\r\n\r\n<p>Ut at commodo purus, id pharetra odio. Proin ullamcorper lacus quis finibus commodo. Etiam sodales in est at blandit. Suspendisse mauris nisi, faucibus quis massa eget, viverra venenatis felis. Maecenas sit amet ligula a ante auctor posuere. Sed ullamcorper nec magna et suscipit. Curabitur tincidunt turpis vitae ligula dignissim sodales. Duis quam lacus, elementum eget leo non, lobortis sagittis urna. Morbi quis lectus maximus, sollicitudin urna in, suscipit lectus. Sed eget nibh aliquet, lacinia nisi quis, ultricies odio. Pellentesque et augue eget ligula congue consectetur eget ut nisl.</p>', 'blog/birthday-flowers-images-and-wallpapers-19.jpg', '2016-05-03 17:15:19', '2016-05-03 17:28:28', 1),
(3, 'Lorem Ipsum-3', 'lorem-ipsum-3', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer id mauris nec nulla dapibus varius sit amet id mauris. Etiam pellentesque metus vitae tristique tempus. Duis fringilla diam eget augue consectetur, a tempor ante ultricies. Nulla varius libero nec elit ultricies, vel venenatis nulla ultricies. Nunc quis erat quis libero posuere molestie. Integer rhoncus magna ac metus tincidunt consequat. Nunc quis gravida eros. Proin vehicula sem mauris, sed sollicitudin lorem imperdiet vitae. Integer ultricies facilisis lacus, et dignissim massa. Maecenas blandit blandit orci in vehicula.</p>\r\n\r\n<p>Donec nec tempus massa. Nam eu bibendum nunc. Suspendisse imperdiet est nec metus fermentum venenatis. Nunc orci felis, vulputate vel elit et, ultricies efficitur enim. Aliquam maximus felis sed nisi lobortis rhoncus. Phasellus dictum, nulla vel feugiat venenatis, mauris justo iaculis orci, ut convallis erat orci eget erat. Integer ac felis quam. Sed tincidunt rutrum faucibus. Interdum et malesuada fames ac ante ipsum primis in faucibus.</p>\r\n\r\n<p>Fusce maximus ante sit amet felis fermentum interdum et eu nulla. Sed fringilla est ut velit viverra venenatis. Nam quis turpis in velit convallis venenatis. Ut a rutrum orci. Vivamus tincidunt at sem sit amet molestie. Fusce congue aliquet consequat. Donec luctus neque eleifend ullamcorper lobortis. Aenean lectus diam, lobortis at pellentesque sit amet, semper et magna. Fusce finibus quis sapien in dictum. Quisque scelerisque risus lacinia, suscipit lorem ac, varius dolor. Suspendisse potenti. Proin ornare urna est, sit amet porttitor magna tempor et. Nulla facilisi.</p>\r\n\r\n<p>Nulla a nisl felis. Vestibulum lacinia neque eget neque tempus, at lobortis dui cursus. Aliquam dignissim sem a nunc pulvinar fermentum. Suspendisse et tempus erat, quis facilisis massa. Quisque urna tortor, aliquam at viverra id, auctor ut nulla. Cras sit amet nulla eu leo luctus tempus nec sed ipsum. Curabitur quis vestibulum nisl, at tincidunt urna. Integer sed sodales nulla, et vulputate sem. Donec hendrerit ipsum efficitur nibh aliquet blandit.</p>\r\n\r\n<p>Ut at commodo purus, id pharetra odio. Proin ullamcorper lacus quis finibus commodo. Etiam sodales in est at blandit. Suspendisse mauris nisi, faucibus quis massa eget, viverra venenatis felis. Maecenas sit amet ligula a ante auctor posuere. Sed ullamcorper nec magna et suscipit. Curabitur tincidunt turpis vitae ligula dignissim sodales. Duis quam lacus, elementum eget leo non, lobortis sagittis urna. Morbi quis lectus maximus, sollicitudin urna in, suscipit lectus. Sed eget nibh aliquet, lacinia nisi quis, ultricies odio. Pellentesque et augue eget ligula congue consectetur eget ut nisl.</p>', 'blog/6892514-white-flowers.jpg', '2016-05-03 17:29:06', '2016-05-03 17:29:06', 1);

-- --------------------------------------------------------

--
-- Table structure for table `blog_post_categories`
--

CREATE TABLE IF NOT EXISTS `blog_post_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `post_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `blog_post_categories_post_id_ed4f1727_uniq` (`post_id`,`category_id`),
  KEY `blog_post_categories_category_id_2211dae5_fk_blog_category_id` (`category_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `blog_post_categories`
--

INSERT INTO `blog_post_categories` (`id`, `post_id`, `category_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 2),
(4, 3, 1),
(5, 3, 2);

-- --------------------------------------------------------

--
-- Table structure for table `blog_post_tags`
--

CREATE TABLE IF NOT EXISTS `blog_post_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `post_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `blog_post_tags_post_id_4925ec37_uniq` (`post_id`,`tag_id`),
  KEY `blog_post_tags_tag_id_0875c551_fk_blog_tag_id` (`tag_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `blog_post_tags`
--

INSERT INTO `blog_post_tags` (`id`, `post_id`, `tag_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 2),
(4, 3, 1),
(5, 3, 2);

-- --------------------------------------------------------

--
-- Table structure for table `blog_tag`
--

CREATE TABLE IF NOT EXISTS `blog_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `description` varchar(255) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `pub_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `image_cover` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `blog_tag_2dbcba41` (`slug`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `blog_tag`
--

INSERT INTO `blog_tag` (`id`, `name`, `description`, `slug`, `pub_date`, `updated_date`, `image_cover`) VALUES
(1, 'test 1', 'test', 'test-1', NULL, '2016-05-08 06:12:21', 'blog/photo-1433959352364-9314c5b6eb0b-q75fmjpgw1080fitmaxs3b9bc6caa190332e91472b6828a120a4'),
(2, 'test 2', 'test 2', 'test-2', NULL, '2016-05-08 06:12:33', 'blog/Life-of-Pix-free-stock-photos-moto-drawing-illusion-nabeel-1440x960.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=122 ;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2016-04-24 10:01:00', '1', 'HeaderCover object', 1, 'Added.', 6, 1),
(2, '2016-04-24 10:04:37', '2', 'HeaderCover object', 1, 'Added.', 6, 1),
(3, '2016-04-24 10:04:55', '3', 'HeaderCover object', 1, 'Added.', 6, 1),
(4, '2016-04-24 10:07:59', '3', 'HeaderCover object', 2, 'Changed title.', 6, 1),
(5, '2016-04-24 10:08:20', '2', 'HeaderCover object', 2, 'Changed title.', 6, 1),
(6, '2016-04-24 10:08:27', '1', 'HeaderCover object', 2, 'Changed title.', 6, 1),
(7, '2016-04-24 10:08:32', '1', 'HeaderCover object', 2, 'Changed title.', 6, 1),
(8, '2016-04-24 10:26:57', '1', 'ryandingle09', 2, 'Changed first_name, last_name and user_permissions.', 11, 1),
(9, '2016-04-24 10:29:12', '1', 'FrontCover object', 1, 'Added.', 7, 1),
(10, '2016-04-24 10:31:49', '1', 'FrontCover object', 2, 'Changed image.', 7, 1),
(11, '2016-04-25 06:05:15', '1', 'Resume object', 1, 'Added.', 15, 1),
(12, '2016-04-25 11:29:58', '1', 'Social object', 1, 'Added.', 5, 1),
(13, '2016-04-25 11:30:32', '2', 'Social object', 1, 'Added.', 5, 1),
(14, '2016-04-25 11:32:40', '3', 'Social object', 1, 'Added.', 5, 1),
(15, '2016-04-25 11:42:25', '1', 'Project object', 1, 'Added.', 1, 1),
(16, '2016-04-25 11:42:52', '2', 'Project object', 1, 'Added.', 1, 1),
(17, '2016-04-25 11:50:28', '2', 'Project object', 2, 'Changed title.', 1, 1),
(18, '2016-04-25 11:54:42', '1', 'SiteMetaSeo object', 1, 'Added.', 2, 1),
(19, '2016-04-25 11:59:34', '3', 'Project object', 1, 'Added.', 1, 1),
(20, '2016-04-25 11:59:53', '4', 'Project object', 1, 'Added.', 1, 1),
(21, '2016-04-25 12:00:14', '5', 'Project object', 1, 'Added.', 1, 1),
(22, '2016-04-25 12:00:33', '6', 'Project object', 1, 'Added.', 1, 1),
(23, '2016-04-25 12:32:10', '1', 'ProgrammingLanguge object', 1, 'Added.', 3, 1),
(24, '2016-04-25 12:33:14', '2', 'ProgrammingLanguge object', 1, 'Added.', 3, 1),
(25, '2016-04-25 12:33:47', '3', 'ProgrammingLanguge object', 1, 'Added.', 3, 1),
(26, '2016-04-25 13:08:01', '4', 'ProgrammingLanguge object', 1, 'Added.', 3, 1),
(27, '2016-04-25 13:08:31', '5', 'ProgrammingLanguge object', 1, 'Added.', 3, 1),
(28, '2016-04-25 13:10:39', '6', 'ProgrammingLanguge object', 1, 'Added.', 3, 1),
(29, '2016-04-25 13:11:05', '7', 'ProgrammingLanguge object', 1, 'Added.', 3, 1),
(30, '2016-04-25 13:11:21', '8', 'ProgrammingLanguge object', 1, 'Added.', 3, 1),
(31, '2016-04-25 13:11:48', '9', 'ProgrammingLanguge object', 1, 'Added.', 3, 1),
(32, '2016-04-25 13:13:28', '10', 'ProgrammingLanguge object', 1, 'Added.', 3, 1),
(33, '2016-04-25 13:13:49', '11', 'ProgrammingLanguge object', 1, 'Added.', 3, 1),
(34, '2016-04-25 13:14:17', '12', 'ProgrammingLanguge object', 1, 'Added.', 3, 1),
(35, '2016-04-25 13:14:48', '13', 'ProgrammingLanguge object', 1, 'Added.', 3, 1),
(36, '2016-04-25 13:15:12', '14', 'ProgrammingLanguge object', 1, 'Added.', 3, 1),
(37, '2016-04-25 13:15:31', '15', 'ProgrammingLanguge object', 1, 'Added.', 3, 1),
(38, '2016-04-25 13:15:48', '16', 'ProgrammingLanguge object', 1, 'Added.', 3, 1),
(39, '2016-04-25 13:16:19', '17', 'ProgrammingLanguge object', 1, 'Added.', 3, 1),
(40, '2016-04-25 13:16:42', '18', 'ProgrammingLanguge object', 1, 'Added.', 3, 1),
(41, '2016-04-25 13:16:57', '19', 'ProgrammingLanguge object', 1, 'Added.', 3, 1),
(42, '2016-04-25 13:17:30', '20', 'ProgrammingLanguge object', 1, 'Added.', 3, 1),
(43, '2016-04-25 13:17:48', '21', 'ProgrammingLanguge object', 1, 'Added.', 3, 1),
(44, '2016-04-25 14:08:28', '1', 'About object', 1, 'Added.', 16, 1),
(45, '2016-04-25 14:09:49', '1', 'About object', 2, 'Changed image.', 16, 1),
(46, '2016-04-25 14:19:33', '1', 'About object', 2, 'Changed address.', 16, 1),
(47, '2016-04-29 16:12:12', '1', 'wefwewefewfwfkjwehfjk', 1, 'Added.', 21, 1),
(48, '2016-04-29 16:12:23', '1', 'wefwewefewfwfkjwehfjk', 3, '', 21, 1),
(49, '2016-04-30 01:49:25', '1', 'Ryan Dingle', 1, 'Added.', NULL, 1),
(50, '2016-04-30 01:49:35', '1', 'test 1', 1, 'Added.', 21, 1),
(51, '2016-04-30 01:49:44', '2', 'Tes 2', 1, 'Added.', 21, 1),
(52, '2016-04-30 01:49:56', '1', 'tag 1', 1, 'Added.', 22, 1),
(53, '2016-04-30 01:50:03', '2', 'tag 2', 1, 'Added.', 22, 1),
(54, '2016-04-30 01:50:10', '1', 'hello nigga test', 1, 'Added.', 23, 1),
(55, '2016-04-30 01:50:41', '1', 'hello nigga test', 2, 'No fields changed.', 23, 1),
(56, '2016-04-30 01:51:34', '2', 'hello nigga test', 1, 'Added.', 23, 1),
(57, '2016-04-30 02:02:02', '2', 'hello nigga test', 3, '', 23, 1),
(58, '2016-04-30 02:02:02', '1', 'hello nigga test', 3, '', 23, 1),
(59, '2016-04-30 02:03:05', '2', 'category 1', 2, 'Changed name, description and slug.', 21, 1),
(60, '2016-04-30 02:03:15', '1', 'category 2', 2, 'Changed name, description and slug.', 21, 1),
(61, '2016-04-30 02:03:34', '3', 'category 1', 1, 'Added.', 21, 1),
(62, '2016-04-30 02:04:37', '3', 'category 3', 2, 'Changed name and slug.', 21, 1),
(63, '2016-05-03 05:01:01', '3', 'Social object', 2, 'Changed icon.', 5, 1),
(64, '2016-05-03 05:01:17', '2', 'Social object', 2, 'Changed icon.', 5, 1),
(65, '2016-05-03 05:01:26', '1', 'Social object', 2, 'Changed icon.', 5, 1),
(66, '2016-05-03 08:09:35', '1', 'Ryan Dingle', 1, 'Added.', NULL, 1),
(67, '2016-05-03 08:09:50', '1', 'test caegory', 1, 'Added.', 21, 1),
(68, '2016-05-03 08:10:00', '1', 'test tag', 1, 'Added.', 22, 1),
(69, '2016-05-03 08:11:25', '1', 'test', 1, 'Added.', 23, 1),
(70, '2016-05-03 08:59:48', '1', 'test nigga', 2, 'Changed title.', 23, 1),
(71, '2016-05-03 08:59:55', '1', 'test nigga', 2, 'Changed slug.', 23, 1),
(72, '2016-05-03 09:05:43', '1', 'Lorem Ipsum', 2, 'Changed title, slug and body.', 23, 1),
(73, '2016-05-03 09:07:52', '1', 'Lorem Ipsum', 2, 'No fields changed.', 23, 1),
(74, '2016-05-03 09:08:46', '2', '2015 Summer Family Road Trip – Silay, Bacolod, Dumaguete', 1, 'Added.', 23, 1),
(75, '2016-05-03 13:23:58', '1', 'Category object', 2, 'No fields changed.', 21, 1),
(76, '2016-05-03 13:34:25', '2', 'test 2', 1, 'Added.', 22, 1),
(77, '2016-05-03 13:34:44', '1', 'Lorem Ipsum', 2, 'Changed tags.', 23, 1),
(78, '2016-05-03 13:42:07', '1', 'Author object', 2, 'No fields changed.', NULL, 1),
(79, '2016-05-03 13:42:23', '1', 'Lorem Ipsum', 2, 'No fields changed.', 23, 1),
(80, '2016-05-03 14:09:54', '1', 'Lorem Ipsum', 2, 'Changed categories.', 23, 1),
(81, '2016-05-03 14:10:06', '2', '2015 Summer Family Road Trip – Silay, Bacolod, Dumaguete', 2, 'Changed categories.', 23, 1),
(82, '2016-05-03 14:10:42', '2', '2015 Summer Family Road Trip – Silay, Bacolod, Dumaguete', 3, '', 23, 1),
(83, '2016-05-03 14:49:00', '3', 'test 4', 1, 'Added.', 22, 1),
(84, '2016-05-03 14:49:07', '1', 'Lorem Ipsum', 2, 'Changed tags.', 23, 1),
(85, '2016-05-03 15:38:05', '1', 'Post object', 2, 'No fields changed.', 23, 1),
(86, '2016-05-03 16:31:39', '2', 'testname-yeah', 1, 'Added.', 21, 1),
(87, '2016-05-03 17:12:37', '1', 'Ryan Dingle', 1, 'Added.', 25, 1),
(88, '2016-05-03 17:12:54', '1', 'Test 1', 1, 'Added.', 21, 1),
(89, '2016-05-03 17:13:07', '2', 'test 2', 1, 'Added.', 21, 1),
(90, '2016-05-03 17:13:18', '1', 'test 1', 1, 'Added.', 22, 1),
(91, '2016-05-03 17:13:27', '2', 'test 2', 1, 'Added.', 22, 1),
(92, '2016-05-03 17:13:38', '1', 'Post object', 1, 'Added.', 23, 1),
(93, '2016-05-03 17:15:19', '2', 'Post object', 1, 'Added.', 23, 1),
(94, '2016-05-03 17:28:28', '2', 'Post object', 2, 'Changed title.', 23, 1),
(95, '2016-05-03 17:28:40', '1', 'Post object', 2, 'No fields changed.', 23, 1),
(96, '2016-05-03 17:29:06', '3', 'Post object', 1, 'Added.', 23, 1),
(97, '2016-05-08 01:44:00', '2', 'test 2', 2, 'Changed image_cover.', 21, 1),
(98, '2016-05-08 01:45:11', '2', 'test 2', 2, 'Changed image_cover.', 21, 1),
(99, '2016-05-08 01:45:37', '2', 'test 2', 2, 'No fields changed.', 21, 1),
(100, '2016-05-08 01:45:51', '3', 'test 3', 1, 'Added.', 21, 1),
(101, '2016-05-08 01:46:38', '3', 'test 3', 3, '', 21, 1),
(102, '2016-05-08 01:50:58', '1', 'Resume object', 2, 'Changed resume.', 15, 1),
(103, '2016-05-08 01:51:13', '1', 'Resume object', 2, 'Changed resume.', 15, 1),
(104, '2016-05-08 01:54:22', '1', 'About object', 2, 'Changed about_content.', 16, 1),
(105, '2016-05-08 02:05:25', '1', 'About object', 2, 'Changed about_content.', 16, 1),
(106, '2016-05-08 02:05:57', '1', 'About object', 2, 'Changed about_content.', 16, 1),
(107, '2016-05-08 02:06:30', '1', 'About object', 2, 'Changed about_content.', 16, 1),
(108, '2016-05-08 06:12:00', '2', 'test 2', 2, 'Changed image_cover.', 22, 1),
(109, '2016-05-08 06:12:21', '1', 'test 1', 2, 'Changed image_cover.', 22, 1),
(110, '2016-05-08 06:12:33', '2', 'test 2', 2, 'Changed image_cover.', 22, 1),
(111, '2016-05-08 06:12:59', '2', 'test 2', 2, 'Changed image_cover.', 21, 1),
(112, '2016-05-08 06:13:09', '1', 'Test 1', 2, 'Changed image_cover.', 21, 1),
(113, '2016-05-08 09:02:32', '1', 'About object', 2, 'Changed image.', 16, 1),
(114, '2016-05-08 09:16:04', '1', 'About object', 2, 'Changed address.', 16, 1),
(115, '2016-05-08 09:19:17', '1', 'About object', 2, 'Changed address.', 16, 1),
(116, '2016-05-08 09:24:25', '1', 'About object', 2, 'Changed address.', 16, 1),
(117, '2016-05-08 09:26:38', '1', 'About object', 2, 'Changed address.', 16, 1),
(118, '2016-05-08 09:30:54', '1', 'About object', 2, 'Changed address.', 16, 1),
(119, '2016-05-08 10:07:18', '1', 'About object', 2, 'Changed about_content and address.', 16, 1),
(120, '2016-05-08 16:02:07', '2', 'rldwebshop', 1, 'Added.', 11, 1),
(121, '2016-05-08 16:03:45', '2', 'rldwebshop', 2, 'Changed first_name, last_name, email and last_login.', 11, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_comments`
--

CREATE TABLE IF NOT EXISTS `django_comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_pk` longtext NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `user_email` varchar(254) NOT NULL,
  `user_url` varchar(200) NOT NULL,
  `comment` longtext NOT NULL,
  `submit_date` datetime NOT NULL,
  `ip_address` char(39) DEFAULT NULL,
  `is_public` tinyint(1) NOT NULL,
  `is_removed` tinyint(1) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `site_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `django_commen_content_type_id_c4afe962_fk_django_content_type_id` (`content_type_id`),
  KEY `django_comments_site_id_9dcf666e_fk_django_site_id` (`site_id`),
  KEY `django_comments_user_id_a0a440a1_fk_auth_user_id` (`user_id`),
  KEY `django_comments_submit_date_514ed2d9_uniq` (`submit_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `django_comment_flags`
--

CREATE TABLE IF NOT EXISTS `django_comment_flags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `flag` varchar(30) NOT NULL,
  `flag_date` datetime NOT NULL,
  `comment_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_comment_flags_user_id_537f77a7_uniq` (`user_id`,`comment_id`,`flag`),
  KEY `django_comment_flags_comment_id_d8054933_fk_django_comments_id` (`comment_id`),
  KEY `django_comment_flags_327a6c43` (`flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=29 ;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(8, 'admin', 'logentry'),
(10, 'auth', 'group'),
(9, 'auth', 'permission'),
(11, 'auth', 'user'),
(25, 'blog', 'author'),
(21, 'blog', 'category'),
(23, 'blog', 'post'),
(22, 'blog', 'tag'),
(12, 'contenttypes', 'contenttype'),
(26, 'django_comments', 'comment'),
(27, 'django_comments', 'commentflag'),
(16, 'portfolio', 'about'),
(7, 'portfolio', 'frontcover'),
(6, 'portfolio', 'headercover'),
(3, 'portfolio', 'programminglanguge'),
(1, 'portfolio', 'project'),
(15, 'portfolio', 'resume'),
(2, 'portfolio', 'sitemetaseo'),
(5, 'portfolio', 'social'),
(14, 'portfolio', 'subscriber'),
(13, 'sessions', 'session'),
(28, 'sites', 'site');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=68 ;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2016-04-24 09:57:06'),
(2, 'auth', '0001_initial', '2016-04-24 09:57:08'),
(3, 'admin', '0001_initial', '2016-04-24 09:57:09'),
(4, 'admin', '0002_logentry_remove_auto_add', '2016-04-24 09:57:09'),
(5, 'contenttypes', '0002_remove_content_type_name', '2016-04-24 09:57:09'),
(6, 'auth', '0002_alter_permission_name_max_length', '2016-04-24 09:57:10'),
(7, 'auth', '0003_alter_user_email_max_length', '2016-04-24 09:57:10'),
(8, 'auth', '0004_alter_user_username_opts', '2016-04-24 09:57:10'),
(9, 'auth', '0005_alter_user_last_login_null', '2016-04-24 09:57:10'),
(10, 'auth', '0006_require_contenttypes_0002', '2016-04-24 09:57:10'),
(11, 'auth', '0007_alter_validators_add_error_messages', '2016-04-24 09:57:10'),
(12, 'portfolio', '0001_initial', '2016-04-24 09:57:10'),
(13, 'portfolio', '0002_auto_20160422_1715', '2016-04-24 09:57:10'),
(14, 'portfolio', '0003_auto_20160422_1725', '2016-04-24 09:57:10'),
(15, 'portfolio', '0004_proramminglanguges_skills_social', '2016-04-24 09:57:11'),
(16, 'portfolio', '0005_auto_20160422_1841', '2016-04-24 09:57:11'),
(17, 'portfolio', '0006_auto_20160422_1916', '2016-04-24 09:57:11'),
(18, 'portfolio', '0007_auto_20160422_1928', '2016-04-24 09:57:11'),
(19, 'portfolio', '0008_auto_20160424_0953', '2016-04-24 09:57:13'),
(20, 'sessions', '0001_initial', '2016-04-24 09:57:13'),
(21, 'portfolio', '0009_auto_20160424_1007', '2016-04-24 10:07:36'),
(22, 'portfolio', '0010_frontcover_image', '2016-04-24 10:31:20'),
(23, 'portfolio', '0011_delete_skill', '2016-04-24 10:59:56'),
(24, 'portfolio', '0012_subscriber', '2016-04-24 17:18:02'),
(25, 'portfolio', '0013_resume', '2016-04-25 05:58:46'),
(26, 'portfolio', '0014_social_url', '2016-04-25 11:25:31'),
(27, 'portfolio', '0015_auto_20160425_1126', '2016-04-25 11:26:24'),
(28, 'portfolio', '0016_about', '2016-04-25 14:06:24'),
(29, 'portfolio', '0017_about_image', '2016-04-25 14:09:13'),
(30, 'portfolio', '0018_auto_20160425_1423', '2016-04-25 14:23:28'),
(32, 'blog', '0001_initial', '2016-04-29 12:13:04'),
(33, 'blog', '0002_auto_20160429_1243', '2016-04-29 12:43:12'),
(34, 'blog', '0003_auto_20160429_1243', '2016-04-29 12:43:29'),
(35, 'blog', '0004_auto_20160429_1615', '2016-04-29 16:15:21'),
(36, 'blog', '0005_auto_20160430_0207', '2016-04-30 02:08:03'),
(37, 'blog', '0006_auto_20160430_0208', '2016-04-30 02:08:50'),
(38, 'blog', '0007_auto_20160430_0208', '2016-04-30 02:09:06'),
(39, 'blog', '0008_auto_20160430_0228', '2016-04-30 02:28:39'),
(40, 'blog', '0009_auto_20160430_0259', '2016-04-30 02:59:53'),
(41, 'blog', '0010_post_image_cover', '2016-05-01 04:43:52'),
(42, 'blog', '0011_auto_20160503_0815', '2016-05-03 08:16:02'),
(43, 'portfolio', '0019_auto_20160503_0815', '2016-05-03 08:16:03'),
(44, 'portfolio', '0020_auto_20160503_0821', '2016-05-03 08:21:54'),
(45, 'blog', '0012_auto_20160503_0832', '2016-05-03 08:33:04'),
(46, 'blog', '0013_auto_20160503_1408', '2016-05-03 14:08:32'),
(47, 'blog', '0014_auto_20160503_1409', '2016-05-03 14:09:37'),
(48, 'blog', '0015_auto_20160503_1507', '2016-05-03 15:07:40'),
(49, 'blog', '0016_auto_20160503_1511', '2016-05-03 15:11:54'),
(50, 'blog', '0017_auto_20160503_1537', '2016-05-03 15:37:38'),
(51, 'blog', '0018_remove_post_author', '2016-05-03 16:36:14'),
(52, 'blog', '0019_delete_author', '2016-05-03 16:38:13'),
(53, 'blog', '0020_auto_20160503_1645', '2016-05-03 16:45:33'),
(54, 'blog', '0021_auto_20160503_1703', '2016-05-03 17:03:38'),
(55, 'blog', '0022_auto_20160503_1704', '2016-05-03 17:04:48'),
(56, 'blog', '0023_auto_20160503_1707', '2016-05-03 17:07:47'),
(57, 'blog', '0024_auto_20160503_1708', '2016-05-03 17:08:36'),
(58, 'blog', '0025_auto_20160503_1709', '2016-05-03 17:09:30'),
(59, 'blog', '0026_auto_20160507_0308', '2016-05-07 03:08:39'),
(60, 'sites', '0001_initial', '2016-05-07 15:32:35'),
(61, 'django_comments', '0001_initial', '2016-05-07 15:32:37'),
(62, 'django_comments', '0002_update_user_email_field_length', '2016-05-07 15:32:37'),
(63, 'django_comments', '0003_add_submit_date_index', '2016-05-07 15:32:37'),
(64, 'sites', '0002_alter_domain_unique', '2016-05-07 15:32:37'),
(65, 'blog', '0027_auto_20160508_0137', '2016-05-08 01:37:55'),
(66, 'portfolio', '0021_about_about_content', '2016-05-08 01:48:55'),
(67, 'portfolio', '0022_about_address', '2016-05-08 09:12:57');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_de54fa62` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('bbpl77vaobkz5ud4mvvyj7owvs1pquod', 'MTIxODRlNDE4ZjI1ZDQ4MjJlYTNiZDVhZjMyNWIzNjIwZGZkMWRkNzp7Il9hdXRoX3VzZXJfaGFzaCI6IjkzNGRjMDgwNWNmZDI2ZjM1NGM3NmEzM2FkOGRjMjg2Yzc4M2RmYzUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2016-05-28 01:14:38'),
('ccocj03zatme6vlkvg4k9ohm9f5ti3xz', 'MTIxODRlNDE4ZjI1ZDQ4MjJlYTNiZDVhZjMyNWIzNjIwZGZkMWRkNzp7Il9hdXRoX3VzZXJfaGFzaCI6IjkzNGRjMDgwNWNmZDI2ZjM1NGM3NmEzM2FkOGRjMjg2Yzc4M2RmYzUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2016-06-12 06:05:33'),
('op7ye6hkc5qeboxgnfhn87dyxa2vfkcf', 'ODIxNDhjN2IyNDMwYjRlOTNkOGM1ODYyYTI2Y2Q4M2EyMWIwYTRmYzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiYzIyN2M3YzRkMjYzMDJmZWQ2MzlkOTEwNGNjN2FmZTZhM2VkNmIzOCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2016-05-08 12:47:07');

-- --------------------------------------------------------

--
-- Table structure for table `django_site`
--

CREATE TABLE IF NOT EXISTS `django_site` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `domain` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_site_domain_a2e37b91_uniq` (`domain`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `django_site`
--

INSERT INTO `django_site` (`id`, `domain`, `name`) VALUES
(1, 'example.com', 'example.com');

-- --------------------------------------------------------

--
-- Table structure for table `pma_bookmark`
--

CREATE TABLE IF NOT EXISTS `pma_bookmark` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `pma_column_info`
--

CREATE TABLE IF NOT EXISTS `pma_column_info` (
  `id` int(5) unsigned NOT NULL AUTO_INCREMENT,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin' AUTO_INCREMENT=43 ;

--
-- Dumping data for table `pma_column_info`
--

INSERT INTO `pma_column_info` (`id`, `db_name`, `table_name`, `column_name`, `comment`, `mimetype`, `transformation`, `transformation_options`) VALUES
(1, 'hotelservices', 'hotels', 'h_area_code', '', '', '_', ''),
(2, 'coinacademe', 'users', 'status', '', '', '_', ''),
(3, 'coinacademe', 'article', 'id', '', '', '_', ''),
(4, 'coinacademe', 'article', 'author', '', '', '_', ''),
(5, 'coinacademe', 'article', 'content', '', '', '_', ''),
(6, 'coinacademe', 'article', 'title', '', '', '_', ''),
(7, 'coinacademe', 'article', 'status', '', '', '_', ''),
(8, 'coinacademe', 'article', 'cover_img', '', '', '_', ''),
(9, 'coinacademe', 'exam_questions', 'id', '', '', '_', ''),
(10, 'coinacademe', 'exam_questions', 'article_id', '', '', '_', ''),
(11, 'coinacademe', 'exam_questions', 'q1', '', '', '_', ''),
(12, 'coinacademe', 'exam_questions', 'q1a', '', '', '_', ''),
(13, 'coinacademe', 'exam_questions', 'q1b', '', '', '_', ''),
(14, 'coinacademe', 'exam_questions', 'q1c', '', '', '_', ''),
(15, 'coinacademe', 'exam_questions', 'q1d', '', '', '_', ''),
(16, 'coinacademe', 'exam_questions', 'qans', '', '', '_', ''),
(17, 'coinacademe', 'category_relationships', 'id', '', '', '_', ''),
(18, 'coinacademe', 'category_relationships', 'category_id', '', '', '_', ''),
(19, 'coinacademe', 'category_relationships', 'category_post', '', '', '_', ''),
(20, 'coinacademe', 'category', 'category_id', '', '', '_', ''),
(21, 'coinacademe', 'category', 'category_name', '', '', '_', ''),
(22, 'coinacademe', 'category', 'category_parent', '', '', '_', ''),
(24, 'coinacademe', 'article', 'exam_count', '', '', '_', ''),
(25, 'exam', 'users', 'id', '', '', '_', ''),
(26, 'exam', 'users', 'email', '', '', '_', ''),
(27, 'exam', 'users', 'password', '', '', '_', ''),
(28, 'exam', 'users', 'fisrt_name', '', '', '_', ''),
(29, 'exam', 'users', 'last_name', '', '', '_', ''),
(30, 'exam', 'users', 'created_on', '', '', '_', ''),
(31, 'exam', 'users', 'first_name', '', '', '_', ''),
(32, 'exam', 'candidates', 'id', '', '', '_', ''),
(33, 'exam', 'candidates', 'firstname', '', '', '_', ''),
(34, 'exam', 'candidates', 'lastname', '', '', '_', ''),
(39, 'exam', 'candidates', 'address', '', '', '_', ''),
(38, 'exam', 'candidates', 'age', '', '', '_', ''),
(37, 'exam', 'candidates', 'votes', '', '', '_', ''),
(40, 'exam', 'votes', 'id', '', '', '_', ''),
(41, 'exam', 'votes', 'candidate_id', '', '', '_', ''),
(42, 'exam', 'votes', 'user_id', '', '', '_', '');

-- --------------------------------------------------------

--
-- Table structure for table `pma_designer_coords`
--

CREATE TABLE IF NOT EXISTS `pma_designer_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `x` int(11) DEFAULT NULL,
  `y` int(11) DEFAULT NULL,
  `v` tinyint(4) DEFAULT NULL,
  `h` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`db_name`,`table_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma_history`
--

CREATE TABLE IF NOT EXISTS `pma_history` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `username` (`username`,`db`,`table`,`timevalue`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `pma_pdf_pages`
--

CREATE TABLE IF NOT EXISTS `pma_pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '',
  PRIMARY KEY (`page_nr`),
  KEY `db_name` (`db_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `pma_recent`
--

CREATE TABLE IF NOT EXISTS `pma_recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma_recent`
--

INSERT INTO `pma_recent` (`username`, `tables`) VALUES
('root', '[{"db":"myportfolio","table":"blog_category"},{"db":"myportfolio","table":"django_content_type"},{"db":"myportfolio","table":"blog_post_categories"},{"db":"myportfolio","table":"blog_categorytopost"},{"db":"myportfolio","table":"blog_post_tags"},{"db":"myportfolio","table":"blog_tag"},{"db":"myportfolio","table":"blog_post"},{"db":"exam","table":"candidates"},{"db":"exam","table":"users"},{"db":"exam","table":"votes"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma_relation`
--

CREATE TABLE IF NOT EXISTS `pma_relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  KEY `foreign_field` (`foreign_db`,`foreign_table`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma_table_coords`
--

CREATE TABLE IF NOT EXISTS `pma_table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float unsigned NOT NULL DEFAULT '0',
  `y` float unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma_table_info`
--

CREATE TABLE IF NOT EXISTS `pma_table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`db_name`,`table_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma_table_uiprefs`
--

CREATE TABLE IF NOT EXISTS `pma_table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`username`,`db_name`,`table_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Table structure for table `pma_tracking`
--

CREATE TABLE IF NOT EXISTS `pma_tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) unsigned NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`db_name`,`table_name`,`version`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma_userconfig`
--

CREATE TABLE IF NOT EXISTS `pma_userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `portfolio_about`
--

CREATE TABLE IF NOT EXISTS `portfolio_about` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pub_date` datetime NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `about_content` longtext,
  `address` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `portfolio_about`
--

INSERT INTO `portfolio_about` (`id`, `pub_date`, `image`, `about_content`, `address`) VALUES
(1, '2016-04-25 14:06:44', 'images/12803086_957811210980712_4585720019932482305_n_Do3ccZA.jpg', '<h2><u><strong>EDUCATIONAL BACKGROUND</strong></u></h2>\r\n\r\n<p>- COLLEGE</p>\r\n\r\n<p>AMA COMPUTER UNIVERSITY</p>\r\n\r\n<p>BACHELOR OF SCIENCE IN COMPUTER SCIENCE</p>\r\n\r\n<p>MAJOR IN SOFTWARE DEVELOPMENT</p>\r\n\r\n<p>YEAR 2012&nbsp;&ndash; 2014</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>AMA COMPUTER LEARNING CENTER</p>\r\n\r\n<p>DIPLOMA IN SOFTWARE DEVELOPMENT</p>\r\n\r\n<p>MAJOR IN SOFTWARE DEVELOPMENT</p>\r\n\r\n<p>YEAR 2010 &ndash; 2012</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>-HIGH SCHOOL</p>\r\n\r\n<p>MUZON HIGH SCHOOL</p>\r\n\r\n<p>YEAR GRADUATED 2010</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>-&nbsp;ELEMENTARY</p>\r\n\r\n<p>BENITO NIETO ELEMENTARY SCHOOL</p>\r\n\r\n<p>YEAR GRADUATED 2006</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2><u><strong>PERSONAL DATA</strong></u></h2>\r\n\r\n<p>PROVINCIAL ADDRESS San Jose Del Monte Bulacan</p>\r\n\r\n<p>DATE OF BIRTH April 9, 1993</p>\r\n\r\n<p>PLACE OF BIRTH Can &ndash; avid Eastern Samar</p>\r\n\r\n<p>NATIONALITY Filipino</p>\r\n\r\n<p>SEX Male</p>\r\n\r\n<p>CIVIL STATUS Single<strong> </strong></p>\r\n\r\n<p>&shy;&shy;RELIGION Roman Catholic</p>', '<p>Ryan Dingle</p>\r\n\r\n<p>La Poblocaion Subdivision</p>\r\n\r\n<p>Brgy. Muzon San Jose Del Monte City Bulacan, Philippines - Ph</p>\r\n\r\n<p>+63 906 560 1556</p>\r\n\r\n<p>ryandingle09@gmail.com</p>');

-- --------------------------------------------------------

--
-- Table structure for table `portfolio_frontcover`
--

CREATE TABLE IF NOT EXISTS `portfolio_frontcover` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `signature` varchar(255) NOT NULL,
  `bio` longtext NOT NULL,
  `pub_date` datetime NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `portfolio_frontcover`
--

INSERT INTO `portfolio_frontcover` (`id`, `signature`, `bio`, `pub_date`, `title`, `image`) VALUES
(1, 'Ryan Dingle', 'I code, design and more..', '2016-04-24 10:28:17', 'Front Cover', 'images/me_Wfd0NQM.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `portfolio_headercover`
--

CREATE TABLE IF NOT EXISTS `portfolio_headercover` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(100) DEFAULT NULL,
  `video` varchar(100) NOT NULL,
  `pub_date` datetime NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `portfolio_headercover`
--

INSERT INTO `portfolio_headercover` (`id`, `image`, `video`, `pub_date`, `title`) VALUES
(1, 'images/Undo.jpg', 'videos/Undo.mp4', '2016-04-24 09:59:50', 'Undo'),
(2, 'images/Coder.jpg', 'videos/Coder.mp4', '2016-04-24 10:01:33', 'Coder'),
(3, 'images/Aloha-Mundo.jpg', 'videos/Aloha-Mundo.mp4', '2016-04-24 10:04:37', 'Aloha Mundo');

-- --------------------------------------------------------

--
-- Table structure for table `portfolio_programminglanguge`
--

CREATE TABLE IF NOT EXISTS `portfolio_programminglanguge` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `pub_date` datetime NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=22 ;

--
-- Dumping data for table `portfolio_programminglanguge`
--

INSERT INTO `portfolio_programminglanguge` (`id`, `name`, `description`, `pub_date`, `image`) VALUES
(1, 'Php Codeigniter', 'Pre Hypertext Processor', '2016-04-25 12:30:50', 'images/ci-logo.png'),
(2, 'Laravel Framework', 'Laravel Php Framework', '2016-04-25 12:32:10', 'images/2b35d0d0184e3fb7f6a77e7c2f5c85fe.png'),
(3, 'Python Django', 'Python Django Web Framework', '2016-04-25 12:33:14', 'images/django-logo.png'),
(4, 'Nodejs', 'Node js', '2016-04-25 12:40:14', 'images/prize-node.js.png'),
(5, 'Ruby On Rails', 'Ruby On rails', '2016-04-25 13:08:01', 'images/Ruby_on_Rails-logo.png'),
(6, 'Css Bootsrap', 'Css Bootsrap', '2016-04-25 13:08:31', 'images/UI_Shield_Bootstrap.png'),
(7, 'Html 5', 'html 5', '2016-04-25 13:10:39', 'images/HTML5_oval_logo.png'),
(8, 'Jquery', 'Jquery', '2016-04-25 13:11:05', 'images/jQurery.gif'),
(9, 'Javascript', 'Javascript', '2016-04-25 13:11:22', 'images/js-logo-badge-512.png'),
(10, 'Nginx', 'nginx', '2016-04-25 13:11:48', 'images/nginx-37d95ef9.png'),
(11, 'MySQL', 'MySQL', '2016-04-25 13:13:28', 'images/MySQL.svg.png'),
(12, 'Postgresql', 'Postgresql', '2016-04-25 13:13:49', 'images/logo.png'),
(13, 'Sub Version', 'Sub Version', '2016-04-25 13:14:17', 'images/Subversion_Logo.svg.png'),
(14, 'Github', 'Github', '2016-04-25 13:14:48', 'images/Git-Icon-1788C.png'),
(15, 'Adobe Photoshop', 'Adobe Photoshop', '2016-04-25 13:15:12', 'images/logo-photoshop.png'),
(16, 'Adobe Dreamweaver', 'Adobe Dreamweaver', '2016-04-25 13:15:31', 'images/Adobe_Dreamweaver_CS6_Icon.png'),
(17, 'Apache', 'Apache', '2016-04-25 13:15:48', 'images/apache_logo_medium_copy.png'),
(18, 'LAMP', 'Linux Apache Mysql Php', '2016-04-25 13:16:19', 'images/lamp-logo.png'),
(19, 'WAMP', 'Windows Apache Mysql Php', '2016-04-25 13:16:42', 'images/WampServer-logo.png'),
(20, 'Oracle Virtual Box', 'Oracle Virtual Box', '2016-04-25 13:16:57', 'images/Virtualbox_logo.png'),
(21, 'Vm ware workstation', 'Vm ware workstation', '2016-04-25 13:17:30', 'images/vmware_Iphone02.png');

-- --------------------------------------------------------

--
-- Table structure for table `portfolio_project`
--

CREATE TABLE IF NOT EXISTS `portfolio_project` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `website` varchar(200) NOT NULL,
  `image` varchar(100) NOT NULL,
  `status` varchar(20) NOT NULL,
  `pub_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `portfolio_project`
--

INSERT INTO `portfolio_project` (`id`, `title`, `description`, `website`, `image`, `status`, `pub_date`) VALUES
(1, 'Test 1', 'A test 1 upload', 'http://ecms.esy.es', 'projects/tumblr_nqune4OGHl1slhhf0o1_1280.jpg', '0', '2016-04-25 11:35:49'),
(2, 'Test 2', 'A test 2 upload', 'http://ryandingle.co.nf', 'projects/photo-1430916273432-273c2db881a0-q75fmjpgw1080fitmaxsf047e8284d2fdc1df0fd57a5d294614d', '0', '2016-04-25 11:42:25'),
(3, 'Test 3', 'A test 3', 'http://ecms.esy.es', 'projects/photo-1433959352364-9314c5b6eb0b-q75fmjpgw1080fitmaxs3b9bc6caa190332e91472b6828a120a4', '0', '2016-04-25 11:58:41'),
(4, 'test 4', 'a test 4', 'http://ecms.esy.es', 'projects/Life-of-Pix-free-stock-photos-moto-drawing-illusion-nabeel-1440x960.jpg', '0', '2016-04-25 11:59:35'),
(5, 'Test 5', 'a test 5', 'http://ecms.esy.es', 'projects/Life-of-Pix-free-stock-photos-new-york-crosswalk-nabeel-1440x960.jpg', '0', '2016-04-25 11:59:54'),
(6, 'Test 6', 'a test 6', 'http://ecms.esy.es', 'projects/Life-of-Pix-free-stock-photos-clothes-exotic-travel-nabeel-1440x960.jpg', '0', '2016-04-25 12:00:14');

-- --------------------------------------------------------

--
-- Table structure for table `portfolio_resume`
--

CREATE TABLE IF NOT EXISTS `portfolio_resume` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `resume` varchar(100) NOT NULL,
  `pub_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `portfolio_resume`
--

INSERT INTO `portfolio_resume` (`id`, `title`, `resume`, `pub_date`) VALUES
(1, 'Ryan Dingle', 'cv/RYAN_DINGLE_RESUME.docx', '2016-04-25 06:04:35');

-- --------------------------------------------------------

--
-- Table structure for table `portfolio_sitemetaseo`
--

CREATE TABLE IF NOT EXISTS `portfolio_sitemetaseo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `pub_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `portfolio_sitemetaseo`
--

INSERT INTO `portfolio_sitemetaseo` (`id`, `title`, `name`, `description`, `image`, `pub_date`) VALUES
(1, 'My Portfolio', 'Ryan Dingle', 'I code and design, I''m a rockstar', 'images/12803086_957811210980712_4585720019932482305_n.jpg', '2016-04-25 11:52:34');

-- --------------------------------------------------------

--
-- Table structure for table `portfolio_social`
--

CREATE TABLE IF NOT EXISTS `portfolio_social` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `pub_date` datetime NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `portfolio_social`
--

INSERT INTO `portfolio_social` (`id`, `name`, `icon`, `pub_date`, `url`) VALUES
(1, 'Facebook', 'ion-social-facebook-outline fa-facebook', '2016-04-25 11:29:07', 'https://www.facebook.com/ryan.and.kate.forever.married.asawacUh.09'),
(2, 'Twitter', 'ion-social-twitter-outline fa-twitter', '2016-04-25 11:29:58', 'https://www.twitter.com/ryandingle09'),
(3, 'Google Plus', 'ion-social-googleplus-outline fa-google-plus', '2016-04-25 11:31:26', 'https://plus.google.com/u/0/111287263164059137424');

-- --------------------------------------------------------

--
-- Table structure for table `portfolio_subscriber`
--

CREATE TABLE IF NOT EXISTS `portfolio_subscriber` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `pub_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `portfolio_subscriber`
--

INSERT INTO `portfolio_subscriber` (`id`, `email`, `pub_date`) VALUES
(1, 'ryandingle09@gmail.com', '0000-00-00 00:00:00'),
(2, 'ryandingle09@gmail.com', '0000-00-00 00:00:00'),
(3, 'ryandingle0gmail.com', '0000-00-00 00:00:00'),
(4, 'ryandingle09@gmail.com', '0000-00-00 00:00:00'),
(5, 'ryandingle09@gmail', '0000-00-00 00:00:00'),
(6, 'ryandingle09@gmail.com', '0000-00-00 00:00:00');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permissi_content_type_id_2f476e4b_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- Constraints for table `blog_post`
--
ALTER TABLE `blog_post`
  ADD CONSTRAINT `blog_post_creator_id_abbfd968_fk_blog_author_id` FOREIGN KEY (`creator_id`) REFERENCES `blog_author` (`id`);

--
-- Constraints for table `blog_post_categories`
--
ALTER TABLE `blog_post_categories`
  ADD CONSTRAINT `blog_post_categories_category_id_2211dae5_fk_blog_category_id` FOREIGN KEY (`category_id`) REFERENCES `blog_category` (`id`),
  ADD CONSTRAINT `blog_post_categories_post_id_c34e7be1_fk_blog_post_id` FOREIGN KEY (`post_id`) REFERENCES `blog_post` (`id`);

--
-- Constraints for table `blog_post_tags`
--
ALTER TABLE `blog_post_tags`
  ADD CONSTRAINT `blog_post_tags_post_id_a1c71c8a_fk_blog_post_id` FOREIGN KEY (`post_id`) REFERENCES `blog_post` (`id`),
  ADD CONSTRAINT `blog_post_tags_tag_id_0875c551_fk_blog_tag_id` FOREIGN KEY (`tag_id`) REFERENCES `blog_tag` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `django_comments`
--
ALTER TABLE `django_comments`
  ADD CONSTRAINT `django_comments_site_id_9dcf666e_fk_django_site_id` FOREIGN KEY (`site_id`) REFERENCES `django_site` (`id`),
  ADD CONSTRAINT `django_comments_user_id_a0a440a1_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `django_commen_content_type_id_c4afe962_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `django_comment_flags`
--
ALTER TABLE `django_comment_flags`
  ADD CONSTRAINT `django_comment_flags_comment_id_d8054933_fk_django_comments_id` FOREIGN KEY (`comment_id`) REFERENCES `django_comments` (`id`),
  ADD CONSTRAINT `django_comment_flags_user_id_f3f81f0a_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
