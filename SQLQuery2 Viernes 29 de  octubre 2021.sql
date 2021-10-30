/*Nombre: Mayerli Azucena Montalvo Martinez*/
create database Hospital;

use Hospital;

/*Crear tabla Pacientes*/

create table Pacientes(
NumeroDeHistorialClinico int primary key identity (1,1) not null,
numeroDeSeguridadSocial int unique not null,
NombrePaciente varchar(30) not null,
ApellidoPaciente varchar(30) not null ,
Domicilio varchar(50) not null,
Provincia varchar(50) not null,
codigoPostal varchar(50) not null, 
observacionesPacientes varchar(50) not null,
sexo varchar(50) not null
);

/*select * from Pacientes 
drop table PacientesSexo*/

insert into Pacientes values(456, 'Rigoberto', 'Montalvo','Las mesas','Chalatenango','CP 1301', 'Alergico a anticonvulsivos','Masculino');
insert into Pacientes values(486, 'Ricardo', 'Martinez','El Calvario','Chalatenango','CP 1301', 'Alergico a la penicilina','Masculino');
insert into Pacientes values(476, 'Karla', 'Lopez','Upatoro','Chalatenango','CP 1301', 'Alergica a los analgesicos','Femenino');
insert into Pacientes values(450, 'Lila', 'Perez','La Palma','Chalatenango','CP 1301', 'Alergico a anticonvulsivos','Femenino');
insert into Pacientes values(451, 'Judith', 'Rodrigues','El limon','Chalatenango','CP 1301', 'Alergico a la aspirina','Femenino');
insert into Pacientes values(457, 'Azucena', 'Menjivar','El uno','Chalatenango','CP 1301', 'Alergico a la ibuprofeno','Femenino');
insert into Pacientes values(496, 'Maria', 'Monterrosa','El dos','Chalatenango','CP 1301', 'Alergico al mani','Femenino' );
insert into Pacientes values(406, 'Bella', 'Fuentes','El tres','Chalatenango','CP 1301', 'Alergico al naproxeno','Femenino');
insert into Pacientes values(466, 'Mauro', 'Caballero','Moterredondo','Chalatenango','CP 1301', 'Alergico a los medicamentos de quimioterapia','Masculino');
insert into Pacientes values(426, 'Miguel', 'Castillo','Concepcion ','Chalatenango','CP 1301', 'Alergico a la anestesia','Masculino');
insert into Pacientes values(400, 'Angel', 'Asturias','La sierpe','Chalatenango','CP 1301', 'Alergico a anticonvulsivos','Masculino');

select * from Pacientes;



/*Paciente telefono*/
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


/*create table PacientesSexo(
pSexoId  int identity (1,1) primary key ,
sexo varchar(30) not null);

insert into PacientesSexo values('Masculino');
insert into PacientesSexo values('Femenino');
select * from PacientesSexo*/

drop table Ingresos
create table Ingresos(
procedencia varchar(50) not null,
fechaDeIngreso date not null  ,
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
insert into  Ingresos  values ('Chalatenango','2021-09-08',3,23,'Alergico a la ibuprofeno',6, 5);
insert into  Ingresos  values ('Chalatenango','2021-09-09',1,22,'Alergico a anticonvulsivos',7, 6);
insert into  Ingresos  values ('Chalatenango','2021-09-10',4,10,'Dieta de liquidos',8, 7);
insert into  Ingresos  values ('Chalatenango','2021-09-11',1,16,'Alergico a la ibuprofeno',9, 8);
insert into  Ingresos  values ('Chalatenango','2021-09-14',6,17,'Alergico al naproxeno',10, 9);
insert into  Ingresos  values ('Chalatenango','2021-09-24',1,10,'Alergico a anticonvulsivos',11, 10);
insert into  Ingresos  values ('Chalatenango','2021-08-04',5,30,'Dieta de liquidos',1, 11);
insert into  Ingresos  values ('Chalatenango','2021-09-01',1,31,'Alergico a anticonvulsivos',2, 10);
insert into  Ingresos  values ('Chalatenango','2021-09-02',1,32,'Dieta de liquidos',3, 1);
insert into  Ingresos  values ('Chalatenango','2021-09-03',3,33,'Alergico a la ibuprofeno',4, 2);
insert into  Ingresos  values ('Chalatenango','2021-08-14',1,34,'Alergico a anticonvulsivos',5, 4);
insert into  Ingresos  values ('Chalatenango','2021-08-11',4,35,'Dieta de liquidos',11, 5);
insert into  Ingresos  values ('Chalatenango','2021-09-12',2,36,'Alergico al naproxeno',10, 11);
insert into  Ingresos  values ('Chalatenango','2021-09-15',1,27,'Alergico a anticonvulsivos',7, 3);

select * from Ingresos;

 create table Medicos(
 CodigoIdentificacionMedico int primary Key identity (1,1)not null,
 Nombre varchar(30) not null,
 Apellido varchar(30) not null,
 Especialidad int foreign key (Especialidad) references Especialidades(idEspecialidades) not null,
 NumeroColegiado int unique not null,
 cargo varchar(30) not null
 
 );

 insert into  Medicos  values ('Manuel','Diaz',1, 12345, 'Medico residente ');
 insert into  Medicos  values ('Marcos','Monterrosa',2, 12335, 'Medico responsable ');
 insert into  Medicos  values ('Matias','Montalvo',4, 12385, 'Medico especialista ');
 insert into  Medicos  values ('Carlos','Castillo',3, 12305, 'Medico asistente ');
 insert into  Medicos  values ('Jonathan','Mendez',6, 12315, 'Medico residente ');
 insert into  Medicos  values ('Gabriel','Menjivar',5, 12645, 'Medico asistente ');
 insert into  Medicos  values ('Jose','Sanchez',8, 12845, 'Medico especialista ');
 insert into  Medicos  values ('Adonay','Martinez',7, 10345, 'Medico responsable ');

 select * from Medicos;
 
 /*drop table Especialidades*/
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


/*drop table Pacientes*/