Algoritmo EjerciciosEncuentro8
	
	Definir num, max, min, sumaTotal, contador como Entero
	Definir promedio como Real
	
	max=0
	min = 123456
	contador = 0
	sumaTotal = 0
	Hacer
		Escribir "Ingrese un número entero"
		Leer num
		Si (num > max)
			max = num
		FinSi
		
		Si (num <= min Y num <> 0)
			min = num
		FinSi
		
		contador = contador + 1
		sumaTotal = sumaTotal + num
		
	Mientras Que (num <> 0)
	
	contador = contador - 1
	promedio = (sumaTotal/contador)
	
	Escribir "El número máximo es " max ", el mínimo es " min " y el promedio de los números ingresados es " promedio
	
	
FinAlgoritmo