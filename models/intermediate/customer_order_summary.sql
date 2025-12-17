select
        customer_id,
        min(order_date) as first_order_date,
        max(order_date) as last_order_date,
        count(order_id) as total_orders,
        sum(total_amount) as lifetime_value
    from {{ ref('stg_orders') }}
    group by 1