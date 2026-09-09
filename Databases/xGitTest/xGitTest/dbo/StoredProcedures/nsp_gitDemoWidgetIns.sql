USE [xGitTest]
GO

/****** Object:  StoredProcedure [dbo].[nsp_gitDemoWidgetIns]    Script Date: 9/9/2026 3:22:42 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE OR ALTER   PROCEDURE [dbo].[nsp_gitDemoWidgetIns]
	@WidgetName NVARCHAR(100),
	@UnitPrice DECIMAL(9, 2),
	@WidgetId INT OUTPUT
AS
BEGIN
	SET NOCOUNT ON

	INSERT INTO [dbo].[gitDemoWidget] ([WidgetName], [UnitPrice])
	VALUES (@WidgetName, @UnitPrice)

	SET @WidgetId = SCOPE_IDENTITY()

	select 'Yes'
END
GO

