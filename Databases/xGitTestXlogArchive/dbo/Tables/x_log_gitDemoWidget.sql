CREATE TABLE [dbo].[x_log_gitDemoWidget] (
    [WidgetId]         INT            IDENTITY (1, 1) NOT NULL,
    [WidgetName]       NVARCHAR (100) NOT NULL,
    [UnitPrice]        DECIMAL (9, 2) NOT NULL,
    [IsActive]         BIT            CONSTRAINT [DF_gitDemoWidget_IsActive] DEFAULT ((1)) NOT NULL,
    [CreateDate]       DATETIME       CONSTRAINT [DF_gitDemoWidget_CreateDate] DEFAULT (getdate()) NOT NULL,
    [CognitoNewColumn] NCHAR (10)     NULL
);


GO

