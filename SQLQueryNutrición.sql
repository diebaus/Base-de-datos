INSERT INTO [Nutrición].[dbo].[CLIENTES](nombreCliente, apellidosCliente, dniCliente, telefonoCliente, correoElectronicoCliente, direccionCliente) VALUES ('Juana','Arco Flecha','86375902J','928205409','juanaarco@hotmail.com','AV Fuego 1'),('José','Pérez Lorenzo','34981445L','968933586','joseperezlorenzo@gmail.com','Paseo Tranquilo 98');
SELECT * FROM CLIENTES;

INSERT INTO [Nutrición].[dbo].[EMPLEADOS](fechaIngresoEmpleado, domicilioEmpleado, telefonoEmpleado, apellidosEmpleado,nombreEmpleado, dniEmpleado, salarioEmpleado, idEmpleadoJefeFK) VALUES ('2015/10/16','Calle Pequeña 44','664890098','Porras Lorca','Javier','22399855L','1500.00','1'),('2015/09/04','AV Grande 40','669686766','Losco García','Antonio','44837615Y','1600.00','2'); 
SELECT * FROM EMPLEADOS;

INSERT INTO [Nutrición].[dbo].[ORDENESCOMPRA](totalOrdenCompra, subtotalOrdenCompra, ivaOrdenCompra, fechaOrdenCompra, idClienteFK, idEmpleadoFK) VALUES ('525.50','415.15','21','2021/02/12','1','1'),('280.80','221.83','21','2021/02/11','2','2')
SELECT * FROM ORDENESCOMPRA;

INSERT INTO [Nutrición].[dbo].[PRODUCTOS](descripcionProducto, precioProducto, stockProducto) VALUES ('Creatina Creapure 500gr','12.00','20'),('Proteína Whey 2kg','25.00','40'),('Barritas Energéticas 25 gr','2.00','30');
SELECT * FROM PRODUCTOS;

INSERT INTO [Nutrición].[dbo].[VENDEDOR](primaVendedor, idEmpleadoFK) VALUES ('80.00','1'),('100.00','1');
SELECT * FROM VENDEDOR;

INSERT INTO [Nutrición].[dbo].[PROMOTOR](carteraClientes, idEmpleadoFK) VALUES ('Juana Arco Flecha','2'),('José Pérez Lorenzo','2');
SELECT * FROM PROMOTOR;

INSERT INTO [Nutrición].[dbo].[LINEAORDENESCOMPRA](cantidad, idOrdenCompraFK, idProductoFK) VALUES ('5','1','1'),('2','10','2');
SELECT * FROM LINEAORDENESCOMPRA;
