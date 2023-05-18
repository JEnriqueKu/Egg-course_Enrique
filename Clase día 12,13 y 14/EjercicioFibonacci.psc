//Realizar una función que permita obtener el término n de la sucesión de Fibonacci. La
//sucesión de Fibonacci es la sucesión de los siguientes números:
//	1, 1, 2, 3, 5, 8, 13, 21, 34, ...
//Donde cada uno de los números se calcula sumando los dos anteriores a él. Por ejemplo:
//	La sucesión del número 2 se calcula sumando (1+1)
//	Análogamente, la sucesión del número 3 es (1+2),
//	Y la del 5 es (2+3),
//	Y así sucesivamente...
//La sucesión de Fibonacci se puede formalizar de acuerdo a la siguiente fórmula:
//	Fibonacci (n) = Fibonacci (n-1) + Fibonacci (n-2) para todo n > 1
//		Fibonacci (n) = 1 para todo n <= 1
//			Por lo tanto, si queremos calcular el término "n" debemos escribir una función que reciba
//				como argumento el valor de "n" y que calcule la serie hasta llegar a ese valor.

Funcion retorno=PosicionFibonacci(num)
	Definir i, A, B, suma, retorno como Entero;
    A <- 0
    B <- 1
    suma <- 0
	Escribir " "
    Para i <-1 Hasta num Con Paso 1  Hacer
        A <- B
        B <- suma
        suma <- A + B
    FinPara
	retorno=suma
FinFuncion

Algoritmo sin_titulo
	Definir num Como Entero
	
	Escribir "Ingrese el número de posición que desea saber de la sucesión de Fibonacci"
	leer num
	
	Escribir "El número de la posición " num " es " PosicionFibonacci(num)
	
FinAlgoritmo
