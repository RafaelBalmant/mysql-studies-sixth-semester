create database seventhJob;

use seventhJob;

create table BRANDS(
    COD int(100) unsigned auto_increment,
    NAME varchar(30) not null,
    PRIMARY KEY (COD)
);

create table MODELS(
    COD int(100) unsigned auto_increment,
    NAME varchar(30) not null,
    BRAND varchar(30),
    PRIMARY KEY (COD)

);

create table VEHICLES(
    COD int(100) unsigned auto_increment,
    CHASE varchar(30) not null,
    YEAR_MANUFACTURE date not null ,
    YEAR_MODEL date not null,
    VALUE float(6,2) not null,
    MODEL int (100),
    PRIMARY KEY (COD)
);

ALTER TABLE VEHICLES ADD CONSTRAINT ID_MODEL FOREIGN KEY (COD) REFERENCES MODELS (COD)