USE momento;

INSERT INTO funcionarios(primeiro_nome,sobrenome,email,telefone,data_contratacao,ocupacao_id,salario,gerente_id,departamento_id) VALUES
 ('Leticia','Miranda','lehmirandabastos@gmail,com','011.354.4467','2023-09-27',9,4200.00,NULL,6);

INSERT INTO funcionarios(primeiro_nome,sobrenome,email,telefone,data_contratacao,ocupacao_id,salario,gerente_id,departamento_id) VALUES
 ('Rony','Souza','ronydsgxd@gmail.com','011.294.9846','2023-10-20',3,3000.00,NULL,1),
 ('Leonardo','Santos','leoleosantos@gmail.com','011.776.3204','2023-10-30',3,3500.00,NULL,1),
 ('Beatriz','Lopes','beatrizlopes@gmail.com','011.965.1128','2023-11-03',3,4100.00,NULL,1);
 
 SELECT COUNT(*) FROM funcionarios;
 
 SELECT COUNT(*) FROM funcionarios WHERE departamento_id = 10;
 
SELECT AVG(funcionarios.salario) 
FROM funcionarios
JOIN departamento ON funcionarios.departamento_id = departamento.departamento_id
WHERE departamento.departamento_nome = 'Tecnologia';


SELECT SUM(funcionarios.salario)
FROM funcionarios
INNER JOIN departamento ON funcionarios.departamento_id = departamento.departamento_id
WHERE departamento.departamento_nome = 'Transporte';

INSERT INTO departamento(departamento_id,departamento_nome,posicao_id) VALUES (12,'Inovações',5400);
INSERT INTO ocupacoes(ocupacao_id,ocupacao_nome,min_salario,max_salario) VALUES (20,'Gerente de Inovações',6000.00,8500.00);

INSERT INTO funcionarios(primeiro_nome,sobrenome,email,telefone,data_contratacao,ocupacao_id,salario,gerente_id,departamento_id) VALUES 
('William','Ferreira','william_fer@momento.org','515.987.0977','2023-11-19',9,5000.00,NULL,12),
('Fernanda','Lima','fer_limar@momento.org','876.890.9812','2023-11-23',9,5200.00,NULL,12),
('Sumaia','Azevedo','sumaia_azevedo@momento.org','564.986.5674','2023-10-06',20,5000.00,NULL,12);

SELECT * FROM FUNCIONARIOS;

INSERT INTO dependentes(primeiro_nome,sobrenome,parentesco,funcionario_id) VALUES 
('Inara','Ferreira','Cônjuge',217),
('Maria Antônia','Ferreira','Filho(a)',217),
('Rodrigo','Lima','Cônjuge',218),
('Giulia','Azevedo','Cônjuge',219),
('Tainã','Azevedo','Filho(a)',219),
('Nathalia','Azevedo','Filho(a)',219);

SELECT regiao.regiao_nome AS continente, paises.pais_name AS nome
FROM regiao
INNER JOIN paises ON regiao.regiao_id = paises.regiao_id;

SELECT * FROM dependentes WHERE primeiro_nome = "Joe";

SELECT * FROM dependentes WHERE funcionario_id = 112;

SELECT regiao.regiao_nome AS continente, COUNT(paises.pais_id) AS total_paises
FROM regiao
INNER JOIN paises ON regiao.regiao_id = paises.regiao_id
GROUP BY regiao.regiao_nome
ORDER BY total_paises DESC;

SELECT funcionarios.primeiro_nome AS nome_funcionario, dependentes.primeiro_nome AS nome_dependente , dependentes.parentesco
FROM funcionarios
INNER JOIN dependentes ON funcionarios.funcionario_id = dependentes.funcionario_id;

SELECT * FROM dependentes WHERE funcionario_id = 146;


