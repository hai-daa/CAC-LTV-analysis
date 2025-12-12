# CAC & LTV Model

This project models Customer Acquisition Cost (CAC), Lifetime Value (LTV), and retention dynamics for a fictional SaaS business operating in six global regions. Using synthetic data, the analysis explores:

- CAC calculations by acquisition channel
- LTV calculations based on ARPU, gross margin, and churn
- LTV:CAC ratios
- Cohort analysis and retention trends
- Visualizations including cohort heatmaps, bar charts for LTV/CAC, and ARPU by region
- SQL analysis replicating all Python insights

---


## Project Structure

| Plot | Filename | Description |
|------|----------|-------------|
| **1** | `plot1_cohort_heatmap.png` | Customer retention heatmap by cohort month |
| **2** | `plot2_ltv_vs_cac.png` | LTV vs CAC by acquisition channel (side-by-side bar chart) |
| **3** | `plot3_ltv_cac_ratio.png` | LTV:CAC ratio by acquisition channel |
| **4** | `plot4_arpu_by_region.png` | Average ARPU by global region |
| **Text** | `executive_summary.txt` | Executive summary with key insights and recommendations |
| **SQL** | Various `.sql` files | SQL queries for replicating CAC, LTV, and cohort analyses |

---

## Sample Visuals

| Plot 1 | Plot 2 |
|--------|--------|
| ![Plot 1](plot1_cohort_heatmap.png) | ![Plot 2](plot2_ltv_vs_cac.png) |

| Plot 3 | Plot 4 |
|--------|--------|
| ![Plot 3](plot3_ltv_cac_ratio.png) | ![Plot 4](plot4_arpu_by_region.png) |

---

## Output Files

- `plot1_cohort_heatmap.png`
- `plot2_ltv_vs_cac.png`
- `plot3_ltv_cac_ratio.png`
- `plot4_arpu_by_region.png`
- `executive_summary.txt`
- SQL queries:
  - `avg_cac_by_channel.sql`
  - `avg_ltv_by_channel.sql`
  - `ltv_cac_ratio.sql`
  - `cohort_analysis.sql`


---

> **Note:** This is a synthetic dataset. CAC values are likely lower than real-world SaaS benchmarks because marketing spend was randomized in a narrow range. In practice, CAC can vary significantly and may be 3–10x higher depending on industry, region, and product type.

---

## SQL Analysis

This project includes saved SQL queries in BigQuery for replicating key analyses:

- Average CAC by acquisition channel
- Average LTV by acquisition channel
- LTV:CAC ratio
- Customer cohort analysis by acquisition month

**BigQuery Table:**
```
cac-ltv-model.cac_ltv_data.cac_ltv_table
```

These queries can be executed directly in BigQuery. Results can also be exported and visualized using tools like Tableau, based on the exported CSV data.

---


## Recommendations 
```bash
EXECUTIVE SUMMARY:

This project models Customer Acquisition Cost (CAC), Lifetime Value (LTV), and retention dynamics for a fictional SaaS business operating in six global regions. Using synthetic data, it simulates key subscription business metrics to assess profitability and customer behavior across marketing channels and geographic segments.

KEY FINDINGS:

- Average CAC ranges from ~$50 to ~$400 depending on acquisition channel, with organic search proving significantly cheaper.
- Average LTV across all customers is ~$4,290.
- LTV:CAC ratios are highest for organic search (86.9x) and lowest for Google Ads (10.5x).
- Organic Search has the highest LTV:CAC ratio (~87x), driven by low CAC and solid retention.
- Paid channels like Google Ads and Meta Ads yield decent LTV but higher acquisition costs.
- ARPU varies moderately across regions, ranging from ~$163 in the Middle East to ~$176 in LatAm.
- Cohorts show typical churn over the first 12 months, with retention stabilizing around ~50% thereafter. This is visualized via cohort heatmaps.

RECOMMENDATIONS:

- Shift budget away from higher-CAC channels toward organic and lower-cost acquisition strategies.
- Explore longer contract lengths to stabilize churn rates.
- Further segment marketing efforts by region, given ARPU differences.
```
