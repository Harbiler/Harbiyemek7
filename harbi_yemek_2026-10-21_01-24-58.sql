-- Harbi Yemek MySQL Backup
-- Generated: 2026-10-21 01:24:58
-- Database: harbi_yemek

SET FOREIGN_KEY_CHECKS=0;

DROP TABLE IF EXISTS `abouts`;
CREATE TABLE `abouts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `main_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `video_link` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `abouts` VALUES ('1','/uploads/media_68e591a29f60f.jpeg','PIZZERIA','Pizza','<p style="font-size: 1.0625rem; color: rgb(40, 48, 52); font-family: Roboto, "Helvetica Neue", Helvetica, Arial, sans-serif;"><span style="font-weight: bolder;">Sava?? zaman??nda ortaya ????kan bu m??kemmel lezzetin k??keni y??zy??llar ??ncesine dayan??yor. D??nya ??ap??nda ??ne ula??mas??, Krali??e Margherita\'n??n mozzarella peyniri, domates ve fesle??en ile s??slenen pizzay?? tatmas??yla ba??lam????.</span></p><p class="p-md" style="font-size: 1.125rem; color: rgb(40, 48, 52); font-family: Roboto, "Helvetica Neue", Helvetica, Arial, sans-serif;"><span style="font-weight: bolder;">"Kendinin en iyisi ol"</span>??<span style="font-weight: bolder;">mottosuyla hareket eden ekibimiz, bu d??nyaca ??nl?? enfes lezzeti en taze haliyle sizlerle bulu??turuyor!</span></p><p style="font-size: 1.0625rem; color: rgb(40, 48, 52); font-family: Roboto, "Helvetica Neue", Helvetica, Arial, sans-serif;"><span style="font-weight: bolder;">Tutkuyla olu??turdu??umuz pizzalar??m??z??n i??tah a????c?? fark??n?? sunuyoruz. Orijinal ??talyan k??klerinden ilham alan yeni tariflerle g??n??llere taht kurmay?? ama??l??yoruz. Bu uluslararas?? lezzetin yerli ??retim ??rne??i, t??m misafirlerimizden tam puan al??yor. Misafirlerimizin parmak ??s??rtan pizzalar??m??z??n tad??n?? keyifli bir ortamda ????kartabilmeleri i??in u??ra????yoruz. Farkl?? ve en iyisi olmak, en ??nemli ama??lar??m??zdan biri; t??m kalitemizle yola devam ediyoruz.</span></p><p style="font-size: 1.0625rem; color: rgb(40, 48, 52); font-family: Roboto, "Helvetica Neue", Helvetica, Arial, sans-serif;"><br></p>','https://keciciler.com/','2023-09-20 00:01:51','2025-10-07 22:27:54');
INSERT INTO `abouts` VALUES ('4','/uploads/media_672fd12e0c525.jpg','Ke??iciler Ticaret ve Paz Ltd ??ti.','Zahirecilik','<p>Firmam??z 10 y??l?? a??k??n s??redir Zahirecilik?? 50 y??l??n?? a??k??n s??redir Tar??m sekt??r??nde faaliyet g??stermektedir. Trakya b??lgesi K??rklareli ??li L??leburgaz il??esinde ??iftlikk??y\'de bulunan i??letmemiz Bu??day - Arpa?? - Ay??i??ek?? vb. tah??l ??r??nlerinin ??retimini ve ticareti yapmaktad??r..</p>','https://keciciler.com/','2024-11-05 16:56:15','2024-11-09 21:16:30');

DROP TABLE IF EXISTS `access_logs`;
CREATE TABLE `access_logs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `event` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `source` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'web',
  `url` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `access_logs_event_created_at_index` (`event`,`created_at`),
  KEY `access_logs_ip_created_at_index` (`ip`,`created_at`),
  KEY `access_logs_email_created_at_index` (`email`,`created_at`),
  KEY `access_logs_user_id_index` (`user_id`),
  CONSTRAINT `access_logs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `access_logs` VALUES ('1','37','restoran@harbi.test','Demo Restoran','restaurant','logout','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36 Edg/151.0.0.0','web','http://harbi-yemek.test:8081/logout','2026-08-15 22:17:28','2026-08-15 22:17:28');
INSERT INTO `access_logs` VALUES ('2','1','admin@gmail.com','Admin','admin','login_success','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36 Edg/151.0.0.0','web','http://harbi-yemek.test:8081/login','2026-08-15 22:17:41','2026-08-15 22:17:41');
INSERT INTO `access_logs` VALUES ('3','1','admin@gmail.com','Admin','admin','logout','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36 Edg/151.0.0.0','web','http://harbi-yemek.test:8081/logout','2026-08-15 22:18:47','2026-08-15 22:18:47');
INSERT INTO `access_logs` VALUES ('4','37','restoran@harbi.test','Demo Restoran','restaurant','login_success','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36 Edg/151.0.0.0','web','http://harbi-yemek.test:8081/login','2026-08-15 22:18:56','2026-08-15 22:18:56');
INSERT INTO `access_logs` VALUES ('5','37','restoran@harbi.test','Demo Restoran','restaurant','logout','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36 Edg/151.0.0.0','web','http://harbi-yemek.test:8081/logout','2026-08-15 23:09:49','2026-08-15 23:09:49');
INSERT INTO `access_logs` VALUES ('6','37','restoran@harbi.test','Demo Restoran','restaurant','login_success','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36 Edg/151.0.0.0','web','http://harbi-yemek.test:8081/login','2026-08-15 23:31:01','2026-08-15 23:31:01');
INSERT INTO `access_logs` VALUES ('7','37','restoran@harbi.test','Demo Restoran','restaurant','logout','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36 Edg/151.0.0.0','web','http://harbi-yemek.test:8081/logout','2026-08-15 23:33:41','2026-08-15 23:33:41');
INSERT INTO `access_logs` VALUES ('8','37','restoran@harbi.test','Demo Restoran','restaurant','login_success','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36 Edg/151.0.0.0','web','http://harbi-yemek.test:8081/login','2026-08-15 23:33:52','2026-08-15 23:33:52');
INSERT INTO `access_logs` VALUES ('9','38','erol@gmail.com','er','user','login_success','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36 Edg/151.0.0.0','web','http://harbi-yemek.test:8081/login','2026-08-16 20:23:15','2026-08-16 20:23:15');
INSERT INTO `access_logs` VALUES ('10','36','kurye@harbi.test','Demo Kurye','courier','login_success','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36 Edg/151.0.0.0','web','http://harbi-yemek.test:8081/login','2026-08-19 21:47:27','2026-08-19 21:47:27');
INSERT INTO `access_logs` VALUES ('11','36','kurye@harbi.test','Demo Kurye','courier','logout','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36 Edg/151.0.0.0','web','http://harbi-yemek.test:8081/logout','2026-08-19 22:18:19','2026-08-19 22:18:19');
INSERT INTO `access_logs` VALUES ('12','37','restoran@harbi.test','Demo Restoran','restaurant','login_success','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36 Edg/151.0.0.0','web','http://harbi-yemek.test:8081/login','2026-08-20 00:29:57','2026-08-20 00:29:57');
INSERT INTO `access_logs` VALUES ('13','37','restoran@harbi.test','Demo Restoran','restaurant','logout','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36 Edg/151.0.0.0','web','http://harbi-yemek.test:8081/logout','2026-08-20 00:30:36','2026-08-20 00:30:36');
INSERT INTO `access_logs` VALUES ('14','1','admin@gmail.com','Admin','admin','login_success','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36 Edg/151.0.0.0','web','http://harbi-yemek.test:8081/login','2026-08-20 00:30:50','2026-08-20 00:30:50');
INSERT INTO `access_logs` VALUES ('15','1','admin@gmail.com','Admin','admin','logout','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36 Edg/151.0.0.0','web','http://harbi-yemek.test:8081/logout','2026-08-20 00:39:15','2026-08-20 00:39:15');
INSERT INTO `access_logs` VALUES ('16',NULL,NULL,NULL,NULL,'logout','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36 Edg/151.0.0.0','web','http://harbi-yemek.test:8081/logout','2026-08-20 00:39:17','2026-08-20 00:39:17');
INSERT INTO `access_logs` VALUES ('17','36','kurye@harbi.test','Demo Kurye','courier','login_success','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36 Edg/151.0.0.0','web','http://harbi-yemek.test:8081/login','2026-08-27 03:09:12','2026-08-27 03:09:12');
INSERT INTO `access_logs` VALUES ('18','1','admin@gmail.com','Admin','admin','login_success','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/155.0.0.0 Safari/537.36 Edg/155.0.0.0','web','http://harbi-yemek.test:8081/login','2026-10-21 01:24:36','2026-10-21 01:24:36');

DROP TABLE IF EXISTS `addresses`;
CREATE TABLE `addresses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `delivery_area_id` bigint unsigned NOT NULL,
  `first_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `lat` decimal(10,7) DEFAULT NULL,
  `lng` decimal(10,7) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `addresses_user_id_foreign` (`user_id`),
  KEY `addresses_delivery_area_id_foreign` (`delivery_area_id`),
  CONSTRAINT `addresses_delivery_area_id_foreign` FOREIGN KEY (`delivery_area_id`) REFERENCES `delivery_areas` (`id`),
  CONSTRAINT `addresses_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `addresses` VALUES ('3','2','1','Anastasia','Avila','hello@gmaiol.com','+1 (106) 882-8138','232 Broadway Suite','home','2023-09-20 22:16:59','2023-09-20 22:16:59',NULL,NULL);
INSERT INTO `addresses` VALUES ('4','2','3','Anastasia','Abbott','hello@gmaiol.com','+1 (106) 882-8138','453 Broadway Suite','office','2023-09-20 22:17:26','2023-09-20 22:17:26',NULL,NULL);
INSERT INTO `addresses` VALUES ('6','2','118','EROL','KEÇİCİ','kecicilergida@hotmail.com','05337155802','Lüleburgaz Çiftlikköy','home','2024-03-31 20:53:38','2026-08-11 18:24:40',NULL,NULL);
INSERT INTO `addresses` VALUES ('13','9','6','Sayman','Sayman','sayman@gmail.com','55544433322','Ciftlikkoy','home','2024-12-27 09:05:57','2024-12-27 09:05:57',NULL,NULL);
INSERT INTO `addresses` VALUES ('15','1','255','EROL','KEÇİCİ','kecicilergida@hotmail.com','05337155802','Lüleburgaz Çiftlikköy','home','2025-10-15 10:02:50','2026-08-11 21:50:20',NULL,NULL);
INSERT INTO `addresses` VALUES ('16','38','266','erol','keçici','erol@gmail.com','11','Lüleburgaz Kuzeybatı Çevre Yolu, Dere Mahallesi, Lüleburgaz, Kırklareli, Marmara Bölgesi, 39750, Türkiye · erol · Kapı/daire 1 · Kat 2','home','2026-08-16 20:33:40','2026-08-16 20:33:40','41.4118278','27.3430495');

DROP TABLE IF EXISTS `admin_menu_items`;
CREATE TABLE `admin_menu_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `label` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `sort` int NOT NULL DEFAULT '0',
  `class` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `menu_id` bigint unsigned NOT NULL,
  `depth` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_menu_items_menu_id_foreign` (`menu_id`),
  CONSTRAINT `admin_menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `admin_menus` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `admin_menu_items` VALUES ('2','Ana Sayfa / Home','/','0','2',NULL,'2','0','2023-09-13 00:00:59','2023-09-13 00:14:43');
INSERT INTO `admin_menu_items` VALUES ('3','Hakkımızda','/about','0','1',NULL,'2','0','2023-09-13 00:02:18','2023-09-21 02:49:28');
INSERT INTO `admin_menu_items` VALUES ('4','İletişim','/contact','0','0',NULL,'2','0','2023-09-13 00:03:39','2023-09-21 02:49:28');
INSERT INTO `admin_menu_items` VALUES ('5','Hizmetimiz','#','0','3',NULL,'2','0','2023-09-13 00:04:12','2023-09-13 00:04:12');
INSERT INTO `admin_menu_items` VALUES ('6','Hakkımızda Daha Fazlası','#','0','4',NULL,'2','0','2023-09-13 00:04:27','2023-09-13 00:04:27');
INSERT INTO `admin_menu_items` VALUES ('7','','/','0','3',NULL,'3','0','2023-09-13 00:56:59','2023-09-13 01:00:59');
INSERT INTO `admin_menu_items` VALUES ('8','Gizlilik Politikamız','/privacy-policy','0','2',NULL,'3','0','2023-09-13 00:57:29','2023-09-13 01:00:59');
INSERT INTO `admin_menu_items` VALUES ('9','Daha Fazlası','#','0','4',NULL,'3','0','2023-09-13 00:59:45','2023-09-13 01:00:59');
INSERT INTO `admin_menu_items` VALUES ('10','Blogs','/blogs','0','0',NULL,'3','0','2023-09-13 01:00:20','2023-09-13 01:00:56');
INSERT INTO `admin_menu_items` VALUES ('11','Chefs','/','0','1',NULL,'3','0','2023-09-13 01:00:41','2023-09-13 01:01:05');
INSERT INTO `admin_menu_items` VALUES ('12','Contact','/contact','0','0',NULL,'4','0','2023-09-13 01:03:56','2023-09-13 01:04:12');
INSERT INTO `admin_menu_items` VALUES ('13','About','/about','0','1',NULL,'4','0','2023-09-13 01:04:11','2023-09-13 01:04:33');
INSERT INTO `admin_menu_items` VALUES ('14','Blogs','/bogs','0','3',NULL,'4','0','2023-09-13 01:04:33','2023-09-13 01:04:33');
INSERT INTO `admin_menu_items` VALUES ('19','İletişim','/contact','0','3',NULL,'1','0','2023-09-13 01:23:23','2025-10-15 06:01:04');
INSERT INTO `admin_menu_items` VALUES ('24','Tüm Ürünler','/products','0','0',NULL,'1','0','2023-09-13 01:26:58','2025-07-11 18:34:28');
INSERT INTO `admin_menu_items` VALUES ('34','Pizzalar','/products?search=&category=pizzalar','0','1',NULL,'1','0','2025-07-11 20:14:46','2025-10-15 05:59:25');
INSERT INTO `admin_menu_items` VALUES ('37','Kampanyalar','/products?search=&category=kampanyalar','0','2',NULL,'1','0','2025-10-15 05:59:41','2025-10-15 06:01:13');

DROP TABLE IF EXISTS `admin_menus`;
CREATE TABLE `admin_menus` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `admin_menus` VALUES ('1','main_menu',NULL,NULL);
INSERT INTO `admin_menus` VALUES ('2','footer_menu_one','2023-09-12 23:31:22','2023-09-12 23:31:22');
INSERT INTO `admin_menus` VALUES ('3','footer_menu_two','2023-09-12 23:34:53','2023-09-12 23:34:53');
INSERT INTO `admin_menus` VALUES ('4','footer_menu_three','2023-09-12 23:35:29','2023-09-12 23:35:29');

DROP TABLE IF EXISTS `ajanda_iceriks`;
CREATE TABLE `ajanda_iceriks` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ajandaId` int NOT NULL,
  `ajandaaciklama` text,
  `urunId` int NOT NULL,
  `musteriId` int DEFAULT NULL,
  `adet` int NOT NULL,
  `ajanda_status` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8mb3;


DROP TABLE IF EXISTS `ajandas`;
CREATE TABLE `ajandas` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `userId` int NOT NULL,
  `tarih` date NOT NULL,
  `musteriId` int DEFAULT NULL,
  `fiyat` double DEFAULT NULL,
  `aciklama` text,
  `hatirlatmaTarih` date NOT NULL,
  `status` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8mb3;


DROP TABLE IF EXISTS `akaryakithesapalmaislems`;
CREATE TABLE `akaryakithesapalmaislems` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `faturaId` int NOT NULL,
  `faturaTipi` int NOT NULL DEFAULT '0' COMMENT '0 ise satisFaturas?? , 1 ise alisFaturas??',
  `satistemsilciId` int NOT NULL,
  `faturaTarih` date NOT NULL,
  `faturaNo` varchar(255) NOT NULL,
  `musteriId` int NOT NULL,
  `miktar` int NOT NULL DEFAULT '0',
  `fiyat` float(9,2) NOT NULL,
  `borc` double DEFAULT '0',
  `alacak` double DEFAULT '0',
  `aciklama` text,
  `bankaId` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `islemTipi` int NOT NULL DEFAULT '0' COMMENT '0 ise Masraf , 1 ise Art??Sat????, 2 ise Kkar??, 3 ise Veresiye, 4 ise Tahsilat',
  `tutar` double(9,2) NOT NULL DEFAULT '0.00',
  `islemaciklama` int NOT NULL DEFAULT '0' COMMENT '0 ise Sabah Kasa A????l???? Nakit , 1 ise Ak??am Kasa Hesap Alma , 2 ise Ak??am Kasa A????l???? Nakit ',
  `cikis` double(9,2) NOT NULL,
  `aracplaka` varchar(25) NOT NULL DEFAULT '0',
  `urunId` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=260 DEFAULT CHARSET=utf8mb3;


DROP TABLE IF EXISTS `akaryakithesapalmas`;
CREATE TABLE `akaryakithesapalmas` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `islemaciklama` int DEFAULT '0' COMMENT '0 ise Sabah Kasa A????l???? Nakit , 1 ise Ak??am Kasa Hesap Alma , 2 ise Ak??am Kasa A????l???? Nakit ',
  `faturaTipi` int NOT NULL DEFAULT '0' COMMENT '0 ise satisFaturas?? , 1 ise alisFaturas?? , 3 ise alisiadeFaturas?? , 4 ise satisiadeFaturas??',
  `faturaNo` varchar(255) NOT NULL,
  `kullaniciId` int NOT NULL DEFAULT '0',
  `satistemsilciId` int NOT NULL,
  `faturaTarih` date NOT NULL,
  `borc` double(9,2) DEFAULT '0.00',
  `alacak` double(9,2) DEFAULT '0.00',
  `order_date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `kasaId` int NOT NULL,
  `nakit_200` double(9,2) NOT NULL DEFAULT '0.00',
  `nakit_100` double(9,2) NOT NULL DEFAULT '0.00',
  `nakit_50` double(9,2) NOT NULL DEFAULT '0.00',
  `nakit_20` double(9,2) NOT NULL DEFAULT '0.00',
  `nakit_10` double(9,2) NOT NULL DEFAULT '0.00',
  `nakit_5` double(9,2) NOT NULL DEFAULT '0.00',
  `nakit_demir` double(9,2) NOT NULL DEFAULT '0.00',
  `g??nsonu_satisi` double(9,2) NOT NULL DEFAULT '0.00',
  `kasa_devir_para` double(9,2) NOT NULL DEFAULT '0.00',
  `nakit_adet_200` double NOT NULL DEFAULT '0',
  `nakit_adet_100` double NOT NULL DEFAULT '0',
  `nakit_adet_50` double NOT NULL DEFAULT '0',
  `nakit_adet_20` double NOT NULL DEFAULT '0',
  `nakit_adet_10` double NOT NULL DEFAULT '0',
  `nakit_adet_5` double NOT NULL DEFAULT '0',
  `nakit_adet_demir` double NOT NULL DEFAULT '0',
  `nakit_200_toplam` double(9,2) NOT NULL DEFAULT '0.00',
  `nakit_100_toplam` double(9,2) NOT NULL DEFAULT '0.00',
  `nakit_50_toplam` double(9,2) NOT NULL DEFAULT '0.00',
  `nakit_20_toplam` double(9,2) NOT NULL DEFAULT '0.00',
  `nakit_10_toplam` double(9,2) NOT NULL DEFAULT '0.00',
  `nakit_5_toplam` double(9,2) NOT NULL DEFAULT '0.00',
  `nakit_demir_toplam` double(9,2) NOT NULL DEFAULT '0.00',
  `nakitgeneltoplam` double(9,2) NOT NULL DEFAULT '0.00',
  `aciklama` text,
  `borcgeneltoplam` double(9,2) NOT NULL,
  `alacakgeneltoplam` double(9,2) NOT NULL DEFAULT '0.00',
  `masrafnakitToplam` double(9,2) NOT NULL DEFAULT '0.00',
  `artisatisnakitToplam` double(9,2) NOT NULL DEFAULT '0.00',
  `islemTipi` int NOT NULL DEFAULT '0',
  `kasanakitdevirpara` double(9,2) NOT NULL DEFAULT '0.00',
  `kasadurumacikkapali` double(9,2) NOT NULL DEFAULT '0.00',
  `kasagunsonusatisi` double(9,2) NOT NULL DEFAULT '0.00',
  `depoId` int NOT NULL DEFAULT '0',
  `pompaId` int NOT NULL DEFAULT '0',
  `urunId` int NOT NULL,
  `vardiyaId` int NOT NULL,
  `ilkindex` decimal(10,0) NOT NULL,
  `sonindex` decimal(10,0) NOT NULL,
  `satislt` decimal(10,0) NOT NULL DEFAULT '0',
  `satisfiyati` double(9,2) NOT NULL,
  `satistutari` double(9,2) NOT NULL,
  `alislt` decimal(10,0) NOT NULL DEFAULT '0',
  `hesapdurum` double(9,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb3;


DROP TABLE IF EXISTS `app_download_sections`;
CREATE TABLE `app_download_sections` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `background` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `play_store_link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `apple_store_link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `app_download_sections` VALUES ('1','/uploads/media_650a82eb0939c.png','/uploads/media_650a82eb09906.jpg','download our mobile apps','Lorem ipsum dolor, sit amet consectetur adipisicing elit. Cumque assumenda tenetur, provident earum consequatur, ut voluptas laboriosam fuga error aut eaque architecto quo pariatur. Vel dolore omnis quisquam. Lorem ipsum dolor, sit amet consectetur adipisicing elit Cumque.','https://websolutionus.com/','https://websolutionus.com/','2023-09-19 23:28:11','2023-09-19 23:28:11');

DROP TABLE IF EXISTS `bankaharekets`;
CREATE TABLE `bankaharekets` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `faturaTipi` int DEFAULT NULL,
  `faturaNo` varchar(255) DEFAULT NULL,
  `musteriId` int DEFAULT NULL,
  `satistemsilciId` int DEFAULT NULL,
  `depoId` int DEFAULT NULL,
  `odemeSekli` int DEFAULT NULL,
  `bankaId` int DEFAULT NULL,
  `faturatarih` date DEFAULT NULL,
  `borc` double(9,2) DEFAULT NULL,
  `alacak` double(9,2) DEFAULT NULL,
  `balance` double(19,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


DROP TABLE IF EXISTS `bankas`;
CREATE TABLE `bankas` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `bankakodu` varchar(25) NOT NULL,
  `bankaadi` varchar(255) NOT NULL,
  `bankasubesi` varchar(25) NOT NULL,
  `bankasubeno` varchar(30) NOT NULL,
  `iban` varchar(255) DEFAULT NULL,
  `hesapNo` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb3;

INSERT INTO `bankas` VALUES ('1','10','Garanti Bankas?? A.??','L??LEBURGAZ','1112','11','11','2021-06-19 12:27:00','2024-11-24 10:24:30');
INSERT INTO `bankas` VALUES ('2','20','??EKERBANK','L??LEBURGAZ','11','11','11','2021-06-19 12:27:20','2024-05-04 16:03:15');
INSERT INTO `bankas` VALUES ('3','30','VAKIFBANK','L??LEBURGAZ','11','11','11','2021-06-19 12:27:38','2021-06-19 12:27:38');
INSERT INTO `bankas` VALUES ('4','40','????BANKASI','L??LEBURGAZ','11','11','11','2021-06-19 12:27:59','2021-06-19 12:27:59');
INSERT INTO `bankas` VALUES ('5','50','DEN??ZBANK','L??LEBURGAZ','11','11','11','2021-06-19 12:28:13','2021-06-19 12:28:13');
INSERT INTO `bankas` VALUES ('6','60','??EKERBANK','L??LEBURGAZ','11','11','11','2021-06-19 12:28:33','2021-06-19 12:28:33');
INSERT INTO `bankas` VALUES ('7','70','TEB T??RK??YE EKONEM?? BANASI','L??LEBURGAZ','11','111','11','2021-06-19 12:28:50','2021-06-19 12:28:50');
INSERT INTO `bankas` VALUES ('8','80','ANADOLUBANK','L??LEBURGAZ','11','111','11','2021-06-19 12:29:09','2021-06-19 12:29:09');
INSERT INTO `bankas` VALUES ('9','90','HALKBANK','L??LEBURGAZ','11','111','11','2021-06-19 12:29:34','2021-06-19 12:29:34');
INSERT INTO `bankas` VALUES ('10','31','YAPI KRED??','L??LEBURGAZ','001','TR64 0006 7010 0000 0050 2390 29','239029','2022-08-22 09:30:06','2022-08-22 09:30:06');
INSERT INTO `bankas` VALUES ('11','100','Z??RAAT BANKASI','L??LEBURGAZ','1','1','1','2022-12-27 12:21:18','2022-12-27 12:21:18');
INSERT INTO `bankas` VALUES ('18','110','erol bank','11','111','11','11','2024-10-30 14:30:35','2024-10-30 14:31:09');
INSERT INTO `bankas` VALUES ('19','120','QNB F??NANS BANK','L??LEBURGAZ','10','111','111','2025-03-05 14:07:32','2025-03-05 14:07:32');

DROP TABLE IF EXISTS `banner_sliders`;
CREATE TABLE `banner_sliders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `banner` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `banner_sliders` VALUES ('1','K??n??k Maden suyu','K??n??k Maden suyu L??leburgaz B??lge Bayilik.','https://www.kinikmadensuyu.com.tr/','/uploads/media_67268ddac52e8.png','1','2023-09-19 23:19:01','2024-11-02 17:38:50');
INSERT INTO `banner_sliders` VALUES ('2','Sakasu','Sakasu L??leburgaz B??lge Bayilik','https://sakasu.com.tr/','/uploads/media_6729076b4bc6a.jpg','1','2023-09-19 23:19:37','2024-11-04 14:42:03');
INSERT INTO `banner_sliders` VALUES ('3','??zkaynak Su','??zkaynak Su L??leburgaz B??lge Bayilik.','https://www.ozkaynak.com/','/uploads/media_6727d961c0d0f.jpg','1','2023-09-19 23:20:16','2024-11-03 17:13:21');
INSERT INTO `banner_sliders` VALUES ('4','Enerji Petrol','Enerji petrol  ??iftlikk??y Lisansl?? Bayilik','https://www.enerjipetrol.com/','/uploads/media_67290a0d0db77.jpg','1','2023-09-19 23:20:48','2024-11-04 14:53:17');
INSERT INTO `banner_sliders` VALUES ('5','S??rmake?? Do??al Kaynak Suyu','S??rmake?? L??leburgaz B??lge Bayilik','https://sirmakes.com.tr/','/uploads/media_6731aab928c88.jpg','1','2024-11-11 06:33:44','2024-11-11 06:56:57');

DROP TABLE IF EXISTS `blog_categories`;
CREATE TABLE `blog_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `blog_categories` VALUES ('1','Fruits','fruits','1','2023-09-19 23:39:27','2023-09-19 23:39:27');
INSERT INTO `blog_categories` VALUES ('2','Vegetables','vegetables','1','2023-09-19 23:39:35','2023-09-19 23:39:35');
INSERT INTO `blog_categories` VALUES ('3','Grains','grains','1','2023-09-19 23:39:44','2023-09-19 23:39:44');
INSERT INTO `blog_categories` VALUES ('4','Dairy Products','dairy-products','1','2023-09-19 23:39:53','2023-09-19 23:39:53');
INSERT INTO `blog_categories` VALUES ('5','Proteins','proteins','1','2023-09-19 23:40:02','2023-09-19 23:40:02');

DROP TABLE IF EXISTS `blog_comments`;
CREATE TABLE `blog_comments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `blog_id` bigint unsigned NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `blog_comments_blog_id_foreign` (`blog_id`),
  CONSTRAINT `blog_comments_blog_id_foreign` FOREIGN KEY (`blog_id`) REFERENCES `blogs` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `blogs`;
CREATE TABLE `blogs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `category_id` bigint unsigned NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `blogs_user_id_foreign` (`user_id`),
  KEY `blogs_category_id_foreign` (`category_id`),
  CONSTRAINT `blogs_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `blog_categories` (`id`) ON DELETE CASCADE,
  CONSTRAINT `blogs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `blogs` VALUES ('1','1','1','/uploads/media_650a885b0984c.jpg','Kitchen Hacks: Cook Like a Pro','kitchen-hacks-cook-like-a-pro','<p>There are many variations of passages of Lorem Ipsum available, but the majority have\r\n                                ered alteration in some form, by injected humour, or randomised word which don\'t look\r\n                                even slightly believable. If you are going to use a passage of Lorem Ipsulm you need to\r\n                                sure there isn\'t anything embarrassing hidden in the middle of text.Erators on the Internet tend to repeat predefined chunks as necessiary, making this the\r\n                                true generator on the Internet. It uses a dictionary of over 200 Latin words, combinedss\r\n                                handful of model sentence structures</p><p>There are many variations of passages of Lorem Ipsum available, but the \r\nmajority have\r\n                                ered alteration in some form, by \r\ninjected humour, or randomised word which don\'t look\r\n                                even slightly believable. If you are \r\ngoing to use a passage of Lorem Ipsulm you need to\r\n                                sure there isn\'t anything embarrassing \r\nhidden in the middle of text.Erators on the Internet tend to repeat \r\npredefined chunks as necessiary, making this the\r\n                                true generator on the Internet. It uses a\r\n dictionary of over 200 Latin words, combinedss\r\n                                handful of model sentence structures</p><p>There are many variations of passages of Lorem Ipsum available, but the \r\nmajority have\r\n                                ered alteration in some form, by \r\ninjected humour, or randomised word which don\'t look\r\n                                even slightly believable. If you are \r\ngoing to use a passage of Lorem Ipsulm you need to\r\n                                sure there isn\'t anything embarrassing \r\nhidden in the middle of text.Erators on the Internet tend to repeat \r\npredefined chunks as necessiary, making this the\r\n                                true generator on the Internet. It uses a\r\n dictionary of over 200 Latin words, combinedss\r\n                                handful of model sentence structures</p><p>Sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem our\r\n                                asIpsum gen erators on the Internet tend to repeat predefined chunks as the as\r\n                                necessliary, making this the first\r\n                                true generator on the Internet. It uses a dictionary of over 200 our asliatin words,\r\n                                combined with a\r\n                                handful of model sentence structures</p>\r\n\r\n                            <ul class="blog_details_list"><li>It is a long established fact that a reader will be</li><li>There are many variations of passages</li><li>All the Lorem Ipsum generators</li><li>Asearch for \'lorem ipsum\' will uncover many </li></ul><p></p><p></p>',NULL,NULL,'1','2023-09-19 23:51:23','2023-09-19 23:51:23');
INSERT INTO `blogs` VALUES ('2','1','2','/uploads/media_650a88a6db383.jpg','Healthy Eating 101 - Tips and Tricks','healthy-eating-101-tips-and-tricks','<p>There are many variations of passages of Lorem Ipsum available, but \r\nthe majority have\r\n                                ered alteration in some form, by \r\ninjected humour, or randomised word which don\'t look\r\n                                even slightly believable. If you are \r\ngoing to use a passage of Lorem Ipsulm you need to\r\n                                sure there isn\'t anything embarrassing \r\nhidden in the middle of text.Erators on the Internet tend to repeat \r\npredefined chunks as necessiary, making this the\r\n                                true generator on the Internet. It uses a\r\n dictionary of over 200 Latin words, combinedss\r\n                                handful of model sentence structures</p><p>There are many variations of passages of Lorem Ipsum available, but the \r\nmajority have\r\n                                ered alteration in some form, by \r\ninjected humour, or randomised word which don\'t look\r\n                                even slightly believable. If you are \r\ngoing to use a passage of Lorem Ipsulm you need to\r\n                                sure there isn\'t anything embarrassing \r\nhidden in the middle of text.Erators on the Internet tend to repeat \r\npredefined chunks as necessiary, making this the\r\n                                true generator on the Internet. It uses a\r\n dictionary of over 200 Latin words, combinedss\r\n                                handful of model sentence structures</p><p>There are many variations of passages of Lorem Ipsum available, but the \r\nmajority have\r\n                                ered alteration in some form, by \r\ninjected humour, or randomised word which don\'t look\r\n                                even slightly believable. If you are \r\ngoing to use a passage of Lorem Ipsulm you need to\r\n                                sure there isn\'t anything embarrassing \r\nhidden in the middle of text.Erators on the Internet tend to repeat \r\npredefined chunks as necessiary, making this the\r\n                                true generator on the Internet. It uses a\r\n dictionary of over 200 Latin words, combinedss\r\n                                handful of model sentence structures</p><p>Sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem our\r\n                                asIpsum gen erators on the Internet tend to repeat predefined chunks as the as\r\n                                necessliary, making this the first\r\n                                true generator on the Internet. It uses a dictionary of over 200 our asliatin words,\r\n                                combined with a\r\n                                handful of model sentence structures</p>\r\n\r\n                            <ul class="blog_details_list"><li>It is a long established fact that a reader will be</li><li>There are many variations of passages</li><li>All the Lorem Ipsum generators</li><li>Asearch for \'lorem ipsum\' will uncover many </li></ul><p></p><p><br></p><p></p>',NULL,NULL,'1','2023-09-19 23:52:38','2023-09-19 23:52:38');
INSERT INTO `blogs` VALUES ('3','1','3','/uploads/media_650a88c975cf6.jpg','Foodie Adventures: Exploring Global Flavors','foodie-adventures-exploring-global-flavors','<p>There are many variations of passages of Lorem Ipsum available, but \r\nthe majority have\r\n                                ered alteration in some form, by \r\ninjected humour, or randomised word which don\'t look\r\n                                even slightly believable. If you are \r\ngoing to use a passage of Lorem Ipsulm you need to\r\n                                sure there isn\'t anything embarrassing \r\nhidden in the middle of text.Erators on the Internet tend to repeat \r\npredefined chunks as necessiary, making this the\r\n                                true generator on the Internet. It uses a\r\n dictionary of over 200 Latin words, combinedss\r\n                                handful of model sentence structures</p><p>There are many variations of passages of Lorem Ipsum available, but the \r\nmajority have\r\n                                ered alteration in some form, by \r\ninjected humour, or randomised word which don\'t look\r\n                                even slightly believable. If you are \r\ngoing to use a passage of Lorem Ipsulm you need to\r\n                                sure there isn\'t anything embarrassing \r\nhidden in the middle of text.Erators on the Internet tend to repeat \r\npredefined chunks as necessiary, making this the\r\n                                true generator on the Internet. It uses a\r\n dictionary of over 200 Latin words, combinedss\r\n                                handful of model sentence structures</p><p>There are many variations of passages of Lorem Ipsum available, but the \r\nmajority have\r\n                                ered alteration in some form, by \r\ninjected humour, or randomised word which don\'t look\r\n                                even slightly believable. If you are \r\ngoing to use a passage of Lorem Ipsulm you need to\r\n                                sure there isn\'t anything embarrassing \r\nhidden in the middle of text.Erators on the Internet tend to repeat \r\npredefined chunks as necessiary, making this the\r\n                                true generator on the Internet. It uses a\r\n dictionary of over 200 Latin words, combinedss\r\n                                handful of model sentence structures</p><p>Sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem our\r\n                                asIpsum gen erators on the Internet tend to repeat predefined chunks as the as\r\n                                necessliary, making this the first\r\n                                true generator on the Internet. It uses a dictionary of over 200 our asliatin words,\r\n                                combined with a\r\n                                handful of model sentence structures</p>\r\n\r\n                            <ul class="blog_details_list"><li>It is a long established fact that a reader will be</li><li>There are many variations of passages</li><li>All the Lorem Ipsum generators</li><li>Asearch for \'lorem ipsum\' will uncover many </li></ul><p></p><p><br></p><p></p>',NULL,NULL,'1','2023-09-19 23:53:13','2023-09-19 23:53:13');
INSERT INTO `blogs` VALUES ('4','1','5','/uploads/media_650a89009830f.jpg','The Art of Baking: Sweet and Savory Delights','the-art-of-baking-sweet-and-savory-delights','<p>There are many variations of passages of Lorem Ipsum available, but \r\nthe majority have\r\n                                ered alteration in some form, by \r\ninjected humour, or randomised word which don\'t look\r\n                                even slightly believable. If you are \r\ngoing to use a passage of Lorem Ipsulm you need to\r\n                                sure there isn\'t anything embarrassing \r\nhidden in the middle of text.Erators on the Internet tend to repeat \r\npredefined chunks as necessiary, making this the\r\n                                true generator on the Internet. It uses a\r\n dictionary of over 200 Latin words, combinedss\r\n                                handful of model sentence structures</p><p>There are many variations of passages of Lorem Ipsum available, but the \r\nmajority have\r\n                                ered alteration in some form, by \r\ninjected humour, or randomised word which don\'t look\r\n                                even slightly believable. If you are \r\ngoing to use a passage of Lorem Ipsulm you need to\r\n                                sure there isn\'t anything embarrassing \r\nhidden in the middle of text.Erators on the Internet tend to repeat \r\npredefined chunks as necessiary, making this the\r\n                                true generator on the Internet. It uses a\r\n dictionary of over 200 Latin words, combinedss\r\n                                handful of model sentence structures</p><p>There are many variations of passages of Lorem Ipsum available, but the \r\nmajority have\r\n                                ered alteration in some form, by \r\ninjected humour, or randomised word which don\'t look\r\n                                even slightly believable. If you are \r\ngoing to use a passage of Lorem Ipsulm you need to\r\n                                sure there isn\'t anything embarrassing \r\nhidden in the middle of text.Erators on the Internet tend to repeat \r\npredefined chunks as necessiary, making this the\r\n                                true generator on the Internet. It uses a\r\n dictionary of over 200 Latin words, combinedss\r\n                                handful of model sentence structures</p><p>Sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem our\r\n                                asIpsum gen erators on the Internet tend to repeat predefined chunks as the as\r\n                                necessliary, making this the first\r\n                                true generator on the Internet. It uses a dictionary of over 200 our asliatin words,\r\n                                combined with a\r\n                                handful of model sentence structures</p>\r\n\r\n                            <ul class="blog_details_list"><li>It is a long established fact that a reader will be</li><li>There are many variations of passages</li><li>All the Lorem Ipsum generators</li><li>Asearch for \'lorem ipsum\' will uncover many </li></ul><p></p><p><br></p><p></p>',NULL,NULL,'1','2023-09-19 23:54:08','2023-09-19 23:54:08');
INSERT INTO `blogs` VALUES ('5','1','2','/uploads/media_650a894602b39.jpg','From Farm to Table: Fresh Ingredient Spotlight','from-farm-to-table-fresh-ingredient-spotlight','<p>There are many variations of passages of Lorem Ipsum available, but \r\nthe majority have\r\n                                ered alteration in some form, by \r\ninjected humour, or randomised word which don\'t look\r\n                                even slightly believable. If you are \r\ngoing to use a passage of Lorem Ipsulm you need to\r\n                                sure there isn\'t anything embarrassing \r\nhidden in the middle of text.Erators on the Internet tend to repeat \r\npredefined chunks as necessiary, making this the\r\n                                true generator on the Internet. It uses a\r\n dictionary of over 200 Latin words, combinedss\r\n                                handful of model sentence structures</p><p>There are many variations of passages of Lorem Ipsum available, but the \r\nmajority have\r\n                                ered alteration in some form, by \r\ninjected humour, or randomised word which don\'t look\r\n                                even slightly believable. If you are \r\ngoing to use a passage of Lorem Ipsulm you need to\r\n                                sure there isn\'t anything embarrassing \r\nhidden in the middle of text.Erators on the Internet tend to repeat \r\npredefined chunks as necessiary, making this the\r\n                                true generator on the Internet. It uses a\r\n dictionary of over 200 Latin words, combinedss\r\n                                handful of model sentence structures</p><p>There are many variations of passages of Lorem Ipsum available, but the \r\nmajority have\r\n                                ered alteration in some form, by \r\ninjected humour, or randomised word which don\'t look\r\n                                even slightly believable. If you are \r\ngoing to use a passage of Lorem Ipsulm you need to\r\n                                sure there isn\'t anything embarrassing \r\nhidden in the middle of text.Erators on the Internet tend to repeat \r\npredefined chunks as necessiary, making this the\r\n                                true generator on the Internet. It uses a\r\n dictionary of over 200 Latin words, combinedss\r\n                                handful of model sentence structures</p><p>Sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem our\r\n                                asIpsum gen erators on the Internet tend to repeat predefined chunks as the as\r\n                                necessliary, making this the first\r\n                                true generator on the Internet. It uses a dictionary of over 200 our asliatin words,\r\n                                combined with a\r\n                                handful of model sentence structures</p>\r\n\r\n                            <ul class="blog_details_list"><li>It is a long established fact that a reader will be</li><li>There are many variations of passages</li><li>All the Lorem Ipsum generators</li><li>Asearch for \'lorem ipsum\' will uncover many </li></ul><p></p><p><br></p><p></p>',NULL,NULL,'1','2023-09-19 23:55:18','2023-09-19 23:55:18');
INSERT INTO `blogs` VALUES ('6','1','5','/uploads/media_650a8982aa811.jpg','Veggie Delights: A Vegetarian\'s Guide to Flavor','veggie-delights-a-vegetarians-guide-to-flavor','<p>There are many variations of passages of Lorem Ipsum available, but \r\nthe majority have\r\n                                ered alteration in some form, by \r\ninjected humour, or randomised word which don\'t look\r\n                                even slightly believable. If you are \r\ngoing to use a passage of Lorem Ipsulm you need to\r\n                                sure there isn\'t anything embarrassing \r\nhidden in the middle of text.Erators on the Internet tend to repeat \r\npredefined chunks as necessiary, making this the\r\n                                true generator on the Internet. It uses a\r\n dictionary of over 200 Latin words, combinedss\r\n                                handful of model sentence structures</p><p>There are many variations of passages of Lorem Ipsum available, but the \r\nmajority have\r\n                                ered alteration in some form, by \r\ninjected humour, or randomised word which don\'t look\r\n                                even slightly believable. If you are \r\ngoing to use a passage of Lorem Ipsulm you need to\r\n                                sure there isn\'t anything embarrassing \r\nhidden in the middle of text.Erators on the Internet tend to repeat \r\npredefined chunks as necessiary, making this the\r\n                                true generator on the Internet. It uses a\r\n dictionary of over 200 Latin words, combinedss\r\n                                handful of model sentence structures</p><p>There are many variations of passages of Lorem Ipsum available, but the \r\nmajority have\r\n                                ered alteration in some form, by \r\ninjected humour, or randomised word which don\'t look\r\n                                even slightly believable. If you are \r\ngoing to use a passage of Lorem Ipsulm you need to\r\n                                sure there isn\'t anything embarrassing \r\nhidden in the middle of text.Erators on the Internet tend to repeat \r\npredefined chunks as necessiary, making this the\r\n                                true generator on the Internet. It uses a\r\n dictionary of over 200 Latin words, combinedss\r\n                                handful of model sentence structures</p><p>Sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem our\r\n                                asIpsum gen erators on the Internet tend to repeat predefined chunks as the as\r\n                                necessliary, making this the first\r\n                                true generator on the Internet. It uses a dictionary of over 200 our asliatin words,\r\n                                combined with a\r\n                                handful of model sentence structures</p>\r\n\r\n                            <ul class="blog_details_list"><li>It is a long established fact that a reader will be</li><li>There are many variations of passages</li><li>All the Lorem Ipsum generators</li><li>Asearch for \'lorem ipsum\' will uncover many </li></ul><p></p><p><br></p><p></p>',NULL,NULL,'1','2023-09-19 23:56:18','2023-09-19 23:56:18');

DROP TABLE IF EXISTS `cariharekets`;
CREATE TABLE `cariharekets` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `faturaTipi` int DEFAULT '0',
  `faturaNo` varchar(255) DEFAULT NULL,
  `tip` int NOT NULL DEFAULT '0',
  `musteriId` int NOT NULL,
  `satistemsilciId` int DEFAULT NULL,
  `depoId` int NOT NULL DEFAULT '2',
  `faturaId` int DEFAULT '0',
  `faturaTarih` date NOT NULL,
  `fiyat` double DEFAULT '0',
  `borc` double(9,2) DEFAULT '0.00',
  `alacak` double(9,2) DEFAULT '0.00',
  `bakiye` double DEFAULT '0',
  `tarih` date DEFAULT NULL,
  `Hesap` int DEFAULT NULL,
  `odemeSekli` int DEFAULT NULL,
  `text` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `efaturamusterisi` int DEFAULT '0' COMMENT '0 ise Efatura, 1 ise Earsiv',
  `kasaId` int DEFAULT NULL,
  `vadeTarih` date DEFAULT NULL,
  `ceksenetturu` int DEFAULT NULL COMMENT '0 ise KEND??EVRA??IMIZ , 1 ise M????TER??EVRA??I ',
  `ceksenetdurumu` int DEFAULT NULL COMMENT '0 ise BEKLEMEDE , 1 ise C??ROLU , 2 ise ??DEND?? , 3 ise BANKADA , 4 ise ??ADE',
  `bankaadi` varchar(50) DEFAULT NULL,
  `bankasubesi` varchar(50) DEFAULT NULL,
  `bankahesapno` varchar(50) DEFAULT NULL,
  `evrakturu` int DEFAULT NULL COMMENT '0 ise AS??L EVRAK , 1 ise C??ROLU EVRAK',
  `bankaId` int DEFAULT NULL,
  `odemetarih` date DEFAULT NULL,
  `cekciromusteriId` int DEFAULT NULL,
  `islemaciklama` int DEFAULT NULL,
  `kullaniciId` int DEFAULT NULL,
  `bankaya_virmanId` int DEFAULT NULL,
  `satirId` int DEFAULT '0',
  `urunId` int DEFAULT NULL,
  `cikis` decimal(10,0) DEFAULT NULL,
  `aracplaka` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=504 DEFAULT CHARSET=utf8mb3;


DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `show_at_home` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `categories` VALUES ('1','Pizzalar','pizzalar','1','1','2023-09-19 22:15:46','2025-07-11 20:17:48');
INSERT INTO `categories` VALUES ('2','Makarnaalar','makarnaalar','1','1','2023-09-19 22:16:22','2025-10-07 18:05:27');
INSERT INTO `categories` VALUES ('3','Kumpir','kumpir','1','1','2023-09-19 22:16:56','2025-10-07 18:33:03');
INSERT INTO `categories` VALUES ('4','Çıtır Lezzetler & Soslar','citir-lezzetler-soslar','0','0','2023-09-19 22:17:21','2026-08-11 21:54:24');
INSERT INTO `categories` VALUES ('5','İçecekler','icecekler','1','1','2024-04-02 17:20:35','2026-08-11 21:54:24');
INSERT INTO `categories` VALUES ('6','Tatlılar','komur-cesitlerimiz','1','1','2024-11-09 18:00:51','2026-08-11 21:54:24');
INSERT INTO `categories` VALUES ('8','Özel Lezzetli Pizzalar','ozel-lezzetli-pizzalar','1','1','2025-10-12 08:33:15','2026-08-11 21:54:24');

DROP TABLE IF EXISTS `chats`;
CREATE TABLE `chats` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `sender_id` bigint unsigned NOT NULL,
  `receiver_id` bigint unsigned NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `seen` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `chats` VALUES ('1','3','1','Hi','1','2023-09-20 01:35:41','2023-09-20 01:36:26');
INSERT INTO `chats` VALUES ('2','3','1','What is the status of my product?','1','2023-09-20 01:35:53','2023-09-20 01:36:26');
INSERT INTO `chats` VALUES ('3','1','3','your order is proccessing..','1','2023-09-20 01:36:50','2023-09-20 01:41:11');
INSERT INTO `chats` VALUES ('4','3','1','how long it will take to deliver ?','1','2023-09-20 01:37:14','2023-09-20 01:38:06');
INSERT INTO `chats` VALUES ('5','1','3','1-2 days','1','2023-09-20 01:37:42','2023-09-20 01:41:11');
INSERT INTO `chats` VALUES ('6','3','1','Thanks.','1','2023-09-20 01:37:54','2023-09-20 01:38:06');
INSERT INTO `chats` VALUES ('7','1','3','???????','1','2023-09-20 01:38:36','2023-09-20 01:41:11');
INSERT INTO `chats` VALUES ('8','2','1','Hellloooo!','1','2023-09-20 23:03:23','2023-09-21 02:45:55');
INSERT INTO `chats` VALUES ('9','2','1','hello','1','2023-09-21 02:34:25','2023-09-21 02:45:55');
INSERT INTO `chats` VALUES ('10','1','3','hy','0','2023-09-21 02:46:14','2023-09-21 02:46:14');
INSERT INTO `chats` VALUES ('11','1','1','patron hay??rl?? i??ler','1','2024-11-14 20:13:12','2024-11-14 20:18:43');
INSERT INTO `chats` VALUES ('12','1','3','selam','0','2024-12-02 20:39:12','2024-12-02 20:39:12');
INSERT INTO `chats` VALUES ('13','1','3','iyi g??nler','0','2024-12-26 17:02:31','2024-12-26 17:02:31');
INSERT INTO `chats` VALUES ('14','1','1','leydi','1','2024-12-26 17:03:19','2024-12-26 17:03:55');
INSERT INTO `chats` VALUES ('15','1','2','fino','0','2024-12-26 17:03:46','2024-12-26 17:03:46');
INSERT INTO `chats` VALUES ('16','1','1','tika','1','2024-12-26 17:04:11','2024-12-26 17:04:51');
INSERT INTO `chats` VALUES ('17','1','3','ok','0','2024-12-26 17:04:44','2024-12-26 17:04:44');
INSERT INTO `chats` VALUES ('18','1','2','hemen','0','2024-12-26 17:05:54','2024-12-26 17:05:54');
INSERT INTO `chats` VALUES ('19','5','1','tekirda??','1','2024-12-26 17:08:22','2024-12-26 17:10:13');
INSERT INTO `chats` VALUES ('20','1','2','ert','0','2024-12-26 18:57:58','2024-12-26 18:57:58');
INSERT INTO `chats` VALUES ('21','1','5','adana','0','2024-12-26 18:58:12','2024-12-26 18:58:12');

DROP TABLE IF EXISTS `chefs`;
CREATE TABLE `chefs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `fb` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `in` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `x` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `web` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show_at_home` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `chefs` VALUES ('1','/uploads/media_650a81c9c22f8.jpg','rajib khan','senior chef','https://facebook.com','https://facebook.com','https://facebook.com','https://facebook.com','1','0','2023-09-19 23:23:21','2024-04-01 20:57:30');
INSERT INTO `chefs` VALUES ('2','/uploads/media_650a81e93c593.jpg','mahmud hassan','senior chef','https://facebook.com','https://facebook.com','https://facebook.com','https://facebook.com','1','0','2023-09-19 23:23:53','2024-04-01 20:57:20');
INSERT INTO `chefs` VALUES ('3','/uploads/media_650a8213e4b4d.jpg','ayerin ira','senior chef','https://facebook.com','https://facebook.com','https://facebook.com','https://facebook.com','1','0','2023-09-19 23:24:35','2024-04-01 20:57:11');
INSERT INTO `chefs` VALUES ('4','/uploads/media_650a82443f255.jpg','sima ahmed','senior chef','https://facebook.com','https://facebook.com','https://facebook.com','https://facebook.com','1','0','2023-09-19 23:25:24','2024-04-01 20:57:02');
INSERT INTO `chefs` VALUES ('5','/uploads/media_650a8263a73d5.jpg','sathi akter','senior chef','https://facebook.com','https://facebook.com','https://facebook.com','https://facebook.com','1','0','2023-09-19 23:25:55','2024-04-01 20:56:51');

DROP TABLE IF EXISTS `complaints`;
CREATE TABLE `complaints` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `order_id` bigint unsigned DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `admin_reply` text COLLATE utf8mb4_unicode_ci,
  `handled_by` bigint unsigned DEFAULT NULL,
  `resolved_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `complaints_user_id_foreign` (`user_id`),
  KEY `complaints_order_id_foreign` (`order_id`),
  KEY `complaints_handled_by_foreign` (`handled_by`),
  CONSTRAINT `complaints_handled_by_foreign` FOREIGN KEY (`handled_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `complaints_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE SET NULL,
  CONSTRAINT `complaints_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `contacts`;
CREATE TABLE `contacts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `phone_one` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_two` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mail_one` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mail_two` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `map_link` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `contacts` VALUES ('1','05337816139','05337816139','onrdry11@gmail.com','onrdry11@gmail.com','YEN?? MAH ??N??N?? CAD NO:9 B??Y??KKARI??TIRAN BELED??YES?? -L??LEBURGAZ - KIRKLAREL??','https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d685.9405460532652!2d27.54458232788242!3d41.29901102627324!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x14b4bf7ce31d36af%3A0x861f77020bd881da!2zQsO8ecO8a2thcsSxxZ90xLFyYW4sIFnEsWxkxLFyxLFtLCAzOTc1MCBCw7x5w7xra2FyxLHFn3TEsXJhbi9Mw7xsZWJ1cmdhei9LxLFya2xhcmVsaQ!5e1!3m2!1str!2str!4v1760520978036!5m2!1str!2str" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade','2023-09-20 00:12:45','2025-10-16 14:34:08');

DROP TABLE IF EXISTS `counters`;
CREATE TABLE `counters` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `background` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `counter_icon_one` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `counter_count_one` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `counter_name_one` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `counter_icon_two` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `counter_count_two` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `counter_name_two` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `counter_icon_three` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `counter_count_three` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `counter_name_three` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `counter_icon_four` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `counter_count_four` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `counter_name_four` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `counters` VALUES ('1','/uploads/media_68e57f1fc72da.png','fas fa-box','1','M????teri Hizmetleri','fas fa-user','5','Deneyimli Personel','fas fa-handshake','100','Mutlu m????teri','fas fa-trophy','1','Kazanan ??d??l','2023-09-19 23:37:42','2025-10-07 20:59:11');
INSERT INTO `counters` VALUES ('2','/uploads/insalt.png','fas fa-box','2','Y??ll??k Tecr??be','fas fa-user','2','Deneyimli Personel','fas fa-handshake','1','Mutlu m????teri','fas fa-trophy','1','Kazanan ??d??l','2024-11-02 17:43:47',NULL);

DROP TABLE IF EXISTS `coupons`;
CREATE TABLE `coupons` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `restaurant_id` bigint unsigned DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int NOT NULL,
  `min_purchase_amount` int NOT NULL DEFAULT '0',
  `expire_date` date NOT NULL,
  `discount_type` enum('percent','amount') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount` double NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `coupons_restaurant_id_foreign` (`restaurant_id`),
  CONSTRAINT `coupons_restaurant_id_foreign` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurants` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `coupons` VALUES ('1',NULL,'20 % Off','super20','1000','10','2024-09-17','percent','20','1','2023-09-19 23:13:20','2023-09-19 23:13:20');

DROP TABLE IF EXISTS `courier_ratings`;
CREATE TABLE `courier_ratings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `courier_id` bigint unsigned NOT NULL,
  `order_id` bigint unsigned DEFAULT NULL,
  `rating` tinyint unsigned NOT NULL,
  `review` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `courier_ratings_user_id_foreign` (`user_id`),
  KEY `courier_ratings_courier_id_foreign` (`courier_id`),
  KEY `courier_ratings_order_id_foreign` (`order_id`),
  CONSTRAINT `courier_ratings_courier_id_foreign` FOREIGN KEY (`courier_id`) REFERENCES `couriers` (`id`) ON DELETE CASCADE,
  CONSTRAINT `courier_ratings_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE SET NULL,
  CONSTRAINT `courier_ratings_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `couriers`;
CREATE TABLE `couriers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_online` tinyint(1) NOT NULL DEFAULT '0',
  `lat` decimal(10,7) DEFAULT NULL,
  `lng` decimal(10,7) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'available',
  `base_earning` decimal(8,2) NOT NULL DEFAULT '40.00',
  `per_km_earning` decimal(8,2) NOT NULL DEFAULT '5.00',
  `total_earned` decimal(12,2) NOT NULL DEFAULT '0.00',
  `last_location_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `iban` varchar(34) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `iban_name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `couriers_user_id_foreign` (`user_id`),
  CONSTRAINT `couriers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `couriers` VALUES ('1','36','0555 000 11 22',NULL,'1',NULL,NULL,'busy','40.00','5.00','0.00',NULL,'2026-08-11 17:12:38','2026-08-11 22:27:47',NULL,NULL);

DROP TABLE IF EXISTS `custom_page_builders`;
CREATE TABLE `custom_page_builders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `custom_page_builders` VALUES ('1','Custom Page','custom-page','<h3>This is a custom page :</h3>\r\n                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ad, repellendus! Nesciunt fugit\r\n                            aliquam\r\n                            doloremque velit ullam quos ad et magnam aperiam eum vero unde cum reprehenderit porro\r\n                            consectetur voluptatum, veritatis blanditiis. Repellendus veritatis fugit maxime nostrum\r\n                            quod\r\n                            ipsum, quibusdam, a omnis quam aperiam pariatur consectetur est perspiciatis. Laboriosam\r\n                            praesentium id asperiores cumque debitis, ex adipisci? Impedit temporibus labore dolores\r\n                            iusto\r\n                            error nobis, porro hic iure placeat, sint esse corporis, quibusdam adipisci magni non minus\r\n                            quo\r\n                            quae repudiandae earum facere eum ad qui voluptatum eaque.</p>\r\n                        <h3>Main responsibilities:</h3>\r\n                        <ul><li>Solve the problem with code.</li><li>Work on Client\'s projects & In-house products as well.</li><li>Analyze the product\'s needs and find out the best solutions.</li><li>Work as a team and lead the junior developer.</li><li>Collaborate with other teams by providing code review and technical direction.</li></ul>\r\n                        <p><br></p>\r\n                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ad, repellendus! Nesciunt fugit\r\n                            aliquam doloremque velit ullam quos ad et magnam aperiam eum vero unde cum reprehenderit\r\n                            porro consectetur voluptatum, veritatis blanditiis. Repellendus veritatis fugit maxime\r\n                            nostrum quod ipsum, quibusdam, a omnis quam aperiam pariatur</p>\r\n                        <ul><li>Solve the problem with code.</li><li>Work on Client\'s projects & In-house products as well.</li><li>Analyze the product\'s needs and find out the best solutions.</li><li>Work as a team and lead the junior developer.</li><li>Collaborate with other teams by providing code review and technical direction.</li></ul>\r\n                        <p><br></p><p></p>','1','2023-09-20 21:09:24','2024-10-27 16:50:06');
INSERT INTO `custom_page_builders` VALUES ('2','custom-page','custom-page','<p>err</p>','1','2024-10-27 16:50:43','2024-10-27 16:50:43');

DROP TABLE IF EXISTS `daily_offers`;
CREATE TABLE `daily_offers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `daily_offers_product_id_foreign` (`product_id`),
  CONSTRAINT `daily_offers_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `daily_offers` VALUES ('1','32','1','2023-09-19 23:13:53','2023-09-19 23:13:53');
INSERT INTO `daily_offers` VALUES ('2','33','1','2023-09-19 23:14:10','2023-09-19 23:14:10');
INSERT INTO `daily_offers` VALUES ('3','30','1','2023-09-19 23:14:24','2023-09-19 23:14:24');
INSERT INTO `daily_offers` VALUES ('9','40','1','2024-11-14 13:12:03','2024-11-14 13:12:03');

DROP TABLE IF EXISTS `delivery_areas`;
CREATE TABLE `delivery_areas` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` bigint unsigned DEFAULT NULL,
  `type` enum('province','district','municipality','street') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'province',
  `code` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `area_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `full_address` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `min_delivery_time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `max_delivery_time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `delivery_fee` double NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `delivery_areas_parent_id_foreign` (`parent_id`),
  CONSTRAINT `delivery_areas_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `delivery_areas` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=439 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `delivery_areas` VALUES ('1',NULL,'province',NULL,'Cedarwood Park',NULL,'20','25','0','0','2023-09-20 01:28:21','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('2',NULL,'province',NULL,'Maplewood Terrace',NULL,'10','20','0','0','2023-09-20 01:28:37','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('3',NULL,'province',NULL,'Riverview Estates',NULL,'10','15','0','0','2023-09-20 01:28:48','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('4',NULL,'province',NULL,'Oakridge Meadows',NULL,'10m','30m','0','0','2023-09-20 01:29:08','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('5',NULL,'province',NULL,'Sunset Ridge',NULL,'15m','30m','0','0','2023-09-20 01:29:24','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('6',NULL,'province',NULL,'Edirne',NULL,'15m','30m','0','0','2023-09-20 01:29:35','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('7',NULL,'province',NULL,'Adana',NULL,'30','60','25','0','2025-10-13 10:31:32','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('8',NULL,'province',NULL,'Adıyaman',NULL,'30','60','25','0','2025-10-13 10:31:32','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('9',NULL,'province',NULL,'Afyonkarahisar',NULL,'30','60','25','0','2025-10-13 10:31:32','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('10',NULL,'province',NULL,'Ağrı',NULL,'30','60','25','0','2025-10-13 10:31:32','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('11',NULL,'province',NULL,'Aksaray',NULL,'30','60','25','0','2025-10-13 10:31:32','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('12',NULL,'province',NULL,'Amasya',NULL,'30','60','25','0','2025-10-13 10:31:32','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('13',NULL,'province',NULL,'Ankara',NULL,'30','60','25','0','2025-10-13 10:31:32','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('14',NULL,'province',NULL,'Antalya',NULL,'30','60','25','0','2025-10-13 10:31:32','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('15',NULL,'province',NULL,'Ardahan',NULL,'30','60','25','0','2025-10-13 10:31:32','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('16',NULL,'province',NULL,'Artvin',NULL,'30','60','25','0','2025-10-13 10:31:32','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('17',NULL,'province',NULL,'Aydın',NULL,'30','60','25','0','2025-10-13 10:31:32','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('18',NULL,'province',NULL,'Balıkesir',NULL,'30','60','25','0','2025-10-13 10:31:32','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('19',NULL,'province',NULL,'Bartın',NULL,'30','60','25','0','2025-10-13 10:31:32','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('20',NULL,'province',NULL,'Batman',NULL,'30','60','25','0','2025-10-13 10:31:32','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('21',NULL,'province',NULL,'Bayburt',NULL,'30','60','25','0','2025-10-13 10:31:32','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('22',NULL,'province',NULL,'Bilecik',NULL,'30','60','25','0','2025-10-13 10:31:32','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('23',NULL,'province',NULL,'Bingöl',NULL,'30','60','25','0','2025-10-13 10:31:32','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('24',NULL,'province',NULL,'Bitlis',NULL,'30','60','25','0','2025-10-13 10:31:32','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('25',NULL,'province',NULL,'Bolu',NULL,'30','60','25','0','2025-10-13 10:31:32','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('26',NULL,'province',NULL,'Burdur',NULL,'30','60','25','0','2025-10-13 10:31:32','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('27',NULL,'province',NULL,'Bursa',NULL,'30','60','25','0','2025-10-13 10:31:32','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('28',NULL,'province',NULL,'Çanakkale',NULL,'30','60','25','0','2025-10-13 10:31:32','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('29',NULL,'province',NULL,'Çankırı',NULL,'30','60','25','0','2025-10-13 10:31:32','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('30',NULL,'province',NULL,'Çorum',NULL,'30','60','25','0','2025-10-13 10:31:32','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('31',NULL,'province',NULL,'Denizli',NULL,'30','60','25','0','2025-10-13 10:31:32','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('32',NULL,'province',NULL,'Diyarbakır',NULL,'30','60','25','0','2025-10-13 10:31:32','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('33',NULL,'province',NULL,'Düzce',NULL,'30','60','25','0','2025-10-13 10:31:32','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('34',NULL,'province',NULL,'Edirne',NULL,'30','60','25','0','2025-10-13 10:31:32','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('35',NULL,'province',NULL,'Elazığ',NULL,'30','60','25','0','2025-10-13 10:31:32','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('36',NULL,'province',NULL,'Erzincan',NULL,'30','60','25','0','2025-10-13 10:31:32','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('37',NULL,'province',NULL,'Erzurum',NULL,'30','60','25','0','2025-10-13 10:31:32','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('38',NULL,'province',NULL,'Eskişehir',NULL,'30','60','25','0','2025-10-13 10:31:32','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('39',NULL,'province',NULL,'Gaziantep',NULL,'30','60','25','0','2025-10-13 10:31:32','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('40',NULL,'province',NULL,'Giresun',NULL,'30','60','25','0','2025-10-13 10:31:32','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('41',NULL,'province',NULL,'Gümüşhane',NULL,'30','60','25','0','2025-10-13 10:31:32','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('42',NULL,'province',NULL,'Hakkari',NULL,'30','60','25','0','2025-10-13 10:31:32','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('43',NULL,'province',NULL,'Hatay',NULL,'30','60','25','0','2025-10-13 10:31:32','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('44',NULL,'province',NULL,'Iğdır',NULL,'30','60','25','0','2025-10-13 10:31:32','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('45',NULL,'province',NULL,'Isparta',NULL,'30','60','25','0','2025-10-13 10:31:32','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('46',NULL,'province',NULL,'İstanbul',NULL,'30','60','25','0','2025-10-13 10:31:32','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('47',NULL,'province',NULL,'İzmir',NULL,'30','60','25','0','2025-10-13 10:31:32','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('48',NULL,'province',NULL,'Kahramanmaraş',NULL,'30','60','25','0','2025-10-13 10:31:32','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('49',NULL,'province',NULL,'Karabük',NULL,'30','60','25','0','2025-10-13 10:31:32','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('50',NULL,'province',NULL,'Karaman',NULL,'30','60','25','0','2025-10-13 10:31:32','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('51',NULL,'province',NULL,'Kars',NULL,'30','60','25','0','2025-10-13 10:31:32','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('52',NULL,'province',NULL,'Kastamonu',NULL,'30','60','25','0','2025-10-13 10:31:32','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('53',NULL,'province',NULL,'Kayseri',NULL,'30','60','25','0','2025-10-13 10:31:32','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('54',NULL,'province',NULL,'Kırıkkale',NULL,'30','60','25','0','2025-10-13 10:31:32','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('55',NULL,'province','61','Kırklareli',NULL,'30','60','0','0','2025-10-13 10:31:32','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('56',NULL,'province',NULL,'Kırşehir',NULL,'30','60','25','0','2025-10-13 10:31:32','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('57',NULL,'province',NULL,'Kilis',NULL,'30','60','25','0','2025-10-13 10:31:32','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('58',NULL,'province',NULL,'Kocaeli',NULL,'30','60','25','0','2025-10-13 10:31:32','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('59',NULL,'province',NULL,'Konya',NULL,'30','60','25','0','2025-10-13 10:31:32','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('60',NULL,'province',NULL,'Kütahya',NULL,'30','60','25','0','2025-10-13 10:31:32','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('61',NULL,'province',NULL,'Malatya',NULL,'30','60','25','0','2025-10-13 10:31:32','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('62',NULL,'province',NULL,'Manisa',NULL,'30','60','25','0','2025-10-13 10:31:32','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('63',NULL,'province',NULL,'Mardin',NULL,'30','60','25','0','2025-10-13 10:31:32','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('64',NULL,'province',NULL,'Mersin',NULL,'30','60','25','0','2025-10-13 10:31:32','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('65',NULL,'province',NULL,'Muğla',NULL,'30','60','25','0','2025-10-13 10:31:32','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('66',NULL,'province',NULL,'Muş',NULL,'30','60','25','0','2025-10-13 10:31:32','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('67',NULL,'province',NULL,'Nevşehir',NULL,'30','60','25','0','2025-10-13 10:31:32','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('68',NULL,'province',NULL,'Niğde',NULL,'30','60','25','0','2025-10-13 10:31:32','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('69',NULL,'province',NULL,'Ordu',NULL,'30','60','25','0','2025-10-13 10:31:32','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('70',NULL,'province',NULL,'Osmaniye',NULL,'30','60','25','0','2025-10-13 10:31:32','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('71',NULL,'province',NULL,'Rize',NULL,'30','60','25','0','2025-10-13 10:31:32','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('72',NULL,'province',NULL,'Sakarya',NULL,'30','60','25','0','2025-10-13 10:31:32','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('73',NULL,'province',NULL,'Samsun',NULL,'30','60','25','0','2025-10-13 10:31:32','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('74',NULL,'province',NULL,'Siirt',NULL,'30','60','25','0','2025-10-13 10:31:32','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('75',NULL,'province',NULL,'Sinop',NULL,'30','60','25','0','2025-10-13 10:31:32','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('76',NULL,'province',NULL,'Sivas',NULL,'30','60','25','0','2025-10-13 10:31:32','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('77',NULL,'province',NULL,'Şanlıurfa',NULL,'30','60','25','0','2025-10-13 10:31:32','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('78',NULL,'province',NULL,'Şırnak',NULL,'30','60','25','0','2025-10-13 10:31:32','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('79',NULL,'province',NULL,'Tekirdağ',NULL,'30','60','25','0','2025-10-13 10:31:32','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('80',NULL,'province',NULL,'Tokat',NULL,'30','60','25','0','2025-10-13 10:31:32','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('81',NULL,'province',NULL,'Trabzon',NULL,'30','60','25','0','2025-10-13 10:31:32','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('82',NULL,'province',NULL,'Tunceli',NULL,'30','60','25','0','2025-10-13 10:31:32','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('83',NULL,'province',NULL,'Uşak',NULL,'30','60','25','0','2025-10-13 10:31:32','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('84',NULL,'province',NULL,'Van',NULL,'30','60','25','0','2025-10-13 10:31:32','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('85',NULL,'province',NULL,'Yalova',NULL,'30','60','25','0','2025-10-13 10:31:32','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('86',NULL,'province',NULL,'Yozgat',NULL,'30','60','25','0','2025-10-13 10:31:32','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('87',NULL,'province',NULL,'Zonguldak',NULL,'30','60','25','0','2025-10-13 10:31:32','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('88','46','district','34100','Kadıköy',NULL,'20','40','30','0','2025-10-13 14:17:35','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('89','46','district','34110','Beşiktaş',NULL,'25','45','35','0','2025-10-13 14:17:35','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('90','46','district','34120','Şişli',NULL,'25','45','35','0','2025-10-13 14:17:35','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('91','46','district','34130','Fatih',NULL,'30','50','32','0','2025-10-13 14:17:35','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('92','46','district','34140','Üsküdar',NULL,'25','45','30','0','2025-10-13 14:17:35','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('93','46','district','34150','Bakırköy',NULL,'30','50','32','0','2025-10-13 14:17:35','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('94','46','district','34160','Beyoğlu',NULL,'25','45','35','0','2025-10-13 14:17:35','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('95','46','district','34170','Maltepe',NULL,'30','50','28','0','2025-10-13 14:17:35','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('96','46','district','34180','Kartal',NULL,'35','55','28','0','2025-10-13 14:17:35','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('97','46','district','34190','Pendik',NULL,'40','60','25','0','2025-10-13 14:17:35','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('98','88','municipality','34710','Moda Mahallesi',NULL,'15','30','25','0','2025-10-13 14:17:35','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('99','88','municipality','34720','Caferağa Mahallesi',NULL,'15','30','25','0','2025-10-13 14:17:35','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('100','88','municipality','34730','Fenerbahçe Mahallesi',NULL,'20','35','27','0','2025-10-13 14:17:35','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('101','88','municipality','34740','Koşuyolu Mahallesi',NULL,'20','35','27','0','2025-10-13 14:17:35','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('102','88','municipality','34750','Göztepe Mahallesi',NULL,'25','40','28','0','2025-10-13 14:17:35','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('103','13','district','06100','Çankaya',NULL,'25','45','28','0','2025-10-13 14:17:35','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('104','13','district','06200','Keçiören',NULL,'30','50','25','0','2025-10-13 14:17:35','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('105','13','district','06300','Mamak',NULL,'30','50','25','0','2025-10-13 14:17:35','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('106','13','district','06400','Yenimahalle',NULL,'30','50','27','0','2025-10-13 14:17:35','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('107','13','district','06500','Etimesgut',NULL,'35','55','25','0','2025-10-13 14:17:35','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('108','47','district','35100','Konak',NULL,'25','45','28','0','2025-10-13 14:17:35','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('109','47','district','35200','Bornova',NULL,'30','50','27','0','2025-10-13 14:17:35','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('110','47','district','35300','Karşıyaka',NULL,'25','45','28','0','2025-10-13 14:17:35','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('111','47','district','35400','Buca',NULL,'30','50','26','0','2025-10-13 14:17:35','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('112','47','district','35500','Balçova',NULL,'25','45','29','0','2025-10-13 14:17:35','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('113',NULL,'province','61','Kırklareli',NULL,'30','60','25','1','2025-10-13 14:23:29','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('114','113','district','610','Merkez',NULL,'20','40','20','0','2025-10-13 14:23:29','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('115','113','district','608','Babaeski',NULL,'25','45','22','0','2025-10-13 14:23:29','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('116','113','district','609','Demirköy',NULL,'30','50','23','0','2025-10-13 14:23:29','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('117','113','district','611','Kofçaz',NULL,'35','55','24','0','2025-10-13 14:23:29','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('118','113','district','612','Lüleburgaz',NULL,'25','45','0','1','2025-10-13 14:23:29','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('119','113','district','613','Pehlivanköy',NULL,'30','50','23','0','2025-10-13 14:23:29','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('120','113','district','614','Pınarhisar',NULL,'30','50','23','0','2025-10-13 14:23:29','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('121','113','district','615','Vize',NULL,'35','55','24','0','2025-10-13 14:23:29','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('122','114','municipality','39100','Karakaş Mahallesi',NULL,'15','30','18','0','2025-10-13 14:23:29','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('123','114','municipality','39100','Kale Mahallesi',NULL,'15','30','18','0','2025-10-13 14:23:29','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('124','114','municipality','39100','Cumhuriyet Mahallesi',NULL,'15','30','18','0','2025-10-13 14:23:29','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('125','114','municipality','39100','Yayla Mahallesi',NULL,'20','35','19','0','2025-10-13 14:23:29','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('126','114','municipality','39100','Işıklar Mahallesi',NULL,'20','35','19','0','2025-10-13 14:23:29','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('127','114','municipality','39100','Fevzipaşa Mahallesi',NULL,'15','30','18','0','2025-10-13 14:23:29','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('128','114','municipality','39100','Hızırbey Mahallesi',NULL,'20','35','19','0','2025-10-13 14:23:29','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('129','115','municipality','39200','Merkez Mahallesi',NULL,'20','35','20','0','2025-10-13 14:23:29','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('130','115','municipality','39200','Orta Mahallesi',NULL,'20','35','20','0','2025-10-13 14:23:29','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('131','115','municipality','39200','Yeni Mahalle',NULL,'25','40','21','0','2025-10-13 14:23:29','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('132','115','municipality','39200','İstasyon Mahallesi',NULL,'25','40','21','0','2025-10-13 14:23:29','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('133','118','municipality','39500','Evrensekiz Mahallesi',NULL,'20','35','20','0','2025-10-13 14:23:29','2026-08-11 19:01:05');
INSERT INTO `delivery_areas` VALUES ('134','118','municipality','39500','Şehitler Mahallesi',NULL,'20','35','20','0','2025-10-13 14:23:29','2026-08-11 19:01:05');
INSERT INTO `delivery_areas` VALUES ('135','118','municipality','39500','İnönü Mahallesi',NULL,'20','35','20','0','2025-10-13 14:23:29','2026-08-11 19:01:05');
INSERT INTO `delivery_areas` VALUES ('136','118','municipality','39500','Büyükçekmece Mahallesi',NULL,'25','40','21','0','2025-10-13 14:23:29','2026-08-11 19:01:05');
INSERT INTO `delivery_areas` VALUES ('137','118','municipality','39500','Nemli Mahallesi',NULL,'25','40','21','0','2025-10-13 14:23:29','2026-08-11 19:01:05');
INSERT INTO `delivery_areas` VALUES ('138','118','municipality','39500','Selimiye Mahallesi',NULL,'20','35','20','0','2025-10-13 14:23:29','2026-08-11 19:01:05');
INSERT INTO `delivery_areas` VALUES ('139','121','municipality','39800','Büyük Cami Mahallesi',NULL,'30','45','22','0','2025-10-13 14:23:29','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('140','121','municipality','39800','Hacıhasan Mahallesi',NULL,'30','45','22','0','2025-10-13 14:23:29','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('141','121','municipality','39800','Yeni Mahalle',NULL,'35','50','23','0','2025-10-13 14:23:29','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('142','120','municipality','39700','Merkez Mahallesi',NULL,'25','40','21','0','2025-10-13 14:23:29','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('143','120','municipality','39700','Çarşı Mahallesi',NULL,'25','40','21','0','2025-10-13 14:23:29','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('144','120','municipality','39700','Zafer Mahallesi',NULL,'30','45','22','0','2025-10-13 14:23:29','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('145','116','municipality','39300','Merkez Mahallesi',NULL,'25','40','21','0','2025-10-13 14:23:29','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('146','116','municipality','39300','Yeni Mahalle',NULL,'30','45','22','0','2025-10-13 14:23:29','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('147','117','municipality','39400','Merkez Mahallesi',NULL,'30','45','22','0','2025-10-13 14:23:29','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('148','119','municipality','39600','Merkez Mahallesi',NULL,'25','40','21','0','2025-10-13 14:23:29','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('150','118','municipality',NULL,'Büyükkarıştıran',NULL,'25','45','0','0','2026-08-11 18:33:53','2026-08-11 19:01:05');
INSERT INTO `delivery_areas` VALUES ('151','55','district','608','Babaeski',NULL,'30','60','15','0','2026-08-11 18:44:38','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('152','55','district','609','Demirköy',NULL,'30','60','15','0','2026-08-11 18:44:38','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('153','55','district','611','Kofçaz',NULL,'30','60','15','0','2026-08-11 18:44:38','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('154','55','district','612','Lüleburgaz',NULL,'30','60','15','0','2026-08-11 18:44:38','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('155','55','district','610','Merkez',NULL,'30','60','15','0','2026-08-11 18:44:38','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('156','55','district','613','Pehlivanköy',NULL,'30','60','15','0','2026-08-11 18:44:38','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('157','55','district','614','Pınarhisar',NULL,'30','60','15','0','2026-08-11 18:44:38','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('158','55','district','615','Vize',NULL,'30','60','15','0','2026-08-11 18:44:38','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('159','115','municipality','164537','Ağayeri Köyü',NULL,'30','60','15','0','2026-08-11 18:44:38','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('160','115','municipality','164538','Alpullu Köyü',NULL,'30','60','15','0','2026-08-11 18:44:38','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('161','115','municipality','164563','Atatürk',NULL,'30','60','15','0','2026-08-11 18:44:38','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('162','115','municipality','207682','Büyükmandıra/Hatip',NULL,'30','60','15','0','2026-08-11 18:44:38','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('163','115','municipality','207683','Büyükmandıra/Hürriyet',NULL,'30','60','15','0','2026-08-11 18:44:38','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('164','115','municipality','207684','Büyükmandıra/Paşa',NULL,'30','60','15','0','2026-08-11 18:44:38','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('165','115','municipality','207685','Büyükmandıra/Şamdani',NULL,'30','60','15','0','2026-08-11 18:44:38','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('166','115','municipality','24540','Çavuşköy Köyü',NULL,'30','60','15','0','2026-08-11 18:44:38','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('167','115','municipality','164539','Cehilli Köyü',NULL,'30','60','15','0','2026-08-11 18:44:38','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('168','115','municipality','164540','Çengerli Köyü',NULL,'30','60','15','0','2026-08-11 18:44:38','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('169','115','municipality','24939','Cumhuriyet',NULL,'30','60','15','0','2026-08-11 18:44:38','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('170','115','municipality','164541','Demirkapı Köyü',NULL,'30','60','15','0','2026-08-11 18:44:38','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('171','115','municipality','164564','Dindoğru',NULL,'30','60','15','0','2026-08-11 18:44:38','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('172','115','municipality','164542','Düğüncülü Köyü',NULL,'30','60','15','0','2026-08-11 18:44:38','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('173','115','municipality','164543','Erikleryurdu Köyü',NULL,'30','60','15','0','2026-08-11 18:44:38','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('174','115','municipality','164544','Ertuğrul Köyü',NULL,'30','60','15','0','2026-08-11 18:44:38','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('175','115','municipality','164565','Fevziçakmak',NULL,'30','60','15','0','2026-08-11 18:44:38','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('176','115','municipality','164566','Gazikemal',NULL,'30','60','15','0','2026-08-11 18:44:38','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('177','115','municipality','24607','Gaziosmanpaşa',NULL,'30','60','15','0','2026-08-11 18:44:38','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('178','115','municipality','164567','Hacıhasan',NULL,'30','60','15','0','2026-08-11 18:44:38','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('179','115','municipality','164568','Hamidiye',NULL,'30','60','15','0','2026-08-11 18:44:38','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('180','115','municipality','164545','Hazinedar Köyü',NULL,'30','60','15','0','2026-08-11 18:44:38','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('181','115','municipality','23797','Kadıköy Köyü',NULL,'30','60','15','0','2026-08-11 18:44:38','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('182','115','municipality','164546','Karabayır Köyü',NULL,'30','60','15','0','2026-08-11 18:44:38','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('183','115','municipality','164547','Karacaoğlan Köyü',NULL,'30','60','15','0','2026-08-11 18:44:38','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('184','115','municipality','24026','Karahalil Köyü',NULL,'30','60','15','0','2026-08-11 18:44:38','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('185','115','municipality','207677','Karahalil/Birlik',NULL,'30','60','15','0','2026-08-11 18:44:38','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('186','115','municipality','207678','Karahalil/Fevziçakmak',NULL,'30','60','15','0','2026-08-11 18:44:38','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('187','115','municipality','207679','Karahalil/Halilpaşa',NULL,'30','60','15','0','2026-08-11 18:44:38','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('188','115','municipality','207680','Karahalil/Kemalpaşa',NULL,'30','60','15','0','2026-08-11 18:44:38','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('189','115','municipality','164548','Karamesutlu Köyü',NULL,'30','60','15','0','2026-08-11 18:44:38','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('190','115','municipality','23878','Katranca Köyü',NULL,'30','60','15','0','2026-08-11 18:44:38','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('191','115','municipality','164549','Kofalça Köyü',NULL,'30','60','15','0','2026-08-11 18:44:38','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('192','115','municipality','164550','Kuleli Köyü',NULL,'30','60','15','0','2026-08-11 18:44:38','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('193','115','municipality','164551','Kumrular Köyü',NULL,'30','60','15','0','2026-08-11 18:44:38','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('194','115','municipality','164569','Kurtuluş',NULL,'30','60','15','0','2026-08-11 18:44:38','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('195','115','municipality','164552','Kuzuçardağı Köyü',NULL,'30','60','15','0','2026-08-11 18:44:38','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('196','115','municipality','164554','Minnetler Köyü',NULL,'30','60','15','0','2026-08-11 18:44:38','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('197','115','municipality','164555','Müsellim Köyü',NULL,'30','60','15','0','2026-08-11 18:44:38','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('198','115','municipality','23887','Nacak Köyü',NULL,'30','60','15','0','2026-08-11 18:44:38','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('199','115','municipality','164556','Nadırlı Köyü',NULL,'30','60','15','0','2026-08-11 18:44:38','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('200','115','municipality','164557','Oruçlu Köyü',NULL,'30','60','15','0','2026-08-11 18:44:38','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('201','115','municipality','164558','Osmaniye Köyü',NULL,'30','60','15','0','2026-08-11 18:44:38','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('202','115','municipality','164559','Pancarköy Köyü',NULL,'30','60','15','0','2026-08-11 18:44:38','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('203','115','municipality','23950','Sinanlı Köyü',NULL,'30','60','15','0','2026-08-11 18:44:38','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('204','115','municipality','164560','Sofuhalil Köyü',NULL,'30','60','15','0','2026-08-11 18:44:38','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('205','115','municipality','164561','Taşağıl Köyü',NULL,'30','60','15','0','2026-08-11 18:44:38','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('206','115','municipality','24405','Taşköprü Köyü',NULL,'30','60','15','0','2026-08-11 18:44:38','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('207','115','municipality','23753','Terzili Köyü',NULL,'30','60','15','0','2026-08-11 18:44:39','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('208','115','municipality','164562','Yeniköy Köyü',NULL,'30','60','15','0','2026-08-11 18:44:39','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('209','115','municipality','23955','Yenimahalle Köyü',NULL,'30','60','15','0','2026-08-11 18:44:39','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('210','116','municipality','23096','Armutveren Köyü',NULL,'30','60','15','0','2026-08-11 18:44:39','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('211','116','municipality','24096','Avcılar Köyü',NULL,'30','60','15','0','2026-08-11 18:44:39','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('212','116','municipality','23885','Balaban Köyü',NULL,'30','60','15','0','2026-08-11 18:44:39','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('213','116','municipality','24395','Beğendik Köyü',NULL,'30','60','15','0','2026-08-11 18:44:39','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('214','116','municipality','170545','Boztaş Köyü',NULL,'30','60','15','0','2026-08-11 18:44:39','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('215','116','municipality','23349','Gökyaka Köyü',NULL,'30','60','15','0','2026-08-11 18:44:39','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('216','116','municipality','24454','Hamdibey',NULL,'30','60','15','0','2026-08-11 18:44:39','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('217','116','municipality','24548','Hamdibey Köyü',NULL,'30','60','15','0','2026-08-11 18:44:39','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('218','116','municipality','23882','İğneada Köyü',NULL,'30','60','15','0','2026-08-11 18:44:39','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('219','116','municipality','24698','İncesırt Köyü',NULL,'30','60','15','0','2026-08-11 18:44:39','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('220','116','municipality','23855','Karacadağ Köyü',NULL,'30','60','15','0','2026-08-11 18:44:39','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('221','116','municipality','24369','Limanköy Köyü',NULL,'30','60','15','0','2026-08-11 18:44:39','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('222','116','municipality','24233','Orhaniye',NULL,'30','60','15','0','2026-08-11 18:44:39','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('223','116','municipality','24702','Sarpdere Köyü',NULL,'30','60','15','0','2026-08-11 18:44:39','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('224','116','municipality','23819','Sislioba Köyü',NULL,'30','60','15','0','2026-08-11 18:44:39','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('225','116','municipality','23535','Sivriler Köyü',NULL,'30','60','15','0','2026-08-11 18:44:39','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('226','116','municipality','23620','Yeni',NULL,'30','60','15','0','2026-08-11 18:44:39','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('227','116','municipality','23478','Yeşilce Köyü',NULL,'30','60','15','0','2026-08-11 18:44:39','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('228','116','municipality','23924','Yiğitbaşı Köyü',NULL,'30','60','15','0','2026-08-11 18:44:39','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('229','117','municipality','24285','Ahlatlı Köyü',NULL,'30','60','15','0','2026-08-11 18:44:39','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('230','117','municipality','23993','Ahmetler Köyü',NULL,'30','60','15','0','2026-08-11 18:44:39','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('231','117','municipality','24409','Aşağıkanara Köyü',NULL,'30','60','15','0','2026-08-11 18:44:39','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('232','117','municipality','23523','Beyci Köyü',NULL,'30','60','15','0','2026-08-11 18:44:39','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('233','117','municipality','23826','Devletliağaç Köyü',NULL,'30','60','15','0','2026-08-11 18:44:39','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('234','117','municipality','24150','Elmacık Köyü',NULL,'30','60','15','0','2026-08-11 18:44:39','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('235','117','municipality','23586','Karaabalar Köyü',NULL,'30','60','15','0','2026-08-11 18:44:39','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('236','117','municipality','24937','Kocatarla Köyü',NULL,'30','60','15','0','2026-08-11 18:44:39','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('237','117','municipality','24357','Kocayazı Köyü',NULL,'30','60','15','0','2026-08-11 18:44:39','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('238','117','municipality','24236','Malkoçlar Köyü',NULL,'30','60','15','0','2026-08-11 18:44:39','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('239','117','municipality','25091','Taştepe Köyü',NULL,'30','60','15','0','2026-08-11 18:44:39','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('240','117','municipality','24474','Tatlıpınar Köyü',NULL,'30','60','15','0','2026-08-11 18:44:39','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('241','117','municipality','24266','Terzidere Köyü',NULL,'30','60','15','0','2026-08-11 18:44:39','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('242','117','municipality','23961','Topçular Köyü',NULL,'30','60','15','0','2026-08-11 18:44:39','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('243','117','municipality','23627','Yeni',NULL,'30','60','15','0','2026-08-11 18:44:39','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('244','117','municipality','23132','Yeşillik',NULL,'30','60','15','0','2026-08-11 18:44:39','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('245','117','municipality','23529','Yukarıkanara Köyü',NULL,'30','60','15','0','2026-08-11 18:44:39','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('246','118','municipality','164571','Ahmetbey Köyü',NULL,'30','60','15','1','2026-08-11 18:44:39','2026-08-11 19:01:05');
INSERT INTO `delivery_areas` VALUES ('247','118','municipality','207595','Ahmetbey/Dere',NULL,'30','60','15','1','2026-08-11 18:44:39','2026-08-11 19:01:05');
INSERT INTO `delivery_areas` VALUES ('248','118','municipality','207596','Ahmetbey/Gündoğu',NULL,'30','60','15','1','2026-08-11 18:44:39','2026-08-11 19:01:05');
INSERT INTO `delivery_areas` VALUES ('249','118','municipality','207594','Ahmetbey/Karşıyaka',NULL,'30','60','15','1','2026-08-11 18:44:39','2026-08-11 19:01:05');
INSERT INTO `delivery_areas` VALUES ('250','118','municipality','24365','Akçaköy Köyü',NULL,'30','60','15','1','2026-08-11 18:44:39','2026-08-11 19:01:05');
INSERT INTO `delivery_areas` VALUES ('251','118','municipality','164572','Alacaoğlu Köyü',NULL,'30','60','15','1','2026-08-11 18:44:39','2026-08-11 19:01:05');
INSERT INTO `delivery_areas` VALUES ('252','118','municipality','24161','Atatürk',NULL,'30','60','15','1','2026-08-11 18:44:39','2026-08-11 19:01:05');
INSERT INTO `delivery_areas` VALUES ('253','118','municipality','23838','Ayvalı Köyü',NULL,'30','60','15','1','2026-08-11 18:44:39','2026-08-11 19:01:05');
INSERT INTO `delivery_areas` VALUES ('254','118','municipality','207675','Barış',NULL,'30','60','15','1','2026-08-11 18:44:39','2026-08-11 19:01:05');
INSERT INTO `delivery_areas` VALUES ('255','118','municipality','205591','Büyükkarıştıran/Fatih',NULL,'30','60','15','1','2026-08-11 18:44:39','2026-08-11 19:01:05');
INSERT INTO `delivery_areas` VALUES ('256','118','municipality','205593','Büyükkarıştıran/Yeni',NULL,'30','60','15','1','2026-08-11 18:44:39','2026-08-11 19:01:05');
INSERT INTO `delivery_areas` VALUES ('257','118','municipality','205592','Büyükkarıştıran/Yıldırım',NULL,'30','60','15','1','2026-08-11 18:44:39','2026-08-11 19:01:05');
INSERT INTO `delivery_areas` VALUES ('258','118','municipality','22859','Celaliye Köyü',NULL,'30','60','15','1','2026-08-11 18:44:39','2026-08-11 19:01:05');
INSERT INTO `delivery_areas` VALUES ('259','118','municipality','164574','Çengelli Köyü',NULL,'30','60','15','1','2026-08-11 18:44:39','2026-08-11 19:01:05');
INSERT INTO `delivery_areas` VALUES ('260','118','municipality','164575','Çeşmekolu Köyü',NULL,'30','60','15','1','2026-08-11 18:44:39','2026-08-11 19:01:05');
INSERT INTO `delivery_areas` VALUES ('261','118','municipality','164573','Ceylanbirliği Köyü',NULL,'30','60','15','1','2026-08-11 18:44:39','2026-08-11 19:01:05');
INSERT INTO `delivery_areas` VALUES ('262','118','municipality','23686','Ceylanköy Köyü',NULL,'30','60','15','1','2026-08-11 18:44:39','2026-08-11 19:01:05');
INSERT INTO `delivery_areas` VALUES ('263','118','municipality','164576','Çiftlikköy Köyü',NULL,'30','60','15','1','2026-08-11 18:44:39','2026-08-11 19:01:05');
INSERT INTO `delivery_areas` VALUES ('264','118','municipality','207671','Cumhuriyet',NULL,'30','60','15','1','2026-08-11 18:44:39','2026-08-11 19:01:05');
INSERT INTO `delivery_areas` VALUES ('265','118','municipality','164577','Davutlu Köyü',NULL,'30','60','15','1','2026-08-11 18:44:39','2026-08-11 19:01:05');
INSERT INTO `delivery_areas` VALUES ('266','118','municipality','164594','Dere',NULL,'30','60','15','1','2026-08-11 18:44:39','2026-08-11 19:01:05');
INSERT INTO `delivery_areas` VALUES ('267','118','municipality','164578','Düğüncübaşı Köyü',NULL,'30','60','15','1','2026-08-11 18:44:39','2026-08-11 19:01:05');
INSERT INTO `delivery_areas` VALUES ('268','118','municipality','24187','Durak',NULL,'30','60','15','1','2026-08-11 18:44:39','2026-08-11 19:01:05');
INSERT INTO `delivery_areas` VALUES ('269','118','municipality','164579','Emirali Köyü',NULL,'30','60','15','1','2026-08-11 18:44:39','2026-08-11 19:01:05');
INSERT INTO `delivery_areas` VALUES ('270','118','municipality','164580','Ertuğrul Köyü',NULL,'30','60','15','1','2026-08-11 18:44:39','2026-08-11 19:01:05');
INSERT INTO `delivery_areas` VALUES ('271','118','municipality','164581','Eskibedir Köyü',NULL,'30','60','15','1','2026-08-11 18:44:39','2026-08-11 19:01:05');
INSERT INTO `delivery_areas` VALUES ('272','118','municipality','164582','Eskitaşlı Köyü',NULL,'30','60','15','1','2026-08-11 18:44:39','2026-08-11 19:01:05');
INSERT INTO `delivery_areas` VALUES ('273','118','municipality','204906','Evrensekiz/Fatih',NULL,'30','60','15','1','2026-08-11 18:44:39','2026-08-11 19:01:05');
INSERT INTO `delivery_areas` VALUES ('274','118','municipality','204908','Evrensekiz/Gündoğu',NULL,'30','60','15','1','2026-08-11 18:44:39','2026-08-11 19:01:05');
INSERT INTO `delivery_areas` VALUES ('275','118','municipality','204907','Evrensekiz/Kırcaali',NULL,'30','60','15','1','2026-08-11 18:44:39','2026-08-11 19:01:05');
INSERT INTO `delivery_areas` VALUES ('276','118','municipality','23977','Gençlik',NULL,'30','60','15','1','2026-08-11 18:44:39','2026-08-11 19:01:05');
INSERT INTO `delivery_areas` VALUES ('277','118','municipality','23896','Gündoğu',NULL,'30','60','15','1','2026-08-11 18:44:39','2026-08-11 19:01:05');
INSERT INTO `delivery_areas` VALUES ('278','118','municipality','23138','Güneş',NULL,'30','60','15','1','2026-08-11 18:44:39','2026-08-11 19:01:05');
INSERT INTO `delivery_areas` VALUES ('279','118','municipality','24373','Hamitabat Köyü',NULL,'30','60','15','1','2026-08-11 18:44:39','2026-08-11 19:01:05');
INSERT INTO `delivery_areas` VALUES ('280','118','municipality','164584','Hamzabey Köyü',NULL,'30','60','15','1','2026-08-11 18:44:39','2026-08-11 19:01:05');
INSERT INTO `delivery_areas` VALUES ('281','118','municipality','207672','Hürriyet',NULL,'30','60','15','1','2026-08-11 18:44:39','2026-08-11 19:01:05');
INSERT INTO `delivery_areas` VALUES ('282','118','municipality','24011','İnönü',NULL,'30','60','15','1','2026-08-11 18:44:39','2026-08-11 19:01:05');
INSERT INTO `delivery_areas` VALUES ('283','118','municipality','24406','İstiklal',NULL,'30','60','15','1','2026-08-11 18:44:39','2026-08-11 19:01:05');
INSERT INTO `delivery_areas` VALUES ('284','118','municipality','164585','Karaağaç Köyü',NULL,'30','60','15','1','2026-08-11 18:44:39','2026-08-11 19:01:05');
INSERT INTO `delivery_areas` VALUES ('285','118','municipality','24002','Karamusul Köyü',NULL,'30','60','15','1','2026-08-11 18:44:39','2026-08-11 19:01:05');
INSERT INTO `delivery_areas` VALUES ('286','118','municipality','164586','Kayabeyli Köyü',NULL,'30','60','15','1','2026-08-11 18:44:39','2026-08-11 19:01:05');
INSERT INTO `delivery_areas` VALUES ('287','118','municipality','164587','Kırıkköy Köyü',NULL,'30','60','15','1','2026-08-11 18:44:39','2026-08-11 19:01:05');
INSERT INTO `delivery_areas` VALUES ('288','118','municipality','164595','Kocasinan',NULL,'30','60','15','1','2026-08-11 18:44:39','2026-08-11 19:01:05');
INSERT INTO `delivery_areas` VALUES ('289','118','municipality','23155','Küçükkarıştıran',NULL,'30','60','15','1','2026-08-11 18:44:39','2026-08-11 19:01:05');
INSERT INTO `delivery_areas` VALUES ('290','118','municipality','164596','Kurtuluş',NULL,'30','60','15','1','2026-08-11 18:44:39','2026-08-11 19:01:05');
INSERT INTO `delivery_areas` VALUES ('291','118','municipality','164588','Müsellim Köyü',NULL,'30','60','15','1','2026-08-11 18:44:39','2026-08-11 19:01:05');
INSERT INTO `delivery_areas` VALUES ('292','118','municipality','23831','Oklalı Köyü',NULL,'30','60','15','1','2026-08-11 18:44:39','2026-08-11 19:01:05');
INSERT INTO `delivery_areas` VALUES ('293','118','municipality','164589','Ovacık Köyü',NULL,'30','60','15','1','2026-08-11 18:44:39','2026-08-11 19:01:05');
INSERT INTO `delivery_areas` VALUES ('294','118','municipality','23657','Özerler',NULL,'30','60','15','1','2026-08-11 18:44:39','2026-08-11 19:01:05');
INSERT INTO `delivery_areas` VALUES ('295','118','municipality','164590','Sakızköy Köyü',NULL,'30','60','15','1','2026-08-11 18:44:39','2026-08-11 19:01:05');
INSERT INTO `delivery_areas` VALUES ('296','118','municipality','23734','Sarıcaali Köyü',NULL,'30','60','15','1','2026-08-11 18:44:39','2026-08-11 19:01:05');
INSERT INTO `delivery_areas` VALUES ('297','118','municipality','164597','Sarımsaklı',NULL,'30','60','15','1','2026-08-11 18:44:39','2026-08-11 19:01:05');
INSERT INTO `delivery_areas` VALUES ('298','118','municipality','207670','Sekiz Kasım',NULL,'30','60','15','1','2026-08-11 18:44:39','2026-08-11 19:01:05');
INSERT INTO `delivery_areas` VALUES ('299','118','municipality','207673','Sevgi',NULL,'30','60','15','1','2026-08-11 18:44:39','2026-08-11 19:01:05');
INSERT INTO `delivery_areas` VALUES ('300','118','municipality','164591','Seyitler Köyü',NULL,'30','60','15','1','2026-08-11 18:44:39','2026-08-11 19:01:05');
INSERT INTO `delivery_areas` VALUES ('301','118','municipality','207674','Siteler',NULL,'30','60','15','1','2026-08-11 18:44:39','2026-08-11 19:01:05');
INSERT INTO `delivery_areas` VALUES ('302','118','municipality','164592','Tatarköy Köyü',NULL,'30','60','15','1','2026-08-11 18:44:39','2026-08-11 19:01:05');
INSERT INTO `delivery_areas` VALUES ('303','118','municipality','23952','Turgutbey Köyü',NULL,'30','60','15','1','2026-08-11 18:44:39','2026-08-11 19:01:05');
INSERT INTO `delivery_areas` VALUES ('304','118','municipality','24376','Umurca Köyü',NULL,'30','60','15','1','2026-08-11 18:44:39','2026-08-11 19:01:05');
INSERT INTO `delivery_areas` VALUES ('305','118','municipality','23328','Yeni',NULL,'30','60','15','1','2026-08-11 18:44:39','2026-08-11 19:01:05');
INSERT INTO `delivery_areas` VALUES ('306','118','municipality','164593','Yenibedir Köyü',NULL,'30','60','15','1','2026-08-11 18:44:39','2026-08-11 19:01:05');
INSERT INTO `delivery_areas` VALUES ('307','118','municipality','23787','Yenitaşlı Köyü',NULL,'30','60','15','1','2026-08-11 18:44:39','2026-08-11 19:01:05');
INSERT INTO `delivery_areas` VALUES ('308','118','municipality','164599','Yıldırım',NULL,'30','60','15','1','2026-08-11 18:44:39','2026-08-11 19:01:05');
INSERT INTO `delivery_areas` VALUES ('309','118','municipality','23943','Yıldız',NULL,'30','60','15','1','2026-08-11 18:44:39','2026-08-11 19:01:05');
INSERT INTO `delivery_areas` VALUES ('310','118','municipality','164600','Yılmaz',NULL,'30','60','15','1','2026-08-11 18:44:39','2026-08-11 19:01:05');
INSERT INTO `delivery_areas` VALUES ('311','118','municipality','23847','Zafer',NULL,'30','60','15','1','2026-08-11 18:44:39','2026-08-11 19:01:05');
INSERT INTO `delivery_areas` VALUES ('312','114','municipality','164490','Ahmetçe Köyü',NULL,'30','60','15','0','2026-08-11 18:44:39','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('313','114','municipality','170207','Armağan Köyü',NULL,'30','60','15','0','2026-08-11 18:44:39','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('314','114','municipality','164491','Asilbeyli Köyü',NULL,'30','60','15','0','2026-08-11 18:44:39','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('315','114','municipality','164492','Bayramdere Köyü',NULL,'30','60','15','0','2026-08-11 18:44:39','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('316','114','municipality','164493','Beypınar Köyü',NULL,'30','60','15','0','2026-08-11 18:44:39','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('317','114','municipality','170685','Çağlayık Köyü',NULL,'30','60','15','0','2026-08-11 18:44:39','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('318','114','municipality','164528','Camikebir',NULL,'30','60','15','0','2026-08-11 18:44:39','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('319','114','municipality','164494','Çayırlı Köyü',NULL,'30','60','15','0','2026-08-11 18:44:39','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('320','114','municipality','164495','Çeşmeköy Köyü',NULL,'30','60','15','0','2026-08-11 18:44:39','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('321','114','municipality','164496','Çukurpınar Köyü',NULL,'30','60','15','0','2026-08-11 18:44:39','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('322','114','municipality','164497','Değirmencik Köyü',NULL,'30','60','15','0','2026-08-11 18:44:39','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('323','114','municipality','164498','Demircihalil Köyü',NULL,'30','60','15','0','2026-08-11 18:44:39','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('324','114','municipality','170206','Dereköy Köyü',NULL,'30','60','15','0','2026-08-11 18:44:39','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('325','114','municipality','164499','Deveçatağı Köyü',NULL,'30','60','15','0','2026-08-11 18:44:39','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('326','114','municipality','164500','Dokuzhöyük Köyü',NULL,'30','60','15','0','2026-08-11 18:44:39','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('327','114','municipality','164501','Dolhan Köyü',NULL,'30','60','15','0','2026-08-11 18:44:39','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('328','114','municipality','164502','Düzorman Köyü',NULL,'30','60','15','0','2026-08-11 18:44:39','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('329','114','municipality','164503','Erikler Köyü',NULL,'30','60','15','0','2026-08-11 18:44:39','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('330','114','municipality','164504','Eriklice Köyü',NULL,'30','60','15','0','2026-08-11 18:44:39','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('331','114','municipality','164505','Geçitağzı Köyü',NULL,'30','60','15','0','2026-08-11 18:44:39','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('332','114','municipality','164529','Hacızekeriya',NULL,'30','60','15','0','2026-08-11 18:44:39','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('333','114','municipality','164530','Hamidiye',NULL,'30','60','15','0','2026-08-11 18:44:39','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('334','114','municipality','164531','Haticehatun',NULL,'30','60','15','0','2026-08-11 18:44:39','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('335','114','municipality','164506','İnece Köyü',NULL,'30','60','15','0','2026-08-11 18:44:39','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('336','114','municipality','164507','Kadıköy Köyü',NULL,'30','60','15','0','2026-08-11 18:44:39','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('337','114','municipality','164508','Kapaklı Köyü',NULL,'30','60','15','0','2026-08-11 18:44:39','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('338','114','municipality','164532','Karacaibrahim',NULL,'30','60','15','0','2026-08-11 18:44:39','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('339','114','municipality','170686','Karadere Köyü',NULL,'30','60','15','0','2026-08-11 18:44:39','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('340','114','municipality','164509','Karahamza Köyü',NULL,'30','60','15','0','2026-08-11 18:44:39','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('341','114','municipality','164533','Karahıdır',NULL,'30','60','15','0','2026-08-11 18:44:39','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('342','114','municipality','164534','Karakaş',NULL,'30','60','15','0','2026-08-11 18:44:39','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('343','114','municipality','164510','Karakoç Köyü',NULL,'30','60','15','0','2026-08-11 18:44:39','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('344','114','municipality','164511','Karıncak Köyü',NULL,'30','60','15','0','2026-08-11 18:44:39','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('345','114','municipality','164512','Kavakdere Köyü',NULL,'30','60','15','0','2026-08-11 18:44:39','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('346','114','municipality','164513','Kavaklı Köyü',NULL,'30','60','15','0','2026-08-11 18:44:39','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('347','114','municipality','164514','Kayalı Köyü',NULL,'30','60','15','0','2026-08-11 18:44:39','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('348','114','municipality','164515','Kızılcıkdere Köyü',NULL,'30','60','15','0','2026-08-11 18:44:39','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('349','114','municipality','164516','Kocahıdır Köyü',NULL,'30','60','15','0','2026-08-11 18:44:39','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('350','114','municipality','164517','Koruköy Köyü',NULL,'30','60','15','0','2026-08-11 18:44:39','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('351','114','municipality','164518','Koyunbaba Köyü',NULL,'30','60','15','0','2026-08-11 18:44:39','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('352','114','municipality','23840','Kula Köyü',NULL,'30','60','15','0','2026-08-11 18:44:39','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('353','114','municipality','164519','Kuzulu Köyü',NULL,'30','60','15','0','2026-08-11 18:44:39','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('354','114','municipality','164520','Paşayeri Köyü',NULL,'30','60','15','0','2026-08-11 18:44:39','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('355','114','municipality','170687','Şükrüpaşa Köyü',NULL,'30','60','15','0','2026-08-11 18:44:39','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('356','114','municipality','164521','Tekkeşeyhler Köyü',NULL,'30','60','15','0','2026-08-11 18:44:39','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('357','114','municipality','164535','Tellakzade',NULL,'30','60','15','0','2026-08-11 18:44:39','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('358','114','municipality','164522','Ürünlü Köyü',NULL,'30','60','15','0','2026-08-11 18:44:39','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('359','114','municipality','164523','Üsküp Köyü',NULL,'30','60','15','0','2026-08-11 18:44:39','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('360','114','municipality','207601','Üsküp/Cevatpaşa',NULL,'30','60','15','0','2026-08-11 18:44:39','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('361','114','municipality','207600','Üsküp/Gündoğdu',NULL,'30','60','15','0','2026-08-11 18:44:39','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('362','114','municipality','207598','Üsküp/Kemalpaşa',NULL,'30','60','15','0','2026-08-11 18:44:39','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('363','114','municipality','207599','Üsküp/Mehmetçavuş',NULL,'30','60','15','0','2026-08-11 18:44:39','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('364','114','municipality','164524','Üsküpdere Köyü',NULL,'30','60','15','0','2026-08-11 18:44:39','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('365','114','municipality','164536','Yapraklı',NULL,'30','60','15','0','2026-08-11 18:44:39','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('366','114','municipality','164525','Yoğuntaş Köyü',NULL,'30','60','15','0','2026-08-11 18:44:39','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('367','114','municipality','164526','Yörükbayır Köyü',NULL,'30','60','15','0','2026-08-11 18:44:39','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('368','114','municipality','164527','Yündalan Köyü',NULL,'30','60','15','0','2026-08-11 18:44:39','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('369','119','municipality','24284','Akarca Köyü',NULL,'30','60','15','0','2026-08-11 18:44:39','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('370','119','municipality','24312','Doğanca Köyü',NULL,'30','60','15','0','2026-08-11 18:44:39','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('371','119','municipality','24445','Ergene',NULL,'30','60','15','0','2026-08-11 18:44:39','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('372','119','municipality','164601','Hıdırca Köyü',NULL,'30','60','15','0','2026-08-11 18:44:39','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('373','119','municipality','23595','İmampazarı Köyü',NULL,'30','60','15','0','2026-08-11 18:44:39','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('374','119','municipality','164603','Kazımdirik',NULL,'30','60','15','0','2026-08-11 18:44:39','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('375','119','municipality','23796','Kumköy Köyü',NULL,'30','60','15','0','2026-08-11 18:44:39','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('376','119','municipality','164604','Kurtuluş',NULL,'30','60','15','0','2026-08-11 18:44:39','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('377','119','municipality','23755','Kuştepe Köyü',NULL,'30','60','15','0','2026-08-11 18:44:39','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('378','119','municipality','164602','Tilkipınar Köyü',NULL,'30','60','15','0','2026-08-11 18:44:39','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('379','119','municipality','23245','Yeşilova Köyü',NULL,'30','60','15','0','2026-08-11 18:44:39','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('380','120','municipality','164605','Akören Köyü',NULL,'30','60','15','0','2026-08-11 18:44:39','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('381','120','municipality','164618','Ataköy Köyü',NULL,'30','60','15','0','2026-08-11 18:44:39','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('382','120','municipality','164620','Beylik',NULL,'30','60','15','0','2026-08-11 18:44:39','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('383','120','municipality','164621','Camiikebir',NULL,'30','60','15','0','2026-08-11 18:44:39','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('384','120','municipality','164607','Çayırdere Köyü',NULL,'30','60','15','0','2026-08-11 18:44:39','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('385','120','municipality','164606','Cevizköy Köyü',NULL,'30','60','15','0','2026-08-11 18:44:39','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('386','120','municipality','164622','Dere',NULL,'30','60','15','0','2026-08-11 18:44:39','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('387','120','municipality','164608','Erenler Köyü',NULL,'30','60','15','0','2026-08-11 18:44:39','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('388','120','municipality','164609','Evciler Köyü',NULL,'30','60','15','0','2026-08-11 18:44:39','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('389','120','municipality','164610','Hacıfaklı Köyü',NULL,'30','60','15','0','2026-08-11 18:44:39','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('390','120','municipality','164611','İslambeyli Köyü',NULL,'30','60','15','0','2026-08-11 18:44:39','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('391','120','municipality','164612','Kaynarca Köyü',NULL,'30','60','15','0','2026-08-11 18:44:39','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('392','120','municipality','206887','Kaynarca/Akarlar',NULL,'30','60','15','0','2026-08-11 18:44:39','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('393','120','municipality','206886','Kaynarca/Işıklar',NULL,'30','60','15','0','2026-08-11 18:44:39','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('394','120','municipality','206885','Kaynarca/Yenicami',NULL,'30','60','15','0','2026-08-11 18:44:39','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('395','120','municipality','164613','Kurudere Köyü',NULL,'30','60','15','0','2026-08-11 18:44:39','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('396','120','municipality','164623','Orta',NULL,'30','60','15','0','2026-08-11 18:44:39','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('397','120','municipality','164614','Osmancık Köyü',NULL,'30','60','15','0','2026-08-11 18:44:39','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('398','120','municipality','164615','Poyralı Köyü',NULL,'30','60','15','0','2026-08-11 18:44:39','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('399','120','municipality','164616','Sütlüce Köyü',NULL,'30','60','15','0','2026-08-11 18:44:39','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('400','120','municipality','164617','Tozaklı Köyü',NULL,'30','60','15','0','2026-08-11 18:44:39','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('401','120','municipality','164619','Yenice Köyü',NULL,'30','60','15','0','2026-08-11 18:44:39','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('402','121','municipality','23872','Akıncılar Köyü',NULL,'30','60','15','0','2026-08-11 18:44:39','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('403','121','municipality','23621','Akpınar Köyü',NULL,'30','60','15','0','2026-08-11 18:44:39','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('404','121','municipality','24141','Aksicim Köyü',NULL,'30','60','15','0','2026-08-11 18:44:39','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('405','121','municipality','24083','Balkaya Köyü',NULL,'30','60','15','0','2026-08-11 18:44:39','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('406','121','municipality','207669','Çakıllı/Cumhuriyet',NULL,'30','60','15','0','2026-08-11 18:44:39','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('407','121','municipality','207668','Çakıllı/Hürriyet',NULL,'30','60','15','0','2026-08-11 18:44:39','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('408','121','municipality','207667','Çakıllı/Zafer',NULL,'30','60','15','0','2026-08-11 18:44:39','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('409','121','municipality','24425','Çavuşköy Köyü',NULL,'30','60','15','0','2026-08-11 18:44:39','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('410','121','municipality','23902','Çüvenli Köyü',NULL,'30','60','15','0','2026-08-11 18:44:39','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('411','121','municipality','23792','Develi Köyü',NULL,'30','60','15','0','2026-08-11 18:44:39','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('412','121','municipality','24246','Devlet',NULL,'30','60','15','0','2026-08-11 18:44:39','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('413','121','municipality','23866','Doğanca Köyü',NULL,'30','60','15','0','2026-08-11 18:44:39','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('414','121','municipality','24802','Düzova Köyü',NULL,'30','60','15','0','2026-08-11 18:44:39','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('415','121','municipality','23685','Evren',NULL,'30','60','15','0','2026-08-11 18:44:39','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('416','121','municipality','24205','Evrencik Köyü',NULL,'30','60','15','0','2026-08-11 18:44:39','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('417','121','municipality','23285','Evrenli Köyü',NULL,'30','60','15','0','2026-08-11 18:44:39','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('418','121','municipality','24571','Gazi',NULL,'30','60','15','0','2026-08-11 18:44:39','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('419','121','municipality','23551','Hamidiye Köyü',NULL,'30','60','15','0','2026-08-11 18:44:39','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('420','121','municipality','24458','Hasbuğa Köyü',NULL,'30','60','15','0','2026-08-11 18:44:39','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('421','121','municipality','23800','Kale',NULL,'30','60','15','0','2026-08-11 18:44:39','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('422','121','municipality','24160','Kışlacık Köyü',NULL,'30','60','15','0','2026-08-11 18:44:39','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('423','121','municipality','24077','Kıyıköy Köyü',NULL,'30','60','15','0','2026-08-11 18:44:39','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('424','121','municipality','207570','Kıyıköy/Cumhuriyet',NULL,'30','60','15','0','2026-08-11 18:44:39','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('425','121','municipality','207572','Kıyıköy/Güven',NULL,'30','60','15','0','2026-08-11 18:44:39','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('426','121','municipality','207571','Kıyıköy/Kale',NULL,'30','60','15','0','2026-08-11 18:44:39','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('427','121','municipality','24462','Kızılağaç Köyü',NULL,'30','60','15','0','2026-08-11 18:44:39','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('428','121','municipality','24179','Kömürköy Köyü',NULL,'30','60','15','0','2026-08-11 18:44:39','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('429','121','municipality','24059','Küçükyayla Köyü',NULL,'30','60','15','0','2026-08-11 18:44:39','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('430','121','municipality','24131','Mehmetakif',NULL,'30','60','15','0','2026-08-11 18:44:39','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('431','121','municipality','23746','Müsellim Köyü',NULL,'30','60','15','0','2026-08-11 18:44:39','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('432','121','municipality','23149','Namıkkemal',NULL,'30','60','15','0','2026-08-11 18:44:39','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('433','121','municipality','23028','Okçular Köyü',NULL,'30','60','15','0','2026-08-11 18:44:39','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('434','121','municipality','24078','Pazarlı Köyü',NULL,'30','60','15','0','2026-08-11 18:44:39','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('435','121','municipality','24171','Sergen Köyü',NULL,'30','60','15','0','2026-08-11 18:44:39','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('436','121','municipality','23719','Sofular Köyü',NULL,'30','60','15','0','2026-08-11 18:44:39','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('437','121','municipality','23782','Soğucak Köyü',NULL,'30','60','15','0','2026-08-11 18:44:39','2026-08-11 19:00:48');
INSERT INTO `delivery_areas` VALUES ('438','121','municipality','23942','Topçuköy Köyü',NULL,'30','60','15','0','2026-08-11 18:44:39','2026-08-11 19:00:48');

DROP TABLE IF EXISTS `depos`;
CREATE TABLE `depos` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `depokodu` text NOT NULL,
  `depoadi` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;

INSERT INTO `depos` VALUES ('1','30','Merkez Depo','2020-01-22 08:10:48','2024-04-29 14:35:23');
INSERT INTO `depos` VALUES ('2','50','??ade Depo','2020-01-22 08:11:22','2024-04-29 16:22:08');

DROP TABLE IF EXISTS `device_tokens`;
CREATE TABLE `device_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `platform` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'web',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `device_tokens_user_id_token_unique` (`user_id`,`token`),
  CONSTRAINT `device_tokens_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `fatura_islems`;
CREATE TABLE `fatura_islems` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `faturaId` int NOT NULL,
  `kalemId` int NOT NULL,
  `faturaTipi` int NOT NULL DEFAULT '0' COMMENT '0 ise satisFaturas?? , 1 ise alisFaturas??',
  `urunId` int NOT NULL,
  `depoId` int NOT NULL,
  `satistemsilciId` int NOT NULL,
  `faturaTarih` date NOT NULL,
  `faturaNo` varchar(255) NOT NULL,
  `musteriId` int NOT NULL,
  `urunKodu` int NOT NULL,
  `miktar` int NOT NULL,
  `urunBirim` varchar(20) NOT NULL,
  `urunbirimEfatkod` varchar(20) NOT NULL,
  `fiyat` float(9,2) NOT NULL,
  `kdv` int DEFAULT '0',
  `isk1` float(9,2) DEFAULT '0.00',
  `iskOrani1tutar` float(9,2) NOT NULL,
  `isk2` float(9,2) DEFAULT '0.00',
  `iskOrani2tutar` float(9,2) NOT NULL,
  `isk3` float(9,2) DEFAULT '0.00',
  `iskOrani3tutar` float(9,2) NOT NULL,
  `iskonto_toplam` float(9,2) NOT NULL,
  `kdvOrani` int DEFAULT '0',
  `kdv0tutar` decimal(9,2) DEFAULT '0.00',
  `kdv1tutar` decimal(9,2) DEFAULT '0.00',
  `kdv8tutar` decimal(9,2) DEFAULT '0.00',
  `kdv18tutar` decimal(9,2) DEFAULT '0.00',
  `kdv26tutar` decimal(9,2) DEFAULT '0.00',
  `kdv0matrah` decimal(9,2) DEFAULT '0.00',
  `kdv1matrah` decimal(9,2) DEFAULT '0.00',
  `kdv8matrah` decimal(9,2) DEFAULT '0.00',
  `kdv18matrah` decimal(9,2) DEFAULT '0.00',
  `kdv26matrah` decimal(9,2) DEFAULT '0.00',
  `araToplam` float(9,2) NOT NULL,
  `kdvToplam` float(9,2) NOT NULL,
  `genelToplam` float(9,2) NOT NULL,
  `borc` double DEFAULT '0',
  `giris` int DEFAULT '0',
  `cikis` int DEFAULT '0',
  `alacak` double DEFAULT '0',
  `text` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


DROP TABLE IF EXISTS `faturas`;
CREATE TABLE `faturas` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `faturaTipi` int NOT NULL DEFAULT '0' COMMENT '0 ise satisFaturas?? , 1 ise alisFaturas??',
  `faturaNo` varchar(255) NOT NULL,
  `musteriId` int NOT NULL,
  `kullaniciId` int NOT NULL,
  `satistemsilciId` int NOT NULL,
  `depoId` int NOT NULL,
  `vergiNumarasi` text NOT NULL,
  `faturaTarih` date NOT NULL,
  `borc` double(9,2) DEFAULT '0.00',
  `alacak` double(9,2) DEFAULT '0.00',
  `faturasayisi` int DEFAULT '1',
  `order_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `efaturamusterisi` int NOT NULL DEFAULT '0' COMMENT '0 ise Efatura, 1 ise Earsiv',
  `kasaId` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


DROP TABLE IF EXISTS `footer_infos`;
CREATE TABLE `footer_infos` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `short_info` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `copyright` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `footer_infos` VALUES ('1','Bölgenizin yemek sipariş platformu. Favori restoranlarınız, hızlı teslimat ve taze lezzetler Harbi Yemek ile bir arada.','Lüleburgaz / Kırklareli','0 544 915 50 02','harbiyemek@hotmail.com','© 2026 Harbi Yemek. Tüm hakları saklıdır.','2023-09-20 00:14:31','2026-08-14 20:39:54');

DROP TABLE IF EXISTS `jobs`;
CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `kasahesapalmaislems`;
CREATE TABLE `kasahesapalmaislems` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `faturaId` int NOT NULL,
  `faturaTipi` int NOT NULL DEFAULT '0' COMMENT '0 ise satisFaturas?? , 1 ise alisFaturas??',
  `satistemsilciId` int NOT NULL,
  `faturaTarih` date NOT NULL,
  `faturaNo` varchar(255) NOT NULL,
  `musteriId` int NOT NULL,
  `miktar` int DEFAULT NULL,
  `fiyat` float(9,2) DEFAULT NULL,
  `borc` double DEFAULT '0',
  `alacak` double DEFAULT '0',
  `aciklama` text,
  `bankaId` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `islemTipi` int NOT NULL DEFAULT '0' COMMENT '0 ise Masraf , 1 ise Art??Sat????, 2 ise Kkar??, 3 ise Veresiye, 4 ise Tahsilat',
  `tutar` double(9,2) NOT NULL,
  `islemaciklama` int NOT NULL COMMENT '0 ise Sabah Kasa A????l???? Nakit , 1 ise Ak??am Kasa Hesap Alma , 2 ise Ak??am Kasa A????l???? Nakit ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3045 DEFAULT CHARSET=utf8mb3;

INSERT INTO `kasahesapalmaislems` VALUES ('1199','254','14','6','2025-01-02','12553','0',NULL,NULL,'0','0','0','0','2025-01-02 15:45:16','2025-01-02 15:45:16','0','0','2');
INSERT INTO `kasahesapalmaislems` VALUES ('1222','256','14','2','2025-01-02','12555','0',NULL,NULL,'0','0','0','0','2025-01-02 15:56:29','2025-01-02 15:56:29','0','0','0');
INSERT INTO `kasahesapalmaislems` VALUES ('1223','255','14','6','2025-01-02','12554','0',NULL,NULL,'0','19503.06','KKart?? G??nsonu','7','2025-01-03 09:46:14','2025-01-03 09:46:14','2','19503.06','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1224','255','14','6','2025-01-02','12554','0',NULL,NULL,'0','30','EKMEK','0','2025-01-03 09:46:14','2025-01-03 09:46:14','0','30','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1225','255','14','6','2025-01-02','12554','0',NULL,NULL,'0','1095.6','TRAPZON','0','2025-01-03 09:46:14','2025-01-03 09:46:14','0','1095.6','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1226','255','14','6','2025-01-02','12554','0',NULL,NULL,'0','184','FATMA GECKO','0','2025-01-03 09:46:14','2025-01-03 09:46:14','0','184','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1227','255','14','6','2025-01-02','12554','0',NULL,NULL,'0','27','EROL KAHVE','0','2025-01-03 09:46:14','2025-01-03 09:46:14','0','27','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1228','255','14','6','2025-01-02','12554','0',NULL,NULL,'0','55','EROL','0','2025-01-03 09:46:14','2025-01-03 09:46:14','0','55','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1229','255','14','6','2025-01-02','12554','0',NULL,NULL,'0','79','??R??N ??ADE','0','2025-01-03 09:46:14','2025-01-03 09:46:14','0','79','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1230','255','14','6','2025-01-02','12554','0',NULL,NULL,'0','51','TAHS??N YEMEK','0','2025-01-03 09:46:14','2025-01-03 09:46:14','0','51','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1231','255','14','6','2025-01-02','12554','0',NULL,NULL,'0','15','KAHVE','0','2025-01-03 09:46:14','2025-01-03 09:46:14','0','15','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1232','255','14','6','2025-01-02','12554','0',NULL,NULL,'0','2338.75','KARI??TIRAN EKM','0','2025-01-03 09:46:14','2025-01-03 09:46:14','0','2338.75','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1233','255','14','6','2025-01-02','12554','0',NULL,NULL,'0','5','B??RCAN AYIR','0','2025-01-03 09:46:14','2025-01-03 09:46:14','0','5','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1234','255','14','6','2025-01-02','12554','0',NULL,NULL,'0','7','SELO','0','2025-01-03 09:46:14','2025-01-03 09:46:14','0','7','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1235','255','14','6','2025-01-02','12554','0',NULL,NULL,'0','74.5','ERAY','0','2025-01-03 09:46:14','2025-01-03 09:46:14','0','74.5','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1236','255','14','6','2025-01-02','12554','0',NULL,NULL,'0','6','DURSUN','0','2025-01-03 09:46:14','2025-01-03 09:46:14','0','6','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1237','255','14','6','2025-01-02','12554','0',NULL,NULL,'173','0','KAVURMA','0','2025-01-03 09:46:14','2025-01-03 09:46:14','1','173','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1238','255','14','6','2025-01-02','12554','0',NULL,NULL,'250','0','ESK HESAP','0','2025-01-03 09:46:14','2025-01-03 09:46:14','1','250','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1239','255','14','6','2025-01-02','12554','0',NULL,NULL,'15','0','TATLI','0','2025-01-03 09:46:14','2025-01-03 09:46:14','1','15','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1240','255','14','6','2025-01-02','12554','0',NULL,NULL,'150','0','T??P KAFASI','0','2025-01-03 09:46:14','2025-01-03 09:46:14','1','150','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1241','255','14','6','2025-01-02','12554','0',NULL,NULL,'5','0','KART','0','2025-01-03 09:46:14','2025-01-03 09:46:14','1','5','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1242','255','14','6','2025-01-02','12554','0',NULL,NULL,'80','0','BOZUK PARA','0','2025-01-03 09:46:14','2025-01-03 09:46:14','1','80','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1243','255','14','6','2025-01-02','12554','0',NULL,NULL,'7090','0','MAZOT','0','2025-01-03 09:46:14','2025-01-03 09:46:14','1','7090','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1244','255','14','6','2025-01-02','12554','0',NULL,NULL,'0','4902.7','KKart?? G??nsonu','0','2025-01-03 09:46:14','2025-01-03 09:46:14','2','4902.7','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1245','257','14','3','2025-01-03','12556','0',NULL,NULL,'0','6434.4','KKart?? G??nsonu','0','2025-01-03 15:04:20','2025-01-03 15:04:20','2','6434.4','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1246','257','14','3','2025-01-03','12556','0',NULL,NULL,'0','1500','egzoz','0','2025-01-03 15:04:20','2025-01-03 15:04:20','0','1500','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1247','257','14','3','2025-01-03','12556','0',NULL,NULL,'0','6000','makas tamir','0','2025-01-03 15:04:20','2025-01-03 15:04:20','0','6000','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1248','257','14','3','2025-01-03','12556','0',NULL,NULL,'0','350','yemek','0','2025-01-03 15:04:20','2025-01-03 15:04:20','0','350','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1249','257','14','3','2025-01-03','12556','0',NULL,NULL,'4475','0','erol nakit verdi volkana','0','2025-01-03 15:04:20','2025-01-03 15:04:20','1','4475','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1250','258','14','6','2025-01-03','12557','0',NULL,NULL,'0','0','0','0','2025-01-03 15:16:47','2025-01-03 15:16:47','0','0','2');
INSERT INTO `kasahesapalmaislems` VALUES ('1251','259','14','6','2025-01-03','12558','0',NULL,NULL,'0','3931.77','KKart?? G??nsonu','3','2025-01-03 15:30:03','2025-01-03 15:30:03','2','3931.77','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1252','259','14','6','2025-01-03','12558','0',NULL,NULL,'0','9984.29','KKart?? G??nsonu','7','2025-01-03 15:30:03','2025-01-03 15:30:03','2','9984.29','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1253','259','14','6','2025-01-03','12558','0',NULL,NULL,'0','21','kahve','0','2025-01-03 15:30:03','2025-01-03 15:30:03','0','21','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1254','259','14','6','2025-01-03','12558','0',NULL,NULL,'0','1079','TRAPZON','0','2025-01-03 15:30:03','2025-01-03 15:30:03','0','1079','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1255','259','14','6','2025-01-03','12558','0',NULL,NULL,'0','550','damak k??fte','0','2025-01-03 15:30:03','2025-01-03 15:30:03','0','550','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1256','259','14','6','2025-01-03','12558','0',NULL,NULL,'0','30','fatma gecko','0','2025-01-03 15:30:03','2025-01-03 15:30:03','0','30','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1257','259','14','6','2025-01-03','12558','0',NULL,NULL,'0','140','g??khan ucar','0','2025-01-03 15:30:03','2025-01-03 15:30:03','0','140','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1258','259','14','6','2025-01-03','12558','0',NULL,NULL,'0','12','fatma','0','2025-01-03 15:30:03','2025-01-03 15:30:03','0','12','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1259','259','14','6','2025-01-03','12558','0',NULL,NULL,'0','20','erol','0','2025-01-03 15:30:03','2025-01-03 15:30:03','0','20','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1260','259','14','6','2025-01-03','12558','0',NULL,NULL,'0','444','hasan evergen','0','2025-01-03 15:30:03','2025-01-03 15:30:03','0','444','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1261','259','14','6','2025-01-03','12558','0',NULL,NULL,'0','28.5','yemek','0','2025-01-03 15:30:03','2025-01-03 15:30:03','0','28.5','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1262','259','14','6','2025-01-03','12558','0',NULL,NULL,'0','83','erol','0','2025-01-03 15:30:03','2025-01-03 15:30:03','0','83','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1263','259','14','6','2025-01-03','12558','0',NULL,NULL,'0','2293.75','ekmek','0','2025-01-03 15:30:03','2025-01-03 15:30:03','0','2293.75','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1264','259','14','6','2025-01-03','12558','0',NULL,NULL,'0','250','murat ??????k','0','2025-01-03 15:30:03','2025-01-03 15:30:03','0','250','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1265','259','14','6','2025-01-03','12558','0',NULL,NULL,'0','775','k??pek mama','0','2025-01-03 15:30:03','2025-01-03 15:30:03','0','775','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1266','259','14','6','2025-01-03','12558','0',NULL,NULL,'0','191','selo','0','2025-01-03 15:30:03','2025-01-03 15:30:03','0','191','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1267','259','14','6','2025-01-03','12558','0',NULL,NULL,'1211','0','oyuncak','0','2025-01-03 15:30:03','2025-01-03 15:30:03','1','1211','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1268','259','14','6','2025-01-03','12558','0',NULL,NULL,'5760','0','mazot','0','2025-01-03 15:30:03','2025-01-03 15:30:03','1','5760','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1269','260','14','6','2025-01-03','12559','0',NULL,NULL,'0','0','0','0','2025-01-03 15:38:32','2025-01-03 15:38:32','0','0','0');
INSERT INTO `kasahesapalmaislems` VALUES ('1270','261','14','3','2025-01-04','12560','0',NULL,NULL,'0','1000','KKart?? G??nsonu','7','2025-01-04 13:47:47','2025-01-04 13:47:47','2','1000','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1271','261','14','3','2025-01-04','12560','0',NULL,NULL,'0','175','yemek','0','2025-01-04 13:47:47','2025-01-04 13:47:47','0','175','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1272','261','14','3','2025-01-04','12560','0',NULL,NULL,'0','950','toner dolumu','0','2025-01-04 13:47:47','2025-01-04 13:47:47','0','950','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1273','262','14','2','2025-01-04','12561','0',NULL,NULL,'0','0','0','0','2025-01-04 14:32:01','2025-01-04 14:32:01','0','0','2');
INSERT INTO `kasahesapalmaislems` VALUES ('1274','263','14','2','2025-01-04','12562','0',NULL,NULL,'0','27824.31','KKart?? G??nsonu','7','2025-01-04 14:43:41','2025-01-04 14:43:41','2','27824.31','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1275','263','14','2','2025-01-04','12562','0',NULL,NULL,'0','5689.11','KKart?? G??nsonu','3','2025-01-04 14:43:41','2025-01-04 14:43:41','2','5689.11','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1276','263','14','2','2025-01-04','12562','0',NULL,NULL,'0','15','kahve','0','2025-01-04 14:43:41','2025-01-04 14:43:41','0','15','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1277','263','14','2','2025-01-04','12562','0',NULL,NULL,'0','365.25','TRAPZON','0','2025-01-04 14:43:41','2025-01-04 14:43:41','0','365.25','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1278','263','14','2','2025-01-04','12562','0',NULL,NULL,'0','120.5','fatma','0','2025-01-04 14:43:41','2025-01-04 14:43:41','0','120.5','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1279','263','14','2','2025-01-04','12562','0',NULL,NULL,'0','18','selo','0','2025-01-04 14:43:41','2025-01-04 14:43:41','0','18','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1280','263','14','2','2025-01-04','12562','0',NULL,NULL,'0','67','??r??n iade','0','2025-01-04 14:43:41','2025-01-04 14:43:41','0','67','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1281','263','14','2','2025-01-04','12562','0',NULL,NULL,'0','72','selo','0','2025-01-04 14:43:41','2025-01-04 14:43:41','0','72','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1282','263','14','2','2025-01-04','12562','0',NULL,NULL,'0','57','TAHS??N','0','2025-01-04 14:43:41','2025-01-04 14:43:41','0','57','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1283','263','14','2','2025-01-04','12562','0',NULL,NULL,'0','175','??RFAN','0','2025-01-04 14:43:41','2025-01-04 14:43:41','0','175','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1284','263','14','2','2025-01-04','12562','0',NULL,NULL,'0','75.6','SELO','0','2025-01-04 14:43:41','2025-01-04 14:43:41','0','75.6','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1285','263','14','2','2025-01-04','12562','0',NULL,NULL,'0','2121.25','EKMEK ??DEME','0','2025-01-04 14:43:41','2025-01-04 14:43:41','0','2121.25','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1286','263','14','2','2025-01-04','12562','0',NULL,NULL,'1244','0','BOZUK PARA','0','2025-01-04 14:43:41','2025-01-04 14:43:41','1','1244','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1287','263','14','2','2025-01-04','12562','0',NULL,NULL,'5400','0','MAZOT','0','2025-01-04 14:43:41','2025-01-04 14:43:41','1','5400','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1288','264','14','6','2025-01-04','12563','0',NULL,NULL,'0','0','0','0','2025-01-04 14:56:14','2025-01-04 14:56:14','0','0','0');
INSERT INTO `kasahesapalmaislems` VALUES ('1289','265','14','3','2025-01-06','12564','0',NULL,NULL,'0','3081.29','KKart?? G??nsonu','7','2025-01-06 14:16:09','2025-01-06 14:16:09','2','3081.29','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1290','265','14','3','2025-01-06','12564','0',NULL,NULL,'0','350','yemek','0','2025-01-06 14:16:09','2025-01-06 14:16:09','0','350','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1291','265','14','3','2025-01-06','12564','0',NULL,NULL,'0','1700','mazot','0','2025-01-06 14:16:09','2025-01-06 14:16:09','0','1700','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1292','266','14','2','2025-01-06','12565','0',NULL,NULL,'0','0','0','0','2025-01-06 15:01:24','2025-01-06 15:01:24','0','0','2');
INSERT INTO `kasahesapalmaislems` VALUES ('1293','267','14','2','2025-01-06','12566','0',NULL,NULL,'0','6492.31','KKart?? G??nsonu','7','2025-01-06 15:09:35','2025-01-06 15:09:35','2','6492.31','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1294','267','14','2','2025-01-06','12566','0',NULL,NULL,'0','556','KKart?? G??nsonu','3','2025-01-06 15:09:35','2025-01-06 15:09:35','2','556','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1295','267','14','2','2025-01-06','12566','0',NULL,NULL,'0','990','TRAPZON','0','2025-01-06 15:09:35','2025-01-06 15:09:35','0','990','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1296','267','14','2','2025-01-06','12566','0',NULL,NULL,'0','165','EROL','0','2025-01-06 15:09:35','2025-01-06 15:09:35','0','165','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1297','267','14','2','2025-01-06','12566','0',NULL,NULL,'0','1600','SELO','0','2025-01-06 15:09:35','2025-01-06 15:09:35','0','1600','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1298','267','14','2','2025-01-06','12566','0',NULL,NULL,'0','75','SAVA?? ??AKAR','0','2025-01-06 15:09:35','2025-01-06 15:09:35','0','75','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1299','267','14','2','2025-01-06','12566','0',NULL,NULL,'0','2350','KARI??TIRAN','0','2025-01-06 15:09:35','2025-01-06 15:09:35','0','2350','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1300','267','14','2','2025-01-06','12566','0',NULL,NULL,'100','0','KAHVE','0','2025-01-06 15:09:35','2025-01-06 15:09:35','1','100','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1301','267','14','2','2025-01-06','12566','0',NULL,NULL,'75','0','JARJ','0','2025-01-06 15:09:35','2025-01-06 15:09:35','1','75','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1302','268','14','3','2025-01-07','12567','0',NULL,NULL,'0','250','ARA?? TAM??R','0','2025-01-07 13:51:24','2025-01-07 13:51:24','0','250','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1303','268','14','3','2025-01-07','12567','0',NULL,NULL,'0','175','YEMEK','0','2025-01-07 13:51:24','2025-01-07 13:51:24','0','175','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1304','269','14','2','2025-01-07','12568','0',NULL,NULL,'0','0','0','0','2025-01-07 15:00:33','2025-01-07 15:00:33','0','0','2');
INSERT INTO `kasahesapalmaislems` VALUES ('1315','270','14','6','2025-01-07','12569','0',NULL,NULL,'0','8945.18','KKart?? G??nsonu','7','2025-01-07 15:27:39','2025-01-07 15:27:39','2','8945.18','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1316','270','14','6','2025-01-07','12569','0',NULL,NULL,'0','6452.5','KKart?? G??nsonu','3','2025-01-07 15:27:39','2025-01-07 15:27:39','2','6452.5','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1317','270','14','6','2025-01-07','12569','0',NULL,NULL,'0','813.4','TRAPZON','0','2025-01-07 15:27:39','2025-01-07 15:27:39','0','813.4','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1318','270','14','6','2025-01-07','12569','0',NULL,NULL,'0','175','irfan','0','2025-01-07 15:27:39','2025-01-07 15:27:39','0','175','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1319','270','14','6','2025-01-07','12569','0',NULL,NULL,'0','22.5','kahve','0','2025-01-07 15:27:39','2025-01-07 15:27:39','0','22.5','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1320','270','14','6','2025-01-07','12569','0',NULL,NULL,'0','127.5','murat ??????k','0','2025-01-07 15:27:39','2025-01-07 15:27:39','0','127.5','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1321','270','14','6','2025-01-07','12569','0',NULL,NULL,'0','110','erol tahsin','0','2025-01-07 15:27:39','2025-01-07 15:27:39','0','110','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1322','270','14','6','2025-01-07','12569','0',NULL,NULL,'0','2171','ekmek','0','2025-01-07 15:27:39','2025-01-07 15:27:39','0','2171','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1323','270','14','6','2025-01-07','12569','0',NULL,NULL,'249.5','0','oyuncak','0','2025-01-07 15:27:39','2025-01-07 15:27:39','1','249.5','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1324','270','14','6','2025-01-07','12569','0',NULL,NULL,'8400','0','mazot','0','2025-01-07 15:27:39','2025-01-07 15:27:39','1','8400','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1325','271','14','6','2025-01-07','12570','0',NULL,NULL,'0','0','0','0','2025-01-07 15:32:22','2025-01-07 15:32:22','0','0','0');
INSERT INTO `kasahesapalmaislems` VALUES ('1326','272','14','3','2025-01-08','12571','0',NULL,NULL,'0','1400','KKart?? G??nsonu','7','2025-01-08 14:11:27','2025-01-08 14:11:27','2','1400','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1327','272','14','3','2025-01-08','12571','0',NULL,NULL,'0','350','YEMEK','0','2025-01-08 14:11:27','2025-01-08 14:11:27','0','350','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1328','273','14','2','2025-01-08','12572','0',NULL,NULL,'0','0','0','0','2025-01-08 15:16:32','2025-01-08 15:16:32','0','0','2');
INSERT INTO `kasahesapalmaislems` VALUES ('1345','274','14','2','2025-01-08','12573','0',NULL,NULL,'0','8888.47','KKart?? G??nsonu','7','2025-01-08 15:24:28','2025-01-08 15:24:28','2','8888.47','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1346','274','14','2','2025-01-08','12573','0',NULL,NULL,'0','4013','KKart?? G??nsonu','3','2025-01-08 15:24:28','2025-01-08 15:24:28','2','4013','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1347','274','14','2','2025-01-08','12573','0',NULL,NULL,'0','425','TRAPZON','0','2025-01-08 15:24:28','2025-01-08 15:24:28','0','425','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1348','274','14','2','2025-01-08','12573','0',NULL,NULL,'0','290','EROL','0','2025-01-08 15:24:28','2025-01-08 15:24:28','0','290','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1349','274','14','2','2025-01-08','12573','0',NULL,NULL,'0','2350','KARI??TIRAN EKM','0','2025-01-08 15:24:28','2025-01-08 15:24:28','0','2350','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1350','274','14','2','2025-01-08','12573','0',NULL,NULL,'75','0','SAVA?? ??AKAR','0','2025-01-08 15:24:28','2025-01-08 15:24:28','1','75','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1351','274','14','2','2025-01-08','12573','0',NULL,NULL,'2400','0','MAZOT','0','2025-01-08 15:24:28','2025-01-08 15:24:28','1','2400','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1352','274','14','2','2025-01-08','12573','0',NULL,NULL,'47','0','MUZ','0','2025-01-08 15:24:28','2025-01-08 15:24:28','1','47','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1353','274','14','2','2025-01-08','12573','0',NULL,NULL,'0','174.9','YEMEK','0','2025-01-08 15:24:28','2025-01-08 15:24:28','0','174.9','0');
INSERT INTO `kasahesapalmaislems` VALUES ('1354','275','14','2','2025-01-08','12574','0',NULL,NULL,'0','0','0','0','2025-01-08 15:35:12','2025-01-08 15:35:12','0','0','0');
INSERT INTO `kasahesapalmaislems` VALUES ('1355','276','14','2','2025-01-09','12575','0',NULL,NULL,'0','8015.38','KKart?? G??nsonu','7','2025-01-09 14:30:32','2025-01-09 14:30:32','2','8015.38','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1356','276','14','2','2025-01-09','12575','0',NULL,NULL,'0','350','YEMEK','0','2025-01-09 14:30:32','2025-01-09 14:30:32','0','350','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1357','277','14','2','2025-01-09','12576','0',NULL,NULL,'0','0','0','0','2025-01-09 14:56:30','2025-01-09 14:56:30','0','0','2');
INSERT INTO `kasahesapalmaislems` VALUES ('1358','278','14','2','2025-01-09','12577','0',NULL,NULL,'0','11804.62','KKart?? G??nsonu','7','2025-01-09 15:13:49','2025-01-09 15:13:49','2','11804.62','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1359','278','14','2','2025-01-09','12577','0',NULL,NULL,'0','60','selo','0','2025-01-09 15:13:49','2025-01-09 15:13:49','0','60','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1360','278','14','2','2025-01-09','12577','0',NULL,NULL,'0','8729.91','KKart?? G??nsonu','3','2025-01-09 15:13:49','2025-01-09 15:13:49','2','8729.91','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1361','278','14','2','2025-01-09','12577','0',NULL,NULL,'0','940','TRAPZON','0','2025-01-09 15:13:49','2025-01-09 15:13:49','0','940','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1362','278','14','2','2025-01-09','12577','0',NULL,NULL,'0','78','fatma ge??ko','0','2025-01-09 15:13:49','2025-01-09 15:13:49','0','78','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1363','278','14','2','2025-01-09','12577','0',NULL,NULL,'0','54','erol','0','2025-01-09 15:13:49','2025-01-09 15:13:49','0','54','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1364','278','14','2','2025-01-09','12577','0',NULL,NULL,'0','1500','selo hammal','0','2025-01-09 15:13:49','2025-01-09 15:13:49','0','1500','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1365','278','14','2','2025-01-09','12577','0',NULL,NULL,'0','631.45','burak','0','2025-01-09 15:13:49','2025-01-09 15:13:49','0','631.45','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1366','278','14','2','2025-01-09','12577','0',NULL,NULL,'0','170','selo yemek','0','2025-01-09 15:13:49','2025-01-09 15:13:49','0','170','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1367','278','14','2','2025-01-09','12577','0',NULL,NULL,'0','1075','erkan ay??r','0','2025-01-09 15:13:49','2025-01-09 15:13:49','0','1075','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1368','278','14','2','2025-01-09','12577','0',NULL,NULL,'0','2170','KARI??TIRAN EKMEK','0','2025-01-09 15:13:49','2025-01-09 15:13:49','0','2170','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1369','278','14','2','2025-01-09','12577','0',NULL,NULL,'0','245','rasim ??akar','0','2025-01-09 15:13:49','2025-01-09 15:13:49','0','245','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1370','278','14','2','2025-01-09','12577','0',NULL,NULL,'240','0','oyuncak','0','2025-01-09 15:13:49','2025-01-09 15:13:49','1','240','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1371','278','14','2','2025-01-09','12577','0',NULL,NULL,'30','0','pi??maniye','0','2025-01-09 15:13:49','2025-01-09 15:13:49','1','30','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1372','278','14','2','2025-01-09','12577','0',NULL,NULL,'11659.93','0','mazot','0','2025-01-09 15:13:49','2025-01-09 15:13:49','1','11659.93','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1373','279','14','2','2025-01-09','12578','0',NULL,NULL,'0','0','0','0','2025-01-09 15:24:12','2025-01-09 15:24:12','0','0','0');
INSERT INTO `kasahesapalmaislems` VALUES ('1374','280','14','3','2025-01-10','12579','0',NULL,NULL,'0','174.72','KKart?? G??nsonu','7','2025-01-10 14:20:02','2025-01-10 14:20:02','2','174.72','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1375','280','14','3','2025-01-10','12579','0',NULL,NULL,'0','350','yemek','0','2025-01-10 14:20:02','2025-01-10 14:20:02','0','350','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1376','281','14','2','2025-01-10','12580','0',NULL,NULL,'0','0','0','0','2025-01-10 14:29:54','2025-01-10 14:29:54','0','0','2');
INSERT INTO `kasahesapalmaislems` VALUES ('1377','282','14','2','2025-01-10','12581','0',NULL,NULL,'0','12766.58','KKart?? G??nsonu','3','2025-01-10 14:43:47','2025-01-10 14:43:47','2','12766.58','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1378','282','14','2','2025-01-10','12581','0',NULL,NULL,'0','14277.81','KKart?? G??nsonu','7','2025-01-10 14:43:47','2025-01-10 14:43:47','2','14277.81','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1379','282','14','2','2025-01-10','12581','0',NULL,NULL,'0','180.5','yemek erol','0','2025-01-10 14:43:47','2025-01-10 14:43:47','0','180.5','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1380','282','14','2','2025-01-10','12581','0',NULL,NULL,'0','198','erol','0','2025-01-10 14:43:47','2025-01-10 14:43:47','0','198','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1381','282','14','2','2025-01-10','12581','0',NULL,NULL,'0','570','TRAPZON','0','2025-01-10 14:43:47','2025-01-10 14:43:47','0','570','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1382','282','14','2','2025-01-10','12581','0',NULL,NULL,'0','1075','damak k??fte','0','2025-01-10 14:43:47','2025-01-10 14:43:47','0','1075','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1383','282','14','2','2025-01-10','12581','0',NULL,NULL,'0','30','ibrahim y??ld??z','0','2025-01-10 14:43:47','2025-01-10 14:43:47','0','30','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1384','282','14','2','2025-01-10','12581','0',NULL,NULL,'0','85','mehmet aras','0','2025-01-10 14:43:47','2025-01-10 14:43:47','0','85','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1385','282','14','2','2025-01-10','12581','0',NULL,NULL,'0','2350','KARI??TIRAN EKM','0','2025-01-10 14:43:47','2025-01-10 14:43:47','0','2350','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1386','282','14','2','2025-01-10','12581','0',NULL,NULL,'42','0','mehmet aras','0','2025-01-10 14:43:47','2025-01-10 14:43:47','1','42','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1387','282','14','2','2025-01-10','12581','0',NULL,NULL,'127','0','murat ??????k','0','2025-01-10 14:43:47','2025-01-10 14:43:47','1','127','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1388','282','14','2','2025-01-10','12581','0',NULL,NULL,'377','0','recep bilir','0','2025-01-10 14:43:47','2025-01-10 14:43:47','1','377','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1389','282','14','2','2025-01-10','12581','0',NULL,NULL,'108','0','g??l??an azcakar','0','2025-01-10 14:43:47','2025-01-10 14:43:47','1','108','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1390','282','14','2','2025-01-10','12581','0',NULL,NULL,'80','0','oyuncak','0','2025-01-10 14:43:47','2025-01-10 14:43:47','1','80','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1391','282','14','2','2025-01-10','12581','0',NULL,NULL,'145','0','nail abi','0','2025-01-10 14:43:47','2025-01-10 14:43:47','1','145','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1392','282','14','2','2025-01-10','12581','0',NULL,NULL,'2525','0','erkan ay??r','0','2025-01-10 14:43:47','2025-01-10 14:43:47','1','2525','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1393','282','14','2','2025-01-10','12581','0',NULL,NULL,'12257.9','0','mazot','0','2025-01-10 14:43:47','2025-01-10 14:43:47','1','12257.9','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1394','283','14','2','2025-01-10','12582','0',NULL,NULL,'0','0','0','0','2025-01-10 14:50:41','2025-01-10 14:50:41','0','0','0');
INSERT INTO `kasahesapalmaislems` VALUES ('1395','284','14','3','2025-01-11','12583','0',NULL,NULL,'0','9888.8','KKart?? G??nsonu','0','2025-01-11 14:34:46','2025-01-11 14:34:46','2','9888.8','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1396','284','14','3','2025-01-11','12583','0',NULL,NULL,'0','175','yemek','0','2025-01-11 14:34:46','2025-01-11 14:34:46','0','175','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1397','285','14','2','2025-01-11','12584','0',NULL,NULL,'0','0','0','0','2025-01-11 15:09:30','2025-01-11 15:09:30','0','0','2');
INSERT INTO `kasahesapalmaislems` VALUES ('1398','286','14','2','2025-01-11','12585','0',NULL,NULL,'0','19291.1','KKart?? G??nsonu','7','2025-01-11 15:17:52','2025-01-11 15:17:52','2','19291.1','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1399','286','14','2','2025-01-11','12585','0',NULL,NULL,'0','998.5','erol','0','2025-01-11 15:17:52','2025-01-11 15:17:52','0','998.5','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1400','286','14','2','2025-01-11','12585','0',NULL,NULL,'0','1526.92','KKart?? G??nsonu','3','2025-01-11 15:17:52','2025-01-11 15:17:52','2','1526.92','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1401','286','14','2','2025-01-11','12585','0',NULL,NULL,'0','705','TRAPZON','0','2025-01-11 15:17:52','2025-01-11 15:17:52','0','705','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1402','286','14','2','2025-01-11','12585','0',NULL,NULL,'0','126','g??lcan azcakar','0','2025-01-11 15:17:52','2025-01-11 15:17:52','0','126','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1403','286','14','2','2025-01-11','12585','0',NULL,NULL,'0','1000','erkan ay??r','0','2025-01-11 15:17:52','2025-01-11 15:17:52','0','1000','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1404','286','14','2','2025-01-11','12585','0',NULL,NULL,'0','230','ilami','0','2025-01-11 15:17:52','2025-01-11 15:17:52','0','230','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1405','286','14','2','2025-01-11','12585','0',NULL,NULL,'0','96','ilami','0','2025-01-11 15:17:52','2025-01-11 15:17:52','0','96','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1406','286','14','2','2025-01-11','12585','0',NULL,NULL,'0','2580','KARI??TIRAN EKM','0','2025-01-11 15:17:52','2025-01-11 15:17:52','0','2580','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1407','286','14','2','2025-01-11','12585','0',NULL,NULL,'500','0','mazot','0','2025-01-11 15:17:52','2025-01-11 15:17:52','1','500','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1408','286','14','2','2025-01-11','12585','0',NULL,NULL,'100','0','kulakl??k','0','2025-01-11 15:17:52','2025-01-11 15:17:52','1','100','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1409','286','14','2','2025-01-11','12585','0',NULL,NULL,'215','0','??evki sezer','0','2025-01-11 15:17:52','2025-01-11 15:17:52','1','215','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1410','287','14','2','2025-01-11','12586','0',NULL,NULL,'0','0','0','0','2025-01-11 15:21:46','2025-01-11 15:21:46','0','0','0');
INSERT INTO `kasahesapalmaislems` VALUES ('1411','288','14','2','2025-01-12','12587','0',NULL,NULL,'0','0','0','0','2025-01-12 14:31:04','2025-01-12 14:31:04','0','0','2');
INSERT INTO `kasahesapalmaislems` VALUES ('1412','289','14','2','2025-01-12','12588','0',NULL,NULL,'0','3647.95','KKart?? G??nsonu','3','2025-01-12 14:43:26','2025-01-12 14:43:26','2','3647.95','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1413','289','14','2','2025-01-12','12588','0',NULL,NULL,'0','15141.43','KKart?? G??nsonu','0','2025-01-12 14:43:26','2025-01-12 14:43:26','2','15141.43','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1414','289','14','2','2025-01-12','12588','0',NULL,NULL,'0','87.45','yemek','0','2025-01-12 14:43:26','2025-01-12 14:43:26','0','87.45','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1415','289','14','2','2025-01-12','12588','0',NULL,NULL,'0','1110','TRAPZON','0','2025-01-12 14:43:26','2025-01-12 14:43:26','0','1110','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1416','289','14','2','2025-01-12','12588','0',NULL,NULL,'0','444','s??leyman usta','0','2025-01-12 14:43:26','2025-01-12 14:43:26','0','444','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1417','289','14','2','2025-01-12','12588','0',NULL,NULL,'0','62','sava?? ??akar','0','2025-01-12 14:43:26','2025-01-12 14:43:26','0','62','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1418','289','14','2','2025-01-12','12588','0',NULL,NULL,'0','2483','KARI??TIRAN','0','2025-01-12 14:43:26','2025-01-12 14:43:26','0','2483','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1419','289','14','2','2025-01-12','12588','0',NULL,NULL,'125','0','g??lcan azcakar','0','2025-01-12 14:43:26','2025-01-12 14:43:26','1','125','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1420','289','14','2','2025-01-12','12588','0',NULL,NULL,'30','0','ibrahim y??ld??z','0','2025-01-12 14:43:26','2025-01-12 14:43:26','1','30','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1421','289','14','2','2025-01-12','12588','0',NULL,NULL,'1000','0','mazot','0','2025-01-12 14:43:26','2025-01-12 14:43:26','1','1000','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1422','290','14','2','2025-01-12','12589','0',NULL,NULL,'0','0','0','0','2025-01-12 14:49:04','2025-01-12 14:49:04','0','0','0');
INSERT INTO `kasahesapalmaislems` VALUES ('1423','291','14','2','2025-01-13','12590','0',NULL,NULL,'0','593.64','KKart?? G??nsonu','7','2025-01-13 13:56:34','2025-01-13 13:56:34','2','593.64','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1424','291','14','2','2025-01-13','12590','0',NULL,NULL,'0','350','YEMEK','0','2025-01-13 13:56:34','2025-01-13 13:56:34','0','350','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1425','291','14','2','2025-01-13','12590','0',NULL,NULL,'0','1986.35','osman caner peynir iade fark??','0','2025-01-13 13:56:34','2025-01-13 13:56:34','0','1986.35','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1426','291','14','2','2025-01-13','12590','0',NULL,NULL,'0','460','peynir iade borcumuz verdik','0','2025-01-13 13:56:34','2025-01-13 13:56:34','0','460','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1427','292','14','6','2025-01-13','12591','0',NULL,NULL,'0','0','0','0','2025-01-13 15:07:11','2025-01-13 15:07:11','0','0','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1428','293','14','6','2025-01-13','12592','0',NULL,NULL,'0','13156.86','KKart?? G??nsonu','7','2025-01-13 15:17:33','2025-01-13 15:17:33','2','13156.86','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1429','293','14','6','2025-01-13','12592','0',NULL,NULL,'0','394','KKart?? G??nsonu','3','2025-01-13 15:17:33','2025-01-13 15:17:33','2','394','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1430','293','14','6','2025-01-13','12592','0',NULL,NULL,'0','12.5','SELO','0','2025-01-13 15:17:33','2025-01-13 15:17:33','0','12.5','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1431','293','14','6','2025-01-13','12592','0',NULL,NULL,'0','79','TAHS??LAT YANLI??','0','2025-01-13 15:17:33','2025-01-13 15:17:33','0','79','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1432','293','14','6','2025-01-13','12592','0',NULL,NULL,'0','954.5','TRAPZON','0','2025-01-13 15:17:33','2025-01-13 15:17:33','0','954.5','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1433','293','14','6','2025-01-13','12592','0',NULL,NULL,'0','40','ERSAN GE??KO','0','2025-01-13 15:17:33','2025-01-13 15:17:33','0','40','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1434','293','14','6','2025-01-13','12592','0',NULL,NULL,'0','140','ERSAN GE??KO','0','2025-01-13 15:17:33','2025-01-13 15:17:33','0','140','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1435','293','14','6','2025-01-13','12592','0',NULL,NULL,'0','45','SELO','0','2025-01-13 15:17:33','2025-01-13 15:17:33','0','45','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1436','293','14','6','2025-01-13','12592','0',NULL,NULL,'0','45','SELO','0','2025-01-13 15:17:33','2025-01-13 15:17:33','0','45','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1437','293','14','6','2025-01-13','12592','0',NULL,NULL,'0','65','YEMEK','0','2025-01-13 15:17:33','2025-01-13 15:17:33','0','65','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1438','293','14','6','2025-01-13','12592','0',NULL,NULL,'0','40','EROL','0','2025-01-13 15:17:33','2025-01-13 15:17:33','0','40','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1439','293','14','6','2025-01-13','12592','0',NULL,NULL,'0','1400','AKBEY YUMURTA','0','2025-01-13 15:17:33','2025-01-13 15:17:33','0','1400','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1440','293','14','6','2025-01-13','12592','0',NULL,NULL,'0','1400','HAMMAL','0','2025-01-13 15:17:33','2025-01-13 15:17:33','0','1400','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1441','293','14','6','2025-01-13','12592','0',NULL,NULL,'0','180','YEMEK','0','2025-01-13 15:17:33','2025-01-13 15:17:33','0','180','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1442','293','14','6','2025-01-13','12592','0',NULL,NULL,'0','7000','ZEYT??N ALIMI','0','2025-01-13 15:17:33','2025-01-13 15:17:33','0','7000','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1443','293','14','6','2025-01-13','12592','0',NULL,NULL,'0','40','YANLI?? EKMEK','0','2025-01-13 15:17:33','2025-01-13 15:17:33','0','40','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1444','293','14','6','2025-01-13','12592','0',NULL,NULL,'0','2352.5','KARI??TIRAN EKMEK','0','2025-01-13 15:17:33','2025-01-13 15:17:33','0','2352.5','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1445','293','14','6','2025-01-13','12592','0',NULL,NULL,'0','375','PER??M','0','2025-01-13 15:17:33','2025-01-13 15:17:33','0','375','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1446','293','14','6','2025-01-13','12592','0',NULL,NULL,'0','55','SELO','0','2025-01-13 15:17:33','2025-01-13 15:17:33','0','55','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1447','293','14','6','2025-01-13','12592','0',NULL,NULL,'0','66','SELO','0','2025-01-13 15:17:33','2025-01-13 15:17:33','0','66','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1448','293','14','6','2025-01-13','12592','0',NULL,NULL,'198.5','0','OYUNCAK','0','2025-01-13 15:17:33','2025-01-13 15:17:33','1','198.5','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1449','293','14','6','2025-01-13','12592','0',NULL,NULL,'1900','0','MAZOT','0','2025-01-13 15:17:33','2025-01-13 15:17:33','1','1900','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1450','294','14','6','2025-01-13','12593','0',NULL,NULL,'0','0','0','0','2025-01-13 15:21:45','2025-01-13 15:21:45','0','0','0');
INSERT INTO `kasahesapalmaislems` VALUES ('1451','295','14','3','2025-01-14','12594','0',NULL,NULL,'0','175','YEMEK','0','2025-01-14 14:22:04','2025-01-14 14:22:04','0','175','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1452','296','14','6','2025-01-14','12595','0',NULL,NULL,'0','0','0','0','2025-01-14 15:00:28','2025-01-14 15:00:28','0','0','2');
INSERT INTO `kasahesapalmaislems` VALUES ('1453','297','14','6','2025-01-14','12596','0',NULL,NULL,'0','1589.48','KKart?? G??nsonu','3','2025-01-14 15:18:41','2025-01-14 15:18:41','2','1589.48','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1454','297','14','6','2025-01-14','12596','0',NULL,NULL,'0','7295.27','KKart?? G??nsonu','7','2025-01-14 15:18:41','2025-01-14 15:18:41','2','7295.27','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1455','297','14','6','2025-01-14','12596','0',NULL,NULL,'0','398.4','TRAPZON','0','2025-01-14 15:18:41','2025-01-14 15:18:41','0','398.4','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1456','297','14','6','2025-01-14','12596','0',NULL,NULL,'0','16.5','KAHVE','0','2025-01-14 15:18:41','2025-01-14 15:18:41','0','16.5','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1457','297','14','6','2025-01-14','12596','0',NULL,NULL,'0','175','??RFAN YEMEK','0','2025-01-14 15:18:41','2025-01-14 15:18:41','0','175','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1458','297','14','6','2025-01-14','12596','0',NULL,NULL,'0','60','FATMA GE??KO','0','2025-01-14 15:18:41','2025-01-14 15:18:41','0','60','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1459','297','14','6','2025-01-14','12596','0',NULL,NULL,'0','16','??RFAN','0','2025-01-14 15:18:41','2025-01-14 15:18:41','0','16','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1460','297','14','6','2025-01-14','12596','0',NULL,NULL,'0','960','BALABAN BOZA','0','2025-01-14 15:18:41','2025-01-14 15:18:41','0','960','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1461','297','14','6','2025-01-14','12596','0',NULL,NULL,'0','15','SELO','0','2025-01-14 15:18:41','2025-01-14 15:18:41','0','15','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1462','297','14','6','2025-01-14','12596','0',NULL,NULL,'0','40','EKMEK','0','2025-01-14 15:18:41','2025-01-14 15:18:41','0','40','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1463','297','14','6','2025-01-14','12596','0',NULL,NULL,'0','51','TAHS??N YEMEK','0','2025-01-14 15:18:41','2025-01-14 15:18:41','0','51','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1464','297','14','6','2025-01-14','12596','0',NULL,NULL,'0','40','SELO','0','2025-01-14 15:18:41','2025-01-14 15:18:41','0','40','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1465','297','14','6','2025-01-14','12596','0',NULL,NULL,'0','17.75','FATMA GE??KO','0','2025-01-14 15:18:41','2025-01-14 15:18:41','0','17.75','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1466','297','14','6','2025-01-14','12596','0',NULL,NULL,'0','2243.75','KARI??TIRAN EKMEK','0','2025-01-14 15:18:41','2025-01-14 15:18:41','0','2243.75','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1467','297','14','6','2025-01-14','12596','0',NULL,NULL,'0','939','ERG??N TUNA','0','2025-01-14 15:18:41','2025-01-14 15:18:41','0','939','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1468','297','14','6','2025-01-14','12596','0',NULL,NULL,'0','49.5','TEM??ZL??K','0','2025-01-14 15:18:41','2025-01-14 15:18:41','0','49.5','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1469','297','14','6','2025-01-14','12596','0',NULL,NULL,'1153.5','0','OYUNCAK','0','2025-01-14 15:18:41','2025-01-14 15:18:41','1','1153.5','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1470','297','14','6','2025-01-14','12596','0',NULL,NULL,'1000','0','MAZOT','0','2025-01-14 15:18:41','2025-01-14 15:18:41','1','1000','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1471','298','14','6','2025-01-14','12597','0',NULL,NULL,'0','0','0','0','2025-01-14 15:26:19','2025-01-14 15:26:19','0','0','0');
INSERT INTO `kasahesapalmaislems` VALUES ('1472','299','14','3','2025-01-15','12598','0',NULL,NULL,'0','1838.4','KKart?? G??nsonu','7','2025-01-15 14:09:28','2025-01-15 14:09:28','2','1838.4','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1473','299','14','3','2025-01-15','12598','0',NULL,NULL,'0','350','YEMEK','0','2025-01-15 14:09:28','2025-01-15 14:09:28','0','350','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1474','300','14','2','2025-01-15','12599','0',NULL,NULL,'0','0','0','0','2025-01-15 15:22:32','2025-01-15 15:22:32','0','0','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1475','301','14','2','2025-01-15','12600','0',NULL,NULL,'0','9466.2','KKart?? G??nsonu','7','2025-01-15 15:33:18','2025-01-15 15:33:18','2','9466.2','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1476','301','14','2','2025-01-15','12600','0',NULL,NULL,'0','1605','KKart?? G??nsonu','3','2025-01-15 15:33:18','2025-01-15 15:33:18','2','1605','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1477','301','14','2','2025-01-15','12600','0',NULL,NULL,'0','25','selo','0','2025-01-15 15:33:18','2025-01-15 15:33:18','0','25','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1478','301','14','2','2025-01-15','12600','0',NULL,NULL,'0','53.5','selo','0','2025-01-15 15:33:18','2025-01-15 15:33:18','0','53.5','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1479','301','14','2','2025-01-15','12600','0',NULL,NULL,'0','14','suat oru??','0','2025-01-15 15:33:18','2025-01-15 15:33:18','0','14','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1480','301','14','2','2025-01-15','12600','0',NULL,NULL,'0','16.5','kahve','0','2025-01-15 15:33:18','2025-01-15 15:33:18','0','16.5','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1481','301','14','2','2025-01-15','12600','0',NULL,NULL,'0','730.4','TRAPZON','0','2025-01-15 15:33:18','2025-01-15 15:33:18','0','730.4','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1482','301','14','2','2025-01-15','12600','0',NULL,NULL,'0','86.25','selo','0','2025-01-15 15:33:18','2025-01-15 15:33:18','0','86.25','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1483','301','14','2','2025-01-15','12600','0',NULL,NULL,'0','75','??r??n iade','0','2025-01-15 15:33:18','2025-01-15 15:33:18','0','75','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1484','301','14','2','2025-01-15','12600','0',NULL,NULL,'0','51','yemek','0','2025-01-15 15:33:18','2025-01-15 15:33:18','0','51','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1485','301','14','2','2025-01-15','12600','0',NULL,NULL,'0','20','??atal','0','2025-01-15 15:33:18','2025-01-15 15:33:18','0','20','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1486','301','14','2','2025-01-15','12600','0',NULL,NULL,'0','2352.5','EVRENSEK??Z EKMEK','0','2025-01-15 15:33:18','2025-01-15 15:33:18','0','2352.5','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1487','301','14','2','2025-01-15','12600','0',NULL,NULL,'0','65','MURAT I??IK','0','2025-01-15 15:33:18','2025-01-15 15:33:18','0','65','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1488','301','14','2','2025-01-15','12600','0',NULL,NULL,'0','577','SELO','0','2025-01-15 15:33:18','2025-01-15 15:33:18','0','577','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1489','301','14','2','2025-01-15','12600','0',NULL,NULL,'720.7','0','OYUNCAK','0','2025-01-15 15:33:18','2025-01-15 15:33:18','1','720.7','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1490','301','14','2','2025-01-15','12600','0',NULL,NULL,'2900','0','MAZOT','0','2025-01-15 15:33:18','2025-01-15 15:33:18','1','2900','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1491','301','14','2','2025-01-15','12600','0',NULL,NULL,'0','157','EROL','0','2025-01-15 15:33:18','2025-01-15 15:33:18','0','157','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1494','302','14','3','2025-01-16','12601','0',NULL,NULL,'0','7625.14','KKart?? G??nsonu','7','2025-01-16 14:00:34','2025-01-16 14:00:34','2','7625.14','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1495','302','14','3','2025-01-16','12601','0',NULL,NULL,'0','350','yemek','0','2025-01-16 14:00:34','2025-01-16 14:00:34','0','350','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1496','303','14','6','2025-01-16','12602','0',NULL,NULL,'0','0','0','0','2025-01-16 15:02:51','2025-01-16 15:02:51','0','0','2');
INSERT INTO `kasahesapalmaislems` VALUES ('1497','304','14','6','2025-01-16','12603','0',NULL,NULL,'0','11846.83','KKart?? G??nsonu','7','2025-01-16 15:23:12','2025-01-16 15:23:12','2','11846.83','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1498','304','14','6','2025-01-16','12603','0',NULL,NULL,'0','30','laydy','0','2025-01-16 15:23:12','2025-01-16 15:23:12','0','30','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1499','304','14','6','2025-01-16','12603','0',NULL,NULL,'0','780.2','TRAPZON','0','2025-01-16 15:23:12','2025-01-16 15:23:12','0','780.2','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1500','304','14','6','2025-01-16','12603','0',NULL,NULL,'0','357.5','selo','0','2025-01-16 15:23:12','2025-01-16 15:23:12','0','357.5','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1501','304','14','6','2025-01-16','12603','0',NULL,NULL,'0','22.5','kahve','0','2025-01-16 15:23:12','2025-01-16 15:23:12','0','22.5','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1502','304','14','6','2025-01-16','12603','0',NULL,NULL,'0','105','??r??n iade','0','2025-01-16 15:23:12','2025-01-16 15:23:12','0','105','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1503','304','14','6','2025-01-16','12603','0',NULL,NULL,'0','126.5','berkay ??akar','0','2025-01-16 15:23:12','2025-01-16 15:23:12','0','126.5','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1504','304','14','6','2025-01-16','12603','0',NULL,NULL,'0','42','erol','0','2025-01-16 15:23:12','2025-01-16 15:23:12','0','42','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1505','304','14','6','2025-01-16','12603','0',NULL,NULL,'0','51','tahsin yemek','0','2025-01-16 15:23:12','2025-01-16 15:23:12','0','51','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1506','304','14','6','2025-01-16','12603','0',NULL,NULL,'0','1500','selo hammal','0','2025-01-16 15:23:12','2025-01-16 15:23:12','0','1500','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1507','304','14','6','2025-01-16','12603','0',NULL,NULL,'0','45','hediye abla','0','2025-01-16 15:23:12','2025-01-16 15:23:12','0','45','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1508','304','14','6','2025-01-16','12603','0',NULL,NULL,'0','175','hediye abla','0','2025-01-16 15:23:12','2025-01-16 15:23:12','0','175','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1509','304','14','6','2025-01-16','12603','0',NULL,NULL,'0','2352.5','evrensekiz ekmek','0','2025-01-16 15:23:12','2025-01-16 15:23:12','0','2352.5','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1510','304','14','6','2025-01-16','12603','0',NULL,NULL,'343.5','0','oyuncak','0','2025-01-16 15:23:12','2025-01-16 15:23:12','1','343.5','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1511','304','14','6','2025-01-16','12603','0',NULL,NULL,'1000','0','mazot','0','2025-01-16 15:23:12','2025-01-16 15:23:12','1','1000','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1512','304','14','6','2025-01-16','12603','0',NULL,NULL,'0','2041.5','KKart?? G??nsonu','3','2025-01-16 15:23:12','2025-01-16 15:23:12','2','2041.5','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1513','305','14','6','2025-01-16','12604','0',NULL,NULL,'0','0','0','0','2025-01-16 15:27:44','2025-01-16 15:27:44','0','0','0');
INSERT INTO `kasahesapalmaislems` VALUES ('1514','306','14','3','2025-01-17','12605','0',NULL,NULL,'0','3688.8','KKart?? G??nsonu','7','2025-01-17 13:57:45','2025-01-17 13:57:45','2','3688.8','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1515','306','14','3','2025-01-17','12605','0',NULL,NULL,'0','350','YEMEK','0','2025-01-17 13:57:45','2025-01-17 13:57:45','0','350','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1516','307','14','6','2025-01-17','12606','0',NULL,NULL,'0','0','0','0','2025-01-17 15:00:45','2025-01-17 15:00:45','0','0','2');
INSERT INTO `kasahesapalmaislems` VALUES ('1517','308','14','6','2025-01-17','12607','0',NULL,NULL,'0','18571.45','KKart?? G??nsonu','7','2025-01-17 15:16:01','2025-01-17 15:16:01','2','18571.45','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1518','308','14','6','2025-01-17','12607','0',NULL,NULL,'0','682.05','KKart?? G??nsonu','3','2025-01-17 15:16:01','2025-01-17 15:16:01','2','682.05','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1519','308','14','6','2025-01-17','12607','0',NULL,NULL,'0','514.6','TRAPZON','0','2025-01-17 15:16:01','2025-01-17 15:16:01','0','514.6','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1520','308','14','6','2025-01-17','12607','0',NULL,NULL,'0','1222','DAMAK K??FTE','0','2025-01-17 15:16:01','2025-01-17 15:16:01','0','1222','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1521','308','14','6','2025-01-17','12607','0',NULL,NULL,'0','16.5','KAHVE','0','2025-01-17 15:16:01','2025-01-17 15:16:01','0','16.5','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1522','308','14','6','2025-01-17','12607','0',NULL,NULL,'0','40','FAT','0','2025-01-17 15:16:01','2025-01-17 15:16:01','0','40','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1523','308','14','6','2025-01-17','12607','0',NULL,NULL,'0','140','??R??N ??ADE','0','2025-01-17 15:16:01','2025-01-17 15:16:01','0','140','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1524','308','14','6','2025-01-17','12607','0',NULL,NULL,'0','39','??R??N ??ADE','0','2025-01-17 15:16:01','2025-01-17 15:16:01','0','39','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1525','308','14','6','2025-01-17','12607','0',NULL,NULL,'0','36','SELO','0','2025-01-17 15:16:01','2025-01-17 15:16:01','0','36','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1526','308','14','6','2025-01-17','12607','0',NULL,NULL,'0','75','??R??N ??ADE','0','2025-01-17 15:16:01','2025-01-17 15:16:01','0','75','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1527','308','14','6','2025-01-17','12607','0',NULL,NULL,'0','26','YEMEK','0','2025-01-17 15:16:01','2025-01-17 15:16:01','0','26','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1528','308','14','6','2025-01-17','12607','0',NULL,NULL,'0','2293.75','evren yemek','0','2025-01-17 15:16:01','2025-01-17 15:16:01','0','2293.75','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1529','308','14','6','2025-01-17','12607','0',NULL,NULL,'310','0','OYUNCAK','0','2025-01-17 15:16:01','2025-01-17 15:16:01','1','310','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1530','308','14','6','2025-01-17','12607','0',NULL,NULL,'4082','0','MAZOT','0','2025-01-17 15:16:01','2025-01-17 15:16:01','1','4082','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1531','309','14','2','2025-01-17','12608','0',NULL,NULL,'0','0','0','0','2025-01-17 15:27:44','2025-01-17 15:27:44','0','0','0');
INSERT INTO `kasahesapalmaislems` VALUES ('1532','310','14','3','2025-01-18','12609','0',NULL,NULL,'0','3000','KKart?? G??nsonu','7','2025-01-18 15:27:26','2025-01-18 15:27:26','2','3000','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1533','310','14','3','2025-01-18','12609','0',NULL,NULL,'0','175','YEMEK','0','2025-01-18 15:27:26','2025-01-18 15:27:26','0','175','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1534','311','14','2','2025-01-18','12610','0',NULL,NULL,'0','0','0','0','2025-01-18 15:48:24','2025-01-18 15:48:24','0','0','2');
INSERT INTO `kasahesapalmaislems` VALUES ('1535','312','14','6','2025-01-18','12611','0',NULL,NULL,'0','21050','KKart?? G??nsonu','7','2025-01-18 16:02:19','2025-01-18 16:02:19','2','21050','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1536','312','14','6','2025-01-18','12611','0',NULL,NULL,'0','1269.45','KKart?? G??nsonu','3','2025-01-18 16:02:19','2025-01-18 16:02:19','2','1269.45','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1537','312','14','6','2025-01-18','12611','0',NULL,NULL,'0','13.5','KAHVE','0','2025-01-18 16:02:19','2025-01-18 16:02:19','0','13.5','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1538','312','14','6','2025-01-18','12611','0',NULL,NULL,'0','17','P??L','0','2025-01-18 16:02:19','2025-01-18 16:02:19','0','17','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1539','312','14','6','2025-01-18','12611','0',NULL,NULL,'0','987.7','TRAPZON','0','2025-01-18 16:02:19','2025-01-18 16:02:19','0','987.7','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1540','312','14','6','2025-01-18','12611','0',NULL,NULL,'0','71.65','ERSAN','0','2025-01-18 16:02:19','2025-01-18 16:02:19','0','71.65','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1541','312','14','6','2025-01-18','12611','0',NULL,NULL,'0','175','??RFAN','0','2025-01-18 16:02:19','2025-01-18 16:02:19','0','175','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1542','312','14','6','2025-01-18','12611','0',NULL,NULL,'0','25','TEM??ZL??K','0','2025-01-18 16:02:19','2025-01-18 16:02:19','0','25','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1543','312','14','6','2025-01-18','12611','0',NULL,NULL,'0','20','SELO','0','2025-01-18 16:02:19','2025-01-18 16:02:19','0','20','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1544','312','14','6','2025-01-18','12611','0',NULL,NULL,'0','68','H??SEY??N HASKO','0','2025-01-18 16:02:19','2025-01-18 16:02:19','0','68','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1545','312','14','6','2025-01-18','12611','0',NULL,NULL,'0','55','MASRAF','0','2025-01-18 16:02:19','2025-01-18 16:02:19','0','55','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1546','312','14','6','2025-01-18','12611','0',NULL,NULL,'0','61','TAHS??N','0','2025-01-18 16:02:19','2025-01-18 16:02:19','0','61','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1547','312','14','6','2025-01-18','12611','0',NULL,NULL,'0','317.5','SELO','0','2025-01-18 16:02:19','2025-01-18 16:02:19','0','317.5','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1548','312','14','6','2025-01-18','12611','0',NULL,NULL,'0','2043','ERKAN AYIR','0','2025-01-18 16:02:19','2025-01-18 16:02:19','0','2043','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1549','312','14','6','2025-01-18','12611','0',NULL,NULL,'0','87.45','EROL','0','2025-01-18 16:02:19','2025-01-18 16:02:19','0','87.45','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1550','312','14','6','2025-01-18','12611','0',NULL,NULL,'0','30','B??RA FARKI','0','2025-01-18 16:02:19','2025-01-18 16:02:19','0','30','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1551','312','14','6','2025-01-18','12611','0',NULL,NULL,'0','2692.5','EVRENSEK??Z EKMEK','0','2025-01-18 16:02:19','2025-01-18 16:02:19','0','2692.5','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1552','312','14','6','2025-01-18','12611','0',NULL,NULL,'0','748','MURAT I??IK','0','2025-01-18 16:02:19','2025-01-18 16:02:19','0','748','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1553','312','14','6','2025-01-18','12611','0',NULL,NULL,'123.75','0','OYUNCAK','0','2025-01-18 16:02:19','2025-01-18 16:02:19','1','123.75','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1554','312','14','6','2025-01-18','12611','0',NULL,NULL,'2000','0','MAZOT','0','2025-01-18 16:02:19','2025-01-18 16:02:19','1','2000','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1555','313','14','2','2025-01-18','12612','0',NULL,NULL,'0','0','0','0','2025-01-18 16:06:53','2025-01-18 16:06:53','0','0','0');
INSERT INTO `kasahesapalmaislems` VALUES ('1556','314','14','3','2025-01-20','12613','0',NULL,NULL,'0','6655','KKart?? G??nsonu','7','2025-01-20 14:11:38','2025-01-20 14:11:38','2','6655','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1557','314','14','3','2025-01-20','12613','0',NULL,NULL,'0','350','yemek','0','2025-01-20 14:11:38','2025-01-20 14:11:38','0','350','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1558','315','14','2','2025-01-20','12614','0',NULL,NULL,'0','0','0','0','2025-01-20 14:57:51','2025-01-20 14:57:51','0','0','2');
INSERT INTO `kasahesapalmaislems` VALUES ('1559','316','14','2','2025-01-20','12615','0',NULL,NULL,'0','10231.15','KKart?? G??nsonu','7','2025-01-20 15:11:27','2025-01-20 15:11:27','2','10231.15','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1560','316','14','2','2025-01-20','12615','0',NULL,NULL,'0','3422','KKart?? G??nsonu','3','2025-01-20 15:11:27','2025-01-20 15:11:27','2','3422','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1561','316','14','2','2025-01-20','12615','0',NULL,NULL,'0','45','selo','0','2025-01-20 15:11:27','2025-01-20 15:11:27','0','45','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1562','316','14','2','2025-01-20','12615','0',NULL,NULL,'0','87.45','cemil','0','2025-01-20 15:11:27','2025-01-20 15:11:27','0','87.45','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1563','316','14','2','2025-01-20','12615','0',NULL,NULL,'0','20','selo','0','2025-01-20 15:11:27','2025-01-20 15:11:27','0','20','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1564','316','14','2','2025-01-20','12615','0',NULL,NULL,'0','955','TRAPZON','0','2025-01-20 15:11:27','2025-01-20 15:11:27','0','955','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1565','316','14','2','2025-01-20','12615','0',NULL,NULL,'0','82','erol','0','2025-01-20 15:11:27','2025-01-20 15:11:27','0','82','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1566','316','14','2','2025-01-20','12615','0',NULL,NULL,'0','405','musa ??akar','0','2025-01-20 15:11:27','2025-01-20 15:11:27','0','405','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1567','316','14','2','2025-01-20','12615','0',NULL,NULL,'0','2885','EVRENSEK??Z','0','2025-01-20 15:11:27','2025-01-20 15:11:27','0','2885','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1568','316','14','2','2025-01-20','12615','0',NULL,NULL,'314','0','SAMET USTA','0','2025-01-20 15:11:27','2025-01-20 15:11:27','1','314','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1569','316','14','2','2025-01-20','12615','0',NULL,NULL,'10','0','??BRAH??M ARDA','0','2025-01-20 15:11:27','2025-01-20 15:11:27','1','10','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1570','316','14','2','2025-01-20','12615','0',NULL,NULL,'467','0','ECEM CENG??Z','0','2025-01-20 15:11:27','2025-01-20 15:11:27','1','467','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1571','316','14','2','2025-01-20','12615','0',NULL,NULL,'440','0','FATMA GECKO','0','2025-01-20 15:11:27','2025-01-20 15:11:27','1','440','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1572','317','14','2','2025-01-20','12616','0',NULL,NULL,'0','0','0','0','2025-01-20 15:16:56','2025-01-20 15:16:56','0','0','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1573','318','14','3','2025-01-21','12617','0',NULL,NULL,'0','4000','KKart?? G??nsonu','7','2025-01-24 13:48:53','2025-01-24 13:48:53','2','4000','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1574','318','14','3','2025-01-21','12617','0',NULL,NULL,'0','175','yemek','0','2025-01-24 13:48:53','2025-01-24 13:48:53','0','175','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1575','319','14','3','2025-01-22','12618','0',NULL,NULL,'0','3878.29','KKart?? G??nsonu','7','2025-01-24 13:52:01','2025-01-24 13:52:01','2','3878.29','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1576','319','14','3','2025-01-22','12618','0',NULL,NULL,'0','350','yemek','0','2025-01-24 13:52:01','2025-01-24 13:52:01','0','350','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1579','321','14','3','2025-01-23','12620','0',NULL,NULL,'0','3949.06','KKart?? G??nsonu','0','2025-01-24 13:54:39','2025-01-24 13:54:39','2','3949.06','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1580','321','14','3','2025-01-23','12620','0',NULL,NULL,'0','350','yemek','0','2025-01-24 13:54:39','2025-01-24 13:54:39','0','350','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1581','322','14','3','2025-01-24','12621','0',NULL,NULL,'0','1410','KKart?? G??nsonu','7','2025-01-24 15:09:41','2025-01-24 15:09:41','2','1410','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1582','322','14','3','2025-01-24','12621','0',NULL,NULL,'0','350','YEMEK','0','2025-01-24 15:09:41','2025-01-24 15:09:41','0','350','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1583','323','14','6','2025-01-24','12622','0',NULL,NULL,'0','0','0','0','2025-01-24 15:25:39','2025-01-24 15:25:39','0','0','2');
INSERT INTO `kasahesapalmaislems` VALUES ('1584','324','14','6','2025-01-24','12623','0',NULL,NULL,'0','5073.44','KKart?? G??nsonu','3','2025-01-24 15:32:47','2025-01-24 15:32:47','2','5073.44','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1585','324','14','6','2025-01-24','12623','0',NULL,NULL,'0','17414.51','KKart?? G??nsonu','7','2025-01-24 15:32:47','2025-01-24 15:32:47','2','17414.51','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1586','324','14','6','2025-01-24','12623','0',NULL,NULL,'0','21','KAHVE','0','2025-01-24 15:32:47','2025-01-24 15:32:47','0','21','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1587','324','14','6','2025-01-24','12623','0',NULL,NULL,'0','26','SELO','0','2025-01-24 15:32:47','2025-01-24 15:32:47','0','26','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1588','324','14','6','2025-01-24','12623','0',NULL,NULL,'0','12.5','SELO','0','2025-01-24 15:32:47','2025-01-24 15:32:47','0','12.5','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1589','324','14','6','2025-01-24','12623','0',NULL,NULL,'0','813.4','TRAPZON','0','2025-01-24 15:32:47','2025-01-24 15:32:47','0','813.4','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1590','324','14','6','2025-01-24','12623','0',NULL,NULL,'0','1450.8','DAMAK K??FTE','0','2025-01-24 15:32:47','2025-01-24 15:32:47','0','1450.8','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1591','324','14','6','2025-01-24','12623','0',NULL,NULL,'0','7.5','KAHVE','0','2025-01-24 15:32:47','2025-01-24 15:32:47','0','7.5','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1592','324','14','6','2025-01-24','12623','0',NULL,NULL,'0','4.5','FATMA GE??KO','0','2025-01-24 15:32:47','2025-01-24 15:32:47','0','4.5','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1593','324','14','6','2025-01-24','12623','0',NULL,NULL,'0','216.5','G??LCAN AZ??AKAR','0','2025-01-24 15:32:47','2025-01-24 15:32:47','0','216.5','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1594','324','14','6','2025-01-24','12623','0',NULL,NULL,'0','5.5','SELO','0','2025-01-24 15:32:47','2025-01-24 15:32:47','0','5.5','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1595','324','14','6','2025-01-24','12623','0',NULL,NULL,'0','16.5','KAHVE','0','2025-01-24 15:32:47','2025-01-24 15:32:47','0','16.5','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1596','324','14','6','2025-01-24','12623','0',NULL,NULL,'0','7.5','NA??L','0','2025-01-24 15:32:47','2025-01-24 15:32:47','0','7.5','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1597','324','14','6','2025-01-24','12623','0',NULL,NULL,'0','61','YEMEK','0','2025-01-24 15:32:47','2025-01-24 15:32:47','0','61','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1598','324','14','6','2025-01-24','12623','0',NULL,NULL,'0','51.5','SELO','0','2025-01-24 15:32:47','2025-01-24 15:32:47','0','51.5','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1599','324','14','6','2025-01-24','12623','0',NULL,NULL,'0','105.8','SELO','0','2025-01-24 15:32:47','2025-01-24 15:32:47','0','105.8','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1600','324','14','6','2025-01-24','12623','0',NULL,NULL,'0','70','KKARTI YANLI??','0','2025-01-24 15:32:47','2025-01-24 15:32:47','0','70','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1601','324','14','6','2025-01-24','12623','0',NULL,NULL,'0','10','EROL','0','2025-01-24 15:32:47','2025-01-24 15:32:47','0','10','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1602','324','14','6','2025-01-24','12623','0',NULL,NULL,'0','2475','EVRENSEK??Z','0','2025-01-24 15:32:47','2025-01-24 15:32:47','0','2475','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1603','324','14','6','2025-01-24','12623','0',NULL,NULL,'0','84','EKMEK','0','2025-01-24 15:32:47','2025-01-24 15:32:47','0','84','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1604','324','14','6','2025-01-24','12623','0',NULL,NULL,'0','65.5','SELO','0','2025-01-24 15:32:47','2025-01-24 15:32:47','0','65.5','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1605','324','14','6','2025-01-24','12623','0',NULL,NULL,'1134.5','0','OYUNCAK','0','2025-01-24 15:32:47','2025-01-24 15:32:47','1','1134.5','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1606','324','14','6','2025-01-24','12623','0',NULL,NULL,'4160','0','MAZOT','0','2025-01-24 15:32:47','2025-01-24 15:32:47','1','4160','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1607','325','14','2','2025-01-24','12624','0',NULL,NULL,'0','0','0','0','2025-01-24 15:45:52','2025-01-24 15:45:52','0','0','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1608','326','14','3','2025-01-25','12625','0',NULL,NULL,'0','7000','KKart?? G??nsonu','7','2025-01-25 14:21:12','2025-01-25 14:21:12','2','7000','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1609','326','14','3','2025-01-25','12625','0',NULL,NULL,'0','175','yemek','0','2025-01-25 14:21:12','2025-01-25 14:21:12','0','175','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1610','327','14','2','2025-01-25','12626','0',NULL,NULL,'0','0','0','0','2025-01-25 14:58:09','2025-01-25 14:58:09','0','0','2');
INSERT INTO `kasahesapalmaislems` VALUES ('1611','328','14','2','2025-01-25','12627','0',NULL,NULL,'0','19590.39','KKart?? G??nsonu','7','2025-01-25 15:12:39','2025-01-25 15:12:39','2','19590.39','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1612','328','14','2','2025-01-25','12627','0',NULL,NULL,'0','2407.5','KKart?? G??nsonu','3','2025-01-25 15:12:39','2025-01-25 15:12:39','2','2407.5','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1613','328','14','2','2025-01-25','12627','0',NULL,NULL,'0','914.57','ecem','0','2025-01-25 15:12:39','2025-01-25 15:12:39','0','914.57','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1614','328','14','2','2025-01-25','12627','0',NULL,NULL,'0','87','yemek','0','2025-01-25 15:12:39','2025-01-25 15:12:39','0','87','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1615','328','14','2','2025-01-25','12627','0',NULL,NULL,'0','1120','TRAPZON','0','2025-01-25 15:12:39','2025-01-25 15:12:39','0','1120','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1616','328','14','2','2025-01-25','12627','0',NULL,NULL,'0','175','irfan','0','2025-01-25 15:12:39','2025-01-25 15:12:39','0','175','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1617','328','14','2','2025-01-25','12627','0',NULL,NULL,'0','70','erol','0','2025-01-25 15:12:39','2025-01-25 15:12:39','0','70','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1618','328','14','2','2025-01-25','12627','0',NULL,NULL,'0','2366','evrensekiz','0','2025-01-25 15:12:39','2025-01-25 15:12:39','0','2366','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1619','328','14','2','2025-01-25','12627','0',NULL,NULL,'0','1096','bircan ay??r','0','2025-01-25 15:12:39','2025-01-25 15:12:39','0','1096','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1620','328','14','2','2025-01-25','12627','0',NULL,NULL,'0','82','erol','0','2025-01-25 15:12:39','2025-01-25 15:12:39','0','82','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1621','328','14','2','2025-01-25','12627','0',NULL,NULL,'100','0','fasulye','0','2025-01-25 15:12:39','2025-01-25 15:12:39','1','100','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1622','328','14','2','2025-01-25','12627','0',NULL,NULL,'2043','0','erkan ay??r','0','2025-01-25 15:12:39','2025-01-25 15:12:39','1','2043','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1623','328','14','2','2025-01-25','12627','0',NULL,NULL,'181','0','k??m??r','0','2025-01-25 15:12:39','2025-01-25 15:12:39','1','181','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1624','328','14','2','2025-01-25','12627','0',NULL,NULL,'40','0','priz','0','2025-01-25 15:12:39','2025-01-25 15:12:39','1','40','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1625','328','14','2','2025-01-25','12627','0',NULL,NULL,'2000','0','mazot','0','2025-01-25 15:12:39','2025-01-25 15:12:39','1','2000','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1626','329','14','2','2025-01-25','12628','0',NULL,NULL,'0','0','0','0','2025-01-25 15:19:13','2025-01-25 15:19:13','0','0','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1627','330','14','2','2025-01-26','12629','0',NULL,NULL,'0','0','0','0','2025-01-26 15:02:33','2025-01-26 15:02:33','0','0','2');
INSERT INTO `kasahesapalmaislems` VALUES ('1641','332','14','2','2025-01-26','12631','0',NULL,NULL,'0','0','0','0','2025-01-26 15:21:47','2025-01-26 15:21:47','0','0','0');
INSERT INTO `kasahesapalmaislems` VALUES ('1642','331','14','2','2025-01-26','12630','0',NULL,NULL,'0','12434.37','KKart?? G??nsonu','7','2025-01-26 15:23:21','2025-01-26 15:23:21','2','12434.37','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1643','331','14','2','2025-01-26','12630','0',NULL,NULL,'0','82.95','YEMEK','0','2025-01-26 15:23:21','2025-01-26 15:23:21','0','82.95','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1644','331','14','2','2025-01-26','12630','0',NULL,NULL,'0','2086.5','KKart?? G??nsonu','3','2025-01-26 15:23:21','2025-01-26 15:23:21','2','2086.5','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1645','331','14','2','2025-01-26','12630','0',NULL,NULL,'0','1055','TRAPZON','0','2025-01-26 15:23:21','2025-01-26 15:23:21','0','1055','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1646','331','14','2','2025-01-26','12630','0',NULL,NULL,'0','120','tolga g??reler','0','2025-01-26 15:23:21','2025-01-26 15:23:21','0','120','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1647','331','14','2','2025-01-26','12630','0',NULL,NULL,'0','47','KAHVE','0','2025-01-26 15:23:21','2025-01-26 15:23:21','0','47','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1648','331','14','2','2025-01-26','12630','0',NULL,NULL,'0','131','TEM??ZL??K','0','2025-01-26 15:23:21','2025-01-26 15:23:21','0','131','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1649','331','14','2','2025-01-26','12630','0',NULL,NULL,'0','2277','EVRENSEK??Z','0','2025-01-26 15:23:21','2025-01-26 15:23:21','0','2277','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1650','331','14','2','2025-01-26','12630','0',NULL,NULL,'40','0','oyuncak','0','2025-01-26 15:23:21','2025-01-26 15:23:21','1','40','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1651','331','14','2','2025-01-26','12630','0',NULL,NULL,'215','0','g??lcan azcakar','0','2025-01-26 15:23:21','2025-01-26 15:23:21','1','215','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1652','331','14','2','2025-01-26','12630','0',NULL,NULL,'200','0','kuru fasulye','0','2025-01-26 15:23:21','2025-01-26 15:23:21','1','200','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1653','331','14','2','2025-01-26','12630','0',NULL,NULL,'3023','0','mazot','0','2025-01-26 15:23:21','2025-01-26 15:23:21','1','3023','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1654','331','14','2','2025-01-26','12630','0',NULL,NULL,'115','0','bozuk para','0','2025-01-26 15:23:21','2025-01-26 15:23:21','1','115','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1655','331','14','2','2025-01-26','12630','0',NULL,NULL,'0','1000','mazot ??abana ??irket','0','2025-01-26 15:23:21','2025-01-26 15:23:21','0','1000','0');
INSERT INTO `kasahesapalmaislems` VALUES ('1656','333','14','3','2025-01-27','12632','0',NULL,NULL,'0','2340','KKart?? G??nsonu','7','2025-01-27 14:42:07','2025-01-27 14:42:07','2','2340','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1657','333','14','3','2025-01-27','12632','0',NULL,NULL,'0','350','yemek','0','2025-01-27 14:42:07','2025-01-27 14:42:07','0','350','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1658','334','14','2','2025-01-27','12633','0',NULL,NULL,'0','0','0','0','2025-01-27 14:49:44','2025-01-27 14:49:44','0','0','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1695','336','14','6','2025-01-27','12635','0',NULL,NULL,'0','0','0','0','2025-01-27 15:06:41','2025-01-27 15:06:41','0','0','0');
INSERT INTO `kasahesapalmaislems` VALUES ('1696','335','14','6','2025-01-27','12634','0',NULL,NULL,'0','14601.11','KKart?? G??nsonu','7','2025-01-27 15:31:50','2025-01-27 15:31:50','2','14601.11','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1697','335','14','6','2025-01-27','12634','0',NULL,NULL,'0','4250.84','KKart?? G??nsonu','3','2025-01-27 15:31:50','2025-01-27 15:31:50','2','4250.84','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1698','335','14','6','2025-01-27','12634','0',NULL,NULL,'0','21','kahve','0','2025-01-27 15:31:50','2025-01-27 15:31:50','0','21','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1699','335','14','6','2025-01-27','12634','0',NULL,NULL,'0','140','bircan ay??r','0','2025-01-27 15:31:50','2025-01-27 15:31:50','0','140','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1700','335','14','6','2025-01-27','12634','0',NULL,NULL,'0','946.2','TRAPZON','0','2025-01-27 15:31:50','2025-01-27 15:31:50','0','946.2','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1701','335','14','6','2025-01-27','12634','0',NULL,NULL,'0','55','temizlik','0','2025-01-27 15:31:50','2025-01-27 15:31:50','0','55','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1702','335','14','6','2025-01-27','12634','0',NULL,NULL,'0','11','selo','0','2025-01-27 15:31:50','2025-01-27 15:31:50','0','11','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1703','335','14','6','2025-01-27','12634','0',NULL,NULL,'0','38.5','selo','0','2025-01-27 15:31:50','2025-01-27 15:31:50','0','38.5','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1704','335','14','6','2025-01-27','12634','0',NULL,NULL,'0','87.5','erol','0','2025-01-27 15:31:50','2025-01-27 15:31:50','0','87.5','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1705','335','14','6','2025-01-27','12634','0',NULL,NULL,'0','82','erol','0','2025-01-27 15:31:50','2025-01-27 15:31:50','0','82','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1706','335','14','6','2025-01-27','12634','0',NULL,NULL,'0','34.85','tahsin','0','2025-01-27 15:31:50','2025-01-27 15:31:50','0','34.85','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1707','335','14','6','2025-01-27','12634','0',NULL,NULL,'0','42','erol','0','2025-01-27 15:31:50','2025-01-27 15:31:50','0','42','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1708','335','14','6','2025-01-27','12634','0',NULL,NULL,'0','361.25','fatma ge??ko','0','2025-01-27 15:31:50','2025-01-27 15:31:50','0','361.25','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1709','335','14','6','2025-01-27','12634','0',NULL,NULL,'0','68','??r??n iade','0','2025-01-27 15:31:50','2025-01-27 15:31:50','0','68','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1710','335','14','6','2025-01-27','12634','0',NULL,NULL,'0','2475','evrensekiz ekmek 300 ekm 30 simit','0','2025-01-27 15:31:50','2025-01-27 15:31:50','0','2475','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1711','335','14','6','2025-01-27','12634','0',NULL,NULL,'0','16','irfan','0','2025-01-27 15:31:50','2025-01-27 15:31:50','0','16','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1712','335','14','6','2025-01-27','12634','0',NULL,NULL,'357','0','oyuncak','0','2025-01-27 15:31:50','2025-01-27 15:31:50','1','357','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1713','335','14','6','2025-01-27','12634','0',NULL,NULL,'6552','0','mazot','0','2025-01-27 15:31:50','2025-01-27 15:31:50','1','6552','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1714','337','14','3','2025-01-28','12636','0',NULL,NULL,'0','11048.4','KKart?? G??nsonu','7','2025-01-28 13:53:05','2025-01-28 13:53:05','2','11048.4','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1715','337','14','3','2025-01-28','12636','0',NULL,NULL,'0','175','YEMEK','0','2025-01-28 13:53:05','2025-01-28 13:53:05','0','175','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1716','338','14','2','2025-01-28','12637','0',NULL,NULL,'0','0','0','0','2025-01-28 14:58:57','2025-01-28 14:58:57','0','0','2');
INSERT INTO `kasahesapalmaislems` VALUES ('1717','339','14','6','2025-01-28','12638','0',NULL,NULL,'0','11791','KKart?? G??nsonu','7','2025-01-28 15:34:58','2025-01-28 15:34:58','2','11791','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1718','339','14','6','2025-01-28','12638','0',NULL,NULL,'0','3943.1','KKart?? G??nsonu','3','2025-01-28 15:34:58','2025-01-28 15:34:58','2','3943.1','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1719','339','14','6','2025-01-28','12638','0',NULL,NULL,'0','13.5','KAHVE','0','2025-01-28 15:34:58','2025-01-28 15:34:58','0','13.5','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1720','339','14','6','2025-01-28','12638','0',NULL,NULL,'0','1095.6','TRAPZON','0','2025-01-28 15:34:58','2025-01-28 15:34:58','0','1095.6','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1721','339','14','6','2025-01-28','12638','0',NULL,NULL,'0','57.75','ERHAN GE??KO','0','2025-01-28 15:34:58','2025-01-28 15:34:58','0','57.75','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1722','339','14','6','2025-01-28','12638','0',NULL,NULL,'0','5.5','FATMA GE??KO','0','2025-01-28 15:34:58','2025-01-28 15:34:58','0','5.5','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1723','339','14','6','2025-01-28','12638','0',NULL,NULL,'0','960','BOZA','0','2025-01-28 15:34:58','2025-01-28 15:34:58','0','960','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1724','339','14','6','2025-01-28','12638','0',NULL,NULL,'0','175','??RFAN YEMEK','0','2025-01-28 15:34:58','2025-01-28 15:34:58','0','175','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1725','339','14','6','2025-01-28','12638','0',NULL,NULL,'0','72','??R??N ??ADE','0','2025-01-28 15:34:58','2025-01-28 15:34:58','0','72','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1726','339','14','6','2025-01-28','12638','0',NULL,NULL,'0','21','KAHVE','0','2025-01-28 15:34:58','2025-01-28 15:34:58','0','21','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1727','339','14','6','2025-01-28','12638','0',NULL,NULL,'0','2400','KM??R FAZLA CIKI??','0','2025-01-28 15:34:58','2025-01-28 15:34:58','0','2400','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1728','339','14','6','2025-01-28','12638','0',NULL,NULL,'0','150','K??M??R FARKI','0','2025-01-28 15:34:58','2025-01-28 15:34:58','0','150','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1729','339','14','6','2025-01-28','12638','0',NULL,NULL,'0','61','TAHS??N YEMEK','0','2025-01-28 15:34:58','2025-01-28 15:34:58','0','61','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1730','339','14','6','2025-01-28','12638','0',NULL,NULL,'0','20','??ATAL','0','2025-01-28 15:34:58','2025-01-28 15:34:58','0','20','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1731','339','14','6','2025-01-28','12638','0',NULL,NULL,'0','49.5','TEM??ZL??K','0','2025-01-28 15:34:58','2025-01-28 15:34:58','0','49.5','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1732','339','14','6','2025-01-28','12638','0',NULL,NULL,'0','17','SAVA?? ??AKAR','0','2025-01-28 15:34:58','2025-01-28 15:34:58','0','17','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1733','339','14','6','2025-01-28','12638','0',NULL,NULL,'0','82','EROL','0','2025-01-28 15:34:58','2025-01-28 15:34:58','0','82','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1734','339','14','6','2025-01-28','12638','0',NULL,NULL,'0','129','MUSTAFA SEZER','0','2025-01-28 15:34:58','2025-01-28 15:34:58','0','129','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1735','339','14','6','2025-01-28','12638','0',NULL,NULL,'0','21','VOLKAN KAHVE','0','2025-01-28 15:34:58','2025-01-28 15:34:58','0','21','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1736','339','14','6','2025-01-28','12638','0',NULL,NULL,'0','2257','EVRENSEK??Z EKMEK','0','2025-01-28 15:34:58','2025-01-28 15:34:58','0','2257','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1737','339','14','6','2025-01-28','12638','0',NULL,NULL,'348','0','OYUNCAK','0','2025-01-28 15:34:58','2025-01-28 15:34:58','1','348','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1738','339','14','6','2025-01-28','12638','0',NULL,NULL,'4460.62','0','MAZOT','0','2025-01-28 15:34:58','2025-01-28 15:34:58','1','4460.62','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1739','340','14','1','2025-01-28','12639','0',NULL,NULL,'0','0','0','0','2025-01-28 15:38:50','2025-01-28 15:38:50','0','0','0');
INSERT INTO `kasahesapalmaislems` VALUES ('1740','341','14','3','2025-01-29','12640','0',NULL,NULL,'0','1300','KKart?? G??nsonu','7','2025-01-29 14:23:54','2025-01-29 14:23:54','2','1300','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1741','341','14','3','2025-01-29','12640','0',NULL,NULL,'0','350','yemek','0','2025-01-29 14:23:54','2025-01-29 14:23:54','0','350','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1743','342','14','6','2025-01-29','12641','0',NULL,NULL,'0','0','0','0','2025-01-29 15:10:17','2025-01-29 15:10:17','0','0','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1744','343','14','6','2025-01-29','12642','0',NULL,NULL,'0','8327.07','KKart?? G??nsonu','7','2025-01-29 15:27:24','2025-01-29 15:27:24','2','8327.07','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1745','343','14','6','2025-01-29','12642','0',NULL,NULL,'0','2400','KKart?? G??nsonu','3','2025-01-29 15:27:24','2025-01-29 15:27:24','2','2400','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1746','343','14','6','2025-01-29','12642','0',NULL,NULL,'0','70','mazot','0','2025-01-29 15:27:24','2025-01-29 15:27:24','0','70','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1747','343','14','6','2025-01-29','12642','0',NULL,NULL,'0','464','TRAPZON','0','2025-01-29 15:27:24','2025-01-29 15:27:24','0','464','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1748','343','14','6','2025-01-29','12642','0',NULL,NULL,'0','31','erol','0','2025-01-29 15:27:24','2025-01-29 15:27:24','0','31','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1749','343','14','6','2025-01-29','12642','0',NULL,NULL,'0','386','??avu??han','0','2025-01-29 15:27:24','2025-01-29 15:27:24','0','386','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1750','343','14','6','2025-01-29','12642','0',NULL,NULL,'0','44','??ay','0','2025-01-29 15:27:24','2025-01-29 15:27:24','0','44','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1751','343','14','6','2025-01-29','12642','0',NULL,NULL,'0','151.4','erol','0','2025-01-29 15:27:24','2025-01-29 15:27:24','0','151.4','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1752','343','14','6','2025-01-29','12642','0',NULL,NULL,'0','82','erol','0','2025-01-29 15:27:24','2025-01-29 15:27:24','0','82','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1753','343','14','6','2025-01-29','12642','0',NULL,NULL,'0','45','TAHS??N YEMEK','0','2025-01-29 15:27:24','2025-01-29 15:27:24','0','45','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1754','343','14','6','2025-01-29','12642','0',NULL,NULL,'0','1125','S??LEYMAN VARDAR','0','2025-01-29 15:27:24','2025-01-29 15:27:24','0','1125','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1755','343','14','6','2025-01-29','12642','0',NULL,NULL,'0','16','??ADE ??R??N','0','2025-01-29 15:27:24','2025-01-29 15:27:24','0','16','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1756','343','14','6','2025-01-29','12642','0',NULL,NULL,'0','2402.5','evrensekiz ekmek','0','2025-01-29 15:27:24','2025-01-29 15:27:24','0','2402.5','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1757','343','14','6','2025-01-29','12642','0',NULL,NULL,'2743.75','0','BOZUK PARA+OYUNCAK','0','2025-01-29 15:27:24','2025-01-29 15:27:24','1','2743.75','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1758','343','14','6','2025-01-29','12642','0',NULL,NULL,'1500','0','MAZOT','0','2025-01-29 15:27:24','2025-01-29 15:27:24','1','1500','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1759','344','14','6','2025-01-29','12643','0',NULL,NULL,'0','0','0','0','2025-01-29 15:32:15','2025-01-29 15:32:15','0','0','0');
INSERT INTO `kasahesapalmaislems` VALUES ('1760','345','14','3','2025-01-30','12644','0',NULL,NULL,'0','14322.39','KKart?? G??nsonu','7','2025-01-30 14:09:00','2025-01-30 14:09:00','2','14322.39','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1761','345','14','3','2025-01-30','12644','0',NULL,NULL,'0','350','yemek','0','2025-01-30 14:09:00','2025-01-30 14:09:00','0','350','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1762','346','14','6','2025-01-30','12645','0',NULL,NULL,'0','0','0','0','2025-01-30 15:06:08','2025-01-30 15:06:08','0','0','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1763','347','14','6','2025-01-30','12646','0',NULL,NULL,'0','10678.36','KKart?? G??nsonu','7','2025-01-30 15:17:16','2025-01-30 15:17:16','2','10678.36','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1764','347','14','6','2025-01-30','12646','0',NULL,NULL,'0','291.94','KKart?? G??nsonu','3','2025-01-30 15:17:16','2025-01-30 15:17:16','2','291.94','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1765','347','14','6','2025-01-30','12646','0',NULL,NULL,'0','996','TRAPZON','0','2025-01-30 15:17:16','2025-01-30 15:17:16','0','996','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1766','347','14','6','2025-01-30','12646','0',NULL,NULL,'0','26','TEM??ZL??K','0','2025-01-30 15:17:16','2025-01-30 15:17:16','0','26','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1767','347','14','6','2025-01-30','12646','0',NULL,NULL,'0','10','DURSUN','0','2025-01-30 15:17:16','2025-01-30 15:17:16','0','10','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1768','347','14','6','2025-01-30','12646','0',NULL,NULL,'0','965','T??P SATI??I YANLI??','0','2025-01-30 15:17:16','2025-01-30 15:17:16','0','965','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1769','347','14','6','2025-01-30','12646','0',NULL,NULL,'0','35','EROL','0','2025-01-30 15:17:16','2025-01-30 15:17:16','0','35','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1770','347','14','6','2025-01-30','12646','0',NULL,NULL,'0','1500','SELO HAMMAL','0','2025-01-30 15:17:16','2025-01-30 15:17:16','0','1500','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1771','347','14','6','2025-01-30','12646','0',NULL,NULL,'0','37','TAHS??N','0','2025-01-30 15:17:16','2025-01-30 15:17:16','0','37','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1772','347','14','6','2025-01-30','12646','0',NULL,NULL,'0','9','KAHVE','0','2025-01-30 15:17:16','2025-01-30 15:17:16','0','9','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1773','347','14','6','2025-01-30','12646','0',NULL,NULL,'0','82','EROL','0','2025-01-30 15:17:16','2025-01-30 15:17:16','0','82','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1774','347','14','6','2025-01-30','12646','0',NULL,NULL,'0','2293.75','EVRENSEK??Z EKEMEK','0','2025-01-30 15:17:16','2025-01-30 15:17:16','0','2293.75','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1775','347','14','6','2025-01-30','12646','0',NULL,NULL,'306','0','OYUNCAK','0','2025-01-30 15:17:16','2025-01-30 15:17:16','1','306','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1776','347','14','6','2025-01-30','12646','0',NULL,NULL,'800','0','MAZOT','0','2025-01-30 15:17:16','2025-01-30 15:17:16','1','800','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1777','348','14','6','2025-01-30','12647','0',NULL,NULL,'0','0','0','0','2025-01-30 15:20:59','2025-01-30 15:20:59','0','0','0');
INSERT INTO `kasahesapalmaislems` VALUES ('1778','349','14','3','2025-01-31','12648','0',NULL,NULL,'0','1788.58','KKart?? G??nsonu','7','2025-01-31 15:04:07','2025-01-31 15:04:07','2','1788.58','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1779','349','14','3','2025-01-31','12648','0',NULL,NULL,'0','350','yemek','0','2025-01-31 15:04:07','2025-01-31 15:04:07','0','350','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1780','350','14','2','2025-01-31','12649','0',NULL,NULL,'0','0','0','0','2025-01-31 15:14:03','2025-01-31 15:14:03','0','0','2');
INSERT INTO `kasahesapalmaislems` VALUES ('1781','351','14','6','2025-01-31','12650','0',NULL,NULL,'0','12869.85','KKart?? G??nsonu','7','2025-01-31 15:28:39','2025-01-31 15:28:39','2','12869.85','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1782','351','14','6','2025-01-31','12650','0',NULL,NULL,'0','6842.38','KKart?? G??nsonu','3','2025-01-31 15:28:39','2025-01-31 15:28:39','2','6842.38','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1783','351','14','6','2025-01-31','12650','0',NULL,NULL,'0','13.6','kahve','0','2025-01-31 15:28:39','2025-01-31 15:28:39','0','13.6','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1784','351','14','6','2025-01-31','12650','0',NULL,NULL,'0','1045.8','TRAPZON','0','2025-01-31 15:28:39','2025-01-31 15:28:39','0','1045.8','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1785','351','14','6','2025-01-31','12650','0',NULL,NULL,'0','61.5','ersan ge??ko','0','2025-01-31 15:28:39','2025-01-31 15:28:39','0','61.5','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1786','351','14','6','2025-01-31','12650','0',NULL,NULL,'0','16.5','kahve','0','2025-01-31 15:28:39','2025-01-31 15:28:39','0','16.5','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1787','351','14','6','2025-01-31','12650','0',NULL,NULL,'0','848.4','damak k??fte','0','2025-01-31 15:28:39','2025-01-31 15:28:39','0','848.4','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1788','351','14','6','2025-01-31','12650','0',NULL,NULL,'0','613.5','selo','0','2025-01-31 15:28:39','2025-01-31 15:28:39','0','613.5','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1789','351','14','6','2025-01-31','12650','0',NULL,NULL,'0','30','pide','0','2025-01-31 15:28:39','2025-01-31 15:28:39','0','30','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1790','351','14','6','2025-01-31','12650','0',NULL,NULL,'0','1500','selo hammal','0','2025-01-31 15:28:39','2025-01-31 15:28:39','0','1500','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1791','351','14','6','2025-01-31','12650','0',NULL,NULL,'0','100','erol','0','2025-01-31 15:28:39','2025-01-31 15:28:39','0','100','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1792','351','14','6','2025-01-31','12650','0',NULL,NULL,'0','51','yemek','0','2025-01-31 15:28:39','2025-01-31 15:28:39','0','51','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1793','351','14','6','2025-01-31','12650','0',NULL,NULL,'0','30','eldiven','0','2025-01-31 15:28:39','2025-01-31 15:28:39','0','30','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1794','351','14','6','2025-01-31','12650','0',NULL,NULL,'0','82','erol sigara','0','2025-01-31 15:28:39','2025-01-31 15:28:39','0','82','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1795','351','14','6','2025-01-31','12650','0',NULL,NULL,'0','374.5','??zlem ??oral??','0','2025-01-31 15:28:39','2025-01-31 15:28:39','0','374.5','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1796','351','14','6','2025-01-31','12650','0',NULL,NULL,'0','2412.5','evrensekiz ekmek','0','2025-01-31 15:28:39','2025-01-31 15:28:39','0','2412.5','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1797','351','14','6','2025-01-31','12650','0',NULL,NULL,'948','0','oyuncak','0','2025-01-31 15:28:39','2025-01-31 15:28:39','1','948','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1798','351','14','6','2025-01-31','12650','0',NULL,NULL,'7642.38','0','mazot','0','2025-01-31 15:28:39','2025-01-31 15:28:39','1','7642.38','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1799','352','14','1','2025-01-31','12651','0',NULL,NULL,'0','0','0','0','2025-01-31 15:32:34','2025-01-31 15:32:34','0','0','0');
INSERT INTO `kasahesapalmaislems` VALUES ('1800','353','14','3','2025-02-01','12652','0',NULL,NULL,'0','1003.12','KKart?? G??nsonu','7','2025-02-01 15:04:08','2025-02-01 15:04:08','2','1003.12','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1801','353','14','3','2025-02-01','12652','0',NULL,NULL,'0','175','yemek','0','2025-02-01 15:04:08','2025-02-01 15:04:08','0','175','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1803','355','14','6','2025-02-01','12654','0',NULL,NULL,'0','15141.24','KKart?? G??nsonu','7','2025-02-01 15:36:17','2025-02-01 15:36:17','2','15141.24','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1804','355','14','6','2025-02-01','12654','0',NULL,NULL,'0','13.5','kahve','0','2025-02-01 15:36:17','2025-02-01 15:36:17','0','13.5','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1805','355','14','6','2025-02-01','12654','0',NULL,NULL,'0','605.9','TRAPZON','0','2025-02-01 15:36:17','2025-02-01 15:36:17','0','605.9','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1806','355','14','6','2025-02-01','12654','0',NULL,NULL,'0','26.5','selo','0','2025-02-01 15:36:17','2025-02-01 15:36:17','0','26.5','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1807','355','14','6','2025-02-01','12654','0',NULL,NULL,'0','40','selo','0','2025-02-01 15:36:17','2025-02-01 15:36:17','0','40','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1808','355','14','6','2025-02-01','12654','0',NULL,NULL,'0','25','temizlik','0','2025-02-01 15:36:17','2025-02-01 15:36:17','0','25','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1809','355','14','6','2025-02-01','12654','0',NULL,NULL,'0','10','ekmek','0','2025-02-01 15:36:17','2025-02-01 15:36:17','0','10','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1810','355','14','6','2025-02-01','12654','0',NULL,NULL,'0','33.5','??r??n iade','0','2025-02-01 15:36:17','2025-02-01 15:36:17','0','33.5','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1811','355','14','6','2025-02-01','12654','0',NULL,NULL,'0','1500','selo hammal','0','2025-02-01 15:36:17','2025-02-01 15:36:17','0','1500','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1812','355','14','6','2025-02-01','12654','0',NULL,NULL,'0','175','irfan','0','2025-02-01 15:36:17','2025-02-01 15:36:17','0','175','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1813','355','14','6','2025-02-01','12654','0',NULL,NULL,'0','51','yemek','0','2025-02-01 15:36:17','2025-02-01 15:36:17','0','51','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1814','355','14','6','2025-02-01','12654','0',NULL,NULL,'0','71','??r??n iade','0','2025-02-01 15:36:17','2025-02-01 15:36:17','0','71','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1815','355','14','6','2025-02-01','12654','0',NULL,NULL,'0','5','fatma ge??ko','0','2025-02-01 15:36:17','2025-02-01 15:36:17','0','5','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1816','355','14','6','2025-02-01','12654','0',NULL,NULL,'0','297','irfan','0','2025-02-01 15:36:17','2025-02-01 15:36:17','0','297','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1817','355','14','6','2025-02-01','12654','0',NULL,NULL,'0','2.5','ferudun sevin??','0','2025-02-01 15:36:17','2025-02-01 15:36:17','0','2.5','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1818','355','14','6','2025-02-01','12654','0',NULL,NULL,'0','165.5','ali ke??ici','0','2025-02-01 15:36:17','2025-02-01 15:36:17','0','165.5','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1819','355','14','6','2025-02-01','12654','0',NULL,NULL,'771','0','oyuncak','0','2025-02-01 15:36:17','2025-02-01 15:36:17','1','771','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1820','355','14','6','2025-02-01','12654','0',NULL,NULL,'0','374.5','KKart?? G??nsonu','3','2025-02-01 15:36:17','2025-02-01 15:36:17','2','374.5','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1821','356','14','6','2025-02-01','12655','0',NULL,NULL,'0','0','0','0','2025-02-01 15:49:41','2025-02-01 15:49:41','0','0','0');
INSERT INTO `kasahesapalmaislems` VALUES ('1822','354','14','6','2025-02-01','12653','0',NULL,NULL,'0','0','0','0','2025-02-02 08:19:56','2025-02-02 08:19:56','0','0','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1823','357','14','3','2025-02-03','12656','0',NULL,NULL,'0','2500','KKart?? G??nsonu','7','2025-02-03 14:21:10','2025-02-03 14:21:10','2','2500','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1824','357','14','3','2025-02-03','12656','0',NULL,NULL,'0','350','YEMEK','0','2025-02-03 14:21:10','2025-02-03 14:21:10','0','350','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1825','358','14','2','2025-02-03','12657','0',NULL,NULL,'0','0','0','0','2025-02-03 14:52:21','2025-02-03 14:52:21','0','0','2');
INSERT INTO `kasahesapalmaislems` VALUES ('1826','359','14','2','2025-02-03','12658','0',NULL,NULL,'0','8484.21','KKart?? G??nsonu','7','2025-02-03 15:05:27','2025-02-03 15:05:27','2','8484.21','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1827','359','14','2','2025-02-03','12658','0',NULL,NULL,'0','2040','KKart?? G??nsonu','3','2025-02-03 15:05:27','2025-02-03 15:05:27','2','2040','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1828','359','14','2','2025-02-03','12658','0',NULL,NULL,'0','82','EROL','0','2025-02-03 15:05:27','2025-02-03 15:05:27','0','82','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1829','359','14','2','2025-02-03','12658','0',NULL,NULL,'0','87.45','YEMEK','0','2025-02-03 15:05:27','2025-02-03 15:05:27','0','87.45','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1830','359','14','2','2025-02-03','12658','0',NULL,NULL,'0','40','KAHVE','0','2025-02-03 15:05:27','2025-02-03 15:05:27','0','40','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1831','359','14','2','2025-02-03','12658','0',NULL,NULL,'0','82','EROL','0','2025-02-03 15:05:27','2025-02-03 15:05:27','0','82','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1832','359','14','2','2025-02-03','12658','0',NULL,NULL,'0','1360','TRAPZON','0','2025-02-03 15:05:27','2025-02-03 15:05:27','0','1360','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1833','359','14','2','2025-02-03','12658','0',NULL,NULL,'0','30','EROL','0','2025-02-03 15:05:27','2025-02-03 15:05:27','0','30','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1834','359','14','2','2025-02-03','12658','0',NULL,NULL,'0','2985','KARI??TIRAN EKM','0','2025-02-03 15:05:27','2025-02-03 15:05:27','0','2985','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1835','359','14','2','2025-02-03','12658','0',NULL,NULL,'378','0','??RFAN AB??','0','2025-02-03 15:05:27','2025-02-03 15:05:27','1','378','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1836','359','14','2','2025-02-03','12658','0',NULL,NULL,'35','0','SAVA?? ??AKAR','0','2025-02-03 15:05:27','2025-02-03 15:05:27','1','35','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1837','359','14','2','2025-02-03','12658','0',NULL,NULL,'240','0','K??LOT','0','2025-02-03 15:05:27','2025-02-03 15:05:27','1','240','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1838','359','14','2','2025-02-03','12658','0',NULL,NULL,'275','0','S??LEYMAN VARDAR','0','2025-02-03 15:05:27','2025-02-03 15:05:27','1','275','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1839','359','14','2','2025-02-03','12658','0',NULL,NULL,'1000','0','MAZOT','0','2025-02-03 15:05:27','2025-02-03 15:05:27','1','1000','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1841','360','14','2','2025-02-03','12659','0',NULL,NULL,'0','0','0','0','2025-02-03 17:11:25','2025-02-03 17:11:25','0','0','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1842','361','14','3','2025-02-04','12660','0',NULL,NULL,'0','175','yemek','0','2025-02-04 13:33:23','2025-02-04 13:33:23','0','175','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1843','362','14','2','2025-02-04','12661','0',NULL,NULL,'0','0','0','0','2025-02-04 14:43:57','2025-02-04 14:43:57','0','0','2');
INSERT INTO `kasahesapalmaislems` VALUES ('1844','363','14','2','2025-02-04','12662','0',NULL,NULL,'0','8590.13','KKart?? G??nsonu','7','2025-02-04 14:54:06','2025-02-04 14:54:06','2','8590.13','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1845','363','14','2','2025-02-04','12662','0',NULL,NULL,'0','6187.98','KKart?? G??nsonu','3','2025-02-04 14:54:06','2025-02-04 14:54:06','2','6187.98','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1846','363','14','2','2025-02-04','12662','0',NULL,NULL,'0','970','TRAPZON','0','2025-02-04 14:54:06','2025-02-04 14:54:06','0','970','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1847','363','14','2','2025-02-04','12662','0',NULL,NULL,'0','175','??RFAN YEMEK','0','2025-02-04 14:54:06','2025-02-04 14:54:06','0','175','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1848','363','14','2','2025-02-04','12662','0',NULL,NULL,'0','9010','MAZOT PARASI MUHASEBEYE','0','2025-02-04 14:54:06','2025-02-04 14:54:06','0','9010','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1849','363','14','2','2025-02-04','12662','0',NULL,NULL,'0','50','EROL','0','2025-02-04 14:54:06','2025-02-04 14:54:06','0','50','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1850','363','14','2','2025-02-04','12662','0',NULL,NULL,'0','52','AKIN KAYNAK','0','2025-02-04 14:54:06','2025-02-04 14:54:06','0','52','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1851','363','14','2','2025-02-04','12662','0',NULL,NULL,'0','3220','EVRENSEK??Z','0','2025-02-04 14:54:06','2025-02-04 14:54:06','0','3220','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1852','363','14','2','2025-02-04','12662','0',NULL,NULL,'75','0','P??DE','0','2025-02-04 14:54:06','2025-02-04 14:54:06','1','75','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1853','363','14','2','2025-02-04','12662','0',NULL,NULL,'50','0','P??DE','0','2025-02-04 14:54:06','2025-02-04 14:54:06','1','50','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1854','363','14','2','2025-02-04','12662','0',NULL,NULL,'60','0','AKIN','0','2025-02-04 14:54:06','2025-02-04 14:54:06','1','60','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1855','363','14','2','2025-02-04','12662','0',NULL,NULL,'640','0','B??RCAN AYIR','0','2025-02-04 14:54:06','2025-02-04 14:54:06','1','640','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1856','363','14','2','2025-02-04','12662','0',NULL,NULL,'15583','0','MAZOT','0','2025-02-04 14:54:06','2025-02-04 14:54:06','1','15583','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1857','364','14','2','2025-02-04','12663','0',NULL,NULL,'0','0','0','0','2025-02-04 14:56:38','2025-02-04 14:56:38','0','0','0');
INSERT INTO `kasahesapalmaislems` VALUES ('1858','365','14','3','2025-02-05','12664','0',NULL,NULL,'0','10402.4','KKart?? G??nsonu','7','2025-02-05 13:59:24','2025-02-05 13:59:24','2','10402.4','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1859','365','14','3','2025-02-05','12664','0',NULL,NULL,'0','350','yemek','0','2025-02-05 13:59:24','2025-02-05 13:59:24','0','350','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1860','366','14','2','2025-02-05','12665','0',NULL,NULL,'0','0','0','0','2025-02-05 15:15:16','2025-02-05 15:15:16','0','0','2');
INSERT INTO `kasahesapalmaislems` VALUES ('1861','367','14','2','2025-02-05','12666','0',NULL,NULL,'0','19674.64','KKart?? G??nsonu','7','2025-02-05 15:28:29','2025-02-05 15:28:29','2','19674.64','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1862','367','14','2','2025-02-05','12666','0',NULL,NULL,'0','20','erol','0','2025-02-05 15:28:29','2025-02-05 15:28:29','0','20','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1863','367','14','2','2025-02-05','12666','0',NULL,NULL,'0','884','erol sigara','0','2025-02-05 15:28:29','2025-02-05 15:28:29','0','884','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1864','367','14','2','2025-02-05','12666','0',NULL,NULL,'0','969','KKart?? G??nsonu','3','2025-02-05 15:28:29','2025-02-05 15:28:29','2','969','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1865','367','14','2','2025-02-05','12666','0',NULL,NULL,'0','1300','TRAPZON','0','2025-02-05 15:28:29','2025-02-05 15:28:29','0','1300','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1866','367','14','2','2025-02-05','12666','0',NULL,NULL,'0','306','??avu??han yo??urt','0','2025-02-05 15:28:29','2025-02-05 15:28:29','0','306','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1867','367','14','2','2025-02-05','12666','0',NULL,NULL,'0','75','s??leyman vardar','0','2025-02-05 15:28:29','2025-02-05 15:28:29','0','75','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1868','367','14','2','2025-02-05','12666','0',NULL,NULL,'0','3300','KARI??TIRAN EKM','0','2025-02-05 15:28:29','2025-02-05 15:28:29','0','3300','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1869','367','14','2','2025-02-05','12666','0',NULL,NULL,'100','0','fasulye','0','2025-02-05 15:28:29','2025-02-05 15:28:29','1','100','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1870','367','14','2','2025-02-05','12666','0',NULL,NULL,'170','0','berkay ??akar','0','2025-02-05 15:28:29','2025-02-05 15:28:29','1','170','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1871','367','14','2','2025-02-05','12666','0',NULL,NULL,'52','0','ak??n kaynak','0','2025-02-05 15:28:29','2025-02-05 15:28:29','1','52','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1872','367','14','2','2025-02-05','12666','0',NULL,NULL,'43','0','fatma ge??ko','0','2025-02-05 15:28:29','2025-02-05 15:28:29','1','43','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1873','367','14','2','2025-02-05','12666','0',NULL,NULL,'290','0','mazot','0','2025-02-05 15:28:29','2025-02-05 15:28:29','1','290','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1875','369','14','3','2025-02-06','12668','0',NULL,NULL,'0','8608.27','KKart?? G??nsonu','7','2025-02-06 14:05:17','2025-02-06 14:05:17','2','8608.27','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1876','369','14','3','2025-02-06','12668','0',NULL,NULL,'0','350','yemek','0','2025-02-06 14:05:17','2025-02-06 14:05:17','0','350','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1878','371','14','2','2025-02-06','12670','0',NULL,NULL,'0','10702.02','KKart?? G??nsonu','7','2025-02-06 15:40:49','2025-02-06 15:40:49','2','10702.02','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1879','371','14','2','2025-02-06','12670','0',NULL,NULL,'0','8559.66','KKart?? G??nsonu','3','2025-02-06 15:40:49','2025-02-06 15:40:49','2','8559.66','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1880','371','14','2','2025-02-06','12670','0',NULL,NULL,'0','55','selo','0','2025-02-06 15:40:49','2025-02-06 15:40:49','0','55','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1881','371','14','2','2025-02-06','12670','0',NULL,NULL,'0','906','TRAPZON','0','2025-02-06 15:40:49','2025-02-06 15:40:49','0','906','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1882','371','14','2','2025-02-06','12670','0',NULL,NULL,'0','160','fatma ge??ko','0','2025-02-06 15:40:49','2025-02-06 15:40:49','0','160','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1883','371','14','2','2025-02-06','12670','0',NULL,NULL,'0','350','yemek','0','2025-02-06 15:40:49','2025-02-06 15:40:49','0','350','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1884','371','14','2','2025-02-06','12670','0',NULL,NULL,'0','4000','ali ke??ici','0','2025-02-06 15:40:49','2025-02-06 15:40:49','0','4000','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1885','371','14','2','2025-02-06','12670','0',NULL,NULL,'0','575','erkan ay??r','0','2025-02-06 15:40:49','2025-02-06 15:40:49','0','575','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1886','371','14','2','2025-02-06','12670','0',NULL,NULL,'0','3255','evrensekiz','0','2025-02-06 15:40:49','2025-02-06 15:40:49','0','3255','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1887','371','14','2','2025-02-06','12670','0',NULL,NULL,'0','22','nurettin g??m????','0','2025-02-06 15:40:49','2025-02-06 15:40:49','0','22','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1888','371','14','2','2025-02-06','12670','0',NULL,NULL,'9007','0','mazot','0','2025-02-06 15:40:49','2025-02-06 15:40:49','1','9007','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1889','372','14','2','2025-02-06','12671','0',NULL,NULL,'0','0','0','0','2025-02-06 15:44:54','2025-02-06 15:44:54','0','0','0');
INSERT INTO `kasahesapalmaislems` VALUES ('1890','370','14','2','2025-02-06','12669','0',NULL,NULL,'0','0','0','0','2025-02-07 05:27:22','2025-02-07 05:27:22','0','0','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1891','368','14','2','2025-02-05','12667','0',NULL,NULL,'0','0','0','0','2025-02-07 05:27:59','2025-02-07 05:27:59','0','0','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1892','373','14','3','2025-02-07','12672','0',NULL,NULL,'0','545.41','KKart?? G??nsonu','7','2025-02-07 15:01:00','2025-02-07 15:01:00','2','545.41','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1893','373','14','3','2025-02-07','12672','0',NULL,NULL,'0','350','yemek','0','2025-02-07 15:01:00','2025-02-07 15:01:00','0','350','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1894','374','14','2','2025-02-07','12673','0',NULL,NULL,'0','0','0','0','2025-02-07 15:18:12','2025-02-07 15:18:12','0','0','2');
INSERT INTO `kasahesapalmaislems` VALUES ('1895','375','14','2','2025-02-07','12674','0',NULL,NULL,'0','13210.45','KKart?? G??nsonu','7','2025-02-07 15:25:14','2025-02-07 15:25:14','2','13210.45','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1896','375','14','2','2025-02-07','12674','0',NULL,NULL,'0','100','yemek','0','2025-02-07 15:25:14','2025-02-07 15:25:14','0','100','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1897','375','14','2','2025-02-07','12674','0',NULL,NULL,'0','44','market','0','2025-02-07 15:25:14','2025-02-07 15:25:14','0','44','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1898','375','14','2','2025-02-07','12674','0',NULL,NULL,'0','1229','KKart?? G??nsonu','3','2025-02-07 15:25:14','2025-02-07 15:25:14','2','1229','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1899','375','14','2','2025-02-07','12674','0',NULL,NULL,'0','990','TRAPZON','0','2025-02-07 15:25:14','2025-02-07 15:25:14','0','990','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1900','375','14','2','2025-02-07','12674','0',NULL,NULL,'0','212','temizlik','0','2025-02-07 15:25:14','2025-02-07 15:25:14','0','212','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1901','375','14','2','2025-02-07','12674','0',NULL,NULL,'0','3300','KARI??TIRAN','0','2025-02-07 15:25:14','2025-02-07 15:25:14','0','3300','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1902','375','14','2','2025-02-07','12674','0',NULL,NULL,'150','0','telefon jarj??','0','2025-02-07 15:25:14','2025-02-07 15:25:14','1','150','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1903','375','14','2','2025-02-07','12674','0',NULL,NULL,'1200','0','mazot','0','2025-02-07 15:25:14','2025-02-07 15:25:14','1','1200','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1904','376','14','2','2025-02-07','12675','0',NULL,NULL,'0','0','0','0','2025-02-07 15:28:35','2025-02-07 15:28:35','0','0','0');
INSERT INTO `kasahesapalmaislems` VALUES ('1905','377','14','3','2025-02-08','12676','0',NULL,NULL,'0','3000','KKart?? G??nsonu','7','2025-02-08 14:28:03','2025-02-08 14:28:03','2','3000','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1906','377','14','3','2025-02-08','12676','0',NULL,NULL,'0','175','YEMEK','0','2025-02-08 14:28:03','2025-02-08 14:28:03','0','175','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1907','378','14','2','2025-02-08','12677','0',NULL,NULL,'0','0','0','0','2025-02-08 14:44:42','2025-02-08 14:44:42','0','0','2');
INSERT INTO `kasahesapalmaislems` VALUES ('1908','379','14','2','2025-02-08','12678','0',NULL,NULL,'0','1182','KKart?? G??nsonu','7','2025-02-08 14:54:30','2025-02-08 14:54:30','2','1182','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1909','379','14','2','2025-02-08','12678','0',NULL,NULL,'0','75','selo','0','2025-02-08 14:54:30','2025-02-08 14:54:30','0','75','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1910','379','14','2','2025-02-08','12678','0',NULL,NULL,'0','87.5','selo','0','2025-02-08 14:54:30','2025-02-08 14:54:30','0','87.5','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1911','379','14','2','2025-02-08','12678','0',NULL,NULL,'0','120','erol','0','2025-02-08 14:54:30','2025-02-08 14:54:30','0','120','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1912','379','14','2','2025-02-08','12678','0',NULL,NULL,'0','1255','TRAPZON','0','2025-02-08 14:54:30','2025-02-08 14:54:30','0','1255','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1913','379','14','2','2025-02-08','12678','0',NULL,NULL,'0','175','irfan yemek','0','2025-02-08 14:54:30','2025-02-08 14:54:30','0','175','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1914','379','14','2','2025-02-08','12678','0',NULL,NULL,'0','287','ayd??n y??ld??z','0','2025-02-08 14:54:30','2025-02-08 14:54:30','0','287','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1915','379','14','2','2025-02-08','12678','0',NULL,NULL,'0','882','ecem','0','2025-02-08 14:54:30','2025-02-08 14:54:30','0','882','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1916','379','14','2','2025-02-08','12678','0',NULL,NULL,'0','3075','EVRENSEK??Z','0','2025-02-08 14:54:30','2025-02-08 14:54:30','0','3075','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1917','379','14','2','2025-02-08','12678','0',NULL,NULL,'35','0','bozuk para','0','2025-02-08 14:54:30','2025-02-08 14:54:30','1','35','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1918','379','14','2','2025-02-08','12678','0',NULL,NULL,'41','0','sar??','0','2025-02-08 14:54:30','2025-02-08 14:54:30','1','41','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1919','379','14','2','2025-02-08','12678','0',NULL,NULL,'24','0','suat oru??','0','2025-02-08 14:54:30','2025-02-08 14:54:30','1','24','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1920','379','14','2','2025-02-08','12678','0',NULL,NULL,'150','0','telefon jarj??','0','2025-02-08 14:54:30','2025-02-08 14:54:30','1','150','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1921','379','14','2','2025-02-08','12678','0',NULL,NULL,'20','0','nurettin','0','2025-02-08 14:54:30','2025-02-08 14:54:30','1','20','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1922','379','14','2','2025-02-08','12678','0',NULL,NULL,'0','15831.24','KKart?? G??nsonu','7','2025-02-08 14:54:30','2025-02-08 14:54:30','2','15831.24','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1923','380','14','2','2025-02-08','12679','0',NULL,NULL,'0','0','0','0','2025-02-08 14:58:26','2025-02-08 14:58:26','0','0','0');
INSERT INTO `kasahesapalmaislems` VALUES ('1925','382','14','2','2025-02-09','12681','0',NULL,NULL,'0','23988.62','KKart?? G??nsonu','7','2025-02-09 15:00:09','2025-02-09 15:00:09','2','23988.62','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1926','382','14','2','2025-02-09','12681','0',NULL,NULL,'0','13576.12','KKart?? G??nsonu','3','2025-02-09 15:00:09','2025-02-09 15:00:09','2','13576.12','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1927','382','14','2','2025-02-09','12681','0',NULL,NULL,'0','721','TRAPZON','0','2025-02-09 15:00:09','2025-02-09 15:00:09','0','721','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1928','382','14','2','2025-02-09','12681','0',NULL,NULL,'0','4000','IBAN MAZOT','0','2025-02-09 15:00:09','2025-02-09 15:00:09','0','4000','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1929','382','14','2','2025-02-09','12681','0',NULL,NULL,'0','1320','IBAN MAZOT','0','2025-02-09 15:00:09','2025-02-09 15:00:09','0','1320','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1930','382','14','2','2025-02-09','12681','0',NULL,NULL,'0','500','??ADE ??R??N ZEYT??N','0','2025-02-09 15:00:09','2025-02-09 15:00:09','0','500','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1931','382','14','2','2025-02-09','12681','0',NULL,NULL,'0','3210','KARI??TIRAN','0','2025-02-09 15:00:09','2025-02-09 15:00:09','0','3210','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1932','382','14','2','2025-02-09','12681','0',NULL,NULL,'500','0','BICAK','0','2025-02-09 15:00:09','2025-02-09 15:00:09','1','500','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1933','382','14','2','2025-02-09','12681','0',NULL,NULL,'15533.78','0','MAZOT','0','2025-02-09 15:00:09','2025-02-09 15:00:09','1','15533.78','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1934','383','14','2','2025-02-09','12682','0',NULL,NULL,'0','0','0','0','2025-02-09 15:08:20','2025-02-09 15:08:20','0','0','0');
INSERT INTO `kasahesapalmaislems` VALUES ('1935','381','14','2','2025-02-09','12680','0',NULL,NULL,'0','0','0','0','2025-02-09 15:10:36','2025-02-09 15:10:36','0','0','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1936','384','14','3','2025-02-10','12683','0',NULL,NULL,'0','1305.84','KKart?? G??nsonu','7','2025-02-10 14:19:29','2025-02-10 14:19:29','2','1305.84','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1937','384','14','3','2025-02-10','12683','0',NULL,NULL,'0','350','YEMEK','0','2025-02-10 14:19:29','2025-02-10 14:19:29','0','350','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1938','385','14','2','2025-02-10','12684','0',NULL,NULL,'0','0','0','0','2025-02-10 14:53:52','2025-02-10 14:53:52','0','0','2');
INSERT INTO `kasahesapalmaislems` VALUES ('1960','386','14','6','2025-02-10','12685','0',NULL,NULL,'0','23940.53','KKart?? G??nsonu','7','2025-02-10 15:23:02','2025-02-10 15:23:02','2','23940.53','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1961','386','14','6','2025-02-10','12685','0',NULL,NULL,'0','2136','KKart?? G??nsonu','3','2025-02-10 15:23:02','2025-02-10 15:23:02','2','2136','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1962','386','14','6','2025-02-10','12685','0',NULL,NULL,'0','72','OSMAN','0','2025-02-10 15:23:02','2025-02-10 15:23:02','0','72','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1963','386','14','6','2025-02-10','12685','0',NULL,NULL,'0','1339','TRAPZON','0','2025-02-10 15:23:02','2025-02-10 15:23:02','0','1339','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1964','386','14','6','2025-02-10','12685','0',NULL,NULL,'0','103','ERHAN GECKO','0','2025-02-10 15:23:02','2025-02-10 15:23:02','0','103','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1965','386','14','6','2025-02-10','12685','0',NULL,NULL,'0','50','FATMA GECKO','0','2025-02-10 15:23:02','2025-02-10 15:23:02','0','50','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1966','386','14','6','2025-02-10','12685','0',NULL,NULL,'0','15','KAHVE','0','2025-02-10 15:23:02','2025-02-10 15:23:02','0','15','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1967','386','14','6','2025-02-10','12685','0',NULL,NULL,'0','72','??R??N DE????????M??','0','2025-02-10 15:23:02','2025-02-10 15:23:02','0','72','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1968','386','14','6','2025-02-10','12685','0',NULL,NULL,'0','144.5','SAVA??','0','2025-02-10 15:23:02','2025-02-10 15:23:02','0','144.5','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1969','386','14','6','2025-02-10','12685','0',NULL,NULL,'0','51','TAHS??N','0','2025-02-10 15:23:02','2025-02-10 15:23:02','0','51','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1970','386','14','6','2025-02-10','12685','0',NULL,NULL,'0','46','SELO','0','2025-02-10 15:23:02','2025-02-10 15:23:02','0','46','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1971','386','14','6','2025-02-10','12685','0',NULL,NULL,'0','475','EROL TOPCU','0','2025-02-10 15:23:02','2025-02-10 15:23:02','0','475','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1972','386','14','6','2025-02-10','12685','0',NULL,NULL,'0','33.5','EROL','0','2025-02-10 15:23:02','2025-02-10 15:23:02','0','33.5','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1973','386','14','6','2025-02-10','12685','0',NULL,NULL,'0','1500','HAMMAL','0','2025-02-10 15:23:02','2025-02-10 15:23:02','0','1500','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1974','386','14','6','2025-02-10','12685','0',NULL,NULL,'0','3','??R??N ??ADE','0','2025-02-10 15:23:02','2025-02-10 15:23:02','0','3','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1975','386','14','6','2025-02-10','12685','0',NULL,NULL,'0','30','TEM??ZL??K','0','2025-02-10 15:23:02','2025-02-10 15:23:02','0','30','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1976','386','14','6','2025-02-10','12685','0',NULL,NULL,'0','2835','EVRENSEK??Z','0','2025-02-10 15:23:02','2025-02-10 15:23:02','0','2835','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1977','386','14','6','2025-02-10','12685','0',NULL,NULL,'0','30','ELD??VEN','0','2025-02-10 15:23:02','2025-02-10 15:23:02','0','30','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1978','386','14','6','2025-02-10','12685','0',NULL,NULL,'0','10','SELO','0','2025-02-10 15:23:02','2025-02-10 15:23:02','0','10','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1979','386','14','6','2025-02-10','12685','0',NULL,NULL,'3250','0','M??REN D??R??M K??M??R','0','2025-02-10 15:23:02','2025-02-10 15:23:02','1','3250','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1980','386','14','6','2025-02-10','12685','0',NULL,NULL,'559','0','OYUNCAK','0','2025-02-10 15:23:02','2025-02-10 15:23:02','1','559','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1981','386','14','6','2025-02-10','12685','0',NULL,NULL,'1270','0','MAZOT','0','2025-02-10 15:23:02','2025-02-10 15:23:02','1','1270','0');
INSERT INTO `kasahesapalmaislems` VALUES ('1982','386','14','6','2025-02-10','12685','0',NULL,NULL,'0','1450','AKBEY','0','2025-02-10 15:23:02','2025-02-10 15:23:02','0','1450','0');
INSERT INTO `kasahesapalmaislems` VALUES ('1983','387','14','2','2025-02-10','12686','0',NULL,NULL,'0','0','0','0','2025-02-10 15:27:08','2025-02-10 15:27:08','0','0','0');
INSERT INTO `kasahesapalmaislems` VALUES ('1984','388','14','3','2025-02-11','12687','0',NULL,NULL,'0','3336.2','KKart?? G??nsonu','7','2025-02-11 14:30:22','2025-02-11 14:30:22','2','3336.2','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1985','388','14','3','2025-02-11','12687','0',NULL,NULL,'0','175','yemek','0','2025-02-11 14:30:22','2025-02-11 14:30:22','0','175','1');
INSERT INTO `kasahesapalmaislems` VALUES ('1986','389','14','6','2025-02-11','12688','0',NULL,NULL,'0','0','0','0','2025-02-11 15:14:16','2025-02-11 15:14:16','0','0','2');
INSERT INTO `kasahesapalmaislems` VALUES ('2002','390','14','6','2025-02-11','12689','0',NULL,NULL,'0','5412.05','KKart?? G??nsonu','3','2025-02-11 18:59:45','2025-02-11 18:59:45','2','5412.05','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2003','390','14','6','2025-02-11','12689','0',NULL,NULL,'0','11825.78','KKart?? G??nsonu','7','2025-02-11 18:59:45','2025-02-11 18:59:45','2','11825.78','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2004','390','14','6','2025-02-11','12689','0',NULL,NULL,'0','13.5','kahve','0','2025-02-11 18:59:45','2025-02-11 18:59:45','0','13.5','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2005','390','14','6','2025-02-11','12689','0',NULL,NULL,'0','1184.5','TRAPZON','0','2025-02-11 18:59:45','2025-02-11 18:59:45','0','1184.5','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2006','390','14','6','2025-02-11','12689','0',NULL,NULL,'0','623.45','selo','0','2025-02-11 18:59:45','2025-02-11 18:59:45','0','623.45','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2007','390','14','6','2025-02-11','12689','0',NULL,NULL,'0','175','irfan yemek','0','2025-02-11 18:59:45','2025-02-11 18:59:45','0','175','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2008','390','14','6','2025-02-11','12689','0',NULL,NULL,'0','33.5','kahve','0','2025-02-11 18:59:45','2025-02-11 18:59:45','0','33.5','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2009','390','14','6','2025-02-11','12689','0',NULL,NULL,'0','60','iade','0','2025-02-11 18:59:45','2025-02-11 18:59:45','0','60','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2010','390','14','6','2025-02-11','12689','0',NULL,NULL,'0','120.5','hediye abla','0','2025-02-11 18:59:45','2025-02-11 18:59:45','0','120.5','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2011','390','14','6','2025-02-11','12689','0',NULL,NULL,'0','40','yemek','0','2025-02-11 18:59:45','2025-02-11 18:59:45','0','40','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2012','390','14','6','2025-02-11','12689','0',NULL,NULL,'0','4','salman','0','2025-02-11 18:59:45','2025-02-11 18:59:45','0','4','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2013','390','14','6','2025-02-11','12689','0',NULL,NULL,'0','3090','EVRENSEK??Z EKMEK','0','2025-02-11 18:59:45','2025-02-11 18:59:45','0','3090','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2014','390','14','6','2025-02-11','12689','0',NULL,NULL,'44.5','0','oyuncak','0','2025-02-11 18:59:45','2025-02-11 18:59:45','1','44.5','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2015','390','14','6','2025-02-11','12689','0',NULL,NULL,'9013.5','0','mazot','0','2025-02-11 18:59:45','2025-02-11 18:59:45','1','9013.5','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2016','391','14','6','2025-02-11','12690','0',NULL,NULL,'0','0','0','0','2025-02-12 10:47:59','2025-02-12 10:47:59','0','0','0');
INSERT INTO `kasahesapalmaislems` VALUES ('2017','392','14','3','2025-02-12','12691','0',NULL,NULL,'0','10123.2','KKart?? G??nsonu','7','2025-02-12 14:35:21','2025-02-12 14:35:21','2','10123.2','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2018','392','14','3','2025-02-12','12691','0',NULL,NULL,'0','350','yemek','0','2025-02-12 14:35:21','2025-02-12 14:35:21','0','350','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2019','393','14','6','2025-02-12','12692','0',NULL,NULL,'0','0','0','0','2025-02-12 15:19:40','2025-02-12 15:19:40','0','0','2');
INSERT INTO `kasahesapalmaislems` VALUES ('2020','394','14','6','2025-02-12','12693','0',NULL,NULL,'0','16116.27','KKart?? G??nsonu','7','2025-02-12 15:34:00','2025-02-12 15:34:00','2','16116.27','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2021','394','14','6','2025-02-12','12693','0',NULL,NULL,'0','861','KKart?? G??nsonu','3','2025-02-12 15:34:00','2025-02-12 15:34:00','2','861','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2022','394','14','6','2025-02-12','12693','0',NULL,NULL,'0','15','kahve','0','2025-02-12 15:34:00','2025-02-12 15:34:00','0','15','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2023','394','14','6','2025-02-12','12693','0',NULL,NULL,'0','1081.5','TRAPZON','0','2025-02-12 15:34:00','2025-02-12 15:34:00','0','1081.5','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2024','394','14','6','2025-02-12','12693','0',NULL,NULL,'0','329.75','selo','0','2025-02-12 15:34:00','2025-02-12 15:34:00','0','329.75','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2025','394','14','6','2025-02-12','12693','0',NULL,NULL,'0','43','selo','0','2025-02-12 15:34:00','2025-02-12 15:34:00','0','43','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2026','394','14','6','2025-02-12','12693','0',NULL,NULL,'0','70','??r??n iade','0','2025-02-12 15:34:00','2025-02-12 15:34:00','0','70','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2027','394','14','6','2025-02-12','12693','0',NULL,NULL,'0','82','erol','0','2025-02-12 15:34:00','2025-02-12 15:34:00','0','82','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2028','394','14','6','2025-02-12','12693','0',NULL,NULL,'0','170','??r??n iade','0','2025-02-12 15:34:00','2025-02-12 15:34:00','0','170','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2029','394','14','6','2025-02-12','12693','0',NULL,NULL,'0','139.9','hediye abla','0','2025-02-12 15:34:00','2025-02-12 15:34:00','0','139.9','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2030','394','14','6','2025-02-12','12693','0',NULL,NULL,'0','26','tahsin yemek','0','2025-02-12 15:34:00','2025-02-12 15:34:00','0','26','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2031','394','14','6','2025-02-12','12693','0',NULL,NULL,'0','100','yemek','0','2025-02-12 15:34:00','2025-02-12 15:34:00','0','100','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2032','394','14','6','2025-02-12','12693','0',NULL,NULL,'0','14.5','selo','0','2025-02-12 15:34:00','2025-02-12 15:34:00','0','14.5','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2033','394','14','6','2025-02-12','12693','0',NULL,NULL,'0','3150','evrensekiz ekmek','0','2025-02-12 15:34:00','2025-02-12 15:34:00','0','3150','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2034','394','14','6','2025-02-12','12693','0',NULL,NULL,'715','0','oyuncak+muzaffer eski bor?? 380,00','0','2025-02-12 15:34:00','2025-02-12 15:34:00','1','715','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2035','395','14','2','2025-02-12','12694','0',NULL,NULL,'0','0','0','0','2025-02-12 15:41:17','2025-02-12 15:41:17','0','0','0');
INSERT INTO `kasahesapalmaislems` VALUES ('2036','396','14','3','2025-02-13','12695','0',NULL,NULL,'0','6794.12','KKart?? G??nsonu','7','2025-02-13 14:22:52','2025-02-13 14:22:52','2','6794.12','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2037','396','14','3','2025-02-13','12695','0',NULL,NULL,'0','330','yemek','0','2025-02-13 14:22:52','2025-02-13 14:22:52','0','330','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2038','397','14','2','2025-02-13','12696','0',NULL,NULL,'0','0','0','0','2025-02-13 15:16:41','2025-02-13 15:16:41','0','0','2');
INSERT INTO `kasahesapalmaislems` VALUES ('2055','399','14','6','2025-02-13','12698','0',NULL,NULL,'0','0','0','0','2025-02-13 15:49:32','2025-02-13 15:49:32','0','0','0');
INSERT INTO `kasahesapalmaislems` VALUES ('2056','398','14','6','2025-02-13','12697','0',NULL,NULL,'0','4149','KKart?? G??nsonu','11','2025-02-13 18:56:22','2025-02-13 18:56:22','2','4149','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2057','398','14','6','2025-02-13','12697','0',NULL,NULL,'0','9217.29','KKart?? G??nsonu','7','2025-02-13 18:56:22','2025-02-13 18:56:22','2','9217.29','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2058','398','14','6','2025-02-13','12697','0',NULL,NULL,'0','590.17','KKart?? G??nsonu','11','2025-02-13 18:56:22','2025-02-13 18:56:22','2','590.17','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2059','398','14','6','2025-02-13','12697','0',NULL,NULL,'0','1081.5','TRAPZON','0','2025-02-13 18:56:22','2025-02-13 18:56:22','0','1081.5','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2060','398','14','6','2025-02-13','12697','0',NULL,NULL,'0','291','erkan onba????','0','2025-02-13 18:56:22','2025-02-13 18:56:22','0','291','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2061','398','14','6','2025-02-13','12697','0',NULL,NULL,'0','79','??a??atay','0','2025-02-13 18:56:22','2025-02-13 18:56:22','0','79','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2062','398','14','6','2025-02-13','12697','0',NULL,NULL,'0','41','tahsin yemek','0','2025-02-13 18:56:22','2025-02-13 18:56:22','0','41','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2063','398','14','6','2025-02-13','12697','0',NULL,NULL,'0','34.5','erol kahve','0','2025-02-13 18:56:22','2025-02-13 18:56:22','0','34.5','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2064','398','14','6','2025-02-13','12697','0',NULL,NULL,'0','342','selo tarla','0','2025-02-13 18:56:22','2025-02-13 18:56:22','0','342','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2065','398','14','6','2025-02-13','12697','0',NULL,NULL,'0','67','??r??n iade','0','2025-02-13 18:56:22','2025-02-13 18:56:22','0','67','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2066','398','14','6','2025-02-13','12697','0',NULL,NULL,'0','20','ayd??n y??ld??z','0','2025-02-13 18:56:22','2025-02-13 18:56:22','0','20','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2067','398','14','6','2025-02-13','12697','0',NULL,NULL,'0','3555','evrensekiz yemek','0','2025-02-13 18:56:22','2025-02-13 18:56:22','0','3555','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2068','398','14','6','2025-02-13','12697','0',NULL,NULL,'759','0','oyuncak','0','2025-02-13 18:56:22','2025-02-13 18:56:22','1','759','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2069','398','14','6','2025-02-13','12697','0',NULL,NULL,'7200','0','mazot','0','2025-02-13 18:56:22','2025-02-13 18:56:22','1','7200','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2070','398','14','6','2025-02-13','12697','0',NULL,NULL,'0','2082','KKart?? G??nsonu','11','2025-02-13 18:56:22','2025-02-13 18:56:22','2','2082','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2071','398','14','6','2025-02-13','12697','0',NULL,NULL,'0','233.6','sadil','0','2025-02-13 18:56:22','2025-02-13 18:56:22','0','233.6','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2072','400','14','3','2025-02-14','12699','0',NULL,NULL,'0','350','YEMEK','0','2025-02-14 14:11:31','2025-02-14 14:11:31','0','350','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2073','401','14','6','2025-02-14','12700','0',NULL,NULL,'0','0','0','0','2025-02-14 14:47:03','2025-02-14 14:47:03','0','0','2');
INSERT INTO `kasahesapalmaislems` VALUES ('2099','404','14','1','2025-02-14','12703','0',NULL,NULL,'0','0','0','0','2025-02-14 15:10:13','2025-02-14 15:10:13','0','0','0');
INSERT INTO `kasahesapalmaislems` VALUES ('2100','403','14','6','2025-02-14','12702','0',NULL,NULL,'0','0','0','0','2025-02-14 19:13:29','2025-02-14 19:13:29','0','0','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2101','402','14','6','2025-02-14','12701','0',NULL,NULL,'0','9518.66','KKart?? G??nsonu','7','2025-02-14 19:18:54','2025-02-14 19:18:54','2','9518.66','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2102','402','14','6','2025-02-14','12701','0',NULL,NULL,'0','773','KKart?? G??nsonu','3','2025-02-14 19:18:54','2025-02-14 19:18:54','2','773','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2103','402','14','6','2025-02-14','12701','0',NULL,NULL,'0','13.5','KAHVE','0','2025-02-14 19:18:54','2025-02-14 19:18:54','0','13.5','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2104','402','14','6','2025-02-14','12701','0',NULL,NULL,'0','1366','DAMAK K??FTE','0','2025-02-14 19:18:54','2025-02-14 19:18:54','0','1366','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2105','402','14','6','2025-02-14','12701','0',NULL,NULL,'0','81','EGE','0','2025-02-14 19:18:54','2025-02-14 19:18:54','0','81','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2106','402','14','6','2025-02-14','12701','0',NULL,NULL,'0','11.5','SELO','0','2025-02-14 19:18:54','2025-02-14 19:18:54','0','11.5','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2107','402','14','6','2025-02-14','12701','0',NULL,NULL,'0','541','HED??YE ABLA','0','2025-02-14 19:18:54','2025-02-14 19:18:54','0','541','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2108','402','14','6','2025-02-14','12701','0',NULL,NULL,'0','7.5','KAHVE','0','2025-02-14 19:18:54','2025-02-14 19:18:54','0','7.5','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2109','402','14','6','2025-02-14','12701','0',NULL,NULL,'0','142','SAVA?? ??AKAR','0','2025-02-14 19:18:54','2025-02-14 19:18:54','0','142','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2110','402','14','6','2025-02-14','12701','0',NULL,NULL,'0','6','EROL','0','2025-02-14 19:18:54','2025-02-14 19:18:54','0','6','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2111','402','14','6','2025-02-14','12701','0',NULL,NULL,'0','26','EROL','0','2025-02-14 19:18:54','2025-02-14 19:18:54','0','26','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2112','402','14','6','2025-02-14','12701','0',NULL,NULL,'0','22.5','TEM??ZL??K','0','2025-02-14 19:18:54','2025-02-14 19:18:54','0','22.5','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2113','402','14','6','2025-02-14','12701','0',NULL,NULL,'0','499','YEMEK TARLA','0','2025-02-14 19:18:54','2025-02-14 19:18:54','0','499','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2114','402','14','6','2025-02-14','12701','0',NULL,NULL,'0','61','TAHS??N','0','2025-02-14 19:18:54','2025-02-14 19:18:54','0','61','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2115','402','14','6','2025-02-14','12701','0',NULL,NULL,'0','20','??ATAL','0','2025-02-14 19:18:54','2025-02-14 19:18:54','0','20','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2116','402','14','6','2025-02-14','12701','0',NULL,NULL,'0','82','EROL','0','2025-02-14 19:18:54','2025-02-14 19:18:54','0','82','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2117','402','14','6','2025-02-14','12701','0',NULL,NULL,'0','55','??EKER','0','2025-02-14 19:18:54','2025-02-14 19:18:54','0','55','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2118','402','14','6','2025-02-14','12701','0',NULL,NULL,'0','177','MUSTAFA SEZER','0','2025-02-14 19:18:54','2025-02-14 19:18:54','0','177','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2119','402','14','6','2025-02-14','12701','0',NULL,NULL,'0','538','HED??YE ABLA','0','2025-02-14 19:18:54','2025-02-14 19:18:54','0','538','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2120','402','14','6','2025-02-14','12701','0',NULL,NULL,'150','0','BOZUK PARA + OYUNCAK','0','2025-02-14 19:18:54','2025-02-14 19:18:54','1','150','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2121','402','14','6','2025-02-14','12701','0',NULL,NULL,'1250','0','MAZOT','0','2025-02-14 19:18:54','2025-02-14 19:18:54','1','1250','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2122','402','14','6','2025-02-14','12701','0',NULL,NULL,'0','149','KKARTINDAN FAZLA ??EK??LM???? ??R??N ??ADE','0','2025-02-14 19:18:54','2025-02-14 19:18:54','0','149','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2123','402','14','6','2025-02-14','12701','0',NULL,NULL,'0','659.25','TRAPZON EKMEK','0','2025-02-14 19:18:54','2025-02-14 19:18:54','0','659.25','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2124','402','14','6','2025-02-14','12701','0',NULL,NULL,'0','3150','EVRENSEK??Z EKMEK','0','2025-02-14 19:18:54','2025-02-14 19:18:54','0','3150','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2125','405','14','3','2025-02-15','12704','0',NULL,NULL,'0','175','YEMEK','0','2025-02-15 14:24:48','2025-02-15 14:24:48','0','175','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2126','406','14','2','2025-02-15','12705','0',NULL,NULL,'0','0','0','0','2025-02-15 15:08:05','2025-02-15 15:08:05','0','0','2');
INSERT INTO `kasahesapalmaislems` VALUES ('2127','407','14','6','2025-02-15','12706','0',NULL,NULL,'0','10759.83','KKart?? G??nsonu','7','2025-02-15 15:34:45','2025-02-15 15:34:45','2','10759.83','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2128','407','14','6','2025-02-15','12706','0',NULL,NULL,'0','22.5','KAHVE','0','2025-02-15 15:34:45','2025-02-15 15:34:45','0','22.5','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2129','407','14','6','2025-02-15','12706','0',NULL,NULL,'0','14','KAHVE','0','2025-02-15 15:34:45','2025-02-15 15:34:45','0','14','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2130','407','14','6','2025-02-15','12706','0',NULL,NULL,'0','999.1','TRAPZON','0','2025-02-15 15:34:45','2025-02-15 15:34:45','0','999.1','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2131','407','14','6','2025-02-15','12706','0',NULL,NULL,'0','13','KAHVE','0','2025-02-15 15:34:45','2025-02-15 15:34:45','0','13','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2132','407','14','6','2025-02-15','12706','0',NULL,NULL,'0','24','SAVA??','0','2025-02-15 15:34:45','2025-02-15 15:34:45','0','24','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2133','407','14','6','2025-02-15','12706','0',NULL,NULL,'0','140.25','G??L??AN AZ??AKAR','0','2025-02-15 15:34:45','2025-02-15 15:34:45','0','140.25','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2134','407','14','6','2025-02-15','12706','0',NULL,NULL,'0','175','??RFAN YEMEK','0','2025-02-15 15:34:45','2025-02-15 15:34:45','0','175','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2135','407','14','6','2025-02-15','12706','0',NULL,NULL,'0','1812.5','K??M??R VERES??YE','0','2025-02-15 15:34:45','2025-02-15 15:34:45','0','1812.5','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2136','407','14','6','2025-02-15','12706','0',NULL,NULL,'0','31','TAHS??N YEMEK','0','2025-02-15 15:34:45','2025-02-15 15:34:45','0','31','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2137','407','14','6','2025-02-15','12706','0',NULL,NULL,'0','55','EROL','0','2025-02-15 15:34:45','2025-02-15 15:34:45','0','55','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2138','407','14','6','2025-02-15','12706','0',NULL,NULL,'0','4000','SEDAT HAMMALIK','0','2025-02-15 15:34:45','2025-02-15 15:34:45','0','4000','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2139','407','14','6','2025-02-15','12706','0',NULL,NULL,'0','82','EROL','0','2025-02-15 15:34:45','2025-02-15 15:34:45','0','82','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2140','407','14','6','2025-02-15','12706','0',NULL,NULL,'0','3420','EVRENSEK??Z','0','2025-02-15 15:34:45','2025-02-15 15:34:45','0','3420','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2141','407','14','6','2025-02-15','12706','0',NULL,NULL,'0','542','AL?? KE????C?? EV','0','2025-02-15 15:34:45','2025-02-15 15:34:45','0','542','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2142','407','14','6','2025-02-15','12706','0',NULL,NULL,'50','0','OYUNCAK','0','2025-02-15 15:34:45','2025-02-15 15:34:45','1','50','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2143','407','14','6','2025-02-15','12706','0',NULL,NULL,'0','4606.1','KKart?? G??nsonu','3','2025-02-15 15:34:45','2025-02-15 15:34:45','2','4606.1','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2144','407','14','6','2025-02-15','12706','0',NULL,NULL,'3986','0','MAZOT','0','2025-02-15 15:34:45','2025-02-15 15:34:45','1','3986','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2145','407','14','6','2025-02-15','12706','0',NULL,NULL,'999.4','0','MAZOT','0','2025-02-15 15:34:45','2025-02-15 15:34:45','1','999.4','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2146','408','14','2','2025-02-15','12707','0',NULL,NULL,'0','0','0','0','2025-02-15 15:37:43','2025-02-15 15:37:43','0','0','0');
INSERT INTO `kasahesapalmaislems` VALUES ('2149','410','14','2','2025-02-17','12709','0',NULL,NULL,'0','0','0','0','2025-02-17 15:01:14','2025-02-17 15:01:14','0','0','2');
INSERT INTO `kasahesapalmaislems` VALUES ('2150','411','14','2','2025-02-17','12710','0',NULL,NULL,'0','12845','KKart?? G??nsonu','7','2025-02-17 15:14:00','2025-02-17 15:14:00','2','12845','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2151','411','14','2','2025-02-17','12710','0',NULL,NULL,'0','27464.25','KKart?? G??nsonu','3','2025-02-17 15:14:00','2025-02-17 15:14:00','2','27464.25','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2152','411','14','2','2025-02-17','12710','0',NULL,NULL,'0','1400','TRAPZON','0','2025-02-17 15:14:00','2025-02-17 15:14:00','0','1400','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2153','411','14','2','2025-02-17','12710','0',NULL,NULL,'0','3160','EVRENSEK??Z EKMEK','0','2025-02-17 15:14:00','2025-02-17 15:14:00','0','3160','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2154','411','14','2','2025-02-17','12710','0',NULL,NULL,'100','0','FASULYE','0','2025-02-17 15:14:00','2025-02-17 15:14:00','1','100','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2155','411','14','2','2025-02-17','12710','0',NULL,NULL,'140','0','G??LCAN AZCAKAR','0','2025-02-17 15:14:00','2025-02-17 15:14:00','1','140','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2156','411','14','2','2025-02-17','12710','0',NULL,NULL,'1585.25','0','??ABAN TUNA','0','2025-02-17 15:14:00','2025-02-17 15:14:00','1','1585.25','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2157','411','14','2','2025-02-17','12710','0',NULL,NULL,'181','0','H??SEY??N TOPCU','0','2025-02-17 15:14:00','2025-02-17 15:14:00','1','181','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2158','411','14','2','2025-02-17','12710','0',NULL,NULL,'25333.15','0','MAZOT','0','2025-02-17 15:14:00','2025-02-17 15:14:00','1','25333.15','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2159','411','14','2','2025-02-17','12710','0',NULL,NULL,'0','30','SELO','0','2025-02-17 15:14:00','2025-02-17 15:14:00','0','30','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2160','411','14','2','2025-02-17','12710','0',NULL,NULL,'0','503.16','AYSEN','0','2025-02-17 15:14:00','2025-02-17 15:14:00','0','503.16','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2161','411','14','2','2025-02-17','12710','0',NULL,NULL,'0','82','EROL','0','2025-02-17 15:14:00','2025-02-17 15:14:00','0','82','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2162','411','14','2','2025-02-17','12710','0',NULL,NULL,'0','32.5','YEMEK','0','2025-02-17 15:14:00','2025-02-17 15:14:00','0','32.5','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2163','411','14','2','2025-02-17','12710','0',NULL,NULL,'0','0','0','0','2025-02-17 15:14:00','2025-02-17 15:14:00','0','0','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2164','412','14','2','2025-02-18','12711','0',NULL,NULL,'0','175','yemek','0','2025-02-18 14:16:37','2025-02-18 14:16:37','0','175','2');
INSERT INTO `kasahesapalmaislems` VALUES ('2165','412','14','2','2025-02-18','12711','0',NULL,NULL,'0','3000','KKart?? G??nsonu','7','2025-02-18 14:16:37','2025-02-18 14:16:37','2','3000','2');
INSERT INTO `kasahesapalmaislems` VALUES ('2166','412','14','2','2025-02-18','12711','0',NULL,NULL,'0','368','ekzos muayne','0','2025-02-18 14:16:37','2025-02-18 14:16:37','0','368','2');
INSERT INTO `kasahesapalmaislems` VALUES ('2167','413','14','2','2025-02-18','12712','0',NULL,NULL,'0','0','0','0','2025-02-18 15:23:00','2025-02-18 15:23:00','0','0','2');
INSERT INTO `kasahesapalmaislems` VALUES ('2182','414','14','2','2025-02-18','12713','0',NULL,NULL,'0','15640.02','KKart?? G??nsonu','7','2025-02-18 15:32:26','2025-02-18 15:32:26','2','15640.02','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2183','414','14','2','2025-02-18','12713','0',NULL,NULL,'0','1245','TRAPZON','0','2025-02-18 15:32:26','2025-02-18 15:32:26','0','1245','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2184','414','14','2','2025-02-18','12713','0',NULL,NULL,'0','75','hasan topcu','0','2025-02-18 15:32:26','2025-02-18 15:32:26','0','75','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2185','414','14','2','2025-02-18','12713','0',NULL,NULL,'0','175','irfan yemek','0','2025-02-18 15:32:26','2025-02-18 15:32:26','0','175','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2186','414','14','2','2025-02-18','12713','0',NULL,NULL,'0','20','erol','0','2025-02-18 15:32:26','2025-02-18 15:32:26','0','20','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2187','414','14','2','2025-02-18','12713','0',NULL,NULL,'0','300','bozuk para','0','2025-02-18 15:32:26','2025-02-18 15:32:26','0','300','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2188','414','14','2','2025-02-18','12713','0',NULL,NULL,'0','3070','ekmek','0','2025-02-18 15:32:26','2025-02-18 15:32:26','0','3070','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2189','414','14','2','2025-02-18','12713','0',NULL,NULL,'65','0','ka??ar','0','2025-02-18 15:32:26','2025-02-18 15:32:26','1','65','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2190','414','14','2','2025-02-18','12713','0',NULL,NULL,'210','0','fatma ge??ko','0','2025-02-18 15:32:26','2025-02-18 15:32:26','1','210','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2191','414','14','2','2025-02-18','12713','0',NULL,NULL,'20','0','ak??n kaynak','0','2025-02-18 15:32:26','2025-02-18 15:32:26','1','20','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2192','414','14','2','2025-02-18','12713','0',NULL,NULL,'120','0','tolga g??reler','0','2025-02-18 15:32:26','2025-02-18 15:32:26','1','120','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2193','414','14','2','2025-02-18','12713','0',NULL,NULL,'100','0','fasulye','0','2025-02-18 15:32:26','2025-02-18 15:32:26','1','100','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2194','414','14','2','2025-02-18','12713','0',NULL,NULL,'20','0','marul','0','2025-02-18 15:32:26','2025-02-18 15:32:26','1','20','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2195','414','14','2','2025-02-18','12713','0',NULL,NULL,'0','1224.5','KKart?? G??nsonu','3','2025-02-18 15:32:26','2025-02-18 15:32:26','2','1224.5','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2196','414','14','2','2025-02-18','12713','0',NULL,NULL,'0','164','sigara iade','0','2025-02-18 15:32:26','2025-02-18 15:32:26','0','164','0');
INSERT INTO `kasahesapalmaislems` VALUES ('2197','415','14','2','2025-02-18','12714','0',NULL,NULL,'0','0','0','0','2025-02-18 15:35:40','2025-02-18 15:35:40','0','0','0');
INSERT INTO `kasahesapalmaislems` VALUES ('2198','416','14','3','2025-02-18','12715','0',NULL,NULL,'0','175','0','0','2025-02-19 05:50:09','2025-02-19 05:50:09','0','175','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2199','416','14','3','2025-02-18','12715','0',NULL,NULL,'0','368','egzoz muayne','0','2025-02-19 05:50:09','2025-02-19 05:50:09','0','368','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2200','416','14','3','2025-02-18','12715','0',NULL,NULL,'0','3000','KKart?? G??nsonu','7','2025-02-19 05:50:09','2025-02-19 05:50:09','2','3000','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2203','418','14','2','2025-02-19','12717','0',NULL,NULL,'0','0','0','0','2025-02-19 14:58:57','2025-02-19 14:58:57','0','0','2');
INSERT INTO `kasahesapalmaislems` VALUES ('2217','420','14','2','2025-02-19','12719','0',NULL,NULL,'0','0','0','0','2025-02-19 15:11:20','2025-02-19 15:11:20','0','0','0');
INSERT INTO `kasahesapalmaislems` VALUES ('2232','419','14','2','2025-02-19','12718','0',NULL,NULL,'0','4726.16','KKart?? G??nsonu','3','2025-02-19 15:13:41','2025-02-19 15:13:41','2','4726.16','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2233','419','14','2','2025-02-19','12718','0',NULL,NULL,'0','10059.77','KKart?? G??nsonu','0','2025-02-19 15:13:41','2025-02-19 15:13:41','2','10059.77','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2234','419','14','2','2025-02-19','12718','0',NULL,NULL,'0','1185','TRAPZON','0','2025-02-19 15:13:41','2025-02-19 15:13:41','0','1185','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2235','419','14','2','2025-02-19','12718','0',NULL,NULL,'0','50','FATMA GE??KO','0','2025-02-19 15:13:41','2025-02-19 15:13:41','0','50','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2236','419','14','2','2025-02-19','12718','0',NULL,NULL,'0','498','??AVU??HAN YO??URT','0','2025-02-19 15:13:41','2025-02-19 15:13:41','0','498','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2237','419','14','2','2025-02-19','12718','0',NULL,NULL,'0','60','AKIN KAYNAK','0','2025-02-19 15:13:41','2025-02-19 15:13:41','0','60','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2238','419','14','2','2025-02-19','12718','0',NULL,NULL,'0','3205','EVRENSEK??Z EKMEK','0','2025-02-19 15:13:41','2025-02-19 15:13:41','0','3205','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2239','419','14','2','2025-02-19','12718','0',NULL,NULL,'210','0','SARI','0','2025-02-19 15:13:41','2025-02-19 15:13:41','1','210','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2240','419','14','2','2025-02-19','12718','0',NULL,NULL,'5185','0','MAZOT','0','2025-02-19 15:13:41','2025-02-19 15:13:41','1','5185','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2241','419','14','2','2025-02-19','12718','0',NULL,NULL,'0','82','EROL','0','2025-02-19 15:13:41','2025-02-19 15:13:41','0','82','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2242','419','14','2','2025-02-19','12718','0',NULL,NULL,'0','47','MARKET','0','2025-02-19 15:13:41','2025-02-19 15:13:41','0','47','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2243','419','14','2','2025-02-19','12718','0',NULL,NULL,'0','82','YEMEK','0','2025-02-19 15:13:41','2025-02-19 15:13:41','0','82','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2244','419','14','2','2025-02-19','12718','0',NULL,NULL,'0','28.5','S??NGER','0','2025-02-19 15:13:41','2025-02-19 15:13:41','0','28.5','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2245','419','14','2','2025-02-19','12718','0',NULL,NULL,'0','1200','CEM??L','0','2025-02-19 15:13:41','2025-02-19 15:13:41','0','1200','0');
INSERT INTO `kasahesapalmaislems` VALUES ('2246','421','14','3','2025-02-20','12720','0',NULL,NULL,'0','7027.91','KKart?? G??nsonu','7','2025-02-20 14:02:08','2025-02-20 14:02:08','2','7027.91','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2247','421','14','3','2025-02-20','12720','0',NULL,NULL,'0','350','YEMEK','0','2025-02-20 14:02:08','2025-02-20 14:02:08','0','350','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2248','422','14','2','2025-02-20','12721','0',NULL,NULL,'0','0','0','0','2025-02-20 15:22:47','2025-02-20 15:22:47','0','0','2');
INSERT INTO `kasahesapalmaislems` VALUES ('2260','424','14','2','2025-02-20','12723','0',NULL,NULL,'0','0','0','0','2025-02-20 15:34:19','2025-02-20 15:34:19','0','0','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2270','423','14','2','2025-02-20','12722','0',NULL,NULL,'0','9968.31','KKart?? G??nsonu','7','2025-02-20 15:38:11','2025-02-20 15:38:11','2','9968.31','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2271','423','14','2','2025-02-20','12722','0',NULL,NULL,'0','164','yemek','0','2025-02-20 15:38:11','2025-02-20 15:38:11','0','164','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2272','423','14','2','2025-02-20','12722','0',NULL,NULL,'0','247','KKart?? G??nsonu','3','2025-02-20 15:38:11','2025-02-20 15:38:11','2','247','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2273','423','14','2','2025-02-20','12722','0',NULL,NULL,'0','50','KKart?? G??nsonu','3','2025-02-20 15:38:11','2025-02-20 15:38:11','2','50','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2274','423','14','2','2025-02-20','12722','0',NULL,NULL,'0','1340','TRAPZON','0','2025-02-20 15:38:11','2025-02-20 15:38:11','0','1340','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2275','423','14','2','2025-02-20','12722','0',NULL,NULL,'0','3430','evrensekiz ekmek','0','2025-02-20 15:38:11','2025-02-20 15:38:11','0','3430','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2276','423','14','2','2025-02-20','12722','0',NULL,NULL,'50','0','fatma gecko','0','2025-02-20 15:38:11','2025-02-20 15:38:11','1','50','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2277','423','14','2','2025-02-20','12722','0',NULL,NULL,'60','0','ak??n kaynak','0','2025-02-20 15:38:11','2025-02-20 15:38:11','1','60','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2278','423','14','2','2025-02-20','12722','0',NULL,NULL,'1000','0','mazot','0','2025-02-20 15:38:11','2025-02-20 15:38:11','1','1000','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2279','425','14','3','2025-02-21','12724','0',NULL,NULL,'0','2554','KKart?? G??nsonu','7','2025-02-21 15:01:24','2025-02-21 15:01:24','2','2554','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2280','425','14','3','2025-02-21','12724','0',NULL,NULL,'0','350','yemek','0','2025-02-21 15:01:24','2025-02-21 15:01:24','0','350','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2296','426','14','2','2025-02-21','12725','0',NULL,NULL,'0','0','0','0','2025-02-21 21:07:21','2025-02-21 21:07:21','0','0','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2298','427','14','2','2025-02-21','12726','0',NULL,NULL,'0','714.75','KKart?? G??nsonu','3','2025-02-21 21:09:45','2025-02-21 21:09:45','2','714.75','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2299','427','14','2','2025-02-21','12726','0',NULL,NULL,'0','444','DAMAK K??FTE','0','2025-02-21 21:09:45','2025-02-21 21:09:45','0','444','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2300','427','14','2','2025-02-21','12726','0',NULL,NULL,'0','865','TRAPZON','0','2025-02-21 21:09:45','2025-02-21 21:09:45','0','865','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2301','427','14','2','2025-02-21','12726','0',NULL,NULL,'0','3750','FATMA GECKIO','0','2025-02-21 21:09:45','2025-02-21 21:09:45','0','3750','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2302','427','14','2','2025-02-21','12726','0',NULL,NULL,'0','25','U??UR','0','2025-02-21 21:09:45','2025-02-21 21:09:45','0','25','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2303','427','14','2','2025-02-21','12726','0',NULL,NULL,'0','220','ERSAN GECKO','0','2025-02-21 21:09:45','2025-02-21 21:09:45','0','220','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2304','427','14','2','2025-02-21','12726','0',NULL,NULL,'0','3780','EVRENSEK??Z','0','2025-02-21 21:09:45','2025-02-21 21:09:45','0','3780','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2305','427','14','2','2025-02-21','12726','0',NULL,NULL,'0','200','SELO','0','2025-02-21 21:09:45','2025-02-21 21:09:45','0','200','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2306','427','14','2','2025-02-21','12726','0',NULL,NULL,'75','0','HASAN TOPCU','0','2025-02-21 21:09:45','2025-02-21 21:09:45','1','75','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2307','427','14','2','2025-02-21','12726','0',NULL,NULL,'475','0','S??LEYMAN','0','2025-02-21 21:09:45','2025-02-21 21:09:45','1','475','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2308','427','14','2','2025-02-21','12726','0',NULL,NULL,'600','0','MAZOT','0','2025-02-21 21:09:45','2025-02-21 21:09:45','1','600','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2309','427','14','2','2025-02-21','12726','0',NULL,NULL,'361.95','0','YEMEK','0','2025-02-21 21:09:45','2025-02-21 21:09:45','1','361.95','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2310','427','14','2','2025-02-21','12726','0',NULL,NULL,'0','19411.69','KKart?? G??nsonu','7','2025-02-21 21:09:45','2025-02-21 21:09:45','2','19411.69','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2311','428','14','2','2025-02-21','12727','0',NULL,NULL,'0','0','0','0','2025-02-22 05:27:27','2025-02-22 05:27:27','0','0','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2312','429','14','3','2025-02-22','12728','0',NULL,NULL,'0','6605','KKart?? G??nsonu','7','2025-02-22 14:09:53','2025-02-22 14:09:53','2','6605','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2313','429','14','3','2025-02-22','12728','0',NULL,NULL,'0','175','YEMEK','0','2025-02-22 14:09:53','2025-02-22 14:09:53','0','175','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2329','430','14','2','2025-02-22','12729','0',NULL,NULL,'0','18365.36','KKart?? G??nsonu','7','2025-02-23 08:51:38','2025-02-23 08:51:38','2','18365.36','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2330','430','14','2','2025-02-22','12729','0',NULL,NULL,'0','1450','TRAPZON','0','2025-02-23 08:51:38','2025-02-23 08:51:38','0','1450','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2331','430','14','2','2025-02-22','12729','0',NULL,NULL,'0','175','??RFAN','0','2025-02-23 08:51:38','2025-02-23 08:51:38','0','175','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2332','430','14','2','2025-02-22','12729','0',NULL,NULL,'0','392','SELO IBAN','0','2025-02-23 08:51:38','2025-02-23 08:51:38','0','392','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2333','430','14','2','2025-02-22','12729','0',NULL,NULL,'0','3640','EVRENSEK??Z EKMEK','0','2025-02-23 08:51:38','2025-02-23 08:51:38','0','3640','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2334','430','14','2','2025-02-22','12729','0',NULL,NULL,'0','93','FATMA GE??KO','0','2025-02-23 08:51:38','2025-02-23 08:51:38','0','93','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2335','430','14','2','2025-02-22','12729','0',NULL,NULL,'0','65','FATMA GE??KO','0','2025-02-23 08:51:38','2025-02-23 08:51:38','0','65','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2336','430','14','2','2025-02-22','12729','0',NULL,NULL,'25','0','U??UR','0','2025-02-23 08:51:38','2025-02-23 08:51:38','1','25','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2337','430','14','2','2025-02-22','12729','0',NULL,NULL,'100','0','FAS??LYE','0','2025-02-23 08:51:38','2025-02-23 08:51:38','1','100','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2338','430','14','2','2025-02-22','12729','0',NULL,NULL,'0','836','KKart?? G??nsonu','3','2025-02-23 08:51:38','2025-02-23 08:51:38','2','836','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2339','430','14','2','2025-02-22','12729','0',NULL,NULL,'0','82','YEMEK','0','2025-02-23 08:51:38','2025-02-23 08:51:38','0','82','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2340','430','14','2','2025-02-22','12729','0',NULL,NULL,'0','30','EROL','0','2025-02-23 08:51:38','2025-02-23 08:51:38','0','30','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2341','430','14','2','2025-02-22','12729','0',NULL,NULL,'0','36','EROL','0','2025-02-23 08:51:38','2025-02-23 08:51:38','0','36','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2342','430','14','2','2025-02-22','12729','0',NULL,NULL,'1700','0','MAZOT','0','2025-02-23 08:51:38','2025-02-23 08:51:38','1','1700','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2343','430','14','2','2025-02-22','12729','0',NULL,NULL,'0','175803','DEPO STOK ??IKI??LARI','0','2025-02-23 08:51:38','2025-02-23 08:51:38','0','175803','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2344','431','14','2','2025-02-23','12730','0',NULL,NULL,'0','0','0','0','2025-02-23 14:35:20','2025-02-23 14:35:20','0','0','2');
INSERT INTO `kasahesapalmaislems` VALUES ('2359','433','14','2','2025-02-23','12732','0',NULL,NULL,'0','0','0','0','2025-02-23 14:58:47','2025-02-23 14:58:47','0','0','0');
INSERT INTO `kasahesapalmaislems` VALUES ('2360','432','14','2','2025-02-23','12731','0',NULL,NULL,'0','13294.48','KKart?? G??nsonu','7','2025-02-27 09:53:13','2025-02-27 09:53:13','2','13294.48','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2361','432','14','2','2025-02-23','12731','0',NULL,NULL,'0','1060','TRAPZON','0','2025-02-27 09:53:13','2025-02-27 09:53:13','0','1060','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2362','432','14','2','2025-02-23','12731','0',NULL,NULL,'0','250','FEVZ?? BAYIRLI','0','2025-02-27 09:53:13','2025-02-27 09:53:13','0','250','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2363','432','14','2','2025-02-23','12731','0',NULL,NULL,'0','118','EROL YEMEK','0','2025-02-27 09:53:13','2025-02-27 09:53:13','0','118','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2364','432','14','2','2025-02-23','12731','0',NULL,NULL,'0','107','B??BER ????PE G??DEN','0','2025-02-27 09:53:13','2025-02-27 09:53:13','0','107','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2365','432','14','2','2025-02-23','12731','0',NULL,NULL,'0','4033','EVRENSEK??Z EKMEK','0','2025-02-27 09:53:13','2025-02-27 09:53:13','0','4033','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2366','432','14','2','2025-02-23','12731','0',NULL,NULL,'0','45','BOZUK PARA ??A??A??IDA KALDI','0','2025-02-27 09:53:13','2025-02-27 09:53:13','0','45','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2367','432','14','2','2025-02-23','12731','0',NULL,NULL,'130','0','G??LCAN AZCAKAR','0','2025-02-27 09:53:13','2025-02-27 09:53:13','1','130','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2368','432','14','2','2025-02-23','12731','0',NULL,NULL,'100','0','TELEFON KABLO','0','2025-02-27 09:53:13','2025-02-27 09:53:13','1','100','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2369','432','14','2','2025-02-23','12731','0',NULL,NULL,'95','0','B??RCAN AYIR','0','2025-02-27 09:53:13','2025-02-27 09:53:13','1','95','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2370','432','14','2','2025-02-23','12731','0',NULL,NULL,'0','5380.66','KKart?? G??nsonu','3','2025-02-27 09:53:13','2025-02-27 09:53:13','2','5380.66','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2371','432','14','2','2025-02-23','12731','0',NULL,NULL,'0','0','0','0','2025-02-27 09:53:13','2025-02-27 09:53:13','0','0','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2372','432','14','2','2025-02-23','12731','0',NULL,NULL,'5575','0','MAZOT','0','2025-02-27 09:53:13','2025-02-27 09:53:13','1','5575','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2373','434','14','3','2025-02-24','12733','0',NULL,NULL,'0','11977','ara?? tamiri volkan','0','2025-02-27 14:40:19','2025-02-27 14:40:19','0','11977','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2374','434','14','3','2025-02-24','12733','0',NULL,NULL,'0','850','ara?? tamiri','0','2025-02-27 14:40:19','2025-02-27 14:40:19','0','850','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2375','435','14','3','2025-02-25','12734','0',NULL,NULL,'0','2869','ara?? muayne','0','2025-02-27 14:44:16','2025-02-27 14:44:16','0','2869','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2376','435','14','3','2025-02-25','12734','0',NULL,NULL,'0','175','yemek','0','2025-02-27 14:44:16','2025-02-27 14:44:16','0','175','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2377','435','14','3','2025-02-25','12734','0',NULL,NULL,'0','12000','KKart?? G??nsonu','1','2025-02-27 14:44:16','2025-02-27 14:44:16','2','12000','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2380','437','14','2','2025-02-27','12736','0',NULL,NULL,'0','0','0','0','2025-02-27 15:19:32','2025-02-27 15:19:32','0','0','2');
INSERT INTO `kasahesapalmaislems` VALUES ('2398','439','14','6','2025-02-27','12738','0',NULL,NULL,'0','0','0','0','2025-02-27 15:43:00','2025-02-27 15:43:00','0','0','2');
INSERT INTO `kasahesapalmaislems` VALUES ('2399','438','14','6','2025-02-27','12737','0',NULL,NULL,'0','1237','KKart?? G??nsonu','3','2025-02-27 15:43:43','2025-02-27 15:43:43','2','1237','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2400','438','14','6','2025-02-27','12737','0',NULL,NULL,'0','13.5','market kahve','0','2025-02-27 15:43:43','2025-02-27 15:43:43','0','13.5','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2401','438','14','6','2025-02-27','12737','0',NULL,NULL,'0','175','irfan yemek','0','2025-02-27 15:43:43','2025-02-27 15:43:43','0','175','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2402','438','14','6','2025-02-27','12737','0',NULL,NULL,'0','1112.4','TRAPZON ekmek','0','2025-02-27 15:43:43','2025-02-27 15:43:43','0','1112.4','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2403','438','14','6','2025-02-27','12737','0',NULL,NULL,'0','47','market kahve','0','2025-02-27 15:43:43','2025-02-27 15:43:43','0','47','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2404','438','14','6','2025-02-27','12737','0',NULL,NULL,'0','7.5','selo yemek','0','2025-02-27 15:43:43','2025-02-27 15:43:43','0','7.5','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2405','438','14','6','2025-02-27','12737','0',NULL,NULL,'0','2925','evrensekiz ekmek','0','2025-02-27 15:43:43','2025-02-27 15:43:43','0','2925','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2406','438','14','6','2025-02-27','12737','0',NULL,NULL,'0','18.95','??r??n iade de??i??imi','0','2025-02-27 15:43:43','2025-02-27 15:43:43','0','18.95','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2407','438','14','6','2025-02-27','12737','0',NULL,NULL,'0','62.5','ekmek ????k?????? yanl????','0','2025-02-27 15:43:43','2025-02-27 15:43:43','0','62.5','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2408','438','14','6','2025-02-27','12737','0',NULL,NULL,'0','261.25','cemberi ara?? tamir','0','2025-02-27 15:43:43','2025-02-27 15:43:43','0','261.25','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2409','438','14','6','2025-02-27','12737','0',NULL,NULL,'0','985','selo t??p paras??','0','2025-02-27 15:43:43','2025-02-27 15:43:43','0','985','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2410','438','14','6','2025-02-27','12737','0',NULL,NULL,'20','0','oyuncak','0','2025-02-27 15:43:43','2025-02-27 15:43:43','1','20','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2411','438','14','6','2025-02-27','12737','0',NULL,NULL,'444','0','irfan eski hesaptan','0','2025-02-27 15:43:43','2025-02-27 15:43:43','1','444','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2412','438','14','6','2025-02-27','12737','0',NULL,NULL,'300','0','t??p kafas?? sat??????','0','2025-02-27 15:43:43','2025-02-27 15:43:43','1','300','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2413','438','14','6','2025-02-27','12737','0',NULL,NULL,'302','0','oyuncak sat??????','0','2025-02-27 15:43:43','2025-02-27 15:43:43','1','302','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2414','438','14','6','2025-02-27','12737','0',NULL,NULL,'400','0','mazot','0','2025-02-27 15:43:43','2025-02-27 15:43:43','1','400','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2415','438','14','6','2025-02-27','12737','0',NULL,NULL,'0','12061.9','KKart?? G??nsonu','7','2025-02-27 15:43:43','2025-02-27 15:43:43','2','12061.9','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2416','440','14','3','2025-02-28','12739','0',NULL,NULL,'0','5533.97','KKart?? G??nsonu','7','2025-02-28 14:05:55','2025-02-28 14:05:55','2','5533.97','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2417','440','14','3','2025-02-28','12739','0',NULL,NULL,'0','350','YEMEK','0','2025-02-28 14:05:55','2025-02-28 14:05:55','0','350','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2418','440','14','3','2025-02-28','12739','0',NULL,NULL,'0','2150','VOLKAN PR??MLER?? EKS??K YATMI??','0','2025-02-28 14:05:55','2025-02-28 14:05:55','0','2150','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2419','441','14','6','2025-02-28','12740','0',NULL,NULL,'0','0','0','0','2025-02-28 14:17:50','2025-02-28 14:17:50','0','0','2');
INSERT INTO `kasahesapalmaislems` VALUES ('2436','442','14','6','2025-02-28','12741','0',NULL,NULL,'0','13974.04','KKart?? G??nsonu','7','2025-02-28 14:56:35','2025-02-28 14:56:35','2','13974.04','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2437','442','14','6','2025-02-28','12741','0',NULL,NULL,'0','410','KKart?? G??nsonu','3','2025-02-28 14:56:35','2025-02-28 14:56:35','2','410','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2438','442','14','6','2025-02-28','12741','0',NULL,NULL,'0','14','KAHVE','0','2025-02-28 14:56:35','2025-02-28 14:56:35','0','14','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2439','442','14','6','2025-02-28','12741','0',NULL,NULL,'0','86.5','ERSAN GE??KO','0','2025-02-28 14:56:35','2025-02-28 14:56:35','0','86.5','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2440','442','14','6','2025-02-28','12741','0',NULL,NULL,'0','751.9','TRAPZON','0','2025-02-28 14:56:35','2025-02-28 14:56:35','0','751.9','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2441','442','14','6','2025-02-28','12741','0',NULL,NULL,'0','1490.75','DAMAK K??FTE ??DEME','0','2025-02-28 14:56:35','2025-02-28 14:56:35','0','1490.75','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2442','442','14','6','2025-02-28','12741','0',NULL,NULL,'0','1785','SELO IBAN PARA YATMI??','0','2025-02-28 14:56:35','2025-02-28 14:56:35','0','1785','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2443','442','14','6','2025-02-28','12741','0',NULL,NULL,'0','5','KAHVE','0','2025-02-28 14:56:35','2025-02-28 14:56:35','0','5','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2444','442','14','6','2025-02-28','12741','0',NULL,NULL,'0','56','TAHS??N YEMEK','0','2025-02-28 14:56:35','2025-02-28 14:56:35','0','56','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2445','442','14','6','2025-02-28','12741','0',NULL,NULL,'0','44','SELO ??AY','0','2025-02-28 14:56:35','2025-02-28 14:56:35','0','44','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2446','442','14','6','2025-02-28','12741','0',NULL,NULL,'0','84','EROL YEMEK','0','2025-02-28 14:56:35','2025-02-28 14:56:35','0','84','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2447','442','14','6','2025-02-28','12741','0',NULL,NULL,'0','20','KAHVE','0','2025-02-28 14:56:35','2025-02-28 14:56:35','0','20','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2448','442','14','6','2025-02-28','12741','0',NULL,NULL,'0','3267','EVRENSEK??Z EKMEK','0','2025-02-28 14:56:35','2025-02-28 14:56:35','0','3267','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2449','442','14','6','2025-02-28','12741','0',NULL,NULL,'0','121.58','SELO ALI??VER????','0','2025-02-28 14:56:35','2025-02-28 14:56:35','0','121.58','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2450','442','14','6','2025-02-28','12741','0',NULL,NULL,'91','0','OYUNCAK','0','2025-02-28 14:56:35','2025-02-28 14:56:35','1','91','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2451','442','14','6','2025-02-28','12741','0',NULL,NULL,'2000','0','MAZOT','0','2025-02-28 14:56:35','2025-02-28 14:56:35','1','2000','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2452','443','14','6','2025-02-28','12742','0',NULL,NULL,'0','0','0','0','2025-02-28 14:57:40','2025-02-28 14:57:40','0','0','0');
INSERT INTO `kasahesapalmaislems` VALUES ('2453','444','14','3','2025-03-01','12743','0',NULL,NULL,'0','3641.6','KKart?? G??nsonu','7','2025-03-01 14:34:17','2025-03-01 14:34:17','2','3641.6','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2454','444','14','3','2025-03-01','12743','0',NULL,NULL,'0','175','yemek','0','2025-03-01 14:34:17','2025-03-01 14:34:17','0','175','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2455','445','14','6','2025-03-01','12744','0',NULL,NULL,'0','0','0','0','2025-03-01 15:33:55','2025-03-01 15:33:55','0','0','2');
INSERT INTO `kasahesapalmaislems` VALUES ('2475','447','14','6','2025-03-01','12746','0',NULL,NULL,'0','0','0','0','2025-03-01 15:59:35','2025-03-01 15:59:35','0','0','0');
INSERT INTO `kasahesapalmaislems` VALUES ('2476','446','14','6','2025-03-01','12745','0',NULL,NULL,'0','11881.07','KKart?? G??nsonu','7','2025-03-01 16:02:12','2025-03-01 16:02:12','2','11881.07','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2477','446','14','6','2025-03-01','12745','0',NULL,NULL,'0','632','KKart?? G??nsonu','3','2025-03-01 16:02:12','2025-03-01 16:02:12','2','632','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2478','446','14','6','2025-03-01','12745','0',NULL,NULL,'0','13.5','kahve','0','2025-03-01 16:02:12','2025-03-01 16:02:12','0','13.5','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2479','446','14','6','2025-03-01','12745','0',NULL,NULL,'0','669.5','TRAPZON','0','2025-03-01 16:02:12','2025-03-01 16:02:12','0','669.5','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2480','446','14','6','2025-03-01','12745','0',NULL,NULL,'0','36.5','dursun','0','2025-03-01 16:02:12','2025-03-01 16:02:12','0','36.5','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2481','446','14','6','2025-03-01','12745','0',NULL,NULL,'0','286','selo-ali','0','2025-03-01 16:02:12','2025-03-01 16:02:12','0','286','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2482','446','14','6','2025-03-01','12745','0',NULL,NULL,'0','175','irfan yemek','0','2025-03-01 16:02:12','2025-03-01 16:02:12','0','175','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2483','446','14','6','2025-03-01','12745','0',NULL,NULL,'0','72.5','SELO','0','2025-03-01 16:02:12','2025-03-01 16:02:12','0','72.5','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2484','446','14','6','2025-03-01','12745','0',NULL,NULL,'0','31','tahsin yemek','0','2025-03-01 16:02:12','2025-03-01 16:02:12','0','31','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2485','446','14','6','2025-03-01','12745','0',NULL,NULL,'0','302','berkay ??akar','0','2025-03-01 16:02:12','2025-03-01 16:02:12','0','302','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2486','446','14','6','2025-03-01','12745','0',NULL,NULL,'0','140','ali ke??ici-hediye yenge','0','2025-03-01 16:02:12','2025-03-01 16:02:12','0','140','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2487','446','14','6','2025-03-01','12745','0',NULL,NULL,'0','3650','evrensekiz ekmek','0','2025-03-01 16:02:12','2025-03-01 16:02:12','0','3650','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2488','446','14','6','2025-03-01','12745','0',NULL,NULL,'0','24','??r??n fazla yanl????l??k','0','2025-03-01 16:02:12','2025-03-01 16:02:12','0','24','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2489','446','14','6','2025-03-01','12745','0',NULL,NULL,'0','370.13','fatma gecko','0','2025-03-01 16:02:12','2025-03-01 16:02:12','0','370.13','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2490','446','14','6','2025-03-01','12745','0',NULL,NULL,'0','4.5','yanl???? ekmek','0','2025-03-01 16:02:12','2025-03-01 16:02:12','0','4.5','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2491','446','14','6','2025-03-01','12745','0',NULL,NULL,'0','322.5','ali ke??ici -hediye','0','2025-03-01 16:02:12','2025-03-01 16:02:12','0','322.5','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2492','446','14','6','2025-03-01','12745','0',NULL,NULL,'0','170','erol ke??ici-ecem','0','2025-03-01 16:02:12','2025-03-01 16:02:12','0','170','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2493','446','14','6','2025-03-01','12745','0',NULL,NULL,'533','0','pide oyuncak','0','2025-03-01 16:02:12','2025-03-01 16:02:12','1','533','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2494','446','14','6','2025-03-01','12745','0',NULL,NULL,'3600','0','MAZOT','0','2025-03-01 16:02:12','2025-03-01 16:02:12','1','3600','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2495','448','14','3','2025-03-03','12747','0',NULL,NULL,'0','4427.84','KKart?? G??nsonu','7','2025-03-03 14:21:00','2025-03-03 14:21:00','2','4427.84','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2496','448','14','3','2025-03-03','12747','0',NULL,NULL,'0','350','YEMEK','0','2025-03-03 14:21:00','2025-03-03 14:21:00','0','350','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2497','449','14','2','2025-03-03','12748','0',NULL,NULL,'0','0','0','0','2025-03-03 14:30:43','2025-03-03 14:30:43','0','0','2');
INSERT INTO `kasahesapalmaislems` VALUES ('2513','451','14','2','2025-03-03','12750','0',NULL,NULL,'0','0','0','0','2025-03-03 14:47:32','2025-03-03 14:47:32','0','0','0');
INSERT INTO `kasahesapalmaislems` VALUES ('2529','452','14','3','2025-03-05','12751','0',NULL,NULL,'0','650','KKart?? G??nsonu','19','2025-03-05 14:17:23','2025-03-05 14:17:23','2','650','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2530','452','14','3','2025-03-05','12751','0',NULL,NULL,'0','7328.49','KKart?? G??nsonu','19','2025-03-05 14:17:23','2025-03-05 14:17:23','2','7328.49','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2531','452','14','3','2025-03-05','12751','0',NULL,NULL,'0','350','YEMEK','0','2025-03-05 14:17:23','2025-03-05 14:17:23','0','350','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2532','453','14','2','2025-03-05','12752','0',NULL,NULL,'0','0','0','0','2025-03-05 15:08:10','2025-03-05 15:08:10','0','0','2');
INSERT INTO `kasahesapalmaislems` VALUES ('2543','455','14','2','2025-03-05','12754','0',NULL,NULL,'0','0','0','0','2025-03-05 15:21:15','2025-03-05 15:21:15','0','0','0');
INSERT INTO `kasahesapalmaislems` VALUES ('2554','454','14','2','2025-03-05','12753','0',NULL,NULL,'0','1295','KKart?? G??nsonu','3','2025-03-05 15:27:01','2025-03-05 15:27:01','2','1295','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2555','454','14','2','2025-03-05','12753','0',NULL,NULL,'0','122.5','TEM??ZL??K','0','2025-03-05 15:27:01','2025-03-05 15:27:01','0','122.5','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2556','454','14','2','2025-03-05','12753','0',NULL,NULL,'0','475','TRAPZON','0','2025-03-05 15:27:01','2025-03-05 15:27:01','0','475','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2557','454','14','2','2025-03-05','12753','0',NULL,NULL,'0','385','??avu??han','0','2025-03-05 15:27:01','2025-03-05 15:27:01','0','385','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2558','454','14','2','2025-03-05','12753','0',NULL,NULL,'0','275','??ADE P??R??Z','0','2025-03-05 15:27:01','2025-03-05 15:27:01','0','275','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2559','454','14','2','2025-03-05','12753','0',NULL,NULL,'0','715','P??DE ??DEME TRAPZON','0','2025-03-05 15:27:01','2025-03-05 15:27:01','0','715','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2560','454','14','2','2025-03-05','12753','0',NULL,NULL,'0','2175','EVRENSEK??Z EKMEK','0','2025-03-05 15:27:01','2025-03-05 15:27:01','0','2175','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2561','454','14','2','2025-03-05','12753','0',NULL,NULL,'0','810','P??DE ??DEME EVRENSEK??Z','0','2025-03-05 15:27:01','2025-03-05 15:27:01','0','810','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2562','454','14','2','2025-03-05','12753','0',NULL,NULL,'350','0','1200','0','2025-03-05 15:27:01','2025-03-05 15:27:01','1','350','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2563','454','14','2','2025-03-05','12753','0',NULL,NULL,'0','11659.77','KKart?? G??nsonu','7','2025-03-05 15:27:01','2025-03-05 15:27:01','2','11659.77','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2584','460','14','1','2025-03-05','12755','166',NULL,NULL,'0','100','SELO MARKET','0','2025-03-05 20:30:30','2025-03-05 20:30:30','3','100','0');
INSERT INTO `kasahesapalmaislems` VALUES ('2585','461','14','6','2025-03-06','12756','0',NULL,NULL,'0','0','0','0','2025-03-06 15:10:02','2025-03-06 15:10:02','0','0','2');
INSERT INTO `kasahesapalmaislems` VALUES ('2601','463','14','6','2025-03-06','12758','0',NULL,NULL,'0','0','0','0','2025-03-06 15:30:39','2025-03-06 15:30:39','0','0','0');
INSERT INTO `kasahesapalmaislems` VALUES ('2619','462','14','6','2025-03-06','12757','0',NULL,NULL,'0','4808.7','KKart?? G??nsonu','3','2025-03-06 15:44:09','2025-03-06 15:44:09','2','4808.7','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2620','462','14','6','2025-03-06','12757','0',NULL,NULL,'0','1091.8','TRAPZON','0','2025-03-06 15:44:09','2025-03-06 15:44:09','0','1091.8','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2621','462','14','6','2025-03-06','12757','0',NULL,NULL,'0','77','??r??n iade','0','2025-03-06 15:44:09','2025-03-06 15:44:09','0','77','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2622','462','14','6','2025-03-06','12757','0',NULL,NULL,'0','15','selo','0','2025-03-06 15:44:09','2025-03-06 15:44:09','0','15','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2623','462','14','6','2025-03-06','12757','0',NULL,NULL,'0','6','mahmut ??zakar','0','2025-03-06 15:44:09','2025-03-06 15:44:09','0','6','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2624','462','14','6','2025-03-06','12757','0',NULL,NULL,'0','39','tahsin yemek','0','2025-03-06 15:44:09','2025-03-06 15:44:09','0','39','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2625','462','14','6','2025-03-06','12757','0',NULL,NULL,'0','1140','TRAPZON P??DE','0','2025-03-06 15:44:09','2025-03-06 15:44:09','0','1140','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2626','462','14','6','2025-03-06','12757','0',NULL,NULL,'0','15','SELO','0','2025-03-06 15:44:09','2025-03-06 15:44:09','0','15','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2627','462','14','6','2025-03-06','12757','0',NULL,NULL,'0','2130','EVRENSEK??Z EKMEK','0','2025-03-06 15:44:09','2025-03-06 15:44:09','0','2130','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2628','462','14','6','2025-03-06','12757','0',NULL,NULL,'0','110.5','MUSTAFA SEZER','0','2025-03-06 15:44:09','2025-03-06 15:44:09','0','110.5','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2629','462','14','6','2025-03-06','12757','0',NULL,NULL,'0','20','SELO','0','2025-03-06 15:44:09','2025-03-06 15:44:09','0','20','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2630','462','14','6','2025-03-06','12757','0',NULL,NULL,'0','50','AL?? KE????C??','0','2025-03-06 15:44:09','2025-03-06 15:44:09','0','50','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2631','462','14','6','2025-03-06','12757','0',NULL,NULL,'300','0','OYUNCAK','0','2025-03-06 15:44:09','2025-03-06 15:44:09','1','300','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2632','462','14','6','2025-03-06','12757','0',NULL,NULL,'0','8266','KKart?? G??nsonu','7','2025-03-06 15:44:09','2025-03-06 15:44:09','2','8266','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2633','462','14','6','2025-03-06','12757','0',NULL,NULL,'3753','0','MAZOT','0','2025-03-06 15:44:09','2025-03-06 15:44:09','1','3753','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2634','462','14','6','2025-03-06','12757','0',NULL,NULL,'800','0','mazot','0','2025-03-06 15:44:09','2025-03-06 15:44:09','1','800','0');
INSERT INTO `kasahesapalmaislems` VALUES ('2635','462','14','6','2025-03-06','12757','0',NULL,NULL,'0','800','selo mazot paras??','0','2025-03-06 15:44:09','2025-03-06 15:44:09','0','800','0');
INSERT INTO `kasahesapalmaislems` VALUES ('2636','462','14','6','2025-03-06','12757','0',NULL,NULL,'1630','0','mazot','0','2025-03-06 15:44:09','2025-03-06 15:44:09','1','1630','0');
INSERT INTO `kasahesapalmaislems` VALUES ('2637','409','14','3','2025-02-17','12708','0',NULL,NULL,'0','4571.78','KKart?? G??nsonu','7','2025-03-07 06:10:54','2025-03-07 06:10:54','2','4571.78','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2638','409','14','3','2025-02-17','12708','0',NULL,NULL,'0','350','YEMEK','0','2025-03-07 06:10:54','2025-03-07 06:10:54','0','350','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2639','417','14','3','2025-02-19','12716','0',NULL,NULL,'0','3841.96','KKart?? G??nsonu','7','2025-03-07 06:12:48','2025-03-07 06:12:48','2','3841.96','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2640','417','14','3','2025-02-19','12716','0',NULL,NULL,'0','350','YEMEK','0','2025-03-07 06:12:48','2025-03-07 06:12:48','0','350','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2641','436','14','3','2025-02-26','12735','0',NULL,NULL,'0','4929.39','KKart?? G??nsonu','1','2025-03-07 06:14:05','2025-03-07 06:14:05','2','4929.39','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2642','436','14','3','2025-02-26','12735','0',NULL,NULL,'0','350','yemek','0','2025-03-07 06:14:05','2025-03-07 06:14:05','0','350','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2643','464','14','3','2025-03-07','12759','0',NULL,NULL,'0','730.46','KKart?? G??nsonu','19','2025-03-07 15:21:21','2025-03-07 15:21:21','2','730.46','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2644','464','14','3','2025-03-07','12759','0',NULL,NULL,'0','350','yemek','0','2025-03-07 15:21:21','2025-03-07 15:21:21','0','350','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2645','465','14','2','2025-03-07','12760','0',NULL,NULL,'0','0','0','0','2025-03-07 15:27:20','2025-03-07 15:27:20','0','0','2');
INSERT INTO `kasahesapalmaislems` VALUES ('2681','467','14','2','2025-03-07','12762','0',NULL,NULL,'0','0','0','0','2025-03-08 09:48:33','2025-03-08 09:48:33','0','0','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2682','468','14','3','2025-03-04','12763','0',NULL,NULL,'0','2000','KKart?? G??nsonu','19','2025-03-08 09:53:07','2025-03-08 09:53:07','2','2000','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2683','468','14','3','2025-03-04','12763','0',NULL,NULL,'0','175','YEMEK','0','2025-03-08 09:53:07','2025-03-08 09:53:07','0','175','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2684','469','14','3','2025-03-06','12764','0',NULL,NULL,'0','1717','KKart?? G??nsonu','19','2025-03-08 10:02:54','2025-03-08 10:02:54','2','1717','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2685','469','14','3','2025-03-06','12764','0',NULL,NULL,'0','7893','KKart?? G??nsonu','19','2025-03-08 10:02:54','2025-03-08 10:02:54','2','7893','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2686','469','14','3','2025-03-06','12764','0',NULL,NULL,'0','350','YEMEK','0','2025-03-08 10:02:54','2025-03-08 10:02:54','0','350','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2687','450','14','2','2025-03-03','12749','0',NULL,NULL,'0','497','KKart?? G??nsonu','3','2025-03-08 10:13:09','2025-03-08 10:13:09','2','497','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2688','450','14','2','2025-03-03','12749','0',NULL,NULL,'0','1285','TRAPZON','0','2025-03-08 10:13:09','2025-03-08 10:13:09','0','1285','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2689','450','14','2','2025-03-03','12749','166',NULL,NULL,'0','353','SELO IBAN','0','2025-03-08 10:13:09','2025-03-08 10:13:09','3','353','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2690','450','14','2','2025-03-03','12749','0',NULL,NULL,'0','1500','SELO HAMMAL','0','2025-03-08 10:13:09','2025-03-08 10:13:09','0','1500','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2691','450','14','2','2025-03-03','12749','0',NULL,NULL,'0','50','AYKUT KAYNAK','0','2025-03-08 10:13:09','2025-03-08 10:13:09','0','50','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2692','450','14','2','2025-03-03','12749','0',NULL,NULL,'0','99.5','RECEP B??L??R','0','2025-03-08 10:13:09','2025-03-08 10:13:09','0','99.5','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2693','450','14','2','2025-03-03','12749','0',NULL,NULL,'0','1140','P??DE','0','2025-03-08 10:13:09','2025-03-08 10:13:09','0','1140','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2694','450','14','2','2025-03-03','12749','0',NULL,NULL,'0','1905','EVRENSEK??Z EKMEK','0','2025-03-08 10:13:09','2025-03-08 10:13:09','0','1905','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2695','450','14','2','2025-03-03','12749','0',NULL,NULL,'0','1080','EVRENSEK??Z P??DE','0','2025-03-08 10:13:09','2025-03-08 10:13:09','0','1080','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2696','450','14','2','2025-03-03','12749','0',NULL,NULL,'0','55','DO??AN ARI','0','2025-03-08 10:13:09','2025-03-08 10:13:09','0','55','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2697','450','14','2','2025-03-03','12749','0',NULL,NULL,'80','0','ERSAN GE??KO','0','2025-03-08 10:13:09','2025-03-08 10:13:09','1','80','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2698','450','14','2','2025-03-03','12749','0',NULL,NULL,'0','75','A??A??IDA KASA KALDI X ROPURU GE?? GELD??','0','2025-03-08 10:13:09','2025-03-08 10:13:09','0','75','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2699','450','14','2','2025-03-03','12749','166',NULL,NULL,'0','52.5','SELO','0','2025-03-08 10:13:09','2025-03-08 10:13:09','3','52.5','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2700','450','14','2','2025-03-03','12749','0',NULL,NULL,'13400','0','MAZOT','0','2025-03-08 10:13:09','2025-03-08 10:13:09','1','13400','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2701','450','14','2','2025-03-03','12749','0',NULL,NULL,'0','3997.56','KKart?? G??nsonu','0','2025-03-08 10:13:09','2025-03-08 10:13:09','2','3997.56','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2702','450','14','2','2025-03-03','12749','0',NULL,NULL,'0','4900','0','3','2025-03-08 10:13:09','2025-03-08 10:13:09','2','4900','0');
INSERT INTO `kasahesapalmaislems` VALUES ('2703','466','14','6','2025-03-07','12761','0',NULL,NULL,'0','16024.78','KKart?? G??nsonu','7','2025-03-08 10:20:14','2025-03-08 10:20:14','2','16024.78','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2704','466','14','6','2025-03-07','12761','0',NULL,NULL,'0','9706.41','KKart?? G??nsonu','0','2025-03-08 10:20:14','2025-03-08 10:20:14','2','9706.41','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2705','466','14','6','2025-03-07','12761','0',NULL,NULL,'0','15','kahve','0','2025-03-08 10:20:14','2025-03-08 10:20:14','0','15','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2706','466','14','6','2025-03-07','12761','0',NULL,NULL,'0','630','pide ??demesi d??n','0','2025-03-08 10:20:14','2025-03-08 10:20:14','0','630','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2707','466','14','6','2025-03-07','12761','0',NULL,NULL,'0','825.67','damak k??fte','0','2025-03-08 10:20:14','2025-03-08 10:20:14','0','825.67','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2708','466','14','6','2025-03-07','12761','0',NULL,NULL,'0','350','TRAPZON','0','2025-03-08 10:20:14','2025-03-08 10:20:14','0','350','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2709','466','14','6','2025-03-07','12761','0',NULL,NULL,'0','798','pide','0','2025-03-08 10:20:14','2025-03-08 10:20:14','0','798','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2710','466','14','6','2025-03-07','12761','0',NULL,NULL,'0','2625','EVRENSEK??Z ekmek','0','2025-03-08 10:20:14','2025-03-08 10:20:14','0','2625','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2711','466','14','6','2025-03-07','12761','0',NULL,NULL,'0','175','AYKUT KAYNAK','0','2025-03-08 10:20:14','2025-03-08 10:20:14','0','175','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2712','466','14','6','2025-03-07','12761','0',NULL,NULL,'0','70','AYKUT KAYNAK','0','2025-03-08 10:20:14','2025-03-08 10:20:14','0','70','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2713','466','14','6','2025-03-07','12761','166',NULL,NULL,'0','1525','selo ??ban','0','2025-03-08 10:20:14','2025-03-08 10:20:14','3','1525','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2714','466','14','6','2025-03-07','12761','0',NULL,NULL,'0','47.5','market','0','2025-03-08 10:20:14','2025-03-08 10:20:14','0','47.5','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2715','466','14','6','2025-03-07','12761','0',NULL,NULL,'0','29','market','0','2025-03-08 10:20:14','2025-03-08 10:20:14','0','29','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2716','466','14','6','2025-03-07','12761','0',NULL,NULL,'52.5','0','oyuncaK','0','2025-03-08 10:20:14','2025-03-08 10:20:14','1','52.5','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2717','466','14','6','2025-03-07','12761','0',NULL,NULL,'1335','0','KEMAL MALDAN','0','2025-03-08 10:20:14','2025-03-08 10:20:14','1','1335','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2718','466','14','6','2025-03-07','12761','0',NULL,NULL,'985','0','EMRE SEV??N??','0','2025-03-08 10:20:14','2025-03-08 10:20:14','1','985','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2719','466','14','6','2025-03-07','12761','0',NULL,NULL,'13040','0','MAZOT','0','2025-03-08 10:20:14','2025-03-08 10:20:14','1','13040','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2720','466','14','6','2025-03-07','12761','166',NULL,NULL,'0','800','selo mazot paras??','0','2025-03-08 10:20:14','2025-03-08 10:20:14','3','800','0');
INSERT INTO `kasahesapalmaislems` VALUES ('2721','466','14','6','2025-03-07','12761','0',NULL,NULL,'800','0','MAZOT SATI??I','0','2025-03-08 10:20:14','2025-03-08 10:20:14','1','800','0');
INSERT INTO `kasahesapalmaislems` VALUES ('2722','470','14','3','2025-03-08','12765','0',NULL,NULL,'0','23236','KKart?? G??nsonu','19','2025-03-08 13:58:51','2025-03-08 13:58:51','2','23236','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2723','470','14','3','2025-03-08','12765','0',NULL,NULL,'0','2453','KKart?? G??nsonu','19','2025-03-08 13:58:51','2025-03-08 13:58:51','2','2453','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2724','470','14','3','2025-03-08','12765','0',NULL,NULL,'0','1100','koltuk tamiri muhasebe','0','2025-03-08 13:58:51','2025-03-08 13:58:51','0','1100','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2725','470','14','3','2025-03-08','12765','0',NULL,NULL,'0','175','yemek','0','2025-03-08 13:58:51','2025-03-08 13:58:51','0','175','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2726','471','14','2','2025-03-08','12766','0',NULL,NULL,'0','0','0','0','2025-03-08 15:02:52','2025-03-08 15:02:52','0','0','2');
INSERT INTO `kasahesapalmaislems` VALUES ('2739','472','14','2','2025-03-08','12767','0',NULL,NULL,'0','13937.36','KKart?? G??nsonu','7','2025-03-08 15:17:14','2025-03-08 15:17:14','2','13937.36','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2740','472','14','2','2025-03-08','12767','0',NULL,NULL,'0','3500','KKart?? G??nsonu','3','2025-03-08 15:17:14','2025-03-08 15:17:14','2','3500','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2741','472','14','2','2025-03-08','12767','0',NULL,NULL,'3500','0','mazot','0','2025-03-08 15:17:14','2025-03-08 15:17:14','1','3500','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2742','472','14','2','2025-03-08','12767','0',NULL,NULL,'0','775','TRAPZON','0','2025-03-08 15:17:14','2025-03-08 15:17:14','0','775','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2743','472','14','2','2025-03-08','12767','0',NULL,NULL,'0','175','irfan yemek','0','2025-03-08 15:17:14','2025-03-08 15:17:14','0','175','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2744','472','14','2','2025-03-08','12767','0',NULL,NULL,'0','998','TRAPZON P??DE','0','2025-03-08 15:17:14','2025-03-08 15:17:14','0','998','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2745','472','14','2','2025-03-08','12767','0',NULL,NULL,'0','2400','evrensekiz ekmek','0','2025-03-08 15:17:14','2025-03-08 15:17:14','0','2400','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2746','472','14','2','2025-03-08','12767','0',NULL,NULL,'0','450','pide','0','2025-03-08 15:17:14','2025-03-08 15:17:14','0','450','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2747','472','14','2','2025-03-08','12767','0',NULL,NULL,'0','35','fatma gecko','0','2025-03-08 15:17:14','2025-03-08 15:17:14','0','35','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2748','472','14','2','2025-03-08','12767','0',NULL,NULL,'0','89','fatma gecko','0','2025-03-08 15:17:14','2025-03-08 15:17:14','0','89','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2749','472','14','2','2025-03-08','12767','0',NULL,NULL,'420','0','fatma gecko','0','2025-03-08 15:17:14','2025-03-08 15:17:14','1','420','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2750','472','14','2','2025-03-08','12767','0',NULL,NULL,'2575','0','erkan ay??r','0','2025-03-08 15:17:14','2025-03-08 15:17:14','1','2575','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2751','473','14','2','2025-03-09','12768','0',NULL,NULL,'0','0','0','0','2025-03-09 14:37:13','2025-03-09 14:37:13','0','0','2');
INSERT INTO `kasahesapalmaislems` VALUES ('2752','474','14','2','2025-03-09','12769','0',NULL,NULL,'0','6724','KKart?? G??nsonu','3','2025-03-09 14:51:39','2025-03-09 14:51:39','2','6724','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2753','474','14','2','2025-03-09','12769','0',NULL,NULL,'0','5257.66','KKart?? G??nsonu','11','2025-03-09 14:51:39','2025-03-09 14:51:39','2','5257.66','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2754','474','14','2','2025-03-09','12769','0',NULL,NULL,'0','109.5','kahve ikram','0','2025-03-09 14:51:39','2025-03-09 14:51:39','0','109.5','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2755','474','14','2','2025-03-09','12769','0',NULL,NULL,'0','628','TRAPZON','0','2025-03-09 14:51:39','2025-03-09 14:51:39','0','628','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2756','474','14','2','2025-03-09','12769','0',NULL,NULL,'0','137','temizlik','0','2025-03-09 14:51:39','2025-03-09 14:51:39','0','137','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2757','474','14','2','2025-03-09','12769','0',NULL,NULL,'0','985','bircan ay??r','0','2025-03-09 14:51:39','2025-03-09 14:51:39','0','985','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2758','474','14','2','2025-03-09','12769','0',NULL,NULL,'0','2000','YAZARKASA TAM??R??','0','2025-03-09 14:51:39','2025-03-09 14:51:39','0','2000','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2759','474','14','2','2025-03-09','12769','0',NULL,NULL,'0','215','UN ??ADE','0','2025-03-09 14:51:39','2025-03-09 14:51:39','0','215','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2760','474','14','2','2025-03-09','12769','0',NULL,NULL,'0','392','SARI VERES??YE','0','2025-03-09 14:51:39','2025-03-09 14:51:39','0','392','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2761','474','14','2','2025-03-09','12769','0',NULL,NULL,'0','119','CEMBELL?? VERES??YE','0','2025-03-09 14:51:39','2025-03-09 14:51:39','0','119','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2762','474','14','2','2025-03-09','12769','166',NULL,NULL,'0','572','SELO IBAN','0','2025-03-09 14:51:39','2025-03-09 14:51:39','3','572','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2763','474','14','2','2025-03-09','12769','0',NULL,NULL,'0','50','ERKAN ONBA??I','0','2025-03-09 14:51:39','2025-03-09 14:51:39','0','50','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2764','474','14','2','2025-03-09','12769','0',NULL,NULL,'0','2300','evrensekiz ekmek','0','2025-03-09 14:51:39','2025-03-09 14:51:39','0','2300','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2765','474','14','2','2025-03-09','12769','0',NULL,NULL,'0','540','EVRENSEK??Z P??DE','0','2025-03-09 14:51:39','2025-03-09 14:51:39','0','540','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2766','474','14','2','2025-03-09','12769','0',NULL,NULL,'0','1080','TRAPZON P??DE','0','2025-03-09 14:51:39','2025-03-09 14:51:39','0','1080','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2767','474','14','2','2025-03-09','12769','0',NULL,NULL,'0','30','B??RCAN AYIR','0','2025-03-09 14:51:39','2025-03-09 14:51:39','0','30','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2768','474','14','2','2025-03-09','12769','0',NULL,NULL,'100','0','HASAN ER','0','2025-03-09 14:51:39','2025-03-09 14:51:39','1','100','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2769','474','14','2','2025-03-09','12769','0',NULL,NULL,'180','0','FATMA GECKO','0','2025-03-09 14:51:39','2025-03-09 14:51:39','1','180','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2770','474','14','2','2025-03-09','12769','0',NULL,NULL,'14298','0','MAZOT','0','2025-03-09 14:51:39','2025-03-09 14:51:39','1','14298','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2771','474','14','2','2025-03-09','12769','0',NULL,NULL,'0','6561.83','KKart?? G??nsonu','7','2025-03-09 14:51:39','2025-03-09 14:51:39','2','6561.83','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2772','475','14','2','2025-03-09','12770','0',NULL,NULL,'0','0','0','0','2025-03-09 14:56:17','2025-03-09 14:56:17','0','0','0');
INSERT INTO `kasahesapalmaislems` VALUES ('2773','476','14','3','2025-03-10','12771','0',NULL,NULL,'0','3600','KKart?? G??nsonu','19','2025-03-10 14:27:59','2025-03-10 14:27:59','2','3600','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2774','476','14','3','2025-03-10','12771','0',NULL,NULL,'0','200','ARA?? TAM??R','0','2025-03-10 14:27:59','2025-03-10 14:27:59','0','200','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2775','476','14','3','2025-03-10','12771','0',NULL,NULL,'0','350','YEMEK','0','2025-03-10 14:27:59','2025-03-10 14:27:59','0','350','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2776','477','14','6','2025-03-10','12772','0',NULL,NULL,'0','0','0','0','2025-03-10 14:39:59','2025-03-10 14:39:59','0','0','2');
INSERT INTO `kasahesapalmaislems` VALUES ('2777','478','14','6','2025-03-10','12773','0',NULL,NULL,'0','10100.59','KKart?? G??nsonu','7','2025-03-10 15:06:53','2025-03-10 15:06:53','2','10100.59','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2778','478','14','6','2025-03-10','12773','0',NULL,NULL,'0','3675.72','KKart?? G??nsonu','3','2025-03-10 15:06:53','2025-03-10 15:06:53','2','3675.72','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2779','478','14','6','2025-03-10','12773','0',NULL,NULL,'0','150','??r??n iade','0','2025-03-10 15:06:53','2025-03-10 15:06:53','0','150','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2780','478','14','6','2025-03-10','12773','0',NULL,NULL,'0','22.5','market','0','2025-03-10 15:06:53','2025-03-10 15:06:53','0','22.5','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2781','478','14','6','2025-03-10','12773','0',NULL,NULL,'0','7.5','bant','0','2025-03-10 15:06:53','2025-03-10 15:06:53','0','7.5','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2782','478','14','6','2025-03-10','12773','0',NULL,NULL,'0','1205','TRAPZON','0','2025-03-10 15:06:53','2025-03-10 15:06:53','0','1205','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2783','478','14','6','2025-03-10','12773','166',NULL,NULL,'0','454','MARKET ALI??VER????','0','2025-03-10 15:06:53','2025-03-10 15:06:53','3','454','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2784','478','14','6','2025-03-10','12773','0',NULL,NULL,'0','50','FATMA GECKO','0','2025-03-10 15:06:53','2025-03-10 15:06:53','0','50','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2785','478','14','6','2025-03-10','12773','0',NULL,NULL,'0','185.5','G??LCAN AZCAKAR','0','2025-03-10 15:06:53','2025-03-10 15:06:53','0','185.5','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2786','478','14','6','2025-03-10','12773','0',NULL,NULL,'0','1140','TRAPZON','0','2025-03-10 15:06:53','2025-03-10 15:06:53','0','1140','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2787','478','14','6','2025-03-10','12773','0',NULL,NULL,'0','2310','EVRENSEK??Z EKMEK','0','2025-03-10 15:06:53','2025-03-10 15:06:53','0','2310','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2788','478','14','6','2025-03-10','12773','0',NULL,NULL,'0','70','OKAN DIRAMALI','0','2025-03-10 15:06:53','2025-03-10 15:06:53','0','70','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2789','478','14','6','2025-03-10','12773','0',NULL,NULL,'0','0','0','0','2025-03-10 15:06:53','2025-03-10 15:06:53','1','0','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2790','478','14','6','2025-03-10','12773','0',NULL,NULL,'135','0','OYUNCAK','0','2025-03-10 15:06:53','2025-03-10 15:06:53','1','135','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2791','478','14','6','2025-03-10','12773','0',NULL,NULL,'3390','0','MAZOT','0','2025-03-10 15:06:53','2025-03-10 15:06:53','1','3390','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2792','479','14','6','2025-03-10','12774','0',NULL,NULL,'0','0','0','0','2025-03-10 15:11:17','2025-03-10 15:11:17','0','0','0');
INSERT INTO `kasahesapalmaislems` VALUES ('2793','480','14','3','2025-03-11','12775','0',NULL,NULL,'0','1500','KKart?? G??nsonu','19','2025-03-11 14:10:25','2025-03-11 14:10:25','2','1500','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2794','480','14','3','2025-03-11','12775','166',NULL,NULL,'0','1500','39LU588 AKARYAKIT','0','2025-03-11 14:10:25','2025-03-11 14:10:25','3','1500','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2795','480','14','3','2025-03-11','12775','0',NULL,NULL,'0','350','YEMEK','0','2025-03-11 14:10:25','2025-03-11 14:10:25','0','350','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2796','481','14','6','2025-03-11','12776','0',NULL,NULL,'0','0','0','0','2025-03-11 14:31:07','2025-03-11 14:31:07','0','0','2');
INSERT INTO `kasahesapalmaislems` VALUES ('2797','482','14','6','2025-03-11','12777','0',NULL,NULL,'0','10109.64','KKart?? G??nsonu','7','2025-03-11 14:50:18','2025-03-11 14:50:18','2','10109.64','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2798','482','14','6','2025-03-11','12777','0',NULL,NULL,'0','70','KKart?? G??nsonu','3','2025-03-11 14:50:18','2025-03-11 14:50:18','2','70','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2799','482','14','6','2025-03-11','12777','0',NULL,NULL,'0','37.5','SELO','0','2025-03-11 14:50:18','2025-03-11 14:50:18','0','37.5','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2800','482','14','6','2025-03-11','12777','0',NULL,NULL,'0','721','TRAPZON','0','2025-03-11 14:50:18','2025-03-11 14:50:18','0','721','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2801','482','14','6','2025-03-11','12777','0',NULL,NULL,'0','37.5','SELO','0','2025-03-11 14:50:18','2025-03-11 14:50:18','0','37.5','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2802','482','14','6','2025-03-11','12777','0',NULL,NULL,'0','37.5','FATMA GECKO','0','2025-03-11 14:50:18','2025-03-11 14:50:18','0','37.5','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2803','482','14','6','2025-03-11','12777','0',NULL,NULL,'0','195.5','SELO','0','2025-03-11 14:50:18','2025-03-11 14:50:18','0','195.5','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2804','482','14','6','2025-03-11','12777','0',NULL,NULL,'0','175','??RFAN','0','2025-03-11 14:50:18','2025-03-11 14:50:18','0','175','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2805','482','14','6','2025-03-11','12777','0',NULL,NULL,'0','2400','EVRENSEK??Z EKEMK','0','2025-03-11 14:50:18','2025-03-11 14:50:18','0','2400','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2806','482','14','6','2025-03-11','12777','0',NULL,NULL,'0','1168.5','TRAPZON P??DE','0','2025-03-11 14:50:18','2025-03-11 14:50:18','0','1168.5','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2807','482','14','6','2025-03-11','12777','0',NULL,NULL,'0','1950','EVRENSEK??Z P??DE','0','2025-03-11 14:50:18','2025-03-11 14:50:18','0','1950','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2808','482','14','6','2025-03-11','12777','0',NULL,NULL,'0','3000','MAZOT NAKL??YE AB??D??N','0','2025-03-11 14:50:18','2025-03-11 14:50:18','0','3000','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2809','482','14','6','2025-03-11','12777','0',NULL,NULL,'0','105','S??BEL KAYNAK','0','2025-03-11 14:50:18','2025-03-11 14:50:18','0','105','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2810','482','14','6','2025-03-11','12777','0',NULL,NULL,'0','750','??ANKUR LOKUM ??DEME','0','2025-03-11 14:50:18','2025-03-11 14:50:18','0','750','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2811','482','14','6','2025-03-11','12777','0',NULL,NULL,'237.5','0','MAZOT','0','2025-03-11 14:50:18','2025-03-11 14:50:18','1','237.5','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2812','482','14','6','2025-03-11','12777','0',NULL,NULL,'517.5','0','OYUNCAK+P??DE','0','2025-03-11 14:50:18','2025-03-11 14:50:18','1','517.5','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2813','483','14','6','2025-03-11','12778','0',NULL,NULL,'0','0','0','0','2025-03-11 14:54:10','2025-03-11 14:54:10','0','0','0');
INSERT INTO `kasahesapalmaislems` VALUES ('2814','484','14','3','2025-03-12','12779','0',NULL,NULL,'0','4805.04','KKart?? G??nsonu','19','2025-03-12 13:57:39','2025-03-12 13:57:39','2','4805.04','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2815','484','14','3','2025-03-12','12779','0',NULL,NULL,'0','18685','KKart?? G??nsonu','19','2025-03-12 13:57:39','2025-03-12 13:57:39','2','18685','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2816','484','14','3','2025-03-12','12779','0',NULL,NULL,'0','350','yemek','0','2025-03-12 13:57:39','2025-03-12 13:57:39','0','350','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2817','485','14','2','2025-03-12','12780','0',NULL,NULL,'0','0','0','0','2025-03-12 14:40:58','2025-03-12 14:40:58','0','0','2');
INSERT INTO `kasahesapalmaislems` VALUES ('2818','486','14','6','2025-03-12','12781','0',NULL,NULL,'0','6738.91','KKart?? G??nsonu','0','2025-03-12 14:54:57','2025-03-12 14:54:57','2','6738.91','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2819','486','14','6','2025-03-12','12781','0',NULL,NULL,'0','695','KKart?? G??nsonu','3','2025-03-12 14:54:57','2025-03-12 14:54:57','2','695','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2820','486','14','6','2025-03-12','12781','0',NULL,NULL,'0','77','ersan ge??ko','0','2025-03-12 14:54:57','2025-03-12 14:54:57','0','77','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2821','486','14','6','2025-03-12','12781','0',NULL,NULL,'0','690','TRAPZON ekmek','0','2025-03-12 14:54:57','2025-03-12 14:54:57','0','690','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2822','486','14','6','2025-03-12','12781','0',NULL,NULL,'0','650','??i??e paras??','0','2025-03-12 14:54:57','2025-03-12 14:54:57','0','650','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2823','486','14','6','2025-03-12','12781','0',NULL,NULL,'0','1190','TRAPZON P??DE','0','2025-03-12 14:54:57','2025-03-12 14:54:57','0','1190','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2824','486','14','6','2025-03-12','12781','0',NULL,NULL,'0','2520','evrensekiz pide','0','2025-03-12 14:54:57','2025-03-12 14:54:57','0','2520','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2825','486','14','6','2025-03-12','12781','0',NULL,NULL,'0','667.85','rasim ??ak??r','0','2025-03-12 14:54:57','2025-03-12 14:54:57','0','667.85','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2826','486','14','6','2025-03-12','12781','0',NULL,NULL,'91','0','oyuncak','0','2025-03-12 14:54:57','2025-03-12 14:54:57','1','91','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2827','486','14','6','2025-03-12','12781','0',NULL,NULL,'7360','0','mazot','0','2025-03-12 14:54:57','2025-03-12 14:54:57','1','7360','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2828','487','14','6','2025-03-12','12782','0',NULL,NULL,'0','0','0','0','2025-03-12 15:00:38','2025-03-12 15:00:38','0','0','0');
INSERT INTO `kasahesapalmaislems` VALUES ('2829','488','14','3','2025-03-13','12783','0',NULL,NULL,'0','650','KKart?? G??nsonu','19','2025-03-13 13:31:04','2025-03-13 13:31:04','2','650','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2830','488','14','3','2025-03-13','12783','0',NULL,NULL,'0','3513','KKart?? G??nsonu','19','2025-03-13 13:31:04','2025-03-13 13:31:04','2','3513','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2831','488','14','3','2025-03-13','12783','0',NULL,NULL,'0','5873.49','KKart?? G??nsonu','19','2025-03-13 13:31:04','2025-03-13 13:31:04','2','5873.49','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2832','488','14','3','2025-03-13','12783','0',NULL,NULL,'0','350','yemek','0','2025-03-13 13:31:04','2025-03-13 13:31:04','0','350','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2853','493','14','6','2025-03-14','12788','0',NULL,NULL,'0','0','0','0','2025-03-14 14:29:40','2025-03-14 14:29:40','0','0','2');
INSERT INTO `kasahesapalmaislems` VALUES ('2868','495','14','6','2025-03-14','12790','0',NULL,NULL,'0','0','0','0','2025-03-14 14:55:15','2025-03-14 14:55:15','0','0','0');
INSERT INTO `kasahesapalmaislems` VALUES ('2869','492','14','3','2025-03-14','12787','0',NULL,NULL,'0','200','ARA?? TAM??R CEMBERE','0','2025-03-14 15:05:07','2025-03-14 15:05:07','0','200','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2870','492','14','3','2025-03-14','12787','0',NULL,NULL,'0','537.48','KKart?? G??nsonu','19','2025-03-14 15:05:07','2025-03-14 15:05:07','2','537.48','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2871','492','14','3','2025-03-14','12787','0',NULL,NULL,'0','810.2','KKart?? G??nsonu','19','2025-03-14 15:05:07','2025-03-14 15:05:07','2','810.2','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2872','492','14','3','2025-03-14','12787','0',NULL,NULL,'0','350','YEMEK','0','2025-03-14 15:05:07','2025-03-14 15:05:07','0','350','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2873','489','14','6','2025-03-13','12784','0',NULL,NULL,'0','0','0','0','2025-03-14 15:05:50','2025-03-14 15:05:50','0','0','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2874','494','14','6','2025-03-14','12789','0',NULL,NULL,'0','7564','KKart?? G??nsonu','3','2025-03-14 19:10:22','2025-03-14 19:10:22','2','7564','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2875','494','14','6','2025-03-14','12789','0',NULL,NULL,'0','8588.29','KKart?? G??nsonu','7','2025-03-14 19:10:22','2025-03-14 19:10:22','2','8588.29','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2876','494','14','6','2025-03-14','12789','0',NULL,NULL,'0','21','KAHVE','0','2025-03-14 19:10:22','2025-03-14 19:10:22','0','21','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2877','494','14','6','2025-03-14','12789','0',NULL,NULL,'0','30','ELD??VEN','0','2025-03-14 19:10:22','2025-03-14 19:10:22','0','30','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2878','494','14','6','2025-03-14','12789','0',NULL,NULL,'0','927','TRAPZON','0','2025-03-14 19:10:22','2025-03-14 19:10:22','0','927','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2879','494','14','6','2025-03-14','12789','0',NULL,NULL,'0','1747.3','DAMAK K??FTE','0','2025-03-14 19:10:22','2025-03-14 19:10:22','0','1747.3','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2880','494','14','6','2025-03-14','12789','0',NULL,NULL,'0','388.5','TARLA SU','0','2025-03-14 19:10:22','2025-03-14 19:10:22','0','388.5','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2881','494','14','6','2025-03-14','12789','0',NULL,NULL,'0','42.5','TARLA SU','0','2025-03-14 19:10:22','2025-03-14 19:10:22','0','42.5','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2882','494','14','6','2025-03-14','12789','0',NULL,NULL,'0','15','KAHVE','0','2025-03-14 19:10:22','2025-03-14 19:10:22','0','15','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2883','494','14','6','2025-03-14','12789','0',NULL,NULL,'0','969','TRAPZON','0','2025-03-14 19:10:22','2025-03-14 19:10:22','0','969','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2884','494','14','6','2025-03-14','12789','0',NULL,NULL,'0','2625','EVRENSEK??Z EKMEK','0','2025-03-14 19:10:22','2025-03-14 19:10:22','0','2625','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2885','494','14','6','2025-03-14','12789','0',NULL,NULL,'0','31.5','YA??AR DURMAZ - E????','0','2025-03-14 19:10:22','2025-03-14 19:10:22','0','31.5','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2886','494','14','6','2025-03-14','12789','0',NULL,NULL,'107','0','OYUNCAK','0','2025-03-14 19:10:22','2025-03-14 19:10:22','1','107','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2887','494','14','6','2025-03-14','12789','0',NULL,NULL,'8278','0','MAZOT','0','2025-03-14 19:10:22','2025-03-14 19:10:22','1','8278','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2888','491','14','6','2025-03-13','12786','0',NULL,NULL,'0','0','0','0','2025-03-14 19:51:41','2025-03-14 19:51:41','0','0','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2889','490','14','6','2025-03-13','12785','0',NULL,NULL,'0','3023','KKart?? G??nsonu','3','2025-03-14 19:52:33','2025-03-14 19:52:33','2','3023','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2890','490','14','6','2025-03-13','12785','0',NULL,NULL,'0','8217.45','KKart?? G??nsonu','0','2025-03-14 19:52:33','2025-03-14 19:52:33','2','8217.45','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2891','490','14','6','2025-03-13','12785','0',NULL,NULL,'0','30','selo','0','2025-03-14 19:52:33','2025-03-14 19:52:33','0','30','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2892','490','14','6','2025-03-13','12785','0',NULL,NULL,'0','79','erkan ay??r','0','2025-03-14 19:52:33','2025-03-14 19:52:33','0','79','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2893','490','14','6','2025-03-13','12785','0',NULL,NULL,'0','474','TRAPZON P??DE','0','2025-03-14 19:52:33','2025-03-14 19:52:33','0','474','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2894','490','14','6','2025-03-13','12785','0',NULL,NULL,'0','80','FATMA GECKO','0','2025-03-14 19:52:33','2025-03-14 19:52:33','0','80','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2895','490','14','6','2025-03-13','12785','0',NULL,NULL,'0','410','tezcanlar yo??urt','0','2025-03-14 19:52:33','2025-03-14 19:52:33','0','410','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2896','490','14','6','2025-03-13','12785','0',NULL,NULL,'0','17.5','kahve','0','2025-03-14 19:52:33','2025-03-14 19:52:33','0','17.5','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2897','490','14','6','2025-03-13','12785','0',NULL,NULL,'0','940.5','TRAPZON','0','2025-03-14 19:52:33','2025-03-14 19:52:33','0','940.5','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2898','490','14','6','2025-03-13','12785','0',NULL,NULL,'0','2310','EVRENSEK??Z P??DE','0','2025-03-14 19:52:33','2025-03-14 19:52:33','0','2310','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2899','490','14','6','2025-03-13','12785','166',NULL,NULL,'0','315','SELO IBAN','0','2025-03-14 19:52:33','2025-03-14 19:52:33','3','315','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2900','490','14','6','2025-03-13','12785','0',NULL,NULL,'0','90','??R??N ??ADE','0','2025-03-14 19:52:33','2025-03-14 19:52:33','0','90','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2901','490','14','6','2025-03-13','12785','0',NULL,NULL,'103','0','OYUNCAK','0','2025-03-14 19:52:33','2025-03-14 19:52:33','1','103','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2902','490','14','6','2025-03-13','12785','0',NULL,NULL,'7495','0','MAZOT','0','2025-03-14 19:52:33','2025-03-14 19:52:33','1','7495','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2903','496','14','3','2025-03-15','12791','0',NULL,NULL,'0','2500','KKart?? G??nsonu','19','2025-03-15 14:15:50','2025-03-15 14:15:50','2','2500','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2904','496','14','3','2025-03-15','12791','0',NULL,NULL,'0','175','yemek','0','2025-03-15 14:15:50','2025-03-15 14:15:50','0','175','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2905','497','14','2','2025-03-15','12792','0',NULL,NULL,'0','0','0','0','2025-03-15 15:08:57','2025-03-15 15:08:57','0','0','2');
INSERT INTO `kasahesapalmaislems` VALUES ('2921','499','14','6','2025-03-15','12794','0',NULL,NULL,'0','0','0','0','2025-03-15 15:27:02','2025-03-15 15:27:02','0','0','0');
INSERT INTO `kasahesapalmaislems` VALUES ('2937','498','14','6','2025-03-15','12793','0',NULL,NULL,'0','14445','KKart?? G??nsonu','0','2025-03-15 20:09:36','2025-03-15 20:09:36','2','14445','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2938','498','14','6','2025-03-15','12793','0',NULL,NULL,'0','27','selo','0','2025-03-15 20:09:36','2025-03-15 20:09:36','0','27','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2939','498','14','6','2025-03-15','12793','0',NULL,NULL,'0','753','selo tarla yemek','0','2025-03-15 20:09:36','2025-03-15 20:09:36','0','753','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2940','498','14','6','2025-03-15','12793','0',NULL,NULL,'0','175','irfan','0','2025-03-15 20:09:36','2025-03-15 20:09:36','0','175','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2941','498','14','6','2025-03-15','12793','0',NULL,NULL,'0','7.5','kemal maldan','0','2025-03-15 20:09:36','2025-03-15 20:09:36','0','7.5','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2942','498','14','6','2025-03-15','12793','0',NULL,NULL,'0','100','erkan onba????','0','2025-03-15 20:09:36','2025-03-15 20:09:36','0','100','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2943','498','14','6','2025-03-15','12793','0',NULL,NULL,'0','62.5','hasan topcu','0','2025-03-15 20:09:36','2025-03-15 20:09:36','0','62.5','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2944','498','14','6','2025-03-15','12793','0',NULL,NULL,'0','2715','EVRENSEK??Z EKMEK','0','2025-03-15 20:09:36','2025-03-15 20:09:36','0','2715','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2945','498','14','6','2025-03-15','12793','0',NULL,NULL,'0','969','TRAPZON','0','2025-03-15 20:09:36','2025-03-15 20:09:36','0','969','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2946','498','14','6','2025-03-15','12793','0',NULL,NULL,'0','120','SELO AL?? KE????????','0','2025-03-15 20:09:36','2025-03-15 20:09:36','0','120','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2947','498','14','6','2025-03-15','12793','0',NULL,NULL,'0','1453','TRAPZON','0','2025-03-15 20:09:36','2025-03-15 20:09:36','0','1453','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2948','498','14','6','2025-03-15','12793','0',NULL,NULL,'0','53','HASAN','0','2025-03-15 20:09:36','2025-03-15 20:09:36','0','53','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2949','498','14','6','2025-03-15','12793','0',NULL,NULL,'64','0','OYUNCAK+BYT EKMEK','0','2025-03-15 20:09:36','2025-03-15 20:09:36','1','64','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2950','498','14','6','2025-03-15','12793','0',NULL,NULL,'0','11215.36','KKart?? G??nsonu','3','2025-03-15 20:09:36','2025-03-15 20:09:36','2','11215.36','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2951','498','14','6','2025-03-15','12793','0',NULL,NULL,'15701.35','0','MAZOT SATI??I','0','2025-03-15 20:09:36','2025-03-15 20:09:36','1','15701.35','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2953','501','14','2','2025-03-17','12796','0',NULL,NULL,'0','0','0','0','2025-03-17 14:41:18','2025-03-17 14:41:18','0','0','2');
INSERT INTO `kasahesapalmaislems` VALUES ('2966','503','14','2','2025-03-17','12798','0',NULL,NULL,'0','0','0','0','2025-03-17 14:59:31','2025-03-17 14:59:31','0','0','0');
INSERT INTO `kasahesapalmaislems` VALUES ('2967','502','14','2','2025-03-17','12797','0',NULL,NULL,'0','915','KKart?? G??nsonu','3','2025-03-17 15:02:44','2025-03-17 15:02:44','2','915','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2968','502','14','2','2025-03-17','12797','0',NULL,NULL,'0','6817.57','KKart?? G??nsonu','7','2025-03-17 15:02:44','2025-03-17 15:02:44','2','6817.57','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2969','502','14','2','2025-03-17','12797','0',NULL,NULL,'0','1120','TRAPZON','0','2025-03-17 15:02:44','2025-03-17 15:02:44','0','1120','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2970','502','14','2','2025-03-17','12797','0',NULL,NULL,'0','90','fatma gecko','0','2025-03-17 15:02:44','2025-03-17 15:02:44','0','90','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2971','502','14','2','2025-03-17','12797','0',NULL,NULL,'0','360','pide','0','2025-03-17 15:02:44','2025-03-17 15:02:44','0','360','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2972','502','14','2','2025-03-17','12797','0',NULL,NULL,'0','2400','evrensekiz ekm','0','2025-03-17 15:02:44','2025-03-17 15:02:44','0','2400','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2973','502','14','2','2025-03-17','12797','0',NULL,NULL,'0','1140','TRAPZON P??DE','0','2025-03-17 15:02:44','2025-03-17 15:02:44','0','1140','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2974','502','14','2','2025-03-17','12797','0',NULL,NULL,'0','193','ahmet k??seo??lu','0','2025-03-17 15:02:44','2025-03-17 15:02:44','0','193','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2975','502','14','2','2025-03-17','12797','0',NULL,NULL,'390','0','sar??','0','2025-03-17 15:02:44','2025-03-17 15:02:44','1','390','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2976','502','14','2','2025-03-17','12797','0',NULL,NULL,'245','0','ERCAN CAR','0','2025-03-17 15:02:44','2025-03-17 15:02:44','1','245','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2977','502','14','2','2025-03-17','12797','0',NULL,NULL,'150','0','OYUNCAK','0','2025-03-17 15:02:44','2025-03-17 15:02:44','1','150','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2978','502','14','2','2025-03-17','12797','0',NULL,NULL,'400','0','MAZOT','0','2025-03-17 15:02:44','2025-03-17 15:02:44','1','400','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2979','500','14','3','2025-03-17','12795','0',NULL,NULL,'0','350','YEMEK','0','2025-03-17 15:03:51','2025-03-17 15:03:51','0','350','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2980','504','14','3','2025-03-18','12799','0',NULL,NULL,'0','175','yemek','0','2025-03-18 14:04:21','2025-03-18 14:04:21','0','175','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2981','504','14','3','2025-03-18','12799','0',NULL,NULL,'0','1500','KKart?? G??nsonu','11','2025-03-18 14:04:21','2025-03-18 14:04:21','2','1500','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2983','506','14','2','2025-03-18','12801','0',NULL,NULL,'0','195','KKart?? G??nsonu','3','2025-03-18 15:10:15','2025-03-18 15:10:15','2','195','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2984','506','14','2','2025-03-18','12801','0',NULL,NULL,'0','7671.16','KKart?? G??nsonu','7','2025-03-18 15:10:15','2025-03-18 15:10:15','2','7671.16','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2985','506','14','2','2025-03-18','12801','0',NULL,NULL,'0','915','TRAPZON','0','2025-03-18 15:10:15','2025-03-18 15:10:15','0','915','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2986','506','14','2','2025-03-18','12801','0',NULL,NULL,'0','175','??RFAN YEMEK','0','2025-03-18 15:10:15','2025-03-18 15:10:15','0','175','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2987','506','14','2','2025-03-18','12801','0',NULL,NULL,'0','720','BALABAN BOZA','0','2025-03-18 15:10:15','2025-03-18 15:10:15','0','720','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2988','506','14','2','2025-03-18','12801','0',NULL,NULL,'0','150','FATMA GECKO','0','2025-03-18 15:10:15','2025-03-18 15:10:15','0','150','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2989','506','14','2','2025-03-18','12801','0',NULL,NULL,'0','96.5','RECEP B??L??R','0','2025-03-18 15:10:15','2025-03-18 15:10:15','0','96.5','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2990','506','14','2','2025-03-18','12801','0',NULL,NULL,'0','885','P??DE TRAPZON','0','2025-03-18 15:10:15','2025-03-18 15:10:15','0','885','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2991','506','14','2','2025-03-18','12801','0',NULL,NULL,'0','360','P??DE','0','2025-03-18 15:10:15','2025-03-18 15:10:15','0','360','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2992','506','14','2','2025-03-18','12801','0',NULL,NULL,'0','2040','EVRENSEK??Z EKMEK','0','2025-03-18 15:10:15','2025-03-18 15:10:15','0','2040','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2993','506','14','2','2025-03-18','12801','0',NULL,NULL,'0','175','DOLMA','0','2025-03-18 15:10:15','2025-03-18 15:10:15','0','175','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2994','506','14','2','2025-03-18','12801','0',NULL,NULL,'0','26','??A??ATAY G??RB??Z','0','2025-03-18 15:10:15','2025-03-18 15:10:15','0','26','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2995','506','14','2','2025-03-18','12801','0',NULL,NULL,'1600','0','MAZOT','0','2025-03-18 15:10:15','2025-03-18 15:10:15','1','1600','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2996','507','14','2','2025-03-18','12802','0',NULL,NULL,'0','0','0','0','2025-03-18 15:14:21','2025-03-18 15:14:21','0','0','0');
INSERT INTO `kasahesapalmaislems` VALUES ('2997','505','14','2','2025-03-18','12800','0',NULL,NULL,'0','0','0','0','2025-03-18 19:47:56','2025-03-18 19:47:56','0','0','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2998','508','14','3','2025-03-19','12803','0',NULL,NULL,'0','4810.5','KKart?? G??nsonu','19','2025-03-20 11:32:06','2025-03-20 11:32:06','2','4810.5','1');
INSERT INTO `kasahesapalmaislems` VALUES ('2999','508','14','3','2025-03-19','12803','0',NULL,NULL,'0','350','yemek','0','2025-03-20 11:32:06','2025-03-20 11:32:06','0','350','1');
INSERT INTO `kasahesapalmaislems` VALUES ('3000','509','14','2','2025-03-20','12804','0',NULL,NULL,'0','1658.68','KKart?? G??nsonu','19','2025-03-20 14:11:08','2025-03-20 14:11:08','2','1658.68','1');
INSERT INTO `kasahesapalmaislems` VALUES ('3001','509','14','2','2025-03-20','12804','0',NULL,NULL,'0','4950.01','KKart?? G??nsonu','19','2025-03-20 14:11:08','2025-03-20 14:11:08','2','4950.01','1');
INSERT INTO `kasahesapalmaislems` VALUES ('3002','509','14','2','2025-03-20','12804','0',NULL,NULL,'0','350','yemek','0','2025-03-20 14:11:08','2025-03-20 14:11:08','0','350','1');
INSERT INTO `kasahesapalmaislems` VALUES ('3003','509','14','2','2025-03-20','12804','0',NULL,NULL,'0','2000','KKart?? G??nsonu','19','2025-03-20 14:11:08','2025-03-20 14:11:08','2','2000','1');
INSERT INTO `kasahesapalmaislems` VALUES ('3004','510','14','2','2025-03-20','12805','0',NULL,NULL,'0','0','0','0','2025-03-20 15:01:33','2025-03-20 15:01:33','0','0','2');
INSERT INTO `kasahesapalmaislems` VALUES ('3005','511','14','2','2025-03-20','12806','0',NULL,NULL,'0','9852','KKart?? G??nsonu','7','2025-03-20 15:18:21','2025-03-20 15:18:21','2','9852','1');
INSERT INTO `kasahesapalmaislems` VALUES ('3006','511','14','2','2025-03-20','12806','0',NULL,NULL,'0','1090','TRAPZON','0','2025-03-20 15:18:21','2025-03-20 15:18:21','0','1090','1');
INSERT INTO `kasahesapalmaislems` VALUES ('3007','511','14','2','2025-03-20','12806','0',NULL,NULL,'0','76','H??SEY??N HASKO','0','2025-03-20 15:18:21','2025-03-20 15:18:21','0','76','1');
INSERT INTO `kasahesapalmaislems` VALUES ('3008','511','14','2','2025-03-20','12806','0',NULL,NULL,'0','800','P??DE TRAPZON','0','2025-03-20 15:18:21','2025-03-20 15:18:21','0','800','1');
INSERT INTO `kasahesapalmaislems` VALUES ('3009','511','14','2','2025-03-20','12806','0',NULL,NULL,'0','2490','EVRENSEK??Z EKMEK','0','2025-03-20 15:18:21','2025-03-20 15:18:21','0','2490','1');
INSERT INTO `kasahesapalmaislems` VALUES ('3010','511','14','2','2025-03-20','12806','0',NULL,NULL,'0','450','P??DE','0','2025-03-20 15:18:21','2025-03-20 15:18:21','0','450','1');
INSERT INTO `kasahesapalmaislems` VALUES ('3011','511','14','2','2025-03-20','12806','0',NULL,NULL,'1100','0','MAZOT','0','2025-03-20 15:18:21','2025-03-20 15:18:21','1','1100','1');
INSERT INTO `kasahesapalmaislems` VALUES ('3012','511','14','2','2025-03-20','12806','0',NULL,NULL,'185','0','OYUNCAK','0','2025-03-20 15:18:21','2025-03-20 15:18:21','1','185','1');
INSERT INTO `kasahesapalmaislems` VALUES ('3013','511','14','2','2025-03-20','12806','0',NULL,NULL,'0','2502.3','KKart?? G??nsonu','3','2025-03-20 15:18:21','2025-03-20 15:18:21','2','2502.3','1');
INSERT INTO `kasahesapalmaislems` VALUES ('3014','512','14','2','2025-03-20','12807','0',NULL,NULL,'0','0','0','0','2025-03-20 15:23:00','2025-03-20 15:23:00','0','0','0');
INSERT INTO `kasahesapalmaislems` VALUES ('3015','513','14','3','2025-03-21','12808','0',NULL,NULL,'0','841.96','KKart?? G??nsonu','19','2025-03-21 14:29:51','2025-03-21 14:29:51','2','841.96','1');
INSERT INTO `kasahesapalmaislems` VALUES ('3016','513','14','3','2025-03-21','12808','0',NULL,NULL,'0','350','yemek','0','2025-03-21 14:29:51','2025-03-21 14:29:51','0','350','1');
INSERT INTO `kasahesapalmaislems` VALUES ('3017','514','14','2','2025-03-21','12809','0',NULL,NULL,'0','0','0','0','2025-03-21 14:41:32','2025-03-21 14:41:32','0','0','2');
INSERT INTO `kasahesapalmaislems` VALUES ('3031','516','14','2','2025-03-21','12811','0',NULL,NULL,'0','0','0','0','2025-03-21 14:53:43','2025-03-21 14:53:43','0','0','0');
INSERT INTO `kasahesapalmaislems` VALUES ('3032','515','14','2','2025-03-21','12810','0',NULL,NULL,'0','13181.38','KKart?? G??nsonu','7','2025-03-21 15:01:18','2025-03-21 15:01:18','2','13181.38','1');
INSERT INTO `kasahesapalmaislems` VALUES ('3033','515','14','2','2025-03-21','12810','0',NULL,NULL,'0','2602','KKart?? G??nsonu','3','2025-03-21 15:01:18','2025-03-21 15:01:18','2','2602','1');
INSERT INTO `kasahesapalmaislems` VALUES ('3034','515','14','2','2025-03-21','12810','0',NULL,NULL,'0','587','TRAPZON','0','2025-03-21 15:01:18','2025-03-21 15:01:18','0','587','1');
INSERT INTO `kasahesapalmaislems` VALUES ('3035','515','14','2','2025-03-21','12810','0',NULL,NULL,'0','75','erkan ay??r','0','2025-03-21 15:01:18','2025-03-21 15:01:18','0','75','1');
INSERT INTO `kasahesapalmaislems` VALUES ('3036','515','14','2','2025-03-21','12810','0',NULL,NULL,'0','50','ERSAN  gecko','0','2025-03-21 15:01:18','2025-03-21 15:01:18','0','50','1');
INSERT INTO `kasahesapalmaislems` VALUES ('3037','515','14','2','2025-03-21','12810','0',NULL,NULL,'0','1130','DAMAK K??FTE','0','2025-03-21 15:01:18','2025-03-21 15:01:18','0','1130','1');
INSERT INTO `kasahesapalmaislems` VALUES ('3038','515','14','2','2025-03-21','12810','0',NULL,NULL,'0','1025','TRAPZON P??DE','0','2025-03-21 15:01:18','2025-03-21 15:01:18','0','1025','1');
INSERT INTO `kasahesapalmaislems` VALUES ('3039','515','14','2','2025-03-21','12810','0',NULL,NULL,'0','450','MARKET YEMEK TEM??ZL??K','0','2025-03-21 15:01:18','2025-03-21 15:01:18','0','450','1');
INSERT INTO `kasahesapalmaislems` VALUES ('3040','515','14','2','2025-03-21','12810','0',NULL,NULL,'0','2040','EVRENSEK??Z EKMEK','0','2025-03-21 15:01:18','2025-03-21 15:01:18','0','2040','1');
INSERT INTO `kasahesapalmaislems` VALUES ('3041','515','14','2','2025-03-21','12810','0',NULL,NULL,'0','450','P??DE EVRENSEK??Z','0','2025-03-21 15:01:18','2025-03-21 15:01:18','0','450','1');
INSERT INTO `kasahesapalmaislems` VALUES ('3042','515','14','2','2025-03-21','12810','0',NULL,NULL,'0','222','H??SEY??N HASKO','0','2025-03-21 15:01:18','2025-03-21 15:01:18','0','222','1');
INSERT INTO `kasahesapalmaislems` VALUES ('3043','515','14','2','2025-03-21','12810','0',NULL,NULL,'1250','0','MAZOT','0','2025-03-21 15:01:18','2025-03-21 15:01:18','1','1250','1');
INSERT INTO `kasahesapalmaislems` VALUES ('3044','515','14','2','2025-03-21','12810','0',NULL,NULL,'100','0','OYUNCAK','0','2025-03-21 15:01:18','2025-03-21 15:01:18','1','100','1');

DROP TABLE IF EXISTS `kasahesapalmas`;
CREATE TABLE `kasahesapalmas` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `islemaciklama` int NOT NULL COMMENT '0 ise Sabah Kasa A????l???? Nakit , 1 ise Ak??am Kasa Hesap Alma , 2 ise Ak??am Kasa A????l???? Nakit ',
  `faturaTipi` int NOT NULL DEFAULT '0' COMMENT '0 ise satisFaturas?? , 1 ise alisFaturas?? , 3 ise alisiadeFaturas?? , 4 ise satisiadeFaturas??',
  `faturaNo` varchar(255) NOT NULL,
  `kullaniciId` int DEFAULT NULL,
  `satistemsilciId` int NOT NULL,
  `faturaTarih` date NOT NULL,
  `borc` double(9,2) DEFAULT '0.00',
  `alacak` double(9,2) DEFAULT '0.00',
  `order_date` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `kasaId` int DEFAULT NULL,
  `nakit_200` double(9,2) NOT NULL,
  `nakit_100` double(9,2) NOT NULL,
  `nakit_50` double(9,2) NOT NULL,
  `nakit_20` double(9,2) NOT NULL,
  `nakit_10` double(9,2) NOT NULL,
  `nakit_5` double(9,2) NOT NULL,
  `nakit_demir` double(9,2) NOT NULL,
  `g??nsonu_satisi` double(9,2) DEFAULT NULL,
  `kasa_devir_para` double(9,2) DEFAULT NULL,
  `nakit_adet_200` double NOT NULL,
  `nakit_adet_100` double NOT NULL,
  `nakit_adet_50` double NOT NULL,
  `nakit_adet_20` double NOT NULL,
  `nakit_adet_10` double NOT NULL,
  `nakit_adet_5` double NOT NULL,
  `nakit_adet_demir` double NOT NULL,
  `nakit_200_toplam` double(9,2) NOT NULL,
  `nakit_100_toplam` double(9,2) NOT NULL,
  `nakit_50_toplam` double(9,2) NOT NULL,
  `nakit_20_toplam` double(9,2) NOT NULL,
  `nakit_10_toplam` double(9,2) NOT NULL,
  `nakit_5_toplam` double(9,2) NOT NULL,
  `nakit_demir_toplam` double(9,2) NOT NULL,
  `nakitgeneltoplam` double(9,2) NOT NULL,
  `aciklama` text,
  `borcgeneltoplam` double(9,2) NOT NULL,
  `alacakgeneltoplam` double(9,2) NOT NULL,
  `masrafnakitToplam` double(9,2) NOT NULL,
  `artisatisnakitToplam` double(9,2) NOT NULL,
  `islemTipi` int NOT NULL DEFAULT '0',
  `kasanakitdevirpara` double(9,2) NOT NULL,
  `kasadurumacikkapali` double(9,2) NOT NULL,
  `kasagunsonusatisi` double(9,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=517 DEFAULT CHARSET=utf8mb3;


DROP TABLE IF EXISTS `kasalars`;
CREATE TABLE `kasalars` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `kasakodu` varchar(20) NOT NULL,
  `kasaadi` varchar(255) NOT NULL,
  `aciklama` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;

INSERT INTO `kasalars` VALUES ('1','01','Merkez kasa',NULL,'2024-08-21 20:23:58','2024-08-21 20:24:01');
INSERT INTO `kasalars` VALUES ('2','02','??ube kasa',NULL,'2024-08-21 20:24:35','2024-08-21 20:24:37');

DROP TABLE IF EXISTS `loggers`;
CREATE TABLE `loggers` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `text` text NOT NULL,
  `islem` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb3;


DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `migrations` VALUES ('1','2014_10_12_000000_create_users_table','1');
INSERT INTO `migrations` VALUES ('2','2014_10_12_100000_create_password_reset_tokens_table','1');
INSERT INTO `migrations` VALUES ('3','2017_08_11_073824_create_menus_wp_table','1');
INSERT INTO `migrations` VALUES ('4','2017_08_11_074006_create_menu_items_wp_table','1');
INSERT INTO `migrations` VALUES ('5','2019_08_19_000000_create_failed_jobs_table','1');
INSERT INTO `migrations` VALUES ('6','2019_12_14_000001_create_personal_access_tokens_table','1');
INSERT INTO `migrations` VALUES ('7','2023_07_13_062327_create_sliders_table','1');
INSERT INTO `migrations` VALUES ('8','2023_07_16_034121_create_why_choose_us_table','1');
INSERT INTO `migrations` VALUES ('9','2023_07_16_034352_create_section_titles_table','1');
INSERT INTO `migrations` VALUES ('10','2023_08_01_051504_create_categories_table','1');
INSERT INTO `migrations` VALUES ('11','2023_08_01_102352_create_products_table','1');
INSERT INTO `migrations` VALUES ('12','2023_08_03_035416_create_product_galleries_table','1');
INSERT INTO `migrations` VALUES ('13','2023_08_03_062618_create_product_sizes_table','1');
INSERT INTO `migrations` VALUES ('14','2023_08_03_091617_create_product_options_table','1');
INSERT INTO `migrations` VALUES ('15','2023_08_05_072633_create_settings_table','1');
INSERT INTO `migrations` VALUES ('16','2023_08_12_062151_create_coupons_table','1');
INSERT INTO `migrations` VALUES ('17','2023_08_14_042130_create_delivery_areas_table','1');
INSERT INTO `migrations` VALUES ('18','2023_08_14_071832_create_addresses_table','1');
INSERT INTO `migrations` VALUES ('19','2023_08_17_072342_create_orders_table','1');
INSERT INTO `migrations` VALUES ('20','2023_08_17_072407_create_order_items_table','1');
INSERT INTO `migrations` VALUES ('21','2023_08_19_035121_create_payment_gateway_settings_table','1');
INSERT INTO `migrations` VALUES ('22','2023_08_20_065829_create_jobs_table','1');
INSERT INTO `migrations` VALUES ('23','2023_08_20_093708_add_address_id_table','1');
INSERT INTO `migrations` VALUES ('24','2023_08_27_091240_create_order_placed_notifications_table','1');
INSERT INTO `migrations` VALUES ('25','2023_08_28_072704_create_chats_table','1');
INSERT INTO `migrations` VALUES ('26','2023_09_02_042454_create_daily_offers_table','1');
INSERT INTO `migrations` VALUES ('27','2023_09_02_112836_create_banner_sliders_table','1');
INSERT INTO `migrations` VALUES ('28','2023_09_03_064440_create_chefs_table','1');
INSERT INTO `migrations` VALUES ('29','2023_09_04_045906_create_app_download_sections_table','1');
INSERT INTO `migrations` VALUES ('30','2023_09_04_095634_create_testimonials_table','1');
INSERT INTO `migrations` VALUES ('31','2023_09_05_061255_create_counters_table','1');
INSERT INTO `migrations` VALUES ('32','2023_09_05_101935_create_blog_categories_table','1');
INSERT INTO `migrations` VALUES ('33','2023_09_06_033753_create_blogs_table','1');
INSERT INTO `migrations` VALUES ('34','2023_09_07_050056_create_blog_comments_table','1');
INSERT INTO `migrations` VALUES ('35','2023_09_09_045531_create_abouts_table','1');
INSERT INTO `migrations` VALUES ('36','2023_09_09_101329_create_privacy_policies_table','1');
INSERT INTO `migrations` VALUES ('37','2023_09_09_111400_create_trams_and_conditions_table','1');
INSERT INTO `migrations` VALUES ('38','2023_09_10_032823_create_contacts_table','1');
INSERT INTO `migrations` VALUES ('39','2023_09_11_040528_create_reservation_times_table','1');
INSERT INTO `migrations` VALUES ('40','2023_09_11_073206_create_reservations_table','1');
INSERT INTO `migrations` VALUES ('41','2023_09_12_042307_create_subscribers_table','1');
INSERT INTO `migrations` VALUES ('42','2023_09_12_064908_create_social_links_table','1');
INSERT INTO `migrations` VALUES ('43','2023_09_12_104836_create_footer_infos_table','1');
INSERT INTO `migrations` VALUES ('44','2023_09_14_035403_create_custom_page_builders_table','1');
INSERT INTO `migrations` VALUES ('45','2023_09_14_071015_create_product_ratings_table','1');
INSERT INTO `migrations` VALUES ('46','2023_09_16_111107_create_wishlists_table','1');
INSERT INTO `migrations` VALUES ('47','2014_10_12_100000_create_password_resets_table','2');
INSERT INTO `migrations` VALUES ('48','2025_09_29_000001_create_restaurant_tables_table','2');
INSERT INTO `migrations` VALUES ('49','2025_09_29_000002_add_table_and_waiter_to_orders_table','2');
INSERT INTO `migrations` VALUES ('50','2025_09_29_000003_alter_users_add_waiter_role','2');
INSERT INTO `migrations` VALUES ('51','2025_10_06_182004_make_product_option_nullable_in_order_items_table','3');
INSERT INTO `migrations` VALUES ('52','2025_10_12_083215_update_products_menu_item_link','4');
INSERT INTO `migrations` VALUES ('53','2025_10_13_105843_add_hierarchical_structure_to_delivery_areas_table','5');
INSERT INTO `migrations` VALUES ('54','2026_08_11_000001_create_restaurants_table','6');
INSERT INTO `migrations` VALUES ('55','2026_08_11_000002_add_restaurant_id_to_products_table','7');
INSERT INTO `migrations` VALUES ('56','2026_08_11_000003_create_couriers_and_order_courier_fields','8');
INSERT INTO `migrations` VALUES ('57','2026_08_11_000004_create_restaurant_applications_table','9');
INSERT INTO `migrations` VALUES ('58','2026_08_11_000005_marketplace_phase_c_features','10');
INSERT INTO `migrations` VALUES ('59','2026_08_12_020000_marketplace_platform_upgrade','11');
INSERT INTO `migrations` VALUES ('60','2026_08_14_205200_add_delivery_radius_km_to_restaurants_table','12');
INSERT INTO `migrations` VALUES ('61','2026_08_14_212600_add_full_address_and_street_type_to_delivery_areas','13');
INSERT INTO `migrations` VALUES ('62','2026_08_16_011200_create_access_logs_table','14');
INSERT INTO `migrations` VALUES ('63','2026_08_16_012200_add_company_to_couriers_table','15');
INSERT INTO `migrations` VALUES ('64','2026_08_16_014600_add_restaurant_id_to_restaurant_tables','16');
INSERT INTO `migrations` VALUES ('65','2026_08_16_015100_add_restaurant_id_to_users_table','17');
INSERT INTO `migrations` VALUES ('66','2026_08_19_215000_create_vat_rates_table','18');

DROP TABLE IF EXISTS `musterigrups`;
CREATE TABLE `musterigrups` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `musterigrupkodu` varchar(20) NOT NULL,
  `musterigrupadi` varchar(255) NOT NULL,
  `tarih` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3;

INSERT INTO `musterigrups` VALUES ('1','10','AKARYAKIT','2021-06-18 11:47:27','2021-06-18 11:47:27','2021-06-18 11:47:27');
INSERT INTO `musterigrups` VALUES ('2','20','MARKET M????TER??','2021-06-18 11:47:27','2021-06-18 12:51:02','2021-06-18 12:51:02');
INSERT INTO `musterigrups` VALUES ('3','30','YEMEKHANE FABR??KA','2021-06-18 11:47:27','2022-01-02 10:08:57','2022-01-02 10:08:57');
INSERT INTO `musterigrups` VALUES ('4','56','tilki elma leydixxc','2024-08-23 20:04:18',NULL,'2024-10-01 15:17:14');

DROP TABLE IF EXISTS `musterilers`;
CREATE TABLE `musterilers` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `musteriTipi` int NOT NULL DEFAULT '0',
  `musteridurum` int NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `musterikodu` varchar(255) DEFAULT NULL,
  `ad` varchar(255) DEFAULT NULL,
  `soyad` varchar(255) DEFAULT NULL,
  `dogumTarih` date DEFAULT NULL,
  `tc` varchar(255) DEFAULT NULL,
  `firmaAdi` varchar(255) DEFAULT NULL,
  `vergiNumarasi` varchar(255) DEFAULT NULL,
  `vergiDairesi` varchar(255) DEFAULT NULL,
  `adres` varchar(255) DEFAULT NULL,
  `telefon` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `musterigrupId` int NOT NULL,
  `satistemsilciId` int NOT NULL,
  `asokak` varchar(255) DEFAULT NULL,
  `abina` varchar(255) DEFAULT NULL,
  `abinano` varchar(255) DEFAULT NULL,
  `ail` varchar(255) DEFAULT NULL,
  `ailce` varchar(255) DEFAULT NULL,
  `aulke` varchar(255) DEFAULT NULL,
  `aweb` varchar(255) DEFAULT NULL,
  `amersis` varchar(255) DEFAULT NULL,
  `aposta` varchar(255) DEFAULT NULL,
  `efaturamusterisi` int NOT NULL DEFAULT '0' COMMENT '0 ise Efatura, 1 ise Earsiv',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=169 DEFAULT CHARSET=utf8mb3;


DROP TABLE IF EXISTS `order_items`;
CREATE TABLE `order_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint unsigned NOT NULL,
  `product_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `unit_price` double NOT NULL,
  `qty` int NOT NULL,
  `product_size` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `product_option` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `order_items_chk_1` CHECK (json_valid(`product_size`)),
  CONSTRAINT `order_items_chk_2` CHECK (json_valid(`product_option`))
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `order_items` VALUES ('1','115','Karışık Pizza','16197','300','2','[]','[]','2025-10-16 22:33:34','2025-10-16 22:33:34');
INSERT INTO `order_items` VALUES ('2','116','Bolonez (Bolognese) Soslu Spagetti','16199','100','3',NULL,NULL,'2025-11-14 20:34:19','2025-11-14 20:34:19');
INSERT INTO `order_items` VALUES ('3','116','Coca Cola Kutu 330 Ml','16208','50','2',NULL,NULL,'2025-11-14 20:34:19','2025-11-14 20:34:19');
INSERT INTO `order_items` VALUES ('4','116','Coca-Cola Cam Şişe 250 ml','16207','30','1',NULL,NULL,'2025-11-14 20:34:19','2025-11-14 20:34:19');
INSERT INTO `order_items` VALUES ('5','116','Fanta 200 ml Cam','16209','30','1',NULL,NULL,'2025-11-14 20:34:19','2025-11-14 20:34:19');
INSERT INTO `order_items` VALUES ('6','117','Sütlaç','16228','146','3','[]','[]','2026-08-11 18:20:51','2026-08-11 18:20:51');
INSERT INTO `order_items` VALUES ('7','118','Sütlaç','16228','146','3','[]','[]','2026-08-11 19:03:11','2026-08-11 19:03:11');
INSERT INTO `order_items` VALUES ('8','119','Margherita Pizza','16217','300','5','[]','[]','2026-08-11 22:36:16','2026-08-11 22:36:16');
INSERT INTO `order_items` VALUES ('9','119','Karışık Pizza','16197','300','1','[]','[]','2026-08-11 22:36:16','2026-08-11 22:36:16');
INSERT INTO `order_items` VALUES ('10','120','Fırın Sütlaç','16198','200','2','[]','[]','2026-08-16 20:33:56','2026-08-16 20:33:56');
INSERT INTO `order_items` VALUES ('11','120','Sütlaç','16228','146','2','[]','[]','2026-08-16 20:33:56','2026-08-16 20:33:56');
INSERT INTO `order_items` VALUES ('12','121','Fırın Sütlaç','16198','200','2','[]','[]','2026-08-16 20:34:13','2026-08-16 20:34:13');
INSERT INTO `order_items` VALUES ('13','121','Sütlaç','16228','146','2','[]','[]','2026-08-16 20:34:13','2026-08-16 20:34:13');
INSERT INTO `order_items` VALUES ('14','122','Fırın Sütlaç','16198','200','2','[]','[]','2026-08-16 20:38:24','2026-08-16 20:38:24');
INSERT INTO `order_items` VALUES ('15','122','Sütlaç','16228','146','2','[]','[]','2026-08-16 20:38:24','2026-08-16 20:38:24');

DROP TABLE IF EXISTS `order_placed_notifications`;
CREATE TABLE `order_placed_notifications` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint unsigned NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `seen` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `invoice_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `restaurant_id` bigint unsigned DEFAULT NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `discount` double NOT NULL DEFAULT '0',
  `delivery_charge` double NOT NULL DEFAULT '0',
  `subtotal` double DEFAULT '0',
  `grand_total` double DEFAULT '0',
  `commission_rate` decimal(5,2) DEFAULT NULL,
  `commission_amount` decimal(10,2) DEFAULT NULL,
  `restaurant_earning` decimal(10,2) DEFAULT NULL,
  `courier_earning` decimal(10,2) NOT NULL DEFAULT '0.00',
  `delivery_distance_km` decimal(8,2) DEFAULT NULL,
  `product_qty` int NOT NULL DEFAULT '0',
  `payment_method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `payment_status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'pending',
  `payment_approve_date` timestamp NULL DEFAULT NULL,
  `transaction_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `coupon_info` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `currency_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `order_status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'pending',
  `confirmed_at` timestamp NULL DEFAULT NULL,
  `preparing_at` timestamp NULL DEFAULT NULL,
  `ready_at` timestamp NULL DEFAULT NULL,
  `out_for_delivery_at` timestamp NULL DEFAULT NULL,
  `delivered_at` timestamp NULL DEFAULT NULL,
  `tracking_notes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `estimated_delivery_time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `address_id` bigint unsigned NOT NULL,
  `table_id` bigint unsigned DEFAULT NULL,
  `waiter_id` bigint unsigned DEFAULT NULL,
  `courier_id` bigint unsigned DEFAULT NULL,
  `assigned_at` timestamp NULL DEFAULT NULL,
  `picked_up_at` timestamp NULL DEFAULT NULL,
  `accept_deadline_at` timestamp NULL DEFAULT NULL,
  `courier_accept_deadline_at` timestamp NULL DEFAULT NULL,
  `courier_accepted_at` timestamp NULL DEFAULT NULL,
  `prep_minutes` smallint unsigned DEFAULT NULL,
  `courier_reassign_count` tinyint unsigned NOT NULL DEFAULT '0',
  `sla_status` varchar(40) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `cancel_reason` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `last_notified_status` varchar(40) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `refunded_at` timestamp NULL DEFAULT NULL,
  `refund_amount` decimal(12,2) DEFAULT NULL,
  `refund_error` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `delivery_by` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `orders_user_id_foreign` (`user_id`),
  KEY `orders_table_id_foreign` (`table_id`),
  KEY `orders_waiter_id_foreign` (`waiter_id`),
  KEY `orders_courier_id_foreign` (`courier_id`),
  KEY `orders_restaurant_id_foreign` (`restaurant_id`),
  CONSTRAINT `orders_courier_id_foreign` FOREIGN KEY (`courier_id`) REFERENCES `couriers` (`id`) ON DELETE SET NULL,
  CONSTRAINT `orders_restaurant_id_foreign` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurants` (`id`) ON DELETE SET NULL,
  CONSTRAINT `orders_table_id_foreign` FOREIGN KEY (`table_id`) REFERENCES `restaurant_tables` (`id`) ON DELETE SET NULL,
  CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `orders_waiter_id_foreign` FOREIGN KEY (`waiter_id`) REFERENCES `users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=123 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `orders` VALUES ('115','705251634','1','1','Büyükkarıştıran, Bölge: Lüleburgaz','0','0','600','600',NULL,NULL,NULL,'0.00',NULL,'1',NULL,'pending',NULL,NULL,'null',NULL,'in_process','2025-10-18 18:49:36','2026-08-15 22:19:42','2025-10-18 18:49:36',NULL,NULL,NULL,NULL,'2025-10-16 22:33:34','2026-08-15 22:19:42','5',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `orders` VALUES ('116','2384731094','1','6','Table Order','0','0','460','460',NULL,NULL,NULL,'0.00',NULL,'7','cash','pending',NULL,NULL,NULL,NULL,'in_process','2025-11-15 07:39:16','2025-11-15 07:39:16','2025-11-15 07:39:16',NULL,NULL,NULL,NULL,'2025-11-14 20:34:19','2025-11-15 07:39:16','1','1','1','1','2026-08-11 20:12:47',NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `orders` VALUES ('117','5854261151','1','5','Büyükkarıştıran, Bölge: Lüleburgaz','0','0','438','438','15.00','65.70','372.30','0.00',NULL,'1',NULL,'completed',NULL,NULL,'null',NULL,'delivered','2026-08-11 22:27:47',NULL,'2026-08-19 21:48:29','2026-08-19 21:48:35','2026-08-19 21:48:39',NULL,NULL,'2026-08-11 18:20:51','2026-08-19 21:48:39','5',NULL,NULL,'1','2026-08-11 22:27:47','2026-08-19 21:48:29',NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `orders` VALUES ('118','1628261111','1','5','Çiftlikköy Köyü Büyükkarıştıran, Bölge: Lüleburgaz','0','0','438','438','15.00','65.70','372.30','0.00',NULL,'1',NULL,'pending',NULL,NULL,'null',NULL,'pending',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2026-08-11 19:03:11','2026-08-11 19:03:11','15',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `orders` VALUES ('119','4906261116','1','1','Lüleburgaz Çiftlikköy, Bölge: Büyükkarıştıran/Fatih','0','15','1800','1815','15.00','270.00','1530.00','0.00',NULL,'2',NULL,'pending',NULL,NULL,'null',NULL,'pending',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2026-08-11 22:36:16','2026-08-11 22:36:16','15',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `orders` VALUES ('120','239261656','38','5','Lüleburgaz Kuzeybatı Çevre Yolu, Dere Mahallesi, Lüleburgaz, Kırklareli, Marmara Bölgesi, 39750, Türkiye · erol · Kapı/daire 1 · Kat 2, Bölge: Kırklareli > Lüleburgaz > Dere · akgündüz · Kapı/daire 10 · Kat 2','0','15','692','707','15.00','103.80','588.20','0.00',NULL,'2','Kapıda Ödeme','pending','2026-08-16 20:33:56','COD-239261656','null','TRY','pending',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2026-08-16 20:33:56','2026-08-16 20:33:56','16',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `orders` VALUES ('121','376261613','38','5','Lüleburgaz Kuzeybatı Çevre Yolu, Dere Mahallesi, Lüleburgaz, Kırklareli, Marmara Bölgesi, 39750, Türkiye · erol · Kapı/daire 1 · Kat 2, Bölge: Kırklareli > Lüleburgaz > Dere · akgündüz · Kapı/daire 10 · Kat 2','0','15','692','707','15.00','103.80','588.20','0.00',NULL,'2','Kapıda Ödeme','pending','2026-08-16 20:34:13','COD-376261613','null','TRY','pending',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2026-08-16 20:34:13','2026-08-16 20:34:13','16',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `orders` VALUES ('122','5041261624','38','5','Lüleburgaz Kuzeybatı Çevre Yolu, Dere Mahallesi, Lüleburgaz, Kırklareli, Marmara Bölgesi, 39750, Türkiye · erol · Kapı/daire 1 · Kat 2, Bölge: Kırklareli > Lüleburgaz > Dere · akgündüz · Kapı/daire 10 · Kat 2','0','15','692','707','15.00','103.80','588.20','0.00',NULL,'2','Kapıda Ödeme','pending','2026-08-16 20:38:24','COD-5041261624','null','TRY','pending',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2026-08-16 20:38:24','2026-08-16 20:38:24','16',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL);

DROP TABLE IF EXISTS `password_reset_tokens`;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `payment_gateway_settings`;
CREATE TABLE `payment_gateway_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `payment_gateway_settings` VALUES ('1','paypal_logo','/uploads/media_64e58838d3a51.png','2023-08-18 23:36:53','2023-08-22 22:16:56');
INSERT INTO `payment_gateway_settings` VALUES ('2','paypal_status','1','2023-08-18 23:36:53','2023-08-22 22:19:47');
INSERT INTO `payment_gateway_settings` VALUES ('3','paypal_account_mode','sandbox','2023-08-18 23:36:53','2023-08-18 23:36:53');
INSERT INTO `payment_gateway_settings` VALUES ('4','paypal_country','GB','2023-08-18 23:36:53','2024-04-02 20:31:16');
INSERT INTO `payment_gateway_settings` VALUES ('5','paypal_currency','USD','2023-08-18 23:36:53','2024-04-02 20:35:52');
INSERT INTO `payment_gateway_settings` VALUES ('6','paypal_rate','1','2023-08-18 23:36:53','2023-08-18 23:36:53');
INSERT INTO `payment_gateway_settings` VALUES ('7','paypal_api_key','AUnOIw_wR15MzYo0eg87xjJ4bH2b_fsXVMtVtVZcpJVTrQC_rcStGAjyzBJK40vpaaCnYSvi1Gbf6L9f','2023-08-18 23:36:53','2023-08-19 01:56:43');
INSERT INTO `payment_gateway_settings` VALUES ('8','paypal_secret_key','EPrUhxAOGPrnp_5-BkaI6UO0CQMyZ-F4ANGdm3Ye4QZofTuHjyzzJCZm3sP5hiSb4XKlUKOo-ozDddD3','2023-08-18 23:36:53','2023-08-19 01:56:43');
INSERT INTO `payment_gateway_settings` VALUES ('9','paypal_app_id','APP_ID','2023-08-20 23:07:55','2023-08-20 23:07:55');
INSERT INTO `payment_gateway_settings` VALUES ('10','stripe_logo','/uploads/media_64e30eb5c51eb.png','2023-08-21 01:13:57','2023-08-21 01:13:57');
INSERT INTO `payment_gateway_settings` VALUES ('11','stripe_status','1','2023-08-21 01:13:57','2023-08-21 01:13:57');
INSERT INTO `payment_gateway_settings` VALUES ('12','stripe_country','GB','2023-08-21 01:13:57','2023-08-21 01:13:57');
INSERT INTO `payment_gateway_settings` VALUES ('13','stripe_currency','USD','2023-08-21 01:13:57','2023-08-21 01:13:57');
INSERT INTO `payment_gateway_settings` VALUES ('14','stripe_rate','1','2023-08-21 01:13:57','2023-08-21 01:13:57');
INSERT INTO `payment_gateway_settings` VALUES ('15','stripe_api_key','pk_test_51NhSkBLAjq0ac3am3UhnOZKyJcyh1wHiH4tkIeu60qcYE53YFCeQiD6mvkEcDyR5a8TrnMq0HiMndlflptDDU5cc00NA7t4tNd','2023-08-21 01:13:57','2023-08-21 01:47:18');
INSERT INTO `payment_gateway_settings` VALUES ('16','stripe_secret_key','sk_test_51NhSkBLAjq0ac3amThHW5zGEFluTCqirQw3xYwNh2KlYTIoV1nUfj0wXQ1ktXOlooaVRF0M99N7XXnaTBoLX7xgd00suPQpGgI','2023-08-21 01:13:57','2023-08-21 01:47:18');
INSERT INTO `payment_gateway_settings` VALUES ('17','razorpay_status','1','2023-08-21 23:45:12','2023-08-21 23:45:12');
INSERT INTO `payment_gateway_settings` VALUES ('18','razorpay_country','IN','2023-08-21 23:45:13','2023-08-21 23:45:13');
INSERT INTO `payment_gateway_settings` VALUES ('19','razorpay_currency','USD','2023-08-21 23:45:13','2023-08-22 05:42:34');
INSERT INTO `payment_gateway_settings` VALUES ('20','razorpay_rate','1','2023-08-21 23:45:13','2023-08-22 05:42:34');
INSERT INTO `payment_gateway_settings` VALUES ('21','razorpay_api_key','rzp_test_K7CipNQYyyMPiS','2023-08-21 23:45:13','2023-08-22 00:42:04');
INSERT INTO `payment_gateway_settings` VALUES ('22','razorpay_secret_key','zSBmNMorJrirOrnDrbOd1ALO','2023-08-21 23:45:13','2023-08-22 00:42:04');
INSERT INTO `payment_gateway_settings` VALUES ('23','razorpay_logo','/uploads/media_64e44b9f4fac0.png','2023-08-21 23:46:07','2023-08-21 23:46:07');
INSERT INTO `payment_gateway_settings` VALUES ('24','paytr_status','0','2026-08-11 22:53:27','2026-08-11 22:53:27');
INSERT INTO `payment_gateway_settings` VALUES ('25','paytr_merchant_id','','2026-08-11 22:53:27','2026-08-11 22:53:27');
INSERT INTO `payment_gateway_settings` VALUES ('26','paytr_merchant_key','','2026-08-11 22:53:27','2026-08-11 22:53:27');
INSERT INTO `payment_gateway_settings` VALUES ('27','paytr_merchant_salt','','2026-08-11 22:53:27','2026-08-11 22:53:27');
INSERT INTO `payment_gateway_settings` VALUES ('28','paytr_test_mode','1','2026-08-11 22:53:27','2026-08-11 22:53:27');
INSERT INTO `payment_gateway_settings` VALUES ('29','paytr_logo','','2026-08-11 22:53:27','2026-08-11 22:53:27');
INSERT INTO `payment_gateway_settings` VALUES ('30','fcm_server_key','','2026-08-11 22:53:27','2026-08-11 22:53:27');
INSERT INTO `payment_gateway_settings` VALUES ('31','default_courier_base_earning','40','2026-08-11 22:53:28','2026-08-11 22:53:28');
INSERT INTO `payment_gateway_settings` VALUES ('32','default_courier_per_km','5','2026-08-11 22:53:28','2026-08-11 22:53:28');
INSERT INTO `payment_gateway_settings` VALUES ('33','auto_assign_courier','1','2026-08-11 22:53:28','2026-08-11 22:53:28');
INSERT INTO `payment_gateway_settings` VALUES ('34','distance_fee_enabled','1','2026-08-11 22:53:28','2026-08-11 22:53:28');

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `personal_access_tokens` VALUES ('1','App\\Models\\User','36','courier-app','2734fb8ba4d79111b7ac76bd66b30a2eea7dd4b762cca71faa457cb843e698cf','["*"]',NULL,NULL,'2026-08-11 17:13:04','2026-08-11 17:13:04');

DROP TABLE IF EXISTS `privacy_policies`;
CREATE TABLE `privacy_policies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `privacy_policies` VALUES ('1','<h3 _msttexthash="243880" _msthash="92"><p style="margin-right: 0px; margin-bottom: 20px; margin-left: 0px;" _msttexthash="8830172" _msthash="381"><font color="#707070" face="Roboto, sans-serif"><span style="font-size: 15px;">##</span></font></p></h3><p></p>','2023-09-20 00:11:35','2025-10-07 20:24:50');

DROP TABLE IF EXISTS `product_catalog`;
CREATE TABLE `product_catalog` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint unsigned DEFAULT NULL,
  `short_description` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `long_description` text COLLATE utf8mb4_unicode_ci,
  `thumb_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `product_catalog_slug_unique` (`slug`),
  KEY `product_catalog_name_index` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `product_catalog` VALUES ('1','Margarita','margarita','1','Mozzarella, domates, fesleğen','<div class="tab-pane fade show active" id="pills-home" role="tabpanel" aria-labelledby="pills-home-tab" tabindex="0">\r\n                                <div class="menu_det_description">\r\n                                    <p><span style="color: rgb(29, 29, 31); font-family: Manrope, sans-serif; font-size: 15px;">Taze Dinlenmi?? Hamur, özel Sos, Mozzarella</span></p></div></div><p></p>','/uploads/media_68e1742a0c182.jpg','1','2026-08-27 01:48:14','2026-08-27 01:48:14');
INSERT INTO `product_catalog` VALUES ('2','Pepperoni','pepperoni','1','Pizza sosu, mozzarella peyniri,sucuk, siyah zeytin, mantar','<div class="tab-pane fade show active" id="pills-home" role="tabpanel" aria-labelledby="pills-home-tab" tabindex="0">\r\n                                <div class="menu_det_description">\r\n                                    <div><div class="yPXgy9 YqUfCX inner-box wixui-box" style="background: none rgba(255, 255, 255, 0); border-width: 0px; border-style: solid; border-color: rgba(51, 51, 51, 0); border-image: none 100% / 1 / 0 stretch; outline: 0px; vertical-align: baseline; backdrop-filter: none; border-radius: 0px; box-shadow: none; font-family: Arial, Helvetica, sans-serif; font-size: 10px; margin: 0px !important; padding: 0px !important; inset: 0px !important; position: absolute !important; height: unset !important; max-height: unset !important; max-width: unset !important; min-height: unset !important; min-width: unset !important; width: unset !important; z-index: unset !important;"></div><div class="comp-m5s4cnz8_r_comp-lqdjbzvw-overflow-wrapper xpmKd_" data-testid="responsive-container-overflow" style="background: transparent; border: 0px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline; border-radius: 0px; position: absolute; top: 0px; left: 0px; width: 297.725px; height: 362.55px; display: flex; flex-direction: column; flex-grow: 1; overflow: hidden scroll; --sticky-offset: 0px; font-family: Arial, Helvetica, sans-serif; font-size: 10px;"><div data-testid="responsive-container-content" tabindex="-1" class="comp-m5s4cnz8_r_comp-lqdjbzvw-container" style="background: transparent; border: 0px; margin: 0px; outline: none; padding: 0px; vertical-align: baseline; position: relative; pointer-events: none; flex-grow: 1; display: grid; grid-template-rows: 1fr; grid-template-columns: 100%; --container-layout-type: grid-container-layout; --container-display: grid;"><div id="comp-m5s4cnz8_r_comp-lp5f9cdg" class="Z_l5lU ku3DBC zQ9jDz qvSjx3 Vq6kJx comp-m5s4cnz8_r_comp-lp5f9cdg wixui-rich-text" data-testid="richTextElement" style="background: transparent; border: 0px; margin: 0.0195312px 0px 0px; outline: 0px; padding: 0px; vertical-align: baseline; text-size-adjust: 100%; direction: ltr; min-height: auto; min-width: auto; mix-blend-mode: normal; overflow-wrap: break-word; pointer-events: auto; text-shadow: rgba(0, 0, 0, 0) 0px 0px 0px, rgba(0, 0, 0, 0) 0px 0px 0px; width: 297.725px; height: auto; --l_display: unset; --comp-display: unset; display: grid; place-self: start; grid-area: 1 / 1 / 2 / 2; position: relative; --backgroundColor: 0,0,0; --alpha-backgroundColor: 0; --blendMode: normal; --textShadow: 0px 0px transparent; --textOutline: 0px 0px transparent; --color: 51,51,51; --alpha-color: 1; --letterSpacing: 0em; --lineHeight: 1.6em; --fontSize: 16px; --text-direction: ltr;"><p class="font_8 wixui-rich-text__text" style="background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border: 0px; outline: 0px; padding: 0px; vertical-align: baseline; pointer-events: auto; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; font-stretch: 100%; font-family: din-next-w01-light, sans-serif; font-optical-sizing: auto; font-size-adjust: none; font-kerning: auto; font-feature-settings: normal; font-variation-settings: normal; margin-block: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; background-color: transparent !important; font-size: 16px !important; line-height: 1.6 !important; color: rgb(51, 51, 51) !important; letter-spacing: 0em !important;">???? ???Pepperoni??? isminin nereden geldiçini biliyor muydunuz?????talyanca???da ???peperoni??? = ???biberler??? demek. ???????ABD???deki ??talyan g????menler 1900???lerin ba????nda saklama s??resini artt??rmak için paprika ve ac?? biberle tatland??rd??klar?? bir salam ??retmi?? ve ad??na ???pepperoni??? demi??ler. ???????? Yani asl??nda kelime, ??talyanca biberden t??reyip ABD???de ???baharatl?? sosis/salam??? anlam??na evrilmi??. ?????????????????????? Bug??n ise ???pepperoni pizza??? denince d??nyan??n her yerinde bu baharatl?? salam akla geliyor. ????????????? Pizzeria Pera???n??n men??s??ndeki yeni pizzalardan biri de tam olarak pepperoni isminin hikayesine ithafen yarat??ld??: ???? Dana pepperonili ve yeşil biberli Tregnon ??????????????? Biz kendisini ??ok sevdik, sizleri de denemeye bekleriz</p></div></div></div></div></div></div><p></p>','/uploads/media_68e1887c17e21.jpg','1','2026-08-27 01:48:14','2026-08-27 01:48:14');
INSERT INTO `product_catalog` VALUES ('3','Usta Special Pizza','usta-special-pizza','1','Günlük taze hamur, özel pizza sosu, pizza peyniri, sucuk, salam, sosis, mantar, mısır ve siyah zeytin.','<div class="tab-pane fade show active" id="pills-home" role="tabpanel" aria-labelledby="pills-home-tab" tabindex="0">\r\n                                <div class="menu_det_description">\r\n                                    <p><span style="color: rgb(102, 102, 102); font-family: Roboto; font-size: 15px;">Günlük taze hamuru, özel pizza sosu, pizza peyniri, sucuk, salam, sosis, mantar, mısır ve siyah zeytin.</span></p></div></div><p></p>','/uploads/media_68e181f75e3ae.jpg','1','2026-08-27 01:48:14','2026-08-27 01:48:14');
INSERT INTO `product_catalog` VALUES ('4','Pizzeria Special Pizza','pizzeria-special-pizza','1','Günlük taze hamur, özel pizza sosu, pizza peyniri, sucuk, salam, sosis, mantar, mısır ve siyah zeytin.','<div class="woocommerce-product-details__short-description" style="box-sizing: inherit; text-rendering: optimizelegibility; margin: 0px 0px 20px; padding: 0px; border: 0px; outline: 0px; font-size: 15px; font-family: Roboto; vertical-align: baseline; width: 520px; color: rgb(102, 102, 102); -webkit-text-stroke-color: initial !important;"><p style="box-sizing: inherit; text-rendering: optimizelegibility; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline; -webkit-font-smoothing: antialiased; line-height: 1.625em; hyphens: auto; -webkit-text-stroke-color: initial !important;">Günlük taze hamuru, özel pizza sosu, pizza peyniri, sucuk, salam, sosis, mantar, mısır ve siyah zeytin.</p><div><br></div></div>','/uploads/media_68e183b1ab963.jpg','1','2026-08-27 01:48:14','2026-08-27 01:48:14');
INSERT INTO `product_catalog` VALUES ('5','Vegetarian Pizza','vegetarian-pizza','1','Günlük taze hamur, özel pizza sosu, mozzarella, yeşil-siyah zeytin, mantar, mısır, soğan, domates.','<h1 class="pr-new-br" data-drroot="h1" style="text-align: left; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; line-height: 26px; overflow: hidden; text-overflow: ellipsis; display: -webkit-box; -webkit-line-clamp: 2; -webkit-box-orient: vertical; background-color: rgb(254, 254, 254);"><font color="#212529" face="Roboto, sans-serif"><span style="font-size: 16px; font-weight: 400; letter-spacing: -0.16px;">Günlük taze hamuru, özel pizza sosu, mozzarella peyniri, yeşil-siyah zeytin, mantar, mısır, soğan, domates ve yeşil biber</span></font></h1>','/uploads/media_68e17f143034e.jpg','1','2026-08-27 01:48:14','2026-08-27 01:48:14');
INSERT INTO `product_catalog` VALUES ('6','Mexican Pizza','mexican-pizza','1','Günlük taze hamur, özel pizza sosu, pizza peyniri, sucuk, mantar, kırmızı şerit biber, jalapeno.','<span style="color: rgb(102, 102, 102); font-family: Roboto; font-size: 15px;">Günlük taze hamuru, özel pizza sosu, pizza peyniri, sucuk, mantar, kırmızı şerit biber, jalapeno biber.</span>','/uploads/media_68e17fba7aa3e.jpg','1','2026-08-27 01:48:14','2026-08-27 01:48:14');
INSERT INTO `product_catalog` VALUES ('7','Ton Balıklı Pizza','ton-balikli-pizza','1','Günlük taze hamur, özel pizza sosu, pizza peyniri, soğan, ton balığı, mantar ve mısır.','<h1 class="product_title entry-title heading-title" style="box-sizing: inherit; text-rendering: optimizelegibility; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 35px; font-family: Rubik; vertical-align: baseline; -webkit-font-smoothing: antialiased; color: rgb(34, 39, 45); line-height: normal; overflow-wrap: break-word; -webkit-text-stroke-color: initial !important;"><span style="font-family: inherit; font-style: inherit; font-weight: inherit; -webkit-text-stroke-color: initial; color: rgb(102, 102, 102); font-size: 15px;">Günlük taze hamuru, özel pizza sosu, pizza peyniri, soğan, ton balığı, mantar ve mısır.</span></h1>','/uploads/media_68e180d65ee63.jpg','1','2026-08-27 01:48:14','2026-08-27 01:48:14');
INSERT INTO `product_catalog` VALUES ('8','Dört Peynirli Pizza','dort-peynirli-pizza','1','Günlük taze hamur, özel pizza sosu, mozzarella, beyaz peynir, tulum ve cheddar.','<p><span style="color: rgb(102, 102, 102); font-family: Roboto; font-size: 15px;">Günlük taze hamuru, özel pizza sosu, mozzarella peyniri, beyaz peynir, tulum peyniri ve cheddar peyniri.</span></p>','/uploads/media_68e184780de13.jpg','1','2026-08-27 01:48:14','2026-08-27 01:48:14');
INSERT INTO `product_catalog` VALUES ('9','Karışık Pizza','karisik-pizza','1','Domates sosu, mozzarella, mantar, siyah zeytin, mısır, salam, sosis, yeşil biber, kırmızı biber, sucuk.','<p><span style="margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-weight: 600; font-stretch: inherit; line-height: inherit; font-family: Lato, Arial, Helvetica, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgb(119, 119, 119);">Domates Sosu, Mozzarella Peyniri, Mantar, Siyah Zeytin, Mısır, Salam, Sosis, Yeşil Biber, Kırmızı Biber, Sucuk, Dana Past??rma, Kavurma</span></p>','/uploads/media_68e186ee76d79.jpg','1','2026-08-27 01:48:14','2026-08-27 01:48:14');
INSERT INTO `product_catalog` VALUES ('10','Fırın Sütlaç','firin-sutlac','6','Sütlü tatlılar','<h2 style="margin-right: 0px; margin-bottom: 2rem; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-size: 1rem; font-weight: 300; color: rgb(0, 55, 99); font-family: "Open Sans", sans-serif;"><a href="https://www.uzaypastanesi.com/sutlu-tatlilar" style="margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; color: rgb(0, 55, 99);">Sütlü Tatlılar</a></h2>','/uploads/media_68e18b73e1d38.jpg','1','2026-08-27 01:48:14','2026-08-27 01:48:14');
INSERT INTO `product_catalog` VALUES ('11','Bolonez (Bolognese) Soslu Spagetti','bolonez-bolognese-soslu-spagetti','2','Bolonez soslu (kıymalı) spagetti makarna','<h1 class="recipe-name" style="margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-weight: inherit; font-stretch: inherit; font-size: 26px; line-height: 30px; font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Oxygen-Sans, Ubuntu, Cantarell, &quot;Helvetica Neue&quot;, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; z-index: 1; position: relative; color: rgb(74, 74, 74);">Bolonez Soslu ( Kıymalı) Spagetti Makarna</h1>','/uploads/media_68e555e5f1dab.jpg','1','2026-08-27 01:48:14','2026-08-27 01:48:14');
INSERT INTO `product_catalog` VALUES ('12','Napoliten Soslu Spagetti','napoliten-soslu-spagetti','2','Napoliten Soslu Spagetti','<p><span style="color: rgb(255, 255, 255); font-family: Inter, sans-serif; font-size: 52px; font-weight: 600;">Napoliten Soslu Spagetti</span></p>','/uploads/media_68e55886d9070.jpg','1','2026-08-27 01:48:14','2026-08-27 01:48:14');
INSERT INTO `product_catalog` VALUES ('13','Tavuklu Penne','tavuklu-penne','2','Tavuklu Penne','<p><span style="font-family: Custom-Font-Regular, Arial, sans-serif; font-size: 18px;">Tavuklu Penne</span></p>','/uploads/media_68e55ac508065.jpg','1','2026-08-27 01:48:14','2026-08-27 01:48:14');
INSERT INTO `product_catalog` VALUES ('14','Fettucini Alfredo','fettucini-alfredo','2','Fettucini Alfredo','<p><span style="color: rgb(66, 66, 66); font-family: Inter, sans-serif; font-size: 40px; font-weight: 600;">Fettucini Alfredo</span><span style="color: rgb(66, 66, 66); font-family: Inter, sans-serif; font-size: 40px; font-weight: 600;">&nbsp;</span></p>','/uploads/media_68e55b484adef.jpg','1','2026-08-27 01:48:14','2026-08-27 01:48:14');
INSERT INTO `product_catalog` VALUES ('15','Mantarlı Kremalı','mantarli-kremali','2','Mantarlı kremalı','<p>Mantarlı Kremalı</p>','/uploads/media_68e55c22582c3.jpg','1','2026-08-27 01:48:14','2026-08-27 01:48:14');
INSERT INTO `product_catalog` VALUES ('16','Kumpir','kumpir','3','Kumpir','<p>Kumpir</p>','/uploads/media_68e55d579869a.jpg','1','2026-08-27 01:48:14','2026-08-27 01:48:14');
INSERT INTO `product_catalog` VALUES ('17','Küçük Ayran','kucuk-ayran','5','Küçük ayran','<p>Küçük Ayran</p>','/uploads/media_68e55fb3001bb.jpg','1','2026-08-27 01:48:14','2026-08-27 01:48:14');
INSERT INTO `product_catalog` VALUES ('18','Büyük İçim Ayran 285 Ml','buyuk-icim-ayran-285-ml','5','Büyük İçim Ayran 285 ml','<h1 style="font-size: 25px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-family: Nunito; line-height: 1.1; color: rgb(48, 48, 48); padding: 0px;">İçim Ayran 285 Ml</h1>','/uploads/media_68e6a31b77539.jpg','1','2026-08-27 01:48:14','2026-08-27 01:48:14');
INSERT INTO `product_catalog` VALUES ('19','Coca-Cola Cam Şişe 250 ml','coca-cola-cam-sise-250-ml','5','Coca-Cola cam şişe 250 ml','<p>Coca-Cola Cam Şişe 250 ml</p>','/uploads/media_68e6a48f923b3.jpg','1','2026-08-27 01:48:14','2026-08-27 01:48:14');
INSERT INTO `product_catalog` VALUES ('20','Coca Cola Kutu 330 Ml','coca-cola-kutu-330-ml','5','Coca Cola Kutu 330 Ml','<p><span style="font-family: Poppins, sans-serif; font-size: 18px; font-weight: 600;">Coca Cola Kutu 330 Ml</span></p>','/uploads/media_68e6a6c769334.jpg','1','2026-08-27 01:48:14','2026-08-27 01:48:14');
INSERT INTO `product_catalog` VALUES ('21','Fanta 200 ml Cam','fanta-200-ml-cam','5','Fanta 200 ml Cam','<h1 style="padding: 0px; margin-right: 0px; margin-bottom: 5px; margin-left: 0px; font-weight: 400; line-height: normal; font-size: 1.15em; word-break: break-word; color: rgb(56, 56, 56); font-family: Roboto, &quot;Helvetica Neue&quot;, sans-serif;">Fanta 200 ml Cam</h1>','/uploads/media_68e6a7bcddd0f.jpg','1','2026-08-27 01:48:14','2026-08-27 01:48:14');
INSERT INTO `product_catalog` VALUES ('22','Fanta Kutu 330 ml','fanta-kutu-330-ml','5','Fanta Kutu 330 ml','<p>Fanta Kutu 330 ml</p>','/uploads/media_68eb7c7291188.png','1','2026-08-27 01:48:14','2026-08-27 01:48:14');
INSERT INTO `product_catalog` VALUES ('23','Sprite 330 Ml Kutu','sprite-330-ml-kutu','5','Sprite 330 Ml Kutu','<ul style="margin: 5px 10px; padding: 5px 10px; border: 0px; outline: 0px; list-style: none; font-family: Roboto, Arial, "Helvetica Neue", sans-serif; font-size: 16px; text-wrap-mode: nowrap;"><li style="margin: 0px 9px 0px -10px; padding: 0px; border: 0px; outline: 0px; display: inline-block; line-height: 26px; position: relative;"><a href="https://shop.efeskurumsal.com/urun/sprite-330-ml-kutu-24-lu-paket-1234.html" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; color: rgb(17, 17, 17); letter-spacing: -1px;">Sprite 330 Ml Kutu??</a></li></ul>','/uploads/media_68eb7d8de3ad3.png','1','2026-08-27 01:48:14','2026-08-27 01:48:14');
INSERT INTO `product_catalog` VALUES ('24','Fuse Tea Karpuz Aromalı İçecek Soğuk Çay 330 Ml','fuse-tea-karpuz-aromali-icecek-soguk-cay-330-ml','5','Fuse Tea karpuz aromalı soğuk çay 330 ml','<h1 class="product-title" data-testid="product-title" data-drroot="h1" style="margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-weight: 400; font-stretch: inherit; font-family: &quot;Source Sans 3&quot;, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; text-overflow: ellipsis; -webkit-line-clamp: 2; white-space-collapse: preserve; word-break: break-word; -webkit-box-orient: vertical; display: -webkit-box; overflow: hidden; color: rgb(51, 51, 51); font-size: 20px !important; line-height: 26px !important;"><a href="https://www.trendyol.com/fuse-tea-x-b111172" class="product-title-brand-name-anchor" style="font-family: source_sans_proregular, sans-serif; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; color: rgb(51, 51, 51); cursor: pointer;"><span style="font-weight: bolder; margin: 0px; padding: 0px; border: 0px; font-variant: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;">Fuse Tea</span></a> Karpuz Aromalı İçecek Soğuk Çay 330 Ml </h1>','/uploads/media_68e6aea584216.jpg','1','2026-08-27 01:48:14','2026-08-27 01:48:14');
INSERT INTO `product_catalog` VALUES ('25','Fuse Tea Şeftali Kutu 330ml','fuse-tea-seftali-kutu-330ml','5','Fuse Tea şeftali kutu 330 ml','<h1 class="title page-title" style="text-align: justify; margin-right: 0px; margin-bottom: 0px; line-height: 1.1; position: relative; padding: 50px 20px 25px; overflow: visible; text-overflow: initial; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; margin-left: 25px;"><font face="Poppins"><span style="font-size: 30px;">Fuse Tea Şeftali Kutu 330ml</span></font></h1>','/uploads/media_68e6af64e06e2.jpg','1','2026-08-27 01:48:14','2026-08-27 01:48:14');
INSERT INTO `product_catalog` VALUES ('26','Fusetea Mango-Pineapple 330 ml','fusetea-mango-pineapple-330-ml','5','Fusetea Mango-Pineapple 330 ml','<h1 class="card_p__text-title details_name" itemprop="name" data-id="2846" style="margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 32px; line-height: 1.25; color: rgb(34, 34, 34); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;;">Fusetea Mango-Pineapple 330 ml</h1>','/uploads/media_68e6affb5741d.jpg','1','2026-08-27 01:48:14','2026-08-27 01:48:14');
INSERT INTO `product_catalog` VALUES ('27','Kınık Doğal Soda Maden Suyu 200 ml','kinik-dogal-soda-maden-suyu-200-ml','5','Kınık doğal soda maden suyu 200 ml','<p><span style="color: rgb(33, 33, 33); font-family: -apple-system, BlinkMacSystemFont, Arial, Roboto, Oxygen, Ubuntu, Cantarell, &quot;Fira Sans&quot;, &quot;Droid Sans&quot;, &quot;Helvetica Neue&quot;, sans-serif; font-size: 18px; font-weight: 600;">Kınık Doğal Soda Maden Suyu 200 ml&nbsp;</span></p>','/uploads/media_68e6b0c6833e5.jpg','1','2026-08-27 01:48:14','2026-08-27 01:48:14');
INSERT INTO `product_catalog` VALUES ('28','Özkaynak 0,5 pet su','ozkaynak-05-pet-su','5','Özkaynak 0,5 L pet su','<p>Özkaynak 0,5 pet su</p>','/uploads/media_68e6b2c2b2196.jpg','1','2026-08-27 01:48:14','2026-08-27 01:48:14');
INSERT INTO `product_catalog` VALUES ('29','Margherita Pizza','margherita-pizza','8','Klasik domates ve mozzarella','En sevilen klasik pizza tarifi','/uploads/media_68eb708cd5166.jpg','1','2026-08-27 01:48:14','2026-08-27 01:48:14');
INSERT INTO `product_catalog` VALUES ('30','Pepperoni Pizza','pepperoni-pizza','8','Acı sevenler için ideal','Acı severler için ideal','/uploads/media_68eb705437897.jpg','1','2026-08-27 01:48:14','2026-08-27 01:48:14');
INSERT INTO `product_catalog` VALUES ('31','Adana Kebap','adana-kebap','1','Adana Kebap','Adana Kebap','/uploads/media_68e1742a0c182.jpg','1','2026-08-27 01:48:14','2026-08-27 01:48:14');
INSERT INTO `product_catalog` VALUES ('32','Urfa Kebap','urfa-kebap','1','Urfa Kebap','Urfa Kebap','/uploads/media_68e1742a0c182.jpg','1','2026-08-27 01:48:14','2026-08-27 01:48:14');
INSERT INTO `product_catalog` VALUES ('33','Lahmacun','lahmacun','4','Lahmacun','Lahmacun','/uploads/media_68e1742a0c182.jpg','1','2026-08-27 01:48:15','2026-08-27 01:48:15');
INSERT INTO `product_catalog` VALUES ('34','Salmon Roll','salmon-roll','1','Salmon Roll','Salmon Roll','/uploads/media_68e1742a0c182.jpg','1','2026-08-27 01:48:15','2026-08-27 01:48:15');
INSERT INTO `product_catalog` VALUES ('35','California Roll','california-roll','1','California Roll','California Roll','/uploads/media_68e1742a0c182.jpg','1','2026-08-27 01:48:15','2026-08-27 01:48:15');
INSERT INTO `product_catalog` VALUES ('36','Acılı Çiğköfte','acili-cigkofte','4','Acılı Çiğköfte','Acılı Çiğköfte','/uploads/media_68e1742a0c182.jpg','1','2026-08-27 01:48:15','2026-08-27 01:48:15');
INSERT INTO `product_catalog` VALUES ('37','Acısız Çiğköfte','acisiz-cigkofte','4','Acısız Çiğköfte','Acısız Çiğköfte','/uploads/media_68e1742a0c182.jpg','1','2026-08-27 01:48:15','2026-08-27 01:48:15');
INSERT INTO `product_catalog` VALUES ('38','Sütlaç','sutlac','6','Sütlaç','Sütlaç','/uploads/media_68e1742a0c182.jpg','1','2026-08-27 01:48:15','2026-08-27 01:48:15');
INSERT INTO `product_catalog` VALUES ('39','Cheeseburger','cheeseburger','4','Cheeseburger','Cheeseburger','/uploads/media_68e1742a0c182.jpg','1','2026-08-27 01:48:15','2026-08-27 01:48:15');

DROP TABLE IF EXISTS `product_galleries`;
CREATE TABLE `product_galleries` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_galleries_product_id_foreign` (`product_id`),
  CONSTRAINT `product_galleries_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `product_options`;
CREATE TABLE `product_options` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_options_product_id_foreign` (`product_id`),
  CONSTRAINT `product_options_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `product_options` VALUES ('59','30','Coca-Cola','5','2023-09-20 01:18:42','2023-09-20 01:18:42');
INSERT INTO `product_options` VALUES ('60','30','Extra Cheese','10','2023-09-20 01:18:42','2023-09-20 01:18:42');
INSERT INTO `product_options` VALUES ('61','31','Coca-Cola','5','2023-09-20 01:18:42','2023-09-20 01:18:42');
INSERT INTO `product_options` VALUES ('62','31','Extra Cheese','10','2023-09-20 01:18:42','2023-09-20 01:18:42');
INSERT INTO `product_options` VALUES ('63','32','Coca-Cola','5','2023-09-20 01:18:42','2023-09-20 01:18:42');
INSERT INTO `product_options` VALUES ('64','32','Extra Cheese','10','2023-09-20 01:18:42','2023-09-20 01:18:42');

DROP TABLE IF EXISTS `product_ratings`;
CREATE TABLE `product_ratings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `rating` int NOT NULL,
  `review` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_ratings_user_id_foreign` (`user_id`),
  KEY `product_ratings_product_id_foreign` (`product_id`),
  CONSTRAINT `product_ratings_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  CONSTRAINT `product_ratings_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `product_sizes`;
CREATE TABLE `product_sizes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_sizes_product_id_foreign` (`product_id`),
  CONSTRAINT `product_sizes_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `product_sizes` VALUES ('91','30','Large','30','2023-09-20 01:18:42','2023-09-20 01:18:42');
INSERT INTO `product_sizes` VALUES ('92','30','Medium','0','2023-09-20 01:18:42','2023-09-20 01:18:42');
INSERT INTO `product_sizes` VALUES ('93','30','Small','10','2023-09-20 01:18:42','2023-09-20 01:18:42');
INSERT INTO `product_sizes` VALUES ('94','31','Large','30','2023-09-20 01:18:42','2023-09-20 01:18:42');
INSERT INTO `product_sizes` VALUES ('95','31','Medium','0','2023-09-20 01:18:42','2023-09-20 01:18:42');
INSERT INTO `product_sizes` VALUES ('96','31','Small','10','2023-09-20 01:18:42','2023-09-20 01:18:42');
INSERT INTO `product_sizes` VALUES ('97','32','Large','30','2023-09-20 01:18:42','2023-09-20 01:18:42');
INSERT INTO `product_sizes` VALUES ('98','32','Medium','0','2023-09-20 01:18:42','2023-09-20 01:18:42');
INSERT INTO `product_sizes` VALUES ('99','32','Small','10','2023-09-20 01:18:42','2023-09-20 01:18:42');

DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `stok_kodu` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stok_barcod` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumb_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint unsigned NOT NULL,
  `restaurant_id` bigint unsigned DEFAULT NULL,
  `short_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `long_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL,
  `offer_price` double NOT NULL DEFAULT '0',
  `vat_rate_id` bigint unsigned DEFAULT NULL,
  `vat_percent` decimal(5,2) DEFAULT NULL,
  `quantity` int NOT NULL,
  `sku` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show_at_home` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `qr_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mensei` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `catalog_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `products_category_id_foreign` (`category_id`),
  KEY `products_restaurant_id_foreign` (`restaurant_id`),
  KEY `products_catalog_id_index` (`catalog_id`),
  CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  CONSTRAINT `products_restaurant_id_foreign` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurants` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=16230 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `products` VALUES ('30',NULL,NULL,'Margarita','tuna-sandwich','/uploads/media_68e1742a0c182.jpg','1','1','Mozzarella, domates, fesleğen','<div class="tab-pane fade show active" id="pills-home" role="tabpanel" aria-labelledby="pills-home-tab" tabindex="0">\r\n                                <div class="menu_det_description">\r\n                                    <p><span style="color: rgb(29, 29, 31); font-family: Manrope, sans-serif; font-size: 15px;">Taze Dinlenmi?? Hamur, özel Sos, Mozzarella</span></p></div></div><p></p>','250','200',NULL,NULL,'102','SIK-43234',NULL,NULL,'1','1','2023-09-19 23:08:36','2026-08-11 21:54:24','qrcodes/L0u6OKqxSssb46Y2.svg',NULL,'1');
INSERT INTO `products` VALUES ('31',NULL,NULL,'Pepperoni','veggie-burger','/uploads/media_68e1887c17e21.jpg','1','1','Pizza sosu, mozzarella peyniri,sucuk, siyah zeytin, mantar','<div class="tab-pane fade show active" id="pills-home" role="tabpanel" aria-labelledby="pills-home-tab" tabindex="0">\r\n                                <div class="menu_det_description">\r\n                                    <div><div class="yPXgy9 YqUfCX inner-box wixui-box" style="background: none rgba(255, 255, 255, 0); border-width: 0px; border-style: solid; border-color: rgba(51, 51, 51, 0); border-image: none 100% / 1 / 0 stretch; outline: 0px; vertical-align: baseline; backdrop-filter: none; border-radius: 0px; box-shadow: none; font-family: Arial, Helvetica, sans-serif; font-size: 10px; margin: 0px !important; padding: 0px !important; inset: 0px !important; position: absolute !important; height: unset !important; max-height: unset !important; max-width: unset !important; min-height: unset !important; min-width: unset !important; width: unset !important; z-index: unset !important;"></div><div class="comp-m5s4cnz8_r_comp-lqdjbzvw-overflow-wrapper xpmKd_" data-testid="responsive-container-overflow" style="background: transparent; border: 0px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline; border-radius: 0px; position: absolute; top: 0px; left: 0px; width: 297.725px; height: 362.55px; display: flex; flex-direction: column; flex-grow: 1; overflow: hidden scroll; --sticky-offset: 0px; font-family: Arial, Helvetica, sans-serif; font-size: 10px;"><div data-testid="responsive-container-content" tabindex="-1" class="comp-m5s4cnz8_r_comp-lqdjbzvw-container" style="background: transparent; border: 0px; margin: 0px; outline: none; padding: 0px; vertical-align: baseline; position: relative; pointer-events: none; flex-grow: 1; display: grid; grid-template-rows: 1fr; grid-template-columns: 100%; --container-layout-type: grid-container-layout; --container-display: grid;"><div id="comp-m5s4cnz8_r_comp-lp5f9cdg" class="Z_l5lU ku3DBC zQ9jDz qvSjx3 Vq6kJx comp-m5s4cnz8_r_comp-lp5f9cdg wixui-rich-text" data-testid="richTextElement" style="background: transparent; border: 0px; margin: 0.0195312px 0px 0px; outline: 0px; padding: 0px; vertical-align: baseline; text-size-adjust: 100%; direction: ltr; min-height: auto; min-width: auto; mix-blend-mode: normal; overflow-wrap: break-word; pointer-events: auto; text-shadow: rgba(0, 0, 0, 0) 0px 0px 0px, rgba(0, 0, 0, 0) 0px 0px 0px; width: 297.725px; height: auto; --l_display: unset; --comp-display: unset; display: grid; place-self: start; grid-area: 1 / 1 / 2 / 2; position: relative; --backgroundColor: 0,0,0; --alpha-backgroundColor: 0; --blendMode: normal; --textShadow: 0px 0px transparent; --textOutline: 0px 0px transparent; --color: 51,51,51; --alpha-color: 1; --letterSpacing: 0em; --lineHeight: 1.6em; --fontSize: 16px; --text-direction: ltr;"><p class="font_8 wixui-rich-text__text" style="background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border: 0px; outline: 0px; padding: 0px; vertical-align: baseline; pointer-events: auto; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; font-stretch: 100%; font-family: din-next-w01-light, sans-serif; font-optical-sizing: auto; font-size-adjust: none; font-kerning: auto; font-feature-settings: normal; font-variation-settings: normal; margin-block: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; background-color: transparent !important; font-size: 16px !important; line-height: 1.6 !important; color: rgb(51, 51, 51) !important; letter-spacing: 0em !important;">???? ???Pepperoni??? isminin nereden geldiçini biliyor muydunuz?????talyanca???da ???peperoni??? = ???biberler??? demek. ???????ABD???deki ??talyan g????menler 1900???lerin ba????nda saklama s??resini artt??rmak için paprika ve ac?? biberle tatland??rd??klar?? bir salam ??retmi?? ve ad??na ???pepperoni??? demi??ler. ???????? Yani asl??nda kelime, ??talyanca biberden t??reyip ABD???de ???baharatl?? sosis/salam??? anlam??na evrilmi??. ?????????????????????? Bug??n ise ???pepperoni pizza??? denince d??nyan??n her yerinde bu baharatl?? salam akla geliyor. ????????????? Pizzeria Pera???n??n men??s??ndeki yeni pizzalardan biri de tam olarak pepperoni isminin hikayesine ithafen yarat??ld??: ???? Dana pepperonili ve yeşil biberli Tregnon ??????????????? Biz kendisini ??ok sevdik, sizleri de denemeye bekleriz</p></div></div></div></div></div></div><p></p>','300','250',NULL,NULL,'101','MKV-2342345',NULL,NULL,'1','1','2023-09-19 23:10:03','2026-08-11 21:54:24','qrcodes/1J6zNVPT4oupB12m.svg',NULL,'2');
INSERT INTO `products` VALUES ('32',NULL,NULL,'Usta Special Pizza','sausage-biscuit','/uploads/media_68e181f75e3ae.jpg','1','1','Günlük taze hamur, özel pizza sosu, pizza peyniri, sucuk, salam, sosis, mantar, mısır ve siyah zeytin.','<div class="tab-pane fade show active" id="pills-home" role="tabpanel" aria-labelledby="pills-home-tab" tabindex="0">\r\n                                <div class="menu_det_description">\r\n                                    <p><span style="color: rgb(102, 102, 102); font-family: Roboto; font-size: 15px;">Günlük taze hamuru, özel pizza sosu, pizza peyniri, sucuk, salam, sosis, mantar, mısır ve siyah zeytin.</span></p></div></div><p></p>','450','400',NULL,NULL,'100','MKV-2342345',NULL,NULL,'1','1','2023-09-19 23:10:46','2026-08-11 21:54:24','qrcodes/ziW2OZnJzChNBZDi.svg',NULL,'3');
INSERT INTO `products` VALUES ('33',NULL,NULL,'Pizzeria Special Pizza','kinik-sade-200-ml-6-li-maden-suyu','/uploads/media_68e183b1ab963.jpg','1','1','Günlük taze hamur, özel pizza sosu, pizza peyniri, sucuk, salam, sosis, mantar, mısır ve siyah zeytin.','<div class="woocommerce-product-details__short-description" style="box-sizing: inherit; text-rendering: optimizelegibility; margin: 0px 0px 20px; padding: 0px; border: 0px; outline: 0px; font-size: 15px; font-family: Roboto; vertical-align: baseline; width: 520px; color: rgb(102, 102, 102); -webkit-text-stroke-color: initial !important;"><p style="box-sizing: inherit; text-rendering: optimizelegibility; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline; -webkit-font-smoothing: antialiased; line-height: 1.625em; hyphens: auto; -webkit-text-stroke-color: initial !important;">Günlük taze hamuru, özel pizza sosu, pizza peyniri, sucuk, salam, sosis, mantar, mısır ve siyah zeytin.</p><div><br></div></div>','450','400',NULL,NULL,'100',NULL,NULL,NULL,'1','1','2024-04-02 17:18:22','2026-08-11 21:54:24','qrcodes/lq4x1V1P5B6Izl0B.svg',NULL,'4');
INSERT INTO `products` VALUES ('40',NULL,NULL,'Vegetarian Pizza','SALAMLI ZEYT??NL??','/uploads/media_68e17f143034e.jpg','1','1','Günlük taze hamur, özel pizza sosu, mozzarella, yeşil-siyah zeytin, mantar, mısır, soğan, domates.','<h1 class="pr-new-br" data-drroot="h1" style="text-align: left; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; line-height: 26px; overflow: hidden; text-overflow: ellipsis; display: -webkit-box; -webkit-line-clamp: 2; -webkit-box-orient: vertical; background-color: rgb(254, 254, 254);"><font color="#212529" face="Roboto, sans-serif"><span style="font-size: 16px; font-weight: 400; letter-spacing: -0.16px;">Günlük taze hamuru, özel pizza sosu, mozzarella peyniri, yeşil-siyah zeytin, mantar, mısır, soğan, domates ve yeşil biber</span></font></h1>','110','250',NULL,NULL,'220',NULL,NULL,NULL,'1','1','2024-11-14 13:11:29','2026-08-11 21:54:24','qrcodes/4SO6xIwR3obwSYc5.svg',NULL,'5');
INSERT INTO `products` VALUES ('16194',NULL,NULL,'Mexican Pizza','erol-kecici-2','/uploads/media_68e17fba7aa3e.jpg','1','1','Günlük taze hamur, özel pizza sosu, pizza peyniri, sucuk, mantar, kırmızı şerit biber, jalapeno.','<span style="color: rgb(102, 102, 102); font-family: Roboto; font-size: 15px;">Günlük taze hamuru, özel pizza sosu, pizza peyniri, sucuk, mantar, kırmızı şerit biber, jalapeno biber.</span>','400','350',NULL,NULL,'101','MKV-2342345','11',NULL,'1','1','2025-09-28 19:18:37','2026-08-11 21:54:24','qrcodes/aF7fM8UAEDAhaa9U.svg',NULL,'6');
INSERT INTO `products` VALUES ('16195',NULL,NULL,'Ton Balıklı Pizza','erol-kecici-3','/uploads/media_68e180d65ee63.jpg','1','1','Günlük taze hamur, özel pizza sosu, pizza peyniri, soğan, ton balığı, mantar ve mısır.','<h1 class="product_title entry-title heading-title" style="box-sizing: inherit; text-rendering: optimizelegibility; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 35px; font-family: Rubik; vertical-align: baseline; -webkit-font-smoothing: antialiased; color: rgb(34, 39, 45); line-height: normal; overflow-wrap: break-word; -webkit-text-stroke-color: initial !important;"><span style="font-family: inherit; font-style: inherit; font-weight: inherit; -webkit-text-stroke-color: initial; color: rgb(102, 102, 102); font-size: 15px;">Günlük taze hamuru, özel pizza sosu, pizza peyniri, soğan, ton balığı, mantar ve mısır.</span></h1>','300','250',NULL,NULL,'101','MKV-2342345','11',NULL,'1','1','2025-09-28 19:24:05','2026-08-11 21:54:24','qrcodes/eHyPMf29tfcDvq6v.svg',NULL,'7');
INSERT INTO `products` VALUES ('16196',NULL,NULL,'Dört Peynirli Pizza','dort-peynirli-pizza','/uploads/media_68e184780de13.jpg','1','1','Günlük taze hamur, özel pizza sosu, mozzarella, beyaz peynir, tulum ve cheddar.','<p><span style="color: rgb(102, 102, 102); font-family: Roboto; font-size: 15px;">Günlük taze hamuru, özel pizza sosu, mozzarella peyniri, beyaz peynir, tulum peyniri ve cheddar peyniri.</span></p>','350','300',NULL,NULL,'1',NULL,NULL,NULL,'1','1','2025-10-04 20:32:56','2026-08-11 21:54:24','qrcodes/7JdVLBu5e9WuXs2s.svg',NULL,'8');
INSERT INTO `products` VALUES ('16197',NULL,NULL,'Karışık Pizza','karisik-pizza','/uploads/media_68e186ee76d79.jpg','1','1','Domates sosu, mozzarella, mantar, siyah zeytin, mısır, salam, sosis, yeşil biber, kırmızı biber, sucuk.','<p><span style="margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-weight: 600; font-stretch: inherit; line-height: inherit; font-family: Lato, Arial, Helvetica, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgb(119, 119, 119);">Domates Sosu, Mozzarella Peyniri, Mantar, Siyah Zeytin, Mısır, Salam, Sosis, Yeşil Biber, Kırmızı Biber, Sucuk, Dana Past??rma, Kavurma</span></p>','350','300',NULL,NULL,'2',NULL,NULL,NULL,'1','1','2025-10-04 20:43:26','2026-08-11 21:54:24','qrcodes/LktD3yocwfUJ9jnL.svg',NULL,'9');
INSERT INTO `products` VALUES ('16198',NULL,NULL,'Fırın Sütlaç','firin-sutlac','/uploads/media_68e18b73e1d38.jpg','6','5','Sütlü tatlılar','<h2 style="margin-right: 0px; margin-bottom: 2rem; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-size: 1rem; font-weight: 300; color: rgb(0, 55, 99); font-family: "Open Sans", sans-serif;"><a href="https://www.uzaypastanesi.com/sutlu-tatlilar" style="margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; color: rgb(0, 55, 99);">Sütlü Tatlılar</a></h2>','200','0',NULL,NULL,'102',NULL,NULL,NULL,'1','1','2025-10-04 21:01:30','2026-08-11 21:54:24','qrcodes/KTph8zdK9z5c3aFF.svg',NULL,'10');
INSERT INTO `products` VALUES ('16199',NULL,NULL,'Bolonez (Bolognese) Soslu Spagetti','bolonez-bolognese-soslu-spagetti','/uploads/media_68e555e5f1dab.jpg','2','6','Bolonez soslu (kıymalı) spagetti makarna','<h1 class="recipe-name" style="margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-weight: inherit; font-stretch: inherit; font-size: 26px; line-height: 30px; font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Oxygen-Sans, Ubuntu, Cantarell, &quot;Helvetica Neue&quot;, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; z-index: 1; position: relative; color: rgb(74, 74, 74);">Bolonez Soslu ( Kıymalı) Spagetti Makarna</h1>','115','100',NULL,NULL,'110',NULL,NULL,NULL,'1','1','2025-10-07 18:03:18','2026-08-11 21:54:24','qrcodes/lU97ePaPhr6RUGsf.svg',NULL,'11');
INSERT INTO `products` VALUES ('16200',NULL,NULL,'Napoliten Soslu Spagetti','napoliten-soslu-spagetti','/uploads/media_68e55886d9070.jpg','2','6','Napoliten Soslu Spagetti','<p><span style="color: rgb(255, 255, 255); font-family: Inter, sans-serif; font-size: 52px; font-weight: 600;">Napoliten Soslu Spagetti</span></p>','115','100',NULL,NULL,'116',NULL,NULL,NULL,'1','1','2025-10-07 18:14:30','2025-10-07 18:14:30','qrcodes/6mRaP49i0F36qCaq.svg',NULL,'12');
INSERT INTO `products` VALUES ('16201',NULL,NULL,'Tavuklu Penne','tavuklu-penne','/uploads/media_68e55ac508065.jpg','2','6','Tavuklu Penne','<p><span style="font-family: Custom-Font-Regular, Arial, sans-serif; font-size: 18px;">Tavuklu Penne</span></p>','115','100',NULL,NULL,'117',NULL,NULL,NULL,'1','1','2025-10-07 18:24:05','2025-10-07 18:24:05','qrcodes/AUz1fKzNAA58t20I.svg',NULL,'13');
INSERT INTO `products` VALUES ('16202',NULL,NULL,'Fettucini Alfredo','fettucini-alfredo','/uploads/media_68e55b484adef.jpg','2','6','Fettucini Alfredo','<p><span style="color: rgb(66, 66, 66); font-family: Inter, sans-serif; font-size: 40px; font-weight: 600;">Fettucini Alfredo</span><span style="color: rgb(66, 66, 66); font-family: Inter, sans-serif; font-size: 40px; font-weight: 600;">&nbsp;</span></p>','115','100',NULL,NULL,'117',NULL,NULL,NULL,'1','1','2025-10-07 18:26:16','2025-10-07 18:26:16','qrcodes/4McQ3Z33A5mYVdk2.svg',NULL,'14');
INSERT INTO `products` VALUES ('16203',NULL,NULL,'Mantarlı Kremalı','mantarli-kremali','/uploads/media_68e55c22582c3.jpg','2','6','Mantarlı kremalı','<p>Mantarlı Kremalı</p>','115','100',NULL,NULL,'117',NULL,NULL,NULL,'1','1','2025-10-07 18:29:54','2026-08-11 21:54:24','qrcodes/Us5CRFDhw4XZ7Sig.svg',NULL,'15');
INSERT INTO `products` VALUES ('16204',NULL,NULL,'Kumpir','kumpir','/uploads/media_68e55d579869a.jpg','3','3','Kumpir','<p>Kumpir</p>','200','0',NULL,NULL,'117',NULL,NULL,NULL,'1','1','2025-10-07 18:35:03','2025-10-15 07:16:50','qrcodes/gaNLEkBORANwLpOV.svg',NULL,'16');
INSERT INTO `products` VALUES ('16205',NULL,NULL,'Küçük Ayran','kucuk-ayran','/uploads/media_68e55fb3001bb.jpg','5','8','Küçük ayran','<p>Küçük Ayran</p>','20','0',NULL,NULL,'118',NULL,NULL,NULL,'1','1','2025-10-07 18:45:07','2026-08-11 21:54:24','qrcodes/E0heIizxYbY2KfhL.svg',NULL,'17');
INSERT INTO `products` VALUES ('16206',NULL,NULL,'Büyük İçim Ayran 285 Ml','buyuk-icim-ayran-285-ml','/uploads/media_68e6a31b77539.jpg','5','8','Büyük İçim Ayran 285 ml','<h1 style="font-size: 25px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-family: Nunito; line-height: 1.1; color: rgb(48, 48, 48); padding: 0px;">İçim Ayran 285 Ml</h1>','40','0',NULL,NULL,'117',NULL,NULL,NULL,'1','1','2025-10-08 17:44:59','2026-08-11 21:54:24','qrcodes/v5OAcsEJQYUwhu14.svg',NULL,'18');
INSERT INTO `products` VALUES ('16207',NULL,NULL,'Coca-Cola Cam Şişe 250 ml','cam-sise-250-ml-1-coca-cola-cam-sise-250-ml','/uploads/media_68e6a48f923b3.jpg','5','8','Coca-Cola cam şişe 250 ml','<p>Coca-Cola Cam Şişe 250 ml</p>','30','0',NULL,NULL,'118',NULL,NULL,NULL,'1','1','2025-10-08 17:49:54','2026-08-11 21:54:24','qrcodes/KJ9cec8aW3OMHzyI.svg',NULL,'19');
INSERT INTO `products` VALUES ('16208',NULL,NULL,'Coca Cola Kutu 330 Ml','coca-cola-kutu-330-ml','/uploads/media_68e6a6c769334.jpg','5','8','Coca Cola Kutu 330 Ml','<p><span style="font-family: Poppins, sans-serif; font-size: 18px; font-weight: 600;">Coca Cola Kutu 330 Ml</span></p>','50','0',NULL,NULL,'118',NULL,NULL,NULL,'1','1','2025-10-08 18:00:39','2025-10-16 13:58:42','qrcodes/itFdbHr94hIIf0ZN.svg',NULL,'20');
INSERT INTO `products` VALUES ('16209',NULL,NULL,'Fanta 200 ml Cam','fanta-200-ml-cam','/uploads/media_68e6a7bcddd0f.jpg','5','8','Fanta 200 ml Cam','<h1 style="padding: 0px; margin-right: 0px; margin-bottom: 5px; margin-left: 0px; font-weight: 400; line-height: normal; font-size: 1.15em; word-break: break-word; color: rgb(56, 56, 56); font-family: Roboto, &quot;Helvetica Neue&quot;, sans-serif;">Fanta 200 ml Cam</h1>','30','0',NULL,NULL,'125',NULL,NULL,NULL,'1','1','2025-10-08 18:04:44','2025-10-16 13:58:42','qrcodes/UddwtdQuQqWQb3gW.svg',NULL,'21');
INSERT INTO `products` VALUES ('16210',NULL,NULL,'Fanta Kutu 330 ml','fanta-kutu-330-ml','/uploads/media_68eb7c7291188.png','5','8','Fanta Kutu 330 ml','<p>Fanta Kutu 330 ml</p>','50','0',NULL,NULL,'126',NULL,NULL,NULL,'1','1','2025-10-08 18:06:29','2025-10-16 13:58:42','qrcodes/EWLqs8Y0Bct4df8B.svg',NULL,'22');
INSERT INTO `products` VALUES ('16211',NULL,NULL,'Sprite 330 Ml Kutu','sprite-330-ml-kutu','/uploads/media_68eb7d8de3ad3.png','5','8','Sprite 330 Ml Kutu','<ul style="margin: 5px 10px; padding: 5px 10px; border: 0px; outline: 0px; list-style: none; font-family: Roboto, Arial, "Helvetica Neue", sans-serif; font-size: 16px; text-wrap-mode: nowrap;"><li style="margin: 0px 9px 0px -10px; padding: 0px; border: 0px; outline: 0px; display: inline-block; line-height: 26px; position: relative;"><a href="https://shop.efeskurumsal.com/urun/sprite-330-ml-kutu-24-lu-paket-1234.html" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; color: rgb(17, 17, 17); letter-spacing: -1px;">Sprite 330 Ml Kutu??</a></li></ul>','40','0',NULL,NULL,'128',NULL,NULL,NULL,'1','1','2025-10-08 18:08:51','2025-10-16 13:58:42','qrcodes/AX8VImJV5AZti3US.svg',NULL,'23');
INSERT INTO `products` VALUES ('16212',NULL,NULL,'Fuse Tea Karpuz Aromalı İçecek Soğuk Çay 330 Ml','fuse-tea-karpuz-aromali-icecek-soguk-cay-330-ml','/uploads/media_68e6aea584216.jpg','5','8','Fuse Tea karpuz aromalı soğuk çay 330 ml','<h1 class="product-title" data-testid="product-title" data-drroot="h1" style="margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-weight: 400; font-stretch: inherit; font-family: &quot;Source Sans 3&quot;, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; text-overflow: ellipsis; -webkit-line-clamp: 2; white-space-collapse: preserve; word-break: break-word; -webkit-box-orient: vertical; display: -webkit-box; overflow: hidden; color: rgb(51, 51, 51); font-size: 20px !important; line-height: 26px !important;"><a href="https://www.trendyol.com/fuse-tea-x-b111172" class="product-title-brand-name-anchor" style="font-family: source_sans_proregular, sans-serif; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; color: rgb(51, 51, 51); cursor: pointer;"><span style="font-weight: bolder; margin: 0px; padding: 0px; border: 0px; font-variant: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;">Fuse Tea</span></a> Karpuz Aromalı İçecek Soğuk Çay 330 Ml </h1>','40','0',NULL,NULL,'127',NULL,NULL,NULL,'1','1','2025-10-08 18:34:13','2026-08-11 21:54:24','qrcodes/0KlNI0p2Dp9Z2nkh.svg',NULL,'24');
INSERT INTO `products` VALUES ('16213',NULL,NULL,'Fuse Tea Şeftali Kutu 330ml','fuse-tea-seftali-kutu-330ml','/uploads/media_68e6af64e06e2.jpg','5','8','Fuse Tea şeftali kutu 330 ml','<h1 class="title page-title" style="text-align: justify; margin-right: 0px; margin-bottom: 0px; line-height: 1.1; position: relative; padding: 50px 20px 25px; overflow: visible; text-overflow: initial; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; margin-left: 25px;"><font face="Poppins"><span style="font-size: 30px;">Fuse Tea Şeftali Kutu 330ml</span></font></h1>','40','0',NULL,NULL,'127',NULL,NULL,NULL,'1','1','2025-10-08 18:37:24','2026-08-11 21:54:24','qrcodes/1Z4X9wvH7bnhVXXX.svg',NULL,'25');
INSERT INTO `products` VALUES ('16214',NULL,NULL,'Fusetea Mango-Pineapple 330 ml','fusetea-mango-pineapple-330-ml','/uploads/media_68e6affb5741d.jpg','5','8','Fusetea Mango-Pineapple 330 ml','<h1 class="card_p__text-title details_name" itemprop="name" data-id="2846" style="margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 32px; line-height: 1.25; color: rgb(34, 34, 34); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;;">Fusetea Mango-Pineapple 330 ml</h1>','40','0',NULL,NULL,'128',NULL,NULL,NULL,'1','1','2025-10-08 18:39:55','2025-10-16 13:58:42','qrcodes/rStSyvpo6nOKicVa.svg',NULL,'26');
INSERT INTO `products` VALUES ('16215',NULL,NULL,'Kınık Doğal Soda Maden Suyu 200 ml','kinik-dogal-soda-maden-suyu-200-ml','/uploads/media_68e6b0c6833e5.jpg','5','8','Kınık doğal soda maden suyu 200 ml','<p><span style="color: rgb(33, 33, 33); font-family: -apple-system, BlinkMacSystemFont, Arial, Roboto, Oxygen, Ubuntu, Cantarell, &quot;Fira Sans&quot;, &quot;Droid Sans&quot;, &quot;Helvetica Neue&quot;, sans-serif; font-size: 18px; font-weight: 600;">Kınık Doğal Soda Maden Suyu 200 ml&nbsp;</span></p>','25','0',NULL,NULL,'130',NULL,NULL,NULL,'1','1','2025-10-08 18:43:18','2026-08-11 21:54:24','qrcodes/j8BOHKHmpsIn8q98.svg',NULL,'27');
INSERT INTO `products` VALUES ('16216',NULL,NULL,'Özkaynak 0,5 pet su','ozkaynak-05-pet-su','/uploads/media_68e6b2c2b2196.jpg','5','8','Özkaynak 0,5 L pet su','<p>Özkaynak 0,5 pet su</p>','15','0',NULL,NULL,'131',NULL,NULL,NULL,'1','1','2025-10-08 18:51:46','2026-08-11 21:54:24','qrcodes/Gvgj72ylaoAPkWfr.svg',NULL,'28');
INSERT INTO `products` VALUES ('16217',NULL,NULL,'Margherita Pizza','margherita-pizza','/uploads/media_68eb708cd5166.jpg','8','1','Klasik domates ve mozzarella','En sevilen klasik pizza tarifi','300','0',NULL,NULL,'100',NULL,NULL,NULL,'1','1','2025-10-12 08:34:22','2025-10-12 09:10:36','qrcodes/V4242rGTv8taEPHK.svg',NULL,'29');
INSERT INTO `products` VALUES ('16218',NULL,NULL,'Pepperoni Pizza','pepperoni-pizza','/uploads/media_68eb705437897.jpg','8','1','Acı sevenler için ideal','Acı severler için ideal','300','0',NULL,NULL,'100',NULL,NULL,NULL,'1','1','2025-10-12 08:34:22','2026-08-11 21:54:24','qrcodes/6cCGcZlPsH5pNxaS.svg',NULL,'30');
INSERT INTO `products` VALUES ('16221',NULL,NULL,'Adana Kebap','adana-kebap-demo','/uploads/media_68e1742a0c182.jpg','1','2','Adana Kebap','Adana Kebap','213','0',NULL,NULL,'50',NULL,NULL,NULL,'0','1','2026-08-11 17:07:11','2026-08-11 17:07:11',NULL,NULL,'31');
INSERT INTO `products` VALUES ('16222',NULL,NULL,'Urfa Kebap','urfa-kebap-demo','/uploads/media_68e1742a0c182.jpg','1','2','Urfa Kebap','Urfa Kebap','127','0',NULL,NULL,'50',NULL,NULL,NULL,'0','1','2026-08-11 17:07:11','2026-08-11 17:07:11',NULL,NULL,'32');
INSERT INTO `products` VALUES ('16223',NULL,NULL,'Lahmacun','lahmacun-demo','/uploads/media_68e1742a0c182.jpg','4','2','Lahmacun','Lahmacun','219','0',NULL,NULL,'50',NULL,NULL,NULL,'0','1','2026-08-11 17:07:11','2026-08-11 17:07:11',NULL,NULL,'33');
INSERT INTO `products` VALUES ('16224',NULL,NULL,'Salmon Roll','salmon-roll-demo','/uploads/media_68e1742a0c182.jpg','1','4','Salmon Roll','Salmon Roll','189','0',NULL,NULL,'50',NULL,NULL,NULL,'0','1','2026-08-11 17:07:11','2026-08-11 17:07:11',NULL,NULL,'34');
INSERT INTO `products` VALUES ('16225',NULL,NULL,'California Roll','california-roll-demo','/uploads/media_68e1742a0c182.jpg','1','4','California Roll','California Roll','192','0',NULL,NULL,'50',NULL,NULL,NULL,'0','1','2026-08-11 17:07:11','2026-08-11 17:07:11',NULL,NULL,'35');
INSERT INTO `products` VALUES ('16226',NULL,NULL,'Acılı Çiğköfte','acili-cigkofte-demo','/uploads/media_68e1742a0c182.jpg','4','7','Acılı Çiğköfte','Acılı Çiğköfte','140','0',NULL,NULL,'50',NULL,NULL,NULL,'0','1','2026-08-11 17:07:11','2026-08-11 17:07:11',NULL,NULL,'36');
INSERT INTO `products` VALUES ('16227',NULL,NULL,'Acısız Çiğköfte','acisiz-cigkofte-demo','/uploads/media_68e1742a0c182.jpg','4','7','Acısız Çiğköfte','Acısız Çiğköfte','133','0',NULL,NULL,'50',NULL,NULL,NULL,'0','1','2026-08-11 17:07:11','2026-08-11 17:07:11',NULL,NULL,'37');
INSERT INTO `products` VALUES ('16228',NULL,NULL,'Sütlaç','sutlac-demo-2','/uploads/media_68e1742a0c182.jpg','6','5','Sütlaç','Sütlaç','146','0',NULL,NULL,'50',NULL,NULL,NULL,'0','1','2026-08-11 17:07:11','2026-08-11 17:07:11',NULL,NULL,'38');
INSERT INTO `products` VALUES ('16229',NULL,NULL,'Cheeseburger','cheeseburger-demo','/uploads/media_68e1742a0c182.jpg','4','3','Cheeseburger','Cheeseburger','150','0',NULL,NULL,'50',NULL,NULL,NULL,'0','1','2026-08-11 17:07:11','2026-08-11 17:07:11',NULL,NULL,'39');

DROP TABLE IF EXISTS `push_subscriptions`;
CREATE TABLE `push_subscriptions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `endpoint` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `endpoint_hash` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `p256dh` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `auth` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `push_subscriptions_endpoint_hash_unique` (`endpoint_hash`),
  KEY `push_subscriptions_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `reservation_times`;
CREATE TABLE `reservation_times` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `start_time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `reservation_times` VALUES ('1','9:00 AM','10:00 AM','1','2023-09-20 01:57:30','2023-09-20 01:57:30');
INSERT INTO `reservation_times` VALUES ('2','11:00 AM','12:00 AM','1','2023-09-20 01:57:54','2023-09-20 01:57:54');
INSERT INTO `reservation_times` VALUES ('3','1:00 PM','2:00 PM','1','2023-09-20 01:58:15','2023-09-20 01:58:15');
INSERT INTO `reservation_times` VALUES ('4','3:00 PM','4:00 PM','1','2023-09-20 01:58:26','2023-09-20 01:58:26');
INSERT INTO `reservation_times` VALUES ('5','5:00 PM','6:00 PM','1','2023-09-20 01:58:37','2023-09-20 01:58:37');
INSERT INTO `reservation_times` VALUES ('6','2:00 PM','3:00 PM','1',NULL,NULL);
INSERT INTO `reservation_times` VALUES ('7','3:00 PM','4:00 PM','1',NULL,NULL);
INSERT INTO `reservation_times` VALUES ('8','4:00 PM','5:00 PM','1',NULL,NULL);
INSERT INTO `reservation_times` VALUES ('9','5:00 PM','6:00 PM','1',NULL,NULL);
INSERT INTO `reservation_times` VALUES ('10','6:00 PM','7:00 PM','1',NULL,NULL);
INSERT INTO `reservation_times` VALUES ('11','7:00 PM','8:00 PM','1',NULL,NULL);
INSERT INTO `reservation_times` VALUES ('12','8:00 PM','9:00 PM','1',NULL,NULL);
INSERT INTO `reservation_times` VALUES ('13','9:00 PM','10:00 PM','1',NULL,NULL);
INSERT INTO `reservation_times` VALUES ('14','10:00 PM','11:00 PM','1',NULL,NULL);

DROP TABLE IF EXISTS `reservations`;
CREATE TABLE `reservations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `reservation_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `persons` int NOT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `reservations` VALUES ('3','173173','1','Admin','05337155802','2024-11-01','9:00 AM-10:00 AM','2','approved','2024-11-01 16:52:37','2024-11-01 16:53:32');
INSERT INTO `reservations` VALUES ('8','346796','1','Sayman','05554151223','2025-01-31','9:00 AM-10:00 AM','4','approved','2025-01-30 12:03:30','2025-01-30 12:35:08');

DROP TABLE IF EXISTS `restaurant_applications`;
CREATE TABLE `restaurant_applications` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `restaurant_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `district` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cuisine` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `restaurant_id` bigint unsigned DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `restaurant_applications_restaurant_id_foreign` (`restaurant_id`),
  KEY `restaurant_applications_user_id_foreign` (`user_id`),
  CONSTRAINT `restaurant_applications_restaurant_id_foreign` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurants` (`id`) ON DELETE SET NULL,
  CONSTRAINT `restaurant_applications_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `restaurant_favorites`;
CREATE TABLE `restaurant_favorites` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `restaurant_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `restaurant_favorites_user_id_restaurant_id_unique` (`user_id`,`restaurant_id`),
  KEY `restaurant_favorites_restaurant_id_foreign` (`restaurant_id`),
  CONSTRAINT `restaurant_favorites_restaurant_id_foreign` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurants` (`id`) ON DELETE CASCADE,
  CONSTRAINT `restaurant_favorites_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `restaurant_ratings`;
CREATE TABLE `restaurant_ratings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `restaurant_id` bigint unsigned NOT NULL,
  `order_id` bigint unsigned DEFAULT NULL,
  `rating` tinyint unsigned NOT NULL,
  `review` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `restaurant_ratings_user_id_foreign` (`user_id`),
  KEY `restaurant_ratings_restaurant_id_foreign` (`restaurant_id`),
  KEY `restaurant_ratings_order_id_foreign` (`order_id`),
  CONSTRAINT `restaurant_ratings_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE SET NULL,
  CONSTRAINT `restaurant_ratings_restaurant_id_foreign` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurants` (`id`) ON DELETE CASCADE,
  CONSTRAINT `restaurant_ratings_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `restaurant_ratings` VALUES ('1','38','5',NULL,'5',NULL,'1','2026-08-16 20:24:33','2026-08-16 20:24:33');

DROP TABLE IF EXISTS `restaurant_tables`;
CREATE TABLE `restaurant_tables` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `restaurant_id` bigint unsigned DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `capacity` int unsigned DEFAULT NULL,
  `status` enum('available','occupied') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'available',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `restaurant_tables_restaurant_id_foreign` (`restaurant_id`),
  CONSTRAINT `restaurant_tables_restaurant_id_foreign` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurants` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `restaurant_tables` VALUES ('1',NULL,'Masa 1',NULL,'occupied','2025-09-29 19:41:14','2025-11-14 20:34:19');
INSERT INTO `restaurant_tables` VALUES ('2',NULL,'Masa 2',NULL,'available','2025-09-29 19:41:14','2025-10-13 10:26:04');
INSERT INTO `restaurant_tables` VALUES ('3',NULL,'Masa 3',NULL,'available','2025-09-29 19:41:14','2025-10-09 17:50:14');
INSERT INTO `restaurant_tables` VALUES ('4',NULL,'Masa 4',NULL,'available','2025-09-29 19:41:14','2025-10-09 17:50:14');
INSERT INTO `restaurant_tables` VALUES ('5',NULL,'Masa 5',NULL,'available','2025-09-29 19:41:14','2025-10-09 17:50:14');
INSERT INTO `restaurant_tables` VALUES ('6',NULL,'Masa 6',NULL,'available','2025-09-29 19:41:14','2025-09-29 19:41:14');
INSERT INTO `restaurant_tables` VALUES ('7',NULL,'Masa 7',NULL,'available','2025-09-29 19:41:14','2025-09-29 19:41:14');
INSERT INTO `restaurant_tables` VALUES ('8',NULL,'Masa 8',NULL,'available','2025-09-29 19:41:14','2025-09-29 19:41:14');
INSERT INTO `restaurant_tables` VALUES ('9',NULL,'Masa 9',NULL,'available','2025-09-29 19:41:14','2025-09-29 19:41:14');
INSERT INTO `restaurant_tables` VALUES ('10',NULL,'Masa 10',NULL,'available','2025-09-29 19:41:14','2025-09-29 19:41:14');

DROP TABLE IF EXISTS `restaurant_working_hours`;
CREATE TABLE `restaurant_working_hours` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `restaurant_id` bigint unsigned NOT NULL,
  `day_of_week` tinyint unsigned NOT NULL,
  `open_time` time DEFAULT NULL,
  `close_time` time DEFAULT NULL,
  `is_closed` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `restaurant_working_hours_restaurant_id_day_of_week_unique` (`restaurant_id`,`day_of_week`),
  CONSTRAINT `restaurant_working_hours_restaurant_id_foreign` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurants` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `restaurant_working_hours` VALUES ('1','7','0','00:00:00','23:59:00','0','2026-08-11 22:53:28','2026-08-11 22:53:28');
INSERT INTO `restaurant_working_hours` VALUES ('2','7','1','00:00:00','23:59:00','0','2026-08-11 22:53:28','2026-08-11 22:53:28');
INSERT INTO `restaurant_working_hours` VALUES ('3','7','2','00:00:00','23:59:00','0','2026-08-11 22:53:28','2026-08-11 22:53:28');
INSERT INTO `restaurant_working_hours` VALUES ('4','7','3','00:00:00','23:59:00','0','2026-08-11 22:53:28','2026-08-11 22:53:28');
INSERT INTO `restaurant_working_hours` VALUES ('5','7','4','00:00:00','23:59:00','0','2026-08-11 22:53:28','2026-08-11 22:53:28');
INSERT INTO `restaurant_working_hours` VALUES ('6','7','5','00:00:00','23:59:00','0','2026-08-11 22:53:28','2026-08-11 22:53:28');
INSERT INTO `restaurant_working_hours` VALUES ('7','7','6','00:00:00','23:59:00','0','2026-08-11 22:53:28','2026-08-11 22:53:28');
INSERT INTO `restaurant_working_hours` VALUES ('8','3','0','00:00:00','23:59:00','0','2026-08-11 22:53:28','2026-08-11 22:53:28');
INSERT INTO `restaurant_working_hours` VALUES ('9','3','1','00:00:00','23:59:00','0','2026-08-11 22:53:28','2026-08-11 22:53:28');
INSERT INTO `restaurant_working_hours` VALUES ('10','3','2','00:00:00','23:59:00','0','2026-08-11 22:53:28','2026-08-11 22:53:28');
INSERT INTO `restaurant_working_hours` VALUES ('11','3','3','00:00:00','23:59:00','0','2026-08-11 22:53:28','2026-08-11 22:53:28');
INSERT INTO `restaurant_working_hours` VALUES ('12','3','4','00:00:00','23:59:00','0','2026-08-11 22:53:28','2026-08-11 22:53:28');
INSERT INTO `restaurant_working_hours` VALUES ('13','3','5','00:00:00','23:59:00','0','2026-08-11 22:53:28','2026-08-11 22:53:28');
INSERT INTO `restaurant_working_hours` VALUES ('14','3','6','00:00:00','23:59:00','0','2026-08-11 22:53:28','2026-08-11 22:53:28');
INSERT INTO `restaurant_working_hours` VALUES ('15','6','0','00:00:00','23:59:00','0','2026-08-11 22:53:28','2026-08-11 22:53:28');
INSERT INTO `restaurant_working_hours` VALUES ('16','6','1','00:00:00','23:59:00','0','2026-08-11 22:53:28','2026-08-11 22:53:28');
INSERT INTO `restaurant_working_hours` VALUES ('17','6','2','00:00:00','23:59:00','0','2026-08-11 22:53:28','2026-08-11 22:53:28');
INSERT INTO `restaurant_working_hours` VALUES ('18','6','3','00:00:00','23:59:00','0','2026-08-11 22:53:28','2026-08-11 22:53:28');
INSERT INTO `restaurant_working_hours` VALUES ('19','6','4','00:00:00','23:59:00','0','2026-08-11 22:53:28','2026-08-11 22:53:28');
INSERT INTO `restaurant_working_hours` VALUES ('20','6','5','00:00:00','23:59:00','0','2026-08-11 22:53:28','2026-08-11 22:53:28');
INSERT INTO `restaurant_working_hours` VALUES ('21','6','6','00:00:00','23:59:00','0','2026-08-11 22:53:28','2026-08-11 22:53:28');
INSERT INTO `restaurant_working_hours` VALUES ('22','1','0','00:00:00','23:59:00','0','2026-08-11 22:53:28','2026-08-11 22:53:28');
INSERT INTO `restaurant_working_hours` VALUES ('23','1','1','00:00:00','23:59:00','0','2026-08-11 22:53:28','2026-08-11 22:53:28');
INSERT INTO `restaurant_working_hours` VALUES ('24','1','2','00:00:00','23:59:00','0','2026-08-11 22:53:28','2026-08-11 22:53:28');
INSERT INTO `restaurant_working_hours` VALUES ('25','1','3','00:00:00','23:59:00','0','2026-08-11 22:53:28','2026-08-11 22:53:28');
INSERT INTO `restaurant_working_hours` VALUES ('26','1','4','00:00:00','23:59:00','0','2026-08-11 22:53:28','2026-08-11 22:53:28');
INSERT INTO `restaurant_working_hours` VALUES ('27','1','5','00:00:00','23:59:00','0','2026-08-11 22:53:28','2026-08-11 22:53:28');
INSERT INTO `restaurant_working_hours` VALUES ('28','1','6','00:00:00','23:59:00','0','2026-08-11 22:53:28','2026-08-11 22:53:28');
INSERT INTO `restaurant_working_hours` VALUES ('29','8','0','00:00:00','23:59:00','0','2026-08-11 22:53:28','2026-08-11 22:53:28');
INSERT INTO `restaurant_working_hours` VALUES ('30','8','1','00:00:00','23:59:00','0','2026-08-11 22:53:28','2026-08-11 22:53:28');
INSERT INTO `restaurant_working_hours` VALUES ('31','8','2','00:00:00','23:59:00','0','2026-08-11 22:53:28','2026-08-11 22:53:28');
INSERT INTO `restaurant_working_hours` VALUES ('32','8','3','00:00:00','23:59:00','0','2026-08-11 22:53:28','2026-08-11 22:53:28');
INSERT INTO `restaurant_working_hours` VALUES ('33','8','4','00:00:00','23:59:00','0','2026-08-11 22:53:28','2026-08-11 22:53:28');
INSERT INTO `restaurant_working_hours` VALUES ('34','8','5','00:00:00','23:59:00','0','2026-08-11 22:53:28','2026-08-11 22:53:28');
INSERT INTO `restaurant_working_hours` VALUES ('35','8','6','00:00:00','23:59:00','0','2026-08-11 22:53:28','2026-08-11 22:53:28');
INSERT INTO `restaurant_working_hours` VALUES ('36','2','0','00:00:00','23:59:00','0','2026-08-11 22:53:28','2026-08-11 22:53:28');
INSERT INTO `restaurant_working_hours` VALUES ('37','2','1','00:00:00','23:59:00','0','2026-08-11 22:53:28','2026-08-11 22:53:28');
INSERT INTO `restaurant_working_hours` VALUES ('38','2','2','00:00:00','23:59:00','0','2026-08-11 22:53:28','2026-08-11 22:53:28');
INSERT INTO `restaurant_working_hours` VALUES ('39','2','3','00:00:00','23:59:00','0','2026-08-11 22:53:28','2026-08-11 22:53:28');
INSERT INTO `restaurant_working_hours` VALUES ('40','2','4','00:00:00','23:59:00','0','2026-08-11 22:53:28','2026-08-11 22:53:28');
INSERT INTO `restaurant_working_hours` VALUES ('41','2','5','00:00:00','23:59:00','0','2026-08-11 22:53:28','2026-08-11 22:53:28');
INSERT INTO `restaurant_working_hours` VALUES ('42','2','6','00:00:00','23:59:00','0','2026-08-11 22:53:28','2026-08-11 22:53:28');
INSERT INTO `restaurant_working_hours` VALUES ('43','4','0','00:00:00','23:59:00','0','2026-08-11 22:53:28','2026-08-11 22:53:28');
INSERT INTO `restaurant_working_hours` VALUES ('44','4','1','00:00:00','23:59:00','0','2026-08-11 22:53:28','2026-08-11 22:53:28');
INSERT INTO `restaurant_working_hours` VALUES ('45','4','2','00:00:00','23:59:00','0','2026-08-11 22:53:28','2026-08-11 22:53:28');
INSERT INTO `restaurant_working_hours` VALUES ('46','4','3','00:00:00','23:59:00','0','2026-08-11 22:53:28','2026-08-11 22:53:28');
INSERT INTO `restaurant_working_hours` VALUES ('47','4','4','00:00:00','23:59:00','0','2026-08-11 22:53:28','2026-08-11 22:53:28');
INSERT INTO `restaurant_working_hours` VALUES ('48','4','5','00:00:00','23:59:00','0','2026-08-11 22:53:28','2026-08-11 22:53:28');
INSERT INTO `restaurant_working_hours` VALUES ('49','4','6','00:00:00','23:59:00','0','2026-08-11 22:53:28','2026-08-11 22:53:28');
INSERT INTO `restaurant_working_hours` VALUES ('50','5','0','00:00:00','23:59:00','0','2026-08-11 22:53:28','2026-08-11 22:53:28');
INSERT INTO `restaurant_working_hours` VALUES ('51','5','1','00:00:00','23:59:00','0','2026-08-11 22:53:28','2026-08-11 22:53:28');
INSERT INTO `restaurant_working_hours` VALUES ('52','5','2','00:00:00','23:59:00','0','2026-08-11 22:53:28','2026-08-11 22:53:28');
INSERT INTO `restaurant_working_hours` VALUES ('53','5','3','00:00:00','23:59:00','0','2026-08-11 22:53:28','2026-08-11 22:53:28');
INSERT INTO `restaurant_working_hours` VALUES ('54','5','4','00:00:00','23:59:00','0','2026-08-11 22:53:28','2026-08-11 22:53:28');
INSERT INTO `restaurant_working_hours` VALUES ('55','5','5','00:00:00','23:59:00','0','2026-08-11 22:53:28','2026-08-11 22:53:28');
INSERT INTO `restaurant_working_hours` VALUES ('56','5','6','00:00:00','23:59:00','0','2026-08-11 22:53:28','2026-08-11 22:53:28');

DROP TABLE IF EXISTS `restaurants`;
CREATE TABLE `restaurants` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cuisine` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lat` decimal(10,7) DEFAULT NULL,
  `lng` decimal(10,7) DEFAULT NULL,
  `delivery_radius_km` tinyint unsigned NOT NULL DEFAULT '8',
  `cover` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rating` decimal(3,1) NOT NULL DEFAULT '4.5',
  `review_count` int unsigned NOT NULL DEFAULT '0',
  `delivery_time_min` int unsigned NOT NULL DEFAULT '25',
  `delivery_time_max` int unsigned NOT NULL DEFAULT '40',
  `min_order` decimal(10,2) NOT NULL DEFAULT '0.00',
  `delivery_fee` decimal(10,2) NOT NULL DEFAULT '0.00',
  `fee_per_km` decimal(8,2) NOT NULL DEFAULT '5.00',
  `base_delivery_fee` decimal(8,2) DEFAULT NULL,
  `commission_rate` decimal(5,2) NOT NULL DEFAULT '15.00',
  `is_open` tinyint(1) NOT NULL DEFAULT '1',
  `auto_schedule` tinyint(1) NOT NULL DEFAULT '1',
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `user_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_busy` tinyint(1) NOT NULL DEFAULT '0',
  `prep_time_min` smallint unsigned NOT NULL DEFAULT '25',
  `iban` varchar(34) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `iban_name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uses_own_courier` tinyint(1) NOT NULL DEFAULT '0',
  `listing_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  PRIMARY KEY (`id`),
  UNIQUE KEY `restaurants_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `restaurants` VALUES ('1','Harbi Pizza','harbi-pizza','Pizza','Odun fırınında pişen İtalyan usulü pizzalar.','0532 000 00 00','Çiftlikköy Merkez','41.4056000','27.3552000','8','https://images.unsplash.com/photo-1513104890138-7c749659a591?w=800&q=80','https://images.unsplash.com/photo-1590947132387-155cc02f3212?w=200&q=80','4.8','312','25','40','120.00','25.00','5.00','25.00','15.00','1','0','1','37','2026-08-11 16:59:15','2026-08-11 17:56:46','0','25',NULL,NULL,'0','active');
INSERT INTO `restaurants` VALUES ('2','Kebap Evi','kebap-evi','Kebap','Közde pişmiş kebap ve ızgara çeşitleri.','0532 000 00 00','Lüleburgaz','41.4056000','27.3552000','8','https://images.unsplash.com/photo-1529006557810-274b9b2fc783?w=800&q=80','https://images.unsplash.com/photo-1603360946369-dc9bb6258143?w=200&q=80','4.6','198','30','45','150.00','30.00','5.00','30.00','15.00','1','0','1',NULL,'2026-08-11 16:59:15','2026-08-11 16:59:15','0','25',NULL,NULL,'0','active');
INSERT INTO `restaurants` VALUES ('3','Deniz Burger','deniz-burger','Burger','El yapımı burgerler ve patates.','0532 000 00 00','Çiftlikköy','41.4056000','27.3552000','8','https://images.unsplash.com/photo-1568901346375-23c9450c58cd?w=800&q=80','https://images.unsplash.com/photo-1550547660-d9450f859349?w=200&q=80','4.7','256','20','35','100.00','20.00','5.00','20.00','15.00','1','0','1',NULL,'2026-08-11 16:59:15','2026-08-11 16:59:15','0','25',NULL,NULL,'0','active');
INSERT INTO `restaurants` VALUES ('4','Sushi House','sushi-house','Sushi','Taze sushi ve Japon lezzetleri.','0532 000 00 00','Merkez','41.4056000','27.3552000','8','https://images.unsplash.com/photo-1579871494447-9811cf80d66d?w=800&q=80','https://images.unsplash.com/photo-1617196034796-73dfa7b1fd56?w=200&q=80','4.5','87','35','50','200.00','35.00','5.00','35.00','15.00','1','0','1',NULL,'2026-08-11 16:59:15','2026-08-11 16:59:15','0','25',NULL,NULL,'0','active');
INSERT INTO `restaurants` VALUES ('5','Tatlı Kasası','tatli-kasasi','Tatlı','Ev yapımı tatlılar ve dondurma.','0532 000 00 00','Çiftlikköy','41.4056000','27.3552000','8','https://images.unsplash.com/photo-1488477181946-6428a0291777?w=800&q=80','https://images.unsplash.com/photo-1563805042-7684c019e1cb?w=200&q=80','5.0','1','15','30','80.00','15.00','5.00','15.00','15.00','1','0','1',NULL,'2026-08-11 16:59:15','2026-08-16 20:24:33','0','25',NULL,NULL,'0','active');
INSERT INTO `restaurants` VALUES ('6','Ev Yemekleri','ev-yemekleri','Ev Yemeği','Günlük taze ev yemekleri.','0532 000 00 00','Lüleburgaz','41.4056000','27.3552000','8','https://images.unsplash.com/photo-1546069901-ba9599a7e63c?w=800&q=80','https://images.unsplash.com/photo-1512621776951-a57141f2eefd?w=200&q=80','4.4','143','30','50','90.00','20.00','5.00','20.00','15.00','1','0','1',NULL,'2026-08-11 16:59:15','2026-08-11 16:59:15','0','25',NULL,NULL,'0','active');
INSERT INTO `restaurants` VALUES ('7','Çiğköfte Express','cigkofte-express','Çiğköfte','Acılı ve acısız çiğköfte menüleri.','0532 000 00 00','Merkez','41.4056000','27.3552000','8','https://images.unsplash.com/photo-1626082927389-6cd097cdc6ec?w=800&q=80','https://images.unsplash.com/photo-1604908176997-125f25cc6f3d?w=200&q=80','4.3','76','20','30','70.00','15.00','5.00','15.00','15.00','1','0','1',NULL,'2026-08-11 16:59:15','2026-08-11 16:59:15','0','25',NULL,NULL,'0','active');
INSERT INTO `restaurants` VALUES ('8','Kahve & Atıştırmalık','kahve-atistirmalik','Kahvaltı','Kahvaltı tabağı, kahve ve sandviç.','0532 000 00 00','Çiftlikköy','41.4056000','27.3552000','8','https://images.unsplash.com/photo-1495474472287-4d71bcdd2085?w=800&q=80','https://images.unsplash.com/photo-1509042239860-f550ce710b93?w=200&q=80','4.6','109','20','35','60.00','18.00','5.00','18.00','15.00','0','0','1',NULL,'2026-08-11 16:59:15','2026-08-11 16:59:15','0','25',NULL,NULL,'0','active');

DROP TABLE IF EXISTS `satistemsilcis`;
CREATE TABLE `satistemsilcis` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `satistemsilciKodu` varchar(20) NOT NULL,
  `satistemsilciAdi` varchar(255) NOT NULL,
  `email` varchar(31) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3;

INSERT INTO `satistemsilcis` VALUES ('1','10','SELAHATT??N KE????C?? AKARYAKIT','','2021-06-18 12:21:24','2021-06-18 12:21:24');
INSERT INTO `satistemsilcis` VALUES ('2','20','CEM??LSEVER MARKET','','2021-06-18 12:21:39','2021-06-18 12:21:39');
INSERT INTO `satistemsilcis` VALUES ('3','30','VOLKAN BOYACI TOPTAN','','2021-06-18 12:21:53','2021-06-18 12:21:53');
INSERT INTO `satistemsilcis` VALUES ('4','40','EROLKE????C?? MERKEZ DEPO','','2021-06-18 12:22:12','2021-06-18 12:22:12');
INSERT INTO `satistemsilcis` VALUES ('5','50','TAYFUN B??LG??SAYAR','','2023-11-22 08:30:48','2023-11-22 08:30:48');
INSERT INTO `satistemsilcis` VALUES ('6','60','Tahsin Rodoplu','',NULL,NULL);

DROP TABLE IF EXISTS `section_titles`;
CREATE TABLE `section_titles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `section_titles` VALUES ('4','why_choose_top_title','Neden Bizi Se??melisiniz','2023-07-16 00:04:13','2023-09-02 04:42:34');
INSERT INTO `section_titles` VALUES ('5','why_choose_main_title','G??venli Al????veri??','2023-07-16 00:04:13','2023-09-02 04:42:34');
INSERT INTO `section_titles` VALUES ('6','why_choose_sub_title','Online al????veri??in en ??nemli unsurlar??ndan biri g??vendir. SSL sertifikam??z ve g??venilir ??deme a?? ge??itlerimiz ile ki??isel bilgilerinizin g??venli??ini sa??l??yoruz','2023-07-16 00:05:48','2023-09-02 04:42:34');
INSERT INTO `section_titles` VALUES ('7','daily_offer_top_title','G??nl??k Teklif','2023-09-02 04:41:02','2023-09-02 04:41:02');
INSERT INTO `section_titles` VALUES ('8','daily_offer_main_title','Bug??ne ??zel Kasada indirimli ??r??nler !!','2023-09-02 04:41:02','2023-09-02 04:41:02');
INSERT INTO `section_titles` VALUES ('9','daily_offer_sub_title','','2023-09-02 04:41:02','2023-09-02 04:41:02');
INSERT INTO `section_titles` VALUES ('10','chef_top_title','our team','2023-09-03 22:18:09','2023-09-03 22:18:09');
INSERT INTO `section_titles` VALUES ('11','chef_main_title','meet our expert chefs','2023-09-03 22:18:09','2023-09-03 22:18:09');
INSERT INTO `section_titles` VALUES ('12','chef_sub_title','Objectively pontificate quality models before intuitive information. Dramatically recaptiualize multifunctional materials.','2023-09-03 22:18:09','2023-09-03 22:18:09');
INSERT INTO `section_titles` VALUES ('13','testimonial_top_title','testimonial','2023-09-04 22:24:02','2023-09-04 22:24:02');
INSERT INTO `section_titles` VALUES ('14','testimonial_main_title','our customar feedbacks','2023-09-04 22:24:02','2023-09-04 22:24:02');
INSERT INTO `section_titles` VALUES ('15','testimonial_sub_title','Objectively pontificate quality models before intuitive information. Dramatically recaptiualize multifunctional materials.','2023-09-04 22:24:02','2023-09-04 22:24:02');

DROP TABLE IF EXISTS `settings`;
CREATE TABLE `settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `settings` VALUES ('1','site_name','Harbi Yemek','2023-08-05 04:31:55','2024-04-01 18:21:27');
INSERT INTO `settings` VALUES ('2','site_default_currency','TRY','2023-08-05 04:31:55','2024-04-02 21:00:02');
INSERT INTO `settings` VALUES ('3','site_currency_icon','₺','2023-08-05 04:31:55','2024-04-02 21:27:21');
INSERT INTO `settings` VALUES ('4','site_currency_icon_position','left','2023-08-05 04:31:55','2023-08-06 01:30:18');
INSERT INTO `settings` VALUES ('5','site_delivery_charge','50','2023-08-13 21:43:44','2023-08-13 21:43:44');
INSERT INTO `settings` VALUES ('6','pusher_app_id','1659217','2023-08-26 04:36:34','2023-08-26 04:36:34');
INSERT INTO `settings` VALUES ('7','pusher_key','be9d8c800e229ec729c6','2023-08-26 04:36:34','2023-08-26 04:36:34');
INSERT INTO `settings` VALUES ('8','pusher_secret','52afd25d2a55c3df77e5','2023-08-26 04:36:34','2023-08-26 04:36:34');
INSERT INTO `settings` VALUES ('9','pusher_cluster','mt1','2023-08-26 04:36:34','2023-08-26 04:36:34');
INSERT INTO `settings` VALUES ('10','mail_driver','smtp','2023-09-10 00:35:57','2023-09-10 00:44:34');
INSERT INTO `settings` VALUES ('11','mail_host','sandbox.smtp.mailtrap.io','2023-09-10 00:35:57','2023-09-10 00:44:34');
INSERT INTO `settings` VALUES ('12','mail_port','2525','2023-09-10 00:35:57','2023-09-10 00:44:34');
INSERT INTO `settings` VALUES ('13','mail_username','808ae887829cf7','2023-09-10 00:35:57','2023-09-10 00:44:34');
INSERT INTO `settings` VALUES ('14','mail_password','188d4565252515','2023-09-10 00:35:57','2023-09-10 00:44:34');
INSERT INTO `settings` VALUES ('15','mail_encryption','tls','2023-09-10 00:35:57','2023-09-10 00:44:34');
INSERT INTO `settings` VALUES ('16','mail_from_address','food_park@example.com','2023-09-10 00:35:57','2023-09-10 00:44:34');
INSERT INTO `settings` VALUES ('17','mail_receive_address','support.food_park@example.com','2023-09-10 00:35:57','2023-09-10 00:44:34');
INSERT INTO `settings` VALUES ('18','logo','/uploads/harbi-logo.png','2023-09-17 03:27:14','2025-07-12 17:56:47');
INSERT INTO `settings` VALUES ('19','footer_logo','/uploads/harbi-logo.png','2023-09-17 03:27:14','2023-09-20 00:16:25');
INSERT INTO `settings` VALUES ('20','favicon','/uploads/harbi-favicon.png','2023-09-17 03:27:14','2023-09-20 00:16:25');
INSERT INTO `settings` VALUES ('21','breadcrumb','/uploads/','2023-09-17 03:27:14','2023-09-20 00:16:25');
INSERT INTO `settings` VALUES ('22','site_email','onrdry11@gmail.com','2023-09-17 05:18:32','2025-10-16 14:34:31');
INSERT INTO `settings` VALUES ('23','site_phone','0 544 915 50 02','2023-09-17 05:18:32','2025-10-16 14:18:50');
INSERT INTO `settings` VALUES ('24','site_color','#9c661f','2023-09-17 22:02:41','2025-10-07 20:22:06');
INSERT INTO `settings` VALUES ('25','seo_title','Harbi Yemek | Online Yemek Siparişi','2023-09-17 23:17:55','2024-04-01 18:43:16');
INSERT INTO `settings` VALUES ('26','seo_description','Harbi Yemek ile mahallendeki restoranlardan sipariş ver. Teslimat veya Gel Al.','2023-09-17 23:17:55','2025-09-28 09:01:14');
INSERT INTO `settings` VALUES ('27','seo_keywords','harbi yemek, yemek siparişi, lüleburgaz, pizza, gel al','2023-09-17 23:17:55','2025-09-28 09:01:14');

DROP TABLE IF EXISTS `settlement_payouts`;
CREATE TABLE `settlement_payouts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `party_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `party_id` bigint unsigned NOT NULL,
  `period_from` date NOT NULL,
  `period_to` date NOT NULL,
  `amount` decimal(12,2) NOT NULL DEFAULT '0.00',
  `iban` varchar(34) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `iban_name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `party_name` varchar(160) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paid_by` bigint unsigned DEFAULT NULL,
  `paid_at` timestamp NULL DEFAULT NULL,
  `note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settlement_payouts_unique_period` (`party_type`,`party_id`,`period_from`,`period_to`),
  KEY `settlement_payouts_party_type_party_id_index` (`party_type`,`party_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `sliders`;
CREATE TABLE `sliders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `offer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `button_link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `sliders` VALUES ('1','/uploads/media_68eb7329bcf82.jpg','0','PIZZERIA % 100 Lezzet','Y??zde Mutluluk','Y??zde Hayranl??k','#','1','2023-09-19 22:04:08','2025-10-16 11:45:08');
INSERT INTO `sliders` VALUES ('2','/uploads/media_68eb71fba543f.jpeg','0','PIZZERIA','Pizza, g??da g??venli??i ve kalitesinden ??d??n vermeden, lezzetli, sa??l??kl??  ??r??nler sunar.','PIZZERIA','#','1','2023-09-19 22:05:35','2025-10-16 05:50:56');
INSERT INTO `sliders` VALUES ('3','/uploads/media_672fc86f089d6.jpg',NULL,'Sa??l??kl?? beslenin. Sa??l??kl?? kal??n.','Toptan ve Perakende G??da ve Su Sat??????','T??m ??r??nlerimizin Kalitesi ve Adil fiyat politikas??yla farkl??la??an .??r??nlerimizi G??venilerek Tercih Edebilirisniz..','https://keciciler.com/','0','2023-09-19 22:06:47','2025-07-11 18:26:36');
INSERT INTO `sliders` VALUES ('4','/uploads/statikjpg.jpg','0','KE????C??LER ??N??AAT','Kaba ??n??aat ????leri','??n??aat Projelerinize ????z??m Sunar','https://www.keciciler.com/faliyetalani','0','2024-12-01 14:28:12','2025-10-12 09:19:34');
INSERT INTO `sliders` VALUES ('5','/uploads/ins1.jpg','0','Ke??iciler Ticaret Enerji Petrol ??stasyonunu','Ke??iciler Ticaret Enerji Petrol ??stasyonunu','Ke??iciler Ticaret Enerji Petrol ??stasyonunu','https://www.keciciler.com/contact','0','2025-03-16 20:23:10','2025-10-12 09:19:34');
INSERT INTO `sliders` VALUES ('6','/uploads/media_67d736da1d851.jpg','0','Ke??iciler Ticaret Zahirecilik','Ke??iciler  Zahirecilik','Trakya b??lgesi K??rklareli ??li L??leburgaz il??esinde ??iftlikk??y\'de bulunan i??letmemiz Bu??day - Arpa  - Ay??i??ek  vb. tah??l ??r??nlerinin ??retimini ve ticareti yapmaktad??r..','https://www.keciciler.com/contact','0','2025-03-16 20:38:50','2025-07-11 18:27:05');

DROP TABLE IF EXISTS `social_links`;
CREATE TABLE `social_links` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `social_links` VALUES ('1','fab fa-facebook-f','facebook','https://facebook.com','1','2023-09-19 23:57:42','2023-09-19 23:57:42');
INSERT INTO `social_links` VALUES ('2','fab fa-twitter','Twitter','https://x.com','1','2023-09-19 23:57:59','2023-09-19 23:57:59');
INSERT INTO `social_links` VALUES ('3','fab fa-discord','discord','https://discord.com','1','2023-09-19 23:58:16','2023-09-19 23:58:16');
INSERT INTO `social_links` VALUES ('4','fab fa-linkedin-in','linkedin','https://linkedin.com','1','2023-09-19 23:58:41','2023-09-19 23:58:41');

DROP TABLE IF EXISTS `stokharekets`;
CREATE TABLE `stokharekets` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `faturaId` int NOT NULL,
  `faturaTipi` int NOT NULL DEFAULT '0' COMMENT '0 ise satisFaturas?? , 1 ise alisFaturas??',
  `kalemId` int NOT NULL,
  `urunId` int NOT NULL,
  `depoId` int NOT NULL,
  `satistemsilciId` int NOT NULL,
  `faturaTarih` date NOT NULL,
  `faturaNo` varchar(255) NOT NULL,
  `musteriId` int NOT NULL,
  `urunKodu` int NOT NULL,
  `miktar` int NOT NULL,
  `giris` int NOT NULL,
  `cikis` int NOT NULL,
  `urunBirim` varchar(20) NOT NULL,
  `fiyat` float(9,2) NOT NULL,
  `kdv` int DEFAULT '0',
  `isk1` float(9,2) DEFAULT NULL,
  `iskOrani1tutar` float(9,2) NOT NULL,
  `isk2` float(9,2) DEFAULT NULL,
  `iskOrani2tutar` float(9,2) NOT NULL,
  `isk3` float(9,2) DEFAULT NULL,
  `iskOrani3tutar` float(9,2) NOT NULL,
  `iskonto_toplam` float(9,2) NOT NULL,
  `kdvOrani` int DEFAULT '0',
  `araToplam` float(9,2) NOT NULL,
  `kdvToplam` float(9,2) NOT NULL,
  `genelToplam` float(9,2) NOT NULL,
  `borc` double DEFAULT '0',
  `alacak` double DEFAULT '0',
  `text` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


DROP TABLE IF EXISTS `subscribers`;
CREATE TABLE `subscribers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `terms_and_conditions`;
CREATE TABLE `terms_and_conditions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `testimonials`;
CREATE TABLE `testimonials` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `review` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating` int NOT NULL,
  `show_at_home` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `testimonials` VALUES ('1','/uploads/media_650a83706854b.jpg','sumon mahmud','nyc usa','Lorem ipsum dolor sit amet consectetur adipisicing elit. Aut accusamus praesentium quaerat  nihil magnam a porro eaque numquam','5','1','1','2023-09-19 23:30:24','2023-09-19 23:30:24');
INSERT INTO `testimonials` VALUES ('2','/uploads/media_650a8394a77e6.png','Jhone Deo','nyc usa','Lorem ipsum dolor sit amet consectetur adipisicing elit. Aut accusamus praesentium quaerat  nihil magnam a porro eaque numquam','5','1','1','2023-09-19 23:31:00','2023-09-19 23:31:00');
INSERT INTO `testimonials` VALUES ('3','/uploads/media_650a83c787418.png','Payel Sarkar','nyc usa','Lorem ipsum dolor sit amet consectetur adipisicing elit. Aut accusamus praesentium quaerat  nihil magnam a porro eaque numquam','5','1','1','2023-09-19 23:31:51','2023-09-19 23:31:51');
INSERT INTO `testimonials` VALUES ('4','/uploads/media_650a83ecf1452.png','Deo Jhone','nyc usa','Lorem ipsum dolor sit amet consectetur adipisicing elit. Aut accusamus praesentium quaerat  nihil magnam a porro eaque numquam','5','1','1','2023-09-19 23:32:28','2023-09-19 23:32:28');

DROP TABLE IF EXISTS `trams_and_conditions`;
CREATE TABLE `trams_and_conditions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `trams_and_conditions` VALUES ('1','<h3>Your agreement:</h3>\r\n                        <p><br></p><p></p>','2023-09-20 00:11:54','2025-10-16 14:32:23');

DROP TABLE IF EXISTS `urunbirims`;
CREATE TABLE `urunbirims` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `urunbirimKodu` varchar(50) NOT NULL,
  `urunbirimAdi` varchar(30) NOT NULL,
  `urunbirimUnitType` varchar(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb3;

INSERT INTO `urunbirims` VALUES ('1','1','GUN','DAY','2020-01-31 08:52:28','2021-03-10 14:32:46');
INSERT INTO `urunbirims` VALUES ('2','2','AY','MON','2020-01-31 08:52:28','2020-01-31 08:52:28');
INSERT INTO `urunbirims` VALUES ('3','3','YIL','ANN','2020-01-31 08:52:28','2020-01-31 08:52:28');
INSERT INTO `urunbirims` VALUES ('4','4','SAAT','HUR','2020-01-31 08:52:28','2020-01-31 08:52:28');
INSERT INTO `urunbirims` VALUES ('5','5','DAKIKA','D61','2020-01-31 08:52:28','2020-01-31 08:52:28');
INSERT INTO `urunbirims` VALUES ('6','6','SANIYE','D62','2020-01-31 08:52:28','2020-01-31 08:52:28');
INSERT INTO `urunbirims` VALUES ('7','7','ADET','C62','2020-01-31 08:52:28','2020-01-31 08:52:28');
INSERT INTO `urunbirims` VALUES ('8','8','PAKET','PA','2020-01-31 08:52:28','2020-01-31 08:52:28');
INSERT INTO `urunbirims` VALUES ('9','9','KUTU','BX','2020-01-31 08:52:28','2020-01-31 08:52:28');
INSERT INTO `urunbirims` VALUES ('10','10','MG','MGM','2020-01-31 08:52:28','2020-01-31 08:52:28');
INSERT INTO `urunbirims` VALUES ('11','11','G','GRM','2020-01-31 08:52:28','2020-01-31 08:52:28');
INSERT INTO `urunbirims` VALUES ('12','12','KG','KGM','2020-01-31 08:52:28','2020-01-31 08:52:28');
INSERT INTO `urunbirims` VALUES ('13','13','LT','LTR','2020-01-31 08:52:28','2020-01-31 08:52:28');
INSERT INTO `urunbirims` VALUES ('14','14','TON','TNE','2020-01-31 08:52:28','2020-01-31 08:52:28');
INSERT INTO `urunbirims` VALUES ('15','15','NET_TON','NT','2020-01-31 08:52:28','2020-01-31 08:52:28');
INSERT INTO `urunbirims` VALUES ('16','16','GROSS_TON','GT','2020-01-31 08:52:28','2020-01-31 08:52:28');
INSERT INTO `urunbirims` VALUES ('17','17','MM','MMT','2020-01-31 08:52:28','2020-01-31 08:52:28');
INSERT INTO `urunbirims` VALUES ('18','18','CM','CMT','2020-01-31 08:52:28','2020-01-31 08:52:28');
INSERT INTO `urunbirims` VALUES ('19','19','M','MTR','2020-01-31 08:52:28','2020-01-31 08:52:28');
INSERT INTO `urunbirims` VALUES ('20','20','KM','KTM','2020-01-31 08:52:28','2020-01-31 08:52:28');
INSERT INTO `urunbirims` VALUES ('21','21','ML','MLT','2020-01-31 08:52:28','2020-01-31 08:52:28');
INSERT INTO `urunbirims` VALUES ('22','22','MM3','MMQ','2020-01-31 08:52:28','2020-01-31 08:52:28');
INSERT INTO `urunbirims` VALUES ('23','23','CM2','CMK','2020-01-31 08:52:28','2020-01-31 08:52:28');
INSERT INTO `urunbirims` VALUES ('24','24','CM3','CMQ','2020-01-31 08:52:28','2020-01-31 08:52:28');
INSERT INTO `urunbirims` VALUES ('25','25','M2','MTK','2020-01-31 08:52:28','2020-01-31 08:52:28');
INSERT INTO `urunbirims` VALUES ('26','26','M3','MTQ','2020-01-31 08:52:28','2020-01-31 08:52:28');
INSERT INTO `urunbirims` VALUES ('27','27','KJ','KJO','2020-01-31 08:52:28','2020-01-31 08:52:28');
INSERT INTO `urunbirims` VALUES ('28','28','CL','CLT','2020-01-31 08:52:28','2020-01-31 08:52:28');
INSERT INTO `urunbirims` VALUES ('29','29','KARAT','CT','2020-01-31 08:52:28','2020-01-31 08:52:28');
INSERT INTO `urunbirims` VALUES ('30','30','KWH','KWH','2020-01-31 08:52:28','2020-01-31 08:52:28');
INSERT INTO `urunbirims` VALUES ('31','31','TON_BASINA_TASIMA_KAPASITESI','CCT','2020-01-31 08:52:28','2020-01-31 08:52:28');
INSERT INTO `urunbirims` VALUES ('32','32','BRUT_KALORI','D30','2020-01-31 08:52:28','2020-01-31 08:52:28');
INSERT INTO `urunbirims` VALUES ('33','33','BIN_LT','D40','2020-01-31 08:52:28','2020-01-31 08:52:28');
INSERT INTO `urunbirims` VALUES ('34','34','SAF_ALKOL_LT','LPA','2020-01-31 08:52:28','2020-01-31 08:52:28');
INSERT INTO `urunbirims` VALUES ('35','35','KGM2','B32','2020-01-31 08:52:28','2020-01-31 08:52:28');
INSERT INTO `urunbirims` VALUES ('36','36','HUCRE_AT','NCL','2020-01-31 08:52:28','2020-01-31 08:52:28');
INSERT INTO `urunbirims` VALUES ('37','37','CIFT','PR','2020-01-31 08:52:28','2020-01-31 08:52:28');
INSERT INTO `urunbirims` VALUES ('38','38','BIN_M3','R9','2020-01-31 08:52:28','2020-01-31 08:52:28');
INSERT INTO `urunbirims` VALUES ('39','39','SET','SET','2020-01-31 08:52:28','2020-01-31 08:52:28');
INSERT INTO `urunbirims` VALUES ('40','40','BIN_ADET','T3','2020-01-31 08:52:28','2020-01-31 08:52:28');

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '/uploads/avatar.png',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` enum('user','admin','waiter','courier','restaurant') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `restaurant_id` bigint unsigned DEFAULT NULL,
  `is_blocked` tinyint(1) NOT NULL DEFAULT '0',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `users_restaurant_id_foreign` (`restaurant_id`),
  CONSTRAINT `users_restaurant_id_foreign` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurants` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `users` VALUES ('1','/uploads/media_67365b1395a8b.jpg','Admin','admin@gmail.com','admin',NULL,'0',NULL,'$2y$10$jeLDFdtl4blHA3BXtvLlCeRubMTSYcN8xLcJd5C/HsW4WMxAeo6MS','PEmlJXrtbBjDY2kjZMpZD8P4TZd6vwoTzLgU3yckXU0yPJQbzLRKUo4bcB9T',NULL,'2024-11-14 20:18:27');
INSERT INTO `users` VALUES ('2','/uploads/media_650bce8f34d46.png','User','user@gmail.com','user',NULL,'0',NULL,'$2y$10$jeLDFdtl4blHA3BXtvLlCeRubMTSYcN8xLcJd5C/HsW4WMxAeo6MS',NULL,NULL,'2023-09-20 23:03:11');
INSERT INTO `users` VALUES ('9','/uploads/avatar.png','Onurgarson','onurgarson@gmail.com','waiter',NULL,'0',NULL,'$2y$10$jeLDFdtl4blHA3BXtvLlCeRubMTSYcN8xLcJd5C/HsW4WMxAeo6MS','o4TvW5WIu6UqpuGyIn9750ZSAUeFjiGY8BqSCe6yDZnN5f3zHXhomoPuAbVB','2024-12-27 09:04:16','2024-12-27 09:04:16');
INSERT INTO `users` VALUES ('36','/uploads/avatar.png','Demo Kurye','kurye@harbi.test','courier',NULL,'0',NULL,'$2y$10$jeLDFdtl4blHA3BXtvLlCeRubMTSYcN8xLcJd5C/HsW4WMxAeo6MS','JJux2h0TEIgcdAQu745TEZvVk2tG3WNpOXvlCL0iALXWeYFWWVMlsIAG0n1q','2026-08-11 17:12:38','2026-08-11 17:12:38');
INSERT INTO `users` VALUES ('37','/uploads/avatar.png','Demo Restoran','restoran@harbi.test','restaurant',NULL,'0',NULL,'$2y$10$YPKxGmNjUwJXIPUMbNRb3OYWZhw0Mm1X3Uo5JMrYZZ9xjOQCuVyWK',NULL,'2026-08-11 17:56:46','2026-08-11 17:56:46');
INSERT INTO `users` VALUES ('38','/uploads/avatar.png','er','erol@gmail.com','user',NULL,'0',NULL,'$2y$10$fxt3XG99ZxeNoc05egfnnOeZejgqtXFHlYwLi93AsV4UYpuR9dAU2',NULL,'2026-08-15 21:00:04','2026-08-15 21:00:04');

DROP TABLE IF EXISTS `vat_rates`;
CREATE TABLE `vat_rates` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate` decimal(5,2) NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `sort_order` int unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `vat_rates` VALUES ('1','İndirimli','1.00','0','1','1','2026-08-19 22:01:25','2026-08-19 22:01:25');
INSERT INTO `vat_rates` VALUES ('2','İndirimli (gıda)','10.00','1','1','2','2026-08-19 22:01:25','2026-08-19 22:01:25');
INSERT INTO `vat_rates` VALUES ('3','Genel','20.00','0','1','3','2026-08-19 22:01:25','2026-08-19 22:01:25');

DROP TABLE IF EXISTS `why_choose_us`;
CREATE TABLE `why_choose_us` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `why_choose_us` VALUES ('1','fas fa-percent','??ndirim kuponu','Kaliteden ??d??n vermeden, en rekabet??i fiyatlar?? sunmay?? taahh??t ediyoruz','1','2023-09-19 22:09:14','2024-04-01 17:23:18');
INSERT INTO `why_choose_us` VALUES ('2','fas fa-bullhorn','??r??n ??e??itlili??i ve Kalitesi','M????terilerimizin de??erli oldu??unu biliyor ve b??t??enize uygun, kaliteli al????veri?? deneyimi sa??lamay?? hedefliyoruz','1','2023-09-19 22:10:17','2024-04-01 17:30:15');
INSERT INTO `why_choose_us` VALUES ('3','fas fa-shipping-fast','M????teri Hizmetleri','M????teri memnuniyeti bizim i??in her ??eyden ??nemlidir. Sorular??n??za h??zl?? ve etkili ????z??mler sunarak, iade ve de??i??im s??re??lerimizi m??mk??n olan en sorunsuz ??ekilde y??netiyoruz. Bize her zaman g??venebilirsiniz.','1','2023-09-19 22:10:48','2024-04-01 17:30:45');

DROP TABLE IF EXISTS `wishlists`;
CREATE TABLE `wishlists` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `wishlists_user_id_foreign` (`user_id`),
  KEY `wishlists_product_id_foreign` (`product_id`),
  CONSTRAINT `wishlists_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  CONSTRAINT `wishlists_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `wishlists` VALUES ('3','1','16197','2025-10-16 14:03:23','2025-10-16 14:03:23');

SET FOREIGN_KEY_CHECKS=1;
