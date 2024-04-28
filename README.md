# Data Engineering Challenge: Sales Data 

This project demonstrates data cleaning, analysis, and processing related to sales transactions.

**Steps:**

1. **Data Cleaning and Analysis:**
   - `data_analysis.ipynb` (not provided, but you can implement it based on the prompt)
      - Read `sales_data.csv`.
      - Clean the sales data in `sales_data.csv`.
      - Analyzes the relationship between sale price and quantity.
      - Saves the cleaned data as `sales_data_cleaned.csv`.

2. **Docker Compose Setup:**
   - `docker-compose.yml` (not provided, but you can create it based on the prompt)
      - Defines services for running PostgreSQL and pgAdmin for database management.

3. **Data Transfer to Database:**
   - `transfer_sales_data.py`
      - Reads the cleaned data from `sales_data_cleaned.csv` from local.
      - Connects to database.
      - Create table `sales_dat`.
      - insert `sales_data_cleaned.csv` to table `sales_data`.

4. **Implementation of app.py**
      - insert `sales_data_cleaned.csv` to table `sales_dat`.
      - Python function `process_data() -> tuple[dict[int, float], dict[int, float], list[int]]` that reads the data from database.
      - returns a tuple.
          - total profit for each transaction.
          - product IDs of the 2 top-selling products.
