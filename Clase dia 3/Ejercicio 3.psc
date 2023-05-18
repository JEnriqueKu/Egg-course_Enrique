Algoritmo sin_titulo
//	A partir de una conocida cantidad de días que el usuario ingresa a través del teclado, escriba
//	un programa para convertir los días en horas, en minutos y en segundos. Por ejemplo
//		1 día = 24 horas = 1440 minutos = 86400 segundos
	
	Definir dias, minutos, horas, seg Como Entero
	
	Escribir "Ingresar los días "
	Leer dias
	
	horas= dias *24
	minutos = horas*60
	seg=minutos*60
	
	Escribir "En esos días hay: " horas " horas, " minutos " minutos y " seg " segundos"
	
FinAlgoritmo
