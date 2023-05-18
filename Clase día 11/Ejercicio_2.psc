Algoritmo Ejercicio_2
	//Escribir un programa que lea un número entero y devuelva el número de dígitos que
	//componen ese número. Por ejemplo, si introducimos el número 12345, el programa
	//deberá devolver 5. Calcular la cantidad de dígitos matemáticamente utilizando el operador
	//de división. Nota: recordar que las variables de tipo entero truncan los números o resultados.
	
	definir num, contador como entero;
	contador = 0;
	
	escribir "Ingrese el numero";
	leer num;
	
	Mientras num < 1 hacer
		escribir "Ingrese un numero válido";
		leer num;
	FinMientras
	
	mientras num >= 1 hacer
		num = trunc(num/10);
		contador = contador + 1;
	fin mientras;
	
	escribir contador;
	
FinAlgoritmo
