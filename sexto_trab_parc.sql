create database sexto_trabalho;

use sexto_trabalho;

create table Medico(
    crm varchar(10) NOT NULL,
    uf varchar(2) NOT NULL,
    nome varchar(30) NOT NULL,
    cpf VARBINARY(30) NOT NULL UNIQUE,
    altura float(3,2) UNSIGNED NOT NULL,
    peso float(6,3) UNSIGNED NOT NULL,
    PRIMARY KEY (crm,uf)
);

CREATE TRIGGER rules_inset BEFORE INSERT ON Medico FOR EACH ROW
begin
    if NEW.altura > 2.50 then
        SIGNAL SQLSTATE '12345'
            SET MESSAGE_TEXT = 'Numero maior que 2.50';
    elseif NEW.peso > 500 then
        SIGNAL SQLSTATE '12345'
            SET MESSAGE_TEXT = 'Peso maior que 500';
    end if;
end;

drop table Medico;

insert into Medico(crm, uf, nome, cpf, altura, peso) VALUES
('2345meia7', 'SP', 'Joao Carlos da silva', '096.827.35-99',1.80, 200.00),
('223aaab33', 'PR', 'Willian Mendes Salve', '002.424.55-33',1.60, 100.00),
('203ueie33', 'MG', 'Cleiton Fernando Aziquial', '245.223.10-09',1.90, 600.00);

select * from Medico;

desc Medico;

-- new
