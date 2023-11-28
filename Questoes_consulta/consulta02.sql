-- Questão 07 Agrupamento e Contagem
SELECT
    Categorias.NomeCategoria,
    COUNT(Produtos.ProdutoID) AS Total
FROM
    Produtos INNER JOIN Categorias
    ON Produtos.CategoriaID = Categorias.CategoriaID
GROUP BY Categorias.NomeCategoria
