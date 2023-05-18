Algoritmo sin_titulo
	
//	Hacer un algoritmo para calcular la media de los números pares e impares, sólo se
//	ingresará diez números.
	
	Definir num, sumaPares, sumaImpares, contadorPar, contadorImpar Como Entero
	
	contadorImpar = 0
	contadorPar = 0
	sumaImpares = 0
	sumaPares=0
	
	Hacer
		
		Escribir "Ingrese un número entero positivo"
		Leer num
		
		si num mod 2 == 0 
			contadorPar = contadorPar +1
			sumaPares = sumaPares+num
			
		SiNo
			contadorImpar = contadorImpar+1
			sumaImpares= num+sumaImpares
		FinSi
		
	Mientras Que contadorImpar + contadorPar < 10
	
	Escribir "La media de la suma de los numeros pares que ingresaste es: " sumaPares/contadorPar
	Escribir "La media de la suma de los numeros impares que ingresaste es: " sumaImpares/contadorImpar
	
FinAlgoritmo
