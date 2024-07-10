*Autor: Carlos Jahir Castro Cázares
*Fecha:09/09/2015
*Descripcion: Menu de Provedores

*MENU
Clear
Opcion=0
@03,10 to 24,100 Double
@05,15 Say "Fecha:"
@05,27 Say Date()
@05,80 Say "Hora:"
@05,87 Say Time()
@07,40 Say "Administracón de la Base de Datos de Provedores"
@10,50 Prompt "Registro de Provedor"
@12,50 Prompt "Dar de Baja un Provedor"
@14,50 Prompt "Consultar un Provedor"
@16,50 Prompt "Modificar el Registro de un Provedor"
@18,50 Prompt "Reporte General de Provedor"
@20,50 Prompt "Regresar al Menu de Control"

Menu To Opcion
Do Case
Case Opcion=1
Do Registro_Provedor
Case Opcion=2
Do Eliminar_Provedor
Case Opcion=3
Do Consultar_Provedor
Case Opcion=4
Do Modificar_Provedor
Case Opcion=5
Do Reporte_General
Case Opcion=6
DO "E:\Programacion de SGBD\Optica\Menu de Control.prg"
EndCase

*Procesamiento de Registro de Datos

Procedure Registro_Provedor
Clear
Codigo_P =0
C_P =0
Marca_P =Space(10)
Precio_P =Space(10)
Direccion_P =space(20)
Telefono_P=Space(20)
Encargado_P =Space(20)
Cantidad_P =0
OPC=Space(1)

@05,15 Say "Fecha"
@05,27 Say Date()
@05,80 Say "Hora"
@05,87 Say Time()
@10,40 Say "Registro de Provedor"
@12,40 Say "Optica Little Happy Worm"
@14,20 Say "Codigo del Provedor"
@14,45 Get Codigo_P
Read
Use  "E:\Programacion de SGBD\Optica\Tablas\Tabla Provedores.dbf"
Select 1
Go top
Locate For Codig_prov = Codigo_P
IF EOF()
@18,20 Say "Codigo del Producto"
@18,45 Get C_P
@20,20 Say "Marca:"
@20,45 Get Marca_P
@22,20 Say "Precio de Compra : "
@22,45 Get Precio_P
@24,20 Say "Direccion : "
@24,45 Get Direccion_P
@26,20 Say "Telefono : "
@26,45 Get Telefono_P
@28,20 Say "Encargado: "
@28,45 Get Encargado_P
@30,20 Say "Cantidad: "
@30,45 Get Cantidad_P
Read
Append Blank
Replace Codig_prov With Codigo_P
Replace Codigo_pro With C_P
Replace Marca With Marca_P
Replace Precio_com With Precio_P
Replace Direccion With Direccion_P
Replace Telefono With Telefono_P
Replace Encargado With Encargado_P
Replace Cantidad With Cantidad_P
Else
Wait Window "Clave ya Registrada"
Endif
@32,40 Say "Deseas realizar otro Registro(N/S)"
@32,75 Get OPC
Read
if OPC="S"
Do Registro_Provedor
Else
Do "E:\Programacion de SGBD\Optica\Menu de Provedores.prg"
EndIf


*Eliminar un Registro
Procedure Eliminar_Provedor
Clear
Codigo_P=0
OPC=Space(1)
USE "E:\Programacion de SGBD\Optica\Tablas\Tabla Provedores.dbf"
Select A
@05,15 Say "Fecha"
@05,27 Say Date()
@05,80 Say "Hora"
@05,87 Say Time()
@06,40 Say "Eliminacion de Provedor"
@07,40 Say "Optica Little Happy Worm"
@09,20 Say "Dame la Clave del Provedor a eliminar"
@09,60 Get Codigo_P
Read
Go Top
Locate For Codig_prov = Codigo_P
If.NOT.EOF()
@11,20 Say "Codigo de Provedor:"
@11,45 Say A->Codig_prov
@13,20 Say "Codigo de Producto:"
@13,45 Say A->Codigo_pro
@15,20 Say "Marca :"
@15,45 Say A->Marca
@17,20 Say "Precio de Compra:"
@17,45 Say A->Precio_com
@19,20 Say "Direccion:"
@19,45 Say A->Direccion
@21,20 Say "Telefono:"
@21,45 Say A->Telefono
@22,20 Say "Encargado:"
@22,45 Say A->encargado
@23,20 Say "Cantidad:"
@23,45 Say A->Cantidad
@25,20 Say "Desea Borrar el Registro"
@25,45 Get OPC
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
Do Eliminar_Provedor
Else
Do "E:\Programacion de SGBD\Optica\Menu de Provedores.prg"
EndIF

