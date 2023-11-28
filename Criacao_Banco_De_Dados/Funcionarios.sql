-------------------------------------------------------------
---Criar Tabela Funcioários
CREATE TABLE Funcionarios (
    FuncionarioID NUMBER(10) NOT NULL,
    NomeFuncionario VARCHAR2(75) NOT NULL,
    Cargo VARCHAR2(75) NOT NULL,
    Salario NUMBER(10,2)
);
/

--Definir Chave Primária
ALTER TABLE Funcionarios ADD (
    CONSTRAINT funcionario_pk PRIMARY KEY (FuncionarioID)
    );
/

--Criar Sequencia para tabela Categora
CREATE SEQUENCE seq_funcionario START WITH 1;

--Carga para tabela categoria
INSERT INTO Funcionarios 
(FuncionarioID, NomeFuncionario, Cargo, Salario)
VALUES
(seq_funcionario.nextval,'Luiz Carlos', 'Serviço Gerais', 1240.14);


