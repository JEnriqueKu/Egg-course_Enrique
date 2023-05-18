//Diseñar una función que reciba un numero en forma de cadena y lo devuelva como numero
//entero. El programa podrá recibir números de hasta 3 dígitos. Nota: no poner números con
//decimales ni letras. Ejemplo: ingresando "100"(carácter) debe convertirse en 100(entero).

Funcion retorno=CadenaANumero(cad)
	Definir retorno Como Entero
	
	retorno= ConvertirANumero(cad)
	
FinFuncion

Algoritmo sin_titulo
	Definir cad Como Caracter
	Definir num Como Entero
	
	Escribir "Ingrese un numero de hasta 3 dígitos"
	Leer cad
	
	Mientras Longitud(cad) >=3 o Longitud(cad) <0 Hacer
		Escribir "Número inválido"
		Escribir "Ingrese un numero de hasta 3 dígitos"
		Leer cad
	Fin Mientras
	
	Escribir CadenaANumero(cad)
	
FinAlgoritmo
