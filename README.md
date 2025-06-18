# Manchester United Performance Analysis (2013–2023)

This project presents an end-to-end data analysis of Manchester United's performance in the Premier League from the 2013/2014 to 2023/2024 season. The primary goal is to explore the decline in team performance post the Alex Ferguson era through quantitative indicators such as match results, shooting accuracy, discipline metrics, and home/away efficiency.

---

## Project Structure

### 1. `SQL_Transformations.sql`
Contains SQL logic to:
- Filter only matches involving Manchester United
- Create key calculated columns such as:
  - `EMU_VS`: Opponent name
  - `TIPE`: Match location (Home/Away)
  - `Win`, `Draw`, `Lose`: Binary flags per result
  - Performance metrics comparisons (SOT, Shots, Fouls, Cards, etc.)

### 2. `Cleaned_Data.xlsx`
Cleaned and filtered data from the original dataset (2000–2025), reduced to:
- **2013–2023 seasons only** (post-dominance, complete data)
- Removed duplicates, empty rows, and unused columns

### 3. `MU_Dashboard_LookerStudio.png`
Preview of the final visual dashboard built using **Google Looker Studio**, showcasing interactive breakdowns per season, location, and metric.

---

## Dashboard Overview

- **Total Results Summary**  
  - Win: 216  
  - Draw: 101  
  - Lose: 101

- **Season Filter**  
  Dropdown filter to explore each season individually.

- **Key Visual Components:**
  - **MANUTD RESULT (Bar Chart):** Win/Draw/Lose breakdown per year
  - **HOME AWAY RESULT:** Match results based on location
  - **SHOOTING PERFORMANCE:** Shots vs Shots on Target per match
  - **BEST SEASON (Discipline View):** Comparison of red/yellow cards
  - **HOME AWAY SHOTS (Pie Chart):** Distribution of total shots

---

## Tools & Skills Used

- **SQL (CTEs, CASE statements)** for transformation
- **Excel** for cleaning, pivoting, and pre-aggregation
- **Google Looker Studio** for interactive data visualization
- **Data Modeling & Feature Engineering** (binary scoring system)
- **Data Cleaning & Filtering** (removing outliers, incomplete years)

---

## Why This Project?

We aim to understand the **underlying causes of Manchester United's inconsistent performance** post-2013 by translating match data into binary indicators:
- Was the team more dominant at home?
- Did offensive accuracy decline?
- Is indiscipline (cards, fouls) a contributing factor?

By transforming categorical and numerical match features into binary flags (1 = superior performance, 0 = inferior), we enable easier aggregation, comparison, and trend discovery across seasons.

---

## Dataset Source
Raw data originally spans **2000/2001 to 2024/2025**, but this project focuses only on **2013–2024 (partial)**, omitting:
- **2000–2013**: Era of dominance, not relevant for decline analysis
- **2024/2025**: Incomplete season (only half data available)


---

## Author

**Gerry Aria Rotama**  
Data Analyst | Football & Data Enthusiast  
📧 Geerxv@gmaill.com  
[https://www.linkedin.com/in/geriariarotama/]

---

## 📎 License
This project is for educational and portfolio purposes only. Data used is public and credited to respective league data providers.
