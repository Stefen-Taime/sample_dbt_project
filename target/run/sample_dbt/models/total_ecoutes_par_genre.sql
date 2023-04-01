
  create view "postgres"."public"."total_ecoutes_par_genre__dbt_tmp" as (
    WITH ecoutes AS (
    SELECT
        genre,
        SUM(nombre_ecoutes) as total_ecoutes
    FROM "postgres"."public"."chansons"
    GROUP BY genre
)

SELECT
    genre,
    total_ecoutes
FROM ecoutes
ORDER BY total_ecoutes DESC
  );