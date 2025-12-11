SELECT
  acquisition_channel,
  AVG(marketing_spend) AS avg_cac
FROM 
  `cac-ltv-model.cac_ltv_data.cac_ltv_table` 
GROUP BY
  acquisition_channel;