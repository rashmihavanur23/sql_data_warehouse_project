/*
==================================
Create Database and Schemas
==================================
Script Purpose:
This script creates a new database named 'DataWarehouse' after checking if it already exists.
If the database exists, it is dropped and recreated. Additionally, the script sets up three schemas within the datbase: 'bronze' , 'silver', and 'gold'.
*/

USE master;
GO

-- Drop & recreate the 'DataWarehouse' datbase
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN
    ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATBASE DataWarehouse;
END;
GO

--Create Database 'DataWarehouse'  
CREATE DATABASE DataWarehouse;
GO

--Use Database 'DataWarehouse'
USE DataWarehouse;
GO

--Create Schemas
CREATE SCHEMA bronze;
GO
  
CREATE SCHEMA silver;
GO
  
CREATE SCHEMA gold;
GO
