WITH ecoutes AS (
    SELECT
        genre,
        SUM(nombre_ecoutes) as total_ecoutes
    FROM {{ ref('chansons') }}
    GROUP BY genre
)

SELECT
    genre,
    total_ecoutes
FROM ecoutes
ORDER BY total_ecoutes DESC
