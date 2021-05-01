   

    with customer_base as (

     select *,
     {{ dbt_utils.surrogate_key(['C_NAME', 'C_NATIONKEY']) }} as C_SURROGAE_KEY ,
     C_MKTSEGMENT ='{{ var('preferred_segment') }}' as is_preferred_segment
     from {{ source('SNOWFLAKE_SAMPLE_DATA', 'customer') }}

    	),

    customer as (

    select * from customer_base
    	)

    select * from customer