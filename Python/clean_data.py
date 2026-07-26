import pandas as pd

 
# Load Dataset


df = pd.read_csv(
    r"D:\HR-Analytics-Employee-Attrition\Dataset\WA_Fn-UseC_-HR-Employee-Attrition.csv"
)

print("Dataset Loaded Successfully!\n")

# Dataset Overview


print("Shape:", df.shape)
print("\nColumns:\n")
print(df.columns.tolist())

 
# Missing Values
 

print("\nMissing Values:\n")
print(df.isnull().sum())

 
# Duplicate Rows
 

duplicates = df.duplicated().sum()
print(f"\nDuplicate Rows: {duplicates}")

# Remove duplicates if any
df = df.drop_duplicates()

 
# Data Types
 

print("\nData Types:\n")
print(df.dtypes)

 
# Export Clean Dataset
 

output_path = r"D:\HR-Analytics-Employee-Attrition\Dataset\employee_attrition_clean.csv"

df.to_csv(output_path, index=False)

print("\nClean dataset exported successfully!")
print(f"Location: {output_path}")