select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select ORDER_ID
from DW_EXAM_DB.LOCAL_MARTS.fact_sales
where ORDER_ID is null



      
    ) dbt_internal_test