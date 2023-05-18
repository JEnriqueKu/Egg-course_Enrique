Algoritmo sin_titulo
	definir divisor, dividendo, contador Como Entero
	Definir resultado como real
	Escribir "Ingrese el dividendo: "
	leer dividendo
	Escribir "Ingrese el divisor: "
	leer divisor
	division(dividendo, divisor, resultado, contador)
	Escribir "El residuo de la división " dividendo "/" divisor " es " resultado " y el cociente es: " contador
FinAlgoritmo
SubProceso division(dividendo, divisor, resultado Por Referencia, contador Por Referencia)
	contador = 0
	Hacer
		resultado = dividendo - divisor
		dividendo = resultado
		contador = contador +1
	Mientras Que resultado >= divisor
FinSubProceso