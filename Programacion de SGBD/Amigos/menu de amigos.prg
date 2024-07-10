*Autor: Carlos Jahir Castro Cázares
*Fecha:20/10/15
*Descripcion: Menu de Amigos

*MENU
Clear
Opcion=0
@03,10  to 24,100 Double
@05,15 Say "Fecha:"
@05,27 Say Date()
@05,80 Say "Hora:"
@05,87 Say Time()
@07,50 Say "Agenda de Amigos"
@10,50 Prompt "Registrar Amigos"
@12,50 Prompt "Modificar Datos"
@14,50 Prompt "Finalizar"
@20,20 Say "Alumno: Carlos Jahir Castro Cázares"

Menu To Opcion
Do Case
Case Opcion=1
Do Registro_Amigos
Case Opcion=2
Do Modificar_Amigos
Case Opcion=3
EndCase

*Registrar Amigo
Procedure Registro_Amigos
Clear
Nombre_A =Space(30)
Direccion_A =Space(30)
Telefono_A =Space(20)
Email_A =space(30)
Facebook_A=Space(30)
Hobby_A =Space(30)
OPC=Space(1)

@03,10 to 30,100 Double
@05,15 Say "Fecha:"
@05,27 Say Date()
@05,80 Say "Hora:"
@05,87 Say Time()
@07,40 Say "Agenda de Amigos"
@08,40 Say "Registrar Amigo"
@09,20 Say "Nombre del Amigo"
@09,45 Get Nombre_A
Read
use  "C:\Users\informatica\Desktop\amigos.dbf"
Select 1
Go top
Locate For Nombre = Nombre_A
IF EOF()
@11,20 Say "Nombre :"
@11,45 Get Nombre_A
@13,20 Say "Direccion :"  
@13,45 Get Direccion_A
@15,20 Say "Telefono :"
@15,45 Get Telefono_A
@17,20 Say "E-Mail :"
@17,45 Get Email_A
@19,20 Say "Facebook : "
@19,45 Get Facebook_A
@21,20 Say "Hobby: "
@21,45 Get Hobby_A
Read

Append Blank
Replace Nombre With Nombre_A
Replace Direccion With Direccion_A
Replace Telefono With Telefono_A
Replace Email With Email_A 
Replace Facebook With Facebook_A 
Replace Hobby With Hobby_A

Else
Wait Window "Amigo ya Registrado"
Endif
@25,40 Say "Deseas registrar otro Amigo(N/S)"
@25,75 Get OPC
Read
if OPC="S"
Do Registro_Amigos
Else
Do "C:\Users\informatica\Desktop\menu de amigos.prg"
EndIf

*Modificar
Procedure Modificar_Amigos
Clear
Nombre_A=Space(20)
OPC=Space(1)
@03,10 to 50,100 Double
@05,15 Say "Fecha:"
@05,27 Say Date()
@05,80 Say "Hora:"
@05,87 Say Time()
@07,40 Say "Agenda de Amigos"
@09,40 Say "Modificar Amigo"
@11,20 Say "Dame el Nombre el Amigo a Modificar:"
@11,60 Get Nombre_A
Read

use  "C:\Users\informatica\Desktop\amigos.dbf"
Select A
Go Top
Locate for Nombre=Nombre_A

IF.NOT.EOF()
@15,20 Say "Nombre : "
@15,40 Get A-> Nombre
@17,20 Say "Direccion : "
@17,40 Get A-> Direccion
@19,20 Say "Telefono : "
@19,40 Get A-> Telefono
@21,20 Say "E-Mail : "
@21,40 Get A-> Email
@23,20 Say "Facebook : "
@23,40 Get A-> Facebook
@25,20 Say "Hobby : "
@25,40 Get A-> Hobby

Else
Wait Window "Amigo no encontrado en la Agenda"
EndIf

@29,40 Say "Deseas modificar otro Amigo(N/S)"
@29,75 Get OPC
Read
if OPC="S"
Do Registro_Amigos 
Else
Do "C:\Users\informatica\Desktop\menu de amigos.prg"
EndIf
