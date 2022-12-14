SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

CREATE VIEW [dbo].[dbo.APO_DP_LSPItemWeek_Primary3]

AS

 

SELECT [IMPORTFILEDATE]

      ,[LOCSPLITPROFILE]

      ,[CALENDARWEEK]

      ,[LOC]

      ,[LOCSPLITFLAG]

      ,[PROPORTIONALFACTOR]

      ,[STATPROP]

      ,[MIXEDPROP]

      ,[IsActive]

      ,[EffectiveStartDate]

      ,[EffectiveEndDate]

  FROM [dbo].[APO_DP_LSPItemWeek] ;

 

GO
