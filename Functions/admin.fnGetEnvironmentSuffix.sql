
CREATE      function [admin].[fnGetEnvironmentSuffix]()
returns varchar(20)
as
begin
	
	return case when db_name() like '%_UAT' then '_UAT' else '_PROD' end
end
GO
