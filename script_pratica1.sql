create database gerenciamento_chamados;
use gerenciamento_chamados;

create table cadastro_cliente (
id_cli int not null auto_increment primary key,
nome_cli varchar (45),
email_cli varchar (45),
telefone_cli varchar (11)
);

create table colaboradores (
id_colab int not null auto_increment primary key,
nome_colab varchar (45)
);

create table cadastro_chamados (
id int auto_increment primary key,
id_cli int,
foreign key (id_cli) references cadastro_cliente(id_cli),
desc_problema varchar (200),
criticidade enum ("baixa", "média", "alta"),
status_chamado enum  ("aberto", "em andamento", "resolvido") default 'aberto',
data_abertura date,
id_colab int,
foreign key (id_colab) references colaboradores(id_colab)
);

