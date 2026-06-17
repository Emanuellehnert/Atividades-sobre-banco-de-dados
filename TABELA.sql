
use atividade_12;

-- 1. Clientes
CREATE TABLE cliente (
    id_cliente INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    cpf VARCHAR(14) UNIQUE NOT NULL,
    email VARCHAR(100)
);

-- 2. Transporte
CREATE TABLE transporte (
    id_transporte INT PRIMARY KEY AUTO_INCREMENT,
    tipo VARCHAR(50), -- Aéreo, Rodoviário
    valor_transporte DECIMAL(10, 2)
);

-- 3. Hospedagem
CREATE TABLE hospedagem (
    id_hospedagem INT PRIMARY KEY AUTO_INCREMENT,
    descricao VARCHAR(100),
    valor_diaria DECIMAL(10, 2)
);

-- 4. Pacote (Relaciona transporte e hospedagem)
CREATE TABLE pacote (
    id_pacote INT PRIMARY KEY AUTO_INCREMENT,
    destino VARCHAR(100),
    quantidade_dias INT,
    id_transporte INT,
    id_hospedagem INT,
    FOREIGN KEY (id_transporte) REFERENCES transporte(id_transporte),
    FOREIGN KEY (id_hospedagem) REFERENCES hospedagem(id_hospedagem)
);

-- 5. Venda
CREATE TABLE venda (
    id_venda INT PRIMARY KEY AUTO_INCREMENT,
    data_venda DATE,
    forma_pagamento VARCHAR(50),
    valor_total_dolar DECIMAL(10, 2),
    id_cliente INT,
    id_pacote INT,
    FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente),
    FOREIGN KEY (id_pacote) REFERENCES pacote(id_pacote)
);