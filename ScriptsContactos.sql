--create database CRUDCONTACTOS
USE CRUDCONTACTOS

CREATE TABLE CONTACTS(
IDCONTACT INT PRIMARY KEY IDENTITY(1,1),
NOMBRE VARCHAR(50) NOT NULL,
TELEFONO VARCHAR(15) NOT NULL,
CORREO VARCHAR(20) NOT NULL
)

CREATE PROCEDURE ListContacts
as
begin
select * from CONTACTS
end

create PROCEDURE GetContactById(@id int)
as
begin
select * from CONTACTS where idcontact = @id
end


CREATE PROCEDURE InsertContact(
@NOMBRE VARCHAR(50),
@TELEFONO VARCHAR(15),
@CORREO VARCHAR(20)
)
as
begin
insert into CONTACTS(NOMBRE,TELEFONO,CORREO)
values (@NOMBRE,@TELEFONO,@CORREO)
end


CREATE PROCEDURE UpdateContactoById(@NOMBRE varchar(50),@TELEFONO varchar(15),@CORREO varchar(20), @id int)
as
begin
update CONTACTS set NOMBRE = @nombre
where idcontact = @id
end

create PROCEDURE DeleteContactById(@id int)
as
begin
delete from CONTACTS where idcontact = @id
end

