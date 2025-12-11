WITH cac AS (
  SELECT
    acquisition_channel,
    AVG(marketing_spend) AS avg_cac
  FROM `cac-ltv-model.cac_ltv_data.cac_ltv_table`
  GROUP BY acquisition_channel
),
ltv AS (
  SELECT
    acquisition_channel,
    AVG((arpu * gross_margin) / NULLIF(churn_rate, 0)) AS avg_ltv
  FROM `cac-ltv-model.cac_ltv_data.cac_ltv_table`
  GROUP BY acquisition_channel
)

SELECT
  ltv.acquisition_channel,
  ltv.avg_ltv,
  cac.avg_cac,
  SAFE_DIVIDE(ltv.avg_ltv, cac.avg_cac) AS ltv_cac_ratio
FROM ltv
JOIN cac
  ON ltv.acquisition_channel = cac.acquisition_channel;
