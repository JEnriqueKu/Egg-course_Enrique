Algoritmo sin_titulo
//	Solicitar al usuario que ingrese la base y altura de un rectángulo, y calcular y mostrar por
//	pantalla el área y perímetro del mismo
//	area = base * altura
//	perimetro = 2 * altura + 2 * base.
	
	Definir base, altura, perimetro Como Entero
	Definir area Como Real
	
	Escribir "Ingresar base y altura "
	Leer base, altura
	area=base*altura
	perimetro= (base*2)+(altura*2)
	
	Escribir "El área es: " area
	Escribir  "El perímetro es: " perimetro
	
FinAlgoritmo
