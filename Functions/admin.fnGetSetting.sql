
CREATE      function [admin].[fnGetSetting](@settingPK varchar(100))
	returns varchar(300)
as
begin
	
	return (select Value 
			from admin.Settings with(nolock)
			where SettingPK=@settingPK
			)
		
end
GO
