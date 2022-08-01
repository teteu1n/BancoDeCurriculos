CREATE DATABASE projeto;

USE projeto;

CREATE TABLE usuario (
nome varchar(255),
id int PRIMARY KEY AUTO_INCREMENT,
email varchar(255),
tipo int,
cpf varchar(14),
senha varchar(255)
);

CREATE TABLE curriculo (
id_curr int PRIMARY KEY AUTO_INCREMENT,
curso varchar(255),
nome varchar(255),
email varchar(255),
telefone varchar(255)
);

CREATE TABLE competencias (
id_comp int PRIMARY KEY AUTO_INCREMENT,
competencia varchar(255),
id_curr int,
FOREIGN KEY(id_curr) REFERENCES curriculo (id_curr)
);

CREATE TABLE habilidades (
id_hab int PRIMARY KEY AUTO_INCREMENT,
habilidade varchar(255),
id_curr int,
FOREIGN KEY(id_curr) REFERENCES curriculo (id_curr)
);

CREATE TABLE educacao (
id_educ int PRIMARY KEY AUTO_INCREMENT,
curso varchar(255),
instituicao varchar(255),
fim date,
inicio date,
id_curr int,
FOREIGN KEY(id_curr) REFERENCES curriculo (id_curr)
);

CREATE TABLE experiencia (
id_exp int PRIMARY KEY AUTO_INCREMENT,
empresa varchar(255),
ocupacao varchar(255),
fim date,
inicio date,
id_curr int,
FOREIGN KEY(id_curr) REFERENCES curriculo (id_curr)
);

