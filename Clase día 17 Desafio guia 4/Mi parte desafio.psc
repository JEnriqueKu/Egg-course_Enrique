

SubProceso calcularSuperficio(largo por valor , ancho por valor, area Por Referencia)
	area = ancho * largo
FinSubProceso

SubProceso  calcularVolumen(area Por Valor, altura Por Valor, volumen Por Referencia)
	calcularSuperficio(largo, ancho, area)
	volumen=area * altura
FinSubProceso

SubProceso preguntarEspesor(respuesta Por Referencia)
	Escribir "¿El muro será de 20 o 30 cm de espesor?"
	Escribir  "1- 20"
	Escribir  "2- 30"
	Leer respuesta
	
	Mientras respuesta<>1 y respuesta <>2 Hacer
		Escribir "Respuesta invalida"
		Escribir "¿El muro será de 20 o 30 cm de espesor?"
		Escribir  "1- 20"
		Escribir  "2- 30"
		Leer respuesta
	FinMientras
FinSubProceso

SubProceso calcularMuro()
	Definir largo, ancho, area, respuesta Como Entero
	Definir cantidadCemento, cantidadArena, cantidadLadrillos Como Real
	
	preguntarEspesor(respuesta)
	
	Escribir "Ingrese el largo y alto"
	leer largo, ancho
	
	calcularSuperficio(largo, ancho, area)
	Escribir "La superficie del muro es: " area
	
	si respuesta==1 Entonces
		cantidadCemento= area * 10.9
		cantidadArena= area * 0.09
		cantidadLadrillos= area * 90
	SiNo
		cantidadCemento= area * 15.2
		cantidadArena= area * 0.115
		cantidadLadrillos= area * 120
	FinSi
	
	Escribir "Los materiales a emplear son: " cantidadCemento " kg de cemento, " cantidadArena " m3 de arena y " cantidadLadrillos " de ladrillos"
FinSubProceso

SubProceso calcularViga()
	Definir largo Como Entero
	
	Escribir  "Ingrese el largo de la viga"
	leer largo
	
	Escribir  "Necesitará " 9*largo " kg de cemento, " 0.02*largo " m3 de arena, "  0.02*largo " m2 de piedra, " 4*largo " m de hierro del 8 y " 3*largo " m de hierro del 4"
	
FinSubProceso

Algoritmo sin_titulo
	
	calcularMuro()
FinAlgoritmo
