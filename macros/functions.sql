{% macro margin percent(revenue, purchase_cost, decimals=2) %}
    SAFE_DIVIDE({{ revenue }} - {{ purchase_cost }}, {{ revenue }})
 {% endmacro %}