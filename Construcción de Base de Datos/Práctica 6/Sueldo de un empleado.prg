*Autor: Fatima Andrea Heraclio Lagunas
*Fecha de realización: 14/04/2015
*Descripción del programa: Sueldo de un trabajador
Clear
Empleado=Space(40)
Puesto=Space(20)
Empresa=Space(20)
Horas=0
Tarifa=0
Semanal=0
Mensual=0

@05,40 Say "SUELDO DE UN EMPLEADO"
@07,20 SAY "Nombre del empleado"
@07,60 GET Empleado
@09,20 Say "¿Cuál es su puesto?"
@09,60 get Puesto
@11,20 Say "Nombre de la empresa"
@11,60 Get Empresa
@13,20 Say "¿Cuantas horas trabaja al día?"
@13,60 Get Horas
@15,20 Say "¿Cuanto gana por hora?"
@15,60 Get Tarifa
Read
Semanal=(Horas*Tarifa)*7
Mensual=Semanal*4

@17,40 Say Empresa
@19,20 Say "El empleado"
@19,60 Say Empleado
@21,20 Say "Del puesto"
@21,60 Say Puesto
@23,20 Say "Su sueldo semanal es:"
@23,60 Say Semanal
@25,20 Say "Y su sueldo mensual es:"
@25,60 Say Mensual