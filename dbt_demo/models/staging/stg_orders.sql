with data_source as (
    select * from {{ source('my_dbt_db', 'raw_orders') }}
),
renamed as (
    select
        id as order_id,
        customer as customer_id,
        ordered_at as created_at,
        store_id
    from data_source
)
select * from renamed


