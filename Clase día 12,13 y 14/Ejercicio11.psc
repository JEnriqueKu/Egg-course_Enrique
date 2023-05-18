//Realizar una función que reciba un numero ingresado por el usuario y averigüe si el número
//tiene todos sus dígitos impares (ejemplo: 333, 55, etc.). Para esto vamos a tener que separar el
//numero en partes (si es un numero de más de un digito) y ver si cada número es par o impar.
//		Nota: recordar el uso de la función Mod y Trunc(). No podemos pasar el numero a cadena para
//			realizar el ejercicio.

Funcion retorno=DigitosImpares(num)
	Definir retorno Como Logico
	Definir contador, contador2 Como Entero
	contador=0
	contador2=0
	retorno=falso
	
	Mientras num>0 Hacer
		
		si (num%10)%2==1
			contador=contador+1
		FinSi
		num=trunc(num/10)
		contador2=contador2+1
	FinMientras
	
	si contador==contador2
		retorno=Verdadero
	FinSi
FinFuncion

Algoritmo sin_titulo
	Definir num Como Entero
	
	Escribir "Ingrese un número"
	leer num
	
	si DigitosImpares(num)
		Escribir "Todos los dígitos son impares"
	SiNo
		Escribir "No todos los digitos son impares"
	FinSi
	
FinAlgoritmo
