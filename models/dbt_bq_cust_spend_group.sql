{{ config(materialized="table") }}

With Stg_Customer_spend as (
Select CustomerID,Genre,Age,
Case when Age<=10 Then 'Child'
when Age>=11 and Age<=20 Then 'Students'
when Age>=21 and Age<=30 Then 'Adults'
when Age>=31 and Age<=60 Then 'Family'
when Age>=61  Then 'Senior_Citizen' End As Spending_Group,
Annual_income,Spending_Score
from 
dbt-training-469915.Customers.Customers_dataset
)
Select * from Stg_Customer_spend