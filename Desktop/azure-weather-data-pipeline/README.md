# 🌦️ Azure Weather Data Pipeline

## 📌 Overview
This project implements a cloud-based ETL pipeline using Azure Data Factory, Azure Data Lake Storage Gen2, and Azure Synapse Analytics.

---

## 🏗️ Architecture
- Azure Data Factory for data ingestion
- Azure Data Lake Storage Gen2 for storage
- Azure Synapse Analytics for querying

---

## 🔄 Pipeline Flow
1. Bronze Layer – Raw data ingestion  
2. Silver Layer – Data cleaning and transformation  
3. Gold Layer – Aggregated data for analytics  

---

## 📊 Sample Query

SELECT 
    RainTomorrow,
    AVG(AvgMinTemp) AS Avg_Min_Temp,
    AVG(AvgMaxTemp) AS Avg_Max_Temp
FROM OPENROWSET(
    BULK 'https://cloudbasedadlsweather.dfs.core.windows.net/gold/weather_summary/*.parquet',
    FORMAT = 'PARQUET'
) AS weather_gold
GROUP BY RainTomorrow;

---

## 🚀 Features
- End-to-end ETL pipeline
- Medallion architecture
- Serverless SQL analytics
- Scalable cloud solution

---

## 🛠️ Tech Stack
- Azure Data Factory  
- Azure Data Lake Storage Gen2  
- Azure Synapse Analytics  
- SQL  

---

## 👤 Author
Venkat Surag Madireddy
