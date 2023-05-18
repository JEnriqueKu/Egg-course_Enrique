
Algoritmo Ejercicio_8_2225
	
	Definir matrizVentas,totZonas,totVendedor,totRepresentantes, num, repet Como Entero
	Definir vectZonas, vectVendedores  Como Caracter
	Dimension matrizVentas(5,4),totZonas(5), vectZonas(5), vectVendedores(4), totVendedor(4)
	
	totRepresentantes = 0
	repet = 0
	vectZonas(0)= "Norte"
	vectZonas(1)= "Sur"
	vectZonas(2)= "Este"
	vectZonas(3)= "Oeste"
	vectZonas(4)= "Centro"
	
	vectVendedores(0)= "v1"
	vectVendedores(1)= "v2"
	vectVendedores(2)= "v3"
	vectVendedores(3)= "v4"
	
	llenarDatos(matrizVentas, totZonas, totVendedor, totRepresentantes)
	
	
	Hacer 
		
	Escribir "Elegir el total de ventas de una zona 1.Norte - 2.Sur - 3.Este - 4.Oeste - 5.Centro" 
	Leer num
	
	Escribir "El total de la zona [" vectZonas(num-1) "] es: [" totZonas(num-1) "]"
	Escribir ""
	
	Escribir "Elegir uno de los 4 vendedores para saber lo que vendio en cada una de las zonas"
	Leer num
	Escribir ""
	
	Escribir "El total del vendedor [" vectVendedores(num-1) "] es: [" totVendedor(num-1) "]"
	Escribir ""
	Si repet <> 1 Entonces
		
	Escribir "El total de los representantes es: [" totRepresentantes "]"
	FinSi
	Escribir ""
	Hacer
		
	Escribir "¿Repetir? 1.Si - 2.No"
	Leer repet
	Mientras Que repet <> 1 y repet <> 2
	
	Mientras Que repet = 1

FinAlgoritmo

//Hay que poner la por totRepresentantes por referencia. El resto ya lo hace por defecto Pseint 
SubProceso llenarDatos (matrizVentas,totZonas, totVendedor, totRepresentantes Por Referencia)
	
	Definir i, j Como Entero
	
	//Inicializar 
	Para i = 0 Hasta 4 Con Paso 1 Hacer
		totZonas(i) = 0
	Fin Para
	Para i = 0 Hasta 3 Con Paso 1 Hacer
		totVendedor(i) = 0
	Fin Para
	
	Para i = 0 Hasta 4 Con Paso 1 Hacer
		Para j = 0 Hasta 3 Con Paso 1 Hacer
			matrizVentas(i,j) = Aleatorio(10,20)
			totZonas(i) = totZonas(i) + matrizVentas(i,j)
			totVendedor(j) = totVendedor(j) + matrizVentas(i,j)
			totRepresentantes = totRepresentantes + matrizVentas(i,j)
		Fin Para
	Fin Para
	
FinSubProceso



