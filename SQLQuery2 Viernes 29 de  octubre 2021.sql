/*Nombre: Mayerli Azucena Montalvo Martinez*/
create database Hospital;

use Hospital;

/*----------------------------Crear tabla Pacientes-----------------------------*/

create table Pacientes(
NumeroDeHistorialClinico int primary key identity (1,1) not null,
numeroDeSeguridadSocial int unique not null,
NombrePaciente varchar(30) not null,
ApellidoPaciente varchar(30) not null ,
Domicilio varchar(50) not null,
Provincia varchar(50) not null,
codigoPostal varchar(50) not null, 
observacionesPacientes varchar(50) not null,
fk_sexo int foreign key(fk_sexo) references PacientesSexo (pSexoId) not null,

);

/*select * from Pacientes 
drop table PacientesSexo*/
/*drop table PacienteTelefono*/


insert into Pacientes values(456, 'Rigoberto', 'Montalvo','Las mesas','Chalatenango','CP 1301', 'Alergico a anticonvulsivos',1);
insert into Pacientes values(486, 'Ricardo', 'Martinez','El Calvario','Chalatenango','CP 1301', 'Alergico a la penicilina',2);
insert into Pacientes values(476, 'Karla', 'Lopez','Upatoro','Chalatenango','CP 1301', 'Alergica a los analgesicos',3);
insert into Pacientes values(450, 'Lila', 'Perez','La Palma','Chalatenango','CP 1301', 'Alergico a anticonvulsivos',4);
insert into Pacientes values(451, 'Judith', 'Rodrigues','El limon','Chalatenango','CP 1301', 'Alergico a la aspirina',5);
insert into Pacientes values(457, 'Azucena', 'Menjivar','El uno','Chalatenango','CP 1301', 'Alergico a la ibuprofeno',6);
insert into Pacientes values(496, 'Maria', 'Monterrosa','El dos','Chalatenango','CP 1301', 'Alergico al mani',7);
insert into Pacientes values(406, 'Bella', 'Fuentes','El tres','Chalatenango','CP 1301', 'Alergico al naproxeno',8);
insert into Pacientes values(466, 'Mauro', 'Caballero','Moterredondo','Chalatenango','CP 1301', 'Alergico a los medicamentos de quimioterapia',9);
insert into Pacientes values(426, 'Miguel', 'Castillo','Concepcion ','Chalatenango','CP 1301', 'Alergico a la anestesia',10);
insert into Pacientes values(400, 'Angel', 'Asturias','La sierpe','Chalatenango','CP 1301', 'Alergico a anticonvulsivos',11);
insert into Pacientes values(300, 'Luis', 'Asturias','La sierpe','Chalatenango','CP 1301', 'Alergico a anticonvulsivos',12);
insert into Pacientes values(200, 'Jorge', 'Asturias','La colonias','Chalatenango','CP 1301', 'Alergico a anticonvulsivos',13);
insert into Pacientes values(100, 'Rene', 'Asturias','El amatillo','Chalatenango','CP 1301', 'Alergico a analgesicos',14);
insert into Pacientes values(410, 'Manuel', 'Asturias','Concepcion','Chalatenango','CP 1301', 'Alergico a anestesia',15);
insert into Pacientes values(420, 'Ernesto', 'Asturias','La nueva','Chalatenango','CP 1301', 'Alergico a anticonvulsivos',16);
insert into Pacientes values(430, 'Daniel', 'Asturias','San Fernando','Chalatenango','CP 1301', 'Alergico a anticonvulsivos',17);

select * from Pacientes;

/*-----------------------------Crear la tabla Pacientes sexo---------------------------*/
create table PacientesSexo(
pSexoId  int identity (1,1) primary key ,
sexo varchar(30) not null);

