*Autor: Carlos Jahir Castro C�zares
*Fecha:08/10/2015
*Descripcion: Clave de Acceso
Clear
Clave=0
Set Color to R/B,W/N
@10,20 say "Ingresa la Clave de Acceso: "
@10,50 Get Clave
Read
Set Color to N/W
If Clave = 502
@15,50 Say "la clave es Correcta"
Do Form "E:\Programacion de SGBD\Optica\Portada.scx"
Read
Do "E:\Programacion de SGBD\Optica\menu de control.prg"
Else
Set Color to N/W
@ 15,50 Say "Clave incorrecta, Intenta de nuevo "
Wait 
Set Color to N/W
Do "E:\Programacion de SGBD\Optica\clave de control.prg"
Read
Endif