# Data-Mining-Bussiness-Intelligence
This repository is to save homeworks and other files related to Data Mining and Bussiness Intelligence course. 
The files compressed in zip for easy download, however, folder "Bikestore" has the decompressed files. 


Video homework 1: https://www.youtube.com/watch?v=R34xqRNyiIQ&t=284s

Video homework 2: https://www.youtube.com/watch?v=nZ3VYFveXHo&t=10s



# Final Data Mining Project – BikeStore Data Warehouse & Apriori Analysis

This project applies the CRISP-DM methodology to build a complete Data Warehouse for the BikeStore dataset, execute an ETL process (Extract–Transform–Load), develop analytical visualizations in Tableau, and perform association rule mining using the Apriori algorithm in R.

Part 1: Project Overview – CRISP-DM Framework

The project follows the six stages of CRISP-DM:

1- Business Understanding

2- Data Understanding

3- Data Preparation / ETL

4- Modeling

5- Evaluation

6- Deployment

The primary objective was to design a working star-schema Data Warehouse that supports business questions such as identifying the highest-selling products by store, evaluating customer sales behavior, and analyzing operational metrics such as shipping times.

Part 2: Objectives and Success Criteria

Success was defined by the following outcomes 

- Build a functional Data Warehouse with properly linked dimension and fact tables.

- Visualize top-selling products by store using Tableau.

- Implement a full ETL pipeline including SCD Type 0 and Type 1 logic.

- Validate that the fact table contains correct, complete, and non-null fields.

- Apply a data mining technique (Apriori) to extract meaningful associations from an external dataset.

Part 3: ETL Process – Extract, Transform, Load

The ETL pipeline included:

✔ Extraction: Data was extracted from BikeStore's operational tables.

✔ Transformation: Standardized data types. Removed duplicates and enforced primary/foreign keys, resolved repeated fields across tables to avoid redundanc and applied Slowly Changing Dimensions (SCD Type 0 & Type 1) to historical tables such as Orders 

✔ Load: The cleaned and structured data was loaded into a Star Schema.

Part 4. Dimensional Model – Star Schema

The Data Warehouse consists of:

Fact Table

Sales transactional details, including:
order_id, customer_id, product_id, staff_id, store_id,
order_date, shipped_date, quantity, list_price, discount.

Dimension Tables

Customers, Stores, Staff, Products, Orders + OrderItems and DimDate

This model supports analytical queries such as sales trends, customer behavior, and operational KPIs.

Part 5. Tableau Visualization

- Several visualizations were created to validate and explore the DW 
- Sales Trend by Store
- Sales Distribution by Product
- Days Between Order and Shipping Date
- Top Customers by Total Sales

These dashboards also helped detect ETL inconsistencies, such as duplicated sales, missing prices, or invalid dates.

Part 6. Association Rule Mining with Apriori (R)

To incorporate a data mining component, the Kaggle Diabetes dataset was used to generate association rules using the Apriori algorithm in R.

The variables analyzed included risk factors such as: HighBP, HighChol, CholCheck, Smoker, and the target variable Diabetes_binary.

For examples with binary data types:

{Smoker = 1, Diabetes = 1} ⇒ {CholCheck = 1}

Support: 25.71%

Confidence: 99.21%

Lift: 1.071

Interpretation: Smokers with diabetes almost always undergo cholesterol checks, showing a strong, positive association.

Part 7. Lessons Learned & Improvements

Key insights from the project

Part 8. Conclusion

This project successfully integrated ETL, dimensional modeling, visual analytics, and data mining techniques.
The Data Warehouse enables clear, business-oriented insights, while the Apriori analysis demonstrates the application of data mining to uncover meaningful patterns.

