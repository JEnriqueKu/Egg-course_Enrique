Algoritmo sin_titulo
	////Escriba un programa que lea un número entero (altura) y a partir de él cree una escalera
	////invertida de asteriscos con esa altura. Por ejemplo, si ingresamos una altura de 5 se
	////deberá mostrar:
	////	*****
	////	****
	////	***
	////	**
	////    *
	
		Definir num, i, j Como Entero
		Escribir "Ingrese la altura: "
		leer num
		Para i = num Hasta 1 Con Paso -1 Hacer
			para j = 1 hasta i Con Paso 1 hacer
				Escribir Sin Saltar "*"
			FinPara
			Escribir " salto "
		Fin Para
		
FinAlgoritmo
	
