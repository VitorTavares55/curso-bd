-- DROP DATABASE IF EXISTS aula_banco; Excluir Banco caso ele já exista.
-- CREATE DATABASE aula_banco; Criar novo banco de dados.
USE aula_banco;

-- DROP TABLE IF EXISTS estado; Excluir tabela caso ela já exista

CREATE TABLE estado(
id INT NOT NULL AUTO_INCREMENT,
nome VARCHAR(200) NOT NULL UNIQUE,
sigla CHAR(2) NOT NULL UNIQUE,
ativo CHAR(1) NOT NULL DEFAULT 'S',
data_cadastro DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
CONSTRAINT pk_estado PRIMARY KEY (id),
CONSTRAINT coluna_aitvo_deve_ser_S_ou_N CHECK (ativo IN ('S', 'N') )
);

INSERT INTO estado(nome, sigla) VALUES ('PARANÁ', 'PR');

SELECT id, nome, sigla, ativo, data_cadastro FROM estado;