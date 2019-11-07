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

create or replace table quarto(
    codigo varchar(30) not null,
    numero varchar(10) not null,
	hotel  varchar(30) not null,
    primary key (codigo)
);


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

create or replace role administrador;
create or replace role gerente;
create or replace role recepcionista;
create or replace role recursosHumanos;
create or replace role hospede;

show grants;

grant all on hotel.* TO 'administrador';

grant INSERT, SELECT, UPDATE on hotel.cargo to recursosHumanos;
grant INSERT, SELECT, UPDATE on hotel.funcionario to recursosHumanos;

grant SELECT on hotel.cargo to gerente;
grant SELECT on hotel.funcionario to gerente;
grant SELECT on hotel.quarto to gerente;
grant INSERT, SELECT, UPDATE on hotel.hospede to gerente;
grant INSERT, SELECT, UPDATE on hotel.hospedagem to gerente;

grant SELECT on hotel.quarto to recepcionista;
grant INSERT, SELECT, UPDATE on hotel.hospede to recepcionista;
grant INSERT, SELECT, UPDATE on hotel.hospedagem to recepcionista;

grant SELECT, UPDATE on hotel.hospede to hospede;
grant SELECT on hotel.hospedagem to hospede;

show grants for administrador;
show grants for gerente;
show grants for recepcionista;
show grants for recursosHumanos;
show grants for hospede;




