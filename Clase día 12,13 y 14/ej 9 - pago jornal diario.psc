Funcion resultado <- calculo ( esFeriado, horas, turno )
	definir tarifa como entero
	definir factorFeriado, resultado como real
	si turno = "diurno" Entonces
		tarifa = 90
		factorFeriado = 0.1
	SiNo si turno = "nocturno" Entonces
			tarifa = 125
			factorFeriado = 0.15
		sino
			Escribir "Turno mal ingresado"
			tarifa = 0
			factorFeriado = 0
		FinSi
	FinSi
	
	si Minusculas(esFeriado) == "s" Entonces
		resultado = tarifa * horas
		resultado = resultado + resultado * factorFeriado
	SiNo
		si Minusculas(esFeriado) == "n"
			resultado = tarifa * horas
		SiNo
			escribir "Feriado mal ingresado"
			resultado = 0
		FinSi		
	FinSi
Fin Funcion

Algoritmo sin_titulo
	definir horas, jornalDiario Como real
	Definir esFeriado, nombreTrabajador, turno, dia Como Caracter
	Escribir "Nombre del trabajador: "
	leer nombreTrabajador
	Escribir "Día trabajado: "
	leer dia
	Escribir "Es feriado? s/n"
	leer esFeriado
	Escribir "Horas trabajadas: "
	leer horas
	Escribir "Turno: diurno/nocturno"
	leer turno
	jornalDiario = calculo(esFeriado, horas, turno)
	Escribir "El jornal diario del trabajador " nombreTrabajador " es de $" jornalDiario
FinAlgoritmo
