//Diseñe un algoritmo que lea un número de tres cifras y determine si es o no capicúa.
Algoritmo Problema4
//	definir num,n1,n3 Como Entero
//	Escribir "ingrese un numero de tres cifras"
//	leer num
//	
//	n1 = trunc(num/100)
//	n3 = num%10
//	
//	si n1 = n3 Entonces
//		Escribir "el numero es capicua"
//	SiNo
//		Escribir "el numero no es capicua"
//	FinSi
	
	Definir num, aux, numG Como entero
	Escribir "ingrese un número"
	leer num
	
	numG=num
	aux=0
	Mientras num<>0 Hacer
		Escribir num
		Escribir aux
		aux= aux*10 + num%10
		num=trunc(num/10)		
	Fin Mientras
	
	si numG==aux Entonces
		Escribir "el numero es capicua"
		
	SiNo
		Escribir "el numero no es capicua"
	FinSi
FinAlgoritmo