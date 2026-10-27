import pandas as pd

df = pd.read_csv("data/SuperStoreOrders.csv")

df["sales"] = df["sales"].str.replace(",", "")
df["sales"] = pd.to_numeric(df["sales"])

print(df.dtypes)
print(df.groupby("category")["sales"].sum())