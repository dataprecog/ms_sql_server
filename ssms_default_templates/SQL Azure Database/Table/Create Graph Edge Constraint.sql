-- =========================================== 
-- Create Graph Edge Constraint Template

-- This template creates an Edge Constraint on
-- a Graph Edge Table. Edge constraints can be
-- used to enforce data integrity and specific
-- semantics on edge tables in SQL Server 
-- graph database. 
-- ===========================================

USE <database, sysname, AdventureWorks>
GO 

ALTER TABLE <schema_name, sysname, dbo>.<table_name, sysname, sample_edgetable>
   ADD CONSTRAINT <contraint_name, sysname>
   CONNECTION (<node_table_name TO <node_table_name>, <node_table_name> TO <node_table_name>)
   ON DELETE { NO ACTION | CASCADE }
GO