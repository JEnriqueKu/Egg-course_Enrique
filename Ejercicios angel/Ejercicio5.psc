//Find first repeated char in a String

Algoritmo sin_titulo
	Definir palabra Como Caracter
	
	Escribir "Ingrese una palabra"
	Leer palabra
	
	primerRepetido(palabra)
FinAlgoritmo


SubProceso primerRepetido(palabra)
	Definir i Como Entero
	Definir repetido Como Logico
	repetido=falso
	palabra=Minusculas(palabra)
	
	Para i=0 Hasta Longitud(palabra)-1 Hacer
		si Subcadena(palabra,i,i)==Subcadena(palabra,i+1,i+1) Entonces
			Escribir Subcadena(palabra,i,i)
			i=Longitud(palabra)
			repetido=Verdadero
		FinSi
	FinPara
	
	si !repetido Entonces
		Escribir "No hay caracter repetido"
	FinSi
	
FinSubProceso
	