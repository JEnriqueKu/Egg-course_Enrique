////Realizar un programa que lea un n�mero entero (tama�o del lado) y a partir de �l cree
////un cuadrado de asteriscos de ese tama�o. Los asteriscos s�lo se ver�n en el borde del
////cuadrado, no en el interior. Por ejemplo, si se ingresa el n�mero 4 se debe mostrar:
////		* * * *
////		*     *
////		*     *
////        * * * *


Algoritmo sin_titulo
	Definir num, i, j Como Entero
	Escribir "Ingrese la altura: "
	leer num
	Para i = 1 Hasta num Con Paso 1 Hacer
		para j = 1 hasta num Con Paso 1 hacer
			Si (i==1 o i==num) Entonces
				Escribir Sin Saltar "*"
			SiNo
				Si (i<>1 o i<>num) y (j=1 o j=num)Entonces	
					Escribir Sin Saltar "*"
				SiNo
					Escribir " "
				FinSi
			FinSi
		FinPara
		Escribir " "
	Fin Para
	
FinAlgoritmo
