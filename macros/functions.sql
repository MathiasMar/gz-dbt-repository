{% macro margin_percent(revenue, purchase_cost, decimals=2) %}
    {{ 
        (safe_divide(revenue - purchase_cost, revenue) | round(decimals)) 
    }}
{% endmacro %}