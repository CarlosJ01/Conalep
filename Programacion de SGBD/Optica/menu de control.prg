*Autor: Carlos Jahir Castro Cázares
*Fecha:08/10/2015
*Descripcion: Menu de Control

*Menu
Clear
Opcion=0
@03,10 to 24,100 Double
@05,15 Say "Fecha:"
@05,27 Say Date()
@05,80 Say "Hora:"
@05,85 Say Time()
@07,50 Say "Menu de Control"
@10,50 Prompt "Menu de Clientes"
@12,50 Prompt "Menu de Productos"
@14,50 Prompt "Menu de Provedores"
@16,50 Prompt "Finalisar Ejecucion"
Menu To Opcion
Do Case
Case Opcion=1
Do Menu_Clientes
Case Opcion=2
Do Menu_Productos
Case Opcion = 3
Do Menu_Provedores
Case Opcion = 4
Wait Window "Finalizar Administrador de Menus"
EndCase

Procedure Menu_Clientes
Do "E:\Programacion de SGBD\Optica\menu de clientes.prg"

Procedure Menu_Productos
Do "E:\Programacion de SGBD\Optica\Menu de Productos.prg"

Procedure Menu_Provedores
Do "E:\Programacion de SGBD\Optica\menu de provedores.prg"