--========================================================================
--  Create Inline Table-valued Function template for Azure SQL Database
--========================================================================
IF OBJECT_ID (N'<schema_name, sysname, dbo>.<function_name, sysname, EmployeeByID>') IS NOT NULL
    DROP FUNCTION <schema_name, sysname, dbo>.<function_name, sysname, EmployeeByID>
GO

CREATE FUNCTION <schema_name, sysname, dbo>.<function_name, sysname, EmployeeByID>(<parameter1_name, sysname, @employeeID> <parameter1_type,,int>)
RETURNS TABLE
AS RETURN
(
	<T-SQL_for_function_body,,SELECT * FROM HumanResources.Employee WHERE EmployeeID = @employeeID>
)
GO
