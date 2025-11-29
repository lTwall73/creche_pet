-- MySQL dump 10.13  Distrib 8.0.43, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: cheche_pet_wall
-- ------------------------------------------------------
-- Server version	8.0.43

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contato`
--

LOCK TABLES `contato` WRITE;
/*!40000 ALTER TABLE `contato` DISABLE KEYS */;
INSERT INTO `contato` VALUES ('2025-11-25',_binary '',1,'promoção','rosinete@gmail.com','Dando banho em dois pets ganha algum desconto ?','Rosinete'),('2025-11-26',_binary '',2,'Assunto','wallace@email.com','Mensagem Teste','Wallace'),('2025-11-28',NULL,3,'assunto','lara@gmail.com','Mensagem','lara'),('2025-11-28',_binary '',4,'Meu pet adorou voces!!','Wallace@email.com','Obrigado pelo serviço.','Wallace');
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `endereco`
--

LOCK TABLES `endereco` WRITE;
/*!40000 ALTER TABLE `endereco` DISABLE KEYS */;
INSERT INTO `endereco` VALUES (2,'Dos Ferreiras','26183603','Belford Roxo','','RJ','Rua Crisolita','3'),(3,'Dos Ferreiras','26183603','Belford Roxo','','RJ','Rua Crisolita','3'),(4,'Vigário Geral','21240660','Rio de Janeiro','asdasd','RJ','Rua Figueiredo Rocha','514');
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
  `cpf` varchar(14) DEFAULT NULL,
  `email` varchar(80) DEFAULT NULL,
  `nome` varchar(15) DEFAULT NULL,
  `sobrenome` varchar(50) DEFAULT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `rg` varchar(12) DEFAULT NULL,
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
INSERT INTO `funcionario` VALUES ('2023-03-23','2025-11-21','1999-01-08',3,3,2,'173.122.797-32','mendesbrenda840@gmail.com','Brenda ','Mendes de Souza','(21) 96658-8324','30.129.260-3');
/*!40000 ALTER TABLE `funcionario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matricula`
--

DROP TABLE IF EXISTS `matricula`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matricula` (
  `ativo` varchar(10) DEFAULT NULL,
  `data_matricula` datetime(6) DEFAULT NULL,
  `id_matricula` bigint NOT NULL AUTO_INCREMENT,
  `id_pet` bigint DEFAULT NULL,
  `id_turma` bigint DEFAULT NULL,
  PRIMARY KEY (`id_matricula`),
  UNIQUE KEY `UKev8r5w1xnj13a4q6sew18vdoh` (`id_pet`),
  KEY `FK8nr8cfa9b7pl0p1p4y6nig1og` (`id_turma`),
  CONSTRAINT `FK8nr8cfa9b7pl0p1p4y6nig1og` FOREIGN KEY (`id_turma`) REFERENCES `turma` (`id_turma`),
  CONSTRAINT `FKht0qfxf1vlwpq7s8c2o2j4ack` FOREIGN KEY (`id_pet`) REFERENCES `pet` (`id_pet`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matricula`
--

LOCK TABLES `matricula` WRITE;
/*!40000 ALTER TABLE `matricula` DISABLE KEYS */;
INSERT INTO `matricula` VALUES ('Nao','2025-11-25 00:00:00.000000',1,1,1),('Nao','2020-05-12 00:00:00.000000',2,2,1);
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
  `data_nascimento` datetime(6) DEFAULT NULL,
  `id_pet` bigint NOT NULL AUTO_INCREMENT,
  `id_tutor` bigint DEFAULT NULL,
  `especie` varchar(255) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `observacoes` varchar(255) DEFAULT NULL,
  `raca` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_pet`),
  KEY `FKh18gcvrm8epcamlqaw1prqoc3` (`id_tutor`),
  CONSTRAINT `FKh18gcvrm8epcamlqaw1prqoc3` FOREIGN KEY (`id_tutor`) REFERENCES `tutor` (`id_tutor`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pet`
--

LOCK TABLES `pet` WRITE;
/*!40000 ALTER TABLE `pet` DISABLE KEYS */;
INSERT INTO `pet` VALUES (8,'2020-08-12 00:00:00.000000',1,1,'cachorro','Cacau','','viralata'),(10,'2017-05-03 00:00:00.000000',2,1,'cachorro','Dave ','','viralata'),(5,'2020-02-21 00:00:00.000000',8,1,'Gato','meli','','Bengal,'),(10,'2020-12-20 00:00:00.000000',10,2,'Cachorro','Branca','','outro,Pastor alemão'),(25.5,'2020-02-20 00:00:00.000000',11,2,'Cachorro','Hamlet','','Golden Retriever,');
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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servico`
--

LOCK TABLES `servico` WRITE;
/*!40000 ALTER TABLE `servico` DISABLE KEYS */;
INSERT INTO `servico` VALUES (80,1,'Uso de água em temperatura agradável e shampoos e condicionadores específicos para animais para uma limpeza profunda da pele e pelagem.','Banho - Porte médio'),(350,2,'5 dias no mês','Cães Micro e Pequeno'),(520,3,'8 dias no mês','Cães Micro e Pequeno'),(780,4,'12 dias no mês','Cães Micro e Pequeno'),(1200,5,'20 dias no mês','Cães Micro e Pequeno'),(500,6,'5 dias no mês','Cães Médio e Grande'),(760,7,'8 dias no mês','Cães Médio e Grande'),(1140,8,'12 dias no mês','Cães Médio e Grande'),(1800,9,'20 dias no mês','Cães Médio e Grande'),(250,10,'5 dias no mês','Gatos Micro e Pequeno'),(400,11,'8 dias no mês','Gatos Micro e Pequeno'),(600,12,'12 dias no mês','Gatos Micro e Pequeno'),(900,13,'20 dias no mês','Gatos Micro e Pequeno'),(400,14,'5 dias no mês','Gatos Médio e Grande'),(600,15,'8 dias no mês','Gatos Médio e Grande'),(840,16,'12 dias no mês','Gatos Médio e Grande'),(1200,17,'20 dias no mês','Gatos Médio e Grande'),(60,18,'Porte Micro e Pequeno','Banho Cães'),(90,19,'Porte Médio e Grande','Banho Cães'),(60,20,'Porte Micro e Pequeno','Banho Gatos'),(90,21,'Porte Médio e Grande','Banho Gatos'),(30,22,'Pelo Curto','Tosa Cães'),(50,23,'Pelo Longo','Tosa Cães'),(30,24,'Pelo Curto','Tosa Gatos'),(50,25,'Pelo Longo','Tosa Gatos');
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `turma`
--

LOCK TABLES `turma` WRITE;
/*!40000 ALTER TABLE `turma` DISABLE KEYS */;
INSERT INTO `turma` VALUES (15,'19:00:00','07:00:00',1,'Cachorro - Porte médio ate 15kg'),(15,'19:00:00','07:00:00',2,'Cachorro - Porte grande '),(15,'19:00:00','07:00:00',3,'Cachorro - Porte micro '),(15,'19:00:00','07:00:00',4,'Gato - ');
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tutor`
--

LOCK TABLES `tutor` WRITE;
/*!40000 ALTER TABLE `tutor` DISABLE KEYS */;
INSERT INTO `tutor` VALUES (NULL,2,1,'173.122.797-32','mendesbrenda@gmail.com','Brenda','30.129.260-3','Mendes de souza','(21) 96658-8324'),(NULL,4,2,'192.695.687-76','teste2@email.com','Wallace','12.123.123-1','Braga','(21) 94545-4545');
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
INSERT INTO `users_roles` VALUES (2,1),(2,2),(1,5),(1,6),(1,7),(1,8);
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
  PRIMARY KEY (`id_user`),
  UNIQUE KEY `UK5171l57faosmj8myawaucatdw` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'2025-11-28 22:01:02.068212','mendesbrenda840@gmail.com','Brenda Mendes','971e7ac0-8080-422d-b547-3b072becbd5d','$2a$10$XONYCsYxU5wyGiY46QpKnOkUhvxEaFr3LZL.KG0xDdcSGXHfsCHou',1),(2,NULL,'rayssinha604@gmail.com','Rayssa',NULL,'$2a$10$cA11Sk/lW8uFXNtOTdDBluR0/uvRL7JiUQf7T3g7y2AyXdhqYA3AO',1),(5,NULL,'teste@email','Teste',NULL,'$2a$10$f28gUIYveUmHxxUVTHed/.jCRuACsG4ZP8TXpv4MEDz9sEqs5TxJW',1),(6,NULL,'teste@email.com','teste3',NULL,'$2a$10$tU.QRjW9yXftnx4kbDiSHu.HQuEP.8PyN9kLXyTAT6ag7iHqxtmsC',0),(7,NULL,'alo@email.com','alo',NULL,'$2a$10$/IdkpjDd6dVv8gl6XXP4WeaERdmIYxn3xT4w33TveSBnAVFzPTjM2',0),(8,NULL,'wilde@gmail.com','wilde paulino',NULL,'$2a$10$l3jVxPgdTsDLhTwNvG3VA.Vj6ZAiBdsLe3guC9Z6ROvbB1hzt0CRu',0);
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

-- Dump completed on 2025-11-29  4:03:15
