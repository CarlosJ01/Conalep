*Autor: Carlos Jahir Castro Cázares
*Fecha:26/08/2015
*Descripcion: Menu de Productos

*MENU
Clear
Opcion=0
@03,10 to 24,100 Double
@05,15 Say "Fecha:"
@05,27 Say Date()
@05,80 Say "Hora:"
@05,87 Say Time()
@07,40 Say "Administracón de la Base de Datos de Productos"
@10,50 Prompt "Registro de Productos"
@12,50 Prompt "Dar de Baja un Producto"
@14,50 Prompt "Consultar un Producto"
@16,50 Prompt "Modificar el Registro de un Producto"
@18,50 Prompt "Reporte General de Existencias"
@20,50 Prompt "Regresar a Menu de Control"

Menu To Opcion
Do Case
Case Opcion=1
Do Registro_Producto
Case Opcion=2
Do Eliminar_Producto
Case Opcion=3
Do Consultar_Producto
Case Opcion=4
Do Modificar_Producto
Case Opcion=5
Do Reporte_General
Case Opcion=6
Do "E:\Programacion de SGBD\Optica\Menu de Control.prg"
EndCase

*Procesamiento de Registro de Datos

Procedure Registro_Producto
Clear
Codigo_P =0
Modelo_P =Space(15)
Nombre_P =Space(20)
Graduacion_P =0
Marca_P =space(20)
Precio_P =Space(10)
Color_P =Space(10)
Tamaño_P =Space(10)
Cantidad_P =Space(10)
Descripcion_P =Space(50)
OPC=Space(1)

@05,15 Say "Fecha"
@05,27 Say Date()
@05,80 Say "Hora"
@05,87 Say Time()
@10,40 Say "Registro de Producto"
@12,40 Say "Optica Little Happy Worm"
@14,20 Say "Codigo del Producto"
@14,45 Get Codigo_P
Read
use  "E:\Programacion de SGBD\Optica\Tablas\tabla productos"
Select 1
Go top
Locate For Codigo_pro = codigo_P
IF EOF()
@18,20 Say "Modelo del Producto : "
@18,45 Get Modelo_P
@20,20 Say "Nombre del Producto : "  
@20,45 Get Nombre_P
@22,20 Say "Graduacion : "
@22,45 Get Graduacion_P
@24,20 Say "Marca del Producto : "
@24,45 Get Marca_P
@26,20 Say "Precio del Producto : "
@26,45 Get Precio_P
@28,20 Say "Color del Producto : "
@28,45 Get Color_P
@30,20 Say "Tamaño : "
@30,45 Get Tamaño_P
@32,20 Say "Cantidad : "
@32,45 Get Cantidad_P
@34,20 Say "Descripcion : "
@34,45 Get Descripcion_P
Read
Append Blank
Replace Codigo_pro With Codigo_P
Replace Modelo With Modelo_P
Replace Graduacion With Graduacion_P
Replace Marca With Marca_P
Replace Precio With Precio_P
Replace Color With Color_P
Replace Tamaño With Tamaño_P
Replace Cantidad With Cantidad_P
Replace Descripcio With descripcion_P
Else
Wait Window "Clave ya Registrada"
Endif
@38,40 Say "Deseas realizar otro Registro(N/S)"
@38,75 Get OPC
Read
if OPC="S"
Do Registro_Producto 
Else
Do "E:\Programacion de SGBD\Optica\menu de productos.prg"
EndIf


*Eliminar un Registro
Procedure Eliminar_Producto
Clear
Codigo_P=0
OPC=Space(1)
USE "E:\Programacion de SGBD\Optica\Tablas\tabla productos.dbf"
Select A
@05,15 Say "Fecha"
@05,27 Say Date()
@05,80 Say "Hora"
@05,87 Say Time()
@06,40 Say "Eliminacion de Producto"
@07,40 Say "Optica Little Happy Worm"
@09,20 Say "Dame la Clave del Producto a eliminar"
@09,60 Get Codigo_P
Read
Go Top
Locate For codigo_pro=codigo_P
If.NOT.EOF()
@11,20 Say "Codigo:"
@11,45 Say A->codigo_pro
@13,20 Say "Modelo:"
@13,45 Say A->Modelo
@15,20 Say "Nombre:"
@15,45 Say A->Nombre
@17,20 Say "Graduacion:"
@17,45 Say A->Graduacion
@19,20 Say "Marca:"
@19,45 Say A->Marca
@17,20 Say "Graduacion:"
@17,45 Say A->Graduacion
@19,20 Say "Marca:"
@19,45 Say A->Marca
@21,20 Say "Precio:"
@21,45 Say A->Precio
@23,20 Say "Color:"
@23,45 Say A->Color
@25,20 Say "Tamaño:"
@25,45 Say A->Tamaño
@27,20 Say "Cantidad:"
@27,45 Say A->Cantidad
@29,20 Say "Descripcion:"
@29,45 Say A->Descripcio

@31,20 Say "Desea Borrar el Registro"
@31,45 Get OPC
Read

Else
Wait Window "Clave no Registrada en la Base de Datos"
EndIF

IF OPC="S"
DELETE
PACK
WAIT WINDOW "El registro a sido eliminado"
Else
WAIT WINDOW "No se a eliminado"
EndIf
@33,20 Say "Deseas eliminar algun otro Registro"
@33,60 Get OPC
Read
If OPC="S"
Do Eliminar_Producto
Else
Do "E:\Programacion de SGBD\Optica\menu de productos.prg"
EndIF

