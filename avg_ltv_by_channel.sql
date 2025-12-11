SELECT 
  acquisition_channel,
  AVG((arpu * gross_margin) / NULLIF(churn_rate, 0)) AS avg_ltv
FROM `cac-ltv-model.cac_ltv_data.cac_ltv_table` 
GROUP BY
  acquisition_channel;