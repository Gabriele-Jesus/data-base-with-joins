CREATE TABLE Alunos (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(100),
    Email VARCHAR(100),
    Curso VARCHAR(50)
);

CREATE TABLE Cursos (
    Curso_ID INT AUTO_INCREMENT PRIMARY KEY,
    Nome_Curso VARCHAR(100),
    Duracao INT
);

CREATE TABLE Matriculas (
    Matricula_ID INT AUTO_INCREMENT PRIMARY KEY,
    Aluno_ID INT,
    Curso_ID INT,
    Data_Matricula DATE,
    FOREIGN KEY (Aluno_ID) REFERENCES Alunos(ID),
    FOREIGN KEY (Curso_ID) REFERENCES Cursos(Curso_ID)
);
