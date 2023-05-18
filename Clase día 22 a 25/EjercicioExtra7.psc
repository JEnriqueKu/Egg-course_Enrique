//Una empresa de venta de productos por correo desea realizar una estadística de las ventas
//realizadas de cada uno de sus productos a lo largo de una semana. Distribuya luego 5
//productos en los 5 días hábiles de la semana. Se desea conocer:
//	a) Total de ventas por cada día de la semana.
//	b) Total de ventas de cada producto a lo largo de la semana.
//	c) El producto más vendido en cada semana.
//	d) El nombre, el día de la semana y la cantidad del producto más vendido.
//El informe final tendrá un formato como el que se muestra a continuación:

Algoritmo sin_titulo
	Definir tabla Como Caracter
	Definir matriz Como Entero
	Dimension tabla[8,7], matriz[7,6]
	
	crearValores(7,6,matriz)
	totalProducto(7,6,matriz)
	totalSemana(7,6,matriz)
	masVendidoDia(7,6,matriz)
	
	crearTabla(8,7,tabla, matriz)
	prodMasVendido(8,7,tabla,matriz)
	renombrarMasVendido(8,7,tabla)
	
	imprimirTabla(8,7,tabla)
	Escribir ""
	masVendido(8,7,tabla,matriz)
	Escribir ""
FinAlgoritmo
///Tabla
SubProceso crearTabla(n,m,tabla,matriz)
	Definir i,j Como Entero
	Para i=0 Hasta n-1 Con Paso 1 Hacer
		Para j=0 hasta m-1 con paso 1 Hacer
			tabla[i,j]= ""
		FinPara
	Fin Para
	tabla[0,0]="           "
	tabla[0,1]="LUN"
	tabla[0,2]="MAR"
	tabla[0,3]="MIE"
	tabla[0,4]="JUE"
	tabla[0,5]="VIE"
	tabla[0,6]="Total prod."
	tabla[1,0]="Producto 1 "
	tabla[2,0]="Producto 2 "
	tabla[3,0]="Producto 3 "
	tabla[4,0]="Producto 4 "
	tabla[5,0]="Producto 5 "
	tabla[6,0]="Tot. sem.  "
	tabla[7,0]="P. más ven."
	
	para i=1 Hasta n-1 Hacer
		para j=1 Hasta m-1 Hacer
			tabla[i,j]= ConvertirATexto(matriz[i-1,j-1])
		FinPara
	FinPara
FinSubProceso

SubProceso prodMasVendido(n,m,tabla,matriz)
	Definir i,j, max Como Entero
	para j=1 Hasta m-1 Hacer
		max = matriz[6,j-1]
		para i=1 hasta n-3 Hacer
			si matriz[i-1,j-1]=max Entonces
				tabla[7,j]=tabla[i,0]
			FinSi
		FinPara
	FinPara
FinSubProceso

SubProceso  imprimirTabla(m, n, tabla)
	Definir i, j como Entero
	Para i=0 Hasta m-1 Con Paso 1 Hacer
		Escribir " "
		Para j=0 hasta n-1 con paso 1 Hacer
			
			si i=0 Entonces
				Escribir  tabla(i, j) Sin Saltar "|" 
			FinSi
			
			si i<>0 y Longitud(tabla[i,j])=2 Entonces
				Escribir  "0" tabla(i, j) Sin Saltar  "|"
			FinSi
			
			si i<>0 y Longitud(tabla[i,j])=1 Entonces
				Escribir  "00" tabla(i, j) Sin Saltar  "|"
			FinSi
			
			si j=6 y i<>0 y i<6 Entonces
				Escribir "   " tabla(i, j) Sin Saltar  "     |"
			FinSi
			
			si j=6 y i<>0 y i=6 Entonces
				Escribir "   " tabla(i, j) Sin Saltar  "    |"
			FinSi
			
			si j=6 y i<>0 y i=7 Entonces
				Escribir "   " tabla(i, j) Sin Saltar  "     |"
			FinSi
			
			si i<>0 y Longitud(tabla[i,j])<>2 y Longitud(tabla[i,j])<>1 y j<>6 Entonces
				Escribir  tabla(i, j) Sin Saltar  "|"
			FinSi
		FinPara
	Fin Para
