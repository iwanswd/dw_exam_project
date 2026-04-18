select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    

with child as (
    select CUSTOMER_ID as from_field
    from DW_EXAM_DB.LOCAL_MARTS.fact_sales
    where CUSTOMER_ID is not null
),

parent as (
    select CUSTOMER_ID as to_field
    from DW_EXAM_DB.LOCAL_MARTS.dim_customers
)

select
    from_field

from child
left join parent
    on child.from_field = parent.to_field

where parent.to_field is null



      
    ) dbt_internal_test