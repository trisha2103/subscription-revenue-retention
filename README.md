# 🌟 SaaS Subscription Revenue Retention Analysis  

<p align="center">
  <img src="https://img.icons8.com/?size=512&id=22182&format=png" width="80"/>
  <img src="https://img.icons8.com/?size=512&id=62856&format=png" width="80"/>
  <img src="https://img.icons8.com/?size=512&id=108784&format=png" width="80"/>
  <img src="https://img.icons8.com/?size=512&id=117563&format=png" width="80"/>
</p>

<p align="center">
<b>Python 🐍 + PostgreSQL 🐘 + Docker 🐳 + Tableau 📊</b>  
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

> ⚡ *One Makefile command → entire pipeline runs automatically.*  

---

## 🛠️ Tech Superpowers  

| Tool | Why it Matters |
|------|----------------|
| 🐳 **Docker** | Portable, reproducible DB anywhere |
| 🐘 **PostgreSQL** | Crunch cohorts, retention, churn logic |
| 🐍 **Python** | Preprocessing, automation, churn modeling |
| 📊 **Tableau** | Insights for executives, not just analysts |
| 🛠️ **Makefile** | One-click orchestration: load → query → export |

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
│── Makefile          # 🚀 one-click automation
│── README.md         # 👋 you are here


## 🎨 Dashboards  

| 💧 Waterfall of MRR | 📈 MRR Trend | 🔥 Cohort Heatmap |
|---------------------|--------------|------------------|
| ![Waterfall](screenshots/Waterfall.png) | ![Trend](screenshots/MRR_Trend.png) | ![Cohort](screenshots/Cohort_Heatmap.png) |

🔗 [✨ Explore on Tableau Public](https://public.tableau.com/) *(add your link here)*  

---

## ⚡ Key Insights  

- Baseline churn ~ **4% monthly** (≈ 200 customers lost 😬)  
- Just **10% churn reduction** → saves ~20 customers/month 🎉  
- Avg MRR = **$300** → with 6 months retained →  
  **💰 $36,000 saved revenue**  

👉 *Retention isn’t optional — it’s a growth multiplier.*  

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

## 🌈 Why This Project Rocks  

✅ **Full-stack** → Data → DB → Analytics → Viz → Business Impact  
✅ **Dockerized** → works on any machine, zero setup pain  
✅ **Automated** → Makefile = one-command pipeline  
✅ **Visual** → dashboards tell a story execs understand  
✅ **Impact** → showed how to save **$36K+** by reducing churn  



## 🙋‍♀️ About Me  

👩🏻‍💻 **Trisha Veronica Mariadoss Yuvaraj**  
🎓 Masters in Business Analytics @ UMass Boston  
💼 Passion: Data Engineering · Analytics · Cloud  
📍 Boston, MA  

🌐 [LinkedIn](www.linkedin.com/in/trisha-veronica-mariadoss-yuvaraj-0b258a271) | [GitHub](https://github.com/trisha2103)  
