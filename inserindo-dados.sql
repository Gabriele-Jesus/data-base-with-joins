INSERT INTO Alunos (Nome, Email, Curso)
VALUES 
('João Silva', 'joao.silva@email.com', 'Matemática'),
('Maria Oliveira', 'maria.oliveira@email.com', 'Física'),
('Carlos Souza', 'carlos.souza@email.com', 'Química');


INSERT INTO Cursos (Nome_Curso, Duracao)
VALUES 
('Matemática', 36),
('Física', 48),
('Química', 40);


INSERT INTO Matriculas (Aluno_ID, Curso_ID, Data_Matricula)
VALUES 
(1, 1, '2024-01-15'),
(2, 2, '2024-02-20'),
(3, 3, '2024-03-10');
