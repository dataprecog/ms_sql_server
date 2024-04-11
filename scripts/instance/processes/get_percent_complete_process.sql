--==============================================================================
-- 
--==============================================================================
-- Description.......: Show the Progress of a specific process, with Estimated completion time
-- Author............: Data Precog
-- Email.............: info@dataprecog.com
-- Date..............: 2009.02.08
-- Version...........: 1.0

--==============================================================================
-- 
--==============================================================================
SELECT e.session_id
	, e.percent_complete
	, e.start_time
	, CASE 
		WHEN e.total_elapsed_time < 36000000
			THEN '0'
			ELSE ''
		END
		+ RTRIM(e.total_elapsed_time / 1000 / 3600)
		+ ':' + RIGHT('0' + RTRIM((e.total_elapsed_time / 1000) % 3600 / 60), 2)
		+ ':' + RIGHT('0' + RTRIM((e.total_elapsed_time / 1000 ) % 60), 2) AS [elapsed_time]
	, CASE 
		WHEN e.estimated_completion_time < 36000000
			THEN '0'
			ELSE ''
		END
		+ RTRIM(e.estimated_completion_time / 1000 / 3600)
		+ ':' + RIGHT('0' + RTRIM((e.estimated_completion_time / 1000) % 3600 / 60), 2)
		+ ':' + RIGHT('0' + RTRIM((e.estimated_completion_time / 1000) % 60), 2) AS [time_remaining]
	, e.command
	, e.[status]
	, DB_NAME(e.database_id) AS [database_name]
	, USER_NAME(e.[user_id]) AS [user_name]
	, e.blocking_session_id
	, e.cpu_time
	, mf.size_in_mb
FROM sys.dm_exec_requests e
INNER JOIN (
	SELECT database_id
		, SUM(size) * 8 / 1024 AS size_in_mb
	FROM sys.master_files m
	WHERE m.[type] = 0
	GROUP BY database_id) mf
	ON mf.database_id = e.database_id
WHERE command LIKE '%<cmd, varchar(100),>%';

--==============================================================================
-- EOF
--==============================================================================
