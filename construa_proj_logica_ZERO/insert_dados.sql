-- Inserir dados dos clientes
-- select * from cliente;
insert into Cliente (TipoPessoa,Documento,Nome,Endereco,Telefone,Email) values ('PF','03739770290','Maria','Rua silva de prata 29 - Cidade das Flores','62992453695','mariam@gmail.com');
insert into Cliente (TipoPessoa,Documento,Nome,Endereco,Telefone,Email) values ('PF','03739770292','Julia','Rua silva de prata 29 - Cidade das Flores','62992453625','Julia@gmail.com');
insert into Cliente (TipoPessoa,Documento,Nome,Endereco,Telefone,Email) values ('PF','03739770993','Roberto','Rua silva de prata 29 - Cidade das Flores','6299245295','roberto@gmail.com');
insert into Cliente (TipoPessoa,Documento,Nome,Endereco,Telefone,Email) values ('PF','03739790194','Pedro','Rua silva de prata 29 - Cidade das Flores','62992453691','pedro@gmail.com');
insert into Cliente (TipoPessoa,Documento,Nome,Endereco,Telefone,Email) values ('PJ','0592556200260','Joao','Rua silva de prata 29 - Cidade das Flores','62992453692','joao@gmail.com');
insert into Cliente (TipoPessoa,Documento,Nome,Endereco,Telefone,Email) values ('PJ','05925562900170','Julio','Rua silva de prata 29 - Cidade das Flores','62992453694','julio@gmail.com');

-- Inserir StatusOrdemServico
-- select * from StatusOrdemServico;

INSERT INTO StatusOrdemServico (Identificacao) VALUES ('ABERTO');
INSERT INTO StatusOrdemServico (Identificacao) VALUES ('EM ANDAMENTO');
INSERT INTO StatusOrdemServico (Identificacao) VALUES ('EM PAUSA');
INSERT INTO StatusOrdemServico (Identificacao) VALUES ('CANCELADO');
INSERT INTO StatusOrdemServico (Identificacao) VALUES ('CONCLUÍDO');

-- Inserir dados da ordem de serviço
-- select * from ordemservico;

INSERT INTO OrdemServico (idCliente, idStatusOrdemServico, Codigo, DataEmissao, DataParaConclusao, Valor, DataAutorizacao, Obs) VALUES (1, 3, '1000', '2022-09-09', null, 250, '2022-09-09', null);
INSERT INTO OrdemServico (idCliente, idStatusOrdemServico, Codigo, DataEmissao, DataParaConclusao, Valor, DataAutorizacao, Obs) VALUES (2, 1, '1001', '2022-09-10', null, 123, '2022-09-08', null);
INSERT INTO OrdemServico (idCliente, idStatusOrdemServico, Codigo, DataEmissao, DataParaConclusao, Valor, DataAutorizacao, Obs) VALUES (3, 2, '1002', '2022-09-11', null, 125, '2022-09-07', null);
INSERT INTO OrdemServico (idCliente, idStatusOrdemServico, Codigo, DataEmissao, DataParaConclusao, Valor, DataAutorizacao, Obs) VALUES (4, 5, '1003', '2022-09-12', null, 300, '2022-09-06', null);
INSERT INTO OrdemServico (idCliente, idStatusOrdemServico, Codigo, DataEmissao, DataParaConclusao, Valor, DataAutorizacao, Obs) VALUES (5, 4, '1004', '2022-09-10', null, 500, '2022-09-05', null);

-- Inserir dados das Marcas dos Veiculos
-- select * from Marca;
INSERT INTO Marca (Identificacao) VALUES ('Ford');
INSERT INTO Marca (Identificacao) VALUES ('Renault');
INSERT INTO Marca (Identificacao) VALUES ('Volkswagen');
INSERT INTO Marca (Identificacao) VALUES ('Fiat');

-- Inserir Modelo dos carros 
-- select * from Modelo;
INSERT INTO Modelo (idMarca, Identificacao, Ano) VALUES (1, 'Chevette SL', 1973);
INSERT INTO Modelo (idMarca, Identificacao, Ano) VALUES (1, 'Chevrolet Monza SL/E', 1996);
INSERT INTO Modelo (idMarca, Identificacao, Ano) VALUES (2, 'Fiat 147', 1999);
INSERT INTO Modelo (idMarca, Identificacao, Ano) VALUES (3, 'Maverick ', 1800);
INSERT INTO Modelo (idMarca, Identificacao, Ano) VALUES (3, 'Fusca ', 1980);

-- Inserir Equipes de Trabalho
-- select * from Equipe;

INSERT INTO Equipe (Identificacao) VALUES ('Mecanica');
INSERT INTO Equipe (Identificacao) VALUES ('Elétrica');
INSERT INTO Equipe (Identificacao) VALUES ('Lantergen');
INSERT INTO Equipe (Identificacao) VALUES ('Pintura');
INSERT INTO Equipe (Identificacao) VALUES ('Funilaria');
INSERT INTO Equipe (Identificacao) VALUES ('TOT - TROCA DE OLEO');

-- Inserir Status do Serviço
-- select * from StatusServico;

INSERT INTO StatusServico (Identificacao) VALUES ('TRIAGEM');
INSERT INTO StatusServico (Identificacao) VALUES ('SERVICO INICIADO');
INSERT INTO StatusServico (Identificacao) VALUES ('AGUARDANDO TROCA DE PEÇA');
INSERT INTO StatusServico (Identificacao) VALUES ('CONCLUÍDO');
INSERT INTO StatusServico (Identificacao) VALUES ('AGUARDANDO CLIENTE');
INSERT INTO StatusServico (Identificacao) VALUES ('CANCELADO');

