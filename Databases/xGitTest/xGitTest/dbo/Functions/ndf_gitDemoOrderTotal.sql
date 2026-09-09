
CREATE   FUNCTION [dbo].[ndf_gitDemoOrderTotal]
(
	@unitPrice DECIMAL(9, 2),
	@quantity INT
)
RETURNS DECIMAL(11, 2)
AS
BEGIN
	RETURN ISNULL(@unitPrice, 0) * ISNULL(@quantity, 0)
END

GO

