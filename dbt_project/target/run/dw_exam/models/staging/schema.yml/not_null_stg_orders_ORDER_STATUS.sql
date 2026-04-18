select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select ORDER_STATUS
from DW_EXAM_DB.LOCAL_LOCAL.stg_orders
where ORDER_STATUS is null



      
    ) dbt_internal_test