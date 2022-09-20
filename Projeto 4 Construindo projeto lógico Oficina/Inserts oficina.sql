use oficina; 

insert into Clients (Fname, Minit, Lname, CPF) values
			('Gercy', 'M','Silva', 12345678910),
			('Laís', 'O', 'Miranda',91287654321),
			('Davi', 'A', 'Rios',45435678913),
			('Karla', 'C', 'Almeida', '78912343456'),
			('Moarcy','A', 'Rios',98748561631),
			('João', 'A', 'Lago', 65478917523);
  
  insert into equipe (serviço) values 
			('Conserto'),
            ('Revisão');
  
insert into veículo (modelo, ano, placa, idVeClient, idVeEquipe) values 
			('camaro', 2022, 'JAK-6144', 1,1),
            ('uno',2010, 'HSH-2958', 1,1),
            ('Hb20',2020, 'ADE-7377',2,2),
            ('Corsa', 2000, 'NES-6537',3,2),
            ('Hb20', 2000, 'MXE-1079', 4,2),
			('GTR', 2020, 'ATD-8798', 5,1);
            

insert into mecânico(Especialidade,idMeEquipe) values
			('em marcas', 2),
            ('em sistemas específicos',2 ),
            ('em carros antigos',1 ),
            ('em carros luxuosos',1);
					
insert into Tabela_referência(Peça, Valor) values
			('Amortecedor', 300),
            ('Câmbio', 400),
            ('suspensão', 100);
                    
insert into OS (N°, Data_emissão, valor, OsStatus, Data_conclusão, idVeOS,idTaOS) values
			(1, '2022-09-19', 500, default, '2022-10-19',1,1),
            (2, '2022-08-26', 750, default,  '2022-09-26',2,1),
            (3, '2022-08-24', 1000, default, '2022-09-24',3,null),
            (4, '2022-08-04', 250,'Concluído', '2022-09-04',4,null),
            (5, '2022-09-01', 100,default, '2022-10-01',5,null),
            (6, '2022-09-14', 300,default, '2022-10-14',6,3);
            
