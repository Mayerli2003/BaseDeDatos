use EmpresaBD

create table proveedor(

proveedor_id int primary key identity(1,1)not null,
nombreProveedor varchar (50) not null unique);

insert into proveedor(nombreProveedor)
values('Lactios S.A');
insert into Proveedor(nombreProveedor)
values('Distribuidora');



create table Categoria(
categoria_id int primary key identity(1,1) not null,
nombrecategoria varchar(50) not null unique);

insert into Categoria(nombreCategoria)
values('Perecedero');
insert into Categoria(nombreCategoria)
values('Barroteria');



create table Productos(
productoId int primary key identity(1,1)not null,
nombreProducto varchar(50) not null unique,
proveedorId int foreign key references proveedor(proveedor_id),
categoriaId int foreign key references Categoria(categoria_id),
unidad varchar(50),
precio money
);
insert into Productos(nombreProducto,proveedorId,categoriaId,unidad,precio)
values('Galletas',1,1,'10 paq',1.8);
insert into Productos(nombreProducto,proveedorId,categoriaId,unidad,precio)
values('yogurt',1,1,'12 oz',1.9);
insert into Productos(nombreProducto,proveedorId,categoriaId,unidad,precio)
values('Soda',1,2,'300 ml',1.0);
insert into Productos(nombreProducto,proveedorId,categoriaId,unidad,precio)
values('Queso',2,2,'1 libra',2.2);
insert into Productos(nombreProducto,proveedorId,categoriaId,unidad,precio)
values('Sopa',2,2,'5.3 oz',21);
select sum (precio)
from Productos;
/*promedio*/
select avg (precio)
from Productos;
/*Cuantos datos de id productos hay insertados en la tabla */
select count (productoId)
from Productos;
select * from Productos;
/*La letra con la que comience*/
select* from Productos
where nombreProducto like 'y%';
/*La letra con la que termina*/
select * from Productos
where nombreProducto like '%a';
/*cuando el nombre tiene la silaba so en cualquier parte de la palabra*/
select* from Productos
where nombreProducto like '%so%'; 
/*Segunda letra de la palabra*/
select * from Productos
where nombreProducto like '_o%';
/*El caracter s que otros caracteres despues de ella*/
select * from Productos
where nombreProducto like's__%';
/*Monstrando los caracteres qu buscando la palbra la cual las tenga */
select * from Productos
where nombreProducto like 'qu%';
select * from Productos
where nombreProducto like  'ga%';
/* So en cualquier posicion */
select * from Productos 
 where nombreProducto like '%so%';
 /*Deja solo en incognita la primera letra*/
 select * from Productos
 where nombreProducto like '_opa';
 /*Dejando en incognita dos caracteres*/
 select * from Productos
 where nombreProducto like 'S_p_';
 /*Que comienzen con las letras dadas*/
 select * from Productos
 where nombreProducto like '[SQG]%';
 /**/
 select * from Productos
 where nombreProducto like '[a-g]%';
 /*Diferente a s y g como letra de inicio*/
 select * from Productos
 where nombreProducto like '[^sg]%';
 /*Seleccionar donde nombre producto sea yogurt y sopa*/
 select * from Productos
 where nombreProducto in ('Sopa','yogurt');
 /*Mostrar todo menos queso y sopa */
 select* from Productos
 where nombreProducto  not in ('Sopa ','Queso');
 /* Consulta anidada*/
 select * from Productos
 where nombreProducto in (select LastName from Persons );

 select * from Persons;
 /*El precio en un rango de 10 a 22*/

 select * from Productos
 where precio between 10 and 22;
  select * from Productos
 where precio between 1.5 and 10;
 /*No muestra el rango de precios de 1.5 a 10 */
 select* from Productos
 where  precio not between 1.5 and 10;
 /*Valores de 2 y 10  que no sea del id 1*/
 select * from Productos
 where precio between 2 and 10 
 and  categoriaId not in (1);
 select * from Productos;
 /*Usar dos los campos que se necesiten en la tabla*/
 select nombreProducto , unidad as [proveedor]
 from Productos;
 /*as renombrar una tabla */
 /*select nombreProducto , unidad + ' , ' + categoriaId as numero
 from Productos;*/
 select * from Productos 
 select nombreProducto, unidad
 from Productos as recursos;

 select nombreProducto , unidad
 from Productos as recursos
 where  recursos.nombreProducto= 'Mayerli ' and recursos.unidad='20 paq';





