/*01) LISTAR TODOS OS PRODUTOS COM A RESPECTIVA DESCRIÇÕES, UNIDADES E VALORES UNITARIOS*/
select descProduto, uniProduto, valorUnitario from produto order by descProduto;

/*02) LISTAR DA TABELA CLIENTE O CNPJ, O NOME DO CLIENTE  E O SEU ENDEREÇO.*/
select nomeCliente, CNPJ, endereco from cliente order by nomeCliente;

/*03) LISTAR TODO O CONTEUDO DE VENDEDOR*/
select * from vendedor;

/*04) APRESENTE A SAIDA DE UMA CONSULTA NA TABELA VENDEDOR USANDO CABEÇALHO*/
select 
  codVendedor AS 'Código Vendedor',
  nomeVendedor AS 'Nome do Vendedor',
  salarioFixo AS 'Salário Fixo',
  faixaComissao AS 'Faixa de Comissão'
from 
  vendedor;

/*05) TRAGA O NOME DO VENDEDOR E O SALARIO FIXO MULTIPLICADO POR 2*/
select nomeVendedor, salarioFixo*2 as 'Novo Salário' from vendedor;

/*06) LISTAR O NUMERO DO PEDIDO , O CODIGO DO PRODUTO E A QUANTIDADE DOS ITENS DO PEDIDO COM A QUANTIDADE IGUAL A 35 DA TABELA ITEM _PEDIDO*/
select numPedido, codProduto, qtdeProduto from item_pedido where qtdeProduto = 35;

/*07) LISTE OS NOMES E A CIDADE DOS CLIENTES QUE MORAM EM NITEROI*/
select nomeCliente, cidade from cliente where cidade ='Niteroi';

/*08) LISTAR OS PRODUTOS QUE TENHAM UNIDADE IGUAL A 'm' E VALOR UNITARIO IGUAL A R1.05 DA TABELA PRODUTO*/
select uniProduto, valorUnitario
from produto
where uniProduto = 'm' and valorUnitario = 1.05;

/*09) LISTE OS CLIENTES E SEUS RESPECTIVOS ENDEREÇOS, QUE MORAM EM SÃO PAULO OU ESTEJAM NA FAIXA DE CEP ENTRE '30077000' E '30079000'*/
select nomeCLiente as 'Nome do Cliente', cidade as 'Cidade', CEP
from cliente
where cidade = 'São Paulo' or (CEP>=30077000 and CEP<=30079000);

/*10) MOSTRAR TODOS OS PEDIDOS QUE NAO TENHAM PRAZO  DE ENTREGA IGUAL A 15 DIAS*/
select numPedido, prazoEntrega, codCliente
from pedido
where prazoEntrega != 15;

/*11) LISTAR O CODIGO E A DESCRIÇAO DOS PRODUTOS QUE TENHAM VALOR UNITARIO NA FAIXA DE R$0.32 ATÉ R$2.00*/
select codProduto as 'Código do Produto', descProduto as 'Descrição do Produto', valorUnitario as 'Valor Unitário'
from produto
where valorUnitario>=0.32 and valorUnitario<=2; 

/*13) LISTAR OS VENDEDORES QUE NAO COMEÇAM POR 'JO'.*/
select codVendedor, nomeVendedor
from vendedor
where nomeVendedor LIKE '%jo%';

/*2) LISTAR TODOS OS PRODUTOS QUE TENHAM O SEU NOME COMEÇANDO POR 'Q'*/
select descProduto
from produto
where descProduto LIKE 'q%';

/*14) LISTAR OS VENDEDORES EM ORDEM ALFABETICA E QUE SÃO DA FAIXA DE COMISSAO 'A' e 'B'*/
select codVendedor, nomeVendedor, faixaComissao
from vendedor
where faixaComissao = 'A' or faixaComissao = 'B'
order by nomeVendedor;

/*15) MOSTRAR OS CLIENTES QUE NAO TENHAM INSCRIÇAO ESTADUAL*/
select codCliente, nomeCliente, inscEstadual as 'Inscrição Estadual'
from cliente
where inscEstadual is null;

/*16) MOSTRAR  EM ORDEM ALFABETICA A LISTA DE VENDEDORES E SEUS RESPECTIVOS SALARIOS FIXOS.*/
select codVendedor, nomeVendedor, salarioFixo
from vendedor
order by nomeVendedor;