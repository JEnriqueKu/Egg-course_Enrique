Algoritmo Ejemplo1
	
//	Realizar un programa que pida al usuario el horario en el que se conect� al zoom. Si ese horario
//		est� entre la hora de ingreso y la hora de ingreso + los 15? de tardanza, mostrar� un mensaje por
//		pantalla que diga "Llegaste a tiempo, tienes presente". Si el horario de ingreso supera ese l�mite,
//			se mostrar� un mensaje por pantalla que diga "Hoy tendr�s tardanza. Recuerda avisarle a tus
//			coaches cuando llegar�s tarde. Ma�ana te esperamos a tiempo, tu participaci�n en el equipo es VITAL"
	
//	Definir hora,minutos Como Entero
//	
//	Escribir "Escriba la hora en la que entr� a clase"
//	Leer hora
//	Escribir "Escriba los minutos en los que entr� a clase"
//	Leer minutos
//	
//	Si hora > 4 Entonces
//		
//		Escribir "Hoy tendr�s tardanza. Recuerda avisarle a tus coaches cuando llegar�s tarde. Ma�ana te esperamos a tiempo, tu participaci�n en el equipo es VITAL"
//		
//	SiNo
//		
//		Si minutos > 15 Entonces
//			
//			Escribir "Hoy tendr�s tardanza. Recuerda avisarle a tus coaches cuando llegar�s tarde. Ma�ana te esperamos a tiempo, tu participaci�n en el equipo es VITAL"
//			
//		SiNo
//			
//			Escribir "Llegaste a tiempo, tienes presente"
//			
//		FinSi
//		
	//	FinSi
	
	Definir hora como entero 
	
	Escribir "Ingrese su hora de entrada en una sola cifra: "
	Leer hora 
	
	
	
	
	Si ( trunc( hora /100) <= 16  & ((hora % 100 ) <=15) ) entonces 
		Escribir "Llegaste a tiempo, tienes presente"
	sino 
		Escribir "Hoy tendr�s tardanza. Recuerda avisarle a tus coaches cuando llegar�s tarde. Ma�ana te esperamos a tiempo, tu participaci�n en el equipo es VITAL"
	FinSi
	
FinAlgoritmo
