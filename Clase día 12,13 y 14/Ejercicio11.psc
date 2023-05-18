//Realizar una funci�n que reciba un numero ingresado por el usuario y averig�e si el n�mero
//tiene todos sus d�gitos impares (ejemplo: 333, 55, etc.). Para esto vamos a tener que separar el
//numero en partes (si es un numero de m�s de un digito) y ver si cada n�mero es par o impar.
//		Nota: recordar el uso de la funci�n Mod y Trunc(). No podemos pasar el numero a cadena para
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
	
	Escribir "Ingrese un n�mero"
	leer num
	
	si DigitosImpares(num)
		Escribir "Todos los d�gitos son impares"
	SiNo
		Escribir "No todos los digitos son impares"
	FinSi
	
FinAlgoritmo
