/*
Exercise: Order Details
URL: https://platform.stratascratch.com/coding/9913-order-details?code_type=7
*/

    SELECT ORD1.ORDER_DATE
         , ORD1.ORDER_DETAILS
         , ORD1.TOTAL_ORDER_COST
         , CUST1.FIRST_NAME
      FROM ORDERS ORD1
INNER JOIN CUSTOMERS CUST1
        ON ORD1.CUST_ID = CUST1.ID
       AND CUST1.FIRST_NAME IN ('Jill','Eva')
  ORDER BY ORD1.CUST_ID ASC
