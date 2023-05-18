// Dada una secuencia de números ingresados por teclado que finaliza con un -1, por
// ejemplo: 5,3,0,2,4,4,0,0,2,3,6,0,...,-1; realizar un programa que calcule el promedio de
// los números ingresados. Suponemos que el usuario no insertará número negativos.

Algoritmo ejercicio3
	Definir num, suma, contador Como Entero
	
	Escribir "Este programa calcula el promedio de los números ingresados." 
	Escribir "Ingresa -1 para finalizar el input."
	num = 0
	suma = 0
	contador = 0
	
	Mientras num > -1 Hacer
		Escribir "Ingresa un número más para promediar:"
		Leer num
		suma = suma + num
		contador = contador + 1
	Fin Mientras
	
	Escribir "El promedio de la secuencia de números es: ", suma / contador
	
FinAlgoritmo
