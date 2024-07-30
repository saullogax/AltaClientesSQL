USE [altaclientes]
GO

/****** Object:  StoredProcedure [dbo].[proc_BuscarDatosCliente]    Script Date: 29/07/2024 04:59:57 p. m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =======================================================
-- Author:		Saul Guillemo Lopez Gaxiola
-- Create date: 14/06/2021
-- Description:	Procedimiento que devuelve datos del cliente
-- =======================================================

ALTER PROCEDURE [dbo].[proc_ultimoCodigo]	
	
WITH  EXECUTE AS OWNER
AS
BEGIN
    BEGIN
        SELECT MAX(num_cliente) AS numeroCliente
        FROM altaclientes..cat_clientes(NOLOCK) 
        
    END
END
GO
