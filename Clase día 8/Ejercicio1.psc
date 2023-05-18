Algoritmo sin_titulo
	
//	definir cla Como Caracter
	
//	c=0
//	Hacer 	
//		Escribir "ingrese la contraseña"
//		Leer cla
//		c=c+1
//		si c ==3 Entonces
//			Escribir "Has alcanzado el limite de intentos."
//			
//		FinSi
//		
//	mientras Que cla <> "eureka" y c < 3
	
		
		Definir clave_def, clave_ingre Como Caracter
		definir i Como entero
		
		i = 1 
		
		clave_def = "eureka"
		
		Hacer
			Escribir "Ingrese la clave secreta: "
			Leer clave_ingre
			i = i + 1 
			
			Mientras Que( clave_def <> clave_ingre & (i <= 3) ) 
				
				
		si clave_def == clave_ingre Entonces
			Escribir "La contraseña es correcta"
			
		sino 
			Escribir "Se han agotado sus 3 intentos, lo sentimos"
		FinSi
				
	
FinAlgoritmo