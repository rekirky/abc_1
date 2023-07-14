
create   proc [admin].[prcDefragOrRebuildAllIndexes]
			(
			@schema nvarchar(50)
			,@defragThresholdPct float=.05--5%
			,@rebuildThresholdPct float=.3--30%
			)
as
/*
	This proc will rebuild or defrag all of the indexes based on the fragmentation threshold given
*/
begin

	SET NOCOUNT ON;

	DECLARE @tablename nvarchar(130); 
	DECLARE @indexname nvarchar(130); 

	DROP TABLE IF EXISTS #work_to_do

	SELECT TOP 1 tableName=QUOTENAME(s.name)+'.'+QUOTENAME(o.name)
			,indexName=QUOTENAME(i.name)
	INTO #work_to_do
	FROM sys.objects o
	JOIN sys.schemas s ON s.schema_id = o.schema_id
	join sys.indexes i on i.object_id=o.object_id
	WHERE 
			i.name is not null 
			and i.type_desc<>'HEAP'
			and s.name=@schema

	-- Declare the cursor for the list of indexes to be processed.
	DECLARE curs CURSOR FAST_FORWARD FOR
	SELECT tablename,indexName
	FROM #work_to_do 

	OPEN curs;
	FETCH NEXT FROM curs
		INTO @tablename,@indexName

	-- Loop through the indexes.
	WHILE @@FETCH_STATUS = 0  
		BEGIN;
		
			exec admin.prcDefragOrRebuildIndex @tablename,@indexname

			--IF @partitioncount > 1
			--begin
			--	SET @command = @command + N' PARTITION=' + CAST(@partitionnum AS nvarchar(10));
			--end
        
			FETCH NEXT FROM curs
			   INTO @tablename,@indexName
		END

	CLOSE curs;
	DEALLOCATE curs;

END
GO
