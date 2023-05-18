//Realizar un procedimiento que permita realizar la división entre dos números y muestre el
//cociente y el resto utilizando el método de restas sucesivas.
//El método de división por restas sucesivas consiste en restar el dividendo con el divisor hasta
//obtener un resultado menor que el divisor, este resultado es el residuo, y el número de restas
//realizadas es el cociente. Por ejemplo: 50 / 13:
//		50 ? 13 = 37 una resta realizada
//		37 ? 13 = 24 dos restas realizadas
//		24 ? 13 = 11 tres restas realizadas
//	dado que 11 es menor que 13, entonces: el residuo es 11 y el cociente es 3.

SubProceso RestaSucesiva(dividendo, divisor, residuo Por Referencia, cociente Por Referencia)
	cociente=1
	
	Mientras residuo>=divisor Hacer
		
		residuo = dividendo-divisor
		Escribir dividendo " ? " divisor " = " residuo " " cociente " resta realizada"
		dividendo=residuo
		cociente=cociente+1
		
	FinMientras
	cociente= cociente-1
	
FinSubProceso


Algoritmo sin_titulo
	Definir num1, num2, residuo, cociente Como Entero
	
	
	Escribir "Ingrese 2 numeros"
	Leer num1, num2
	residuo=num1
	
	RestaSucesiva(num1,num2,residuo,cociente)
	Escribir " "
	Escribir "Dado que " residuo " es menor que " num2 ", entonces: el residuo es " residuo " y el cociente es " cociente "."
	
FinAlgoritmo
