SELECT
    o.ORDER_ID,
    o.CUSTOMER_ID,
    oi.PRODUCT_ID,
    o.ORDER_PURCHASE_TIMESTAMP AS ORDER_DATE,
    oi.PRICE,
    oi.FREIGHT_VALUE,
    p.PAYMENT_VALUE AS SALES_AMOUNT,
    p.PAYMENT_TYPE
FROM {{ ref('stg_orders') }} o
LEFT JOIN {{ source('raw', 'RAW_ORDER_ITEMS') }} oi
    ON o.ORDER_ID = oi.ORDER_ID
LEFT JOIN {{ source('raw', 'RAW_PAYMENTS') }} p
    ON o.ORDER_ID = p.ORDER_ID
