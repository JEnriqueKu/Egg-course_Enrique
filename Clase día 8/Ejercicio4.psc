Algoritmo Ejercicio3
	
//Se debe realizar un programa que:
//	1o) Pida por teclado un n�mero (entero positivo).
//	2o) Pregunte al usuario si desea introducir o no otro n�mero.
//		3o) Repita los pasos 1o y 2o mientras que el usuario no responda n/N (no).
//		4o) Muestre por pantalla la suma de los n�meros introducidos por el usuario.
	
	
	Definir num, suma Como Entero
	Definir respuesta Como Caracter
	
	suma=0
	
	Hacer
		Escribir "Ingrese un n�mero entero positivo"
		Leer num
		
		Escribir "�Desea introducir otro n�mero?"
		Leer respuesta
		
		suma = num+suma
		
		
	Mientras Que respuesta <> "no"
	
	Escribir "La suma de los n�meros es " suma

FinAlgoritmo