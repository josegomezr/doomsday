insert into proveedor(nombre_proveedor) values ("Sensi");
insert into proveedor(nombre_proveedor) values ("La china");
insert into proveedor(nombre_proveedor) values ("Farmatodo");
insert into proveedor(nombre_proveedor) values ("Panaderia");
insert into proveedor(nombre_proveedor) values ("Economar");

insert into categoria(nombre_categoria) values ("Comida");
insert into categoria(nombre_categoria) values ("Bebida");
insert into categoria(nombre_categoria) values ("Macotas");
insert into categoria(nombre_categoria) values ("Juguetes");

insert into producto(nombre_producto, categoria_producto) values ("cafe", 2);
insert into producto(nombre_producto, categoria_producto) values ("pastelito", 1);
insert into producto(nombre_producto, categoria_producto) values ("perrarina", 3);
insert into producto(nombre_producto, categoria_producto) values ("gameboy", 4);
insert into producto(nombre_producto, categoria_producto) values ("pizza", 1);
insert into producto(nombre_producto, categoria_producto) values ("frescolita", 2);

insert into proveedor_producto(pp_proveedor, pp_producto) values (1,1);
insert into proveedor_producto(pp_proveedor, pp_producto) values (1,2);
insert into proveedor_producto(pp_proveedor, pp_producto) values (2,3);
insert into proveedor_producto(pp_proveedor, pp_producto) values (2,4);
insert into proveedor_producto(pp_proveedor, pp_producto) values (2,6);
insert into proveedor_producto(pp_proveedor, pp_producto) values (3,1);
insert into proveedor_producto(pp_proveedor, pp_producto) values (3,4);
insert into proveedor_producto(pp_proveedor, pp_producto) values (3,6);
insert into proveedor_producto(pp_proveedor, pp_producto) values (4,1);
insert into proveedor_producto(pp_proveedor, pp_producto) values (4,2);
insert into proveedor_producto(pp_proveedor, pp_producto) values (4,5);
insert into proveedor_producto(pp_proveedor, pp_producto) values (5,1);
insert into proveedor_producto(pp_proveedor, pp_producto) values (5,3);
insert into proveedor_producto(pp_proveedor, pp_producto) values (5,4);
insert into proveedor_producto(pp_proveedor, pp_producto) values (5,6);


insert into comprador(nombre_comprador) values ("Gordo");
insert into comprador(nombre_comprador) values ("Chester");
insert into comprador(nombre_comprador) values ("Jesus");
insert into comprador(nombre_comprador) values ("Carlos");

insert into orden_requisicion(almacen) values(1);
insert into orden_requisicion(almacen) values(1);
insert into orden_requisicion(almacen) values(1);

insert into orden_requisicion_contenido(orden_requisicion, proveedor, producto, cantidad) values (1, 1, 1, 100);
insert into orden_requisicion_contenido(orden_requisicion, proveedor, producto, cantidad) values (1, 1, 2, 100);
insert into orden_requisicion_contenido(orden_requisicion, proveedor, producto, cantidad) values (2, 5, 1, 50);
insert into orden_requisicion_contenido(orden_requisicion, proveedor, producto, cantidad) values (2, 5, 3, 100);
insert into orden_requisicion_contenido(orden_requisicion, proveedor, producto, cantidad) values (2, 5, 4, 50);
insert into orden_requisicion_contenido(orden_requisicion, proveedor, producto, cantidad) values (3, 4, 5, 50);


insert into orden_servicio(comprador) values(1);
insert into orden_servicio(comprador) values(2);
insert into orden_servicio(comprador) values(3);
insert into orden_servicio(comprador) values(4);

**insert into orden_servicio_contenido(orden_servicio, almacen, producto, cantidad) values (1, 1, 1, 5); 
insert into orden_servicio_contenido(orden_servicio, almacen, producto, cantidad) values (1, 1, 2, 5); 
insert into orden_servicio_contenido(orden_servicio, almacen, producto, cantidad) values (2, 1, 3, 1); 
insert into orden_servicio_contenido(orden_servicio, almacen, producto, cantidad) values (3, 1, 5, 2); 
insert into orden_servicio_contenido(orden_servicio, almacen, producto, cantidad) values (4, 1, 1, 3);  
insert into orden_servicio_contenido(orden_servicio, almacen, producto, cantidad) values (4, 1, 4, 1); 