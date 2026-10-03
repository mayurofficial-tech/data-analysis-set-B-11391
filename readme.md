# Data Analysis Practical — Set A

**Student Name:** Mayur Makwana
**Student ID:** 11391
**Set:** Set A

## Dashboard
![Power BI Dashboard](output/powerbi_dashboard.png)

**Video Link (Google Drive):**
[[https://drive.google.com/file/d/1WTzt21a59AQPrQ0SNECbcdCrHaXNvWvP/view?usp=drive_link](https://drive.google.com/file/d/1xDb0zLuaU8ev9-WsMJdbJ4r8ZISj3skB/view?usp=drive_link)](https://drive.google.com/file/d/1ERo3CWiQKdN4bZhw-_GyeAoQ93tTGwUe/view?usp=drive_link)

## 1. Objective

Analyze the given data, clean duplicate records, calculate required metrics,
and answer the business questions using Excel, SQL, Python and Power BI.

## 2. Business Questions

1. Which support team should improve resolution performance?
2. how does service quality vary by channel?

## 3. Dataset

- data/raw/tickets.csv — Fact data
- data/raw/teams.csv — Lookup data

Duplicate records were removed, leaving 12 clean records.

## 4. Cleaning & Metrics

- Removed the exact duplicate row.
- Joined data using team_id.
- breach_flag = (resolution_hours > 24)
- breach_rate = breach_flag_count / all records × 100

## 5. Tools

- Excel
- MySQL 8.0
- Python
- pandas
- matplotlib
- Power BI

## 6. Project Structure

- excel/ — Excel analysis
- sql/ — SQL setup and queries
- python/ — Python analysis
- powerbi/ — Power BI dashboard
- outputs/ — analysis results and charts

## 7. Setup & Run

### SQL
Run `sql/setup.sql` first, then `sql/queries.sql`.

### Python
Install packages:

`pip install -r requirements.txt`

Run from repository root:

`python python/analysis.py`

### Excel
Open `excel/analysis.xlsx`.

### Power BI
Open `powerbi/dashboard.pbix` and update the CSV path if required.

## 8. Findings

- Finding 1: AppSupport and BillingHelp team improve resolution performance
- Finding 2: Email is more suitable than phone calls or chat because data breaches are less likely to occur.

Recommendation: Improve AppSupport and BillingHelp and prefer email more for Customer Support

## 9. Cross-tool Reconciliation

Aggregate checked: average resolution_hours

Excel: 24  
SQL: 24  
Python: 24  
Power BI: 24

The values match, with any differences due only to rounding.

## 10. Video

Video URL: [[https://drive.google.com/file/d/1WTzt21a59AQPrQ0SNECbcdCrHaXNvWvP/view?usp=drive_link](https://drive.google.com/file/d/1xDb0zLuaU8ev9-WsMJdbJ4r8ZISj3skB/view?usp=drive_link)](https://drive.google.com/file/d/1ERo3CWiQKdN4bZhw-_GyeAoQ93tTGwUe/view?usp=drive_link)
Duration: 12 minutes

## 11. Authorship

All work in this repository is my own except where cited.
