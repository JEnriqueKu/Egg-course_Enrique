Algoritmo sin_titulo
//	Un colegio desea saber qué porcentaje de niños y qué porcentaje de niñas hay en el curso
//	actual. Diseñar un algoritmo para este propósito. Recuerda que para calcular el porcentaje
//				puedes hacer una regla de 3 simple. El programa debe solicitar al usuario que ingrese la
//				cantidad total de niños, y la cantidad total de niñas que hay en el curso.
	
	Definir boys, girls, total Como Entero
	Definir porcentajeBoys, porcentajeGirls Como Real
	
	Escribir "Ingresar el número de niños"
	Leer boys
	
	Escribir "Ingresar el número de niñas"
	Leer girls
	
	total= boys+girls
	
	porcentajeBoys=boys/total*100
	porcentajeGirls=girls/total*100
	
	Escribir "El porcentaje de niños es: " porcentajeBoys "%"
	Escribir "El porcentaje de niñas es: " porcentajeGirls "%"
	
FinAlgoritmo
