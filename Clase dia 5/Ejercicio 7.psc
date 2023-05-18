Algoritmo Ejemplo1
	
//	La empresa "Te llevo a todos lados" está destinada al alquiler de autos y tiene un sistema
//	de tarifa que consiste en cobrar el alquiler por hora. Si el cliente devuelve el auto dentro
//		de las 2 horas de uso el valor que corresponde pagar es de $400 pesos y la nafta va de
//		regalo. Cuando el cliente regresa a la empresa pasadas las 2 horas, se ingresan la
//		cantidad de litros de nafta gastados y el tiempo transcurrido en horas. Luego, se le cobra
//		40 pesos por litro de nafta gastado, y la hora se fracciona en minutos, cobrando un total
//		de $5,20 el minuto de uso. Realice un programa que permita registrar esa información y
//		el total a pagar por el cliente.
	
	definir hora, litros Como Entero
	Escribir "ingrese horas de uso"
	leer hora
	si hora > 2 Entonces
		Escribir "ingrese la cantidad de litros gastados"
		leer litros
		Escribir "debe pagar " ((40*litros) + (5.2*hora*60))
	SiNo
		Escribir "debe pagar $400"	
	finsi
	
FinAlgoritmo
