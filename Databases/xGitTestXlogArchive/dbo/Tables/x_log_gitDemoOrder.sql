CREATE TABLE [dbo].[x_log_gitDemoOrder] (
    [OrderId]   INT            IDENTITY (1, 1) NOT NULL,
    [WidgetId]  INT            NOT NULL,
    [Quantity]  INT            NOT NULL,
    [OrderDate] DATETIME       CONSTRAINT [DF_gitDemoOrder_OrderDate] DEFAULT (getdate()) NOT NULL,
    [Notes]     NVARCHAR (200) NULL
);


GO

