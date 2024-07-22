# HR-REPORT

## Introduction
In today's era of data-driven decision-making, the strategic use of data analytics is paramount for organizations aiming to thrive. This project is dedicated to analyzing employee data through the application of Excel, SQL, and Power BI. The goal is to extract meaningful insights into demographic trends, tenure patterns, and departmental distributions. Through these powerful tools, we will efficiently process, analyze, and visualize the data, thereby offering actionable insights for the Human Resources department. This methodical approach ensures a comprehensive analysis, empowering the organization to make well-informed decisions that optimize workforce management and strategic planning.

Please note that all datasets and reports utilized in this project are fictitious and serve solely to showcase the capabilities of Excel, Power BI, and SQL.

## Objectives:

1. Analyze employee data to gain insights into demographics, tenure, and departmental distribution.
2. Identify patterns and trends to facilitate informed HR decision-making.

## Problem Statement:

This project aims to address the following queries based on the employee dataset:

1. Determine the total number of staff employed.
2. Provide a breakdown of staff numbers based on current, contract, and terminated statuses.
3. Identify the employee with the longest tenure (oldest serving staff).
4. Identify the most recent employee hired (newest staff).
5. Calculate the percentage of staff categorized by gender.
6. Compute the average age of staff members within each department.
7. Determine the percentage distribution of employment statuses among the staff.

These analyses will provide actionable insights to enhance workforce management and strategic planning for the organization.

## Scope and Requirements:

**Scope:**

This project involves the comprehensive analysis of employee data, focusing on data cleaning, preparation, analysis, and visualization using a combination of Excel, SQL, and Power BI. The scope includes:

1. **Data Cleaning and Preparation:**
   - Utilize Excel and SQL to clean and preprocess the employee dataset.
   - Handle missing values, standardize formats, and ensure data consistency.

2. **Data Analysis and Visualization:**
   - Employ Power BI for in-depth data analysis and visualization.
   - Explore demographic trends, tenure insights, and departmental distributions.

**Requirements:**

1. **Data Sources:**
   - Employee dataset comprising the following columns: id, first_name, last_name, birthdate, gender, race, department, jobtitle, location, hire_date, termdate, location_city, location_state.

2. **Data Collection and Extraction:**
   - Gather and extract the employee dataset from relevant sources.
   - Ensure completeness and accuracy of the extracted data.

By fulfilling these requirements within the defined scope, this project aims to derive actionable insights that support decision-making processes within the organization's HR department.

## Tools:
| Tool        | Purpose                                                    |
|-------------|------------------------------------------------------------|
| SQL Server  | Cleaning, testing, and analyzing the data                   |
| Excel       | Exploring and transforming the data                         |
| Power BI    | Visualizing the data via interactive dashboards             |
| GitHub      | Hosting the project documentation and version control       |
| Mokkup AI   | Designing the wireframe/mockup of the dashboard             |

This table summarizes the tools used in the project and their respective purposes.

## Data Exploration Notes:

- Identification of Relevant Columns:
  - At least 4 columns contain necessary data for our analysis, ensuring all required information is available within the file without additional client data.
  
- Channel Name Extraction:
  - The first column includes channel IDs separated by "@" symbols. Extracting channel names from these IDs is necessary for further analysis.
  
- Language Considerations:
  - Some cells and header names are in a different language. Verify the necessity of these columns and address language issues if required for clarity and consistency.
  
- Data Optimization:
  - Given surplus data, several columns will be removed to streamline the dataset and focus on essential information for our analysis.

## Data Collection and Extraction:

1. **SQL Database Connection:**
   - Establish a connection to the SQL database server using appropriate credentials and connection parameters.

2. **Import and Load the Table:**
   - Identify the table containing the relevant data within the SQL database.
   - Execute queries or use tools to import the table into the SQL database environment.
   - Ensure the table is loaded correctly and verify data integrity post-import.


## Data Cleaning and Preparation:

1. **Remove Duplicates:**
   - Identify and eliminate duplicate rows to ensure data integrity and accuracy.

2. **Handle Missing Values:**
   - Check for missing data in each column and decide on appropriate strategies (e.g., imputation, deletion) to address them.

3. **Standardize Formats:**
   - Ensure consistent formatting across data fields (e.g., dates, text) for uniformity and ease of analysis.

4. **Normalize Data:**
   - Normalize categorical variables or text fields where applicable to maintain consistency and improve analysis efficiency.

5. **Address Outliers:**
   - Identify and address outliers that may skew analysis results or model performance.

6. **Correct Data Types:**
   - Verify and adjust data types (e.g., numeric, string) as necessary to match the intended analysis methods.

7. **Validate Constraints:**
   - Validate data against predefined constraints or business rules to ensure accuracy and reliability.

8. **Feature Engineering:**
   - Create new features or derive additional insights from existing data to enhance analysis depth and quality.

9. **Document Cleaning Steps:**
   - Document all steps taken during the cleaning process for transparency and reproducibility.

10. **Verify Cleaned Data:**
    - Conduct thorough checks and validations to confirm that the cleaned dataset meets predefined criteria and constraints for analysis readiness.

By following these steps, the dataset will be refined and structured, ensuring it is well-prepared for subsequent analysis tasks. The cleaned data should meet the following criteria and constraints:

| Property           | Description                                   |
|--------------------|-----------------------------------------------|
| Number of Rows     | 100                                           |
| Number of Columns  | 4                                             |

**Expected Schema for Clean Data:**

| Column Name    | Data Type |
|----------------|-----------|
| ID             | VARCHAR   |
| NAME           | INTEGER   |
| BIRTHDATE      | INTEGER   |
| GENDER         | INTEGER   |
| DEPARTMENT     | INTEGER   |
| JOB_TITLE      | INTEGER   |
| LOCATION       | INTEGER   |
| HIRE_DATE      | INTEGER   |
| TERMDATE       | INTEGER   |
| LOCATION_CITY  | INTEGER   |
| LOCATION_STATE | INTEGER   |

This schema outlines the expected structure of the cleaned dataset after data cleaning and preparation steps are completed.

## SQL Transformation
1.To correct the field name "ï»¿id" to the correct name "id" in the table "human_resources" using SQL, you can execute the following query:

```sql
-- Altering the column name from "ï»¿id" to "id" in the table "human_resources"
ALTER TABLE human_resources RENAME COLUMN "ï»¿id" TO id;
```

This SQL statement renames the column "ï»¿id" to "id" in the "human_resources" table, ensuring consistency and accuracy in the database schema.
