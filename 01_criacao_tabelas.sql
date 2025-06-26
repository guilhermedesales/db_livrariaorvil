-- Integrantes do Grupo: (Livraria Orvil)
-- Felipe Almeida da Silva
-- Guilherme Teixeira de Sales da Silva
-- Jorge Luiz Furtado Maia
-- Luis Felipe Costa Pedro

CREATE DATABASE IF NOT EXISTS db_livrariaorvil;
USE db_livrariaorvil;

CREATE TABLE IF NOT EXISTS editora (
    id_editora INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL
);

CREATE TABLE IF NOT EXISTS autor (
    id_autor INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL
);

CREATE TABLE IF NOT EXISTS livro (
    id_livro INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(200) NOT NULL,
    isbn VARCHAR(20) UNIQUE NOT NULL,
    preco DECIMAL(10,2) NOT NULL,
    estoque INT DEFAULT 0,
    id_editora INT,
    FOREIGN KEY (id_editora) REFERENCES editora(id_editora)
);

CREATE TABLE IF NOT EXISTS livro_autor (
    id_livro INT,
    id_autor INT,
    PRIMARY KEY (id_livro, id_autor),
    FOREIGN KEY (id_livro) REFERENCES livro(id_livro),
    FOREIGN KEY (id_autor) REFERENCES autor(id_autor)
);

CREATE TABLE IF NOT EXISTS cliente (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE
);

CREATE TABLE IF NOT EXISTS venda (
    id_venda INT AUTO_INCREMENT PRIMARY KEY,
    id_cliente INT,
    data DATE NOT NULL,
    valor_total DECIMAL(10,2),
    FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente)
);