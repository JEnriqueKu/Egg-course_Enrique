//Crea una aplicación que nos pida un día de la semana y que nos diga si es un dia laboral o no.
Algoritmo Problema5
	Definir dia Como Caracter
	
	Escribir "ingrese un dia"
	leer dia
	si dia = "lunes" o dia = "martes" o dia = "miercoles" o dia = "jueves" o dia = "viernes" o dia = "sabado" o dia = "domingo" entonces
		si dia = "sabado" o dia = "domingo" Entonces
			Escribir "No es dia laboral"
		SiNo
			Escribir "Es dia laboral :("
		FinSi
	SiNo
		Escribir "No es un dia valido"
	FinSi
	
FinAlgoritmo