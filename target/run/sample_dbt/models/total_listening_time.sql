
  create view "postgres"."public"."total_listening_time__dbt_tmp" as (
    -- models/total_listening_time.sql
WITH chansons_utilisateur AS (
  SELECT
    id_utilisateur,
    duree_sec
  FROM "postgres"."public"."chansons"
),

utilisateur_duree AS (
  SELECT
    id_utilisateur,
    SUM(
  duree_sec::FLOAT * 60
) AS duree_totale_sec
  FROM chansons_utilisateur
  GROUP BY id_utilisateur
)

SELECT
  id_utilisateur,
  duree_totale_sec
FROM utilisateur_duree
ORDER BY duree_totale_sec DESC
  );