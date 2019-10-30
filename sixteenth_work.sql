create database hotel;



create or replace table cargo(
    cargo varchar(30) not null,
    codigo varchar(10) not null,
    nome varchar(30) not null,
    primary key (codigo)
);


create or replace table funcionario(
    codigo varchar(30) not null,
    nome varchar(10) not null,
    cpf varchar(30) not null,
    cargo varchar(30) not null,
    primary key (codigo)
);

create or replace table hospede(
    codigo varchar(30) not null,
    nome varchar(10) not null,
    cpf varchar(30) not null,
    celular varchar(20) not null,
    email varchar(20) not null,
    endereco varchar(20) not null,
    primary key (codigo)
);

use hotel;

create or replace table hospedagem(
    codigo varchar(30) not null,
    horario_entrada varchar(5) not null,
    horario_saida varchar(5) not null,
    funcionario varchar(30),
    hospede varchar(30),
    primary key (codigo),
    foreign key (funcionario) references funcionario(codigo),
    foreign key (hospede) references hospede(codigo)
);

describe cargo;
describe hospedagem;
describe hospede;
describe funcionario;






