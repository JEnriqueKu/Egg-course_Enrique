// Realizar una función que reciba un numero ingresado por el usuario y averigüe si el número es
// primo o no. Un número es primo cuando es divisible sólo por 1 y por sí mismo, por ejemplo: 2,
// 3, 5, 7, 11, 13, 17, etc. Nota: recordar el uso del MOD.

Algoritmo Ejercicio5
	
	Definir num Como Entero
	
	Escribir "Ingrese un número:"
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