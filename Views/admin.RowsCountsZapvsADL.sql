




 CREATE   view [admin].[RowsCountsZapvsADL]
 as

select 
	tableName=isnull(adl.tableName,zap.tableName)
	,ZapRows=zap.rowz
	,ADLrows=adl.rowz
	,ZapRecIdSumFormatted=zap.RecIDsumFormatted
	,ADLRecIdSumFormatted=adl.RecIDsumFormatted
	,ZapRecIdSum		=zap.RecIDsum
	,ADLRecIdSum		=adl.RecIDsum
	,rowCountDelta		=isnull(zap.rowz,0)-isnull(adl.rowz,0)
	,RecIdSumDelta		=isnull(zap.RecIDsum,0)-isnull(adl.RecIDsum,0)
from			(select * from admin.TableRowCounts where skema ='d365') zap
full outer join (select * from admin.TableRowCounts where skema ='dbo') adl
					on adl.tableName=zap.tableName
GO
