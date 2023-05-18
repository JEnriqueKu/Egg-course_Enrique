// Realizar una funci�n que reciba un numero ingresado por el usuario y averig�e si el n�mero es
// primo o no. Un n�mero es primo cuando es divisible s�lo por 1 y por s� mismo, por ejemplo: 2,
// 3, 5, 7, 11, 13, 17, etc. Nota: recordar el uso del MOD.

Algoritmo Ejercicio5
	
	Definir num Como Entero
	
	Escribir "Ingrese un n�mero:"
	Leer num
	
	Si EsPrimo(num) Entonces
		Escribir num " es primo"
	SiNo
		Escribir num " NO es primo"
	FinSi
	
FinAlgoritmo


Funcion retorno = EsPrimo(num)
	
	Definir retorno Como Logico
	Definir i, contador Como Entero
	contador = 0
	
	Para i=1 Hasta num Hacer
		Si num mod i == 0 Entonces
			contador = contador + 1
		FinSi
	FinPara
	
	retorno = contador==2
	
FinFuncion	