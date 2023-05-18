//Realizar una función que valide si un número es impar o no. Si es impar la función debe
//devolver un verdadero, si no es impar debe devolver falso. Nota: la función no debe tener
//		mensajes que digan si es par o no, eso debe pasar en el Algoritmo.

Funcion retorno <- ParOImpar ( num )
	Definir retorno Como Logico
	
	retorno = num MOD 2 == 0
	
Fin Funcion


Algoritmo sin_titulo
	Definir num Como Entero
	
	Escribir "Ingrese un número par"
	Leer num 
	
	si ParOImpar(num) Entonces
		Escribir "El numero es par"
	SiNo
		Escribir "El número es impar"
		
	FinSi
	
FinAlgoritmo
