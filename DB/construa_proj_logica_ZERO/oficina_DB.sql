-- drop database oficina;

CREATE DATABASE OFICINA;
USE OFICINA;


CREATE TABLE Cliente (
	idCliente int auto_increment primary key ,
    TipoPessoa  varchar(2) NOT NULL CHECK (TipoPessoa IN ('PF', 'PJ')) DEFAULT 'PF',
    Documento VARCHAR(18),
	Nome VARCHAR(100) NOT NULL,
    Endereco VARCHAR(45) NOT NULL,
    Telefone VARCHAR(45) NOT NULL,
    Email VARCHAR(45) NOT NULL,
	CONSTRAINT unique_Cliente_Documento UNIQUE (Documento)    
);

CREATE TABLE StatusOrdemServico (
	idStatusOs INT auto_increment primary KEY,
	Identificacao VARCHAR(45) NOT NULL,
	CONSTRAINT unique_StatusOrdemServico_Identificacao UNIQUE (Identificacao)
);

CREATE TABLE OrdemServico (
	id INT auto_increment primary KEY,
	idCliente INT NOT NULL,
	idStatusOrdemServico INT NOT NULL,
	Codigo VARCHAR(10) NOT NULL,
	DataEmissao DATETIME NOT NULL,
	DataParaConclusao DATETIME,
	Valor DECIMAL(18,2),
	DataAutorizacao DATETIME,
	Obs TEXT,
	CONSTRAINT unique_OrdemServico_Codigo UNIQUE (Codigo),
	CONSTRAINT fk_OrdemServico_idCliente FOREIGN KEY (idCliente) REFERENCES Cliente(idCliente),
    CONSTRAINT fk_OrdemServico_idStatusOrdemServico FOREIGN KEY (idStatusOrdemServico) REFERENCES StatusOrdemServico(idStatusOs)
);

CREATE TABLE Marca (
	idMarca INT auto_increment primary KEY,
	Identificacao VARCHAR(45) NOT NULL,
	CONSTRAINT unique_Marca_Identificacao UNIQUE (Identificacao)
);

CREATE TABLE Modelo (
	idModelo INT auto_increment primary KEY,
	idMarca INT NOT NULL,
	Identificacao VARCHAR(45) NOT NULL,
	Ano INT NOT NULL,
	CONSTRAINT unique_Modelo_Identificacao UNIQUE (Identificacao),
	CONSTRAINT fk_Modelo_idMarca FOREIGN KEY (idMarca) REFERENCES Marca(idMarca)
);


CREATE TABLE Equipe (
	idEquipe INT auto_increment primary KEY,
	Identificacao VARCHAR(45) NOT NULL,
	CONSTRAINT unique_Equipe_Identificacao UNIQUE (Identificacao)
);


CREATE TABLE StatusServico (
	idStatusServico INT auto_increment primary KEY,
	Identificacao VARCHAR(45) NOT NULL,
	CONSTRAINT unique_StatusServico_Identificacao UNIQUE (Identificacao)
);


CREATE TABLE TabelaServico (
	idTabelaServico INT auto_increment primary KEY,
	Identificacao VARCHAR(100) NOT NULL,
	ValorTabela DECIMAL(18,2),
	CONSTRAINT unique_TabelaServico_Identificacao UNIQUE (Identificacao)
);


CREATE TABLE Veiculo (
	idVeiculo INT auto_increment primary KEY,
	idOrdemServico INT NOT NULL,
	idModelo INT NOT NULL,
	Cor INT NOT NULL,
	Placa VARCHAR(20),
	CONSTRAINT fk_Veiculo_idOrdemServico FOREIGN KEY (idOrdemServico) REFERENCES OrdemServico(id),
	CONSTRAINT fk_Veiculo_idModelo FOREIGN KEY (idModelo) REFERENCES Modelo(idModelo)
);


CREATE TABLE Servico (
	id INT auto_increment primary KEY,
	idVeiculo INT NOT NULL,
	idTabelaServico INT NOT NULL,
	idEquipe INT NOT NULL,
	idStatusServico INT NOT NULL,
	Descricao TEXT NOT NULL,
	ValorPecas DECIMAL(18,2) NOT NULL,
	ValorMaoDeObra DECIMAL(18,2) NOT NULL,
	DataInicio DATETIME,
	DataTermino DATETIME,
	CONSTRAINT fk_Servico_idVeiculo FOREIGN KEY (idVeiculo) REFERENCES Veiculo(idVeiculo),
	CONSTRAINT fk_Servico_idTabelaServico FOREIGN KEY (idTabelaServico) REFERENCES TabelaServico(idTabelaServico),
	CONSTRAINT fk_Servico_idEquipe FOREIGN KEY (idEquipe) REFERENCES Equipe(idEquipe),
	CONSTRAINT fk_Servico_idStatusServico FOREIGN KEY (idStatusServico) REFERENCES StatusServico(idStatusServico)
);


CREATE TABLE Especialidade (
	idEspecialidade INT auto_increment primary KEY,
	Identificacao VARCHAR(45) NOT NULL,
	CONSTRAINT unique_Especialidade_Identificacao UNIQUE (Identificacao)
);


CREATE TABLE Mecanico (
	id INT auto_increment primary KEY,
	idEspecialidade INT NOT NULL,
	idEquipe INT NOT NULL,
	Codigo VARCHAR(45) NOT NULL,
	Nome VARCHAR(100) NOT NULL,
	Endereco VARCHAR(10) NOT NULL,
	CONSTRAINT unique_Mecanico_Codigo UNIQUE (Codigo),
	CONSTRAINT fk_Mecanico_idEspecialidade FOREIGN KEY (idEspecialidade) REFERENCES Especialidade(idEspecialidade),
	CONSTRAINT fk_Mecanico_idEquipe FOREIGN KEY (idEquipe) REFERENCES Equipe(idEquipe)
);


CREATE TABLE Peca (
	idPeca INT auto_increment primary KEY,
	Identificacao VARCHAR(45) NOT NULL,
	ValorReferencia DECIMAL(18,2) NOT NULL,
	CONSTRAINT unique_Peca_Identificacao UNIQUE (Identificacao)
);


CREATE TABLE ServicoPeca (
	id INT auto_increment primary KEY,
	idServico INT NOT NULL,
	idPeca INT NOT NULL,
	ValorPeca DECIMAL(18,2) NOT NULL,
	CONSTRAINT fk_ServicoPeca_idServico FOREIGN KEY (idServico) REFERENCES Servico(id),
	CONSTRAINT fk_ServicoPeca_idPeca FOREIGN KEY (idPeca) REFERENCES Peca(idPeca))