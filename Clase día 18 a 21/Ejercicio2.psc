//Realizar un programa que lea 10 números reales por teclado, los almacene en un arreglo y
//muestre por pantalla la suma, resta y multiplicación de todos los números ingresados al
//arreglo.
Algoritmo E18_02_10numeros
	
	Definir vectorR,resta,suma,multiplicacion, i,resultados Como Real
	Dimension vectorR[10], resultados[3]
	resta=0
	suma=0
	multiplicacion=1
	Escribir "Ingrese 10 numeros "
	Para i<-0 Hasta 9 Con Paso 1 Hacer
		Leer vectorR[i]
		suma=suma+vectorR[i]
		resta=resta-vectorR[i]
		multiplicacion=multiplicacion*vectorR[i]
	Fin Para
	Escribir "La suma de los 10 numeros es ",suma
	Escribir "La resta de los 10 numeros es ",resta
	Escribir "La multiplicacion de los 10 numeros es ",multiplicacion
	
FinAlgoritmo