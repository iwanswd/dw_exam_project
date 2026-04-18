
    
    

with all_values as (

    select
        ORDER_STATUS as value_field,
        count(*) as n_records

    from DW_EXAM_DB.LOCAL_LOCAL.stg_orders
    group by ORDER_STATUS

)

select *
from all_values
where value_field not in (
    'approved','canceled','created','delivered','invoiced','processing','shipped','unavailable'
)


