SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [SQLCop].[test Procedures that call undocumented procedures]
AS
BEGIN
    -- Written by George Mastros
    -- February 25, 2012
    -- Updates contributed by Claude Harvey

    SET NOCOUNT ON

    Declare @Output VarChar(max)
    Set @Output = ''

    DECLARE @Temp TABLE(ProcedureName VARCHAR(50))

    INSERT INTO @Temp VALUES('sp_MStablespace')
    INSERT INTO @Temp VALUES('sp_who2')
    INSERT INTO @Temp VALUES('sp_tempdbspace')
    INSERT INTO @Temp VALUES('sp_MSkilldb')
    INSERT INTO @Temp VALUES('sp_MSindexspace')
    INSERT INTO @Temp VALUES('sp_MShelptype')
    INSERT INTO @Temp VALUES('sp_MShelpindex')
    INSERT INTO @Temp VALUES('sp_MShelpcolumns')
    INSERT INTO @Temp VALUES('sp_MSforeachtable')
    INSERT INTO @Temp VALUES('sp_MSforeachdb')
    INSERT INTO @Temp VALUES('sp_fixindex')
    INSERT INTO @Temp VALUES('sp_columns_rowset')
    INSERT INTO @Temp VALUES('sp_MScheck_uid_owns_anything')
    INSERT INTO @Temp VALUES('sp_MSgettools_path')
    INSERT INTO @Temp VALUES('sp_gettypestring')
    INSERT INTO @Temp VALUES('sp_MSdrop_object')
    INSERT INTO @Temp VALUES('sp_MSget_qualified_name')
    INSERT INTO @Temp VALUES('sp_MSgetversion')
    INSERT INTO @Temp VALUES('xp_dirtree')
    INSERT INTO @Temp VALUES('xp_subdirs')
    INSERT INTO @Temp VALUES('xp_enum_oledb_providers')
    INSERT INTO @Temp VALUES('xp_enumcodepages')
    INSERT INTO @Temp VALUES('xp_enumdsn')
    INSERT INTO @Temp VALUES('xp_enumerrorlogs')
    INSERT INTO @Temp VALUES('xp_enumgroups')
    INSERT INTO @Temp VALUES('xp_fileexist')
    INSERT INTO @Temp VALUES('xp_fixeddrives')
    INSERT INTO @Temp VALUES('xp_getnetname')
    INSERT INTO @Temp VALUES('xp_readerrorlog')
    INSERT INTO @Temp VALUES('sp_msdependencies')
    INSERT INTO @Temp VALUES('xp_qv')
    INSERT INTO @Temp VALUES('xp_delete_file')
    INSERT INTO @Temp VALUES('sp_checknames')
    INSERT INTO @Temp VALUES('sp_enumoledbdatasources')
    INSERT INTO @Temp VALUES('sp_MS_marksystemobject')
    INSERT INTO @Temp VALUES('sp_MSaddguidcolumn')
    INSERT INTO @Temp VALUES('sp_MSaddguidindex')
    INSERT INTO @Temp VALUES('sp_MSaddlogin_implicit_ntlogin')
    INSERT INTO @Temp VALUES('sp_MSadduser_implicit_ntlogin')
    INSERT INTO @Temp VALUES('sp_MSdbuseraccess')
    INSERT INTO @Temp VALUES('sp_MSdbuserpriv')
    INSERT INTO @Temp VALUES('sp_MSloginmappings')
    INSERT INTO @Temp VALUES('sp_MStablekeys')
    INSERT INTO @Temp VALUES('sp_MStablerefs')
    INSERT INTO @Temp VALUES('sp_MSuniquetempname')
    INSERT INTO @Temp VALUES('sp_MSuniqueobjectname')
    INSERT INTO @Temp VALUES('sp_MSuniquecolname')
    INSERT INTO @Temp VALUES('sp_MSuniquename')
    INSERT INTO @Temp VALUES('sp_MSunc_to_drive')
    INSERT INTO @Temp VALUES('sp_MSis_pk_col')
    INSERT INTO @Temp VALUES('xp_get_MAPI_default_profile')
    INSERT INTO @Temp VALUES('xp_get_MAPI_profiles')
    INSERT INTO @Temp VALUES('xp_regdeletekey')
    INSERT INTO @Temp VALUES('xp_regdeletevalue')
    INSERT INTO @Temp VALUES('xp_regread')
    INSERT INTO @Temp VALUES('xp_regenumvalues')
    INSERT INTO @Temp VALUES('xp_regaddmultistring')
    INSERT INTO @Temp VALUES('xp_regremovemultistring')
    INSERT INTO @Temp VALUES('xp_regwrite')
    INSERT INTO @Temp VALUES('xp_varbintohexstr')
    INSERT INTO @Temp VALUES('sp_MSguidtostr')

    SELECT @Output = @Output + SCHEMA_NAME(o.schema_id) + '.' + o.name + Char(13) + Char(10)
    FROM   sys.objects o
           INNER JOIN syscomments c
             ON o.object_id = c.id
             AND o.type = 'P'
           INNER JOIN @Temp t
             ON c.text COLLATE SQL_LATIN1_GENERAL_CP1_CI_AI LIKE '%' + t.ProcedureName + '%'
    WHERE  type = 'P'
           AND o.is_ms_shipped = 0
           AND SCHEMA_NAME(o.schema_id) <> 'tSQLt'
           AND SCHEMA_NAME(o.schema_id) <> 'SQLCop'
    ORDER BY SCHEMA_NAME(o.schema_id), o.name

    If @Output > ''
        Begin
            Set @Output = Char(13) + Char(10)
                          + 'For more information:  '
                          + 'https://github.com/red-gate/SQLCop/wiki/Procedures-that-call-undocumented-procedures'
                          + Char(13) + Char(10)
                          + Char(13) + Char(10)
                          + @Output
            EXEC tSQLt.Fail @Output
        End
END;
GO
