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
-- Temporary view structure for view `view_customer_with_orders`
--

DROP TABLE IF EXISTS `view_customer_with_orders`;
/*!50001 DROP VIEW IF EXISTS `view_customer_with_orders`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `view_customer_with_orders` AS SELECT 
 1 AS `customer_id`,
 1 AS `order_id`,
 1 AS `state`,
 1 AS `total_price`,
 1 AS `capacity`,
 1 AS `date_time`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `view_customer_without_auth`
--

DROP TABLE IF EXISTS `view_customer_without_auth`;
/*!50001 DROP VIEW IF EXISTS `view_customer_without_auth`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `view_customer_without_auth` AS SELECT 
 1 AS `customer_id`,
 1 AS `first_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `view_product_with_orders`
--

DROP TABLE IF EXISTS `view_product_with_orders`;
/*!50001 DROP VIEW IF EXISTS `view_product_with_orders`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `view_product_with_orders` AS SELECT 
 1 AS `product_id`,
 1 AS `order_id`,
 1 AS `count`,
 1 AS `customer_id`,
 1 AS `address`,
 1 AS `city`,
 1 AS `district`,
 1 AS `title`,
 1 AS `description`,
 1 AS `cost`,
 1 AS `img`,
 1 AS `capacity`,
 1 AS `remaining_quantity`,
 1 AS `quantity`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `view_customer_with_orders`
--

/*!50001 DROP VIEW IF EXISTS `view_customer_with_orders`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_customer_with_orders` AS select `places`.`customer_id` AS `customer_id`,`places`.`order_id` AS `order_id`,`customer_order`.`state` AS `state`,`customer_order`.`total_price` AS `total_price`,`customer_order`.`capacity` AS `capacity`,`customer_order`.`date_time` AS `date_time` from ((`places` left join `customer_order` on((`places`.`order_id` = `customer_order`.`order_id`))) left join `customer` on((`places`.`customer_id` = `customer`.`customer_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_customer_without_auth`
--

/*!50001 DROP VIEW IF EXISTS `view_customer_without_auth`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_customer_without_auth` AS select `customer`.`customer_id` AS `customer_id`,`customer`.`first_name` AS `first_name` from `customer` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_product_with_orders`
--

/*!50001 DROP VIEW IF EXISTS `view_product_with_orders`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_product_with_orders` AS select `hold`.`product_id` AS `product_id`,`hold`.`order_id` AS `order_id`,`hold`.`count` AS `count`,`places`.`customer_id` AS `customer_id`,`places`.`address` AS `address`,`places`.`city` AS `city`,`places`.`district` AS `district`,`product`.`title` AS `title`,`product`.`description` AS `description`,`product`.`cost` AS `cost`,`product`.`img` AS `img`,`product`.`capacity` AS `capacity`,`product`.`remaining_quantity` AS `remaining_quantity`,`product`.`quantity` AS `quantity` from ((`hold` left join `places` on((`hold`.`order_id` = `places`.`order_id`))) left join `product` on((`hold`.`product_id` = `product`.`product_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-11 18:44:21
