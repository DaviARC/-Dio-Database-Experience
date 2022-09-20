-- inserindo dados tabela eccomerce

use eccomerce;

insert into Clients (fname, Minit, Lname, cep, rua, bairro, documento, tipo_pessoa) values 
					('Maria', 'M','Silva', 49099999, 'Santo Antônio', 'centro', 123456789, 'PF'),
					('Laís', 'O', 'Miranda', 44471000, 'São José', 'centro', 987654321, 'PF'),
					('Davi', 'A', 'Rios', 44471000, 'Avenida Brasil', 'centro', 45678913, 'PF'),
					('Karla', 'C', 'Almeida', 44471001, 'São Pedro', 'centro', 789123456, 'PJ'),
					('Moarcy','A', 'Rios', 44471000, 'São João', 'centro', 98748631, 'PJ'),
					('João', 'A', 'Lago', 44700-000, 'São Francisco', 'centro', 654789123, 'PF');

insert into product (Pname, classification_kids, category, avaliação, size) values 
					('Fone de ouvido', false, 'Eletrônico', '4', null),
					('Barbie Elsa', true, 'Brinquedos', '3', null),
					('Body Carters', true, 'Vestimenta', '5', null),
					('Microfone Vedo - Youtuber', false, 'Eletrônico', '4', null),
					('Sofá retrátil', false, 'Móveis', '3', '3x57x80'),
					('Farinha de arroz', false, 'Alimentos', '2', null),
					('Fire Stick Amazon', false, 'Eletrônico', '3', null);

insert into orders (idOrderClient, orderStatus, orderDescription, sendValue, paymantCash) values
					(1, default, 'Compra via aplicativo',null,1),
					(2, default, 'Compra via aplicativo',50,0),
					(3, 'Confirmado', null, null,1),
					(4, default, 'compra via web site', 150, 0);
                    
                    
select * from orders;
                    
insert into productOrder (idPOproduct, idPOorder, poQuantity, poStatus) values
						 (1,1,2,null),
                         (2,1,1, null),
                         (3,2,1, null);
                         
select * from productOrder;
                         
insert into productStorage (storageLocation, quantidade) values 
							('Rio de Janeiro',1000),
                            ('Rio de Janeiro',500),
                            ('São Paulo', 10),
                            ('São Paulo', '100'),
                            ('São Paulo', 10),
                            ('Brasília',60);

insert into storageLocation (idLproduct, idLstorage, location) values
							(1,2,'RJ'),
                            (2,6,'GO');
                            
insert into supplier (SocialName, CNPJ, contact) values
					 ('Almeida e filhos', 123456789123456, '21985474'),
                     ('Eletrônicos Silva', 85451964143457, '21985484'),
                     ('Eletrônicos Valma', 934567893934695, '21975474');
                     
	update supplier set SocialName = 'Tech eletronics' where cnpj = 123456789456321;
                     
insert into productSupplier (idPsSupplier, idPsProduct, quantity) values
							(1,1,500),
                            (1,2,400),
                            (2,4,633),
                            (3,3,5),
                            (2,5,10);
                            
insert into seller (SocialName, AbstName, CNPJ, CPF, location, contact) values
				   ('Tech eletronics', null, 123456789456321, null, 'Rio de Janeiro', 219946287),
                   ('Botique Durgas', null, null, 123456789, 'Rio de Janeiro', 219567895),
                   ('Kid World', null, 456789123654485, null, 'São Paulo', 1198657484);
                   
insert into productSeller (idPseller, idProduct, Quantity) values 
						  (1,6,80),
                          (2,7,10);
                          
insert into payments(TypePayment, Nome_cartão, Número_cartão, Vencimento_cartão, Código_de_segurança, idClient) values
				   ('Cartão', 'MARIA M SILVA', '123456789', '05/25', '123', 1 );
                   
insert into delivery(idOrder,statusDel,código_rastreio) values 
	(1,'Embalando','XRU123456'),
	(2,'Embalando','AEC123547'),
	(3,'enviado', 'AVBO78987');

select * from orders;
                   
insert into orders (idOrderClient, orderStatus, orderDescription, sendValue, paymantCash) values
					(2, default, 'Compra via aplicativo',null,1);
                    

	