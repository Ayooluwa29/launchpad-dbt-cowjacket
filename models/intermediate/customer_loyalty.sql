select
        customer_id,
        sum(points_earned) as total_points_earned,
        max(transaction_date) as last_activity_date,
        count(loyalty_id) as total_loyalty_transactions
    from {{ ref('stg_loyalty_points') }}
    group by 1