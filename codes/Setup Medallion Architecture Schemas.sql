/*
=============================================================
Script: Setup Medallion Architecture Schemas
Purpose: Creates the 3-layer schema structure for Data Warehouse
Usage:   Run this script ONCE at the start of a new project.
=============================================================
*/

USE DataWarehouse;
GO

-- 1. BRONZE (The Landing Zone)
-- Stores raw data exactly as it comes from source (CSV/API).
CREATE SCHEMA bronze;
GO

-- 2. SILVER (The Work Zone)
-- Stores cleaned, standardized, and validated data.
CREATE SCHEMA silver;
GO

-- 3. GOLD (The BI Zone)
-- Stores dimensionally modeled data (Star Schema) for reporting.
CREATE SCHEMA gold;
GO
