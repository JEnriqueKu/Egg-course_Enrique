Algoritmo sin_titulo
	
//	Escribir una estructura PARA que le solicite al usuario varios n�meros y al finalizar muestre el
//		mayor n�mero ingresado.
	
	Definir num, mayor, i Como Entero
	
	mayor=0
	
	Para i <- 1 Hasta 5 Con Paso 1 Hacer
		Escribir "Ingrese un n�mero"
		Leer  num
		
		si num > mayor Entonces
			mayor = num
		FinSi
		
	Fin Para
	
	Escribir "El n�mero mayor fue: " mayor
	
FinAlgoritmo
