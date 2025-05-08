-- Total de vendas por usuário

CREATE VIEW sa_padaria_mokele.vendas_usuarios
AS
SELECT usu.nome_usuario, count(ven.ID_venda) as 'Total de Vendas'
FROM usuario as usu JOIN vendas as ven
ON usu.ID_usuario = ven.ID_usuario
GROUP BY ven.ID_usuario
ORDER BY count(ven.ID_venda) DESC;

SELECT * FROM sa_padaria_mokele.vendas_usuarios;