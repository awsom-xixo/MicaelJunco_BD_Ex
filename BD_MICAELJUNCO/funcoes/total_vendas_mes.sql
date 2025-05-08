-- Total de vendas por mês

SELECT
date_format(ven.data_venda, '%Y-%m') as mes, SUM(ven.valor_total) as total_mensal
FROM vendas as ven
GROUP BY mes
ORDER BY mes;