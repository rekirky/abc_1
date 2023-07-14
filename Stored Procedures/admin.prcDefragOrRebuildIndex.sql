

CREATE   proc [admin].[prcDefragOrRebuildIndex] 
			(@tableName nvarchar(100)
			,@indexName nvarchar(100)
			,@defragThresholdPctOpt float=.05--5%
			,@rebuildThresholdPctOpt float=.3--30%
			)
as
/*
	This proc will rebuild or defrag the given index based on the fragmentation threshold given

	HISTORY
	2019-10-28	Stefan	Added  WITH (ONLINE = ON)
	2019-12-17	Stefan	Added a max clause as there maybe multiple indexes on a table
	2019-12-18	Stefan	Try Catch block around the rebuild to cater for columnstore indexes
*/
begin

	DECLARE @fragmentation float			
			,@command nvarchar(1000)
			
	WAITFOR DELAY '00:00:30'--30 seconds

	--GET THE FRAGMENTATION OF THE INDEX
		SELECT 	@fragmentation=max(avg_fragmentation_in_percent /100)
		FROM sys.dm_db_index_physical_stats (DB_ID(), NULL, NULL , NULL, 'LIMITED')
		WHERE	index_id > 0
		and object_id=OBJECT_ID(@tableName)
		and index_id=(select top 1 i.index_id from sys.indexes i where i.name =@indexName)

		select @fragmentation as Fragmentation

	--DETERMINE THE WORK TO DO
		-- 30% is an arbitrary decision point at which to switch between reorganizing and rebuilding.
		IF @fragmentation between @defragThresholdPctOpt and @rebuildThresholdPctOpt
		begin
			--THIS IS A DEFRAG/RESHUFFLE OF DATA AND IS THE LEAST AMOUNT OF LOGGING
			SET @command = N'ALTER INDEX ' + @indexname + N' ON ' + @tableName+ N' REORGANIZE'
			exec (@command)
			select @command as commandExecuted
		end


		IF @fragmentation > @rebuildThresholdPctOpt
		begin
			--THIS IS A FULL TABLE REBUILD WHICH IS THE MOST EXPENSIVE
			begin try
				--attempt an online rebuild. Note that online rebuilds of clustered columnstore indexes are supported in SQL 2019 and aboce
				SET @command = N'ALTER INDEX ' + @indexname + N' ON ' + @tableName+ N' REBUILD WITH (ONLINE = ON)'
				exec (@command)
				select @command as commandExecuted
			end try
			begin catch
				--do the rebuild offline.
				SET @command = N'ALTER INDEX ' + @indexname + N' ON ' + @tableName+ N' REBUILD'
				exec (@command)
				select @command as commandExecuted
			end catch
		end
				
end
GO
