-------------------------------------------------------------
---Criar Tabela Produtos
CREATE TABLE Produtos (
    ProdutoID NUMBER(10) NOT NULL,
    NomeProduto VARCHAR2(75) NOT NULL,
    CategoriaID NUMBER(10) NOT NULL
);
/

--Definir Chave Primária
ALTER TABLE Produtos ADD (
    CONSTRAINT produto_pk PRIMARY KEY (ProdutoID))
;
/

--Definir Chave Estrangeira Categoria
ALTER TABLE Produtos ADD (
    CONSTRAINT categoria_fk FOREIGN KEY (CategoriaID)
	REFERENCES Categorias (CategoriaID));
/

--Criar Sequencia para tabela cliente
CREATE SEQUENCE seq_produto START WITH 1;
/

--Carga para tabela produtos
INSERT INTO Produtos 
(ProdutoID, NomeProduto, CategoriaID)
VALUES
(seq_produto.nextval,'Mi Band 4',5);