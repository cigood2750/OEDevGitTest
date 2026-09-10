CREATE TABLE [dbo].[gitDemoWidget] (
    [WidgetId]   INT            IDENTITY (1, 1) NOT NULL,
    [WidgetName] NVARCHAR (100) NOT NULL,
    [UnitPrice]  DECIMAL (9, 2) NOT NULL,
    [IsActive]   BIT            CONSTRAINT [DF_gitDemoWidget_IsActive] DEFAULT ((1)) NOT NULL,
    [CreateDate] DATETIME       CONSTRAINT [DF_gitDemoWidget_CreateDate] DEFAULT (getdate()) NOT NULL,
    [NewColumn]  NCHAR (10)     NULL,
    CONSTRAINT [PK_gitDemoWidget] PRIMARY KEY CLUSTERED ([WidgetId] ASC)
);


GO


CREATE NONCLUSTERED INDEX [NonClusteredIndex-20260909-170301]
    ON [dbo].[gitDemoWidget]([WidgetName] ASC);
GO

