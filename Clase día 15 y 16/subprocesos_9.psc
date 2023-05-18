Algoritmo sin_titulo
	definir palabra, aux2 Como Caracter
	
	
	Escribir "ingrese una frase: "
	Leer palabra 
	
	
	primeravocal(palabra, aux2) 
	
	Escribir palabra
	Escribir aux2 
FinAlgoritmo


SubProceso primeravocal(palabra Por Valor, aux2 Por Referencia) 
	definir i, cont1, cont2, cont3, cont4, cont5 Como Entero
	definir aux Como Caracter
	cont1 = 0
	cont2 = 0
	cont3 = 0
	cont4 = 0
	cont5 = 0
	aux2= ""
	
	para i = 0 hasta (Longitud(palabra) -1 ) Hacer
		aux = Subcadena(palabra, i , i) 
		
		
		
		Segun Subcadena(palabra, i, i) hacer
			"a":  
				cont1 = cont1 + 1 
				
				si cont1 > 1 Entonces
					aux = ""
				FinSi
			"e":  
				cont2 = cont2 + 1 
				
				si cont2 > 1 Entonces
					aux = ""
				FinSi
			"i":  
				cont3 = cont3 + 1 
				
				si cont3 > 1 Entonces
					aux = ""
				FinSi
			"o":  
				cont4 = cont4 + 1 
				
				si cont4 > 1 Entonces
					aux = ""
				FinSi
			"u":
				cont5 = cont5 + 1 
				
				si cont5 > 1 Entonces
					aux = ""
				FinSi
				
		FinSegun
		
		aux2= Concatenar(aux2, aux) 
	FinPara
FinSubProceso
	