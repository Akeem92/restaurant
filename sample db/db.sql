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
(1,	'����\0JFIF\0,,\0\0��\0C\0	\Z!\Z\"$\"$��\0C��\0�X!\0��\0\0\0\0\0\0\0\0\0\0\0\0\0\0	��\0C\0	\0\0!1AQa\"q�2�#Bb��3Rr��$C�Scs����4���\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\0%\0\0\0\0\0\0\0!1A\"2QaBRq��\0\0\0?\0��#��w����Ő��IIQ���U����aF�n�\ri�K��H�ƒ�F��+*Tt\\����Y@�<�TKV\\,�V�/>���`����ƥN,�JXW�b�\Z�R�Ҭ�����艺T��4�r\0U�T2K�rFS�R��\'\n�+�W�7UK2/q!V\"ҜJ�D�2�J�;\"R��Fe%�\n�3��8*!-�Ä<�95H��q�[��������\\\"S�ѱ��Q��c�PZa���7D\Zc|&vE8|N�Lk��+to�5���Yֱ����6�Z�T��B�(��߄�\'*�}SHQ�f׺�r����D��\"	 ���U]2F���H�yK%8A� ��M�cF.�QNnp��I@���0�$�	/)�Y*8YV���(��������\'�Q�wRP���e�F{+�,�7<$�*\"�^EB^}�\\Bk�8�%�#����*�ܢ����p�ʜg���\nj�r�\rЁ|�V&�P�ܦT���v2�T1��N�����r���pS�\'c��k\Z!n�C~�kH��)��p�Q��S!�c��{[��d��AI\"�K�(�\Z� ��D8]@V���ҜS�T(�PP����J��Paq���X($���.�!�D*�0�����\\������Ґ.eҞ�}�`,C���u��\\�\'+4��d�k,�IsU�af�����=%�5B�R�R��9��\0���l\n6��F2K��.��$��[	۔��G��(�������l8R9,R?֨��Ol�v8QcNk\\Rc�j�R\Z�����cr.�Ќ!� W|�kZG�1��#���\Z7e@�T��K��T� ��J\Z��` +��; �U�	C{�k�DcZ,��#œ�@Yr[�	7BNPM��S �S~}уWpR�H�%�VX-�i�%�p^ʥ/�q����8W�ͱ	�d)�bY����VY\0��+�0�T2J��]\\T!ऽR�zS��\0�*j�TH>�����V�!�����lu�Z�A�9@�_)C�aFӜ 	��]�ѹh�OU6+���[$������@.m�Za?*��2���$#�a#��(\0�d�)��N&�- �YG�����&Zc�+$kS�\Z�@Ka\0 \0��E���A���P�	7@VU ��I���L�*TЄ��ڗl۲d��P� ��K����K�&����:gI~��V6���\rm�\\�xk\Z2�@�TYo�R�xŬV���^�����eԪ���z�`6�]rzO�3>I�h2�?<�ry�o�no��ϖ����k��}WN֨�f�WL\'��ЎA�+K���f��^ԇ�Z�OjQj��KpH�n\n)7��+W��$K��+@\"�J�]��)��aF\rM��s�@5�Mk�h��+m3�V}5�#k-L�YV��U�j������A����p�`�PH�0�,_�mvS({M\nU\n��Q(\n%	�0r���U��	TJ\0n�LE�H�k�!E\nd�.�F��lPAr��avP�$�t��S�_�֑wLIRca���s�tZď��Sc���ƍI+�&�Os�Z��?asu��~ |+��&4�o:fݿf�?u�}H����;��u\r��WZ驪����l֖�p\0�#��F��d����5�7\\[l̬������\\�\0�V*J�*���*�*��9����K�]uN���OjS�j�pJ{RQN\n(��T�CW�y\n=�H;�Z �<�C%\n�\0��鐁�MaA��wFۃ�*�Q���ZilTV�����u�����(�IuD�*�]WK�ӅLD�$\0\n���`�l,�$b[�@*�TP�$a2\n��	N(P}T�a.�#�P��U���@B��_ �eV�d���#S���(��-2������v�����u\\�)��J���2��3s��,Ѻ\'4�4��ӣ��Ds��\ro�ۚgX�F�GGuU����j���\0��Zn~�#�w��s2k��^�Ժ�Q-�����\'������k��ے��J���:->�<B��{��J��9�\0�Ó^�J�d%�$�\\S���c ��U�\Z_\n��L#i�\0��T.�@@⍮H�aObF|d_	��*U\Z\"�tf��\n+N[ �i���e[r��qtc�+D$�*�@Pw�����]X)�D\r��X�^��Fn�xRa*�`���BJeUuW�\0U�\n)t�Je��i\Z*���aD*!\Zd\'����*��H�Z�D�ꤑ������ൟ�>��F�?���x�`m6�+X�Ay��Wl\'.\'�7^ݟ�e2�~ֵ�[.��s��_�6TJ�h�x�i*H̖呃˽�\\\'�6�g��3+Һ^�C�����m3)�am���\02Ory$䢕�z���c��;֊-�n�*d�E*}�d&ײ�kQ�ru���]hJ� B�eC�m(0���!�3d柙E\\ha#iSW���\'����.,�1ۚ��eK�J��K�T;�yD�a2Yv	\Z\\�b�#ci|�e���[��C�I(E`S�ʚ���(Jp���\n��;�H!C�a�\"�\Z�JA�TK��R�H�)�J�YQ\r%4�5�M.{��`=�$��\'Nu�W�gR��WK���n�\'u$�}@�Z�o�	���u�x��z��=�*��g�\\����}u��/R�8\Z��~���]$ţ��?���?\r�@!ڗQ�H{����b��_��\0���Y����<�=2F�JZ���{TT����\0��( ��:jhc��q�5�h�\00ێ$�u��ɀ�˛�!k$��3ە��^8a%��;Fxî\r_JZK�Q�c�G#\r�d���yX�r��x�	@+A���%H����T�}�Nk�UpƼ\'�K(�r�G/����;\Z�M2��IT�J�z�N��[&����>3u5f�Q��it��͏s7JZ\r�=�>�n����z��+�MWRjR��[1`��W_W#�����w5�\0����AW�j�\Z�sCy�T��k�)6^��w���>����\n�eV�����U�Kj�S�)��[�Oa�ʊ����@[�*�L�������aUk��,�H)@���<��\n��(�\'	\r�$jq�Y)�	(	!��2Y$�I����@d��ॆ��yg��a��+��� W	�A~w�\\��	/N��;=� �U���,��)���_�e�]�I{KM��Im*�+h�A\r��L`�*\rm�-���<�4�H���M���I��lu\ZsL�}\nʖ+Tt{��J�itښ�!3�ns#�@�xW����P��B\nPF�O�7x����%�q�۬���y�����Ҏ�����v��qp_䭿�?|��a��o�1�-$:� ����>x�7DulRVJ��5yU��c��v��.�z��������0:�d�H�#{C����.>�&\0Bى�&���*�y	\na��%��TBa,��,U�!\0$YU�	d6��T��� �J�WO	R�@U����C¯t\\9Y���¬�qkab�-9eY��L�d��$���B�,�5R�4�E*��{�喣�V\\���b����Fi(ݖ�e������sr�qVҘҊ�-0ۂ��8�HS\rW���06��>7{�N\ZÕ��QW���ꍠʕÚ�\r��FX�W��69^E�U�C�w�ٯP�F��\\���?3~�?���lW��!����-�\\���6\\���6����x{���Z�JOӕ̞G�6�j��Xa\'�q���{�>˼�%�L���p��ָ��M8u��R�P��		G��HЬ�K �-����%0�EEK�!TJ\0IUt�D�))�*�(\0q<%�9)�J�b�J�{\0��]8�?S�u6H�6�\n����<��mp6 �\'8+�R2�O�=��4�Wdb�����lJ^��e�eK���	i*�(��!�Ǆɕ��!�7W	M�:0�\r1���P\rc�0��JVˢ]\Z1D+h(є��K��E����4�M\\���Fڋ��N+@$�+���(�ӣ��~�k|���_ɔe��y�%l9r�\r�h�zV�U�j0:\Z�Y]Ѹ~W4خ=�N��is���.O�q�]��a�/�}m�d�i�O�\'�\0���m��O��_����Zʍu���M�,��Ӄ�A�}��m���Q�|��w%%$tt�RSF,�`�1����,������{\\.B>Ϧ�J)R�� X�5 3�NRe�@yL*�B�܃s�ۺaT��.@Ud�.�\n��\n%\r�\nT�Qʅ WL(��|�)��{�_�R����h��]Yzj[���;����U/�,y[F�5=���mlԓ7�F�\\{��b���<h������O7�!�;�÷�a��y���zv�M-m3ji\'�x�.ױ����]��b�$j����EJ}��Z����\rFVn�#,.�Sc,��л-��BC�V����E\r,�:3�@0Y[p��\n�H��xP4�F�!s�PJkщJg(ć�	<%a�3��m$�*���;��+�z�}ՒQ9�V�6��᯿cl[���H��l���`t��n���Q8��_�\\���l\"��	����\n��[Xw�����:�\Z\0�hZ���[�U\0.�*Aq���NP[ł�&F{09�KsS ���HBPA*�`\'�)�*@Q>�I@U��Ka��Pk#	n�A�����_�;��\0��i����\0Ӳ����߮?Ҏ�sSӭ�,��d\\���n~��\"��R\Z���=�lT��<��\\�\0K��}�F觌I����4���f&��\\�H�5������1��u�&��P�9�1�~��`vJY��֑�^���\0̪[Bk3�0p8F����u�`����a�Q�{�*�\0(H09ظIs�Ӊ��.���dk>e�!�6����\\Y?6\n�Þ�q�ap�X��(Cآcr���6ܦ3��*7�����[��eZC[k\"�KD�)k���e2����H�J\r�Uk,!ʚ�إ9�N�Pd�Kr`%QL�U&H�\0J�\0R�h{��hA��<U�VtBjz�#��J���?�2���|��i	|�\'$���/���c�I�}��ObUj���\0��ܬD�l��1�w��+�|	�}v��t�\"�y�)k����.�\\/ŀ\'�s�_�K��I�\";.�\\�D��**�rWB�Y����HQ�HGe�Y���cr�֧D���H�\Zr��E8��a�P����\\��(�*��(Ó#c}��&0T�Da��kI	UE��̌<)�Jc�SW�(ݔ���Z�TNk���i)�u��)\\X(�RR�k�v� [�Bl��k��Y8��)�B�uD�\n�$�TKreK%Q*��<(��UdQT�.�Y��A.�V\ZH�#y��a��-O%�Ӈ�U\0pfx�Z~��\0�WI�`���\'�G��uv�#���\0w)Pt�T�Up\Z�__d��E	����8Y֟���T�x��Q;�\Z��3T���w�O��]�k�EMեi���p���bO�ǰ��|�vj��<Wn��S�]t1�Y�Q=M�o��*�jĞ���B@�e��, ��\'�\'\n��\" r��F\0,��\Z�ߔ֛)\\�^��8JpJp�p�*^ɐ�즵�JÕ�\'ai�m����N�8��p���SC�J��0򍏱IR�G\'��M%�J�+Tr�:�K=�vcH+��vR���Z\"��-[�,�yD�s�� �tH?8Krp�O8En�\n���£d�&�B	a_(15�PFn��yf�F�Z�Ҫ�\"���]M�uMn����M%eT�2�+�7C]ݤL.�tE�s�u��rT��\\�K�M�9��u&�E��[�k����.y�kA\'轭��5O�Z������@���M��%.&��L�Nb�-����PM%���e��p�pE����k��j��a [�t��(P���44�[e\n�܉��#J��vH� ���p�T�T$1�#�u��J硵��HH�0�	��UA��7!J��$-����Ԅ_<���Yt�(����B^�\0w�A�\n/T\\�V�[�a�~�u�|���-�\0Y%GG`��(�R���uD��(J�OdA��	7+\\pvQkN`�&.x@!9\nu_\\f���������F�9\Z�B\n�ߊ��ͪ�q6˟@�q�\0�ت�1s��.�E]����j3=�t�J�bi͏w;�o��b��Rd���2�MHL��(��˵����s`���= 0�[�@�ɒd@�\n�7SN�*[�\'�\r��c��YprJ-���(��j�TY~ɐZ�\"@M�Lk��P8�/�p���j��#U�A����SW)�7�k��Ei϶�l��Y֑w�BJ�?*��-V�e�ܦ�\0�)r��Uܠz�hH�k�/��T����#��SټvG���REk�)̲�M��b���,��\n��4���m�6�C����p	Y�Ӗ���8\0T��Z���!ZF}\"C���\n�Y���*\'�����D�1���\0t�Ȧ�6�1�H�|+��� �\'��4�\Z�dW�F� �F8���1�KP��!�\r�L\r�\Z |�������_*�*-Pq_���\n&<���7_�����%j�p��a�l,zo�H*��Bk���GZ�:Ӧ���CQ\0A�l ��_�c�.=�A�U+j[~.H����&�{\0I6�\'ۄh$��@QUtIua\0@&5��cle1��E6�F�T1�!E�y�1�4ciYʧ,ǋ$I�ҳ���Od��A(��\"t\r@!hKU�]�=���������R�Q�{���I�D�k4�]f{���Ҝ��T\"��*Ie��M|3\\�9w1\\��$F���@09HI&�YXH�dMH�i<\'36	S��7��+,�Q1��i�$DnIJ��p�\'��@.��쳾1|*��\"V�(�*���1��Z�����m;m����ǧG1��!��\Zx$���8a���K#�XƎK���J�m�o�!L#~��!�{����m�\\��3ry�x�]��\'\\�}G���l��O����f���S��~g:�\0�䜌ۅ.�]���vm���FU&��\0���Z��ئ�F��Z��z(��0���ƴv�2?jQ}Ӑ#�l�^�t}\Z.���PF�f��f�s�s�|��qZ~�G���[���WK(�sC {=�Z��6ʱ��P��t�{Zւ\\�\0$���a�K�����(*�a��Ϻ�=�@�=�(�7�􏍯�s�����JzV�}�u����Y=����50������k�����]�����ORUu#�j�M�N·����s��k�Dv�^9S�6�K��t�]���,�4���Q��4��(H\\�e���]�LiNbD{�C.%\0!n�\Z���F�n\0{&0�����Q9��\nTܢ)��L�\n�(�\0�)�!�-S�<��O��	Ng�q4;\0�F��6S�[�����>�r�!e�ZZ�,k�1�:�\Z\\qG��YY=�58Y����Z;��5��\0�?⳦��S��=r�Wsটuv�E�����\0�g5ߙ���p���\\�^U��0�$~}E��\n���u}AK4�;�a��$�ao��\\O��{)�?4�u,zx�#��PP�%���6��ܤp�0�-0FIQj�ldI�m�V��\rHإ�^�;粹k��\0[�C�gW��d���������e�\Z��_U���ڹZ,�8�ĞnOu�1����>�����*�bm,�\Z5[��i�lcpǛ�u��a��0UE=,u1H2F$k�i�	^p|}o�F�������4i^�-����|I��\0��.���(��&����%\\/n�kk�z&9���`s�&�{����v�1�ӷ|;O���?�Qn4�?�z�z��<\Z���:���� ����혈7����4�{ҖI]M����X�k���\0�\0�(�]�I:��n�J�BJ\0J&p@P@w(\n�����^����֔��D��{9�Τ�����G�c�\nt��F�����И���Hs\"·B>�ux��ȼ�dh�����M�M>�����7N\n����j��M�-r��^�J�S���Wd�1�7i�Z\"u���庚L-l7*ߐAKM\rL�1��<��d9s��\\���8��29�|R��F����m��E�#�#�Jt��ס�ꚭR�Օ\Z{��O�o�W�p����1a�J�+M�Ҩ\"���i�i\"�\nx�ߠ	I�z��j�S%m�0���l����	�\\� 7�M���8q��(��E�d<#B�exco|�>yK�*���d��t狺��Z��L���F�(Ǜ\0�\0�q��z�k˟��^��z��\rv��k�ΡWN�>Rcw�\n�}C��>:Z�j��#�\0-��k�%z����w����v��\Z�~�KG1k |���(~m����]{G�鮮�AC�V��)�>(�1��\0\0c�y�\0��=^��מx�	����sI�3�����įx�W��ڽm,0���W#���26n!���ԓ��2_}��Wud�7A��긤q��[�du�o��7�?��*?.����T񟁢qlG�r�m�Ysδ�����:f��3N�()�i#��@���q��+j�I=1u,J	BPj� ��8\'\n���`M.�K��������o$������U����HЂjz�Nm�6]��m�\r[�C���Uոv���\0WYg���?����=▝՝I��i5чD�]<�`\rkG�E�6u��8G=N���ϱ���QS\Z�w�{�gU(�M�g	�X ���hc�n��8QcIDւ���k[*j�=Db��e�b���s�\\0�[�Ig�R��TB���G{�G}�Ur66����^�E�$�I���X�)�]8$�4���8�@)R�r�ք�\r����A	Zr��)d;iKOs\Z�23�KU�:&�\rhSj�m���0e%�\\�=`�bou�I�2��]�*���Ѻ�)�tǤjO�ta���;Դ~C��{/%u�Cu\'Ij�Oִ�)��$nd�ՎpK��.9>�螩�&k�tR�q�*w���滫�<-�2��-B���F�樨$z6��.X|��ֽ�2�-:juTV5������\ZI���<7��j5Q����d�R�Kd���\'h��if�-\'V>�(�M�65��Y�h��a�j�j�V�B�n��`rA!		�KTF�j\rȹ�u䮱�%պ�R��G��j�sA7w\0����\0&���mp�qˊ��^��6�}��d:7U��f��٦�F&�ߘ8�~�}���k��Α����f�����.�>�2c.�;��}��?COS���D�6�[����u��]v9ﶘ��5��QL{���H�d��D=�5�j���Yh`r��f�I\"7�r��L��-��v*�W�^�x).���R�M����+l1nb��Ng��	��2�gn��Y����X|k��U���`n.,m3�M���8QU�9�~�5�9O���UC�E~�����A�Kt�ɹNB�q����x���{�=��:�$ܦr�,�Zf�)\r�^���_���msoD(!ED�� B�)5��u,���Q@hBZ�\n�PJ!D�ӽGY�=����E,�P�o漌�]�����(�O�HϏhok�o6\\��]���bW��e���7W��M�!{�ڧ݅�q��R��>�ȹ�m{	�\0\0�\Z\0p=�Z�/J�i�I�F�nTXF��L\nM�db���a��9J�\\\"������X\'۸H�q�!�%c��+�7�\\��_�}��)�W�\'<+��x­N�MkYEi϶�4X\"�m�$H�e8Up�u�;�O����(Z�ʾ3\Zl��\0\n��Bdʭ�O�q�DGtai���Jc���Tع|2�5��dʹh��rH�\ZK�t2B�YQ@R�A�T�S�T!2@F�-�e�#M�M��(�-�Ȁ*�d�!!\0$(�<��Eo��s��������\0��C[{\\����g��o!�`�8��y<Y`���Q��K��ßO\r?�\'�	�F��2 a���\\�\0[�\0oz>[��Y�Ml��xtr-Ȣ�>9}Jsd\'�����q���0�\r��ꍥ��P��yZ���]M��9�Õm������ߕb�9�s�[���4���7�V�\0�-�p0��7�fV���4����~^	(�V���h��E����{�X�eD��My����@�;�@V�a�@�n�:R{��K$�U�2^��J��[u{R	eD +j�P��[���� ؀��j楐n�X&�D��%-�Y�ۄ�YK (�D��\0u^_K��`�z��=����]�܄|��Yq�78�Ś�s`�[��㤪����C�QDC�g�\0w����z��(ii�����Clo\rh\0}���/9��\0����hk��\Z���5�Nc���V���=EI�ztN����n��4[���N೾�=&A�tnJ����p�C\\۬�o��;����W\"�O�Y	�\'�>���>��0��8�����)�g�@)��?�~��Gl*{lc\n��ҚFr��Y%a�	��)�4< �B�l���	�x�\ro�t-\'Q�L��!��r�f���\0���꜉��22X�$nk���nU��׷���%��i�-U��AE�쀛n��\Z�T؀�ˎ,@����j���T!��p�\0;n�j���o�2�ɬ�T\r?�S�R=����Յ�n_#Gԥ��cϥoii�������t�E�]C�R�\n\Z�Z)i*�v�7�rϧ�.9�\\i&y�G��O�3�E��P�p��s�����q��r�O�$������ҍ�RMc�\Z��9:7�M����+Ce;��\\�;[�]e�N\Z��Q|%�E+p�f�O�e,�g�A�#�S�_1���\r���FYu�&2���B8!E��N������I�;ads3e�5�P.���S�$Z��E�>?eMg�Rpư��� 6����B��()�|��]L���q�_>F�S��Wt�C�hn�P #�0�^\n�ae�|���-GR������k���?w���v�kԛ��Ժ�~�\09}I<�n��˻^��+��ujv�Z��S\0i<Q컱�\0���MpMb-��*���a���G�� -�aP�@P�E[6d����5�چ�GH�4�o�)�n{3KԴ�V��i�������ׁ��u��,�r�6�eA��@�,*�����A�F�W�u<�Th���BXP0%�Q05��k��wZ�F��i���#�m��`m�2���b��M��\\dp~�����.wq�:�c��c`dP�����&�rI��rI�:�\0UۄwL�Ҙ҂5�Mc�����\'^�,&�c��^��\Z8X�ӏo����6_�]*��I{X_�ɾ]�d%�������s�-eDI{��k�O�>�<�������\"`�m���NB\0Ye$�T*����YfU�P��Jx�E%� �p�++\'�D��k�B/T\\O�Է�UL�SӾy�s�{�?�*���7W�\Z4���S�IC�#���A�e=�㻭T\Z�E3��@\\�Z��y/���s�����\'��{+�etu1;s\\?���G��(�u%4�FVǨ�KI�\0����w�+ڧZ j-�� �\Z-��RV(�	b�l�jڎ��S��R���!���1��Ny�V�5׽G�wBi!ͧ���%�I�����_�E��G��t�m���_������Onn�\0��\0�����}{��\n����7˂�7�m��ͩV�!}M�q��ğ�깺��u�B�MCD�en�YWAP܉ yi�Q�p���hj��?��!�\r�2�?��}[�d�U������t���VP�CSM(��<9��-\"2O\n^���~I!O \0���[�K�z0[}�m@���\n�栶SJ�Q�A]���X]� �ū�	��FЂBsO��F�ΓT7떡s���eߥ���TSɵ�pȲ䤍����}�^+��1�Ԅ��T{.m��R�5 y�22�jZq#,ZC�����i�.E�`Ҟ�,c_L�H,�=�ZH�J�ܨ�eZ�.���8��u}F�IӧԵ*��(�n�f��kG���]E�u&����O]N\r�cvX}Ӗ��W��n6j5�Ze+��\Z�z8\0̓�����X�w_����Z���c��y��5�h�ߐ/k��>�q�]��mnR8\0�4�zL�E�V��d�׈|m�ZΒ�%��|�=���˩�q2�t���)�����{)ik��Z�x{�S:kZ��u�jԵ.�����}=¿��+�K^�����ћI<��T��I9w��]�����lV�Ed�x6��ǜ���c�BcF�>���5M(����䍇̦��������\0��u��:�E.�k����2������\0�\'^1���:���s���ND�n����K��\0(Ll&�@>���~��ި��;F�p��ZY~xe��_qc�E�o�=/�Ukۣj�E<�����\0ː�\0�u��M���>_����v�>��򜄷�&BJ	.�R�P9���&0���K�`�6��\nV[��!4&4&G5���M�k�;�l��agh��V�Q����Y�W��%ŏ��ȪA��#�?q��MP�}���v4n�8����ᐂ��H�hhpu���Q��޳L��;Y%}�w�n�I�K��&���j��B��z�I�]2\Z��嬭�qm%I���$�n.��\0�\'\nה<f�~��\r2y5��&��}=+�)�7Ǽ��\'}�_Нg�t^�jtmNZY��}�<�q��ca.���sq�z�UͪH��R�P�n�$������zc���Z~��u%#N��AU9/..�����]a�sf�������a1�*b�!Pa\'*t�_1�7FPu^�=D,{��29^�+�+�K�f�k#x�q0HG�o�BUS��nk�ʳ3X0.Tz\\���K�.{B�+uz�h4�)��;c�˞��s���=i�|�=�}=���OTW�ES��K&~��v���IG�����B�*thV-��(������S��d�aR2�|g��t�_i�F�Lb���SW�\0�����\0	�ӕZW�|W��Q����:��P\n�&W��)��{5�?���_�ѿp�eS����+���\0������O�ɳ`t��*���L]˛�4}{�E��Đ��3�VnJ�\r��oxW�P���M�Ě֐�5���\0���#�]�B�z+��{��ߎ�5T�����XO�����}T����?Ϳֹ���B�.���0^�M��� sUjq^YQ\Z1҅�l�7\nYL���&���C��\ZK�#cQ���㺋I��3�.R�+�YwU��!#@�J7|��~Ώ�����{%i�+N�7�O����豳[ːTұ��{.DH\0�;��/��Kn�eS ���RDq1�q�\\�\0D���;T��t�u\r>�:�i��7�m_M�Rf�&�H�׋����0����Y�c�M`��^��I�i�=��kz��*:8̒.��5���H\0w$/\'�]v��:�gRknTTY������셧ے{���g�z�P�ޭIm%�l1;{���\0=@��ψm~�=_-�>?���SH�\\s#�;��i������¦]�f�E%e�s�?�.�D�棩���.�zk�ADd�1�Gql$�&�Z���\\t��\\met`�\'����*~���Z�U��u5�-{H��\\`�e/e-���w���몘�]��&ྮfX�{�\0E�o\n�0�/4��@�V�5l�t����Yۭ9�\0����h�KP���\\��X&9��M\0vn�ր����˨X6+{\0m�3���.�z�H�>��׵��OEJ��<�ǳ\Z;��\0������^&�%j�jǾ�G�����߆��O?������ȫe�}�y,��*���\\ϓÝ�ԩ�Y�?�+K���?o;�/*�\0ʭ�T��nt\r��H����j��赕��?�};��Ñ�p��̶�{�^��^��=Q�u�,e�]�CR=�r�#��.�-������\0oib���k)�1�����e��&�(��-B[�w���Xj���kZ�tl��خ8SjE�E<�:GE�����	Z#���27��AHn,?}:>>[�����jl��u����h�i\0�,Z��6��KV��Ha��EK#;G&���\'Wү3��3�\"�ٴ?���d���b}|���>�r���{���G��\rr���t;�)$��Ϛ��������.|�w��ȬZ.U���%��Bs������*������\n�1�|\\�z����쨧�\'`�ݑ�E���9#����4���H��릞��EC�\\�0�����U��c������dmj�:������m)�}$�zE�������2X2��_�8^D��j���.\nj�\nF�LѺ)%=ŎZ�nO��ܞq�_<���\"��v�\'�f�&���[\r���Ar[͋�[��E�:��b�-=q��&�����~у���}���g*|]쀶��02���\'1�SU\'���Pu�;u�\n8��C\\č\'���?�mѴ��6ԫZC����~��Qo���KM\r4-��&E�֋\0�\\A�Q\"ٞ�E�n�%�R�����u$ay������*❣��f�_�s�q�%�s~V�)�cNn�1�\'\n�������/��5>����G��J�q%D��\'�� �Zq�Y|�9y�pOqrE�f�a��4���5Â+���e��ǣ�\0�p�o�|��\0뛊V=���q�����/�Wm�p��F�\0L�K���/<F�:x*٦R�S��2z��%�\\����裮��o���u��v�K�4\Zr�z�\\��d��ӏ���|���v�KtHt�mn���4���H~�7*3}�������C;vV\Z}p�E�\0Ph[�$ \0���]0Y*&�H�*z�0@+\r@Z��$)̌��;�e&����}���8@8Z���,�_3k�����~S촸�����\\��u��5A�m�G5>�y�c��[�y���,����y�TTUV�����hh��$����{0�q�exk���X�\n���j$�I�^�H���Ԟ�\0�vGW�~�y�jjl������O����^�S	I���9���$��|�L��~�t���u7Ni�C�����@�b�[~Z}��>�r>H�U�W�����`v�S�\0�\'�\0R�_�˝JO����q��!�}A]ӽIC��yU�S	bq��A �T�r�?�~�xS��__��:֞�f�:�k����->ǐ{��Ǟ��G#G���x��i�-�Z�P����K[)�,M��;�X�ɿ��^k_\\�����5\rv��RPI[]9��#�ok4z����?��Ӿ]J:n���]ZwJ}�m7Sd����z��\01⯄=C�s�a�*ik��7�5U0v۶�c��� ��ßG�4�	�/��w��\\`�i�\03���]�g�Ǿ\\��nU56�{�F,��n�Kh�c[��?U����C\\�{�J�,��	g���Oc�\0��DFFT}�a^K\"a�kX����fJә����X��fg��,��/����[s�㟩l֝75Z~P���a���������ܬ�`�+��������X�uZ)�ӵ\Z��tm.�i?+I��ac鋫�c�s����s$8\"�`p��)���2��K�>6��%�CSSI��5�F�y\0�翢�W��U�4���G�O��~���aѺ�^u�O�P:Y�x3<�@��q�����>��t�q���~�\0��|��\'�P*�ByA�/d����0>�-�\"�Q2t�j��e��m(�F1��e��6�g\nm(k#��<)��KM��H�Ņ�W�^\'��O�k@C����9k������ݬ�G��]M6���-����EQ]#/\r3��\ri�����.�Z�<���ڎ���jz�l���.�i�\\��rWp�����SC���A�P~	�C�J���:��V8Ϧ6k|��q���hE����W*\0�N��a�+�{��E��M�5���Ek���\ZF�D`�7D�]�2�sOp���x9�S.�>�[�[��j�5t���V��V�����\0�{��~�ӼB��QM�S�e(u�C�,�=��zAZ�<�\0����ɀG��rWRt���P�ïiTڔT�b��1�\"��{lea�Y&a�n��iP|>���PB?��B؛�4�3�(1�~7�<}}�ޣ�����߈�y�ʆe�ge��ˮ�]\'O�=_QW�:\Z�bb�5�D����W/�/?�]��t��;*�YKw*�Tk,�w)Z$l�r�:2-e��$[(w�>��Z�(��Ц��9��(A#�*`��Hj�H�����8�H��9�\\2F�\r\r?�T�������Y�\r2\'��&/�碌1��g��*�g�[�\\�l�R��>	�X�,�=��p� �:��?�A�s�\Z�BO�i�y9�1��������2>n����n݆�\Zi��|���9lG\\��>��Ğ��j���\\�|�v8�9����ߊ}[]/���\n��z�|��ٟ����E�\'粜c�>\r�Q��\Z�{�*��j�WUTD�jk~S{4vn}y%WX�5�U5����F6Zh�@=7Gk��F�G�|;����4�/��P>P7K\'��rW�9�\'<����N)O8M%=�sd�0.�!T��s��P�&\0\\��<-U��.�G��k���eMbzc��%�SH���\\p��E�!��}2��YޚNOc6��lp�{)�9����O�i{���T��\Z�\Z1b�����u�gA�\ro��1[FO����˗��ўu�t��F���n�oT�� Y��.�U�j4��ς��V��9c�n���C��\0X�x���ԐmeD��\"i��v���|�b�\n�����\\,pySkI#�A�߈=&��R]�MS���&��8+�^0�EԞ��ӺJ�~�6�*q��.�i�jg�ە�xA��R���jU�9_�F�=�6Hj��9�Î�y^��8�+�^�C5���t�᎞Z��.��5���\0\r�d�vU:��x�k��[wH�JԌ��Wv\'��;�.9[n���Ӵ�f՛a\'�M�\r`kZ\Z\0\0��|;NB�,y8U*lg{\n�IW�>8V�j|�)ꯘ䡈5���&��Q@�I����a�jw>Lb�����9�퐶��\\��O�D\r�c��I�˫�Z�2aO��b�(�ak��?o\0���\"W=�\rhWN�bO�ĉ�[ͧDFxY�,,���\n}��+��9$�R(R��l�Q,��s���k�{��}���J6Sj`le�QM�#�Dv9M��ҵ�)��\",��k=��Y�t����r,\'8�X�[||����A���,d�܅W\' Z(�.�\\֟\r�Q�_�5�Fv����Ҵ=u�\Z�LWmo��zyH��;s��y�%s�6:?�ھ�[��u�V�N�z�9��;�=��~�`!N�A�����`Q����T��\\�t�P�Q�j:YC\ZK`����\0��������K���dʈ���9�Y���q2:G>���~�zޟ��>�Q��|�U���ۃ�A�Gb2u��J��(��.��Q�W\Z�U�҇��C#���ð��qu�Fb�>c�sds�fH*��H�v�\n�P)�$bŦĎU�E�����?8��.=x���\0س�?,R�\"v��,s\00� �8�H�7U�Úƶޫu?�\nj���\n���p��]Z]U�uZ	���<�(�B.�VH�ɹ��c���8d`-���h�pE(f���\n�=4(I@D.�@f�F��i�U!Z��nPy��\0|��.z��r��z*���HG(�x�<)L ��9�9���AFvSM�>Z`f��)^^S�ȱKB�\"�O�\";\"�#m(Yr�5�/���~?Lu��)-7*���ͷ�uB��7CF\\�u��XW?]mt��F��.œ[J�l��i#��_��5M;������Qhn<����sAi�h^_�2�^�<)��E�A��1��T�i�+�R��Pʨ�t�	��������bo�������]	���3I��F�1�3J�\0�Z����}��\"�����C�� t�c~cr��_P�Ǻ�H-�rVS#)��{�\'.W<�E����U��۽n8\\u]H3��ۈJO\'՘��C��\Zv�sn���-1��������t)�ك.n=B�0���ޫ��_��	np�T-��[^�b�BJ�h#�s��J9N&Qt��-��F�{����,\Z��<9ER�ʜ�,�@�����E�mfW���ǖ�!W>�צ:*z���9�kOu�yq1����ۨJ�Ye��H\0�\n3��(**E�Uak��{�+���i#;Js��ˮ��s�d�<-Mʓ\0��<��69�	\Z1�\\�ò��oc���9��4���;n>��|:�6�Xm��������R���+c�QZs�.m��jnl�8�Ԑ%���\r;]k����m�%|�NAk�4i��\ZJ�C��n�z�]|�F���l�;��,kx㺻�t~��ޟ�)YSCY�F�\\��{}Ӑ{�4<H�-S�z�R�mM��G)k$\"�X�Y �slQ�.|t��8M6��P�����j���#��^�x�$�Zx�\\dF\r{����|Z+v�O=ß�7�����x�|קᡤ��8)c��h�8�`k��Z\0�I)�#�p�)W�1K4_#�v�a��6V8rw��N��9�.;Z.yn�8͕s���{*r�ͅ�}\n�$e�osIk�5��52\\d���v�G�ˏs����Zrϯ[L���2N�_QSˑ�Ԟ$o�_>���C���X�d��g+�3�1?�t�%����i�w�/���$*��~a%IS�����l���b����!��a�<�@r�������\n�UD��8�|/���ts�*������n{F�{]nhs�.6)�2�nƽ����F-�I��g�{�R&�w�}Rd����E�=�%κ��?&��T�4����r1a��$Pn�\"��A4���@`��#��G��ǶF�pU^v\'�US6@H�\\t�u\\��CP�k�b�]s-����E�Y���[��\Z,Q���?b*I,n\n(��,�l_�\n6[:���0ϸ�!�2�$�9��?5�T�cN��4���1�v�}?�?]_�9`B~6��~���s~WL�&|�,ҵ\r\ZZZ=f�A��p��8���%� {���\0����x-��I�cD�( ��ٶ}Nv0��1�\0-��\'�+����N;\"H0��(�ww�t�	|-�K��Y\'��M���\\��U��X�X���\06��W1V�HoNv^�Db�st�U���|�@��}W^����o�����)K�a X���.�G6��>+�3=��Y$p7\n9]/}���V\'U�(�z&4�@r�ƴr��\Z��ls��N.SY?�?��S��:rO*ė�O�J�ّ�S\"�IŲT��s����\"�S����\\�{n�U|{G~b�i\ZZm�.[�>����-���>t�;It��	����\\Th��nUf7��ʙ��xт�v2�=��(��s�{�2[ �h2*�E�.��H�#<����\\xHk�>�Y鍾Nc�B������ݪ&E\r���-)s�%gx�S��|��xS�w�� p�%\\�����n1��L܀8�G	����J�t��e��s��6̳@�����\0�inTl^�sk��2�� \n�)��26�{�X!2�v�*N�GE3��\0GpyY*��w���9��U!,-\09(�6�;��?�%�l�m�JT�^�D�����?3�m����et���ױF�.Z��l�M��:|u�]�ot����KC�B�\'������&9�*�%6�cH�,=5�(���&Ql��}S�\"�S���G	���\n\'<)Q�a�`��<����6(�5\0��\\�y�i|��\0甲�R�d\0����+�أ|�xF���˚G��u�J�VY��H8Y�Wc�Ri[��@�2��9�]�����2mr-��#&X�NR����)ʛ喕E�y�e�.��^JV����s���U^M�@�]��S�Aik��\'B��4�ۑk.6JW��8�c��2��ޅ-�8r���&�d�(b��T�;������4�rNZ��W�\\�3_����ˎ�&���S����OZ\0�	0,R7��ޗ��=F��VGEAL���%��{p3�]5��%<4��̦�k���\0�H���-��|�]�����\0����H{[�����Q�}{K�nѾ*��y����%]��u]��pN\n�[��8A9?�{B�$��_\nd]����ˍ�������=�K��2B\n՟�#A)�ܵ�ָ�Y_m\'��i�L\r��ZXϕM_0mU�T��4��\Z�T�rE�l&5��J�`a�ѵ\0v�(K�`3ZOdm��	\Z���B�(�r�U��L�1���	hǪ�S!��\r�n$�+�1��G4u�z:6�����T�3���2r���d2�n��R��ߕ�gu�,��2�ny��0�>�j���du{2M����9P����b�	��.r�+d`��ܡ����.}jn�m<vL��&�N�������Ja{Yi�g�\"Jf^�H}J�t��)\'O����Y!��i�\\�\\b\nw�6B�Ҝ�)��\r�__�4\n`qr�~go��Z�tȜA\\�K7�m�H�s�ˎB�%A-6��Z��\0��`���mֳ�|�o �\0�����N\\��\0�$ܮ��\"�\0ߦ�@� \\��*��5��6e\0e�N���(\"y>����+��;����\\]U;v�#�]GQp,��gr��cm7#u�tӟJV9AV�(�y>8ˇ	3Z7�L�o��V�;��D9�\rm��i;B��kH ���i쑋aP�$a.)2��`��p�M4����,�ʛ�.nT� �z����)��<e_+\Z��e�F�n\"��������\"�c�ʨ�gkG���#*�+Y�7CJӖ]1�\'8��\0k-e���<���W��b��!^�O\nqz�Ä�����d%�\'�\n�#(�}h@Z8\\��\n{U�i]C>\\,n`=�r]B�NNl���u��S�=������b���P7�B�Oo�O�>�ea���	c\08S�ؿ�er�x#)���od�����#�=ċ��\0�8Uѿ�y�>\n=��ͩ�3�m��\0e�y2n�9��KḂ3��W�uj�\\�մڇ����$�F���\0Ӳ�r�?E|8�X����n���u+_#�H>W���W:�O\0�̫���!p�n=�Y�Y��\\�{����g�hsp��Zpsd��m�ZN�^W���1���O؂\r�FخFR����\n�G�ʎ����\'Q��\rDl��_�ڻ�	k�EX��r�N7X��n�ϺXzl�\0���h�У��kD���fq\0�������!���{�#*�:�-t�\0̀\nT�>o�E$x}�@M��B�Xr�*b^n\0dt_1�eR���S�˽�m����m�U�E�d#nJ�,�R�M��3�ִߕ���k�#m��Q�k�e�#6�r��X$�SI�DxEO}����5����N�\'�Ѹ�����h�\"�dȺ@M��*\rm�B�L&�F�����:1��*���!:9,��J=�P<�Z�hK�ٽ�!W�?��J��\0���QHW��NU�{��TMp��$s`\0�%&���G�U��v�8$�:�w�2F�w�v�ݮ�˻i���O*��\Zs�ѵ�7Y��&NEQ�\Z�Y�	�K�8J *��\0�2�	�b�;#cI�F�v\r���\Zzv�����49Ѱ�����Ee��h����zq�Ia�_��WF9��<����n��XR��h����6>�,\\�V	�e���+,k�ܫw�����\'p��3|�2|��Jt��Q�a<N�I��Q��	b��dÂS�p�F	Y����f����j� `9X�&��s\n�	��Y&p�l��:cy��&^�Z\"\Z�B\\JݒTd�7%<%K1&ɑJF8E�/���<�����.�4�x�-�($���5D�T;�1+�ux�r��%U!� )P����ģ�0j0�J��x�B�G�xZ��\0�V�P�zC����\n�َ�#�)�t��@�y�N��MD�Ijli���?�#d�z�_M�~<A� �GMJ�����|wJ���S\nZ��� �ǆI��v{��D��]�#���667�X�YM򫦜3:g\\��st`��������*j����@֍�w)�\r�meE�YM��x��*#K��-��O+\\�;��i=�M!ev�����q:�ɐ���ygߧ,��+;�]9�Sd׺a��R����[ �����r���~S����@K����`Y�C�[�����iϢ�L��P�|��o(����R\n8(�satS��ֱY&�4X\"\n�4��,������$�J�\\gHq�t!�+F�?\n��z\r��^�p�S�hM���$��-�T}�U��ԧFGd��]8�pJs��\"��T��(��UPm e�T�A��)�}�7(��c��u��@�2e�����\'�8�s�~�]�i�!)��%8T�I8B�A��ͪ(A���i�\\m;��df�ݤ�&6�\n��7�HavL�ae+�\0]�����$a,;�J\r�[��k��S�W5$�+����Uxl��7$eq5R��%k��ϻ����,�;+��7T,}�8Md��v����\0��\Z}V}4��tRZ��Sdd�lo�B}���%�?r��#L\r.�{Y1��Ÿ�E8�4�:��󅹺�N�Q��H�R��<Kub`ⴙ���c�U\\��Y^or��[2�u��>�\\E%�4T����q�b�� (���)�چ`�J�@\nx5fU����]�\"Z�]Ľ�<���i%%Ĝ-#��XG#ڬ�e*m�l�x`a�XiKO�T���\Z\n7I{�U�B��0�7#�T�q�3?�+;��a�T�ܣ�\\nyN�O��{��5Qk��*ZKp�nh��6[|6�yn���!��<�AV�&��A���$�FB�@N�\r�du����,F2������d��j/g�pJ�����xr�X��ଏ�o�s��Z�x(�lrUT���M����n+K&�+LS��gciOd�W!�1���[�Yk!�o�4��Ӓ��X9G��X�;�7�UDǻ���O��1�L��5D��B��7V_tX4��\"K��\"R\Zl�]`J����nrY9WKy�$�@Uh�r��l\'� ����c�t���*甠y�xZ풓/�̏N��R��&���iU�=�\\)�xB�R�yV�̑��M�%OF��\0� 1���{-#������.J���£gt��SUș�qhR��7� %I������W��ʓ��D�O�GM��G����\0u�������g��N���+��&믇��\"�����ʯ�J��lk\\?�,�k�Ti�r��yng0wY֐\'�\'�e���d��q�z|$�}/�g�s����TEU�G*\"���3���%U�3�1B�hgq7�S�*fS���BQ�2>>��C�c��#��o�QQ?��');

-- 2022-08-08 09:10:23
