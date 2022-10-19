-- select * From cliente;
INSERT INTO Cliente (Nome, Documento, TipoPessoa) VALUES ('Juliana Ferreira da silva', '03739770112', 'PF');
INSERT INTO Cliente (Nome, Documento, TipoPessoa) VALUES ('Fabio Junior Medina', '15265915211', 'PF');
INSERT INTO Cliente (Nome, Documento, TipoPessoa) VALUES ('Maria Julia Menndes', '25965712358', 'PF');
INSERT INTO Cliente (Nome, Documento, TipoPessoa) VALUES ('Ramos Paull Swastn', '25639874123', 'PF');
INSERT INTO Cliente (Nome, Documento, TipoPessoa) VALUES ('Ferragista Central Ltda', '27759642000154', 'PJ');

-- select * from statuspedido;
INSERT INTO StatusPedido (Identificacao) VALUES ('ABERTO');
INSERT INTO StatusPedido (Identificacao) VALUES ('EM ANDAMENTO');
INSERT INTO StatusPedido (Identificacao) VALUES ('EM PAUSA');
INSERT INTO StatusPedido (Identificacao) VALUES ('CONCLUIDO');
INSERT INTO StatusPedido (Identificacao) VALUES ('CANCELADO');

-- select * from TipoPagamento;
INSERT INTO TipoPagamento (Identificacao) VALUES ('Debito');
INSERT INTO TipoPagamento (Identificacao) VALUES ('Dinheiro');
INSERT INTO TipoPagamento (Identificacao) VALUES ('Boleto');
INSERT INTO TipoPagamento (Identificacao) VALUES ('Credito');
INSERT INTO TipoPagamento (Identificacao) VALUES ('PIX');

-- select * from statusEntrega;
INSERT INTO StatusEntrega (Identificacao) VALUES ('Aguardando separação');
INSERT INTO StatusEntrega (Identificacao) VALUES ('Retirado pela transportadora');
INSERT INTO StatusEntrega (Identificacao) VALUES ('Cancelado');
INSERT INTO StatusEntrega (Identificacao) VALUES ('Entregue');

-- select * from enderecoEntrega;
-- desc enderecoentrega;
INSERT INTO EnderecoEntrega (IDStatusEntrega, CodRastreio, CEP, Logradouro, Numero, Complemento) VALUES (1, '1200', '74477404', 'RUA BF 20 QD 66 LT 1 FLORESTA ', 'S/N', NULL);
INSERT INTO EnderecoEntrega (IDStatusEntrega, CodRastreio, CEP, Logradouro, Numero, Complemento) VALUES (2, '1201', '74477403', 'RUA BF 33 QD 66 LT 12 FLORESTA ', 'S/N', NULL);
INSERT INTO EnderecoEntrega (IDStatusEntrega, CodRastreio, CEP, Logradouro, Numero, Complemento) VALUES (3, '1202', '75102360', 'RUA BF 45 QD 66 LT 13 FLORESTA ', 'S/N', NULL);
INSERT INTO EnderecoEntrega (IDStatusEntrega, CodRastreio, CEP, Logradouro, Numero, Complemento) VALUES (4, '1203', '73591263', 'RUA BF 33 QD 66 LT 15 FLORESTA ', 'S/N', NULL);

-- select * From estoque;
INSERT INTO Estoque (Identificacao) VALUES ('Setor Oeste');
INSERT INTO Estoque (Identificacao) VALUES ('Setor Campinas');
INSERT INTO Estoque (Identificacao) VALUES ('Setor Central');
INSERT INTO Estoque (Identificacao) VALUES ('Regiao Noroeste');
INSERT INTO Estoque (Identificacao) VALUES ('Interior');

-- select * From vendedorTerceiro;
-- desc vendedorTerceiro;
INSERT INTO VendedorTerceiro (RazaoSocial, CNPJ) VALUES ('Papelaria da Guia.', '22866136000211');
INSERT INTO VendedorTerceiro (RazaoSocial, CNPJ) VALUES ('Papel de Parede Marin', '92813647000255');
INSERT INTO VendedorTerceiro (RazaoSocial, CNPJ) VALUES ('Relojoaria do Marron', '92813647000154');

-- select * From Fornecedor;
INSERT INTO Fornecedor (RazaoSocial, CNPJ) VALUES ('Papelaria da Guia.', '22866136000211');
INSERT INTO Fornecedor (RazaoSocial, CNPJ) VALUES ('Julio Mario ME', '92813647000123');
INSERT INTO Fornecedor (RazaoSocial, CNPJ) VALUES ('Bazar e Papelaria do Julio ME ', '92813647000177');
INSERT INTO Fornecedor (RazaoSocial, CNPJ) VALUES ('Supermecado Pena ', '92813649500122');

-- Select * from Categoria ;
INSERT INTO Categoria (Identificacao) VALUES ('Papelaria'); -- 1
INSERT INTO Categoria (Identificacao) VALUES ('Tecnologia'); -- 2
INSERT INTO Categoria (Identificacao) VALUES ('Bazar');  -- 3
INSERT INTO Categoria (Identificacao) VALUES ('Decoracao'); -- 4

