1--
select * from 
departamento having (qtdfuncionariosdepto) >15


2--
select * from 
funcionario where salario >= 4000

3--
select avg(salario) AS media_salarial
from funcionário

4--
select round(AVG(salario), 2) AS media_salarial
from funcionário

5--
select *
from funcionario
where nome_funcionario like '%Gomes%';

6--
select nome funcionário, salario * 12 As salario anual
from funcionário;

7--
select codfuncionario, nome_funcionario, salario
from funcionario
where salario = (select max(salario) from funcionario);

8--
select nome_funcionario, salario
from funcionario
order by salario desc
limit 2;

9--
select nome_funcionario, cargo, data_adimissão
from funcionario
where (sigla_depto, data_adimissão) in (
	select sigla_depto, min(data_adimissão)
    from funcionario
    group by sigla_depto
 );   

10--
select sigla_depto
from funcionario
where salario > 5000;

11--
SELECT DISTINCT sigla_depto 
	FROM funcionario
	WHERE salario > (SELECT AVG(salario) FROM funcionario);

12--
SELECT DISTINCT sigla_depto 
	FROM funcionario
    WHERE sigla_depto LIKE '%Costa%';
    
13--
SELECT sigla_depto FROM funcionario 
    WHERE EXISTS (
    SELECT * FROM funcionario
    WHERE salario > (SELECT AVG(salario) FROM funcionario)
    );
