//Los empleados de una f�brica trabajan en dos turnos: Diurno y Nocturno. Se desea calcular el
//jornal diario de acuerdo con las siguientes reglas:
//	a) La tarifa de las horas diurnas es de $ 90
//	b) La tarifa de las horas nocturnas es de $ 125
//	c) En caso de ser feriado, la tarifa se incrementa en un 10% si el turno es diurno y en
//		un 15% si el turno es nocturno.
//			
//	El programa debe solicitar la siguiente informaci�n al usuario: el nombre del trabajador, el d�a
//	de la semana, el turno (diurno o nocturno) y la cantidad de horas trabajadas. Adem�s,
//debemos preguntarle al usuario si el d�a de la semana (lunes, martes, mi�rcoles, etc.) era
//	festivo o no, para poder calcular el jornal diario. Utilice una funci�n para realizar el c�lculo.


Funcion retorno=JornalDiario(nombre, turno, dia, festivo, horas)
	Definir retorno, salario Como Entero
	
	si turno=="d" o turno== "D" Entonces
		salario=horas*90
	SiNo
		salario=horas*125
	FinSi
	
	si festivo=="s" o festivo=="S" o festivo=="si" o festivo=="Si" Entonces
		si turno=="d" o turno== "D" Entonces
			salario=salario+salario*0.10
			
		SiNo
			salario=salario+salario*0.15
		FinSi
	FinSi
	
	retorno=salario
	
FinFuncion

Algoritmo sin_titulo
	Definir nombre, turno, festivo, dia Como Caracter
	Definir horas como entero
	
	Escribir "Ingrese el nombre del trabajador"
	Leer nombre
	
	Escribir "Ingrese el d�a de la semana"
	Leer dia
	
	Escribir "Ingrese el turno"
	Escribir "d - Diurno"
	Escribir "n - Nocturno"
	Leer turno
	
	Escribir "Ingrese la cantidad de horas trabajadas"
	leer horas
	
	Escribir "�El d�a es festivo?"
	Escribir "s - S�"
	Escribir "n - No"
	Leer festivo
	
	Escribir JornalDiario(nombre, turno, dia, festivo, horas)
	
FinAlgoritmo
