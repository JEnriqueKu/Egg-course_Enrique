//Realizar un procedimiento que permita intercambiar el valor de dos variables de tipo entero.
//La variable A, debe terminar con el valor de la variable B.

SubProceso Intercambio(a Por Referencia, b Por Referencia)
	Definir aux Como Entero
	
	aux=a
	a=b
	b=aux
	
FinSubProceso

Algoritmo sin_titulo
	Definir a, b Como Entero
	a=10
	b=5
	
	Escribir "Valores antes: " a " " b
	
	Intercambio(a , b)
	
	Escribir "Valores despues: " a " " b
	
FinAlgoritmo
