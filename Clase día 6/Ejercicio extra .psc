Algoritmo sin_titulo
	//Definicion de variables
	Definir dia, mes, ano Como entero
	//Desarrollo
	Escribir "Ingresa el número correspondiente al dia"
	leer dia
	Escribir "Ingrese el número correspondiente al mes"
	Leer mes
	Escribir "Ingrese el número correspondiente al año"
	Leer ano
	si (mes>=1 y mes<=12) y (ano>=1 y ano<=2023) Entonces
		segun mes Hacer
			1:
				Si (dia>=1 y dia<=31) Entonces
					Escribir dia " de enero de " ano
				SiNo
					Escribir "Fecha no valida"
				Fin Si
			2:
				Si (ano mod 4 == 0) Entonces
					Si (dia>=1 y dia<=29) Entonces
						Escribir dia " de febrero de " ano " bisiesto"
					SiNo
						Escribir "Fecha no valida"
					FinSi
				SiNo
					Si (dia>=1 y dia<=28) Entonces
						Escribir dia " de febrero de " ano
					SiNo
						Escribir "Fecha no valida"
					Fin Si
				Fin Si
			3:
				Si (dia>=1 y dia<=31) Entonces
					Escribir dia " de marzo de " ano
				SiNo
					Escribir "Fecha no valida"
				Fin Si
			4:
				Si (dia>=1 y dia<=30) Entonces
					Escribir dia " de abril de " ano
				SiNo
					Escribir "Fecha no valida"
				Fin Si	
			5:
				Si (dia>=1 y dia<=31) Entonces
					Escribir dia " de mayo de " ano
				SiNo
					Escribir "Fecha no valida"
				Fin Si
			6:
				Si (dia>=1 y dia<=30) Entonces
					Escribir dia " de junio de " ano
				SiNo
					Escribir "Fecha no valida"
				Fin Si
			7:
				Si (dia>=1 y dia<=31) Entonces
					Escribir dia " de julio de " ano
				SiNo
					Escribir "Fecha no valida"
				Fin Si
			8:
				Si (dia>=1 y dia<=31) Entonces
					Escribir dia " de agosto de " ano
				SiNo
					Escribir "Fecha no valida"
				Fin Si
			9:
				Si (dia>=1 y dia<=30) Entonces
					Escribir dia " de septiembre de " ano
				SiNo
					Escribir "Fecha no valida"
				Fin Si
			10:
				Si (dia>=1 y dia<=31) Entonces
					Escribir dia " de octubre de " ano
				SiNo
					Escribir "Fecha no valida"
				Fin Si
			11:
				Si (dia>=1 y dia<=30) Entonces
					Escribir dia " de noviembre de " ano
				SiNo
					Escribir "Fecha no valida"
				Fin Si	
			12:
				Si (dia>=1 y dia<=31) Entonces
					Escribir dia " de diciembre de " ano
				SiNo
					Escribir "Fecha no valida"
				Fin Si
		FinSegun
	SiNo
		Escribir "Fecha no valida"
	FinSi
FinAlgoritmo