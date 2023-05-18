Algoritmo sin_titulo
	definir ventas, i, j, totalsemanal, suma, suma1, totalproducto, total, mayor, aux como entero
	definir informe Como Caracter
	Dimension ventas[5,5], informe[8,7], totalsemanal[5], totalproducto[5], mayor[5]
	
	total=0 
	
	
	crearElementos(ventas)
	imprimirmatriz(5,5,ventas)
	
	para i = 0 Hasta 4 hacer 
		suma= 0 
		suma1=0 
		aux=0
		para j =0 hasta 4 Hacer
			suma = suma + ventas[j,i] 
			suma1= suma1+ ventas[i,j]
			si ventas[j,i] > aux Entonces
				aux = ventas[j,i]
			FinSi
		FinPara
		totalsemanal[i]= suma
		totalproducto[i]= suma1
		mayor[i]= aux 
		total = total + totalproducto[i]
	FinPara
	
	
	

	
	
	
	
	Escribir " "
	
	para i = 0 Hasta 7 Hacer
		para j=0  hasta 6 Hacer
			si i = 0 & j > 0 Entonces
				Segun j Hacer
					1:
						informe[i,j] = "Lunes"
					2:
						informe[i,j] = "Martes"
					3:
						informe[i,j] = "Miercoles"
					4:
						informe[i,j] = "Jueves"
					5:
						informe[i,j] = "Viernes"
					De Otro Modo:
						informe[i,j] = "Total producto"
				FinSegun
			sino 
				Si j = 0 & i >0 Entonces
					Segun i Hacer
						1:
							informe[i,j] = "Producto 1"
						2:
							informe[i,j] = "Producto 2"
						3:
							informe[i,j] = "Producto 3"
						4:
							informe[i,j] = "Producto 4"
						5:
							informe[i,j] = "Producto 5"
						6:
							informe[i,j] = "Total semanal"
						De Otro Modo:
							informe[i,j] = "Producto más vendido"
					FinSegun
				sino 
					si i >0 & i <6 & j > 0 & j < 6 
						informe[i,j]=  ConvertirATexto(ventas[i-1, j-1])
					sino 
						si i == 6  & j >0 & j <6 entonces 
							informe[i,j] = ConvertirATexto(totalsemanal[j-1])
							
						sino 
							si j == 6 & i>0 & i < 6 Entonces
								informe[i,j] = ConvertirATexto(totalproducto[i-1])
							sino 
								si i == 6 & j ==6 Entonces
									informe[i,j]= ConvertirATexto(total)
								sino 
									si i = 7 & j >0 & j <6 entonces
										informe[i,j] = ConvertirATexto(mayor[j-1])
									sino 
										informe[i,j]="0"
										
									FinSi
									
									
								FinSi
								
								
							FinSi
							
						FinSi
						
					FinSi
					
				FinSi
			FinSi
			
		FinPara
	FinPara
	
	imprimirmatriz(8,7,informe)
	
	
	
	Escribir ""
	Escribir ""
	
	para i =0 Hasta 4 Hacer
		para j=0 Hasta 4 hacer 
			si ventas[j,i] == mayor[i] Entonces
				Escribir "Día ", i+1 " "Sin Saltar
				segun j Hacer
					0:
						Escribir  "Producto 1"
					1:
						Escribir  "Producto 2"
					2:
						Escribir  "Producto 3"
					3:
						Escribir  "Producto 4"
					De otro modo:
						Escribir  "Producto 5"
				FinSegun
				
				
			FinSi
		FinPara
	FinPara
	
	
FinAlgoritmo

SubProceso crearElementos(matriz)
	definir i, j como entero 
	
	para i = 0 hasta 4 Hacer
		para j =0 Hasta 4 Hacer
			matriz[i,j] = Aleatorio(1, 9) 
		FinPara
	FinPara
FinSubProceso

SubProceso imprimirmatriz(m,n,matriz)
	definir i, j como entero	
	para i = 0 hasta m-1 Hacer
		Escribir " "
		para j =0 Hasta n-1 Hacer
			Escribir matriz[i,j], "    "Sin Saltar
			//Escribir "(",i,",",j,")" Sin Saltar
		FinPara
	FinPara
FinSubProceso