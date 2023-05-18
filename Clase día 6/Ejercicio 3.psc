Algoritmo Ejercicio3
//Definicion de variables
Definir defectuosos, sinDefectos Como entero
Definir primera, segunda Como Logico
//Desarrollo
Escribir "Ingresa el número de tornillos defectuosos"
leer defectuosos
Escribir "Ingrese el número de tornillos sin defectos"
Leer sinDefectos

primera= defectuosos<200
segunda= sinDefectos>10000

Si (NO(primera)) y (No(segunda)) Entonces
	Escribir "El empleado tiene una eficiencia de grado 5"
SiNo
	Si (primera) y (No(segunda)) Entonces
		Escribir "El empleado tiene una eficiencia de grado 6"
	SiNo
		Si (NO(primera)) y (segunda) Entonces
			Escribir "El empleado tiene una eficiencia de grado 7"
		SiNo
			Escribir "El empleado tiene una eficiencia de grado 8"
		FinSi
	FinSi
FinSi

FinAlgoritmo
