algoritmo ej3_enc18
	definir i, vector,n,num Como Entero
	definir se_encontro como logico
	escribir "Ingrese el tamaño del vector"
	leer n
	dimension vector[n]
	se_encontro=falso
	
	para i=0 hasta (n-1) con paso 1 Hacer
		Escribir "Ingrese un numero para rellenar el vector"
		leer vector[i]
		escribir "el num en la posición " i " es: " vector[i]
	FinPara
	
	escribir "ingrese un numero a buscar"
	leer num
	
	para i=0 hasta (n-1) con paso 1 Hacer
		si vector[i]==num Entonces
			escribir "el numero se encuentra en la posición: " i
			se_encontro=Verdadero						
		FinSi
	FinPara
	
	si se_encontro==falso Entonces
		escribir "El numero ingresado no se encuentra en el vector"
	FinSi
	
FinAlgoritmo