SELECT 
DATE_TRUNC(date, MONTH) AS datemonth,
ROUND(SUM(ads_margin), 2) AS ads_margin,
ROUND(AVG(avg_basket), 2) AS avg_basket,
ROUND(SUM(operational_margin), 2) AS operational_margin,
ROUND(SUM(ads_cost), 2) AS ads_cost,
ROUND(SUM(ads_impression), 2) AS ads_impression,
ROUND(SUM(ads_clicks), 2) AS ads_clicks,
ROUND(SUM(nb_prod_sold), 2) AS nb_prod_sold,
ROUND(SUM(revenue), 2) AS revenue,
ROUND(SUM(purchase_cost), 2) AS purchase_cost,
ROUND(SUM(shipping_fee), 2) AS shipping_fee,
ROUND(SUM(log_cost), 2) AS log_cost,
ROUND(SUM(ship_cost), 2) AS ship_cost,
FROM {{ref("finance_campaigns_day")}}
GROUP BY DATE_TRUNC(date, MONTH)