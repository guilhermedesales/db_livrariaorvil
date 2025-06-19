USE db_livrariaorvil;

INSERT INTO categoria (descricao) VALUES
('Romance'),
('Ficção Científica'),
('Autoajuda'),
('Técnico');

INSERT INTO editora (nome) VALUES
('Editora Moderna'),
('Companhia das Letras'),
('Editora Atlas'),
('Saraiva');

INSERT INTO autor (nome) VALUES
('Machado de Assis'),
('Isaac Asimov'),
('Augusto Cury'),
('Robert C. Martin');

INSERT INTO livro (titulo, isbn, preco, estoque, id_editora, id_categoria) VALUES
('Dom Casmurro', '978-85-01-00001-1', 39.90, 10, 1, 1),
('Fundação', '978-85-01-00002-2', 49.90, 15, 2, 2),
('O Vendedor de Sonhos', '978-85-01-00003-3', 29.90, 20, 2, 3),
('Código Limpo', '978-85-01-00004-4', 79.90, 5, 3, 4);

INSERT INTO livro_autor (id_livro, id_autor) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4);

INSERT INTO cliente (nome, email) VALUES
('Ana Paula', 'ana.paula@email.com'),
('Carlos Silva', 'carlos.silva@email.com');

INSERT INTO venda (id_cliente, data, valor_total) VALUES
(1, '2025-06-15', 89.80),
(2, '2025-06-16', 79.90);

INSERT INTO item_venda (id_venda, id_livro, quantidade, preco_unitario) VALUES
(1, 1, 1, 39.90),
(1, 3, 1, 49.90),
(2, 4, 1, 79.90);
