-- Quais dos carros irão receber conserto

select Concat(Fname, ' ', Lname) as cliente, placa, modelo, serviço from veículo join equipe on idEquipe = idVeEquipe and serviço = 'Conserto'
					  join clients on idClient = idVeClient;

-- Quantos irão receber conserto e quantos revisão 

select serviço, count(*) as quantidade_total from veículo join equipe on idEquipe = idVeEquipe
					  join clients on idClient = idVeClient
                      group by serviço;
                      
-- Quais os carros cadastrados na oficina? ordene pela data de emissão

select modelo, placa, data_emissão, OsStatus, serviço, valor from veículo join OS on idVeículo = idVeOS
						   join equipe on idEquipe = idVeEquipe
						   order by data_emissão;

-- Quais peças cada veículo irá requisitar
select modelo, placa, serviço, o.valor as valor_total, peça, t.valor as valor_peça from veículo join OS O on idVeículo = idVeOS
						   join equipe on idEquipe = idVeEquipe
                           join tabela_referência t on idTabela = idTaOS;

