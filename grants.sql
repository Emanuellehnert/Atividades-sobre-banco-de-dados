-- 1. Conceder todos os privilégios ao usuário com seu nome

CREATE USER 'emanuel'@'localhost' IDENTIFIED BY '123456';

GRANT ALL PRIVILEGES
ON *.*
TO 'emanuel'@'localhost';

FLUSH PRIVILEGES;


-- 2. Criar uma nova base de dados com duas tabelas

CREATE DATABASE EMPRESA;

USE EMPRESA;

CREATE TABLE CLIENTE (
    id_cliente INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    email VARCHAR(100)
);

CREATE TABLE PRODUTO (
    id_produto INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    preco DECIMAL(10,2)
);


-- Inserir alguns dados para testes

INSERT INTO CLIENTE (nome, email)
VALUES
('João Silva', 'joao@email.com'),
('Maria Souza', 'maria@email.com');

INSERT INTO PRODUTO (nome, preco)
VALUES
('Notebook', 3500.00),
('Mouse', 80.00);


-- 3. Criar o usuário programador

CREATE USER 'programador'@'localhost'
IDENTIFIED BY '123456';


-- 4. Conceder apenas SELECT, INSERT e UPDATE
-- na tabela CLIENTE

GRANT SELECT, INSERT, UPDATE
ON EMPRESA.CLIENTE
TO 'programador'@'localhost';

FLUSH PRIVILEGES;