SELECT * FROM playes;

-- Seleccionamos jugadores de manera aleatoria y actualizamos el campo "points"
WITH lucky_players AS (
    SELECT id
      FROM players
	WHERE status = true
    ORDER BY random()
     LIMIT 2
)
   UPDATE players
      SET points = points + 100 
    WHERE id IN (SELECT id FROM lucky_players)
RETURNING id,name,points;