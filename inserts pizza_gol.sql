--inserts--

INSERT INTO `pizza_gol`.`clientes` (`DNI`, `nombre`, `apellido`, `telefono`, `email`, `domicilio`) VALUES
(123456789, 'Juan', 'Pérez', 5551234567, 'juan@example.com', 'Calle Principal 123'),
(987654321, 'María', 'Gómez', 5559876543, 'maria@example.com', 'Avenida Central 456'),
(456789123, 'Pedro', 'López', 5554567890, 'pedro@example.com', 'Plaza Mayor 789'),
(321654987, 'Ana', 'Rodríguez', 5553216549, 'ana@example.com', 'Calle Secundaria 456'),
(987123654, 'Luis', 'Martínez', 5559871236, 'luis@example.com', 'Avenida Principal 789'),
(654321987, 'Laura', 'Sánchez', 5556543219, 'laura@example.com', 'Calle Central 456'),
(789456123, 'Carlos', 'Hernández', 5557894561, 'carlos@example.com', 'Avenida Secundaria 123'),
(852369741, 'Sofía', 'García', 5558523697, 'sofia@example.com', 'Plaza Central 789'),
(369741852, 'Miguel', 'Torres', 5553697418, 'miguel@example.com', 'Calle Mayor 123'),
(741852963, 'Lucía', 'Ramírez', 5557418529, 'lucia@example.com', 'Avenida Secundaria 789');

INSERT INTO `pizza_gol`.`empleados` (`DNI`, `nombre`, `apellido`, `numero_contacto`, `salario`, `puesto`, `domicilio`, `email`, `cuil`, `legajo`, `fecha_ingreso`, `emp_mes`, `dias_vacas`) VALUES
(123456789, 'Juan', 'Gómez', 5551234567, 2500, 'Cocinero', 'Calle Principal 123', 'juan@example.com', 20345678901, 'CO123', '2022-01-01', 10, 5),
(987654321, 'María', 'López', 5559876543, 3000, 'Repartidor', 'Avenida Central 456', 'maria@example.com', 20398765432, 'RE456', '2022-02-01', 8, 6),
(456789123, 'Pedro', 'Rodríguez', 5554567890, 2800, 'Cajero', 'Plaza Mayor 789', 'pedro@example.com', 20456789123, 'CA789', '2022-03-01', 9, 4),
(321654987, 'Ana', 'Martínez', 5553216549, 3200, 'Cocinero', 'Calle Secundaria 456', 'ana@example.com', 20321654987, 'CO456', '2022-04-01', 10, 5),
(987123654, 'Luis', 'Sánchez', 5559871236, 2700, 'Repartidor', 'Avenida Principal 789', 'luis@example.com', 20987123654, 'RE789', '2022-05-01', 8, 6),
(654321987, 'Laura', 'Hernández', 5556543219, 3000, 'Cajero', 'Calle Central 456', 'laura@example.com', 20654321987, 'CA456', '2022-06-01', 9, 4),
(789456123, 'Carlos', 'García', 5557894561, 2500, 'Cocinero', 'Avenida Secundaria 123', 'carlos@example.com', 20789456123, 'CO789', '2022-07-01', 10, 5),
(852369741, 'Sofía', 'Torres', 5558523697, 2800, 'Repartidor', 'Plaza Central 789', 'sofia@example.com', 20852369741, 'RE123', '2022-08-01', 8, 6),
(369741852, 'Miguel', 'Ramírez', 5553697418, 3200, 'Cocinero', 'Avenida Acoyte 834', 'miguel912@example.com', 20375832593, 'CO467', '2023-04-09', 7, 10);

INSERT INTO `pizza_gol`.`proveedor` (`num_proveedor`, `id`, `nombre`, `telefono`, `email`, `direccion`) VALUES
(1, 1001, 'Proveedor A', 1134569598, 'proveedor_A@gmail.com', 'Calle Principal 123'),
(2, 1002, 'Proveedor B', 1167235678, 'proveedor_B@gmail.com', 'Avenida Central 456'),
(3, 1003, 'Proveedor C', 1112569823, 'proveedor_C@gmail.com', 'Plaza Mayor 789'),
(4, 1004, 'Proveedor D', 1109342873, 'proveedor_D@gmail.com', 'Calle Secundaria 456'),
(5, 1005, 'Proveedor E', 1186429341, 'proveedor_E@gmail.com', 'Avenida Principal 789'),
(6, 1006, 'Proveedor F', 1189536914, 'proveedor_F@gmail.com', 'Calle Central 456'),
(7, 1007, 'Proveedor G', 1159322597, 'proveedor_G@gmail.com', 'Avenida Secundaria 123'),
(8, 1008, 'Proveedor H', 1182363247, 'proveedor_H@gmail.com', 'Plaza Central 789'),
(9, 1009, 'Proveedor I', 1184742459, 'proveedor_I@gmail.com', 'Calle Mayor 123'),
(10, 1010, 'Proveedor J', 1189342454, 'proveedor_J@gmail.com', 'Avenida Secundaria 789');

