import pandas as pd
import sqlite3

# CSV read
df = pd.read_csv("cleaned_SampleSuperstore.csv")

# Database connect
conn = sqlite3.connect("sales.db")

# Table create and data insert
df.to_sql("orders", conn, if_exists="replace", index=False)

conn.close()

print("Data Imported Successfully!")
