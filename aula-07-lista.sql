-- 5. Escreva o comando para inserir 3 registros da tabela estado com todas as colunas. 
INSERT INTO estado (id,nome, sigla, ativo, data_cadastro) VALUES (1, 'PARANÁ', 'PR', 'S', '2022-09-01'), (2, 'SÃO PAULO','SP', 'S', '2022-09-01'), (3, 'SANTA CATARINA', 'SC', 'S', '2022-09-01');

-- 6. Escreva o comando para inserir 2 registros da tabela estado, definindo todos os dados, exceto a chave  primária que é auto incremento. 
INSERT INTO estado (nome, sigla, ativo, data_cadastro) VALUES ('AMAZONAS', 'AM', 'S', '2022-09-01'), ('RORAIMA','RR', 'S', '2022-09-01'), ('RONDONIA', 'RO', 'S', '2022-09-01');


-- 10.	Refaça o exercício anterior alterando os dados de mais que uma coluna de um único registro sem utilizar como filtro a chave primária. A escolha da coluna do filtro é muito importante – TOME CUIDADO.
UPDATE estado SET nome = 'MATO GROSSO DO SUL', sigla = 'MS' WHERE nome = 'MATO GROSSO DO SUL';
SELECT * FROM estado;

-- 12.	Exclua um único registro de uma tabela sem utilizar como filtro, a chave primária.
DELETE FROM cidade WHERE nome = 'BLUMENAL';
SELECT * FROM cidade;


-- 6.	Escreva o comando para seleccionar todos os registros da tabela cidade com todas as colunas.
SELECT id, nome, ativo, data_cadastro, estado_id FROM cidade;

-- 7.	Escreva o comando para seleccionar o nome de todos os registros da tabela cidade.
SELECT nome FROM cidade;