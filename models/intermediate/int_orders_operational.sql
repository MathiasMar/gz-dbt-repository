SELECT
orders_id,
date_date,
ROUND((margin + shipping_fee - logcost - ship_cost), 2) AS operational_margin,
quantity,
revenue,
purchase_cost,
margin,
shipping_fee,
logcost,
ship_cost
from
{{ref("int_orders_margin")}}
JOIN
{{ref("stg_gz_raw_data__raw_gz_ship")}}
USING (orders_id)