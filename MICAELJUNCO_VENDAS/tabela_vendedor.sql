create table vendedor(
	codVendedor integer not null,
    nomeVendedor varchar(50),
    salarioFixo decimal(10,2),
    faixaComissao char(2),
    constraint PK_Vendedor primary key (codVendedor)
    );