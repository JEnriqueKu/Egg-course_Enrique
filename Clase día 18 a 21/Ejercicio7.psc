Algoritmo Ej7_vectores_iguales
	Definir vector1, vector2, N Como Entero
	Escribir "Ingrese el tamaño de los vectores"
	Leer N
	Dimension vector1[N], vector2[N]
	
	LlenarVector(vector1, N)
	LlenarVector(vector2, N)
	
	mostrarVector(vector1, N)
	mostrarVector(vector2, N)
	
	compararVectores(vector1, vector2, N)
	
	
FinAlgoritmo

SubProceso LlenarVector(vector Por Referencia, N)
	Definir i Como Entero
	Para i <- 0 Hasta N - 1 Hacer
		vector(i) = Aleatorio(1,1)
	FinPara
FinSubProceso

SubProceso compararVectores(v1, v2, N)
	Definir i Como Entero
	Definir iguales Como Logico
	iguales = Verdadero
	Para i=0 hasta N-1 Hacer
		si v1[i]<>v2[i] Entonces
			iguales = Falso
		FinSi
	FinPara
	Escribir "Los vectores son iguales? " iguales
FinSubProceso

SubProceso mostrarVector(vector, N)
	Definir i Como Entero
	Para i=0 Hasta N-1 Hacer
		Escribir Sin Saltar vector[i] " " 
	FinPara
	Escribir " "
FinSubProceso