Algoritmo sin_titulo
//	Crear un programa que solicite al usuario que ingrese el precio de un producto al inicio del
//	año, y el precio del mismo producto al finalizar el año. El programa debe calcular cuál fue el
//	porcentaje de aumento que tuvo ese producto en el año y mostrarlo por pantalla.
	
	Definir precioIn, precioFin, aumento Como Real
	
	Escribir "Ingresar el precio inicial y despues el final "
	Leer precioIn, precioFin
	
	aumento=((precioFin/precioIn)*100)-100
	
	
	Escribir "El porcentaje de aumento en el año fue de: " aumento "%"
	
FinAlgoritmo
