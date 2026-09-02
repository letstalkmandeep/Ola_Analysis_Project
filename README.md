# 🚕 Ola Ride Analytics Dashboard

> **End-to-End Data Analytics Project | Excel • SQL • Power BI**

An end-to-end analytics project built around Ola ride-booking data to understand **booking performance, vehicle contribution, revenue, cancellations, customer behaviour and service ratings**.

The project follows a complete analytical workflow — from cleaning and structuring raw data to SQL-based analysis and finally building an interactive Power BI dashboard.

> ⚠️ **Dataset Disclaimer:** The dataset used in this project is dummy data created for learning, portfolio and analytical demonstration purposes. It does not represent actual Ola business data.

---

## 📌 Table of Contents

- [Project Overview](#-project-overview)
- [Business Problem](#-business-problem)
- [Objectives](#-objectives)
- [Tools & Technologies](#-tools--technologies)
- [Project Workflow](#-project-workflow)
- [Dashboard Overview](#-dashboard-overview)
- [Key Highlights](#-key-highlights)
- [SQL Analysis](#-sql-analysis)
- [Key Findings](#-key-findings)
- [Business Recommendations](#-business-recommendations)
- [Repository Structure](#-repository-structure)
- [Project Takeaway](#-project-takeaway)

---

# 📊 Project Overview

This project analyses Ola ride-booking data for the month of **July 2024**.

The analysis was performed in three major stages:

1. **Excel** → Cleaned and structured the raw booking data.
2. **SQL** → Loaded the prepared data and answered business-oriented questions.
3. **Power BI** → Built a fully interactive six-page dashboard to visualise the findings.

The final dashboard focuses on five major business areas:

**Bookings → Vehicles → Revenue → Cancellations → Ratings**

---

# 🎯 Business Problem

A ride-hailing platform generates a large amount of booking data every day. However, raw booking records alone do not clearly explain what is happening within the business.

This project attempts to answer questions such as:

- How are ride bookings performing over time?
- Which booking statuses contribute most to the overall volume?
- Which vehicle types generate the highest booking value?
- How far do customers travel across different vehicle categories?
- Which payment method contributes the most booking value?
- Who are the most frequent customers?
- Why are customers and drivers cancelling rides?
- How do customer and driver ratings vary across vehicle types?

The objective was to convert these raw records into **clear, decision-oriented insights**.

---

# 🎯 Objectives

The project was designed to:

- Clean and structure the raw booking dataset.
- Perform exploratory analysis using SQL.
- Analyse booking volume and booking status.
- Compare performance across vehicle types.
- Analyse booking value and payment methods.
- Identify top customers.
- Understand customer and driver cancellation patterns.
- Compare customer and driver ratings.
- Build an interactive Power BI dashboard.
- Translate analytical findings into potential business recommendations.

---

# 🛠️ Tools & Technologies

### Data Preparation
- **Microsoft Excel**
- Data Cleaning
- Data Structuring
- Data Preparation

### Data Analysis
- **SQL**
- Aggregations
- Filtering
- `GROUP BY`
- `ORDER BY`
- Views
- Business Question Analysis

### Data Visualization
- **Microsoft Power BI**
- Interactive Dashboard
- KPI Cards
- Trend Analysis
- Comparative Analysis
- Drill-down style visual exploration
- Business-focused Visualisation

### Project Management
- **GitHub**
- Repository-based project organisation

---

# 🔄 Project Workflow

```text
                    RAW DUMMY DATA
                          │
                          ▼
                 ┌─────────────────┐
                 │      EXCEL      │
                 │                 │
                 │ Data Cleaning   │
                 │ Data Structuring│
                 └────────┬────────┘
                          │
                          ▼
                 ┌─────────────────┐
                 │       SQL       │
                 │                 │
                 │ Business        │
                 │ Questions       │
                 │ Analysis        │
                 └────────┬────────┘
                          │
                          ▼
                 ┌─────────────────┐
                 │    POWER BI     │
                 │                 │
                 │ Data Analysis   │
                 │ Visualisation   │
                 │ Dashboard       │
                 └────────┬────────┘
                          │
                          ▼
                 ┌─────────────────┐
                 │ BUSINESS        │
                 │ INSIGHTS &      │
                 │ RECOMMENDATIONS │
                 └─────────────────┘
```

---

# 📈 Dashboard Overview

The Power BI dashboard consists of **6 analytical pages**, moving from a high-level business snapshot to detailed operational analysis.

## 🔗 Dashboard Files

### [📊 Open Power BI Dashboard](./dashboard/Ola.pbix)

Open the `.pbix` file using **Microsoft Power BI Desktop** to explore the interactive dashboard.

### [📄 View Dashboard PDF](./visuals/Ola_dashboard.pdf)

A PDF version of the completed dashboard is also included for quick reference.

---

# 🖥️ Dashboard Pages

## 01 — 🏠 Executive Overview

The landing page provides a quick snapshot of the overall business performance.

### Key KPIs

| KPI | Value |
|---|---:|
| Total Bookings | **103,024** |
| Booking Value | **₹35.08M** |
| Cancellation Rate | **37.91%** |
| Average Customer Rating | **4.00** |

The purpose of this page is to allow the viewer to understand the overall scale and performance of the business before moving into detailed analysis.

---

## 02 — 📅 Booking Overview

This page focuses on the **volume and status of rides over time**.

### Analysis Includes

- Ride volume over time
- Booking status distribution
- Successful bookings
- Driver cancellations
- Customer cancellations
- Driver-not-found bookings
- Daily booking movement

### Key Observation

Booking volume appears relatively stable during weekdays and shows a decline during weekends.

This suggests that the dataset has a stronger **weekday-oriented demand pattern**.

> Since this is dummy data, this pattern should be treated as an analytical observation rather than a verified real-world Ola trend.

---

## 03 — 🚘 Vehicle Performance

This page compares different vehicle types to understand their contribution to the business.

### Analysis Includes

- Booking value by vehicle type
- Booking contribution
- Average ride distance
- Vehicle-wise performance comparison

### Key Observation

**Prime Sedan** is the major vehicle type contributing to bookings in the analysed dataset.

The page also helps compare whether high booking contribution is associated with differences in ride distance and booking value.

---

## 04 — 💰 Revenue & Customer Analysis

This page examines the revenue side of the booking data along with customer-level activity.

### Analysis Includes

- Booking value by payment method
- Payment behaviour
- Booking value trends
- Top 5 customers
- Customer booking contribution

### Key Observation

**Cash** is the largest payment method in the dataset, contributing approximately **₹19.2M** in booking value.

The dashboard also identifies the top five customers based on booking activity.

---

## 05 — ❌ Cancellation Analysis

Cancellation is one of the major operational issues explored in the project.

This page analyses cancellations from both the **customer and driver side**.

### Customer Cancellation Analysis

The dashboard examines reasons such as:

- Driver not moving
- Driver asked to cancel
- Change of plans
- AC not working
- Wrong address

### Driver Cancellation Analysis

Major reasons include:

- Personal & car-related issues
- Customer-related issues
- Other operational reasons

### Key Observation

Driver-side cancellations represent a significant portion of cancelled rides, with **personal & car-related issues** being one of the major reasons identified in the dataset.

---

## 06 — ⭐ Ratings Analysis

The final page evaluates service quality through customer and driver ratings.

### Analysis Includes

- Average customer rating by vehicle type
- Driver rating comparison
- Vehicle-wise rating trends

### Key Observation

Both customer and driver ratings remain close to **4.0** across the analysed vehicle categories.

This indicates relatively consistent rating levels across the dataset.

---

# 🔎 Key Highlights

### 📌 Overall Performance

- **103,024** total bookings during July 2024.
- **₹35.08M** total booking value represented in the dashboard.
- Overall cancellation rate stands at **37.91%**.
- Average customer rating is approximately **4.0**.

### 🚘 Vehicle Performance

- **Prime Sedan** contributes the highest booking volume among the vehicle categories.
- Vehicle categories show differences in booking contribution and average ride distance.

### 💳 Payment Behaviour

- **Cash** is the dominant payment method.
- Approximately **₹19.2M** of booking value comes through cash payments.

### ❌ Cancellation Behaviour

- Driver cancellations form a major part of cancelled rides.
- Personal and car-related problems are among the major driver cancellation reasons.
- Customer-side cancellations are also driven by multiple operational and behavioural factors.

### ⭐ Service Quality

- Customer and driver ratings remain around **4.0**.
- Rating patterns are relatively consistent across vehicle categories.

---

# 🧮 SQL Analysis

Before building the Power BI dashboard, the cleaned dataset was loaded into SQL for business-oriented analysis.

The SQL analysis covers questions related to:

| Analysis Area | Business Question |
|---|---|
| Successful Bookings | Which rides were completed successfully? |
| Vehicle Performance | What is the average ride distance for each vehicle type? |
| Customer Cancellations | How many rides were cancelled by customers? |
| Top Customers | Which customers booked the highest number of rides? |
| Driver Cancellations | How many rides were cancelled due to personal/car-related issues? |
| Driver Ratings | What are the minimum and maximum driver ratings for Prime Sedan? |
| Payment Methods | Which rides were paid using UPI? |
| Customer Ratings | What is the average customer rating for each vehicle type? |
| Booking Value | What is the total booking value of completed rides? |
| Incomplete Rides | Which rides were incomplete and why? |

### SQL Files

- [`init_database.sql`](./scripts/init_database.sql) — Database/table setup
- [`questions_raw.sql`](./scripts/questions_raw.sql) — Business questions and SQL analysis
- [`answers_summary.sql`](./scripts/answers_summary.sql) — Analysis output/summary

The SQL scripts use views to organise several of the analytical queries, including vehicle-wise ride distance, customer cancellations, top customers and ratings. 

---

# 💡 Key Findings

## 1. Weekday Demand Appears Stronger

Booking volume remains comparatively stable across weekdays but declines over the weekend.

**Possible interpretation:**  
The dataset suggests that a significant portion of demand may be associated with weekday travel such as office or business-related commuting.

---

## 2. Prime Sedan Leads Vehicle Contribution

Prime Sedan emerges as the strongest vehicle category in terms of booking contribution.

**Business implication:**  
This vehicle category deserves closer attention when analysing availability, pricing and customer demand.

---

## 3. Cash Dominates Payment Behaviour

Cash contributes approximately **₹19.2M** of booking value.

**Business implication:**  
There is significant scope to understand why customers prefer cash and whether digital payment adoption can be increased.

---

## 4. Driver Cancellations Need Attention

Driver-side cancellations represent a major component of the overall cancellation rate.

Personal and car-related problems are among the key reasons.

**Business implication:**  
Improving driver availability, vehicle readiness and cancellation controls could potentially reduce lost bookings.

---

## 5. Ratings Remain Relatively Stable

Average customer and driver ratings remain around **4.0** across vehicle types.

**Business implication:**  
There is no major rating imbalance visible across the vehicle categories in this dataset, although individual rating distributions could be investigated further.

---

# 🚀 Key Analysis & Business Recommendations

> **This section is intentionally left open for deeper business analysis and recommendations.**

The final analysis should go beyond simply describing the dashboard and answer:

### 🔍 Key Analysis

- What are the biggest operational problems?
- Which trends have the strongest business impact?
- Which vehicle/payment/customer segments deserve attention?
- What could be causing the high cancellation rate?
- Which findings are actionable rather than merely descriptive?

### 💼 Business Recommendations

_Add final recommendations here based on the analysis._

```text
Recommendation 1
→ Problem:
→ Evidence:
→ Proposed Action:
→ Expected Business Impact:


Recommendation 2
→ Problem:
→ Evidence:
→ Proposed Action:
→ Expected Business Impact:


Recommendation 3
→ Problem:
→ Evidence:
→ Proposed Action:
→ Expected Business Impact:
```

---

# 📁 Repository Structure

```text
Ola-Analytical-Dashboard/
│
├── 📂 dashboard/
│   └── Ola.pbix
│
├── 📂 dataset/
│   └── bookings.csv
│
├── 📂 scripts/
│   ├── init_database.sql
│   ├── questions_raw.sql
│   └── answers_summary.sql
│
└── 📂 visuals/
    └── Ola_dashboard.pdf
```

---

# 📂 Project Files

| Folder/File | Purpose |
|---|---|
| `dataset/bookings.csv` | Cleaned and structured booking dataset |
| `scripts/init_database.sql` | SQL database setup |
| `scripts/questions_raw.sql` | SQL business questions and queries |
| `scripts/answers_summary.sql` | SQL analysis summary |
| `dashboard/Ola.pbix` | Interactive Power BI dashboard |
| `visuals/Ola_dashboard.pdf` | Static dashboard preview |

---

# 📊 Project Metrics at a Glance

```text
╔══════════════════════════════════════════╗
║          OLA RIDE ANALYTICS              ║
╠══════════════════════════════════════════╣
║                                          ║
║  Total Bookings             103,024      ║
║  Booking Value              ₹35.08M      ║
║  Cancellation Rate            37.91%     ║
║  Avg Customer Rating             4.00    ║
║                                          ║
║  Leading Vehicle           Prime Sedan   ║
║  Leading Payment Method         Cash     ║
║                                          ║
╚══════════════════════════════════════════╝
```

---

# 🧠 What This Project Demonstrates

This project demonstrates practical experience in:

- Cleaning and preparing raw datasets
- Structuring data for analysis
- Writing SQL queries for business questions
- Creating analytical views in SQL
- Analysing booking and revenue behaviour
- Performing vehicle-level comparisons
- Analysing cancellation patterns
- Identifying top customers
- Building interactive Power BI dashboards
- Designing KPI-driven reports
- Translating data into business insights

---

# 🔗 Project Navigation

| Resource | Link |
|---|---|
| 📊 Power BI Dashboard | [Open Ola.pbix](./dashboard/Ola.pbix) |
| 📄 Dashboard PDF | [View Dashboard](./visuals/Ola_dashboard.pdf) |
| 🗃️ Dataset | [bookings.csv](./dataset/bookings.csv) |
| 🧮 SQL Questions | [questions_raw.sql](./scripts/questions_raw.sql) |
| 🏗️ SQL Setup | [init_database.sql](./scripts/init_database.sql) |
| 📑 SQL Answers | [answers_summary.sql](./scripts/answers_summary.sql) |

---

# 📌 Project Takeaway

The project demonstrates a complete **data-to-insight workflow**:

> **Clean the data → Ask business questions → Analyse with SQL → Visualise with Power BI → Identify patterns → Recommend actions**

Rather than treating the dashboard as a collection of charts, the analysis focuses on understanding **booking performance, vehicle contribution, payment behaviour, cancellations, customer activity and service quality**.

---

## 👤 Author

**Mandeep Singh**

Aspiring **Finance / Data Analyst** with an interest in transforming business data into actionable insights.

### Connect With Me

📧 **Email:** `letstalkmandeep@email.com`

🔗 **LinkedIn:** [Mandeep Singh](https://www.linkedin.com/in/mandeep-singh-56333937b)

---

⭐ **If you found this project useful, feel free to explore the dashboard and SQL analysis files in the repository.**
