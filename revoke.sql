USE vamosla;

-- Criar a role
CREATE ROLE 'app_desativado';

-- Remover todas as permissões diretas do usuário
REVOKE ALL PRIVILEGES, GRANT OPTION
FROM 'usuario_desenvolvedor'@'localhost';

-- Revogar roles que o usuário possa possuir
REVOKE ALL ROLES
FROM 'usuario_desenvolvedor'@'localhost';

-- Associar a role sem permissões ao usuário
GRANT 'app_desativado'
TO 'usuario_desenvolvedor'@'localhost';

-- Definir a role como padrão
SET DEFAULT ROLE 'app_desativado'
TO 'usuario_desenvolvedor'@'localhost';

FLUSH PRIVILEGES;