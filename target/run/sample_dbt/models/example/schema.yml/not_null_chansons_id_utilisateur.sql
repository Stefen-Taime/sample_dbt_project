select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select id_utilisateur
from "postgres"."public"."chansons"
where id_utilisateur is null



      
    ) dbt_internal_test