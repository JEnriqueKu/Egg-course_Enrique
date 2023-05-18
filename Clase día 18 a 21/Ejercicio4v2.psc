//Realizar un programa con el siguiente menú y le pregunte al usuario que quiere hacer hasta
//que ingrese la opción Salir:
//	A. Llenar Vector A. Este vector es de tamaño N y se debe llenar de manera aleatoria
//	usando la función Aleatorio(valorMin, valorMax) de PseInt.
//	B. Llenar Vector B. Este vector también es de tamaño N y se llena de manera aleatoria.
//	C. Llenar Vector C con la suma de los vectores A y B. La suma se debe realizar elemento
//a elemento. Ejemplo: C = A + B
//	D. Llenar Vector C con la resta de los vectores B y A. La resta se debe realizar elemento a
//elemento. Ejemplo: C = B - A
//  E. Mostrar. Esta opción debe permitir al usuario decidir qué vector quiere mostrar: Vector A, B, o C.
//	F. Salir.
//NOTA: El rango de los números aleatorios para los Vectores será de [-100 a 100]. La longitud
//		para todos los vectores debe ser la misma, por lo tanto, esa información sólo se solicitará una vez.


Algoritmo sin_titulo
	Menu()
FinAlgoritmo


///Menú

SubProceso acciones(opc Por Referencia, vectorA Por Referencia, vectorB Por Referencia, vectorC Por Referencia, n, listoA Por Referencia, listoB Por Referencia, listoC Por Referencia)
	
	Segun opc Hacer
		"A":
			registrarVector(vectorA, n, listoA)
		"B":
			registrarVector(vectorB, n, listoB)
		"C":
			operacionVectores(vectorA, vectorB, vectorC, n, opc, listoA, listoB, listoC)
			
		"D": 
			operacionVectores(vectorA, vectorB, vectorC, n, opc, listoA, listoB, listoC)
		"E":
			mostrarVector(vectorA, vectorB, vectorC, n, listoA, listoB, listoC)
		"F":
			Escribir "Salir"
		De Otro Modo:
			Escribir " ---  Opcion no válida  ---  "
			Escribir " "
	FinSegun
	
FinSubProceso

SubProceso menu()
	Definir opc Como Caracter
	Definir vectorA, vectorB, vectorC, n Como Entero
	Definir listoA, listoB, listoC Como Logico
	listoA= Falso
	listoB= falso
	listoC= Falso
	opc=" "
	
	tamanoVectores(n)
	Dimension  vectorA[n], vectorB[n], vectorC[n]
	
	Hacer
		si opc<>"F" Entonces
			Escribir "Ingrese una opción del siguiente menu"
			Escribir " "
			Escribir " ---   M E N Ú   --- "
			Escribir ""
			Escribir "A" " ---> Para llenar Vector A."
			Escribir "B" " ---> Para llenar Vector B."
			Escribir "C" " ---> Para llenar Vector C con la SUMA  de los vectores Vector A y Vector B."
			Escribir "D" " ---> Para llenar Vector C con la RESTA  de los vectores Vector A y Vector B."
			Escribir "E" " ---> Mostrar el vector A, B y C (Suma o Resta)."
			Escribir "F" " ---> SALIR."
			Leer opc
			opc=Mayusculas(opc)
			Limpiar Pantalla
			
			acciones(opc, vectorA, vectorB, vectorC, n, listoA, listoB, listoC)
		FinSi
		
	Mientras Que opc<> "F"
	
FinSubProceso



///Acciones

SubProceso tamanoVectores( n Por Referencia) 
	Escribir "Indica el tamaño de los vectores A y B"
	Leer n
	Limpiar Pantalla
FinSubProceso

SubProceso registrarVector(vector Por Referencia, n , listo Por Referencia)
	Definir i Como Entero 
	
	Para i <- 0 Hasta n - 1 Con Paso  1 Hacer
		vector[i] = Aleatorio(-100, 100)
	FinPara
	listo = Verdadero
FinSubProceso

SubProceso operacionVectores(vectorA por Referencia, vectorB por Referencia, vectorC por Referencia, n , opc, listoA, listoB, listoC Por Referencia)
	Definir i Como Entero
	
	si listoA y listoB Entonces
		
		Para i = 0 Hasta n -1 Con Paso 1 Hacer
			Si opc=="C" Entonces
				vectorC[i] = vectorA[i] + vectorB[i]
			SiNo
				vectorC[i] = vectorA[i] - vectorB[i]
			FinSi
		Fin Para
		listoC=Verdadero
		Imprimir listoC
	SiNo
		Escribir "Primero debes llenar los vectores antes de sumar"
		
	FinSi	
FinSubProceso

SubProceso imprimirVector(vector Por Referencia, n)
	Definir i Como Entero
	Para i = 0 Hasta n -1 Hacer
		Escribir vector[i]
	FinPara
FinSubProceso

SubProceso mostrarVector(vectorA Por Referencia, vectorB Por Referencia, vectorC Por Referencia, n, listoA, listoB, listoC)
	Definir queVector Como Caracter
	Repetir
		Escribir "Que vector quieres ver"
		Leer queVector
		queVector = Mayusculas(queVector)
		Si(queVector <> "A" y queVector <> "B" y queVector <> "C")
			Escribir "Debes indicar un vector valido"
		FinSi
	Mientras Que queVector <> "A" y queVector <> "B" y queVector <> "C"
	
	Segun queVector Hacer
		"A": si listoA==Verdadero 
				ImprimirVector(VectorA, n)
			SiNo
				Escribir "Vector A vacío"
			FinSi
			
		"B": si listoB==Verdadero 
				ImprimirVector(VectorB, n)
			SiNo
				Escribir "Vector B vacío"
			FinSi
		"C": si listoC==Verdadero 
				ImprimirVector(VectorC, n)
			SiNo
				Escribir "Vector A vacío"
			FinSi	
	FinSegun
FinSubProceso
	