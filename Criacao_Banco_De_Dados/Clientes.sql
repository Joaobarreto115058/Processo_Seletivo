-------------------------------------------------------------
---Criar Tabela Clientes
CREATE TABLE clientes (
    ClienteID NUMBER(10) NOT NULL,
    NomeCliente VARCHAR2(75) NOT NULL,
    Email VARCHAR2(50) NOT NULL
);
/

--Definir Chave Primária
ALTER TABLE clientes ADD (
    CONSTRAINT clienteID_pk PRIMARY KEY (clienteID));
/

--Criar Sequencia para tabela cliente
CREATE SEQUENCE seq_clientes START WITH 1;
/

--Carga para tabela cliente
INSERT INTO clientes 
(clienteID, NomeCliente, Email)
VALUES
(seq_clientes.nextval,'Ana Carolina','ana.carol@gmail.com');
/