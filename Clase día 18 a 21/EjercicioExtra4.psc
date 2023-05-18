//Crear un vector que contenga 100 notas de 100 supuestos estudiantes, con valores entre 0 y
//20 generadas aleatoriamente mediante el uso de la función azar() o aleatorio() de PseInt.
//Luego, de acuerdo a las notas contenidas, el programa debe indicar cuántos estudiantes son:
//	a)! Deficientes 0-5
//	b)! Regulares 6-10
//	c)! Buenos 11-15
//	d)! Excelentes 16-20

Algoritmo sin_titulo
	Definir vectorNotas, i, deficientes, regulares, buenos, excelentes Como Entero
	Dimension vectorNotas[100]
	deficientes=0
	regulares=0
	buenos=0
	excelentes=0
	
	llenarVector(vectorNotas)
	
	Para i=0 Hasta 99 Hacer
		Segun vectorNotas[i]
			0,1,2,3,4,5:
				deficientes= deficientes+1
			6,7,8,9,10:
				regulares=regulares+1
			11,12,13,14,15:
				buenos=buenos+1
			16,17,18,19,20:
				excelentes=excelentes+1
		FinSegun
	FinPara
	
	Escribir "Hay:"
	Escribir deficientes " alumnos deficientes"
	Escribir regulares " alumnos regulares"
	Escribir buenos " alumnos buenos"
	Escribir excelentes " alumnos excelentes"
	
FinAlgoritmo

SubProceso llenarVector(vector)
	Definir i Como Entero
	Para i=0 Hasta 99 Hacer
		vector[i]=Aleatorio(0,20)
	FinPara
FinSubProceso
