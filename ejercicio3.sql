/*-------------------------------------------------------------*/
/*                          Ejercicio 1                        */
/*-------------------------------------------------------------*/
CREATE DATABASE ejercicio1;
USE ejercicio1

CREATE TABLE EMPLEADO(
    Dni INT NOT NULL PRIMARY KEY,
    FechaNac VARCHAR(45),
    NombreP VARCHAR(45),
    Apellido1 VARCHAR(45),
    Apellido2 VARCHAR(45),
    Direccion VARCHAR(45),
    Sueldo VARCHAR(45),
    Sexo VARCHAR(45)
)ENGINE = InnoDB;

CREATE TABLE DEPARTAMENTO(
    Nombre INT NOT NULL PRIMARY KEY,
    NumEmpleados VARCHAR(45),
    FechaI VARCHAR(45),
    PRIMARY KEY (Dni),
    FOREIGN KEY (Dni) REFERENCES EMPLEADO(Dni)
    ON DELETE CASCADE
    ON UPDATE CASCADE
)ENGINE = InnoDB;

CREATE TABLE UBICACIONES(
    Ubicaciones INT NOT NULL,
    Nombre INT NOT NUlL,
    PRIMARY KEY (Nombre),
    FOREIGN KEY (Nombre) REFERENCES DEPARTAMENTO (Nombre)
    ON DELETE CASCADE
    ON UPDATE CASCADE
)ENGINE = InnoDB;

CREATE TABLE PROYECTO(
    Nombre INT NOT NULL,
    Dni INT NOT NULL,
    Ubicaciones VARCHAR(45),
    Horas VARCHAR(45),
    PRIMARY KEY (Dni),
    FOREIGN KEY (Dni) REFERENCES EMPLEADO (Dni)
    ON DELETE CASCADE
    ON UPDATE CASCADE
)ENGINE = InnoDB;

CREATE TABLE SUBORDINADO(
    Dni INT NOT NULL,
    Nombre INT NOT NULL,
    Sexo VARCHAR(45),
    FechaNac VARCHAR(45),
    Relacion VARCHAR(45),
    PRIMARY KEY (Dni, Nombre),
    FOREIGN KEY (Dni) REFERENCES EMPLEADO (Dni)
    FOREIGN KEY (Nombre) REFERENCES DEPARTAMENTO (Nombre)
    ON DELETE CASCADE
    ON UPDATE CASCADE
)ENGINE = InnoDB;


/*-------------------------------------------------------------*/
/*                          Ejercicio 2                        */
/*-------------------------------------------------------------*/
CREATE DATABASE ejercicio2;
use ejercicio2

CREATE TABLE AEROPUERTO(
    CodAeropuerto INT NOT NULL PRIMARY KEY,
    Ciudad VARCHAR(45),
    Prov VARCHAR(45),
    Nombre VARCHAR(45)
)ENGINE = InnoDB;

CREATE TABLE TIPO_AVION(
    NombreTipo INT NOT NULL PRIMARY KEY,
    MaxAsientos VARCHAR(45),
    Compania VARCHAR(45)
)ENGINE = InnoDB;

CREATE TABLE AVION(
    idAvion INT NOT NULL,
    NombreTipo INT NOT NULL
    NumTotalAsientos VARCHAR(45),
    PRIMARY KEY (NombreTipo),
    FOREIGN KEY (NombreTipo) REFERENCES TIPO_AVION (NombreTipo)
    ON DELETE CASCADE
    ON UPDATE CASCADE
)ENGINE = InnoDB;

CREATE TABLE INSTANCIA_PLAN(
    NumPlan INT NOT NULL,
    idAvion INT NOT NULL,
    
)

/*-------------------------------------------------------------*/
/*                          Ejercicio 3                        */
/*-------------------------------------------------------------*/
create database ejercicio3;
use ejercicio3

create table BANCO(
    Cod INT NOT NULL PRIMARY KEY,
    Nombre VARCHAR(45),
    Direcc VARCHAR(45)

)ENGINE = InnoDB;

create table SURCURSAL_BANCO(
    Cod INT NOT NULL,
    Direcc VARCHAR(45),
    PRIMARY KEY (Cod, Branch_no),
    FOREIGN KEY (Cod) REFERENCES BANCO (Cod)
    ON DELETE CASCADE
    ON UPDATE CASCADE

)ENGINE = InnoDB;

