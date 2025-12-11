SELECT
  EXTRACT(YEAR FROM PARSE_DATE('%b-%y', date)) AS cohort_year,
  EXTRACT(MONTH FROM PARSE_DATE('%b-%y', date)) AS cohort_month,
  COUNT(DISTINCT customer_id) AS num_customers
FROM
  `cac-ltv-model.cac_ltv_data.cac_ltv_table`
GROUP BY 
  cohort_year, 
  cohort_month
ORDER BY 
  cohort_year, 
  cohort_month;
