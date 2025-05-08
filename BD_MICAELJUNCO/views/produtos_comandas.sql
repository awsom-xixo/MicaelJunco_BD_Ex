-- VIEW de Produtos de cada comanda

CREATE VIEW sa_padaria_mokele.produtos_comandas
AS
SELECT com.ID_comanda, prod.nome_produto, com_pro.quantidade, prod.valor_unitario, com.valor_tot as 'Valor Total da Comanda'
FROM comanda_produto as com_pro JOIN comanda as com
ON com_pro.ID_comanda = com.ID_comanda
JOIN produto as prod
ON com_pro.ID_produto = prod.ID_produto;

SELECT * FROM sa_padaria_mokele.produtos_comandas;