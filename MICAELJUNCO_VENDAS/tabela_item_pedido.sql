create table item_pedido (
	numPedido integer not null,
    codProduto integer not null,
    qtdeProduto integer not null,
    constraint FK_numPedido_pedido foreign key (numPedido) references pedido(numPedido),
    constraint FK_codProduto_pedido foreign key (codProduto) references produto(codProduto)
    );