{{
    config(
        materialized='incremental'
    )
}}

select*from {{ source('MAC_2', 'MY_SALES') }}

{% if is_incremental() %}
    -- this filter will only be applied on an incremental run
    where LAST_MODIFIED_DATE > (select max(LAST_MODIFIED_DATE) from {{ this }}) 
{% endif %}