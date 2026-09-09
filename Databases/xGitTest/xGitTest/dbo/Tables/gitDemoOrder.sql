CREATE TABLE [dbo].[gitDemoOrder] (
    [OrderId]   INT            IDENTITY (1, 1) NOT NULL,
    [WidgetId]  INT            NOT NULL,
    [Quantity]  INT            NOT NULL,
    [OrderDate] DATETIME       CONSTRAINT [DF_gitDemoOrder_OrderDate] DEFAULT (getdate()) NOT NULL,
    [Notes]     NVARCHAR (200) NULL,
    CONSTRAINT [PK_gitDemoOrder] PRIMARY KEY CLUSTERED ([OrderId] ASC),
    CONSTRAINT [FK_gitDemoOrder_gitDemoWidget] FOREIGN KEY ([WidgetId]) REFERENCES [dbo].[gitDemoWidget] ([WidgetId])
);


GO

