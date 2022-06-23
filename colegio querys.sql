create database colegio;
show databases;
use colegio;

create table director (
rut int not null,
nombre char(25),
direccion varchar(45),
edad int not null,
correo_electronico varchar(45),
numero_de_celular int not null,
PRIMARY KEY (id)
);

create table los_trabajadores (
rut int not null,
nombre char(25),
correo_electronico varchar(45),
direccion varchar(45),
numero_de_celular int not null,
Sueldo int not null,															
PRIMARY KEY (id),
foreign key (los_trabajadores) references trabajadores(id)
);

create table sala_de_computacion (
Ubicacion_numerica varchar(45),
Marca char(25),
Torres varchar(45),
Monitores varchar(45),
Escritorio varchar(45),
sillas int not null,																
PRIMARY KEY (id),
foreign key (sala_de_computacion) references computacion(id)
);

rename table los_trabajadores to trabajadores;
rename table sala_de_computacion to computacion;

insert into trabajadores (nombre, apellido, numero_de_celular, sueldo)
values 
	('Mariana','Cortez','+56 9 4576 9873','$CLP 15.000'),
    ('Sofia','Perez','+56 9 3845 7690', '$CLP 15.000'),
	('Antonia','Estela','+56 9 3456 9012','$CLP 15.000'),
    ('Patricia','Maldonado','+56 9 3418 8609','$CLP 15.000');
    
insert into computacion (Marca, Ubicacion_numerica, Torre, Color)
values
	('Windows 10', 1,'Si', 'Negro'),
    ('Linux', 20,'Si', 'Negro'),
    ('Mac Os', 5,'No', 'Blanco'),
    ('MS-DOS', 17,'No', 'Blanco');

select * from computacion;

update computacion set Marca ='Windows 11' where id= 1;

delete from computacion where Ubicacion_numerica = 17;

delete from computacion where marca = 'MS-DOS';

select * from computacion limit 2;

select * from computacion where marca like '%os';

select nombre, apellido from trabajadores;