//Reverse an integer

Algoritmo sin_titulo
	Definir num Como Entero
	Escribir "Ingrese un número"
	leer num
	
	Escribir reverse(num)
FinAlgoritmo

Funcion inverted=reverse(num)
	Definir inverted Como Entero
	
	inverted=0
	
	Mientras num>=1 Hacer
		inverted=inverted*10 + num%10
		num=trunc(num/10)
	FinMientras
	
FinFuncion
	