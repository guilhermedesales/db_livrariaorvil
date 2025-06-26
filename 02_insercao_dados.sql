USE db_livrariaorvil;

INSERT INTO editora (nome) VALUES
('Editora Moderna'),
('Companhia das Letras'),
('Editora Atlas');

INSERT INTO autor (nome) VALUES
('Machado de Assis'),
('Isaac Asimov'),
('Augusto Cury');

INSERT INTO livro (titulo, isbn, preco, estoque, id_editora) VALUES
('Dom Casmurro', '978-85-01-00001-1', 39.90, 10, 1),
('Fundação', '978-85-01-00002-2', 49.90, 15, 2),
('O Vendedor de Sonhos', '978-85-01-00003-3', 29.90, 20, 2);

INSERT INTO livro_autor (id_livro, id_autor) VALUES
(1, 1),
(2, 2),
(3, 3);

INSERT INTO cliente (nome, email) VALUES
('Ana Paula', 'ana.paula@email.com'),
('Carlos Silva', 'carlos.silva@email.com');

INSERT INTO venda (id_cliente, data, valor_total) VALUES
(1, '2025-06-15', 89.80),
(2, '2025-06-16', 49.90);

select * from livro_autor;
