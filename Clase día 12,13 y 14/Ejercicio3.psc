//Crea una funci�n EsMultiplo que reciba los dos n�meros pasados por el usuario, validando
//que el primer n�mero m�ltiplo del segundo y devuelva verdadero si el primer n�mero es
//	m�ltiplo del segundo, sino es m�ltiplo que devuelva falso.

Funcion retorno = ValidarMultiplos (num1, num2)
	Definir retorno Como Logico
	retorno = num1 % num2 == 0
	
FinFuncion

Algoritmo sin_titulo
	Definir  num1, num2 Como Entero
	
	Escribir "Ingrese dos numeros"
	Leer num1, num2
	
	Escribir "Validando si el primer n�mero es m�ltiplo del segundo..."
	Escribir ValidarMultiplos(num1,num2)
	
FinAlgoritmo