FinSubProceso

SubProceso renombrarMasVendido(n,m,tabla)
	Definir j Como Entero
	para j=1 Hasta m-1 Hacer
		Segun tabla[7,j]
			"Producto 1 ":
				tabla[7,j]="P.1"
			"Producto 2 ":
				tabla[7,j]="P.2"	
			"Producto 3 ":
				tabla[7,j]="P.3"
			"Producto 4 ":
				tabla[7,j]="P.4"
			"Producto 5 ":
				tabla[7,j]="P.5"
		FinSegun
	FinPara
FinSubProceso

SubProceso masVendido(n,m,tabla,matriz)
	Definir i,j,mayor Como Entero
	Definir nombre, dia Como Caracter
	mayor=matriz[0,0]
	Para i=0 Hasta n-4 Hacer
		//Escribir ""
		para j=0 Hasta m-3 Hacer
			//Escribir matriz[i,j] Sin Saltar " "
			si mayor<matriz[i,j] Entonces
				mayor=matriz[i,j]
			FinSi
		FinPara
	FinPara
	
	para i=0 Hasta n-1 Hacer
		para j=0 Hasta m-1 Hacer
			si tabla[i,j]=ConvertirATexto(mayor) Entonces
				nombre=tabla[i,0]
				dia=tabla[0,j]
			FinSi
		FinPara
	FinPara
	
	Escribir "El " nombre " fue el producto más vendido en un día, vendió " mayor " unidades el " dia
FinSubProceso

/// Matriz
SubProceso crearValores(n,m,matriz)
	Definir i,j, suma Como Entero
	Para i=0 Hasta n-1 Hacer
		para j=0 Hasta m-1 Hacer
			matriz[i,j]=0
		FinPara
	FinPara
	
	Para i=0 Hasta n-3 Hacer
		Para j=0 Hasta m-2 Hacer
			matriz[i,j]=Aleatorio(0,100)
		FinPara
	FinPara
FinSubProceso

SubProceso totalProducto(n,m,matriz)
	Definir i,j, suma Como Entero
	Para i=0 Hasta n-3 Hacer
		suma=0
		para j=0 Hasta m-1 Hacer
			si j=5 Entonces
				matriz[i,j]=suma
			SiNo
				suma=suma+matriz[i,j]
			FinSi
		FinPara
	FinPara
FinSubProceso

SubProceso totalSemana(n,m,matriz)
	Definir i,j, suma Como Entero
	para j=0 Hasta m-1 Hacer
		suma=0
		para i=0 Hasta n-1 Hacer
			si i=5 Entonces
				matriz[i,j]=suma
			SiNo
				suma=suma+matriz[i,j]
			FinSi
		FinPara
	FinPara
FinSubProceso

SubProceso masVendidoDia(n,m,matriz)
	Definir i,j, mayor Como Entero
	para j=0 Hasta m-1 Hacer
		mayor=0
		para i=0 Hasta n-1 Hacer
			si mayor<matriz[i,j] y matriz[i,j]<>matriz[5,j]  Entonces
				mayor=matriz[i,j]
			FinSi
			
			si i=6 Entonces
				matriz[i,j]=mayor
			FinSi
		FinPara
	FinPara
FinSubProceso

SubProceso  imprimirMatriz(m, n, matriz)
	Definir i, j como Entero
	Para i=0 Hasta m-1 Con Paso 1 Hacer
		Escribir " "
		Para j=0 hasta n-1 con paso 1 Hacer
			Escribir  matriz(i, j) Sin Saltar " "
		FinPara
	Fin Para
FinSubProceso

