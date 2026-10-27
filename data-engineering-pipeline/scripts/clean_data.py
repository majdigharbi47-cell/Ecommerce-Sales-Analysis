import pandas as pd

df = pd.read_csv("data/SuperStoreOrders.csv")

df["sales"] = df["sales"].str.replace(",", "")
df["sales"] = pd.to_numeric(df["sales"])

print("Lignes avant:", df.shape)

df = df.drop_duplicates()

print("Lignes après:", df.shape)

print("\nValeurs manquantes:")
print(df.isnull().sum())

df.to_csv("data/clean_orders.csv", index=False)
print(df.shape)

print(df[["sales","profit"]].head())

print(df.dtypes)

print("\nFichier clean_orders.csv créé")