use db_livrariaorvil;

-- dados dos livros com autores e editoras ------------------------------------------------------------
CREATE VIEW vw_livros_autores_editoras AS
SELECT
    l.id_livro,
    l.titulo,
    l.isbn,
    l.preco,
    l.estoque,
    e.nome AS editora,
    a.nome AS autor
FROM livro l
JOIN editora e ON l.id_editora = e.id_editora
JOIN livro_autor la ON l.id_livro = la.id_livro
JOIN autor a ON la.id_autor = a.id_autor;

select * from vw_livros_autores_editoras;

-- resumo de vendas com o nome dos clientes ---------------------------------------------------------------
CREATE VIEW vw_vendas_resumidas AS
SELECT
    v.id_venda,
    c.nome AS cliente,
    v.data,
    v.valor_total
FROM venda v
JOIN cliente c ON v.id_cliente = c.id_cliente;

select * from vw_vendas_resumidas;

-- livros com estoque abaixo ou igual a 10 --------------------------------------------------------------
CREATE VIEW vw_estoque_baixo AS
SELECT
    id_livro,
    titulo,
    estoque
FROM livro
WHERE estoque <= 10;

select * from vw_estoque_baixo;
