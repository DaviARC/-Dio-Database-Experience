-- cria banco de dados
create database oficina; 

use oficina;

create table Clients (
	idClient INT auto_increment primary key,
    Fname varchar(10),
    Minit char(3),
    Lname varchar(10),
    CPF char (11) unique);
 
 alter table clients auto_increment = 1;
 
 create table Equipe(
	idEquipe INT auto_increment primary key,
    serviço enum('Conserto', 'Revisão')
);

alter table clients auto_increment = 1;
 
create table veículo (
	idVeículo INT auto_increment primary key,
    modelo varchar (20),
    ano int, 
    placa varchar (10) unique,
    idVeClient int,
    idVeEquipe int,
    foreign key (idVeEquipe) references Equipe(idEquipe),
    constraint fk_veículo_clients foreign key (idVeClient) references Clients(idClient) 
);

alter table veículo auto_increment = 1;


create table mecânico (
	idMecânico INT auto_increment primary key,
    Especialidade enum('em marcas', 'em sistemas específicos', 'em carros antigos', 'em carros luxuosos'),
    idMeEquipe int,
	constraint fk_equipe_mecânico foreign key (idMeEquipe) references Equipe(idEquipe)
);

alter table mecânico auto_increment = 1;

create table Tabela_referência (
	idTabela INT auto_increment primary key,
    Peça varchar (20),
    Valor float
);

alter table Tabela_referência auto_increment = 1;

create table OS (
	idOS INT auto_increment primary key,
	N° int unique,
    Data_emissão date, 
    valor float,
    OsStatus enum ('Em processo', 'Concluído') default 'Em processo',
    Data_conclusão date,
    idVeOS int,
    idTaOS int,
    foreign key (idVeOS) references veículo(idVeículo),
    foreign key (idTaOS) references Tabela_referência(idTabela));

alter table OS auto_increment = 1;



