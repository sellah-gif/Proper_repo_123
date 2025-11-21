{{
    config(
        materialized='table',
        query_tag='from_dbt'
    )
}}

with cte_abcd as (
select*from {{ source('new_123', 'ABCD') }}
),
Newtran as(
    select
    id,
    lower(MY_NAME)AS new_name
    from cte_abcd
)
select*from Newtran
