//Crear una funci�n llamada "Login", que recibe un nombre de usuario y una contrase�a y que
//devuelve Verdadero si el nombre de usuario es "usuario1" y si la contrase�a es "asdasd".
//	Adem�s, la funci�n calculara el n�mero de intentos que se ha usado para loguearse, tenemos
//	solo 3 intentos, si nos quedamos sin intentos la funci�n devolver� Falso.

Funcion retorno=Login(usuario, contra)
	Definir retorno Como Logico
	Definir contador como Entero
	contador=1
	retorno=Verdadero
	
	Mientras ((usuario<>"usuario1" y contra<>"asdasd") y contador<3) hacer
		Escribir "Datos incorrectos, intente nuevamente"
		Leer usuario, contra
		contador=contador+1
	FinMientras
	
	si contador ==3
		retorno=Falso
	FinSi
	
FinFuncion

Algoritmo sin_titulo
	Definir usuario, contra Como Caracter
	
	Escribir "Ingrese su usuario y contrase�a"
	Leer usuario, contra
	
	Escribir Login(usuario,contra)
FinAlgoritmo
