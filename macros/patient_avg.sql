
{% macro test_patient_age_above_threshold() %}
    {{ config(materialized='ephemeral') }}

    SELECT avg_age
    FROM (
        SELECT AVG(patientage) AS avg_age
        FROM {{ ref('dim_patient') }}
    ) subquery
    WHERE avg_age > 35
{% endmacro %}
