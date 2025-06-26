use db_livrariaorvil;

-- livros com preço acima da media -----------------------------------------------------------------
SELECT titulo, preco
FROM livro
WHERE preco > (SELECT AVG(preco) FROM livro);

-- inicia da transação --------------------------------------------------------------------------------
START TRANSACTION;

INSERT INTO cliente (nome, email) VALUES ('João da Silva', 'joaoSilva@email.com');

INSERT INTO venda (id_cliente, data, valor_total) 
VALUES (0, '2025-06-26', 50.00);

COMMIT; -- salva no banco so se não ocorrer erros em nenhuma parte da transaction ---------------------

-- editoras com mais de 1 livro e com preço medio acima de 35 -------------------------------------------
SELECT 
    e.nome AS editora,
    COUNT(l.id_livro) AS total_livros,
    AVG(l.preco) AS preco_medio
FROM livro l
JOIN editora e ON l.id_editora = e.id_editora
GROUP BY e.id_editora
HAVING COUNT(l.id_livro) > 1 AND AVG(l.preco) > 35;

-- index pra acelerar a busca por titulo ------------------------------------------------------------------
CREATE INDEX idx_titulo ON livro(titulo);

-- total de estoque e preço max dos livros por editora ----------------------------------------------------
SELECT e.nome AS editora, SUM(l.estoque) AS total_estoque, MAX(l.preco) AS preco_maximo
FROM livro l
JOIN editora e ON l.id_editora = e.id_editora
GROUP BY e.id_editora;

