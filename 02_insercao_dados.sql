USE db_livrariaorvil;

-- Editoras
INSERT INTO editora (nome) VALUES
('Editora Moderna'),
('Companhia das Letras'),
('Editora Atlas'),
('Editora Saraiva'),
('Grupo Editorial Record'),
('Editora Melhoramentos');


-- Autores
INSERT INTO autor (nome) VALUES
('Machado de Assis'),
('Isaac Asimov'),
('Augusto Cury'),
('Paulo Coelho'),
('J.K. Rowling'),
('George Orwell');

-- Livros
INSERT INTO livro (titulo, isbn, preco, estoque, id_editora) VALUES
('Dom Casmurro', '978-85-01-00001-1', 39.90, 10, 1),
('Fundação', '978-85-01-00002-2', 49.90, 15, 2),
('O Vendedor de Sonhos', '978-85-01-00003-3', 29.90, 20, 2),
('O Alquimista', '978-85-01-00004-4', 44.90, 12, 4),
('Harry Potter e a Pedra Filosofal', '978-85-01-00005-5', 59.90, 8, 5),
('1984', '978-85-01-00006-6', 39.90, 7, 6);

-- Livro-Autor
INSERT INTO livro_autor (id_livro, id_autor) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6);

-- Clientes
INSERT INTO cliente (nome, email) VALUES
('Ana Paula', 'ana.paula@email.com'),
('Carlos Silva', 'carlos.silva@email.com'),
('Mariana Costa', 'mariana.costa@email.com'),
('Roberto Lima', 'roberto.lima@email.com'),
('Fernanda Souza', 'fernanda.souza@email.com');

-- Vendas
INSERT INTO venda (id_cliente, data, valor_total) VALUES
(1, '2025-06-15', 89.80),
(2, '2025-06-16', 49.90),
(3, '2025-06-20', 44.90),
(4, '2025-06-21', 119.80),
(5, '2025-06-22', 39.90);
