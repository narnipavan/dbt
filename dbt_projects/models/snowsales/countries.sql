with nations as (

    select * from {{ ref('nations')}}
)

select * from nations