-- Integrantes do Grupo: (Livraria Orvil)
-- Felipe Almeida da Silva
-- Guilherme Teixeira de Sales da Silva
-- Jorge Luiz Furtado Maia
-- Luis Felipe Costa Pedro

create database db_livrariaorvil;
use db_livrariaorvil;

CREATE TABLE if not exists categoria (
    id_categoria INT AUTO_INCREMENT PRIMARY KEY,
    descricao VARCHAR(100) NOT NULL
);

CREATE TABLE if not exists editora (
    id_editora INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL
);

CREATE TABLE if not exists autor (
    id_autor INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL
);

CREATE TABLE if not exists livro (
    id_livro INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(200) NOT NULL,
    isbn VARCHAR(20) UNIQUE NOT NULL,
    preco DECIMAL(10,2) NOT NULL,
    estoque INT DEFAULT 0,
    id_editora INT,
    id_categoria INT,
    FOREIGN KEY (id_editora) REFERENCES editora(id_editora),
    FOREIGN KEY (id_categoria) REFERENCES categoria(id_categoria)
);

CREATE TABLE if not exists livro_autor (
    id_livro INT,
    id_autor INT,
    PRIMARY KEY (id_livro, id_autor),
    FOREIGN KEY (id_livro) REFERENCES livro(id_livro),
    FOREIGN KEY (id_autor) REFERENCES autor(id_autor)
);

CREATE TABLE if not exists cliente (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE
);

CREATE TABLE if not exists venda (
    id_venda INT AUTO_INCREMENT PRIMARY KEY,
    id_cliente INT,
    data DATE NOT NULL,
    valor_total DECIMAL(10,2),
    FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente)
);

CREATE TABLE if not exists item_venda (
    id_venda INT,
    id_livro INT,
    quantidade INT NOT NULL,
    preco_unitario DECIMAL(10,2) NOT NULL,
    PRIMARY KEY (id_venda, id_livro),
    FOREIGN KEY (id_venda) REFERENCES venda(id_venda),
    FOREIGN KEY (id_livro) REFERENCES livro(id_livro)
);

