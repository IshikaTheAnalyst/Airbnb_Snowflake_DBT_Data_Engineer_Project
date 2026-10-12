--{% set nights_booked = 1 %}


--select * from {{ ref('bronze_bookings')}}
--where nights_booked>{{ nights_booked }}

--- if_else

{# {% set flag = 2 %}


SELECT * FROM {{ ref('bronze_bookings') }}
{% if flag == 1 %}
    WHERE NIGHTS_BOOKED > 1
{% else %}
    WHERE NIGHTS_BOOKED = 1
{% endif %} #}

-- loop

{# {% set cols = ['NIGHTS_BOOKED', 'BOOKING_ID', 'BOOKING_AMOUNT'] %}

SELECT 
{% for col in cols %}
    {{ col }}
        {% if not loop.last %}, {% endif %}
{% endfor %}
FROM {{ ref('bronze_bookings') }} #}