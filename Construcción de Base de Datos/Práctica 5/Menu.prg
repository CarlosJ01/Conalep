*Autor: Fatima Andrea Heraclio Lagunas
*Fecha de realizaci�n: 19/05/15
*Descripci�n del programa: Men� basico
Clear
Option=0
@03,10 SAY "La hora es"
@03,25 SAY Time()
@03,80 SAY "La fecha es"
@03,95 SAY Date()
@05,40 SAY "Men� principal de programas realizados"
@07,20 Prompt "Datos de alumnos"
@09,20 Prompt "Operaciones matematicas"
@11,20 Prompt "Promedio de calificaciones"
@13,20 Prompt "Acta de nacimiento"
@15,20 Prompt "Prestamo"
@17,20 Prompt "Compra con descuento"
@19,20 Prompt "Finalizar Ejecuci�n"
Menu to Option
Do case
Case Option=1
Do "I:\Construcci�n de Base de Datos\Pr�ctica 4\Mensajes%20con%20Get.prg"
Case Option=2
Do "I:\Construcci�n de Base de Datos\Pr�ctica 5\Calculadora.prg"
Case Option=3
Do "I:\Construcci�n de Base de Datos\Pr�ctica 6\Promedio%20del%20primer%20parcial.prg"
Case Option=4
Do "I:\Construcci�n de Base de Datos\Pr�ctica 6\Acta%20de%20Nacimiento.prg"
Case Option=5
Do "I:\Construcci�n de Base de Datos\Pr�ctica 7\Prestamo.prg"
Case Option=6
Do "I:\Construcci�n de Base de Datos\Pr�ctica 7\Compra.prg"
Case Option=7
Wait Window "Ejecuci�n finalizada"
EndCase