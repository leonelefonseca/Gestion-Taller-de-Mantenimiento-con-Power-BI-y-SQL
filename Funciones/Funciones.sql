/*** FUNCIONES ***/

-- Función para obtener el grupo al cual pertenece el Segmento. Ej 9-12/3, me quedo con el grupo 9-12.

CREATE FUNCTION [dbo].[fnGrupoSegmento]
(
	@input NVARCHAR(50)
)
RETURNS NVARCHAR(50)
AS
BEGIN
    DECLARE @seg VARCHAR(250)

    SET @seg = SUBSTRING( @input, 1, CHARINDEX('/', @input)-1 ) 

    RETURN @seg
END
GO
