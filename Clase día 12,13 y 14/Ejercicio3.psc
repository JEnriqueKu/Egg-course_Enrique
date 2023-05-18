//Crea una función EsMultiplo que reciba los dos números pasados por el usuario, validando
//que el primer número múltiplo del segundo y devuelva verdadero si el primer número es
//	múltiplo del segundo, sino es múltiplo que devuelva falso.

Funcion retorno = ValidarMultiplos (num1, num2)
	Definir retorno Como Logico
	retorno = num1 % num2 == 0
	
FinFuncion

Algoritmo sin_titulo
	Definir  num1, num2 Como Entero
	
	Escribir "Ingrese dos numeros"
	Leer num1, num2
	
	Escribir "Validando si el primer número es múltiplo del segundo..."
	Escribir ValidarMultiplos(num1,num2)
	
FinAlgoritmo
