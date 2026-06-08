CREATE DATABASE  IF NOT EXISTS "lojinhaMA78" /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `lojinhaMA78`;
-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: mysql-1812796d-emanuellehnert-fc8d.b.aivencloud.com    Database: lojinhaMA78
-- ------------------------------------------------------
-- Server version	8.0.45

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
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN= 0;

--
-- GTID state at the beginning of the backup 
--

SET @@GLOBAL.GTID_PURGED=/*!80000 '+'*/ '580c2625-3e7c-11f1-bc16-b216686ce97d:1-70';

--
-- Table structure for table `CLIENTE`
--

DROP TABLE IF EXISTS `CLIENTE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CLIENTE` (
  `ID_CLIENTE` int NOT NULL AUTO_INCREMENT,
  `nome_cliente` varchar(100) NOT NULL,
  `sobrenome_cliente` varchar(100) NOT NULL,
  `cpf_cliente` varchar(11) NOT NULL,
  `telefone_cliente` varchar(20) NOT NULL,
  `email_cliente` varchar(80) NOT NULL,
  `cidade_cliente` varchar(50) NOT NULL,
  `cep_cliente` varchar(10) NOT NULL,
  PRIMARY KEY (`ID_CLIENTE`),
  UNIQUE KEY `cpf_cliente` (`cpf_cliente`),
  UNIQUE KEY `telefone_cliente` (`telefone_cliente`),
  UNIQUE KEY `email_cliente` (`email_cliente`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CLIENTE`
--

LOCK TABLES `CLIENTE` WRITE;
/*!40000 ALTER TABLE `CLIENTE` DISABLE KEYS */;
INSERT INTO `CLIENTE` VALUES (1,'João','Silva','11111111111','11999999991','joao.silva@email.com','São Paulo','01000-000'),(2,'Maria','Santos','22222222222','11999999992','maria.santos@email.com','Rio de Janeiro','20000-000'),(3,'Carlos','Oliveira','33333333333','11999999993','carlos.oli@email.com','Belo Horizonte','30000-000'),(4,'Ana','Souza','44444444444','11999999994','ana.souza@email.com','Curitiba','80000-000'),(5,'Pedro','Costa','55555555555','11999999995','pedro.costa@email.com','Porto Alegre','90000-000');
/*!40000 ALTER TABLE `CLIENTE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ESTOQUE`
--

DROP TABLE IF EXISTS `ESTOQUE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ESTOQUE` (
  `ID_ESTOQUE` int NOT NULL AUTO_INCREMENT,
  `ID_PRODUTO` int DEFAULT NULL,
  `QUANTIDADE_ESTOQUE` int NOT NULL,
  `QUANTIDADE_MINIMA_ESTOQUE` int NOT NULL,
  `LOCALIZACAO_ESTOQUE` varchar(30) NOT NULL,
  `DATA_HORA_ENTRADA` datetime NOT NULL,
  `DATA_HORA_SAIDA` datetime NOT NULL,
  `LOTE` varchar(20) NOT NULL,
  `VALIDADE` date NOT NULL,
  `STATUS_ESTOQUE` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ID_ESTOQUE`),
  KEY `ID_PRODUTO` (`ID_PRODUTO`),
  CONSTRAINT `ESTOQUE_ibfk_1` FOREIGN KEY (`ID_PRODUTO`) REFERENCES `PRODUTO` (`id_produto`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ESTOQUE`
--

LOCK TABLES `ESTOQUE` WRITE;
/*!40000 ALTER TABLE `ESTOQUE` DISABLE KEYS */;
INSERT INTO `ESTOQUE` VALUES (1,1,100,20,'Corredor A','2026-04-01 08:00:00','2026-04-22 10:00:00','L1001','2026-12-31','Normal'),(2,2,150,30,'Corredor B','2026-04-02 09:00:00','2026-04-22 11:00:00','L1002','2026-10-15','Normal'),(3,3,200,50,'Corredor C','2026-04-05 14:00:00','2026-04-20 16:00:00','L1003','2027-05-20','Normal'),(4,4,0,10,'Corredor D','2026-01-10 10:00:00','2026-04-15 12:00:00','L1004','2026-08-10','Zerado'),(5,5,80,15,'Corredor E','2026-04-10 11:00:00','2026-04-22 15:00:00','L1005','2026-11-30','Normal');
/*!40000 ALTER TABLE `ESTOQUE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FORNECEDOR`
--

DROP TABLE IF EXISTS `FORNECEDOR`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `FORNECEDOR` (
  `ID_FORNECEDOR` int NOT NULL AUTO_INCREMENT,
  `NOME_FORNECEDOR` varchar(100) NOT NULL,
  `CNPJ_FORNECEDOR` varchar(20) NOT NULL,
  `TELEFONE_FORNECEDOR` varchar(20) NOT NULL,
  `EMAIL_FORNECEDOR` varchar(100) NOT NULL,
  `STATUS_FORNECEDOR` enum('ATIVO','INATIVO','BLOQUEADO') DEFAULT NULL,
  PRIMARY KEY (`ID_FORNECEDOR`),
  UNIQUE KEY `CNPJ_FORNECEDOR` (`CNPJ_FORNECEDOR`),
  UNIQUE KEY `EMAIL_FORNECEDOR` (`EMAIL_FORNECEDOR`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FORNECEDOR`
--

LOCK TABLES `FORNECEDOR` WRITE;
/*!40000 ALTER TABLE `FORNECEDOR` DISABLE KEYS */;
INSERT INTO `FORNECEDOR` VALUES (1,'Distribuidora Alimentos SA','11111111000111','11888888881','contato@distriba.com.br','ATIVO'),(2,'Atacadão do Grão LTDA','22222222000122','11888888882','vendas@atacadao.com.br','ATIVO'),(3,'Moinho Sul S.A.','33333333000133','11888888883','pedidos@moinhosul.com.br','ATIVO'),(4,'Importadora Azeites','44444444000144','11888888884','import@azeites.com.br','INATIVO'),(5,'Cafeicultores Unidos','55555555000155','11888888885','sac@cafeunidos.com.br','ATIVO');
/*!40000 ALTER TABLE `FORNECEDOR` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ITEM_VENDA`
--

DROP TABLE IF EXISTS `ITEM_VENDA`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ITEM_VENDA` (
  `ID_ITEM_VENDA` int NOT NULL AUTO_INCREMENT,
  `ID_VENDA` int DEFAULT NULL,
  `ID_PRODUTO` int DEFAULT NULL,
  `QUANTIDADE_ITEM` int NOT NULL,
  `PRECO_ITEM` decimal(5,2) NOT NULL,
  `SUBTOTAL_ITEM` decimal(5,2) NOT NULL,
  `IMPOSTO_ITEM` decimal(5,2) DEFAULT NULL,
  `OBSERVACAO_ITEM` text,
  PRIMARY KEY (`ID_ITEM_VENDA`),
  UNIQUE KEY `ID_VENDA` (`ID_VENDA`,`ID_PRODUTO`),
  KEY `ID_PRODUTO` (`ID_PRODUTO`),
  CONSTRAINT `ITEM_VENDA_ibfk_1` FOREIGN KEY (`ID_VENDA`) REFERENCES `VENDA` (`ID_VENDA`),
  CONSTRAINT `ITEM_VENDA_ibfk_2` FOREIGN KEY (`ID_PRODUTO`) REFERENCES `PRODUTO` (`id_produto`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ITEM_VENDA`
--

LOCK TABLES `ITEM_VENDA` WRITE;
/*!40000 ALTER TABLE `ITEM_VENDA` DISABLE KEYS */;
INSERT INTO `ITEM_VENDA` VALUES (1,1,1,1,25.50,25.50,1.50,'Arroz'),(2,1,2,1,8.90,8.90,0.50,'Feijão'),(3,2,5,1,15.30,15.30,1.00,'Café'),(4,3,4,1,35.90,35.90,2.00,'Azeite'),(5,5,1,1,25.50,25.50,1.50,'Arroz');
/*!40000 ALTER TABLE `ITEM_VENDA` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PAGAMENTO`
--

DROP TABLE IF EXISTS `PAGAMENTO`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PAGAMENTO` (
  `ID_PAGAMENTO` int NOT NULL AUTO_INCREMENT,
  `ID_VENDA` int DEFAULT NULL,
  `TIPO_PAGAMENTO` varchar(20) NOT NULL,
  `VALOR_PAGAMENTO` decimal(5,2) NOT NULL,
  `DATA_PAGAMENTO` datetime NOT NULL,
  `PARCELAS_PAGAMENTO` int NOT NULL,
  `IMPOSTO_PAGAMENTO` decimal(5,2) NOT NULL,
  `BANDEIRA_PAGAMENTO` varchar(20) DEFAULT 'PAGAMENTO SEM CARTAO',
  `OBSERVACAO_PAGAMENTO` text,
  PRIMARY KEY (`ID_PAGAMENTO`),
  KEY `ID_VENDA` (`ID_VENDA`),
  CONSTRAINT `PAGAMENTO_ibfk_1` FOREIGN KEY (`ID_VENDA`) REFERENCES `VENDA` (`ID_VENDA`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PAGAMENTO`
--

LOCK TABLES `PAGAMENTO` WRITE;
/*!40000 ALTER TABLE `PAGAMENTO` DISABLE KEYS */;
INSERT INTO `PAGAMENTO` VALUES (1,1,'Crédito',34.40,'2026-04-22 10:01:00',1,0.50,'Visa','Aprovado'),(2,2,'PIX',15.30,'2026-04-22 11:31:00',1,0.00,'PAGAMENTO SEM CARTAO','Recebido via QR Code'),(3,3,'Dinheiro',30.90,'2026-04-22 14:16:00',1,0.00,'PAGAMENTO SEM CARTAO','Troco para 50'),(4,4,'Débito',8.90,'2026-04-22 16:46:00',1,0.10,'Mastercard','Estornado'),(5,5,'PIX',25.50,'2026-04-22 18:21:00',1,0.00,'PAGAMENTO SEM CARTAO','Recebido via Chave Email');
/*!40000 ALTER TABLE `PAGAMENTO` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PRODUTO`
--

DROP TABLE IF EXISTS `PRODUTO`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PRODUTO` (
  `id_produto` int NOT NULL AUTO_INCREMENT,
  `nome_produto` varchar(100) NOT NULL,
  `descricao` text,
  `preco_produto` decimal(5,2) DEFAULT NULL,
  `categoria_produto` varchar(20) DEFAULT NULL,
  `marca_produto` varchar(20) DEFAULT NULL,
  `codigo_barras` varchar(50) DEFAULT NULL,
  `data_validade_produto` date DEFAULT '2026-01-01',
  `peso_produto` decimal(5,2) NOT NULL,
  `status_produto` enum('disponivel','indisponivel','NAN') DEFAULT NULL,
  PRIMARY KEY (`id_produto`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PRODUTO`
--

LOCK TABLES `PRODUTO` WRITE;
/*!40000 ALTER TABLE `PRODUTO` DISABLE KEYS */;
INSERT INTO `PRODUTO` VALUES (1,'Arroz Branco','Pacote de Arroz 5kg',25.50,'Alimentos','Marca A','7891111111111','2026-12-31',5.00,'disponivel'),(2,'Feijão Carioca','Pacote de Feijão 1kg',8.90,'Alimentos','Marca B','7892222222222','2026-10-15',1.00,'disponivel'),(3,'Macarrão','Espaguete 500g',4.50,'Alimentos','Marca C','7893333333333','2027-05-20',0.50,'disponivel'),(4,'Azeite','Azeite Extra Virgem 500ml',35.90,'Alimentos','Marca D','7894444444444','2026-08-10',0.50,'indisponivel'),(5,'Café','Café Torrado e Moído 500g',15.30,'Alimentos','Marca E','7895555555555','2026-11-30',0.50,'disponivel');
/*!40000 ALTER TABLE `PRODUTO` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `VENDA`
--

DROP TABLE IF EXISTS `VENDA`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `VENDA` (
  `ID_VENDA` int NOT NULL AUTO_INCREMENT,
  `DATA_VENDA` datetime NOT NULL,
  `VALOR_TOTAL` decimal(5,2) NOT NULL,
  `FORMA_PAGAMENTO` varchar(30) NOT NULL,
  `DESCONTO_VENDA` decimal(5,2) DEFAULT NULL,
  `ID_CLIENTE_NA_TABELA_VENDA` int DEFAULT NULL,
  `STATUS_VENDA` varchar(20) NOT NULL,
  `OBSERVACOES_VENDA` text,
  `CAIXA_VENDA` int NOT NULL,
  PRIMARY KEY (`ID_VENDA`),
  KEY `ID_CLIENTE_NA_TABELA_VENDA` (`ID_CLIENTE_NA_TABELA_VENDA`),
  CONSTRAINT `VENDA_ibfk_1` FOREIGN KEY (`ID_CLIENTE_NA_TABELA_VENDA`) REFERENCES `CLIENTE` (`ID_CLIENTE`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `VENDA`
--

LOCK TABLES `VENDA` WRITE;
/*!40000 ALTER TABLE `VENDA` DISABLE KEYS */;
INSERT INTO `VENDA` VALUES (1,'2026-04-22 10:00:00',34.40,'Cartão de Crédito',0.00,1,'Finalizada','Cliente VIP',1),(2,'2026-04-22 11:30:00',15.30,'PIX',0.00,2,'Finalizada','Sem observações',2),(3,'2026-04-22 14:15:00',30.90,'Dinheiro',5.00,3,'Finalizada','Desconto aplicado',1),(4,'2026-04-22 16:45:00',8.90,'Cartão de Débito',0.00,4,'Cancelada','Desistência no caixa',2),(5,'2026-04-22 18:20:00',25.50,'PIX',0.00,5,'Finalizada','',1);
/*!40000 ALTER TABLE `VENDA` ENABLE KEYS */;
UNLOCK TABLES;
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-04-22 21:31:41


-- BANCO 
-- create database if not exists lojinhaMA78;
create database lojinhaMA78;
use lojinhaMA78;-- comando para usar um bd especifico
SHOW databases; -- mostrar bancos atuais 
-- criando uma tabela padrao 
CREATE TABLE CLIENTE (
    ID_CLIENTE INT PRIMARY KEY AUTO_INCREMENT,
    nome_cliente VARCHAR(100) not null,
    sobrenome_cliente VARCHAR(100) not null,
    cpf_cliente VARCHAR(11) UNIQUE not null,
    telefone_cliente VARCHAR(20) UNIQUE not null,
    email_cliente VARCHAR(80) UNIQUE not null,
    cidade_cliente VARCHAR(50) not null,
    cep_cliente VARCHAR(10) not null
);
-- drop database lojinhaMA78;
CREATE TABLE  PRODUTO(
id_produto int primary key auto_increment,
nome_produto varchar(100) not null,
descricao text,
preco_produto decimal(5,2),
categoria_produto varchar(20),
marca_produto varchar(20),
codigo_barras varchar(50),
data_validade_produto date default '2026-01-01',
peso_produto decimal(5,2) not null,
status_produto enum('disponivel','indisponivel', 'NAN')
); 

CREATE TABLE FORNECEDOR(
ID_FORNECEDOR INT PRIMARY KEY auto_increment,
NOME_FORNECEDOR VARCHAR(100) NOT NULL,
CNPJ_FORNECEDOR VARCHAR(20) NOT NULL UNIQUE,
TELEFONE_FORNECEDOR VARCHAR(20) NOT NULL,
EMAIL_FORNECEDOR VARCHAR(100) NOT NULL UNIQUE,
STATUS_FORNECEDOR ENUM('ATIVO', 'INATIVO','BLOQUEADO'));

CREATE TABLE VENDA(
ID_VENDA INT PRIMARY KEY auto_increment,
DATA_VENDA DATETIME NOT NULL,
VALOR_TOTAL DECIMAL(5,2) NOT NULL,
FORMA_PAGAMENTO VARCHAR(30) NOT NULL,
DESCONTO_VENDA DECIMAL(5,2),
ID_CLIENTE_NA_TABELA_VENDA INT,
STATUS_VENDA VARCHAR(20) NOT NULL,
OBSERVACOES_VENDA TEXT,
CAIXA_VENDA INT NOT NULL,
foreign key(ID_CLIENTE_NA_TABELA_VENDA) references CLIENTE(ID_CLIENTE)
);

CREATE TABLE ITEM_VENDA(
ID_ITEM_VENDA INT primary KEY auto_increment,
ID_VENDA INT,
ID_PRODUTO INT,
QUANTIDADE_ITEM INT NOT NULL,
PRECO_ITEM DECIMAL(5,2) NOT NULL,
SUBTOTAL_ITEM DECIMAL (5,2) NOT NULL,
IMPOSTO_ITEM DECIMAL(5,2),
OBSERVACAO_ITEM TEXT,
foreign key (ID_VENDA) references VENDA(ID_VENDA),
foreign key (ID_PRODUTO) references PRODUTO(ID_PRODUTO),
UNIQUE (ID_VENDA, ID_PRODUTO) -- UNIQUE COMPOSTO
); 

CREATE TABLE ESTOQUE(
ID_ESTOQUE INT primary KEY auto_increment,
ID_PRODUTO INT,
QUANTIDADE_ESTOQUE INT NOT NULL,
QUANTIDADE_MINIMA_ESTOQUE INT NOT NULL,
LOCALIZACAO_ESTOQUE VARCHAR(30) NOT NULL,
DATA_HORA_ENTRADA DATETIME NOT NULL,
DATA_HORA_SAIDA DATETIME NOT NULL,
LOTE VARCHAR(20) NOT NULL,
VALIDADE DATE NOT NULL,
STATUS_ESTOQUE VARCHAR(20),
foreign key(ID_PRODUTO) references PRODUTO(ID_PRODUTO)
);

CREATE TABLE PAGAMENTO(
ID_PAGAMENTO INT PRIMARY KEY auto_increment,
ID_VENDA INT,
TIPO_PAGAMENTO VARCHAR(20) NOT NULL, 
VALOR_PAGAMENTO DECIMAL(5,2) NOT NULL,
DATA_PAGAMENTO DATETIME NOT NULL,
PARCELAS_PAGAMENTO INT NOT NULL,
IMPOSTO_PAGAMENTO DECIMAL(5,2) NOT NULL,
BANDEIRA_PAGAMENTO VARCHAR(20) DEFAULT 'PAGAMENTO SEM CARTAO',
OBSERVACAO_PAGAMENTO TEXT,
foreign key(ID_VENDA) references VENDA(ID_VENDA)
);
-- DROP DATABASE lojinhaMA78;
