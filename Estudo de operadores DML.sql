use curso;

-- Usada para definir a estrutura do banco de dados (criar, alterar ou excluir tabelas, índices etc.)

create table funcionarios
(
	id int primary key null auto_increment,
    nome varchar (50) not null,
    salario decimal (10,2),
    setor varchar (30)
);

-- Exemplo select

select * from funcionarios;

insert into	funcionarios (nome,salario,setor) values ('Francisco', 1500,''),('Jose',2000,''),('Alexandre',3000,'');

-- Simulando erro

insert into funcionarios (nome,salario) values ('Pedro','FDSH');

-- insert into funcionarios (nome,salario) values ('Pedro','FDSH')	Error Code: 1366. Incorrect decimal value: 'FDSH' for column 'salario'

-- Usada para manipular os dados dentro das tabelas (inserir, atualizar, excluir, consultar).

update funcionarios set salario = 1000
where id=1;

-- Aumento de 50% sobre o salário atual

update funcionarios set salario = salario * 1.5
where id='2';

-- update mais de um campo

update funcionarios set	salario = salario * 1.5, setor = 'TI'
where id <> '1';

-- Delete

delete from funcionarios
where id = '1';

-- Conferencia da exclusao

select * from funcionarios
where id = '1';