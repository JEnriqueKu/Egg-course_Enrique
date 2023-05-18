Algoritmo sin_titulo
	
	Definir frase, letra Como Caracter
	Definir i Como Entero
	
	Escribir "Ingresa una frase"
	leer frase
	
	Para i = 0 Hasta Longitud(frase) Con Paso 1
		letra = Subcadena(frase, i, i)
		
		Escribir  letra, "    "  Sin Saltar
	FinPara

		
FinAlgoritmo
