-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: db_supplypro
-- ------------------------------------------------------
-- Server version	8.0.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `product_id` varchar(40) NOT NULL,
  `title` varchar(40) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `cost` decimal(8,2) DEFAULT NULL,
  `img` varchar(40) DEFAULT NULL,
  `capacity` float DEFAULT NULL,
  `remaining_quantity` int DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  PRIMARY KEY (`product_id`),
  KEY `idx_product_id` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES ('1',' MSI Katana GF66',' MSI Katana GF66 12UD Core i7 RTX 3050Ti 144Hz Gaming laptop',535000.00,'msi.png',0.002,7,7),('10','PowerBank','20000mah',8500.00,'powerbank.png',0.001,3,3),('11','Laptop Bag','Water proof and USB port available',5350.00,'bag.png',0.003,1,1),('12','Dell  LED Monitor ',' Curved - 31.5\" 2560 x 1440 QHD @ 165 Hz ',48500.00,'monitor.png',0.02,0,0),('13','PLAYSTATION VR','The fully immersive PS VR headset\n360-degree vision',40000.00,'vrbox.png',0.01,11,11),('14','Logitech SPEAKERS','Center channel speaker: 1 x 67 W, wall mountable\n',32500.00,'speakers.png',0.005,20,20),('15','SANDISK USB TYPE-C','SanDisk Ultra Dual Drive USB Type-C 128GB _ Nanotek',6000.00,'usb.png',0.0008,10,10),('16','HP 15S Laptop','HP 15S INTEL I5 11THGEN Windows 11',235000.00,'hp.png',0.004,4,4),('17','Office Chair','Adjustable',12000.00,'chair.png',0.05,6,6),('18','Office Table','Movable and Comfortable',23000.00,'table.png',0.2,7,7),('19','Gaming Chair','Adjustable,Recline Armrest (Up to 135 Degree)',56000.00,'gchair.png',0.06,2,2),('2','Alexa','\nAmazon Echo Dot 3rd Generation',18500.00,'alexa.png',0.002,1,1),('20','MICROPHONE','Impedance: 2.2KΩ,Frequency Response: 30hz to 16k hz',12500.00,'mic.png',0.001,10,10),('21','MSI  DESKTOP','8GB (8GB x 1) DDR4 3200MHZ,NVIDIA GEFORECE GTX 1650 SUPER 4GB',325000.00,'pc.png',0.005,9,9),('22','POWER SUPPLY, UPS','Input Return Voltage 110-300V,Frequency Range 40Hz -70Hz',75000.00,'ups.png',0.008,6,6),('23','Table Lamp','Adjustable',7250.00,'lamp.png',0.008,8,8),('24','Orange Extension Cord ( Trailer socket )',' 3 meter wire - Lifetime Warranty',6500.00,'plug.png',0.0002,8,8),('25','Epson Projector','LCD Projector, 2800 Lumens Color Brightness',265000.00,'pro.png',0.002,8,8),('26','Projectror Screen','Size: 60”*60” 1:1 (5’*5′) Triopod',24000.00,'screen.png',0.05,0,0),('27','Smart LED Light Bars ','APP Control, Music Sync, RGB Light ',15000.00,'light.png',0.0002,0,0),('28','GOPRO Camera','Waterproof to 33ft + built tough.',185000.00,'cam.png',0.003,1,1),('29','RING LIGHT 17\"','Premium OSRAM LEDs',32000.00,'rlight.png',0.007,10,10),('3','JBL BT Speaker','JBL FLIP 5, Up to 12 Hours of Playtime',12000.00,'jbl.png',0.009,10,10),('30','MONITOR STAND','Adjustments: Tilt, swivel, rotation, lift',43000.00,'stand.png',0.06,11,11),('4','JBL Tune 750BTNC\n','Best Sound Quality, Noice Cancelation',35000.00,'jblhp.png',0.003,0,0),('5','Transcend  External Hard Disk','Rugged and portable, Excellent anti-shock protection, 1TB storage',22500.00,'hardisk.png',0.0005,1,1),('6','Razer Basilisk V3 Wired Gaming Mouse\n','Create, control, and champion your playstyle',3500.00,'mouse.png',0.009,10,10),('7','Apple Mac Book Air','Retina display, 13.3-inch (diagonal) LED-backlit display with IPS technology',435000.00,'macbookair.png',0.0006,8,8),('8','Gaming Keyboard','Mechanical and Noiseless',5500.00,'keyboard.png',0.006,16,16),('9','Writing pad','Huion Micro Drawing Big Size Graphics Tablet with Rechargeable Pen',14000.00,'writingpad.png',0.0005,49,49);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-11 18:44:18
