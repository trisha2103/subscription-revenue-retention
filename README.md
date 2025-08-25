# 🌟 SaaS Subscription Revenue Retention Analysis  

<p align="center">
  <img src="https://www.python.org/static/community_logos/python-logo.png" width="80"/>
  <img src="https://upload.wikimedia.org/wikipedia/commons/2/29/Postgresql_elephant.svg" width="80"/>
  <img src="https://www.docker.com/wp-content/uploads/2022/03/Moby-logo.png" width="80"/>
  <img src="https://cdn.worldvectorlogo.com/logos/tableau-software.svg" width="80"/>
</p>

<p align="center">
  <b>Python 🐍 + PostgreSQL 🐘 + Docker 🐳 + Tableau 📊</b>
</p>

---

## 🔴 The Problem  
SaaS companies constantly fight **customer churn**.  
- Losing **4% customers every month** adds up quickly 😬  
- Executives often ask:  
  > *“How much revenue are we losing? Can we measure retention? What happens if we reduce churn?”*  

---

## ✅ The Solution  
This project builds a **full analytics pipeline**:  

1. **Python** → clean & transform raw subscription dataset  
2. **PostgreSQL (Dockerized)** → store subscriptions, run SQL cohorts  
3. **SQL Analytics** → churn, expansion, contraction, MRR retention  
4. **Tableau Dashboards** → visual story for executives  
5. **Business Impact** → quantify $$$ saved with churn reduction  

---

## 📂 Project Blueprint  

subscription-revenue-retention/  
├── 📊 data/           → Raw dataset (Telco CSV)  
├── 🐍 notebooks/      → Python notebooks (Jupyter)  
├── 🗄️ sql/postgres/   → SQL scripts: schema, cohorts, retention, MRR  
├── 📤 exports/        → CSV exports for Tableau  
├── 📊 tableau/        → Tableau packaged workbook (.twbx) / Public link  
├── 🖼️ screenshots/   → Dashboard snapshots (PNG)  
└── 📘 README.md       → You are here  


---


## 🎨 Dashboards  

| 💧 Waterfall of MRR | 📈 MRR Trend | 🔥 Cohort Heatmap |
|---------------------|-------------|-------------------|
| ![Waterfall](screenshots/Waterfall.png) | ![Trend](screenshots/MRR%20Trend.png) | ![Cohort](screenshots/Cohort%20Heatmap.png) |


---


## ⚡ Key Insights  

- Baseline churn = **~4% monthly** → ≈200 customers lost 😬  
- Cutting churn by **10%** = **20 customers saved/month** 🎉  
- Avg MRR = **$300** → 6 months retained → **💰 $36,000 saved**  

👉 Retention isn’t optional — it’s a **growth multiplier 🚀**  

---


## 🧠 What’s Inside the SQL  

1. **01_schema_load.sql** → creates `saas_retention` DB + `subscriptions` table and loads CSV  
2. **02_cohort_logo_retention.sql** → calculates logo retention % by `cohort_month × month_offset`  
3. **03_cohort_revenue_retention.sql** → computes revenue retention % by cohort  
4. **04_mrr_movements.sql** → tracks monthly **New / Expansion / Contraction / Churned MRR**  


---


## 🌈 Why This Project Rocks  

- ✅ **Full-stack** → Data → DB → Analytics → Viz → Business Impact  
- ✅ **Dockerized** → runs anywhere, zero setup pain  
- ✅ **Automated** → Makefile = one-command pipeline  
- ✅ **Visual** → dashboards tell a story execs instantly understand  
- ✅ **Impact-driven** → showed how to save **$36K+** with small churn wins  
