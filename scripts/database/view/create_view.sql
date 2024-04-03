--==============================================================================
-- 
--==============================================================================
-- Description.......: Create view
-- Author............: Data Precog
-- Email.............: info@dataprecog.com
-- Date..............: 2009.02.08
-- Version...........: 1.0

--==============================================================================
-- Create View template
--==============================================================================
USE <database_name,,>
GO

IF object_id(N'<schema_name,,>.<view_name,,>', 'V') IS NOT NULL
	DROP VIEW <schema_name,,>.<view_name,,>
GO

CREATE VIEW <schema_name,,>.<view_name,,> AS
<select_statement,,>

--==============================================================================
-- EOF
--==============================================================================
