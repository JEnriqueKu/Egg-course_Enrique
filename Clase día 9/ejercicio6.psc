Algoritmo sin_titulo
	
//	Un docente de Programación tiene un listado de 3 notas registradas por cada uno de sus
//	N estudiantes. La nota final se compone de un trabajo práctico Integrador (35%), una
//	Exposición (25%) y un Parcial (40%). El docente requiere los siguientes informes claves
//de sus estudiantes:
//	? Nota promedio final de los estudiantes que reprobaron el curso. Un estudiante
//	reprueba el curso si tiene una nota final inferior a 6.5
//		? Porcentaje de alumnos que tienen una nota de integrador mayor a 7.5.
//		? La mayor nota obtenida en las exposiciones.
//		? Total de estudiantes que obtuvieron en el Parcial entre 4.0 y 7.5.
//		El programa pedirá la cantidad de alumnos que tiene el docente y en cada alumno pedirá
//		las 3 notas y calculará todos informes claves que requiere el docente.
	
		Definir numAlum, integra, expo, parcial, prom, i, aux, cont, cont2, porcentaje, mayor, cont3 Como Real
		Escribir "Ingrese la cantidad de alumnos que tiene: "
		Leer numAlum
		
		cont= 0 
		aux = 0 
		cont2 = 0 
		mayor = 0 
		cont3= 0 
		Para i=1 Hasta numAlum Hacer
			Escribir "La calificación del proyecto integrador: "
			Leer integra
			Escribir "La calificación de la exposición: "
			Leer expo
			Escribir "La calificación del parcial: "
			Leer parcial
			
			prom = (integra*0.35) +(expo*0.25) + (parcial*0.40) 
			Escribir prom
			si prom < 6.5 Entonces
				cont = cont +1
				aux = (aux + prom)/cont
			FinSi
			
			Si integra > 7.5 Entonces
				cont2 = cont2 + 1
				
			FinSi
			
			Si expo > mayor Entonces
				mayor = expo 
			FinSi
			Si parcial>=4 & parcial<=7.5 Entonces
				cont3= cont3+1
			FinSi
		FinPara
		
		Escribir aux
		Escribir (cont2 * 100 )/numAlum
		Escribir mayor 
		Escribir cont3
	
FinAlgoritmo
