USE goit_rdb_hw_03;

SELECT 
    supplier_id,
    COUNT(*) AS products_count,
    AVG(price) AS average_price
FROM products
GROUP BY supplier_id;