create table CUENTA(
    NumCuenta INT NOT NULL,
    Saldo VARCHAR (15),
    Tipo VARCHAR(45),
    PRIMARY KEY (Cod, Branch_no),
    FOREIGN KEY (Cod) REFERENCES BANCO (Cod)
    FOREIGN KEY (Branch_no) REFERENCES SURCURSAL_BANCO (Branch_no)
    ON DELETE CASCADE
    ON UPDATE CASCADE
)ENGINE = InnoDB;

create table PRESTAMO(
    NumPrest INT NOT NULL,
    Cantidad VARCHAR(45),
    Tipo VARCHAR(45),
    PRIMARY KEY (Cod, Branch_no),
    FOREIGN KEY (Cod) REFERENCES BANCO (Cod)
    FOREIGN KEY (Branch_no) REFERENCES SURCURSAL_BANCO (Branch_no)
    ON DELETE CASCADE
    ON UPDATE CASCADE
)ENGINE = InnoDB;

create table CLIENTE(
    Dni INT NOT NULL PRIMARY KEY,
    Nombre VARCHAR(45),
    Direcc VARCHAR(45),
    Tif VARCHAR(45),

)ENGINE = InnoDB;

create table C_C(
    NumCuenta INT NOT NULL,
    Dni INT NOT NULL,
    PRIMARY KEY (NumCuenta, Dni),
    FOREIGN KEY (NumCuenta) REFERENCES CUENTA (NumCuenta)
    FOREIGN KEY (Dni) REFERENCES CLIENTE (Dni)
    ON DELETE CASCADE
    ON UPDATE CASCADE

)ENGINE = InnoDB;

create table P_C(
    NumPrest INT NOT NULL,
    Dni INT NOT NULL,
    PRIMARY KEY (NumPrest, Dni),
    FOREIGN KEY (NumPrest) REFERENCES PRESTAMO (NumPrest)
    FOREIGN KEY (Dni) REFERENCES CLIENTE(Dni)
    ON DELETE CASCADE
    ON UPDATE CASCADE

)ENGINE = InnoDB;


/*-------------------------------------------------------------*/
/*                          Ejercicio 4                        */
/*-------------------------------------------------------------*/
CREATE DATABASE ejercicio4;
use ejercicio4

CREATE TABLE EMPLEADO(
    Dni INT NOT NULL PRIMARY KEY,
    NombrePila VARCHAR(45),
    Apellido VARCHAR(45),
    FechaNac VARCHAR(45),
    Direcc VARCHAR(45),
)ENGINE = InnoDB;

CREATE TABLE SECRETARIA(
    Dni INT NOT NULL,
    PulsacionesPorMinuto VARCHAR(45),
    PRIMARY KEY (Dni),
    FOREIGN KEY (Dni) REFERENCES EMPLEADO (Dni)
    ON DELETE CASCADE
    ON UPDATE CASCADE
)ENGINE = InnoDB;

CREATE TABLE TECNICO(
    Dni INT NOT NULL,
    GradoE VARCHAR(45),
    PRIMARY KEY (Dni),
    FOREIGN KEY (Dni) REFERENCES EMPLEADO (Dni)
    ON DELETE CASCADE
    ON UPDATE CASCADE
)ENGINE = InnoDB;

CREATE TABLE INGENIERO(
    Dni INT NOT NULL,
    Especializacion VARCHAR(45),
    PRIMARY KEY (Dni),
    FOREIGN KEY (Dni) REFERENCES EMPLEADO (Dni)
    ON DELETE CASCADE
    ON UPDATE CASCADE
)ENGINE = InnoDB;

CREATE TABLE DIRECTOR(
    idDirector INT NOT NULL PRIMARY KEY,
)ENGINE = InnoDB;

CREATE TABLE TRABJO_FIJO(
    Dni INT NOT NULL,
    Salario VARCHAR(45),
    PRIMARY KEY (Dni),
    FOREIGN KEY (Dni) REFERENCES EMPLEADO (Dni)
    ON DELETE CASCADE
    ON UPDATE CASCADE
)ENGINE = InnoDB;

CREATE TABLE TRABAJO_TEMPORAL(
    Dni INT NOT NULL,
    EscalaSueldo VARCHAR(45),
    PRIMARY KEY (Dni),
    FOREIGN KEY (Dni) REFERENCES EMPLEADO (Dni)
    ON DELETE CASCADE
    ON UPDATE CASCADE   
)ENGINE = InnoDB;

