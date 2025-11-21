{% snapshot New_snap_1 %}
    {{
        config(
            target_schema='STAGING_LAB',
            target_database='MY_DB_LAB',
            unique_key='ID',
            strategy='check',
            check_cols=['CITY'],
            invalidate_hard_deletes=False,
            
        )
    }}

    select * from {{ source('MAC_2', 'ADDRESS') }}
 {% endsnapshot %}