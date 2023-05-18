//Realizar un programa que rellene un vector de tamaño N, con valores ingresados por el
//usuario y muestre por pantalla el promedio de la suma de todos los valores ingresados.

Algoritmo extra2
	Definir vector, n Como Entero
	Escribir "Ingrese la dimension del vector"
	Leer n
	Escribir "Ingrese los valores del vector"
	Dimension vector[n]
	rellenarVector(vector, n)
	Escribir "El promedio es: ", promedio(vector, n)
FinAlgoritmo

SubProceso rellenarVector(vector, n)
	Definir i Como Entero
	para i<-0 hasta n-1 Hacer
		leer vector[i]
	FinPara
FinSubProceso

Funcion retorno<-promedio (vector, n)
	Definir i, retorno Como Real
	retorno = 0 
	para i<-0 hasta n-1 Hacer
		retorno = retorno + vector[i]
	FinPara
	retorno= retorno/n
	
FinFuncion