*Consultar Registro
Procedure Consultar_Provedor
Clear
OPC=Space(1)
Codigo_P = 0
Use "E:\Programacion de SGBD\Optica\Tablas\Tabla Provedores.dbf"
Select A
@05,15 Say "Fecha"
@05,27 Say Date()
@05,80 Say "Hora"
@05,87 Say Time()
@06,40 Say "Consulta del Provedor"
@07,40 Say "Optica Little Happy Worm"
@09,20 Say "Dame el Codigo del provedor a Consultar"
@09,60 Get Codigo_P
Read
Go Top
Locate For Codig_prov=Codigo_P
If.NOT.EOF()
@11,20 Say "Codigo de Provedor:"
@11,45 Say A->Codig_prov
@13,20 Say "Codigo de Producto:"
@13,45 Say A->Codigo_pro
@15,20 Say "Marca :"
@15,45 Say A->Marca
@17,20 Say "Precio de Compra:"
@17,45 Say A->Precio_com
@19,20 Say "Direccion:"
@19,45 Say A->Direccion
@21,20 Say "Telefono:"
@21,45 Say A->Telefono
@22,20 Say "Encargado:"
@22,45 Say A->encargado
@23,20 Say "Cantidad:"
@23,45 Say A->Cantidad
Else
Wait Window "Clave no Registrada en la Base de Datos"
EndIF
@31,20 Say "Deseas Consultar algun otro Registro"
@31,60 Get OPC
Read
If OPC="S"
Do Consultar_Provedor
Else
Do "E:\Programacion de SGBD\Optica\Menu de Provedores.prg"
EndIF

*Modificar Registro
Procedure Modificar_Provedor
Clear
Codigo_P=0
OPC=Space(1)
Use "E:\Programacion de SGBD\Optica\Tablas\tabla provedores.dbf"
Select A
@05,15 Say "Fecha"
@05,27 Say Date()
@05,80 Say "Hora"
@05,87 Say Time()
@06,40 Say "Modificacion de Provedores"
@07,40 Say "Optica Little Happy Worm"
@09,20 Say "Dame el Codigo del Provedor a Modificar"
@09,60 Get Codigo_P
Read
Go Top
Locate For codig_prov=Codigo_P
If.NOT.EOF()
@11,20 Say "Codigo de Provedor:"
@11,45 Get A->Codig_prov
@13,20 Say "Codigo de Producto:"
@13,45 Get A->Codigo_pro
@15,20 Say "Marca :"
@15,45 Get A->Marca
@17,20 Say "Precio de Compra:"
@17,45 Get A->Precio_com
@19,20 Say "Direccion:"
@19,45 Get A->Direccion
@21,20 Say "Telefono:"
@21,45 Get A->Telefono
@22,20 Say "Encargado:"
@22,45 Get A->encargado
@23,20 Say "Cantidad:"
@23,45 Get A->Cantidad

Else
Wait Window "Clave no Registrada en la Base de Datos"
EndIF
@31,20 Say "Deseas Modificar algun otro Registro"
@31,60 Get OPC
Read
If OPC="S"
Do Modificar_Provedor
Else
Do "E:\Programacion de SGBD\Optica\Menu de Provedores.prg"
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
@12,05 Say ""
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