insert into PacientesSexo values('Masculino');
insert into PacientesSexo values('Masculino');
insert into PacientesSexo values('Femenino');
insert into PacientesSexo values('Femenino');
insert into PacientesSexo values('Femenino');
insert into PacientesSexo values('Femenino');
insert into PacientesSexo values('Femenino');
insert into PacientesSexo values('Femenino');
insert into PacientesSexo values('Masculino');
insert into PacientesSexo values('Masculino');
insert into PacientesSexo values('Masculino');
insert into PacientesSexo values('Masculino');
insert into PacientesSexo values('Masculino');
insert into PacientesSexo values('Masculino');
insert into PacientesSexo values('Masculino');
insert into PacientesSexo values('Masculino');
insert into PacientesSexo values('Masculino');
insert into PacientesSexo values('Masculino');
select * from PacientesSexo

drop table PacientesSexo

/*------------------------------Tabla Paciente telefono----------------------------*/
create table PacienteTelefono(
FK_NumeroDeHistorialClinico int foreign key(FK_NumeroDeHistorialClinico) references Pacientes (NumeroDeHistorialClinico) primary key not null,
telefono1 varchar(30) not null,
telefono2 Varchar (30) null,
telefono3 varchar (30) null);

insert into  PacienteTelefono values (1,'409-5007','399-9371', '809-4199');
insert into  PacienteTelefono values(2,'409-5008','399-9391', '409-0199');
insert into  PacienteTelefono values(3,'409-5107','399-9381', '409-1199');
insert into  PacienteTelefono values(4,'409-5009','399-9771', '449-4199');
insert into  PacienteTelefono values(5,'409-5207','399-9071', '440-4199');
insert into  PacienteTelefono values(6,'409-5000','399-0371', '401-4199');
insert into  PacienteTelefono values(7,'409-5117','309-9371', '899-4199');
insert into  PacienteTelefono values(8,'409-5127','399-9371', '409-0000');
insert into  PacienteTelefono values(9,'409-5147','399-0371', '599-4199');
insert into  PacienteTelefono values(10,'409-5997','399-9371', '137-4199');
insert into  PacienteTelefono values(11,'809-5007','709-9371', '430-4199');

select * from PacienteTelefono;
drop table PacienteTelefono

/*-------------------------Tabla ingresos que conecta a medicos y pacientes------------------------------*/

/*drop table Ingresos*/

create table Ingresos(
procedencia varchar(50) not null,
fechaDeIngreso date not null primary key  ,
numeroDePlanta int not null,
numeroDeCama int  not null ,
observaciones  varchar(50) not null,
FK_NumeroDeHistorialClinico int foreign key(FK_NumeroDeHistorialClinico) references Pacientes (NumeroDeHistorialClinico) not null,
FK_CodigoIdentificacionMedico int foreign key(FK_CodigoIdentificacionMedico) references Medicos (CodigoIdentificacionMedico) not null,

);
insert into  Ingresos  values ('Chalatenango','2021-09-04',1,23,'Dieta de liquidos',1, 1);
insert into  Ingresos  values ('Chalatenango','2021-09-05',2,19,'Alergia a la anestesia',2, 2);
insert into  Ingresos  values ('Chalatenango','2021-09-06',3,21,'Alergico a anticonvulsivos',3, 3);
insert into  Ingresos  values ('Chalatenango','2021-09-07',1,20,'Dieta de liquidos',4, 4);
insert into  Ingresos  values ('Chalatenango','2021-09-08',3,23,'Alergico a la ibuprofeno',5, 5);
insert into  Ingresos  values ('Chalatenango','2021-09-09',1,22,'Alergico a anticonvulsivos',6, 6);
insert into  Ingresos  values ('Chalatenango','2021-09-10',4,10,'Dieta de liquidos',7, 7);
insert into  Ingresos  values ('Chalatenango','2021-09-11',1,16,'Alergico a la ibuprofeno',8, 8);
insert into  Ingresos  values ('Chalatenango','2021-09-14',6,17,'Alergico al naproxeno',9, 9);
insert into  Ingresos  values ('Chalatenango','2021-09-24',1,10,'Alergico a anticonvulsivos',10, 10);
insert into  Ingresos  values ('Chalatenango','2021-08-04',5,30,'Dieta de liquidos',11, 11);
insert into  Ingresos  values ('Chalatenango','2021-09-01',1,31,'Alergico a anticonvulsivos',12, 10);
insert into  Ingresos  values ('Chalatenango','2021-09-02',1,32,'Dieta de liquidos',13, 1);
insert into  Ingresos  values ('Chalatenango','2021-09-03',3,33,'Alergico a la ibuprofeno',14, 2);
insert into  Ingresos  values ('Chalatenango','2021-08-14',1,34,'Alergico a anticonvulsivos',15, 4);
insert into  Ingresos  values ('Chalatenango','2021-08-11',4,35,'Dieta de liquidos',16, 5);
insert into  Ingresos  values ('Chalatenango','2021-09-12',2,36,'Alergico al naproxeno',17, 11);


