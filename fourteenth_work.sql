create database siga;

CREATE OR REPLACE TABLE Disciplina (
    codigo INT(2) NOT NULL AUTO_INCREMENT,
    nome VARCHAR (20) NOT NULL ,
    KEY (codigo)
);

CREATE OR REPLACE TABLE Matricula(
    codigo INT(2) NOT NULL AUTO_INCREMENT,
    horario DATETIME NOT NULL,
    KEY (codigo)
);

CREATE OR REPLACE TABLE Pessoa(
    codigo INT(2) NOT NULL AUTO_INCREMENT,
    nome VARCHAR(20) NOT NULL,
    key (codigo)
);

CREATE OR REPLACE TABLE Professor(
    matricula INT NOT NULL,
    nome VARCHAR(20) NOT NULL
);

CREATE OR REPLACE TABLE Aluno(
    matricula INT NOT NULL,
    nome VARCHAR(20) NOT NULL
);

CREATE ROLE 'diretor', 'professor', 'coordenador', 'secretaria', 'aluno';
