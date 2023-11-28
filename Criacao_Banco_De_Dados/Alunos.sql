-------------------------------------------------------------
---Criar Tabela Alunos
CREATE TABLE Alunos (
    AlunoID NUMBER(10) NOT NULL,
    NomeAluno VARCHAR2(75) NOT NULL
);
/

--Definir Chave Primária
ALTER TABLE Alunos ADD (
    CONSTRAINT Aluno_pk PRIMARY KEY (AlunoID));
/

--Criar Sequencia para tabela Aluno
CREATE SEQUENCE seq_aluno START WITH 1;

--Carga para tabela Aluno
INSERT INTO Alunos
(AlunoID, NomeAluno)
VALUES
(seq_aluno.nextval,'Carol Silva');



