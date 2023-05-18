Algoritmo CuadradoDeAsteriscos
    Definir lado, i, j, matriz, m, n Como Entero

	
	Dimension matriz[5,15]
    
    Para i = 0 hasta 4 hacer
        Para  j = 0 hasta 14 Hacer
			si i > 0 y i < 4 y j > 0 y j  < 14 Entonces
                matriz[i,j]= 0
			Sino
				matriz[i,j]= 1
			FinSi
		FinPara
		Escribir " " 
	FinPara
	
	imprimirMatriz(5,15,matriz)
	
FinAlgoritmo

SubProceso imprimirMatriz(num1, num2, matriz Por Referencia) 
	definir i, j como entero 
	
	para i=0 hasta num1-1 Hacer
		Escribir ""
		para j=0 Hasta num2-1 Hacer
			Escribir matriz[i,j], " " Sin Saltar
		FinPara
	FinPara
FinSubProceso