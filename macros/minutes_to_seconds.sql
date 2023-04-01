-- macros/minutes_to_seconds.sql
{% macro minutes_to_seconds(minutes_column) %}
  {{ minutes_column }}::FLOAT * 60
{% endmacro %}
