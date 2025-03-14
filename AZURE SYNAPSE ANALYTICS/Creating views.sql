CREATE VIEW gold.[customers]
AS
SELECT * FROM OPENROWSET
(
   BULK 'https://msstoragedatalake.dfs.core.windows.net/silver/AdventureWorks_Customers',
   FORMAT = 'parquet'
)as query1


CREATE VIEW gold.[calender]
AS
SELECT * FROM OPENROWSET
(
   BULK 'https://msstoragedatalake.dfs.core.windows.net/silver/AdventureWorks_Calender',
   FORMAT = 'parquet'
)as query1


CREATE VIEW gold.[product]
AS
SELECT * FROM OPENROWSET
(
   BULK 'https://msstoragedatalake.dfs.core.windows.net/silver/AdventureWorks_product',
   FORMAT = 'parquet'
)as query1

CREATE VIEW gold.[product_subcategories]
AS
SELECT * FROM OPENROWSET
(
   BULK 'https://msstoragedatalake.dfs.core.windows.net/silver/AdventureWorks_product_subcategories',
   FORMAT = 'parquet'
)as query1

CREATE VIEW gold.[return]
AS
SELECT * FROM OPENROWSET
(
   BULK 'https://msstoragedatalake.dfs.core.windows.net/silver/AdventureWorks_return',
   FORMAT = 'parquet'
)as query1

CREATE VIEW gold.[sales]
AS
SELECT * FROM OPENROWSET
(
   BULK 'https://msstoragedatalake.dfs.core.windows.net/silver/AdventureWorks_sales*/',
   FORMAT = 'parquet'
)as query1

CREATE VIEW gold.[Territories]
AS
SELECT * FROM OPENROWSET
(
   BULK 'https://msstoragedatalake.dfs.core.windows.net/silver/AdventureWorks_Territories',
   FORMAT = 'parquet'
)as query1

