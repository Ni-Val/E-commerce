import mysql.connector
import streamlit as st
import pandas as pd
import matplotlib
matplotlib.use("TkAgg")  # Set the backend to TkAgg

import matplotlib.pyplot as plt

# Connect to the MySQL database
conn = mysql.connector.connect(
    host="127.0.0.1",
    user="root",
    password="K0t0n3*s11",
    database="e-commerce"
)
cursor = conn.cursor()

# retrieve total price for all products (orders that are pending or completed)
# bought in each month (product price * quantity)
query1 = """
SELECT  date_format(o.order_date, '%m-%Y') AS month, sum(p.price * od.quantity) AS total_sales
FROM `Order` o 
JOIN order_details od ON o.order_id = od.order_id
JOIN product p ON od.product_id = p.product_id
WHERE status IN ('pending', 'Completed')
group by month
order by month 
"""
cursor.execute(query1)
# Fetch data and convert it to a Pandas DataFrame
rows = cursor.fetchall()
# Step 2: Load data into pandas DataFrame
df = pd.DataFrame(rows, columns=["Month", "Total Sales"])

# Convert "Total Sales" to numeric (if needed)
df["Total Sales"] = pd.to_numeric(df["Total Sales"], errors="coerce")

# Step 3: Use pandas.DataFrame.plot.line
df.set_index("Month", inplace=True)  # Set 'month' as the index for x-axis
df.plot.line(y="Total Sales", marker="o", figsize=(10, 6), title="Total Sales by Month")

# Customize the chart
plt.xlabel("Month")
plt.ylabel("Total Sales")
plt.xticks(rotation=45)
plt.grid(True)

# Display the plot
plt.show()

# Close the database connection
cursor.close()
conn.close()
