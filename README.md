# Social Media Advertising Data Analysis

## Overview
This repository contains SQL scripts for analyzing social media advertising data, specifically focusing on Facebook and Google Ads. The primary goal of these scripts is to aggregate and calculate key performance metrics to evaluate the effectiveness of ad campaigns.

## Table of Contents
1. [File Descriptions](#file-descriptions)
2. [Execution Instructions](#execution-instructions)
3. [Key Metrics and Calculations](#key-metrics-and-calculations)
4. [Conclusion](#conclusion)

## File Descriptions

### 1. `Combined Info for FB and Google.sql`
This SQL file includes the following key sections:
- **Ad Performance Metrics**: This section calculates total cost, the number of impressions, clicks, and important metrics such as Cost Per Click (CPC), Cost Per Thousand Impressions (CPM), Click-Through Rate (CTR), and Return on Marketing Investment (ROMI) based on the Facebook ads dataset.
- **Common Table Expressions (CTEs)**: Several CTEs are used to streamline the analysis by combining data from Facebook and Google Ads datasets for a comprehensive overview.

### 2. `Key Metrics.sql`
This SQL file contains queries that:
- Combine data from both Facebook and Google Ads using a UNION operation to facilitate cross-platform analysis.
- Generates aggregated values for each advertising campaign, including total costs, impressions, clicks, and conversion values.

## Execution Instructions
To execute the SQL scripts:
1. Ensure you have access to a PostgreSQL database containing the `facebook_ads_basic_daily` and `google_ads_basic_daily` tables.
2. Copy and paste the SQL code into your SQL client or a database management tool.
3. Run the complete script to ensure that all Common Table Expressions (CTEs) are defined and accessible.

> **Note:** It is essential to execute the entire script; otherwise, the CTEs will not work.

## Key Metrics and Calculations
The analysis focuses on several key metrics relevant to social media advertising performance:

- **Total Cost**: Sum of the spend for each campaign.
- **Number of Impressions**: Total impressions recorded for each campaign.
- **Number of Clicks**: Total clicks received on the campaign ads.
- **CPC (Cost Per Click)**: Calculated as total spend divided by total clicks.
- **CPM (Cost Per Thousand Impressions)**: Calculated as total spend divided by total impressions.
- **CTR (Click-Through Rate)**: Clicks divided by impressions multiplied by 100 to get a percentage.
- **ROMI (Return on Marketing Investment)**: Calculated as the change in value from the campaign divided by the total spend.

## Conclusion
This project aims to provide insights into social media advertising performance by calculating and analyzing essential marketing metrics. The results can guide strategic decisions to optimize ad spend and improve campaign performance.

Feel free to modify the scripts and analyze your social media advertising data as needed!
