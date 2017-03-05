
-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 19-08-2013 a las 07:00:08
-- Versión del servidor: 5.1.69
-- Versión de PHP: 5.2.17

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `u817287704_nexus`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentarios`
--

CREATE TABLE IF NOT EXISTS `comentarios` (
  `id` bigint(7) DEFAULT NULL,
  `id_juego` bigint(7) DEFAULT NULL,
  `nick` char(20) DEFAULT 'Anónimo',
  `comentario` varchar(500) DEFAULT NULL,
  `fecha` varchar(50) NOT NULL DEFAULT '',
  `ip` varchar(20) NOT NULL DEFAULT '',
  `userid` varchar(10) NOT NULL DEFAULT '',
  `avatar` varchar(200) NOT NULL DEFAULT '',
  KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `comentarios`
--

INSERT INTO `comentarios` (`id`, `id_juego`, `nick`, `comentario`, `fecha`, `ip`, `userid`, `avatar`) VALUES
(1, 1, 'Caca máx', 'Bugs eberigüer xD', '06-04-2013 07:44:24', '2.138.65.169', '', ''),
(1, 1, 'Pollasdetijera', 'XdxdxDxdxD  Buena web. +1 ME SUSCRIVO!', '', '', '', ''),
(1, 5, 'regrg', 'rgrgre', '14-04-2013 11:17:25', '88.15.234.8', '', ''),
(1, 13, 'Caca', 'Sisisisisisi', '14-04-2013 11:18:05', '2.138.65.169', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hits`
--

