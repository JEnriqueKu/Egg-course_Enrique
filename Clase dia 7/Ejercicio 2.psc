Algoritmo sin_titulo
	
	////Escriba un programa en el cual se ingrese un valor límite positivo, y a continuación
	////solicite números al usuario hasta que la suma de los números introducidos supere el
	////límite inicial.

		Definir num_limite, num1, num2, var Como Real
		Escribir "Ingrese valor limite"
		Leer num_limite
		Escribir "Ingrese 1er numero a sumar"
		Leer num1
		Escribir "Ingrese 2do numero a sumar"
		Leer num2
		var = num1 + num2
		Mientras num_limite > var Hacer
			Escribir "La suma no supera el valor limite, ingrese un nuevo numero a sumar"
			Leer num1
			var = var + num1
		Fin Mientras
		Escribir "Tu suma super el numero limite: " , var
	

FinAlgoritmo
