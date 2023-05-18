//Crear dos vectores que tengan el mismo tamaño (el tamaño se pedirá por teclado) y
//almacenar en uno de ellos nombres de personas como cadenas. En el segundo vector se
//debe almacenar la longitud de cada uno de los nombres (para ello puedes usar la función
//	Longitud() de PseInt). Mostrar por pantalla cada uno de los nombres junto con su longitud

Algoritmo sin_titulo
	Definir n, i, vector2 Como Entero
	Definir vector1 Como Caracter
	
	Escribir "Ingrese el tamaño del vector"
	leer n
	Dimension vector1[n], vector2[n]
	
	Escribir "Ingrese los nombres"
	
	Para i=0 Hasta n-1 Hacer
		leer vector1[i]
	FinPara
	
	para i=0 Hasta n-1 Hacer
		vector2[i]=Longitud(vector1[i])
	FinPara
	
	Escribir "Vector 1"
	mostrarVector(vector1, n)
	Escribir "Vector 2"
	mostrarVector(vector2, n)
	
FinAlgoritmo

SubProceso mostrarVector(vector, n)
	Definir i Como Entero
	para i=0 Hasta n-1 Hacer
		Escribir vector[i]
	FinPara
FinSubProceso
	