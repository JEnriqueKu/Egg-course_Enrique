// Realizar una funci�n que reciba un numero ingresado por el usuario y averig�e si el n�mero es
// primo o no. Un n�mero es primo cuando es divisible s�lo por 1 y por s� mismo, por ejemplo: 2,
// 3, 5, 7, 11, 13, 17, etc. Nota: recordar el uso del MOD.

Funcion retorno <- EsPrimo (num Por Referencia)
	Definir retorno Como Logico
	Definir i Como Entero
	retorno = Verdadero
	
	Para i <- 2 Hasta num^1/2 Con Paso 1 Hacer
		Si num % i == 0 Entonces
			retorno = Falso
		Fin Si
		
		si retorno == falso
			i=trunc(num^1/2)
		FinSi
		
	Fin Para
	
Fin Funcion

Algoritmo ejercicio5
	Definir num Como Entero
	
	Escribir "Ingresa un n�mero para determinar si es primo o no:"
	Leer num
	
	Escribir "El n�mero ", num, " es primo? ", EsPrimo(num)

FinAlgoritmo
