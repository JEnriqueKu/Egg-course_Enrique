//Crea un procedimiento "convertirEspaciado", que reciba como argumento un texto y muestra
//una cadena con un espacio adicional tras cada letra.
//Por ejemplo, "Hola, tú" devolverá "H o l a , t ú ". Crea un programa principal donde se use
//dicho procedimiento.

SubProceso convertirEspaciado(cad Por Referencia)
	Definir i Como Entero
	
	Para i=0 Hasta Longitud(cad) Hacer
		
		si Subcadena(cad,i,i)<>" "
			Escribir Concatenar(Subcadena(cad,i,i)," ") Sin Saltar
		FinSi
		
	FinPara
	
	
FinSubProceso

Algoritmo sin_titulo
	Definir cad Como Caracter
	
	Escribir "Ingrese un texto"
	Leer cad
	
	convertirEspaciado(cad)
	
FinAlgoritmo
