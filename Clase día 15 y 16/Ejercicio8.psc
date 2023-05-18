//Realice un algoritmo que solicite al usuario una fecha y muestre por pantalla la fecha anterior.
//	Para ello se deberá utilizar un procedimiento llamado diaAnterior que reciba una fecha
//		representada a través de tres enteros dia, mes y anio, y retorne la fecha anterior. Puede
//		asumir que dia, mes y anio representan una fecha válida. Realice pruebas de escritorio para
//			los valores dia=5, mes=10, anio=2012 y para dia=1, mes=3, anio=2004.


SubProceso FechaAnterior(dia Por Referencia, mes Por Referencia, anio Por Referencia)
	
	Si mes==2 o mes==4 o mes==6 o mes==8 o mes==9 o mes==11 o mes==1 Entonces
		si dia=1 Entonces
			dia=31
			
		SiNo
			dia=dia-1
		FinSi
		
		si mes==3
			
			si ano mod 4 == 0 Entonces
				si dia=1 Entonces
					dia=29
					
				SiNo
					dia=dia-1
				FinSi
				
			SiNo
				si dia=1 Entonces
					dia=28
					
				SiNo
					dia=dia-1
				FinSi
			FinSi
			
		FinSi
		
	SiNo
		si dia=1 Entonces
			dia=30
			
		SiNo
			dia=dia-1
		FinSi
		
	FinSi
	
	si mes==1 Entonces
		mes=12
	SiNo
		mes=mes-1
	FinSi
	
	Anio=anio-1
	
	Escribir dia "/" mes "/" anio
	
FinSubProceso


Algoritmo Ejercicio8
	
	
	Definir dia, mes, anio Como Entero
	
	Escribir, "Ingrese el día, mes y año"
	Leer dia, mes, anio
	
	FechaAnterior(dia, mes, anio)
	
FinAlgoritmo
	