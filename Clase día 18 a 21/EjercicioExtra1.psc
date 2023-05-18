//Realizar un programa que rellene dos vectores al mismo tiempo, con 5 valores aleatorios y los
//muestre por pantalla.

Algoritmo extra1
	Definir vector1, vector2 Como Entero
	Dimension vector1[5], vector2[5]
	rellenarVectores(vector1, vector2)
	Escribir "Estos son los valores del primer vector"
	escribirVector(vector1)
	Escribir "Estos son los valores del segundo vector"
	escribirVector(vector2)
	
	
FinAlgoritmo
SubProceso rellenarVectores (vector1, vector2)
	Definir i Como Entero
	Para i<-0 Hasta 4 Con Paso 1 Hacer
		vector1[i]= Aleatorio(-100, 100)
		vector2[i]= Aleatorio(-100,100)
	Fin Para
FinSubProceso

SubProceso escribirVector (vector1)
	Para i=0 Hasta 4 Con paso 1 Hacer
		Escribir vector1[i]
	FinPara
FinSubProceso