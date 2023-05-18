Algoritmo sin_titulo
	
	menu()
	
FinAlgoritmo


SubProceso menu() 
	Definir opc como real 
	opc=0
	
	hacer 
		
		si opc<>9 Entonces
			Escribir "Ingrese una opción del siguiente menu"
			Escribir "1.! Calcular muro de ladrillo"
			escribir "2.! Calcular viga de hormigón"
			Escribir "3.! Calcular columnas de hormigón"
			Escribir "4.! Calcular contrapisos"
			Escribir "5.! Calcular techo"
			Escribir "6.! Calcular pisos"
			Escribir "7.! Calcular pintura"
			Escribir "8.! Calcular iluminación"
			Escribir "9.! Salir"
			
			Leer opc 
		FinSi
	
	Segun opc Hacer
		1: 
			Limpiar Pantalla
			calcularMuro(opc)
		2:  
			Limpiar Pantalla
			calcularViga(opc)
		3:
			Limpiar Pantalla
			calcularColumna(opc)
		4: 
			Limpiar Pantalla
			calcularContrapisos(opc)
		5: 
			Limpiar Pantalla
			calcularTecho(opc)
		6: 
			Limpiar Pantalla
			calcularPisos(opc)
		7:
			Limpiar Pantalla
			calcularPintura(opc)
		8:
			Limpiar Pantalla
			Iluminacion(opc)
		9: 
			Escribir "Salir"
		De Otro Modo:
			Escribir "Opción no válida"
	FinSegun
	//Limpiar Pantalla
    Mientras Que opc <> 9
FinSubProceso

//EXIT
SubProceso exit(opc Por Referencia)
	Definir respuesta Como Entero
	Escribir "¿Desea terminar o volver al menú?"
	Escribir "1- Terminar"
	Escribir "2- Volver al menú"
	Leer respuesta
	
	si respuesta=1 Entonces
		opc=9
	FinSi
	Limpiar Pantalla
FinSubProceso

//AREA 
SubProceso calcularSuperficie(largo por valor , ancho por valor, area Por Referencia)
	area = ancho * largo
FinSubProceso


//VOLUMEN
SubProceso  calcularVolumen(area Por Referencia, largo Por Valor, volumen Por Referencia)
	volumen =  area * largo
FinSubProceso

//Segunda opción

//Funcion area <- calcularSuperficie1(largo, ancho) 
//	definir area como entero
//	area = largo * ancho
//FinFuncion
//Funcion volumen <- calcularVolumen1(area, altura )
//	definir volumen como real 
//	volumen = calcularSuperficie1(largo, ancho) * altura 
//FinFuncion

//MURO 
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

SubProceso calcularMuro(opc Por Referencia)
	Definir largo, ancho, area, respuesta Como Entero
	Definir cantidadCemento, cantidadArena, cantidadLadrillos Como Real
	
	preguntarEspesor(respuesta)
	
	Escribir "Ingrese el largo y alto"
	leer largo, ancho
	calcularSuperficie(largo, ancho, area)
	
	
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
	
	exit(opc)
FinSubProceso

// VIGA 
SubProceso calcularViga(opc Por Referencia)
	Definir largoViga, cemento_V, arena_V, piedra_V, hierro8_V, hierro4_V Como Real
	Escribir "Ingrese el largo de la viga: "
	Leer largoViga
	
	cemento_V = 9 * largoViga
	arena_V = 0.02 * largoViga
	piedra_V = 0.02 * largoViga
	hierro8_V = 4 * largoViga
	hierro4_V = 3 * largoViga
	
	Escribir "La cantidad de materiales necesarias por " largoViga " m del largo de viga son: "
	Escribir "Cemento: " cemento_V " kg"
	Escribir "Arena: " arena_V " m3"
	Escribir "Piedra: " piedra_V " m2"
	Escribir "Hierro del 8: " hierro8_V " m"
	Escribir "Hierro del 4: " hierro4_V " m"
	
	exit(opc)
FinSubProceso

//COLUMNA
SubProceso calcularColumna(opc Por Referencia)
	Definir largo como real 
	Escribir "Ingrese el largo de la columna"
	Leer largo 
	
	Escribir  7.5 * largo "Kg de cemento"
	Escribir  0.016 * largo   "m3 de arena"
	Escribir  6 * largo "m de hierro del 10"
	Escribir  3 * largo "m de hierro del 4"
	
	exit(opc)
FinSubProceso


// CONTRAPISOS 
SubProceso calcularContrapisos(opc Por Referencia)
	Definir area, altura, volumen, largo, ancho como real
	Escribir "Ingrese largo, ancho , altura"
	Leer largo
	Leer ancho 
	Leer altura
	calcularSuperficie(largo, ancho, area)
	calcularVolumen(area,altura,volumen)
	
	Escribir  105 * volumen  " Kg de cemento"
	Escribir 0.45 * volumen  " m3 de arena"
	Escribir  0.9 * volumen " m3 de piedra"
	
	exit(opc)
FinSubProceso


SubProceso pintura (area Por valor, calculoPintura Por Referencia, opc Por Referencia)
	escribir Sin Saltar	"De acuerdo con la supercifie del muro: ", area
	calculoPintura=area/6
	Escribir ". La pintura que se necesita son: ",calculoPintura," lts." 
	
	exit(opc)
FinSubProceso


// TECHO 
SubProceso calcularTecho(opc Por Referencia)
	Definir area, ancho, largo Como Entero
	Escribir "Ingrese el largo y ancho de la superficie"
	Leer largo 
	Leer ancho
	
	calcularSuperficie(ancho, largo, area)

	
	Escribir  area * 33 "KG de cemento"
	Escribir  area * 0.072 "m3 de arena"
	Escribir  area * 0.072 "m3 de piedra"
	Escribir  area * 7 "m de hierro del 8"
	Escribir  area * 4 "m de hierro del 6"
	
	exit(opc)
FinSubProceso



//PISO 

SubProceso  calcularPisos(opc Por Referencia)
	Definir largo, ancho, area como real 
	Escribir 'largo (m): ' Sin Saltar
	Leer largo
	Escribir 'ancho (m): ' Sin Saltar
	Leer ancho
	
	calcularSuperficie(largo, ancho, area )
	Escribir "Superficie del piso: ", area+(0.10*area), " m2"
	
	exit(opc)
FinSubProceso



// PINTURA 
SubProceso calcularPintura(opc Por Referencia)
	Definir largoMuro, anchoMuro, litroPintura, superficieMuro Como Real
	Escribir "Ingrese el largo del muro: "
	Leer largoMuro
	Escribir "Ingrese el ancho del muro: "
	Leer anchoMuro
	
	calcularSuperficie(largoMuro, anchoMuro, superficieMuro)
	Escribir "La superficie del muro es: " superficieMuro
	
	Escribir "---------------------------------------------"
	litroPintura = superficieMuro/6
	Escribir "Para pintar el muro, se necesita " litroPintura " m2 por litro de pintura."
	
	exit(opc)
FinSubProceso


//ILUMINACION 

SubProceso Iluminacion(opc Por Referencia)
	Definir largo, ancho, superficie  como real 
	Escribir "Ingrese largo y ancho"
	leer largo 
	Leer ancho 
	
	calcularSuperficie(largo, ancho, superficie)
	Escribir superficie*.20 " es la cantidad mínima de la superdicie de iluminación natural "
	
	exit(opc)
FinSubProceso