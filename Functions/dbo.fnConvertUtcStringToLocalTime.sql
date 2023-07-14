
create   FUNCTION [dbo].[fnConvertUtcStringToLocalTime] (@dateTime varchar(50)) RETURNS datetime2(2)
AS
BEGIN
	--SELECT * FROM sys.time_zone_info--get the timezones

	RETURN Convert(DATETIME2(2)
					,try_cast(@dateTime as datetime2) AT TIME ZONE 'UTC' AT TIME ZONE 'Central Standard Time'
					) 

END
GO
