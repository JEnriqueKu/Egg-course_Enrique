Algoritmo sin_titulo
//	Un colegio desea saber qu� porcentaje de ni�os y qu� porcentaje de ni�as hay en el curso
//	actual. Dise�ar un algoritmo para este prop�sito. Recuerda que para calcular el porcentaje
//				puedes hacer una regla de 3 simple. El programa debe solicitar al usuario que ingrese la
//				cantidad total de ni�os, y la cantidad total de ni�as que hay en el curso.
	
	Definir boys, girls, total Como Entero
	Definir porcentajeBoys, porcentajeGirls Como Real
	
	Escribir "Ingresar el n�mero de ni�os"
	Leer boys
	
	Escribir "Ingresar el n�mero de ni�as"
	Leer girls
	
	total= boys+girls
	
	porcentajeBoys=boys/total*100
	porcentajeGirls=girls/total*100
	
	Escribir "El porcentaje de ni�os es: " porcentajeBoys "%"
	Escribir "El porcentaje de ni�as es: " porcentajeGirls "%"
	
FinAlgoritmo
