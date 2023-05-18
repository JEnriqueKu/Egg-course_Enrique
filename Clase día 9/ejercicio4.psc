Algoritmo sin_titulo
	
		definir num, cont, cont2 como entero 
		cont = 0 
		cont2=0 
		para num = 1 Hasta 100 Hacer
			si num % 2 == 0 Entonces
				cont = cont +1
			FinSi
			si num % 3 == 0 Entonces
				cont2 = cont2 +1
			FinSi
		FinPara
		Escribir "Hay " cont " numeros multiplos de 2"
		Escribir "Hay " cont2 " numeros multiplos de 3"

//		definir cantidad,i Como Entero
//		cantidad=0
//		Para i<-1 Hasta 100 Con Paso 1 Hacer
//			si i%2==0 o i%3==0
//				cantidad=cantidad+1
//			FinSi
//		Fin Para
//		Escribir " la cantidad de números que son múltiplos de 2 o de 3 es: " cantidad
		
FinAlgoritmo
