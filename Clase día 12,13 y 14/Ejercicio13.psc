//Realizar una función que reciba un numero ingresado por el usuario y averigüe si el número es
//capicúa o no (Por ejemplo: 12321). Nota: recordar el uso del MOD y el Trunc. No podemos
//		transformar el numero a cadena para realizar el ejercicio.

Funcion retorno=Capicua(num)
	Definir retorno Como Logico
	Definir num2,auxiliar Como Real
	auxiliar=num
	num2=0
	retorno=Falso
	
	Mientras num>0 Hacer
		
		num2=(num2*10)+(trunc(num%10))
		num=trunc(num/10)
		
	FinMientras
	
	si num2==auxiliar Entonces
		retorno=Verdadero
	FinSi
	
FinFuncion

Algoritmo sin_titulo
	DEfinir num Como Entero
	
	Escribir "ingrese un número"
	Leer num
	
	Escribir Capicua(num)
	
FinAlgoritmo
