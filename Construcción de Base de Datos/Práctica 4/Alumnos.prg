Clear
Nombre=Space(30)
Domicilio=Space(50)
Especialidad=Space(20)
Escuela=Space(20)
Grupo=0
OPC=Space(1)

@05,40 Say "Programaci�n en SQL de Visual Fox"
@07,20 Say "Escribe tu nombre"
@07,50 Get Nombre
@09,20 Say "�Cual es tu domicilio?"
@09,50 Get Domicilio
@11,20 Say "�En donde estudias?"
@11,50 Get Escuela
@13,20 Say "�Cual es tu especialidad?"
@13,50 Get Especialidad
@15,20 Say "�Cual es tu grupo?"
@15,50 Get Grupo
Read
@19,10 Say "�Deseas ejecutar nuevamente el programa?"
@19,75 Get OPC
Read
If OPC="S"
Do"I:\Construcci�n de Base de Datos\Pr�ctica 4\Alumnos.prg"
Else
Do"I:\Construcci�n de Base de Datos\Pr�ctica 7\menu.prg"
EndIf