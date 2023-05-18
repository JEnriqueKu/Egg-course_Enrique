//Realizar una función que calcule la suma de los dígitos de un número.
//Ejemplo: 25 = 2 + 5 = 7
//Nota: Para obtener el último número de un digito de 2 cifras o más debemos pensar en el
//		resto de una división entre 10. Recordar el uso de la función Mod y Trunc.

Funcion retorno=SumaDeDigitos(num)
	Definir retorno, suma Como Entero
	suma=0
	
	Mientras num>0 Hacer
		suma=suma+num%10
		num=trunc(num/10)
	FinMientras
	retorno=suma
	
FinFuncion

Algoritmo sin_titulo
	Definir num Como Entero
	
	Escribir "Ingrese un número"
	Leer num
	
	Escribir SumaDeDigitos(num)
	
FinAlgoritmo
