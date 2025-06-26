use db_livrariaorvil;

-- quantidade de livro em estoque por editora
SELECT
    e.nome AS editora,
    SUM(l.estoque) AS total_estoque
FROM editora e
JOIN livro l ON e.id_editora = l.id_editora
GROUP BY e.nome;

-- historico de vendas, do mais recente pro mais antigo
SELECT
    v.id_venda,
    c.nome AS cliente,
    v.data,
    v.valor_total
FROM venda v
JOIN cliente c ON v.id_cliente = c.id_cliente
ORDER BY v.data DESC;

-- livros com estoque maior q 0
SELECT 
    l.titulo, 
    a.nome AS autor, 
    e.nome AS editora, 
    l.preco
FROM livro l
JOIN livro_autor la ON l.id_livro = la.id_livro
JOIN autor a ON la.id_autor = a.id_autor
JOIN editora e ON l.id_editora = e.id_editora
WHERE l.estoque > 0
ORDER BY l.titulo;

SELECT 
    l.titulo, 
    a.nome AS autor
FROM livro l
LEFT JOIN livro_autor la ON l.id_livro = la.id_livro
LEFT JOIN autor a ON la.id_autor = a.id_autor
ORDER BY l.titulo;

SELECT 
    a.nome AS autor, 
    l.titulo
FROM livro l
RIGHT JOIN livro_autor la ON l.id_livro = la.id_livro
RIGHT JOIN autor a ON la.id_autor = a.id_autor
ORDER BY a.nome;

