{{ config(materialized="table") }}
With Product_stg AS
(
SELECT PRODUCT_ID,PRODUCT_NAME,DESCRIPTION,STANDARD_COST,LIST_PRICE,CATEGORY_NAME
FROM dbt-training-469915.ABC_Company.tbl_Products P
INNER JOIN dbt-training-469915.ABC_Company.tbl_Product_Categories PC
ON PC.CATEGORY_ID=P.CATEGORY_ID
)
Select * From Product_stg