CREATE TABLE PROYECTO(
    No_Proyecto INT NOT NULL PRIMARY KEY,
    Num_Proyecto VARCHAR(45),
    FechaI VARCHAR(45),
    FechaF VARCHAR(45)
)ENGINE = InnoDB;

CREATE TABLE SINDICATO(
    cveC INT NOT NULL PRIMARY KEY,
    nomC VARCHAR(45),
    FcehaC VARCHAR(45),
    Direcc VARCHAR(45)
)ENGINE = InnoDB;

/*-------------------------------------------------------------*/
/*                          Ejercicio 5                        */
/*-------------------------------------------------------------*/
CREATE DATABASE ejercicio5;
USE ejercicio5

CREATE TABLE PERSONA(
    Dni INT NOT NULL PRIMARY KEY,
    Nombre VARCHAR(45),
    Sexo VARCHAR(45),
    Direccion VARCHAR(45),
    FechaNac VARCHAR(45)
)ENGINE = InnoDB;

CREATE TABLE EMPLEADO(
    DniEmpleado INT NOT NULL,
    Salario VARCHAR(45),
    PRIMARY KEY(DniEmpleado),
    FOREIGN KEY (DniEmpleado) REFERENCES PERSONA (Dni)
    ON DELETE CASCADE
    ON UPDATE CASCADE
)ENGINE = InnoDB;

CREATE TABLE ESTUDIANTE(
    DniEstudiante INT NOT NULL,
    DptoEspec VARCHAR(45),
    PRIMARY KEY (DniEstudiante),
    FOREIGN KEY (DniEstudiante) REFERENCES PERSONA (Dni)
    ON DELETE CASCADE
    ON UPDATE CASCADE
)ENGINE = InnoDB;

CREATE TABLE ALUMNO(
    DniAlumno INT NOT NULL,
    PRIMARY KEY (DniAlumno),
    FOREIGN KEY (DniAlumno) REFERENCES PERSONA (Dni)
    ON DELETE CASCADE
    ON UPDATE CASCADE
)ENGINE = InnoDB;

/*Duda acerca de la llave*/
CREATE TABLE LICENCIATURA(
    DniAlumno INT NOT NULL,
    Anio INT NOT NULL,
    Grado INT NOT NULL,
    Especialidad INT NOT NULL,
    PRIMARY KEY (DniAlumno, Anio, Grado, Especialidad),
    FOREIGN KEY (DniAlumno) REFERENCES PERSONA (Dni)
    ON DELETE CASCADE
    ON UPDATE CASCADE
)ENGINE = InnoDB;

CREATE TABLE ADMINISTRATIVO(
    DniEmpleado INT NOT NULL,
    Salario VARCHAR(45),
    Posicion VARCHAR(45),
    PRIMARY KEY (DniEmpleado),
    FOREIGN KEY (DniEmpleado) REFERENCES EMPLEADO (DniEmpleado)
    ON DELETE CASCADE
    ON UPDATE CASCADE
)ENGINE = InnoDB;

CREATE TABLE DOCENTE(
    DniEmpleado INT NOT NULL,
    Salario VARCHAR(45),
    Rango VARCHAR(45),
    PRIMARY KEY (DniEmpleado),
    FOREIGN KEY (DniEmpleado) REFERENCES EMPLEADO (DniEmpleado)
    ON DELETE CASCADE
    ON UPDATE CASCADE
)ENGINE = InnoDB;

CREATE TABLE ADJUNTO(
    DniAdjunto INT NOT NULL PRIMARY KEY,
    Salario VARCHAR(45),
    DptoEspec VARCHAR(45),
    PorcenTiempo VARCHAR(45),
)ENGINE = InnoDB;

CREATE TABLE ESTUDIANTE_DIPLOMADO(
    DniEstudiante INT NOT NULL,
    DptoEspec VARCHAR(45),
    ProgGrado VARCHAR(45),
    PRIMARY KEY (DniEstudiante),
    FOREIGN KEY (DniEstudiante) REFERENCES ESTUDIANTE (DniEstudiante)
    ON DELETE CASCADE
    ON UPDATE CASCADE
)ENGINE = InnoDB;

