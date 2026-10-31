SELECT
    date_trunc('month', search_date) AS month,
    search_term AS role,
    COUNT(*) AS postings
FROM {{ref('job_postings')}}
GROUP BY month, role
ORDER BY month, role