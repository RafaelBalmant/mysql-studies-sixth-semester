create database eighth_job;
use eighth_job;
create table marca(
    cod int(100)
);

create table modelo (
    nome varchar(20)
);

create table tipo_veiculo(
    cod int(100) primary key auto_increment
);

create table veiculo(
    chassi varchar(30),
    ano_fabricao date
);

create table proprietario(
    noome varchar(20)
);

alter table marca add Nome varchar(30) unique;
alter table marca modify cod int(100) primary key unique;

alter table modelo add cod int(100);
alter table modelo modify cod int(100) primary key auto_increment;
alter table modelo modify nome varchar(20) unique;
alter table modelo add id_marca int(100);
alter table modelo add FOREIGN KEY (id_marca) REFERENCES marca(cod);
