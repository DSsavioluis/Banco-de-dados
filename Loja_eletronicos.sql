CREATE DATABASE loja;
USE loja;

create table loja_eletronicos
(CNPJ bigint NOT NULL,
Nome varchar(30) NOT NULL,
Numero int NOT NULL,
Endereco varchar(50) NOT NULL,
Horario_func varchar(30) NOT NULL,
funcionarios int NOT NULL,
Clientes varchar(30) NOT NULL,
Historico_vendas varchar(50) NOT NULL,
Fornecedores varchar(30) NOT NULL,
Primary key (CNPJ));

create table cliente_pf
(CPF bigint NOT NULL,
id_cliente int auto_increment NOT NULL,
Nome varchar(20) NOT NULL,
Data_nascimento int,
Endereco varchar(50) NOT NULL,
Telefone bigint NOT NULL,
Genero varchar(10) NOT NULL,
Profissao varchar(20) NOT NULL,
Historico_compras varchar(50) NOT NULL,
Tipo_pagamento varchar(10) NOT NULL,
Primary key (CPF, id_cliente));

create table cliente_pj
(cnpj bigint NOT NULL,
Nome_empresa varchar(50) NOT NULL,
Endereco varchar(50) NOT NULL,
Contato bigint NOT NULL,
Historico_compras varchar(50) NOT NULL,
Tipo_pagamento varchar(10) NOT NULL,
Ramo_empresa varchar(20) NOT NULL,
Primary key (cnpj));

insert into loja_eletronicos
values ("78981647000139", "Eletronicos tudo de bom", "889712354", "71020631, Rodovia", "08:00 as 12:00; 14:00 as 18:00", "10", "2", "camera e celular", "eletronicos e cia");

insert into cliente_pf
values (24575961060, 1, "Joao pereira", "20041830", "79002290, Rua Tenente-Coronel Cardoso", "8592919472", "masculino", "carpinteiro", "Celular", "Credito"),
(65159817085, 2, "Juliana", "10122018", "18701263, Beco Antônio", "889992255", "Feminino", "Fotografa", "Camera", "Debito");

insert into cliente_pj
values("26420452000116", "Márcio e Luna Marketing Ltda", "13054-074, Rua Quatro", "929804904", "Cameras", "Cheque", "Marketing");

ALTER TABLE loja_eletronicos
ADD COLUMN Email varchar(50) NOT NULL;

ALTER TABLE loja_eletronicos DROP COLUMN Email;

SELECT * FROM cliente_pf WHERE Genero = "Feminino";

ALTER TABLE loja_eletronicos ADD COLUMN CPF VARCHAR(11);


ALTER TABLE loja_eletronicos
ADD CONSTRAINT fk_loja_eletronicos_pessoa_pf
FOREIGN KEY (CPF)
REFERENCES cliente_pf (CPF);


ALTER TABLE loja_eletronicos
ADD CONSTRAINT fk_loja_eletronicos_pessoa_pj
FOREIGN KEY (Cnpj)
REFERENCES cliente_pj (Cnpj);


