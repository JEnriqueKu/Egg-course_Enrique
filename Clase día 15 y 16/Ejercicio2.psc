//Crear un procedimiento que calcule la temperatura media de un d�a a partir de la temperatura
//m�xima y m�nima. Crear un programa principal, que, utilizando un procedimiento, vaya
//pidiendo la temperatura m�xima y m�nima de n d�as y vaya mostrando la media de cada d�a. El
//programa pedir� el n�mero de d�as que se van a introducir.


	
SubProceso Media(maxima, minima, promedio Por Referencia)
	promedio=(maxima+minima)/2
FinSubProceso

Algoritmo sin_titulo
	Definir i, maxima, minima, dias Como Entero
	Definir promedio Como Real
	
	Escribir "Ingrese cuantos dias se van a promediar"
	Leer dias
	
	Para i=1 Hasta dias Hacer
		Escribir "Ingrese la temperatura maxima y m�nima del d�a " i
		Leer maxima, minima
		
		Media(maxima, minima, promedio)
		
		Escribir promedio
	FinPara
	
FinAlgoritmo
