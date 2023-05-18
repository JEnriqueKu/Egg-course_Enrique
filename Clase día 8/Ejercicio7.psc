Algoritmo sin_titulo
	
//	Se pide escribir un programa que calcule la suma de los N primeros números pares. Es
//	decir, si ingresamos el número 5 como valor de N, el algoritmo nos debe realizar la suma
//	de los siguientes valores: 2+4+6+8+10.
	
		definir num, i, suma como entero 
		Escribir "Ingrese una cantidad: " 
		Leer num 
		i = 0
		suma = 0
		
		hacer 
			i = i + 2
			Escribir "i = " i
			suma = suma + i
			
			
		Mientras Que (i < num*2) 
		
		Escribir suma
		
FinAlgoritmo

