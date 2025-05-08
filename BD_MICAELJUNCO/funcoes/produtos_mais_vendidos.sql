-- Produto mais vendido

SELECT prod.nome_produto, SUM(ven_prod.quantidade) AS total_vendido
FROM venda_produto as ven_prod JOIN produto as prod 
	ON ven_prod.ID_produto = prod.ID_produto
GROUP BY prod.nome_produto
ORDER BY total_vendido DESC;