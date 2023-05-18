//Un hombre desea saber si su sueldo es mayor al sueldo mínimo, el programa le pedirá al
//usuario su sueldo actual y el sueldo mínimo. Si el sueldo es mayor al mínimo se debe
//mostrar un mensaje por pantalla indicándolo.
Algoritmo problema1
	
	definir sueldoMinimo, sueldoActual Como real
	
	Escribir "ingresar sueldo minimo y actual"
	leer sueldoMinimo, sueldoActual
	//	Escribir "ingresar sueldo actual"
	//	leer sueldoActual
	
	
	si sueldoActual > sueldoMinimo Entonces
		escribir "Cobras mas que la minima :D"
	SiNo
		Escribir "No cobras mas que la minima :("
	FinSi
	
FinAlgoritmo