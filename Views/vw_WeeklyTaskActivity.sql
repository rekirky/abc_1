SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO





/*
	Author:		Jamie Richards (JR)
	
	Usage:		SELECT * FROM Agent.vw_WeeklyTaskActivity

	============================================================================
	Purpose:
	
	Returns weekly task activity update for the preceding Monday through to Friday
	of the current week.

	Used by app to provide an activity overview

	Date			Author	Comment											
	============================================================================
	04 Jan 2022		JR		Initial version created
	22 Feb 2022		JR		Added TaskName column
	23 Feb 2022		JR		Modified to include tasks completed "this week"
	24 Feb 2022		JR		Renamed ActivityCode and Activity columns to
							ActivityPeriodCode and ActivityPeriod to improve clarity.
	05 Sep 2022		JR		Fixed a miscalculation in one of the Window; CASE
							expressions.
							Added LastSunday and ThisSunday, changed end time
							to 23:59 and modified WHERE clause to capture work
							completed on weekends.
	============================================================================
*/

CREATE VIEW [Agent].[vw_WeeklyTaskActivity]
AS
	WITH
		Window AS
		(
			SELECT
				/*Use datename to avoid ambiguity around datefirst value*/
				CASE DATENAME(DW, GETDATE())
					WHEN 'Monday' THEN CONVERT(DATE, DATEADD(DAY, -7, GETDATE()))
					WHEN 'Tuesday' THEN CONVERT(DATE, DATEADD(DAY, -8, GETDATE()))
					WHEN 'Wednesday' THEN CONVERT(DATE, DATEADD(DAY, -9, GETDATE()))
					WHEN 'Thursday' THEN CONVERT(DATE, DATEADD(DAY, -10, GETDATE()))
					WHEN 'Friday' THEN CONVERT(DATE, DATEADD(DAY, -11, GETDATE()))
					WHEN 'Saturday' THEN CONVERT(DATE, DATEADD(DAY, -12, GETDATE()))
					WHEN 'Sunday' THEN CONVERT(DATE, DATEADD(DAY, -13, GETDATE()))
					ELSE NULL
				END LastMonday /*Return midnight start of day*/
			  , CASE DATENAME(DW, GETDATE())
					WHEN 'Monday' THEN CONVERT(DATE, GETDATE())
					WHEN 'Tuesday' THEN CONVERT(DATE, DATEADD(DAY, -1, GETDATE()))
					WHEN 'Wednesday' THEN CONVERT(DATE, DATEADD(DAY, -2, GETDATE()))
					WHEN 'Thursday' THEN CONVERT(DATE, DATEADD(DAY, -3, GETDATE()))
					WHEN 'Friday' THEN CONVERT(DATE, DATEADD(DAY, -4, GETDATE()))
					WHEN 'Saturday' THEN CONVERT(DATE, DATEADD(DAY, -5, GETDATE()))
					WHEN 'Sunday' THEN CONVERT(DATE, DATEADD(DAY, -6, GETDATE()))
					ELSE NULL
				END ThisMonday /*Return midnight start of day*/
			  , CASE DATENAME(DW, GETDATE())
					WHEN 'Monday' THEN CONCAT(CONVERT(DATE, DATEADD(DAY, -3, GETDATE()), 112), ' ', TIMEFROMPARTS(23, 59, 59, 0, 0))
					WHEN 'Tuesday' THEN CONCAT(CONVERT(DATE, DATEADD(DAY, -4, GETDATE()), 112), ' ', TIMEFROMPARTS(23, 59, 59, 0, 0))
					WHEN 'Wednesday' THEN CONCAT(CONVERT(DATE, DATEADD(DAY, -5, GETDATE()), 112), ' ', TIMEFROMPARTS(23, 59, 59, 0, 0))
					WHEN 'Thursday' THEN CONCAT(CONVERT(DATE, DATEADD(DAY, -6, GETDATE()), 112), ' ', TIMEFROMPARTS(23, 59, 59, 0, 0))
					WHEN 'Friday' THEN CONCAT(CONVERT(DATE, DATEADD(DAY, -7, GETDATE()), 112), ' ', TIMEFROMPARTS(23, 59, 59, 0, 0))
					WHEN 'Saturday' THEN CONCAT(CONVERT(DATE, DATEADD(DAY, -8, GETDATE()), 112), ' ', TIMEFROMPARTS(23, 59, 59, 0, 0))
					WHEN 'Sunday' THEN CONCAT(CONVERT(DATE, DATEADD(DAY, -9, GETDATE()), 112), ' ', TIMEFROMPARTS(23, 59, 59, 0, 0))
					ELSE NULL
				END LastFriday /*Return 23:59 on day*/
			  , CASE DATENAME(DW, GETDATE())
					WHEN 'Monday' THEN CONCAT(CONVERT(DATE, DATEADD(DAY, -1, GETDATE()), 112), ' ', TIMEFROMPARTS(23, 59, 59, 0, 0))
					WHEN 'Tuesday' THEN CONCAT(CONVERT(DATE, DATEADD(DAY, -2, GETDATE()), 112), ' ', TIMEFROMPARTS(23, 59, 59, 0, 0))
					WHEN 'Wednesday' THEN CONCAT(CONVERT(DATE, DATEADD(DAY, -3, GETDATE()), 112), ' ', TIMEFROMPARTS(23, 59, 59, 0, 0))
					WHEN 'Thursday' THEN CONCAT(CONVERT(DATE, DATEADD(DAY, -4, GETDATE()), 112), ' ', TIMEFROMPARTS(23, 59, 59, 0, 0))
					WHEN 'Friday' THEN CONCAT(CONVERT(DATE, DATEADD(DAY, -5, GETDATE()), 112), ' ', TIMEFROMPARTS(23, 59, 59, 0, 0))
					WHEN 'Saturday' THEN CONCAT(CONVERT(DATE, DATEADD(DAY, -6, GETDATE()), 112), ' ', TIMEFROMPARTS(23, 59, 59, 0, 0))
					WHEN 'Sunday' THEN CONCAT(CONVERT(DATE, DATEADD(DAY, -7, GETDATE()), 112), ' ', TIMEFROMPARTS(23, 59, 59, 0, 0))
					ELSE NULL
				END LastSunday /*Return 23:59 PM on day*/
			  , CASE DATENAME(DW, GETDATE())
					WHEN 'Monday' THEN CONCAT(CONVERT(DATE, DATEADD(DAY, 4, GETDATE()), 112), ' ', TIMEFROMPARTS(23, 59, 59, 0, 0))
					WHEN 'Tuesday' THEN CONCAT(CONVERT(DATE, DATEADD(DAY, 3, GETDATE()), 112), ' ', TIMEFROMPARTS(23, 59, 59, 0, 0))
					WHEN 'Wednesday' THEN CONCAT(CONVERT(DATE, DATEADD(DAY, 2, GETDATE()), 112), ' ', TIMEFROMPARTS(23, 59, 59, 0, 0))
					WHEN 'Thursday' THEN CONCAT(CONVERT(DATE, DATEADD(DAY, 1, GETDATE()), 112), ' ', TIMEFROMPARTS(23, 59, 59, 0, 0))
					WHEN 'Friday' THEN CONCAT(CONVERT(DATE, GETDATE(), 112), ' ', TIMEFROMPARTS(23, 59, 59, 0, 0))
					WHEN 'Saturday' THEN CONCAT(CONVERT(DATE, DATEADD(DAY, -1, GETDATE()), 112), ' ', TIMEFROMPARTS(23, 59, 59, 0, 0))
					WHEN 'Sunday' THEN CONCAT(CONVERT(DATE, DATEADD(DAY, -2, GETDATE()), 112), ' ', TIMEFROMPARTS(23, 59, 59, 0, 0))
					ELSE NULL
				END ThisFriday /*Return 23:59 on day*/
			  , CASE DATENAME(DW, GETDATE())
					WHEN 'Monday' THEN CONCAT(CONVERT(DATE, DATEADD(DAY, 6, GETDATE()), 112), ' ', TIMEFROMPARTS(23, 59, 59, 0, 0))
					WHEN 'Tuesday' THEN CONCAT(CONVERT(DATE, DATEADD(DAY, 5, GETDATE()), 112), ' ', TIMEFROMPARTS(23, 59, 59, 0, 0))
					WHEN 'Wednesday' THEN CONCAT(CONVERT(DATE, DATEADD(DAY, 4, GETDATE()), 112), ' ', TIMEFROMPARTS(23, 59, 59, 0, 0))
					WHEN 'Thursday' THEN CONCAT(CONVERT(DATE, DATEADD(DAY, 3, GETDATE()), 112), ' ', TIMEFROMPARTS(23, 59, 59, 0, 0))
					WHEN 'Friday' THEN CONCAT(CONVERT(DATE, DATEADD(DAY, 2, GETDATE()), 112), ' ', TIMEFROMPARTS(23, 59, 59, 0, 0))
					WHEN 'Saturday' THEN CONCAT(CONVERT(DATE, DATEADD(DAY, 1, GETDATE()), 112), ' ', TIMEFROMPARTS(23, 59, 59, 0, 0))
					WHEN 'Sunday' THEN CONCAT(CONVERT(DATE, GETDATE(), 112), ' ', TIMEFROMPARTS(23, 59, 59, 0, 0))
					ELSE NULL
				END ThisSunday /*Return 23:59 on day*/
		)
	SELECT
		ROW_NUMBER() OVER (ORDER BY t.TaskID) ID /*Generate an ID as TaskID may not be unique*/
	  , t.StatusCategory
	  , t.TaskReference
	  , t.TaskName
	  , t.TaskLink
	  , t.AssigneeID
	  , t.Assignee
	  , t.OwnerID
	  , t.[Owner]
	  , t.ClientID
	  , t.Client
	  , CONVERT(DATE, t.StartDate) StartDate
	  , CONVERT(DATE, t.DueDate) DueDate
	  , CONVERT(DATE, t.FinishDate) FinishDate
	  , CASE
			WHEN t.FinishDate BETWEEN w.LastMonday AND w.LastSunday THEN 'LW'
			WHEN ((
					  ((t.StartDate BETWEEN w.LastMonday AND w.ThisFriday)
					   AND ISNULL(t.FinishDate, '23991231') >= w.ThisMonday
					  )
					  OR
					  ((t.DueDate BETWEEN w.LastMonday AND w.ThisFriday)
					   AND ISNULL(t.FinishDate, '23991231') >= w.ThisMonday
					  )
				  )
				  OR t.StatusCode IN('INPRG', 'COMP')
				 ) THEN 'TW'
			ELSE 'OTH'
		END ActivityPeriodCode
	  , CASE
			WHEN t.FinishDate BETWEEN w.LastMonday AND w.LastSunday THEN 'Last Week'
			WHEN ((
					  ((t.StartDate BETWEEN w.LastMonday AND w.ThisSunday)
					   AND ISNULL(t.FinishDate, '23991231') >= w.ThisMonday
					  )
					  OR
					  ((t.DueDate BETWEEN w.LastMonday AND w.ThisSunday)
					   AND ISNULL(t.FinishDate, '23991231') >= w.ThisMonday
					  )
				  )
				  OR t.StatusCode IN('INPRG', 'COMP')
				 ) THEN 'This Week'
			ELSE 'Other'
		END ActivityPeriod
	  , GETDATE() EnquiryDate
	FROM
		Agent.vw_Tasks t
		OUTER APPLY Window w
	WHERE
		t.Deleted > GETDATE()
		AND
		(
			/*Completed during the previous week*/
			t.FinishDate BETWEEN w.LastMonday AND w.LastSunday
			/*Active or completed this week*/
			OR
			(
				(
					(t.StartDate BETWEEN w.LastMonday AND w.ThisSunday)
					OR (t.DueDate BETWEEN w.LastMonday AND w.ThisSunday)
					OR (t.StatusCode IN('INPRG', 'COMP')) /*In Progress or Completed*/
				)
				AND (t.FinishDate >= w.ThisMonday OR t.FinishDate IS NULL) /*Only if completed this week or not completed*/
			)
		)
		AND NOT t.StatusCode IN ('CANC', 'DFRD', 'WAIT');
GO