INSERT INTO `pizza_gol`.`menu` (`cod_comida`, `nombre`, `precio`) VALUES
(1, 'Pizza Margarita', '12.99'),
(2, 'Pizza Pepperoni', '14.99'),
(3, 'Pizza Hawaiana', '13.99'),
(4, 'Pizza Vegetariana', '12.99'),
(5, 'Pizza Barbacoa', '15.99'),
(6, 'Pizza Cuatro Quesos', '13.99'),
(7, 'Pizza Mexicana', '14.99'),
(8, 'Pizza Mediterránea', '13.99'),
(9, 'Pizza de Pollo BBQ', '15.99'),
(10, 'Pizza Diavola', '14.99');

INSERT INTO `pizza_gol`.`recetas` (`cod_receta`, `nombre`, `descripcion`, `cod_comida`) VALUES
(1, 'Receta Margarita', 'Receta clásica de pizza Margarita con salsa de tomate, queso mozzarella y albahaca fresca.', 1),
(2, 'Receta Pepperoni', 'Receta deliciosa de pizza Pepperoni con salsa de tomate, queso mozzarella y rodajas de pepperoni.', 2),
(3, 'Receta Hawaiana', 'Receta exquisita de pizza Hawaiana con salsa de tomate, queso mozzarella, jamón y piña.', 3),
(4, 'Receta Vegetariana', 'Receta sabrosa de pizza Vegetariana con salsa de tomate, queso mozzarella, champiñones, pimientos y cebolla.', 4),
(5, 'Receta Barbacoa', 'Receta deliciosa de pizza Barbacoa con salsa barbacoa, queso mozzarella, pollo a la parrilla y cebolla.', 5),
(6, 'Receta Cuatro Quesos', 'Receta exquisita de pizza Cuatro Quesos con salsa de tomate, queso mozzarella, queso cheddar, queso azul y queso de cabra.', 6),
(7, 'Receta Mexicana', 'Receta sabrosa de pizza Mexicana con salsa de tomate, queso mozzarella, carne molida, jalapeños y guacamole.', 7),
(8, 'Receta Mediterránea', 'Receta deliciosa de pizza Mediterránea con salsa de tomate, queso mozzarella, aceitunas negras, tomates cherry y albahaca.', 8),
(9, 'Receta Pollo BBQ', 'Receta exquisita de pizza de Pollo BBQ con salsa barbacoa, queso mozzarella, pollo a la parrilla y cebolla caramelizada.', 9),
(10, 'Receta Diavola', 'Receta picante de pizza Diavola con salsa de tomate, queso mozzarella, pepperoni, salami y chiles rojos.', 10);

INSERT INTO `pizza_gol`.`inventario` (`num_producto`, `id`, `nombre`, `stock`, `categoria`, `num_proveedor`, `cod_receta`) VALUES
(1, 10001, 'Harina', 100, 'Ingredientes', 1, 1),
(2, 10002, 'Queso Mozzarella', 50, 'Ingredientes', 2, 1),
(3, 10003, 'Salsa de Tomate', 75, 'Ingredientes', 3, 1),
(4, 10004, 'Pepperoni', 30, 'Ingredientes', 4, 2),
(5, 10005, 'Jamón', 40, 'Ingredientes', 5, 3),
(6, 10006, 'Piña', 20, 'Ingredientes', 6, 3),
(7, 10007, 'Champiñones', 15, 'Ingredientes', 7, 4),
(8, 10008, 'Salsa Barbacoa', 60, 'Ingredientes', 8, 5),
(9, 10009, 'Pollo a la Parrilla', 35, 'Ingredientes', 9, 5),
(10, 10010, 'Queso Cheddar', 25, 'Ingredientes', 10, 6);

INSERT INTO pizza_gol.pedidos (num_pedido, cantidad, codigo_comida, dni_cliente, empleado) VALUES
(1, 2.5, 1001, 2001, 3001),
(2, 1.75, 1002, 2002, 3002),
(3, 3, 1003, 2003, 3003),
(4, 2, 1004, 2004, 3004),
(5, 1.5, 1005, 2005, 3005),
(6, 2.25, 1006, 2006, 3006),
(7, 1.25, 1007, 2007, 3007),
(8, 2.75, 1008, 2008, 3008),
(9, 1.75, 1009, 2009, 3009),
(10, 3.5, 1010, 2010, 3010);

