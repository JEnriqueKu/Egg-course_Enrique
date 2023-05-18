Algoritmo Ejercicio_2
	
	Definir n1,a,b Como Entero
	Definir m1,m2,m3,m4,m5 Como Caracter
	
	a=0
	b=0
	
	Escribir "introduce un numero entre 1 y 20:"
	
	Para a=1 Hasta 5 Hacer
		n1=0
		
		Leer n1
		
		si n1>=1 y n1<=20
			Escribir Sin Saltar  n1, " "
			
			Para b=1 Hasta n1	Hacer
				Escribir Sin Saltar"*"
				
			FinPara
			
			escribir " "
			
		SiNo
			
			a=a-1
			Escribir "El numero ingresado no esta dentro de los parametros"
			
		FinSi
		
	FinPara
	
FinAlgoritmo