--Questão 10 Join Múltiplo e Funções Agregadas
SELECT
    Clientes.NomeCliente,
    Pedidos.PedidoID,
    COUNT(Pedidos.ProdutoID) AS Total_Produtos
FROM
    Pedidos INNER JOIN Clientes
    ON Pedidos.ClienteID = Clientes.ClienteID
    INNER JOIN Produtos ON Pedidos.ProdutoID = Produtos.ProdutoID
GROUP BY Clientes.NomeCliente, Pedidos.PedidoID

