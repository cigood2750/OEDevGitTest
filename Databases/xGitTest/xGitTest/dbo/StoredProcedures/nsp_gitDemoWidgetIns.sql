
CREATE   PROCEDURE [dbo].[nsp_gitDemoWidgetIns]
	@WidgetName NVARCHAR(100),
	@UnitPrice DECIMAL(9, 2),
	@WidgetId INT OUTPUT
AS
BEGIN
	SET NOCOUNT ON

	INSERT INTO [dbo].[gitDemoWidget] ([WidgetName], [UnitPrice])
	VALUES (@WidgetName, @UnitPrice)

	SET @WidgetId = SCOPE_IDENTITY()
END
GO

