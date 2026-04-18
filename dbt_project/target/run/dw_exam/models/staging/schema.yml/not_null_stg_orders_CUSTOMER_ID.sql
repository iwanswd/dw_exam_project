select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select CUSTOMER_ID
from DW_EXAM_DB.LOCAL_LOCAL.stg_orders
where CUSTOMER_ID is null



      
    ) dbt_internal_test