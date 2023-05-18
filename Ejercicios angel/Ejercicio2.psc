// Checar si un string es palindromo

Algoritmo sin_titulo
	Definir palabra Como Caracter
	Escribir "Ingrese una palabra"
	Leer palabra
	
	palindromo(palabra)
	
FinAlgoritmo

SubProceso palindromo(palabra)
	Definir aux1, aux2 Como Caracter
	Definir i Como Entero
	aux1=""
	aux2=""
	
	Para i=Longitud(palabra) Hasta 0 Con Paso -1 Hacer
		si Subcadena(palabra,i,i) <> " " y Subcadena(palabra,i,i) <> "," y Subcadena(palabra,i,i) <> "." Entonces
			aux1=Concatenar(aux1, Subcadena(palabra,i,i))
		FinSi
	FinPara
	
	Para i=0 Hasta Longitud(palabra) Hacer
		si Subcadena(palabra,i,i) <> " " y Subcadena(palabra,i,i) <> "," y Subcadena(palabra,i,i) <> "." Entonces
			aux2=Concatenar(aux2, Subcadena(palabra,i,i))
		FinSi
	FinPara
	
	aux1 = Mayusculas(aux1)
	aux2 = Mayusculas(aux2)
	
	Escribir aux2==aux1
	
FinSubProceso
	