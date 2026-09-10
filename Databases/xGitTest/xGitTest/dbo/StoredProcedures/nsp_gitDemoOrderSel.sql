
CREATE   PROCEDURE [dbo].[nsp_gitDemoOrderSel]
	@OrderId INT = NULL
AS
BEGIN
	SET NOCOUNT ON

	SELECT
		o.OrderId,
		o.OrderDate,
		w.WidgetName,
		o.Quantity,
		w.UnitPrice,
		dbo.ndf_gitDemoOrderTotal(w.UnitPrice, o.Quantity) AS OrderTotal,
		o.Notes
	FROM [dbo].[gitDemoOrder] o
	INNER JOIN [dbo].[gitDemoWidget] w ON w.WidgetId = o.WidgetId
	WHERE @OrderId IS NULL
		OR o.OrderId = @OrderId
	ORDER BY o.OrderId


	select 'A new message'
END

GO

