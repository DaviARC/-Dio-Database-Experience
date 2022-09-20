
-- Criação do banco de dados para cenário E-commerce
create database eccomerce;
use eccomerce;

-- Criar tabela criente 

create table clients (
	idClient INT auto_increment primary key,
    Fname varchar(10),
    Minit char(3),
    Lname varchar(10),
    Cep char(8),
    Rua varchar(30),
    Bairro varchar (15),
    Documento varchar(15)not null unique,
    Tipo_pessoa enum ('PF', 'PJ') not null
);

alter table clients auto_increment = 1;

-- Criar formas de pagamento client

create table payments(
	idPayment INT auto_increment,
    TypePayment enum('Boleto', 'Cartão', 'Dois Cartões') not null,
    Nome_cartão	varchar (30),
    Número_cartão varchar (20),
    Vencimento_cartão char(5),
    Código_de_segurança char(3),
    idClient INT,
    primary key(idPayment, idClient),
    foreign key (idClient) references clients (idClient)
);

alter table payments auto_increment = 1;

-- Criar tabela produto

create table product(
	idProduct int auto_increment primary key,
    Pname varchar(25) not null,
    classification_kids bool,
    category enum('Eletrônico ','Vestimenta','Brinquedos','Alimentos','Móveis') not null,
    avaliação float default 0,
    size varchar(10)
    );
    
alter table product auto_increment = 1;

-- Criar tabela pedido

create table orders(
	idOrder int auto_increment primary key,
    idOrderClient int,
    idPayment int,
    orderStatus enum('Cancelado','Confirmado','Em processo') default 'Em processo',
    orderDescription varchar(255),
    sendValue float default 0,
    paymantCash bool default false,
    constraint fk_payment foreign key (idPayment) references payments(idPayment),
    constraint fk_ordes_client foreign key (idOrderClient) references clients(idClient)
		on update cascade
);

alter table orders auto_increment = 1;

-- Cria tabela estoque

create table productStorage(
	idProdStorage int auto_increment primary key,
    storageLocation varchar(255) not null,
    quantidade int not null default 0
);

alter table productStorage auto_increment = 1;

-- Cria tabela fornecedor

create table supplier(
	idSupplier int auto_increment primary key,
    SocialName varchar(255) not null,
    CNPJ char (15) not null,
    contact varchar(11) default 0,
	constraint unique_supllier unique (CNPJ)
);

alter table supplier auto_increment = 1;

-- Cria tabela vendedor

create table seller(
	idSeller int auto_increment primary key,
    SocialName varchar(255) not null,
	AbstName varchar (255),
    location varchar(255),
    CNPJ char (15),
    CPF char(9),
    contact varchar(11) default 0,
	constraint unique_seller_cnpj unique (CNPJ),
	constraint unique_seller_cpf unique (CPF)
);

alter table seller auto_increment = 1;

create table productSeller(
	idPseller int,
    idProduct int,
    Quantity int not null default 1,
    primary key (idPseller, idProduct),
    constraint fk_product_seller foreign key (idPseller) references seller(idSeller),
    constraint fk_product_product foreign key (idProduct) references product(idProduct)
    );
    
create table productOrder(
	idPOproduct int,
    idPOorder int,
    poQuantity int default 1, 
    poStatus enum('Dísponivel', 'Sem estoque') default 'Dísponivel',
    primary key (idPOproduct, idPOorder),
    constraint fk_productorder_seller foreign key (idPOproduct) references product(idProduct),
    constraint fk_productorder_product foreign key (idPOorder) references orders(idOrder)
);

create table storageLocation(
	idLproduct int,
    idLstorage int,
    location varchar(255) not null,
    primary key (idLproduct, idLstorage),
    constraint fk_storage_location_product foreign key (idLproduct) references product(idProduct),
    constraint fk__product foreign key (idLstorage) references productStorage(idProdStorage)
    );
    
create table productSupplier(
	idPsSupplier int,
    idPsProduct int,
    quantity int not null,
    primary key (idPsSupplier, idPsProduct),
    constraint fk_product_supplier foreign key (idPsSupplier) references supplier (idSupplier),
    constraint fk_product_supplier_product foreign key (idPsProduct) references product (idProduct)
);
    
create table delivery (
	idDelivery int primary key auto_increment, 
    idOrder int,
	statusDel enum ('Embalando','enviado', 'entregue'),
    código_rastreio varchar(15),
    constraint fk_delivery foreign key (idOrder) references orders(idOrder)
);

alter table delivery auto_increment =1 ;

select * from orders;