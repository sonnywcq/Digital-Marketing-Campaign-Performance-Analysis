# Digital Marketing Campaign Performance Analysis

## 1. Project Overview

This project analyzes digital advertising campaign performance using a simulated **Meta Ads Performance Dataset**.

The goal is to evaluate the full advertising funnel:

**Impression → Click → Engagement → Purchase**

and identify differences across campaigns, platforms, audiences, and ad creatives.

The project uses **MySQL, Python, and Tableau** to build an end-to-end data analytics workflow from data cleaning and SQL analysis to business insights and dashboard visualization.

> **Note:** This dataset is a public simulated/modeling dataset and is not real Meta/Facebook internal advertising data.

---

## 2. Business Questions

This project focuses on the following business questions:

* Which campaigns generate the highest traffic and conversions?
* Which platforms have stronger advertising performance?
* Where are the biggest drop-offs in the conversion funnel?
* Which audience segments have higher conversion rates?
* Which ad creatives perform better?
* Is advertising budget being effectively utilized?

---

## 3. Tech Stack

| Tool                     | Purpose                                              |
| ------------------------ | ---------------------------------------------------- |
| **MySQL**                | Data storage, joins, KPI calculation, SQL analysis   |
| **Python**               | Data cleaning, exploratory analysis, funnel analysis |
| **Pandas / NumPy**       | Data processing and KPI calculation                  |
| **Matplotlib / Seaborn** | Exploratory visualization                            |
| **Tableau**              | Interactive business dashboards                      |
| **GitHub**               | Project documentation and version control            |

---

## 4. Dataset Structure

The dataset contains four main tables:

### `campaigns`

Contains campaign-level information such as:

* Campaign ID
* Campaign name
* Platform
* Start date
* End date
* Budget

### `ads`

Contains advertising creative and targeting information:

* Ad ID
* Campaign ID
* Creative type
* Target age
* Target gender

### `users`

Contains user demographic information:

* User ID
* Age
* Gender
* Country
* Device

### `ad_events`

Records user interactions with advertisements:

* Event ID
* User ID
* Ad ID
* Event type
* Timestamp

Typical event types include:

`Impression`, `Click`, `Like`, `Share`, `Comment`, `Purchase`

---

## 5. Key Metrics

The project calculates the following marketing KPIs:

| Metric                 | Definition                              |
| ---------------------- | --------------------------------------- |
| **CTR**                | Clicks / Impressions                    |
| **CPC**                | Advertising Spend / Clicks              |
| **CVR**                | Purchases / Clicks                      |
| **CPA**                | Advertising Spend / Purchases           |
| **CPM**                | Advertising Spend / Impressions × 1,000 |
| **ROAS**               | Revenue / Advertising Spend             |
| **Budget Utilization** | Actual Spend / Budget                   |

---

## 6. Analytical Workflow

```text
Raw Data
   ↓
Data Cleaning
   ↓
MySQL Data Modeling
   ↓
SQL KPI Analysis
   ↓
Python Exploratory Analysis
   ↓
Funnel & Audience Analysis
   ↓
Tableau Dashboard
   ↓
Business Insights
```

---

## 7. SQL Analysis

SQL analysis covers:

* Campaign performance
* Platform comparison
* Advertising funnel
* CTR / CVR / CPA / CPM / ROAS
* Audience performance
* Creative performance
* Daily and campaign-level trends
* Budget utilization
* Top-performing campaigns and ads

Example questions:

```sql
-- Campaign CTR
SELECT
    campaign_id,
    SUM(event_type = 'Click') /
    NULLIF(SUM(event_type = 'Impression'), 0) AS ctr
FROM ad_events
GROUP BY campaign_id;
```

---

## 8. Python Analysis

Python is used for deeper analysis that goes beyond basic SQL aggregation.

### Main tasks

* Data quality checks
* Event distribution analysis
* Campaign KPI comparison
* Conversion funnel analysis
* Audience segmentation
* Creative performance analysis
* Trend and anomaly detection

Example KPI calculation:

```python
campaign_kpi['CTR'] = (
    campaign_kpi['clicks'] /
    campaign_kpi['impressions']
)

campaign_kpi['CVR'] = (
    campaign_kpi['purchases'] /
    campaign_kpi['clicks']
)
```

---

## 9. Tableau Dashboards

### Dashboard 1 — Marketing Campaign Overview

Focuses on overall campaign performance.

Key components:

* Total Impressions
* Total Clicks
* Total Purchases
* CTR
* CVR
* ROAS
* Campaign performance
* Conversion funnel
* Platform comparison

### Dashboard 2 — Audience & Creative Insights

Focuses on audience and advertising strategy.

Key components:

* Conversion by age group
* Gender performance
* Geographic performance
* Device performance
* Creative type comparison
* Top-performing ads

---

## 10. Business Insights

The analysis is designed to identify patterns such as:

* High-impression campaigns with relatively low purchase conversion
* Audience segments with stronger engagement or conversion
* Differences in performance between advertising platforms
* Creative types associated with higher engagement
* Campaigns with inefficient budget utilization

The final recommendations are based on **measured campaign KPIs and funnel performance**, rather than platform-level comparisons alone.

---

## 11. Project Structure

```text
Digital-Marketing-Analytics/
│
├── data/
│   ├── campaigns.csv
│   ├── ads.csv
│   ├── users.csv
│   └── ad_events.csv
│
├── SQL/
│   └── marketing_analysis.sql
│
├── Python/
│   ├── data_cleaning.ipynb
│   └── campaign_analysis.ipynb
│
├── Tableau/
│   └── marketing_dashboard.twbx
│
└── README.md
```

---

## 12. Key Takeaways

This project demonstrates an end-to-end data analytics workflow:

**SQL** → data extraction and KPI calculation
**Python** → deeper behavioral and funnel analysis
**Tableau** → business-facing visualization and decision support

The project is designed to demonstrate practical skills relevant to **Data Analyst, BI Analyst, and Marketing Analyst** roles.
