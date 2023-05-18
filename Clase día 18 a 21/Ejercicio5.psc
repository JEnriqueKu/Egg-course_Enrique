Algoritmo MayorValorVector
	
    Definir N, i, val, mayor Como Entero
    Definir vect Como Entero
    Escribir "Ingrese el tamaño del vector:"
    Leer N
	Dimension vect[N]
    Para i = 0 Hasta N-1 Con Paso 1 Hacer
        Escribir "Ingrese el valor para la posición ", i, " del vector:"
        Leer val
        vect[i] = val
    FinPara
	
    mayor = MayorValor(vect, N)
	
    Escribir "El valor más grande del vector es: ", mayor
	
FinAlgoritmo

Funcion retorno = MayorValor(vect, n) 
	
	Definir i, mayor, retorno Como Entero
	mayor = vect[1]
	Para i = 0 Hasta N-1 Con Paso 1 Hacer
		Si vect[i] > mayor Entonces
			mayor = vect[i]
		FinSi
	FinPara
	retorno=mayor
FinFuncion