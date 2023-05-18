// Realizar una función que calcule y retorne la suma de todos los divisores del número n
// distintos de n. El valor de n debe ser ingresado por el usuario.

Algoritmo Ejercicio6
	Definir num Como Entero
	
	Escribir "Ingrese un número"
	Leer num
	
	Escribir "La suma de los divisores de " num " es " SumaDivisores(num)
	
FinAlgoritmo

Funcion retorno = SumaDivisores(n)
	Definir retorno, suma, i Como Entero
	suma=0
	
	Para i=1 hasta n-1 Hacer
		si n mod i == 0
			suma=suma+i
		FinSi
	FinPara
	
	retorno = suma
FinFuncion