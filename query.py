import pandas as pd
from sqlalchemy import create_engine

# SQLite database se connect
engine = create_engine("sqlite:///sales.db")

query = """
SELECT Category,
       SUM(Sales) AS TotalSales
FROM orders
GROUP BY Category;
"""

df = pd.read_sql(query, engine)

print(df)