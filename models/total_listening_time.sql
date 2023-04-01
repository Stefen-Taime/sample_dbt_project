-- models/total_listening_time.sql
WITH chansons_utilisateur AS (
  SELECT
    id_utilisateur,
    duree_sec
  FROM {{ ref('chansons') }}
),

utilisateur_duree AS (
  SELECT
    id_utilisateur,
    SUM({{ minutes_to_seconds('duree_sec') }}) AS duree_totale_sec
  FROM chansons_utilisateur
  GROUP BY id_utilisateur
)

SELECT
  id_utilisateur,
  duree_totale_sec
FROM utilisateur_duree
ORDER BY duree_totale_sec DESC
