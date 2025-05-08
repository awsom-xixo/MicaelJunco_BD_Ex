-- Número de telefone dos analistas de vendas para contato urgente

SELECT usu.nome_usuario, tel.DDD, tel.numero
FROM usuario as usu JOIN usuario_telefone as tel
ON usu.ID_usuario_telefone = tel.ID_usuario_telefone
WHERE usu.nivel = 'analista de vendas';