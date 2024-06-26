--==============================================================================
-- 
--==============================================================================
-- Description.......: Get information about Locks
-- Author............: Data Precog
-- Email.............: info@dataprecog.com
-- Date..............: 2009.02.08
-- Version...........: 1.0

--==============================================================================
-- sp_who
--==============================================================================
USE master
GO

EXEC sp_who
GO

--==============================================================================
-- sp_who2
--==============================================================================
USE master
GO

EXEC sp_who2
GO

--==============================================================================
-- sp_lock
--==============================================================================
USE master
GO

sp_lock

--==============================================================================
-- sys.dm_exec_requests
--==============================================================================
USE master
GO

SELECT * 
FROM sys.dm_exec_requests 
WHERE blocking_session_id <> 0;

--==============================================================================
-- EOF
--==============================================================================
