-- Adminer 4.8.1 MySQL 8.0.28 dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

SET NAMES utf8mb4;

DROP DATABASE IF EXISTS `website_db`;
CREATE DATABASE `website_db` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `website_db`;

DROP TABLE IF EXISTS `CONTACTUS`;
CREATE TABLE `CONTACTUS` (
  `contact_id` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(40) NOT NULL,
  `email` varchar(80) NOT NULL,
  `message` varchar(360) NOT NULL,
  `date_created` datetime NOT NULL,
  PRIMARY KEY (`contact_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


DROP TABLE IF EXISTS `EMPLOYEES`;
CREATE TABLE `EMPLOYEES` (
  `employee_id` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(40) NOT NULL,
  `email` varchar(80) NOT NULL,
  `pass` char(40) NOT NULL,
  `role` varchar(40) NOT NULL,
  `date_created` datetime NOT NULL,
  PRIMARY KEY (`employee_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


DROP TABLE IF EXISTS `artists`;
CREATE TABLE `artists` (
  `artist_id` int unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(20) DEFAULT NULL,
  `middle_name` varchar(20) DEFAULT NULL,
  `last_name` varchar(40) NOT NULL,
  PRIMARY KEY (`artist_id`),
  KEY `full_name` (`last_name`,`first_name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO `artists` (`artist_id`, `first_name`, `middle_name`, `last_name`) VALUES
(1,	'test',	'test',	'test'),
(2,	'test',	'test',	'test'),
(3,	'test2',	'test2',	'test3'),
(4,	'test2',	'test2',	'test3'),
(5,	'test2',	'test2',	'test3');

DROP TABLE IF EXISTS `contactus`;
CREATE TABLE `contactus` (
  `contact_id` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(40) NOT NULL,
  `email` varchar(80) NOT NULL,
  `message` varchar(360) NOT NULL,
  `date_created` datetime NOT NULL,
  PRIMARY KEY (`contact_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO `contactus` (`contact_id`, `first_name`, `last_name`, `email`, `message`, `date_created`) VALUES
(1,	'John',	'Lennon',	'john@beatles.com',	'I want to use your resturant for a birthday party',	'2009-11-23 21:27:57'),
(2,	'Paul',	'McCartney',	'paul@beatles.com',	'lovely resturant good job',	'2009-11-23 21:27:57'),
(3,	'George',	'Harrison',	'george@beatles.com',	'I hate your resturant the food stink',	'2009-11-23 21:27:57'),
(4,	'Ringo',	'Starr',	'ringo@beatles.com',	'I want more variety of foods',	'2009-11-23 21:27:57'),
(5,	'ju',	'ygy',	'hgughg',	'ygv b[n07 8iuon 7t bgy 7t7yg',	'2009-12-01 15:24:08');

DROP TABLE IF EXISTS `customers`;
CREATE TABLE `customers` (
  `customer_id` int unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(60) NOT NULL,
  `pass` char(40) NOT NULL,
  PRIMARY KEY (`customer_id`),
  KEY `email_pass` (`email`,`pass`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS `employees`;
CREATE TABLE `employees` (
  `employee_id` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(40) NOT NULL,
  `email` varchar(80) NOT NULL,
  `pass` char(40) NOT NULL,
  `title` varchar(40) NOT NULL,
  `admin` varchar(30) NOT NULL DEFAULT '0',
  `date_created` datetime NOT NULL,
  PRIMARY KEY (`employee_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO `employees` (`employee_id`, `first_name`, `last_name`, `email`, `pass`, `title`, `admin`, `date_created`) VALUES
(1,	'Lovell',	'Felix',	'lovell.felix@gmail.com',	'5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8',	'admin',	'1',	'2009-11-23 21:27:57'),
(2,	'John',	'Lennon',	'john@beatles.com',	'2a50435b0f512f60988db719106a258fb7e338ff',	'admin',	'0',	'2009-11-23 21:27:57'),
(3,	'Paul',	'McCartney',	'paul@beatles.com',	'6ae16792c502a5b47da180ce8456e5ae7d65e262',	'waiter',	'0',	'2009-11-23 21:27:57'),
(4,	'George',	'Harrison',	'george@beatles.com',	'1af17e73721dbe0c40011b82ed4bb1a7dbe3ce29',	'supervisor',	'1',	'2009-11-23 21:27:57'),
(5,	'Ringo',	'Starr',	'ringo@beatles.com',	'520f73691bcf89d508d923a2dbc8e6fa58efb522',	'waiter',	'0',	'2009-11-23 21:27:57'),
(6,	'David',	'Jones',	'davey@monkees.com',	'ec23244e40137ef72763267f17ed6c7ebb2b019f',	'manager',	'1',	'2009-11-23 21:27:57'),
(7,	'Peter',	'Tork',	'peter@monkees.com',	'b8f6bc0c646f68ec6f27653f8473ae4ae81fd302',	'manager',	'1',	'2009-11-23 21:27:57'),
(8,	'Micky',	'Dolenz',	'micky@monkees.com',	'0599b6e3c9206ef135c83a921294ba6417dbc673',	'waiter',	'0',	'2009-11-23 21:27:57'),
(9,	'Mike',	'Nesmith',	'mike@monkees.com',	'804a1773e9985abeb1f2605e0cc22211cc58cb1b',	'waiter',	'0',	'2009-11-23 21:27:57'),
(10,	'David',	'Sedaris',	'david@authors.com',	'f54e748ae9624210402eeb2c15a9f506a110ef72',	'waiter',	'0',	'2009-11-23 21:27:57');

DROP TABLE IF EXISTS `food`;
CREATE TABLE `food` (
  `food_id` int unsigned NOT NULL AUTO_INCREMENT,
  `food_name` varchar(20) DEFAULT NULL,
  `food_type` varchar(20) DEFAULT NULL,
  `food_description` varchar(40) NOT NULL,
  PRIMARY KEY (`food_id`),
  KEY `full_name` (`food_name`,`food_type`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `menu_id` int unsigned NOT NULL AUTO_INCREMENT,
  `food_id` int unsigned NOT NULL,
  `menu_name` varchar(60) NOT NULL,
  `price` decimal(6,2) unsigned NOT NULL,
  `size` varchar(60) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `image_name` varchar(60) NOT NULL,
  PRIMARY KEY (`menu_id`),
  KEY `food_id` (`food_id`),
  KEY `menu_name` (`menu_name`),
  KEY `price` (`price`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS `order_contents`;
CREATE TABLE `order_contents` (
  `oc_id` int unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int unsigned NOT NULL,
  `print_id` int unsigned NOT NULL,
  `quantity` tinyint unsigned NOT NULL DEFAULT '1',
  `price` decimal(6,2) unsigned NOT NULL,
  `ship_date` datetime DEFAULT NULL,
  PRIMARY KEY (`oc_id`),
  KEY `order_id` (`order_id`),
  KEY `print_id` (`print_id`),
  KEY `ship_date` (`ship_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `order_contents` (`oc_id`, `order_id`, `print_id`, `quantity`, `price`, `ship_date`) VALUES
(1,	4,	1,	1,	89.00,	NULL),
(2,	8,	1,	1,	89.00,	NULL),
(3,	10,	1,	1,	89.00,	NULL),
(4,	12,	1,	2,	89.00,	NULL);

DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `order_id` int unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int unsigned NOT NULL,
  `total` decimal(10,2) unsigned NOT NULL,
  `order_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`order_id`),
  KEY `customer_id` (`customer_id`),
  KEY `order_date` (`order_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `orders` (`order_id`, `customer_id`, `total`, `order_date`) VALUES
(1,	1,	178.93,	'2009-12-02 12:19:36'),
(2,	1,	178.93,	'2009-12-02 12:25:39'),
(3,	1,	178.93,	'2009-12-02 12:29:08'),
(4,	1,	178.93,	'2009-12-02 12:29:48'),
(5,	1,	178.93,	'2009-12-02 12:31:07'),
(6,	1,	178.93,	'2009-12-02 12:31:32'),
(7,	1,	178.93,	'2009-12-02 12:31:39'),
(8,	1,	178.93,	'2009-12-02 12:32:03'),
(9,	1,	178.93,	'2009-12-02 12:32:53'),
(10,	1,	178.93,	'2009-12-02 12:33:25'),
(11,	1,	178.93,	'2009-12-02 12:35:00'),
(12,	1,	178.93,	'2009-12-02 13:26:08');

DROP TABLE IF EXISTS `prints`;
CREATE TABLE `prints` (
  `print_id` int unsigned NOT NULL AUTO_INCREMENT,
  `artist_id` int unsigned NOT NULL,
  `print_name` varchar(60) NOT NULL,
  `price` decimal(6,2) unsigned NOT NULL,
  `size` varchar(60) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `image_name` varchar(60) NOT NULL,
  PRIMARY KEY (`print_id`),
  KEY `artist_id` (`artist_id`),
  KEY `print_name` (`print_name`),
  KEY `price` (`price`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO `prints` (`print_id`, `artist_id`, `print_name`, `price`, `size`, `description`, `image_name`) VALUES
(1,	5,	'test',	89.00,	'hope',	'htgtgv',	'twitter.png');

DROP TABLE IF EXISTS `tbl_images`;
CREATE TABLE `tbl_images` (
  `id` tinyint unsigned NOT NULL AUTO_INCREMENT,
  `image` blob NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO `tbl_images` (`id`, `image`) VALUES
(1,	'ÿØÿà\0JFIF\0,,\0\0ÿÛ\0C\0	\Z!\Z\"$\"$ÿÛ\0CÿÀ\0ŠX!\0ÿÄ\0\0\0\0\0\0\0\0\0\0\0\0\0\0	ÿÄ\0C\0	\0\0!1AQa\"q2‘#Bb¡±3Rr‚Á$CÑScs’¢²ğ4ñÿÄ\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÄ\0%\0\0\0\0\0\0\0!1A\"2QaBRqÿÚ\0\0\0?\0í›#µò½w‰Á”ÓÅ¤µIIQ¡³U™¬£«aFÈn\riŠK„æH¢Æ’´Fû‹+*Tt\\§´©ªY@òˆ<ªTKV\\,Vä/>‰‚ï•`¦•·”Æ¥N,²JXWµbé\ZÉRèÒ¬”ÉÀ­Æè‰ºTµÒ4î¯r\0U€T2KªrFSÎRœë\'\n‘+ìW¿7UK2/q!V\"ÒœJ•D§2øJ’;\"R±–Fe%ã\n¡3¼¥8*!-éÃ„<¥95H–ò’‰qº[’ª…’¢€ì\\\"S“Ñ±ØıQ”ì«c¬PZa’Á“7D\Zc|&vE8|N°Lk²£+toÑ5–İõYÖ±¥–µÂ6©ZÉT‚€B™(ğ„ß„à¡\'*œ}SHQùf×ºò€rš’¢ÁD‘¬\"	 ¨ ÂU]2FÈùHËyK%8Aº äÈMÊcF.¥QNnp€ˆI@Š€å0´$¤	/)ÁY*8YVœ²è(À¸µ“©…Ÿ²\' Q¸wRPÂ‘¬’ÇeF{+•,Ò7<$¸*\"Ü^EB^}’\\Bk…8á%å#…’Å*¢Ü¢ûÇÊpµÊœgÂëæ»\nj¡r‚\rĞ|¦V&âP´Ü¦TÖéív2•T1®°N…Àœ¨±rµÆûpSÙ\'c•k\Z!nËC~ªkH»¡)è¨p˜QµS!†c„·{[§dèáAI\"öKá(„\ZÂ ‘‰D8]@V„ÄÒœS…T(ƒPPÁ€¥J–ä²Paq²”ÈX($º—Ê.á!øD*Í0ºÌèûÙ\\¬ìĞ›£ÉÒ.eÒÛ}…`,C½•»u°€\\\'+4 ñdâk,IsU‘afúªŠ„=%å5BœRÜRª…9”Õ\0¨¤ßl\n6œ­F2KæÊ.–©$Á[	Û”‚ğGºí(€Æ§° âŞl8R9,R?Ö¨¤ÈOl—v8QcNk\\RcİjR\Z³±¬£Êcr.¤ĞŒ!² W|£kZGÑ1…í#”Œ™\Z7e@ó¸T“ØK…ÊT­ ŞØJ\Z›”` +î‘Á; ÔU‚	C{—k•DcZ,¡å#Å“…@Yr[Š	7BNPMŠ¢S îS~}ÑƒWpRåHé%¹VX-ÂiÂ%Œp^Ê¥/Õq…ìº£8W²Í±	êd)ÀbY›“„áVY\0ºÏ+¬0®T2Jë¬Ò]\\T!à¤½RŠzS”ª\0 *j€TH>Á¤´İâV!µÆÈ÷ŒluÓZì¥A€9@ë_)C¢aFÓœ 	Îà]äÑ¹hŠOU6+š×«[$À²ÎÆÜÓ@.mÉZa?*Š¸2¨„Œ$#Œa#î(\0”dá)€îN&Ï- ØYGŸ”¤¢†&Zc²+$kS„\Z”@Ka\0 \0„ÓE»²—A¯²¢P¹	7@VU ‚åI€ L…Â‡*TĞ„‚‚Ú—lÛ²d²ĞP– øÊKƒ‚¤ØKÁ&ë€ë¡Ò:gI~©­V6š®\rmš\\ùxk\Z2ç@ªTYo§RÖxÅ¬VÊïì^òéÁùeÔªü·¸zì`6ú]rzO‰3>I­h2Á?<ÔryÍo¹no¥ÔÏ–ï¡ôü—këô}WNÖ¨Åf™WL\'°å§ĞAö+K›ì·ç©fÄÂ^Ô‡µZáOjQj•ÍKpHán\n)7× +W±ğ¬›$KÖ+@\"×Jœ]î©Ç)²aF\rMæèšsõ@5Mkò’¥hÖ+m3îV}5å¶#k-LöYVĞÀU¤j²±€€£”A©À‘Êp™`ÆPHâ0‚,_„mvS({M\nU\n‘©Q(\n%	å0r„¦šU´å	TJ\0n LEªHÕkª!E\nd².¢F¢ÜlPAr£ÊavPŒ$át£ÓS£_âÖ‘wLIRca’‰Şs¿tZÄ²©ScÎõÚÆI+Ÿ&¡OsËZıÎ?asuÁê~ |+İ&4o:fİ¿fß?u—}H­;Ãïu\r«£WZé©ªœÖÕÄlÖ–ñp\0°#•êF–Ëdˆ‰ö‡5Ã7\\[lÌ¬õ‘‚éÖ’\\à\0ıV*JÚ*æÈê*¸*›¶9ĞÈĞïKŒ]uN§¢”OjS‚j€pJ{RQN\n(°ßTá•CWŒy\n=×H;æZ á<İC%Âœ\nŞ\0ºé÷MaAœÛwFÛƒ…*QÌ÷ZilTVœ¹Óãu°²­áÍ(î¥IuD *ê]WKÍÓ…LD›$\0\nÀ¹º`Àl,ˆ$b[Š@*“TPä$a2\nÀÂ	N(P}Tºa.­#ŠP ‚UÙ”@B–æ _ ÛeVÊd°¡å#S½’Ü(Åò-2©¾ëæ“ûï‚vÓéÅÏéu\\ß)±áJ¹²2÷Ú3sÊÇ,Ñº\'4¸4ë•ËÓ£™úDs¾Ì\ro•ÛšgXõF‹GGuU£±Şj‚ØÚ\0µƒZn~ä#‹wÃås2k–é^˜ÔºÃQ-©¬¨«‚\'‰¨”şÆákóØÛ’»»JÒèô:->‚<BÍ’{“êJëø9ÿ\0äÃ“^Jád%¼$¢\\S†úéc ¤UÇ\Z_\n‰¸L#i²\0ƒ½T.÷@@â®HaObF|d_	­ô*U\Z\"ÂtfÆã\n+N[ ‘i‰Âáe[rÔÓqtc…+D$ *ê‰@Pwº»‚‚Õ]X)„D\r‚·X¨^¦Fn˜xRa*Š`ªº‰BJeUuWº\0UÉ\n)tJe€µi\Z*²ˆÂaD*!\Zd\'”ÈÔŞ*ø‹HÊZDòê¤‘®Š¦§€àµŸâ>ü×Fã?“¿¬xïª`m6¥+XàAyàğ¸Wl\'.\'è7^İŸŞe2æ~Öµ¤[.áğsÃí_ª6TJùhôxİi*HÌ–å‘ƒË½ø\\\'Ç6Ügü‹3+Òº^•C¤éĞéÚm3)éam˜Æÿ\02Ory$ä¢•zø˜äc•«;ÖŠ-Éná*d½E*}õd&×²ã¤kQÍruá™ÆÊ]hJº B•eC”m(0§°•!¢3dæŸ™E\\ha#iSW‰äª\'¨«æµÇ.,´1Ûš³­eK¨JâèKĞT;îyD×a2Yv	\Z\\İbŸ#ci|eí¹ÆÁ[ŸÙC¹I(E`S¹Êš¥È(JpªŠ˜\n¤É;ªH!CÂa \"‰\ZJAÒTK¨ƒR–H¡)JÍYQ\r%4•5ÙM.{¶“`=€$ı“\'NuïWõgRùºWKôæ·œnÙ\'u$Œ}@úZío¶	ïè¾¾uÕx³ºz¡­=ª*¢¦gè\\•–°¿}u·Âà/R×8\Zéú~…ƒ³]$Å£ìĞ?šäè?\rš@!Ú—QÔH{¶š¬bâ¢_ãÿ\0­¹¿Y›¯¡Ó<è=2F¾JZêâÓ{TTü§êÖ\0¾ò( §‚:jhc†šq´5¬hà\00Û$óuÖÕÉ€²Ë›­!k$¢ë3Û•¡Â^8a%õÕ;FxÃ®\r_JZK‡QÅcòG#\ríd²ÇËyX¨r¯èƒxÊ	@+A›––%Hö‘„ĞT}ˆNk‚UpÆ¼\'²K(±r´G/º×£¿;\ZóM2áå°IT‡J«z¬N„[&×î¼çÕ>3u5f¥Q•åit­‘Ís7JZ\r=>Šnş¯Ôz»©+ÜMWRjRß÷[1`ı—W_W#Á’º±äw5ÿ\0ªŒ¨ÕAW¬jù\ZåsCyàT¹Ìk‡)6^¦ğw¬ãë>‚¹Ä\nØeVËğñßèUÅKjÒSã)ÕÃ[õOa¸ÊŠ¥„„@[‚*ˆLª¬¨„¬¥aUk”É,¡H)@€„¡< Ö\n» (¢\'	\rò¬$jqÂY)Â	(	!×Å2Y$òIú”¢Ø@d„à¥†ãè©yg¨Áa•€+å‰Í W	šA~wµ\\—·	/Nªğ¢•;=ï ğ²Uæ,ú®)íâÈ_ãe³]¹I{KMŠ¹Im*ò‘¬+h±A\r¢ËL`Ù*\rmÂ-É®ˆ<¤4ÖHœÇİM‹”ÖI•®lu\ZsLó}\nÊ–+Tt{µJ¹itÚš˜!3Ëns#¼@áxW¯ú¶³PêªíB\nPFùOü7xÈÁ­Ö%ÅqÏÛ¬¾œêyùØáîÒ£©¢òÃvÎüqp_ä­¿Á?|ºıaŞÊoØ1í-$:î û¯¾ü>x…7DulRVJçé5yUôc­óvœı.z»äûø¤çÃİ0:âd°HÙ#{C˜ö›‡.>„&\0BÙ‰&éĞå*¨y	\na€„%©TBa,†È,U”!\0$YU“	d6ÊˆT€£Â…Š ñJî‘¨•WO	RÉ@Uğ„‚‚CÂ¯t\\9YåÆÉÂ¬“qkab˜-9eYİÂL€dÎö$½Š¡BÌ,Ò5Rã4E*È{®å–£¾V\\±éÇb„ü¯ÏFi(İ–åe•„òÍsr«qVÒ˜ÒŠŒ-0Û‚¦”8·HS\rW²«å06¸İ>7{¥N\ZÃ•¡QWÈÚáê Ê•ÃšÀ\r®®FX§W…Û69^EüUôCºw©Ù¯PÄF›ª\\ºÃÌ?3~ã?ª–lWÇâº!îÚë»-È\\ÎĞ6\\ìĞ6”ù©îx{ğ•ÖÕZÏJOÓ•ÌGé6øj‚ÂXa\'—q¹§{í>Ë¼›%×LôäõpØÍÖ¸‹ÙM8u•©R‹P”à		Gº¨HĞ¬ K È-”¬€„%0¥EEK !TJ\0IUtÉD¡))”*(\0q<%9)†Jb±JÓ{\0¯–]8­?SÓu6Hı6º\n¦ÆòÉ<§‡mp6 ú\'8+—R2éO=ò¶Ë4­Wdbˆª×ŞÈlJ^İße”eK˜ÙØ	i*¢(Øë!Ç„É•Âá!í7W	Må:0\r1„æ°öP\rcœ0ˆç²JVË¢]\Z1D+h(Ñ”èÓK¬ÕEµŞéì4İM\\”œ÷FÚ‹²ÅN+@$Ï+ñ¦(ºÓ£ëú~³k|øï¤_É”eıyö%l9r¼\r®hõzV«U¦j0:\ZºY]Ñ¸~W4Ø®=”N‘á¬is†€.OÙqŞ]“·aô/‚}mÕdÑi‡O£\'ÿ\0è­ı›mìŞOè½Ğ_‡®ÑZÊuòëÕM±,’ñÓƒşA—}ÏÙmÇÇûQò|³Ôw%%$tt°RSF,È`Œ1ú…²,•«ŸİÖÚ{\\.B>Ï¦J)R€´ X§5 3æNRe¹@yL*×BæÜƒsƒÛºaT²ä.@UdÈ.å\nŠˆ\n%\rÓ\nT‚QÊ… WL(¸©| )Èˆ{É_ãR³¥ºªh¤Ù]Yzj[‚áó;ìÛıÈU/ê,y[F×5=¹µúmlÔ“7‡Fë\\{úb»§¡<h¤«òèúO7ª!ò;üÃ·ÙaÏÉyº®zvİM-m3ji\'x.×±×¿ª]òäbÍ$jå™ñİEJ}¶ĞZ‚ÎÇ\rFVn“#,.©Sc,£æ½Ğ»-²´BCùVÁ”èÚE\r,á:3Ù@0Y[p’Œ\nÀHÆîxP4ÈFÛ!sîPJkÑ‰Jg(Ä‡Õ	<%aÊ3ƒ”m$…*¬ñ;Á+­z¶}Õ’Q9ñ†V²6Ûá¯¿cl[ôİá·Hô´lşÎÒ`tã™æn÷Ÿ¹Q8’ë_ò\\Èûl\"²¤	·íÊÑ\nš®[XwŒ­°á‚ë:Ö\Z\0¥hZ¨€€[ÆU\0.„*Aq„½–NP[Å‚œ&F{09¹KsS „„ÀHBPA*Š`\'”)’*@Q>ˆI@UïİKa¢¶Pk#	nùA€¶ıŠò_â;©ÿ\0íˆi´ò‡Ğé\0Ó²Ç’÷‘ß®?Ò®sSÓ­œ,ÀÒd\\èü×n~µí\"Š§R\Z®½ä=ÎlT´²<ˆı\\ÿ\0KŞÀ}×Fè§ŒIŒ‘‡‡4Ü¿Ãf&ø¸\\ŒH’5ĞßŠ¥§ó1Êñu–&ÓàPÔ9»1„~ø`vJYÁµÖ‘˜^ÊÌÿ\0Ìª[Bk3Ù0p8FÃŞêuÂ`Ï¢™¬a¶Q¸{•*‚\0(H09Ø¸Is…Ó‰ªÜ.‰¯Êdk>e¢!•6¯˜“¸\\Y?6\nŸÃÌqÛap¬Xæé(CØ¢cr’°æ6Ü¦3É*7ÂÁ´ş‹[ÛİeZC[k\"áKDû)k ¶ê¶e2Å„„„HÒJ\r¶Uk,!ÊšöØ¥9—NËPdÈKr`%QL€U&H¢\0Jè\0RÈh{¤hAãå<UêVtBjzØ#â—JÓûÓ?ı2ïô¯|ä¹ò¸¾i	|\'$œ©ù/õ‘Éc’IÃ}ÚObUjü¥ÿ\0˜ñ±ƒÜ¬Dçl–1‚wÏæ+¶|	ê}v‡­t½\"yª)k¥¾î.¤\\/Å€\'ì‰sË_–K¨ò®I’\";.Ù\\øD‘ö**ÒrWÂ˜B×YÆèÀÊHQ¼HGe¹Yœäà«crœÖ§D¬ åHÃ\Zr›±E8Ò×aÁP°ŞÈë§\\å(»*¡÷(Ã“#c}“İ&0TÕDaİÊkI	UEîÏÌŒ<)ÅJcèSWÂ(İ”ºØZëTNk³…i)Ìu‘‡)\\X(ÚRRñk©vÙ [ˆBl™k”—Y8š)”BáuD¤\n‘$İTKreK%Q*“ª<(€–UdQT‘.ÊY¢°A.ØV\ZHá#y«ñaÔÔ-O%àÓ‡ÄU\0pfxùZ~ÿ\0ìWIÊ`şñÙ\'ÑGÉïuvà#‰¡Ø\0w)PtßTõUp\Zƒ__dµ²E	òïßæ8YÖŸµöT¾xŒÚQ;ôˆ\Zïü3Tİãì»wÀOªú]ÓkıEMÕ¥iŠš»p¦ŒşbOİÇ°ú•|ñvjû³<Wn–áSâ]t1ÆYâQ=M”o¢±*×jÄêÜòB@‡eŞèš, ½É\'ó\'\n˜Ü\" r¬¤F\0,¡\ZËß”Ö›)\\î€^ùá8JpJpÊp°*^Éšì¦µ×JÃ•¢\'aim²¢´åN°8Êìp‘ÑÄSCˆJœô0ò±IR´G\'ºÕM%J‹+Tr‡:ËK=ÖvcH+€¡vR‹Õ¦Z\"è-[œ,”yDÔs…“ ƒtH?8KrpÉO8En \n’ŠÂ£dŒ&ÈB	a_(15·PFn–yfÖFÖZ×Òª\"ø×Ñ]M£uMnµªÓüM%eT“2®+º7C]İ¤L.µtEsäuŞãrT÷ï\\½KÏM9¢×u&¿EÓú[âkæ‘ˆÇ.yökA\'è½­ÓÚ5OèZ™ŠÃî@ıãîMÉ÷%.&ÖÜLNbÛ-ÍåPM%ÊÀáe”¬pŒpE»­Üëkò™ºèj°ëa [İt¾ê¡(P‹„ö44Ä[e\nÜ‰‡Õ#J¢ÛvHË ƒÂâp¿TåT$1ˆ#ãu“…Jç¡µæè¬HHâ0Û	ÉUA´¦7!J¡Œ$-¸©«Ô„_<­¡ØYtÖ(¹ô°ÎB^«\0w”Aè\n/T\\Vû[Âaò‹~€uÕ| µ-á\0Y%GG`Œ(µR¤âíuDŒ·(JìOdA¦é	7+\\pvQkN`&.x@!9\nu_\\f¯¢§ª¥’š®ç‚Fí’9\Z×B\nóßŠ¾‹Íªôq6ËŸ@÷qÿ\0¦Øª÷1s³.‘E]Ôú½j3=ôtÑJËbiÍw;ôoºîbÄÈRdÂÜÜ2´MHL‚ì(‚ÇËµè÷®¬s`šäÆ= 0ô[‚@òªÉ’d@ \nÕ7SNÏ*[…\'í\rì¨¦c€åYprJ-âÇÕ(”âjˆTY~ÉZË\"@MÙLkìÔP8/Êp‘¾ªj¢#U¢A¦±éñ»SW)¬7ák§ÙEiÏ¶è™l¦ï±YÖ‘w¸BJ·?*‹“-VåeÈÜ¦ä\0—)r€°UÜ z¢hHÍkÂ/†¾Tîš¿†#²“SÙ¼vGØş¬REká)Ì²­MŠÛb¬°,„÷\nÛ²4°ÖÂmÂ6Â–ªC˜ÀÒÚp	YôÓ–‡´²8\0TÅÖZƒÊÇ!ZF}\"C‚¸€\n’Y„Ù*\'©±ñáùD»1€šÿ\0tÖÈ¦À6½1¯H…|+å–Ê Ü\'Äå4Ú\ZádWÂ“•Fäª ¢F8‚¬ä’1€KP–Ù!\r¹L\rá\Z |»ğ…ñ¸ô°‡_*ï‹*-Pq_˜Œó\n&<¥¢7_…¡¤©­%j¦pºäa·l,zoÃH*®¥Bk¬¸ÍGZ:Ó¦ĞÀíCQ\0A€l ğé_ÄcÛ.=AëU+j[~.H¤˜åÆ&°{\0I6§\'Û„h$º—@QUtIua\0@&5·ìŠcle1±ŸE6FùT1ç!E­y1è—4ciYÊ§,Ç‹$I–Ò³¼€ÄOdø A(´§\"t\r@!hKUõ]š=ü½Œ‰’†R¢Q¾{·•–I¹D‡k4²]f{•ÈÎÒœÅT\"Ê*IeM|3\\ˆ9w1\\š×$F´û£@09HI&‹YXHÅdMHi<\'36	S‡´7…Õ+,´Q1£ºi‚$DnIJÙìˆp™\'ù‚@.–ì³¾1|*”¬\"VÙ(Ü*ˆ«Õ1¥×Zã²—Ëm;mÂØÁÂÇ§G1¡¼!¨–\Zx$¨¨š8a‰¥òK#ƒXÆK‰ÀåJŞmñoñ!L#~‡Ğ!îª{ºœ€mˆ\\‹Ä3ryÜx¿]à\'\\é}GÓÑél£‡OÔéãóf‰„‘SÙÓ~g:ÿ\0šäœŒÛ….Ô]æÍıvmÕš‚FU&ª²\0¢éZÔøØ¦ÕFˆãZ£ˆz(µ¯0æÆÔÆ´v¨2?jQ}Ó#›l®^×t}\Z.¯©ÑPFãfº¦fÇsís•|ÄõqZ~¥G¨ÑÇ[§ÕÁWK(¼sC {=ˆZ¼ë6Ê± ÉPØãt{ZÖ‚\\ç\0$•ÓİaãK©ëå¤éÊ(*¢a·ÄÏºÏ=Ë@¶=Ï(Æ7Ëô¯ñs­ê‰×ÒÒJzVÜ}İuÁÖõ÷Y=®–£ª50¸ù­·Øk‹¯›¾¿]Ÿà§ÕèORUu#µjç‚MñNÂ·‹½¤şsúî»kÌDvü^9Så6²K¤¿tä]¥¹Å,İ4„¥¹Q–ä4€ (H\\¢e€¢]ÌLiNbD{ÓC.%\0!n‘\ZÄÀFÑn\0{&0ƒ†°Q9÷ç\nTÜ¢)­…Lå\nû(ç\0‚)îº!Ó-S¤<ª¸O…ù	Ng²q4;\0¦FÓè™6S´[…¶Âë>›rä!eøZZÜ,k¢1ë:¼\Z\\qGäÍYY=Å58YÈæ×ÃZ;½Ä5½Ï\0ô?â³¦ºëSğú=r£Wsà¦ŸuvE…‚†¾ÿ\0šg5ß™ÎÇÍpĞ‹é\\å³^UÓâ0Î$~}E—¤\nÚ¥¨u}AK4Í;Ìa˜ñ$ao–ß\\O¥‡{)á?4½u,zxª#•¨PP %•† 6èÚÜ¤pö0ú-0FIQjäldIÍm–Vµ®\rHØ¥”^ë;ç²¹kçºÿ\0[“Cè½gW‰ûd¥¤‘ñº×ö³ù¼e«\ZšÙ_U¨ÌúÚ¹Z,“8½ÄnOu·1Íòõæ>·Â·ªè*ùbm,•\Z5[ƒªišlcpÇ›ãu¹½aÁÕ0UE=,u1H2F$kÎiÛ	^p|}o‡Fø»âšËäÑ4i^İ-†ÓÎÜ|Iÿ\0õç‹.­š¢(Çí&ƒİà%\\/nœkk´z&9Œ­¦`s·&ä{¯†ë¥v¡1¡Ó·|;OÌà¼?ôQn4ş?Åzïzôæ<\Z§ëé:¶š¯£ ¬š¶‚í˜ˆ7¸Ÿ”4÷{Ò–I]M§±ÊXŒk·ºÙ\0÷\0ß(ã]½I:ğ·ºènµJ‰BJ\0J&p@P@w(\n¤€¨‚Ç^‚ŒÜÄÖ”øŠDÓÊ{9ÂÎ¤Àì˜Æ‡Gò˜cÇ\ntğ½¦öFÖú¦“˜Ğ˜Øò¦ÕHs\"Â·B>êux†È¼¯dhœ’ö–•MõM>‘æÙåÉ7N\n¥¸„âj‰ÂMÓ-rœÖ^×JœS£¸ÀWd1¤7iÀZ\"u²¢´åºšL-l7*ßAKM\rLõ1ÄÑ<öód9s€à\\şèì8‰²29¢|R±’Fö–¹mÚàEˆ#¸#²Jtåá×¡¢êš­R¥Õ•\Z{äßO¦oÙWå®pùœÛğ1a‚Jí­+M Ò¨\" Òèi¨i\"\nxƒß 	I‡zµ¯j›S%m¶0€¶Äl±¥¢	‘\\ğš 7áMª‘¦8q•¢(íÙE­d<#B exco|®>yK*¹…Õd‘åtç‹º¯ŠZ–»L«§›Fó©(Ç›\0ÿ\0Ìq·ñzÙkËŸäû^«¡z‡Ä\rv¹ÄkšÎ¡WNá–>Rcw¦\në}C©«>:Zšj‚Ã#ÿ\0-ƒ›kú%z±Ïğüw»öëÓv‘Õ\Z­~£KG1k |²º(~m—ùˆû]{Gªé®®éAC¥V´Ï)>(¤1ÈÖ\0\0c¿y·\0ëêŸ=^®Ö×xë	§ğï¡âsIéº3ù¦”ıÄ¯xW©ÖÚ½m,0ÒÓËW#¢††26n! €Ô“–Ÿ2_}á÷Wud±7Aéúê¸¤qåì„[’du›oºô7‡?†º*?.¯¬ëÛTñŸ¢qlGÈrï£mõYsÎ´ï¼ñ÷¢é:f‰§3NÒ()èi#ü±@ÀÖıqÉ÷+jŞI=1u,J	BPj² Àî8\'\n€„Ó`M.»Kšªš™…õÂŞo$£ù®ÍÆUÄÕõ¿HĞ‚jz‹Nm»6]çôm×\r[ãCÒåÖUÕ¸v†˜ÿ\0WYg×ÍÇ?¥–ú=â–ÕI¦i5Ñ‡Dù]<Ï`\rkGøEù6uØì8G=N¦Âë›Ï±´§ÄQS\Zâw²{ágU(ÀMÂg	ÊX ¬ƒhc¬nšÒ8QcIDÖ‚àœÁk[*j£=DbÄÙeÛb¯›áŸsÈ\\0£[ò•Ig”R³İTBÚ‘”G{ğ¶G}©Ur66ı“£„^áE­$ÑI½´X¥)ã]8$ğµ4å¤8„@)RÃr˜Ö„\r±ÜğšØA	ZrÃØ)d;iKOs\Z•23ÈKUõ:&­\rhSjám‘Ü¯0e%˜\\Œ=`šbou’I²2êç]ˆ*é¿¼Ñº¦)ëtÇ¤jO¹ta¿ğÓ;Ô´~CîÜ{/%u§Cu\'IjçOÖ´ù)åä$ndƒÕpK¨®.9>Œè©Ô&kètR«qæ*wØ«æ»«¡<-ñ2‚¾-B·ûFÛæ¨¨$z6÷Å.X|²÷Ö½¥2¾-:juTV5¿µ’Ëãê\ZI²øš<7¤Öj5QÒôÕÈdÛRçKd›üŒ\'hÏÕifÏ-\'V>ö(ÙMŠ65‘°YŒh­€a‰jj°VB¢n„¦`rA!		KTF§j\rÈ¹Çuä®±Õ%Õº—R®’GÈÙj¤sA7w\0öµ•ÿ\0&úˆâmpÃqËŠ¶´^ı×6İ}—†d:7U­®fšÚÙ¦§F&Àß˜8’~Á}Çıûk¡ûÎ‘¤ˆÅÉfù¾—¿û.>¯2c.¾;Õ×}éõ?COS°ÇçDÉ6[¹ Ûíu±]v9ï¶˜œ´5ÆøQL{‚œöHÕdÈÑD=¥5ªj¡ñÜYh`rŠÖf’I\"7ºr§¨L±Ù-¤Œv*ç–WÀ^Àx).Œ‚ªR±MÈö’“+l1nb«Ng“™	„Ö2Ågnµ“Y…œ¶ÅX|kŒ¥UÉÌÊ`n.,m3£MÂö8QUØ9¯~È5ß9Oˆ¶ÉUC¹E~ı”¨·ÌAÁKtøÉ¹NB´q½î¤“–ºxŸ³’{¤=êã:ä$Ü¦r•,ÊZf†)\rÚ^Àí§Ô_„†ûmsoD(!EDŠ€ B„)5«„u,™„µQ@hBZ˜\n‹PJ!DÉÓ½GYğ=¨ÖŞŞE,¯PÓoæ¼Œç]Á£Éõ(şOûHÏhok«o6\\í’]»¶şbWÒøeÓòõ7WéúMœ!{üÚ§İ…™qûá¿RŸÇ>İÈ¹âm{	\0\0Ğ\Z\0p=“Zû/J¸iñIîµFñnTXFµ×L\nMÊdbè·‘a”Ö9Jã\\\"ı–†Œà¬ëX\'Û¸H”qÊ!Ò%cˆá+Ê7á\\¬¬_’}ä€Û)ÊWš\'<+òìxÂ­NÕMkYEiÏ¶Æ4X\"ÚmáŒ$HÛe8Up“uª;O–¨ûÜ(ZÀÊ¾3\ZlŒ¼\0\nš©BdÊ­×O‡qõDGtaiŒ”ğJcåÚÎTØ¹|2É5Íî”dÊ¹h„‰rHŒ\ZKt2B¨YQ@R¢A¶TÚS¶T!2@F•-•e¡#MM¨Õ(µ-âÈ€*²dÜ!!\0$(™<ëãEoÁøs©ØÙÓì€©Âÿ\0Èæ C[{\\¥ü÷gÇèo!`Ğ8”Ày<Y`ÒçáQµ¦K•èŸÃŸO\r?§\'ê	ãµF¦í°’2 aÇşç\\ı\0[ÿ\0oz>[œ»Y¯Ml‹¿xtr-È¢Â>9}Jsd\'º›˜šÇq”„­0\rÍíê¥¦öPÒìyZ£˜Ü]M‹æ´9ÁÃ•mˆò£Òı­Ğß•bè9èsÂ[ •€4ãÑ§7áV§\0ø-”p0ƒÂ7ÁfV¶‚Œ4¦´~^	(…VÆØİh÷E©¶²±{©XóeD”ŒMyµ•ïõ@Õ;ˆ@Våaø@›nê:R{§ƒK$÷U¹2^äİJ¬ƒ[u{R	eD +j›PÖå[š€¢Ì Ø€­…jæ¥nƒX&ùDŠ%-åY¢Û„ÈYK (µD“ÿ\0u^_Kéô`æz²â=˜Óşî]¶Ü„|ßïYqêˆ78î£Åšïs`±[ğã¤ªº¿¨ÛCæQDCëgÿ\0wà¸ïÙz²’(ii¢¦¦±Clo\rh\0}‚îş/9Îÿ\0Ôü÷Ôhk½Ó\ZåÔç5NcıÔØVÇû­=EIìztNù²¦Ãn§4[”ÂĞNà³¾×=&AÊtnJœö×›p¹C\\Û¬ºoÉíŒ;„Á²‹W\"O‹Y	£\'²>ÇõĞ>‚0¬Ò8·„şÅõ)Ôg¸@)íÙ?²~«ØGl*{lc\n’ç…ÒšFršÖY%a	ú)¦4< ÂB°l€…È	Êxâ¸\ro«t-\'Q‹LªÔ!øùrÚf¸†ÿ\0ˆÃêœ‰·Ì22XÛ$nk…ÁĞnU† ×·²­¨%ÉiÄ-U·²AEªì€›n¦Ô\ZÃTØ€°Ë,@À–€ƒjì©ÍÂT!¹¥p¡\0;n j¨€ñoâ2¨É¬éT\r?İS¾R=ÜëäÕÕ…¬n_#GÔ¥ò½cÏ¥oiiòãÅÀ½—Ñt—Eë]CªRÓ\n\ZÚZ)i*ä§vÆ7’rÏ§Ù.9û\\i&y¯Gô§Oé3£E¥éPùp°îs—Êîîqî§rà¯O™$Èçêı®˜Ò¥RMc“\Zäˆæ9:7ÙM‰§±÷+Cî¢“e;‰°\\;[´]eÓN\Zã¤şQ|%ÉE+pÖf¿Oøe,İg®A¬#°SÕ_1²´\r½ÖÖFYuí·&2œ„æB8!E«N¾ˆ’ÓÆIØ;ads3e§5ŸP.ŒÂSâ$ZÊåE…>?eMgÕRpÆ°¦¥¦ 6€‘ŠØBà”()Â|·Š]Lî‘èšıq‘_>FSßìWtâCªhn§P #‘0Ú^\n©aeü|·‰ˆ-GRéıèéÏÊk¼¯Â?wëÊév×kÔ›©‡Ôº«~ÿ\09î»œ}I<¥nøˆË»^œğ+ÄøujvéZ›ÛS\0i<Qì»±­\0ŒƒÁMpMb-¸á*¨°Õa‰¢²Gæû -ÊaPí@PE[6d¯Õô­5¥Ú†£GHş4Íoõ)å¥n{3KÔ´íV˜Ôi•ôµ°ŒÓÊ×õ·u¥Á,ÊrË6eA„ö@Ä,*¶’€¢ÅA—FŒW—u<¿ThÀ˜ÈBXP0%¶Q05çÍk£úwZÔF¡ªi‘ÕÔ#İm£`mİ2‹¤úbŒƒMÓÚ\\dp~¤ş¤Ûş.wqÍ:²c—Šc`dPÅÂÆĞ&“rIú•rIé:°\0UÛ„wL–Ò˜Ò‚5®Mc’©§Æå®\'^Ê,&Êcó®^ˆ‰\Z8XöÓo§Óà6_Ô]*©¤I{X_•É¾]–d%¡Àƒ›¦¿s†-eDI{ƒ€kï•·Oó>×<†úÙĞçÛè\"`¶m²æ×NB\0Ye$İT*ÎìóÊYfUÄP¹¹JxìœE%íÂ Ûp­++\'ÕD‹«kB/T\\OÃÔ·ªUL±SÓ¾ysœ{?ş*èõİ7WÓ\Z4¨S¶ICßî¼#İœA¿e=«ã»­T\Z­E3ğâ@\\ÄZ¬•y/±âÉsĞëã–ë—Ò\'ª¤{+¨etu1;s\\?§ºõG€ş(Òu%4FVÇ¨ÄKIÿ\0ö™á–åwÜ+Ú§Z j-ˆÑ ›\Z-™ÎRV(µ	b‹l±jÚ¥SšR¾–†!õ¶1üùNyôVÉ5×½GãwBi!Í§­¨Õ%»IÚÔëêºß_üEêóG¡èt”mìú—_õ°°şª²Onnÿ\0‘ÿ\0Õ×ú÷Š}{¬‡\n ©7Ë‚Ñ7ôm—ÉÍ©VÍ!}MçqååÄŸæ•ê¹º·¯u¿BêMCD®en—YWAPÜ‰ yiúQìp»ëÃhjü½?«Ã!“\rğ2Í?úŒ}[d·Uğ÷×ÇñŞtµô‘VPÔCSM(İ±<9Ä-\"2O\n^Œóè~I!O \0–«ê[¢KÊz0[}•m@˜”æ§\n”æ ¶SJˆQÓA]—¤ãX] ÔÅ«¶	ÀFĞ‚BsOŒµFÊÎ“T7ë–¡s˜ÛÙeß¥ñíôTSÉµ·pÈ²ä¤®†æä}—^+»Ÿ1•Ô„·T{.m„öRÌ5 yó22ê¹jZq#,ZC¾–²úiÇ.E¬`Òë,c_LóH,²=ÙZH‹JİÜ¨×eZş.³¼å8˜u}F‡IÓ§Ôµ*¸©(ànéf•ÖkGºÇÓ]E¢u&Ÿñú¥O]N\rœcvX}Ó–Ÿ¨WŒön6j5ôZe+ªµ\ZÊz8\0Ì“ÈßÔóöXúw_ÒúŠŠZİ§â©cĞyÁ„5ïh¶ß/kúİ>ÓqÉ]°ÔmnR8\0Ô4ÚzLôEå¢VÛŸd¡×ˆ|mèZÎ’Ö%¨Š|¯=±ûË©¦q2‚t¿Ö)°¹Á÷´{)ik™ƒZøx{ıS:kZ­Óu–jÔµ.‚¥ÜÛ}=Â¿·ã+ÆK^ßğÄÊ¹Ñ›I<ŒT I9w¸õ]¥åğù‚lVìŒEdµx6Çì¨Çœ„´ÂcöBcF–>ÅÍ¯5M(Š×ãÓä‡Ì¦ØúòÍû§Û\0ú¯uºÌ:ÍE.¾k›©Âí³2°¸ÊÓï»ÿ\0ğ­\'^1Åü®:÷øâŸsÈÊ¢NDİnµ×à„Kƒ‚\0(Ll&û@>ÈØú~‚ëŞ¨èŠß;F¯pÎZY~xeÄß_qcî½Eáo=/ÖUkÛ£jî³E<ïı”®ÿ\0Ëÿ\0õuÕMšëø>_­ËéÚvõ>ˆ…òœ„·œ&BJ	.ê¡RËP9©¤ª&0¢ôœK‚`Æ6èÃ\nV[ì†È!4&4&G5©±±M©k†;Ùl´aghÀVÊQµÁ¦öYõWÄÇ%Å¹ÈªA…­#×?q×ÇMP»}€ïì†v4nÈ8ÂËõ¯á‚ÙØH–hhpuÍÀÈQÒùŞ³Lô¤;Y%}ÖwÉnëIÚK¤º&¼ªÄjœòBøïz÷Iè]2\ZŠèå¬­ªqm%IˆüÎ$á¬n.ãê\0›\'\n×”<fë~¥ë\r2y5Úß&‘¶}=+‹)á7Ç¼ş\'}€_Ğg®t^¢jtmNZYÃË}Ì<ƒq“Üca.­•ûsqôzïUÍªHêºíR£PŸnó$²—–¿ÙzcğËÔZ~·áu%#N˜çAU9/..ßş«ßìª]ağsfÚí„Á€›¥a1¥*b±!Pa\'*tó_1â7FPu^‡=D,{ÜÂ29^ñ+£+ºK¨fÓk#xq0HGæoıBUSÃänk­Ê³3X0.Tz\\ò‰–K¸.{BÒ+uzèh4ê)ªê¦;c†Ëãìsş—ò=iø|ü=ê}=©ÒõOTWÍESİK&~’¼vşú¯IG¢Óç•ùBü*thV-‘û(èíÙ…ì±áS£¿dôaR2Å|g‰tç_i¾F±Lb¬¤SWÀ\0¡ıæÿ\0	ÇÓ•ZW™|W’¼Qğ÷©¼:«ÛP\n½&Wì§Õ)Çì{5ã–?Øı‰_ÍÑ¿píeSËËù¾+ñõÿ\0…–„í¸OŞÉ³`tú«*¶ÓÉL]Ë›ó4}{®E¥ÆÄò¾ç3ıVnJ®\rÆ‡oxWã—Pô¸‹MÖÄšÖÛ5­‘ÿ\0·„Ï#ø]B§z+«º{¬´ßĞ5Tµ£ö±–XO£ÙÈúğ}TÙúîş?Í¿Ö¹ĞÌåBÅ.ÄòÂ0^ê¥M…¹„ sUjq^YQ\Z1Ò…¨l½7\nYL²Ğ×&ŠÁÙCåå\ZKû#cQ¤Ñˆãº‹I²3Œ.Rš+€YwUÄ×!#@J7| ¬~Î ›‡î­—{%iÇ+NíŒ7õOµ¯³³è±³[ËTÒ±Òî{.DH\0Ü;¨ê/›àKnëeS §–¢RDq1Ïq€\\ÿ\0Dä¸İ;T£Õtøu\r>¢:ŠiØŒ7šm_MRf›&¡HÚ×‹¶˜Ìß0òŞëYÍc×M`ƒİ^îÈI­iı= Ökz¬Æ*:8Ì’.ãØ5£»œH\0w$/\'õ]v§Õ:ågRknTTY±À¹´°‹ì…§Û’{¸’œgòzÇPõŞ­Im%Şl1;{ŞÊç\0=@ÊùÏˆm~»=_-¾>?¤”SHø\\s#·;ı—işºĞôˆ”Â¦]šf¤E%eÎsò?ı.şDªæ£©•îÂ.†zkÚADd„1¸Gql$¸&ıZøëá•\\tìŞ\\met`º\'áİ*~Ş×ôZİU©Óu5î-{Hıö\\`¦e/e-ØğwÀ¨ëª˜ª]´½&à¾®fX¸{ÿ\0Eío\n¼0é/4á‰@ÓVæ5l£tÒ«°öYÛ­9ÿ\0¯´•Íhì²KP¶·•\\ó¥×X&9ÏöM\0vnÖ€ÓÅÒŞË¨X6+{\0mÊ3™¸û.¬zƒHé>œ«×µº‘OEJÍÏ<¹Ç³\Z;¸œ\0«™·ğ^&ë¾%jæjÇ¾‡G…Çàôøß†·üO?¼óÜı‚ëÈ«e¡}ây,¿ä*íóá‡\\Ï“Ã Ô©ëYò›?¸+K›Ş÷?o;®/*¬\0Ê­ŸT«Ûnt\rü°HªİÓÚî§¤jğÖèµ••ì?³};ˆÒÃ‘ìpÁÌ¶ø{Á^¶ê^¨Ó=QÓu”,eÙ]äCR=ÚrÇ#ÚÜ.È-—Ó×øí¼ÿ\0oib…ÍÊk)ñª1á…¹Ée‰é&Ì(‘-B[ì½w›©±Xj‰­²kZ€tlºĞØ®8SjEäE<•:GE½¬µÁ¿	Z#”¡¥27…ÊAHn,?}:>>[¡¥¶íjlíËu¼˜ÖÊhçi\0ú,Zœú6—KVÓèHaüEK#;G&ÄŞÊ\'WÒ¯3ÛÎ3ş\"ÎÙ´?÷µ™dšÃÙb}|–ñ»>€r¾—ğ{âºƒG«é\rr©óêt;ª)$•åÏš™¤œ’Çıìü.|İwóÚÈ¬Z.U² Ø%š¿Bs‹¾‹°Âí*±£÷©äü\n¯1â|\\×zš¶’…ì¨§š\'`œİ‘ÊEšñô9#‚¯ğã4º×âH®×ë¦¬üEC÷\\Ë0Äú“öUöÜcñÏÚöÎÛdmj¥:×ÇÍ¨õšm)Ú}$•zE¤©«Š—Êé€2X2æ´œ_æ¶8^Dñªjªı.\njš\nFÙLÑº)%=ÅZßnO²‹Üq·_<ÑíµÆ\"š‰v\'Ùfè&¹ˆÚ[\r‹‚´Ar[Í‹Ù[–¿Eü:¦Õbè-=qÛõ&éğŠ“ß~Ñƒî÷}ˆ§­g*|]ì€¶ÈÊ02˜†°\'1—SU\'øŒğPu;u\n8âÕC\\Ä\'‚³ø?ømÑ´©Õ6Ô«ZC›‡ìØ~ŸõQoàœ½KM\r4-†&EšÖ‹\0˜\\A¶Q\"ÙÇE÷ná%”RıÀöÂÚu$ay¶´Øø¿*â£½Ôfù_ÚsàqÈ%›s~V‹)êcNn¬1¬\'\n…¹–²ñçã/ªê5>¸‹¤á‘ÂƒG‰²JÀq%D¹\'ü­ ©ZqûY|·9yæpOqrE†fàaŸœ4µÁÑ5Ã‚+§êïe£ªÇ£ÿ\0ê‰p¾o|œÿ\0ë›ŠV= ´ƒqÍÑîÛË/÷WmpšFŠ\0LÒK®Ñé/<Fê:x*Ù¦RéS±²2zù€%„\\ÆİÆãè£®³Óoøıuæúv¯Kş4\ZrÉz›\\®ÕdåĞÓ‡‹é|¸ş¡vÏKtHt¼mn‡Óô4„Ì‡H~®7*3}»øøùãÓéC;vV\Z}p›Eœ\0Ph[”$ \0€”û]0Y*&—Hœ*zï0@+\r@ZšÖ$)ÌŒ…¢;e&”øãÜ}’¡¢8@8Zé¡‹Œ,í_3kÑà’÷~Sì´¸†¼–Ú×\\×Íuóâ5A–mÉG5>æy€cıÔ[•y±×ş,ø£øy¡TTUVÅıªøœhhİ$¯µƒ‹{0’q‹exkªúÃXê\nùª«j$I^÷HíÅÇÔÿ\0ĞvGWÎ~ıyõjjlò¾“Ãş¨ÔúOªôî¡Ó^ôS	I°‘¼9‡ÙÍ$ª‰|ëLœú~‹t¶¯§u7NiıC¥ËæÑ×@ÙbÎ[~Z}Á¸>ár>HáUñW‰´´¡¬`vŸSÿ\0£\'ÿ\0RŠ_ËJOøÒ®Óqü×!Ò}A]Ó½IC­é“yU”S	bqƒìA ıTór‰?¬~€xSÖú__ô”:Öæ²fÚ:ÊkİÔòÛ->Ç{…öÇ¶¢G#G¯…Áx³®iı-ĞZ§P×ÓÓÔK[)™,MÉ;şXÚÉ¿Ğ^k_\\Úüú¬Ñ5\rv­ñRPI[]9şâ’#†ok4z›“ê»¡?İ­Ó¾]J:nìù]ZwJ}„m7Sd­“Ó‹zçÿ\01â¯„=Cás¨aÖ*ik©«7ü5U0vÛ¶×cáÖ ı¿ÃŸGÛ4º	â/¡¤wÆÖ\\`Çiÿ\03¶·îª]‡göÇ¾\\Îç’nU56«{šF,³Ën…KhÊc[”Ê?U²»•®C\\æ´{©Jã,…®	gç™Oc‹\0ŒÓDFFT}ša^K\"aİkXëêšÈÀfJÓ™ö¬û¿XÈÂfgÎĞ,²Å/›µ—ù[s’ãŸ©lÖ75Z~P¹–´a•—Ëí¿ÃèÂÀÜ¬›`î¼+øœèşªĞúûX×uZ)¥Óµ\Z·Ïtm.‹i?+Iı×acé‹«ç¬cósöåÒïs$8\"É`p¾±)²çÁ2ãùK’>6÷å%ÅCSSI½ğ5òFÁy\0†ç¿¢ÉW«×Uß4µŒGØOƒ›~ÕÏøaÑº·^u…OéP:Y¦x3<ñ@Ïqôù¯ÓÍ>‰”tôq’›~\0²‰|µÏ\'ÆP*–ByAç/dà„½0>á-Î\"ÉQ2t±j°Ïeë¼Õm(ÚF1©ñeµ¢6§g\nm(k#ºÑ<)´ãKM¬úH¿Å…—WÃ^\'–öOå·k@Cæ½ÎâË9k¡Ò¶áİ¬ºGÇÄ]M6§¦º-±Öêñ—EQ]#/\r3±\riüï×åë.óZó²<…­êÚµ©Ôjz­lõµ•.–i\\÷ŸrWp³İ…ƒÙSC¯ùˆAÏP~	¼CøJúõ:ØV8Ï¦6k|ñóqîÓê½hE…‚»ùW*\0„N¥óa’+Û{ÛıE¿İM£5ù¡â¯Ek½ÔÕ\ZF³D`š7Dû]“2øsOp’øæx9÷S.Ÿ>Ÿ[á¿[ë½ÔjÚ5t”ò–VŒ²V…íáÃÿ\0Á{ßÁ~¿Ó¼BĞİQM©Süe(uÃC¿,Œ=ØëzAZÏ<ÿ\0ø›şÎÉ€G—rWRt¾ÔPÓÃ¯iTÚ”Tòb 1®\"×Û{leaÓY&aºn“§iP|>—§ÒPB?åÓBØ›ú4÷3Ù(1ğ~7ô<}}áŞ£¡µ­øàßˆ yıÊ†e¿ge§ÙË®¿]\'Oô=_QWÓ:\ZıbbÖ5í³™D´»÷°W/â/?Û]âát§‚;*„YKw*áTk,Ÿw)Z$lŠrÛ:2-e­$[(wæ>şÖZã‚(ÇÊĞ¦õ§9ÁØ(A#•*`¯óƒHjã›H÷ù±îº8êHçù9½\\2Fù\r\r?ÕTñşÈîÆ—ôYø\r2\'ùß&/Êç¢Œ1£Õgòß*øgõ[’\\³lÅRÁğ>	âX,ö=¡Ípô à :£¯?õA–s¢\Z²BOÄi’y9õ1å‡ô¡ºÓğÕô2>n“×ôínİ†¬\Zi­é|°ş¡9lG\\Êê>¢ğ³ÄŸ©j½­Æ\\í­|Æv8û9—ŸèÃßŠ}[]/éù´\nüõz›|£ÙŸÇØ¸Eù\'ç²œcÚ>\røQÓş\Zô{´*ŠùjæWUTDÒjk~S{4vn}y%WXø5áŸU5ŸÛ¥ºF6Zhş@=7Gkıî¦FG |;èş…¥4İ/¡ÓP>P7K\'ùrWÓ9€\'<û·ªN)O8M%=àsd£0.°!T… sÅòP—&\0\\„¹<-Uî¢¨.ŒG§kË£·eMbzcˆã%¸SHø£ã\\p“ÙE§!ñÀ}2œØYŞšNOc6Œ­lpÛ{)­9ğ…ÂöO§i{Åò¦úTöú\ZÚ\Z1b¼øÚè¢u”gAÚ\roå©Ú1[FOúÚ¾¡Ë—»åÑuít³ì‚F½»‹n‡oTËú Yº.¡U¦j4ú…Ï‚ªšVÍ­9cÚnû…úCàÿ\0XÒx…áîÔmeDò«\"işêváãé|bß\nãËëÙ“\\,pySkI#â·Aôßˆ=&¯R]àMS¼Øş&Ÿê8+À^0øEÔëŸ©ÓºJœ~º6Ÿ*qéü.õişjg„Û•ÉxAà—Rø™¦jU½9_§Fı=ñ6HjŞæ9ÛÃÚy^Œü8ø+Ö^õC5¾ ×tøáZ‚¥.•Ò5ıœò\0\rÀdÜvU:»x³kĞÊ[wHğ•¯JÔŒ–ŠWv\'”ï;ë.9[nµÊÓ´áfÕ›a\'…M¦\r`kZ\Z\0\0§|;NBÏ,y8U*lg{\nÆIW¨>8Vêj|Œ)ê¯˜ä¡ˆ5©€Ë&‹°Q@ĞIÂ¶ø²a†jw>Lbüª‡Ø9ïí¶ç¦ñ\\ŸOäD\r¾cÊÖI²Ë«·Zó2aOº€bé(©ak¨×?o\0ıÓÂ\"W=î\rhWNßbOè«Ä‰÷[Í§DFxY­,,„èˆ\n}‚Í+“ò9$¹R(Rál•Q,³òs„†³k¯{«…}ˆ›¨J6Sj`leùQM§#©Dv9MâëÒµå)Ñç„\",ğk=–¨Yt¨Çr,\'8ÙXõ[||£›´•AÙâé,d‚Ü…W\' Z(Á.°\\ÖŸ\rÙQİ_Ç5ÊFv…Àø£Ò´=uĞ\ZŸLWmoÅÅzyH¿“;sƒèyö%sõ6:?›Ú¾™[¤êušV¥NêzÚ9ñ;–=¦Ä~¡`!N¥A­¾ë£Â`Q…èÏÁTêÚ\\ÕtÜPÏQ§j:YC\ZK`‘ƒåö\0‹¶ıîƒ›åíšKËóÏdÊˆšÈî9ôYş·üq2:G>Öùš~ézŞŸ£õ>Q¡ëº|ÔU´°ÈÛƒèAìGb2uÎÄJøü(—Ã.¨êQ§W\ZUŠÒ‡ŸÛC#ë±ßâÃ°áÏquØFb¨>c®sdséfH*¶ºHˆvŞ\nÁP)™$bÅ¦ÄUòŸE¡Õ©ÚÙ?8ªä.=x­ù»\0Ø³Â?,RÓ\"vµÜ,s\00ª °8ÙHá7U¨ÃšÆ¶Ş«u?å\njáû€\n„‚êpÆ×]Z]UĞuZ	º…<„(˜B.³VHØÉ¹áÙc¡ò8d`-Øı¯h¸pE(fÖŞö\nì=4(I@D.°@fF…‚i€U!ZÊùnPyŠñ\0|¾é.z©±r”çz*‰´§HG(¢x‘<)L ŒÙ9€9›”ÕAFvSMÕ>Z`f£¯)^^S›È±KB„\"øOŠ\";\"Ñ#m(Yrğ5‚/›’º~?LuÄÛ)-7*§¢¾Í·ËuBÅÀ7CF\\ÏuÊÇXW?]mtñÎFˆà.Å“[J­l¬íi#É_áÓ5M;¯èµš‹¾Qhn<æ¶ñÉõsAi÷h^_’2×^Ø<)æìE™A´¦1„öT—iø+à·RøPÊ¨Øtİ	®´ºŒÌÃíËboï»ßòç²ö§‡]	Óı£3IéêFÓ1Ö3Jÿ\0šZ‡‰îî}¸‚\"ñ÷´¬C¹® tÎc~cr£Û_P¦Çº¨H-órVS#)ª¾{í\'.W<øEñåÉÃU‰Û½n8\\u]H3¹¡ÛˆJO\'Õ˜ÆıCæÚ\ZvƒsnéÚÎ-1‡²×èÊöät)ÚÙƒ.n=Bú0ö¹Ş«ç–Ü_¸Á	npîT-’¢[^Åb’BJ¹h#˜s• J9NÂ”&QtØê-İ©Fê‚{«äå,\ZÓ…<9ER‰Êœ ,•@”À‚´ E¸mfW¾¡±Ç–÷!W>Ó×¦:*zŠ©ö9ÇkOuôyq1±—îşÛ¨JYeÙÊH\0å\n3Ã(**E°Uak{ß+’“İi#;JsıÒË®« sódÅ<-MÊ“\0‘­<†69²	\Z1è‚\\¦Ã²Ãñocí¸ÛÙ9®›4š‘ñ;nÂ‹>ç•ñ|:ü6áXm¹½å˜ÖšØıµRËæÇ+c¹QZs˜.mœjnlÕ8©Ô%×çé\r;]k§¦†¼mû%|÷NAké4i’\ZJäC»n¹z]|ßFá£İlŠ;›û,kxãº»¦t~ªéšŞŸ×)YSCYF¸\\´ö{}Ó{¿4<Hé-S¡zÓRémM¤ËG)k$\"ÂXÎY öslQÙ.|tŸ’8M6†¯P­†Š‚–jª©Ş#Š˜^ùx£$¯Zxø\\dF\r{ÄÈÃä°|Z+vO=ÃŸò7§²®¯âxç|×§á¡¤¤8)c¢h8£`kÑÃZ\0I)Û#‰pÑ)W1K4_#vƒa„û6V8rwşˆNâË9¸.;Z.ynÀ8Í•síßÚ{*røÍ…ì}\nÑ$e³osIk¿5•Û52\\dªívØGŞËsˆ—æõZrÏ¯[L™‘Ô2N÷_QSË‘·Ô$oñ_>­ŒÜC®²ËXçd›Êg+½3É1?½t³%ÕÈÎÖiœw‚/„øç$*°µ~a%IS†ÑÊÙ»l¦®Ábœ²…¡!˜åa÷<«@r½À”‚Á¸¿\n€UD…±8|/«®tsî*øšî¥Õn{FÒ{]nhså.6)õ2nÆ½öî©ÓİF-Iíİg–{•R&ÖwÌ}Rd”êäE¤=å%Îº¨š?&àîTË4Üú¥ºr1aúû$Pn®\"‰·A4…‚Ö@`¨©#‚ŸG¨´Ç¶FŒpU^v\'í•US6@HÀ\\tÏu\\Âê™CPè¥kÇb¢]s-õ‘óşE»YŒ±±[Êâ±\Z,Qµöå?b*I,n\n(çå,ğl_š\n6[:èÁö0Ï¸Ø!ó2¢$­9¸Â?5ÒT®cN”‡4…ÏÒ1ó€v›}?É?]_×9`B~6ü¤~«•Ôs~WLş&|Š,Òµ\r\ZZZ=f–A“Ïp×Ó8ÜŞÙ%§ {•ÿ\0°ì×Òx-àÇIøcDÙ( úÓÙ¶}Nv0ú¶1ÿ\0-¾Ã\'¹+±¶›N;\"H0¸å(Âww¿tË	|-òK³ÈY\'–şM»·Õ\\ò‹áU“öXíX¤”Ô\06íÑW1VúHoNv^öDbîst¿Uøâëª|¸@±î}W^àûœİoÄğçï¦Ú)K§a Xëé£Ê.àG6ì£ä>+à3=™ÀY$p7\n9]/}°¡‘V\'U¼(×z&4ø@rÒÆ´r¢ª\ZÇÂlsİN.SY?º?ˆ÷S‡¥:rO*Ä—ÉO¬J˜Ù‘‚S\"·IÅ²T˜¡s¶›Ÿ²\"ëS¹ÆÍù\\¯{náŸU|{G~b´i\ZZm¸.[Í>§’âø-óû¥>t¤;It…Ç	ª‘–\\ThÜÒnUf7‘şÊ™‹®xÑ‚¨v2±=âø(æ‰só{¡2[ …h2*€Eì.³ÕHçœ#<ğâê\\xHkÜ>‹Yé¾NcÜB…¤œ ı„İª&E\r¬à—-)s®%gxØS©İ|™¡xS¦wšË pä%\\‚´ŒÆ×n1±öLÜ€8ŞG	ñ¦ÅJætûÑeöºs›å6Ì³@²ãùÿ\0’inTl^…sk«å€2œÛ \ná)îÚ26ã{‡X!2ívç*NªGE3¶¼\0GpyY*¡Øw†Õ9à¬×U!,-\09(¨6Ü;§ã?×%„l¸m¬JTû^ÈDö¿ÇÎê?3‰mş‹…ûetóéË×±Fó.Z’¼lÚM‘×:|u]Àot²û¬ãKC½Bì\'…¨˜ÄÑ»&9ê*Ô%6²cHº,=5®(‹Š•&Ql€°}S£\"ÉS†ªŞG	ìĞ\n\'<)Q¿a¬`•¶<úª‰®6(Ì5\0ƒÁ\\yåi|³\0ç”²âR„d\0Üû¡š+¼Ø£|xFÑÈøËšGµÓuÈJôVY¤ØH8YßWcŒRi[Œµ@¬2Õà­9å—]ú‹ğ©³¯¢2mr-ÀÙ#&XÚNRü†ØÛ)Ê›å–•EÛyÊeè.¼œ^JV»²Êús¸ÂÊU^Mø@ö]£²SéAik›²\'Bòâ«4àÛ‘k.6JW€º8ïc—¾2øŞ…-Ñ8r´•&Ûd¢(bÓÊTç·;¤Ÿ¾Ëê4ÉrNZ¸şWÅ\\Ü3_”ö¼…Ë²&µÜSË•ÜöOZ\0º	0,R7ÔÚŞ—ÓÚ=F¯¬VGEALİÒÏ%ìÑ{p3É]5¯ş%<4£‘Ì¦Ôk«íÿ\0ƒHàşë-¸ç|Ö]õÔÿ\0º…‡¨H{[şë˜ğ‹ñQ×}{KÓnÑ¾*ˆ¥y‘Ï%]œ¢u]Ú÷pN\n¨[åÌ8A9?ö{BÏ$¤‹_\nd]¬’°ŞËªˆ´’ŞœÖ=ÆKê2B\nÕŸ§#A)ÀÜµºÖ¸õY_m\'˜«iõL\r¢ùZXÏ•M_0mU’T¨Æ4øÚ\ZĞTÚrEíl&5¸áJ—`aÑµ\0vÇ(K¾`3ZOdm÷	\ZœáóBÇ(ûrˆUÄL¿1ÊØØ	hÇª«S!†–\r¤n$ö+1ÖG4uÎz:6¹¹µŠTŸ3îÛİ2rÌÇ’d2ÔnÃ×Rğëß•‚gu§,º¬2¬nyî·æ0ê¨>ÅjàŸdu{2M¤‚µö9P¥¹ÃÑbù	€Ê.rœ+d`…æÜ¡‘€¶Ä.}jnÇm<vL•­&íNûŒ³Â×…‚Ja{YiÍgÔ\"Jf^ÖH}JÒtÊñ)\'O³‹­›Y!ô®iá\\é—\\b\nwÂ6BæÒœ×)¦’\rˆ__¥4\n`qr¹~goÂäZÒtÈœA\\î“K7©m¹HÏs¬ËBÉ%A-6æèZéÿ\0ÅÍ`‡À½mÖ³¤|ıo ÿ\0¢ğ„æëN\\ıÿ\0±$Ü®Üü\"ÿ\0ß¦@¼ \\óû*Ç5î·Æ6e\0e€Nƒ›²(\"y>‡„º¶+™©;èİòô\\]U;vœ#š]GQp,²ùgrè•Ícm7#uìtÓŸJV9AV–(­y>8Ë‡	3Z7İLªo»²V†;µÑD9¯\rmÊ‰i;BœÕkH · iì‘‹aP›$a.)2¹Ş`±Âp«M4®ÊÑ,í±Ê›ó.nT ÷z£Ğö©)ÍÉ<e_+\Zğeé¦Fîn\"üÙ…¼Ê­Ù\"íc³Ê¨ŠgkG’¶ç#*¤+Y¥7CJÓ–]1¾\'8¥Ï\0k-e¤¬ñ³<¨æºÖWíšb’ã!^ğO\nqzÃ„èÉ€üd%›\'\nß#(˜}h@Z8\\®‹\n{UÄi]C>\\,n`=•r]BßNNl…”×u¬«Sõ=´€‹©Ô‘bû®„P7³B‡Oo Oî>Šea¸œÓ	c\08SİØ¿er¬x#)‘¸°od„½ÅÎå#Ñ=Ä‹³í\0İ8UÑ¿y„>\n=€ØÍ©Ó3ëmîÿ\0eáy2n®9úöKá¸‚3‹®W¦ují\\£Õ´Ú‡ÓÕÒÈ$ŠFœ´ÿ\0Ó²©ré?E|8êXº» ôn£ˆüu+_#îH>W·ìàW:âO\0ªÌ«µ¢–!pã“n=‹Y¶YÛå\\Ï{›¶Äİg¨hspœ‚ZpsdŸ†møZN™^Wå˜øá1¦âöOØ‚\r¹FØ®FRÓúéìˆ\nÛGƒÊ¯†œÇ\'Q€¸\rDlª_ÂÚ»	kƒEî“XòµÆrˆN7Xœn°ÏºXzlÿ\0›•ŠhÜĞ£¨¾kDŸ’áfq\0¨Š¡½Ê›ª!²èĞ{å#*ä:À-tò\0Ì€\nTâ>oÚE$x}Š@MÀÉBçXrƒ*b^n\0dt_1¿eR¦ÀÔS·Ë½îmÂÀøìmÀUÍEƒd#nJ˜,åRùMçÃ3ØÖ´ß•Š ákÖ#mÆùQ­kŸe£#6†r…ÜX$¬SIî´DxEO}±¥ß5ğ‰à¬ÑNÑ\'‡Ñ¸ú¥œ›®hèª\"êdÈº@M¢Ü*\rmĞBáL&ùFÁ”¥:1·…*‘¡!:9,¦ÅJ=÷P<±ZhK‘Ù½Ñ!WŸ?íğ·J†ÿ\0ŞëşQHWŠßNUÆ{¡ßTMpÍ$s`\0¹%&½ÁøGƒU¦ğvµ8$€:ºwÓ2Fíw”væİ®íË»iÚÑÆO*º¾\ZsìÑµ·7Yƒï&NEQÈ\ZÂY±	ÀKğ8J *ˆª\0¨2Ç	ébò;#cIºFÚv\rƒ“ê¹\Zzv°‡²êµæ49Ñ°›“…Àë»EeÛÁh¿Õ±òzq’IaÊ_ŸÎWF9ô¯<ƒÊÑƒnâäXR›…h§”µã6>Š,\\®V	ÉeŠ§»+,kªÜ«w¢¯°Ê\'p‘ê›3|£2|¼£Jt¦ùQ•a<N™I½‰QóÛ	b¾ÁdÃ‚S­p±F	Y§—°áf¶óóâjİ `9Xª&½Õs\nÖ	¤¹Y&pÚl¶Œ:cy°Â&^×Z\"\Z÷B\\Jİ’Td–7%<%K1&É‘JF8E…/‘ù—<¨‘×ÔÈ.€4®xİ-„($º«¦5DT;‚1+İuxÑrœÖ%U! )PšöèÄ£²0j0¨J–¯xõBéGªxZóÿ\0ãV‹PÕzC§¨ôÚ\nªÙ¥#Ë)át„®@Õy³Nğ›ÄMDƒIjliàË–?ù#d¬z¾_M§~<A© ÏGMJøäÜ’í¯|wJõú¯S\nZñğÛ ŒÇ†I½§v{Ø÷D–‰]ı#‰Š667 XÉYMò«¦œ3:g\\¥‰st`½ÉÈ–†µ¡¹*j§’È@Ö§w)„\rùmeE YMªxÅí·*#KìĞ-ÊÕO+\\Ğ;…i=±M!evİàÜçÙq:³É’µâygß§,†Ø+;¤]9íSd×ºa”ÙR“¼÷[ •×º›ÍrÔò’Ñ~S‹ÊÂÇ@KıĞù„`Y—Cç[¶€·ºùiÏ¢¶LáìPÉ|¨”o(ÚàñÎR\n8(ØsatSŠ’Ö±Y&˜4X\"\nÅ4Şë,²µ‘•¬Ï$¤Jí¡\\gHqİt!ö+Fˆ?\n‹Ğz\rş¨^òpŞS…hMÁ»“$İÂ-•T}±U²ë•Ô§FGd¢Û]8›pJs¬ª\"øë«T‘³(‡ªUPm ešTâµAÆã)}¸7(Á¡còuˆ±@‹2e”€‰‡Í\'º8şsÊ~Š]‰iÁ!)î÷%8T‚I8BâA²¨Íª(AÛÜ¹i’\\m;æ¶ædfİ¤Ù&6—\n©é7ÛHavLßae+\0]•»£‰Ï$a,;æJ\rÁ[éåk±SÔW5$œ+€¿õUxláí7$eq5Rù—%kÄğÏ»åÆÌë,²;+£—7T,}8Md£ºv§Æòü\0·Â\Z}V}4çËtRZÂëSdd¬loÍB}ÒÜë%¨?r¸œ#L\r.İ{Y1Ò²Å¸öE8Ç4Ä:À€ó…¹º¬NùQ’é‘HæR°å<Kub`â´™¦¸åcšU\\ÄõY^or•Õ[2¥u°³>Å\\E%ä4T¦¸“•qˆbèëœ (ºøÈ)ÄÚ†`îJ‚@\nx5fUÁ±Øş]Ê\"Z¸]Ä½Ë<„«…i%%Äœ-#ªšXG#Ú¬óe*mÕlÎx`aåXiKOå’T•¥¡\Z\n7I{ÈUõB×­0—7#ŸTéqì3?ç¹+;ŸèaõTÇÜ£Ø\\nyNøO³â{˜Ë5Qkù¿*ZKpËnhú¦6[|6®ynÆåÁ!Æï<”AVª&° A–ñœ$àFBÕ@Nâ\ríduèùöÜ,F2¥šÁ¹æÁdÑÀj/gpJâç”Êêâxr÷X§–à¬‘oÌsõĞZâx(ØlrUTÊÕ»M–è¦«£n+K&ã+LSÜågciOd¸W!Ü1…—º[Yk!Şo¹4êšÓ’­µX9GÔçXÍ;Á7¶UDÇ»€«ÔOº×1òLÄ5Dº¯B‰ø7V_tX4§¹\"K’ª\"R\Zl”]`J¨ŠÌ÷nrY9WKyå$¸@Uhìr€Él\'ª ‚¨‡Èc­t¢ı£*ç” yì¢xZí’“/æÌNîRäî®&³¿”iUµ= \\)§xBîRŠyVÏÌ‘˜ÔMå%OFµÿ\0 1»”™{-#½©ãû².J“²ÉÂ£gtáÀSUÈ™ÊqhRÒ¦7ò¤ %Iî‚˜Ş›ÊWÑÁÊ“İßD€OäGMıáGàŒÿ\0u–±ÎŞï˜şªgµßN°Ç+‹©&ë¯‡ÈÇ\"ÌõÑİÏÊ¯¸Jœôlk\\?”,úkËTiĞr³­yng0wYÖ\'„\'ò”…e©üßd“…q¢z|$¥}/Ÿg’s’³ïTEUµG*\"œ–™3Ëù’%UÓ3¿1Bõhgq7åS»*fS» îBQå2>>ÉÒCİc›ó#’¢oåQQ?ÿÙ');

-- 2022-08-08 09:10:23
