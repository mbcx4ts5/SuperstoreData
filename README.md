# Analysis of Example Financial Data from a Superstore Using SQL and Power BI

This project is designed to analyse and visualise historic example financial data from a Superstore. The dataset consists of data on product sales, profits and discounts, customer information, regional sale information and shipping type. Data wrangling was done using SQLite and then visualised using Power BI.

## The Data

The original example data can be found on the Kaggle website [here](https://www.kaggle.com/datasets/vivek468/superstore-dataset-final?resource=download). This data was transformed into various CSV files using SQLite queries. The resulting CSV files can be found in the `data/` folder. The corresponding SQL files used to create these files can be found in the `sql/` folder and have been named accordingly. 

A short comment in each SQL file explains which visual(s) the data was used for in Power BI.

## Power BI Visualisation

The Power BI dashboard is organised into 3 themed pages:

### 1. Sales Overview

A quick overview of profit and sales made by the company including:

- **KPIs Table**: Displays total sales, profit, total orders and the average value of each order.
- **Choropleth Map**: Colour map showing the number of sales per US state.
- **Top 10 States Tables**: Tables ranking the top 10 states by sales and profit.
- **Time Series**: Monthly sales and profits from January 2014 to December 2017.

**Key Insights**:

- Historic data shows steady increase in sales and profits over time.
- *November* and *December* are often the months with the most sales whilst *January* and *February* have the least sales.
- Despite varying sales numbers by month, profits tend to remain relatively stable.
- *California* and *New York* are the top two states for both sales and profits.
- *Texas*, *Pennsylvania* and *Florida* all make the top 10 in amount of sales but don't make the top 10 for profits and actually incur losses on the company.

### 2. Product Analysis

An overview and analysis of the category and sub-category of products sold by the company including:

- **Top 5 Most/Least Profitable Products Table**: Showing the top 5 most and least profitable product sub-categories.
- **Profit vs Sales Scatter**: Scatter graph showing potential profitability of each sub-category.
- **Sales Distribution Donut Chart**: Showing number of sales by category.
- **Profit/Loss by Discount Line Chart**: Showing how discount rates affect profits and losses.
- **Sales and Profit Bar Charts**: Showing total numbers of product sold and profits organised by category and sub-category.

**Key Insights**:

- *Office Supplies* represent the most sold category.
- Only 3 types of products are on average unprofitable, *Tables*, *Bookcases* and *Supplies* (Office Supplies).
- *Copiers* incurred the most profits of any sub-category.
- Products with a 10% discount tend to be slightly more profitable. This may indicate a pricing issue for these items.
- Discounts of 20% or more lead to losses on average.
- *Binders* and *Paper* represent highest volume sub-category sold.

### 3. Customer Segment Analysis

A breakdown of the behaviour of customers including:

- **Segment Donut Charts**: Shows the number of customers and the profits by segment (*Consumer*, *Corporate*, *Home Office*).
- **Profit Histogram** Shows a distribution of total profits per customer. 
- **Ship Mode Table** Summary of average, Q1, Q2 (median), Q3, minimum and maxiumum profit for each delivery method.
- **Customer Profitability Pareto Distribution** showing what percent of customers drive  what percent of positive profit.
- **Repeat Customers Bar Chart**: Displays the number of customers by the number of orders they made.

**Key Insights**:

- The *Consumer* segment makes the most profit (51.58%) despite making up only 46.83% of the customers.
- Most customers are profitable, but the majority only drive profits between $0 - $250.
- *First Class* shipping is the most profitable on average.
- Around 40% of customers account for 80% of the positive profit.
- Almost all customers made more than one order with the modal number being 5 and the maximum number being 17.

## Recommended Follow Ups

The data visualisations show a great deal of insights into the company's historic sales and profit/loss distributions. They also raise some follow up questions:

- Why do some states (*Texas*, *Pennsylvania*, *Florida* etc.) incur losses to the company despite having high sales? Are products bought by customers in these states or shipping modes the cause of these losses?
- Should the company continue to sell *Tables*, *Bookcases* and *Supplies* if they are unprofitable. Are there products within these categories that are profitable that the company could try to sell more of or in place of unprofitable ones?
- Are discounts of 20% or higher viable? Can these sales be used strategically, for example as "loss leaders"? Are customers more likely to purchase more or make repeated purchases if they buy a heavily discounted product?
- Is *First Class* shipping mode actually more profitable or are the differences in profit statistically significant given the number of sales? A statistical analysis would be needed.
- What are the mean and standard deviation of the number of orders per customer.

If you would like to investigate any of these questions, feel free to clone this repository and use the CSV files in the `data/` folder.

## Summary

This project has allowed me to:
- Further my skills in SQL by producing reusable and insightful data subsets.
- Showcase interactive and visually compelling dashboards in Power BI.
- Apply critical thinking whilst analysing financial data in order to derive insights and data driven recommendations.
