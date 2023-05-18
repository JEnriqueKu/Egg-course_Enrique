Funcion resultado <- Fibonacci ( n )
	Definir resultado, suma, i, n1, n2 Como Entero
	suma = 0
	n1 = -1
	n2 = 1
	para i = 0 hasta n-1 Hacer
		suma = n1+n2
		n1 = n2
		n2 = suma
		Escribir "Número de la sucesión: " suma
	FinPara
	resultado = suma
Fin Funcion

Algoritmo sin_titulo
	definir n, resultado Como Entero
	Escribir "Ingresar el número para la sucesión de Fibonacci: "
	leer n
	resultado = Fibonacci(n)
	Escribir "El valor final de la sucesión es: " resultado
FinAlgoritmo