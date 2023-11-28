--Questão 09 Subconsultas e Relaçionamnetos
SELECT
    Alunos.NomeAluno,
    TRUNC(AVG(Notas.Nota),2) AS Media
FROM
    Alunos INNER JOIN Notas
    ON Alunos.AlunoID = Notas.AlunoID
GROUP BY Alunos.NomeAluno
