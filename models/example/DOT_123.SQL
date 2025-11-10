WITH CTE_2025 AS (
    SELECT
    ID,
    NAME
    FROM {{ source('MY_SOURCE', 'EMP_123') }}
),
CURED AS (
    SELECT
    ID,
    UPPER(NAME) AS MY_UPPER
    FROM CTE_2025
)
SELECT*FROM CURED
