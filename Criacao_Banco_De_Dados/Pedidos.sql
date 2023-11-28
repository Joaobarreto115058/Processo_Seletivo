-------------------------------------------------------------
---Criar Tabela Pedidos
CREATE TABLE Pedidos (
    PedidoID NUMBER(10) NOT NULL,
    ClienteID NUMBER(10) NOT NULL,
    ProdutoID NUMBER(10) NOT NULL,
    DataPedido DATE NOT NULL
);

--Definir Chave Estrangeira Cliente
ALTER TABLE Pedidos ADD (
    CONSTRAINT cliente_fk FOREIGN KEY (ClienteID)
	REFERENCES Clientes (ClienteID));
/

--Definir Chave Estrangeira Produto
ALTER TABLE Pedidos ADD (
    CONSTRAINT produto_fk FOREIGN KEY (ProdutoID)
	REFERENCES Produtos (ProdutoID));
/

--Carga para tabela Pedidos
INSERT INTO Pedidos 
(PedidoID, ClienteID, ProdutoID, DataPedido)
VALUES
(3,21 ,6, sysdate);