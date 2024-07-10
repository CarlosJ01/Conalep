*Autor: Fatima Andrea Heraclio Lagunas
*Fecha de realización: 22/05/15
*Descripción del programa: Una base de datos de una zapateria
Clear
Opcion=0
@03,10 To 24,100 Double
@05,15 Say "Fecha"
@05,27 Say Date()
@05,80 Say "Hora"
@05,87 Say Time()
@07,40 Say "ADMINISTRACIÓN DE LA B.D. DE UNA ZAPATERIA"
@10,50 Prompt "Registro de Zapatos"
@12,50 Prompt "Dar de baja un registro"
@14,50 Prompt "Consultar zapatos"
@16,50 Prompt "Modificar registro de zapatos"
@18,50 Prompt "Reporte general de existencias"
@20,50 Prompt "Finalizar ejecucion"
Menu to Opcion
Do case
Case Opcion=1
Do Registro_Zapatos
Case Opcion=2
Do Elimina_Registro
Case Opcion=3
Do Consultar_Zapato
Case Opcion=4
Do Modificar_Datos
Case Opcion=5
Do Reporte_General
Case Opcion=6
wait window "FINALIZA LA ADMINISTRACION DE LA B.D."
EndCase
*Comienza el proceso de registro de zapatos
Procedure Registro_Zapatos
Clear
Clave_Z=0
Modelo_Z=Space(20)
Color_Z=Space(15)
Precio_Z=0
Descripcion_Z=Space(30)
OPC=Space(1)
@05,15 Say "Fecha"
@05,27 Say Date()
@05,80 Say "Hora"
@05,87 Say Time()
@10,40 Say "Registro de Zapatos"
@12,40 Say "Zapateria LA MODERNA"
@14,20 Say "Clave del zapato"
@14,45 Get Clave_Z
READ
USE "F:\Construcción de Base de Datos\Práctica 8\ZAPATOS.dbf"
Select 1
Go top
Locate for Clave= Clave_Z
IF EOF()
@16,20 Say "Modelo de Zapato"
@16,45 Get Modelo_Z
@18,20 Say "Color del Zapato"
@18,45 Get Color_Z
@20,20 Say "Precio del Zapato"
@20,45 Get Precio_Z
@22,20 Say "Descripción del zapato"
@22,45 Get Descripcion_Z
READ
APPEND BLANK
REPLACE CLAVE WITH Clave_Z
REPLACE MODELO WITH Modelo_Z
REPLACE COLOR WITH Color_Z
REPLACE PRECIO WITH Precio_Z
REPLACE DESCRIPCIO WITH Descripcion_Z
ELSE
Wait window "La clave ya esta registrada"
EndIf
@24,40 Say "¿Deseas realizar otro registro(S/N)?"
@24,75 Get OPC
READ
IF OPC="N"
Do"F:\Construcción de Base de Datos\Práctica 8\MZapatos.prg"
ELSE
Do Registro_Zapatos
EndIf
*Aquí comienza otra práctica y es lo de borrar registros
*Fecha de modificación: 02/06/2015
PROCEDURE Elimina_Registro
Clear
OPC=Space(1)
Clave_Z=0
Set Default to "F:\Construcción de Base de Datos\Práctica 8"
@05,15 say "Fecha"
@05,27 say Date()
@05,80 say "Hora"
@05,87 say Time()
@10,40 say "ELIMINAR REGISTROS"
@12,40 say "Zapateria LA MODERNA"
@14,20 say "Clave del registro"
@14,45 get Clave_Z
READ
USE Zapatos
Select 1
Go top
Locate for Clave=Clave_Z
IF.NOT.EOF()
@16,20 say "Modelo de zapato"
@16,45 say A->Modelo
@18,20 say "Color del zapato"
@18,45 say A->Color
@20,20 say "Precio del zapato"
@20,45 say A->Precio
@22,20 Say "Descripción"
@22,45 say A->Descripcio
Else
wait window "Esa clave NO esta dada de alta"
EndIf
@24,40 Say "¿Qué deseas borrarlo?(S/N)"
@24,75 get OPC
Read
If OPC="S"
DELETE
PACK
Wait window "El registro ha sido eliminado"
Else
Wait window "No se ha eliminado el registro"
EndIf
@26,40 say "¿Deseas borrar otro registro?(S/N)"
@26,75 Get OPC
READ
IF OPC="S"
Do Elimina_Registro
Else
Do"F:\Construcción de Base de Datos\Práctica 8\MZapatos.prg"
ENDIF
*Aquí comienza consultar
*Fecha de realización: 09/06/2015
PROCEDURE Consultar_Zapato
Clear
Clave_z=0
OPC=Space(1)
SET DEFAULT TO "F:\Construcción de Base de Datos\Práctica 8"
@05,15 say "Fecha"
@05,27 say Date()
@05,80 say "Hora"
@05,87 say Time()
@10,40 say "CONSULTAR REGISTRO"
@12,40 say "Zapateria LA MODERNA"
@14,20 say "Clave del registro"
@14,45 get Clave_Z
READ
USE Zapatos
Select 1
Go top
Locate for Clave=Clave_Z
IF.NOT.EOF()
@16,20 say "Modelo de zapato"
@16,45 say A->Modelo
@18,20 say "Color del zapato"
@18,45 say A->Color
@20,20 say "Precio del zapato"
@20,45 say A->Precio
@22,20 Say "Descripción"
@22,45 say A->Descripcio
Else
wait window "Esa clave NO esta dada de alta"
EndIf
@26,40 say "¿Deseas consultar otro registro?(S/N)"
@26,75 Get OPC
READ
IF OPC="S"
Do Consultar_Zapato
Else
Do "F:\Construcción de Base de Datos\Práctica 8\MZapatos.prg"
ENDIF
*Aquí comienza modificar
*Fecha de realización: 09/06/2015
PROCEDURE Modificar_Datos
Clear
Clave_z=0
OPC=Space(1)
SET DEFAULT TO "F:\Construcción de Base de Datos\Práctica 8"
@05,15 say "Fecha"
@05,27 say Date()
@05,80 say "Hora"
@05,87 say Time()
@10,40 say "MODIFICAR REGISTRO"
@12,40 say "Zapateria LA MODERNA"
@14,20 say "Clave del registro"
@14,45 get Clave_Z
READ
USE Zapatos
Select 1
Go top
Locate for Clave=Clave_Z
IF.NOT.EOF()
@16,30 say "MODIFICA LO QUE DESEES"
@18,20 say "Modelo de zapato"
@18,45 get A->Modelo
@20,20 say "Color del zapato"
@20,45 get A->Color
@22,20 say "Precio del zapato"
@22,45 get A->Precio
@24,20 Say "Descripción"
@24,45 get A->Descripcio
Else
wait window "Esa clave NO esta dada de alta"
EndIf
@28,40 say "¿Deseas modificar otro registro?(S/N)"
@28,75 Get OPC
READ
IF OPC="S"
Do Modificar_Datos
Else
Do"F:\Construcción de Base de Datos\Práctica 8\MZapatos.prg"
ENDIF
*Aquí comienza el proceso de consulta general
*Fecha de realización: 16/06/2015
PROCEDURE Reporte_General
Clear
@03,15 SAY "Fecha"
@03,27 SAY Date()
@03,80 SAY "Hora"
@03,87 SAY Time()
OPC=Space(1)
SET DEFAULT TO "F:\Construcción de Base de Datos\Práctica 8"
@05,40 SAY "Consulta general de la B.D. de una zapateria"
@07,50 SAY "Zapateria LA MODERNA"
Select A
USE Zapatos
Go Top
Contador=0
Linea=12
@10,05 SAY "Clave del zapato"
@10,25 SAY "Modelo"
@10,40 SAY "Color"
@10,55 SAY "Precio"
@10,70 SAY "Descripción"
Do while .NOT. EOF()
@Linea,05 SAY A->Clave
@Linea,25 SAY A->Modelo
@Linea,40 SAY A->Color
@Linea,55 SAY A->Precio
@Linea,70 SAY A->Descripcio
Linea=Linea+1
Contador=Contador+1
SKIP
If Contador >20
@24,40 SAY "Presiona <ENTER> para continuar"
Wait
Contador=0
Linea=12
@12,01 clear 24,100
ENDIF
ENDDO
IF EOF()
@25,40 SAY "Deseas hacer otra consultra general(S/N)?"
@25,80 GET OPC
READ
IF OPC="S"
DO Reporte_General
ELSE
DO "F:\Construcción de Base de Datos\Práctica 8\MZapatos.prg"
ENDIF
ENDIF
