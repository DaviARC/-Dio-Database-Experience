-- Quero recuperar o número de clientes.

	select count(*) from clients;

-- Recupera pedido com produto associado
s
	select * from clients c
			 inner join orders o on c.idClient = O.idOrderClient
             inner join productOrder p on p.idPoOrder = o.idOrder;

-- Quantos pedidos foram realizados por cada cliente?
	
    select c.idClient, Fname, count(*) as Number_of_orders from clients c
		inner join orders o on c.idClient = o.idOrderClient
        group by c.idClient;
        
-- Algum vendedor também é fornecedor?

	select s.socialName, s.CNPJ from supplier s join seller v on s.CNPJ = v.CNPJ; 
    
-- Relação de produtos fornecedores e estoques

	-- Utilizando Where
	select Pname, category, SocialName as Seller, Cnpj, location as Storage_location  from product, productsupplier, supplier, storagelocation 
					where idProduct = idPsProduct
					and idSupplier = idPsSupplier
                    and idProduct = idLproduct ;
                    
	-- Utilizando Join
	select Pname, category, SocialName as Seller, Cnpj, location as Storage_location from product 
					inner join productsupplier on idProduct = idPsProduct 
					inner join supplier on idSupplier = idPsSupplier
					inner join storagelocation on idProduct = idLproduct;


-- Relação de nomes dos fornecedores e nomes dos produtos;

	select SocialName, Pname from supplier 
					inner join productsupplier on idSupplier = idPsSupplier
                    inner join product on idProduct = idPsProduct;
                    
	select SocialName, Pname from supplier 
					inner join productsupplier on idSupplier = idPsSupplier
                    inner join product on idProduct = idPsProduct
                    order by Pname;
                    
	select count(*) from supplier 
					inner join productsupplier on idSupplier = idPsSupplier
                    inner join product on idProduct = idPsProduct
                    group by socialname
                    having socialname = 'Eletrônicos Silva';
                    
	select count(*) from supplier 
					inner join productsupplier on idSupplier = idPsSupplier
                    inner join product on idProduct = idPsProduct
                    group by socialname
                    having socialname = 'Almeida e filhos';
	
                    


	
