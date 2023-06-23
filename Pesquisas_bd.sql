show databases;
use banco;

-- Modificações no bd
 CREATE TABLE extratos (
  ID_extrato int not null AUTO_INCREMENT,
  data_hora datetime not null,
  conta_origem varchar(45) not null,
  conta_destino varchar(45) not null,
  tipo_transacao varchar(45) not null,
  valor bigint not null,
  primary key(ID_extrato)
);

insert into extratos (data_hora, conta_origem, conta_destino, tipo_transacao, valor)
values ('2023-06-14 15:30:00', '5544846', '98765432', 'Transferência', 500);
select * from extratos; 
delete from extratos;
drop table extratos;
update contas set saldo = 5500 where numero_conta = 5544846;


-- pesquisas no BD Banco
select * from clientes;
select * from contas where numero_conta = 5544846;
select * from clientes where saldo > 2000;
select nome, cargo, agencia_associada from funcionarios;

select count(*) as cargo 
from funcionarios 
where cargo = 'gerente';