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
    ('Rihanna da Silva', '95673425607', '1324987', '2002-02-04', 'Rua Jackson, 11'),
    ('Rihanna Pereira', '95673425603', '1324988', '2002-02-03', 'Rua Jackson, 10'),
    ('Rihanna Ferreira', '95673425601', '1324989', '2002-02-02', 'Rua Jackson, 09'),
    ('Rihanna Donda', '95673425602', '1324982', '2002-02-01', 'Rua Jackson, 02'),
    ('Travis pereira', '12365432198', '6754123', '1999-06-16', 'Avenida Bacon, 236');

INSERT INTO Cursos (codigo_identificacao, nome, carga_horaria) VALUES
    ('INF1', 'Informática', 65),
    ('ENG1', 'Inglês', 42),
    ('INF2', 'Informática', 65),
    ('ENG2', 'Inglês', 42),
    ('ADM1', 'Administração', 55);

INSERT INTO Professores (registro, nome, especialidade, contato) VALUES
    (123, 'Professor1', 'Informática', 'cleitinho1@email.com'),
    (123, 'Professor2', 'Informática', 'cleito1@email.com'),
    (123, 'Professor3', 'Informática', 'clonaldo1@email.com'),
    (123, 'Professor4', 'Informática', 'santos1@email.com'),
    (456, 'Professor5', 'Inglês', 'jonasking@email.com');

INSERT INTO Matriculas (cod_aluno, cod_curso, notas) VALUES
    (1, 1, '10,6,9,7'),
    (1, 2, '3,7,8,6'),
    (1, 1, '10,6,9,5'),
    (1, 2, '3,7,8,4'),
    (2, 1, '8,2,7,9');

