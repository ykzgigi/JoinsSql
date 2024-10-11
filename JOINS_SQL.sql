CREATE database Ger_Join;

USE Ger_Join;

create table funcionario(
cod_fun int auto_increment primary key not null,
nome varchar (255) not null,
especialidade varchar (255) not null
);

create table dependente(
cod_dependente int auto_increment primary key not null,
nome varchar (255) not null,
cod_fun int,
foreign key(cod_fun) references funcionario(cod_fun)
);

INSERT INTO funcionario(nome,especialidade)
values ("José","Engenheiro"),
       ("João","Mestre de Obras"),
       ("Maria","Contabilista");
       
INSERT INTO dependente(nome,cod_fun)
values ("Pedro",1),
       ("Alice",1),
       ("Luana",3);
       
select * from funcionario;
select * from dependente;

delete from dependente 
where cod_dependente = 3;


#INNER JOIN
select funcionario.nome, dependente.nome
from funcionario
inner join dependente
on funcionario.cod_fun=dependente.cod_fun
where funcionario.cod_fun = 1;


select funcionario.nome, dependente.nome
from funcionario
left join dependente
on funcionario.cod_fun = dependente.cod_fun;

select funcionario.nome, dependente.nome
from funcionario
left join dependente
on funcionario.cod_fun = dependente.cod_fun
where dependente.nome is null;


select funcionario.nome, dependente.nome
from funcionario
right join dependente
on funcionario.cod_fun = dependente.cod_fun;

select funcionario.nome, dependente.nome
from funcionario
right join dependente
on funcionario.cod_fun = dependente.cod_fun
where funcionario.nome is null;