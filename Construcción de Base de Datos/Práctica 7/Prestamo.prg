*Autor: Fatima Andrea Heraclio Lagunas
*Fecha de realizaci�n: 19/05/15
*Descripci�n del programa: Prestamo de una caja de ahorros
Clear
Cliente=Space(40)
Prestamo=0
Meses=0
Intereses=0.00
Total_Intereses=0.00
Total1=0.00
Extras=0.00
OPC=Space(1)
@05,50 SAY "CAJA MORELIA VALLADOLID"
@07,20 SAY "Nombre del Cliente"
@07,45 GET Cliente
@09,20 SAY "Cantidad de prestamo" 
@09,45 GET Prestamo
@11,20 SAY "Meses a pagar"
@11,45 GET Meses
READ
IF Meses=6
Intereses=(Prestamo*0.03)*6
Total1=Prestamo+Intereses
@13,20 SAY "El total de intereses es"
@13,45 SAY Intereses
@15,20 SAY "El total a pagar es"
@15,45 SAY Total1
ELSE
Intereses=(Prestamo*0.03)*6
Extras=(Prestamo*0.05)*3
Total_Intereses=Intereses+Extras
Total1=Prestamo+Total_Intereses
@13,20 SAY "El total de Intereses es"
@13,45 SAY Total_Intereses
@15,20 SAY "El total a pagar es"
@15,45 SAY Total1
ENDIF
@19,10 Say "�Deseas ejecutar nuevamente el programa?"
@19,75 Get OPC
Read
If OPC="S"
Do"I:\Construcci�n de Base de Datos\Pr�ctica 7\prestamo.prg"
Else
Do"I:\Construcci�n de Base de Datos\Pr�ctica 7\menu.prg"
EndIf