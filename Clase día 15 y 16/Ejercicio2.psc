//Crear un procedimiento que calcule la temperatura media de un día a partir de la temperatura
//máxima y mínima. Crear un programa principal, que, utilizando un procedimiento, vaya
//pidiendo la temperatura máxima y mínima de n días y vaya mostrando la media de cada día. El
//programa pedirá el número de días que se van a introducir.


	
SubProceso Media(maxima, minima, promedio Por Referencia)
	promedio=(maxima+minima)/2
FinSubProceso

Algoritmo sin_titulo
	Definir i, maxima, minima, dias Como Entero
	Definir promedio Como Real
	
	Escribir "Ingrese cuantos dias se van a promediar"
	Leer dias
	
	Para i=1 Hasta dias Hacer
		Escribir "Ingrese la temperatura maxima y mínima del día " i
		Leer maxima, minima
		
		Media(maxima, minima, promedio)
		
		Escribir promedio
	FinPara
	
FinAlgoritmo
