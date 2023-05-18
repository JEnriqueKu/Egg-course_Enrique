
	Algoritmo Ejercicio_1
		//Realizar un programa que lea 5 números (comprendidos entre 1 y 20) e imprima el número
		//ingresado seguido de tantos asteriscos como indique su valor. Por ejemplo:
		
		definir num, i, j como entero;
		dimension num[5];
		
		Para i <- 0 Hasta 4 Con Paso 1 Hacer
			Hacer
				escribir "Ingrese numero ", i+1;
				leer num[i];
			Mientras Que num[i]<1 o num[i]>20
		Fin Para
		
		Para i <- 0 Hasta 4 Con Paso 1 Hacer
			escribir sin saltar num[i], " ";
			
			Para j <- 0 Hasta num[i]-1 Con Paso 1 Hacer
				escribir sin saltar "*";
			Fin Para
			escribir "";
			
		Fin Para
		
		
FinAlgoritmo
	
