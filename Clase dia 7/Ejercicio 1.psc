Algoritmo sin_titulo
	
	
		////	Escriba un programa que valide si una nota est� entre 0 y 10, sino est� entre 0 y 10 la
		////	nota se pedir� de nuevo hasta que la nota sea correcta.
		
		Definir num Como Entero
		
		Escribir "Ingrese una nota entre 0 y 10"
		Leer num
		
		Mientras num < 0 o num > 10 Hacer
			Escribir "Lo siento, ingrese un numero entre 1 y 10"
			Leer num
		Fin Mientras
		
		Escribir num " Es valida"
		
		

FinAlgoritmo
