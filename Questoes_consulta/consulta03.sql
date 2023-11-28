--Questão 08 Projessão e Filtros
SELECT
    Funcionarios.NomeFuncionario,
    Funcionarios.Cargo,
    Funcionarios.Salario
FROM
    Funcionarios
WHERE
    Funcionarios.Salario > 50000
