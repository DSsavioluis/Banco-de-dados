CREATE DATABASE  IF NOT EXISTS `banco` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `banco`;
-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: banco
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
-- Table structure for table `agencias`
--

DROP TABLE IF EXISTS `agencias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `agencias` (
  `nome_agencia` varchar(45) NOT NULL,
  `endereco` varchar(60) NOT NULL,
  `numero_telefone` bigint NOT NULL,
  `gerente` varchar(45) NOT NULL,
  `ID_agencia` int NOT NULL,
  KEY `gerente` (`gerente`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agencias`
--

LOCK TABLES `agencias` WRITE;
/*!40000 ALTER TABLE `agencias` DISABLE KEYS */;
INSERT INTO `agencias` VALUES ('Agência Central','Rua das Lindas, 112',98798888,'Karline Kesia',456),('Agência Norte','Avenida das Flores, 4316',98997777,'Miguel Arduino',789),('Agência Sul','Rua das Palmeiras, 79',94496666,'Milena Java',166),('Agência Leste','Travessa dos Ipês, 31',99565555,'Carlos Pythonio',464),('Agência Oeste','Avenida das Palmas, 789',95553333,'Ana Carolina',123),('Agência Central','Rua das Flores, 789',98887777,'Rafael Oliveira',784),('Agência Central','Rua das Flores, 789',98887777,'Daniel Oliveira',385),('Agência Oeste','Avenida dos Ipês, 654',92224444,'Amanda Santos',987);
/*!40000 ALTER TABLE `agencias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `ID_cliente` int NOT NULL AUTO_INCREMENT,
  `cpf` bigint NOT NULL,
  `nome` varchar(45) NOT NULL,
  `endereco` varchar(60) NOT NULL,
  `numero` bigint NOT NULL,
  `email` varchar(45) NOT NULL,
  `agencia_associada` bigint NOT NULL,
  `conta_corrente` varchar(45) NOT NULL,
  `conta_poupanca` varchar(45) NOT NULL,
  `saldo` bigint NOT NULL,
  PRIMARY KEY (`ID_cliente`),
  KEY `conta_corrente` (`conta_corrente`),
  KEY `conta_poupanca` (`conta_poupanca`),
  KEY `agencia_associada` (`agencia_associada`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (29,16119393056,'João martins da silva','Rua da conceição',999510358,'joaozinhodogas@gmail.com',456,'5544846','87654321',1000),(30,68389895064,'Maria Santos','Avenida das cacimba',9945213840,'mariazinhadascaverna@hotmail.com',789,'98765432','23456789',2500),(31,34292376026,'Pedro Oliveira dos Santos','Travessa das almas',456485216,'pedrinhoreidelas@gmail.com',166,'56781234','34567890',1500),(32,80275907015,'Antonieta das Neves','Rua das Flores',995114685,'antonietadasflores@yahoo.com',464,'95416782','97581365',884652),(33,29841574123,'Ana Beatriz Souza','Rua dos Girassóis',123,'anabeatriz@gmail.com',166,'12345678','87654321',2000),(34,67589235401,'Fernando Silva','Avenida dos Pinheiros',456,'fernando.silva@gmail.com',789,'98765432','23456789',5000),(35,54321098765,'Juliana Pereira','Rua das Acácias',789,'juliana.pereira@gmail.com',166,'13579246','86420987',3500),(36,10987654321,'Ricardo Ferreira','Avenida dos Coqueiros',987,'ricardo.ferreira@gmail.com',789,'75395128','35795128',8000);
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contas`
--

DROP TABLE IF EXISTS `contas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contas` (
  `tipo_conta` varchar(45) NOT NULL,
  `saldo` bigint NOT NULL,
  `data_abertura` datetime NOT NULL,
  `cliente_associado` varchar(45) NOT NULL,
  `numero_conta` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contas`
--

LOCK TABLES `contas` WRITE;
/*!40000 ALTER TABLE `contas` DISABLE KEYS */;
INSERT INTO `contas` VALUES ('Conta Corrente',1000,'2020-06-06 10:00:00','João Martins da Silva',5544846),('conta poupança',0,'2020-06-15 15:00:00','João Martins da Silva',87654321),('Conta Poupança',2000,'2013-06-06 11:30:00','Maria Santos',23456789),('Conta Corrente',500,'2013-05-01 13:00:00','Maria Santos',98765432),('Conta Corrente',500,'2010-09-01 13:45:00','Pedro Oliveira dos Santos',56781234),('Conta Poupança',1000,'2010-09-01 13:45:00','Pedro Oliveira dos Santos',34567890),('Conta Poupança',884000,'2000-06-15 14:15:00','Antonieta das Neves',97581365),('Conta Corrente',652,'2000-06-10 00:00:00','Antonieta das Neves',95416782),('Conta Corrente',2000,'2022-01-01 09:00:00','Ana Beatriz Souza',12345678),('Conta Poupança',500,'2022-01-01 09:00:00','Ana Beatriz Souza',87654321),('Conta Corrente',5000,'2022-01-01 09:00:00','Fernando Silva',98762432),('Conta Poupança',10000,'2022-01-01 09:00:00','Fernando Silva',23456789),('Conta Corrente',3500,'2023-02-01 09:00:00','Juliana Pereira',13579246),('Conta Poupança',1000,'2023-02-01 09:00:00','Juliana Pereira',86420987),('Conta Corrente',8000,'2023-02-01 09:00:00','Ricardo Ferreira',75395128),('Conta Poupança',15000,'2023-02-01 09:00:00','Ricardo Ferreira',35795128);
/*!40000 ALTER TABLE `contas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emprestimos`
--

DROP TABLE IF EXISTS `emprestimos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `emprestimos` (
  `ID_emprestimo` int NOT NULL AUTO_INCREMENT,
  `valor_emprestimo` bigint NOT NULL,
  `data_solicitacao` datetime NOT NULL,
  `taxa_juros` bigint NOT NULL,
  `conta_associada` bigint NOT NULL,
  `situacao` varchar(30) NOT NULL,
  PRIMARY KEY (`ID_emprestimo`),
  KEY `conta_associada` (`conta_associada`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emprestimos`
--

LOCK TABLES `emprestimos` WRITE;
/*!40000 ALTER TABLE `emprestimos` DISABLE KEYS */;
INSERT INTO `emprestimos` VALUES (13,5000,'2022-02-01 09:00:00',10,5544846,'Aprovado'),(14,10000,'2021-01-25 11:30:00',8,98765432,'Pendente'),(15,20000,'2017-07-30 14:15:00',12,56781234,'Rejeitado'),(16,15000,'2020-02-28 16:30:00',9,23456789,'Aprovado'),(17,15000,'2023-02-15 09:00:00',11,5544846,'Pendente'),(18,8000,'2023-03-10 09:00:00',9,98765432,'Aprovado'),(19,10000,'2023-06-10 09:00:00',8,56781234,'Aprovado'),(20,20000,'2023-06-12 14:30:00',10,23456789,'Pendente');
/*!40000 ALTER TABLE `emprestimos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `extratos`
--

DROP TABLE IF EXISTS `extratos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `extratos` (
  `ID_extrato` int NOT NULL AUTO_INCREMENT,
  `data_hora` datetime NOT NULL,
  `conta_origem` varchar(45) NOT NULL,
  `conta_destino` varchar(45) NOT NULL,
  `tipo_transacao` varchar(45) NOT NULL,
  `valor` bigint NOT NULL,
  PRIMARY KEY (`ID_extrato`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `extratos`
--

LOCK TABLES `extratos` WRITE;
/*!40000 ALTER TABLE `extratos` DISABLE KEYS */;
/*!40000 ALTER TABLE `extratos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `funcionarios`
--

DROP TABLE IF EXISTS `funcionarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `funcionarios` (
  `ID_funcionario` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) NOT NULL,
  `cargo` varchar(45) NOT NULL,
  `agencia_associada` bigint NOT NULL,
  `departamento` varchar(45) NOT NULL,
  `salario` bigint NOT NULL,
  `data_contratacao` datetime NOT NULL,
  PRIMARY KEY (`ID_funcionario`),
  KEY `agencia_associada` (`agencia_associada`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funcionarios`
--

LOCK TABLES `funcionarios` WRITE;
/*!40000 ALTER TABLE `funcionarios` DISABLE KEYS */;
INSERT INTO `funcionarios` VALUES (19,'Karline Kesia','Gerente',456,'Administração',5000,'2020-01-01 00:00:00'),(20,'Miguel Arduino','Gerente',789,'Administração',5000,'2018-08-05 00:00:00'),(21,'Milena Java','Gerente',166,'Administração',5000,'2015-05-05 00:00:00'),(22,'Carlos Pythonio','Gerente',464,'Administração',5000,'2015-06-23 00:00:00'),(23,'Regiane Regina','Atendente',789,'Atendimento ao Cliente',2500,'2022-03-15 00:00:00'),(24,'Carimbo da silva','Analista Financeiro',166,'Financeiro',3500,'2018-07-10 00:00:00'),(25,'Luana Azevedo','Assistente de Recursos Humanos',464,'Recursos Humanos',2800,'2021-05-20 00:00:00'),(26,'Ana Carolina','Assistente de Atendimento',456,'Atendimento ao Cliente',2000,'2023-01-01 00:00:00'),(27,'Rafael Oliveira','Analista Financeiro',789,'Financeiro',3500,'2023-01-01 00:00:00'),(28,'Amanda Santos','Assistente de Atendimento',456,'Atendimento ao Cliente',2200,'2023-03-01 00:00:00'),(29,'Daniel Oliveira','Analista Financeiro',789,'Financeiro',4000,'2023-04-01 00:00:00');
/*!40000 ALTER TABLE `funcionarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `investimentos`
--

DROP TABLE IF EXISTS `investimentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `investimentos` (
  `ID_investimento` int NOT NULL AUTO_INCREMENT,
  `tipo_investimento` varchar(45) NOT NULL,
  `valor_investimento` varchar(45) NOT NULL,
  `data_aquisicao` datetime NOT NULL,
  `rendimento_atual` bigint NOT NULL,
  `conta_associada` bigint NOT NULL,
  PRIMARY KEY (`ID_investimento`),
  KEY `conta_associada` (`conta_associada`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `investimentos`
--

LOCK TABLES `investimentos` WRITE;
/*!40000 ALTER TABLE `investimentos` DISABLE KEYS */;
INSERT INTO `investimentos` VALUES (13,'Ações','5000','2023-06-01 09:00:00',1000,5544846),(14,'Tesouro Direto','10000','2020-02-05 11:30:00',1500,98765432),(15,'Fundos de Investimento','20000','2020-05-16 14:15:00',2500,56781234),(16,'Poupança','5000','2023-02-03 16:30:00',200,23456789),(17,'Ações','5000','2023-04-01 09:00:00',1000,5544846),(18,'Tesouro Direto','10000','2023-04-05 11:30:00',1500,98765432),(19,'Fundos de Investimento','15000','2023-06-05 09:00:00',2000,56781234),(20,'Poupança','5000','2023-06-08 11:30:00',300,23456789);
/*!40000 ALTER TABLE `investimentos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transacoes`
--

DROP TABLE IF EXISTS `transacoes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transacoes` (
  `ID_transacao` int NOT NULL AUTO_INCREMENT,
  `data_hora` datetime NOT NULL,
  `tipo_transacao` varchar(45) NOT NULL,
  `valor` bigint NOT NULL,
  `conta_origem` bigint NOT NULL,
  `conta_destino` bigint NOT NULL,
  `descricao` varchar(45) NOT NULL,
  PRIMARY KEY (`ID_transacao`),
  KEY `conta_origem` (`conta_origem`),
  KEY `conta_destino` (`conta_destino`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transacoes`
--

LOCK TABLES `transacoes` WRITE;
/*!40000 ALTER TABLE `transacoes` DISABLE KEYS */;
INSERT INTO `transacoes` VALUES (17,'2020-06-06 10:30:00','Transferência',500,5544846,98765432,'Transferência entre contas'),(18,'2021-06-06 11:15:00','Pagamento',100,87654321,23456789,'Pagamento de fatura'),(19,'2022-06-06 12:00:00','Depósito',2000,98765432,5544846,'Depósito em conta'),(20,'2020-06-06 14:30:00','Transferência',300,56781234,34567890,'Transferência entre contas'),(21,'2018-06-06 16:00:00','Saque',100,23456789,87654321,'Saque em caixa eletrônico'),(22,'2023-06-10 10:30:00','Transferência',1500,5544846,12345678,'Transferência entre contas'),(23,'2023-06-12 15:00:00','Pagamento',200,87654321,23456789,'Pagamento de fatura'),(24,'2023-06-14 11:00:00','Depósito',3000,98765432,5544846,'Depósito em conta'),(25,'2023-02-05 10:30:00','Transferência',2000,5544846,13579246,'Transferência entre contas'),(26,'2023-03-15 15:00:00','Pagamento',500,87654321,35795128,'Pagamento de fatura'),(27,'2023-04-20 11:00:00','Depósito',4000,98765432,75395128,'Depósito em conta');
/*!40000 ALTER TABLE `transacoes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-15  0:20:29
