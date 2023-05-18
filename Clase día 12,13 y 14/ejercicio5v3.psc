// Realizar una funci�n que reciba un numero ingresado por el usuario y averig�e si el n�mero es
// primo o no. Un n�mero es primo cuando es divisible s�lo por 1 y por s� mismo, por ejemplo: 2,
// 3, 5, 7, 11, 13, 17, etc. Nota: recordar el uso del MOD.

Funcion resultado <- esDivisible(entrada, dividendo)
	Definir resultado Como Logico
	resultado =  entrada % dividendo == 0
Fin Funcion


Algoritmo revisarPrimo
	Definir entrada Como Entero
	
	validarEntrada(entrada)
	
	Definir contador Como Entero
	contador = 2
	
	Definir tieneDivisible Como Logico
	tieneDivisible = falso
	
	Mientras contador < entrada y No(tieneDivisible) Hacer
		tieneDivisible = esDivisible(entrada, contador)
		contador = contador + 1
	Fin Mientras
	
	Escribir contador
	Escribir "El n�mero es primo: ", No(tieneDivisible)
FinAlgoritmo

Subproceso validarEntrada(entrada por Referencia)
	Repetir
		Escribir "Introduzca un numero mayor a 1"
		Leer entrada
	Mientras Que entrada <= 1
FinSubproceso