CREATE   FUNCTION [dbo].[fnConvertUtcToLocalDate] (@dateTime [datetime]) RETURNS date
AS
BEGIN

	RETURN Convert(DATE
					,@dateTime AT TIME ZONE 'UTC' AT TIME ZONE 'Central Standard Time'
					) 

END
GO
