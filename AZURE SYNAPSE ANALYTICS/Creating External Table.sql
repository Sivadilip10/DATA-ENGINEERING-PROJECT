CREATE EXTERNAL TABLE gold.extsales
WITH
(
    LOCATION = 'extsales',
    DATA_SOURCE = SOURCE_is_gold,
    FILE_FORMAT  = format_parquet
)
AS
SELECT * FROM GOLD.sales

-------------------------------------------------

CREATE EXTERNAL TABLE gold.extcustomers
WITH
(
    LOCATION = 'extcustomers',
    DATA_SOURCE = SOURCE_is_gold,
    FILE_FORMAT  = format_parquet
)
AS
SELECT * FROM GOLD.customers

--------------------------------------------------

CREATE EXTERNAL TABLE gold.extcalender
WITH
(
    LOCATION = 'extcalender',
    DATA_SOURCE = SOURCE_is_gold,
    FILE_FORMAT  = format_parquet
)
AS
SELECT * FROM GOLD.calender

-------------------------------------------

CREATE EXTERNAL TABLE gold.extproduct
WITH
(
    LOCATION = 'extproduct',
    DATA_SOURCE = SOURCE_is_gold,
    FILE_FORMAT  = format_parquet
)
AS
SELECT * FROM GOLD.product

---------------------------------------------

CREATE EXTERNAL TABLE gold.extproduct_subcategorie
WITH
(
    LOCATION = 'extproduct_subcategorie',
    DATA_SOURCE = SOURCE_is_gold,
    FILE_FORMAT  = format_parquet
)
AS
SELECT * FROM GOLD.product_subcategories 

--------------------------------------------------

CREATE EXTERNAL TABLE gold.extreturn
WITH
(
    LOCATION = 'extreturn',
    DATA_SOURCE = SOURCE_is_gold,
    FILE_FORMAT  = format_parquet
)
AS
SELECT * FROM GOLD.[return]

--------------------------------------------------
CREATE EXTERNAL TABLE gold.extTerritories
WITH
(
    LOCATION = 'extTerritories',
    DATA_SOURCE = SOURCE_is_gold,
    FILE_FORMAT  = format_parquet
)
AS
SELECT * FROM GOLD.Territories