//Programe una función que calcule el producto de un arreglo de números enteros. Para esto
//	imagine, por ejemplo, que para un vector V de tamaño 4, el producto de todos los valores es
//		igual a (V[1]*V[2]*V[3]*V[4])

Algoritmo sin_titulo
	Definir arreglo, n como entero
	
	Escribir "Ingrese la simension del arreglo"
	Leer n
	Dimension arreglo[n]
	
	llenarArreglo(arreglo, n)
	
	Escribir "El producto es: " productoDeArreglo(arreglo, n)
	
FinAlgoritmo

SubProceso llenarArreglo(arreglo, n)
	Definir i Como Entero
	para i=0 Hasta n-1 Hacer
		arreglo[i]= Aleatorio(1,10)
	FinPara
FinSubProceso

Funcion producto=productoDeArreglo(arreglo, n)
	Definir i, producto Como Entero
	producto=1
	Para i=0 Hasta n-1 Hacer
		producto=arreglo[i]*producto
	FinPara
FinFuncion
	