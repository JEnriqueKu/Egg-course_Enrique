//Find the most consecutive occurence character in a String
Algoritmo sin_titulo
	Definir frase Como Caracter
	
	Escribir "Ingrese una frase"
	Leer frase 
	
	mostConsecutive(frase)
FinAlgoritmo


SubProceso mostConsecutive(frase)
	Definir i, contador, contadorMax Como Entero
	Definir char Como Caracter
	Definir consecutivo Como Logico
	char=""
	consecutivo=falso
	contadorMax=0
	contador=1
	
	Para i=0 Hasta Longitud(frase)-1 Hacer
		si Subcadena(frase,i,i)==Subcadena(frase,i+1,i+1) Entonces
			contador=contador+1
			consecutivo=Verdadero
		SiNo
			si contadorMax>=contador Entonces
				contador=1
			FinSi
		FinSi		
		
		si contadorMax<contador Entonces
			char=Subcadena(frase, i, i)
			contadorMax=contador
		FinSi
	FinPara
	
	si !consecutivo Entonces
		Escribir "Sin caracteres repetidos"
	sino 
		Escribir "El caracter más repetido es: " char
	FinSi
FinSubProceso
	