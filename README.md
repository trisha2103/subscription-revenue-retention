# 🚀 SaaS Subscription Revenue Retention Analysis  

![Python](https://img.shields.io/badge/Python-3.9-blue?logo=python)  
![PostgreSQL](https://img.shields.io/badge/PostgreSQL-Dockerized-%23336791?logo=postgresql)  
![Docker](https://img.shields.io/badge/Docker-Enabled-2496ED?logo=docker)  
![Tableau](https://img.shields.io/badge/Tableau-Dashboards-orange?logo=tableau)  
![Status](https://img.shields.io/badge/Status-Completed-brightgreen)

---

## 🎯 Problem  

SaaS companies live or die by **retention**. High churn = 🚪 customers leaving, 💸 revenue lost.  
Most teams focus on acquisition, but ignore:  
- 🔍 *Which cohorts are staying vs leaving?*  
- 📉 *Where is revenue leaking?*  
- 📊 *How much $$$ can we save if we reduce churn just 10%?*

---

## 💡 Solution  

I built an **end-to-end retention analysis pipeline** fully containerized with **Docker** for reproducibility:  

1. **📦 Dockerized PostgreSQL**  
   - PostgreSQL running in a **Docker container** → no setup pain, easy to replicate anywhere  
   - Mounted project directory for seamless data + SQL access  

2. **🧮 SQL Analytics**  
   - Cohort analysis (logo retention % and revenue retention %)  
   - MRR movement breakdown → new, expansion, contraction, churn  

3. **🐍 Python + Jupyter**  
   - Preprocessed dataset  
   - Exported analysis-ready CSVs  

4. **📊 Tableau Dashboards**  
   - Waterfall of MRR  
   - MRR Trend (by contract type)  
   - Cohort Retention Heatmap  

5. **⚡ Impact Measurement**  
   - Quantified potential $ retention from churn reduction  

---

## 🛠️ Tech Stack  

- **Docker** 🐳 → containerized PostgreSQL for full reproducibility  
- **PostgreSQL** 🐘 → core database + SQL analytics  
- **Python** 🐍 → preprocessing, CSV exports  
- **Tableau** 📊 → executive-friendly dashboards  
- **Git + GitHub** 💻 → full version control & collaboration  

---

## 📂 Project Structure  

subscription-revenue-retention/
│── data/ # raw dataset (Telco CSV)
│── notebooks/ # Jupyter notebook (Python preprocessing)
│── sql/ # schema + analytics queries
│ ├── 01_schema_load.sql
│ ├── 02_cohort_logo_retention.sql
│ ├── 03_cohort_revenue_retention.sql
│ ├── 04_mrr_movements.sql
│ ├── 05_exports.sql
│── exports/ # CSVs for Tableau
│── tableau/ # Tableau workbook (.twbx) 
│── screenshots/ # PNGs of dashboards
│── README.md # this file ✨