select * from Ingresos;

/*--------------------------------Tabla medicos--------------------------------*/


 create table Medicos(
 CodigoIdentificacionMedico int primary Key identity (1,1)not null,
 Nombre varchar(30) not null,
 Apellido varchar(30) not null,
 NumeroColegiado int unique not null,
 fk_Especialidad int foreign key (fk_Especialidad) references Especialidades(idEspecialidades) not null,
 fk_Cargo int foreign key (fk_Cargo) references  InformacionMedico (Codigo) not null,
 
 );

 insert into  Medicos  values ('Manuel','Diaz', 12345,1,2);
 insert into  Medicos  values ('Marcos','Monterrosa', 12335,2,1);
 insert into  Medicos  values ('Matias','Montalvo', 12385,3,3);
 insert into  Medicos  values ('Carlos','Castillo', 12305,4,4);
 insert into  Medicos  values ('Jonathan','Mendez', 12315,5,1);
 insert into  Medicos  values ('Gabriel','Menjivar', 12645,6,2);
 insert into  Medicos  values ('Jose','Sanchez', 12845,7,3);
 insert into  Medicos  values ('Adonay','Martinez', 10345,8,4);
 
 insert into  Medicos  values ('Ricardo','Diaz', 10005,1,2);
 insert into  Medicos  values ('Juan','Monterrosa', 22335,2,1);
 insert into  Medicos  values ('Adiel','Montalvo', 32385,3,3);
 insert into  Medicos  values ('Dion ','Castillo', 42305,4,4);
 insert into  Medicos  values ('Mauro','Mendez', 52315,5,1);
 insert into  Medicos  values ('Otoniel','Menjivar', 62645,6,2);
 insert into  Medicos  values ('Jose','Sanchez', 72845,7,3);
 insert into  Medicos  values ('Adonay','Martinez', 80345,8,4);
 insert into  Medicos  values ('Marcos','Mendez', 90345,8,4);

 select * from Medicos;
 drop table Medicos
 
 /*--------------------------------------Table Especialidades---------------------------------*/
 create table Especialidades(
 idEspecialidades int primary key identity(1,1),
 Especialidad varchar(50) not null
);
insert into  Especialidades values ('Pediatria');
insert into  Especialidades values ('Psquiatria');
insert into  Especialidades values ('Cardiologia');
insert into  Especialidades values ('Endocrinologia');
insert into  Especialidades values ('Hematologia');
insert into  Especialidades values ('Neumologia');
insert into  Especialidades values ('Neurocirugia');
insert into  Especialidades values ('Urologia');

select *  from Especialidades
drop table Especialidades

/*-------------------------------------Tabla InformacionMedico-------------------------------------*/

create table InformacionMedico(
Codigo int primary Key identity(1,1),
Cargo varchar(50) not null);

insert into InformacionMedico values ('Medico residente ');
insert into InformacionMedico values ('Medico responsable ');
insert into InformacionMedico values ('Medico especialista ');
insert into InformacionMedico values ('Medico asistente ');

select * from InformacionMedico;
drop table InformacionMedico