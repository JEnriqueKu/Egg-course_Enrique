//Dise�ar una funci�n que reciba un numero en forma de cadena y lo devuelva como numero
//entero. El programa podr� recibir n�meros de hasta 3 d�gitos. Nota: no poner n�meros con
//decimales ni letras. Ejemplo: ingresando "100"(car�cter) debe convertirse en 100(entero).

Funcion retorno=CadenaANumero(cad)
	Definir retorno Como Entero
	
	retorno= ConvertirANumero(cad)
	
FinFuncion

Algoritmo sin_titulo
	Definir cad Como Caracter
	Definir num Como Entero
	
	Escribir "Ingrese un numero de hasta 3 d�gitos"
	Leer cad
	
	Mientras Longitud(cad) >=3 o Longitud(cad) <0 Hacer
		Escribir "N�mero inv�lido"
		Escribir "Ingrese un numero de hasta 3 d�gitos"
		Leer cad
	Fin Mientras
	
	Escribir CadenaANumero(cad)
	
FinAlgoritmo
