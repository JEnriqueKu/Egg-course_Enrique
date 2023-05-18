Algoritmo Ejemplo1
	
//	Realizar un programa que pida al usuario el horario en el que se conectó al zoom. Si ese horario
//		está entre la hora de ingreso y la hora de ingreso + los 15? de tardanza, mostrará un mensaje por
//		pantalla que diga "Llegaste a tiempo, tienes presente". Si el horario de ingreso supera ese límite,
//			se mostrará un mensaje por pantalla que diga "Hoy tendrás tardanza. Recuerda avisarle a tus
//			coaches cuando llegarás tarde. Mañana te esperamos a tiempo, tu participación en el equipo es VITAL"
	
//	Definir hora,minutos Como Entero
//	
//	Escribir "Escriba la hora en la que entró a clase"
//	Leer hora
//	Escribir "Escriba los minutos en los que entró a clase"
//	Leer minutos
//	
//	Si hora > 4 Entonces
//		
//		Escribir "Hoy tendrás tardanza. Recuerda avisarle a tus coaches cuando llegarás tarde. Mañana te esperamos a tiempo, tu participación en el equipo es VITAL"
//		
//	SiNo
//		
//		Si minutos > 15 Entonces
//			
//			Escribir "Hoy tendrás tardanza. Recuerda avisarle a tus coaches cuando llegarás tarde. Mañana te esperamos a tiempo, tu participación en el equipo es VITAL"
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
		Escribir "Hoy tendrás tardanza. Recuerda avisarle a tus coaches cuando llegarás tarde. Mañana te esperamos a tiempo, tu participación en el equipo es VITAL"
	FinSi
	
FinAlgoritmo
