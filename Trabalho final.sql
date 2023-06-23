show databases;
use banco;

create table clientes(
ID_cliente int not null AUTO_INCREMENT,
cpf bigint not null,
nome varchar(45) not null,
endereco varchar(60) not null,
numero bigint not null,
email varchar(45) not null,
agencia_associada bigint not null,
conta_corrente varchar(45) not null,
conta_poupanca varchar(45) not null,
saldo bigint not null,
primary key(ID_cliente)
);

create table contas(
Numero_conta int not null,
tipo_conta varchar(45) not null,
saldo bigint not null,
data_abertura datetime not null,
cliente_associado varchar(45) not null,
primary key(Numero_conta)
);

create table transacoes(
ID_transacao int not null AUTO_INCREMENT,
data_hora datetime not null,
tipo_transacao varchar(45) not null,
valor bigint not null,
conta_origem bigint not null, 
conta_destino bigint not null,
descricao varchar(45) not null,
primary key(ID_transacao)
);

create table funcionarios(
ID_funcionario int not null auto_increment,
nome varchar(45) not null,
cargo varchar(45) not null,
agencia_associada bigint not null,
departamento varchar(45) not null,
salario bigint not null,
data_contratacao datetime not null,
primary key(ID_funcionario)
);

create table agencias(
ID_agencia int not null,
nome_agencia varchar(45) not null,
endereco varchar(60) not null,
numero_telefone bigint not null,
gerente varchar(45) not null,
primary key(ID_agencia)
);

create table emprestimos(
ID_emprestimo int not null auto_increment,
valor_emprestimo bigint not null,
data_solicitacao datetime not null,
taxa_juros bigint not null,
conta_associada bigint not null,
situacao varchar(30) not null,
primary key(ID_emprestimo)
);

create table investimentos(
ID_investimento int not null auto_increment,
tipo_investimento varchar(45) not null,
valor_investimento varchar(45) not null,
data_aquisicao datetime not null,
rendimento_atual bigint not null,
conta_associada bigint not null,
primary key(ID_investimento)
);

-- Adicionando chaves estrangeiras na tabela "clientes"
ALTER TABLE clientes
ADD FOREIGN KEY (conta_corrente) REFERENCES contas(Numero_conta),
ADD FOREIGN KEY (conta_poupanca) REFERENCES contas(Numero_conta);

-- Adicionando chave estrangeira na tabela "contas"
ALTER TABLE contas
ADD FOREIGN KEY (cliente_associado) REFERENCES clientes(ID_cliente);

-- Adicionando chaves estrangeiras na tabela "transacoes"
ALTER TABLE transacoes
ADD FOREIGN KEY (conta_origem) REFERENCES contas(Numero_conta),
ADD FOREIGN KEY (conta_destino) REFERENCES contas(Numero_conta);

-- Adicionando chave estrangeira na tabela "emprestimos"
ALTER TABLE emprestimos
ADD FOREIGN KEY (conta_associada) REFERENCES contas(Numero_conta);

-- Adicionando chave estrangeira na tabela "investimentos"
ALTER TABLE investimentos
ADD FOREIGN KEY (conta_associada) REFERENCES contas(Numero_conta);

-- Adicionando chave estrangeira na tabela "clientes"
ALTER TABLE clientes
ADD FOREIGN KEY (agencia_associada) REFERENCES agencias(ID_agencia);

-- Adicionando chave estrangeira na tabela "funcionarios"
ALTER TABLE funcionarios
ADD FOREIGN KEY (agencia_associada) REFERENCES agencias(ID_agencia);

alter table agencias
add foreign key (gerente) references funcionarios(ID_funcionarios);


