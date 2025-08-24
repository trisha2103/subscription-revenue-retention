# 🌟 SaaS Subscription Revenue Retention Analysis  

<p align="center">
  <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/python/python-original.svg" width="60" /> &nbsp;
  <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/postgresql/postgresql-original.svg" width="60" /> &nbsp;
  <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/docker/docker-original.svg" width="60" /> &nbsp;
  <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/tableau/tableau-original.svg" width="60" />  
</p>

<p align="center">
  Python 🐍 + PostgreSQL 🐘 + Docker 🐳 + Tableau 📊
</p>


---

## 🚨 The Problem  

💡 Imagine you run a SaaS business:  
- Customers sign up, pay monthly → then… vanish ❌  
- 📉 Revenue drops, churn eats growth, and CFOs panic.  

The **big question**:  
👉 *How do we measure churn, cohorts, and retention to stop revenue leaks?*  

---

## 💡 The Solution  

I built a **full-stack analytics pipeline** that answers those exact questions:

🔹 **Dockerized PostgreSQL** — portable database, no messy installs.  
🔹 **SQL Cohort Analysis** — logo & revenue retention across time.  
🔹 **Python (Jupyter)** — preprocessing, feature engineering, exports.  
🔹 **Tableau Dashboards** — *executive-ready* visual storytelling.  


---

## 🛠️ Tech Superpowers  

| Tool | Why it Matters |
|------|----------------|
| 🐳 **Docker** | Portable, reproducible DB anywhere |
| 🐘 **PostgreSQL** | Crunch cohorts, retention, churn logic |
| 🐍 **Python** | Preprocessing, automation, churn modeling |
| 📊 **Tableau** | Insights for executives, not just analysts |

---

## 📂 Project Blueprint  

```bash
subscription-revenue-retention/
│── data/             # raw dataset (Telco CSV)
│── notebooks/        # Python notebooks (Jupyter)
│── sql/postgres/     # SQL: schema, cohorts, retention, MRR
│── exports/          # CSVs → Tableau
│── tableau/          # Packaged workbook (.twbx) or public link
│── screenshots/      # Dashboards 📸
│── README.md         # 👋 you are here

## 🎨 Dashboards  

Here are the interactive dashboards built for retention analysis:  

| 💧 Waterfall of MRR | 📈 MRR Trend | 🔥 Cohort Heatmap |
|---------------------|-------------|------------------|
| <img src="screenshots/Waterfall.png" width="250"/> | <img src="screenshots/MRR Trend.png" width="250"/> | <img src="screenshots/Cohort Heatmap.png" width="250"/> |


---

## ⚡ Key Insights  

- Baseline churn ~ **4% monthly** (≈200 customers lost 😬)  
- Just **10% churn reduction** → saves **20 customers/month** 🎉  
- Avg MRR = **$300** → with 6 months retained →  
  **💰 $36,000 saved revenue**  

👉 Retention isn’t optional — it’s a **growth multiplier** 🚀  

---

## 🚀 How to Reproduce (Docker-Powered)  

```bash
# 1. Start Dockerized Postgres
make db-start

# 2. Load schema + CSV
make load

# 3. Run all queries (cohorts, retention, MRR movements)
make all

# 4. Export CSVs for Tableau
make exports
make copy-exports

# 5. Open Tableau workbook
open tableau/Subscription_Retention.twbx