CREATE TABLE IF NOT EXISTS `hits` (
  `page` char(100) NOT NULL DEFAULT '',
  `count` int(15) DEFAULT '-1',
  PRIMARY KEY (`page`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `hits`
--

INSERT INTO `hits` (`page`, `count`) VALUES
('IkillLauncher', 3),
('MasterShell', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `info`
--

CREATE TABLE IF NOT EXISTS `info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(30) DEFAULT NULL,
  `user_agent` varchar(50) DEFAULT NULL,
  `datetime` varchar(25) DEFAULT NULL,
  `app` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `info`
--

INSERT INTO `info` (`id`, `ip_address`, `user_agent`, `datetime`, `app`) VALUES
(1, '2.138.111.150', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/53', '2013/06/29 08:26:30', 'IkillLauncher'),
(2, '37.15.99.122', 'Mozilla/5.0 (Windows NT 6.1; rv:5.0) Gecko/2010010', '2013/06/29 14:15:43', 'IkillLauncher'),
(3, '82.158.219.215', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/53', '2013/06/30 05:11:21', 'IkillLauncher');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `juegos`
--

CREATE TABLE IF NOT EXISTS `juegos` (
  `id` bigint(7) NOT NULL AUTO_INCREMENT,
  `miniatura` varchar(250) NOT NULL DEFAULT '',
  `linkjuego` varchar(250) NOT NULL DEFAULT '',
  `nombre` varchar(50) NOT NULL DEFAULT '',
  `descripcion` varchar(500) NOT NULL DEFAULT '',
  `categoria` varchar(50) NOT NULL DEFAULT '',
  `cat2` varchar(50) NOT NULL DEFAULT '',
  `tipo` varchar(10) NOT NULL DEFAULT '',
  `teclas` longtext NOT NULL,
  `acciones` longtext NOT NULL,
  `ancho` varchar(4) NOT NULL DEFAULT '',
  `alto` varchar(4) NOT NULL DEFAULT '',
  `code` varchar(5000) NOT NULL DEFAULT '',
  KEY `id` (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=61 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modpacks`
--

CREATE TABLE IF NOT EXISTS `modpacks` (
  `id` bigint(7) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) NOT NULL DEFAULT '',
  `name` varchar(30) NOT NULL DEFAULT '',
  `descarga` varchar(300) NOT NULL DEFAULT '',
  `version` varchar(4) NOT NULL DEFAULT '1',
  `descripcion` varchar(500) NOT NULL DEFAULT '',
  `vermc` varchar(25) NOT NULL DEFAULT 'Null',
  KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rabid_ratables`
--

CREATE TABLE IF NOT EXISTS `rabid_ratables` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ratableKey` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ratableKey` (`ratableKey`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Volcado de datos para la tabla `rabid_ratables`
--

INSERT INTO `rabid_ratables` (`id`, `ratableKey`, `created_at`) VALUES
(1, 'myArticle1', '2013-05-09 00:52:23'),
(2, 'myArticle2', '2013-05-09 00:52:23'),
(3, 'myArticle3', '2013-05-09 00:52:23'),
(4, 'myArticle4', '2013-05-09 00:52:23'),
(5, 'anotherGreatArticle', '2013-05-09 12:25:51'),
(6, 'myArticle6', '2013-05-11 20:12:56');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rabid_ratings`
--

CREATE TABLE IF NOT EXISTS `rabid_ratings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ratable_id` int(11) NOT NULL,
  `ip_address` varchar(50) NOT NULL,
  `rating` int(11) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ratable_id` (`ratable_id`,`ip_address`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=27 ;

--
-- Volcado de datos para la tabla `rabid_ratings`
--

INSERT INTO `rabid_ratings` (`id`, `ratable_id`, `ip_address`, `rating`, `timestamp`) VALUES
(1, 1, '2.138.44.201', 100, '2013-05-09 00:52:26'),
(2, 2, '2.138.44.201', 20, '2013-05-09 00:52:33'),
(3, 3, '2.138.44.201', 60, '2013-05-09 00:52:35'),
(4, 4, '2.138.44.201', 80, '2013-05-09 00:52:36'),
(5, 5, '2.138.44.201', 100, '2013-05-09 12:32:48'),
(6, 2, '190.250.101.153', 80, '2013-05-09 19:30:59'),
(7, 5, '190.250.101.153', 100, '2013-05-09 19:31:02'),
(8, 4, '190.250.101.153', 20, '2013-05-09 19:31:05'),
(9, 3, '190.250.101.153', 60, '2013-05-09 19:31:07'),
(10, 2, '190.111.65.4', 80, '2013-05-10 22:01:10'),
(11, 3, '190.111.65.4', 100, '2013-05-10 22:01:16'),
(12, 4, '190.111.65.4', 100, '2013-05-10 22:01:19'),
(13, 1, '190.111.65.4', 100, '2013-05-10 22:01:22'),
(14, 5, '190.111.65.4', 100, '2013-05-10 22:01:24'),
(15, 5, '213.98.86.188', 60, '2013-05-11 20:06:43'),
(16, 4, '213.98.86.188', 100, '2013-05-11 20:06:46'),
(17, 3, '213.98.86.188', 100, '2013-05-11 20:06:47'),
(18, 2, '213.98.86.188', 100, '2013-05-11 20:06:48'),
(19, 1, '213.98.86.188', 100, '2013-05-11 20:06:50'),
(20, 3, '2.138.105.40', 100, '2013-05-11 20:06:57'),
(21, 4, '2.138.105.40', 80, '2013-05-11 20:07:00'),
(22, 5, '2.138.105.40', 100, '2013-05-11 20:07:02'),
(23, 2, '2.138.105.40', 40, '2013-05-11 20:07:03'),
(24, 1, '2.138.105.40', 100, '2013-05-11 20:07:05'),
(25, 2, '199.193.115.145', 80, '2013-05-11 22:21:11'),
(26, 3, '199.193.115.145', 100, '2013-05-11 22:21:14');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `smf_ikilladmin_info_files`
--

CREATE TABLE IF NOT EXISTS `smf_ikilladmin_info_files` (
  `id_file` tinyint(4) unsigned NOT NULL AUTO_INCREMENT,
  `filename` varchar(255) NOT NULL DEFAULT '',
  `path` varchar(255) NOT NULL DEFAULT '',
  `parameters` varchar(255) NOT NULL DEFAULT '',
  `data` text NOT NULL,
  `filetype` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id_file`),
  KEY `filename` (`filename`(30))
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Volcado de datos para la tabla `smf_ikilladmin_info_files`
--

INSERT INTO `smf_ikilladmin_info_files` (`id_file`, `filename`, `path`, `parameters`, `data`, `filetype`) VALUES
(1, 'current-version.js', '/smf/', 'version=%3$s', '', 'text/javascript'),
(2, 'detailed-version.js', '/smf/', 'language=%1$s&version=%3$s', '', 'text/javascript'),
(3, 'latest-news.js', '/smf/', 'language=%1$s&format=%2$s', '', 'text/javascript'),
(4, 'latest-packages.js', '/smf/', 'language=%1$s&version=%3$s', '', 'text/javascript'),
(5, 'latest-smileys.js', '/smf/', 'language=%1$s&version=%3$s', '', 'text/javascript'),
(6, 'latest-support.js', '/smf/', 'language=%1$s&version=%3$s', '', 'text/javascript'),
(7, 'latest-themes.js', '/smf/', 'language=%1$s&version=%3$s', '', 'text/javascript');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `smf_ikillapproval_queue`
--

CREATE TABLE IF NOT EXISTS `smf_ikillapproval_queue` (
  `id_msg` int(10) unsigned NOT NULL DEFAULT '0',
  `id_attach` int(10) unsigned NOT NULL DEFAULT '0',
  `id_event` smallint(5) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `smf_ikillattachments`
--

CREATE TABLE IF NOT EXISTS `smf_ikillattachments` (
  `id_attach` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_thumb` int(10) unsigned NOT NULL DEFAULT '0',
  `id_msg` int(10) unsigned NOT NULL DEFAULT '0',
  `id_member` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `id_folder` tinyint(3) NOT NULL DEFAULT '1',
  `attachment_type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `filename` varchar(255) NOT NULL DEFAULT '',
  `file_hash` varchar(40) NOT NULL DEFAULT '',
  `fileext` varchar(8) NOT NULL DEFAULT '',
  `size` int(10) unsigned NOT NULL DEFAULT '0',
  `downloads` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `width` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `height` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `mime_type` varchar(20) NOT NULL DEFAULT '',
  `approved` tinyint(3) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_attach`),
  UNIQUE KEY `id_member` (`id_member`,`id_attach`),
  KEY `id_msg` (`id_msg`),
  KEY `attachment_type` (`attachment_type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `smf_ikillban_groups`
--

CREATE TABLE IF NOT EXISTS `smf_ikillban_groups` (
  `id_ban_group` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL DEFAULT '',
  `ban_time` int(10) unsigned NOT NULL DEFAULT '0',
  `expire_time` int(10) unsigned DEFAULT NULL,
  `cannot_access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `cannot_register` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `cannot_post` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `cannot_login` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `reason` varchar(255) NOT NULL DEFAULT '',
  `notes` text NOT NULL,
  PRIMARY KEY (`id_ban_group`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `smf_ikillban_items`
--

CREATE TABLE IF NOT EXISTS `smf_ikillban_items` (
  `id_ban` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `id_ban_group` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ip_low1` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ip_high1` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ip_low2` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ip_high2` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ip_low3` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ip_high3` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ip_low4` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ip_high4` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `hostname` varchar(255) NOT NULL DEFAULT '',
  `email_address` varchar(255) NOT NULL DEFAULT '',
  `id_member` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hits` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_ban`),
  KEY `id_ban_group` (`id_ban_group`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `smf_ikillboards`
--

CREATE TABLE IF NOT EXISTS `smf_ikillboards` (
  `id_board` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `id_cat` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `child_level` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `id_parent` smallint(5) unsigned NOT NULL DEFAULT '0',
  `board_order` smallint(5) NOT NULL DEFAULT '0',
  `id_last_msg` int(10) unsigned NOT NULL DEFAULT '0',
  `id_msg_updated` int(10) unsigned NOT NULL DEFAULT '0',
  `member_groups` varchar(255) NOT NULL DEFAULT '-1,0',
  `id_profile` smallint(5) unsigned NOT NULL DEFAULT '1',
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `num_topics` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `num_posts` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `count_posts` tinyint(4) NOT NULL DEFAULT '0',
  `id_theme` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `override_theme` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `unapproved_posts` smallint(5) NOT NULL DEFAULT '0',
  `unapproved_topics` smallint(5) NOT NULL DEFAULT '0',
  `redirect` varchar(255) NOT NULL DEFAULT '',
  `img_link` tinytext NOT NULL,
  `img_filename` tinytext NOT NULL,
  PRIMARY KEY (`id_board`),
  UNIQUE KEY `categories` (`id_cat`,`id_board`),
  KEY `id_parent` (`id_parent`),
  KEY `id_msg_updated` (`id_msg_updated`),
  KEY `member_groups` (`member_groups`(48))
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=62 ;

--
-- Volcado de datos para la tabla `smf_ikillboards`
--

INSERT INTO `smf_ikillboards` (`id_board`, `id_cat`, `child_level`, `id_parent`, `board_order`, `id_last_msg`, `id_msg_updated`, `member_groups`, `id_profile`, `name`, `description`, `num_topics`, `num_posts`, `count_posts`, `id_theme`, `override_theme`, `unapproved_posts`, `unapproved_topics`, `redirect`, `img_link`, `img_filename`) VALUES
(5, 1, 0, 0, 1, 0, 0, '-1,0,2,9,4,5,6,8', 1, 'Bienvenidas/Despedidas y Cumpleaños', '<b>¿Eres nuevo aquí?</b> ven a presentarte aquí.<br>\r\n<b>¿Te vas del Foro?</b>, no te olvides de despedirte...<br>\r\n<b>¿Es tu cumple?</b> ven a celebrarlo. :D', 0, 0, 1, 0, 0, 0, 0, '', '', 'https://cdn0.iconfinder.com/data/icons/ie_yummy/48/cake_13.png'),
(1, 1, 0, 0, 2, 0, 0, '-1,0,2,9,4,5,6,8', 4, 'Eventos y noticias sobre el foro', 'Aquí estarán redactados todas las noticias y eventos del Foro.', 0, 0, 0, 0, 0, 0, 0, '', '', 'https://cdn3.iconfinder.com/data/icons/humano2/48x48/apps/internet-news-reader.png'),
(2, 1, 0, 0, 3, 0, 0, '-1,0,2,9,4,5,6,8', 1, 'Dudas y sugerencias sobre el Foro', '<b>¿Tienes alguna pregunta o idea para el Foro?</b> Posteala aquí sin miedo.', 0, 0, 0, 0, 0, 0, 0, '', '', 'https://cdn2.iconfinder.com/data/icons/oxygen/48x48/actions/help-contents.png'),
(50, 1, 0, 0, 4, 0, 0, '-1,0,2,9', 1, 'Dudas Generales', '<b>¿Una duda te asalta y no sabes donde ponerla?</b> Ponla aquí!', 0, 0, 0, 0, 0, 0, 0, '', '', 'https://cdn1.iconfinder.com/data/icons/CrystalClear/48x48/apps/Community%20Help.png'),
(3, 1, 0, 0, 5, 0, 0, '-1,0,2,9,4,5,6,8', 1, 'Foro Libre (Off-Topic)', 'Siéntete libre de hablar aquí de todo con el mundo.', 0, 0, 1, 0, 0, 0, 0, '', '', 'https://cdn1.iconfinder.com/data/icons/nuvola2/48x48/apps/edu_languages.png'),
(4, 2, 0, 0, 6, 0, 0, '-1,0,2,9,4,5,6,8', 1, 'Música', 'Comparte tu música favorita, información, recitales, conciertos y demás.', 0, 0, 0, 0, 0, 0, 0, '', '', 'https://cdn4.iconfinder.com/data/icons/STROKE/networking/png/48/headphone.png'),
(6, 2, 0, 0, 7, 0, 0, '-1,0,2,9,4,5,6,8', 1, 'Películas, series y vídeos', '<b>Películas y series:</b> toda la información sobre estrenos, trailers, series y televisión.<br>\r\n<b>Vídeos:</b> muéstranos aquellos vídeos que creas necesario compartir con todos en la comunidad.', 0, 0, 0, 0, 0, 0, 0, '', '', 'https://cdn2.iconfinder.com/data/icons/minicons/Png/Video.png'),
(8, 2, 0, 0, 8, 0, 0, '-1,0,2,9,4,5,6,8', 1, 'Anime y Manga', 'Aquí podrás compartir tus animes y mangas favoritos!', 0, 0, 0, 0, 0, 0, 0, '', '', 'https://cdn3.iconfinder.com/data/icons/mixed-3d-icons/512/Anime-48.png'),
(7, 2, 0, 0, 9, 0, 0, '-1,0,2,9,4,5,6,8', 1, 'Juegos y demás (Zona Gamer)', 'Comparte tus juegos favoritos con todos los usuarios.', 0, 0, 0, 0, 0, 0, 0, '', '', 'https://cdn3.iconfinder.com/data/icons/humano2/48x48/emblems/emblem-games.png'),
(15, 2, 0, 0, 10, 0, 0, '-1,0,2,9,4,5,6,8', 1, 'Literatura y cómics', 'Punto de encuentro de los fans del papel, letras y viñetas.', 0, 0, 0, 0, 0, 0, 0, '', '', 'https://cdn0.iconfinder.com/data/icons/48_px_web_icons/48/Book.png'),
(11, 3, 0, 0, 11, 0, 0, '-1,0,2,9,4,5,6,8', 1, 'Noticias', 'Toda la actualidad, debates, y opiniones aquí.', 0, 0, 0, 0, 0, 0, 0, '', '', 'https://cdn2.iconfinder.com/data/icons/gnomeicontheme/48x48/stock/generic/stock_news.png'),
(9, 3, 0, 0, 12, 0, 0, '-1,0,2,9,4,5,6,8', 1, 'Humor', 'Pon aquí todos tus chistes, historias y paranoias divertidas.', 0, 0, 0, 0, 0, 0, 0, '', '', 'https://cdn3.iconfinder.com/data/icons/humano2/48x48/emotes/face-laugh.png'),
(12, 3, 0, 0, 13, 0, 0, '-1,0,2,9,4,5,6,8', 1, 'Cine y TV', 'El mundo del celuloide y la caja tonta, al descubierto.', 0, 0, 0, 0, 0, 0, 0, '', '', 'https://cdn1.iconfinder.com/data/icons/CrystalClear/48x48/devices/tv.png'),
(10, 3, 0, 0, 14, 0, 0, '-1,0,2,9,4,5,6,8', 1, 'Deportes y motor', '<b>Deporte:</b> actualidad deportiva sobre fútbol, baloncesto, tenis, etc.<br>\r\n<b>Motor:</b> subforo para los apasionados del motor y competición sobre ruedas.', 0, 0, 0, 0, 0, 0, 0, '', '', 'https://cdn4.iconfinder.com/data/icons/SOPHISTIQUE/education_icons/png/48/recreation.png'),
(14, 3, 0, 0, 15, 0, 0, '-1,0,2,9,4,5,6,8', 1, 'Ciencia y ecología', 'Hablemos sobre la vertiente más natural y sostenible de la vida.', 0, 0, 0, 0, 0, 0, 0, '', '', 'https://cdn0.iconfinder.com/data/icons/Free-Icons-Shimmer-01-Creative-Freedom/48/recycle.png'),
(16, 3, 0, 0, 16, 0, 0, '-1,0,2,9,4,5,6,8', 1, 'Arte', 'Si tienes una vena artística, aquí te sentirás como en casa.', 0, 0, 0, 0, 0, 0, 0, '', '', 'https://cdn4.iconfinder.com/data/icons/SUPERVISTA/graphics/png/48/palette.png'),
(17, 4, 0, 0, 17, 0, 0, '-1,0,2,9,4,5,6,8', 1, 'Hardware &amp; Software', '<b>Hardware:</b> procesadores, tarjetas, monitores, accesorios, componentes...<br>\r\n<b>Software:</b> utilidades, drivers y mucho más.', 0, 0, 0, 0, 0, 0, 0, '', '', 'https://cdn4.iconfinder.com/data/icons/VISTA/computer_gadgets/png/48/desktop_computer.png'),
(25, 4, 1, 17, 18, 0, 0, '-1,0,2,9,4,5,6,8', 1, 'Hardware', '', 0, 0, 0, 0, 0, 0, 0, '', '', ''),
(29, 4, 1, 17, 19, 0, 0, '-1,0,2,9', 1, 'Software', '', 0, 0, 0, 0, 0, 0, 0, '', '', ''),
(21, 4, 0, 0, 20, 0, 0, '-1,0,2,9,4,5,6,8', 1, 'Sistemas Operativos', 'Windows, GNU/Linux, Mac Os, Android, y demás...', 0, 0, 0, 0, 0, 0, 0, '', '', 'https://cdn0.iconfinder.com/data/icons/yooicons_set01_socialbookmarks/48/social_windows_button.png'),
(46, 4, 1, 21, 21, 0, 0, '-1,0,2,9', 1, 'Windows', '', 0, 0, 0, 0, 0, 0, 0, '', '', ''),
(47, 4, 1, 21, 22, 0, 0, '-1,0,2,9', 1, 'GNU/Linux', '', 0, 0, 0, 0, 0, 0, 0, '', '', ''),
(48, 4, 1, 21, 23, 0, 0, '-1,0,2,9', 1, 'Mac Os', '', 0, 0, 0, 0, 0, 0, 0, '', '', ''),
(49, 4, 1, 21, 24, 0, 0, '-1,0,2,9', 1, 'Android', '', 0, 0, 0, 0, 0, 0, 0, '', '', ''),
(24, 4, 0, 0, 25, 0, 0, '-1,0,2,9,4,5,6,8', 1, 'Diseño Gráfico', '<b>¿Eres GFX o tienes afición por el Photoshop?</b> Postea aquí todas tus creaciones.', 0, 0, 0, 0, 0, 0, 0, '', '', 'https://cdn4.iconfinder.com/data/icons/X-Mac/web_design/png/48/graphic_design.png'),
(45, 4, 0, 0, 26, 0, 0, '-1,0,2,9', 1, 'Consolas', 'Todo sobre los creadores de Microsoft, Nintendo y Sony. Más algunos no tan conocidos como son los <b>emuladores</b>.', 0, 0, 0, 0, 0, 0, 0, '', '', 'https://cdn3.iconfinder.com/data/icons/iconshock_vista_consoles/png/48/console4.png'),
(57, 4, 1, 45, 27, 0, 0, '-1,0,2,9', 1, 'PC', '', 0, 0, 0, 0, 0, 0, 0, '', '', ''),
(53, 4, 1, 45, 28, 0, 0, '-1,0,2,9', 1, 'Xbox: One, 360', '', 0, 0, 0, 0, 0, 0, 0, '', '', ''),
(54, 4, 1, 45, 29, 0, 0, '-1,0,2,9', 1, 'PS X: 1, 2, 3, 4, Vita', '', 0, 0, 0, 0, 0, 0, 0, '', '', ''),
(55, 4, 1, 45, 30, 0, 0, '-1,0,2,9', 1, 'Wii U', '', 0, 0, 0, 0, 0, 0, 0, '', '', ''),
(58, 4, 1, 45, 31, 0, 0, '-1,0,2,9', 1, 'Nintendo: 64, DS Lite, DSi, 3DS', '', 0, 0, 0, 0, 0, 0, 0, '', '', ''),
(56, 4, 1, 45, 32, 0, 0, '-1,0,2,9', 1, 'Retro Gaming', '', 0, 0, 0, 0, 0, 0, 0, '', '', ''),
(60, 4, 1, 45, 33, 0, 0, '-1,0,2,9', 1, 'Emuladores', '', 0, 0, 0, 0, 0, 0, 0, '', '', ''),
(20, 4, 0, 0, 34, 0, 0, '-1,0,2,9,4,5,6,8', 1, 'Móviles &amp; Telefonía', 'Consultas sobre móviles y telefonía.', 0, 0, 0, 0, 0, 0, 0, '', '', 'https://cdn3.iconfinder.com/data/icons/prettyoffice/48/contact.png'),
(18, 4, 0, 0, 35, 0, 0, '-1,0,2,9,4,5,6,8', 1, 'Redes e Internet', 'Preguntas y respuestas sobre conexiones, información técnica y locuras de la red. Todo lo que necesitas saber sobre la red.', 0, 0, 0, 0, 0, 0, 0, '', '', 'https://cdn1.iconfinder.com/data/icons/glaze/48x48/filesystems/network.png'),
(22, 4, 0, 0, 36, 0, 0, '-1,0,2,9,4,5,6,8', 1, 'Programación', 'Todos los lenguajes desde cmd hasta c++, pasando por php, html, js, .net, asp, actionscript, java, mysql , etc.', 0, 0, 0, 0, 0, 0, 0, '', '', 'http://cdn.assets.sites.launchrocketship.com/9d77b262-f903-4dd1-81a8-ff5909387a0c/files/a36edd2e-1437-4645-87db-a80e09904f1b/code-icon.png'),
(34, 4, 1, 22, 37, 0, 0, '-1,0,2,9', 1, 'Desarrollo Web', '', 0, 0, 0, 0, 0, 0, 0, '', '', ''),
(35, 4, 2, 34, 38, 0, 0, '-1,0,2,9', 1, 'PHP', '', 0, 0, 0, 0, 0, 0, 0, '', '', ''),
(36, 4, 2, 34, 39, 0, 0, '-1,0,2,9', 1, 'Bases de Datos', '', 0, 0, 0, 0, 0, 0, 0, '', '', ''),
(37, 4, 1, 22, 40, 0, 0, '-1,0,2,9', 1, 'Programación general', '', 0, 0, 0, 0, 0, 0, 0, '', '', ''),
(38, 4, 2, 37, 41, 0, 0, '-1,0,2,9', 1, 'Java', '', 0, 0, 0, 0, 0, 0, 0, '', '', ''),
(39, 4, 2, 37, 42, 0, 0, '-1,0,2,9', 1, 'ASM', '', 0, 0, 0, 0, 0, 0, 0, '', '', ''),
(40, 4, 2, 37, 43, 0, 0, '-1,0,2,9', 1, 'Delphi', '', 0, 0, 0, 0, 0, 0, 0, '', '', ''),
(59, 4, 1, 22, 44, 0, 0, '-1,0,2,9', 1, 'Scripting', '', 0, 0, 0, 0, 0, 0, 0, '', '', ''),
(42, 4, 1, 22, 45, 0, 0, '-1,0,2,9', 1, '.NET', '', 0, 0, 0, 0, 0, 0, 0, '', '', ''),
(43, 4, 1, 22, 46, 0, 0, '-1,0,2,9', 1, 'Visual Basic', '', 0, 0, 0, 0, 0, 0, 0, '', '', ''),
(44, 4, 1, 22, 47, 0, 0, '-1,0,2,9', 1, 'Programación C / C++', '', 0, 0, 0, 0, 0, 0, 0, '', '', ''),
(41, 4, 1, 22, 48, 0, 0, '-1,0,2,9', 1, 'Ejercicios', '', 0, 0, 0, 0, 0, 0, 0, '', '', ''),
(19, 4, 0, 0, 49, 0, 0, '-1,0,2,9,4,5,6,8', 1, 'Hacking, Seguridad, Bugs, Diseño de Malware', 'Dudas y tutoriales sobre Hacking, Seguridad, Bugs, Diseño de Malware, y más.', 0, 0, 0, 0, 0, 0, 0, '', '', 'https://cdn3.iconfinder.com/data/icons/humano2/48x48/apps/guake.png'),
(30, 4, 1, 19, 50, 0, 0, '-1,0,2,9', 1, 'Hacking', '', 0, 0, 0, 0, 0, 0, 0, '', '', ''),
(31, 4, 1, 19, 51, 0, 0, '-1,0,2,9', 1, 'Seguridad', '', 0, 0, 0, 0, 0, 0, 0, '', '', ''),
(32, 4, 1, 19, 52, 0, 0, '-1,0,2,9', 1, 'Bugs &amp; Exploits', '', 0, 0, 0, 0, 0, 0, 0, '', '', ''),
(33, 4, 1, 19, 53, 0, 0, '-1,0,2,9', 1, 'Análisis y diseño de Malware', '', 0, 0, 0, 0, 0, 0, 0, '', '', ''),
(61, 4, 0, 0, 54, 0, 0, '-1,0,2,9', 1, 'Electrónica', 'Guías y dudas sobre electrónica.', 0, 0, 0, 0, 0, 0, 0, '', '', 'https://cdn1.iconfinder.com/data/icons/nuvola2/48x48/actions/laptop_power.png'),
(26, 5, 0, 0, 55, 0, 0, '', 1, 'Foro Administradores', '', 0, 0, 0, 0, 0, 0, 0, '', '', ''),
(27, 5, 0, 0, 56, 0, 0, '2', 1, 'Foro Moderadores', '', 0, 0, 0, 0, 0, 0, 0, '', '', ''),
(28, 5, 0, 0, 57, 0, 0, '2,9', 1, 'Foro Colaboradores', '', 0, 0, 0, 0, 0, 0, 0, '', '', ''),
(23, 5, 0, 0, 58, 0, 0, '2,9', 1, 'Papelera del foro', 'Papelera', 0, 0, 0, 0, 0, 0, 0, '', '', 'https://cdn1.iconfinder.com/data/icons/humility-icons-MERGE/48x48/filesystems/gnome-fs-trash-empty.png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `smf_ikillboard_permissions`
--

CREATE TABLE IF NOT EXISTS `smf_ikillboard_permissions` (
  `id_group` smallint(5) NOT NULL DEFAULT '0',
  `id_profile` smallint(5) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(30) NOT NULL DEFAULT '',
  `add_deny` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_group`,`id_profile`,`permission`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `smf_ikillboard_permissions`
--

INSERT INTO `smf_ikillboard_permissions` (`id_group`, `id_profile`, `permission`, `add_deny`) VALUES
(9, 2, 'mark_notify', 1),
(9, 2, 'mark_any_notify', 1),
(9, 2, 'lock_own', 1),
(9, 2, 'delete_own', 1),
(9, 1, 'post_unapproved_topics', 1),
(9, 1, 'post_unapproved_replies_own', 1),
(9, 1, 'post_unapproved_replies_any', 1),
(0, 1, 'post_unapproved_replies_any', 1),
(0, 1, 'post_unapproved_attachments', 1),
(9, 1, 'post_unapproved_attachments', 1),
(0, 1, 'post_unapproved_replies_own', 1),
(0, 1, 'post_unapproved_topics', 1),
(2, 1, 'moderate_board', 1),
(2, 1, 'post_new', 1),
(2, 1, 'post_reply_own', 1),
(2, 1, 'post_reply_any', 1),
(2, 1, 'post_unapproved_topics', 1),
(2, 1, 'post_unapproved_replies_any', 1),
(2, 1, 'post_unapproved_replies_own', 1),
(2, 1, 'post_unapproved_attachments', 1),
(2, 1, 'poll_post', 1),
(2, 1, 'poll_add_any', 1),
(2, 1, 'poll_remove_any', 1),
(2, 1, 'poll_view', 1),
(2, 1, 'poll_vote', 1),
(2, 1, 'poll_lock_any', 1),
(2, 1, 'poll_edit_any', 1),
(2, 1, 'report_any', 1),
(2, 1, 'lock_own', 1),
(2, 1, 'send_topic', 1),
(2, 1, 'mark_any_notify', 1),
(2, 1, 'mark_notify', 1),
(2, 1, 'delete_own', 1),
(2, 1, 'modify_own', 1),
(2, 1, 'make_sticky', 1),
(2, 1, 'lock_any', 1),
(2, 1, 'remove_any', 1),
(2, 1, 'move_any', 1),
(2, 1, 'merge_any', 1),
(2, 1, 'split_any', 1),
(2, 1, 'delete_any', 1),
(2, 1, 'modify_any', 1),
(2, 1, 'approve_posts', 1),
(2, 1, 'post_attachment', 1),
(2, 1, 'view_attachments', 1),
(3, 1, 'moderate_board', 1),
(3, 1, 'post_new', 1),
(3, 1, 'post_reply_own', 1),
(3, 1, 'post_reply_any', 1),
(3, 1, 'post_unapproved_topics', 1),
(3, 1, 'post_unapproved_replies_any', 1),
(3, 1, 'post_unapproved_replies_own', 1),
(3, 1, 'post_unapproved_attachments', 1),
(3, 1, 'poll_post', 1),
(3, 1, 'poll_add_any', 1),
(3, 1, 'poll_remove_any', 1),
(3, 1, 'poll_view', 1),
(3, 1, 'poll_vote', 1),
(3, 1, 'poll_lock_any', 1),
(3, 1, 'poll_edit_any', 1),
(3, 1, 'report_any', 1),
(3, 1, 'lock_own', 1),
(3, 1, 'send_topic', 1),
(3, 1, 'mark_any_notify', 1),
(3, 1, 'mark_notify', 1),
(3, 1, 'delete_own', 1),
(3, 1, 'modify_own', 1),
(3, 1, 'make_sticky', 1),
(3, 1, 'lock_any', 1),
(3, 1, 'remove_any', 1),
(3, 1, 'move_any', 1),
(3, 1, 'merge_any', 1),
(3, 1, 'split_any', 1),
(3, 1, 'delete_any', 1),
(3, 1, 'modify_any', 1),
(3, 1, 'approve_posts', 1),
(3, 1, 'post_attachment', 1),
(3, 1, 'view_attachments', 1),
(-1, 2, 'poll_view', 1),
(0, 2, 'remove_own', 1),
(0, 2, 'lock_own', 1),
(0, 2, 'mark_any_notify', 1),
(0, 2, 'mark_notify', 1),
(0, 2, 'modify_own', 1),
(0, 2, 'poll_view', 1),
(0, 2, 'poll_vote', 1),
(0, 2, 'post_attachment', 1),
(0, 2, 'post_new', 1),
(0, 2, 'post_reply_any', 1),
(0, 2, 'post_reply_own', 1),
(0, 2, 'post_unapproved_topics', 1),
(0, 2, 'post_unapproved_replies_any', 1),
(0, 2, 'post_unapproved_replies_own', 1),
(0, 2, 'post_unapproved_attachments', 1),
(0, 2, 'delete_own', 1),
(0, 2, 'report_any', 1),
(0, 2, 'send_topic', 1),
(0, 2, 'view_attachments', 1),
(2, 2, 'moderate_board', 1),
(2, 2, 'post_new', 1),
(2, 2, 'post_reply_own', 1),
(2, 2, 'post_reply_any', 1),
(2, 2, 'post_unapproved_topics', 1),
(2, 2, 'post_unapproved_replies_any', 1),
(2, 2, 'post_unapproved_replies_own', 1),
(2, 2, 'post_unapproved_attachments', 1),
(2, 2, 'poll_post', 1),
(2, 2, 'poll_add_any', 1),
(2, 2, 'poll_remove_any', 1),
(2, 2, 'poll_view', 1),
(2, 2, 'poll_vote', 1),
(2, 2, 'poll_lock_any', 1),
(2, 2, 'poll_edit_any', 1),
(2, 2, 'report_any', 1),
(2, 2, 'lock_own', 1),
(2, 2, 'send_topic', 1),
(2, 2, 'mark_any_notify', 1),
(2, 2, 'mark_notify', 1),
(2, 2, 'delete_own', 1),
(2, 2, 'modify_own', 1),
(2, 2, 'make_sticky', 1),
(2, 2, 'lock_any', 1),
(2, 2, 'remove_any', 1),
(2, 2, 'move_any', 1),
(2, 2, 'merge_any', 1),
(2, 2, 'split_any', 1),
(2, 2, 'delete_any', 1),
(2, 2, 'modify_any', 1),
(2, 2, 'approve_posts', 1),
(2, 2, 'post_attachment', 1),
(2, 2, 'view_attachments', 1),
(3, 2, 'moderate_board', 1),
(3, 2, 'post_new', 1),
(3, 2, 'post_reply_own', 1),
(3, 2, 'post_reply_any', 1),
(3, 2, 'post_unapproved_topics', 1),
(3, 2, 'post_unapproved_replies_any', 1),
(3, 2, 'post_unapproved_replies_own', 1),
(3, 2, 'post_unapproved_attachments', 1),
(3, 2, 'poll_post', 1),
(3, 2, 'poll_add_any', 1),
(3, 2, 'poll_remove_any', 1),
(3, 2, 'poll_view', 1),
(3, 2, 'poll_vote', 1),
(3, 2, 'poll_lock_any', 1),
(3, 2, 'poll_edit_any', 1),
(3, 2, 'report_any', 1),
(3, 2, 'lock_own', 1),
(3, 2, 'send_topic', 1),
(3, 2, 'mark_any_notify', 1),
(3, 2, 'mark_notify', 1),
(3, 2, 'delete_own', 1),
(3, 2, 'modify_own', 1),
(3, 2, 'make_sticky', 1),
(3, 2, 'lock_any', 1),
(3, 2, 'remove_any', 1),
(3, 2, 'move_any', 1),
(3, 2, 'merge_any', 1),
(3, 2, 'split_any', 1),
(3, 2, 'delete_any', 1),
(3, 2, 'modify_any', 1),
(3, 2, 'approve_posts', 1),
(3, 2, 'post_attachment', 1),
(3, 2, 'view_attachments', 1),
(-1, 3, 'poll_view', 1),
(0, 3, 'remove_own', 1),
(0, 3, 'lock_own', 1),
(0, 3, 'mark_any_notify', 1),
(0, 3, 'mark_notify', 1),
(0, 3, 'modify_own', 1),
(0, 3, 'poll_view', 1),
(0, 3, 'poll_vote', 1),
(0, 3, 'post_attachment', 1),
(0, 3, 'post_reply_any', 1),
(0, 3, 'post_reply_own', 1),
(0, 3, 'post_unapproved_replies_any', 1),
(0, 3, 'post_unapproved_replies_own', 1),
(0, 3, 'post_unapproved_attachments', 1),
(0, 3, 'delete_own', 1),
(0, 3, 'report_any', 1),
(0, 3, 'send_topic', 1),
(0, 3, 'view_attachments', 1),
(2, 3, 'moderate_board', 1),
(2, 3, 'post_new', 1),
(2, 3, 'post_reply_own', 1),
(2, 3, 'post_reply_any', 1),
(2, 3, 'post_unapproved_topics', 1),
(2, 3, 'post_unapproved_replies_any', 1),
(2, 3, 'post_unapproved_replies_own', 1),
(2, 3, 'post_unapproved_attachments', 1),
(2, 3, 'poll_post', 1),
(2, 3, 'poll_add_any', 1),
(2, 3, 'poll_remove_any', 1),
(2, 3, 'poll_view', 1),
(2, 3, 'poll_vote', 1),
(2, 3, 'poll_lock_any', 1),
(2, 3, 'poll_edit_any', 1),
(2, 3, 'report_any', 1),
(2, 3, 'lock_own', 1),
(2, 3, 'send_topic', 1),
(2, 3, 'mark_any_notify', 1),
(2, 3, 'mark_notify', 1),
(2, 3, 'delete_own', 1),
(2, 3, 'modify_own', 1),
(2, 3, 'make_sticky', 1),
(2, 3, 'lock_any', 1),
(2, 3, 'remove_any', 1),
(2, 3, 'move_any', 1),
(2, 3, 'merge_any', 1),
(2, 3, 'split_any', 1),
(2, 3, 'delete_any', 1),
(2, 3, 'modify_any', 1),
(2, 3, 'approve_posts', 1),
(2, 3, 'post_attachment', 1),
(2, 3, 'view_attachments', 1),
(3, 3, 'moderate_board', 1),
(3, 3, 'post_new', 1),
(3, 3, 'post_reply_own', 1),
(3, 3, 'post_reply_any', 1),
(3, 3, 'post_unapproved_topics', 1),
(3, 3, 'post_unapproved_replies_any', 1),
(3, 3, 'post_unapproved_replies_own', 1),
(3, 3, 'post_unapproved_attachments', 1),
(3, 3, 'poll_post', 1),
(3, 3, 'poll_add_any', 1),
(3, 3, 'poll_remove_any', 1),
(3, 3, 'poll_view', 1),
(3, 3, 'poll_vote', 1),
(3, 3, 'poll_lock_any', 1),
(3, 3, 'poll_edit_any', 1),
(3, 3, 'report_any', 1),
(3, 3, 'lock_own', 1),
(3, 3, 'send_topic', 1),
(3, 3, 'mark_any_notify', 1),
(3, 3, 'mark_notify', 1),
(3, 3, 'delete_own', 1),
(3, 3, 'modify_own', 1),
(3, 3, 'make_sticky', 1),
(3, 3, 'lock_any', 1),
(3, 3, 'remove_any', 1),
(3, 3, 'move_any', 1),
(3, 3, 'merge_any', 1),
(3, 3, 'split_any', 1),
(3, 3, 'delete_any', 1),
(3, 3, 'modify_any', 1),
(3, 3, 'approve_posts', 1),
(3, 3, 'post_attachment', 1),
(3, 3, 'view_attachments', 1),
(-1, 4, 'poll_view', 1),
(0, 4, 'mark_any_notify', 1),
(0, 4, 'mark_notify', 1),
(0, 4, 'poll_view', 1),
(0, 4, 'poll_vote', 1),
(0, 4, 'report_any', 1),
(0, 4, 'send_topic', 1),
(0, 4, 'view_attachments', 1),
(2, 4, 'moderate_board', 1),
(2, 4, 'post_new', 1),
(2, 4, 'post_reply_own', 1),
(2, 4, 'post_reply_any', 1),
(2, 4, 'post_unapproved_topics', 1),
(2, 4, 'post_unapproved_replies_any', 1),
(2, 4, 'post_unapproved_replies_own', 1),
(2, 4, 'post_unapproved_attachments', 1),
(2, 4, 'poll_post', 1),
(2, 4, 'poll_add_any', 1),
(2, 4, 'poll_remove_any', 1),
(2, 4, 'poll_view', 1),
(2, 4, 'poll_vote', 1),
(2, 4, 'poll_lock_any', 1),
(2, 4, 'poll_edit_any', 1),
(2, 4, 'report_any', 1),
(2, 4, 'lock_own', 1),
(2, 4, 'send_topic', 1),
(2, 4, 'mark_any_notify', 1),
(2, 4, 'mark_notify', 1),
(2, 4, 'delete_own', 1),
(2, 4, 'modify_own', 1),
(2, 4, 'make_sticky', 1),
(2, 4, 'lock_any', 1),
(2, 4, 'remove_any', 1),
(2, 4, 'move_any', 1),
(2, 4, 'merge_any', 1),
(2, 4, 'split_any', 1),
(2, 4, 'delete_any', 1),
(2, 4, 'modify_any', 1),
(2, 4, 'approve_posts', 1),
(2, 4, 'post_attachment', 1),
(2, 4, 'view_attachments', 1),
(3, 4, 'moderate_board', 1),
(3, 4, 'post_new', 1),
(3, 4, 'post_reply_own', 1),
(3, 4, 'post_reply_any', 1),
(3, 4, 'post_unapproved_topics', 1),
(3, 4, 'post_unapproved_replies_any', 1),
(3, 4, 'post_unapproved_replies_own', 1),
(3, 4, 'post_unapproved_attachments', 1),
(3, 4, 'poll_post', 1),
(3, 4, 'poll_add_any', 1),
(3, 4, 'poll_remove_any', 1),
(3, 4, 'poll_view', 1),
(3, 4, 'poll_vote', 1),
(3, 4, 'poll_lock_any', 1),
(3, 4, 'poll_edit_any', 1),
(3, 4, 'report_any', 1),
(3, 4, 'lock_own', 1),
(3, 4, 'send_topic', 1),
(3, 4, 'mark_any_notify', 1),
(3, 4, 'mark_notify', 1),
(3, 4, 'delete_own', 1),
(3, 4, 'modify_own', 1),
(3, 4, 'make_sticky', 1),
(3, 4, 'lock_any', 1),
(3, 4, 'remove_any', 1),
(3, 4, 'move_any', 1),
(3, 4, 'merge_any', 1),
(3, 4, 'split_any', 1),
(3, 4, 'delete_any', 1),
(3, 4, 'modify_any', 1),
(3, 4, 'approve_posts', 1),
(3, 4, 'post_attachment', 1),
(3, 4, 'view_attachments', 1),
(9, 2, 'modify_own', 1),
(9, 2, 'poll_view', 1),
(9, 2, 'poll_vote', 1),
(9, 2, 'post_attachment', 1),
(9, 2, 'post_new', 1),
(9, 2, 'post_reply_any', 1),
(9, 2, 'post_reply_own', 1),
(9, 2, 'post_unapproved_attachments', 1),
(9, 2, 'post_unapproved_replies_any', 1),
(9, 2, 'post_unapproved_replies_own', 1),
(9, 2, 'post_unapproved_topics', 1),
(9, 2, 'remove_own', 1),
(9, 2, 'report_any', 1),
(9, 2, 'send_topic', 1),
(9, 2, 'view_attachments', 1),
(9, 3, 'delete_own', 1),
(9, 3, 'lock_own', 1),
(9, 3, 'mark_any_notify', 1),
(9, 3, 'mark_notify', 1),
(9, 3, 'modify_own', 1),
(9, 3, 'poll_view', 1),
(9, 3, 'poll_vote', 1),
(9, 3, 'post_attachment', 1),
(9, 3, 'post_reply_any', 1),
(9, 3, 'post_reply_own', 1),
(9, 3, 'post_unapproved_attachments', 1),
(9, 3, 'post_unapproved_replies_any', 1),
(9, 3, 'post_unapproved_replies_own', 1),
(9, 3, 'remove_own', 1),
(9, 3, 'report_any', 1),
(9, 3, 'send_topic', 1),
(9, 3, 'view_attachments', 1),
(9, 4, 'mark_any_notify', 1),
(9, 4, 'mark_notify', 1),
(9, 4, 'poll_view', 1),
(9, 4, 'poll_vote', 1),
(9, 4, 'report_any', 1),
(9, 4, 'send_topic', 1),
(9, 4, 'view_attachments', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `smf_ikillcalendar`
--

CREATE TABLE IF NOT EXISTS `smf_ikillcalendar` (
  `id_event` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `start_date` date NOT NULL DEFAULT '0001-01-01',
  `end_date` date NOT NULL DEFAULT '0001-01-01',
  `id_board` smallint(5) unsigned NOT NULL DEFAULT '0',
  `id_topic` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `id_member` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_event`),
  KEY `start_date` (`start_date`),
  KEY `end_date` (`end_date`),
  KEY `topic` (`id_topic`,`id_member`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `smf_ikillcalendar_holidays`
--

CREATE TABLE IF NOT EXISTS `smf_ikillcalendar_holidays` (
  `id_holiday` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `event_date` date NOT NULL DEFAULT '0001-01-01',
  `title` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id_holiday`),
  KEY `event_date` (`event_date`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=116 ;

--
-- Volcado de datos para la tabla `smf_ikillcalendar_holidays`
--

INSERT INTO `smf_ikillcalendar_holidays` (`id_holiday`, `event_date`, `title`) VALUES
(1, '0004-01-01', 'New Year''s'),
(2, '0004-12-25', 'Christmas'),
(3, '0004-02-14', 'Valentine''s Day'),
(4, '0004-03-17', 'St. Patrick''s Day'),
(5, '0004-04-01', 'April Fools'),
(6, '0004-04-22', 'Earth Day'),
(7, '0004-10-24', 'United Nations Day'),
(8, '0004-10-31', 'Halloween'),
(9, '2010-05-09', 'Mother''s Day'),
(10, '2011-05-08', 'Mother''s Day'),
(11, '2012-05-13', 'Mother''s Day'),
(12, '2013-05-12', 'Mother''s Day'),
(13, '2014-05-11', 'Mother''s Day'),
(14, '2015-05-10', 'Mother''s Day'),
(15, '2016-05-08', 'Mother''s Day'),
(16, '2017-05-14', 'Mother''s Day'),
(17, '2018-05-13', 'Mother''s Day'),
(18, '2019-05-12', 'Mother''s Day'),
(19, '2020-05-10', 'Mother''s Day'),
(20, '2008-06-15', 'Father''s Day'),
(21, '2009-06-21', 'Father''s Day'),
(22, '2010-06-20', 'Father''s Day'),
(23, '2011-06-19', 'Father''s Day'),
(24, '2012-06-17', 'Father''s Day'),
(25, '2013-06-16', 'Father''s Day'),
(26, '2014-06-15', 'Father''s Day'),
(27, '2015-06-21', 'Father''s Day'),
(28, '2016-06-19', 'Father''s Day'),
(29, '2017-06-18', 'Father''s Day'),
(30, '2018-06-17', 'Father''s Day'),
(31, '2019-06-16', 'Father''s Day'),
(32, '2020-06-21', 'Father''s Day'),
(33, '2010-06-21', 'Summer Solstice'),
(34, '2011-06-21', 'Summer Solstice'),
(35, '2012-06-20', 'Summer Solstice'),
(36, '2013-06-21', 'Summer Solstice'),
(37, '2014-06-21', 'Summer Solstice'),
(38, '2015-06-21', 'Summer Solstice'),
(39, '2016-06-20', 'Summer Solstice'),
(40, '2017-06-20', 'Summer Solstice'),
(41, '2018-06-21', 'Summer Solstice'),
(42, '2019-06-21', 'Summer Solstice'),
(43, '2020-06-20', 'Summer Solstice'),
(44, '2010-03-20', 'Vernal Equinox'),
(45, '2011-03-20', 'Vernal Equinox'),
(46, '2012-03-20', 'Vernal Equinox'),
(47, '2013-03-20', 'Vernal Equinox'),
(48, '2014-03-20', 'Vernal Equinox'),
(49, '2015-03-20', 'Vernal Equinox'),
(50, '2016-03-19', 'Vernal Equinox'),
(51, '2017-03-20', 'Vernal Equinox'),
(52, '2018-03-20', 'Vernal Equinox'),
(53, '2019-03-20', 'Vernal Equinox'),
(54, '2020-03-19', 'Vernal Equinox'),
(55, '2010-12-21', 'Winter Solstice'),
(56, '2011-12-22', 'Winter Solstice'),
(57, '2012-12-21', 'Winter Solstice'),
(58, '2013-12-21', 'Winter Solstice'),
(59, '2014-12-21', 'Winter Solstice'),
(60, '2015-12-21', 'Winter Solstice'),
(61, '2016-12-21', 'Winter Solstice'),
(62, '2017-12-21', 'Winter Solstice'),
(63, '2018-12-21', 'Winter Solstice'),
(64, '2019-12-21', 'Winter Solstice'),
(65, '2020-12-21', 'Winter Solstice'),
(66, '2010-09-22', 'Autumnal Equinox'),
(67, '2011-09-23', 'Autumnal Equinox'),
(68, '2012-09-22', 'Autumnal Equinox'),
(69, '2013-09-22', 'Autumnal Equinox'),
(70, '2014-09-22', 'Autumnal Equinox'),
(71, '2015-09-23', 'Autumnal Equinox'),
(72, '2016-09-22', 'Autumnal Equinox'),
(73, '2017-09-22', 'Autumnal Equinox'),
(74, '2018-09-22', 'Autumnal Equinox'),
(75, '2019-09-23', 'Autumnal Equinox'),
(76, '2020-09-22', 'Autumnal Equinox'),
(77, '0004-07-04', 'Independence Day'),
(78, '0004-05-05', 'Cinco de Mayo'),
(79, '0004-06-14', 'Flag Day'),
(80, '0004-11-11', 'Veterans Day'),
(81, '0004-02-02', 'Groundhog Day'),
(82, '2010-11-25', 'Thanksgiving'),
(83, '2011-11-24', 'Thanksgiving'),
(84, '2012-11-22', 'Thanksgiving'),
(85, '2013-11-21', 'Thanksgiving'),
(86, '2014-11-20', 'Thanksgiving'),
(87, '2015-11-26', 'Thanksgiving'),
(88, '2016-11-24', 'Thanksgiving'),
(89, '2017-11-23', 'Thanksgiving'),
(90, '2018-11-22', 'Thanksgiving'),
(91, '2019-11-21', 'Thanksgiving'),
(92, '2020-11-26', 'Thanksgiving'),
(93, '2010-05-31', 'Memorial Day'),
(94, '2011-05-30', 'Memorial Day'),
(95, '2012-05-28', 'Memorial Day'),
(96, '2013-05-27', 'Memorial Day'),
(97, '2014-05-26', 'Memorial Day'),
(98, '2015-05-25', 'Memorial Day'),
(99, '2016-05-30', 'Memorial Day'),
(100, '2017-05-29', 'Memorial Day'),
(101, '2018-05-28', 'Memorial Day'),
(102, '2019-05-27', 'Memorial Day'),
(103, '2020-05-25', 'Memorial Day'),
(104, '2010-09-06', 'Labor Day'),
(105, '2011-09-05', 'Labor Day'),
(106, '2012-09-03', 'Labor Day'),
(107, '2013-09-09', 'Labor Day'),
(108, '2014-09-08', 'Labor Day'),
(109, '2015-09-07', 'Labor Day'),
(110, '2016-09-05', 'Labor Day'),
(111, '2017-09-04', 'Labor Day'),
(112, '2018-09-03', 'Labor Day'),
(113, '2019-09-09', 'Labor Day'),
(114, '2020-09-07', 'Labor Day'),
(115, '0004-06-06', 'D-Day');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `smf_ikillcategories`
--

CREATE TABLE IF NOT EXISTS `smf_ikillcategories` (
  `id_cat` tinyint(4) unsigned NOT NULL AUTO_INCREMENT,
  `cat_order` tinyint(4) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `can_collapse` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_cat`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `smf_ikillcategories`
--

INSERT INTO `smf_ikillcategories` (`id_cat`, `cat_order`, `name`, `can_collapse`) VALUES
(1, 0, 'Foro NexusPlayers!', 1),
(2, 1, 'Entretenimiento', 1),
(3, 2, 'Temas generales', 1),
(4, 3, 'Tecnología', 1),
(5, 4, 'Foro privado', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `smf_ikillcollapsed_categories`
--

CREATE TABLE IF NOT EXISTS `smf_ikillcollapsed_categories` (
  `id_cat` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `id_member` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_cat`,`id_member`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `smf_ikillcustom_fields`
--

CREATE TABLE IF NOT EXISTS `smf_ikillcustom_fields` (
  `id_field` smallint(5) NOT NULL AUTO_INCREMENT,
  `col_name` varchar(12) NOT NULL DEFAULT '',
  `field_name` varchar(40) NOT NULL DEFAULT '',
  `field_desc` varchar(255) NOT NULL DEFAULT '',
  `field_type` varchar(8) NOT NULL DEFAULT 'text',
  `field_length` smallint(5) NOT NULL DEFAULT '255',
  `field_options` text NOT NULL,
  `mask` varchar(255) NOT NULL DEFAULT '',
  `show_reg` tinyint(3) NOT NULL DEFAULT '0',
  `show_display` tinyint(3) NOT NULL DEFAULT '0',
  `show_profile` varchar(20) NOT NULL DEFAULT 'forumprofile',
  `private` tinyint(3) NOT NULL DEFAULT '0',
  `active` tinyint(3) NOT NULL DEFAULT '1',
  `bbc` tinyint(3) NOT NULL DEFAULT '0',
  `can_search` tinyint(3) NOT NULL DEFAULT '0',
  `default_value` varchar(255) NOT NULL DEFAULT '',
  `enclose` text NOT NULL,
  `placement` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_field`),
  UNIQUE KEY `col_name` (`col_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `smf_ikillgroup_moderators`
--

CREATE TABLE IF NOT EXISTS `smf_ikillgroup_moderators` (
  `id_group` smallint(5) unsigned NOT NULL DEFAULT '0',
  `id_member` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_group`,`id_member`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `smf_ikilllog_actions`
--

CREATE TABLE IF NOT EXISTS `smf_ikilllog_actions` (
  `id_action` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_log` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `log_time` int(10) unsigned NOT NULL DEFAULT '0',
  `id_member` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ip` char(16) NOT NULL DEFAULT '',
  `action` varchar(30) NOT NULL DEFAULT '',
  `id_board` smallint(5) unsigned NOT NULL DEFAULT '0',
  `id_topic` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `id_msg` int(10) unsigned NOT NULL DEFAULT '0',
  `extra` text NOT NULL,
  PRIMARY KEY (`id_action`),
  KEY `id_log` (`id_log`),
  KEY `log_time` (`log_time`),
  KEY `id_member` (`id_member`),
  KEY `id_board` (`id_board`),
  KEY `id_msg` (`id_msg`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `smf_ikilllog_activity`
--

CREATE TABLE IF NOT EXISTS `smf_ikilllog_activity` (
  `date` date NOT NULL DEFAULT '0001-01-01',
  `hits` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topics` smallint(5) unsigned NOT NULL DEFAULT '0',
  `posts` smallint(5) unsigned NOT NULL DEFAULT '0',
  `registers` smallint(5) unsigned NOT NULL DEFAULT '0',
  `most_on` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`date`),
  KEY `most_on` (`most_on`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `smf_ikilllog_activity`
--

INSERT INTO `smf_ikilllog_activity` (`date`, `hits`, `topics`, `posts`, `registers`, `most_on`) VALUES
('2013-08-18', 0, 1, 1, 1, 3),
('2013-08-19', 0, 0, 0, 0, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `smf_ikilllog_banned`
--

CREATE TABLE IF NOT EXISTS `smf_ikilllog_banned` (
  `id_ban_log` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `id_member` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ip` char(16) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `log_time` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_ban_log`),
  KEY `log_time` (`log_time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `smf_ikilllog_boards`
--

CREATE TABLE IF NOT EXISTS `smf_ikilllog_boards` (
  `id_member` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `id_board` smallint(5) unsigned NOT NULL DEFAULT '0',
  `id_msg` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_member`,`id_board`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `smf_ikilllog_boards`
--

INSERT INTO `smf_ikilllog_boards` (`id_member`, `id_board`, `id_msg`) VALUES
(1, 1, 0),
(1, 5, 1),
(1, 25, 0),
(1, 34, 0),
(1, 35, 0),
(1, 22, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `smf_ikilllog_comments`
--

CREATE TABLE IF NOT EXISTS `smf_ikilllog_comments` (
  `id_comment` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `id_member` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `member_name` varchar(80) NOT NULL DEFAULT '',
  `comment_type` varchar(8) NOT NULL DEFAULT 'warning',
  `id_recipient` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `recipient_name` varchar(255) NOT NULL DEFAULT '',
  `log_time` int(10) NOT NULL DEFAULT '0',
  `id_notice` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `counter` tinyint(3) NOT NULL DEFAULT '0',
  `body` text NOT NULL,
  PRIMARY KEY (`id_comment`),
  KEY `id_recipient` (`id_recipient`),
  KEY `log_time` (`log_time`),
  KEY `comment_type` (`comment_type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `smf_ikilllog_digest`
--

CREATE TABLE IF NOT EXISTS `smf_ikilllog_digest` (
  `id_topic` mediumint(8) unsigned NOT NULL,
  `id_msg` int(10) unsigned NOT NULL,
  `note_type` varchar(10) NOT NULL DEFAULT 'post',
  `daily` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `exclude` mediumint(8) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `smf_ikilllog_errors`
--

CREATE TABLE IF NOT EXISTS `smf_ikilllog_errors` (
  `id_error` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `log_time` int(10) unsigned NOT NULL DEFAULT '0',
  `id_member` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ip` char(16) NOT NULL DEFAULT '',
  `url` text NOT NULL,
  `message` text NOT NULL,
  `session` char(32) NOT NULL DEFAULT '',
  `error_type` char(15) NOT NULL DEFAULT 'general',
  `file` varchar(255) NOT NULL DEFAULT '',
  `line` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_error`),
  KEY `log_time` (`log_time`),
  KEY `id_member` (`id_member`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=846 ;

--
-- Volcado de datos para la tabla `smf_ikilllog_errors`
--

INSERT INTO `smf_ikilllog_errors` (`id_error`, `log_time`, `id_member`, `ip`, `url`, `message`, `session`, `error_type`, `file`, `line`) VALUES
(1, 1376827609, 0, '', '?step=5', 'Could not retrieve the file http://www.simplemachines.org/smf/current-version.js?version=2.0.5.', 'bae32a954668d83d533aba3b84bb88b8', 'general', '', 0),
(2, 1376828311, 0, '', '?scheduled=task;ts=0', 'Could not retrieve the file http://www.simplemachines.org/smf/current-version.js?version=SMF+2.0.5.', '', 'general', '', 0),
(3, 1376828354, 1, '2.138.62.77', '?action=admin;area=theme;dbd16c3b5=e1f85f3096bf2e3d29afcb8c2d4ba57a;sa=admin', '8: Undefined index: image', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/default/Themes.template.php (body_above sub template - eval?)', 341),
(4, 1376828354, 1, '2.138.62.77', '?action=admin;area=theme;dbd16c3b5=e1f85f3096bf2e3d29afcb8c2d4ba57a;sa=admin', '2: include(hits.php): failed to open stream: No such file or directory', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'general', '/home/u817287704/public_html/Themes/default/Themes.template.php (body_below sub template - eval?)', 496),
(5, 1376828354, 1, '2.138.62.77', '?action=admin;area=theme;dbd16c3b5=e1f85f3096bf2e3d29afcb8c2d4ba57a;sa=admin', '2: include(): Failed opening ''hits.php'' for inclusion (include_path=''.:/usr/lib/php'')', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'general', '/home/u817287704/public_html/Themes/default/Themes.template.php (body_below sub template - eval?)', 496),
(6, 1376828354, 1, '2.138.62.77', '?action=admin;area=theme;dbd16c3b5=e1f85f3096bf2e3d29afcb8c2d4ba57a;sa=admin', '8: Undefined variable: hits', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/default/Themes.template.php (body_below sub template - eval?)', 497),
(7, 1376828596, 1, '2.138.62.77', '?http://nexusplayers.bugs3.com/', '8: Undefined index: image', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/default/BoardIndex.template.php (body_above sub template - eval?)', 341),
(8, 1376828596, 1, '2.138.62.77', '?http://nexusplayers.bugs3.com/', '2: include(hits.php): failed to open stream: No such file or directory', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'general', '/home/u817287704/public_html/Themes/default/BoardIndex.template.php (body_below sub template - eval?)', 496),
(9, 1376828596, 1, '2.138.62.77', '?http://nexusplayers.bugs3.com/', '2: include(): Failed opening ''hits.php'' for inclusion (include_path=''.:/usr/lib/php'')', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'general', '/home/u817287704/public_html/Themes/default/BoardIndex.template.php (body_below sub template - eval?)', 496),
(10, 1376828596, 1, '2.138.62.77', '?http://nexusplayers.bugs3.com/', '8: Undefined variable: hits', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/default/BoardIndex.template.php (body_below sub template - eval?)', 497),
(11, 1376828625, 1, '2.138.62.77', '?', '8: Undefined index: image', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/default/BoardIndex.template.php (body_above sub template - eval?)', 341),
(12, 1376828625, 1, '2.138.62.77', '?', '2: include(hits.php): failed to open stream: No such file or directory', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'general', '/home/u817287704/public_html/Themes/default/BoardIndex.template.php (body_below sub template - eval?)', 496),
(13, 1376828625, 1, '2.138.62.77', '?', '2: include(): Failed opening ''hits.php'' for inclusion (include_path=''.:/usr/lib/php'')', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'general', '/home/u817287704/public_html/Themes/default/BoardIndex.template.php (body_below sub template - eval?)', 496),
(14, 1376828625, 1, '2.138.62.77', '?', '8: Undefined variable: hits', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/default/BoardIndex.template.php (body_below sub template - eval?)', 497),
(15, 1376828775, 1, '2.138.62.77', '?', '8: Undefined index: image', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/default/BoardIndex.template.php (body_above sub template - eval?)', 341),
(16, 1376828775, 1, '2.138.62.77', '?', '2: include(hits.php): failed to open stream: No such file or directory', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'general', '/home/u817287704/public_html/Themes/default/BoardIndex.template.php (body_below sub template - eval?)', 496),
(17, 1376828775, 1, '2.138.62.77', '?', '2: include(): Failed opening ''hits.php'' for inclusion (include_path=''.:/usr/lib/php'')', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'general', '/home/u817287704/public_html/Themes/default/BoardIndex.template.php (body_below sub template - eval?)', 496),
(18, 1376828775, 1, '2.138.62.77', '?', '8: Undefined variable: hits', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/default/BoardIndex.template.php (body_below sub template - eval?)', 497),
(19, 1376829096, 1, '2.138.62.77', '?', '8: Undefined index: juego_PageTitle', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Sources/juegos.php', 17),
(20, 1376829096, 1, '2.138.62.77', '?', '8: Undefined index: juego', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Sources/juegos.php', 24),
(21, 1376829096, 1, '2.138.62.77', '?', '8: Undefined index: juego', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Sources/juegos.php', 30),
(22, 1376829096, 1, '2.138.62.77', '?', '8: Undefined index: image', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/Juego.template.php (body_above sub template - eval?)', 341),
(23, 1376829096, 1, '2.138.62.77', '?', '2: include(paginator.class.2.php): failed to open stream: No such file or directory', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'general', '/home/u817287704/public_html/Themes/ikillcraft/Juego.template.php (main sub template - eval?)', 9),
(24, 1376829096, 1, '2.138.62.77', '?', '2: include(): Failed opening ''paginator.class.2.php'' for inclusion (include_path=''.:/usr/lib/php'')', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'general', '/home/u817287704/public_html/Themes/ikillcraft/Juego.template.php (main sub template - eval?)', 9),
(25, 1376829118, 1, '2.138.62.77', '?action=forum', '8: Undefined index: image', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/default/BoardIndex.template.php (body_above sub template - eval?)', 341),
(26, 1376829118, 1, '2.138.62.77', '?action=forum', '2: include(hits.php): failed to open stream: No such file or directory', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'general', '/home/u817287704/public_html/Themes/default/BoardIndex.template.php (body_below sub template - eval?)', 496),
(27, 1376829118, 1, '2.138.62.77', '?action=forum', '2: include(): Failed opening ''hits.php'' for inclusion (include_path=''.:/usr/lib/php'')', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'general', '/home/u817287704/public_html/Themes/default/BoardIndex.template.php (body_below sub template - eval?)', 496),
(28, 1376829118, 1, '2.138.62.77', '?action=forum', '8: Undefined variable: hits', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/default/BoardIndex.template.php (body_below sub template - eval?)', 497),
(29, 1376829127, 1, '2.138.62.77', '?', '8: Undefined index: juego_PageTitle', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Sources/juegos.php', 17),
(30, 1376829127, 1, '2.138.62.77', '?', '8: Undefined index: juego', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Sources/juegos.php', 24),
(31, 1376829127, 1, '2.138.62.77', '?', '8: Undefined index: juego', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Sources/juegos.php', 30),
(32, 1376829128, 1, '2.138.62.77', '?', '8: Undefined index: image', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/Juego.template.php (body_above sub template - eval?)', 341),
(33, 1376829128, 1, '2.138.62.77', '?', '2: include(paginator.class.2.php): failed to open stream: No such file or directory', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'general', '/home/u817287704/public_html/Themes/ikillcraft/Juego.template.php (main sub template - eval?)', 9),
(34, 1376829128, 1, '2.138.62.77', '?', '2: include(): Failed opening ''paginator.class.2.php'' for inclusion (include_path=''.:/usr/lib/php'')', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'general', '/home/u817287704/public_html/Themes/ikillcraft/Juego.template.php (main sub template - eval?)', 9),
(35, 1376829452, 1, '2.138.62.77', '?', '8: Undefined index: juego_PageTitle', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Sources/juegos.php', 17),
(36, 1376829452, 1, '2.138.62.77', '?', '8: Undefined index: juego', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Sources/juegos.php', 24),
(37, 1376829452, 1, '2.138.62.77', '?', '8: Undefined index: juego', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Sources/juegos.php', 30),
(38, 1376829452, 1, '2.138.62.77', '?', '8: Undefined index: image', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/Juego.template.php (body_above sub template - eval?)', 341),
(39, 1376829452, 1, '2.138.62.77', '?', '2: include(paginator.class.2.php): failed to open stream: No such file or directory', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'general', '/home/u817287704/public_html/Themes/ikillcraft/Juego.template.php (main sub template - eval?)', 9),
(40, 1376829452, 1, '2.138.62.77', '?', '2: include(): Failed opening ''paginator.class.2.php'' for inclusion (include_path=''.:/usr/lib/php'')', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'general', '/home/u817287704/public_html/Themes/ikillcraft/Juego.template.php (main sub template - eval?)', 9),
(41, 1376829957, 1, '2.138.62.77', '?', '8: Undefined index: juego_PageTitle', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Sources/juegos.php', 17),
(42, 1376829957, 1, '2.138.62.77', '?', '8: Undefined index: juego', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Sources/juegos.php', 24),
(43, 1376829957, 1, '2.138.62.77', '?', '8: Undefined index: juego', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Sources/juegos.php', 30),
(44, 1376829957, 1, '2.138.62.77', '?', '8: Undefined index: image', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/Juego.template.php (body_above sub template - eval?)', 341),
(45, 1376829957, 1, '2.138.62.77', '?', '8: Undefined index: ipp', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/paginator.class.2.php', 34),
(46, 1376829957, 1, '2.138.62.77', '?', '8: Undefined index: ipp', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/paginator.class.2.php', 106),
(47, 1376829957, 1, '2.138.62.77', '?', '8: Undefined index: cat', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/Juego.template.php (main sub template - eval?)', 67),
(48, 1376829991, 1, '2.138.62.77', '?language=spanish_es', '8: Undefined index: juego_PageTitle', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Sources/juegos.php', 17),
(49, 1376829991, 1, '2.138.62.77', '?language=spanish_es', '8: Undefined index: juego', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Sources/juegos.php', 24),
(50, 1376829991, 1, '2.138.62.77', '?language=spanish_es', '8: Undefined index: juego', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Sources/juegos.php', 30),
(51, 1376829991, 1, '2.138.62.77', '?language=spanish_es', '8: Undefined index: image', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/Juego.template.php (body_above sub template - eval?)', 341),
(52, 1376829991, 1, '2.138.62.77', '?language=spanish_es', '8: Undefined index: ipp', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/paginator.class.2.php', 34),
(53, 1376829991, 1, '2.138.62.77', '?language=spanish_es', '8: Undefined index: ipp', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/paginator.class.2.php', 106),
(54, 1376829991, 1, '2.138.62.77', '?language=spanish_es', '8: Undefined index: cat', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/Juego.template.php (main sub template - eval?)', 67),
(55, 1376829996, 1, '2.138.62.77', '?action=forum', '8: Undefined index: image', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/default/BoardIndex.template.php (body_above sub template - eval?)', 341),
(56, 1376830008, 1, '2.138.62.77', '?language=spanish_es', '8: Undefined index: juego_PageTitle', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Sources/juegos.php', 17),
(57, 1376830008, 1, '2.138.62.77', '?language=spanish_es', '8: Undefined index: juego', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Sources/juegos.php', 24),
(58, 1376830008, 1, '2.138.62.77', '?language=spanish_es', '8: Undefined index: juego', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Sources/juegos.php', 30),
(59, 1376830008, 1, '2.138.62.77', '?language=spanish_es', '8: Undefined index: image', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/Juego.template.php (body_above sub template - eval?)', 341),
(60, 1376830008, 1, '2.138.62.77', '?language=spanish_es', '8: Undefined index: ipp', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/paginator.class.2.php', 34),
(61, 1376830008, 1, '2.138.62.77', '?language=spanish_es', '8: Undefined index: ipp', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/paginator.class.2.php', 106),
(62, 1376830008, 1, '2.138.62.77', '?language=spanish_es', '8: Undefined index: cat', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/Juego.template.php (main sub template - eval?)', 67),
(63, 1376830011, 1, '2.138.62.77', '?action=forum', '8: Undefined index: image', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/default/BoardIndex.template.php (body_above sub template - eval?)', 341),
(64, 1376830020, 1, '2.138.62.77', '?language=spanish_es', '8: Undefined index: juego_PageTitle', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Sources/juegos.php', 17),
(65, 1376830020, 1, '2.138.62.77', '?language=spanish_es', '8: Undefined index: juego', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Sources/juegos.php', 24),
(66, 1376830020, 1, '2.138.62.77', '?language=spanish_es', '8: Undefined index: juego', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Sources/juegos.php', 30),
(67, 1376830020, 1, '2.138.62.77', '?language=spanish_es', '8: Undefined index: image', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/Juego.template.php (body_above sub template - eval?)', 341),
(68, 1376830020, 1, '2.138.62.77', '?language=spanish_es', '8: Undefined index: ipp', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/paginator.class.2.php', 34),
(69, 1376830020, 1, '2.138.62.77', '?language=spanish_es', '8: Undefined index: ipp', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/paginator.class.2.php', 106),
(70, 1376830020, 1, '2.138.62.77', '?language=spanish_es', '8: Undefined index: cat', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/Juego.template.php (main sub template - eval?)', 67),
(71, 1376830024, 1, '2.138.62.77', '?action=forum', '8: Undefined index: image', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/default/BoardIndex.template.php (body_above sub template - eval?)', 341),
(72, 1376830030, 1, '2.138.62.77', '?action=forum&amp;language=spanish_es', '8: Undefined index: image', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/default/BoardIndex.template.php (body_above sub template - eval?)', 341),
(73, 1376830037, 1, '2.138.62.77', '?action=forum', '8: Undefined index: image', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/default/BoardIndex.template.php (body_above sub template - eval?)', 341),
(74, 1376830463, 1, '2.138.62.77', '?language=spanish_es', '8: Undefined index: juego_PageTitle', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Sources/juegos.php', 17),
(75, 1376830463, 1, '2.138.62.77', '?language=spanish_es', '8: Undefined index: juego', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Sources/juegos.php', 24),
(76, 1376830463, 1, '2.138.62.77', '?language=spanish_es', '8: Undefined index: juego', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Sources/juegos.php', 30),
(77, 1376830463, 1, '2.138.62.77', '?language=spanish_es', '8: Undefined index: image', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/Juego.template.php (body_above sub template - eval?)', 341),
(78, 1376830463, 1, '2.138.62.77', '?language=spanish_es', '8: Undefined index: ipp', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/paginator.class.2.php', 34),
(79, 1376830463, 1, '2.138.62.77', '?language=spanish_es', '8: Undefined index: ipp', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/paginator.class.2.php', 106),
(80, 1376830463, 1, '2.138.62.77', '?language=spanish_es', '8: Undefined index: cat', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/Juego.template.php (main sub template - eval?)', 67),
(81, 1376830473, 1, '2.138.62.77', '?action=forum&amp;language=spanish_es', '8: Undefined index: image', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/default/BoardIndex.template.php (body_above sub template - eval?)', 341),
(82, 1376830485, 1, '2.138.62.77', '?theme=1', 'Unable to load the ''Juego'' template.', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'template', '', 0),
(83, 1376830494, 1, '2.138.62.77', '?language=spanish_es', 'Unable to load the ''Juego'' template.', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'template', '', 0),
(84, 1376830502, 1, '2.138.62.77', '?theme=3', '8: Undefined index: juego_PageTitle', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Sources/juegos.php', 17),
(85, 1376830502, 1, '2.138.62.77', '?theme=3', '8: Undefined index: juego', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Sources/juegos.php', 24),
(86, 1376830502, 1, '2.138.62.77', '?theme=3', '8: Undefined index: juego', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Sources/juegos.php', 30),
(87, 1376830512, 1, '2.138.62.77', '?', '8: Undefined index: juego_PageTitle', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Sources/juegos.php', 17),
(88, 1376830512, 1, '2.138.62.77', '?', '8: Undefined index: juego', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Sources/juegos.php', 24),
(89, 1376830512, 1, '2.138.62.77', '?', '8: Undefined index: juego', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Sources/juegos.php', 30),
(90, 1376830512, 1, '2.138.62.77', '?', '8: Undefined index: image', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/Juego.template.php (body_above sub template - eval?)', 341),
(91, 1376830512, 1, '2.138.62.77', '?', '8: Undefined index: ipp', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/paginator.class.2.php', 34),
(92, 1376830512, 1, '2.138.62.77', '?', '8: Undefined index: ipp', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/paginator.class.2.php', 106),
(93, 1376830512, 1, '2.138.62.77', '?', '8: Undefined index: cat', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/Juego.template.php (main sub template - eval?)', 67),
(94, 1376830521, 1, '2.138.62.77', '?action=admin;area=packages', '8: Undefined index: image', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/default/Packages.template.php (body_above sub template - eval?)', 341),
(95, 1376830536, 1, '2.138.62.77', '?action=admin;area=packages;sa=packageget;get;dbd16c3b5=e1f85f3096bf2e3d29afcb8c2d4ba57a', '8: Undefined index: image', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/default/Packages.template.php (body_above sub template - eval?)', 341),
(96, 1376830562, 1, '2.138.62.77', '?action=admin;area=packages;get;sa=upload', '8: Undefined index: image', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/default/Packages.template.php (body_above sub template - eval?)', 341),
(97, 1376830565, 1, '2.138.62.77', '?action=admin;area=packages;sa=install;package=DefaultAvatarForSMF2x.zip', '8: Undefined index: image', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/default/Packages.template.php (body_above sub template - eval?)', 341),
(98, 1376830646, 1, '2.138.62.77', '?action=admin;area=packages;sa=install2;package=DefaultAvatarForSMF2x.zip;pid=0', '8: Undefined index: image', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/default/Packages.template.php (body_above sub template - eval?)', 341),
(99, 1376830652, 1, '2.138.62.77', '?action=admin;area=modsettings', '8: Undefined index: default_avatar_path', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Sources/ManageSettings.php', 2024),
(100, 1376830652, 1, '2.138.62.77', '?action=admin;area=modsettings', '8: Undefined index: image', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/default/languages/ManageSettings.english.php (body_above sub template - eval?)', 341),
(101, 1376830664, 1, '2.138.62.77', '?action=forum', '8: Undefined index: image', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/default/BoardIndex.template.php (body_above sub template - eval?)', 341),
(102, 1376830668, 1, '2.138.62.77', '?action=admin;area=featuresettings', '8: Undefined index: image', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/default/languages/ManageSettings.english.php (body_above sub template - eval?)', 341),
(103, 1376830670, 1, '2.138.62.77', '?action=admin;area=packages', '8: Undefined index: image', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/default/Packages.template.php (body_above sub template - eval?)', 341),
(104, 1376830913, 1, '2.138.62.77', '?theme=3', '8: Undefined index: juego_PageTitle', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Sources/juegos.php', 17),
(105, 1376830913, 1, '2.138.62.77', '?theme=3', '8: Undefined index: juego', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Sources/juegos.php', 24),
(106, 1376830913, 1, '2.138.62.77', '?theme=3', '8: Undefined index: juego', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Sources/juegos.php', 30),
(107, 1376830917, 1, '2.138.62.77', '?theme=3', '8: Undefined index: juego_PageTitle', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Sources/juegos.php', 17),
(108, 1376830917, 1, '2.138.62.77', '?theme=3', '8: Undefined index: juego', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Sources/juegos.php', 24),
(109, 1376830917, 1, '2.138.62.77', '?theme=3', '8: Undefined index: juego', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Sources/juegos.php', 30),
(110, 1376830921, 1, '2.138.62.77', '?theme=3', '8: Undefined index: juego_PageTitle', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Sources/juegos.php', 17),
(111, 1376830921, 1, '2.138.62.77', '?theme=3', '8: Undefined index: juego', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Sources/juegos.php', 24),
(112, 1376830921, 1, '2.138.62.77', '?theme=3', '8: Undefined index: juego', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Sources/juegos.php', 30),
(113, 1376830928, 1, '2.138.62.77', '?', '8: Undefined index: juego_PageTitle', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Sources/juegos.php', 17),
(114, 1376830928, 1, '2.138.62.77', '?', '8: Undefined index: juego', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Sources/juegos.php', 24),
(115, 1376830928, 1, '2.138.62.77', '?', '8: Undefined index: juego', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Sources/juegos.php', 30),
(116, 1376830928, 1, '2.138.62.77', '?', '8: Undefined index: ipp', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/paginator.class.2.php', 34),
(117, 1376830928, 1, '2.138.62.77', '?', '8: Undefined index: ipp', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/paginator.class.2.php', 106),
(118, 1376830928, 1, '2.138.62.77', '?', '8: Undefined index: cat', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/Juego.template.php (main sub template - eval?)', 67),
(119, 1376832718, 1, '2.138.62.77', '?', '8: Undefined index: juego_PageTitle', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Sources/juegos.php', 17),
(120, 1376832718, 1, '2.138.62.77', '?', '8: Undefined index: juego', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Sources/juegos.php', 24),
(121, 1376832718, 1, '2.138.62.77', '?', '8: Undefined index: juego', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Sources/juegos.php', 30),
(122, 1376832718, 1, '2.138.62.77', '?', '8: Undefined index: ipp', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/paginator.class.2.php', 34),
(123, 1376832718, 1, '2.138.62.77', '?', '8: Undefined index: ipp', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/paginator.class.2.php', 106),
(124, 1376832718, 1, '2.138.62.77', '?', '8: Undefined index: cat', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/Juego.template.php (main sub template - eval?)', 67),
(125, 1376833181, 1, '2.138.62.77', '?', '8: Undefined index: juego_PageTitle', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Sources/juegos.php', 17),
(126, 1376833181, 1, '2.138.62.77', '?', '8: Undefined index: juego', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Sources/juegos.php', 24),
(127, 1376833181, 1, '2.138.62.77', '?', '8: Undefined index: juego', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Sources/juegos.php', 30),
(128, 1376833181, 1, '2.138.62.77', '?', '8: Undefined index: ipp', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/paginator.class.2.php', 34),
(129, 1376833181, 1, '2.138.62.77', '?', '8: Undefined index: ipp', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/paginator.class.2.php', 106),
(130, 1376833181, 1, '2.138.62.77', '?', '8: Undefined index: cat', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/Juego.template.php (main sub template - eval?)', 67),
(131, 1376833931, 1, '2.138.62.77', '?http://nexusplayers.bugs3.com/', '8: Undefined index: juego_PageTitle', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Sources/juegos.php', 17),
(132, 1376833931, 1, '2.138.62.77', '?http://nexusplayers.bugs3.com/', '8: Undefined index: juego', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Sources/juegos.php', 24),
(133, 1376833931, 1, '2.138.62.77', '?http://nexusplayers.bugs3.com/', '8: Undefined index: juego', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Sources/juegos.php', 30),
(134, 1376833931, 1, '2.138.62.77', '?http://nexusplayers.bugs3.com/', '8: Undefined index: ipp', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/paginator.class.2.php', 34),
(135, 1376833931, 1, '2.138.62.77', '?http://nexusplayers.bugs3.com/', '8: Undefined index: ipp', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/paginator.class.2.php', 106),
(136, 1376833931, 1, '2.138.62.77', '?http://nexusplayers.bugs3.com/', '8: Undefined index: cat', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/Juego.template.php (main sub template - eval?)', 67),
(137, 1376834025, 1, '2.138.62.77', '?http://nexusplayers.bugs3.com/', '8: Undefined index: ipp', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/paginator.class.2.php', 34),
(138, 1376834025, 1, '2.138.62.77', '?http://nexusplayers.bugs3.com/', '8: Undefined index: ipp', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/paginator.class.2.php', 106),
(139, 1376834025, 1, '2.138.62.77', '?http://nexusplayers.bugs3.com/', '8: Undefined index: cat', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/Juego.template.php (main sub template - eval?)', 67),
(140, 1376834029, 1, '2.138.62.77', '?', '8: Undefined index: ipp', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/paginator.class.2.php', 34),
(141, 1376834029, 1, '2.138.62.77', '?', '8: Undefined index: ipp', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/paginator.class.2.php', 106),
(142, 1376834029, 1, '2.138.62.77', '?', '8: Undefined index: cat', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/Juego.template.php (main sub template - eval?)', 67),
(143, 1376834501, 1, '2.138.62.77', '?', '8: Undefined index: ipp', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/paginator.class.2.php', 34),
(144, 1376834501, 1, '2.138.62.77', '?', '8: Undefined index: ipp', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/paginator.class.2.php', 106),
(145, 1376834501, 1, '2.138.62.77', '?', '8: Undefined index: cat', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/Juego.template.php (main sub template - eval?)', 67),
(146, 1376834666, 1, '2.138.62.77', '?', '8: Undefined index: ipp', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/paginator.class.2.php', 34),
(147, 1376834666, 1, '2.138.62.77', '?', '8: Undefined index: ipp', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/paginator.class.2.php', 106),
(148, 1376834666, 1, '2.138.62.77', '?', '8: Undefined index: cat', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/Juego.template.php (main sub template - eval?)', 69),
(149, 1376834839, 1, '2.138.62.77', '?', '8: Undefined index: ipp', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/paginator.class.2.php', 34),
(150, 1376834839, 1, '2.138.62.77', '?', '8: Undefined index: ipp', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/paginator.class.2.php', 106),
(151, 1376834839, 1, '2.138.62.77', '?', '8: Undefined index: cat', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/Juego.template.php (main sub template - eval?)', 70),
(152, 1376834895, 1, '2.138.62.77', '?', '8: Undefined index: ipp', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/paginator.class.2.php', 34),
(153, 1376834895, 1, '2.138.62.77', '?', '8: Undefined index: ipp', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/paginator.class.2.php', 106),
(154, 1376834895, 1, '2.138.62.77', '?', '8: Undefined index: cat', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/Juego.template.php (main sub template - eval?)', 70),
(155, 1376834938, 1, '2.138.62.77', '?', '8: Undefined index: ipp', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/paginator.class.2.php', 34),
(156, 1376834938, 1, '2.138.62.77', '?', '8: Undefined index: ipp', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/paginator.class.2.php', 106),
(157, 1376834938, 1, '2.138.62.77', '?', '8: Undefined index: cat', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/Juego.template.php (main sub template - eval?)', 70),
(158, 1376835446, 1, '2.138.62.77', '?', '8: Undefined index: ipp', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/paginator.class.2.php', 34),
(159, 1376835446, 1, '2.138.62.77', '?', '8: Undefined index: ipp', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/paginator.class.2.php', 106),
(160, 1376835446, 1, '2.138.62.77', '?', '8: Undefined index: cat', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/Juego.template.php (main sub template - eval?)', 70),
(161, 1376836980, 1, '2.138.62.77', '?', '8: Undefined index: ipp', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/paginator.class.2.php', 34),
(162, 1376836980, 1, '2.138.62.77', '?', '8: Undefined index: ipp', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/paginator.class.2.php', 106),
(163, 1376836980, 1, '2.138.62.77', '?', '8: Undefined index: cat', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/Juego.template.php (main sub template - eval?)', 70),
(164, 1376837097, 1, '2.138.62.77', '?', '8: Undefined index: ipp', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/paginator.class.2.php', 34),
(165, 1376837097, 1, '2.138.62.77', '?', '8: Undefined index: ipp', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/paginator.class.2.php', 106),
(166, 1376837097, 1, '2.138.62.77', '?', '8: Undefined index: cat', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/Juego.template.php (main sub template - eval?)', 70),
(167, 1376838525, 1, '2.138.62.77', '?http://nexusplayers.bugs3.com/', '8: Undefined index: ipp', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/paginator.class.2.php', 34),
(168, 1376838525, 1, '2.138.62.77', '?http://nexusplayers.bugs3.com/', '8: Undefined index: ipp', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/paginator.class.2.php', 106),
(169, 1376838525, 1, '2.138.62.77', '?http://nexusplayers.bugs3.com/', '8: Undefined index: cat', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/Juego.template.php (main sub template - eval?)', 70),
(170, 1376838746, 1, '2.138.62.77', '?language=spanish_es', '8: Undefined index: ipp', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/paginator.class.2.php', 34),
(171, 1376838746, 1, '2.138.62.77', '?language=spanish_es', '8: Undefined index: ipp', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/paginator.class.2.php', 106),
(172, 1376838746, 1, '2.138.62.77', '?language=spanish_es', '8: Undefined index: cat', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/Juego.template.php (main sub template - eval?)', 70),
(173, 1376838749, 1, '2.138.62.77', '?language=english', '8: Undefined index: ipp', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/paginator.class.2.php', 34),
(174, 1376838749, 1, '2.138.62.77', '?language=english', '8: Undefined index: ipp', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/paginator.class.2.php', 106),
(175, 1376838749, 1, '2.138.62.77', '?language=english', '8: Undefined index: cat', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/Juego.template.php (main sub template - eval?)', 70),
(176, 1376838755, 1, '2.138.62.77', '?language=spanish_es', '8: Undefined index: ipp', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/paginator.class.2.php', 34),
(177, 1376838755, 1, '2.138.62.77', '?language=spanish_es', '8: Undefined index: ipp', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/paginator.class.2.php', 106),
(178, 1376838755, 1, '2.138.62.77', '?language=spanish_es', '8: Undefined index: cat', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/Juego.template.php (main sub template - eval?)', 70),
(179, 1376838773, 1, '2.138.62.77', '?language=spanish_es', '8: Undefined index: ipp', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/paginator.class.2.php', 34),
(180, 1376838773, 1, '2.138.62.77', '?language=spanish_es', '8: Undefined index: ipp', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/paginator.class.2.php', 106),
(181, 1376838773, 1, '2.138.62.77', '?language=spanish_es', '8: Undefined index: cat', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/Juego.template.php (main sub template - eval?)', 70),
(182, 1376838850, 1, '2.138.62.77', '?', '8: Undefined index: ipp', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/paginator.class.2.php', 34),
(183, 1376838850, 1, '2.138.62.77', '?', '8: Undefined index: ipp', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/paginator.class.2.php', 106),
(184, 1376838850, 1, '2.138.62.77', '?', '8: Undefined index: cat', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/Juego.template.php (main sub template - eval?)', 70),
(185, 1376839124, 1, '2.138.62.77', '?language=english', '8: Undefined index: ipp', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/paginator.class.2.php', 34),
(186, 1376839124, 1, '2.138.62.77', '?language=english', '8: Undefined index: ipp', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/paginator.class.2.php', 106),
(187, 1376839124, 1, '2.138.62.77', '?language=english', '8: Undefined index: cat', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/Juego.template.php (main sub template - eval?)', 70),
(188, 1376839127, 1, '2.138.62.77', '?language=spanish_es', '8: Undefined index: ipp', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/paginator.class.2.php', 34),
(189, 1376839127, 1, '2.138.62.77', '?language=spanish_es', '8: Undefined index: ipp', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/paginator.class.2.php', 106),
(190, 1376839127, 1, '2.138.62.77', '?language=spanish_es', '8: Undefined index: cat', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/Juego.template.php (main sub template - eval?)', 70),
(191, 1376839389, 1, '2.138.62.77', '?language=spanish_es', '8: Undefined index: ipp', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/paginator.class.2.php', 34),
(192, 1376839389, 1, '2.138.62.77', '?language=spanish_es', '8: Undefined index: ipp', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/paginator.class.2.php', 106),
(193, 1376839389, 1, '2.138.62.77', '?language=spanish_es', '8: Undefined index: cat', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/Juego.template.php (main sub template - eval?)', 70),
(194, 1376839736, 1, '2.138.62.77', '?', '8: Undefined index: ipp', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/paginator.class.2.php', 34),
(195, 1376839736, 1, '2.138.62.77', '?', '8: Undefined index: ipp', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/paginator.class.2.php', 106),
(196, 1376839736, 1, '2.138.62.77', '?', '8: Undefined index: cat', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/Juego.template.php (main sub template - eval?)', 70),
(197, 1376840324, 1, '2.138.62.77', '?action=admin;area=packages;get;sa=download;byurl;dbd16c3b5=e1f85f3096bf2e3d29afcb8c2d4ba57a', 'Aunque el paquete se ha subido al servidor, parece estar vacio. Por favor comprueba que el directorio &quot;Packages&quot; y su subdirectorio &quot;temp&quot; son escribibles. Si el problema persiste, intenta extraer el paquete en tu PC y subir los archivos descomprimidos en un subdirectorio dentro de la carpeta &quot;Packages&quot; y prueba de nuevo. Por ejemplo, si el paquete se llama &quot;shout.tar.gz&quot; deberias:<br />1) Descargar el paquete a tu PC local y descomprimirlo.<br />2) Usando un cliente FTP crear un directorio dentro de la carpeta &quot;Packages&quot;, en este ejemplo, la llamarias &quot;shout&quot;.<br />3) Subir todos los archivos que has descomprimido del paquete en tu PC a este directorio.<br />4) Volver al instalador de paquetes y SMF habr', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'general', '', 0),
(198, 1376840337, 1, '2.138.62.77', '?action=admin;area=packages;get;sa=download;byurl;dbd16c3b5=e1f85f3096bf2e3d29afcb8c2d4ba57a', 'Aunque el paquete se ha subido al servidor, parece estar vacio. Por favor comprueba que el directorio &quot;Packages&quot; y su subdirectorio &quot;temp&quot; son escribibles. Si el problema persiste, intenta extraer el paquete en tu PC y subir los archivos descomprimidos en un subdirectorio dentro de la carpeta &quot;Packages&quot; y prueba de nuevo. Por ejemplo, si el paquete se llama &quot;shout.tar.gz&quot; deberias:<br />1) Descargar el paquete a tu PC local y descomprimirlo.<br />2) Usando un cliente FTP crear un directorio dentro de la carpeta &quot;Packages&quot;, en este ejemplo, la llamarias &quot;shout&quot;.<br />3) Subir todos los archivos que has descomprimido del paquete en tu PC a este directorio.<br />4) Volver al instalador de paquetes y SMF habr', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'general', '', 0),
(199, 1376841700, 1, '2.138.62.77', '?action=admin;area=packages;sa=install2;package=ImagesOnBoard2.1.zip;pid=0', 'Database Error: Table ''u817287704_nexus.boards'' doesn''t exist', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'database', '/home/u817287704/public_html/Packages/temp/img_link2b.php', 18),
(200, 1376841809, 1, '2.138.62.77', '?action=admin;area=packages;sa=install2;package=ImagesOnBoard2.1.zip;pid=0', 'Database Error: Table ''u817287704_nexus.boards'' doesn''t exist', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'database', '/home/u817287704/public_html/Packages/temp/img_link2b.php', 18),
(201, 1376842868, 1, '2.138.62.77', '?action=admin;area=packages;sa=install2;package=ImagesOnBoard2.1.zip;pid=0', '8: Undefined variable: db_prefix', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Packages/temp/img_link2b.php', 18),
(202, 1376842868, 1, '2.138.62.77', '?action=admin;area=packages;sa=install2;package=ImagesOnBoard2.1.zip;pid=0', 'Database Error: Table ''u817287704_nexus.boards'' doesn''t exist', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'database', '/home/u817287704/public_html/Packages/temp/img_link2b.php', 18),
(203, 1376842999, 1, '2.138.62.77', '?action=admin;area=packages;sa=install2;package=ImagesOnBoard2.1.zip;pid=0', '2: require_once(/home/u817287704/public_html/Packages/temp/Settings.php): failed to open stream: No such file or directory', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'general', '/home/u817287704/public_html/Packages/temp/img_link2b.php', 3),
(204, 1376843080, 1, '2.138.62.77', '?action=admin;area=packages;sa=install2;package=ImagesOnBoard2.1.zip;pid=0', 'Database Error: Table ''u817287704_nexus.boards'' doesn''t exist', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'database', '/home/u817287704/public_html/Packages/temp/img_filename2b.php', 17),
(205, 1376843474, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=5', '8: Undefined index: board_image', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 337),
(206, 1376843474, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=5', '8: Undefined index: board_image_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 338),
(207, 1376843474, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=5', '8: Undefined index: board_img_link', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 346),
(208, 1376843474, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=5', '8: Undefined index: board_img_link_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 347),
(209, 1376845074, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=5', '8: Undefined index: board_image', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 337),
(210, 1376845074, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=5', '8: Undefined index: board_image_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 338),
(211, 1376845074, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=5', '8: Undefined index: board_img_link', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 346),
(212, 1376845074, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=5', '8: Undefined index: board_img_link_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 347),
(213, 1376845089, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=1', '8: Undefined index: board_image', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 337),
(214, 1376845089, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=1', '8: Undefined index: board_image_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 338),
(215, 1376845089, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=1', '8: Undefined index: board_img_link', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 346),
(216, 1376845089, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=1', '8: Undefined index: board_img_link_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 347);
INSERT INTO `smf_ikilllog_errors` (`id_error`, `log_time`, `id_member`, `ip`, `url`, `message`, `session`, `error_type`, `file`, `line`) VALUES
(217, 1376845313, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=3', '8: Undefined index: board_image', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 337),
(218, 1376845313, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=3', '8: Undefined index: board_image_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 338),
(219, 1376845313, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=3', '8: Undefined index: board_img_link', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 346),
(220, 1376845313, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=3', '8: Undefined index: board_img_link_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 347),
(221, 1376845378, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=2', '8: Undefined index: board_image', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 337),
(222, 1376845378, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=2', '8: Undefined index: board_image_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 338),
(223, 1376845378, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=2', '8: Undefined index: board_img_link', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 346),
(224, 1376845378, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=2', '8: Undefined index: board_img_link_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 347),
(225, 1376845436, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=3', '8: Undefined index: board_image', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 337),
(226, 1376845436, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=3', '8: Undefined index: board_image_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 338),
(227, 1376845436, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=3', '8: Undefined index: board_img_link', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 346),
(228, 1376845436, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=3', '8: Undefined index: board_img_link_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 347),
(229, 1376845510, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=3', '8: Undefined index: board_image', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 337),
(230, 1376845510, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=3', '8: Undefined index: board_image_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 338),
(231, 1376845510, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=3', '8: Undefined index: board_img_link', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 346),
(232, 1376845510, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=3', '8: Undefined index: board_img_link_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 347),
(233, 1376846665, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=2', '8: Undefined index: board_image', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 337),
(234, 1376846665, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=2', '8: Undefined index: board_image_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 338),
(235, 1376846665, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=2', '8: Undefined index: board_img_link', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 346),
(236, 1376846665, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=2', '8: Undefined index: board_img_link_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 347),
(237, 1376846814, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=2', '8: Undefined index: board_image', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 337),
(238, 1376846814, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=2', '8: Undefined index: board_image_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 338),
(239, 1376846814, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=2', '8: Undefined index: board_img_link', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 346),
(240, 1376846814, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=2', '8: Undefined index: board_img_link_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 347),
(241, 1376846842, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=2', '8: Undefined index: board_image', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 337),
(242, 1376846842, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=2', '8: Undefined index: board_image_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 338),
(243, 1376846842, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=2', '8: Undefined index: board_img_link', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 346),
(244, 1376846842, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=2', '8: Undefined index: board_img_link_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 347),
(245, 1376846952, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=2', '8: Undefined index: board_image', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 337),
(246, 1376846952, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=2', '8: Undefined index: board_image_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 338),
(247, 1376846952, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=2', '8: Undefined index: board_img_link', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 346),
(248, 1376846952, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=2', '8: Undefined index: board_img_link_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 347),
(249, 1376847147, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=3', '8: Undefined index: board_image', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 337),
(250, 1376847147, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=3', '8: Undefined index: board_image_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 338),
(251, 1376847147, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=3', '8: Undefined index: board_img_link', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 346),
(252, 1376847147, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=3', '8: Undefined index: board_img_link_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 347),
(253, 1376847226, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=3', '8: Undefined index: board_image', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 337),
(254, 1376847226, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=3', '8: Undefined index: board_image_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 338),
(255, 1376847226, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=3', '8: Undefined index: board_img_link', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 346),
(256, 1376847226, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=3', '8: Undefined index: board_img_link_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 347),
(257, 1376847239, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=3', '8: Undefined index: board_image', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 337),
(258, 1376847239, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=3', '8: Undefined index: board_image_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 338),
(259, 1376847239, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=3', '8: Undefined index: board_img_link', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 346),
(260, 1376847239, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=3', '8: Undefined index: board_img_link_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 347),
(261, 1376847319, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=3', '8: Undefined index: board_image', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 337),
(262, 1376847319, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=3', '8: Undefined index: board_image_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 338),
(263, 1376847319, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=3', '8: Undefined index: board_img_link', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 346),
(264, 1376847319, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=3', '8: Undefined index: board_img_link_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 347),
(265, 1376847378, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=3', '8: Undefined index: board_image', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 337),
(266, 1376847378, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=3', '8: Undefined index: board_image_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 338),
(267, 1376847378, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=3', '8: Undefined index: board_img_link', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 346),
(268, 1376847378, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=3', '8: Undefined index: board_img_link_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 347),
(269, 1376847436, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=3', '8: Undefined index: board_image', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 337),
(270, 1376847436, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=3', '8: Undefined index: board_image_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 338),
(271, 1376847436, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=3', '8: Undefined index: board_img_link', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 346),
(272, 1376847436, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=3', '8: Undefined index: board_img_link_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 347),
(273, 1376847479, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=10', '8: Undefined index: board_image', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 337),
(274, 1376847479, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=10', '8: Undefined index: board_image_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 338),
(275, 1376847479, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=10', '8: Undefined index: board_img_link', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 346),
(276, 1376847479, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=10', '8: Undefined index: board_img_link_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 347),
(277, 1376847513, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=13', '8: Undefined index: board_image', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 337),
(278, 1376847513, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=13', '8: Undefined index: board_image_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 338),
(279, 1376847513, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=13', '8: Undefined index: board_img_link', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 346),
(280, 1376847513, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=13', '8: Undefined index: board_img_link_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 347),
(281, 1376847555, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=3', '8: Undefined index: board_image', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 337),
(282, 1376847555, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=3', '8: Undefined index: board_image_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 338),
(283, 1376847555, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=3', '8: Undefined index: board_img_link', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 346),
(284, 1376847555, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=3', '8: Undefined index: board_img_link_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 347),
(285, 1376847574, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=14', '8: Undefined index: board_image', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 337),
(286, 1376847574, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=14', '8: Undefined index: board_image_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 338),
(287, 1376847574, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=14', '8: Undefined index: board_img_link', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 346),
(288, 1376847574, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=14', '8: Undefined index: board_img_link_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 347),
(289, 1376847593, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=2', '8: Undefined index: board_image', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 337),
(290, 1376847593, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=2', '8: Undefined index: board_image_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 338),
(291, 1376847593, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=2', '8: Undefined index: board_img_link', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 346),
(292, 1376847593, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=2', '8: Undefined index: board_img_link_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 347),
(293, 1376847623, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=3', '8: Undefined index: board_image', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 337),
(294, 1376847623, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=3', '8: Undefined index: board_image_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 338),
(295, 1376847623, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=3', '8: Undefined index: board_img_link', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 346),
(296, 1376847623, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=3', '8: Undefined index: board_img_link_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 347),
(297, 1376847700, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=4', '8: Undefined index: board_image', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 337),
(298, 1376847700, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=4', '8: Undefined index: board_image_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 338),
(299, 1376847700, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=4', '8: Undefined index: board_img_link', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 346),
(300, 1376847700, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=4', '8: Undefined index: board_img_link_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 347),
(301, 1376847716, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=4', '8: Undefined index: board_image', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 337),
(302, 1376847716, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=4', '8: Undefined index: board_image_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 338),
(303, 1376847716, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=4', '8: Undefined index: board_img_link', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 346),
(304, 1376847716, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=4', '8: Undefined index: board_img_link_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 347),
(305, 1376847771, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=4', '8: Undefined index: board_image', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 337),
(306, 1376847771, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=4', '8: Undefined index: board_image_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 338),
(307, 1376847771, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=4', '8: Undefined index: board_img_link', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 346),
(308, 1376847771, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=4', '8: Undefined index: board_img_link_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 347),
(309, 1376847861, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=4', '8: Undefined index: board_image', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 337),
(310, 1376847861, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=4', '8: Undefined index: board_image_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 338),
(311, 1376847861, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=4', '8: Undefined index: board_img_link', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 346),
(312, 1376847861, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=4', '8: Undefined index: board_img_link_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 347),
(313, 1376847890, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=4', '8: Undefined index: board_image', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 337),
(314, 1376847890, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=4', '8: Undefined index: board_image_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 338),
(315, 1376847890, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=4', '8: Undefined index: board_img_link', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 346),
(316, 1376847890, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=4', '8: Undefined index: board_img_link_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 347),
(317, 1376847914, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=4', '8: Undefined index: board_image', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 337),
(318, 1376847914, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=4', '8: Undefined index: board_image_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 338),
(319, 1376847914, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=4', '8: Undefined index: board_img_link', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 346),
(320, 1376847914, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=4', '8: Undefined index: board_img_link_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 347),
(321, 1376847938, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=18', '8: Undefined index: board_image', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 337),
(322, 1376847938, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=18', '8: Undefined index: board_image_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 338),
(323, 1376847938, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=18', '8: Undefined index: board_img_link', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 346),
(324, 1376847938, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=18', '8: Undefined index: board_img_link_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 347),
(325, 1376847994, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=5', '8: Undefined index: board_image', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 337),
(326, 1376847994, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=5', '8: Undefined index: board_image_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 338),
(327, 1376847994, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=5', '8: Undefined index: board_img_link', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 346),
(328, 1376847994, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=5', '8: Undefined index: board_img_link_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 347),
(329, 1376848054, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=4', '8: Undefined index: board_image', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 337),
(330, 1376848054, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=4', '8: Undefined index: board_image_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 338),
(331, 1376848054, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=4', '8: Undefined index: board_img_link', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 346),
(332, 1376848054, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=4', '8: Undefined index: board_img_link_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 347),
(333, 1376848417, 0, '79.156.184.160', '?language=english', '8: Undefined index: ipp', '620be21b4a65950d6f8a249e9a9829dc', 'undefined_vars', '/home/u817287704/public_html/paginator.class.2.php', 34),
(334, 1376848417, 0, '79.156.184.160', '?language=english', '8: Undefined index: ipp', '620be21b4a65950d6f8a249e9a9829dc', 'undefined_vars', '/home/u817287704/public_html/paginator.class.2.php', 106),
(335, 1376848417, 0, '79.156.184.160', '?language=english', '8: Undefined index: cat', '620be21b4a65950d6f8a249e9a9829dc', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/Juego.template.php (main sub template - eval?)', 70),
(336, 1376848422, 0, '79.156.184.160', '?language=spanish_es', '8: Undefined index: ipp', '620be21b4a65950d6f8a249e9a9829dc', 'undefined_vars', '/home/u817287704/public_html/paginator.class.2.php', 34),
(337, 1376848422, 0, '79.156.184.160', '?language=spanish_es', '8: Undefined index: ipp', '620be21b4a65950d6f8a249e9a9829dc', 'undefined_vars', '/home/u817287704/public_html/paginator.class.2.php', 106),
(338, 1376848422, 0, '79.156.184.160', '?language=spanish_es', '8: Undefined index: cat', '620be21b4a65950d6f8a249e9a9829dc', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/Juego.template.php (main sub template - eval?)', 70),
(339, 1376849380, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=17', '8: Undefined index: board_image', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 337),
(340, 1376849381, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=17', '8: Undefined index: board_image_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 338),
(341, 1376849381, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=17', '8: Undefined index: board_img_link', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 346),
(342, 1376849381, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=17', '8: Undefined index: board_img_link_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 347),
(343, 1376849419, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=4', '8: Undefined index: board_image', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 337),
(344, 1376849421, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=4', '8: Undefined index: board_image_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 338),
(345, 1376849421, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=4', '8: Undefined index: board_img_link', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 346),
(346, 1376849421, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=4', '8: Undefined index: board_img_link_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 347),
(347, 1376849454, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=17', '8: Undefined index: board_image', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 337),
(348, 1376849454, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=17', '8: Undefined index: board_image_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 338),
(349, 1376849454, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=17', '8: Undefined index: board_img_link', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 346),
(350, 1376849454, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=17', '8: Undefined index: board_img_link_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 347),
(351, 1376850143, 1, '2.138.62.77', '?', '8: Undefined index: ipp', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/paginator.class.2.php', 34),
(352, 1376850143, 1, '2.138.62.77', '?', '8: Undefined index: ipp', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/paginator.class.2.php', 106),
(353, 1376850143, 1, '2.138.62.77', '?', '8: Undefined index: cat', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/Juego.template.php (main sub template - eval?)', 70),
(354, 1376850143, 1, '2.138.62.77', '?', '8: Undefined index: ipp', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/paginator.class.2.php', 34),
(355, 1376850143, 1, '2.138.62.77', '?', '8: Undefined index: ipp', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/paginator.class.2.php', 106),
(356, 1376850143, 1, '2.138.62.77', '?', '8: Undefined index: cat', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/Juego.template.php (main sub template - eval?)', 70),
(357, 1376850576, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=5', '8: Undefined index: board_image', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 337),
(358, 1376850576, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=5', '8: Undefined index: board_image_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 338),
(359, 1376850576, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=5', '8: Undefined index: board_img_link', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 346),
(360, 1376850576, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=5', '8: Undefined index: board_img_link_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 347),
(361, 1376850593, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=5', '8: Undefined index: board_image', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 337),
(362, 1376850593, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=5', '8: Undefined index: board_image_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 338),
(363, 1376850593, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=5', '8: Undefined index: board_img_link', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 346),
(364, 1376850593, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=5', '8: Undefined index: board_img_link_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 347),
(365, 1376850644, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=26', '8: Undefined index: board_image', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 337),
(366, 1376850644, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=26', '8: Undefined index: board_image_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 338),
(367, 1376850644, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=26', '8: Undefined index: board_img_link', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 346),
(368, 1376850644, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=26', '8: Undefined index: board_img_link_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 347),
(369, 1376850659, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=3', '8: Undefined index: board_image', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 337),
(370, 1376850659, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=3', '8: Undefined index: board_image_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 338),
(371, 1376850659, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=3', '8: Undefined index: board_img_link', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 346),
(372, 1376850659, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=3', '8: Undefined index: board_img_link_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 347),
(373, 1376850675, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=5', '8: Undefined index: board_image', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 337),
(374, 1376850675, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=5', '8: Undefined index: board_image_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 338),
(375, 1376850675, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=5', '8: Undefined index: board_img_link', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 346),
(376, 1376850675, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=5', '8: Undefined index: board_img_link_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 347),
(377, 1376850698, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=5', '8: Undefined index: board_image', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 337),
(378, 1376850698, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=5', '8: Undefined index: board_image_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 338),
(379, 1376850698, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=5', '8: Undefined index: board_img_link', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 346);
INSERT INTO `smf_ikilllog_errors` (`id_error`, `log_time`, `id_member`, `ip`, `url`, `message`, `session`, `error_type`, `file`, `line`) VALUES
(380, 1376850698, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=5', '8: Undefined index: board_img_link_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 347),
(381, 1376850736, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=17', '8: Undefined index: board_image', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 337),
(382, 1376850736, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=17', '8: Undefined index: board_image_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 338),
(383, 1376850736, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=17', '8: Undefined index: board_img_link', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 346),
(384, 1376850736, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=17', '8: Undefined index: board_img_link_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 347),
(385, 1376850740, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=4', '8: Undefined index: board_image', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 337),
(386, 1376850740, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=4', '8: Undefined index: board_image_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 338),
(387, 1376850740, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=4', '8: Undefined index: board_img_link', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 346),
(388, 1376850740, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=4', '8: Undefined index: board_img_link_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 347),
(389, 1376850792, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=4', '8: Undefined index: board_image', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 337),
(390, 1376850792, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=4', '8: Undefined index: board_image_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 338),
(391, 1376850792, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=4', '8: Undefined index: board_img_link', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 346),
(392, 1376850792, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=4', '8: Undefined index: board_img_link_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 347),
(393, 1376850813, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=30', '8: Undefined index: board_image', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 337),
(394, 1376850813, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=30', '8: Undefined index: board_image_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 338),
(395, 1376850813, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=30', '8: Undefined index: board_img_link', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 346),
(396, 1376850813, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=30', '8: Undefined index: board_img_link_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 347),
(397, 1376850826, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=4', '8: Undefined index: board_image', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 337),
(398, 1376850826, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=4', '8: Undefined index: board_image_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 338),
(399, 1376850826, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=4', '8: Undefined index: board_img_link', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 346),
(400, 1376850826, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=4', '8: Undefined index: board_img_link_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 347),
(401, 1376850846, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=4', '8: Undefined index: board_image', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 337),
(402, 1376850846, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=4', '8: Undefined index: board_image_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 338),
(403, 1376850846, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=4', '8: Undefined index: board_img_link', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 346),
(404, 1376850846, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=4', '8: Undefined index: board_img_link_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 347),
(405, 1376850874, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=4', '8: Undefined index: board_image', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 337),
(406, 1376850874, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=4', '8: Undefined index: board_image_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 338),
(407, 1376850874, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=4', '8: Undefined index: board_img_link', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 346),
(408, 1376850874, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=4', '8: Undefined index: board_img_link_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 347),
(409, 1376850900, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=4', '8: Undefined index: board_image', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 337),
(410, 1376850900, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=4', '8: Undefined index: board_image_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 338),
(411, 1376850900, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=4', '8: Undefined index: board_img_link', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 346),
(412, 1376850900, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=4', '8: Undefined index: board_img_link_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 347),
(413, 1376850931, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=4', '8: Undefined index: board_image', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 337),
(414, 1376850931, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=4', '8: Undefined index: board_image_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 338),
(415, 1376850931, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=4', '8: Undefined index: board_img_link', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 346),
(416, 1376850931, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=4', '8: Undefined index: board_img_link_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 347),
(417, 1376850958, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=4', '8: Undefined index: board_image', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 337),
(418, 1376850958, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=4', '8: Undefined index: board_image_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 338),
(419, 1376850958, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=4', '8: Undefined index: board_img_link', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 346),
(420, 1376850958, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=4', '8: Undefined index: board_img_link_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 347),
(421, 1376850983, 1, '2.138.62.77', '?', '8: Undefined index: ipp', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/paginator.class.2.php', 34),
(422, 1376850983, 1, '2.138.62.77', '?', '8: Undefined index: ipp', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/paginator.class.2.php', 106),
(423, 1376850983, 1, '2.138.62.77', '?', '8: Undefined index: cat', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/Juego.template.php (main sub template - eval?)', 70),
(424, 1376851027, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=4', '8: Undefined index: board_image', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 337),
(425, 1376851027, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=4', '8: Undefined index: board_image_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 338),
(426, 1376851027, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=4', '8: Undefined index: board_img_link', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 346),
(427, 1376851027, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=4', '8: Undefined index: board_img_link_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 347),
(428, 1376851205, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=4', '8: Undefined index: board_image', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 337),
(429, 1376851205, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=4', '8: Undefined index: board_image_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 338),
(430, 1376851205, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=4', '8: Undefined index: board_img_link', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 346),
(431, 1376851205, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=4', '8: Undefined index: board_img_link_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 347),
(432, 1376851289, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=4', '8: Undefined index: board_image', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 337),
(433, 1376851289, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=4', '8: Undefined index: board_image_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 338),
(434, 1376851289, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=4', '8: Undefined index: board_img_link', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 346),
(435, 1376851289, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=4', '8: Undefined index: board_img_link_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 347),
(436, 1376851353, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=39', '8: Undefined index: board_image', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 337),
(437, 1376851353, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=39', '8: Undefined index: board_image_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 338),
(438, 1376851353, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=39', '8: Undefined index: board_img_link', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 346),
(439, 1376851353, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=39', '8: Undefined index: board_img_link_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 347),
(440, 1376851366, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=4', '8: Undefined index: board_image', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 337),
(441, 1376851366, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=4', '8: Undefined index: board_image_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 338),
(442, 1376851366, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=4', '8: Undefined index: board_img_link', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 346),
(443, 1376851366, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=4', '8: Undefined index: board_img_link_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 347),
(444, 1376851418, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=4', '8: Undefined index: board_image', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 337),
(445, 1376851418, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=4', '8: Undefined index: board_image_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 338),
(446, 1376851418, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=4', '8: Undefined index: board_img_link', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 346),
(447, 1376851418, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=4', '8: Undefined index: board_img_link_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 347),
(448, 1376851434, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=41', '8: Undefined index: board_image', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 337),
(449, 1376851434, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=41', '8: Undefined index: board_image_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 338),
(450, 1376851434, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=41', '8: Undefined index: board_img_link', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 346),
(451, 1376851434, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=41', '8: Undefined index: board_img_link_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 347),
(452, 1376851444, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=4', '8: Undefined index: board_image', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 337),
(453, 1376851444, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=4', '8: Undefined index: board_image_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 338),
(454, 1376851444, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=4', '8: Undefined index: board_img_link', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 346),
(455, 1376851444, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=4', '8: Undefined index: board_img_link_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 347),
(456, 1376851487, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=42', '8: Undefined index: board_image', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 337),
(457, 1376851487, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=42', '8: Undefined index: board_image_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 338),
(458, 1376851487, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=42', '8: Undefined index: board_img_link', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 346),
(459, 1376851487, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=42', '8: Undefined index: board_img_link_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 347),
(460, 1376851588, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=42', '8: Undefined index: board_image', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 337),
(461, 1376851588, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=42', '8: Undefined index: board_image_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 338),
(462, 1376851588, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=42', '8: Undefined index: board_img_link', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 346),
(463, 1376851588, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=42', '8: Undefined index: board_img_link_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 347),
(464, 1376851611, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=42', '8: Undefined index: board_image', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 337),
(465, 1376851611, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=42', '8: Undefined index: board_image_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 338),
(466, 1376851611, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=42', '8: Undefined index: board_img_link', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 346),
(467, 1376851611, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=42', '8: Undefined index: board_img_link_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 347),
(468, 1376851621, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=41', '8: Undefined index: board_image', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 337),
(469, 1376851621, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=41', '8: Undefined index: board_image_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 338),
(470, 1376851621, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=41', '8: Undefined index: board_img_link', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 346),
(471, 1376851621, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=41', '8: Undefined index: board_img_link_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 347),
(472, 1376851638, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=4', '8: Undefined index: board_image', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 337),
(473, 1376851638, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=4', '8: Undefined index: board_image_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 338),
(474, 1376851638, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=4', '8: Undefined index: board_img_link', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 346),
(475, 1376851638, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=4', '8: Undefined index: board_img_link_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 347),
(476, 1376851654, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=4', '8: Undefined index: board_image', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 337),
(477, 1376851654, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=4', '8: Undefined index: board_image_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 338),
(478, 1376851654, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=4', '8: Undefined index: board_img_link', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 346),
(479, 1376851654, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=4', '8: Undefined index: board_img_link_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 347),
(480, 1376851676, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=43', '8: Undefined index: board_image', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 337),
(481, 1376851676, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=43', '8: Undefined index: board_image_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 338),
(482, 1376851676, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=43', '8: Undefined index: board_img_link', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 346),
(483, 1376851676, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=43', '8: Undefined index: board_img_link_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 347),
(484, 1376851698, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=4', '8: Undefined index: board_image', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 337),
(485, 1376851698, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=4', '8: Undefined index: board_image_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 338),
(486, 1376851698, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=4', '8: Undefined index: board_img_link', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 346),
(487, 1376851698, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=4', '8: Undefined index: board_img_link_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 347),
(488, 1376851744, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=4', '8: Undefined index: board_image', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 337),
(489, 1376851744, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=4', '8: Undefined index: board_image_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 338),
(490, 1376851744, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=4', '8: Undefined index: board_img_link', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 346),
(491, 1376851744, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=4', '8: Undefined index: board_img_link_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 347),
(492, 1376851886, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=44', '8: Undefined index: board_image', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 337),
(493, 1376851886, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=44', '8: Undefined index: board_image_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 338),
(494, 1376851886, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=44', '8: Undefined index: board_img_link', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 346),
(495, 1376851886, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=44', '8: Undefined index: board_img_link_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 347),
(496, 1376851948, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=21', '8: Undefined index: board_image', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 337),
(497, 1376851948, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=21', '8: Undefined index: board_image_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 338),
(498, 1376851948, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=21', '8: Undefined index: board_img_link', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 346),
(499, 1376851948, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=21', '8: Undefined index: board_img_link_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 347),
(500, 1376851955, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=4', '8: Undefined index: board_image', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 337),
(501, 1376851955, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=4', '8: Undefined index: board_image_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 338),
(502, 1376851955, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=4', '8: Undefined index: board_img_link', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 346),
(503, 1376851955, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=4', '8: Undefined index: board_img_link_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 347),
(504, 1376851994, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=4', '8: Undefined index: board_image', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 337),
(505, 1376851994, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=4', '8: Undefined index: board_image_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 338),
(506, 1376851994, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=4', '8: Undefined index: board_img_link', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 346),
(507, 1376851994, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=4', '8: Undefined index: board_img_link_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 347),
(508, 1376852021, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=4', '8: Undefined index: board_image', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 337),
(509, 1376852021, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=4', '8: Undefined index: board_image_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 338),
(510, 1376852021, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=4', '8: Undefined index: board_img_link', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 346),
(511, 1376852021, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=4', '8: Undefined index: board_img_link_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 347),
(512, 1376852080, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=48', '8: Undefined index: board_image', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 337),
(513, 1376852080, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=48', '8: Undefined index: board_image_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 338),
(514, 1376852080, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=48', '8: Undefined index: board_img_link', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 346),
(515, 1376852080, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=48', '8: Undefined index: board_img_link_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 347),
(516, 1376852096, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=47', '8: Undefined index: board_image', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 337),
(517, 1376852096, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=47', '8: Undefined index: board_image_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 338),
(518, 1376852096, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=47', '8: Undefined index: board_img_link', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 346),
(519, 1376852096, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=47', '8: Undefined index: board_img_link_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 347),
(520, 1376852179, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=4', '8: Undefined index: board_image', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 337),
(521, 1376852179, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=4', '8: Undefined index: board_image_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 338),
(522, 1376852179, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=4', '8: Undefined index: board_img_link', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 346),
(523, 1376852179, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=4', '8: Undefined index: board_img_link_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 347),
(524, 1376852297, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=1', '8: Undefined index: board_image', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 337),
(525, 1376852297, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=1', '8: Undefined index: board_image_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 338),
(526, 1376852297, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=1', '8: Undefined index: board_img_link', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 346),
(527, 1376852297, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=1', '8: Undefined index: board_img_link_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 347),
(528, 1376852320, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=1', '8: Undefined index: board_image', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 337),
(529, 1376852320, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=1', '8: Undefined index: board_image_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 338),
(530, 1376852320, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=1', '8: Undefined index: board_img_link', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 346),
(531, 1376852320, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=1', '8: Undefined index: board_img_link_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 347),
(532, 1376852336, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=1', '8: Undefined index: board_image', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 337),
(533, 1376852336, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=1', '8: Undefined index: board_image_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 338),
(534, 1376852336, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=1', '8: Undefined index: board_img_link', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 346),
(535, 1376852336, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=1', '8: Undefined index: board_img_link_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 347),
(536, 1376852380, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=52', '8: Undefined index: board_image', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 337),
(537, 1376852380, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=52', '8: Undefined index: board_image_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 338),
(538, 1376852380, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=52', '8: Undefined index: board_img_link', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 346),
(539, 1376852380, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=52', '8: Undefined index: board_img_link_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 347);
INSERT INTO `smf_ikilllog_errors` (`id_error`, `log_time`, `id_member`, `ip`, `url`, `message`, `session`, `error_type`, `file`, `line`) VALUES
(540, 1376852398, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=1', '8: Undefined index: board_image', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 337),
(541, 1376852398, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=1', '8: Undefined index: board_image_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 338),
(542, 1376852398, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=1', '8: Undefined index: board_img_link', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 346),
(543, 1376852398, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=1', '8: Undefined index: board_img_link_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 347),
(544, 1376852449, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=51', '8: Undefined index: board_image', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 337),
(545, 1376852449, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=51', '8: Undefined index: board_image_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 338),
(546, 1376852449, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=51', '8: Undefined index: board_img_link', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 346),
(547, 1376852449, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=51', '8: Undefined index: board_img_link_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 347),
(548, 1376852475, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=52', '8: Undefined index: board_image', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 337),
(549, 1376852475, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=52', '8: Undefined index: board_image_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 338),
(550, 1376852475, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=52', '8: Undefined index: board_img_link', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 346),
(551, 1376852475, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=52', '8: Undefined index: board_img_link_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 347),
(552, 1376852588, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=50', '8: Undefined index: board_image', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 337),
(553, 1376852588, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=50', '8: Undefined index: board_image_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 338),
(554, 1376852588, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=50', '8: Undefined index: board_img_link', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 346),
(555, 1376852588, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=50', '8: Undefined index: board_img_link_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 347),
(556, 1376852600, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=4', '8: Undefined index: board_image', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 337),
(557, 1376852600, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=4', '8: Undefined index: board_image_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 338),
(558, 1376852600, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=4', '8: Undefined index: board_img_link', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 346),
(559, 1376852600, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=4', '8: Undefined index: board_img_link_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 347),
(560, 1376852691, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=6', '8: Undefined index: board_image', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 337),
(561, 1376852691, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=6', '8: Undefined index: board_image_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 338),
(562, 1376852691, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=6', '8: Undefined index: board_img_link', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 346),
(563, 1376852691, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=6', '8: Undefined index: board_img_link_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 347),
(564, 1376852857, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=8', '8: Undefined index: board_image', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 337),
(565, 1376852857, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=8', '8: Undefined index: board_image_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 338),
(566, 1376852857, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=8', '8: Undefined index: board_img_link', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 346),
(567, 1376852857, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=8', '8: Undefined index: board_img_link_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 347),
(568, 1376852982, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=7', '8: Undefined index: board_image', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 337),
(569, 1376852982, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=7', '8: Undefined index: board_image_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 338),
(570, 1376852982, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=7', '8: Undefined index: board_img_link', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 346),
(571, 1376852982, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=7', '8: Undefined index: board_img_link_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 347),
(572, 1376853234, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=15', '8: Undefined index: board_image', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 337),
(573, 1376853234, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=15', '8: Undefined index: board_image_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 338),
(574, 1376853234, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=15', '8: Undefined index: board_img_link', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 346),
(575, 1376853234, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=15', '8: Undefined index: board_img_link_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 347),
(576, 1376853345, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=11', '8: Undefined index: board_image', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 337),
(577, 1376853345, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=11', '8: Undefined index: board_image_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 338),
(578, 1376853345, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=11', '8: Undefined index: board_img_link', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 346),
(579, 1376853345, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=11', '8: Undefined index: board_img_link_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 347),
(580, 1376853506, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=9', '8: Undefined index: board_image', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 337),
(581, 1376853506, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=9', '8: Undefined index: board_image_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 338),
(582, 1376853506, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=9', '8: Undefined index: board_img_link', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 346),
(583, 1376853506, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=9', '8: Undefined index: board_img_link_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 347),
(584, 1376853869, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=4', '8: Undefined index: board_image', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 337),
(585, 1376853869, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=4', '8: Undefined index: board_image_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 338),
(586, 1376853869, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=4', '8: Undefined index: board_img_link', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 346),
(587, 1376853869, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=4', '8: Undefined index: board_img_link_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 347),
(588, 1376853905, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=4', '8: Undefined index: board_image', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 337),
(589, 1376853905, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=4', '8: Undefined index: board_image_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 338),
(590, 1376853905, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=4', '8: Undefined index: board_img_link', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 346),
(591, 1376853905, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=4', '8: Undefined index: board_img_link_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 347),
(592, 1376853940, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=4', '8: Undefined index: board_image', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 337),
(593, 1376853940, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=4', '8: Undefined index: board_image_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 338),
(594, 1376853940, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=4', '8: Undefined index: board_img_link', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 346),
(595, 1376853940, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=4', '8: Undefined index: board_img_link_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 347),
(596, 1376854006, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=54', '8: Undefined index: board_image', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 337),
(597, 1376854006, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=54', '8: Undefined index: board_image_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 338),
(598, 1376854006, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=54', '8: Undefined index: board_img_link', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 346),
(599, 1376854006, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=54', '8: Undefined index: board_img_link_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 347),
(600, 1376854019, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=53', '8: Undefined index: board_image', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 337),
(601, 1376854019, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=53', '8: Undefined index: board_image_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 338),
(602, 1376854019, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=53', '8: Undefined index: board_img_link', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 346),
(603, 1376854019, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=53', '8: Undefined index: board_img_link_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 347),
(604, 1376854296, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=4', '8: Undefined index: board_image', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 337),
(605, 1376854296, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=4', '8: Undefined index: board_image_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 338),
(606, 1376854296, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=4', '8: Undefined index: board_img_link', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 346),
(607, 1376854296, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=4', '8: Undefined index: board_img_link_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 347),
(608, 1376855465, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=12', '8: Undefined index: board_image', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 337),
(609, 1376855465, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=12', '8: Undefined index: board_image_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 338),
(610, 1376855465, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=12', '8: Undefined index: board_img_link', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 346),
(611, 1376855465, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=12', '8: Undefined index: board_img_link_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 347),
(612, 1376855475, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=10', '8: Undefined index: board_image', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 337),
(613, 1376855475, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=10', '8: Undefined index: board_image_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 338),
(614, 1376855475, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=10', '8: Undefined index: board_img_link', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 346),
(615, 1376855475, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=10', '8: Undefined index: board_img_link_desc', 'e1f85f3096bf2e3d29afcb8c2d4ba57a', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.english.php (modify_board sub template - eval?)', 347),
(616, 1376899885, 1, '2.138.62.77', '?', '8: Undefined index: ipp', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/paginator.class.2.php', 34),
(617, 1376899885, 1, '2.138.62.77', '?', '8: Undefined index: ipp', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/paginator.class.2.php', 106),
(618, 1376899885, 1, '2.138.62.77', '?', '8: Undefined index: cat', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/Juego.template.php (main sub template - eval?)', 70),
(619, 1376900110, 1, '2.138.62.77', '?', '8: Undefined index: ipp', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/paginator.class.2.php', 34),
(620, 1376900110, 1, '2.138.62.77', '?', '8: Undefined index: ipp', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/paginator.class.2.php', 106),
(621, 1376900110, 1, '2.138.62.77', '?', '8: Undefined index: cat', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/Juego.template.php (main sub template - eval?)', 70),
(622, 1376900818, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=23', '8: Undefined index: board_image', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 337),
(623, 1376900818, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=23', '8: Undefined index: board_image_desc', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 338),
(624, 1376900818, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=23', '8: Undefined index: board_img_link', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 346),
(625, 1376900818, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=23', '8: Undefined index: board_img_link_desc', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 347),
(626, 1376901232, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=14', '8: Undefined index: board_image', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 337),
(627, 1376901232, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=14', '8: Undefined index: board_image_desc', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 338),
(628, 1376901232, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=14', '8: Undefined index: board_img_link', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 346),
(629, 1376901232, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=14', '8: Undefined index: board_img_link_desc', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 347),
(630, 1376901367, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=3', '8: Undefined index: board_image', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 337),
(631, 1376901367, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=3', '8: Undefined index: board_image_desc', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 338),
(632, 1376901367, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=3', '8: Undefined index: board_img_link', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 346),
(633, 1376901367, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=3', '8: Undefined index: board_img_link_desc', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 347),
(634, 1376901397, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=16', '8: Undefined index: board_image', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 337),
(635, 1376901397, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=16', '8: Undefined index: board_image_desc', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 338),
(636, 1376901397, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=16', '8: Undefined index: board_img_link', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 346),
(637, 1376901397, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=16', '8: Undefined index: board_img_link_desc', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 347),
(638, 1376901441, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=17', '8: Undefined index: board_image', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 337),
(639, 1376901441, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=17', '8: Undefined index: board_image_desc', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 338),
(640, 1376901441, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=17', '8: Undefined index: board_img_link', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 346),
(641, 1376901441, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=17', '8: Undefined index: board_img_link_desc', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 347),
(642, 1376901697, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=21', '8: Undefined index: board_image', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 337),
(643, 1376901697, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=21', '8: Undefined index: board_image_desc', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 338),
(644, 1376901697, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=21', '8: Undefined index: board_img_link', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 346),
(645, 1376901697, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=21', '8: Undefined index: board_img_link_desc', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 347),
(646, 1376901833, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=24', '8: Undefined index: board_image', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 337),
(647, 1376901833, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=24', '8: Undefined index: board_image_desc', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 338),
(648, 1376901833, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=24', '8: Undefined index: board_img_link', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 346),
(649, 1376901833, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=24', '8: Undefined index: board_img_link_desc', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 347),
(650, 1376902016, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=19', '8: Undefined index: board_image', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 337),
(651, 1376902016, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=19', '8: Undefined index: board_image_desc', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 338),
(652, 1376902016, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=19', '8: Undefined index: board_img_link', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 346),
(653, 1376902016, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=19', '8: Undefined index: board_img_link_desc', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 347),
(654, 1376902045, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=45', '8: Undefined index: board_image', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 337),
(655, 1376902045, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=45', '8: Undefined index: board_image_desc', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 338),
(656, 1376902050, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=45', '8: Undefined index: board_img_link', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 346),
(657, 1376902051, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=45', '8: Undefined index: board_img_link_desc', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 347),
(658, 1376902294, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=22', '8: Undefined index: board_image', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 337),
(659, 1376902294, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=22', '8: Undefined index: board_image_desc', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 338),
(660, 1376902294, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=22', '8: Undefined index: board_img_link', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 346),
(661, 1376902294, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=22', '8: Undefined index: board_img_link_desc', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 347),
(662, 1376902355, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=18', '8: Undefined index: board_image', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 337),
(663, 1376902355, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=18', '8: Undefined index: board_image_desc', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 338),
(664, 1376902355, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=18', '8: Undefined index: board_img_link', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 346),
(665, 1376902355, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=18', '8: Undefined index: board_img_link_desc', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 347),
(666, 1376902453, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=20', '8: Undefined index: board_image', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 337),
(667, 1376902453, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=20', '8: Undefined index: board_image_desc', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 338),
(668, 1376902453, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=20', '8: Undefined index: board_img_link', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 346),
(669, 1376902453, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=20', '8: Undefined index: board_img_link_desc', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 347),
(670, 1376902624, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=22', '8: Undefined index: board_image', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 337),
(671, 1376902624, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=22', '8: Undefined index: board_image_desc', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 338),
(672, 1376902624, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=22', '8: Undefined index: board_img_link', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 346),
(673, 1376902624, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=22', '8: Undefined index: board_img_link_desc', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 347),
(674, 1376902649, 1, '2.138.62.77', '?http://nexusplayers.bugs3.com/', '8: Undefined index: ipp', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/paginator.class.2.php', 34),
(675, 1376902649, 1, '2.138.62.77', '?http://nexusplayers.bugs3.com/', '8: Undefined index: ipp', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/paginator.class.2.php', 106),
(676, 1376902649, 1, '2.138.62.77', '?http://nexusplayers.bugs3.com/', '8: Undefined index: cat', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/Juego.template.php (main sub template - eval?)', 70),
(677, 1376902793, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=20', '8: Undefined index: board_image', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 337),
(678, 1376902794, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=20', '8: Undefined index: board_image_desc', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 338),
(679, 1376902794, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=20', '8: Undefined index: board_img_link', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 346),
(680, 1376902794, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=20', '8: Undefined index: board_img_link_desc', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 347),
(681, 1376903373, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=23', '8: Undefined index: board_image', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 337),
(682, 1376903373, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=23', '8: Undefined index: board_image_desc', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 338),
(683, 1376903373, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=23', '8: Undefined index: board_img_link', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 346),
(684, 1376903373, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=23', '8: Undefined index: board_img_link_desc', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 347),
(685, 1376903840, 1, '2.138.62.77', '?action=admin;area=modsettings;sa=general;b2e0cda0=e4de8a48e3e5a431caa70b8abca1fe14', '8: Undefined index: default_avatar_path', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Sources/ManageSettings.php', 2024),
(686, 1376903849, 1, '2.138.62.77', '?action=admin;area=modsettings;b2e0cda0=e4de8a48e3e5a431caa70b8abca1fe14', '8: Undefined index: default_avatar_path', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Sources/ManageSettings.php', 2024),
(687, 1376904330, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=4', '8: Undefined index: board_image', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 337),
(688, 1376904330, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=4', '8: Undefined index: board_image_desc', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 338),
(689, 1376904330, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=4', '8: Undefined index: board_img_link', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 346),
(690, 1376904330, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=4', '8: Undefined index: board_img_link_desc', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 347),
(691, 1376904375, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=4', '8: Undefined index: board_image', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 337),
(692, 1376904375, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=4', '8: Undefined index: board_image_desc', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 338),
(693, 1376904375, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=4', '8: Undefined index: board_img_link', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 346),
(694, 1376904375, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=4', '8: Undefined index: board_img_link_desc', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 347),
(695, 1376904399, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=53', '8: Undefined index: board_image', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 337),
(696, 1376904399, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=53', '8: Undefined index: board_image_desc', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 338),
(697, 1376904399, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=53', '8: Undefined index: board_img_link', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 346),
(698, 1376904399, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=53', '8: Undefined index: board_img_link_desc', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 347),
(699, 1376904421, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=55', '8: Undefined index: board_image', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 337);
INSERT INTO `smf_ikilllog_errors` (`id_error`, `log_time`, `id_member`, `ip`, `url`, `message`, `session`, `error_type`, `file`, `line`) VALUES
(700, 1376904421, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=55', '8: Undefined index: board_image_desc', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 338),
(701, 1376904421, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=55', '8: Undefined index: board_img_link', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 346),
(702, 1376904421, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=55', '8: Undefined index: board_img_link_desc', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 347),
(703, 1376904601, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=4', '8: Undefined index: board_image', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 337),
(704, 1376904601, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=4', '8: Undefined index: board_image_desc', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 338),
(705, 1376904601, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=4', '8: Undefined index: board_img_link', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 346),
(706, 1376904601, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=4', '8: Undefined index: board_img_link_desc', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 347),
(707, 1376904664, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=5', '8: Undefined index: board_image', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 337),
(708, 1376904664, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=5', '8: Undefined index: board_image_desc', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 338),
(709, 1376904664, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=5', '8: Undefined index: board_img_link', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 346),
(710, 1376904664, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=5', '8: Undefined index: board_img_link_desc', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 347),
(711, 1376904710, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=5', '8: Undefined index: board_image', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 337),
(712, 1376904710, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=5', '8: Undefined index: board_image_desc', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 338),
(713, 1376904710, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=5', '8: Undefined index: board_img_link', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 346),
(714, 1376904710, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=5', '8: Undefined index: board_img_link_desc', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 347),
(715, 1376904787, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=5', '8: Undefined index: board_image', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 337),
(716, 1376904787, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=5', '8: Undefined index: board_image_desc', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 338),
(717, 1376904787, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=5', '8: Undefined index: board_img_link', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 346),
(718, 1376904787, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=5', '8: Undefined index: board_img_link_desc', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 347),
(719, 1376904834, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=4', '8: Undefined index: board_image', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 337),
(720, 1376904834, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=4', '8: Undefined index: board_image_desc', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 338),
(721, 1376904834, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=4', '8: Undefined index: board_img_link', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 346),
(722, 1376904834, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=4', '8: Undefined index: board_img_link_desc', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 347),
(723, 1376904907, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=1', '8: Undefined index: board_image', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 337),
(724, 1376904907, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=1', '8: Undefined index: board_image_desc', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 338),
(725, 1376904907, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=1', '8: Undefined index: board_img_link', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 346),
(726, 1376904907, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=1', '8: Undefined index: board_img_link_desc', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 347),
(727, 1376905155, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=51', '8: Undefined index: board_image', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 337),
(728, 1376905155, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=51', '8: Undefined index: board_image_desc', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 338),
(729, 1376905155, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=51', '8: Undefined index: board_img_link', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 346),
(730, 1376905155, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=51', '8: Undefined index: board_img_link_desc', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 347),
(731, 1376905163, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=52', '8: Undefined index: board_image', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 337),
(732, 1376905163, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=52', '8: Undefined index: board_image_desc', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 338),
(733, 1376905163, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=52', '8: Undefined index: board_img_link', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 346),
(734, 1376905163, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=52', '8: Undefined index: board_img_link_desc', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 347),
(735, 1376905230, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=2', '8: Undefined index: board_image', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 337),
(736, 1376905230, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=2', '8: Undefined index: board_image_desc', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 338),
(737, 1376905230, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=2', '8: Undefined index: board_img_link', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 346),
(738, 1376905230, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=2', '8: Undefined index: board_img_link_desc', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 347),
(739, 1376905283, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=50', '8: Undefined index: board_image', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 337),
(740, 1376905283, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=50', '8: Undefined index: board_image_desc', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 338),
(741, 1376905283, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=50', '8: Undefined index: board_img_link', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 346),
(742, 1376905283, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=50', '8: Undefined index: board_img_link_desc', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 347),
(743, 1376905327, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=3', '8: Undefined index: board_image', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 337),
(744, 1376905327, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=3', '8: Undefined index: board_image_desc', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 338),
(745, 1376905327, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=3', '8: Undefined index: board_img_link', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 346),
(746, 1376905327, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=3', '8: Undefined index: board_img_link_desc', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 347),
(747, 1376905388, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=4', '8: Undefined index: board_image', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 337),
(748, 1376905388, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=4', '8: Undefined index: board_image_desc', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 338),
(749, 1376905388, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=4', '8: Undefined index: board_img_link', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 346),
(750, 1376905388, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=4', '8: Undefined index: board_img_link_desc', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 347),
(751, 1376906521, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=2', '8: Undefined index: board_image', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 337),
(752, 1376906524, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=2', '8: Undefined index: board_image_desc', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 338),
(753, 1376906524, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=2', '8: Undefined index: board_img_link', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 346),
(754, 1376906524, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=2', '8: Undefined index: board_img_link_desc', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 347),
(755, 1376907303, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=6', '8: Undefined index: board_image', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 337),
(756, 1376907303, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=6', '8: Undefined index: board_image_desc', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 338),
(757, 1376907303, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=6', '8: Undefined index: board_img_link', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 346),
(758, 1376907303, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=6', '8: Undefined index: board_img_link_desc', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 347),
(759, 1376907363, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=6', '8: Undefined index: board_image', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 337),
(760, 1376907363, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=6', '8: Undefined index: board_image_desc', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 338),
(761, 1376907363, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=6', '8: Undefined index: board_img_link', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 346),
(762, 1376907363, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=6', '8: Undefined index: board_img_link_desc', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 347),
(763, 1376907466, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=8', '8: Undefined index: board_image', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 337),
(764, 1376907466, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=8', '8: Undefined index: board_image_desc', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 338),
(765, 1376907466, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=8', '8: Undefined index: board_img_link', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 346),
(766, 1376907466, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=8', '8: Undefined index: board_img_link_desc', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 347),
(767, 1376907504, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=7', '8: Undefined index: board_image', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 337),
(768, 1376907504, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=7', '8: Undefined index: board_image_desc', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 338),
(769, 1376907504, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=7', '8: Undefined index: board_img_link', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 346),
(770, 1376907504, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=7', '8: Undefined index: board_img_link_desc', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 347),
(771, 1376907702, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=6', '8: Undefined index: board_image', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 337),
(772, 1376907702, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=6', '8: Undefined index: board_image_desc', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 338),
(773, 1376907702, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=6', '8: Undefined index: board_img_link', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 346),
(774, 1376907702, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=6', '8: Undefined index: board_img_link_desc', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 347),
(775, 1376907712, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=15', '8: Undefined index: board_image', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 337),
(776, 1376907712, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=15', '8: Undefined index: board_image_desc', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 338),
(777, 1376907712, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=15', '8: Undefined index: board_img_link', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 346),
(778, 1376907712, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=15', '8: Undefined index: board_img_link_desc', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 347),
(779, 1376907745, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=11', '8: Undefined index: board_image', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 337),
(780, 1376907745, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=11', '8: Undefined index: board_image_desc', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 338),
(781, 1376907745, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=11', '8: Undefined index: board_img_link', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 346),
(782, 1376907745, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=11', '8: Undefined index: board_img_link_desc', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 347),
(783, 1376907781, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=9', '8: Undefined index: board_image', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 337),
(784, 1376907781, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=9', '8: Undefined index: board_image_desc', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 338),
(785, 1376907781, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=9', '8: Undefined index: board_img_link', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 346),
(786, 1376907781, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=9', '8: Undefined index: board_img_link_desc', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 347),
(787, 1376907814, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=12', '8: Undefined index: board_image', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 337),
(788, 1376907814, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=12', '8: Undefined index: board_image_desc', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 338),
(789, 1376907814, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=12', '8: Undefined index: board_img_link', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 346),
(790, 1376907814, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=12', '8: Undefined index: board_img_link_desc', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 347),
(791, 1376907889, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=10', '8: Undefined index: board_image', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 337),
(792, 1376907889, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=10', '8: Undefined index: board_image_desc', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 338),
(793, 1376907889, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=10', '8: Undefined index: board_img_link', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 346),
(794, 1376907889, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=10', '8: Undefined index: board_img_link_desc', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 347),
(795, 1376908013, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=14', '8: Undefined index: board_image', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 337),
(796, 1376908013, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=14', '8: Undefined index: board_image_desc', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 338),
(797, 1376908013, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=14', '8: Undefined index: board_img_link', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 346),
(798, 1376908013, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=14', '8: Undefined index: board_img_link_desc', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 347),
(799, 1376908037, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=16', '8: Undefined index: board_image', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 337),
(800, 1376908037, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=16', '8: Undefined index: board_image_desc', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 338),
(801, 1376908037, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=16', '8: Undefined index: board_img_link', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 346),
(802, 1376908037, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=16', '8: Undefined index: board_img_link_desc', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 347),
(803, 1376908048, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=17', '8: Undefined index: board_image', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 337),
(804, 1376908048, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=17', '8: Undefined index: board_image_desc', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 338),
(805, 1376908048, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=17', '8: Undefined index: board_img_link', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 346),
(806, 1376908048, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=17', '8: Undefined index: board_img_link_desc', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 347),
(807, 1376908133, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=24', '8: Undefined index: board_image', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 337),
(808, 1376908133, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=24', '8: Undefined index: board_image_desc', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 338),
(809, 1376908133, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=24', '8: Undefined index: board_img_link', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 346),
(810, 1376908133, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=24', '8: Undefined index: board_img_link_desc', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 347),
(811, 1376908205, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=21', '8: Undefined index: board_image', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 337),
(812, 1376908205, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=21', '8: Undefined index: board_image_desc', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 338),
(813, 1376908205, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=21', '8: Undefined index: board_img_link', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 346),
(814, 1376908205, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=21', '8: Undefined index: board_img_link_desc', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 347),
(815, 1376908228, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=20', '8: Undefined index: board_image', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 337),
(816, 1376908228, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=20', '8: Undefined index: board_image_desc', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 338),
(817, 1376908228, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=20', '8: Undefined index: board_img_link', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 346),
(818, 1376908228, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=20', '8: Undefined index: board_img_link_desc', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 347),
(819, 1376908276, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=18', '8: Undefined index: board_image', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 337),
(820, 1376908276, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=18', '8: Undefined index: board_image_desc', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 338),
(821, 1376908276, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=18', '8: Undefined index: board_img_link', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 346),
(822, 1376908276, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=18', '8: Undefined index: board_img_link_desc', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 347),
(823, 1376908345, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=22', '8: Undefined index: board_image', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 337),
(824, 1376908345, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=22', '8: Undefined index: board_image_desc', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 338),
(825, 1376908345, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=22', '8: Undefined index: board_img_link', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 346),
(826, 1376908345, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=22', '8: Undefined index: board_img_link_desc', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 347),
(827, 1376908419, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=19', '8: Undefined index: board_image', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 337),
(828, 1376908419, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=19', '8: Undefined index: board_image_desc', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 338),
(829, 1376908419, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=19', '8: Undefined index: board_img_link', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 346),
(830, 1376908419, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=19', '8: Undefined index: board_img_link_desc', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 347),
(831, 1376908444, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=4', '8: Undefined index: board_image', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 337),
(832, 1376908444, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=4', '8: Undefined index: board_image_desc', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 338),
(833, 1376908444, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=4', '8: Undefined index: board_img_link', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 346),
(834, 1376908444, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=newboard;cat=4', '8: Undefined index: board_img_link_desc', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 347),
(835, 1376908565, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=19', '8: Undefined index: board_image', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 337),
(836, 1376908565, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=19', '8: Undefined index: board_image_desc', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 338),
(837, 1376908565, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=19', '8: Undefined index: board_img_link', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 346),
(838, 1376908565, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=19', '8: Undefined index: board_img_link_desc', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 347),
(839, 1376908618, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=45', '8: Undefined index: board_image', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 337),
(840, 1376908618, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=45', '8: Undefined index: board_image_desc', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 338),
(841, 1376908618, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=45', '8: Undefined index: board_img_link', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 346),
(842, 1376908618, 1, '2.138.62.77', '?action=admin;area=manageboards;sa=board;boardid=45', '8: Undefined index: board_img_link_desc', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/languages/ManagePermissions.spanish_es-utf8.php (modify_board sub template - eval?)', 347),
(843, 1376908769, 1, '2.138.62.77', '?', '8: Undefined index: ipp', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/paginator.class.2.php', 34),
(844, 1376908769, 1, '2.138.62.77', '?', '8: Undefined index: ipp', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/paginator.class.2.php', 106),
(845, 1376908769, 1, '2.138.62.77', '?', '8: Undefined index: cat', 'e4de8a48e3e5a431caa70b8abca1fe14', 'undefined_vars', '/home/u817287704/public_html/Themes/ikillcraft/Juego.template.php (main sub template - eval?)', 70);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `smf_ikilllog_floodcontrol`
--

CREATE TABLE IF NOT EXISTS `smf_ikilllog_floodcontrol` (
  `ip` char(16) NOT NULL DEFAULT '',
  `log_time` int(10) unsigned NOT NULL DEFAULT '0',
  `log_type` varchar(8) NOT NULL DEFAULT 'post',
  PRIMARY KEY (`ip`,`log_type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `smf_ikilllog_group_requests`
--

CREATE TABLE IF NOT EXISTS `smf_ikilllog_group_requests` (
  `id_request` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `id_member` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `id_group` smallint(5) unsigned NOT NULL DEFAULT '0',
  `time_applied` int(10) unsigned NOT NULL DEFAULT '0',
  `reason` text NOT NULL,
  PRIMARY KEY (`id_request`),
  UNIQUE KEY `id_member` (`id_member`,`id_group`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `smf_ikilllog_karma`
--

CREATE TABLE IF NOT EXISTS `smf_ikilllog_karma` (
  `id_target` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `id_executor` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `log_time` int(10) unsigned NOT NULL DEFAULT '0',
  `action` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_target`,`id_executor`),
  KEY `log_time` (`log_time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `smf_ikilllog_mark_read`
--

CREATE TABLE IF NOT EXISTS `smf_ikilllog_mark_read` (
  `id_member` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `id_board` smallint(5) unsigned NOT NULL DEFAULT '0',
  `id_msg` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_member`,`id_board`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `smf_ikilllog_member_notices`
--

CREATE TABLE IF NOT EXISTS `smf_ikilllog_member_notices` (
  `id_notice` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `subject` varchar(255) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  PRIMARY KEY (`id_notice`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `smf_ikilllog_notify`
--

CREATE TABLE IF NOT EXISTS `smf_ikilllog_notify` (
  `id_member` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `id_topic` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `id_board` smallint(5) unsigned NOT NULL DEFAULT '0',
  `sent` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_member`,`id_topic`,`id_board`),
  KEY `id_topic` (`id_topic`,`id_member`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `smf_ikilllog_online`
--

CREATE TABLE IF NOT EXISTS `smf_ikilllog_online` (
  `session` varchar(32) NOT NULL DEFAULT '',
  `log_time` int(10) NOT NULL DEFAULT '0',
  `id_member` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `id_spider` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ip` int(10) unsigned NOT NULL DEFAULT '0',
  `url` text NOT NULL,
  PRIMARY KEY (`session`),
  KEY `log_time` (`log_time`),
  KEY `id_member` (`id_member`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `smf_ikilllog_online`
--

INSERT INTO `smf_ikilllog_online` (`session`, `log_time`, `id_member`, `id_spider`, `ip`, `url`) VALUES
('ip66.220.152.112', 1376909720, 0, 0, 1121753200, 'a:1:{s:10:"USER_AGENT";s:73:"facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)";}'),
('ip65.52.241.141', 1376909773, 0, 0, 1093988749, 'a:1:{s:10:"USER_AGENT";s:64:"Mozilla/5.0 (compatible; MSIE 10.0; Windows NT 6.1; Trident/6.0)";}'),
('ip95.131.168.13', 1376909898, 0, 0, 1602463757, 'a:1:{s:10:"USER_AGENT";s:63:"Mozilla/5.001 (windows; U; NT4.0; en-US; rv:1.0) Gecko/25250101";}'),
('uaj8vnt1bp802ikq3mhl3vocg1', 1376909840, 1, 0, 42614349, 'a:1:{s:10:"USER_AGENT";s:108:"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/28.0.1500.95 Safari/537.36";}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `smf_ikilllog_packages`
--

CREATE TABLE IF NOT EXISTS `smf_ikilllog_packages` (
  `id_install` int(10) NOT NULL AUTO_INCREMENT,
  `filename` varchar(255) NOT NULL DEFAULT '',
  `package_id` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `version` varchar(255) NOT NULL DEFAULT '',
  `id_member_installed` mediumint(8) NOT NULL DEFAULT '0',
  `member_installed` varchar(255) NOT NULL DEFAULT '',
  `time_installed` int(10) NOT NULL DEFAULT '0',
  `id_member_removed` mediumint(8) NOT NULL DEFAULT '0',
  `member_removed` varchar(255) NOT NULL DEFAULT '',
  `time_removed` int(10) NOT NULL DEFAULT '0',
  `install_state` tinyint(3) NOT NULL DEFAULT '1',
  `failed_steps` text NOT NULL,
  `themes_installed` varchar(255) NOT NULL DEFAULT '',
  `db_changes` text NOT NULL,
  PRIMARY KEY (`id_install`),
  KEY `filename` (`filename`(15))
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `smf_ikilllog_packages`
--

INSERT INTO `smf_ikilllog_packages` (`id_install`, `filename`, `package_id`, `name`, `version`, `id_member_installed`, `member_installed`, `time_installed`, `id_member_removed`, `member_removed`, `time_removed`, `install_state`, `failed_steps`, `themes_installed`, `db_changes`) VALUES
(1, 'DefaultAvatarForSMF2x.zip', 'sid2varun:default_avatar', 'Default Avatar', '2.2', 1, 'Ikillnukes', 1376830646, 0, '0', 0, 1, 'a:0:{}', '1', ''),
(2, 'ImagesOnBoard2.1.zip', 'JB:IOB', 'Images On Board', '2.1', 1, 'Ikillnukes', 1376843231, 0, '0', 0, 1, 'a:0:{}', '1', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `smf_ikilllog_polls`
--

CREATE TABLE IF NOT EXISTS `smf_ikilllog_polls` (
  `id_poll` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `id_member` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `id_choice` tinyint(3) unsigned NOT NULL DEFAULT '0',
  KEY `id_poll` (`id_poll`,`id_member`,`id_choice`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `smf_ikilllog_reported`
--

CREATE TABLE IF NOT EXISTS `smf_ikilllog_reported` (
  `id_report` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `id_msg` int(10) unsigned NOT NULL DEFAULT '0',
  `id_topic` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `id_board` smallint(5) unsigned NOT NULL DEFAULT '0',
  `id_member` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `membername` varchar(255) NOT NULL DEFAULT '',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `time_started` int(10) NOT NULL DEFAULT '0',
  `time_updated` int(10) NOT NULL DEFAULT '0',
  `num_reports` mediumint(6) NOT NULL DEFAULT '0',
  `closed` tinyint(3) NOT NULL DEFAULT '0',
  `ignore_all` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_report`),
  KEY `id_member` (`id_member`),
  KEY `id_topic` (`id_topic`),
  KEY `closed` (`closed`),
  KEY `time_started` (`time_started`),
  KEY `id_msg` (`id_msg`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `smf_ikilllog_reported_comments`
--

CREATE TABLE IF NOT EXISTS `smf_ikilllog_reported_comments` (
  `id_comment` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `id_report` mediumint(8) NOT NULL DEFAULT '0',
  `id_member` mediumint(8) NOT NULL,
  `membername` varchar(255) NOT NULL DEFAULT '',
  `email_address` varchar(255) NOT NULL DEFAULT '',
  `member_ip` varchar(255) NOT NULL DEFAULT '',
  `comment` varchar(255) NOT NULL DEFAULT '',
  `time_sent` int(10) NOT NULL,
  PRIMARY KEY (`id_comment`),
  KEY `id_report` (`id_report`),
  KEY `id_member` (`id_member`),
  KEY `time_sent` (`time_sent`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `smf_ikilllog_scheduled_tasks`
--

CREATE TABLE IF NOT EXISTS `smf_ikilllog_scheduled_tasks` (
  `id_log` mediumint(8) NOT NULL AUTO_INCREMENT,
  `id_task` smallint(5) NOT NULL DEFAULT '0',
  `time_run` int(10) NOT NULL DEFAULT '0',
  `time_taken` float NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_log`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Volcado de datos para la tabla `smf_ikilllog_scheduled_tasks`
--

INSERT INTO `smf_ikilllog_scheduled_tasks` (`id_log`, `id_task`, `time_run`, `time_taken`) VALUES
(1, 2, 1376827851, 0),
(2, 3, 1376828280, 0),
(3, 5, 1376828285, 0),
(4, 6, 1376828296, 0),
(5, 9, 1376828331, 0),
(6, 1, 1376834491, 1),
(7, 1, 1376845297, 0),
(8, 1, 1376852417, 0),
(9, 1, 1376899890, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `smf_ikilllog_search_messages`
--

CREATE TABLE IF NOT EXISTS `smf_ikilllog_search_messages` (
  `id_search` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `id_msg` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_search`,`id_msg`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `smf_ikilllog_search_results`
--

CREATE TABLE IF NOT EXISTS `smf_ikilllog_search_results` (
  `id_search` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `id_topic` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `id_msg` int(10) unsigned NOT NULL DEFAULT '0',
  `relevance` smallint(5) unsigned NOT NULL DEFAULT '0',
  `num_matches` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_search`,`id_topic`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `smf_ikilllog_search_subjects`
--

CREATE TABLE IF NOT EXISTS `smf_ikilllog_search_subjects` (
  `word` varchar(20) NOT NULL DEFAULT '',
  `id_topic` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`word`,`id_topic`),
  KEY `id_topic` (`id_topic`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `smf_ikilllog_search_topics`
--

CREATE TABLE IF NOT EXISTS `smf_ikilllog_search_topics` (
  `id_search` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `id_topic` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_search`,`id_topic`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `smf_ikilllog_spider_hits`
--

CREATE TABLE IF NOT EXISTS `smf_ikilllog_spider_hits` (
  `id_hit` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_spider` smallint(5) unsigned NOT NULL DEFAULT '0',
  `log_time` int(10) unsigned NOT NULL DEFAULT '0',
  `url` varchar(255) NOT NULL DEFAULT '',
  `processed` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_hit`),
  KEY `id_spider` (`id_spider`),
  KEY `log_time` (`log_time`),
  KEY `processed` (`processed`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `smf_ikilllog_spider_stats`
--

CREATE TABLE IF NOT EXISTS `smf_ikilllog_spider_stats` (
  `id_spider` smallint(5) unsigned NOT NULL DEFAULT '0',
  `page_hits` smallint(5) unsigned NOT NULL DEFAULT '0',
  `last_seen` int(10) unsigned NOT NULL DEFAULT '0',
  `stat_date` date NOT NULL DEFAULT '0001-01-01',
  PRIMARY KEY (`stat_date`,`id_spider`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `smf_ikilllog_subscribed`
--

CREATE TABLE IF NOT EXISTS `smf_ikilllog_subscribed` (
  `id_sublog` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_subscribe` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `id_member` int(10) NOT NULL DEFAULT '0',
  `old_id_group` smallint(5) NOT NULL DEFAULT '0',
  `start_time` int(10) NOT NULL DEFAULT '0',
  `end_time` int(10) NOT NULL DEFAULT '0',
  `status` tinyint(3) NOT NULL DEFAULT '0',
  `payments_pending` tinyint(3) NOT NULL DEFAULT '0',
  `pending_details` text NOT NULL,
  `reminder_sent` tinyint(3) NOT NULL DEFAULT '0',
  `vendor_ref` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id_sublog`),
  UNIQUE KEY `id_subscribe` (`id_subscribe`,`id_member`),
  KEY `end_time` (`end_time`),
  KEY `reminder_sent` (`reminder_sent`),
  KEY `payments_pending` (`payments_pending`),
  KEY `status` (`status`),
  KEY `id_member` (`id_member`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `smf_ikilllog_topics`
--

CREATE TABLE IF NOT EXISTS `smf_ikilllog_topics` (
  `id_member` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `id_topic` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `id_msg` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_member`,`id_topic`),
  KEY `id_topic` (`id_topic`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `smf_ikillmail_queue`
--

CREATE TABLE IF NOT EXISTS `smf_ikillmail_queue` (
  `id_mail` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `time_sent` int(10) NOT NULL DEFAULT '0',
  `recipient` varchar(255) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `subject` varchar(255) NOT NULL DEFAULT '',
  `headers` text NOT NULL,
  `send_html` tinyint(3) NOT NULL DEFAULT '0',
  `priority` tinyint(3) NOT NULL DEFAULT '1',
  `private` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_mail`),
  KEY `time_sent` (`time_sent`),
  KEY `mail_priority` (`priority`,`id_mail`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `smf_ikillmembergroups`
--

CREATE TABLE IF NOT EXISTS `smf_ikillmembergroups` (
  `id_group` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `group_name` varchar(80) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `online_color` varchar(20) NOT NULL DEFAULT '',
  `min_posts` mediumint(9) NOT NULL DEFAULT '-1',
  `max_messages` smallint(5) unsigned NOT NULL DEFAULT '0',
  `stars` varchar(255) NOT NULL DEFAULT '',
  `group_type` tinyint(3) NOT NULL DEFAULT '0',
  `hidden` tinyint(3) NOT NULL DEFAULT '0',
  `id_parent` smallint(5) NOT NULL DEFAULT '-2',
  PRIMARY KEY (`id_group`),
  KEY `min_posts` (`min_posts`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Volcado de datos para la tabla `smf_ikillmembergroups`
--

INSERT INTO `smf_ikillmembergroups` (`id_group`, `group_name`, `description`, `online_color`, `min_posts`, `max_messages`, `stars`, `group_type`, `hidden`, `id_parent`) VALUES
(1, 'Administrator', '', '#FF0000', -1, 0, '5#staradmin.gif', 1, 0, -2),
(2, 'Global Moderator', '', '#0000FF', -1, 0, '5#stargmod.gif', 0, 0, -2),
(3, 'Moderator', '', '', -1, 0, '5#starmod.gif', 0, 0, -2),
(4, 'Newbie', '', '', 0, 0, '1#star.gif', 0, 0, -2),
(5, 'Jr. Member', '', '', 50, 0, '2#star.gif', 0, 0, -2),
(6, 'Full Member', '', '', 100, 0, '3#star.gif', 0, 0, -2),
(7, 'Sr. Member', '', '', 250, 0, '4#star.gif', 0, 0, -2),
(8, 'Hero Member', '', '', 500, 0, '5#star.gif', 0, 0, -2),
(9, 'Colaboradores', '', '', -1, 0, '5#star.gif', 1, 0, -2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `smf_ikillmembers`
--

CREATE TABLE IF NOT EXISTS `smf_ikillmembers` (
  `id_member` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `member_name` varchar(80) NOT NULL DEFAULT '',
  `date_registered` int(10) unsigned NOT NULL DEFAULT '0',
  `posts` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `id_group` smallint(5) unsigned NOT NULL DEFAULT '0',
  `lngfile` varchar(255) NOT NULL DEFAULT '',
  `last_login` int(10) unsigned NOT NULL DEFAULT '0',
  `real_name` varchar(255) NOT NULL DEFAULT '',
  `instant_messages` smallint(5) NOT NULL DEFAULT '0',
  `unread_messages` smallint(5) NOT NULL DEFAULT '0',
  `new_pm` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `buddy_list` text NOT NULL,
  `pm_ignore_list` varchar(255) NOT NULL DEFAULT '',
  `pm_prefs` mediumint(8) NOT NULL DEFAULT '0',
  `mod_prefs` varchar(20) NOT NULL DEFAULT '',
  `message_labels` text NOT NULL,
  `passwd` varchar(64) NOT NULL DEFAULT '',
  `openid_uri` text NOT NULL,
  `email_address` varchar(255) NOT NULL DEFAULT '',
  `personal_text` varchar(255) NOT NULL DEFAULT '',
  `gender` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `birthdate` date NOT NULL DEFAULT '0001-01-01',
  `website_title` varchar(255) NOT NULL DEFAULT '',
  `website_url` varchar(255) NOT NULL DEFAULT '',
  `location` varchar(255) NOT NULL DEFAULT '',
  `icq` varchar(255) NOT NULL DEFAULT '',
  `aim` varchar(255) NOT NULL DEFAULT '',
  `yim` varchar(32) NOT NULL DEFAULT '',
  `msn` varchar(255) NOT NULL DEFAULT '',
  `hide_email` tinyint(4) NOT NULL DEFAULT '0',
  `show_online` tinyint(4) NOT NULL DEFAULT '1',
  `time_format` varchar(80) NOT NULL DEFAULT '',
  `signature` text NOT NULL,
  `time_offset` float NOT NULL DEFAULT '0',
  `avatar` varchar(255) NOT NULL DEFAULT '',
  `pm_email_notify` tinyint(4) NOT NULL DEFAULT '0',
  `karma_bad` smallint(5) unsigned NOT NULL DEFAULT '0',
  `karma_good` smallint(5) unsigned NOT NULL DEFAULT '0',
  `usertitle` varchar(255) NOT NULL DEFAULT '',
  `notify_announcements` tinyint(4) NOT NULL DEFAULT '1',
  `notify_regularity` tinyint(4) NOT NULL DEFAULT '1',
  `notify_send_body` tinyint(4) NOT NULL DEFAULT '0',
  `notify_types` tinyint(4) NOT NULL DEFAULT '2',
  `member_ip` varchar(255) NOT NULL DEFAULT '',
  `member_ip2` varchar(255) NOT NULL DEFAULT '',
  `secret_question` varchar(255) NOT NULL DEFAULT '',
  `secret_answer` varchar(64) NOT NULL DEFAULT '',
  `id_theme` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `is_activated` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `validation_code` varchar(10) NOT NULL DEFAULT '',
  `id_msg_last_visit` int(10) unsigned NOT NULL DEFAULT '0',
  `additional_groups` varchar(255) NOT NULL DEFAULT '',
  `smiley_set` varchar(48) NOT NULL DEFAULT '',
  `id_post_group` smallint(5) unsigned NOT NULL DEFAULT '0',
  `total_time_logged_in` int(10) unsigned NOT NULL DEFAULT '0',
  `password_salt` varchar(255) NOT NULL DEFAULT '',
  `ignore_boards` text NOT NULL,
  `warning` tinyint(4) NOT NULL DEFAULT '0',
  `passwd_flood` varchar(12) NOT NULL DEFAULT '',
  `pm_receive_from` tinyint(4) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_member`),
  KEY `member_name` (`member_name`),
  KEY `real_name` (`real_name`),
  KEY `date_registered` (`date_registered`),
  KEY `id_group` (`id_group`),
  KEY `birthdate` (`birthdate`),
  KEY `posts` (`posts`),
  KEY `last_login` (`last_login`),
  KEY `lngfile` (`lngfile`(30)),
  KEY `id_post_group` (`id_post_group`),
  KEY `warning` (`warning`),
  KEY `total_time_logged_in` (`total_time_logged_in`),
  KEY `id_theme` (`id_theme`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `smf_ikillmembers`
--

INSERT INTO `smf_ikillmembers` (`id_member`, `member_name`, `date_registered`, `posts`, `id_group`, `lngfile`, `last_login`, `real_name`, `instant_messages`, `unread_messages`, `new_pm`, `buddy_list`, `pm_ignore_list`, `pm_prefs`, `mod_prefs`, `message_labels`, `passwd`, `openid_uri`, `email_address`, `personal_text`, `gender`, `birthdate`, `website_title`, `website_url`, `location`, `icq`, `aim`, `yim`, `msn`, `hide_email`, `show_online`, `time_format`, `signature`, `time_offset`, `avatar`, `pm_email_notify`, `karma_bad`, `karma_good`, `usertitle`, `notify_announcements`, `notify_regularity`, `notify_send_body`, `notify_types`, `member_ip`, `member_ip2`, `secret_question`, `secret_answer`, `id_theme`, `is_activated`, `validation_code`, `id_msg_last_visit`, `additional_groups`, `smiley_set`, `id_post_group`, `total_time_logged_in`, `password_salt`, `ignore_boards`, `warning`, `passwd_flood`, `pm_receive_from`) VALUES
(1, 'Ikillnukes', 1376827601, 0, 1, '', 1376909840, 'Ikillnukes', 0, 0, 0, '', '', 0, '', '', '23aa1a13191fb940e3e2bd66280670b6f433060a', '', 'ikillnukes1@gmail.com', '', 0, '0001-01-01', '', '', '', '', '', '', '', 0, 1, '', '', 0, '', 0, 0, 0, '', 1, 1, 0, 2, '2.138.62.77', '2.138.62.77', '', '', 0, 1, '', 0, '', '', 4, 30000, '7d1e', '', 0, '', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `smf_ikillmessages`
--

CREATE TABLE IF NOT EXISTS `smf_ikillmessages` (
  `id_msg` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_topic` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `id_board` smallint(5) unsigned NOT NULL DEFAULT '0',
  `poster_time` int(10) unsigned NOT NULL DEFAULT '0',
  `id_member` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `id_msg_modified` int(10) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `poster_name` varchar(255) NOT NULL DEFAULT '',
  `poster_email` varchar(255) NOT NULL DEFAULT '',
  `poster_ip` varchar(255) NOT NULL DEFAULT '',
  `smileys_enabled` tinyint(4) NOT NULL DEFAULT '1',
  `modified_time` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_name` varchar(255) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `icon` varchar(16) NOT NULL DEFAULT 'xx',
  `approved` tinyint(3) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_msg`),
  UNIQUE KEY `topic` (`id_topic`,`id_msg`),
  UNIQUE KEY `id_board` (`id_board`,`id_msg`),
  UNIQUE KEY `id_member` (`id_member`,`id_msg`),
  KEY `approved` (`approved`),
  KEY `ip_index` (`poster_ip`(15),`id_topic`),
  KEY `participation` (`id_member`,`id_topic`),
  KEY `show_posts` (`id_member`,`id_board`),
  KEY `id_topic` (`id_topic`),
  KEY `id_member_msg` (`id_member`,`approved`,`id_msg`),
  KEY `current_topic` (`id_topic`,`id_msg`,`id_member`,`approved`),
  KEY `related_ip` (`id_member`,`poster_ip`,`id_msg`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `smf_ikillmessage_icons`
--

CREATE TABLE IF NOT EXISTS `smf_ikillmessage_icons` (
  `id_icon` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(80) NOT NULL DEFAULT '',
  `filename` varchar(80) NOT NULL DEFAULT '',
  `id_board` smallint(5) unsigned NOT NULL DEFAULT '0',
  `icon_order` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_icon`),
  KEY `id_board` (`id_board`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Volcado de datos para la tabla `smf_ikillmessage_icons`
--

INSERT INTO `smf_ikillmessage_icons` (`id_icon`, `title`, `filename`, `id_board`, `icon_order`) VALUES
(1, 'Standard', 'xx', 0, 0),
(2, 'Thumb Up', 'thumbup', 0, 1),
(3, 'Thumb Down', 'thumbdown', 0, 2),
(4, 'Exclamation point', 'exclamation', 0, 3),
(5, 'Question mark', 'question', 0, 4),
(6, 'Lamp', 'lamp', 0, 5),
(7, 'Smiley', 'smiley', 0, 6),
(8, 'Angry', 'angry', 0, 7),
(9, 'Cheesy', 'cheesy', 0, 8),
(10, 'Grin', 'grin', 0, 9),
(11, 'Sad', 'sad', 0, 10),
(12, 'Wink', 'wink', 0, 11);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `smf_ikillmoderators`
--

CREATE TABLE IF NOT EXISTS `smf_ikillmoderators` (
  `id_board` smallint(5) unsigned NOT NULL DEFAULT '0',
  `id_member` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_board`,`id_member`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `smf_ikillopenid_assoc`
--

CREATE TABLE IF NOT EXISTS `smf_ikillopenid_assoc` (
  `server_url` text NOT NULL,
  `handle` varchar(255) NOT NULL DEFAULT '',
  `secret` text NOT NULL,
  `issued` int(10) NOT NULL DEFAULT '0',
  `expires` int(10) NOT NULL DEFAULT '0',
  `assoc_type` varchar(64) NOT NULL,
  PRIMARY KEY (`server_url`(125),`handle`(125)),
  KEY `expires` (`expires`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `smf_ikillpackage_servers`
--

CREATE TABLE IF NOT EXISTS `smf_ikillpackage_servers` (
  `id_server` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `url` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id_server`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `smf_ikillpackage_servers`
--

INSERT INTO `smf_ikillpackage_servers` (`id_server`, `name`, `url`) VALUES
(1, 'Simple Machines Third-party Mod Site', 'http://custom.simplemachines.org/packages/mods');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `smf_ikillpermissions`
--

CREATE TABLE IF NOT EXISTS `smf_ikillpermissions` (
  `id_group` smallint(5) NOT NULL DEFAULT '0',
  `permission` varchar(30) NOT NULL DEFAULT '',
  `add_deny` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_group`,`permission`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `smf_ikillpermissions`
--

INSERT INTO `smf_ikillpermissions` (`id_group`, `permission`, `add_deny`) VALUES
(-1, 'search_posts', 1),
(-1, 'calendar_view', 1),
(-1, 'view_stats', 1),
(-1, 'profile_view_any', 1),
(0, 'view_mlist', 1),
(0, 'search_posts', 1),
(0, 'profile_view_own', 1),
(0, 'profile_view_any', 1),
(0, 'pm_read', 1),
(0, 'pm_send', 1),
(0, 'calendar_view', 1),
(0, 'view_stats', 1),
(0, 'who_view', 1),
(0, 'profile_identity_own', 1),
(0, 'profile_extra_own', 1),
(0, 'profile_remove_own', 1),
(0, 'profile_server_avatar', 1),
(0, 'profile_upload_avatar', 1),
(0, 'profile_remote_avatar', 1),
(0, 'karma_edit', 1),
(2, 'view_mlist', 1),
(2, 'search_posts', 1),
(2, 'profile_view_own', 1),
(2, 'profile_view_any', 1),
(2, 'pm_read', 1),
(2, 'pm_send', 1),
(2, 'calendar_view', 1),
(2, 'view_stats', 1),
(2, 'who_view', 1),
(2, 'profile_identity_own', 1),
(2, 'profile_extra_own', 1),
(2, 'profile_remove_own', 1),
(2, 'profile_server_avatar', 1),
(2, 'profile_upload_avatar', 1),
(2, 'profile_remote_avatar', 1),
(2, 'profile_title_own', 1),
(2, 'calendar_post', 1),
(2, 'calendar_edit_any', 1),
(2, 'karma_edit', 1),
(2, 'access_mod_center', 1),
(9, 'calendar_view', 1),
(9, 'karma_edit', 1),
(9, 'pm_read', 1),
(9, 'pm_send', 1),
(9, 'profile_extra_own', 1),
(9, 'profile_identity_own', 1),
(9, 'profile_remote_avatar', 1),
(9, 'profile_remove_own', 1),
(9, 'profile_server_avatar', 1),
(9, 'profile_upload_avatar', 1),
(9, 'profile_view_any', 1),
(9, 'profile_view_own', 1),
(9, 'search_posts', 1),
(9, 'view_mlist', 1),
(9, 'view_stats', 1),
(9, 'who_view', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `smf_ikillpermission_profiles`
--

CREATE TABLE IF NOT EXISTS `smf_ikillpermission_profiles` (
  `id_profile` smallint(5) NOT NULL AUTO_INCREMENT,
  `profile_name` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id_profile`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `smf_ikillpermission_profiles`
--

INSERT INTO `smf_ikillpermission_profiles` (`id_profile`, `profile_name`) VALUES
(1, 'default'),
(2, 'no_polls'),
(3, 'reply_only'),
(4, 'read_only');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `smf_ikillpersonal_messages`
--

CREATE TABLE IF NOT EXISTS `smf_ikillpersonal_messages` (
  `id_pm` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_pm_head` int(10) unsigned NOT NULL DEFAULT '0',
  `id_member_from` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `deleted_by_sender` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `from_name` varchar(255) NOT NULL DEFAULT '',
  `msgtime` int(10) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  PRIMARY KEY (`id_pm`),
  KEY `id_member` (`id_member_from`,`deleted_by_sender`),
  KEY `msgtime` (`msgtime`),
  KEY `id_pm_head` (`id_pm_head`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `smf_ikillpm_recipients`
--

CREATE TABLE IF NOT EXISTS `smf_ikillpm_recipients` (
  `id_pm` int(10) unsigned NOT NULL DEFAULT '0',
  `id_member` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `labels` varchar(60) NOT NULL DEFAULT '-1',
  `bcc` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `is_read` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `is_new` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_pm`,`id_member`),
  UNIQUE KEY `id_member` (`id_member`,`deleted`,`id_pm`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `smf_ikillpm_rules`
--

CREATE TABLE IF NOT EXISTS `smf_ikillpm_rules` (
  `id_rule` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_member` int(10) unsigned NOT NULL DEFAULT '0',
  `rule_name` varchar(60) NOT NULL,
  `criteria` text NOT NULL,
  `actions` text NOT NULL,
  `delete_pm` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `is_or` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_rule`),
  KEY `id_member` (`id_member`),
  KEY `delete_pm` (`delete_pm`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `smf_ikillpolls`
--

CREATE TABLE IF NOT EXISTS `smf_ikillpolls` (
  `id_poll` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `question` varchar(255) NOT NULL DEFAULT '',
  `voting_locked` tinyint(1) NOT NULL DEFAULT '0',
  `max_votes` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `expire_time` int(10) unsigned NOT NULL DEFAULT '0',
  `hide_results` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `change_vote` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `guest_vote` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `num_guest_voters` int(10) unsigned NOT NULL DEFAULT '0',
  `reset_poll` int(10) unsigned NOT NULL DEFAULT '0',
  `id_member` mediumint(8) NOT NULL DEFAULT '0',
  `poster_name` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id_poll`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `smf_ikillpoll_choices`
--

CREATE TABLE IF NOT EXISTS `smf_ikillpoll_choices` (
  `id_poll` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `id_choice` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `label` varchar(255) NOT NULL DEFAULT '',
  `votes` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_poll`,`id_choice`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `smf_ikillscheduled_tasks`
--

CREATE TABLE IF NOT EXISTS `smf_ikillscheduled_tasks` (
  `id_task` smallint(5) NOT NULL AUTO_INCREMENT,
  `next_time` int(10) NOT NULL DEFAULT '0',
  `time_offset` int(10) NOT NULL DEFAULT '0',
  `time_regularity` smallint(5) NOT NULL DEFAULT '0',
  `time_unit` varchar(1) NOT NULL DEFAULT 'h',
  `disabled` tinyint(3) NOT NULL DEFAULT '0',
  `task` varchar(24) NOT NULL DEFAULT '',
  PRIMARY KEY (`id_task`),
  UNIQUE KEY `task` (`task`),
  KEY `next_time` (`next_time`),
  KEY `disabled` (`disabled`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Volcado de datos para la tabla `smf_ikillscheduled_tasks`
--

INSERT INTO `smf_ikillscheduled_tasks` (`id_task`, `next_time`, `time_offset`, `time_regularity`, `time_unit`, `disabled`, `task`) VALUES
(1, 1376910000, 0, 2, 'h', 0, 'approval_notification'),
(2, 1377388800, 0, 7, 'd', 0, 'auto_optimize'),
(3, 1376956860, 60, 1, 'd', 0, 'daily_maintenance'),
(5, 1376956800, 0, 1, 'd', 0, 'daily_digest'),
(6, 1377388800, 0, 1, 'w', 0, 'weekly_digest'),
(7, 1376948760, 164804, 1, 'd', 0, 'fetchSMfiles'),
(8, 0, 0, 1, 'd', 1, 'birthdayemails'),
(9, 1377388800, 0, 1, 'w', 0, 'weekly_maintenance'),
(10, 0, 120, 1, 'd', 1, 'paid_subscriptions');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `smf_ikillsessions`
--

CREATE TABLE IF NOT EXISTS `smf_ikillsessions` (
  `session_id` char(32) NOT NULL,
  `last_update` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`session_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `smf_ikillsessions`
--

INSERT INTO `smf_ikillsessions` (`session_id`, `last_update`, `data`) VALUES
('ffaj031muvqhttqjf00ol8c493', 1376855510, 'USER_AGENT|s:108:"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/28.0.1500.95 Safari/537.36";admin_time|i:1376853899;session_value|s:32:"e1f85f3096bf2e3d29afcb8c2d4ba57a";session_var|s:9:"dbd16c3b5";id_msg_last_visit|s:1:"1";mc|a:7:{s:4:"time";i:1376855510;s:2:"id";s:1:"1";s:2:"gq";s:3:"1=1";s:2:"bq";s:3:"1=1";s:2:"ap";a:1:{i:0;i:0;}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}rc|a:3:{s:2:"id";s:1:"1";s:4:"time";i:1376827701;s:7:"reports";s:1:"0";}log_time|i:1376855506;timeOnlineUpdated|i:1376855465;unread_messages|i:0;old_url|s:52:"http://nexusplayers.bugs3.com/index.php?action=forum";id_theme|i:3;forms|a:7:{i:0;i:5432973;i:1;i:6989007;i:2;i:14272838;i:3;i:14486760;i:4;i:14107488;i:5;i:10750086;i:6;i:8720915;}last_backup_for|s:21:"ImagesOnBoard2.1.zip$";last_read_topic|i:1;who_online_sort_by|s:4:"time";who_online_filter|s:3:"all";language|s:7:"english";'),
('uaj8vnt1bp802ikq3mhl3vocg1', 1376909840, 'session_value|s:32:"e4de8a48e3e5a431caa70b8abca1fe14";session_var|s:8:"b2e0cda0";id_msg_last_visit|s:1:"1";mc|a:7:{s:4:"time";i:1376908661;s:2:"id";s:1:"1";s:2:"gq";s:3:"1=1";s:2:"bq";s:3:"1=1";s:2:"ap";a:1:{i:0;i:0;}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}rc|a:3:{s:2:"id";s:1:"1";s:4:"time";i:1376899885;s:7:"reports";s:1:"0";}log_time|i:1376909840;timeOnlineUpdated|i:1376909840;unread_messages|i:0;old_url|s:39:"http://nexusplayers.bugs3.com/index.php";USER_AGENT|s:108:"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/28.0.1500.95 Safari/537.36";admin_time|i:1376907303;who_online_sort_by|s:4:"time";who_online_filter|s:3:"all";visual_verification_code|s:6:"NEYYTE";'),
('4gbrodbov5e2thqr2v64gkmn07', 1376855424, 'session_value|s:32:"620be21b4a65950d6f8a249e9a9829dc";session_var|s:10:"ef605de08b";mc|a:7:{s:4:"time";i:1376851803;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1376851803;s:9:"id_member";i:0;s:2:"ip";s:14:"79.156.184.160";s:3:"ip2";s:14:"79.156.184.160";s:5:"email";s:0:"";}log_time|i:1376851804;timeOnlineUpdated|i:1376838706;old_url|s:52:"http://nexusplayers.bugs3.com/index.php?action=forum";USER_AGENT|s:101:"Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/28.0.1500.72 Safari/537.36";language|s:7:"english";'),
('tp6ee6bacumfnnvt5d5s5gri72', 1376854197, 'session_value|s:32:"2b57913b6795bb496c3a52533ebc315f";session_var|s:7:"a5c2e6b";mc|a:7:{s:4:"time";i:1376851795;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1376851795;s:9:"id_member";i:0;s:2:"ip";s:13:"81.39.199.146";s:3:"ip2";s:13:"81.39.199.146";s:5:"email";s:0:"";}log_time|i:1376851796;timeOnlineUpdated|i:1376851796;old_url|s:52:"http://nexusplayers.bugs3.com/index.php?action=forum";USER_AGENT|s:97:"Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.2.0.0 Safari/537.36";'),
('e5hct3rp0ttslopttq0kk7eum5', 1376900729, 'session_value|s:32:"466341895c83f5d9d4f09c1de3e4a2a4";session_var|s:8:"a9057fbd";mc|a:7:{s:4:"time";i:1376900728;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1376900728;s:9:"id_member";i:0;s:2:"ip";s:14:"81.169.174.178";s:3:"ip2";s:14:"81.169.174.178";s:5:"email";s:0:"";}log_time|i:1376900729;timeOnlineUpdated|i:1376900729;old_url|s:52:"http://nexusplayers.bugs3.com/index.php?action=forum";USER_AGENT|s:227:"Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.2; WOW64; .NET CLR 2.0.50727; .NET CLR 1.1.4322; .NET CLR 3.0.04506.30; .NET CLR 3.0.04506.648; .NET CLR 3.5.21022; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729; .NET4.0C; .NET4.0E)";'),
('j0blc188dd8umd1neuncun8sb3', 1376900858, 'session_value|s:32:"207c4d67637638c00646850a0739be18";session_var|s:9:"b005f9032";mc|a:7:{s:4:"time";i:1376900858;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1376900858;s:9:"id_member";i:0;s:2:"ip";s:14:"81.169.174.178";s:3:"ip2";s:14:"81.169.174.178";s:5:"email";s:0:"";}log_time|i:1376900858;timeOnlineUpdated|i:1376900858;old_url|s:52:"http://nexusplayers.bugs3.com/index.php?action=forum";USER_AGENT|s:227:"Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.2; WOW64; .NET CLR 2.0.50727; .NET CLR 1.1.4322; .NET CLR 3.0.04506.30; .NET CLR 3.0.04506.648; .NET CLR 3.5.21022; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729; .NET4.0C; .NET4.0E)";'),
('0h11ckjp5cod3tr4pu0933d9q0', 1376902201, 'session_value|s:32:"152d091710f376e6928220d22a105b65";session_var|s:11:"e3cea24eb1c";mc|a:7:{s:4:"time";i:1376902201;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1376902201;s:9:"id_member";i:0;s:2:"ip";s:13:"83.45.242.148";s:3:"ip2";s:13:"83.45.242.148";s:5:"email";s:0:"";}log_time|i:1376902201;timeOnlineUpdated|i:1376902201;old_url|s:52:"http://nexusplayers.bugs3.com/index.php?action=forum";USER_AGENT|s:108:"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/28.0.1500.95 Safari/537.36";'),
('idsro8j6tcme091g2iq8pe1314', 1376908791, 'session_value|s:32:"3ffe9c9c6074cd34c2da4dc7cd3a2967";session_var|s:7:"d6725ac";mc|a:7:{s:4:"time";i:1376908791;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1376908791;s:9:"id_member";i:0;s:2:"ip";s:14:"81.169.174.178";s:3:"ip2";s:14:"81.169.174.178";s:5:"email";s:0:"";}log_time|i:1376908791;timeOnlineUpdated|i:1376908791;old_url|s:52:"http://nexusplayers.bugs3.com/index.php?action=forum";USER_AGENT|s:227:"Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.2; WOW64; .NET CLR 2.0.50727; .NET CLR 1.1.4322; .NET CLR 3.0.04506.30; .NET CLR 3.0.04506.648; .NET CLR 3.5.21022; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729; .NET4.0C; .NET4.0E)";'),
('c1m9botmdj1ck2nacqahfmnap0', 1376908728, 'session_value|s:32:"82e2ea588e362a332f2768ce668fadba";session_var|s:10:"b88c52cbf8";mc|a:7:{s:4:"time";i:1376908728;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1376908728;s:9:"id_member";i:0;s:2:"ip";s:14:"81.169.174.178";s:3:"ip2";s:14:"81.169.174.178";s:5:"email";s:0:"";}log_time|i:1376908728;timeOnlineUpdated|i:1376908728;old_url|s:111:"http://nexusplayers.bugs3.com/index.php?action=collapse;c=1;sa=expand;b2e0cda0=e4de8a48e3e5a431caa70b8abca1fe14";USER_AGENT|s:227:"Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.2; WOW64; .NET CLR 2.0.50727; .NET CLR 1.1.4322; .NET CLR 3.0.04506.30; .NET CLR 3.0.04506.648; .NET CLR 3.5.21022; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729; .NET4.0C; .NET4.0E)";'),
('0d8nt568i9esbeb5n11fhqi260', 1376909720, 'session_value|s:32:"29118f730cf1faad1252a065adbeb15c";session_var|s:11:"c509bd3b48f";mc|a:7:{s:4:"time";i:1376909720;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1376909720;s:9:"id_member";i:0;s:2:"ip";s:14:"66.220.152.112";s:3:"ip2";s:14:"66.220.152.112";s:5:"email";s:0:"";}log_time|i:1376909720;timeOnlineUpdated|i:1376909720;old_url|s:39:"http://nexusplayers.bugs3.com/index.php";USER_AGENT|s:73:"facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)";'),
('4g1ilgfm0s03nqf1q7l8ojtjr7', 1376909773, 'session_value|s:32:"fd69fd511be450a29afaadfefbba7c90";session_var|s:10:"a66ef9937f";mc|a:7:{s:4:"time";i:1376909773;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1376909773;s:9:"id_member";i:0;s:2:"ip";s:13:"65.52.241.141";s:3:"ip2";s:13:"65.52.241.141";s:5:"email";s:0:"";}log_time|i:1376909773;timeOnlineUpdated|i:1376909773;old_url|s:39:"http://nexusplayers.bugs3.com/index.php";USER_AGENT|s:64:"Mozilla/5.0 (compatible; MSIE 10.0; Windows NT 6.1; Trident/6.0)";'),
('esonuv85cbo4bfgh4bmaeb1ss0', 1376909898, 'session_value|s:32:"b01800a111cf7598fa10fd73d82e61d2";session_var|s:7:"b769018";mc|a:7:{s:4:"time";i:1376909897;s:2:"id";i:0;s:2:"gq";s:3:"0=1";s:2:"bq";s:3:"0=1";s:2:"ap";a:0:{}s:2:"mb";a:0:{}s:2:"mq";s:3:"0=1";}ban|a:5:{s:12:"last_checked";i:1376909897;s:9:"id_member";i:0;s:2:"ip";s:13:"95.131.168.13";s:3:"ip2";s:13:"95.131.168.13";s:5:"email";s:0:"";}log_time|i:1376909898;timeOnlineUpdated|i:1376909898;old_url|s:39:"http://nexusplayers.bugs3.com/index.php";USER_AGENT|s:63:"Mozilla/5.001 (windows; U; NT4.0; en-US; rv:1.0) Gecko/25250101";');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `smf_ikillsettings`
--

CREATE TABLE IF NOT EXISTS `smf_ikillsettings` (
  `variable` varchar(255) NOT NULL DEFAULT '',
  `value` text NOT NULL,
  PRIMARY KEY (`variable`(30))
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `smf_ikillsettings`
--

INSERT INTO `smf_ikillsettings` (`variable`, `value`) VALUES
('smfVersion', '2.0.5'),
('news', 'SMF - Just Installed!'),
('compactTopicPagesContiguous', '5'),
('compactTopicPagesEnable', '1'),
('enableStickyTopics', '1'),
('todayMod', '1'),
('karmaMode', '0'),
('karmaTimeRestrictAdmins', '1'),
('enablePreviousNext', '1'),
('pollMode', '1'),
('enableVBStyleLogin', '1'),
('enableCompressedOutput', '1'),
('karmaWaitTime', '1'),
('karmaMinPosts', '0'),
('karmaLabel', 'Karma:'),
('karmaSmiteLabel', '[smite]'),
('karmaApplaudLabel', '[applaud]'),
('attachmentSizeLimit', '128'),
('attachmentPostLimit', '192'),
('attachmentNumPerPostLimit', '4'),
('attachmentDirSizeLimit', '10240'),
('attachmentUploadDir', '/home/u817287704/public_html/attachments'),
('attachmentExtensions', 'doc,gif,jpg,mpg,pdf,png,txt,zip'),
('attachmentCheckExtensions', '0'),
('attachmentShowImages', '1'),
('attachmentEnable', '1'),
('attachmentEncryptFilenames', '1'),
('attachmentThumbnails', '1'),
('attachmentThumbWidth', '150'),
('attachmentThumbHeight', '150'),
('censorIgnoreCase', '1'),
('mostOnline', '3'),
('mostOnlineToday', '2'),
('mostDate', '1376852644'),
('allow_disableAnnounce', '1'),
('trackStats', '1'),
('userLanguage', '1'),
('titlesEnable', '1'),
('topicSummaryPosts', '15'),
('enableErrorLogging', '1'),
('max_image_width', '0'),
('max_image_height', '0'),
('onlineEnable', '0'),
('cal_enabled', '0'),
('cal_maxyear', '2020'),
('cal_minyear', '2008'),
('cal_daysaslink', '0'),
('cal_defaultboard', ''),
('cal_showholidays', '1'),
('cal_showbdays', '1'),
('cal_showevents', '1'),
('cal_showweeknum', '0'),
('cal_maxspan', '7'),
('smtp_host', ''),
('smtp_port', '25'),
('smtp_username', ''),
('smtp_password', ''),
('mail_type', '0'),
('timeLoadPageEnable', '0'),
('totalMembers', '1'),
('totalTopics', '0'),
('totalMessages', '0'),
('simpleSearch', '0'),
('censor_vulgar', ''),
('censor_proper', ''),
('enablePostHTML', '0'),
('theme_allow', '1'),
('theme_default', '1'),
('theme_guests', '3'),
('enableEmbeddedFlash', '0'),
('xmlnews_enable', '1'),
('xmlnews_maxlen', '255'),
('hotTopicPosts', '15'),
('hotTopicVeryPosts', '25'),
('registration_method', '0'),
('send_validation_onChange', '0'),
('send_welcomeEmail', '1'),
('allow_editDisplayName', '1'),
('allow_hideOnline', '1'),
('guest_hideContacts', '1'),
('spamWaitTime', '5'),
('pm_spam_settings', '10,5,20'),
('reserveWord', '0'),
('reserveCase', '1'),
('reserveUser', '1'),
('reserveName', '1'),
('reserveNames', 'Admin\nWebmaster\nGuest\nroot'),
('autoLinkUrls', '1'),
('banLastUpdated', '0'),
('smileys_dir', '/home/u817287704/public_html/Smileys'),
('smileys_url', 'http://nexusplayers.bugs3.com/Smileys'),
('avatar_directory', '/home/u817287704/public_html/avatars'),
('avatar_url', 'http://nexusplayers.bugs3.com/avatars'),
('avatar_max_height_external', '65'),
('avatar_max_width_external', '65'),
('avatar_action_too_large', 'option_html_resize'),
('avatar_max_height_upload', '65'),
('avatar_max_width_upload', '65'),
('avatar_resize_upload', '1'),
('avatar_download_png', '1'),
('failed_login_threshold', '3'),
('oldTopicDays', '120'),
('edit_wait_time', '90'),
('edit_disable_time', '0'),
('autoFixDatabase', '1'),
('allow_guestAccess', '1'),
('time_format', '%B %d, %Y, %I:%M:%S %p'),
('number_format', '1.234,00'),
('enableBBC', '1'),
('max_messageLength', '20000'),
('signature_settings', '1,300,0,0,0,0,0,0:'),
('autoOptMaxOnline', '0'),
('defaultMaxMessages', '15'),
('defaultMaxTopics', '20'),
('defaultMaxMembers', '30'),
('enableParticipation', '1'),
('recycle_enable', '1'),
('recycle_board', '23'),
('maxMsgID', '0'),
('enableAllMessages', '0'),
('fixLongWords', '0'),
('knownThemes', '1,2,3'),
('who_enabled', '1'),
('time_offset', '0'),
('cookieTime', '60'),
('lastActive', '15'),
('smiley_sets_known', 'default,aaron,akyhne'),
('smiley_sets_names', 'Alienine''s Set\nAaron''s Set\nAkyhne''s Set'),
('smiley_sets_default', 'default'),
('cal_days_for_index', '7'),
('requireAgreement', '1'),
('unapprovedMembers', '0'),
('default_personal_text', ''),
('package_make_backups', '1'),
('databaseSession_enable', '1'),
('databaseSession_loose', '1'),
('databaseSession_lifetime', '2880'),
('search_cache_size', '50'),
('search_results_per_page', '30'),
('search_weight_frequency', '30'),
('search_weight_age', '25'),
('search_weight_length', '20'),
('search_weight_subject', '15'),
('search_weight_first_message', '10'),
('search_max_results', '1200'),
('search_floodcontrol_time', '5'),
('permission_enable_deny', '0'),
('permission_enable_postgroups', '0'),
('mail_next_send', '0'),
('mail_recent', '0000000000|0'),
('settings_updated', '1376908660'),
('next_task_time', '1376910000'),
('warning_settings', '1,20,0'),
('warning_watch', '10'),
('warning_moderate', '35'),
('warning_mute', '60'),
('admin_features', ''),
('last_mod_report_action', '0'),
('pruningOptions', '30,180,180,180,30,0'),
('cache_enable', '1'),
('reg_verification', '1'),
('visual_verification_type', '3'),
('enable_buddylist', '1'),
('birthday_email', 'happy_birthday'),
('dont_repeat_theme_core', '1'),
('dont_repeat_smileys_20', '1'),
('dont_repeat_buddylists', '1'),
('attachment_image_reencode', '1'),
('attachment_image_paranoid', '0'),
('attachment_thumb_png', '1'),
('avatar_reencode', '1'),
('avatar_paranoid', '0'),
('global_character_set', 'UTF-8'),
('default_timezone', 'Europe/Madrid'),
('memberlist_updated', '1376827601'),
('latestMember', '1'),
('latestRealName', 'Ikillnukes'),
('rand_seed', '1884509880'),
('mostOnlineUpdated', '2013-08-19'),
('enable_default_avatar', '1'),
('default_avatar_url', 'http://nexusplayers.bugs3.com/Themes/ikillcraft/images/default_avatar.png'),
('calendar_updated', '1376905167');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `smf_ikillsmileys`
--

CREATE TABLE IF NOT EXISTS `smf_ikillsmileys` (
  `id_smiley` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(30) NOT NULL DEFAULT '',
  `filename` varchar(48) NOT NULL DEFAULT '',
  `description` varchar(80) NOT NULL DEFAULT '',
  `smiley_row` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `smiley_order` smallint(5) unsigned NOT NULL DEFAULT '0',
  `hidden` tinyint(4) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_smiley`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=23 ;

--
-- Volcado de datos para la tabla `smf_ikillsmileys`
--

INSERT INTO `smf_ikillsmileys` (`id_smiley`, `code`, `filename`, `description`, `smiley_row`, `smiley_order`, `hidden`) VALUES
(1, ':)', 'smiley.gif', 'Smiley', 0, 0, 0),
(2, ';)', 'wink.gif', 'Wink', 0, 1, 0),
(3, ':D', 'cheesy.gif', 'Cheesy', 0, 2, 0),
(4, ';D', 'grin.gif', 'Grin', 0, 3, 0),
(5, '>:(', 'angry.gif', 'Angry', 0, 4, 0),
(6, ':(', 'sad.gif', 'Sad', 0, 5, 0),
(7, ':o', 'shocked.gif', 'Shocked', 0, 6, 0),
(8, '8)', 'cool.gif', 'Cool', 0, 7, 0),
(9, '???', 'huh.gif', 'Huh?', 0, 8, 0),
(10, '::)', 'rolleyes.gif', 'Roll Eyes', 0, 9, 0),
(11, ':P', 'tongue.gif', 'Tongue', 0, 10, 0),
(12, ':-[', 'embarrassed.gif', 'Embarrassed', 0, 11, 0),
(13, ':-X', 'lipsrsealed.gif', 'Lips Sealed', 0, 12, 0),
(14, ':-\\', 'undecided.gif', 'Undecided', 0, 13, 0),
(15, ':-*', 'kiss.gif', 'Kiss', 0, 14, 0),
(16, ':''(', 'cry.gif', 'Cry', 0, 15, 0),
(17, '>:D', 'evil.gif', 'Evil', 0, 16, 1),
(18, '^-^', 'azn.gif', 'Azn', 0, 17, 1),
(19, 'O0', 'afro.gif', 'Afro', 0, 18, 1),
(20, ':))', 'laugh.gif', 'Laugh', 0, 19, 1),
(21, 'C:-)', 'police.gif', 'Police', 0, 20, 1),
(22, 'O:-)', 'angel.gif', 'Angel', 0, 21, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `smf_ikillspiders`
--

CREATE TABLE IF NOT EXISTS `smf_ikillspiders` (
  `id_spider` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `spider_name` varchar(255) NOT NULL DEFAULT '',
  `user_agent` varchar(255) NOT NULL DEFAULT '',
  `ip_info` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id_spider`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=20 ;

--
-- Volcado de datos para la tabla `smf_ikillspiders`
--

INSERT INTO `smf_ikillspiders` (`id_spider`, `spider_name`, `user_agent`, `ip_info`) VALUES
(1, 'Google', 'googlebot', ''),
(2, 'Yahoo!', 'slurp', ''),
(3, 'MSN', 'msnbot', ''),
(4, 'Google (Mobile)', 'Googlebot-Mobile', ''),
(5, 'Google (Image)', 'Googlebot-Image', ''),
(6, 'Google (AdSense)', 'Mediapartners-Google', ''),
(7, 'Google (Adwords)', 'AdsBot-Google', ''),
(8, 'Yahoo! (Mobile)', 'YahooSeeker/M1A1-R2D2', ''),
(9, 'Yahoo! (Image)', 'Yahoo-MMCrawler', ''),
(10, 'MSN (Mobile)', 'MSNBOT_Mobile', ''),
(11, 'MSN (Media)', 'msnbot-media', ''),
(12, 'Cuil', 'twiceler', ''),
(13, 'Ask', 'Teoma', ''),
(14, 'Baidu', 'Baiduspider', ''),
(15, 'Gigablast', 'Gigabot', ''),
(16, 'InternetArchive', 'ia_archiver-web.archive.org', ''),
(17, 'Alexa', 'ia_archiver', ''),
(18, 'Omgili', 'omgilibot', ''),
(19, 'EntireWeb', 'Speedy Spider', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `smf_ikillsubscriptions`
--

CREATE TABLE IF NOT EXISTS `smf_ikillsubscriptions` (
  `id_subscribe` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `cost` text NOT NULL,
  `length` varchar(6) NOT NULL DEFAULT '',
  `id_group` smallint(5) NOT NULL DEFAULT '0',
  `add_groups` varchar(40) NOT NULL DEFAULT '',
  `active` tinyint(3) NOT NULL DEFAULT '1',
  `repeatable` tinyint(3) NOT NULL DEFAULT '0',
  `allow_partial` tinyint(3) NOT NULL DEFAULT '0',
  `reminder` tinyint(3) NOT NULL DEFAULT '0',
  `email_complete` text NOT NULL,
  PRIMARY KEY (`id_subscribe`),
  KEY `active` (`active`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `smf_ikillthemes`
--

CREATE TABLE IF NOT EXISTS `smf_ikillthemes` (
  `id_member` mediumint(8) NOT NULL DEFAULT '0',
  `id_theme` tinyint(4) unsigned NOT NULL DEFAULT '1',
  `variable` varchar(255) NOT NULL DEFAULT '',
  `value` text NOT NULL,
  PRIMARY KEY (`id_theme`,`id_member`,`variable`(30)),
  KEY `id_member` (`id_member`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `smf_ikillthemes`
--

INSERT INTO `smf_ikillthemes` (`id_member`, `id_theme`, `variable`, `value`) VALUES
(0, 1, 'name', 'SMF Default Theme - Curve'),
(0, 1, 'theme_url', 'http://nexusplayers.bugs3.com/Themes/default'),
(0, 1, 'images_url', 'http://nexusplayers.bugs3.com/Themes/default/images'),
(0, 1, 'theme_dir', '/home/u817287704/public_html/Themes/default'),
(0, 1, 'show_bbc', '1'),
(0, 1, 'show_latest_member', '1'),
(0, 1, 'show_modify', '1'),
(0, 1, 'show_user_images', '1'),
(0, 1, 'show_blurb', '1'),
(0, 1, 'show_gender', '0'),
(0, 1, 'show_newsfader', '0'),
(0, 1, 'number_recent_posts', '0'),
(0, 1, 'show_member_bar', '1'),
(0, 1, 'linktree_link', '1'),
(0, 1, 'show_profile_buttons', '1'),
(0, 1, 'show_mark_read', '1'),
(0, 1, 'show_stats_index', '1'),
(0, 1, 'linktree_inline', '0'),
(0, 1, 'show_board_desc', '1'),
(0, 1, 'newsfader_time', '5000'),
(0, 1, 'allow_no_censored', '0'),
(0, 1, 'additional_options_collapsable', '1'),
(0, 1, 'use_image_buttons', '1'),
(0, 1, 'enable_news', '1'),
(0, 1, 'forum_width', '90%'),
(0, 2, 'name', 'Core Theme'),
(0, 2, 'theme_url', 'http://nexusplayers.bugs3.com/Themes/core'),
(0, 2, 'images_url', 'http://nexusplayers.bugs3.com/Themes/core/images'),
(0, 2, 'theme_dir', '/home/u817287704/public_html/Themes/core'),
(-1, 1, 'display_quick_reply', '1'),
(-1, 1, 'posts_apply_ignore_list', '1'),
(0, 3, 'theme_url', 'http://nexusplayers.bugs3.com/Themes/ikillcraft'),
(0, 3, 'images_url', 'http://nexusplayers.bugs3.com/Themes/ikillcraft/images'),
(0, 3, 'theme_dir', '/home/u817287704/public_html/Themes/ikillcraft'),
(0, 3, 'name', 'ikillcraft'),
(0, 3, 'theme_layers', 'html,body'),
(0, 3, 'theme_templates', 'index'),
(1, 1, 'admin_preferences', 'a:1:{s:2:"pv";s:7:"classic";}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `smf_ikilltopics`
--

CREATE TABLE IF NOT EXISTS `smf_ikilltopics` (
  `id_topic` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `is_sticky` tinyint(4) NOT NULL DEFAULT '0',
  `id_board` smallint(5) unsigned NOT NULL DEFAULT '0',
  `id_first_msg` int(10) unsigned NOT NULL DEFAULT '0',
  `id_last_msg` int(10) unsigned NOT NULL DEFAULT '0',
  `id_member_started` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `id_member_updated` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `id_poll` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `id_previous_board` smallint(5) NOT NULL DEFAULT '0',
  `id_previous_topic` mediumint(8) NOT NULL DEFAULT '0',
  `num_replies` int(10) unsigned NOT NULL DEFAULT '0',
  `num_views` int(10) unsigned NOT NULL DEFAULT '0',
  `locked` tinyint(4) NOT NULL DEFAULT '0',
  `unapproved_posts` smallint(5) NOT NULL DEFAULT '0',
  `approved` tinyint(3) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_topic`),
  UNIQUE KEY `last_message` (`id_last_msg`,`id_board`),
  UNIQUE KEY `first_message` (`id_first_msg`,`id_board`),
  UNIQUE KEY `poll` (`id_poll`,`id_topic`),
  KEY `is_sticky` (`is_sticky`),
  KEY `approved` (`approved`),
  KEY `id_board` (`id_board`),
  KEY `member_started` (`id_member_started`,`id_board`),
  KEY `last_message_sticky` (`id_board`,`is_sticky`,`id_last_msg`),
  KEY `board_news` (`id_board`,`id_first_msg`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
