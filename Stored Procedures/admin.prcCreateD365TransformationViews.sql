

CREATE    PROC [admin].[prcCreateD365TransformationViews] @deleteIfExists [bit]=0 AS
begin
	SET NOCOUNT ON

	declare 
		@tab char(1)=CHAR(9)
		,@sourceSchemaForMetaData varchar(100)='Supporting'
		,@sourceSchema varchar(100)='ext'
		,@targetSchema varchar(100)='transf'
		,@iTable int =1
		,@iMaxTables int 
		,@iMaxColumns int 
		,@iColumn int =1
		,@tableName varchar(500)
		,@columnName varchar(500)
		,@part1 varchar(500)
		,@part2 varchar(500)
		,@enum varchar(100)
		,@sql varchar(max)=''
		,@columnSQL varchar(max)=''
		,@ColumnType varchar(50)
		,@TransformationType varchar(20)
		,@TransformationDetails varchar(100)

		select sourceSchemaForMetaData=@sourceSchemaForMetaData,SouceSchema=@sourceSchema,TargetSchema=@targetSchema

		select * 
		into #issues
		from etl.ColumnTransformations 
		where enabled=1
				and TransformationType <>'boolean' 
				and nullif(TransformationDetails,'') is null
		order by 1

		if exists (select top 1 * from #issues)
		begin
			select * from #issues

			RAISERROR ('There are blank transformations',12,100)
			return
		end

		select
				t.table_schema
				,t.table_name
				,part1=	'create view '+@targetSchema+'.'+t.table_name+' as select '--xxxx
				,part2=' from '+@sourceSchema+'.'+t.table_name
				,iTable=row_number() over(order by t.table_schema,t.table_name)
				,columnCount=count(1)
		into #tables
		from d365.INFORMATION_SCHEMA_TABLES t 
		join d365.INFORMATION_SCHEMA_Columns c
									on c.table_name=t.table_name
									and c.table_schema=t.table_schema
		where	
				t.TABLE_TYPE='BASE TABLE'
				and t.TABLE_SCHEMA=@sourceSchemaForMetaData
				and (@deleteIfExists=1
						or not exists (select 1
										from INFORMATION_SCHEMA.TABLES  tt
										where	tt.TABLE_SCHEMA=@targetSchema
												and tt.table_name=t.table_name
										)
					)
		group by
				t.table_schema
				,t.table_name
								
		--columns
		select 
			table_name
			,c.column_name
			--,comma		=case when c.ordinal_position=1
			--							then ''
			--						else ','
			--						end
			,c.ordinal_position
			,c.data_type
			,tx.TransformationType
			,tx.TransformationDetails
		into #columns
		from d365.INFORMATION_SCHEMA_Columns c 
		left join etl.ColumnTransformations tx 
										on tx.tableName=c.table_name
										and tx.columnName=c.column_name
										and tx.Enabled=1
		where 
			c.TABLE_SCHEMA=@sourceSchemaForMetaData
			and exists (
						select 1
						from #tables t
						where t.table_name=c.table_name
						)

		select @iMaxTables=count(1)
		FROM #tables

		-------------------------------------------------------------
		while @iTable<=@iMaxTables--synapse cursor equivalent 
		begin
			--for each table
			select @tableName=table_name
					,@part1=part1
					,@part2=part2
					,@iColumn =1
					,@iMaxColumns=columnCount
			FROM #tables t
			where iTable=@iTable

			select TableName=@tableName,cols=@iMaxColumns

			if @deleteIfExists=1
			begin
				set @sql='if (select object_id('''+@targetSchema+'.'+@tableName+''')) is not null drop view '+@targetSchema+'.'+@tableName
				exec (@sql)   
			end

			select	@sql=@part1
					,@part2=@part2+' t'
					,@columnSQL=''

			--loop through the columns
			while @iColumn<=@iMaxColumns--cursor equivalent
			begin
				select	@TransformationType=null--reset these as synapse is funny with null returning queries
						,@TransformationDetails=null

				select @columnName	=column_name
						--,@comma		=comma
						,@TransformationType	=TransformationType
						,@TransformationDetails	=TransformationDetails
						,@ColumnType =data_type
				from #columns
				where 
						table_name=@tableName
						and ordinal_position=@iColumn

				if @columnName not like 'zap_%'
				begin
					--select tx=@TransformationDetails,txType=@TransformationType,col=@columnName

					set @columnSQL=@columnSQL+','+@columnName 
									+case 
										when @TransformationType='sql'
											then '='+@TransformationDetails
										when @TransformationType='Boolean'
											then '=case when '+@columnName+'=1 then ''Yes'' else ''No'' end '
													+','+@columnName+'Flag=cast('+@columnName+' as bit)'--add an extra column for the integer
										when @TransformationType='enum'
											then '=(select top 1 e.Enum from dbo.EnumEntity e where e.EnumSet='''+@TransformationDetails+''' and e.EnumCode=t.'+@columnName+') '
													+','+@columnName+'EnumID='+@columnName--add an extra column for the enum integer
										when @TransformationType='DATE' or @ColumnType like 'datetime%'
											then '=cast('+
												case 
													when @TransformationDetails is null
														then @columnName+' as date)'
													
													when @TransformationDetails like '%max%'
														then 'case when '+@columnName+' < cast(''1901-01-01'' as date) or '+@columnName+' is null then ''9000-01-01'' else '+@columnName+' end'
																+' as date)'
												
													when @TransformationDetails like '%SetToNull%'
														then 'case when '+@columnName+' < cast(''1901-01-01'' as date) then null else '+@columnName+' end'
																+' as date)'
												
													when @TransformationDetails like '%UTC2LocalDate%'
															then 'case when '+@columnName+' < cast(''1901-01-01'' as date) then null else dbo.fnConvertUtcToLocalDate('+@columnName+') end'
																+' as date)'

													when @TransformationDetails like '%UTC2LocalDateTime%'
															then 'case when '+@columnName+' < cast(''1901-01-01'' as date) then null else dbo.fnConvertUtcToLocalTime('+@columnName+') end'
													else ''
												end
										else ''
										end
				end

				set @iColumn=@iColumn+1
			end

			set @sql=@sql+substring(@columnSQL,2,9999)+@part2--remove the first comma from the columnSQL
			select CreateStatement=@sql
			
			if @sql is null
			begin
				select *
				from #columns
				where table_name=@tableName					

				--bubble the error so that the caller will fail
				set @tableName=@tableName+': blank create view statement for this table'
				RAISERROR (@tableName,12,100)
			end
			else
			begin
				exec (@sql)   
			end 
			
			set @iTable=@iTable+1

			--testing
			--set @sql='select top 1 * from '+@targetSchema+'.'+@tableName
			--exec (@sql)   

		end--loop
		
end
GO
