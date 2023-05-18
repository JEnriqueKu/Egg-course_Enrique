//Diseñar un procedimiento que reciba una frase, y el programa remueva todas las vocales
//repetidas. Al final el procedimiento mostrará la frase final.
//Por ejemplo:
//Entrada: "Habia una vez un barco"
//Salida: "Habi un vez n brco"
//	Se marcan en rojo las repetidas sólo para explicar la consigna. Las vocales ?e?, ?i? y ?o? quedan
//		al no estar repetidas.

SubProceso VocalesRepetivas(frase Por Referencia)
	Definir contadorA, contadorE, contadorI, contadorO, contadorU Como Entero
	
	Para i=1 Hasta Longitud(frase) Hacer
		Segun Subcadena(frase,i,i) Hacer
			"a" o "A":
				contadorA= contadorA+1
			"e" o "E":
				contadorE= contadorE+1
			"i" o "I":
				contadorI= contadorI+1
			"o" o "O":
				contadorO= contadorO+1
			"u" o "U":
				contadorU= contadorU+1
			De Otro Modo:
				secuencia_de_acciones_dom
		Fin Segun
	FinPara
	
FinSubProceso

Algoritmo sin_titulo
	DEfinir frase Como Caracter
	
	Escribir "Ingrese una frase"
	leer frase
	
	
FinAlgoritmo
