*Autor: Fatima Andrea Heraclio Lagunas
*Fecha de realización: 14/04/2015
*Descripción de programa: Sacar el promedio de un alumno
Clear
CPOO=0.0
CBD=0.0
CIngles=0.0
CContext=0.0
CWeb=0.0
CAzar=0.0
CBachi=0.0
PromG=0.00
OPC=Space(1)
@05,30 SAY "Promedio de un alumno en el primer parcial"
@07,20 SAY "Programación Orientada a Objetos"
@07,70 GET CPOO
@09,20 SAY "Construcción de Bases de Datos"
@09,70 GET CBD
@11,20 SAY "Comunicación Activa en Inglés"
@11,70 GET CIngles
@13,20 SAY "Contextualización de Fenómenos"
@13,70 GET CContext
@15,20 SAY "Uso de Herramientas para Aplicaciones web"
@15,70 GET CWeb
@17,20 SAY "Tratamiento de datos y azar"
@17,70 GET CAzar
@19,20 SAY "Bachillerato"
@19,70 GET CBachi
Read
PromG=(CPOO+CBD+CIngles+CContext+CWeb+CAzar+CBachi)/7
@21,20 SAY "Tu promedio del primer parcial es:"
@21,70 SAY PromG
@25,10 Say "¿Deseas ejecutar nuevamente el programa?"
@25,75 Get OPC
Read
If OPC="S"
Do"I:\Construcción de Base de Datos\Práctica 6\promedio.prg"
Else
Do"I:\Construcción de Base de Datos\Práctica 7\menu.prg"
EndIf

*Por si alguien no entiende, en los cuadritos frente a los nombre de la materia se escribe la calificación
