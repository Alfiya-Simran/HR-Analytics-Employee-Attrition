import pandas as pd
from sqlalchemy import create_engine
from urllib.parse import quote_plus

username = "root"
password = quote_plus("Alfiya@23")
host = "localhost"
port = "3306"
database = "hr_analytics"

engine = create_engine(
    f"mysql+pymysql://{username}:{password}@{host}:{port}/{database}"
)

df = pd.read_csv(
    r"D:\HR-Analytics-Employee-Attrition\Dataset\employee_attrition_clean.csv"
)


# Load into MySQL


df.to_sql(
    "employees",
    con=engine,
    if_exists="append",
    index=False,
    chunksize=500
)

print(f"Successfully imported {len(df)} records into MySQL!")