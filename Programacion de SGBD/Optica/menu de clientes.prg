*Autor: Carlos Jahir Castro Cázares
*Fecha:03/09/2015
*Descripcion: Menu de clientes

*MENU
Clear
Opcion=0
@03,10 to 24,100 Double
@05,15 Say "Fecha:"
@05,27 Say Date()
@05,80 Say "Hora:"
@05,87 Say Time()
@07,40 Say "Administracón de la Base de Datos de Clientes"
@10,50 Prompt "Registro de Cliente"
@12,50 Prompt "Dar de Baja un Cliente"
@14,50 Prompt " Consultar un Cliente"
@16,50 Prompt "Modificar el Registro de un Cliente"
@18,50 Prompt "Reporte General de Clientes"
@20,50 Prompt "Regresar al Menu de Control"

Menu To Opcion
Do Case
Case Opcion=1
Do Registro_Clientes
Case Opcion=2
Do Eliminar_Cliente
Case Opcion=3
Do Consultar_Cliente
Case Opcion=4
Do Modificar_Cliente
Case Opcion=5
Do Reporte_General
Case Opcion=6
Do "E:\Programacion de SGBD\Optica\Menu de Control.prg"
EndCase

*Procesamiento de Registro de Datos

Procedure Registro_Clientes
Clear
Codigo_C =0
Nombre_C =Space(20)
Apellido_C =Space(20)
FechaNacimiento_C =Space(8)
Dirreccion_C =space(20)
Telefono_C=Space(15)
Correo_C =Space(20)
Graduacion_C =0
OPC=Space(1)

@05,15 Say "Fecha"
@05,27 Say Date()
@05,80 Say "Hora"
@05,87 Say Time()
@10,40 Say "Registro de Cliente"
@12,40 Say "Optica Little Happy Worm"
@14,20 Say "Codigo del Cliente"
@14,45 Get Codigo_C
Read
use  "E:\Programacion de SGBD\Optica\Tablas\Tabla Clientes.dbf"
Select 1
Go top
Locate For Codigo_Cli = codigo_C
IF EOF()
@18,20 Say "Nombre del Cliente : "
@18,45 Get Nombre_C
@20,20 Say "Apellido del Cliente : "  
@20,45 Get Apellido_C
@22,20 Say "Fecha de Nacimiento del Cliente: "
@22,45 Get FechaNacimiento_C
@24,20 Say "Dirreccion del Cliente : "
@24,45 Get Dirreccion_C
@26,20 Say "Telefono del Cliente : "
@26,45 Get Telefono_C
@28,20 Say "Correo del Cliente : "
@28,45 Get Correo_C
@30,20 Say "Graduacion del Cliente : "
@30,45 Get Graduacion_C
Read
Append Blank
Replace Codigo_Cli With Codigo_C
Replace Nombre With Nombre_C
Replace apellido With Apellido_C
Replace Fech_naci With FechaNacimiento_C
Replace Direccion With Dirreccion_C
Replace Telefono With Telefono_C
Replace Correo With Correo_C
Replace Graduacion With Graduacion_C
Else
Wait Window "Clave ya Registrada"
Endif
@32,40 Say "Deseas realizar otro Registro(N/S)"
@32,75 Get OPC
Read
if OPC="S"
Do Registro_Clientes
Else
Do "E:\Programacion de SGBD\Optica\Menu de Clientes.prg"
EndIf


*Eliminar un Registro
Procedure Eliminar_Cliente
Clear
Codigo_C=0
OPC=Space(1)
USE "E:\Programacion de SGBD\Optica\Tablas\Tabla Clientes.dbf"
Select A
@05,15 Say "Fecha"
@05,27 Say Date()
@05,80 Say "Hora"
@05,87 Say Time()
@06,40 Say "Eliminacion de Cliente"
@07,40 Say "Optica Little Happy Worm"
@09,20 Say "Dame la Clave del Producto a eliminar"
@09,60 Get Codigo_C
Read
Go Top
Locate For codigo_cli=codigo_C
If.NOT.EOF()
@11,20 Say "Codigo:"
@11,45 Say A->codigo_cli
@13,20 Say "Nombre:"
@13,45 Say A->Nombre
@15,20 Say "Apellido:"
@15,45 Say A->Apellido
@17,20 Say "Fecha de Nacimiento:"
@17,45 Say A->Fech_naci
@19,20 Say "Direccion:"
@19,45 Say A->Direccion
@17,20 Say "Telefono:"
@17,45 Say A->Telefono
@19,20 Say "Correo Electronico:"
@19,45 Say A->Correo
@21,20 Say "Graduacion:"
@21,45 Say A->Graduacion
@23,20 Say "Desea Borrar el Registro"
@23,45 Get OPC
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
Do Eliminar_Cliente
Else
Do "E:\Programacion de SGBD\Optica\Menu de Clientes.prg"
EndIF

