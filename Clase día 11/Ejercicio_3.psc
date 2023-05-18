//Necesitamos crear un sistema para una máquina de reciclaje de botellas automática. Dicha
//	máquina nos pagará dinero por la cantidad de plástico reciclado. Tenemos que ingresar
//	nuestro usuario y contraseña para que se nos cargue el saldo por sistema a nuestra cuenta.

//	Condición simple anidada: validaremos que el usuario sea "Albus_D", luego si esto es
//		verdadero, validaremos si la contraseña es "caramelosDeLimon". Si la contraseña es
//		correcta haremos que una variable llamada Login sea verdadera.
//	Bucle Mientras: Este bloque de validación de la contraseña lo encerraremos en un
//		bucle Mientras para darle al usuario sólo 3 intentos para poner la contraseña.
//	Bucle Hacer Mientras(Repetir): Una vez que el login sea verdadero, accederemos al menú de opciones:
//										o Ingresar botellas
//										o Consultar saldo
//										o Salir
//Ingresar Botellas: Primero preguntaremos cuántas botellas se va a ingresar al sistema.
//	Una vez que tenemos el número vamos a usar un bucle para, a fin de ir ingresando
//	cada botella. En cada ciclo del bucle se debe generar un número aleatorio entre 100 y
//	3000 gr, que va a ser el peso de las botellas a reciclar (simulando que el usuario está
//	ingresando botellas en la máquina). Una vez generado, según el peso del material,
//	usaremos un condicional múltiple para asignarle un valor monetario:
//			o! Si es menos de 500 gr, corresponden $50
//			o! Si es entre 501 gr y 1500 gr, corresponden $125
//			o! Si es más de 1501 gr, corresponden $200
// Hecho esto, el programa debe informar al usuario por pantalla el valor que se le
// ofrece. Si el usuario acepta, lo acreditamos a su saldo, sino se debe devolver el
//	material (sólo mostrar en pantalla "Devolviendo material"). Para esto usaremos un condicional doble.

//! Consultar saldo: revisaremos el valor monetario que tiene asignada la variable "saldo".

//! Tanto al terminar "Ingresar Botellas" como "Consultar Saldo" debe volver al menúprincipal.

Algoritmo Ejercicio_2
	
	Definir intento, accion, botella_cantidad, i, peso, sumapeso, pago, confirmacion, saldo Como Entero
	Definir usuario, pass Como Cadena
	Definir login, exit Como Logico
	
	login = Falso
	exit=verdadero 
	saldo=0
	
	Escribir "Ingrese código de usuario: "
	Leer usuario
	
	Si Mayusculas(usuario) == "A" //"ALBUS_D"
		intento = 1
		
		Mientras intento <= 3 y login=falso
			Escribir "Ingrese contraseña: "
			Leer pass
			Si Mayusculas(pass) == "A" //"CARAMELOSDELIMON"
				login = Verdadero
				exit=falso
			SiNo
				intento = intento + 1
			FinSi
		FinMientras
		
	SiNo
		Escribir "Código de usuario incorrecto"
	FinSi
	
	Mientras exit = Falso
		Si login = Falso
			Escribir "Intentos de contraseña excedidos."
		SiNo
			
			Escribir "---MENÚ DE OPCIONES---"
			Escribir " 1 - Ingresar Botellas."
			Escribir " 2 - Consultar Saldo."
			Escribir " 3 - Salir."
			leer accion
		FinSi
		sumapeso=0
		pago=0
		
		segun accion Hacer
			1: escribir "Ingrese la cantidad de botellas que va a reciclar"
				leer botella_cantidad
				para i=1 hasta botella_cantidad Con Paso 1 hacer
					peso=aleatorio(100,3000)
					sumapeso=peso+sumapeso
				FinPara
				
				si sumapeso<=500 Entonces
					pago=50
				SiNo
					si sumapeso>=501 y sumapeso<=1500 Entonces
						pago=125
						
					SiNo
						pago=200
						
					FinSi
					
				FinSi
				Escribir "Usuario, el peso del material ingresado es:" sumapeso " , por lo cual el monto a pagar es: " pago
				Escribir "¿Está de acuerdo con la información brindada?:"
				Escribir "1 - Aceptar"
				Escribir "2 - Regresar el material"
				leer confirmacion
				si confirmacion=1
					saldo=saldo+pago
					Escribir "Su pago se ha acreditado a su saldo"
				SiNo
					Escribir "Regresando el material"
					Escribir " "
					
				FinSi
			2:escribir "Su saldo actual es " saldo
				Escribir  " "
				
			3: exit=Verdadero
		FinSegun
		
		si exit=Verdadero
			Escribir "Gracias por utilizar nuestro servicio" 
		FinSi
		
	FinMientras
	
	
FinAlgoritmo
