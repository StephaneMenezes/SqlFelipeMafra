create database exercicios;

use exercicio;

create table funcionariosdados(
    idFuncionario integer,
    nome varchar(100),
    email varchar(100),
    sexo varchar(10),
    departamento varchar(100),
    admissao varchar(10),
    salario integer,
    cargo varchar(100),
    idRegiao int
);

/* 
1 - Traga os funcionarios que trabalhem:
No departamento de filmes OU no departamento de roupas 
2 - O email dos funcionários de Filmes ou no Departamento lar.
3 - Funcionario do sexo Masculino que trabalhem no setor Jardim.  */


/* Primeiro vamos contar quantos funcionarios temos em cada departamento */ 

SELECT COUNT(*), departamento
FROM funcionariosdados
GROUP BY departamento
order by 1; 


/* 1 - Traga os funcionarios que trabalhem:
No departamento de filmes OU no departamento de roupas */

SELECT nome, departamento
FROM funcionariosdados
WHERE departamento = 'Roupas'
OR departamento = 'Filmes';

/* 2 - O email das funcionárias de Filmes ou no Departamento lar.*/

SELECT nome, departamento, email
FROM funcionariosdados
WHERE departamento = 'Lar' and sexo = 'Feminino'
or departamento = 'Filmes' and sexo = 'Feminino';

/* 3 - Funcionario do sexo Masculino que trabalhem no setor Jardim.  */

SELECT nome, departamento,sexo
from funcionariosdados
WHERE sexo = 'Masculino'
or departamento='Jardim';




