

--========================================================================================
CREATE    PROC [admin].[prcLog_CRUD] @SourceSystem [varchar](200),@Process [varchar](200),@Task [varchar](200),@Status [varchar](200),@Error [varchar](2000)=null,@ID [varchar](256)=null AS
/*

	In the rare case that you need to do an update, first insert an record with an ID
	then call this proc again to update Status or Error
*/
BEGIN
 
	if @process='ETL'
	begin
		--get the current run date time
		select @process=isnull((select value 
								from admin.settings 
								where settingPK=('CurrentEtlRunDateTime')
								)
								,@process)
	end


	IF nullif(@ID,'') IS NULL
		OR (select count(1) from admin.Log where ID=@ID)=0
	BEGIN
		INSERT INTO admin.Log
			(
			ID
			,SourceSystem
			,Process
			,Task
			,Status
			,Error
			,AsAt
			)
		SELECT
			@ID
			,isnull(case when @SourceSystem='Database' 
								then DB_NAME()
							else @SourceSystem
							end
					,DB_NAME()
					)
			,@Process
			,@Task
			,@Status
			,@Error
			,getdate()
 
	END
	ELSE
	BEGIN

		UPDATE admin.Log
		SET
			Status=@Status
			,Error= @Error 
		WHERE
			ID=@ID
	END
END
GO
