Algoritmo sin_titulo
//	A partir de una conocida cantidad de d�as que el usuario ingresa a trav�s del teclado, escriba
//	un programa para convertir los d�as en horas, en minutos y en segundos. Por ejemplo
//		1 d�a = 24 horas = 1440 minutos = 86400 segundos
	
	Definir dias, minutos, horas, seg Como Entero
	
	Escribir "Ingresar los d�as "
	Leer dias
	
	horas= dias *24
	minutos = horas*60
	seg=minutos*60
	
	Escribir "En esos d�as hay: " horas " horas, " minutos " minutos y " seg " segundos"
	
FinAlgoritmo
