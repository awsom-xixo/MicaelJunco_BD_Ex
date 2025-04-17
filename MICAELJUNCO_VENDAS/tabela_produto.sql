create table produto(
	codProduto integer not null,
    uniProduto varchar(10),
    descProduto varchar(50),
    valorUnitario decimal(10,2),
    constraint PK_Produto primary key(codProduto)
    );