-- Inserir TabelaServico
-- select * from TabelaServico;
INSERT INTO TabelaServico (Identificacao, ValorTabela) VALUES ('Pintura geral', 3000);
INSERT INTO TabelaServico (Identificacao, ValorTabela) VALUES ('Troca do motor', 1800);
INSERT INTO TabelaServico (Identificacao, ValorTabela) VALUES ('Troca de lampada do farol', 30);
INSERT INTO TabelaServico (Identificacao, ValorTabela) VALUES ('Troca de pneu', 50);
INSERT INTO TabelaServico (Identificacao, ValorTabela) VALUES ('Troca de Oleo', 90);
INSERT INTO TabelaServico (Identificacao, ValorTabela) VALUES ('Alinhamento', 100);

-- Inserir Veiculo
-- select * from Veiculo;

INSERT INTO Veiculo (idOrdemServico, idModelo, Cor, Placa) VALUES (1, 1, 250025, 2015);
INSERT INTO Veiculo (idOrdemServico, idModelo, Cor, Placa) VALUES (1, 2, 250025, 2013);
INSERT INTO Veiculo (idOrdemServico, idModelo, Cor, Placa) VALUES (3, 3, 250025, 2015);
INSERT INTO Veiculo (idOrdemServico, idModelo, Cor, Placa) VALUES (3, 4, 250025, 2010);


-- Inserir Servicos Realizados
-- select * from Servico;
INSERT INTO Servico (idVeiculo, idTabelaServico, idEquipe, idStatusServico, Descricao, ValorPecas, ValorMaoDeObra, DataInicio, DataTermino) VALUES (1, 1, 1, 1, 'Trocar Pneu', 0, 50, '2022-09-10', '2022-09-10');
INSERT INTO Servico (idVeiculo, idTabelaServico, idEquipe, idStatusServico, Descricao, ValorPecas, ValorMaoDeObra, DataInicio, DataTermino) VALUES (2, 2, 2, 2, 'Instalar som', 1500, 250, '2022-09-10', '2022-09-10');
INSERT INTO Servico (idVeiculo, idTabelaServico, idEquipe, idStatusServico, Descricao, ValorPecas, ValorMaoDeObra, DataInicio, DataTermino) VALUES (3, 3, 3, 3, 'Trocar Setas', 1000, 300, '2022-09-10', '2022-09-10');
INSERT INTO Servico (idVeiculo, idTabelaServico, idEquipe, idStatusServico, Descricao, ValorPecas, ValorMaoDeObra, DataInicio, DataTermino) VALUES (4, 4, 4, 4, 'Refazer motor', 100, 1000, '2022-09-10', '2022-09-10');

-- Inserir Especialidade dos servicos
-- select * from Especialidade;
INSERT INTO Especialidade (Identificacao) VALUES ('Trocar Pneu');
INSERT INTO Especialidade (Identificacao) VALUES ('Pintar');
INSERT INTO Especialidade (Identificacao) VALUES ('Lixar');
INSERT INTO Especialidade (Identificacao) VALUES ('Mecanica Hidráulico');
INSERT INTO Especialidade (Identificacao) VALUES ('Instalar som');
INSERT INTO Especialidade (Identificacao) VALUES ('Ar Condicionado');


-- Inserir Mecanico
-- select * from Mecanico;
INSERT INTO Mecanico (idEspecialidade, idEquipe, Codigo, Nome, Endereco) VALUES (1, 1, '001', 'João da Silva', 'Rua B');
INSERT INTO Mecanico (idEspecialidade, idEquipe, Codigo, Nome, Endereco) VALUES (2, 2, '002', 'José da Silva', 'Rua C');
INSERT INTO Mecanico (idEspecialidade, idEquipe, Codigo, Nome, Endereco) VALUES (3, 3, '003', 'jEFFE', 'Rua D');
INSERT INTO Mecanico (idEspecialidade, idEquipe, Codigo, Nome, Endereco) VALUES (4, 4, '004', 'Baixinnn', 'Rua e');


-- Inserir as Pecas
-- select * from Peca;
INSERT INTO Peca (Identificacao, ValorReferencia) VALUES ('Tinta Galão', 150);
INSERT INTO Peca (Identificacao, ValorReferencia) VALUES ('Óloe 1lt', 40);
INSERT INTO Peca (Identificacao, ValorReferencia) VALUES ('Lâmpada do farol', 30);
INSERT INTO Peca (Identificacao, ValorReferencia) VALUES ('Pneu', 450);
INSERT INTO Peca (Identificacao, ValorReferencia) VALUES ('Filtro de óleo', 50);
INSERT INTO Peca (Identificacao, ValorReferencia) VALUES ('Ar condicionado completo', 1000);


-- Inserir as ServicoPeca
-- select * from ServicoPeca;
INSERT INTO ServicoPeca (idServico, idPeca, ValorPeca) VALUES (1, 1, 50);
INSERT INTO ServicoPeca (idServico, idPeca, ValorPeca) VALUES (2, 2, 50);
INSERT INTO ServicoPeca (idServico, idPeca, ValorPeca) VALUES (3, 3, 50);
INSERT INTO ServicoPeca (idServico, idPeca, ValorPeca) VALUES (4, 4, 50);

