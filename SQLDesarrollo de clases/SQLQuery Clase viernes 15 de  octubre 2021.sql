Use [ Negocio]
create table Agenda(
id_agenda  int primary key identity,
Nombre varchar(20),
Apellido varchar (30),
Domicilio varchar(30),
telefono varchar(11));
/*drop table Agenda*/

insert into Agenda values('Mayerli','Montalvo','Chalatenango','78991290');
select* from Agenda;

create table libros(
id_libro int primary key identity(1,1),
titulo varchar(20),
autor varchar(30),
editorial varchar(15),
fecha date default getdate()
);

insert into libros(titulo, autor, editorial) values('Don Quijote','Claudia','Maravilla');
select * from libros

/*drop table libros;*/
create table articulos(
codigo integer, 
nombre varchar(20),
descripcion varchar(30),
precio float,
cantidad integer
);
select* from articulos

insert into articulos(codigo, nombre, descripcion, precio, cantidad)values(12355, 'Camisa','Blanca', 1.25,12);
insert into articulos(codigo,nombre, descripcion, precio, cantidad ) values (13556, 'Impresora','Epson Stylus', 500,50);
insert into articulos(codigo,nombre, descripcion, precio, cantidad ) values (19546, 'Monitor','Samsung', 800,10);
insert into articulos(codigo,nombre, descripcion, precio, cantidad ) values (19096, 'Teclado','ingles biswal', 90,50);
insert into articulos(codigo,nombre, descripcion, precio, cantidad ) values (19546, 'Monitor','Samsung', 800,10);
insert into articulos(codigo,nombre, descripcion, precio, cantidad ) values (19906, 'Impresora','Epson Stylus C45', 400.80,20);

select  nombre from articulos
where nombre= 'Impresora';

select* from articulos
where nombre= 'Impresora';

select precio from articulos
where precio>400;

select * from articulos
where precio>400;

select * from articulos
where precio<30;
select nombre, descripcion from articulos
where precio != 100;
select nombre, descripcion from articulos
where precio != 800;
create table peliculas(
);