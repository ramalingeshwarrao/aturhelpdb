-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: aturhelp
-- ------------------------------------------------------
-- Server version	5.5.44-0ubuntu0.14.04.1

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
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admins` (
  `ser_id` varchar(100) NOT NULL,
  `device_id` varchar(255) NOT NULL,
  `mobile_no` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `request_id` varchar(1000) NOT NULL,
  `name` varchar(200) NOT NULL,
  `id` varchar(30) DEFAULT NULL,
  `is_active` varchar(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admins`
--

LOCK TABLES `admins` WRITE;
/*!40000 ALTER TABLE `admins` DISABLE KEYS */;
INSERT INTO `admins` VALUES ('SER_PGRL_PARIMALA','354098051465694','7799437562','parimalabroadband.services@gmail.com','APA91bFBZ7zVtwkJDgOk6ZDR4GubP7tM6b2Mn6c6XD7ik_N0_8TCK7GDEgGA0Omxk0d2nXFo213XSRDYCh76q19ZYoEXVTjLBSF99Wn2C_QOKPh3uLWYvkaS6_lE-qTXjSgBxj_Lhr33','ravi','SER_PGRL_PARIMALA_456','yes'),('SER_MCL_PARIMALA','354098051465694','7799437562','parimalabroadband.services@gmail.com','APA91bFBZ7zVtwkJDgOk6ZDR4GubP7tM6b2Mn6c6XD7ik_N0_8TCK7GDEgGA0Omxk0d2nXFo213XSRDYCh76q19ZYoEXVTjLBSF99Wn2C_QOKPh3uLWYvkaS6_lE-qTXjSgBxj_Lhr33','ravi','SER_MCL_PARIMALA_456','yes');
/*!40000 ALTER TABLE `admins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `location`
--

DROP TABLE IF EXISTS `location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `location` (
  `loc_id` varchar(100) NOT NULL,
  `loc_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `location`
--

LOCK TABLES `location` WRITE;
/*!40000 ALTER TABLE `location` DISABLE KEYS */;
/*!40000 ALTER TABLE `location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log`
--

DROP TABLE IF EXISTS `log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log` (
  `device_id` varchar(255) NOT NULL,
  `ser_id` varchar(100) NOT NULL,
  `log_sub` varchar(255) NOT NULL,
  `log_description` varchar(1000) NOT NULL,
  `ticket_id` bigint(20) DEFAULT NULL,
  `ticket_status` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log`
--

LOCK TABLES `log` WRITE;
/*!40000 ALTER TABLE `log` DISABLE KEYS */;
INSERT INTO `log` VALUES ('357541050656901','SER_PGRL_PARIMALA','New Connection','vddd',1444830229459,'1'),('357541050656901','SER_PGRL_PARIMALA','New Connection','bjbbaba',1444830268176,'1'),('357541050656901','SER_PGRL_PARIMALA','New Connection','bjbbaba',1444830294590,'1'),('354098051465694','SER_PGRL_PARIMALA','New Connection','teat',1444898375737,'1'),('353321069211707','SER_PGRL_PARIMALA','Others','waste network',1444911876574,'1'),('862782024053282','SER_PGRL_PARIMALA','New Connection','test my mahe',1444917803585,'1'),('862782024053282','SER_PGRL_PARIMALA','Others','babu ram, ekkada unnavu.',1444981145219,'1'),('862782024053282','SER_PGRL_PARIMALA','Others','babu',1444985177387,'1'),('354098051465694','SER_MCL_PARIMALA','New Connection','tujxhchvhhc',1444994572803,'1'),('354098051465694','SER_PGRL_PARIMALA','New Connection','chgg',1445800922011,'1'),('354098051465694','SER_PGRL_PARIMALA','New Connection','yggg',1445800966350,'1'),('354098051465694','SER_PGRL_PARIMALA','New Connection','hshahah',1445845943573,'1'),('354098051465694','SER_PGRL_PARIMALA','Internet is not working','gdajah',1445856199881,'1');
/*!40000 ALTER TABLE `log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `register`
--

DROP TABLE IF EXISTS `register`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `register` (
  `device_id` varchar(255) NOT NULL,
  `mobile_no` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `request_id` varchar(1000) NOT NULL,
  `name` varchar(200) NOT NULL,
  `password` varchar(100) DEFAULT NULL,
  `is_admin` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `register`
--

LOCK TABLES `register` WRITE;
/*!40000 ALTER TABLE `register` DISABLE KEYS */;
INSERT INTO `register` VALUES ('911389650544617','8143299130','ravimaddu143@gmail.com','APA91bEAg-Dl-Bb63uxXtAfrYTybRk_T77UeELGu98cBnfuVc8mZhauD1z0dvxfjydAoO4VN80xqcAl6PfpfKCM7cBX6rXgUQe1s8NNl3Pfyezmfc0fPHh9yc_EbcejJriWEskjm8JGF','ravi',NULL,NULL),('911436251112201','9440046148','ravibabu143@gmail.com','APA91bFgk3XnK581ZLfAJnuUx67IM6nvyzPvkWtPuOapLIkQqE53e2NkzsCt9OphxiFCn1VMJpbiRCpB5kU229zMvMpg1il-ZSDUJieI1VgOiphR23I1lxm1mU7mI7tXpPjuXGAE4ahn','ravi',NULL,NULL),('353317068896266','9494297357','bpavan501@gmail.com','APA91bFONcc9T6LQI3OAElndxAiy7-259I2k1NV2oZ5Xe0sMG8SpTsfj9U8x4wiNRMIcn8j9aDTPOjmMdCZdDN4mo6yN86vvVUr28CENElHLwL41IUVec_RwFjWqPDcM4YjLOmXs06Ta','Pavankumar',NULL,NULL),('866112025983665','7386112148','babujunts@gmail.com','APA91bF46eQ3rUPy-HTycaeHwNVlVA5uPsMFPGwGeiMwbvGYS0yR2GgnmuWQWFM8S-kFqhTckueqr5w_q2gM_c0NmWWdT2wag8y5VeUWeQKB4cGcgtjot9IOSSp1AtK_xPtBhdzkWFQO','sai',NULL,NULL),('355884053359095','9440378727','cybernetbroadband.vkb@gmail.com','APA91bHzz_awYnb7NLrbjf9GtGNdho5KRGcgwgEOqrdrjD7gith9eP7qmfY483YojTYnW89CW_wQVoqs25XLfYbAaOvzCBHypzIrlIler5Su6GolpWzzCZw5D-gDBuDv-Ez3KCN7zc7_','Khan',NULL,NULL),('353321067984800','9640401212','ranjithdear@gmail.com','APA91bEo4qPiv9Ihy2HN26UGr2lTsFWYS87Rbx5CwauMqkEX9ZG1KDW7BkS4n6TvicG35nEayJRle8FBTgOV5iEmAVy5G9Sh0X2pxjG4xVH2z4FNnne-ZBtSuFc7Sgh2qVEnAapmppZJ','ranjithdear',NULL,NULL),('353545062550485','9912211045','paletispreddy@gmail.com','APA91bFFYSq_ib9NgNd4IfxLdR0Z208oD8VN1zl9EHlYtz2VAOQE1dzMD1OEUlMYPR1VX99AmUbTB0fv_Fx54yo0zgIg9YKNQQbylIInGjBhlg1mvvuJoxoc5agO2mj2QAyUk9dvVQXU','Siva Prasad Reddy ',NULL,NULL),('352405060955932','9623320320','ajinkyabhardwaj@gmail.com','APA91bGXaZ5wlCfcdzJHwiF0htIUvSFjNbXmVHQWJn7s7kA2JS7SpqfUct_XJ_Ekky4YHH_YYU9c9hVRdIhK0DMg79YOJha19V_LbOIwAPFW00_V2Ff23fbHTtvC7Zw1Hu_JNCRQbSC1','ajinkya Bhardwaj ',NULL,NULL),('911451350001643','8142200359','fhfhdgg@gmail.com','APA91bHjilKgr0C2Mb0nlJk6g99w4jqorGWkpBKuahqbpazRWh_vQjylLlaWchPV_S9KrB4e4uyQzsLqmHzTpYh78SeHezWj7e9c5nXemBr_18SWnlYMs8YsbHUJicb0SyYHbmsTmYDU','venkateswarlu',NULL,NULL),('353324064613489','9700470370','greyheart43@gamil.com','APA91bGAX2NWjZwgGe3-dshVCfRdzl6poSpkDFBogh3H9PygONG5dkBoAvncD3aTjXv9fx6H8rIRNtrMcIBoCF_9xYadWW85VjWONuRer6S0y4_fE6bA-WfE07LhLNlSUDsH1Q9hUmkl','Giridar',NULL,NULL),('911425150233036','9849536421','drkirankumarvajja@gmail.com ','APA91bGyG4LNeHGEwNxIcULN3a5qLvwCXzZswLPlR_0BcVJ-JwZI-e-7fL9g_j4jjBUPgMUqlgjOVPLNs-Ivxq8xcV5InZ8e_Ui9CnhYp8ceLaInRtmjuw6dkBb3KE1gYf6D5sOUvqb5','kirankumar vajja',NULL,NULL),('355289063898324','7702328596','kola.mounicareddy26@gmail.com ','APA91bGoJFjsVUaQ3n1-T8UoU-VGdAN4bND6dI9TS0rFlpjVO0d-5hxDzB30lRCS9tlrZI7DpJwh4xUF_DM0RLEEaQjloKeiZ4iVWU2IbyKbSb8xQETz1Uom0YLaU7Uf6JglNyW6OjTb','Mounicareddy.Kola ',NULL,NULL),('866225021438763','9885114099','fgrrwyryir@gmail.com','APA91bGXnqo7VxmNa3RxIkAzFoJJXW_Q-_hDtZPc_ITHQ5Z_o_QUOB4EqEkvaQiMCU6mURH6JZO6iQlexCRwk7LcVeYZOoo5HNTVL37o144bSCeWJAJgNpcF8jbdy4gELfGaHezEOMDZ','venkatesh',NULL,NULL),('352116068695855','9885098856','saikumar.janaki@gmail.com','APA91bEVfjLtzRjhprExIl3qfqj8s8_RTQbWBOJ1EyAp8w4M2sDVqhSyvwOYl_EC-isIy1LrssX0PTZ8iNBeCrgQ7EF-l08Wh4z6S0oV3vhATxOOMTRf8gKY0cjBO7SK4ANDe8Pp15KU','SAI KUMAR',NULL,NULL),('352238064992803','9393262947','babujunts1234@gmail.com','APA91bGmcpKdVASza0JZHje6STf87u3bSyONPhdX1VuT5DvRVt_PLy2vn1KUXnNOag77OuR1ANfgr4TZ1xBdxWVDmULQJjkvdXiHeTRoW6VgbboawJRn1eYY6mGUlT6H6-yVYUA9DVIp','anil',NULL,NULL),('359299055962877','9177771326','sreeseway@gmail.com','APA91bGZQH4zOwKUA3YQdNdujpaN9V0nqtYxH9klUv-RpSQzkVWtzjRIqykXJZZ0rf7eaanaxen_jJAw74wcwTtAdIGrSt5oi_Gcsc53OMkTkxxX2ayF9BOkks9XUTu6p9Ak1mLKEOb_','venkat sreedhar',NULL,NULL),('866376028830104','9866350995','muzzu_reset@yahoo.com','APA91bFYuqGxESlA8wEb0h2k_MjMcm-fJTCq2q8a5mgd09H7s-sSI7Pmdnv2e8l9GSe9IZUi2aHKEv5qO4jeR6v6sid8Ub33DnoCiy9PM2CLmVH4NubKV3Ru8KE5PZIWIemDq3BMpfwC','mujeeb ',NULL,NULL),('353470060588926','9959321853','grkxxx@gmail.com','APA91bGlunZ1zBb0gkkp2QZUPLm7CcPBSCKZ6B3SOlLFSDU-MVt0XDOwOnZ5B0xCiQu-9UeHhw27kB-NTyTfQPsZAsQvK91pJC4MkcrI7CR0EsfqVz4FqciMKAswgrIYR4ieIQtyJr5U','ravi',NULL,NULL),('353125061174049','8465999662','eddfggtt@gmail.com','APA91bFJrlK4EdvjWUCuNx6ILF9rjxPz0r_eB9M81dP7m83gyAjNk6pDZnhGWNbq9aFchHNGpO7IAD-NE8bNFhL-o_4Xb5V25SJL1R4icG9JAgdsCcmESK5Op7lr45ptfNao_xAMBAl_','singu anil',NULL,NULL),('355004052948562','7075921480','johnsaida3@gmail.com','APA91bHA26iGfPz_tOOrEzD4l_nrP0TFpSqEj8V_UFRqgy-PkNqtOOWCst0bDi7x862MB5x1lrsKFOZgEn_MOOhtRXRxqriaXxKsmxE0QCsJcGn1Bi5boteQaz5eMPKhseBma8iONn48','johnsaida',NULL,NULL),('359301057477373','9490538548','bujjibangaram81@gmail.com','APA91bF-ifHX1CXo2PwFudU3Y3zf0ekaWS3YrTZHjPFy0UZnMJpQHA2ehlqy-Pl6JiFLXpAJW4iuJiVXbWqmhLlEYzCvNgrppjXk-lzh2SK5RJ0huRSzePm9ngUsY2vMR8eRTz61MG79','bujji',NULL,NULL),('355490061720730','7794063006','polapravallika1@gmail.com','APA91bHSS8OYsQISakUyTFaSOgM7fTKYQoXmtcgLuHXczd5IUXF6NtCvX8Uvv1sGEyz2B9rvBJrkm3QetHb9aW-i_dKed8kX3tCqNZurywpVDPZHOTko7NdQkmtO-K29Wi1gqvWk_Va3','naga Pravallika',NULL,NULL),('866188023144021','8106544452','hanimireddy50@gmail.com','APA91bEG1hDuPt9koXp07JMHCPa8aj9ScaOlWMzf-aDmy5bFBQASAt8Df5QJ-uZtkIdw46jC2PeP3cNBCaW58NXCQ77BuSY0egLFJ4ZIfQvQdWuoFIdcKrNdjjUpasd6krbECxugeOn8','hanimi',NULL,NULL),('354098051465694','7799437562','ramu.vuyukuru@gmail.com','APA91bFBZ7zVtwkJDgOk6ZDR4GubP7tM6b2Mn6c6XD7ik_N0_8TCK7GDEgGA0Omxk0d2nXFo213XSRDYCh76q19ZYoEXVTjLBSF99Wn2C_QOKPh3uLWYvkaS6_lE-qTXjSgBxj_Lhr33','ramu',NULL,NULL),('911383556033742','8297846001','rameshyachurii@gmail.com','APA91bHC4-hMWa8bUulqG_tOWAaFg-sprAw_Dp3Yn-WO2j0rSOD0iSdH2pgVHY238QrePUlK7WVBVhsVmuCFbt8fzJkLWgjLkbQlh7BoMkPPS9XjHSW6R6y5WaLeZWN0yC0q08lAlaO6','rameshyachuri',NULL,NULL),('351665067350129','8097255852','balan.ambalam@gmail.com','APA91bHNe4zyX7Ntz2FiE3KYAStzpajGftx2qa4rmr_plK4HpnFk0FX0ExC8-nwQIpyYTiEOVtFLRHDNJkiCLCFyHCbabq4dHSL1W2WIl77HhhM5zV9D_jqKN17EcB08kQFDYj01rquA','balan ambalam',NULL,NULL),('911452550043526','8341282022','gskr4567@gmail.com','APA91bEVUjfIM7ef22hQ3JPsHNwvYwmLx7BXeuPf1ykL9_gVW5O40LW5GcOG6zQLHiSLqpWxJJDuqyz1ma68sDczB_NdCI_rkiUGoUWarZorTE_Y8X3WkdGgxapLSPXGkOYVfAR40Pw-','sai',NULL,NULL),('353325069282881','9848670072','suri.devarapalli@gmail.com','APA91bHOIDw1PuRoabf0nXEKyvdlPVU6rgIhfQsro9U39VHXmqNMyvItQ-36vb73L8zS07V-2WAW_E9VRsjOCh5fqVltXpO0w6nIscE8Dq-9BbXzg5Chtu8MXYLVK3oT4SrK49B6mc_8','suresh',NULL,NULL),('359296050778886','9032969412','chintupraveenkumar@gmail.com','APA91bFUPQKcGWljv4HWnh70vxLC4qmYY41KnCNmXlFuQt62lER5LWy1fvu78P2UhHpGCAL1JIcKzWV2QX-UXy_aZ7qxSCYsnR2HSAzON2dDuzIQ3n7eWaokfEqzcLma4gxQpH8ImB2l','praveen',NULL,NULL),('868143022116528','9030137738','gvskishore143@gmail.com','APA91bHRqGq9RzNlz1og8Cy64Xsbw0FQLabr-vLKUDpqdX8Mw8d7JGXTpiXHqgydZNuKqr7EEJd7TJBeiBNCAvjxETYQA-wzFzYuWqY0h2LYx8BYESsnUt2VHyTeuG6OLdmlJUWEkXJa','gvskishore',NULL,NULL),('351971070002537','9010113239','lalitharam.vutukuru@gmail.com ','APA91bFbZ3xTPTqLFnEdAX_XCbASAoeOT2_pVERcCek5l41DYeZC8qOmWTlwO7-iWeXP3Ww8QWeWDkPYxdBr2R2wUfCrpShCAqE5cfzHMq4CyWqEi7vWkr2590LeYvKxGgCa8h-Cejtw','lalitha',NULL,NULL),('352384057298939','9291582960','susila.vutukuru@gmail.com','','sai',NULL,NULL),('355819060312000','9440619664','mdfashionspdrl@gmail.com','APA91bFB0JCNfzKCu3sd6ifNCzkwpWN4FiH6PfC9fwkAXlLhiqBfxUJBou0HyOyUwET6finC_3wyiyjjHdVYIH_kS6pYKcXhejtWZljIH_G4pUBMvjBsJnEQkJPEyN43_l-Iagt-OTD_','brahmam',NULL,NULL),('353327064079098','9884029064','skumar0526@gmail.com','APA91bEyoUB0_4R66MZLr8EmsX6_lvYFcE8o-M1f-uEgARVCJezkMUMHeUmB-ls0ZooIh_fOChRb45UyXMUMZxopqKUIjLFQux56Nqw6q9LA7MmWCphVjSdwMRLF_7ogqqSxS7NyemKI','santosh',NULL,NULL),('352136060946122','8790878144','ashiqsayyad@gmail.com','APA91bEvbJ4K-AEQmA2UHvwjd9v6dkRJv8ZNlDDkU6Ds0AN6ADUjSDtdAYajuZRsapYnrtw9KYgUVvoe-ySmPhgb441s4XCBUw1a21pXcIPZYuyg0TdNImuOn2PZBJXfiOnxc7X37dRW','ashiq',NULL,NULL),('357541050656901','779943655445646','teat@gmail.com','APA91bHCWsfYuDfpTNOYUtT66kzJ7jvMKAiFrIaIrbQTgbvf3oV-6o2JGPNmSAprDhe91BoFa17vt1yUgpG4vm91lywS1BwUQHFqYpaHyHQmE4DaWEIXxUfvko_PrS5pnHgCWghgbXX1','test',NULL,NULL),('353321069211707','1234567890','test@test.com','','mohansai',NULL,NULL),('862782024053282','123456789','test@gmail.com','APA91bHk8l60Eudy7CCsmCUURLLu8CjQAX47_zRlzgGo5JJtM_93H27Qqg2QlpO8dzaXv1k6KOCQAjAUm9oFND6GbIGPMPPl5B6vZdcB2pP60fXYKxQs66AOnQCbA8HH-gVMg0sL5bKO','test',NULL,NULL);
/*!40000 ALTER TABLE `register` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `services`
--

DROP TABLE IF EXISTS `services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `services` (
  `ser_id` varchar(100) NOT NULL,
  `ser_name` varchar(100) NOT NULL,
  `loc_id` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `services`
--

LOCK TABLES `services` WRITE;
/*!40000 ALTER TABLE `services` DISABLE KEYS */;
/*!40000 ALTER TABLE `services` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-10-26 23:38:47
