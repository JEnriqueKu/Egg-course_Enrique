//Realizar una funci�n que valide si un n�mero es impar o no. Si es impar la funci�n debe
//devolver un verdadero, si no es impar debe devolver falso. Nota: la funci�n no debe tener
//		mensajes que digan si es par o no, eso debe pasar en el Algoritmo.

Funcion retorno <- ParOImpar ( num )
	Definir retorno Como Logico
	
	retorno = num MOD 2 == 0
	
Fin Funcion


Algoritmo sin_titulo
	Definir num Como Entero
	
	Escribir "Ingrese un n�mero par"
	Leer num 
	
	si ParOImpar(num) Entonces
		Escribir "El numero es par"
	SiNo
		Escribir "El n�mero es impar"
		
	FinSi
	
FinAlgoritmo
