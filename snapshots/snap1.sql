{% snapshot snap_1 %}
    {{
        config(
            unique_key='ID',
            strategy='check',
            check_cols=['CITY'],
            invalidate_hard_deletes=False,
            
        )
    }}

    select * from {{ source('MAC_2', 'ADDRESS') }}
 {% endsnapshot %}