SELECT
products_id,
date_date,
orders_id,
revenue,
(quantity * purchase_price) AS purchase_cost,
ROUND((revenue - (quantity * purchase_price)), 2) AS margin
from
{{ref("stg_gz_raw_data__raw_gz_sales")}}
JOIN
{{ref("stg_gz_raw_data__raw_gz_product")}}
USING (products_id)
