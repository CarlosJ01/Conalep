*Autor: Fatima Andrea Heraclio Lagunas
*Fecha de realizaci�n: 14/04/2015
*Descripci�n del programa: Acta de nacimiento
Clear
FRegistro=Space(30)
LRegistro=Space(30)
Nombre=Space(40)
FNacimiento=Space(30)
LNacimiento=Space(30)
Nacionalidad=Space(30)
Hora=Space(15)
Sexo=Space(12)
NPadre=Space(40)
NacPadre=Space(30)
EdadP=0
NMadre=Space(40)
NacMadre=Space(30)
EdadM=0
OPC=Space(1)

@05,37 Say "DIRECCI�N GENERAL DE REGISTRO CIVIL"
@07,50 Say "Acta de nacimiento"
@09,30 Say "Fecha de Registro"
@09,50 Get FRegistro
@11,30 Say "Lugar de Registro"
@11,50 Get LRegistro
@13,50 Say "Datos del registrado"
@15,10 Say "Nombre"
@15,30 Get Nombre
@17,10 Say "Fecha de nacimiento"
@17,30 Get FNacimiento
@17,70 Say "Hora"
@17,80 Get Hora
@19,10 Say "Lugar de nacimiento"
@19,30 Get LNacimiento
@21,10 Say "Nacionalidad"
@21,30 Get Nacionalidad
@21,70 Say "Sexo"
@21,80 Get Sexo
@23,50 Say "Datos de padres"
@25,10 Say "Nombre del Padre"
@25,30 Get NPadre
@27,10 Say "Nacionalidad"
@27,30 Get NacPadre
@27,70 Say "Edad"
@27,80 Get EdadP
@29,10 Say "Nombre de la Madre"
@29,30 Get NMadre
@31,10 Say "Nacionalidad"
@31,30 Get NacMadre
@31,70 Say "Edad"
@31,80 Get EdadM
Read
@35,10 Say "�Deseas ejecutar nuevamente el programa?"
@35,75 Get OPC
Read
If OPC="S"
Do"I:\Construcci�n de Base de Datos\Pr�ctica 6\acta de nacimiento.prg"
Else
Do"I:\Construcci�n de Base de Datos\Pr�ctica 7\menu.prg"
EndIf

