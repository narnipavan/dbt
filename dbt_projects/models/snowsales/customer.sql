   

    with customer_base as (

     select * from {{ source('SNOWFLAKE_SAMPLE_DATA', 'customer') }}

    	),

    customer as (

    select * from customer_base
    	)

    select * from customer