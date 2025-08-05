# Analysis of Example Financial Data from a Superstore in SQL, Visualisations with Power BI
This project is designed to analyse and visualise historic example financial data from a Superstore Giant. Data consists of product sales, profit and discounts, customer information, regional sale information and shipping type. The original dataset was split into smaller tables using SQLite queries in order for the data to be easily visualised in Power BI.

## The Data
The original example data can be found on the kaggle website here [1]. This data was transformed into various .csv files which can be found in the data folder. The associated SQL files used to create these .csv files can be found in the sql folder and have the same name as the .csv file they created. A short comment in each file shows which graphics the data was used for in Power BI.

## Power BI Visualisation
The Power BI dashboard is split into 3 themed pages.

### Sales Overview
A quick overview of profit and sales made by the company including:
- A KPIs table showing total sales, profit, total orders and the average value of each order
- State-wide map colour map showing the number of sales per state.
- Tables showing the top 10 states by sales and profit.
- Historic sales and profit data from January 2014 to December 2017.

Some insights:
- Historic data shows steady increase in sales and profits over time. November and December are often the months with the most sales whilst January and February have the least sales.
- Despite varying sales numbers by month, profits tend to remain relatively stable.
- California and New York are the number 1 and number 2 states for both sales and profits respectively.
- Texas, Pennsylvania and Florida all make the top 10 in amount of Sales but don't make the top 10 for profits and actually incur losses on the company.

### Product Analysis
An overview and analysis of the category and sub-category of products sold by the company including:
- Tables showing the top 5 most and least profitable product sub-categories.
- Scatter graph showing profit vs sales of each sub-category of product showing potential profitability of each sub-category.
- Donut chart showing number of sales by category.
- Line chart showing the profits/losses from products that had a certain percentage discount.
- Bar charts showing total numbers of product sold and profits of product sold split by category and sub-category.

Some insights:
- Office Supplies represent the most sold category of product.
- Only 3 types of products are on average unprofitable, Tables, Bookcases and Supplies (Office Supplies).
- Copiers incurred the most profits of any product.
- Products with a 10% discount were actually slightly more profitable. This may indicate a pricing issue for these items.
- Profitability seems to be unviable for products with discounts greater than 20%.
- Binders and Paper represent the products that sold the most (sales x quantity).

### Customer Segment Analysis
An overview of the customers that bought items including:
- Donut charts showing the number of customers in each segment (Consumer, Corporate, Home Office) and the profits by segment.
- Histogram showing how much total profit was made from each customer.
- Table showing how ship mode affects average profits including the the Q1, Q2 and Q3 profits and the most and least profitable sale.
- Pareto distribution showing what percentage of customers create what percentage of positive profit.
- Bar chart showing the number of customers who made multiple orders.

Some insights:
- The consumer segment makes the most profit (51.58%) despite making up only 46.83% of the customers.
- Most customers are profitable, but the most common profit is from $0 - $250.
- Sales that shipped first class are the most profitable on average.
- Around 40% of customers account for 80% of the positive profit.
- Almost all customers made more than one order with the modal number of orders being 5 and the maximum number being 17.

## Recommended Follow Ups
The data visualisations show a great deal of insights into the company's historic sales and profit/loss distributions. They also provide some insights that could be followed up on.
- Why do some states (Texas, Pennsylvania, Florida etc.) incur losses to the company despite having high sales? Check what kinds of items customers from these states are purchasing and the shipping modes they use.
- Should the company continue to sell Tables, Bookcases and Supplies if they are unprofitable. Are their products within these categories that are profitable that the company could try to sell more of?
- Are discounts higher than 20% viable? Further analysis of the role that high discounted items play on overall profits is needed. Are these sales useful as "loss leaders", are customers more likely to buy more or buy in the future if they buy a heavily discounted product?
- Does shipping mode really have an impact on the sale's profit? First Class appears slightly more profitable, but is this statistically significant given the sample size? A statistical analyis of the data's distribution would be needed.
- What's the mean and standard deviation of the number of orders per customer.

If you want to investigate any of these questions. Feel free to clone this repository, load in the data from the .csv files in the data folder and analyse this data for yourself.

## Citations
[1] https://www.kaggle.com/datasets/vivek468/superstore-dataset-final?resource=download

## Summary
This project has allowed me to:
- Further my skills in SQL to prodce useful data subsets.
- Showcase my data visualisation skills in Power BI.
- Improve my statistical and critical thinking skills in a financial setting to give data driven insights and recommendations.
