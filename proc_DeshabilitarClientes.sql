USE prueba

GO
-- =======================================================
-- Author:		Saul Guillemo Lopez Gaxiola
-- Create date: 14/06/2021
-- Description:	Procedimiento que modifica estatus de cliente
-- =======================================================

CREATE PROCEDURE proc_DeshabilitarClientes
	@codigo INT
   
	
WITH  EXECUTE AS OWNER
AS
BEGIN
 UPDATE cat_clientes 
 SET  opc_activo = 0
 WHERE num_cliente = @codigo
    
END
