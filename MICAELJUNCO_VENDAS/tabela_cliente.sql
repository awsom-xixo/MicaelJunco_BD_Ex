create table cliente(
	codCliente int not null,
    nomeCliente varchar(50),
    tipoCliente varchar(10),
    endereco varchar(80),
    cidade varchar(50),
    CEP varchar(10),
    UF char(2),
    CNPJ varchar(30),
    inscEstadual int(10),
    constraint PK_Cliente primary key (codCliente)
    );