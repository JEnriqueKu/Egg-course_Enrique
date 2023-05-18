//Realizar un programa que pida al usuario una frase y una letra a buscar en esa frase. La
//función debe devolver la cantidad de veces que encontró la letra. Nota: recordar el uso de la
//	función Subcadena().

Funcion retorno=ContadorDeLetras(car1,car2)
	Definir retorno Como Entero
	Definir i, contador Como Entero
	
	Contador =0
	
	Para i=0 hasta Longitud(car1) Hacer
		si SubCadena(car1,i,i)==car2
			contador= contador +1
		FinSi
	FinPara
	
	retorno = contador
	
FinFuncion


Algoritmo sin_titulo
	Definir frase, letra Como Caracter
	
	Escribir "Ingrese una frase y una letra a buscar"
	Leer frase, letra
	
	Escribir "La letra aparece " ContadorDeLetras(frase,letra) " veces"
	
FinAlgoritmo
