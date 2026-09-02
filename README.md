# 🚕 Ola Ride Analytics Dashboard

This project analyzes Ola ride-booking data for the month of July to understand booking trends, ride performance, cancellations, customer behavior, payment methods, and overall booking value. I first used SQL to explore the data and answer key business questions, and then built an interactive Power BI dashboard to present the findings. The project also highlights the major problems identified from the analysis and provides practical recommendations based on the insights.

> ⚠️ **Dataset Disclaimer:** The dataset used in this project is dummy data created for learning, portfolio and analytical demonstration purposes. It does not represent actual Ola business data.

---

# 📊 Project Overview

This project analyses Ola ride-booking data for the month of **July 2024**.

The analysis was performed in three major stages:

1. **Excel** → Cleaned and structured the raw booking data.
2. **SQL** → Loaded the prepared data and answered business-oriented questions.
3. **Power BI** → Built a fully interactive six-page dashboard to visualise the findings.

---

# 🎯 Business Problem

A ride-hailing application creates a large number of booking information on a daily basis. Nevertheless, only the booking records cannot reveal how things are going inside the company.

This project seeks to find answers to such questions as:

- What is the performance of ride bookings over time?
- What type of vehicles brings the most booking revenue?
- How much distance do customers travel with various types of vehicles?
- What payment form brings the most booking revenue?
- Who are the most loyal customers?
- What reasons make customers and drivers cancel rides?
- What are the differences between customer and driver ratings with various types of vehicles?

The main goal was to transform these raw data into valuable insights for decision making.

---

# 🛠️ Tools & Technologies

### Data Preparation
- **Microsoft Excel**
- Data Cleaning

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

# 📈 Dashboard Overview

The Power BI dashboard consists of **6 analytical pages**, moving from a high-level business snapshot to detailed operational analysis.

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

# 🔍 Key Analysis and Business Recommendations

## Problem 1 — High Booking Failure Rate

A significant proportion of Ola bookings do not result in successful rides, potentially leading to **lost revenue and a poor customer experience**.

**Dashboard Evidence:**

> **103,024 Total Bookings → 63,970 Successful Bookings**

This means approximately **39,054 bookings were unsuccessful**, indicating a considerable gap between total booking demand and completed rides.

#### 💡 Recommended Actions

Ola could focus on reducing booking failures by:

- 📍 Identifying **areas and time periods** with consistently high failed bookings.
- 🚗 Increasing **driver availability during peak-demand periods**.
- 🎯 Improving **driver allocation and matching** to reduce unfulfilled requests. Sometimes driver from distance more then 2km are also able to pick the ride leads to increase in time to reach the destination which leads to customer dissatisfaction. 
- 💰 Introducing **targeted driver incentives** in high-demand or low-availability areas. Such as lesser commission on selected areas.
- 🔎 Analysing **driver-not-found patterns** to identify supply-side gaps.
- 📊 Monitoring **cancellation and booking failure rates on a daily basis** to detect operational issues early.

**Expected Impact:**  
Reducing unsuccessful bookings can help Ola **capture more existing demand, improve ride fulfilment, reduce customer frustration, and potentially increase booking revenue.**

--

## Problem 2 — High Driver Cancellation

**Problem:**  
Driver cancellations are a major contributor to unsuccessful bookings, with **18.43K bookings cancelled by drivers**. This can negatively impact both **revenue and customer experience**.

**Dashboard Evidence**

> **18.43K bookings cancelled by drivers**

The dashboard also highlights several reasons behind these cancellations, including:

- **Personal & car-related issues**
- **Customer-related issues**
- **Other specified reasons**
- **More-than-permitted-distance-related issues**

**Business Question**

> **Why are drivers cancelling such a large number of bookings, and how can Ola reduce avoidable driver cancellations?**

### 💡 Future Plan — Driver Cancellation Reduction Program

Ola could focus on the following actions:

- 🎯 Identify drivers with **unusually high cancellation rates** and monitor their behaviour.
- 📍 Analyse driver cancellations by **time and location** to identify operational hotspots.
- 💰 Provide **targeted incentives during peak-demand periods** to improve driver availability.
- 🗺️ Provide clearer **ride-distance and route information before acceptance** to reduce distance-related cancellations.
- ⚠️ Introduce appropriate measures for **repeated or unjustified cancellations**.
- 🛠️ Strengthen **driver support** for vehicle-related and personal issues that frequently lead to cancellations.

**Expected Impact**

A focused cancellation-reduction program could help Ola **increase successful rides, reduce lost booking opportunities, improve driver availability, and provide a more reliable customer experience.**

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
