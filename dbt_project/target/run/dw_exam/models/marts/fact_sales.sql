
  
    

        create or replace transient table DW_EXAM_DB.LOCAL_MARTS.fact_sales
         as
        (SELECT
    o.ORDER_ID,
    o.CUSTOMER_ID,
    oi.PRODUCT_ID,
    o.ORDER_PURCHASE_TIMESTAMP AS ORDER_DATE,
    oi.PRICE,
    oi.FREIGHT_VALUE,
    p.PAYMENT_VALUE AS SALES_AMOUNT,
    p.PAYMENT_TYPE
FROM DW_EXAM_DB.LOCAL_LOCAL.stg_orders o
LEFT JOIN DW_EXAM_DB.LOCAL.RAW_ORDER_ITEMS oi
    ON o.ORDER_ID = oi.ORDER_ID
LEFT JOIN DW_EXAM_DB.LOCAL.RAW_PAYMENTS p
    ON o.ORDER_ID = p.ORDER_ID
        );
      
  