# Alt Mobility E-commerce Data Analysis

This repository contains SQL analysis of e-commerce data for Alt Mobility. The analysis focuses on understanding order patterns, customer behavior, payment transactions, and customer retention.

## 📌 Table of Contents
- [Alt Mobility E-commerce Data Analysis](#alt-mobility-e-commerce-data-analysis)
  - [📌 Table of Contents](#-table-of-contents)
  - [📖 Project Overview](#-project-overview)
  - [data Overview](#data-overview)
  - [Analysis Tasks](#analysis-tasks)
    - [1. Order and Sales Analysis](#1-order-and-sales-analysis)
    - [2. Customer Analysis](#2-customer-analysis)
    - [3. Payment Status Analysis](#3-payment-status-analysis)
    - [4. Order Details Report](#4-order-details-report)
    - [5. Customer Retention Analysis (Visualizations)](#5-customer-retention-analysis-visualizations)
    - [Customer Retention Heatmap](#customer-retention-heatmap)
  - [Key Findings](#key-findings)
    - [Order and Sales Insights](#order-and-sales-insights)
    - [Customer Behavior Patterns](#customer-behavior-patterns)
    - [Payment Performance](#payment-performance)
    - [Order Details Report](#order-details-report)
    - [Obervation of Customer Retention Analysis](#obervation-of-customer-retention-analysis)
  - [Recommendations](#recommendations)
  - [How to Use This Repository](#how-to-use-this-repository)
  - [Tools Used](#tools-used)
  - [Contact](#contact)
  - [🔍 Key Findings](#-key-findings)
    - [📊 Order and Sales Insights](#-order-and-sales-insights)
      - [**Order Status Distribution**](#order-status-distribution)
      - [**Sales by Order Status**](#sales-by-order-status)
      - [**Year-over-Year Growth**](#year-over-year-growth)
    - [🏆 Customer Behavior Patterns](#-customer-behavior-patterns)
      - [**Customer Order Frequency**](#customer-order-frequency)
      - [**Customer Segmentation**](#customer-segmentation)
      - [**Customer Purchase Timeline**](#customer-purchase-timeline)
      - [**Top Customers by Spend**](#top-customers-by-spend)
    - [💰 Payment Performance](#-payment-performance)
      - [**Payment Status Overview**](#payment-status-overview)
      - [**Payment Method Analysis**](#payment-method-analysis)
      - [**Payment Success Rate by Method**](#payment-success-rate-by-method)
      - [**Monthly Payment Success Trend**](#monthly-payment-success-trend)
    - [📄 Order Details Report](#-order-details-report)
      - [**Comprehensive Order Lifecycle Analysis**](#comprehensive-order-lifecycle-analysis)
      - [**Order Summary Metrics**](#order-summary-metrics)



## 📖 Project Overview
This analysis provides **business intelligence insights** into Alt Mobility’s **e-commerce performance**, focusing on:
- **Order fulfillment efficiency**
- **Customer retention trends**
- **Payment success rates**
- **Sales growth patterns**

---

## data Overview

This analysis is based on two primary datasets stored in the `data/` folder:

1. **customer_orders.csv**: Contains order information
   - order_id, customer_id, order_date, order_amount, shipping_address, order_status

2. **payments.csv**: Contains payment transaction details
   - payment_id, order_id, payment_date, payment_amount, payment_method, payment_status

## Analysis Tasks

### 1. Order and Sales Analysis

The SQL queries in [`order_sales_analysis.sql`](sql/order_sales_analysis.sql) analyze order fulfillment and revenue trends by examining:

- Distribution of orders by status
- Monthly sales trends
- Revenue by order status
- Year-over-year growth patterns

**Key metrics tracked:**
- Order count and distribution by status
- Revenue trends over time
- Average order value
- Fulfillment rate

### 2. Customer Analysis

The [`customer_analysis.sql`](sql/customer_analysis.sql) file contains queries that explore customer ordering behavior to identify:

- Order frequency patterns
- Customer segmentation
- Monthly unique customers and order rates
- High-value customers

**Customer segmentation approach:**
- One-time customers (1 order)
- Returning customers (2-3 orders)
- Loyal customers (>3 orders)

### 3. Payment Status Analysis

The [`payment_analysis.sql`](sql/payment_analysis.sql) queries investigate payment transactions to reveal:

- Payment status distribution
- Payment method effectiveness
- Success rates by payment method
- Monthly payment success trends

**Key payment metrics:**
- Transaction count by status
- Success rate by payment method
- Month-over-month payment processing efficiency

### 4. Order Details Report

The [`order_details_report.sql`](sql/order_details_report.sql) file creates a comprehensive view that joins order and payment data to provide:

- Complete order lifecycle information
- Payment-to-order relationships
- Order fulfillment and payment status alignment
- Order processing time metrics

### 5. Customer Retention Analysis (Visualizations)

The [`visualizations`](visualizations/) folder contains charts and graphs that visualize the analysis results, with a particular focus on the cohort-based customer retention.

### Customer Retention Heatmap

![Customer Retention Heatmap](visualizations/retention_heatmap.png)

The retention heatmap displays:
- **X-axis**: Months since first purchase
- **Y-axis**: Cohort (month of first purchase)
- **Cell color intensity**: Retention percentage


This visualization allows us to see:
1. How well each cohort retains customers over time
2. Which cohorts show stronger retention
3. At what point customer retention typically drops

## Key Findings

In this Findings  you will find the extract details from Sql Queires for each task 
### Order and Sales Insights
- **Order Status Distribution**
  
  ![Order Status Distribution](images/Order%20Status%20Distribution.png)
- **Sales by Order Status**  
  ![Year-over-Year Growth](images/Sales%20by%20Order%20Status.png)
  - **Order Status Distribution**  
  ![Order Status Distribution](images/Order%20Status%20Distribution.png)
- **Year-over-Year Growth**  
  ![Year-over-Year Growth](images/Year-over-Year%20Growth.png)


### Customer Behavior Patterns

- **Customer Order Frequency**  
  ![Customer Order Frequency](images/Customer%20Order%20Frequency.png)
- **Customer Segmentation**  
  ![Customer Segmentation](images/Customer%20Segmentation.png)
- **Customer Purchase Timeline**  
  ![Customer Purchase Timeline](images/Customer%20Purchase%20Timeline.png)
- **Top Customers by Spend**  
  ![Top Customers by Spend](images/Top%20Customers%20by%20Spend.png)

### Payment Performance

- **Payment Status Overview**  
  ![Payment Status Overview](images/Payment%20Status%20Overview%20.png)
- **Payment Method Analysis**  
  ![Payment Method Analysis](images/Payment%20Method%20Analysis.png)
- **Payment Success Rate by Method**  
  ![Payment Success Rate by Method](images/Payment%20Success%20Rate%20by%20Method%20.png)
- **Monthly Payment Success Trend**  
  ![Monthly Payment Success Trend](images/Monthly%20Payment%20Success%20Trend.png)

### Order Details Report
- **Comprehensive Order Details Report**  
  ![Comprehensive Order Details Report](images/Comprehensive%20Order%20Details%20Report.png)
- **Order Summary Metrics
  ![Order Summary Metrics](images/Order%20Summary%20Metrics.png)

### Obervation of Customer Retention Analysis
1. How well each cohort retains customers over time
2. Which cohorts show stronger retention
3. At what point customer retention typically drops
4.  Analyze high-retention cohorts to understand what keeps them engaged.
5.  Identify key drop-off points and address common pain points



## Recommendations

Based on your Customer Retention Analysis Dashboard, here are some recommendations to improve customer engagement, retention, and sales for Alt Mobility:

1. Enhance Customer Retention Strategies
- If you notice retention drops after the first month, implement post-purchase engagement strategies such as:- Personalized email campaigns with discounts on second purchases.
- Loyalty programs rewarding repeat purchases.
- Surveys to understand customer pain points and improve service.


2. Identify and Target High-Retention Cohorts
- If certain cohorts retain better, analyze why:- Were they offered promotions?
- Did they order high-value items?
- Were their orders processed faster?
- Apply successful marketing strategies from high-retention cohorts to lower-retention ones.


3. Optimize Order Processing and Delivery
- If pending or canceled orders are common, streamline fulfillment:- Improve inventory management.
- Ensure faster shipping times to improve customer satisfaction.


4. Address Payment Failures
- If payment issues are detected:- Investigate failure reasons (method-related issues, declined transactions).
- Offer diverse payment options (UPI, wallets, buy-now-pay-later options).
- Improve checkout experience to reduce friction.

## How to Use This Repository

1. Clone the repository
2. Import the SQL scripts into your database management tool
3. Run the queries against your database with the datasets loaded
4. Review the visualizations in the visualizations folder

## Tools Used

- MySQL for data analysis
- Power BI  for visualization
- Git/GitHub for version control

## Contact

For questions regarding this analysis, please contact shaikallabakash307@gmail.com

## 🔍 Key Findings  

This section presents **data-driven insights extracted from SQL queries** to analyze **order fulfillment, customer behavior, payment transactions, and retention trends**.

---

### 📊 Order and Sales Insights  

Understanding order status and sales trends helps evaluate revenue generation and fulfillment efficiency.  

#### **Order Status Distribution**  
- Analyzes **how orders are processed** (Delivered, Pending, Canceled).  
- Identifies potential bottlenecks in **order fulfillment**.  
- Helps improve customer satisfaction by minimizing **delays and cancellations**.  

📷 ![Order Status Distribution](images/Order%20Status%20Distribution.png)

#### **Sales by Order Status**  
- Tracks how **different order statuses contribute to overall revenue**.  
- Provides insights into **refund rates and revenue loss** due to cancellations.  

📷 ![Sales by Order Status](images/Sales%20by%20Order%20Status.png)

#### **Year-over-Year Growth**  
- Measures **business performance trends** over time.  
- Helps forecast **seasonal demand and revenue fluctuations**.  

📷 ![Year-over-Year Growth](images/Year-over-Year%20Growth.png)

---

### 🏆 Customer Behavior Patterns  

Understanding how customers interact with the platform helps optimize **marketing strategies and retention efforts**.  

#### **Customer Order Frequency**  
- Shows how often customers place orders.  
- Helps segment **one-time buyers vs. repeat customers**.  

📷 ![Customer Order Frequency](images/Customer%20Order%20Frequency.png)

#### **Customer Segmentation**  
- Categorizes customers into **low, medium, and high spenders**.  
- Useful for personalized promotions and loyalty incentives.  

📷 ![Customer Segmentation](images/Customer%20Segmentation.png)

#### **Customer Purchase Timeline**  
- Tracks **time intervals between repeat purchases**.  
- Helps predict future engagement and potential churn rates.  

📷 ![Customer Purchase Timeline](images/Customer%20Purchase%20Timeline.png)

#### **Top Customers by Spend**  
- Identifies the **highest revenue-generating customers**.  
- Helps prioritize engagement strategies for **valuable customer groups**.  

📷 ![Top Customers by Spend](images/Top%20Customers%20by%20Spend.png)

---

### 💰 Payment Performance  

Payment analytics help understand **transaction success rates and customer payment preferences**.  

#### **Payment Status Overview**  
- Compares **successful vs. failed transactions** to improve payment processing.  
- Identifies issues related to **payment gateway reliability**.  

📷 ![Payment Status Overview](images/Payment%20Status%20Overview.png)

#### **Payment Method Analysis**  
- Determines which payment methods are **most used and preferred by customers**.  
- Helps businesses optimize **checkout experience**.  

📷 ![Payment Method Analysis](images/Payment%20Method%20Analysis.png)

#### **Payment Success Rate by Method**  
- Tracks **failure vs. success rates** across payment methods (Credit Card, PayPal, etc.).  
- Improves customer experience by **reducing transaction issues**.  

📷 ![Payment Success Rate by Method](images/Payment%20Success%20Rate%20by%20Method.png)

#### **Monthly Payment Success Trend**  
- Monitors fluctuations in **payment success rates over time**.  
- Helps detect payment processing failures **in specific months**.  

📷 ![Monthly Payment Success Trend](images/Monthly%20Payment%20Success%20Trend.png)

---

### 📄 Order Details Report  

A **comprehensive report** provides deep insights into customer transactions, payments, and fulfillment trends.  

#### **Comprehensive Order Lifecycle Analysis**  
- Shows how orders progress from **placement to payment completion**.  
- Helps track **order-to-payment relationships**.  

📷 ![Comprehensive Order Details Report](images/Comprehensive%20Order%20Details%20Report.png)

#### **Order Summary Metrics**  
- Displays **overall performance insights** on orders, revenue, and fulfillment trends.  
- Aids in **business decision-making** based on real data.  

📷 ![Order Summary Metrics](images/Order%20Summary%20Metrics.png)

---
