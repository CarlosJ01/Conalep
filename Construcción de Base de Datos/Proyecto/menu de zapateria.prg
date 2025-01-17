*Autor: Carlos Jahir Castro C�zares
*Fecha: 22/05/2015 - 16/06/2015
*Descripcion: Menu de Base de Datos para una Tienda de Zapatos

*MENU
Clear
Opcion=0
@03,10 to 24,100 Double
@05,15 Say "Fecha:"
@05,27 Say Date()
@05,80 Say "Hora:"
@05,87 Say Time()
@07,40 Say "Administrac�n de la Base de Datos de una Zapateria"
@10,50 Prompt "Registro de Zapatos"
@12,50 Prompt "Dar de Baja un Registro"
@14,50 Prompt "Consultar un Zapato"
@16,50 Prompt "Modificar el Registro de un Zapato"
@18,50 Prompt "Reporte General de Existencias"
@20,50 Prompt "Finalizar Ejecuci�n"

Menu To Opcion
Do Case
Case Opcion=1
Do Registro_Zapatos
Case Opcion=2
Do Eliminar_Registro
Case Opcion=3
Do Consultar_Zapato
Case Opcion=4
Do Modificar_Zapato
Case Opcion=5
Do Reporte_General
Case Opcion=6
Wait Window "Finalizar Administraci�n de la Base de Datos"
EndCase

*Procesamiento de Registro de Datos

Procedure Registro_Zapatos
Clear
Clave_Z =0
Modelo_Z =Space(20)
Color_Z =Space(15)
Precio_Z =0
OPC=Space(1)
Descripcion_Z = Space(30)

@05,15 Say "Fecha"
@05,27 Say Date()
@05,80 Say "Hora"
@05,87 Say Time()
@10,40 Say "Registro de Zapatos"
@12,40 Say "Zapateria la Moderna"
@14,20 Say "Clave del Zapato"
@14,45 Get Clave_Z
Read

Use "E:\Programacion de SGBD\Construcci�n de Base de Datos\Proyecto\Base de Datos.dbf"
Select 1
Go top
Locate For Clave = Clave_Z
IF EOF()
@16,20 Say "Modelo de Zapato"
@16,45 Get Modelo_Z
@18,20 Say "Color Zapato"
@18,45 Get Color_Z
@20,20 Say "Presio de Zapatos"
@20,45 Get Precio_Z
@22,20 Say "Descripcion de Zapato"
@22,45 Get Descripcion_Z
Read
Append Blank
Replace Clave With Clave_Z
Replace Modelo With Modelo_Z
Replace Color With Color_Z
Replace Precio With Precio_Z
Replace Descripcio With Descripcion_Z
Else
Wait Window "Clave ya Registrada"
Endif

@24,40 Say "Deseas realizar otro Registro(N/S)"
@24,75 Get OPC
Read
if OPC="N"
Do"E:\Programacion de SGBD\Construcci�n de Base de Datos\Proyecto\Base de Datos.dbf"
Else
Do Registro_Zapatos
EndIf

*Eliminar un Registro
Procedure Eliminar_Registro
Clear
OPC=Space(1)
Clave_Z=0
Set Default to "I:\Base de Datos\Practica 9\Menu de Zapateria"
Select A
@05,15 Say "Fecha"
@05,27 Say Date()
@05,80 Say "Hora"
@05,87 Say Time()
@07,40 Say "Zapateria la Moderna"
@09,20 Say "Dame la Clave del Zapato a eliminar"
@09,60 Get Clave_Z
Read
Go Top
Locate For Clave=Clave_Z
If.NOT.EOF()
@11,20 Say "Modelo:"
@11,45 Say A->Modelo
@13,20 Say "Color:"
@13,45 Say A->Color
@15,20 Say "Presio:"
@15,45 Say A->Precio
@17,20 Say "Descripcion:"
@17,45 Say A->Descripcio
Else
Wait Window "Clave no Registrada en la Base de Datos"
EndIF

