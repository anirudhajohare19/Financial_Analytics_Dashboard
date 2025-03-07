CREATE DATABASE FinanceAnalysis;
USE FinanceAnalysis;

CREATE TABLE FinanceData (
    Date DATETIME,
    Company VARCHAR(100),
    Sector VARCHAR(50),
    Stock_Open FLOAT,
    Stock_High FLOAT,
    Stock_Low FLOAT,
    Stock_Close FLOAT,
    Stock_Volume INT,
    Revenue DOUBLE,
    Expenses DOUBLE,
    Net_Profit DOUBLE,
    Gross_Profit_Margin FLOAT,
    Market_Cap DOUBLE,
    Debt_to_Equity FLOAT,
    Interest_Rate FLOAT,
    Inflation_Rate FLOAT,
    GDP_Growth_Rate FLOAT,
    CPI FLOAT,
    Unemployment_Rate FLOAT,
    Investment_in_RnD DOUBLE,
    EPS FLOAT,
    ROI FLOAT,
    Bitcoin_Price FLOAT,
    Ethereum_Price FLOAT,
    USD_Exchange_Rate FLOAT,
    EUR_Exchange_Rate FLOAT,
    GBP_Exchange_Rate FLOAT,
    Dividend_Payout_Ratio FLOAT,
    Quick_Ratio FLOAT,
    Current_Ratio FLOAT,
    Supply_Chain_Disruptions INT,
    Credit_Rating VARCHAR(10),
    Housing_Market_Index FLOAT,
    Gold_Price FLOAT,
    Oil_Price FLOAT,
    Silver_Price FLOAT
);

-- -------------------------
-- Data Ananlysis ---
-- -------------------------

-- Q1. Investment Planning Queries  (Purpose: Identify profitable investment opportunities.)

-- 1. Total Market Cap
SELECT SUM(Market_Cap) AS Total_Market_Cap FROM financedata;

-- 2. Average ROI
SELECT AVG(ROI) AS Avg_ROI FROM financedata;

-- 3. Average EPS (Earnings Per Share)
SELECT AVG(EPS) AS Avg_EPS FROM financedata;

-- 4. Dividend Payout Ratio
SELECT AVG(Dividend_Payout_Ratio) AS Avg_Dividend_Payout FROM financedata;

-- 5. Stock Performance Over Time
SELECT Date, Company, Closing_Price
FROM financedata
ORDER BY Date ASC;

-- 6. Market Cap vs. ROI (for Scatter Plot)
SELECT Company, Market_Cap, ROI
FROM financedata
ORDER BY Market_Cap DESC;

-- 7. Macroeconomic Impact (GDP, Inflation, Interest Rate)
SELECT Date, GDP_Growth, Inflation_Rate, Interest_Rate
FROM financedata
ORDER BY Date ASC;

-- 8. Cryptocurrency & Commodity Trends 
SELECT Date, Bitcoin_Price, Gold_Price, Oil_Price
FROM financedata
ORDER BY Date ASC;

-- ----------------------------------------------------------------------------------------------------------
-- Q2:Risk Management Queries     (Purpose: Identify and mitigate financial risks.)

-- 1. Average Debt-to-Equity Ratio
SELECT AVG(Debt_to_Equity) AS Avg_Debt_Equity FROM financedata;

-- 2. Average Quick Ratio
SELECT AVG(Quick_Ratio) AS Avg_Quick_Ratio FROM financedata;

-- 3. Average Current Ratio
SELECT AVG(Current_Ratio) AS Avg_Current_Ratio FROM financedata;

-- 4. Credit Rating Count 
SELECT Credit_Rating, COUNT(*) AS Rating_Count
FROM financedata
GROUP BY Credit_Rating
ORDER BY Rating_Count DESC;

-- 5. Liquidity & Solvency Analysis 
SELECT Company, Quick_Ratio, Current_Ratio
FROM financedata
ORDER BY Quick_Ratio DESC;

-- 6. Debt-to-Equity vs. Credit Rating
SELECT Company, Debt_to_Equity, Credit_Rating
FROM financedata
ORDER BY Debt_to_Equity DESC;

-- 7. Unemployment & Inflation Impact
SELECT Date, Unemployment_Rate, Inflation_Rate
FROM financedata
ORDER BY Date ASC;

-- ------------------------------------------------------------------------------------------------------------------------------------
-- Q3: Strategic Planning Queries    (Purpose: Support business decision-making with revenue, expenses, and profitability analysis.)

-- 1. Total Revenue
SELECT SUM(Revenue) AS Total_Revenue FROM financedata;

-- 2. Total Expenses
SELECT SUM(Expenses) AS Total_Expenses FROM financedata;

-- 3. Net Profit
SELECT SUM(Net_Profit) AS Total_Net_Profit FROM financedata;

-- 4. Gross Profit Margin
SELECT AVG(Gross_Profit_Margin) AS Avg_Gross_Profit_Margin FROM financedata;

-- 5. Revenue vs. Expenses by Sector
SELECT Sector, SUM(Revenue) AS Total_Revenue, SUM(Expenses) AS Total_Expenses
FROM financedata
GROUP BY Sector
ORDER BY Total_Revenue DESC;

-- 6. Net Profit Trend by Company
SELECT Date, Company, Net_Profit
FROM financedata
ORDER BY Date ASC;

-- 7. Exchange Rate Fluctuations (USD, EUR, GBP)
SELECT Date, USD_Exchange_Rate, EUR_Exchange_Rate, GBP_Exchange_Rate
FROM financedata
ORDER BY Date ASC;















