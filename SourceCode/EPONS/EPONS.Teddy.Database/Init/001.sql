IF NOT EXISTS (
SELECT  schema_name
FROM    information_schema.schemata
WHERE   schema_name = 'Audit' ) 
EXEC sp_executesql N'CREATE SCHEMA [Audit]'


IF NOT EXISTS (
SELECT  schema_name
FROM    information_schema.schemata
WHERE   schema_name = 'User' ) 
EXEC sp_executesql N'CREATE SCHEMA [User]'

IF NOT EXISTS (
SELECT  schema_name
FROM    information_schema.schemata
WHERE   schema_name = 'Facility' ) 
EXEC sp_executesql N'CREATE SCHEMA [Facility]'

IF NOT EXISTS (
SELECT  schema_name
FROM    information_schema.schemata
WHERE   schema_name = 'ValueObjects' ) 
EXEC sp_executesql N'CREATE SCHEMA [ValueObjects]'

IF NOT EXISTS (
SELECT  schema_name
FROM    information_schema.schemata
WHERE   schema_name = 'Patient' ) 
EXEC sp_executesql N'CREATE SCHEMA [Patient]'

IF NOT EXISTS (
SELECT  schema_name
FROM    information_schema.schemata
WHERE   schema_name = 'Visit' ) 
EXEC sp_executesql N'CREATE SCHEMA [Visit]'

IF NOT EXISTS (
SELECT  schema_name
FROM    information_schema.schemata
WHERE   schema_name = 'Message' ) 
EXEC sp_executesql N'CREATE SCHEMA [Message]'

IF NOT EXISTS (
SELECT  schema_name
FROM    information_schema.schemata
WHERE   schema_name = 'EPONS' ) 
EXEC sp_executesql N'CREATE SCHEMA [EPONS]'

IF NOT EXISTS (
SELECT  schema_name
FROM    information_schema.schemata
WHERE   schema_name = 'Survey' ) 
EXEC sp_executesql N'CREATE SCHEMA [Survey]'

IF NOT EXISTS (
SELECT  schema_name
FROM    information_schema.schemata
WHERE   schema_name = 'Admin' ) 
EXEC sp_executesql N'CREATE SCHEMA [Admin]'