CREATE TABLE ESTUDIANTE_NO_DIPLOMADO(
    DniEstudiante INT NOT NULL,
    DptoEspec VARCHAR(45),
    Clase VARCHAR(45),
    PRIMARY KEY (DniEstudiante),
    FOREIGN KEY (DniEstudiante) REFERENCES ESTUDIANTE (DniEstudiante)
    ON DELETE CASCADE
    ON UPDATE CASCADE
)ENGINE = InnoDB;

CREATE TABLE ADJUNTO_INVESTIGACION(
    DniAdjunto INT NOT NULL,
    Proyecto VARCHAR(45),
    PRIMARY KEY (DniAdjunto),
    FOREIGN KEY (DniAdjunto) REFERENCES (DniAdjunto)
    ON DELETE CASCADE
    ON UPDATE CASCADE
)ENGINE = InnoDB;

CREATE TABLE ADJUNTO_ESENNIANZA(
    DniAdjunto INT NOT NULL,
    Curso VARCHAR(45),
    PRIMARY KEY (DniAdjunto),
    FOREIGN KEY (DniAdjunto) REFERENCES (DniAdjunto)
    ON DELETE CASCADE
    ON UPDATE CASCADE
)ENGINE = InnoDB;

/*-------------------------------------------------------------*/
/*                          Ejercicio 6                        */
/*-------------------------------------------------------------*/
CREATE DATABASE ejercicio6;
USE ejercicio6

CREATE TABLE PROPIETARIO(
    idPropietario INT NOT NULL PRIMARY KEY,
)ENGINE = InnoDB;

CREATE TABLE BANCO(
    NombreB INT NOT NULL,
    DireccB VARCHAR(45),
    PRIMARY KEY (idPropietario),
    FOREIGN KEY (idPropietario) REFERENCES PROPIETARIO (idPropietario)
    ON DELETE CASCADE
    ON UPDATE CASCADE
)ENGINE = InnoDB;

CREATE TABLE PERSONA(
    NumPermiso INT NOT NULL,
    Dni VARCHAR(45),
    Nombre VARCHAR(45),
    Direccion VARCHAR(45),
    PRIMARY KEY (idPropietario),
    FOREIGN KEY (idPropietario) REFERENCES PROPIETARIO (idPropietario)
    ON DELETE CASCADE
    ON UPDATE CASCADE
)ENGINE = InnoDB;

CREATE TABLE EMPRESA(
    NombreE INT NOT NULL,
    Direcc VARCHAR(45),
    PRIMARY KEY (idPropietario),
    FOREIGN KEY (idPropietario) REFERENCES PROPIETARIO (idPropietario)
    ON DELETE CASCADE
    ON UPDATE CASCADE
)ENGINE = InnoDB;

CREATE TABLE VEHICULO_REGISTRADO(
    idVehiculoRegi INT NOT NULL PRIMARY KEY,
    Matricula VARCHAR(45)
)ENGINE = InnoDB;

CREATE TABLE COCHE(
    idVehiculoCoche INT NOT NULL,
    EstiloC VARCHAR(45),
    MarcaC VARCHAR(45),
    AnioC VARCHAR(45),
    ModeloC VARCHAR(45),
    PRIMARY KEY (idVehiculoRegi),
    FOREIGN KEY (idVehiculoRegi) REFERENCES VEHICULO_REGISTRADO (idVehiculoRegi)
    ON DELETE CASCADE
    ON UPDATE CASCADE
)ENGINE = InnoDB;

CREATE TABLE CAMION(
    idVehiculoCamion INT NOT NULL,
    Tonelaje VARCHAR(45),
    MarcaT VARCHAR(45),
    AnioT VARCHAR(45),
    ModeloT VARCHAR(45),
    PRIMARY KEY (idVehiculoRegi),
    FOREIGN KEY (idVehiculoRegi) REFERENCES VEHICULO_REGISTRADO (idVehiculoRegi)
    ON DELETE CASCADE
    ON UPDATE CASCADE
)ENGINE = InnoDB;

CREATE TABLE PROPIEDAD(
    idPropietario INT NOT NULL,
    GravONormal VARCHAR(45),
    FechaCompra VARCHAR(45),
    PRIMARY KEY (idPropietario, idVehiculoRegi),
    FOREIGN KEY (idVehiculoRegi) REFERENCES VEHICULO_REGISTRADO (idVehiculoRegi)
    ON DELETE CASCADE
    ON UPDATE CASCADE
)ENGINE = InnoDB;
