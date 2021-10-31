use Hospital


/*--------------------Inner join de las tablas Pacientes, PacientesSexo, PacienteTelefono e ingresos -------------------------*/

select m.NombrePaciente,m.ApellidoPaciente, d.sexo, t.telefono1, t.telefono2, t.telefono3, i.fechaDeIngreso
from Pacientes as m
inner join PacientesSexo as d
on m.NumeroDeHistorialClinico =pSexoId  
inner join PacienteTelefono as t
on t.FK_NumeroDeHistorialClinico= m.NumeroDeHistorialClinico
inner join Ingresos as i 
on i.FK_NumeroDeHistorialClinico= m.NumeroDeHistorialClinico;

/*-----------------------------Inner join de Medicos, Especialidades e InformacionMedico--------------------------*/

select a.Nombre, a.Apellido, a.NumeroColegiado, e.Especialidad, i.Cargo
from Medicos as a
inner join Especialidades as e
on e.idEspecialidades = a.CodigoIdentificacionMedico 
inner join InformacionMedico as i
on i.Codigo= a.CodigoIdentificacionMedico;

/*--------------Consultas vistas en clase------------------------*/

/*Cuantos datos de id pacientes hay insertados en la tabla */
select count (NumeroDeHistorialClinico)
from Pacientes;
select * from Pacientes;

/*La letra con la que comience el nombre */
select* from Pacientes
where NombrePaciente like 'M%';

/*La letra con la que termina el nombre*/
select * from Pacientes
where NombrePaciente like '%a';


/*Cuando el nombre tiene la silaba ce en cualquier parte de la palabra*/
select* from Pacientes
where NombrePaciente like '%ce%'; 


 /*No muestra el rango de id  que esta entre 2 y 4 */
 select* from Medicos
 where  CodigoIdentificacionMedico not between 2 and 4;


 
 /*Nombrar de manera distinta a una columna*/
 select Nombre , CodigoIdentificacionMedico as [idMedico]
 from Medicos;


 /*Cuantos datos de id Medicos  hay insertados en la tabla */
select count (CodigoIdentificacionMedico)
from Medicos;
Select * from Medicos;


