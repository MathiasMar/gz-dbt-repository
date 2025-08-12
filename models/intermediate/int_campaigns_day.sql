SELECT
date_date AS date,
COUNT(paid_source) AS nb_paid_source,
COUNT(campaign_key) AS nb_campaign_key,
COUNT(campaign_name) AS nb_campaign_name,
SUM(ads_cost) AS ads_cost,
SUM(impression) AS impression,
SUM(click) AS click
FROM {{ref("int_campaigns")}}
GROUP BY date_date
ORDER BY date_date DESC