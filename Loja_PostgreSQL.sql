
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
id_cliente int NOT NULL,
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



INSERT INTO loja_eletronicos (CNPJ, Nome, Numero, Endereco, Horario_func, funcionarios, Clientes, Historico_vendas, Fornecedores) VALUES ('78981647000139', 'Eletronicos tudo de bom', '889712354', '71020631, Rodovia', '08:00 as 12:00; 14:00 as 18:00', '10', '2', 'camera e celular', 'eletronicos e cia');

INSERT INTO cliente_pf (CPF,id_cliente, Nome, Data_nascimento, Endereco, Telefone, Genero, Profissao, Historico_compras, Tipo_pagamento)
VALUES 
(24575961060, 1, 'Joao pereira', '20041830', '79002290, Rua Tenente-Coronel Cardoso', '8592919472', 'Masculino', 'Carpinteiro', 'Celular', 'Credito'),
(65159817085, 2, 'Juliana', '20181210', '18701263, Beco Antônio', '889992255', 'Feminino', 'Fotografa', 'Camera', 'Debito');



INSERT INTO cliente_pj (CNPJ, Nome_empresa, Endereco, Contato, Historico_compras, Tipo_pagamento, Ramo_empresa)
VALUES (26420452000116, 'Márcio e Luna Marketing Ltda', '13054-074, Rua Quatro', '929804904', 'Cameras', 'Cheque', 'Marketing');

ALTER TABLE loja_eletronicos
ADD COLUMN Email varchar(50);

ALTER TABLE loja_eletronicos DROP COLUMN Email;

SELECT * FROM cliente_pf WHERE Genero = 'Masculino';

ALTER TABLE loja_eletronicos ADD COLUMN CPF VARCHAR(11);