INSERT INTO `pizza_gol`.`pago` (`cog_pago`, `tipo_pago`, `num_pedido`) VALUES
(1, 'Efectivo', 1),
(2, 'Tarjeta', 2),
(3, 'Efectivo', 3),
(4, 'Tarjeta', 4),
(5, 'Efectivo', 5),
(6, 'Tarjeta', 6),
(7, 'Efectivo', 7),
(8, 'Tarjeta', 8),
(9, 'Efectivo', 9),
(10, 'Tarjeta', 10);

INSERT INTO `pizza_gol`.`factura` (`num_fac`, `hora_cobro`, `IVA`, `monto_total`, `cod_pago`) VALUES
(1, '2024-05-03 10:30:00', 0.18, 25.50, 1),
(2, '2024-05-03 11:15:00', 0.18, 35.75, 2),
(3, '2024-05-03 12:00:00', 0.18, 30.60, 3),
(4, '2024-05-03 12:45:00', 0.18, 42.30, 4),
(5, '2024-05-03 13:30:00', 0.18, 27.90, 5),
(6, '2024-05-03 14:15:00', 0.18, 38.25, 6),
(7, '2024-05-03 15:00:00', 0.18, 32.40, 7),
(8, '2024-05-03 15:45:00', 0.18, 44.10, 8),
(9, '2024-05-03 16:30:00', 0.18, 35.75, 9),
(10, '2024-05-03 17:15:00', 0.18, 47.40, 10);

INSERT INTO `pizza_gol`.`puntaje` (`num_puntaje`, `asistencias`, `faltas`, `tarde`, `puntaje`, `empleado`) VALUES
(1, 20, 2, 3, 85, 3001),
(2, 19, 1, 0, 95, 3002),
(3, 20, 0, 1, 98, 3003),
(4, 20, 0, 0, 100, 3004),
(5, 18, 3, 2, 80, 3005),
(6, 20, 1, 0, 92, 3006),
(7, 19, 0, 0, 97, 3007),
(8, 20, 0, 1, 99, 3008),
(9, 20, 1, 0, 93, 3009),
(10, 20, 0, 0, 100, 3010);

INSERT INTO `pizza_gol`.`promociones` (`num_promo`, `nombre`, `precio`, `descripcion`, `cod_comida`) VALUES
(1, 'Promo 1', 12.99, 'Pizza mediana + refresco', 1001),
(2, 'Promo 2', 15.99, 'Pizza grande + alitas', 1002),
(3, 'Promo 3', 10.99, 'Pizza personal + ensalada', 1003),
(4, 'Promo 4', 18.99, 'Pizza familiar + papas fritas', 1004),
(5, 'Promo 5', 14.99, 'Pizza mediana + pan de ajo', 1005),
(6, 'Promo 6', 17.99, 'Pizza grande + palitos de queso', 1006),
(7, 'Promo 7', 13.99, 'Pizza personal + helado', 1007),
(8, 'Promo 8', 20.99, 'Pizza familiar + brownie', 1008),
(9, 'Promo 9', 11.99, 'Pizza mediana + gaseosa', 1009),
(10, 'Promo 10', 16.99, 'Pizza grande + cerveza', 1010);

INSERT INTO `pizza_gol`.`pedido_proveedores` (`num_pedido`, `fecha`, `total`, `num_proveedor`) VALUES
(1, '2024-05-03 10:30:00', 150.50, 1001),
(2, '2024-05-03 11:15:00', 200.75, 1002),
(3, '2024-05-03 12:00:00', 175.30, 1003),
(4, '2024-05-03 12:45:00', 210.50, 1004),
(5, '2024-05-03 13:30:00', 180.90, 1005),
(6, '2024-05-03 14:15:00', 195.25, 1006),
(7, '2024-05-03 15:00:00', 160.40, 1007),
(8, '2024-05-03 15:45:00', 220.10, 1008),
(9, '2024-05-03 16:30:00', 190.75, 1009),
(10, '2024-05-03 17:15:00', 230.40, 1010);

INSERT INTO `pizza_gol`.`factura_proveedor` (`num_fac`, `hora_cobro`, `IVA`, `monto_total`, `num_pedido`) VALUES
(1, '2024-05-03 10:30:00', 0.18, 180.50, 1),
(2, '2024-05-03 11:15:00', 0.18, 240.75, 2),
(3, '2024-05-03 12:00:00', 0.18, 210.30, 3),
(4, '2024-05-03 12:45:00', 0.18, 250.50, 4),
(5, '2024-05-03 13:30:00', 0.18, 216.90, 5),
(6, '2024-05-03 14:15:00', 0.18, 232.25, 6),
(7, '2024-05-03 15:00:00', 0.18, 192.40, 7),
(8, '2024-05-03 15:45:00', 0.18, 264.10, 8),
(9, '2024-05-03 16:30:00', 0.18, 228.75, 9),
(10, '2024-05-03 17:15:00', 0.18, 276.40, 10);