*Consultar Registro
Procedure Consultar_Cliente
Clear
OPC=Space(1)
Codigo_C=0
Use "E:\Programacion de SGBD\Optica\Tablas\tabla Clientes.dbf"
Select A
@05,15 Say "Fecha"
@05,27 Say Date()
@05,80 Say "Hora"
@05,87 Say Time()
@06,40 Say "Consulta del Cliente"
@07,40 Say "Optica Little Happy Worm"
@09,20 Say "Dame el Codigo del Cliente a Consultar"
@09,60 Get Codigo_C
Read
Go Top
Locate For Codigo_cli=Codigo_C
If.NOT.EOF()
@11,20 Say "Codigo:"
@11,45 Say A->codigo_cli
@13,20 Say "Nombre:"
@13,45 Say A->Nombre
@15,20 Say "Apellido:"
@15,45 Say A->Apellido
@17,20 Say "Fecha de Nacimiento:"
@17,45 Say A->Fech_naci
@19,20 Say "Direccion:"
@19,45 Say A->Direccion
@17,20 Say "Telefono:"
@17,45 Say A->Telefono
@19,20 Say "Correo Electronico:"
@19,45 Say A->Correo
@21,20 Say "Graduacion:"
@21,45 Say A->Graduacion

Else
Wait Window "Clave no Registrada en la Base de Datos"
EndIF
@31,20 Say "Deseas Consultar algun otro Registro"
@31,60 Get OPC
Read
If OPC="S"
Do Consultar_Cliente
Else
Do "E:\Programacion de SGBD\Optica\Menu de Clientes.prg"
EndIF

*Modificar Registro
Procedure Modificar_Cliente
Clear
Codigo_C=0
OPC=Space(1)
Use "E:\Programacion de SGBD\Optica\Tablas\tabla clientes.dbf"
Select A
@05,15 Say "Fecha"
@05,27 Say Date()
@05,80 Say "Hora"
@05,87 Say Time()
@06,40 Say "Modificacion de Cliente"
@07,40 Say "Optica Little Happy Worm"
@09,20 Say "Dame el Codigo del cliente a Modificar"
@09,60 Get Codigo_C
Read
Go Top
Locate For codigo_cli=Codigo_C
If.NOT.EOF()
@11,20 Say "Codigo:"
@11,45 Get A->codigo_cli
@13,20 Say "Nombre:"
@13,45 Get A->Nombre
@15,20 Say "Apellido:"
@15,45 Get A->Apellido
@17,20 Say "Fecha de Nacimiento:"
@17,45 Get A->Fech_naci
@19,20 Say "Direccion:"
@19,45 Get A->Direccion
@17,20 Say "Telefono:"
@17,45 Get A->Telefono
@19,20 Say "Correo Electronico:"
@19,45 Get A->Correo
@21,20 Say "Graduacion:"
@21,45 Get A->Graduacion

Else
Wait Window "Clave no Registrada en la Base de Datos"
EndIF
@31,20 Say "Deseas Modificar algun otro Registro"
@31,60 Get OPC
Read
If OPC="S"
Do Modificar_Cliente
Else
Do "E:\Programacion de SGBD\Optica\Menu de Clientes.prg"
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
@07,40 Say "Reporte General de Clientes"
@08,40 Say "Optica Little Happy Worm"
Use "E:\Programacion de SGBD\Optica\Tablas\Tabla Clientes.dbf"
Select A
Go Top
@12,05 Say "Codigo del Cliente"
@12,30 Say "Nombre"
@12,45 Say "Apellido"
@12,55 Say "Fecha de Nacimiento"
@12,70 Say "Dirreccion"
@12,90 Say "Telefono"
@12,110 Say "Correo"
@12,130 Say "Graduacion"
Do While .NOT.EOF()
@L,05 Say A->codigo_cli
@L,30 Say A->Nombre
@L,45 Say A->Apellido
@L,55 Say A->Fech_naci
@L,70 Say A->Direccion
@L,90 Say A->Telefono
@L,110 Say A->Correo
@L,130 Say A->Graduacion
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
Do "E:\Programacion de SGBD\Optica\Menu de Clientes.prg"
EndIF
