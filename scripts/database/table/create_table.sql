--==============================================================================
-- 
--==============================================================================
-- Description.......: Create Table
-- Author............: Data Precog
-- Email.............: info@dataprecog.com
-- Date..............: 2009.02.08
-- Version...........: 1.0

--==============================================================================
-- 
--==============================================================================
USE <database,,>
GO

IF OBJECT_ID('<schema_name,,>.<table_name,,>', 'U') IS NOT NULL
	DROP TABLE <schema_name,,>.<table_name,,>
GO

CREATE TABLE <schema_name,,>.<table_name,,> (
	<columns_in_primary_key,,> <column1_datatype,,> <column1_nullability,, NOT NULL>, 
	<column2_name,,> <column2_datatype,,> <column2_nullability,, NULL>, 
	<column3_name,,> <column3_datatype,,> <column3_nullability,, NULL>, 

    CONSTRAINT <contraint_name,,> PRIMARY KEY (<columns_in_primary_key,,>)
)
GO

--==============================================================================
-- EOF
--==============================================================================
