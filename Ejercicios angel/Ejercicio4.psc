//Find repeated elements in a list 

Algoritmo sin_titulo
	Definir lista, n Como Entero
	n=10
	Dimension lista[n]
	
	llenarLista(lista, n)
	mostrarLista(lista, n)
	repetidos(lista, n)
	
FinAlgoritmo

SubProceso llenarLista(lista, n)
	Definir i Como Entero
	para i=0 Hasta n-1 Hacer
		lista[i]= Aleatorio(1,10)
	FinPara
FinSubProceso

SubProceso mostrarLista(lista, n)
	Definir i Como Entero
	para i=0 Hasta n-1 Hacer
		Escribir lista[i] " "Sin Saltar
	FinPara
	Escribir ""
FinSubProceso

SubProceso repetidos(lista, n)
	Definir i,j, k, duplicados Como Entero
	Definir duplicado Como Logico
	Dimension duplicados[n]
	Escribir "Los repetidos son: "
	
	para i=0 Hasta n-1 Hacer
		duplicados[i]= 0
	FinPara
	
	para i=0 Hasta n-1 Hacer
		para j=0 Hasta n-1 Hacer
			si lista[i]==lista[j] Entonces
				duplicado=falso
				para k=0 Hasta n-1 Hacer
					si duplicados[k]==lista[i] Entonces
						duplicado=Verdadero
						k=n-1
					FinSi
				FinPara
				si !duplicado y i<>j Entonces
					duplicados[i]=lista[i]
				FinSi
			FinSi
		FinPara
	FinPara
	
	para i=0 Hasta n-1 Hacer
		si duplicados[i]<>0 Entonces
			Escribir duplicados[i] " " Sin Saltar	
		FinSi
	FinPara
	Escribir ""
FinSubProceso
	