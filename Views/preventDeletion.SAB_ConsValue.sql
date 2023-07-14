
create view [preventDeletion].[SAB_ConsValue]
with schemabinding
as
/*
This view and others in this schema are here to prevent the base table being deleted.
*/
select 
	RecId
	,Value
	,LSN
	,DataLakeModified_DateTime
from dbo.SAB_ConsValue
GO
