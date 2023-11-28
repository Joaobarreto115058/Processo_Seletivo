-------------------------------------------------------------
---Criar Tabela Categorias
CREATE TABLE Categorias (
    CategoriaID NUMBER(10) NOT NULL,
    NomeCategoria VARCHAR2(75) NOT NULL
);
/

--Definir Chave Primária
ALTER TABLE Categorias ADD (
    CONSTRAINT Categoria_pk PRIMARY KEY (CategoriaID));
/

--Criar Sequencia para tabela Categora
CREATE SEQUENCE seq_categorias START WITH 1;

--Carga para tabela categoria
INSERT INTO Categorias 
(CategoriaID, NomeCategoria)
VALUES
(seq_categorias.nextval,'Celular');
/