@19,20 Say "Desea Borrar el Registro"
@19,45 Get OPC
Read
IF OPC="S"
DELETE
PACK
@22,20 Say "El registro a sido eliminado"
Else
@22,20 Say "No se a eliminado"
EndIf

@24,20 Say "Deseas eliminar algun otro Registro"
@24,60 Get OPC
Read
If OPC="S"
Do Eliminar_Registro
Else
Do "I:\Base de Datos\Practica 9\Menu de Zapateria\menu de zapateria.prg"
EndIF

*Consultar Registro
Procedure Consultar_Zapato
Clear
OPC=Space(1)
Clave_Z=0
Set Default to "I:\Base de Datos\Practica 9\Menu de Zapateria\"
Select A
@05,15 Say "Fecha"
@05,27 Say Date()
@05,80 Say "Hora"
@05,87 Say Time()
@07,40 Say "Zapateria la Moderna"
@09,20 Say "Dame la Clave del Zapato a Consultar"
@09,60 Get Clave_Z
Read
Go Top
Locate For Clave=Clave_Z
If.NOT.EOF()
@11,20 Say "Modelo:"
@11,45 Say A->Modelo
@13,20 Say "Color:"
@13,45 Say A->Color
@15,20 Say "Presio:"
@15,45 Say A->Precio
@17,20 Say "Descripcion:"
@17,45 Say A->Descripcio
Else
Wait Window "Clave no Registrada en la Base de Datos"
EndIF
@24,20 Say "Deseas Consultar algun otro Registro"
@24,60 Get OPC
Read
If OPC="S"
Do Consultar_Zapato
Else
Do "I:\Base de Datos\Practica 9\Menu de Zapateria\menu de zapateria.prg"
EndIF

*Modificar Registro
Procedure Modificar_Zapato
Clear
OPC=Space(1)
Clave_Z=0
Set Default to "I:\Base de Datos\Practica 9\Menu de Zapateria\"
Select A
@05,15 Say "Fecha"
@05,27 Say Date()
@05,80 Say "Hora"
@05,87 Say Time()
@07,40 Say "Zapateria la Moderna"
@09,20 Say "Dame la Clave del Zapato a Modificar"
@09,60 Get Clave_Z
Read
Go Top
Locate For Clave=Clave_Z
If.NOT.EOF()
@11,20 Say "Modelo:"
@11,45 Get A->Modelo
@13,20 Say "Color:"
@13,45 Get A->Color
@15,20 Say "Presio:"
@15,45 Get A->Precio
@17,20 Say "Descripcion:"
@17,45 Get A->Descripcio
Else
Wait Window "Clave no Registrada en la Base de Datos"
EndIF
@24,20 Say "Deseas Modificar algun otro Registro"
@24,60 Get OPC
Read
If OPC="S"
Do Modificar_Zapato
Else
Do "I:\Base de Datos\Practica 9\Menu de Zapateria\menu de zapateria.prg"
EndIF

*Consulta General
Procedure Reporte_General
Clear
OPC=Space(1)
C=0
L=12
@05,15 Say "Fecha"
@05,27 Say Date()
@05,80 Say "Hora"
@05,87 Say Time()
@07,40 Say "Consulta General"
@08,40 Say "Zapateria Moderna"
Select A
Use "I:\Base de Datos\Practica 9\Menu de Zapateria\Base de Datos.dbf"
Go Top
@10,05 Say "Clave de Zapato  "
@10,25 Say "Modelo  "
@10,40 Say "Color  "
@10,55 Say "Precio "
@10,70 Say "Descripcion "
Do While .NOT.EOF()
@L,05 Say A->Clave
@L,25 Say A->Modelo
@L,40 Say A->Color
@L,55 Say A->Precio
@L,70 Say A->Descripcio
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
Do "I:\Base de Datos\Practica 9\Menu de Zapateria\menu de zapateria.prg"
EndIF
