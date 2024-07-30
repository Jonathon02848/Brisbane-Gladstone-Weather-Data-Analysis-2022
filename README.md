# Brisbane-Gladstone-Weather-Data-Analysis-2022
This projects compares freely-available Brisbane and Gladstone weather data from 2022 to identify unique characteristics of the data. 

-   [Overview](#overview)
-   [Project Layout](#project-layout)
-   [Analysis Steps](#analysis-steps) 
-   [Sample Output](#sample-output) 

## Overview 
This projects uses a PostgreSQL database, SQL and Tableau to contrast Brisbane and Gladstone data. It was implemented by creating datasets for each location, generating analytical queries in SQL, and visualising results in Tableau. Where regions had missing data, substitution and forward-filling was used for data cleaning.

The [Project Report](./Project%20Report.pdf) describes the full process.


## Project Layout
The project contains the following

| File/Folder                           | Purpose                                                       |
| :------------------------------------ | :-------------------------------------------------------------|
| `Project Report.pdf`                  | Complete project report with visualisations                   |
| `CSVFiles`                            | Folder containing all raw data and Query data                 |
| `Images`                              | Contains visualisation images from Tableau in report          |
| `PSQLFiles`                           | Folder with PSQL code                                         |
| `SQLFiles`                            | Folder containing all SQL code used                           |

## Analysis Steps
The following steps were used to generate the accurate visualisations from input data.

-   Downloaded data from [QLD Open Data Portal](https://www.data.qld.gov.au/dataset/air-quality-monitoring-2022)
-   Created matching tables in PostgresSQL database, and then imported the .csv files
-   Analysed data for missing values
-   Cleaned incomplete data by merging location datasets into a composite dataset.
-   Analysed data for remaining missing values
-   Dropped incomplete columns outside the 6% NULL tolerance, and forward-filled remaining.
-   Created complete datasets for each location, and relevant SQL queries.
-   Generated Tableau visualisations and final report

## Sample Output
Here are a couple of images from the `Project Report.pdf` to demonstrate the work and resultant output.

SQL to clean data using substitution:

![SQL Query](./Images/Update%20Correct%20order%20Bris.png)

SQL to pull Query on air quality data:

![SQL Query](./Images/Query%20Guidlines.png)

A Tableau dashboard highlighting rainfall data:

![Tableau Dashboard](./Images/Dashboard%20Seasonal%20Metrics.png)

A Tableau graph of air quality data:

![Tableau Graph](./Images/Dashboard%20Air%20Guidelines.png)


