Algoritmo sin_titulo
	
//	Hacer un algoritmo que lea un n�mero por el teclado y determine si tiene tres d�gitos.
	
	Definir num, contador Como Entero
	
	Escribir "Ingrese un n�mero"
	Leer num
	contador = 0
	
	Mientras num >=1 Hacer
		Escribir num
		Escribir num/10 " num/10"
		Escribir trunc(num/10) " trunc(num/10)"
		num=trunc(num/10)
		contador = contador +1
		Escribir contador
		Escribir ""
	FinMientras
	
	Escribir "los d�gitos son: " contador
	
FinAlgoritmo