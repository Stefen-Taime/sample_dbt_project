
    
    

select
    id_utilisateur as unique_field,
    count(*) as n_records

from "postgres"."public"."chansons"
where id_utilisateur is not null
group by id_utilisateur
having count(*) > 1


