
CREATE   FUNCTION [dbo].[fnConvertUtcStringToLocalDate] (@dateTime varchar(50)) RETURNS date
AS
BEGIN

	RETURN Convert(DATE
					,try_cast(@dateTime as datetime2) AT TIME ZONE 'UTC' AT TIME ZONE 'Central Standard Time'
					) 

END
GO
