-- Qual usuário realizou mais vendas no mês 4 de 2025

SELECT usu.nome_usuario, count(ven.ID_venda) as 'Total de Vendas'
FROM usuario as usu JOIN vendas as ven
ON usu.ID_usuario = ven.ID_usuario
WHERE MONTH(ven.data_venda) = 4
GROUP BY ven.ID_usuario
ORDER BY count(ven.ID_venda) DESC;