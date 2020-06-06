USE EL_ZAPATO_ROTO
GO
/* MOVIMIENTO
	ID_MOVIMIENTO TINYINT PRIMARY KEY NOT NULL,
	NOMBRE_MOVIMIENTO VARCHAR(7) NOT NULL
*/

INSERT INTO MOVIMIENTO VALUES ('entrada');
GO
INSERT INTO MOVIMIENTO VALUES ('salida');
GO

/*INVENTARIO
	ID_INVENTARIO BIGINT IDENTITY PRIMARY KEY NOT NULL,
	ID_MOVIMIENTO TINYINT NOT NULL,
	FECHA DATE NOT NULL,
	CANTIDAD INT NOT NULL
*/

INSERT INTO INVENTARIO VALUES (1,'2020/01/01',15);
GO
INSERT INTO INVENTARIO VALUES (1,'2020/01/01',50);
GO
INSERT INTO INVENTARIO VALUES (1,'2020/01/01',70);
GO
INSERT INTO INVENTARIO VALUES (1,'2020/01/01',45);
GO
INSERT INTO INVENTARIO VALUES (1,'2020/01/28',15);
GO
INSERT INTO INVENTARIO VALUES (2,'2020/01/05',1);
GO
INSERT INTO INVENTARIO VALUES (2,'2020/02/05',1);
GO
INSERT INTO INVENTARIO VALUES (2,'2020/02/05',1);
GO
INSERT INTO INVENTARIO VALUES (2,'2020/02/08',4);
GO
INSERT INTO INVENTARIO VALUES (2,'2020/02/08',1);
GO
INSERT INTO INVENTARIO VALUES (2,'2020/02/10',1);
GO

/*PRODUCTO
	NOMBRE_PRODUCTO VARCHAR(50) PRIMARY KEY NOT NULL,
	PRESENTACION VARCHAR(100) NOT NULL,
	VALOR MONEY NOT NULL,
	ID_INVENTARIO BIGINT NOT NULL
*/

INSERT INTO PRODUCTO VALUES ('ZAPATO BLANCO','UN ZAPATO BLANCO MUY LINDO',250000,1);
GO
INSERT INTO PRODUCTO VALUES ('ZAPATO NEGRO','UN ZAPATO NEGRO UN INPONENTE',380000,2);
GO
INSERT INTO PRODUCTO VALUES ('BOTA VAQUERA','PARA ESOS DIAS DE RODEO',400000,3);
GO
INSERT INTO PRODUCTO VALUES ('SANDALIAS','NADA COMO IR A LA PLAYA',150000,4);
GO

/*INVENTARIO_PRODUCTO
	ID_INVENTARIO BIGINT NOT NULL,
	NOMBRE_PRODUCTO VARCHAR(50) NOT NULL,
*/

INSERT INTO INVENTARIO_PRODUCTO VALUES (1,1);
GO
INSERT INTO INVENTARIO_PRODUCTO VALUES (2,2);
GO
INSERT INTO INVENTARIO_PRODUCTO VALUES (3,3);
GO
INSERT INTO INVENTARIO_PRODUCTO VALUES (4,4);
GO
INSERT INTO INVENTARIO_PRODUCTO VALUES (5,2);
GO
INSERT INTO INVENTARIO_PRODUCTO VALUES (6,1);
GO
INSERT INTO INVENTARIO_PRODUCTO VALUES (7,2);
GO
INSERT INTO INVENTARIO_PRODUCTO VALUES (8,3);
GO
INSERT INTO INVENTARIO_PRODUCTO VALUES (9,4);
GO
INSERT INTO INVENTARIO_PRODUCTO VALUES (10,1);
GO
INSERT INTO INVENTARIO_PRODUCTO VALUES (11,4);
GO

/*PAIS
	ID_PAIS INT IDENTITY PRIMARY KEY,
	NOMBRE VARCHAR(20) NOT NULL*/

INSERT INTO PAIS VALUES ('colombia');
GO
INSERT INTO PAIS VALUES ('canada');
GO
INSERT INTO PAIS VALUES ('panama');
GO
INSERT INTO PAIS VALUES ('estados unidos')

/*CLIENTE
	IDENTIFICACION_CLIENTE VARCHAR(13) PRIMARY KEY NOT NULL,
	NOMBRE_CLIENTE VARCHAR(50) NOT NULL,
	PAIS_CLIENTE VARCHAR(15) NOT NULL
*/

INSERT INTO CLIENTE VALUES (1234988322,'juana perez arrieta',1);
GO
INSERT INTO CLIENTE VALUES (1253665842,'camilo arago zapata',2);
GO
INSERT INTO CLIENTE VALUES (1100650,'santiago ateortua ga�an',3);
GO
INSERT INTO CLIENTE VALUES (1011203,'emily thomson jackson',4);
GO




/*FACTURACION
	NUMERO_FACTURACION BIGINT IDENTITY PRIMARY KEY NOT NULL,
	IDENTIFICACION_CLIENTE BIGINT NOT NULL,
	VALOR_PAGAR MONEY NOT NULL
*/

INSERT INTO FACTURACION VALUES (1234988322,1090000);
GO
INSERT INTO FACTURACION VALUES (1100650,160000);
GO
INSERT INTO FACTURACION VALUES (1253665842,535000);
GO

/*FACTURACION_PRODUCTO
	NUMERO_FACTURACION BIGINT NOT NULL,
	NOMBRE_PRODUCTO VARCHAR(50) NOT NULL,
	IMPUESTO MONEY NOT NULL,
	DESCUENTO MONEY NOT NULL
*/

INSERT INTO FACTURACION_PRODUCTO VALUES (1,1,15000,0);
GO
INSERT INTO FACTURACION_PRODUCTO VALUES (1,2,20000,0);
GO
INSERT INTO FACTURACION_PRODUCTO VALUES (1,3,25000,0);
GO
INSERT INTO FACTURACION_PRODUCTO VALUES (2,4,10000,0);
GO
INSERT INTO FACTURACION_PRODUCTO VALUES (2,1,15000,20000);
GO
INSERT INTO FACTURACION_PRODUCTO VALUES (3,4,10000,0);
GO