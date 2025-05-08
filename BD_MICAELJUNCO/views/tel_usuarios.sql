-- Número de telefone dos usuarios

CREATE VIEW sa_padaria_mokele.tel_usuarios
AS
SELECT usu.nome_usuario, tel.DDD, tel.numero
FROM usuario as usu JOIN usuario_telefone as tel
ON usu.ID_usuario_telefone = tel.ID_usuario_telefone;

SELECT * FROM sa_padaria_mokele.tel_usuarios;