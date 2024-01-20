--DISCENTES: PONCIANO MATHEUS/BRUNO ALVES
drop schema if exists joins;
create schema joins;
use joins;

create table departamentos(
	id int PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(45),
	sigla VARCHAR(5)
);

create table funcionarios(
	id int PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(50),
	telefone VARCHAR(15),
	endereco VARCHAR(50),
	bairro VARCHAR(20),
	cep VARCHAR(8),
	salario double,
	cidade VARCHAR(20),
	departamento_id int,
	FOREIGN KEY (departamento_id) REFERENCES departamentos(id)
);

insert into departamentos values (NULL, 'Compras', 'COMPR');
insert into departamentos values (NULL, 'Comercial', 'COMER');
insert into departamentos values (NULL, 'Financeiro', 'FINAN');
insert into departamentos values (NULL, 'Marketing', 'MARKE');
insert into departamentos values (NULL, 'Diretoria', 'DIRET');	
				
insert into funcionarios values (NULL, 'Maria João', '99070012', 'Av. Gov José Malcher, 2460', 
'São Bras', '66060281', 1500.80, 'Belém', 1);
insert into funcionarios values (NULL, 'Pedro Zamora', '99989988', 'Av. Magalhães Barata, 1360', 
'Nazaré', '66055090', 2300.12, 'Belem', 2);
insert into funcionarios values (NULL, 'Andrea Pinho', '99989988', 'Boaventura da Silva, 678, ap 304', 
'Umarizal', '66075080', 4080.50, 'BELEM', 2);
insert into funcionarios values (NULL, 'Mario Silva', '2223234', 'Cidade Nova IV, 3456', 
'São Bras', '66060281', 1200.80, 'Ananindeua', 5);
insert into funcionarios values (NULL, 'Felipe Almeida', '99980088', 'Av. Roberto Camelier, 2360', 
'Jurunas', '66055090', 9300.72, 'Belem', 4);
insert into funcionarios values (NULL, 'Rafael Bezerra', '99345688', 'Passagem Maxima, 678, ap 304', 
'Marco', '66075080', 4080.50, 'BELEM', 3);
insert into funcionarios values (NULL, 'Katia Santos', '98760012', 'Trav Mauriti, 2460', 
'Marco', '66060281', 700.80, 'Belém', 4);
insert into funcionarios values (NULL, 'Gustavo Pinto', '22389988', 'Passagem Barata, 1360', 
'Cidade Nova IV', '66055090', 2300.12, 'Ananindeua', 2);
insert into funcionarios values (NULL, 'Anderson Marques', '32289988', '40 horas, 678', 
'Coqueiro', '66075080', 8900.50, 'Ananindeua', 1);
insert into funcionarios values (NULL, 'Renato Hudson', '34553234', 'Passagem Tereza, 3456', 
'Cidade Nova V', '66060281', 1450.80, 'Ananindeua', 5);
insert into funcionarios values (NULL, 'Tiago Alves', '78889988', 'Av. Magalhães Barata, 1360', 
'Nazaré', '66055090', 2990.62, 'Belem', 4);
insert into funcionarios values (NULL, 'Mario Antonio', '23489988', 'Boaventura da Silva, 678, ap 304', 
'Umarizal', '66075080', 4080.50, 'BELEM', 3);
insert into funcionarios values (NULL, 'Maria Silva', '32470012', 'Av. Gov José Malcher, 2460', 
'São Bras', '66060281', 1500.80, 'Belém', 2);
insert into funcionarios values (NULL, 'Jean Zorat', '88789988', 'Av. Magalhães Barata, 1360', 
'Nazaré', '66055090', 2823.99, 'Belem', 1);
insert into funcionarios values (NULL, 'Andre Ribeiro', '76589988', 'Boaventura da Silva, 678, ap 304', 
'Umarizal', '66075080', 3567.50, 'BELEM', 2);
insert into funcionarios values (NULL, 'Matheus Carmo', '87893234', 'Cidade Nova IV, 3456', 
'São Bras', '66060281', 1689.90, 'Ananindeua', 4);
insert into funcionarios values (NULL, 'Daniel Dantes', '22989988', 'Av. Magalhães Barata, 1360', 
'Nazaré', '66055090', 2800.12, 'Belem', 3);
insert into funcionarios values (NULL, 'Zumira Castro', '99989988', 'Boaventura da Silva, 678, ap 304', 
'Umarizal', '66075080', 8080.00, 'BELEM', 4);

SELECT nome, telefone, salario
FROM funcionarios
WHERE departamento_id = (SELECT id FROM departamentos WHERE nome = 'Compras');
SELECT DISTINCT d.nome AS departamento
FROM funcionarios f
JOIN departamentos d ON f.departamento_id = d.id
WHERE f.salario > 3000;
SELECT d.nome AS departamento, f.nome AS funcionario
FROM funcionarios f
JOIN departamentos d ON f.departamento_id = d.id
WHERE f.salario BETWEEN 2000 AND 4000;
SELECT f.*, d.nome AS departamento
FROM funcionarios f
JOIN departamentos d ON f.departamento_id = d.id
WHERE f.cidade <> 'Belém';
SELECT f.*, d.nome AS departamento
FROM funcionarios f
JOIN departamentos d ON f.departamento_id = d.id
WHERE f.bairro = 'São Bras' OR f.salario > 2500;
SELECT *
FROM funcionarios
WHERE departamento_id IN (SELECT id FROM departamentos WHERE nome LIKE 'C%');
SELECT f.nome, f.salario
FROM funcionarios f
JOIN departamentos d ON f.departamento_id = d.id
WHERE d.nome IN ('Compras', 'Financeiro', 'Marketing')
ORDER BY f.salario DESC;
SELECT f.*, d.nome AS departamento
FROM funcionarios f
JOIN departamentos d ON f.departamento_id = d.id
WHERE (f.cidade <> 'Belém' OR f.salario < 3000) AND d.nome <> 'Diretoria'
ORDER BY f.salario DESC;
SELECT f.*, d.nome AS departamento
FROM funcionarios f
JOIN departamentos d ON f.departamento_id = d.id
WHERE f.bairro IN ('São Bras', 'Umarizal', 'Nazaré')
ORDER BY f.salario DESC;

SELECT MAX(salario) AS maior_salario, 
       MIN(salario) AS menor_salario, 
       AVG(salario) AS media_salario
FROM funcionarios
WHERE cidade = 'Compras';
SELECT COUNT(*) AS total_funcionarios
FROM funcionarios
WHERE cidade = 'Compras';
SELECT SUM(salario) AS total_salarios_diretoria
FROM funcionarios
WHERE cidade = 'Diretoria';
SELECT cidade, COUNT(*) AS total_funcionarios
FROM funcionarios
GROUP BY cidade;
SELECT cidade, SUM(salario) AS total_salarios
FROM funcionarios
GROUP BY cidade;
SELECT cidade, SUM(salario) AS total_salarios
FROM funcionarios
GROUP BY cidade
HAVING total_salarios > 20000;











