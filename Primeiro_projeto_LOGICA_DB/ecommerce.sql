CREATE DATABASE ECOMMERCE;

USE ECOMMERCE;

CREATE TABLE Cliente (
	id int auto_increment primary key ,
	Nome VARCHAR(100) NOT NULL,
	Documento VARCHAR(18),
	TipoPessoa  varchar (2) NOT NULL CHECK (TipoPessoa IN('PF', 'PJ')) DEFAULT 'PF',
	CONSTRAINT unique_Cliente_Documento UNIQUE (Documento)
);

CREATE TABLE StatusPedido (
	id int auto_increment primary key ,
	Identificacao VARCHAR(45) NOT NULL,
	CONSTRAINT unique_StatusPedido_Identificacao UNIQUE (Identificacao)
);

CREATE TABLE TipoPagamento (
	id int auto_increment primary key ,
	Identificacao VARCHAR(50) NOT NULL,
	CONSTRAINT unique_TipoPagamento_Identificacao UNIQUE (Identificacao)
);


CREATE TABLE StatusEntrega (
	id INT auto_increment primary key ,
	Identificacao VARCHAR(45) NOT NULL,
	CONSTRAINT unique_StatusEntrega_Identificacao UNIQUE (Identificacao)
);

CREATE TABLE EnderecoEntrega (
	id INT auto_increment primary key ,
	IDStatusEntrega INT NOT NULL,
	CodRastreio VARCHAR(50) NOT NULL,
	CEP VARCHAR(8) NOT NULL,
	Logradouro VARCHAR(150) NOT NULL,
	Numero VARCHAR(10) NOT NULL,
	Complemento VARCHAR(10),
	DataEntrega DATETIME,
	CONSTRAINT fk_EnderecoEntrega_idStatusEntrega_StatusEntrega_id FOREIGN KEY (IDStatusEntrega) REFERENCES StatusEntrega(id) ON DELETE NO ACTION
);

CREATE TABLE Estoque (
	id INT auto_increment key,
	Identificacao VARCHAR(45) NOT NULL,
	CONSTRAINT unique_Estoque_Identificacao UNIQUE (Identificacao)
);

CREATE TABLE VendedorTerceiro (
	id INT auto_increment primary key ,
	RazaoSocial VARCHAR(100) NOT NULL,
	CNPJ VARCHAR(45) NOT NULL,
	CONSTRAINT unique_VendedorTerceiro_CNPJ UNIQUE (CNPJ)
);

CREATE TABLE Fornecedor (
	id INT auto_increment primary key,
	RazaoSocial VARCHAR(100) NOT NULL,
	CNPJ VARCHAR(45) NOT NULL,
	CONSTRAINT unique_Fornecedor_CNPJ UNIQUE (CNPJ)
);

CREATE TABLE Categoria (
	id int auto_increment primary key ,
	Identificacao VARCHAR(45) NOT NULL,
	CONSTRAINT unique_Categoria_Identificacao UNIQUE (Identificacao)
);

CREATE TABLE Produto (
	id INT auto_increment primary key,
	idCategoria INT NOT NULL,
	Identificacao VARCHAR(100) NOT NULL,
	Descricao TEXT NOT NULL,
	Valor DECIMAL(18,2) NOT NULL,
	CONSTRAINT unique_Produto_Identificacao UNIQUE (Identificacao),
	CONSTRAINT fk_Produto_idCategoria_Categoria_id FOREIGN KEY (idCategoria) REFERENCES Categoria(id) ON DELETE NO ACTION
);

CREATE TABLE ProdutoFornecedor (
	id int auto_increment primary key ,
	idProduto INT NOT NULL,
	idFornecedor INT NOT NULL,
	CONSTRAINT fk_ProdutoFornecedor_idProduto FOREIGN KEY (idProduto) REFERENCES Produto(id) 
    ON DELETE NO ACTION,
	CONSTRAINT fk_ProdutoFornecedor_idFornecedor FOREIGN KEY (idFornecedor) REFERENCES Fornecedor(id) 
    ON DELETE NO ACTION
);

CREATE TABLE ProdutoVendedorTerceiro (
	id int auto_increment primary key,
	idProduto INT NOT NULL,
	idVendedorTerceiro INT NOT NULL,
	CONSTRAINT fk_ProdutoVendedorTerceiro_idProduto FOREIGN KEY (idProduto) REFERENCES Produto(id),
	CONSTRAINT fk_ProdutoVendedorTerceiro_idVendedorTerceiro FOREIGN KEY (idVendedorTerceiro) REFERENCES VendedorTerceiro(id)
);

CREATE TABLE ProdutoEstoque (
	id int auto_increment primary key,
	idProduto INT NOT NULL,
	idEstoque INT NOT NULL,
	Quantidade INT NOT NULL,
	CONSTRAINT fk_ProdutoEstoque_idProduto_Produto_id FOREIGN KEY (idProduto) REFERENCES Produto(id) ON DELETE NO ACTION,
	CONSTRAINT fk_ProdutoEstoque_idEstoque_Estoque_id FOREIGN KEY (idEstoque) REFERENCES Estoque(id) ON DELETE NO ACTION
);


CREATE TABLE Pedido (
	id int auto_increment primary key,
	idEnderecoEntrega INT NOT NULL,
	idCliente INT NOT NULL,
	idStatusPedido INT NOT NULL,
    Codigo VARCHAR(45) NOT NULL, 
	DataPedido DATETIME NOT NULL,
	VlrFrete DECIMAL(18,2),
	VlrPedido DECIMAL(18,2),
	VlrTotal DECIMAL(18,2),
	CONSTRAINT unique_Pedido_Codigo UNIQUE (Codigo),
	CONSTRAINT fk_Pedido_idEnderecoEntrega_EnderecoEntrega_id FOREIGN KEY (idEnderecoEntrega) REFERENCES EnderecoEntrega(id) ON DELETE NO ACTION,
	CONSTRAINT fk_Pedido_idCliente_Cliente_id FOREIGN KEY (idCliente) REFERENCES Cliente(id) ON DELETE NO ACTION,
	CONSTRAINT fk_Pedido_idStatusPedido_StatusPedido_id FOREIGN KEY (idStatusPedido) REFERENCES StatusPedido(id) ON DELETE NO ACTION
);

CREATE TABLE PedidoProduto (
	id int auto_increment primary key,
	idPedido INT NOT NULL,
	idProduto INT NOT NULL,
	CONSTRAINT fk_PedidoProduto_idPedido_Pedido_id FOREIGN KEY (idPedido) REFERENCES Pedido(id) ON DELETE NO ACTION,
	CONSTRAINT fk_PedidoProduto_idProduto_Produto_id FOREIGN KEY (idProduto) REFERENCES Produto(id) ON DELETE NO ACTION
);

CREATE TABLE TipoPagamentoPedido (
	id int auto_increment primary key,
	idPedido INT NOT NULL,
	idTipoPagamento INT NOT NULL,
	Valor DECIMAL(18,2),
	CONSTRAINT fk_TipoPagamentoPedido_idPedido_Pedido_id FOREIGN KEY (idPedido) REFERENCES Pedido(id) ON DELETE NO ACTION,
	CONSTRAINT fk_TipoPagamentoPedido_idTipoPagamento_TipoPagamento_id FOREIGN KEY (idTipoPagamento) REFERENCES TipoPagamento(id) ON DELETE NO ACTION
);