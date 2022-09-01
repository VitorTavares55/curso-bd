/** 
Aula 01 e Aula 02
------------------------------

DROP DATABASE IF EXISTS aula_banco;
CREATE DATABASE aula_banco;
USE aula_banco;

DROP TABLE IF EXISTS estado;
CREATE TABLE estado(
id INT NOT NULL AUTO_INCREMENT,
nome VARCHAR(200) NOT NULL UNIQUE,
sigla CHAR(2) NOT NULL UNIQUE,
ativo CHAR(1) NOT NULL DEFAULT 'S',
data_cadastro DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
CONSTRAINT pk_estado PRIMARY KEY (id),
CONSTRAINT coluna_aitvo_deve_ser_S_ou_N CHECK (ativo IN ('S', 'N') )
);

INSERT INTO estado (nome, sigla) VALUES ('PARANÁ', 'PR');

SELECT * FROM estado;


CREATE TABLE cidade(
id INT NOT NULL AUTO_INCREMENT,
nome VARCHAR(200) NOT NULL,
ativo CHAR(1) NOT NULL DEFAULT 'S',
data_cadastro DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
id_estado INT NOT NULL,
CONSTRAINT pk_cidade PRIMARY KEY (id),
CONSTRAINT fk_cidade_estado FOREIGN KEY (id_estado) REFERENCES estado(id),
CONSTRAINT coluna_cidade_aitvo_deve_ser_S_ou_N CHECK (ativo IN ('S', 'N') ),
CONSTRAINT cidade_unica UNIQUE(nome, id_estado)
);

INSERT INTO cidade (nome, id_estado) VALUES ('Paranavaí', 1);

SELECT * FROM cidade;

**/



ALTER TABLE estado ADD COLUMN região VARCHAR(50);

DESC estado;

ALTER TABLE estado MODIFY COLUMN região VARCHAR(100);

ALTER TABLE estado DROP COLUMN região;

ALTER TABLE estado ADD COLUMN regiao VARCHAR(100) NOT NULL DEFAULT 'Valor indefinido';

ALTER TABLE estado MODIFY COLUMN regiao VARCHAR(100) NOT NULL DEFAULT 'Valor indefinido' AFTER nome;

ALTER TABLE estado DROP CONSTRAINT coluna_aitvo_deve_ser_S_ou_N;
ALTER TABLE estado MODIFY COLUMN ativo ENUM('S', 'N') NOT NULL;

INSERT INTO estado (ativo) VALUES ('A'); -- Erro



