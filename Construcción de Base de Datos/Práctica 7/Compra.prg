*Autor: Fatima Andrea Heraclio Lagunas
*Fecha de realizaci�n: 19/05/15
*Descripci�n del programa: Calcular el descuento de una compra
Clear
Centro=Space(30)
Cliente=Space(40)
Compra=0.00
Descuento=0.00
Total1=0.00
OPC=Space(1)
@05,40 SAY "COMPRA CON DESCUENTO"
@07,15 SAY "Nombre del Centro Comercial" 
@07,50 GET Centro
@09,15 SAY "Nombre del cliente"
@09,50 GET Cliente
@11,15 SAY "Compra realizada"
@11,50 GET Compra
READ
IF Compra>= 3000
Descuento=Compra*.1
Total1=Compra-Descuento
@13,25 SAY "Tu descuento es de"
@13,50 SAY Descuento
@15,25 SAY "El total de la compra es"
@15,50 SAY Total1
ELSE
Descuento=Compra*.05
Total1=Compra-Descuento
@13,25 SAY "Tu descuento es de"
@13,50 SAY Descuento
@15,25 SAY "El total de la compra es"
@15,50 SAY Total1
ENDIF
@19,10 Say "�Deseas ejecutar nuevamente el programa?"
@19,75 Get OPC
Read
If OPC="S"
Do"I:\Construcci�n de Base de Datos\Pr�ctica 7\compra.prg"
Else
Do"I:\Construcci�n de Base de Datos\Pr�ctica 7\menu.prg"
EndIf