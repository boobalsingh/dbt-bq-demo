{{ config(materialized="table") }}
WITH Location_stg as 
(
SELECT LOCATION_ID,ADDRESS,	POSTAL_CODE,CITY,STATE,	COUNTRY_NAME,REGION_NAME
FROM dbt-training-469915.ABC_Company.tbl_Locations L
INNER JOIN 
dbt-training-469915.ABC_Company.tbl_Countries C ON C.COUNTRY_ID=L.COUNTRY_ID
INNER JOIN dbt-training-469915.ABC_Company.tbl_Regions R ON R.REGION_ID=C.REGION_ID
)
Select * from Location_stg