*Consultar Registro
Procedure Consultar_Producto
Clear
OPC=Space(1)
Codigo_P=0
Use "E:\Programacion de SGBD\Optica\Tablas\tabla productos.dbf"
Select A
@05,15 Say "Fecha"
@05,27 Say Date()
@05,80 Say "Hora"
@05,87 Say Time()
@06,40 Say "Consulta de Producto"
@07,40 Say "Optica Little Happy Worm"
@09,20 Say "Dame el Codigo del producto a Consultar"
@09,60 Get Codigo_P
Read
Go Top
Locate For Codigo_pro=Codigo_P
If.NOT.EOF()
@11,20 Say "Codigo:"
@11,45 Say A->codigo_pro
@13,20 Say "Modelo:"
@13,45 Say A->Modelo
@15,20 Say "Nombre:"
@15,45 Say A->Nombre
@17,20 Say "Graduacion:"
@17,45 Say A->Graduacion
@19,20 Say "Marca:"
@19,45 Say A->Marca
@17,20 Say "Graduacion:"
@17,45 Say A->Graduacion
@19,20 Say "Marca:"
@19,45 Say A->Marca
@21,20 Say "Precio:"
@21,45 Say A->Precio
@23,20 Say "Color:"
@23,45 Say A->Color
@25,20 Say "Tamaño:"
@25,45 Say A->Tamaño
@27,20 Say "Cantidad:"
@27,45 Say A->Cantidad
@29,20 Say "Descripcion:"
@29,45 Say A->Descripcio
Else
Wait Window "Clave no Registrada en la Base de Datos"
EndIF
@31,20 Say "Deseas Consultar algun otro Registro"
@31,60 Get OPC
Read
If OPC="S"
Do Consultar_Producto
Else
Do "E:\Programacion de SGBD\Optica\menu de productos.prg"
EndIF

*Modificar Registro
Procedure Modificar_Producto
Clear
Codigo_P=0
OPC=Space(1)
Use "E:\Programacion de SGBD\Optica\Tablas\tabla productos.dbf"
Select A
@05,15 Say "Fecha"
@05,27 Say Date()
@05,80 Say "Hora"
@05,87 Say Time()
@06,40 Say "Modificacion de Producto"
@07,40 Say "Optica Little Happy Worm"
@09,20 Say "Dame el Codigo del Producto a Modificar"
@09,60 Get Codigo_P
Read
Go Top
Locate For codigo_pro=Codigo_P
If.NOT.EOF()
@11,20 Say "Codigo:"
@11,45 Get A->codigo_pro
@13,20 Say "Modelo:"
@13,45 Get A->Modelo
@15,20 Say "Nombre:"
@15,45 Get A->Nombre
@17,20 Say "Graduacion:"
@17,45 Get A->Graduacion
@19,20 Say "Marca:"
@19,45 Get A->Marca
@17,20 Say "Graduacion:"
@17,45 Get A->Graduacion
@19,20 Say "Marca:"
@19,45 Get A->Marca
@21,20 Say "Precio:"
@21,45 Get A->Precio
@23,20 Say "Color:"
@23,45 Get A->Color
@25,20 Say "Tamaño:"
@25,45 Get A->Tamaño
@27,20 Say "Cantidad:"
@27,45 Get A->Cantidad
@29,20 Say "Descripcion:"
@29,45 Get A->Descripcio
Else
Wait Window "Clave no Registrada en la Base de Datos"
EndIF
@31,20 Say "Deseas Modificar algun otro Registro"
@31,60 Get OPC
Read
If OPC="S"
Do Modificar_Producto
Else
Do "E:\Programacion de SGBD\Optica\menu de productos.prg"
EndIF

*Consulta General
Procedure Reporte_General
Clear
OPC=Space(1)
C=0
L=14
@05,15 Say "Fecha"
@05,27 Say Date()
@05,80 Say "Hora"
@05,87 Say Time()
@07,40 Say "Reporte General de Existencias"
@08,40 Say "Optica Little Happy Worm"
Select A
Use "E:\Programacion de SGBD\Optica\Tablas\tabla productos.dbf"
Go Top
@12,05 Say "Codigo del Producto"
@12,30 Say "Modelo"
@12,45 Say "Nombre"
@12,55 Say "Graduacion"
@12,70 Say "Marca"
@12,90 Say "Precio"
@12,110 Say "Color"
@12,130 Say "Tamaño"
@12,150 Say "Cantidad"
@12,170 Say "Descripcion"
Do While .NOT.EOF()
@L,05 Say A->codigo_pro
@L,30 Say A->Modelo
@L,45 Say A->Nombre
@L,55 Say A->Graduacion
@L,70 Say A->Marca
@L,90 Say A->Precio
@L,110 Say A->Color
@L,130 Say A->Tamaño
@L,150 Say A->Cantidad
@L,170 SAy A->Descripcio
L=L+1
C=C+1
Skip
If C>20
@24,40 Say "Presiona (Enter) Para Continuar"
Wait
C=0
L=12
@12,01 Clear 24,100
EndIf
EndDo

@26,20 Say "Deseas hacer otra consulta general"
@26,60 Get OPC
Read
If OPC="S"
Do Reporte_General
Else
Do "E:\Programacion de SGBD\Optica\menu de productos.prg"
EndIF
