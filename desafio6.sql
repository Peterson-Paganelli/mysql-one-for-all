SELECT MIN(plans.valor_plano) AS 'faturamento_minimo',
MAX(plans.valor_plano) AS 'faturamento_maximo',
ROUND(AVG(plans.valor_plano), 2) AS 'faturamento_medio',
SUM(plans.valor_plano) AS 'faturamento_total'
FROM SpotifyClone.Usuarios AS users
INNER JOIN SpotifyClone.Planos AS plans
ON plans.plano_id = users.plano_id;