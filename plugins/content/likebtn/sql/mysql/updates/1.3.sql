CREATE TABLE IF NOT EXISTS `#__likebtn_items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `content_type` varchar(255) DEFAULT '',
  `content_id` int(10) unsigned DEFAULT '0',
  `identifier` text NOT NULL,
  `identifier_hash` varchar(32) DEFAULT NULL,
  `url` text,
  `title` text,
  `description` text,
  `image` text,
  `likes` int(11) NOT NULL DEFAULT '0',
  `dislikes` int(11) NOT NULL DEFAULT '0',
  `likes_minus_dislikes` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `identifier_hash` (`identifier_hash`),
  KEY `identifier` (`identifier`(1)),
  KEY `title` (`title`(1)),
  KEY `likes` (`likes`),
  KEY `dislikes` (`dislikes`),
  KEY `likes_minus_dislikes` (`likes_minus_dislikes`),
  KEY `content_type` (`content_type`),
  KEY `content_id` (`content_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;