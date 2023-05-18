Algoritmo Ejercicio3
	
//Se debe realizar un programa que:
//	1o) Pida por teclado un número (entero positivo).
//	2o) Pregunte al usuario si desea introducir o no otro número.
//		3o) Repita los pasos 1o y 2o mientras que el usuario no responda n/N (no).
//		4o) Muestre por pantalla la suma de los números introducidos por el usuario.
	
	
	Definir num, suma Como Entero
	Definir respuesta Como Caracter
	
	suma=0
	
	Hacer
		Escribir "Ingrese un número entero positivo"
		Leer num
		
		Escribir "¿Desea introducir otro número?"
		Leer respuesta
		
		suma = num+suma
		
		
	Mientras Que respuesta <> "no"
	
	Escribir "La suma de los números es " suma

FinAlgoritmo