CRIANDO TABELAS-----------------------------------------------
CREATE TABLE Alunos (
    cod_aluno INTEGER PRIMARY KEY,
    nome TEXT,
    cpf TEXT,
    rg TEXT,
    data_nascimento TEXT,
    endereco TEXT
);

CREATE TABLE Cursos (
    cod_curso INTEGER PRIMARY KEY,
    codigo_identificacao TEXT,
    nome TEXT,
    carga_horaria INTEGER
);


CREATE TABLE Professores (
    cod_professor INTEGER PRIMARY KEY,
    registro INTEGER,
    nome TEXT,
    especialidade TEXT,
    contato TEXT
);


CREATE TABLE Matriculas (
    cod_matricula INTEGER PRIMARY KEY,
    cod_aluno INTEGER,
    cod_curso INTEGER,
    notas TEXT,
    FOREIGN KEY (cod_aluno) REFERENCES Alunos(cod_aluno),
    FOREIGN KEY (cod_curso) REFERENCES Cursos(cod_curso)
);


POPULANDO TABELAS------------------------------------------------------------

INSERT INTO Alunos (nome, cpf, rg, data_nascimento, endereco) VALUES
    ('Rihanna da Silva', '95673425600', '1324987', '2002-02-01', 'Rua Jackson, 12'),
    ('Travis pereira', '12365432198', '6754123', '1999-06-16', 'Avenida Bacon, 236');

INSERT INTO Cursos (codigo_identificacao, nome, carga_horaria) VALUES
    ('INF1', 'Informática', 65),
    ('ENG2', 'Inglês', 42),
    ('ADM3', 'Administração', 55);

INSERT INTO Professores (registro, nome, especialidade, contato) VALUES
    (123, 'Professor1', 'Informática', 'cleitinho1@email.com'),
    (456, 'Professor2', 'Inglês', 'jonasking@email.com');

INSERT INTO Matriculas (cod_aluno, cod_curso, notas) VALUES
    (1, 1, '10,6,9,5'),
    (1, 2, '3,7,8,6'),
    (2, 1, '8,2,7,9');

