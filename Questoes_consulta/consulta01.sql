-- Questão 06 junção e ordenação
SELECT
    Clientes.NomeCliente,
    Pedidos.PedidoID,
    Pedidos.DataPedido
FROM
    Clientes INNER JOIN Pedidos
    ON Clientes.ClienteID = Pedidos.ClienteID
ORDER BY Pedidos.DataPedido Desc

