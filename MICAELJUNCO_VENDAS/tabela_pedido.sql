create table pedido(
	numPedido integer not null,
    prazoEntrega integer(10),
    codCliente integer not null,
    codVendedor integer not null,
    constraint PK_Pedido primary key(numPedido),
    constraint FK_CLIENTE_PEDIDO foreign key (codCliente) references cliente(codCliente),
    constraint FK_VENDEDOR_PEDIDO foreign key (codVendedor) references vendedor(codVendedor)
    );