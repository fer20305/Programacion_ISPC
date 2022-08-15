create database examen_final;
use examen_final;

create table dueno
(
dni int not null,
nombre varchar(25) not null,
apellido varchar(25) not null,
telefono bigint not null,
direccion varchar (50) not null,
constraint pk_dd primary key (dni)
);

create table perro
(
id_perro int not null auto_increment,
nombre varchar(25) not null,
fecha_nac date not null,
sexo varchar(10) not null,
dni_dueno int not null,
constraint pk_dp primary key(id_perro),
constraint fk_dd foreign key (dni_dueno) references dueno (dni)
);

create table historial
(
id_historial int not null auto_increment,
fecha date not null,
perro int not null,
descripcion varchar (50),
monto float,
constraint pk_dh primary key (id_historial),
constraint fk_dh foreign key (perro) references perro (id_perro)
);

insert into dueno values(31139753,'Mauricio','Fernandez',1123354035,'estanislao lopez 835');
insert into perro values(1,'reina',12/02/2009,'hembra',31139753);
insert into historial values(1,14/08/2022,1,'vacunacion',350);

update dueno
set direccion='Libertad 123'
where dni=31139753;

select * from perro,dueno where dueno.nombre = 'Pedro';

select * from historial,perro where year(historial.fecha) = '2022';



