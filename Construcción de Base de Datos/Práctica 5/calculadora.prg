*Autor: Fatima Andrea Heraclio Lagunas
*Fecha de creaci�n: 24/03/15
*Descripci�n del programa: Calculadora
clear
N1=0
N2=0
N3=0
Suma=0
Resta=0
Multiplica=0
Divide=0.000
OPC=Space(1)

@05,40 say "Programa que realiza operaciones aritmeticas"
@07,20 say "Teclea el valor del n�mero 1"
@07,60 get N1
@09,20 say "Teclea el valor del n�mero 2"
@09,60 get N2
@11,20 say "Teclea el valor del n�mero 3"
@11,60 get N3
Read
Suma=N1+N2+N3
Resta=N1-N2-N3
Multiplica=N1*N2*N3
Divide=N1/N2
@13,20 say "El resultado de la SUMA es:"
@13,60 say Suma
@15,20 say "El resultado de la RESTA es:"
@15,60 say Resta
@17,20 say "El resultado de la MULTIPLICACI�N es:"
@17,60 say Multiplica
@19,20 say "El resultado de la DIVISI�N es:"
@19,60 say Divide
@22,40 say "EJECUCI�N FINALIZADA"
@25,10 Say "�Deseas ejecutar nuevamente el programa?"
@25,75 Get OPC
Read
If OPC="S"
Do"I:\Construcci�n de Base de Datos\Pr�ctica 5\calculadora.prg"
Else
Do"I:\Construcci�n de Base de Datos\Pr�ctica 7\menu.prg"
EndIf