// Realizar una función que reciba un numero ingresado por el usuario y averigüe si el número es
// primo o no. Un número es primo cuando es divisible sólo por 1 y por sí mismo, por ejemplo: 2,
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
	
	Escribir "Ingresa un número para determinar si es primo o no:"
	Leer num
	
	Escribir "El número ", num, " es primo? ", EsPrimo(num)

FinAlgoritmo
