//Realizar un programa que lea 10 números reales por teclado, los almacene en un arreglo y
//muestre por pantalla la suma, resta y multiplicación de todos los números ingresados al
//arreglo.

Algoritmo E18_02_10numerosConArreglos
	
	Definir vectorR,i,resultados Como Real
	Dimension vectorR[10], resultados[3]
	
	Escribir "Ingrese 10 numeros "
	Para i<-0 Hasta 1 Con Paso 1 Hacer
		resultados[i]=0
	Fin Para
	resultados[2]=1
	Para i<-0 Hasta 9 Con Paso 1 Hacer
		Leer vectorR[i]
		resultados[0]=resultados[0]+vectorR[i]
		resultados[1]=resultados[1]-vectorR[i]
		resultados[2]=resultados[2]*vectorR[i]
	Fin Para
	Escribir "La suma de los 10 numeros es ",resultados[0]
	Escribir "La resta de los 10 numeros es ",resultados[1]
	Escribir "La multiplicacion de los 10 numeros es ",resultados[2]
	
FinAlgoritmo