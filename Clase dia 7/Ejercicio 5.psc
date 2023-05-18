////Escriba un programa que solicite al usuario números decimales mientras que el usuario
////escriba números mayores al primero que se ingresó. Por ejemplo: si el usuario ingresa
////		como primer número un 3.1, y luego ingresa un 4, el programa debe solicitar un tercer
////		número. El programa continuará solicitando valores sucesivamente mientras los valores
////			ingresados sean mayores que 3.1, caso contrario, el programa finaliza.


Algoritmo sin_titulo
	Definir num1, num2 Como Real
	Escribir "Ingrese numeros decimales"
	
	Leer num1
	Escribir "Ingrese numeros decimales nuevamente"
	
	leer num2
	
	Mientras num2 > num1 Hacer
		Escribir "Ingrese nuevamente numeros decimales"
		leer num2
		
	Fin Mientras
	Escribir "El numero que ingresaste es menor " , num1
	
FinAlgoritmo