-------------------------------------------
---------------CREATION OF SCHEMA----------
-------------------------------------------

CREATE SCHEMA gold;

---------------------------------------------
---------------CREATION OF MASTERKEY---------
---------------------------------------------

 CREATE MASTER KEY ENCRYPTION BY PASSWORD = 'SivaDilip@123'

----------------------------------------------
-------------CREATION OF CREDENTIAL-----------
----------------------------------------------

CREATE DATABASE SCOPED CREDENTIAL credential_Siva
WITH IDENTITY = 'managed identity';

-----------------------------------------------
-----------CREATION OF EXTERNAL DATASOURCE-----
-----------------------------------------------

CREATE EXTERNAL DATA SOURCE source_is_silver
WITH
(
LOCATION ='https://msstoragedatalake.dfs.core.windows.net/silver/',
CREDENTIAL = credential_siva
)

CREATE EXTERNAL DATA SOURCE source_is_Gold
WITH
(
LOCATION ='https://msstoragedatalake.dfs.core.windows.net/gold/',
CREDENTIAL = credential_siva
)

--------------------------------------------
-----CREATION OF EXTERNAL DATAFORMAT--------
--------------------------------------------

CREATE EXTERNAL FILE FORMAT format_parquet
   WITH
   (
     FORMAT_TYPE = PARQUET,
     DATA_COMPRESSION ='org.apache.hadoop.io.compress.SnappyCodec'
   )


