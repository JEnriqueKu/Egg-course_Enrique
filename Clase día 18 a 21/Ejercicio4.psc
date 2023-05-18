//Realizar un programa que rellene un vector de tamaño N, con valores ingresados por el
//usuario. A continuación, se debe buscar un elemento dentro del arreglo (el número a buscar
//también debe ser ingresado por el usuario). El programa debe indicar la posición donde se
//encuentra el valor. En caso que el número se encuentre repetido dentro del arreglo se deben
//imprimir todas las posiciones donde se encuentra ese valor.
//Finalmente, en caso que el número a buscar no está adentro del arreglo se debe mostrar un
//mensaje


Algoritmo encuentro18
	Definir n Como Entero //Tamaño de los vectores
	Definir opcionMenu Como Caracter //opcion del menu
	Definir vectorA, vectorB, vectorC Como Entero
	
	
	tamanoVectores(n)
	Dimension  vectorA[n], vectorB[n], vectorC[n]
	
	MostrarMenu
	
	opcionesUsuario(opcionMenu)
	
	acciones(vectorA, vectorB, vectorC, n, opcionMenu)
FinAlgoritmo


SubProceso acciones(vectorA Por Referencia, vectorB Por Referencia, vectorC Por Referencia, n Por Referencia, opcionMenu Por Referencia)
	Definir aListo, bListo Como Logico
	Definir queVector Como Caracter
	aListo = Falso
	blisto = falso
	Segun opcionMenu Hacer
		"A":
			registrarVector(vectorA, n, aListo)
		"B":
			registrarVector(vectorB,n, bListo)
		"C":
			Escribir  aListo, bListo
			Si aListo y bListo Entonces
				operacionVectores(vectorA, vectorB, vectorC, n, verdadero)
			SiNo
				Escribir "Primero debes llenar los vectores antes de sumar"
			FinSi
		"D":
			Si aListo y bListo Entonces
				operacionVectores(vectorA, vectorB, vectorC, n, falso)
			SiNo
				Escribir "Primero debes llenar los vectores antes de restar"
			FinSi
		"E":
			Repetir
				Escribir "Que vector quieres ver"
				Leer queVector
				queVector = Mayusculas(queVector)
				Si(queVector <> "A" y queVector <> "B" y queVector <> "C")
					Escribir "Debes indicar un vector valido"
				FinSi
			Mientras Que queVector <> "A" o queVector <> "B" o queVector <> "C"
			
			
			Si(queVector == "A") Entonces
				imprimirVector(vectorA, n)
			SiNo
				Si(queVector == "B") Entonces
					imprimirVector(vectorB, n)
				SiNo
					Si(queVector == "C") Entonces
						imprimirVector(vectorC, n)
					FinSi
				FinSi
			FinSi
			
		"F":
			Escribir "Te saliste del programa"
	Fin Segun
FinSubProceso

SubProceso imprimirVector(vector Por Referencia, n Por Referencia)
	Definir i Como Entero
	Para i = 0 Hasta n -1 Hacer
		Escribir vector[i]
	FinPara
FinSubProceso


SubProceso operacionVectores(vectorA por Referencia, vectorB por Referencia, vectorC por Referencia, n Por Referencia, esSuma por Valor)
	Definir i Como Entero
	Para i = 0 Hasta n -1 Con Paso 1 Hacer
		Si esSuma Entonces
			vectorC[i] = vectorA[i] + vectorB[i]
		SiNo
			vectorC[i] = vectorA[i] - vectorB[i]
		FinSi
	Fin Para
FinSubProceso

SubProceso registrarVector(vector Por Referencia, n Por Valor, listo Por Referencia)
	Definir i Como Entero 
	
	Para i <- 0 Hasta n - 1 Con Paso  1 Hacer
		vector(i) = Aleatorio(-100, 100)
	FinPara
	listo = Verdadero
FinSubProceso


SubProceso tamanoVectores(n Por Referencia) 
	Escribir "Indica el tamaño de los vectores A y B"
	Leer n
	Limpiar Pantalla
FinSubProceso

SubProceso opcionesUsuario(opcionMenu Por Referencia)
	Definir variableValida Como Logico
	
	Repetir
		Escribir "Escoge una opción"
		Leer opcionMenu
		opcionMenu = Mayusculas(opcionMenu)
		SI opcionMenu >="A" y opcionMenu <="F" Entonces
			variableValida = Verdadero
		SiNo
			variableValida = falso
			Escribir "Opcion invalida. Por favor escoge una opcion valida del menu"
		FinSi
		
	Mientras Que No(variableValida)
FinSubProceso


SubProceso MostrarMenu
	Escribir " ---   M E N Ú   --- "
	Escribir ""
	Escribir "A" " ---> Para llenar y mostrar Vector A."
	Escribir "B" " ---> Para llenar y mostrar Vector B."
	Escribir "C" " ---> Para llenar y mostrar la SUMA  de los vectores Vector A y Vector B."
	Escribir "D" " ---> Para llenar y mostrar la RESTA de los vectores Vector A y Vector B."
	Escribir "E" " ---> Mostrar el vector A, B y C (Suma o Resta)."
	Escribir "F" " ---> SALIR."
FinSubProceso