INSERT INTO clientes (cpf, nome, endereco, numero, email, agencia_associada, conta_corrente, conta_poupanca, saldo)
VALUES (16119393056,'João martins da silva', 'Rua da conceição', 999510358, 'joaozinhodogas@gmail.com', 456, '5544846', '87654321', 1000),
       (68389895064,'Maria Santos', 'Avenida das cacimba', 9945213840, 'mariazinhadascaverna@hotmail.com', 789, '98765432', '23456789', 2500),
       (34292376026,'Pedro Oliveira dos Santos', 'Travessa das almas', 456485216, 'pedrinhoreidelas@gmail.com', 166, '56781234', '34567890', 1500),
       (80275907015, 'Antonieta das Neves', 'Rua das Flores', 995114685, 'antonietadasflores@yahoo.com', 464, '95416782', '97581365', 884652),
       (29841574123, 'Ana Beatriz Souza', 'Rua dos Girassóis', 123, 'anabeatriz@gmail.com', 166, '12345678', '87654321', 2000),
       (67589235401, 'Fernando Silva', 'Avenida dos Pinheiros', 456, 'fernando.silva@gmail.com', 789, '98765432', '23456789', 5000),
        (54321098765, 'Juliana Pereira', 'Rua das Acácias', 789, 'juliana.pereira@gmail.com', 166, '13579246', '86420987', 3500),
        (10987654321, 'Ricardo Ferreira', 'Avenida dos Coqueiros', 987, 'ricardo.ferreira@gmail.com', 789, '75395128', '35795128', 8000);

INSERT INTO contas (numero_conta, tipo_conta, saldo, data_abertura, cliente_associado)
VALUES 
  ('5544846','Conta Corrente', 1000, '2020-06-06 10:00:00', 'João Martins da Silva'),
  ('87654321', 'conta poupança', 0, '2020-06-15 15:00:00', 'João Martins da Silva'),
  ('23456789', 'Conta Poupança', 2000, '2013-06-06 11:30:00', 'Maria Santos'),
  ('98765432', 'Conta Corrente', 500, '2013-05-01 13:00:00', 'Maria Santos'),
  ('56781234', 'Conta Corrente', 500, '2010-09-01 13:45:00', 'Pedro Oliveira dos Santos'),
  ('34567890', 'Conta Poupança', 1000, '2010-09-01 13:45:00', 'Pedro Oliveira dos Santos'),
  ('97581365', 'Conta Poupança', 884000, '2000-06-15 14:15:00', 'Antonieta das Neves'),
  ('95416782', 'Conta Corrente', 652, '2000-06-10', 'Antonieta das Neves'),
  ('12345678', 'Conta Corrente', 2000, '2022-01-01 09:00:00', 'Ana Beatriz Souza'),
  ('87654321', 'Conta Poupança', 500, '2022-01-01 09:00:00', 'Ana Beatriz Souza'),
  ('98765432', 'Conta Corrente', 5000, '2022-01-01 09:00:00', 'Fernando Silva'),
  ('23456789', 'Conta Poupança', 10000, '2022-01-01 09:00:00', 'Fernando Silva'),
  ('13579246', 'Conta Corrente', 3500, '2023-02-01 09:00:00', 'Juliana Pereira'),
  ('86420987', 'Conta Poupança', 1000, '2023-02-01 09:00:00', 'Juliana Pereira'),
  ('75395128', 'Conta Corrente', 8000, '2023-02-01 09:00:00', 'Ricardo Ferreira'),
  ('35795128', 'Conta Poupança', 15000, '2023-02-01 09:00:00', 'Ricardo Ferreira');
  
  INSERT INTO transacoes (data_hora, tipo_transacao, valor, conta_origem, conta_destino, descricao)
VALUES
  ('2020-06-06 10:30:00', 'Transferência', 500, '5544846', '98765432', 'Transferência entre contas'),
  ('2021-06-06 11:15:00', 'Pagamento', 100, '87654321', '23456789', 'Pagamento de fatura'),
  ('2022-06-06 12:00:00', 'Depósito', 2000, '98765432', '5544846', 'Depósito em conta'),
  ('2020-06-06 14:30:00', 'Transferência', 300, '56781234', '34567890', 'Transferência entre contas'),
  ('2018-06-06 16:00:00', 'Saque', 100, '23456789', '87654321', 'Saque em caixa eletrônico'),
  ('2023-06-10 10:30:00', 'Transferência', 1500, '5544846', '12345678', 'Transferência entre contas'),
  ('2023-06-12 15:00:00', 'Pagamento', 200, '87654321', '23456789', 'Pagamento de fatura'),
  ('2023-06-14 11:00:00', 'Depósito', 3000, '98765432', '5544846', 'Depósito em conta'),
  ('2023-02-05 10:30:00', 'Transferência', 2000, '5544846', '13579246', 'Transferência entre contas'),
  ('2023-03-15 15:00:00', 'Pagamento', 500, '87654321', '35795128', 'Pagamento de fatura'),
  ('2023-04-20 11:00:00', 'Depósito', 4000, '98765432', '75395128', 'Depósito em conta');