-- select * from produto;
INSERT INTO Produto (idCategoria, Identificacao, Descricao, Valor) VALUES (1, 'Carderno Tipo Ata', 'Caderno 40fl', 29.90);
INSERT INTO Produto (idCategoria, Identificacao, Descricao, Valor) VALUES (1, 'Carderno Tipo Brochurao', 'Caderno 98fl', 29.90);
INSERT INTO Produto (idCategoria, Identificacao, Descricao, Valor) VALUES (2, 'Teclado', 'Teclado ABNT2 USB', 89.90);
INSERT INTO Produto (idCategoria, Identificacao, Descricao, Valor) VALUES (2, 'Mouse', 'Mouse USB', 49.90);
INSERT INTO Produto (idCategoria, Identificacao, Descricao, Valor) VALUES (3, 'Carteira Masculina', 'Carteira de couro masculina', 32.90);
INSERT INTO Produto (idCategoria, Identificacao, Descricao, Valor) VALUES (4, 'Coracao em MDF CRU ', 'CORACAO MDF', 29.90);
INSERT INTO Produto (idCategoria, Identificacao, Descricao, Valor) VALUES (4, 'Porta Treco Estilo Retro', 'Porta Treco Estilo Retro', 29.90);

-- select * from ProdutoFornecedor;
-- select * from produto;
-- Select * from fornecedor;

INSERT INTO ProdutoFornecedor (idProduto, idFornecedor) VALUES (1, 2);
INSERT INTO ProdutoFornecedor (idProduto, idFornecedor) VALUES (2, 3);
INSERT INTO ProdutoFornecedor (idProduto, idFornecedor) VALUES (3, 1);

-- select * from ProdutoVendedorTerceiro;
-- select * from produto;
-- select * from vendedorTerceiro;

INSERT INTO ProdutoVendedorTerceiro (idProduto, idVendedorTerceiro) VALUES (1, 1);
INSERT INTO ProdutoVendedorTerceiro (idProduto, idVendedorTerceiro) VALUES (2, 2);

-- select * from produtoEstoque;
-- select * from produto;
-- select * From estoque;
INSERT INTO ProdutoEstoque (idProduto, idEstoque, Quantidade) VALUES (1, 1, 10);
INSERT INTO ProdutoEstoque (idProduto, idEstoque, Quantidade) VALUES (3, 2, 15);

-- desc pedido;
-- select * from pedido;
-- select * from EnderecoEntrega;
-- select * from cliente;
-- select * from statusPedido;
INSERT INTO Pedido (idEnderecoEntrega, idCliente, idStatusPedido, Codigo, DataPedido, VlrFrete, VlrPedido, VlrTotal) VALUES	(1, 2, 1, '1000', '2022-09-20', 0, 100, 100);
INSERT INTO Pedido (idEnderecoEntrega, idCliente, idStatusPedido, Codigo, DataPedido, VlrFrete, VlrPedido, VlrTotal) VALUES	(2, 3, 2, '1001', '2022-09-21', 10, 150, 160);
INSERT INTO Pedido (idEnderecoEntrega, idCliente, idStatusPedido, Codigo, DataPedido, VlrFrete, VlrPedido, VlrTotal) VALUES	(3, 4, 3, '1002', '2022-09-19', 10, 12, 22);
INSERT INTO Pedido (idEnderecoEntrega, idCliente, idStatusPedido, Codigo, DataPedido, VlrFrete, VlrPedido, VlrTotal) VALUES	(4, 2, 4, '1003', '2022-09-18', 5, 80, 85);
INSERT INTO Pedido (idEnderecoEntrega, idCliente, idStatusPedido, Codigo, DataPedido, VlrFrete, VlrPedido, VlrTotal) VALUES	(4, 2, 5, '1004', '2022-09-18', 7.99, 100, 107.99);
                 
-- desc pedidoproduto;
-- select * From pedidoproduto;
-- select * From pedido;
-- select * from produto;
INSERT INTO PedidoProduto (idPedido, idProduto) VALUES (1, 2);
INSERT INTO PedidoProduto (idPedido, idProduto) VALUES (3, 3);
INSERT INTO PedidoProduto (idPedido, idProduto) VALUES (4, 5);

-- select * from TipoPagamentoPedido;
-- select * from Pedido;
-- select * from tipopagamento;
INSERT INTO TipoPagamentoPedido (idPedido, idTipoPagamento, Valor) VALUES (1, 1, 100);
INSERT INTO TipoPagamentoPedido (idPedido, idTipoPagamento, Valor) VALUES (3, 2, 120);
INSERT INTO TipoPagamentoPedido (idPedido, idTipoPagamento, Valor) VALUES (4, 3, 180);
INSERT INTO TipoPagamentoPedido (idPedido, idTipoPagamento, Valor) VALUES (5, 4, 100);
