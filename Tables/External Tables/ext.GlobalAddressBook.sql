CREATE EXTERNAL TABLE [ext].[GlobalAddressBook]
(
[name] [varchar] (500) NULL,
[mail] [varchar] (500) NULL,
[mobile] [varchar] (500) NULL,
[telephonenumber] [varchar] (500) NULL,
[department] [varchar] (500) NULL,
[title] [varchar] (500) NULL,
[showInAddressBook] [varchar] (500) NULL
)
WITH
(
LOCATION = N'GlobalAddressBook.txt',
DATA_SOURCE = [d365ADLS],
FILE_FORMAT = [csvQuotedPipeSkipHeader],
REJECT_TYPE = value,
REJECT_VALUE = 0
)
GO
