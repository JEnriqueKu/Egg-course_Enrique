//Necesitamos crear un sistema para una m�quina de reciclaje de botellas autom�tica. Dicha
//	m�quina nos pagar� dinero por la cantidad de pl�stico reciclado. Tenemos que ingresar
//	nuestro usuario y contrase�a para que se nos cargue el saldo por sistema a nuestra cuenta.

//	Condici�n simple anidada: validaremos que el usuario sea "Albus_D", luego si esto es
//		verdadero, validaremos si la contrase�a es "caramelosDeLimon". Si la contrase�a es
//		correcta haremos que una variable llamada Login sea verdadera.
//	Bucle Mientras: Este bloque de validaci�n de la contrase�a lo encerraremos en un
//		bucle Mientras para darle al usuario s�lo 3 intentos para poner la contrase�a.
//	Bucle Hacer Mientras(Repetir): Una vez que el login sea verdadero, accederemos al men� de opciones:
//										o Ingresar botellas
//										o Consultar saldo
//										o Salir
//Ingresar Botellas: Primero preguntaremos cu�ntas botellas se va a ingresar al sistema.
//	Una vez que tenemos el n�mero vamos a usar un bucle para, a fin de ir ingresando
//	cada botella. En cada ciclo del bucle se debe generar un n�mero aleatorio entre 100 y
//	3000 gr, que va a ser el peso de las botellas a reciclar (simulando que el usuario est�
//	ingresando botellas en la m�quina). Una vez generado, seg�n el peso del material,
//	usaremos un condicional m�ltiple para asignarle un valor monetario:
//			o! Si es menos de 500 gr, corresponden $50
//			o! Si es entre 501 gr y 1500 gr, corresponden $125
//			o! Si es m�s de 1501 gr, corresponden $200
// Hecho esto, el programa debe informar al usuario por pantalla el valor que se le
// ofrece. Si el usuario acepta, lo acreditamos a su saldo, sino se debe devolver el
//	material (s�lo mostrar en pantalla "Devolviendo material"). Para esto usaremos un condicional doble.

//! Consultar saldo: revisaremos el valor monetario que tiene asignada la variable "saldo".

//! Tanto al terminar "Ingresar Botellas" como "Consultar Saldo" debe volver al men�principal.

Algoritmo Ejercicio_2
	
	Definir intento, accion, botella_cantidad, i, peso, sumapeso, pago, confirmacion, saldo Como Entero
	Definir usuario, pass Como Cadena
	Definir login, exit Como Logico
	
	login = Falso
	exit=verdadero 
	saldo=0
	
	Escribir "Ingrese c�digo de usuario: "
	Leer usuario
	
	Si Mayusculas(usuario) == "A" //"ALBUS_D"
		intento = 1
		
		Mientras intento <= 3 y login=falso
			Escribir "Ingrese contrase�a: "
			Leer pass
			Si Mayusculas(pass) == "A" //"CARAMELOSDELIMON"
				login = Verdadero
				exit=falso
			SiNo
				intento = intento + 1
			FinSi
		FinMientras
		
	SiNo
		Escribir "C�digo de usuario incorrecto"
	FinSi
	
	Mientras exit = Falso
		Si login = Falso
			Escribir "Intentos de contrase�a excedidos."
		SiNo
			
			Escribir "---MEN� DE OPCIONES---"
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
				Escribir "�Est� de acuerdo con la informaci�n brindada?:"
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