INSERT INTO funcionarios (nome, cargo, agencia_associada, departamento, salario, data_contratacao)
VALUES
  ('Karline Kesia', 'Gerente', 456, 'Administração', 5000, '2020-01-01'),
  ('Miguel Arduino', 'Gerente', 789, 'Administração', 5000, '2018-08-05'),
  ('Milena Java', 'Gerente', 166, 'Administração', 5000, '2015-05-05'),
  ('Carlos Pythonio', 'Gerente', 464, 'Administração', 5000, '2015-06-23'),
  ('Regiane Regina', 'Atendente', 789, 'Atendimento ao Cliente', 2500, '2022-03-15'),
  ('Carimbo da silva', 'Analista Financeiro', 166, 'Financeiro', 3500, '2018-07-10'),
  ('Luana Azevedo', 'Assistente de Recursos Humanos', 464, 'Recursos Humanos', 2800, '2021-05-20'),
  ('Ana Carolina', 'Assistente de Atendimento', 456, 'Atendimento ao Cliente', 2000, '2023-01-01'),
  ('Rafael Oliveira', 'Analista Financeiro', 789, 'Financeiro', 3500, '2023-01-01'),
  ('Amanda Santos', 'Assistente de Atendimento', 456, 'Atendimento ao Cliente', 2200, '2023-03-01'),
  ('Daniel Oliveira', 'Analista Financeiro', 789, 'Financeiro', 4000, '2023-04-01');

  
INSERT INTO agencias (ID_agencia, nome_agencia, endereco, numero_telefone, gerente)
VALUES
  (456, 'Agência Central', 'Rua das Lindas, 112', 98798888, 'Karline Kesia'),
  (789, 'Agência Norte', 'Avenida das Flores, 4316', 98997777, 'Miguel Arduino'),
  (166, 'Agência Sul', 'Rua das Palmeiras, 79', 94496666, 'Milena Java'),
  (464, 'Agência Leste', 'Travessa dos Ipês, 31', 99565555, 'Carlos Pythonio'),
  (123, 'Agência Oeste', 'Avenida das Palmas, 789', 95553333, 'Ana Carolina'),
  (789, 'Agência Central', 'Rua das Flores, 789', 98887777, 'Rafael Oliveira'),
  (789, 'Agência Central', 'Rua das Flores, 789', 98887777, 'Daniel Oliveira'),
  (987, 'Agência Oeste', 'Avenida dos Ipês, 654', 92224444, 'Amanda Santos');


INSERT INTO emprestimos (valor_emprestimo, data_solicitacao, taxa_juros, conta_associada, situacao)
VALUES
  (5000, '2022-02-01 09:00:00', 10, '5544846', 'Aprovado'),
  (10000, '2021-01-25 11:30:00', 8, '98765432', 'Pendente'),
  (20000, '2017-07-30 14:15:00', 12, '56781234', 'Rejeitado'),
  (15000, '2020-02-28 16:30:00', 9, '23456789', 'Aprovado'),
  (15000, '2023-02-15 09:00:00', 11, '5544846', 'Pendente'),
  (8000, '2023-03-10 09:00:00', 9, '98765432', 'Aprovado'),
  (10000, '2023-06-10 09:00:00', 8, '56781234', 'Aprovado'),
  (20000, '2023-06-12 14:30:00', 10, '23456789', 'Pendente');
  
  INSERT INTO investimentos (tipo_investimento, valor_investimento, data_aquisicao, rendimento_atual, conta_associada)
VALUES
  ('Ações', '5000', '2023-06-01 09:00:00', 1000, '5544846'),
  ('Tesouro Direto', '10000', '2020-02-05 11:30:00', 1500, '98765432'),
  ('Fundos de Investimento', '20000', '2020-05-16 14:15:00', 2500, '56781234'),
  ('Poupança', '5000', '2023-02-03 16:30:00', 200, '23456789'),
  ('Ações', '5000', '2023-04-01 09:00:00', 1000, '5544846'),
  ('Tesouro Direto', '10000', '2023-04-05 11:30:00', 1500, '98765432'),
  ('Fundos de Investimento', '15000', '2023-06-05 09:00:00', 2000, '56781234'),
  ('Poupança', '5000', '2023-06-08 11:30:00', 300, '23456789');