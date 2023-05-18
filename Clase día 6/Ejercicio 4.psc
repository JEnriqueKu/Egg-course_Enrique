Algoritmo Ejercicio3
	
//	Si se compran menos de cinco llantas el precio es de $3000 cada una, si se compran
//	entre 5 y 10 el precio es de $2500, y si se compran más de 10 el precio es $2000.
//	Obtener la cantidad de dinero que una persona tiene que pagar por cada una de las
	//	llantas que compra, y el monto total que tiene que pagar por el total de la compra.
	
	Definir llantas como Entero
	
	Escribir "Ingrese numero de llantas"
	Leer llantas
	
	Si llantas<5 y llantas>0 Entonces
		Escribir "El precio es de $3000 cada una"
		Escribir  "El monto total es: " 3000*llantas
	SiNo
		Si llantas >= 5 y llantas <= 10 Entonces
			Escribir "El precio es de $2500 cada una"
			Escribir  "El monto total es: " 2500*llantas
		SiNo
			Si llantas>10 Entonces
				Escribir "El precio es de $2000 cada una"
				Escribir  "El monto total es: " 2000*llantas
			SiNo
				Escribir "Número no válido"
			Fin Si
		Fin Si
	Fin Si

FinAlgoritmo
