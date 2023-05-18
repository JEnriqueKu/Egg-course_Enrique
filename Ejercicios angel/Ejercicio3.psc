// Count from 1 to 100 and write "X" if can be divided by 3 or "Y" if by 5 and "Z" if both


Algoritmo sin_titulo
	Definir i Como Entero
	Definir x Como Caracter
	X=""
	
	para i=1 Hasta 100 Hacer
		si i%3=0 y i%5=0 Entonces
			x="Z"
		SiNo
			si i%3=0 Entonces
				x="X"
			FinSi
			
			si i%5=0 Entonces
				x="Y"
			FinSi
		FinSi
		
		Escribir i " = " x
		x=""
	FinPara
FinAlgoritmo
