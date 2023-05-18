//Realizar una funci�n que permita obtener el t�rmino n de la sucesi�n de Fibonacci. La
//sucesi�n de Fibonacci es la sucesi�n de los siguientes n�meros:
//	1, 1, 2, 3, 5, 8, 13, 21, 34, ...
//Donde cada uno de los n�meros se calcula sumando los dos anteriores a �l. Por ejemplo:
//	La sucesi�n del n�mero 2 se calcula sumando (1+1)
//	An�logamente, la sucesi�n del n�mero 3 es (1+2),
//	Y la del 5 es (2+3),
//	Y as� sucesivamente...
//La sucesi�n de Fibonacci se puede formalizar de acuerdo a la siguiente f�rmula:
//	Fibonacci (n) = Fibonacci (n-1) + Fibonacci (n-2) para todo n > 1
//		Fibonacci (n) = 1 para todo n <= 1
//			Por lo tanto, si queremos calcular el t�rmino "n" debemos escribir una funci�n que reciba
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
	
	Escribir "Ingrese el n�mero de posici�n que desea saber de la sucesi�n de Fibonacci"
	leer num
	
	Escribir "El n�mero de la posici�n " num " es " PosicionFibonacci(num)
	
FinAlgoritmo
