Algoritmo sin_titulo
	
//	Una compa��a de seguros tiene contratados a n vendedores. Cada vendedor realiza
//	m�ltiples ventas a la semana. La pol�tica de pagos de la compa��a es que cada vendedor
//	recibe un sueldo base m�s un 10% extra por comisiones de sus ventas. El gerente de la
//	compa��a desea saber, por un lado, cu�nto dinero deber� pagar en la semana a cada
//	vendedor por concepto de comisiones de las ventas realizadas, y por otro lado, cu�nto
//	deber� pagar a cada vendedor como sueldo total (sueldo base + comisiones). Para cada
//		vendedor ingresar cuanto es su sueldo base, cuantas ventas realiz� y cuanto cobr� por
//cada venta.
		
		Definir vendedores, sueldobase, comisiones, ventas, valorventa, totalventa, semana, totvendedores Como Real
		Definir totalcomisiones Como Real
		Definir i, j, k Como Entero
		
		Escribir "Cuantos vendedores trabajaron este mes?" 
		Leer vendedores
		Escribir "Cuanto es el sueldo base de los trabajadores?"
		Leer sueldobase
		comisiones = 0.10
		totvendedores=0
		totalcomisiones=0
		Para i=1 Hasta vendedores Con Paso 1 Hacer
			Escribir "Cuantas ventas realizo el vendedor n" i "?"
			Leer ventas
			totalventa = 0
			Para j=1 Hasta ventas Con Paso 1 Hacer
				Escribir "Ingrese monto de venta! :"
				Leer valorventa
				totalventa = totalventa + valorventa
				Escribir "El valor de las ventas acumuladas es: " totalventa
			Fin Para
			Escribir "El sueldo que cobra el empleado " i " es: " sueldobase + (totalventa*comisiones)
			totvendedores=totvendedores + (sueldobase + (totalventa*comisiones))
			totalcomisiones=totalcomisiones+(totalventa*comisiones)
		Fin Para
		Escribir "El total de los sueldos + comisiones es: " totvendedores
		Escribir "El total de las comisiones de los vendedores es: " totalcomisiones
	
FinAlgoritmo
