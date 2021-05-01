{% macro test_customer_accbal(model, column_name) %}

with validation as (

    select
        {{ column_name }} as ACCT_BALANCE

    from {{ model }}

),

validation_errors as (

    select
        ACCT_BALANCE

    from validation

    where ACCT_BALANCE= 0

)

select count(*)
from validation_errors

{% endmacro %}