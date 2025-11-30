-- MySQL dump 10.13  Distrib 8.0.43, for Linux (x86_64)
--
-- Host: localhost    Database: cheche_pet_wall
-- ------------------------------------------------------
-- Server version	8.0.43-0ubuntu0.22.04.2

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cargo`
--

DROP TABLE IF EXISTS `cargo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cargo` (
  `salario` double DEFAULT NULL,
  `id_cargo` bigint NOT NULL AUTO_INCREMENT,
  `funcao` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_cargo`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cargo`
--

LOCK TABLES `cargo` WRITE;
/*!40000 ALTER TABLE `cargo` DISABLE KEYS */;
INSERT INTO `cargo` VALUES (7000,1,'Gerente'),(2000,2,'Atendente'),(4500,3,'Veterinário'),(2000,4,'Auxiliar de Limpeza');
/*!40000 ALTER TABLE `cargo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contato`
--

DROP TABLE IF EXISTS `contato`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contato` (
  `data_envio` date DEFAULT NULL,
  `status` bit(1) DEFAULT NULL,
  `id_contato` bigint NOT NULL AUTO_INCREMENT,
  `assunto` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `mensagem` varchar(255) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_contato`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contato`
--

LOCK TABLES `contato` WRITE;
/*!40000 ALTER TABLE `contato` DISABLE KEYS */;
INSERT INTO `contato` VALUES ('2025-11-25',_binary '',1,'promoção','rosinete@gmail.com','Dando banho em dois pets ganha algum desconto ?','Rosinete'),('2025-11-26',_binary '',2,'Assunto','wallace@email.com','Mensagem Teste','Wallace');
/*!40000 ALTER TABLE `contato` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `endereco`
--

DROP TABLE IF EXISTS `endereco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `endereco` (
  `id_endereco` bigint NOT NULL AUTO_INCREMENT,
  `bairro` varchar(255) DEFAULT NULL,
  `cep` varchar(255) DEFAULT NULL,
  `cidade` varchar(255) DEFAULT NULL,
  `complemento` varchar(255) DEFAULT NULL,
  `estado` varchar(255) DEFAULT NULL,
  `logradouro` varchar(255) DEFAULT NULL,
  `numero` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_endereco`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `endereco`
--

LOCK TABLES `endereco` WRITE;
/*!40000 ALTER TABLE `endereco` DISABLE KEYS */;
INSERT INTO `endereco` VALUES (2,'Dos Ferreiras','26183603','Belford Roxo','','RJ','Rua Crisolita','3'),(3,'Vigário Geral','21240660','Rio de Janeiro','Fundos','RJ','Rua Figueiredo Rocha','513');
/*!40000 ALTER TABLE `endereco` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `funcionario`
--

DROP TABLE IF EXISTS `funcionario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `funcionario` (
  `data_admissao` date DEFAULT NULL,
  `data_demissao` date DEFAULT NULL,
  `data_nascimento` date DEFAULT NULL,
  `id_cargo` bigint DEFAULT NULL,
  `id_endereco` bigint DEFAULT NULL,
  `id_funcionario` bigint NOT NULL AUTO_INCREMENT,
  `cpf` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `sobrenome` varchar(255) DEFAULT NULL,
  `telefone` varchar(255) DEFAULT NULL,
  `rg` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_funcionario`),
  UNIQUE KEY `UKj4fx1y87c1h9x0qetkj0xlhit` (`id_endereco`),
  KEY `FK92othhhe25gno2qtus5woc6ys` (`id_cargo`),
  CONSTRAINT `FK92othhhe25gno2qtus5woc6ys` FOREIGN KEY (`id_cargo`) REFERENCES `cargo` (`id_cargo`),
  CONSTRAINT `FK93g4pkk612dmp9yk3uvm5wsad` FOREIGN KEY (`id_endereco`) REFERENCES `endereco` (`id_endereco`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funcionario`
--

LOCK TABLES `funcionario` WRITE;
/*!40000 ALTER TABLE `funcionario` DISABLE KEYS */;
INSERT INTO `funcionario` VALUES ('3000-11-26','2030-12-21','1998-12-21',3,3,2,'192.695.687-76','mendesbrenda840@gmail.com','Brenda Mendes','Souza','(21) 96658-8324','51.651.651-3');
/*!40000 ALTER TABLE `funcionario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matricula`
--

DROP TABLE IF EXISTS `matricula`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matricula` (
  `ativo` varchar(255) DEFAULT NULL,
  `data_matricula` date DEFAULT NULL,
  `id_matricula` bigint NOT NULL AUTO_INCREMENT,
  `id_pet` bigint DEFAULT NULL,
  `id_turma` bigint DEFAULT NULL,
  PRIMARY KEY (`id_matricula`),
  UNIQUE KEY `UKev8r5w1xnj13a4q6sew18vdoh` (`id_pet`),
  KEY `FK8nr8cfa9b7pl0p1p4y6nig1og` (`id_turma`),
  CONSTRAINT `FK8nr8cfa9b7pl0p1p4y6nig1og` FOREIGN KEY (`id_turma`) REFERENCES `turma` (`id_turma`),
  CONSTRAINT `FKht0qfxf1vlwpq7s8c2o2j4ack` FOREIGN KEY (`id_pet`) REFERENCES `pet` (`id_pet`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matricula`
--

LOCK TABLES `matricula` WRITE;
/*!40000 ALTER TABLE `matricula` DISABLE KEYS */;
INSERT INTO `matricula` VALUES ('Sim','2025-11-25',1,1,1);
/*!40000 ALTER TABLE `matricula` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `persistent_logins`
--

DROP TABLE IF EXISTS `persistent_logins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `persistent_logins` (
  `username` varchar(64) NOT NULL,
  `series` varchar(64) NOT NULL,
  `token` varchar(64) NOT NULL,
  `last_used` timestamp NOT NULL,
  PRIMARY KEY (`series`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `persistent_logins`
--

LOCK TABLES `persistent_logins` WRITE;
/*!40000 ALTER TABLE `persistent_logins` DISABLE KEYS */;
/*!40000 ALTER TABLE `persistent_logins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pet`
--

DROP TABLE IF EXISTS `pet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pet` (
  `peso` double DEFAULT NULL,
  `data_nascimento` date DEFAULT NULL,
  `id_pet` bigint NOT NULL AUTO_INCREMENT,
  `id_tutor` bigint DEFAULT NULL,
  `especie` varchar(255) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `observacoes` varchar(255) DEFAULT NULL,
  `raca` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_pet`),
  KEY `FKh18gcvrm8epcamlqaw1prqoc3` (`id_tutor`),
  CONSTRAINT `FKh18gcvrm8epcamlqaw1prqoc3` FOREIGN KEY (`id_tutor`) REFERENCES `tutor` (`id_tutor`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pet`
--

LOCK TABLES `pet` WRITE;
/*!40000 ALTER TABLE `pet` DISABLE KEYS */;
INSERT INTO `pet` VALUES (8,'2020-08-12',1,1,'cachorro','Cacau','','viralata'),(10,'2017-05-03',2,1,'cachorro','Dave ','','viralata');
/*!40000 ALTER TABLE `pet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id_role` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id_role`),
  UNIQUE KEY `UKofx66keruapi6vyqpv6f2or37` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (2,'ROLE_ADMIN'),(1,'ROLE_USER');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `servico`
--

DROP TABLE IF EXISTS `servico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `servico` (
  `valor` double DEFAULT NULL,
  `id_servico` bigint NOT NULL AUTO_INCREMENT,
  `descricao` varchar(255) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_servico`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servico`
--

LOCK TABLES `servico` WRITE;
/*!40000 ALTER TABLE `servico` DISABLE KEYS */;
INSERT INTO `servico` VALUES (80,1,'Uso de água em temperatura agradável e shampoos e condicionadores específicos para animais para uma limpeza profunda da pele e pelagem.','Banho - Porte médio');
/*!40000 ALTER TABLE `servico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `turma`
--

DROP TABLE IF EXISTS `turma`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `turma` (
  `capacidade` bigint DEFAULT NULL,
  `hora_fim` time DEFAULT NULL,
  `hora_inicio` time DEFAULT NULL,
  `id_turma` bigint NOT NULL AUTO_INCREMENT,
  `descricao` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_turma`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `turma`
--

LOCK TABLES `turma` WRITE;
/*!40000 ALTER TABLE `turma` DISABLE KEYS */;
INSERT INTO `turma` VALUES (10,'18:00:00','07:30:00',1,'Cachorro - Porte médio ate 15kg');
/*!40000 ALTER TABLE `turma` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tutor`
--

DROP TABLE IF EXISTS `tutor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tutor` (
  `data` datetime(6) DEFAULT NULL,
  `id_endereco` bigint DEFAULT NULL,
  `id_tutor` bigint NOT NULL AUTO_INCREMENT,
  `cpf` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `rg` varchar(255) DEFAULT NULL,
  `sobrenome` varchar(255) DEFAULT NULL,
  `telefone` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_tutor`),
  UNIQUE KEY `UKax5ohn0dt53s4tmb39lqx4ify` (`id_endereco`),
  CONSTRAINT `FKki58jbai7r8cg2kris99xkyqj` FOREIGN KEY (`id_endereco`) REFERENCES `endereco` (`id_endereco`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tutor`
--

LOCK TABLES `tutor` WRITE;
/*!40000 ALTER TABLE `tutor` DISABLE KEYS */;
INSERT INTO `tutor` VALUES (NULL,2,1,'173.122.797-32','mendesbrenda@gmail.com','Brenda','30.129.260-3','Mendes de souza','(21) 96658-8324');
/*!40000 ALTER TABLE `tutor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_roles`
--

DROP TABLE IF EXISTS `users_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_roles` (
  `id_role` bigint NOT NULL,
  `id_user` bigint NOT NULL,
  KEY `FK3avenccqsoqwrfur1hb8mpbrw` (`id_role`),
  KEY `FK4hkenkykp7fwsvprw59pnmnb4` (`id_user`),
  CONSTRAINT `FK3avenccqsoqwrfur1hb8mpbrw` FOREIGN KEY (`id_role`) REFERENCES `roles` (`id_role`),
  CONSTRAINT `FK4hkenkykp7fwsvprw59pnmnb4` FOREIGN KEY (`id_user`) REFERENCES `usuario` (`id_user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_roles`
--

LOCK TABLES `users_roles` WRITE;
/*!40000 ALTER TABLE `users_roles` DISABLE KEYS */;
INSERT INTO `users_roles` VALUES (1,3),(2,1),(1,2),(2,5),(2,6);
/*!40000 ALTER TABLE `users_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `id_user` bigint NOT NULL AUTO_INCREMENT,
  `reset_token_expiry` datetime(6) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `reset_token` varchar(255) DEFAULT NULL,
  `senha` varchar(255) DEFAULT NULL,
  `aprovado` tinyint(1) NOT NULL DEFAULT '0',
  `dica` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_user`),
  UNIQUE KEY `UK5171l57faosmj8myawaucatdw` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'2025-11-28 18:48:35.164264','mendesbrenda840@gmail.com','Brenda Mendes','519db386-b775-4c38-9fbd-2abb19c64415','$2a$10$XONYCsYxU5wyGiY46QpKnOkUhvxEaFr3LZL.KG0xDdcSGXHfsCHou',1,NULL),(2,'2025-11-28 18:45:58.335847','rayssinha604@gmail.com','Rayssa','cb9e1ea8-510e-4609-bc00-a024fe5132cb','$2a$10$.ogc4TjSGPu/0BMRjT9aA.Pc7JUXYiuYvV7Xm3TSxHu4QNeWnzvEO',1,NULL),(3,NULL,'kaua@gmail.com','kaua',NULL,'$2a$10$wQgiV4jNwS9.Zdh8fXpeie.UwvhwlV.C7bXP61GTgQ/d0Fdd7EaHm',0,NULL),(5,NULL,'teste@email','Teste',NULL,'$2a$10$lgcWbF4yQZz5RilsY3S6p.PizeOFX2EWzWCS8jL475qBzIFC58hKO',1,NULL),(6,'2025-11-29 21:29:22.829962','dica@email.com','dica','c86a7069-3a21-41f2-b637-cfabb938c659','$2a$10$yD3Fn5nevWpyGOStR5OrAOGkM9LtqPIl1Pe5.UzDW.z9EvWI/qetC',1,'$2a$10$bsenXaekOtOKNoa5Ob.r3uGdRWYBIjyzIIpjfbDo9Fsi/JqyIA8EK');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-11-30  0:26:53
