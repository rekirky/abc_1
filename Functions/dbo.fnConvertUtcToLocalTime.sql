
CREATE   FUNCTION [dbo].[fnConvertUtcToLocalTime] (@dateTime [datetime]) RETURNS datetime2(2)
AS
BEGIN
	--SELECT * FROM sys.time_zone_info--get the timezones

	RETURN Convert(DATETIME
					,@dateTime AT TIME ZONE 'UTC' AT TIME ZONE 'Central Standard Time'
					) 

END
GO
