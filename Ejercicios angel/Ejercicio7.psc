// Write a program to find second largest number in  an array whitout using array.sort

Algoritmo sin_titulo
	Definir lista, max, max2, i Como Entero
	max=0
	max2=0
	Dimension lista[10]
	
	Para i=0 Hasta 9 Hacer
		lista[i]=Aleatorio(1,50)
		Escribir lista[i] ", "Sin Saltar
	FinPara
	Escribir ""
	
	Para i=0 Hasta 9 Hacer
		si max<lista[i] Entonces
			max=lista[i]
		FinSi
	FinPara
	
	Para i=0 Hasta 9 Hacer
		si max<>lista[i] Entonces
			si max2<lista[i] Entonces
				max2=lista[i]
			FinSi
		FinSi
	FinPara
	
	Escribir "El segundo mayor número es: " max2
	
FinAlgoritmo
