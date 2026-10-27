import pandas as pd
from sqlalchemy import create_engine

df = pd.read_csv("data/clean_orders.csv")

engine = create_engine(
    "postgresql://postgres:majdi123@localhost:5432/ecommerce"
)



df.to_sql(
    "sales",
    engine,
    if_exists="replace",
    index=False
)

print("✅ Données chargées")