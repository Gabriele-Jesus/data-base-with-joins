--Listar os alunos e os cursos em que estão matriculados:
SELECT 
    Alunos.Nome AS Nome_Aluno,
    Cursos.Nome_Curso AS Curso,
    Matriculas.Data_Matricula
FROM 
    Matriculas
INNER JOIN 
    Alunos ON Matriculas.Aluno_ID = Alunos.ID
INNER JOIN 
    Cursos ON Matriculas.Curso_ID = Cursos.Curso_ID;


--Listar todos os cursos e a quantidade de alunos matriculados em cada curso:
SELECT 
    Cursos.Nome_Curso,
    COUNT(Matriculas.Matricula_ID) AS Total_Alunos
FROM 
    Cursos
LEFT JOIN 
    Matriculas ON Cursos.Curso_ID = Matriculas.Curso_ID
GROUP BY 
    Cursos.Nome_Curso;


-- Mostrar os dados de todos os alunos, incluindo aqueles que ainda não estão matriculados:
SELECT 
    Alunos.Nome AS Nome_Aluno,
    Cursos.Nome_Curso AS Curso
FROM 
    Alunos
LEFT JOIN 
    Matriculas ON Alunos.ID = Matriculas.Aluno_ID
LEFT JOIN 
    Cursos ON Matriculas.Curso_ID = Cursos.Curso_ID;

--O inner Join retornará apenas os registros que têm correspondência em ambas as tabelas

--O keft Join retornará todos os registros da tabela à esquerda (mesmo sem correspondência na tabela à direita).