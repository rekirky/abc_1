SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [SQLCop].[test Tables without a primary key]
AS
BEGIN
    -- Written by George Mastros
    -- February 25, 2012
    -- Updates contributed by Claude Harvey

    SET NOCOUNT ON

    DECLARE @Output VarChar(max)
    SET @Output = ''

    SELECT  @Output = @Output + QUOTENAME(AllTables.schemaName) + '.' + QUOTENAME(AllTables.name) + Char(13) + Char(10)
    FROM    (
            SELECT  name, object_id, SCHEMA_NAME(schema_id) AS schemaName
            From    sys.tables
            ) AS AllTables
            LEFT JOIN (
                SELECT parent_object_id
                From sys.objects
                WHERE  type = 'PK'
                ) AS PrimaryKeys
                ON AllTables.object_id = PrimaryKeys.parent_object_id
    WHERE   PrimaryKeys.parent_object_id Is Null
            AND AllTables.schemaName <> 'tSQLt'

    ORDER BY AllTables.schemaName, AllTables.name

    If @Output > ''
        Begin
            Set @Output = Char(13) + Char(10)
                          + 'For more information:  '
                          + 'https://github.com/red-gate/SQLCop/wiki/Tables-without-a-primary-key'
                          + Char(13) + Char(10)
                          + Char(13) + Char(10)
                          + @Output
            EXEC tSQLt.Fail @Output
        End
END;
GO
