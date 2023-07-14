CREATE       proc [admin].[prcLoadTableRowCounts] @schema varchar(100)=null,@getRecIDSum bit=null
as 
begin

	declare @sql varchar(1000)
			,@iCount int=1
			,@iMax int 
			,@table varchar(100)

	delete admin.TableRowCounts
	where @schema is null--delete all
			or skema =@schema

	insert into admin.TableRowCounts(skema,tableName,id)
	select 
		table_Schema
		,TABLE_NAME
		,row_number() over(order by table_Name)
	from
		(
		select table_Schema
				,TABLE_NAME
		from information_schema.tables t
		where	 table_Schema =@schema
				and table_type='base table'
				and TABLE_NAME<>'Calendar'
				and exists (select 1
								from sys.tables st 
								where	st.name						=t.TABLE_NAME
										and SCHEMA_NAME(st.schema_id)=t.TABLE_SCHEMA
										and st.is_external=0
								)
		)nest1
	order by 1

	select @iMax=count(1)
	FROM admin.TableRowCounts
	where skema=@schema

	while @iCount<=@iMax--cursor equivalent
	begin

		select @table=tablename
		from admin.TableRowCounts
		where	id=@iCount
				and skema=@schema

		SET @sql=concat('update admin.TableRowCounts set asAt=getdate(), rowz=(select count(1) from '
							,@schema,'.',@table
							,') where tableName=''',@table
							,''' and skema=''',@schema,''''
							)
			
		exec (@sql)   

		if @getRecIDSum =1
		begin

			if exists(select 1 
						from INFORMATION_SCHEMA.COLUMNS 
						where COLUMN_NAME='recid'
								and TABLE_SCHEMA=@schema
								and TABLE_NAME=@table 
						)
			begin
				SET @sql=concat('update admin.TableRowCounts set RecIDsum=(select sum(recid) from '
							,@schema,'.',@table
							,') where tableName=''',@table
							,''' and skema=''',@schema,''''
							)

				exec (@sql)   
			end
		end

		set @iCount=@iCount+1

	end--loop

	select * ,[rowCount]=format(rowz,'#,#')
	from admin.TableRowCounts
	order by 1
end
GO
