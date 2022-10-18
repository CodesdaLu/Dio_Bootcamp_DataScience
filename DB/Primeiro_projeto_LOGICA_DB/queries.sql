-- Recuperações simples com SELECT Statement
select * from pedido;

-- Filtros com WHERE Statement
select * from pedido where codigo='1000';

-- Crie expressões para gerar atributos derivados
select (sum(vlrFrete)+sum(vlrPedido)) as ValorTotal from Pedido;

-- Defina ordenações dos dados com ORDER BY
select Identificacao, Valor from Produto order by valor desc;

-- Condições de filtros aos grupos – HAVING Statement
select idCategoria, sum(Valor) from Produto group by idCategoria having count(idCategoria)>1;

-- Crie junções entre tabelas para fornecer uma perspectiva mais complexa dos dados
select c.Identificacao, p.Identificacao, p.Descricao, p.Valor from Produto p inner join Categoria c on p.idCategoria = c.id;
	
    
-- PERGUNTAS A SEREM RESPONDIDAS
-- 1) Quantos pedidos foram feitos por cada cliente?
select Count(p.idCliente), c.Nome  from Pedido p  inner join Cliente c on p.idCliente = c.id   group by p.idCliente, c.Nome;

-- 2) Algum vendedor também é fornecedor?
select f.RazaoSocial from Fornecedor f where f.CNPJ in (select t.CNPJ from VendedorTerceiro t);

-- 3) Relação de produtos fornecedores e estoques;
select f.RazaoSocial, p.Identificacao, pe.Quantidade
    from Produto p
    inner join ProdutoFornecedor pf on p.id = pf.idProduto
    inner join Fornecedor f on f.id = pf.idFornecedor
    inner join ProdutoEstoque pe on p.id = pe.idProduto;

-- 4) Relação de nomes dos fornecedores e nomes dos produtos;-- 
select f.RazaoSocial as Fornecedor, p.Identificacao as Produto
    from Produto p
    inner join ProdutoFornecedor pf on p.id = pf.idProduto
    inner join Fornecedor f on f.id = pf.idFornecedor;
