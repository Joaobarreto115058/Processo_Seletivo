-------------------------------------------------------------
---Criar Tabela Notas
CREATE TABLE Notas (
    AlunoID NUMBER(10) NOT NULL,
    Disciplina VARCHAR2(75) NOT NULL,
    Nota NUMBER(4,2) NOT NULL
);
/

--Definir Chave Estrangeira Aluno
ALTER TABLE Notas ADD (
    CONSTRAINT nota_fk FOREIGN KEY (AlunoID)
	REFERENCES Alunos (AlunoID));
/


--Carga para tabela Aluno
INSERT INTO Notas
(AlunoID, Disciplina, Nota)
VALUES
(1, 'Física', 5.3);
